"------------------------------------------------------------------------------
" File: $HOME/.vimrc
" Author: trungbat <https://codewithbat.com>
" URL: https://github.com/batTrung/dotfiles/blob/master/vimrc 
"------------------------------------------------------------------------------

"=====================================================
"===================== PLUGINS =======================

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'                   " Plugin Management
Plugin 'gruvbox-community/gruvbox' 		" Background Theme
Plugin 'scrooloose/nerdtree'       		" Explorer Files & Folders
Plugin 'vim-airline/vim-airline'		" Status tabline

" Plugin 'mattn/emmet-vim'
" Plugin 'scrooloose/syntastic'

"===================== GIT ==========================
" Plugin 'tpope/vim-fugitive'
" Plugin 'airblade/vim-gitgutter'

" Plugin 'majutsushi/tagbar'
" Plugin 'valloric/youcompleteme'
" Plugin 'tpope/vim-surround'
" Plugin 'kien/ctrlp.vim'
" Plugin 'junegunn/fzf.vim'
" Plugin 'tpope/vim-commentary'
" Plugin 'wincent/command-t'
" Plugin 'mileszs/ack.vim'
" Plugin 'tpope/vim-repeat'
" Plugin 'christoomey/vim-tmux-navigator'
" Plugin 'tpope/vim-markdown'


call vundle#end()

"=====================================================
"===================== GENRENAL ======================

set nocompatible
filetype plugin indent on

set noerrorbells             			" No beeps
set hlsearch					" highlight all search results
set ignorecase					" Search case insensitive...
set smartcase					" ... but not it begins with upper case 
set number					" display line number
set cursorline					" highlight current column
set nocursorcolumn           			" speed up syntax highlighting
set relativenumber      			" Show relative numbers instead of absolute ones.
set ttyfast             			" Improves redrawing for newer computers.
set lazyredraw          			" Don't redraw during complex operations (e.g. macros).
set autowrite           			" Automatically save before :next, :make etc.
set hidden              			" Allow switching edited buffers without saving.
set nostartofline       			" Keep the cursor in the current column with page cmds.
set showcmd             			" Show (partial) command in the status line.
set noshowmatch              			" Do not show matching brackets by flickering
set showmode            			" Show the current mode.

set laststatus=2        			" Always display a statusline.
set noruler             			" Since I'm using a statusline, disable ruler.
set statusline=%<%f                          	" Path to the file in the buffer.
set statusline+=\ %h%w%m%r%k                 	" Flags (e.g. [+], [RO]).
set statusline+=\ [%{(&fenc\ ==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")},%{&ff}] " Encoding and line endings.
set statusline+=\ %y                         	" File type.
set statusline+=\ [\%03.3b,0x\%02.2B,U+%04B] 	" Codes of the character under cursor.
set statusline+=\ [%l/%L\ (%p%%),%v]         	" Line and column numbers.

set encoding=utf-8              		" Set default encoding to UTF-8
set autoread                    		" Automatically reread changed files without asking
						" me anything
set autoindent					" Indent a new line according to the previous one.
set nosmartindent       			" Turn off smartindent.
set backspace=indent,eol,start  		" Makes backspace key more powerful.
set incsearch                   		" Shows the match while typing
set hlsearch                    		" Highlight found searches
set mouse=a                     		"Enable mouse mode
set wildmenu					" Better command-line completion

set noswapfile					" Don't use swapfile
set nobackup					" Don't create annoying backup files
set nowritebackup       			" Disable auto backup before overwriting a file.

set splitright					" Split vertical windows right to the current windows
set splitbelow					" Split horizontal windows below to the current windows

set shiftwidth=2
set softtabstop=2
set expandtab

set history=1000        			" Number of lines of command line history

" yank to clipboard
if has("clipboard")
  set clipboard=unnamed 			" copy to the system clipboard

  if has("unnamedplus") 			" X11 support
    set clipboard+=unnamedplus
  endif
endif


"=====================================================
"===================== MAPPING =======================

let mapleader = "\<Space>"

noremap <Leader>w :w<CR>			" <Space> + w to write file
noremap <leader>q :q<CR>			" <Space> + q to quit file
noremap <leader>a :qa<CR>			" <Space> + a to quit all file
noremap <leader>o :only<CR>			" <Space> + o to quit all file, keep only current file
noremap <leader>, GA<Enter>			" <Space> + , to add new blank line to end of file
map <C-c> "+y					" <Space> + w to copy selected text to clipboard
map <C-p> "+p					" <Space> + w to paste copied text from clipboard
map <C-l> "+Y					" <Space> + w to copy current line to clipboard

" Remove search highlight
function ClearHighlight()
	let @/ = ""
endfunction
noremap <silent> <Leader>h :call ClearHighlight()<CR>	" <Space> + h to clear highlight

" Resizing window
noremap <C-H> <C-W>< 				" Ctrl + H to decrease width
noremap <C-L> <C-W>>				" Ctrl + L to increase width
noremap <C-K> <C-W>-				" Ctrl + K to increase height
noremap <C-J> <C-W>+				" Ctrl + J to decrease height

"=====================================================
"===================== CUSTOM PLUGINS ================

" ==================== nerdtree ======================
noremap <leader>n :NERDTreeToggle<CR>

" ==================== vim-airline ===================

" ==================== vim-fugitive ==================

" ==================== vim-gitgutter =================

" ==================== emmet-vim =====================

" ==================== syntastic =====================

" ==================== tagbar ========================

" ==================== youcompleteme =================

" ==================== vim-surround ==================

" ==================== ctrlp.vim =====================

" ==================== fzf.vim =======================

" ==================== vim-commentary ================

" ==================== command-T =====================


