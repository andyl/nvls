" A VimL function to dynamically reload your Lua code
fun! NvlsWinShow()
    " remove old lua package definition
    lua for k in pairs(package.loaded) do if k:match("^nvls") then package.loaded[k] = nil end end
    " then reload it
    lua require("nvls").createFloatingWindow()
endfun

fun! NvlsWinPrint()
    " remove old lua package definition
    lua for k in pairs(package.loaded) do if k:match("^nvls") then package.loaded[k] = nil end end
    " then reload it
    lua require("nvls").printWindowSize()
endfun

fun! NvlsVarPrint()
    " remove old lua package definition
    lua for k in pairs(package.loaded) do if k:match("^nvls") then package.loaded[k] = nil end end
    " then reload it
    lua require("nvls").printVar()
endfun


" Global variable
" Inspect using `:echo g:nvls_value`

let g:nvls_value = 42

" Autogroup
augroup Nvls
    autocmd!
    " Every time the window is resized, rerun this function... 
    autocmd VimResized * :lua require("nvls").onResize()
augroup END

