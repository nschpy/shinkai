import typer
import regex
import json
import csv
from rich import print, print_json
from typing import Optional

app = typer.Typer()

def parse_swift_functions(path):
    with open(path, "r", encoding="utf-8") as f:
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
            "function": function_text,
            "generated_comment": gen_comment,
            "raw": raw
        })

    return items

def write_functions_dataset(to: str, dataset, mode: str = 'json'):
    with open(to, mode="w+", encoding="utf-8") as f:
        if mode == 'json':
            dataset = json.dumps(dataset, ensure_ascii=False, indent=2)
            f.write(dataset)
        else:
            fieldnames = ["function", "generated_comment", "raw"]
            writer = csv.DictWriter(f, fieldnames=fieldnames)
            writer.writeheader()
            for item in dataset:
                writer.writerow(item)

@app.command()
def extract(
    dataset: str = typer.Option(..., "--dataset", "-d", help="Путь к датасету с функциями"),
    output: str = typer.Option(..., "--output", "-o", help="Путь для записи результата"),
    mode: Optional[str] = typer.Option("json", "--mode", help="Формат вывода: json или csv")
):
    """
    Извлечь функции и комментарии из Swift файлов и сохранить их в формате JSON или CSV.
    """
    if not dataset:
        print("❌ [red bold]Отсутствует аргумент --dataset[/red bold]")
        raise typer.Exit(code=1)

    if not output:
        print("❌ [red bold]Отсутствует аргумент --output[/red bold]")
        raise typer.Exit(code=1)

    mode = mode.lower()
    if mode not in ('json', 'csv'):
        print("⚠️ [yellow]Неизвестный режим, используется JSON по умолчанию[/yellow]")
        mode = 'json'

    data = parse_swift_functions(dataset)
    write_functions_dataset(output, dataset=data, mode=mode)
    print(f"✅ [green]Данные успешно сохранены в {output}[/green]")

if __name__ == "__main__":
    app()
