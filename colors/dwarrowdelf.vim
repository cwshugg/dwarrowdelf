" Dwarrowdelf theme for Vim.
" Inspired by JRR Tolkien's Middle Earth and the great dwarven realm of
" Khazad Dûm, called Dwarrowdelf. Founded by Durin I the Deathless during the
" early years of Arda.
" The colors were inspired by The Lord of the Rings Online's adaptation.
"
" A special thanks to the 'Learn Vimscript the Hard Way' website run by Steve
" Losh (https://learnvimscriptthehardway.stevelosh.com/)
"
"   Connor Shugg (connor@shugg.dev)
"   https://github.com/cwshugg

" Dwarrowdelf is best used on dark backgrounds.
set background=dark
highlight clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'dwarrowdelf'

" ---------------------------- HELPER FUNCTIONS ----------------------------- "
" Function used to make setting colors for a specific group easier. Takes in
" the name of the group, then color parameters for the following values:
"   guifg, guibg, gui, ctermfg, ctermbg, cterm, term
" The arguments above are optional and can be ignored by setting them to ''
" or passing in nothing.
function! SetC(gname, ...)
    let cmdstr = 'hi ' . a:gname . ' '  " apply group name to command

    if a:0 >= 1 && strlen(a:1) > 0
        let cmdstr .= 'guifg=' . a:1 . ' '
    endif
    if a:0 >= 2 && strlen(a:2) > 0
        let cmdstr .= 'guibg=' . a:2 . ' '
    endif
    if a:0 >= 3 && strlen(a:3) > 0
        let cmdstr .= 'gui=' . a:3 . ' '
    endif
    if a:0 >= 4 && strlen(a:4) > 0
        let cmdstr .= 'ctermfg=' . a:4 . ' '
    endif
    if a:0 >= 5 && strlen(a:5) > 0
        let cmdstr .= 'ctermbg=' . a:5 . ' '
    endif
    if a:0 >= 6 && strlen(a:6) > 0
        let cmdstr .= 'cterm=' . a:6 . ' '
    endif
    if a:0 >= 7 && strlen(a:7) > 0
        let cmdstr .= 'term=' . a:7 . ' '
    endif

    execute cmdstr
endfunction

" --------------------------------- COLORS ---------------------------------- "
" Dwarrowdelf whites and grays
let s:c_white = '#E6E8E9'
let s:c_white_cterm = '254'
let s:c_gray1 = '#565C6C'
let s:c_gray1_cterm = '234'
let s:c_gray2 = '#6774A1'
let s:c_gray2_cterm = '235'
let s:c_ltgray1 = '#989EAD'
let s:c_ltgray1_cterm = '246'
let s:c_ltgray2 = '#C5D8E0'
let s:c_ltgray2_cterm = '103'
" Dwarrowdelf accent colors
let s:c_acc1 = '#875FFF'        " PURPLE: amethyst gems in the mines
let s:c_acc1_cterm = '99'
let s:c_acc2 = '#6ABBFD'        " GRAY BLUE: ancient runes of power upon the door
let s:c_acc2_cterm = '75'
let s:c_acc3 = '#FFCE60'        " GOLD: flakes of gold glinting in Moria's deepest caverns
let s:c_acc3_cterm = '220'
let s:c_acc4 = '#64DF32'        " GREEN: emerald gems in the mines and moss around the watcher's lake
let s:c_acc4_cterm = '82'
let s:c_acc5 = '#7D83FF'        " LAVENDAR/INDIGO: crystal lamps lighting Durin's Way
let s:c_acc5_cterm = '69'
let s:c_acc6 = '#BBDCEB'        " LIGHT BLUE: snowfall on Zirakzigil
let s:c_acc6_cterm = '159'
let s:c_acc7 = '#3D81FE'        " BLUE: the shimmering waters of Mirrormere
let s:c_acc7_cterm = '39'
let s:c_acc8 = '#D70000'        " RED: the dark fires of Durin's Bane
let s:c_acc8_cterm = '160'
" Formatting strings
let s:f_b = 'bold'              " bold formatting
let s:f_u = 'underline'         " underline formatting
let s:f_bu = 'bold,underline'   " bold AND underline formatting
" Other strings
let s:f_none = 'NONE'           " when NO formatting is applied

" ---------------------------- COLOR ASSIGNMENT ----------------------------- "
"           GROUP NAME          GUIFG               GUIBG           GUI         CTERMFG             CTERMBG             CTERM       TERM
call   SetC('Normal',           s:c_white,          s:f_none,       s:f_none,   s:c_white_cterm,    s:f_none,           s:f_none,   s:f_none)

" Cursor line/column and line number settings
call   SetC('CursorLine',       s:f_none,           s:c_gray1,      s:f_none,   s:f_none,           s:c_gray1_cterm,    s:f_none,   s:f_none)
call   SetC('CursorColumn',     s:f_none,           s:c_gray1,      s:f_none,   s:f_none,           s:c_gray1_cterm,    s:f_none,   s:f_none)
call   SetC('LineNr',           s:c_ltgray2,        s:f_none,       s:f_none,   s:c_ltgray2_cterm,  s:f_none,           s:f_none,   s:f_none)
call   SetC('CursorLineNr',     s:c_acc3,           s:c_gray1,      s:f_b,      s:c_acc3_cterm,     s:c_gray1_cterm,    s:f_b,      s:f_b) 
" Constants
call   SetC('Constant',         s:c_acc5,           s:f_none,       s:f_none,   s:c_acc5_cterm,     s:f_none,           s:f_none,   s:f_none)
call   SetC('String',           s:c_acc3,           s:f_none,       s:f_none,   s:c_acc3_cterm,     s:f_none,           s:f_none,   s:f_none)
call   SetC('Character',        s:c_acc3,           s:f_none,       s:f_none,   s:c_acc3_cterm,     s:f_none,           s:f_none,   s:f_none)
call   SetC('Number',           s:c_acc8,           s:f_none,       s:f_none,   s:c_acc8_cterm,     s:f_none,           s:f_none,   s:f_none)
call   SetC('Float',            s:c_acc8,           s:f_none,       s:f_none,   s:c_acc8_cterm,     s:f_none,           s:f_none,   s:f_none)

