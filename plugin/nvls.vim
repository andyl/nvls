fun! Nvls()
    " dont forget to remove this one....
    lua for k in pairs(package.loaded) do if k:match("^nvls") then package.loaded[k] = nil end end
    lua require("nvls").createFloatingWindow()
endfun

let g:your_first_plugin_value = 42
augroup Nvls
    autocmd!
    autocmd VimResized * :lua require("nvls").onResize()
augroup END

