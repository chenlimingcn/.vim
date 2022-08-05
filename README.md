# vim插件
## 1 把当前目录解压或者克隆到 ~/

## 2 把下面代码复制到 ~/.vimrc，如果没有这个文件创建一个

```bash
" for vim itselft
set number
set nobackup
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set fileencodings=utf-8,gbk,big5

" for pathogen(vim plugin manager)
call pathogen#infect()
syntax on
filetype plugin indent on

" for nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd BufWinEnter * silent NERDTreeMirror

```

## 3 插件说明

autoload: vim-pathogen插件目录，此插件为vim插件管理器

bundle: 除vim-pathogen以外的其它vim插件全部放在这个目录，要卸载只要删除相应的子目录即可

budle插件说明:

| 名称       | 功能                                 | 备注                                                         |
| ---------- | ------------------------------------ | ------------------------------------------------------------ |
| commentary | 代码注释插件                         | 单行注释: gcc<br />多行注释: 先进入可视模式再 gc, 移一下光标才显示，或者gcj<br />取消注释用 gcu |
| ctags      | 管理ctags的索引                      |                                                              |
| ctrlp.vim  | Fuzzy file finder<br/>文件的模糊查询 | 打开文件: 只需要按ctrl+p快捷键(当然可以定制)输入文件名。<br/>如果找到了所需文件，直接回车即可打开。<br />更新目录缓存: CtrlPClearAllCaches |
| NERDTree   | 文件夹浏览器                         | 进入目录后，无参数启动vim即可打开当前目录<br />窗口切换: ctrl+w<br />刷新目录: 光标在目录窗口按r<br />打开文件: 光标选中文件按enter/e |
|            |                                      |                                                              |

