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
              configNamespace = 'typescript',
              enableForWorkspaceTypeScriptVersions = true,
              languages = { 'vue' },
              location = vim.fn.stdpath 'data' .. '/mason/packages/vue-language-server/node_modules/@vue-language-server',
              name = '@vue/typescript-plugin',
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
        parameterNames = { enabled = 'literals' },
        parameterTypes = { enabled = true },
        enumMemberValues = { enabled = true },
        functionLikeReturnTypes = { enabled = true },
        propertyDeclarationTypes = { enabled = true },
        variableTypes = { enabled = false },
      },
    },
  },
}
