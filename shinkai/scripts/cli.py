import typer
import regex
import json
from rich import print, print_json
from typing import Optional

app = typer.Typer()

instruction_text = """
Add comprehensive documentation to the following Swift function using the Swift DocComment style (///).
Include the following elements:
- A brief summary describing the purpose of the function in one sentence.
- A "- Parameters": section listing and explaining each parameter.
- A "- Returns": section describing the return value (if applicable).
Use clear, concise, and technical English consistent with Xcode documentation style.
When possible, include type hints in your descriptions (e.g., "an integer", "a string array").
For generic functions (<T>), explain the generic behavior in the parameter or summary.
Return the entire function with documentation added, formatted as a single Swift code block.
"""

@app.command(name="sft")
def supervised_fine_tuning(path: str):
    """
    Читает Swift-файл, обрабатывает все данные в dataset для SFT(Supervised Fine Tuning).
    Returns:
    {
        "input": "...",
        "output": "..."
    } 
    """
    with open(path, mode="r") as f:
        text = f.read()
        pattern = regex.compile(r'''
            (?P<raw>
                (?:(?:///.*\n)+)            # один или более ///-комментариев
                func\s+[^{{\n]+\s*           # сигнатура func … до {
                (?P<brace>                  # начало рекурсивной группы для {…}
                    \{
                        (?:
                            [^{{}}]           # любой символ, кроме { и }
                            | (?&brace)     # или рекурсивно сама себя
                        )*
                    \}
                )
            )
        ''', regex.VERBOSE)
        
        items = []
        for m in pattern.finditer(text):
            raw = m.group('raw').rstrip()
            func_index = raw.find('func ')
            function_text = raw[func_index:] if func_index != -1 else raw

            items.append({
                "input": function_text,
                "output": raw
            })
        
        tojson = json.dumps(items)
        print_json(tojson) 
        
@app.command(name="ift")
def instruction_fine_tuning(path: str):
    """
    Читает Swift-файл, обрабатывает все данные в dataset для SFT(Supervised Fine Tuning).
    Returns:
    {
        "instruciton": "...",
        "input": "...",
        "output": "..."
    } 
    """
    with open(path, mode="r") as f:
        text = f.read()
        pattern = regex.compile(r'''
            (?P<raw>
                (?:(?:///.*\n)+)            # один или более ///-комментариев
                func\s+[^{{\n]+\s*           # сигнатура func … до {
                (?P<brace>                  # начало рекурсивной группы для {…}
                    \{
                        (?:
                            [^{{}}]           # любой символ, кроме { и }
                            | (?&brace)     # или рекурсивно сама себя
                        )*
                    \}
                )
            )
        ''', regex.VERBOSE)
        
        items = []
        for m in pattern.finditer(text):
            raw = m.group('raw').rstrip()
            func_index = raw.find('func ')
            function_text = raw[func_index:] if func_index != -1 else raw
            comments = regex.findall(r'^(///.*)', raw, regex.MULTILINE)
            gen_comment = "\n".join(comments)

            items.append({
                "instruction": instruction_text,
                "input": function_text,
                "output": raw
            })
        
        tojson = json.dumps(items)
        print_json(tojson) 
        

if __name__ == "__main__":
    app()
