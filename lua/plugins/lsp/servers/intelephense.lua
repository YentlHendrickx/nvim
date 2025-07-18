return {
  intelephense = {
    filetypes = { 'php' },
    settings = {
      intelephense = {
        completion = {
          maxFileSize = 2000000, -- 2MB
        },
        diagnostics = {
          undefinedVariable = true,
          undefinedTypes = true,
          argumentCount = true,
        },
        include = {
          '_ide_helper.php',
          'ide_helper_models.php',
          'ide_helper.php.stub',
        },
      },
    },
  },
}
