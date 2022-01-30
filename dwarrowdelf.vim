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

" ---------------------------- COLOR ASSIGNMENT ----------------------------- "
"           GROUP NAME          GUIFG               GUIBG           GUI         CTERMFG             CTERMBG             CTERM       TERM
call   SetC('Normal',           s:c_white,          'NONE',         'NONE',     s:c_white_cterm)

" Cursor line/column and line number settings
call   SetC('CursorLine',       'NONE',             s:c_gray1,      '',         '',                 s:c_gray1_cterm,    'NONE')
call   SetC('CursorColumn',     'NONE',             s:c_gray1,      'NONE',     '',                 s:c_gray1_cterm)
call   SetC('LineNr',           s:c_ltgray2,        'NONE',         'NONE',     s:c_ltgray2_cterm,  'NONE')
call   SetC('CursorLineNr',     s:c_acc3,           s:c_gray1,      'bold',     s:c_acc3_cterm,     s:c_gray1_cterm)

" Constants
call   SetC('Constant',         s:c_acc5,           'NONE',         'NONE',     s:c_acc5_cterm,     'NONE',             'NONE')
call   SetC('String',           s:c_acc3,           'NONE',         'NONE',     s:c_acc3_cterm,     'NONE',             'NONE')
call   SetC('Character',        s:c_acc3,           'NONE',         'NONE',     s:c_acc3_cterm,     'NONE',             'NONE')
call   SetC('Number',           s:c_acc8,           'NONE',         'NONE',     s:c_acc8_cterm,     'NONE',             'NONE')
call   SetC('Float',            s:c_acc8,           'NONE',         'NONE',     s:c_acc8_cterm,     'NONE',             'NONE')

" Identifiers and Functions
call   SetC('Identifier',       s:c_acc2,           'NONE',         'bold',     s:c_acc2_cterm,     'NONE',             'bold')
call   SetC('Function',         s:c_acc4,           'NONE',         'bold',     s:c_acc4_cterm,     'NONE',             'bold')

" Statements
call   SetC('Statement',        s:c_acc1,           'NONE',         'NONE',     s:c_acc1_cterm,     'NONE',             'NONE')

" Preprocessor
call   SetC('PreProc',          s:c_acc6,           'NONE',         'NONE',     s:c_acc6_cterm,     'NONE',             'NONE')
call   SetC('Include',          s:c_acc2,           'NONE',         'NONE',     s:c_acc2_cterm,     'NONE',             'NONE')
call   SetC('Define',           s:c_acc2,           'NONE',         'NONE',     s:c_acc2_cterm,     'NONE',             'NONE')
call   SetC('Macro',            s:c_acc2,           'NONE',         'NONE',     s:c_acc2_cterm,     'NONE',             'NONE')
call   SetC('PreCondit',        s:c_acc2,           'NONE',         'NONE',     s:c_acc2_cterm,     'NONE',             'NONE')

" Data Types
call   SetC('Type',             s:c_acc4,           'NONE',         'bold',     s:c_acc4_cterm,     'NONE',             'bold')
call   SetC('StorageClass',     s:c_acc7,           'NONE',         'bold',     s:c_acc7_cterm,     'NONE',             'bold')
call   SetC('Structure',        s:c_acc7,           'NONE',         'bold',     s:c_acc7_cterm,     'NONE',             'bold')
call   SetC('Typedef',          s:c_acc7,           'NONE',         'bold',     s:c_acc7_cterm,     'NONE',             'bold')

" Specials
call   SetC('Special',          s:c_acc8,           'NONE',         'NONE',     s:c_acc8_cterm,     'NONE',             'NONE')

" Comments
call   SetC('Comment',          s:c_ltgray1,        'NONE',         'NONE',     s:c_ltgray1_cterm,  'NONE',             'NONE')
call   SetC('SpecialComment',   s:c_acc1,           'NONE',         'bold',     s:c_acc1_cterm,     'NONE',             'NONE')

" Vim Status Line
call   SetC('StatusLine',       s:c_acc2,           'NONE',         'NONE',     s:c_acc2_cterm,     'NONE',             'NONE')
call   SetC('StatusLineNC',     s:c_acc2,           'NONE',         'NONE',     s:c_acc2_cterm,     'NONE',             'NONE')
call   SetC('Title',            s:c_acc2,           'NONE',         'NONE',     s:c_acc2_cterm,     'NONE',             'NONE')
call   SetC('ModeMsg',          s:c_acc1,           'NONE',         'bold',     s:c_acc1_cterm,     'NONE',             'NONE')
call   SetC('MoreMsg',          s:c_acc1,           'NONE',         'bold',     s:c_acc1_cterm,     'NONE',             'NONE')
call   SetC('Error',            s:c_acc8,           'NONE',         'bold',     s:c_acc8_cterm,     'NONE',             'bold')
call   SetC('ErrorMsg',         s:c_acc8,           'NONE',         'bold',     s:c_acc8_cterm,     'NONE',             'bold')
call   SetC('WarningMsg',       s:c_acc3,           'NONE',         'bold',     s:c_acc3_cterm,     'NONE',             'bold')

" Syntax matching
call   SetC('MatchParen',       '',                 s:c_gray2,     'bold,underline', '',           s:c_gray2_cterm,    'bold,underline')

