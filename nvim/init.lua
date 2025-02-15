-- ~/.config/nvim/init.lua

-- Установка Packer
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- Плагины БЕЗ Node.js зависимостей
require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'Mofiqul/vscode.nvim'                   -- Тема
  use 'nvim-tree/nvim-tree.lua'               -- Дерево файлов
  use 'neovim/nvim-lspconfig'                 -- LSP
  use 'hrsh7th/cmp-nvim-lsp'                  -- LSP автодополнение
  use 'hrsh7th/cmp-buffer'                    -- Буферное автодополнение
  use 'hrsh7th/nvim-cmp'                      -- Ядро автодополнения
  use 'windwp/nvim-autopairs'                 -- Автоскобки
end)

-- Настройка темы
vim.o.background = 'dark'
vim.cmd.colorscheme('vscode')

-- Базовые настройки
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.mouse = 'a'

-- Настройка дерева файлов
require('nvim-tree').setup()
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

-- Настройка LSP для C/C++
local lspconfig = require('lspconfig')
lspconfig.clangd.setup{
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
}

-- Простое автодополнение без сложных плагинов
local cmp = require('cmp')
cmp.setup({
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  },
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
  }
})

-- Автоскобки
require('nvim-autopairs').setup{}
