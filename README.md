# Chiqui Neovim

## Dependencies

Using CTAGS, it's optional to install:

```sh
sudo apt install -y universal-ctags
```

## Configs

|      Param     | Description |
|----------------|-------------|
| number         | Enable the line numbers |
| ruler          | Enable the highlight of the current line |
| cursorline     | Enable the highlight of the current line |
| ruler          | Enable the highlight of the current line |
| foldenable     | Enable the folding method (using key `za`) |
| foldlevelstart | Set the 3 level to start |
| foldmethod     | Set the folding method as defined by the `foldexp` |
| undofile       | Enable the undo wehn you close the file, the changes are forever |
| backupdir      | Set backdir inside the nvim dir in a tmp folder¹ |
| undodir        | Set undodir inside the nvim dir in a tmp folder¹ |
| directory      | Set swapdir inside the nvim dir in a tmp folder¹ |
| expandtab      | Enable the expandtab to soft the TAB |
| shiftwidth     | Set the tab as two spaces |

¹ these directories are auto created as nvim/tmp/NAME

## Leader

Set as ` , `

## Keybinds

|   Keybind  | Description |
|------------|-------------|
| \<LEADER\>/  | Clear the highlight of the search |
| \<LEADER\>rt | Run the `ctags` to reload the tags |
| \<LEADER\>d  | Print a debugger in a new line |
| \<LEADER\>bd | Remove the current file from buffer |
| \<LEADER\>l  | Swap between the two files in buffer |
| \<LEADER\>jt | Indent a JSON content inside a file |


## Filetypes

The unkown filetypes can be defined the type in [nvim/filetype.lua](https://github.com/bvicenzo/nvim/blob/master/filetype.lua).

## Plugins

<details>
 <summary>Mini</summary>
  Plugin page [here](https://github.com/echasnovski/mini.nvim).
  Library of 20+ independent Lua modules improving overall Neovim (version 0.7 and higher) experience with minimal effort. They all share same configuration approaches and general design principles.
  Installed modules:
  - [Animate](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-animate.md): Animate common Neovim actions;
  - [Completion](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-completion.md): Completion and signature help;
  - [Pairs](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-pairs.md): Allows automatic close opened chars, as (, [, and etc;
  - [Comment](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-comment.md) Allows comment code using shortcuts;
  - [Intendscope](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-indentscope.md): Visualize and work with indent scope;
  - [Splitjoin](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-splitjoin.md): Split and join arguments;
  - [Cursorword](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-cursorword.md): Automatic highlighting of word under cursor;
</details>
<details>
 <summary>Dracula</summary>
  Plugin page [here](https://github.com/Mofiqul/dracula.nvim).
  Plugin to add [Dracula theme](https://draculatheme.com/) to Nvim.
</details>
<details>
 <summary>Dev icons</summary>
  Plugin page [here](https://github.com/nvim-tree/nvim-web-devicons).
  Plugin to add dev icons as filetypes and etc to Nvim.
</details>
<details>
 <summary>Lualine</summary>
  Plugin page [here](https://github.com/nvim-lualine/lualine.nvim).
  Plugin to add a status line integrated with devicons.
</details>
<details>
 <summary>Neo tree</summary>
  Plugin page [here](https://github.com/nvim-neo-tree/neo-tree.nvim).

 Plugin to add a current folder subtree.
  Main commands:

  - `<leader>nt`: Open/Close;
  - `<leader>be`: Open tree in buffers tab;
  - `<leader>ng`: Open tree in git tab;
  - `<leader>r`: Open with current file selected;
  - `<leader>ew`: Open in a floating window;
  - `shift+>`: Move file/buffers/git tabs for right;
  - `shift+<`: Move file/buffers/git tabs for left;
  - `bd`: To close a file in buffer tab, `bd` closes the highlighted file.
</details>
<details>
 <summary>Git signs</summary>
  Plugin page [here](https://github.com/lewis6991/gitsigns.nvim).

 Plugin to help to work on git functions.
  Main commands:

  - `<leader>tb`: Show/Hide gitblame on current line;
  - `<leader>hb`: Show the full commit message;
  - `<leader>hd`: Show git diff on file;
  - `<leader>hp`: Show git diff for current change;
</details>
<details>
 <summary>Git linker</summary>
  Plugin page [here](https://github.com/ruifm/gitlinker.nvim).

 Plugin to generate link and access files on sources as github and gitlab.
  Main commands:

  - `<leader>gy`: Generate link and copy to clipboard;
  - `<leader>of`: Generate link and open in default browser;
</details>
<details>
 <summary>Tidy</summary>
  Plugin page [here](https://github.com/mcauley-penney/tidy.nvim).

 Plugin to auto remove trail whitespaces.
</details>
<details>
 <summary>Snippy</summary>
  Plugin page [here](https://github.com/dcampos/nvim-snippy).

 Plugin to add and use code snippets.
  Main commands:

  - `<Tab>`: Navigate to snippets suggestions;
  - `<S-Tab>`: Navigate back to snippets suggestions.
</details>
<details>
 <summary>Scrollbar</summary>
  Plugin page [here](https://github.com/petertriho/nvim-scrollbar).
</details>
