" Enable diagnostics highlighting
let lspOpts = #{autoHighlightDiags: v:true}
autocmd User LspSetup call LspOptionsSet(lspOpts)
let lspServers = [
    \  #{
	\    name: 'clangd',
	\    filetype: ['c', 'cpp'],
	\    path: '/usr/bin/clangd',
	\    args: ['--background-index']
	\  },
    \  #{
	\    name: 'pylsp',
	\    filetype: ['python'],
	\    path: '/usr/bin/pylsp',
	\    args: []
	\  },
    \  #{
	\    name: 'jdtls',
	\    filetype: ['java'],
	\    path: expand('$HOME/.vim/jdtls/bin/jdtls'),
	\    args: []
	\  },
    \  #{
    \    name: 'typescriptlang',
	\    filetype: ['javascript', 'typescript'],
	\    path: '/usr/local/bin/typescript-language-server',
	\    args: ['--stdio'],
	\  }
    \ ]
autocmd User LspSetup call LspAddServer(lspServers)

" Key mappings
nnoremap gd :LspGotoDefinition<CR>
nnoremap gr :LspShowReferences<CR>
nnoremap <leader>dd  :LspHover<CR>
nnoremap gl :LspDiag current<CR>
nnoremap <leader>en :LspDiag next \| LspDiag current<CR>
nnoremap <leader>ep :LspDiag prev \| LspDiag current<CR>
inoremap <silent> <C-Space> <C-x><C-o>

" Set omnifunc for completion
autocmd FileType rust setlocal omnifunc=lsp#complete

" Custom diagnostic sign characters
autocmd User LspSetup call LspOptionsSet(#{
    \   diagSignErrorText: ' ',
    \   diagSignWarningText: ' ',
    \   diagSignInfoText: ' ',
    \   diagSignHintText: ' ',
    \ })



