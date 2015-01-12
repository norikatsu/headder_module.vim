" Hedderを挿入
" Version: 1.0
" Author:  norikatsu <norikatsu@gmail.com>
" License: VIM LICENSE


let s:save_cpo = &cpo
set cpo&vim


"========== Script 本体
" mode = 0 : Verilog, C 等ダブルスラッシュ
" mode = 1 : シャープ

function! headder_module#insert( mode )

    " ========== カーソル位置の文字列検出
    let s:module_name = expand("%")
    let s:year        = strftime("%Y")
    let s:date        = strftime("%Y/%m/%d") 
    let s:time        = strftime("%H:%M:%S") 
    let s:comment = "//"
    call append( 0, s:comment . "-----------------------------------------------------------------------------" )
    call append( 1, s:comment . "" )
    call append( 2, s:comment . " Copyright (C) 2000 - ".s:year.", ".$CAMPANY."  All rights reserved." )
    call append( 3, s:comment . "" )
    call append( 4, s:comment . " File Name : ".s:module_name )
    call append( 5, s:comment . "" )
    call append( 6, s:comment . " Abstract  : ".s:module_name." Module" )
    call append( 7, s:comment . "" )
    call append( 8, s:comment . " Author    : ".$AUTHOR_NAME." <".$MAIL_ADD.">" )
    call append( 9, s:comment . "" )
    call append(10, s:comment . " Created   : " . s:date . " " . s:time)
    call append(11, s:comment . "" )
    call append(12, s:comment . " Latest    : $Author: $ ")
    call append(13, s:comment . "             $Date: $ ")
    call append(14, s:comment . "             $Revision: $ ")
    call append(15, s:comment . "             $HeadURL: $ ")
    call append(16, s:comment . "" )
    call append(17, s:comment . " Modifications: " )
    call append(18, s:comment . "  DATE        AUTHOR              HISTORY ")
    call append(19, s:comment . "" )
    call append(20, s:comment . "-----------------------------------------------------------------------------" )

endfunction

"========== Script 本体 終了


let &cpo = s:save_cpo
unlet s:save_cpo

"nnoremap <Space>hh : call InputHeadder( 0 )<Enter>


