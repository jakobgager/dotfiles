filetype plugin on
filetype indent on
let g:pydiction_location='~/tools/vim/complete-dict'

autocmd BufNewFile,BufRead *.py compiler python

map <F2> :!python % <cr> 

" define autocreate HTML from Wiki
let g:vimwiki_list=[{'path': '~/vimwiki/', 'auto_export': 1, 'html_header': '~/vimwiki_html/header.tpl', 'html_footer': '~/vimwiki_html/footer.tpl'}]
"let g:vimwiki_list=[{'path': '~/vimwiki/', 'auto_export': 1, 'template_path': '~/vimwiki_html/', 'template_default': 'template', 'template_ext': '.html'}]
let g:vimwiki_list_ignore_newline=0
let g:vimwiki_folding=0
let g:vimwiki_html_header_numbering=2

"set mouse=a
"set textwidth=80

"VIM LATEX stuff
let g:tex_flavor='latex'

let g:Tex_CompileRule_dvi='latex -interaction=nonstopmode -src-specials $*'
let g:Tex_DefaultTargetFormat='dvi'
"for presentations use the following line
"let g:Tex_ViewRuleComplete_dvi = 'xdvi -geometry 840x600 -s 4 -editor "gvim --servername xdvi --remote-silent +\%l \%f" $* &'
"for regular papers
let g:Tex_ViewRuleComplete_dvi = 'xdvi -editor "gvim --servername xdvi --remote-silent +\%l \%f" $* &'

" Indentation issues
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

"set formatoptions=tcqa

"Ignore case when searching
set ic
"Use cases if defined (aAa)
set smartcase
"display incomplete commands
set showcmd
colorscheme desert
"colorscheme wombat " is set active in gvimrc

" Taglist options:
" " Added latex support, this also needs the .ctags file
" 'T' opens/closes the TagList window
nnoremap <silent> T :TlistToggle <cr>

let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Process_File_Always = 1
let Tlist_Display_Prototype = 0
let Tlist_Use_Right_Window = 0
let Tlist_Compact_Format = 0
let Tlist_Enable_Fold_Column = 0
let tlist_tex_settings   = 'latex;s:sections;g:graphics;l:labels'
let tlist_make_settings  = 'make;m:makros;t:targets'
let Tlist_Exit_OnlyWindow = 1

"Powerling
let g:Powerline_symbols = 'fancy'
"let g:Powerline_symbols = 'unicode'
"let g:Powerline_colorscheme = 'skwp'
set encoding=utf-8
set laststatus=2
set t_Co=256
"set guifont=Bitstream\ Vera\ Sans\ Mono\ for\ Powerline:h14
"set guifont=Ubuntu\ Mono\ 13

"give options in statusline
set wildmenu

set hidden  " hides buffers instead of closing. Allows openining other

"use K to split lines
nnoremap K i<CR><Esc>
