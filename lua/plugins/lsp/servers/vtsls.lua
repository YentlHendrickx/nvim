return {
  vtsls = {
    filetypes = {
      'javascript',
      'typescript',
      'vue',
    },
    settings = {
      vtsls = {
        tsserver = {
          globalPlugins = {
            {
              name = '@vue/typescript-plugin',
              location = '/usr/local/lib/node/node_modules/@vue/typescript-plugin',
              languages = { 'vue' },
            },
          },
        },
        enableMoveToFileCodeAction = true,
        autoUseWorkspaceTsdk = true,
        experimental = {
          maxInlayHintLength = 30,
          completion = {
            enableServerSideFuzzyMatch = true,
          },
        },
        format = {
          enable = true,
          defaultFormatter = {
            javascript = 'prettier',
            typescript = 'prettier',
            vue = 'prettier',
          },
        },
      },
    },
    typescript = {
      updateImportsOnFileMove = { enabled = 'always' },
      suggest = {
        completeFunctionCalls = true,
      },
      preferences = {
        importModuleSpecifier = 'non-relative',
        importModuleSpecifierPreference = 'project-relative',
      },
      inlayHints = {
        enumMemberValues = { enabled = true },
        functionLikeReturnTypes = { enabled = true },
        parameterNames = { enabled = 'literals' },
        parameterTypes = { enabled = true },
        propertyDeclarationTypes = { enabled = true },
        variableTypes = { enabled = false },
      },
    },
  },
}
