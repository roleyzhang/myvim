"============================================================
"=====================ROLEY VIM SETTING======================
"============================================================
"##set nocompatible              " be iMproved, required
"##filetype off                  " required

" set the runtime path to include Vundle and initialize
"##set rtp+=~/.vim/bundle/Vundle.vim
"##call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"##Plugin 'VundleVim/Vundle.vim'
"============================================================

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"====Plugin 'tpope/vim-fugitive'
"Plugin 'morhetz/gruvbox' " This for vim colorschema ?????????????????why not
"work
"##Plugin 'miyakogi/conoline.vim' " This is for highlight current line
"##Plugin 'vim-airline/vim-airline' " This is for vim status line
"##Plugin 'whatyouhide/vim-lengthmatters' " This is highlight the line over 80 lenght
"##Plugin 'artur-shaik/vim-javacomplete2' " This is for java auto complete
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"====Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"====Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"====Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

"============================================================
"=====================ADD PLUGIN BELOW=======================

"====Plugin 'tpope/vim-fugitive'


" All of your Plugins must be added before the following line
"##call vundle#end()            " required
"##filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"============================================================

"############################################################
" Using the dein.vim as plugin management
" First, clone dein.vim’s source.
" mkdir -p ~/.vim/dein/repos/github.com/Shougo/dein.vim #recommended path
" git clone https://github.com/Shougo/dein.vim.git \
"    ~/.vim/dein/repos/github.com/Shougo/dein.vim
set nocompatible
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim " path to dein.vim
call dein#begin(expand('~/.vim/dein')) " plugins' root path
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', { 
    \ 'build': {
    \     'windows': 'tools\\update-dll-mingw',
    \     'cygwin': 'make -f make_cygwin.mak',
    \     'mac': 'make -f make_mac.mak',
    \     'linux': 'make',
    \     'unix': 'gmake',
    \    },
    \ }) " This for intractive comand 
call dein#add('Shougo/denite.nvim')
" and a lot more plugins.....
call dein#add('miyakogi/conoline.vim') " This is for highlight current line
call dein#add('vim-airline/vim-airline') " This is for vim status line
call dein#add('vim-airline/vim-airline-themes') " For Airline themes
" call dein#add('whatyouhide/vim-lengthmatters') " This is highlight the line over 80 lenght
call dein#add('morhetz/gruvbox') " This for vim colorschema
" call dein#add('tpope/vim-commentary') " This for comment 
call dein#add('tomtom/tcomment_vim', {'on_map': 'gc', 'on_cmd' : 'TComment'}) " This for comment
call dein#add('easymotion/vim-easymotion') " This for comment
call dein#add('luochen1990/rainbow') " This use color show parentheses levels
call dein#add('chemzqm/denite-extra') " This for denite extra source
call dein#add('neoclide/denite-git') " This for show git info
" call dein#add('neoclide/redismru.vim') " This for denite mru
call dein#add('honza/vim-snippets') " This for neoclide/ultisnips
call dein#add('neoclide/ultisnips', {'on_map' : { 'i' : ['<c-k>'] }}) " This for ultimate snippet
" call dein#add('SirVer/ultisnips', {'on_map' : { 'i' : ['<TAB>'] }}) " This for ultimate snippet
call dein#add('tpope/vim-repeat', {'on_map' : '.'})
call dein#add('tpope/vim-surround', {'on_map': {'n' : ['cs', 'ds', 'ys'], 'x' : 'S'}, 'depends' : 'vim-repeat'})
call dein#add('dyng/ctrlsf.vim') " This for search
call dein#add('terryma/vim-multiple-cursors', { 'on_map' : { 'n' : ['<C-n>', '<C-p>'], 'x' : '<C-n>'}})
call dein#add('Yggdroot/LeaderF') " This for show function & method like fuzzy asyc search
call dein#add('rking/ag.vim') " This for Search like grep
call dein#add('Chun-Yang/vim-action-ag') " This for Ag search word use *
call dein#add('Shougo/vimfiler.vim') " This for file exploer
call dein#add('nathanaelkane/vim-indent-guides') " This show indent
call dein#add('fholgado/minibufexpl.vim') " This manage vim buffer
call dein#add('thaerkh/vim-workspace') " This manage vim  session
call dein#add('jiangmiao/auto-pairs') " This manage vim  session
" call dein#add('roxma/nvim-yarp') " This for deoplete
" call dein#add('roxma/vim-hug-neovim-rpc') " This for deoplete
call dein#add('Shougo/deoplete.nvim') " This for code complete
call dein#add('artur-shaik/vim-javacomplete2') " This for java code complete
call dein#add('ervandew/supertab') " This for use tab key to replace c-p c-n
if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc') " This plugin needs run pip3 install --user neovim mannually
endif
call dein#add('Chiel92/vim-autoformat') " This for source file auto format
call dein#add('bkad/CamelCaseMotion') " This for camel case move
call dein#add('neomake/neomake') " This for camel case move
call dein#add('aperezdc/vim-template') " This for language template
call dein#add('vim-scripts/YankRing.vim') " This for Yank
" call dein#add('vim-syntastic/syntastic') " This for language syntas cheking
" call dein#add('Scuilion/gradle-syntastic-plugin') " This for language syntas cheking
" call dein#add('sunaku/vim-shortcut') " This for define the shortcut by self later

