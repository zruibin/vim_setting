
"加载插件
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" 鼠标选择
set mouse=a

" 共享系统粘贴: " + p(" + Y)(三个键快速连用)
vmap "+y :w !pbcopy<CR><CR> 
nmap "+p :r !pbpaste<CR><CR>
set clipboard=unnamed

let python_highlight_all=1
syntax enable
syntax on
" 语法高亮

set cursorline
hi CursorLine cterm=NONE ctermbg=blue ctermfg=red guibg=blue guifg=red
set cursorcolumn
"autocmd InsertLeave * se nocul
"autocmd InsertEnter * se cul
" 用浅色高亮当前行

set smartindent
" 智能对齐

set autoindent
" 自动对齐

set confirm
" 在处理未保存或只读文件的时候，弹出确认

set tabstop=4
" Tab键的宽度

set softtabstop=4
set shiftwidth=4
"  统一缩进为4

set textwidth=79
set expandtab
set autoindent
set fileformat=unix

set noexpandtab
" 不要用空格代替制表符

set number
" 显示行号

set relativenumber
" 相对行号

set ignorecase
" 不考虑大小写

"set noignorecase
" 考虑大小写

set history=100
" 历史纪录数

set hlsearch
set incsearch
" 搜索逐字符高亮

set gdefault
" 行内替换

set encoding=utf-8
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,utf-16,big5,euc-jp,latin1
" 编码设置

"set background=dark
colorscheme molokai
hi Normal  ctermfg=252 ctermbg=none
" 设置颜色主题

set guifont=Monaco:h15
" 设置字体

set langmenu=zn_CN.UTF-8
set helplang=cn
" 语言设置

set cmdheight=2
" 命令行（在状态行）的高度，默认为1,这里是2

set ruler
" 在编辑过程中，在右下角显示光标位置的状态行

set laststatus=2
" 总是显示状态行

set showcmd
" 在状态行显示目前所执行的命令，未完成的指令片段亦会显示出来

set scrolloff=3
" 光标移动到buffer的顶部和底部时保持3行距离

set showmatch
" 高亮显示对应的括号

set matchtime=5
" 对应括号高亮的时间（单位是十分之一秒）

set autowrite
" 在切换buffer时自动保存当前文件

set wildmenu
" 增强模式中的命令行自动完成操作

set linespace=2
" 字符间插入的像素行数目

set whichwrap=b,s,<,>,[,]
" 开启Normal或Visual模式下Backspace键，空格键，左方向键，右方向键，Insert或replace模式下左方向键，右方向键跳行的功能。

filetype plugin indent on
" 分为三部分命令：file on, file plugin on, file indent on.分别表示自动识别文件类型，用文件类型脚本，使用缩进定义文件。

filetype plugin indent on
set completeopt=longest,menu

"基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
"启动 vim 时关闭折叠代码
set nofoldenable


"编辑模式下不能删除
set nocompatible
set backspace=2

"列宽度
set cc=100

"定义快捷键的前缀，即<Leader>
let mapleader=";"

"开启文件类型侦测
filetype on
"根据侦测到的不同类型加载对应的插件
"filetype plugin on

"让配置变更立即生效
"autocmd BufWritePost $MYVIMRC source $MYVIMRC

"禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R


"显示tab和空格
"set list
"设置tab和空格样式
"set lcs=tab:\|\ ,nbsp:%,trail:-
"设定行首tab为灰色
"highlight LeaderTab guifg=#666666
"匹配行首tab
"match LeaderTab /^\t/


"按下ctrl+x，接着ctrl+o，进行JavaScript语法的自动完成功能
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown set omnifunc=htmlcomplete#CompleteTags
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType c set omnifunc=ccomplete#Complete


"NERD Tree
let g:NERDTreeShowLineNumbers=1 "是否默认显示行
let g:NERDTreeCaseSensitiveSort=1 "排序时是否大小写敏感
let g:NERDTreeShowHidden=1 "是否默认显示隐藏文件
let g:NERDTreeWinSize=35
let g:NERDTreeDirArrows=1
let g:NERDTreeDirArrowExpandable='▸'
let g:NERDTreeDirArrowCollapsible='▾'
map <F2> :NERDTreeMirror<CR>
map <F2> :NERDTreeToggle<CR>

"Tagbar
nmap <F3> :TagbarToggle<CR>

"taglist
let Tlist_Show_One_File=1    "只显示当前文件的tags
let Tlist_WinWidth=40        "设置taglist宽度
let Tlist_Exit_OnlyWindow=1  "tagList窗口是最后一个窗口，则退出Vim
let Tlist_Use_Right_Window=1 "在Vim窗口右侧显示taglist窗口
"let Tlist_Auto_Open=1
nmap <F4> :Tlist<CR>

"WinManager
let g:winManagerWindowLayout='FileExplorer|TagList'
let g:bufExplorerMaxHeight=30
let g:miniBufExplorerMoreThanOne=0
let g:winManagerWidth=35
nmap <F5> :WMToggle<CR>

"supertab
let g:SuperTabDefaultCompletionType="<C-P>"
" 设置按下<Tab>后默认的补全方式, 默认是<C-P>, 
" 现在改为<C-X><C-O>. 关于<C-P>的补全方式, 
" 还有其他的补全方式, 你可以看看下面的一些帮助:
" :help ins-completion
" :help compl-omni
let g:SuperTabRetainCompletionType=2
" 0 - 不记录上次的补全方式
" 1 - 记住上次的补全方式,直到用其他的补全命令改变它
" 2 - 记住上次的补全方式,直到按ESC退出插入模式为止

"neocomplete.
let g:neocomplete#enable_at_startup=1
" Use smartcase.
let g:neocomplete#enable_smart_case=1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length=3
let g:neocomplete#lock_buffer_name_pattern='\*ku\*'

"NERD Commenter  https://github.com/scrooloose/nerdcommenter
"Add spaces after comment delimiters by default
let g:NERDSpaceDelims=1
"Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs=1
"Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign='left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java=1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters={ 'c': { 'left': '/*','right': '*/' } }
"Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines=1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace=1

"Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list=1
"let g:syntastic_check_on_wq=0
"let g:syntastic_check_on_open=1
"let g:syntastic_error_symbol='✗'
"let g:syntastic_warning_symbol='⚠'
"let g:syntastic_auto_loc_list=1
"let g:syntastic_loc_list_height=5
"let g:syntastic_enable_highlighting=0
"let g:syntastic_mode_map={'passive_filetypes':['scss', 'slim']}

" nmap <A-up> :lprev<cr>
" nmap <A-down> :lnext<cr>
" nmap <A-right> :ll<cr>

"vim-cpp-enhanced-highlight
syntax keyword cppSTLtype initializer_list
let g:cpp_class_scope_highlight=1
let g:cpp_experimental_template_highlight = 1

"vim-indent-guides
"随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
set ts=4 sw=4 et
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

"minibufexpl
map <Leader>t :MBEToggle<cr>
let g:miniBufExplMapWindowNavArrows=1 
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapCTabSwitchWindows=1  
let g:miniBufExplMapCTabSwitchBufs=1   
let g:miniBufExplModSelTarget=1  


"vim-template
let g:templates_user_variables = [['EMAIL', 'GetEmail'],]

function GetEmail()
    return 'ruibin.chow@qq.com'
endfunction





