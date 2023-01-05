require('plugins')

local set = vim.opt

-- set.nocompatible = true                 -- disable compatibility to old-time vi
set.showmatch  = true                   -- show matching 
set.ignorecase = true                   -- case insensitive 
set.mouse = v                           -- middle-click paste with 
set.hlsearch = true                     -- highlight search 
set.incsearch = true                    -- incremental search
set.tabstop = 4                         -- number of columns occupied by a tab 
set.softtabstop = 4                     -- see multiple spaces as tabstops so <BS> does the right thing
set.expandtab = true                    -- converts tabs to white space
set.shiftwidth = 4                      -- width for autoindents
set.autoindent = true                   -- indent a new line the same amount as the line just typed
set.number = true                       -- add line numbers
set.wildmode = longest,list             -- get bash-like tab completions
set.cc = "80"                             -- set an 80 column border for good coding style
set.syntax.on = true                    -- syntax highlighting
set.mouse = a                           -- enable mouse click
set.clipboard = unnamedplus             -- using system clipboard
set.filetype.plugin = true
set.cursorline = false                  -- highlight current cursorline
set.ttyfast = true                      -- Speed up scrolling in Vim
-- set spell                            -- enable spell check (may need to download language package)
-- set noswapfile                       -- disable creating swap file
-- set backupdir = ~/.cache/vim         -- Directory to store backup files.

vim.cmd('colorscheme nightfox')         -- Set Nightfox colorscheme
