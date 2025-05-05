from transformers import (
    AutoModel,
    AutoModelForCausalLM,
    AutoTokenizer,
    pipeline
)
from typing import List
import gradio as gr

# model_name = "TinyLlama/TinyLlama_v1.1"
model_name = "TinyLlama/TinyLlama_v1.1_math_code"

chat_template = '''
{{ bos_token }}
{% for message in messages %}
{% if message['role'] == 'system' -%}
<|system|>
{{ message['content'] }}{{ eos_token }}
{% elif message['role'] == 'user' -%}
<|user|>
{{ message['content'] }}{{ eos_token }}
{% elif message['role'] == 'assistant' -%}
<|assistant|>
{{ message['content'] }}{{ eos_token }}
{% endif %}
{% endfor -%}'''

model = AutoModelForCausalLM.from_pretrained(model_name)
tokenizer = AutoTokenizer.from_pretrained(model_name)
tokenizer.chat_template = chat_template

def generate_promt(promt):
    messages = [
        {"role": "system", "content": "You are a helpful assistant that writes clean, idiomatic Python code."},
        {"role": "user", "content": promt}
    ]

    inputs = tokenizer.apply_chat_template(
        messages,
        tokenize=True,
        return_tensors="pt",
        add_generation_prompt=True
    )

    outputs = model.generate(
        input_ids=inputs,
        max_new_tokens=256,
        do_sample=True,
        temperature=0.7,
        top_k=50,
        top_p=0.95,
        repetition_penalty=1.1
    )

    generated = outputs[0][inputs.shape[1]:]
    decoded = tokenizer.decode(generated, skip_special_tokens=True)
    print(decoded)
    return decoded.strip()

def main():
    demo = gr.Interface(
        fn=generate_promt,
        inputs=gr.Textbox(label="Describe the python function you need."),
        outputs=gr.Code(label="Generated python code"),
        title="TinyLlama/TinyLlama_v1.1 Code Assistant",
        description="Describe what code you need and TinyLlama will generate Python for you.",
        theme=gr.themes.Soft()
    )

    demo.launch()

if __name__ == '__main__':
    main()
