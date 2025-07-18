return {
  ts_ls = {
    enabled = false, -- Use the new vtsls instead
    init_options = {
      plugins = {
        {
          name = '@vue/typescript-plugin',
          location = '/usr/local/lib/node/node_modules/@vue/typescript-plugin',
          languages = { 'javascript', 'typescript', 'vue' },
        },
      },
      format_on_save = true,
      formatters_by_ft = {
        javascript = { 'prettier' },
        typescript = { 'prettier' },
        vue = { 'prettier' },
      },
    },
    settings = {
      typescript = {
        preferences = {
          importModuleSpecifier = 'non-relative',
          importModuleSpecifierPreference = 'project-relative',
        },
      },
    },
    filetypes = {
      'javascript',
      'typescript',
      'vue',
    },
  },
}
