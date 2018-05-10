"============================================================
"=====================ROLEY VIM SETTING======================

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
call dein#add('Shougo/deoplete.nvim') " This for code complete
call dein#add('artur-shaik/vim-javacomplete2') " This for java code complete
call dein#add('ervandew/supertab') " This for use tab key to replace c-p c-n
if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc') " This plugin needs run pip3 install --user neovim mannually
endif
call dein#add('Chiel92/vim-autoformat') " This for source file auto format
call dein#add('bkad/CamelCaseMotion') " This for camel case move
" call dein#add('neomake/neomake') " This for auto lint, but replace by ale
call dein#add('w0rp/ale') " This for auto lint code
call dein#add('aperezdc/vim-template') " This for language template
call dein#add('vim-scripts/YankRing.vim') " This for Yank
call dein#add('airblade/vim-rooter') " This for auto change project root folder
call dein#add('kshenoy/vim-signature') " This for auto change project root folder
call dein#add('vim-scripts/DfrankUtil') " This is a library for Indexer & Vimprj
call dein#add('vim-scripts/vimprj') " This for mutil project configuration
call dein#add('PeloNZ/vim-indexer') " This for auto generate tags for mutil project
call dein#add('sjl/gundo.vim') " This for review undo tree

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
" set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

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
"-------------FOR FOLD----------------
set foldmethod=syntax
"-------------FOR UNDO TREE-----------
nnoremap <Leader>ud :GundoToggle<CR>
set undofile
set undodir=~/.vim/undo_history/ "note should create undo_history manually"
"-------------FOR INDEXER-------------
"Use Indexer's own file .indexer_files
"
"If you don't use Project plugin, use Indexer's own file to define our
"projects. Its default location is ~/.indexer_files, and it may look like
"this:
"~/.indexer_files
"    [my_first_project]
"     /path/to/first_project/src
"     /path/to/first_project/some_other_src
"    [my_second_project]
"     /path/to/second_project/src
"
"     As you see, the format is very
"     simple: we specify the name of the
"     project in square brackets, and then
"     specify one or more paths to where
"     source files to generate tags for are located.
"
"     Whatever way we use to specify our
"     projects, every time you open some
"     file from any of your projects,
"     Indexer will do whatever it takes to
"     generate tags for the whole project,
"     and set Vim's &tags appropriately.
"     Multiple projects are handled correctly.
"
"     For clarity about how things work,
"     let's consider little concrete example.
"     see https://dmitryfrank.com/articles/vim_project_code_navigation
"-------------FOR VIMPRJ--------------
" Usage of this plugin is quite easy. In the root directory of your project,
" you need to create new directory .vimprj and put any number of files *.vim
" inside. Every time you open new file in Vim, plugin looks for .vimprj
" directory up by tree, and if it is found, then all *.vim files from it will
" be sourced.
"
" Or, you can just put file .vimprj, then this file will be sourced. Name
" .vimprj can be changed by editing option g:vimprj_dirNameForSearch.
"
" For my own projects, I usually create the file .vimprj/my.vim with the
" following contents:
"
" let &tabstop = 3
" let &shiftwidth = 3
" set expandtab
"
" My .vimprj directory also contain tags and other project-specific files, so,
" I prefer to use directory instead of just one file.
"-------------FOR SHOW INDENT---------
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level=2
set ts=4 sw=4 et
" hi IndentGuidesOdd  ctermbg=black
" hi IndentGuidesEven ctermbg=darkgrey
let g:indent_guides_guide_size = 1
set list listchars=tab:>\ ,trail:-,eol:¬
set cursorcolumn
set nowrap
"-------------FOR LEADERF----------
noremap > :LeaderfFunction!<cr>
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

"-------------FOR ALE---------------
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"-------------FOR NEOMAKE CHEKING---
" When writing a buffer (no delay).
" call neomake#configure#automake('w')
" " When writing a buffer (no delay), and on normal mode changes (after 750ms).
" call neomake#configure#automake('nw', 750)
" " When reading a buffer (after 1s), and when writing (no delay).
" call neomake#configure#automake('rw', 1000)
" " Full config: when writing or reading a buffer, and on changes in insert and
" " normal mode (after 1s; no delay when writing).
" call neomake#configure#automake('nrwi', 500)
" let g:neomake_open_list = 2
" "-------------FOR TEMPLATE SETTING-
" let g:username='Roley ZHANG'
" let g:email='roleyzhang@gmail.com'
" let g:license='copyright@2018'
" "-------------FOR YANKRING--------
" " :nnoremap <silent> <F11> :YRShow<CR>
" nnoremap <silent> \y  :<C-u>YRShow<cr>
" "-------------FOR VIM_ROOTER
" let g:rooter_patterns = ['.gradle']
" let g:rooter_patterns = ['.gradle', '.git/']
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
autocmd FileType java setlocal completefunc=javacomplete#CompleteParamsInfo
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
