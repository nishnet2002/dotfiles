"
"Install all the plugins
call plug#begin()
	Plug 'junegunn/vim-easy-align'
	" Plug 'user/repo', 'branch_or_tag'
	" Plug 'git@github.com:junegunn/vim-github-dashboard.git'
	" ...
	Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
	Plug 'tpope/vim-fugitive'
	Plug 'airblade/vim-gitgutter'
	Plug 'bling/vim-airline'
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'aquach/vim-http-client'
	Plug 'matze/vim-move'
	Plug 'editorconfig/editorconfig-vim'
call plug#end()

autocmd vimenter * NERDTree

let mapleader = ","

"Set Mappings for Control Space Plugin"
	set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
	let g:ctrlp_map = '<c-p>'
	let g:ctrlp_cmd = 'CtrlP'
	let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
	"let g:ctrlp_custom_ignore = {
	"  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
	"  \ 'file': '\v\.(exe|so|dll)$',
	"  \ 'link': 'some_bad_symbolic_links'
	"  \ }


"
" ALT Shortcuts are now available
"
	let c='a'
	while c <= 'z'
	  exec "set <A-".c.">=\e".c
	  exec "imap \e".c." <A-".c.">"
	  let c = nr2char(1+char2nr(c))
	endw

	set timeout ttimeoutlen=50


" Start interactive EasyAlign in visual mode (e.g. vipga)
	xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
	nmap ga <Plug>(EasyAlign)


" Set path for editorconfig executable
	let g:EditorConfig_exec_path = '/usr/local/bin/editorconfig'
