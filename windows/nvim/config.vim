"##############################################################
"# ultisnips配置
"##############################################################
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/UltiSnips', $HOME.'/UltiSnips']
"##############################################################
"# Coc配置
"##############################################################
let g:coc_global_extensions = [
      \'coc-html',
      \'coc-css',
	  \'coc-python',
	  \'coc-go',
      \'coc-sql',
      \'coc-highlight',
      \]
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <expr> <UP> coc#pum#visible() ? coc#pum#prev(1) : "\<UP>"
inoremap <expr> <DOWN> coc#pum#visible() ? coc#pum#next(1) : "\<DOWN>"
