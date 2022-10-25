set nocompatible " be iMproved, required 
filetype off " required
" set the runtime path to include Vundle and initialize 
set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin() 
" alternatively, pass a path where Vundle should install plugins "call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported. " Keep Plugin commands between vundle#begin/end. 
Plugin 'fcpg/vim-farout' 
Plugin 'scrooloose/nerdtree' 
Plugin 'scrooloose/syntastic' 
Plugin 'vim-latex/vim-latex'
" All of your Plugins must be added before the following line '
call vundle#end() " required 
" filetype plugin indent on " required 
" To ignore plugin indent changes, instead use: 
filetype plugin on 
"
" Brief help 
" :PluginList - lists configured plugins 
" :PluginInstall - installs plugins; append `!` to update or just :PluginUpdate 
" :PluginSearch foo - searches for foo; append `!` to refresh local cache 
" :PluginClean - confirms removal of unused plugins; append `!` to auto-approve removal 
" 
" see :h vundle for more details or wiki for FAQ 
" Put your non-Plugin stuff after this line


"" Basic 
	"" Setting
		set ai 
		set ic 
		set enc=utf8 
		set mouse=nv 
		set autochdir 
		set autowrite 
		set nobackup
"" delays
	"" Setting
		set timeout ttimeout " separte mapping and keycode time
		set timeoutlen=500 " 500ms
		set ttimeoutlen=20 " 20ms
"" Sound
	""Setting
		set visualbell
		set t_vb=
"" Style 
	"" Setting
		syntax enable
		set background=dark 
		let g:solarized_termcolors=256
		colorscheme farout 
		set cursorline 
		hi CursorLine cterm=underline
"" Status line 
	"" Setting
		set laststatus=2 
		set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
	"" Function 
		func! HasPaste()
				if &paste
					return 'PASTE MODE ' 
				endif 
			return ''
		endfunc
"" Indentation 
	"" Setting
		set tabstop=4 
		set shiftwidth=4 
		set smartindent
"" Line number 
	"" Setting
		set number 
		augroup numbertoggle
			autocmd! 
			autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu | endif 
			autocmd BufLeave,FocusLost,InsertEnter,WinLeave * if &nu | set nornu | endif
		augroup END
"" NERDtree
	map <F5> :NERDTreeToggle<cr>
	let g:NERDTreeDirArrowExpandable = '+'
	let g:NERDTreeDirArrowCollapsible = '-'
	let g:NERDTreeWinPos='left'
	let g:NERDTreeSize=30
	let g:NERDTreeShowLineNumbers=1
"" Syntax
	"" syntastic 
		"" Setting
			set statusline+=%#warningmsg# 
			set statusline+=%{SyntasticStatuslineFlag()} 
			set statusline+=%* 
			let g:syntastic_error_symbol = "✗" 
			let g:syntastic_warning_symbol = "!"
			let g:syntastic_style_error_symbol = '?'
			let g:syntastic_style_warning_symbol = '?'
			let g:syntastic_aggregate_errors = 1
			let g:syntastic_always_populate_loc_list = 1 
			let g:syntastic_auto_loc_list = 1 
			let g:syntastic_check_on_open = 1 
			let g:syntastic_check_on_wq = 0 
			let g:syntastic_enable_highlighting = 1
		"" Checker 
			"" cpp
				let g:syntastic_cpp_checkers = ['cpplint', 'gcc'] 
				"" let g:syntastic_cpp_cpplint_exec = 'cpplint' 
				let g:syntastic_cpp_compiler_options = "-std=c++2a -Wall -Wextra -Wpedantic" 
				let g:syntastic_cpp_cpplint_thres = 1 
			"" js 
				let g:syntastic_javascript_checkers = ['eslint']
			"" shell script
				"" let g:syntastic_sh_checkers = ['shellcheck']
			"" vue.js
				let g:syntastic_vue_checkers = ['eslint'] 
"" Compiling & Running
	"" Functions
				func! Run()
					exec "w"
					exec "!Compilerun %:t"
				endfunc
	"" Setting
				nmap <F9> :call Run()<CR>
"" Skeleton
	"" py
		autocmd BufNewFile *.py 0r ~/.vim/skeleton/skeleton.py
	"" cpp
		autocmd BufNewFile *.cpp 0r ~/.vim/skeleton/skeleton.cpp
