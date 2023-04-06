-- Author: Bruno Vicenzo
-- Source: https://github.com/bvicenzo/nvim.git

-- Vim custom options
vim.g.mapleader = ","           -- change the <leader> to comma(,)
vim.keymap.set('n', ';', ':')   -- don't need to press the shift key :

vim.o.number = true       -- show line numbers
vim.o.ruler = true        -- hightline the number of current line
vim.o.cursorcolumn = false -- highlight the current column
vim.o.cursorline = true   -- highlight the current line
vim.o.termguicolors = true

-- Set fold method
vim.cmd("set foldenable")
vim.cmd("set foldlevelstart=3")
vim.cmd("set foldmethod=expr")
vim.cmd("set foldexpr=nvim_treesitter#foldexpr()")

-- Cursor
vim.opt.guicursor:append "i:block-iCursor" -- Set ursor shape as block in insertion mode

-- Chars list
vim.opt.list = true
vim.opt.listchars:append {
  eol = '⤶',
  trail = '✚',
  extends = '◀',
  precedes = '▶',
}

-- Set undo/swap/backup dir all inside the nvim tmp path
vim.cmd("set undofile")
vim.cmd("set backupdir=~/.config/nvim/tmp/backup/")
vim.cmd("set undodir=~/.config/nvim/tmp/undo/")
vim.cmd("set directory=~/.config/nvim/tmp/swap/")
os.execute("mkdir -p ~/.config/nvim/tmp/backup/")
os.execute("mkdir -p ~/.config/nvim/tmp/undo/")
os.execute("mkdir -p ~/.config/nvim/tmp/swap/")

-- Force he soft of TAB
vim.o.expandtab = true
vim.o.softtabstop = 0
vim.o.shiftwidth = 2

-- clear search
vim.keymap.set("n", "<leader>/", ":nohl<CR>")

-- CTAGS refresh tags
vim.keymap.set(
  "n",
  "<leader>rt",
  ":!ctags --extras=+f --exclude=.git --exclude=log --exclude=node_modules --exclude=db --exclude=tmp -R *<CR>"
)

-- write a debugger 🤘 from Eurico Vial
vim.keymap.set(
  "n",
  "<leader>d",
  function()
    local debug = ""
    if vim.bo.filetype == "ruby" then
      debug = "require 'pry-nav'; binding.pry"
    elseif vim.bo.filetype == "javascript" then
      debug = "debugger"
    end

    local cursor_pos = vim.api.nvim_win_get_cursor(0)

    vim.api.nvim_buf_set_lines(
      vim.api.nvim_get_current_buf(), vim.fn.line('.'), vim.fn.line('.'), false, { debug }
    )
    -- move the curor to the new line
    vim.api.nvim_win_set_cursor(0, { cursor_pos[1] + 1, 0 })
    vim.api.nvim_command('w')
  end
)

-- Find merge conflict markers
vim.keymap.set("n", "<leader>cf", "<ESC>/\\v^[<=>|]{7,}( .*|$)<CR>")

-- Format JSON files
vim.keymap.set("n", "<leader>jt", "<ESC>:%!ruby -rjson -e \"print JSON.pretty_generate(JSON.parse(ARGF.read))\"<ESC>=%<CR>")

-- Buffer
vim.keymap.set("n", "<leader>bd", '<ESC>:bw<CR>') -- Closes current buffer
vim.keymap.set("n", "<leader>l", '<ESC>:e#<CR>') -- Goes to last opened buffer