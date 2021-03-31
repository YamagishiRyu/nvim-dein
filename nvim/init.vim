set number
set clipboard=unnamed
set expandtab
set shiftwidth=2
set cursorline
set t_Co=256
set mouse=a
set lazyredraw
set completeopt-=preview
set rtp+=/usr/local/opt/fzf
set rtp+=~/.config/nvim/plugins/
set exrc
set secure

colorscheme ron

:imap <c-h> <Left>
:imap <c-l> <Right>
:vmap <c-m> :s/\n//g<CR>:noh<CR>
:vmap <c-i> :s/.\{35}/&\r/g<CR>:noh<CR>

" file type
augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.java setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.php setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.go setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.js setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

"Coq
autocmd FileType coq highlight SentToCoq ctermbg=17 guibg=#000080
"md
autocmd BufRead,BufNewFile *.md  setfiletype mkd
filetype plugin indent on

let g:cache_home = empty($XDG_CACHE_HOME) ? expand('$HOME/.cache') : $XDG_CACHE_HOME
let g:config_home = empty($XDG_CONFIG_HOME) ? expand('$HOME/.config') : $XDG_CONFIG_HOME

" dein {{{
let s:dein_cache_dir = g:cache_home . '/dein'

" reset augroup
augroup MyAutoCmd
    autocmd!
augroup END

if &runtimepath !~# '/dein.vim'
    let s:dein_repo_dir = s:dein_cache_dir . '/repos/github.com/Shougo/dein.vim'

    " Auto Download
    if !isdirectory(s:dein_repo_dir)
        call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
    endif

    " dein.vim をプラグインとして読み込む
    execute 'set runtimepath^=' . s:dein_repo_dir
endif

" dein.vim settings
let g:dein#install_max_processes = 16
let g:dein#install_progress_type = 'title'
let g:dein#install_message_type = 'none'
let g:dein#enable_notification = 1

if dein#load_state(s:dein_cache_dir)
    call dein#begin(s:dein_cache_dir)

    let s:toml_dir = g:config_home . '/dein'

    call dein#load_toml(s:toml_dir . '/plugins.toml', {'lazy': 0})
    call dein#load_toml(s:toml_dir . '/lazy.toml', {'lazy': 1})
    if has('nvim')
        call dein#load_toml(s:toml_dir . '/neovim.toml', {'lazy': 1})
    endif

    call dein#end()
    call dein#save_state()
endif

if has('vim_starting') && dein#check_install()
    call dein#install()
endif
" }}}

let g:python_host_prog = expand('/usr/bin/python')
let g:python3_host_prog= expand('~/.anyenv/envs/pyenv/shims/python3.9')

" 自作commandを読み込む
source ~/.config/nvim/commands.vim

let g:tex_conceal = ''
