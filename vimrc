"" General
set number          " Show line numbers
set linebreak       " Break lines at word (requires Wrap lines)
set showbreak=+++   " Wrap-broken line prefix
set colorcolumn=81
"set textwidth=100   " Line wrap (number of cols)
set showmatch       " Highlight matching brace

set hlsearch        " Highlight all search results
set smartcase       " Enable smart-case search
set ignorecase      " Always case-insensitive
set incsearch       " Searches for strings incrementally

set autoindent      " Auto-indent new lines
set tabstop=4      " Width
set softtabstop=4   " Number of spaces per Tab
set shiftwidth=4    " Number of auto-indent spaces
set expandtab       " use spaces instead of tabs
set smartindent     " Enable smart-indent
set smarttab        " Enable smart-tabs

"" Advanced
set ruler           " Show row and column ruler information
set list
set listchars=eol:$,tab:>-

set undolevels=1000     " Number of undo levels
set backspace=indent,eol,start  " Backspace behaviour

filetype on
filetype plugin on
filetype indent on




" Commands
command CCfile execute "read ~/.vim/templates/c_file.template"
command CCfunc execute "read ~/.vim/templates/c_function.template"
command CCblank execute "read ~/.vim/templates/c_blank.template"
command CCheader execute "read ~/.vim/templates/c_header.template"

" --- start nerdtree plugin ---
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" --- end nerdtree plugin ---


" --- start tagbar plugin ---
nmap <F8> :TagbarToggle<CR>
" --- end targbar plugin ---

" workaround since spellcheck is not properly highlighted when using gruvbox
command SpellDE execute "highlight SpellBad cterm=underline ctermfg=red | set spell spelllang=de"


execute pathogen#infect()

" --- start gruvebox plugin (must be after pathogen) ---
autocmd vimenter * ++nested colorscheme gruvbox
set bg=dark
" --- end gruvebox plugin (must be after pathogen) ---
"

au BufRead,BufNewFile *.bb set syntax=sh shiftwidth=4 tabstop=4 expandtab

" custom syntax highlighting (must be added like this because gruvebox will
" clear them otherwise
autocmd ColorScheme *
        \ highlight link UserTrailingSpaces Error |
        \ match UserTrailingSpaces /\s\+$/ |
        \ highlight UserTodo term=standout cterm=bold ctermfg=109 ctermbg=239 gui=bold guifg=#83a598 guibg=#504945 |
        \ syntax match UserTodo /.*TODO.*/


"vmap <C-i> call writefile(getreg('z', 1, 1), "some-file")

" shortcut for easy search-and-replace a selected text
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" shortcut for fuzzy-file-search plugin CtrP
vnoremap <C-p> :CtrP

" shortcut for selfmade clipboard to share content between vim instances
vnoremap <C-n> :w! /tmp/vimbuffer
nnoremap <C-m> :execute "read /tmp/vimbuffer"