" Identifiers and Functions
call   SetC('Identifier',       s:c_acc2,           s:f_none,       s:f_b,      s:c_acc2_cterm,     s:f_none,           s:f_b,      s:f_b)
call   SetC('Function',         s:c_acc4,           s:f_none,       s:f_b,      s:c_acc4_cterm,     s:f_none,           s:f_b,      s:f_b)

" Statements
call   SetC('Statement',        s:c_acc1,           s:f_none,       s:f_none,   s:c_acc1_cterm,     s:f_none,           s:f_none,   s:f_none)

" Preprocessor
call   SetC('PreProc',          s:c_acc6,           s:f_none,       s:f_none,   s:c_acc6_cterm,     s:f_none,           s:f_none,   s:f_none)
call   SetC('Include',          s:c_acc2,           s:f_none,       s:f_none,   s:c_acc2_cterm,     s:f_none,           s:f_none,   s:f_none)
call   SetC('Define',           s:c_acc2,           s:f_none,       s:f_none,   s:c_acc2_cterm,     s:f_none,           s:f_none,   s:f_none)
call   SetC('Macro',            s:c_acc2,           s:f_none,       s:f_none,   s:c_acc2_cterm,     s:f_none,           s:f_none,   s:f_none)
call   SetC('PreCondit',        s:c_acc2,           s:f_none,       s:f_none,   s:c_acc2_cterm,     s:f_none,           s:f_none,   s:f_none)

" Data Types
call   SetC('Type',             s:c_acc4,           s:f_none,       s:f_b,      s:c_acc4_cterm,     s:f_none,           s:f_b,      s:f_b)
call   SetC('StorageClass',     s:c_acc7,           s:f_none,       s:f_b,      s:c_acc7_cterm,     s:f_none,           s:f_b,      s:f_b)
call   SetC('Structure',        s:c_acc7,           s:f_none,       s:f_b,      s:c_acc7_cterm,     s:f_none,           s:f_b,      s:f_b)
call   SetC('Typedef',          s:c_acc7,           s:f_none,       s:f_b,      s:c_acc7_cterm,     s:f_none,           s:f_b,      s:f_b)

" Specials
call   SetC('Special',          s:c_acc8,           s:f_none,       s:f_none,   s:c_acc8_cterm,     s:f_none,           s:f_none,   s:f_none)

" Comments
call   SetC('Comment',          s:c_ltgray1,        s:f_none,       s:f_none,   s:c_ltgray1_cterm,  s:f_none,           s:f_none,   s:f_none)
call   SetC('SpecialComment',   s:c_acc1,           s:f_none,       s:f_b,      s:c_acc1_cterm,     s:f_none,           s:f_b,      s:f_b)

" Special keywords
call   SetC('Todo',             s:c_acc8,           s:c_gray2,      s:f_b,      s:c_acc8_cterm,     s:c_gray2_cterm,    s:f_b,      s:f_b)
call   SetC('Todo2',            s:c_acc8,           s:c_gray2,      s:f_b,      s:c_acc8_cterm,     s:c_gray2_cterm,    s:f_b,      s:f_b)
match Todo2 /\<todo\>\c/

" Vim Status Line
call   SetC('StatusLine',       s:c_acc2,           s:f_none,       s:f_none,   s:c_acc2_cterm,     s:f_none,           s:f_none,   s:f_none)
call   SetC('StatusLineNC',     s:c_acc2,           s:f_none,       s:f_none,   s:c_acc2_cterm,     s:f_none,           s:f_none,   s:f_none)
call   SetC('Title',            s:c_acc2,           s:f_none,       s:f_none,   s:c_acc2_cterm,     s:f_none,           s:f_none,   s:f_none)
call   SetC('ModeMsg',          s:c_acc1,           s:f_none,       s:f_b,      s:c_acc1_cterm,     s:f_none,           s:f_b,      s:f_b)
call   SetC('MoreMsg',          s:c_acc1,           s:f_none,       s:f_b,      s:c_acc1_cterm,     s:f_none,           s:f_b,      s:f_b)
call   SetC('Error',            s:c_acc8,           s:f_none,       s:f_b,      s:c_acc8_cterm,     s:f_none,           s:f_b,      s:f_b)
call   SetC('ErrorMsg',         s:c_acc8,           s:f_none,       s:f_b,      s:c_acc8_cterm,     s:f_none,           s:f_b,      s:f_b)
call   SetC('WarningMsg',       s:c_acc3,           s:f_none,       s:f_b,      s:c_acc3_cterm,     s:f_none,           s:f_b,      s:f_b)

" Syntax matching
call   SetC('MatchParen',       s:f_none,           s:c_gray2,      s:f_bu,     s:f_none,           s:c_gray2_cterm,    s:f_bu,     s:f_bu)