call dein#end()
call dein#save_state()

filetype plugin indent on
syntax enable


"===Open vim and install dein

"===:call dein#install()
"############################################################

"=====================ALL CONFIG BY ROLEY====================
"# TIP, reload change: source ~/.vimrc
"-------------FOR GLOBAL-----------
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

set relativenumber "show the current line number 0 and up line,down line number
colorscheme gruvbox
set background=dark    " Setting dark mode of gruvbox colorschema
let g:airline_theme='tomorrow' "alduin
let g:airline#extensions#tabline#enabled = 1
" set background=light   " Setting light mode of gruvbox colorschema
let g:conoline_auto_enable = 1 " highlight the current
if has("autocmd") " This is for cursor position, keep the cursor at the last time postion
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif
set scrolloff=8 " set the number of screen lines to keep above and below the cursor
let g:rainbow_active=1 " active rainbow parentheses
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=234 guibg=#2c2d27
let &colorcolumn="80,".join(range(120,999),",")
"##########################################################
" vimrc files
for s:path in split(glob('~/.vim/vimrc/*.vim'), "\n")
  exe 'source ' . s:path
endfor
"-------------FOR UltiSnips SETTING---
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"-------------FOR SHOW INDENT---------
let g:indent_guides_enable_on_vim_startup = 1
set ts=1 sw=1 noet
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey
let g:indent_guides_guide_size = 1
" let g:indent_guides_start_level = 2
set list listchars=tab:>\ ,trail:-,eol:¬
set cursorcolumn
set nowrap
"-------------FOR LEADERF----------
noremap <F3> :LeaderfFunction!<cr>
noremap \p :LeaderfMru<cr>
nnoremap <silent> <space>r  :<C-u>LeaderfMruCwd<cr>
nnoremap <silent> <space>h  :<C-u>LeaderfHistoryCmd<cr>
" use * to search current word in normal mode
nmap * <Plug>AgActionWord
" " use * to search selected text in visual mode
vmap * <Plug>AgActionVisual

"-------------FOR SESSION MANAGER--
nnoremap <leader>ws :ToggleWorkspace<CR>
let g:workspace_session_name = 'Session.vim'
let g:workspace_persist_undo_history = 1  " enabled = 1 (default), disabled = 0
let g:workspace_undodir='.undodir'
let g:workspace_autosave_always = 1
let g:workspace_autosave_ignore = ['gitcommit']

