return {
    'neovim/nvim-lspconfig',
    dependencies = {
        {'williamboman/mason.nvim', opts = {}},
        'williamboman/mason-lspconfig.nvim',
        { 'j-hui/fidget.nvim', opts = {}, },
        'folke/neodev.nvim',
    },
}
