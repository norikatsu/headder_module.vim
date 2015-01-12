" Hedderを挿入
" Version: 1.0
" Author:  norikatsu <norikatsu@gmail.com>
" License: VIM LICENSE


if exists('g:loaded_headder_module')
  finish
endif

let g:loaded_headder_module = 1
let s:save_cpo = &cpo
set cpo&vim


"========== Script 本体

"----- Exコマンド
command! -bar HeadderModuleInsert0 call headder_module#insert( 0 )

"----- キーマッピング
nnoremap <silent> <Plug>(headder_module_insert0) :<C-u>HeadderModuleInsert0<CR>

if !hasmapto('<Plug>(headder_module_insert0)')
      \  && (!exists('g:headder_module_insert0_no_default_key_mappings')
      \      || !g:headder_module_insert0_no_default_key_mappings)
    silent! nmap <unique> <Space>hh <Plug>(headder_module_insert0)
endif

"========== Script 本体 終了
"
"
let &cpo = s:save_cpo
unlet s:save_cpo


