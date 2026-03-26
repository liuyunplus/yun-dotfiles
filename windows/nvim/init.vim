"##############################################################
"# 基础配置
"##############################################################
autocmd vimenter * colorscheme gruvbox                                                "设置颜色主题
set nocompatible                                                                      "禁用Vi兼容模式
filetype off                                                                          "禁止文件检测
syntax on                                                                             "开启语法高亮
set number                                                                            "设置显示行号
set encoding=utf-8                                                                    "设置为UTF-8编码
set tabstop=4                                                                         "设置tab键为4空格
set shiftwidth=4                                                                      "设置缩进为4空格
set autoindent                                                                        "设置回车后自动缩进
set ignorecase                                                                        "设置忽略大小写
set hlsearch                                                                          "设置高亮搜索项
set nobackup                                                                          "设置不需要备份文件
set noswapfile                                                                        "设置不创建临时交换文件
set nowritebackup                                                                     "设置编辑的时候不需要备份文件
set noundofile                                                                        "设置不创建撤销文件
set nowrap                                                                            "设置默认不换行
set mouse-=a                                                                          "设置允许鼠标操作
set showtabline=2                                                                     "设置默认显示标签页
set clipboard=unnamed,unnamedplus                                                     "设置*和+寄存器为系统粘贴板
let mapleader = "\<space>"                                                            "设置leader键为空格键
"##############################################################
"# 插件配置
"##############################################################
call plug#begin()

Plug 'morhetz/gruvbox'                                                                "主题插件
Plug 'scrooloose/nerdtree'                                                            "文件树插件
Plug 'neoclide/coc.nvim', {'branch': 'release'}                                       "自动补全插件
Plug 'SirVer/ultisnips'                                                               "模板代码块插件
Plug 'mg979/vim-visual-multi', {'branch': 'master'}                                   "列操作插件
Plug 'tpope/vim-surround'                                                             "添加成对字符插件
Plug 'itchyny/lightline.vim'                                                          "底部状态栏插件
Plug 'puremourning/vimspector'                                                        "代码调试插件
Plug 'Chiel92/vim-autoformat'                                                         "代码格式化插件
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }                                   "FZF命令行插件
Plug 'junegunn/fzf.vim'
call plug#end()

source ~/.config/nvim/config.vim
"##############################################################
"# 快捷键配置
"##############################################################
nnoremap > v>|                                                                        "向右缩进
nnoremap < v<|                                                                        "向左缩进

noremap rh ^|                                                                         "光标移动至行首
noremap rl $|                                                                         "光标移动至行尾
noremap rk H|                                                                         "光标移动至页首
noremap rj L|                                                                         "光标移动至页尾

noremap wh <C-w>h|                                                                    "光标移至左边屏幕
noremap wl <C-w>l|                                                                    "光标移至右边屏幕
noremap wk <C-w>k|                                                                    "光标移至上边屏幕
noremap wj <C-w>j|                                                                    "光标移至下边屏幕
noremap wo <C-w>o|                                                                    "关闭除当前窗口的其他窗口

noremap tn :tab new default<CR>|                                                      "新建标签页
noremap tj :tabprevious<CR>|                                                          "移动至上一个标签页
noremap tk :tabnext<CR>|                                                              "移动至下一个标签页
noremap tc :tabclose<CR>|                                                             "关闭当前标签页
noremap to :tabonly<CR>|                                                              "只保留当前标签页

noremap s <Nop>|                                                                      "禁用s按键
noremap ss :w<CR>|                                                                    "保存当前的改动
noremap sq :wq!<CR>|                                                                  "保存当前的改动
noremap qq :q!<CR>|                                                                   "不保存退出
noremap dx "_x|                                                                       "删除单个字符
noremap dd "_dd|                                                                      "删除单行文本
noremap da ggVG"_d|                                                                   "删除全部文本

noremap pi :PlugInstall<CR>|                                                          "安装插件
noremap pu :PlugUpdate<CR>|                                                           "更新插件
noremap ps :PlugStatus<CR>|                                                           "查看插件安装状态
noremap pc :PlugClean<CR>|                                                            "清除不在配置文件的插件

