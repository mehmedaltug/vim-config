let s:plugin_dir = expand('~/.vim/plugged')

function! s:ensure(repo)
  let name = split(a:repo, '/')[-1]
  let path = s:plugin_dir . '/' . name

  if !isdirectory(path)
    if !isdirectory(s:plugin_dir)
      call mkdir(s:plugin_dir, 'p')
    endif
    execute '!git clone --depth=1 https://github.com/' . a:repo . ' ' . shellescape(path)
    execute '!rm -rf ~/.vim/plugged/' . name . '/.git'
    execute '!rm -rf ~/.vim/plugged/' . name . '/.github'
  endif

  execute 'set runtimepath+=' . fnameescape(path)
endfunction

call s:ensure('morhetz/gruvbox')
call s:ensure('junegunn/fzf.vim')
call s:ensure('junegunn/fzf')
call s:ensure('itchyny/lightline.vim')
call s:ensure('yegappan/lsp')
call s:ensure('girishji/vimcomplete')
call s:ensure('raimondi/delimitmate')
" call s:ensure('github/copilot.vim')
call s:ensure('leafOfTree/vim-project')
