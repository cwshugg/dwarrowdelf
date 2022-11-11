" Dwarrowdelf theme for Vim.
" Inspired by JRR Tolkien's Middle Earth and the great dwarven realm of
" Khazad DÃ»m, called Dwarrowdelf. Founded by Durin I the Deathless during the
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

if has('gui_running')
    highlight Normal guibg=black ctermbg=black
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


" -------------------------------- Formatting -------------------------------- "
set fillchars=vert:\            " set the vertical split character to a space


" --------------------------------- COLORS ---------------------------------- "
" Dwarrowdelf whites and grays
let s:c_black = '#000000'
let s:c_black_cterm = '0'
let s:c_white = '#E6E8E9'
let s:c_white_cterm = '254'
let s:c_gray1 = '#1C1C1C'
let s:c_gray1_cterm = '234'
let s:c_gray2 = '#262626'
let s:c_gray2_cterm = '235'
let s:c_gray3 = '#3A3A3A'
let s:c_gray3_cterm = '237'
let s:c_ltgray1 = '#6C6C6C'
let s:c_ltgray1_cterm = '242'
let s:c_ltgray2 = '#8787AF'
let s:c_ltgray2_cterm = '103'
" Dwarrowdelf accent colors
let s:c_acc1 = '#875FFF'        " PURPLE: amethyst gems in the mines
let s:c_acc1_cterm = '99'
let s:c_acc2 = '#87D7FF'        " GREY BLUE: runes of power upon the door
let s:c_acc2_cterm = '117'
let s:c_acc3 = '#FFCE60'        " GOLD: flakes of gold glinting in Moria's deepest caverns
let s:c_acc3_cterm = '220'
let s:c_acc4 = '#00D700'        " GREEN: emerald gems in the mines
let s:c_acc4_cterm = '40'
let s:c_acc5 = '#5F87FF'        " BLUE: the shimmering waters of Mirrormere
let s:c_acc5_cterm = '69'
let s:c_acc6 = '#AFFFFF'        " LIGHT BLUE: snowfall on Zirakzigil
let s:c_acc6_cterm = '159'
let s:c_acc7 = '#5F87D7'        " DARK BLUE/PURPLE/GRAY
let s:c_acc7_cterm = '68'
let s:c_acc8 = '#D70000'        " RED: the dark fires of Durin's Bane
let s:c_acc8_cterm = '160'
let s:c_acc9 = '#D75F00'        " ORANGE: the flaming deeps
let s:c_acc9_cterm = '166'
let s:c_acc10 = '#FFAF00'       " GOLD-ORANGE: ale in a dwarve keg
let s:c_acc10_cterm = '214'
let s:c_acc11 = '#5F8787'       " MOSSY GREEN: moss around the watcher's lake
let s:c_acc11_cterm = '66'
let s:c_acc12 = '#AF00D7'       " BRIGHT PURPLE: shining crystal lamps
let s:c_acc12_cterm = '128'
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
call   SetC('CursorLineNr',     s:c_acc10,          s:c_gray1,      s:f_b,      s:c_acc10_cterm,    s:c_gray1_cterm,    s:f_b,      s:f_b) 
call   SetC('ColorColumn',      s:f_none,           s:c_gray2,      s:f_none,   s:f_none,           s:c_gray2_cterm,    s:f_none,   s:f_none)
call   SetC('EndOfBuffer',      s:c_black,          s:c_black,      s:f_none,   s:c_black_cterm,    s:c_black_cterm,    s:f_none,   s:f_none)

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

