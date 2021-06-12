# NVLS

NeoVim Lua Sandbox - experimenting with Lua plugins

## References

- [Primeagen Writing NeoVim Plugins Part 1/3](https://www.youtube.com/watch?v=9L4sW047oow)
- [Primeagen Writing NeoVim Plugins Part 2/3](https://www.youtube.com/watch?v=0BEvxe6eaj4)
- [nvim-lua-guide](https://github.com/nanotee/nvim-lua-guide)

## Starting Nvim in dev mode

Set runtime path to your current directory - loads code from `./plugin`.

    nvim --cmd "set rtp+=$(pwd)"

## Lua Basics

    :lua print("hello")

## Looking up Lua documentation

    :help nvim<tab>
    :help nvim_win<tab>
    :help vim<tab>
    :help vim.fn<tab>

    :lua print(vim.fn.nvim_win_get_width(0))
    :lua print(vim.fn.nvim_win_get_height(0))

## Running the Plugin

    $ ./N                # Start Nvim
    :echo nvls_value     " echo a variable value
    :call NvlsVarPrint() " prints global variable
    :call NvlsWinPrint() " prints window size
    :call NvlsWinShow()  " :q to exit the popup window...
