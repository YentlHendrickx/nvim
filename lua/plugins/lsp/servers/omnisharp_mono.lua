return {
  omnisharp_mono = {
    filetypes = { 'cs' },
    cmd = { 'omnisharp-mono', '--languageserver', '--hostPID', tostring(vim.fn.getpid()) },
    root_dir = require('lspconfig').util.root_pattern('*.sln', '*.csproj', '.git'),
    settings = {
      useModernNet = false,
      monoPath = vim.fn.system { 'which', 'mono' },
    },
  },
}