" Vim Status Line
call   SetC('StatusLine',       s:c_acc2,           s:c_gray3,      s:f_none,   s:c_acc2_cterm,     s:c_gray3_cterm,    s:f_none,   s:f_none)
call   SetC('StatusLineNC',     s:c_acc2,           s:c_gray2,      s:f_none,   s:c_acc2_cterm,     s:c_gray2_cterm,    s:f_none,   s:f_none)
call   SetC('Title',            s:c_acc2,           s:f_none,       s:f_none,   s:c_acc2_cterm,     s:f_none,           s:f_none,   s:f_none)
call   SetC('ModeMsg',          s:c_acc1,           s:f_none,       s:f_b,      s:c_acc1_cterm,     s:f_none,           s:f_b,      s:f_b)
call   SetC('MoreMsg',          s:c_acc1,           s:f_none,       s:f_b,      s:c_acc1_cterm,     s:f_none,           s:f_b,      s:f_b)
call   SetC('Error',            s:c_acc8,           s:f_none,       s:f_b,      s:c_acc8_cterm,     s:f_none,           s:f_b,      s:f_b)
call   SetC('ErrorMsg',         s:c_acc8,           s:f_none,       s:f_b,      s:c_acc8_cterm,     s:f_none,           s:f_b,      s:f_b)
call   SetC('WarningMsg',       s:c_acc3,           s:f_none,       s:f_b,      s:c_acc3_cterm,     s:f_none,           s:f_b,      s:f_b)

" Syntax matching and autocomplete
call   SetC('MatchParen',       s:f_none,           s:c_gray2,      s:f_bu,     s:f_none,           s:c_gray2_cterm,    s:f_bu,     s:f_bu)
call   SetC('Search',           s:c_gray1,          s:c_acc5,       s:f_none,   s:c_gray1_cterm,    s:c_acc5_cterm,     s:f_none,   s:f_none)
call   SetC('Pmenu',            s:c_acc2,           s:c_gray2,      s:f_none,   s:c_acc2_cterm,     s:c_gray2_cterm,    s:f_none,   s:f_none)
call   SetC('PmenuSel',         s:c_acc6,           s:c_ltgray1,    s:f_none,   s:c_acc6_cterm,     s:c_ltgray1_cterm,  s:f_none,   s:f_none)

" Window splitting
call   SetC('VertSplit',        s:c_gray3,          s:c_gray3,      s:f_none,   s:c_gray3_cterm,    s:c_gray3_cterm,    s:f_none,   s:f_none)

" ----------------------- Custom Keyword Highlighting ------------------------ "
" FIXME highlighting
hi def dwd_dev_fixme guibg=black
call matchadd('dwd_dev_fixme', 'FIXME', 10)
call   SetC('dwd_dev_fixme',    s:c_acc8,           s:c_gray2,      s:f_b,      s:c_acc8_cterm,     s:c_gray2_cterm,    s:f_b,      s:f_b)

" TODO highlighting
call   SetC('Todo',             s:c_acc9,           s:c_gray2,      s:f_b,      s:c_acc9_cterm,     s:c_gray2_cterm,    s:f_b,      s:f_b)
call   SetC('Todo2',            s:c_acc9,           s:c_gray2,      s:f_b,      s:c_acc9_cterm,     s:c_gray2_cterm,    s:f_b,      s:f_b)
call matchadd('Todo2', 'TODO', 10)

" DEBUGGING highlighting
hi def dwd_dev_debug2 guibg=black
call matchadd('dwd_dev_debug2', 'DEBUGGING', 10)
call   SetC('dwd_dev_debug2',   s:c_acc10,          s:c_gray2,      s:f_b,      s:c_acc10_cterm,    s:c_gray2_cterm,    s:f_b,      s:f_b)

" DEBUG highlighting
hi def dwd_dev_debug guibg=black
call matchadd('dwd_dev_debug', 'DEBUG', 9)
call   SetC('dwd_dev_debug',    s:c_acc10,          s:c_gray2,      s:f_b,      s:c_acc10_cterm,    s:c_gray2_cterm,    s:f_b,      s:f_b)

" BUG highlighting
hi def dwd_dev_bug guibg=black
call matchadd('dwd_dev_bug', 'BUG', 8)
call   SetC('dwd_dev_bug' ,    s:c_acc12,          s:c_gray2,      s:f_b,      s:c_acc12_cterm,    s:c_gray2_cterm,    s:f_b,      s:f_b)

" NOTE highlighting
hi def dwd_dev_note guibg=black
call matchadd('dwd_dev_note', 'NOTE', 10)
call   SetC('dwd_dev_note' ,    s:c_acc11,          s:c_gray2,      s:f_b,      s:c_acc11_cterm,    s:c_gray2_cterm,    s:f_b,      s:f_b)