noremap c <Nop>|                                                                      "禁用c按键
noremap cc :NERDTreeToggle<CR>|                                                       "打开文件夹目录
noremap cl <C-w>l|                                                                    "跳到内容页
noremap ch <C-w>h|
noremap cm :call ShowActionList()<CR>|

noremap <leader>d 0v$h"+yo<ESC>"+gp|                                                  "将当前行复制到下一行
noremap <leader>x 0D"_dd|                                                             "剪切当前行
noremap <leader>c m`0v$h"+y``|                                                        "复制当前行
noremap <leader>v "+p|                                                                "粘贴(插入模式)
noremap <leader>a ggVG|                                                               "全选
nnoremap <S-j> :m .+1<CR>==|                                                          "向下移动整行
nnoremap <S-k> :m .-2<CR>==|                                                          "向上移动整行

" 编辑模式
inoremap <C-j> <DOWN>|                                                                "向下
inoremap <C-k> <UP>|                                                                  "向上
inoremap <C-h> <LEFT>|                                                                "向左
inoremap <C-l> <RIGHT>|                                                               "向右

" 选择模式
vnoremap ; :|                                                                         "进入命令模式
vnoremap > >gv|                                                                       "向右缩进
vnoremap < <gv|                                                                       "向左缩进
vnoremap <leader>c "+y|                                                               "复制当前选择块
vnoremap <S-j> :m '>+1<CR>gv=gv|                                                      "向下移动整行
vnoremap <S-k> :m '<-2<CR>gv=gv|                                                      "向上移动整行

" 命令模式
cnoremap <C-v> <C-r>+|                                                                "粘贴(命令模式)
cnoremap <C-a> <C-B>|                                                                 "光标移动至命令的起始

" 调试插件
nnoremap <Leader>dd :call vimspector#Launch()<CR>
nnoremap <Leader>de :call vimspector#Reset()<CR>
nnoremap <Leader>dc :call vimspector#Continue()<CR>
nnoremap <Leader>dt :call vimspector#ToggleBreakpoint()<CR>
nnoremap <Leader>dT :call vimspector#ClearBreakpoints()<CR>
nmap <Leader>dk <Plug>VimspectorRestart
nmap <Leader>dh <Plug>VimspectorStepOut
nmap <Leader>dl <Plug>VimspectorStepInto
nmap <Leader>dj <Plug>VimspectorStepOver

map <F1> <ESC>:NERDTreeToggle<CR>|                                                    "打开/关闭文件浏览器
command F1 :set cursorline! cursorcolumn!|                                            "突出显示当前行列
command F2 :set wrap! wrap?|                                                          "是否自动换行开关
command F3 :set relativenumber!|                                                      "相对行号显示开关
command F4 :nohlsearch|                                                               "取消文本高亮
command F5 :call CompileAndRun()|                                                     "执行当前文件
"##############################################################
"# 自定义函数
"##############################################################
function CompileAndRun()
	exec "w"
	if &filetype == 'sh'
		execute "!bash %"
	elseif &filetype == 'python'
		execute "!python %"
	elseif &filetype == 'java'
		execute "!javac %"
        execute "!java %<"
	elseif &filetype == 'go'
		execute "!go build %<"
		execute "!go run %"
	endif
endfunction

nnoremap <leader>; :call AddSemicolon(';')<CR>|
vnoremap <leader>; :call AddSemicolon(';')<CR>|
nnoremap <leader>0 :call AddSemicolon('\|')<CR>|
vnoremap <leader>0 :call AddSemicolon('\|')<CR>|

function AddSemicolon(tag)
	execute ":s/\\s*$//"
	execute "normal $a".a:tag
endfunction

function LoadFolderNames()
	let dir_list = systemlist("ls -d */ | cut -f1 -d'/'")
	let index = 0
	for dir_str in dir_list
		let index += 1
		call setline(index, dir_str)
	endfor
endfunction

function UpdateFolderNames()
	let lines = getline(1, '$')
	let index = 0
	for line in lines
		let index += 1
		let name_arr = split(line, '-\zs')
		let old_name = line
		let new_name = repeat('0', 2-len(index)).index."-".name_arr[1]
		call setline(index, new_name)
		call system("mv ".old_name." ".new_name)
	endfor
	echo "文件名修改成功!"
endfunction
