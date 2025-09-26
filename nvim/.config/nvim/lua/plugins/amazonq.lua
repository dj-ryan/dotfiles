return {
  'awslabs/amazonq.nvim',
  opts = {
    -- Command passed to `vim.lsp` to start Q LSP. Amazon -- Q LSP is
    -- a NodeJS program, which must be started with `--stdio` flag.
    -- cmd = { 'node', 'path/to/aws-lsp-codewhisperer-token-binary.js', '--stdio' },
    -- REQUIRED: SSO portal URL for authentication
    ssoStartUrl = 'https://amzn.awsapps.com/start', -- Authenticate with Amazon Q Free Tier
    -- OR
    -- ssoStartUrl = 'your-organization-sso-url', -- For Pro subscription
    -- List of filetypes where the Q will be activated. Default:
    filetypes = {
        'amazonq', 'java', 'python', 'typescript', 'javascript',
        'csharp', 'ruby', 'kotlin', 'shell', 'sql', 'c', 'cpp', 'go', 'rust', 'lua',
    },
    -- Enable inline code suggestions.
    inline_suggest = true,
    -- Customize how the chat window is set up.
    on_chat_open = function()
      vim.cmd[[
        vertical topleft split
        set wrap breakindent nonumber norelativenumber nolist
      ]]
    end,
    -- Enable debug mode (for development).
    debug = false,
  },
}
