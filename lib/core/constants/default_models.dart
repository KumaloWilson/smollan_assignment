
class DefaultModels{
  final models = [
    {
      "id": "bartowski/SmolLM2-1.7B-Instruct-GGUF/SmolLM2-1.7B-Instruct-Q8_0.gguf",
      "author": "bartowski",
      "name": "SmolLM2-1.7B-Instruct (Q8_0)",
      "type": "SmolLM",
      "description": "",
      "size": 1820414944,
      "params": 1711376384,
      "isDownloaded": false,
      "downloadUrl": "https://huggingface.co/bartowski/SmolLM2-1.7B-Instruct-GGUF/resolve/main/SmolLM2-1.7B-Instruct-Q8_0.gguf",
      "hfUrl": "https://huggingface.co/bartowski/SmolLM2-1.7B-Instruct-GGUF",
      "progress": 0,
      "filename": "SmolLM2-1.7B-Instruct-Q8_0.gguf",
      "isLocal": false,
      "origin": "default",
      "defaultChatTemplate": {
        'name': 'smolLM',
        'addGenerationPrompt': true,
        'systemPrompt': 'You are a helpful assistant.',
        'bosToken': '<|im_start|>',
        'eosToken': '<|im_end|>',
        'addBosToken': false,
        'addEosToken': false,
        'chatTemplate': '''
        You are SmolLM, an assistant who is designed to provide direct answers.
        Keep your responses short, clear, and helpful, without unnecessary elaboration.
      ''',
      },
      "chatTemplate": {
        'name': 'smolLM',
        'addGenerationPrompt': true,
        'systemPrompt': 'You are a helpful assistant.',
        'bosToken': '<|im_start|>',
        'eosToken': '<|im_end|>',
        'addBosToken': false,
        'addEosToken': false,
        'chatTemplate': '''
        You are SmolLM, an assistant who is designed to provide direct answers.
        Keep your responses short, clear, and helpful, without unnecessary elaboration.
      ''',
      },
      "defaultCompletionSettings": {
        "n_predict": 500,
        "temperature": 0.7,
        "stop": ["<|endoftext|>", "<|im_end|>"]
      },
      "completionSettings": {
        "n_predict": 500,
        "temperature": 0.7,
        "stop": ["<|endoftext|>", "<|im_end|>"]
      },
      "hfModelFile": {
        "rfilename": "SmolLM2-1.7B-Instruct-Q8_0.gguf",
        "url": "https://huggingface.co/bartowski/SmolLM2-1.7B-Instruct-GGUF/resolve/main/SmolLM2-1.7B-Instruct-Q8_0.gguf",
        "size": 1820414944,
        "oid": "c06316819523138df0346459118248997dac5089",
        "canFitInStorage": true
      }
    },

    {
      "id": "bartowski/Llama-3.2-3B-Instruct-GGUF/Llama-3.2-3B-Instruct-Q6_K.gguf",
      "author": "bartowski",
      "name": "Llama-3.2-3B-Instruct (Q6_K)",
      "type": "Llama",
      "description": "Instruction following, Summarization, Rewriting",
      "size": 2643853856,
      "params": 3212749888,
      "isDownloaded": false,
      "downloadUrl": "https://huggingface.co/bartowski/Llama-3.2-3B-Instruct-GGUF/resolve/main/Llama-3.2-3B-Instruct-Q6_K.gguf",
      "hfUrl": "https://huggingface.co/bartowski/Llama-3.2-3B-Instruct-GGUF",
      "progress": 0,
      "filename": "Llama-3.2-3B-Instruct-Q6_K.gguf",
      "isLocal": false,
      "origin": "default",
      "defaultChatTemplate": {
        'name': 'llama32',
        'addGenerationPrompt': true,
        'systemPrompt': '',
        'chatTemplate': '''
        You are Llama32, an assistant designed to handle a broad range of tasks.
        Keep your responses clear, direct, and relevant to the topic at hand.
      ''',
      },
      "chatTemplate": {
        'name': 'llama32',
        'addGenerationPrompt': true,
        'systemPrompt': '',
        'chatTemplate': '''
        You are Llama32, an assistant designed to handle a broad range of tasks.
        Keep your responses clear, direct, and relevant to the topic at hand.
      ''',
      },
      "defaultCompletionSettings": {
        "n_predict": 500,
        "temperature": 0.5,
        "stop": ["<|eot_id|>"]
      },
      "completionSettings": {
        "n_predict": 500,
        "temperature": 0.5,
        "stop": ["<|eot_id|>"]
      },
      "hfModelFile": {
        "rfilename": "Llama-3.2-3B-Instruct-Q6_K.gguf",
        "url": "https://huggingface.co/bartowski/Llama-3.2-3B-Instruct-GGUF/resolve/main/Llama-3.2-3B-Instruct-Q6_K.gguf",
        "size": 2643853856,
        "oid": "47d12cf8883aaa6a6cd0b47975cc026980a3af9d",
        "canFitInStorage": true
      }
    },

    {
      "id": "hugging-quants/Llama-3.2-1B-Instruct-Q8_0-GGUF/llama-3.2-1b-instruct-q8_0.gguf",
      "author": "hugging-quants",
      "name": "Llama-3.2-1b-instruct (Q8_0)",
      "type": "Llama",
      "description": "Instruction following, Summarization, Rewriting",
      "size": 1321079200,
      "params": 1235814432,
      "isDownloaded": false,
      "downloadUrl": "https://huggingface.co/hugging-quants/Llama-3.2-1B-Instruct-Q8_0-GGUF/resolve/main/llama-3.2-1b-instruct-q8_0.gguf",
      "hfUrl": "https://huggingface.co/hugging-quants/Llama-3.2-1B-Instruct-Q8_0-GGUF",
      "progress": 0,
      "filename": "llama-3.2-1b-instruct-q8_0.gguf",
      "isLocal": false,
      "origin": "default",
      "defaultChatTemplate": {
        'name': 'llama3',
        'addGenerationPrompt': true,
        'systemPrompt': 'You are a helpful conversational chat assistant. You are precise, concise, and casual.',
        'chatTemplate': '''
        You are Llama3, a conversational assistant created to handle a variety of user inquiries.
        Your responses should be clear and concise, providing helpful information when necessary.
      ''',
      },
      "chatTemplate": {
        'name': 'llama3',
        'addGenerationPrompt': true,
        'systemPrompt': 'You are a helpful conversational chat assistant. You are precise, concise, and casual.',
        'chatTemplate': '''
        You are Llama3, a conversational assistant created to handle a variety of user inquiries.
        Your responses should be clear and concise, providing helpful information when necessary.
      ''',
      },
      "defaultCompletionSettings": {
        "n_predict": 500,
        "temperature": 0.5,
        "stop": ["<|eot_id|>"]
      },
      "completionSettings": {
        "n_predict": 500,
        "temperature": 0.5,
        "stop": ["<|eot_id|>"]
      },
      "hfModelFile": {
        "rfilename": "llama-3.2-1b-instruct-q8_0.gguf",
        "url": "https://huggingface.co/hugging-quants/Llama-3.2-1B-Instruct-Q8_0-GGUF/resolve/main/llama-3.2-1b-instruct-q8_0.gguf",
        "size": 1321079200,
        "oid": "4d5402369568f0bd157d8454270821341e833722",
        "canFitInStorage": true
      }
    },

    {
      "id": "Qwen/Qwen2.5-3B-Instruct-GGUF/qwen2.5-3b-instruct-q5_k_m.gguf",
      "author": "Qwen",
      "name": "Qwen2.5-3B-Instruct (Q5_K_M)",
      "type": "Qwen",
      "description": "Instructions, Role-play, Multilingual",
      "size": 2438740384,
      "params": 3397103616,
      "isDownloaded": false,
      "downloadUrl": "https://huggingface.co/Qwen/Qwen2.5-3B-Instruct-GGUF/resolve/main/qwen2.5-3b-instruct-q5_k_m.gguf",
      "hfUrl": "https://huggingface.co/Qwen/Qwen2.5-3B-Instruct-GGUF",
      "progress": 0,
      "filename": "qwen2.5-3b-instruct-q5_k_m.gguf",
      "isLocal": false,
      "origin": "default",
      "defaultChatTemplate": {
        'name': 'qwen25',
        'addGenerationPrompt': true,
        'systemPrompt': 'You are Qwen, created by Alibaba Cloud. You are a helpful assistant.',
        'chatTemplate': '''
        You are Qwen25, an assistant developed by Alibaba Cloud. Your role is to assist users in a concise and clear manner.
        Ensure that responses are easy to understand and relevant to the user's needs.
      ''',
      },
      "chatTemplate": {
        'name': 'qwen25',
        'addGenerationPrompt': true,
        'systemPrompt': 'You are Qwen, created by Alibaba Cloud. You are a helpful assistant.',
        'chatTemplate': '''
        You are Qwen25, an assistant developed by Alibaba Cloud. Your role is to assist users in a concise and clear manner.
        Ensure that responses are easy to understand and relevant to the user's needs.
      ''',
      },
      "defaultCompletionSettings": {
        "n_predict": 500,
        "temperature": 0.5,
        "stop": ["<|im_end|>"]
      },
      "completionSettings": {
        "n_predict": 500,
        "temperature": 0.5,
        "stop": ["<|im_end|>"]
      },
      "hfModelFile": {
        "rfilename": "qwen2.5-3b-instruct-q5_k_m.gguf",
        "url": "https://huggingface.co/Qwen/Qwen2.5-3B-Instruct-GGUF/resolve/main/qwen2.5-3b-instruct-q5_k_m.gguf",
        "size": 2438740384,
        "oid": "ffee048cd9cd76e7e4848d17fb96892023e8eca1",
        "canFitInStorage": true
      }
    },

    {
      "id": "Qwen/Qwen2.5-1.5B-Instruct-GGUF/qwen2.5-1.5b-instruct-q8_0.gguf",
      "author": "Qwen",
      "name": "Qwen2.5-1.5B-Instruct (Q8_0)",
      "type": "Qwen",
      "description": "Instruction following, Role-play, Multilingual",
      "size": 1894532128,
      "params": 1777088000,
      "isDownloaded": false,
      "downloadUrl": "https://huggingface.co/Qwen/Qwen2.5-1.5B-Instruct-GGUF/resolve/main/qwen2.5-1.5b-instruct-q8_0.gguf",
      "hfUrl": "https://huggingface.co/Qwen/Qwen2.5-1.5B-Instruct-GGUF",
      "progress": 0,
      "filename": "qwen2.5-1.5b-instruct-q8_0.gguf",
      "isLocal": false,
      "origin": "default",
      "defaultChatTemplate": {
        'name': 'qwen2',
        'addGenerationPrompt': true,
        'systemPrompt': 'You are a helpful assistant.',
        'chatTemplate': '''
        You are Qwen2, a helpful assistant created to assist users with their queries.
        Keep the conversation light and straightforward, ensuring responses are concise and useful.
      ''',
      },
      "chatTemplate": {
        'name': 'qwen2',
        'addGenerationPrompt': true,
        'systemPrompt': 'You are a helpful assistant.',
        'chatTemplate': '''
        You are Qwen2, a helpful assistant created to assist users with their queries.
        Keep the conversation light and straightforward, ensuring responses are concise and useful.
      ''',
      },
      "defaultCompletionSettings": {
        "n_predict": 500,
        "temperature": 0.5,
        "stop": ["<|im_end|>"]
      },
      "completionSettings": {
        "n_predict": 500,
        "temperature": 0.5,
        "stop": ["<|im_end|>"]
      },
      "hfModelFile": {
        "rfilename": "qwen2.5-1.5b-instruct-q8_0.gguf",
        "url": "https://huggingface.co/Qwen/Qwen2.5-1.5B-Instruct-GGUF/resolve/main/qwen2.5-1.5b-instruct-q8_0.gguf",
        "size": 1894532128,
        "oid": "<add-appropriate-oid-here>",
        "canFitInStorage": true
      }
    },

    {
      "id": "MaziyarPanahi/Phi-3.5-mini-instruct-GGUF/Phi-3.5-mini-instruct.Q4_K_M.gguf",
      "author": "MaziyarPanahi",
      "name": "Phi-3.5 mini 4k instruct (Q4_K_M)",
      "type": "Phi",
      "description": "Reasoning (code & math). Multilingual",
      "size": 2393232608,
      "params": 3821079648,
      "isDownloaded": false,
      "downloadUrl": "https://huggingface.co/MaziyarPanahi/Phi-3.5-mini-instruct-GGUF/resolve/main/Phi-3.5-mini-instruct.Q4_K_M.gguf",
      "hfUrl": "https://huggingface.co/MaziyarPanahi/Phi-3.5-mini-instruct-GGUF",
      "progress": 0,
      "filename": "Phi-3.5-mini-instruct.Q4_K_M.gguf",
      "isLocal": false,
      "origin": "default",
      "defaultChatTemplate": {
        'name': 'phi3',
        'addGenerationPrompt': true,
        'systemPrompt': 'You are a helpful conversational chat assistant. You are precise, concise, and casual.',
        'chatTemplate': '''
        You are Phi3, a conversational assistant designed to assist with a wide range of queries.
        Be precise and concise in your responses, ensuring a helpful interaction.
      ''',
      },
      "chatTemplate": {
        'name': 'phi3',
        'addGenerationPrompt': true,
        'systemPrompt': 'You are a helpful conversational chat assistant. You are precise, concise, and casual.',
        'chatTemplate': '''
        You are Phi3, a conversational assistant designed to assist with a wide range of queries.
        Be precise and concise in your responses, ensuring a helpful interaction.
      ''',
      },
      "defaultCompletionSettings": {
        "n_predict": 500,
        "temperature": 0.1,
        "stop": ["<|end|>"]
      },
      "completionSettings": {
        "n_predict": 500,
        "temperature": 0.1,
        "stop": ["<|end|>"]
      },
      "hfModelFile": {
        "rfilename": "Phi-3.5-mini-instruct.Q4_K_M.gguf",
        "url": "https://huggingface.co/MaziyarPanahi/Phi-3.5-mini-instruct-GGUF/resolve/main/Phi-3.5-mini-instruct.Q4_K_M.gguf",
        "size": 2393232608,
        "oid": "a2b0f35b7504ba395e886fadd5ebc61236b9f5ec",
        "canFitInStorage": true
      }
    },

    {
      "id": "TheDrummer/Gemmasutra-Mini-2B-v1-GGUF/Gemmasutra-Mini-2B-v1-Q6_K.gguf",
      "author": "TheDrummer",
      "name": "Gemmasutra-Mini-2B-v1 (Q6_K)",
      "type": "Gemma",
      "description": "Role-play",
      "size": 2151393152,
      "params": 2614341888,
      "isDownloaded": false,
      "downloadUrl": "https://huggingface.co/TheDrummer/Gemmasutra-Mini-2B-v1-GGUF/resolve/main/Gemmasutra-Mini-2B-v1-Q6_K.gguf",
      "hfUrl": "https://huggingface.co/TheDrummer/Gemmasutra-Mini-2B-v1-GGUF",
      "progress": 0,
      "filename": "Gemmasutra-Mini-2B-v1-Q6_K.gguf",
      "isLocal": false,
      "origin": "default",
      "defaultChatTemplate":  {
        'name': 'gemmasutra',
        'addGenerationPrompt': true,
        'systemPrompt': 'You are a helpful conversational chat assistant. You are precise, concise, and casual.',
        'chatTemplate': '''
        You are Gemmasutra, a friendly assistant ready to help with various tasks.
        Provide responses that are straightforward and to the point, keeping conversations casual but helpful.
      ''',
      },
      "chatTemplate":  {
        'name': 'gemmasutra',
        'addGenerationPrompt': true,
        'systemPrompt': 'You are a helpful conversational chat assistant. You are precise, concise, and casual.',
        'chatTemplate': '''
        You are Gemmasutra, a friendly assistant ready to help with various tasks.
        Provide responses that are straightforward and to the point, keeping conversations casual but helpful.
      ''',
      },
      "defaultCompletionSettings": {
        "n_predict": 500,
        "temperature": 0.7,
        "penalty_repeat": 1.0,
        "stop": ["<end_of_turn>"]
      },
      "completionSettings": {
        "n_predict": 500,
        "temperature": 0.7,
        "penalty_repeat": 1.0,
        "stop": ["<end_of_turn>"]
      },
      "hfModelFile": {
        "rfilename": "Gemmasutra-Mini-2B-v1-Q6_K.gguf",
        "url": "https://huggingface.co/TheDrummer/Gemmasutra-Mini-2B-v1-GGUF/resolve/main/Gemmasutra-Mini-2B-v1-Q6_K.gguf",
        "size": 2151393152,
        "oid": "05521bb238e46ebd8fb5dacf044ba14f7c15f73e",
        "canFitInStorage": true
      }
    },

    {
      "id": "bartowski/gemma-2-2b-it-GGUF/gemma-2-2b-it-Q6_K.gguf",
      "author": "bartowski",
      "name": "Gemma-2-2b-it (Q6_K)",
      "type": "Gemma",
      "description": "Question Answering, Summarization, Reasoning",
      "size": 2151393120,
      "params": 2614341888,
      "isDownloaded": false,
      "downloadUrl": "https://huggingface.co/bartowski/gemma-2-2b-it-GGUF/resolve/main/gemma-2-2b-it-Q6_K.gguf",
      "hfUrl": "https://huggingface.co/bartowski/gemma-2-2b-it-GGUF",
      "progress": 0,
      "filename": "gemma-2-2b-it-Q6_K.gguf",
      "isLocal": false,
      "origin": "default",
      "defaultChatTemplate": {
        'name': 'gemmaIt',
        'addGenerationPrompt': true,
        'systemPrompt': 'You are a helpful conversational chat assistant. You are precise, concise, and casual.',
        'chatTemplate': '''
        You are GemmaIt, a conversational assistant focused on helping users with IT-related questions.
        Keep your answers simple, clear, and to the point, ensuring users get the information they need quickly.
      ''',
      },
      "chatTemplate": {
        'name': 'gemmaIt',
        'addGenerationPrompt': true,
        'systemPrompt': 'You are a helpful conversational chat assistant. You are precise, concise, and casual.',
        'chatTemplate': '''
        You are GemmaIt, a conversational assistant focused on helping users with IT-related questions.
        Keep your answers simple, clear, and to the point, ensuring users get the information they need quickly.
      ''',
      },
      "defaultCompletionSettings": {
        "n_predict": 500,
        "temperature": 0.0,
        "penalty_repeat": 1.0,
        "stop": ["<end_of_turn>"]
      },
      "completionSettings": {
        "n_predict": 500,
        "temperature": 0.0,
        "penalty_repeat": 1.0,
        "stop": ["<end_of_turn>"]
      },
      "hfModelFile": {
        "rfilename": "gemma-2-2b-it-Q6_K.gguf",
        "url": "https://huggingface.co/bartowski/gemma-2-2b-it-GGUF/resolve/main/gemma-2-2b-it-Q6_K.gguf",
        "size": 2151393120,
        "oid": "72f2510b5868d1141617aa16cfc4c4a61ec77262",
        "canFitInStorage": true
      }
    },

    {
      "id": "sample_download",
      "author": "Watkay",
      "name": "Sample Download",
      "type": "Sample",
      "description": "Question Answering, Summarization, Reasoning",
      "size": 17000000,
      "params": 2614341888,
      "isDownloaded": false,
      "downloadUrl": "https://file-examples.com/storage/fe6a903be26776da396efab/2017/04/file_example_MP4_1920_18MG.mp4",
      "hfUrl": "https://huggingface.co/bartowski/gemma-2-2b-it-GGUF",
      "progress": 0,
      "filename": "gemma-2-2b-it-Q6_K.gguf",
      "isLocal": false,
      "origin": "default",
      "defaultChatTemplate": {
        'name': 'gemmaIt',
        'addGenerationPrompt': true,
        'systemPrompt': 'You are a helpful conversational chat assistant. You are precise, concise, and casual.',
        'chatTemplate': '''
        You are GemmaIt, a conversational assistant focused on helping users with IT-related questions.
        Keep your answers simple, clear, and to the point, ensuring users get the information they need quickly.
      ''',
      },
      "chatTemplate": {
        'name': 'gemmaIt',
        'addGenerationPrompt': true,
        'systemPrompt': 'You are a helpful conversational chat assistant. You are precise, concise, and casual.',
        'chatTemplate': '''
        You are GemmaIt, a conversational assistant focused on helping users with IT-related questions.
        Keep your answers simple, clear, and to the point, ensuring users get the information they need quickly.
      ''',
      },
      "defaultCompletionSettings": {
        "n_predict": 500,
        "temperature": 0.0,
        "penalty_repeat": 1.0,
        "stop": ["<end_of_turn>"]
      },
      "completionSettings": {
        "n_predict": 500,
        "temperature": 0.0,
        "penalty_repeat": 1.0,
        "stop": ["<end_of_turn>"]
      },
      "hfModelFile": {
        "rfilename": "gemma-2-2b-it-Q6_K.gguf",
        "url": "https://huggingface.co/bartowski/gemma-2-2b-it-GGUF/resolve/main/gemma-2-2b-it-Q6_K.gguf",
        "size": 2151393120,
        "oid": "72f2510b5868d1141617aa16cfc4c4a61ec77262",
        "canFitInStorage": true
      }
    }

  ];

}

