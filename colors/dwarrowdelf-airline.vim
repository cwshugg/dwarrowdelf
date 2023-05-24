" Dwarrowdelf theme for Vim Airline.
" Inspired by JRR Tolkien's Middle Earth and the great dwarven realm of
" Khazad DÃ»m, called Dwarrowdelf. Founded by Durin I the Deathless during the
" early years of Arda.
" The colors were inspired by The Lord of the Rings Online's adaptation.
"
" I adapted this theme from dwarrowdelf.vim, one of the existing airline themes.
"
"   Connor Shugg (connor@shugg.dev)
"   https://github.com/cwshugg

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
let s:c_gray3 = '#303030'
let s:c_gray3_cterm = '236'
let s:c_gray4 = '#3A3A3A'
let s:c_gray4_cterm = '237'
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

" Dwarrowdelf dim colors
let s:c_dim1 = '#005f00'        " DARK GREEN
let s:c_dim1_cterm = '22'
let s:c_dim2 = '#5f0000'        " DARK RED
let s:c_dim2_cterm = '52'
let s:c_dim3 = '#5f5f00'        " DARK YELLOW/GREEN
let s:c_dim3_cterm = '58'

" ----------------------------- Theme Definition ----------------------------- "
let g:airline#themes#dwarrowdelf#palette = {}

"           Text            Background          Text (cterm)        Background (cterm)
"           --------------------------------------------------------------------------
" Normal mode
let s:n1 = [s:c_white,      s:c_acc7,           s:c_white_cterm,    s:c_acc7_cterm]
let s:n2 = [s:c_ltgray2,    s:c_gray3,          s:c_ltgray2_cterm,  s:c_gray3_cterm]
let s:n3 = [s:c_ltgray2,    s:c_gray4,          s:c_ltgray2_cterm,  s:c_gray4_cterm]


" Normal mode
let g:airline#themes#dwarrowdelf#palette.normal = airline#themes#generate_color_map(s:n1, s:n2, s:n3)
let g:airline#themes#dwarrowdelf#palette.normal_modified = {
    \ 'airline_c': [s:c_acc10, s:c_gray3, s:c_acc10_cterm, s:c_gray3_cterm, ''],
\ }

" Insert mode
let s:i1 = [s:c_gray2,      s:c_acc4,           s:c_gray2_cterm,    s:c_acc4_cterm]
let g:airline#themes#dwarrowdelf#palette.insert = airline#themes#generate_color_map(s:i1, s:n2, s:n3)
let g:airline#themes#dwarrowdelf#palette.insert_modified = copy(g:airline#themes#dwarrowdelf#palette.normal_modified)

" Replace mode
let s:r1 = [s:c_white,      s:c_acc8,           s:c_white_cterm,    s:c_acc8_cterm]
let g:airline#themes#dwarrowdelf#palette.replace = airline#themes#generate_color_map(s:r1, s:n2, s:n3)
let g:airline#themes#dwarrowdelf#palette.replace_modified = copy(g:airline#themes#dwarrowdelf#palette.insert_modified)

" Visual mode
let s:v1 = [s:c_white,      s:c_acc12,          s:c_white_cterm,    s:c_acc12_cterm]
let g:airline#themes#dwarrowdelf#palette.visual = airline#themes#generate_color_map(s:v1, s:n2, s:n3)
let g:airline#themes#dwarrowdelf#palette.visual_modified = copy(g:airline#themes#dwarrowdelf#palette.insert_modified)

" Inactive window
let s:ia = [s:c_ltgray2,    s:c_gray3,          s:c_ltgray2_cterm,  s:c_gray3_cterm, '']
let g:airline#themes#dwarrowdelf#palette.inactive = airline#themes#generate_color_map(s:ia, s:ia, s:ia)
let g:airline#themes#dwarrowdelf#palette.inactive_modified = {
    \ 'airline_c': [s:c_acc10, '', s:c_acc10_cterm, '', ''],
\ }

" Tab line
"let g:airline#themes#dwarrowdelf#palette.tabline = {
    "\ 'airline_tab': [
"\ }

" Warnings
let s:er = airline#themes#get_highlight2(['ErrorMsg', 'bg'], ['ErrorMsg', 'fg'], 'bold')
let g:airline#themes#dwarrowdelf#palette.normal.airline_warning = [
 \ s:er[1], s:er[0], s:er[3], s:er[2]
 \ ]
let g:airline#themes#dwarrowdelf#palette.normal_modified.airline_warning =
\ g:airline#themes#dwarrowdelf#palette.normal.airline_warning
let g:airline#themes#dwarrowdelf#palette.insert.airline_warning =
\ g:airline#themes#dwarrowdelf#palette.normal.airline_warning
let g:airline#themes#dwarrowdelf#palette.insert_modified.airline_warning =
\ g:airline#themes#dwarrowdelf#palette.normal.airline_warning
let g:airline#themes#dwarrowdelf#palette.visual.airline_warning =
\ g:airline#themes#dwarrowdelf#palette.normal.airline_warning
let g:airline#themes#dwarrowdelf#palette.visual_modified.airline_warning =
\ g:airline#themes#dwarrowdelf#palette.normal.airline_warning
let g:airline#themes#dwarrowdelf#palette.replace.airline_warning =
\ g:airline#themes#dwarrowdelf#palette.normal.airline_warning
let g:airline#themes#dwarrowdelf#palette.replace_modified.airline_warning =
\ g:airline#themes#dwarrowdelf#palette.normal.airline_warning

" Errors
let g:airline#themes#dwarrowdelf#palette.normal.airline_error = [
 \ s:er[1], s:er[0], s:er[3], s:er[2]
 \ ]
let g:airline#themes#dwarrowdelf#palette.normal_modified.airline_error =
\ g:airline#themes#dwarrowdelf#palette.normal.airline_error
let g:airline#themes#dwarrowdelf#palette.insert.airline_error =
\ g:airline#themes#dwarrowdelf#palette.normal.airline_error
let g:airline#themes#dwarrowdelf#palette.insert_modified.airline_error =
\ g:airline#themes#dwarrowdelf#palette.normal.airline_error
let g:airline#themes#dwarrowdelf#palette.visual.airline_error =
\ g:airline#themes#dwarrowdelf#palette.normal.airline_error
let g:airline#themes#dwarrowdelf#palette.visual_modified.airline_error =
\ g:airline#themes#dwarrowdelf#palette.normal.airline_error
let g:airline#themes#dwarrowdelf#palette.replace.airline_error =
\ g:airline#themes#dwarrowdelf#palette.normal.airline_error
let g:airline#themes#dwarrowdelf#palette.replace_modified.airline_error =
\ g:airline#themes#dwarrowdelf#palette.normal.airline_error

