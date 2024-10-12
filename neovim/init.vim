set number
syntax enable
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
" set shellslash

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:vimtex_view_method = 'sioyek'
let g:Tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf = 'latexmk --shell-escape $*'
let g:Tex_GotoError=0


autocmd Filetype tex setlocal tabstop=2
autocmd Filetype tex setlocal shiftwidth=2
autocmd Filetype tex setlocal expandtab
autocmd Filetype tex set spell
setlocal tabstop=2
setlocal shiftwidth=2
setlocal expandtab

"Add XeLaTex rules
" let g:Tex_CompileRule_xe = 'xelatex $*'
" let g:Tex_ViewRule_xe = g:Tex_ViewRule_pdf

"Set default target to XeLatex
" let g:Tex_DefaultTargetFormat = 'xe'

call plug#begin()

" List your plugins here
Plug 'lervag/vimtex'
Plug 'matze/vim-tex-fold'

Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'


call plug#end()

colo cust