"-------------FOR COMPLETE---------
" let g:deoplete#enable_at_startup = 1
set omnifunc=syntaxcomplete#Complete
"-------------FOR SEARCH-----------
nnoremap <Leader>sp :CtrlSF<CR>
"-------------FOR MATCH-----------
packadd! matchit
"-------------FOR SUPERTAB--------
let g:SuperTabDefaultCompletionType = '<C-x><C-o>'
"-------------FOR AUTOFORMAT------
let g:formatterpath = ['~.vim/formatter']
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
au BufWrite * :Autoformat
"-------------FOR CAMELCASEMOVE----
call camelcasemotion#CreateMotionMappings('<leader>')

"-------------FOR NEOMAKE CHEKING---
" When writing a buffer (no delay).
call neomake#configure#automake('w')
" When writing a buffer (no delay), and on normal mode changes (after 750ms).
call neomake#configure#automake('nw', 750)
" When reading a buffer (after 1s), and when writing (no delay).
call neomake#configure#automake('rw', 1000)
" Full config: when writing or reading a buffer, and on changes in insert and
" normal mode (after 1s; no delay when writing).
call neomake#configure#automake('nrwi', 500)
let g:neomake_open_list = 2
"-------------FOR TEMPLATE SETTING-
let g:username='Roley ZHANG'
let g:email='roleyzhang@gmail.com'
let g:license='copyright@2018'
"-------------FOR YANKRING--------
" :nnoremap <silent> <F11> :YRShow<CR>
nnoremap <silent> \y  :<C-u>YRShow<cr>
"-------------FOR CSCOPE CONFIG----
" $ cscope -bqR    for C++/C
" $ find . -name "*.java" > cscope.files    for java
" $ cscope -bq
" :cs add cscope.out
" s 	symbol：查找使用该符号的引用
" g 	global：查找该全局符号的定义
" c 	calls：查找调用当前方法的位置
" t 	text：查找出现该文本的位置
" e 	egrep：使用 egrep 搜索当前单词
" f 	file：打开文件名
" i 	includes：查询引入了当前文件的文件
" d 	depends：查找当前方法调用的方法
" cd ~/.vim/vimrc
" wget http://cscope.sourceforge.net/cscope_maps.vim
" " Below is the minimum key mappings.


"-------------FOR SYNTAX CHEKING---
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
"
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
"
"-------------FOR GRADLE SYNTAX CHEKING---
" let g:syntastic_java_checkers=['javac']
" let g:syntastic_java_javac_config_file_enabled = 1
"
"-------------FOR JAVA-------------
autocmd FileType java setlocal omnifunc=javacomplete#Complete
" let g:JavaComplete_PomPath = '~/.vim/dein/repos/github.com/artur-shaik/vim-javacomplete2/libs/javavi/pom.xml'
" let g:JavaComplete_GradleExecutable = 'gradle'
" " 在方法声明完成时闭合括号:
" let g:JavaComplete_ClosingBrace = 1
" " javacomplete2基础缓存目录(缺省为 ~/.cache):
let g:JavaComplete_JavaviLogfileDirectory = '~/tmp'
let g:JavaComplete_JavaviDebug = 1
" let g:JavaComplete_BaseDir = '~/tmp'
" " 使用自己的gradle可执行文件:
" let g:JavaComplete_GradleExecutable = '/bin/gradle'
" " 构造javacomplete2使用python3解释器而不是python2:
" let g:JavaComplete_UsePython3 = 1
" let g:JavaComplete_ShowExternalCommandsOutput=1
" let g:JavaComplete_LibsPath='~/libgdx/*.jar'
" " if isdirectory('lib') != 0
"     let s:path=expand("./lib/*.jar")
" else
"     let s:path=expand("./*.jar")
" endif
" if s:path == "./lib/*.jar"
"     let s:path=''
" else
"     let s:classpath=substitute(s:path,'\n',':','g')
"     let s:fixclasspath=$CLASSPATH . ':' . s:classpath
"     let g:JavaComplete_LibsPath=s:fixclasspath
"     " ale java
"     let g:ale_java_javac_classpath=s:fixclasspath
" endif
