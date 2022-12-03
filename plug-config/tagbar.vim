nnoremap <leader>tt <cmd>:call ToggleTagbar()<cr>

function ToggleTagbar()
  execute 'TagbarToggle'
  wincmd l
  echo "Tagbar Toggled"
endfunction
