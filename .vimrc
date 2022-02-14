set nocompatible            " Disable vi compatibility.
set nobackup                " Do not create backups.

filetype on                 " Detect file type.
filetype plugin on          " Enable and load plug-ins based on file type.
filetype indent on          " Enable indentation rules for the file type.
syntax on                   " Enable syntax highlighting.

set visualbell              " Flash the screen instead of beeping.
set number                  " Display line numbers.
set showcmd                 " Show partial commands.
set cursorline              " Highlight the cursor's current line.
set showmatch               " Briefly highlight a matching bracket or brace.

set colorcolumn=50,72,80    " Add vertical rulers for commit messages and code.
" Use a dark grey for the vertical ruler background.
highlight ColorColumn ctermbg=0

set ignorecase              " Ignore case sensitivity
set smartcase               " while running searches.
set hlsearch                " Highlight search results,
set incsearch               " while typing, not just on completion.
" After a search, pressing return clears the highlighted results.
nnoremap <CR> :nohlsearch<CR><CR>

set spell                   " Enable spell checking.
set spelllang=en_gb         " Use the correct dictionary.
set spellfile=~/.vim/spell/en.utf-8.add " Manual dictionary additions.

set wrap                    " Wrap text like a GUI text editor.
set linebreak               " Wrap on spaces, etc. not overflowing characters.
set nostartofline           " Remember the column when moving over short lines.
" Move up and down visually, not just from line to line.
nnoremap j gj
nnoremap <Down> g<Down>
nnoremap k gk
nnoremap <Up> g<Up>

set tabstop=2 shiftwidth=2  " Set all tabs to 2 spaces.
set expandtab               " Insert tabs with spaces.
set smarttab                " Delete leading white space in on tab stops.
set autoindent              " Use indentation from previous line.

set encoding=utf-8          " Read files as utf8.
set fileencoding=utf-8      " Write files as utf8.
set termencoding=utf-8      " Display characters as utf8.

" Automatically remove trailing white space from all lines when saving.
autocmd BufWritePre * :%s/\s\+$//e

