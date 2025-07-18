return {
  rust_analyzer = {
    filetypes = { 'rust' },
    capabilities = {
      textDocument = {
        completion = {
          completionItem = {
            snippetSupport = true,
          },
        },
      },
    },
  },
}
