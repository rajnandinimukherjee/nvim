--vim.g.tex_flavor = 'latex'           -- Default tex file format
--vim.g.vimtex_view_method = 'zathura' -- Choose which program to use to view PDF file
--vim.g.vimtex_view_skim_sync = 1      -- Value 1 allows forward search after every successful compilation
--vim.g.vimtex_view_skim_activate = 1  -- Value 1 allows change focus to skim after command `:VimtexView` is given
vim.cmd [[
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'sioyek'
let g:vimtex_quickfix_ignore_filters = [
      \ 'Underfull \\hbox (badness [0-9]*) in paragraph at lines',
      \ 'Overfull \\hbox ([0-9]*.[0-9]*pt too wide) in paragraph at lines',
      \ 'Underfull \\hbox (badness [0-9]*) in ',
      \ 'Overfull \\hbox ([0-9]*.[0-9]*pt too wide) in ',
      \ 'Package hyperref Warning: Token not allowed in a PDF string',
      \ 'Package typearea Warning: Bad type area settings!',
      \]

function! ZathuraHook() abort
  if exists('b:vimtex.viewer.xwin_id') && b:vimtex.viewer.xwin_id <= 0
    silent call system('xdotool windowactivate ' . b:vimtex.viewer.xwin_id . ' --sync')
    silent call system('xdotool windowraise ' . b:vimtex.viewer.xwin_id)
  endif
endfunction

augroup vimrc_vimtex
  autocmd!
  autocmd User VimtexEventView call ZathuraHook()
augroup END
]]
