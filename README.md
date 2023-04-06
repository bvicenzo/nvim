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
