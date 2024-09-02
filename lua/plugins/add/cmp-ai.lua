return {
  "tzachar/cmp-ai",
  event = "InsertEnter",
  opts = {
    max_lines = 10,
    provider = "Ollama",
    notify = false,
    provider_options = {
      base_url = "http://chat.groveer.com:11434/api/generate",
      model = "llama3.1",
      system = [[
            You are an excellent programming expert.

            Your task is to complete the current code based on the context. Follow these instructions precisely:
            1. Return ONLY the modified code.
            2. Do not include any explanations, comments, or line numbers in your response.
            3. Ensure the returned code can be directly used as a replacement for the original code.
            4. Preserve the original structure, indentation, and formatting of the code as much as possible.
            5. Do not omit any parts of the code, even if they are unchanged.
            6. Maintain the SAME indentation in the returned code as in the source code
            7. Do NOT include three backticks: ```
            8. Only return one line of code snippet, DO NOT return more than that.

            Remember: Your response should contain ONLY the modified code, ready to be used as a direct replacement for the original file.
          ]],
      prompt = function(lines_before, lines_after)
        return string.format("<|fim_prefix|>%s<|fim_suffix|>%s<|fim_middle|>", lines_before, lines_after)
      end,
    },
  },
  config = function(_, opts)
    local cmp = require "cmp"
    local config = cmp.get_config()
    table.insert(config.sources, 1, {
      name = "cmp_ai",
      max_item_count = 5,
    })
    cmp.setup(config)
    require("cmp_ai.config"):setup(opts)
  end,
}
