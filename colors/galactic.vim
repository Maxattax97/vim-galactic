" Name:         Galactic
" Description:  Standard colors for the galactic empire.
" Author:       Max O'Cull <max.ocull@protonmail.com>
" Maintainer:   Max O'Cull <max.ocull@protonmail.com>
" Website:      https://github.com/maxattax97/vim-galactic
" License:      OSI approved MIT license
" Last Updated: Tue 14 May 2019 03:13:31 PM EDT

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < (get(g:, 'galactic_use16', &t_Co < 256) ? 16 : 256))
  echoerr '[Galactic] There are not enough colors.'
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'galactic'

" 256-color variant
if !get(g:, 'galactic_use16', &t_Co < 256)
  if get(g:, 'galactic_termtrans', 1)
    let g:galactic_termtrans=1
  endif
  if get(g:, 'galactic_extra_hi_groups', 1)
    let g:galactic_extra_hi_groups=1
  endif
  if get(g:, 'galactic_plugin_hi_groups', 1)
    let g:galactic_plugin_hi_groups=1
  endif
  if get(g:, 'galactic_term_italics', 1)
    let g:galactic_term_italics=1
  endif

  if &background ==# 'dark'
    let g:terminal_ansi_colors = ['#303030', '#ff511a', '#4ca340', '#a68f01', '#3294ff', '#fe3bb9', '#07a38f', '#c6c6c6',
          \ '#1b1b1b', '#dd7202', '#474747', '#5e5e5e', '#919191', '#cc62fe', '#ababab', '#e2e2e2']
    if has('nvim')
      hi! link TermCursor Cursor
      hi TermCursorNC ctermfg=234 ctermbg=238 guifg=#1b1b1b guibg=#474747 guisp=NONE cterm=NONE gui=NONE
      let g:terminal_color_0='#303030'
      let g:terminal_color_1='#ff511a'
      let g:terminal_color_2='#4ca340'
      let g:terminal_color_3='#a68f01'
      let g:terminal_color_4='#3294ff'
      let g:terminal_color_5='#fe3bb9'
      let g:terminal_color_6='#07a38f'
      let g:terminal_color_7='#c6c6c6'
      let g:terminal_color_8='#1b1b1b'
      let g:terminal_color_9='#dd7202'
      let g:terminal_color_10='#474747'
      let g:terminal_color_11='#5e5e5e'
      let g:terminal_color_12='#919191'
      let g:terminal_color_13='#cc62fe'
      let g:terminal_color_14='#ababab'
      let g:terminal_color_15='#e2e2e2'
    endif
    if !has('gui_running') && get(g:, 'galactic_termtrans', 0)
      hi Normal ctermfg=248 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi FoldColumn ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi Folded ctermfg=fg ctermbg=234 guifg=fg guibg=#1b1b1b guisp=#1b1b1b cterm=NONE,bold gui=NONE,bold
      hi LineNr ctermfg=238 ctermbg=234 guifg=#474747 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
      hi Terminal ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi CursorLineNr ctermbg=234 guibg=#1b1b1b guifg=NONE
    else
      hi Normal ctermfg=248 ctermbg=234 guifg=#ababab guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
      hi FoldColumn ctermfg=246 ctermbg=236 guifg=#919191 guibg=#303030 guisp=NONE cterm=NONE gui=NONE
      hi Folded ctermfg=246 ctermbg=236 guifg=#919191 guibg=#303030 guisp=#1b1b1b cterm=NONE,bold gui=NONE,bold
      hi LineNr ctermfg=238 ctermbg=234 guifg=#474747 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
      hi Terminal ctermfg=fg ctermbg=234 guifg=fg guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
      hi CursorLineNr ctermbg=234 guibg=#1b1b1b
    endif
    if get(g:, "galactic_visibility", "") == "high"
      hi CursorLineNr ctermfg=166 guifg=#dd7202 cterm=bold gui=bold
      hi NonText ctermfg=166 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi SpecialKey ctermfg=166 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      hi SpellBad ctermfg=171 ctermbg=254 guifg=#cc62fe guibg=#e2e2e2 guisp=#ff511a cterm=NONE,reverse,underline gui=NONE,reverse,undercurl
      hi SpellCap ctermfg=171 ctermbg=254 guifg=#cc62fe guibg=#e2e2e2 guisp=#ff511a cterm=NONE,reverse,underline gui=NONE,reverse,undercurl
      hi SpellLocal ctermfg=136 ctermbg=254 guifg=#a68f01 guibg=#e2e2e2 guisp=#ff511a cterm=NONE,reverse,underline gui=NONE,reverse,undercurl
      hi SpellRare ctermfg=36 ctermbg=254 guifg=#07a38f guibg=#e2e2e2 guisp=#ff511a cterm=NONE,reverse,underline gui=NONE,reverse,undercurl
      hi Title ctermfg=136 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    elseif get(g:, "galactic_visibility", "") == "low"
      hi CursorLineNr ctermfg=238 guifg=#474747 cterm=bold gui=bold
      hi NonText ctermfg=236 ctermbg=NONE guifg=#303030 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi SpecialKey ctermfg=236 ctermbg=NONE guifg=#303030 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      hi SpellBad ctermfg=171 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=#cc62fe cterm=NONE,underline gui=NONE,undercurl
      hi SpellCap ctermfg=171 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=#cc62fe cterm=NONE,underline gui=NONE,undercurl
      hi SpellLocal ctermfg=136 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=#a68f01 cterm=NONE,underline gui=NONE,undercurl
      hi SpellRare ctermfg=36 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=#07a38f cterm=NONE,underline gui=NONE,undercurl
      hi Title ctermfg=238 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    else
      hi CursorLineNr ctermfg=246 guifg=#919191 cterm=bold gui=bold
      hi NonText ctermfg=59 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi SpecialKey ctermfg=59 ctermbg=236 guifg=#5e5e5e guibg=#303030 guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi SpellBad ctermfg=171 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=#cc62fe cterm=NONE,underline gui=NONE,undercurl
      hi SpellCap ctermfg=171 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=#cc62fe cterm=NONE,underline gui=NONE,undercurl
      hi SpellLocal ctermfg=136 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=#a68f01 cterm=NONE,underline gui=NONE,undercurl
      hi SpellRare ctermfg=36 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=#07a38f cterm=NONE,underline gui=NONE,undercurl
      hi Title ctermfg=136 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    endif
    hi ColorColumn ctermfg=NONE ctermbg=236 guifg=NONE guibg=#303030 guisp=NONE cterm=NONE gui=NONE
    hi Conceal ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
    if get(g:, 'galactic_old_cursor_style', 0)
      hi Cursor ctermfg=234 ctermbg=246 guifg=#1b1b1b guibg=#919191 guisp=NONE cterm=NONE gui=NONE
    else
      hi Cursor ctermfg=254 ctermbg=33 guifg=#e2e2e2 guibg=#3294ff guisp=NONE cterm=NONE gui=NONE
    endif
    hi CursorColumn ctermfg=NONE ctermbg=236 guifg=NONE guibg=#303030 guisp=NONE cterm=NONE gui=NONE
    hi CursorLine ctermfg=NONE ctermbg=236 guifg=NONE guibg=#303030 guisp=#ababab cterm=NONE gui=NONE
    if get(g:, "galactic_diffmode", "") == "high"
      hi DiffAdd ctermfg=71 ctermbg=NONE guifg=#4ca340 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      hi DiffChange ctermfg=136 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      hi DiffDelete ctermfg=202 ctermbg=NONE guifg=#ff511a guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      hi DiffText ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    elseif get(g:, "galactic_diffmode", "") == "low"
      hi DiffAdd ctermfg=71 ctermbg=NONE guifg=#4ca340 guibg=NONE guisp=#4ca340 cterm=NONE gui=NONE
      hi DiffChange ctermfg=136 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=#a68f01 cterm=NONE gui=NONE
      hi DiffDelete ctermfg=202 ctermbg=NONE guifg=#ff511a guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi DiffText ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=#3294ff cterm=NONE gui=NONE
    else
      hi DiffAdd ctermfg=71 ctermbg=236 guifg=#4ca340 guibg=#303030 guisp=#4ca340 cterm=NONE gui=NONE
      hi DiffChange ctermfg=136 ctermbg=236 guifg=#a68f01 guibg=#303030 guisp=#a68f01 cterm=NONE gui=NONE
      hi DiffDelete ctermfg=202 ctermbg=236 guifg=#ff511a guibg=#303030 guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi DiffText ctermfg=33 ctermbg=236 guifg=#3294ff guibg=#303030 guisp=#3294ff cterm=NONE gui=NONE
    endif
    hi Directory ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi EndOfBuffer ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi ErrorMsg ctermfg=202 ctermbg=254 guifg=#ff511a guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi IncSearch ctermfg=166 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,standout gui=NONE,standout
    hi MatchParen ctermfg=254 ctermbg=236 guifg=#e2e2e2 guibg=#303030 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi ModeMsg ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi MoreMsg ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi Pmenu ctermfg=248 ctermbg=236 guifg=#ababab guibg=#303030 guisp=NONE cterm=NONE gui=NONE
    hi PmenuSbar ctermfg=NONE ctermbg=238 guifg=NONE guibg=#474747 guisp=NONE cterm=NONE gui=NONE
    hi PmenuSel ctermfg=251 ctermbg=59 guifg=#c6c6c6 guibg=#5e5e5e guisp=NONE cterm=NONE gui=NONE
    hi PmenuThumb ctermfg=NONE ctermbg=246 guifg=NONE guibg=#919191 guisp=NONE cterm=NONE gui=NONE
    hi Question ctermfg=36 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi! link QuickFixLine Search
    hi Search ctermfg=136 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi SignColumn ctermfg=246 ctermbg=234 guifg=#919191 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
    if get(g:, "galactic_statusline", "") == "low"
      hi StatusLine ctermfg=238 ctermbg=251 guifg=#474747 guibg=#c6c6c6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      hi StatusLineNC ctermfg=238 ctermbg=236 guifg=#474747 guibg=#303030 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      hi TabLine ctermfg=238 ctermbg=236 guifg=#474747 guibg=#303030 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      hi TabLineFill ctermfg=238 ctermbg=236 guifg=#474747 guibg=#303030 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      hi TabLineSel ctermfg=246 ctermbg=254 guifg=#919191 guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      hi VertSplit ctermfg=236 ctermbg=238 guifg=#303030 guibg=#474747 guisp=NONE cterm=NONE gui=NONE
    elseif get(g:, "galactic_statusline", "") == "flat"
      hi StatusLine ctermfg=236 ctermbg=251 guifg=#303030 guibg=#c6c6c6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      hi StatusLineNC ctermfg=236 ctermbg=248 guifg=#303030 guibg=#ababab guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      hi TabLineSel ctermfg=251 ctermbg=236 guifg=#c6c6c6 guibg=#303030 guisp=NONE cterm=NONE gui=NONE
      hi TabLine ctermfg=238 ctermbg=236 guifg=#474747 guibg=#303030 guisp=NONE cterm=NONE gui=NONE
      hi TabLineFill ctermfg=238 ctermbg=236 guifg=#474747 guibg=#303030 guisp=NONE cterm=NONE gui=NONE
      hi VertSplit ctermfg=238 ctermbg=236 guifg=#474747 guibg=#303030 guisp=NONE cterm=NONE gui=NONE
    else
      hi StatusLine ctermfg=246 ctermbg=236 guifg=#919191 guibg=#303030 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      hi StatusLineNC ctermfg=238 ctermbg=236 guifg=#474747 guibg=#303030 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      hi TabLine ctermfg=238 ctermbg=236 guifg=#474747 guibg=#303030 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      hi TabLineFill ctermfg=238 ctermbg=236 guifg=#474747 guibg=#303030 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      hi TabLineSel ctermfg=246 ctermbg=236 guifg=#919191 guibg=#303030 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      hi VertSplit ctermfg=236 ctermbg=238 guifg=#303030 guibg=#474747 guisp=NONE cterm=NONE gui=NONE
    endif
    hi! link StatusLineTerm StatusLine
    hi! link StatusLineTermNC StatusLineNC
    hi Visual ctermfg=238 ctermbg=234 guifg=#474747 guibg=#1b1b1b guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi VisualNOS ctermfg=NONE ctermbg=236 guifg=NONE guibg=#303030 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi WarningMsg ctermfg=166 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi WildMenu ctermfg=251 ctermbg=236 guifg=#c6c6c6 guibg=#303030 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi! link Boolean Constant
    hi! link Character Constant
    hi Comment ctermfg=238 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
    hi! link Conditional Statement
    hi Constant ctermfg=36 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link Define PreProc
    hi! link Debug Special
    hi! link Delimiter Special
    hi Error ctermfg=202 ctermbg=254 guifg=#ff511a guibg=#e2e2e2 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
    hi! link Exception Statement
    hi! link Float Constant
    hi! link Function Identifier
    hi Identifier ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi Ignore ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link Include PreProc
    hi! link Keyword Statement
    hi! link Label Statement
    hi! link Macro PreProc
    hi! link Number Constant
    hi! link Operator Statement
    hi! link PreCondit PreProc
    hi PreProc ctermfg=166 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link Repeat Statement
    hi Special ctermfg=202 ctermbg=NONE guifg=#ff511a guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link SpecialChar Special
    hi! link SpecialComment Special
    hi Statement ctermfg=71 ctermbg=NONE guifg=#4ca340 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link StorageClass Type
    hi! link String Constant
    hi! link Structure Type
    hi! link Tag Special
    hi Todo ctermfg=199 ctermbg=NONE guifg=#fe3bb9 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi Type ctermfg=136 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link Typedef Type
    hi Underlined ctermfg=171 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link lCursor Cursor
    hi CursorIM ctermfg=NONE ctermbg=fg guifg=NONE guibg=fg guisp=NONE cterm=NONE gui=NONE
    hi ToolbarLine ctermfg=NONE ctermbg=236 guifg=NONE guibg=#303030 guisp=NONE cterm=NONE gui=NONE
    hi ToolbarButton ctermfg=248 ctermbg=236 guifg=#ababab guibg=#303030 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi NormalMode ctermfg=246 ctermbg=254 guifg=#919191 guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi InsertMode ctermfg=36 ctermbg=254 guifg=#07a38f guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi ReplaceMode ctermfg=166 ctermbg=254 guifg=#dd7202 guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi VisualMode ctermfg=199 ctermbg=254 guifg=#fe3bb9 guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi CommandMode ctermfg=199 ctermbg=254 guifg=#fe3bb9 guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    if get(g:, 'galactic_extra_hi_groups', 0)
      hi! link vimVar Identifier
      hi! link vimFunc Function
      hi! link vimUserFunc Function
      hi! link helpSpecial Special
      hi! link vimSet Normal
      hi! link vimSetEqual Normal
      hi vimCommentString ctermfg=171 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi vimCommand ctermfg=136 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi vimCmdSep ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi helpExample ctermfg=248 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi helpOption ctermfg=36 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi helpNote ctermfg=199 ctermbg=NONE guifg=#fe3bb9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi helpVim ctermfg=199 ctermbg=NONE guifg=#fe3bb9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi helpHyperTextJump ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi helpHyperTextEntry ctermfg=71 ctermbg=NONE guifg=#4ca340 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi vimIsCommand ctermfg=59 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi vimSynMtchOpt ctermfg=136 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi vimSynType ctermfg=36 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi vimHiLink ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi vimHiGroup ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi vimGroup ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi! link diffAdded Statement
      hi! link diffLine Identifier
      hi gitcommitComment ctermfg=238 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
      hi! link gitcommitUntracked gitcommitComment
      hi! link gitcommitDiscarded gitcommitComment
      hi! link gitcommitSelected gitcommitComment
      hi gitcommitUnmerged ctermfg=71 ctermbg=NONE guifg=#4ca340 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi gitcommitOnBranch ctermfg=238 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi gitcommitBranch ctermfg=199 ctermbg=NONE guifg=#fe3bb9 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi! link gitcommitNoBranch gitcommitBranch
      hi gitcommitdiscardedtype ctermfg=202 ctermbg=NONE guifg=#ff511a guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi gitcommitselectedtype ctermfg=71 ctermbg=NONE guifg=#4ca340 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi gitcommitHeader ctermfg=238 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi gitcommitUntrackedFile ctermfg=36 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi gitcommitDiscardedFile ctermfg=202 ctermbg=NONE guifg=#ff511a guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi gitcommitSelectedFile ctermfg=71 ctermbg=NONE guifg=#4ca340 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi gitcommitUnmergedFile ctermfg=136 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi gitcommitFile ctermfg=246 ctermbg=NONE guifg=#919191 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi! link gitcommitDiscardedArrow gitcommitDiscardedFile
      hi! link gitcommitSelectedArrow gitcommitSelectedFile
      hi! link gitcommitUnmergedArrow gitcommitUnmergedFile
      hi htmlTag ctermfg=238 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi htmlEndTag ctermfg=238 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi htmlTagN ctermfg=248 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi htmlTagName ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi htmlSpecialTagName ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
      hi htmlArg ctermfg=59 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi javaScript ctermfg=136 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi! link jsFuncCall Function
      hi perlHereDoc ctermfg=248 ctermbg=234 guifg=#ababab guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
      hi perlVarPlain ctermfg=136 ctermbg=234 guifg=#a68f01 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
      hi perlStatementFileDesc ctermfg=36 ctermbg=234 guifg=#07a38f guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
      hi texstatement ctermfg=36 ctermbg=234 guifg=#07a38f guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
      hi texmathzonex ctermfg=136 ctermbg=234 guifg=#a68f01 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
      hi texmathmatcher ctermfg=136 ctermbg=234 guifg=#a68f01 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
      hi texreflabel ctermfg=136 ctermbg=234 guifg=#a68f01 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
      hi rubyDefine ctermfg=248 ctermbg=234 guifg=#ababab guibg=#1b1b1b guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi! link rubySymbol Type
      hi rubyBoolean ctermfg=199 ctermbg=234 guifg=#fe3bb9 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
      let hs_highlight_boolean=1
      let hs_highlight_delimiters=1
      hi cPreCondit ctermfg=166 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi VarId ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi ConId ctermfg=136 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi hsImport ctermfg=199 ctermbg=NONE guifg=#fe3bb9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi hsString ctermfg=59 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi hsStructure ctermfg=36 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi hs_hlFunctionName ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi hsStatement ctermfg=36 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi hsImportLabel ctermfg=36 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi hs_OpFunctionName ctermfg=136 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi hs_DeclareFunction ctermfg=166 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi hsVarSym ctermfg=36 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi hsType ctermfg=136 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi hsTypedef ctermfg=36 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi hsModuleName ctermfg=71 ctermbg=NONE guifg=#4ca340 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi! link hsImportParams Delimiter
      hi! link hsDelimTypeExport Delimiter
      hi! link hsModuleStartLabel hsStructure
      hi! link hsModuleWhereLabel hsModuleStartLabel
      hi hsNiceOperator ctermfg=36 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi hsniceoperator ctermfg=36 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocTitleBlock ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocTitleBlockTitle ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocTitleComment ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocComment ctermfg=238 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
      hi pandocVerbatimBlock ctermfg=136 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi! link pandocVerbatimBlockDeep pandocVerbatimBlock
      hi! link pandocCodeBlock pandocVerbatimBlock
      hi! link pandocCodeBlockDelim pandocVerbatimBlock
      hi pandocBlockQuote ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocBlockQuoteLeader1 ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocBlockQuoteLeader2 ctermfg=36 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocBlockQuoteLeader3 ctermfg=136 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocBlockQuoteLeader4 ctermfg=202 ctermbg=NONE guifg=#ff511a guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocBlockQuoteLeader5 ctermfg=246 ctermbg=NONE guifg=#919191 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocBlockQuoteLeader6 ctermfg=238 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocListMarker ctermfg=199 ctermbg=NONE guifg=#fe3bb9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocListReference ctermfg=199 ctermbg=NONE guifg=#fe3bb9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocDefinitionBlock ctermfg=171 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocDefinitionTerm ctermfg=171 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE,standout gui=NONE,standout
      hi pandocDefinitionIndctr ctermfg=171 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocEmphasisDefinition ctermfg=171 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
      hi pandocEmphasisNestedDefinition ctermfg=171 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocStrongEmphasisDefinition ctermfg=171 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocStrongEmphasisNestedDefinition ctermfg=171 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocStrongEmphasisEmphasisDefinition ctermfg=171 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocStrikeoutDefinition ctermfg=171 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      hi pandocVerbatimInlineDefinition ctermfg=171 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocSuperscriptDefinition ctermfg=171 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocSubscriptDefinition ctermfg=171 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocTable ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocTableStructure ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi! link pandocTableStructureTop pandocTableStructre
      hi! link pandocTableStructureEnd pandocTableStructre
      hi pandocTableZebraLight ctermfg=33 ctermbg=234 guifg=#3294ff guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
      hi pandocTableZebraDark ctermfg=33 ctermbg=236 guifg=#3294ff guibg=#303030 guisp=NONE cterm=NONE gui=NONE
      hi pandocEmphasisTable ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
      hi pandocEmphasisNestedTable ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocStrongEmphasisTable ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocStrongEmphasisNestedTable ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocStrongEmphasisEmphasisTable ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocStrikeoutTable ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      hi pandocVerbatimInlineTable ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocSuperscriptTable ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocSubscriptTable ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocHeading ctermfg=166 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocHeadingMarker ctermfg=166 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocEmphasisHeading ctermfg=166 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocEmphasisNestedHeading ctermfg=166 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocStrongEmphasisHeading ctermfg=166 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocStrongEmphasisNestedHeading ctermfg=166 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocStrongEmphasisEmphasisHeading ctermfg=166 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocStrikeoutHeading ctermfg=166 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      hi pandocVerbatimInlineHeading ctermfg=166 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocSuperscriptHeading ctermfg=166 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocSubscriptHeading ctermfg=166 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocLinkDelim ctermfg=238 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocLinkLabel ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocLinkText ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocLinkURL ctermfg=59 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocLinkTitle ctermfg=59 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocLinkTitleDelim ctermfg=238 ctermbg=NONE guifg=#474747 guibg=NONE guisp=#5e5e5e cterm=NONE gui=NONE
      hi pandocLinkDefinition ctermfg=36 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=#5e5e5e cterm=NONE gui=NONE
      hi pandocLinkDefinitionID ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocImageCaption ctermfg=171 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocFootnoteLink ctermfg=71 ctermbg=NONE guifg=#4ca340 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocFootnoteDefLink ctermfg=71 ctermbg=NONE guifg=#4ca340 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocFootnoteInline ctermfg=71 ctermbg=NONE guifg=#4ca340 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocFootnote ctermfg=71 ctermbg=NONE guifg=#4ca340 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocCitationDelim ctermfg=199 ctermbg=NONE guifg=#fe3bb9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocCitation ctermfg=199 ctermbg=NONE guifg=#fe3bb9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocCitationID ctermfg=199 ctermbg=NONE guifg=#fe3bb9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocCitationRef ctermfg=199 ctermbg=NONE guifg=#fe3bb9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocStyleDelim ctermfg=238 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocEmphasis ctermfg=246 ctermbg=NONE guifg=#919191 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
      hi pandocEmphasisNested ctermfg=246 ctermbg=NONE guifg=#919191 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocStrongEmphasis ctermfg=246 ctermbg=NONE guifg=#919191 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocStrongEmphasisNested ctermfg=246 ctermbg=NONE guifg=#919191 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocStrongEmphasisEmphasis ctermfg=246 ctermbg=NONE guifg=#919191 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocStrikeout ctermfg=238 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      hi pandocVerbatimInline ctermfg=136 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocSuperscript ctermfg=171 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocSubscript ctermfg=171 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocRule ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocRuleLine ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocEscapePair ctermfg=202 ctermbg=NONE guifg=#ff511a guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi pandocCitationRef ctermfg=199 ctermbg=NONE guifg=#fe3bb9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocNonBreakingSpace ctermfg=202 ctermbg=NONE guifg=#ff511a guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      hi! link pandocEscapedCharacter pandocEscapePair
      hi! link pandocLineBreak pandocEscapePair
      hi pandocMetadataDelim ctermfg=238 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocMetadata ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocMetadataKey ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
      hi pandocMetadata ctermfg=33 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
      hi! link pandocMetadataTitle pandocMetadata
    endif
    if get(g:, "galactic_term_italics", 0)
      hi Comment cterm=italic
      hi gitcommitComment cterm=italic
      hi htmlSpecialTagName cterm=italic
      hi pandocComment cterm=italic
      hi pandocEmphasisDefinition cterm=italic
      hi pandocEmphasisTable cterm=italic
      hi pandocEmphasis cterm=italic
    endif
    if get(g:, 'galactic_plugin_hi_groups', 0)
      hi NeomakeErrorSign ctermfg=166 ctermbg=234 guifg=#dd7202 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
      hi NeomakeWarningSign ctermfg=136 ctermbg=234 guifg=#a68f01 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
      hi NeomakeMessageSign ctermfg=36 ctermbg=234 guifg=#07a38f guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
      hi NeomakeNeomakeInfoSign ctermfg=71 ctermbg=234 guifg=#4ca340 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
      hi NeomakeInfoSign ctermfg=71 ctermbg=234 guifg=#4ca340 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
      hi GitGutterAdd ctermfg=71 ctermbg=234 guifg=#4ca340 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
      hi GitGutterChange ctermfg=136 ctermbg=234 guifg=#a68f01 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
      hi GitGutterDelete ctermfg=202 ctermbg=234 guifg=#ff511a guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
      hi GitGutterChangeDelete ctermfg=202 ctermbg=234 guifg=#ff511a guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
      hi SignifySignAdd ctermfg=71 ctermbg=234 guifg=#4ca340 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
      hi SignifySignChange ctermfg=136 ctermbg=234 guifg=#a68f01 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
      hi SignifySignDelete ctermfg=202 ctermbg=234 guifg=#ff511a guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
      hi SignifySignChangeDelete ctermfg=202 ctermbg=234 guifg=#ff511a guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
      hi ALEErrorSign ctermfg=166 ctermbg=234 guifg=#dd7202 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
      hi ALEWarningSign ctermfg=136 ctermbg=234 guifg=#a68f01 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
    endif
    finish
  endif

  let g:terminal_ansi_colors = ['#303030', '#b02a01', '#056e07', '#6d5d01', '#0861af', '#b2027e', '#066b5d', '#c6c6c6',
        \ '#1b1b1b', '#924901', '#474747', '#5e5e5e', '#919191', '#9807d6', '#ababab', '#e2e2e2']
  if has('nvim')
    hi! link TermCursor Cursor
    hi TermCursorNC ctermfg=254 ctermbg=248 guifg=#e2e2e2 guibg=#ababab guisp=NONE cterm=NONE gui=NONE
    let g:terminal_color_0='#303030'
    let g:terminal_color_1='#b02a01'
    let g:terminal_color_2='#056e07'
    let g:terminal_color_3='#6d5d01'
    let g:terminal_color_4='#0861af'
    let g:terminal_color_5='#b2027e'
    let g:terminal_color_6='#066b5d'
    let g:terminal_color_7='#c6c6c6'
    let g:terminal_color_8='#1b1b1b'
    let g:terminal_color_9='#924901'
    let g:terminal_color_10='#474747'
    let g:terminal_color_11='#5e5e5e'
    let g:terminal_color_12='#919191'
    let g:terminal_color_13='#9807d6'
    let g:terminal_color_14='#ababab'
    let g:terminal_color_15='#e2e2e2'
  endif
  if !has('gui_running') && get(g:, 'galactic_termtrans', 0)
    hi Normal ctermfg=238 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi FoldColumn ctermfg=59 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi Folded ctermfg=59 ctermbg=251 guifg=#5e5e5e guibg=#c6c6c6 guisp=#e2e2e2 cterm=NONE,bold gui=NONE,bold
    hi LineNr ctermfg=248 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi Terminal ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CursorLineNr ctermbg=251 guifg=NONE
  else
    hi Normal ctermfg=238 ctermbg=254 guifg=#474747 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
    hi FoldColumn ctermfg=59 ctermbg=251 guifg=#5e5e5e guibg=#c6c6c6 guisp=NONE cterm=NONE gui=NONE
    hi Folded ctermfg=59 ctermbg=251 guifg=#5e5e5e guibg=#c6c6c6 guisp=#e2e2e2 cterm=NONE,bold gui=NONE,bold
    hi LineNr ctermfg=248 ctermbg=254 guifg=#ababab guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
    hi Terminal ctermfg=fg ctermbg=254 guifg=fg guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
    hi CursorLineNr ctermbg=251 guibg=#c6c6c6
  endif
  if get(g:, "galactic_visibility", "") == "high"
    hi CursorLineNr ctermfg=124 guifg=#b02a01 cterm=bold gui=bold
    if get(g:, 'galactic_old_cursor_style', 0)
      hi Cursor ctermfg=254 ctermbg=59 guifg=#e2e2e2 guibg=#5e5e5e guisp=NONE cterm=NONE gui=NONE
    else
      hi Cursor ctermfg=254 ctermbg=124 guifg=#e2e2e2 guibg=#b02a01 guisp=NONE cterm=NONE gui=NONE
    endif
    hi MatchParen ctermfg=254 ctermbg=246 guifg=#e2e2e2 guibg=#919191 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi NonText ctermfg=124 ctermbg=NONE guifg=#b02a01 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi SpecialKey ctermfg=124 ctermbg=NONE guifg=#b02a01 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi SpellBad ctermfg=126 ctermbg=254 guifg=#b2027e guibg=#e2e2e2 guisp=#9807d6 cterm=NONE,reverse,underline gui=NONE,reverse,undercurl
    hi SpellCap ctermfg=126 ctermbg=254 guifg=#b2027e guibg=#e2e2e2 guisp=#9807d6 cterm=NONE,reverse,underline gui=NONE,reverse,undercurl
    hi SpellLocal ctermfg=58 ctermbg=254 guifg=#6d5d01 guibg=#e2e2e2 guisp=#924901 cterm=NONE,reverse,underline gui=NONE,reverse,undercurl
    hi SpellRare ctermfg=23 ctermbg=254 guifg=#066b5d guibg=#e2e2e2 guisp=#924901 cterm=NONE,reverse,underline gui=NONE,reverse,undercurl
    hi Title ctermfg=130 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  elseif get(g:, "galactic_visibility", "") == "low"
    hi CursorLineNr ctermfg=248 guifg=#ababab cterm=bold gui=bold
    if get(g:, 'galactic_old_cursor_style', 0)
      hi Cursor ctermfg=254 ctermbg=59 guifg=#e2e2e2 guibg=#5e5e5e guisp=NONE cterm=NONE gui=NONE
    else
      hi Cursor ctermfg=254 ctermbg=130 guifg=#e2e2e2 guibg=#924901 guisp=NONE cterm=NONE gui=NONE
    endif
    hi MatchParen ctermfg=124 ctermbg=251 guifg=#b02a01 guibg=#c6c6c6 guisp=NONE cterm=NONE,bold,underline gui=NONE,bold,underline
    hi NonText ctermfg=251 ctermbg=NONE guifg=#c6c6c6 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi SpecialKey ctermfg=251 ctermbg=NONE guifg=#c6c6c6 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi SpellBad ctermfg=126 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=#9807d6 cterm=NONE,underline gui=NONE,undercurl
    hi SpellCap ctermfg=126 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=#9807d6 cterm=NONE,underline gui=NONE,undercurl
    hi SpellLocal ctermfg=58 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=#6d5d01 cterm=NONE,underline gui=NONE,undercurl
    hi SpellRare ctermfg=23 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=#066b5d cterm=NONE,underline gui=NONE,undercurl
    hi Title ctermfg=248 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  else
    hi CursorLineNr ctermfg=59 guifg=#5e5e5e cterm=bold gui=bold
    if get(g:, 'solarized_old_cursor_style', 0)
      hi Cursor ctermfg=254 ctermbg=59 guifg=#e2e2e2 guibg=#5e5e5e guisp=NONE cterm=NONE gui=NONE
    else
      hi Cursor ctermfg=254 ctermbg=130 guifg=#e2e2e2 guibg=#924901 guisp=NONE cterm=NONE gui=NONE
    endif
    hi MatchParen ctermfg=124 ctermbg=251 guifg=#b02a01 guibg=#c6c6c6 guisp=NONE cterm=NONE,bold,underline gui=NONE,bold,underline
    hi NonText ctermfg=246 ctermbg=NONE guifg=#919191 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi SpecialKey ctermfg=246 ctermbg=251 guifg=#919191 guibg=#c6c6c6 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi SpellBad ctermfg=126 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=#9807d6 cterm=NONE,underline gui=NONE,undercurl
    hi SpellCap ctermfg=126 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=#9807d6 cterm=NONE,underline gui=NONE,undercurl
    hi SpellLocal ctermfg=58 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=#6d5d01 cterm=NONE,underline gui=NONE,undercurl
    hi SpellRare ctermfg=23 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=#066b5d cterm=NONE,underline gui=NONE,undercurl
    hi Title ctermfg=130 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  endif
  hi ColorColumn ctermfg=NONE ctermbg=251 guifg=NONE guibg=#c6c6c6 guisp=NONE cterm=NONE gui=NONE
  hi Conceal ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorColumn ctermfg=NONE ctermbg=251 guifg=NONE guibg=#c6c6c6 guisp=NONE cterm=NONE gui=NONE
  hi CursorLine ctermfg=NONE ctermbg=251 guifg=NONE guibg=#c6c6c6 guisp=#474747 cterm=NONE gui=NONE
  if get(g:, "galactic_diffmode", "") == "high"
    hi DiffAdd ctermfg=22 ctermbg=NONE guifg=#056e07 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi DiffChange ctermfg=58 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi DiffDelete ctermfg=124 ctermbg=NONE guifg=#b02a01 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi DiffText ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  elseif get(g:, "galactic_diffmode", "") == "low"
    hi DiffAdd ctermfg=22 ctermbg=NONE guifg=#056e07 guibg=NONE guisp=#056e07 cterm=NONE gui=NONE
    hi DiffChange ctermfg=58 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=#6d5d01 cterm=NONE gui=NONE
    hi DiffDelete ctermfg=124 ctermbg=NONE guifg=#b02a01 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi DiffText ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=#0861af cterm=NONE gui=NONE
  else
    hi DiffAdd ctermfg=22 ctermbg=251 guifg=#056e07 guibg=#c6c6c6 guisp=#056e07 cterm=NONE gui=NONE
    hi DiffChange ctermfg=58 ctermbg=251 guifg=#6d5d01 guibg=#c6c6c6 guisp=#6d5d01 cterm=NONE gui=NONE
    hi DiffDelete ctermfg=124 ctermbg=251 guifg=#b02a01 guibg=#c6c6c6 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi DiffText ctermfg=25 ctermbg=251 guifg=#0861af guibg=#c6c6c6 guisp=#0861af cterm=NONE gui=NONE
  endif
  hi Directory ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi EndOfBuffer ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi ErrorMsg ctermfg=124 ctermbg=254 guifg=#b02a01 guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi IncSearch ctermfg=130 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,standout gui=NONE,standout
  hi ModeMsg ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MoreMsg ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=238 ctermbg=251 guifg=#474747 guibg=#c6c6c6 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=NONE ctermbg=248 guifg=NONE guibg=#ababab guisp=NONE cterm=NONE gui=NONE
  hi PmenuSel ctermfg=251 ctermbg=246 guifg=#c6c6c6 guibg=#919191 guisp=NONE cterm=NONE gui=NONE
  hi PmenuThumb ctermfg=NONE ctermbg=59 guifg=NONE guibg=#5e5e5e guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=23 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi! link QuickFixLine Search
  hi Search ctermfg=58 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SignColumn ctermfg=59 ctermbg=254 guifg=#5e5e5e guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
  if get(g:, "galactic_statusline", "") == "low"
    hi StatusLine ctermfg=248 ctermbg=254 guifg=#ababab guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi StatusLineNC ctermfg=248 ctermbg=238 guifg=#ababab guibg=#474747 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLine ctermfg=248 ctermbg=238 guifg=#ababab guibg=#474747 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLineFill ctermfg=248 ctermbg=238 guifg=#ababab guibg=#474747 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLineSel ctermfg=238 ctermbg=254 guifg=#474747 guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi VertSplit ctermfg=238 ctermbg=248 guifg=#474747 guibg=#ababab guisp=NONE cterm=NONE gui=NONE
    hi WildMenu ctermfg=238 ctermbg=254 guifg=#474747 guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  elseif get(g:, "galactic_statusline", "") == "flat"
    hi StatusLine ctermfg=251 ctermbg=236 guifg=#c6c6c6 guibg=#303030 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi StatusLineNC ctermfg=251 ctermbg=238 guifg=#c6c6c6 guibg=#474747 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLineSel ctermfg=236 ctermbg=251 guifg=#303030 guibg=#c6c6c6 guisp=NONE cterm=NONE gui=NONE
    hi TabLine ctermfg=248 ctermbg=251 guifg=#ababab guibg=#c6c6c6 guisp=NONE cterm=NONE gui=NONE
    hi TabLineFill ctermfg=248 ctermbg=251 guifg=#ababab guibg=#c6c6c6 guisp=NONE cterm=NONE gui=NONE
    hi VertSplit ctermfg=248 ctermbg=251 guifg=#ababab guibg=#c6c6c6 guisp=NONE cterm=NONE gui=NONE
    hi WildMenu ctermfg=246 ctermbg=254 guifg=#919191 guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  else
    hi StatusLine ctermfg=238 ctermbg=251 guifg=#474747 guibg=#c6c6c6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi StatusLineNC ctermfg=246 ctermbg=251 guifg=#919191 guibg=#c6c6c6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLine ctermfg=246 ctermbg=251 guifg=#919191 guibg=#c6c6c6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLineFill ctermfg=246 ctermbg=251 guifg=#919191 guibg=#c6c6c6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLineSel ctermfg=238 ctermbg=251 guifg=#474747 guibg=#c6c6c6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi VertSplit ctermfg=238 ctermbg=248 guifg=#474747 guibg=#ababab guisp=NONE cterm=NONE gui=NONE
    hi WildMenu ctermfg=236 ctermbg=251 guifg=#303030 guibg=#c6c6c6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  endif
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi Visual ctermfg=248 ctermbg=254 guifg=#ababab guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VisualNOS ctermfg=NONE ctermbg=251 guifg=NONE guibg=#c6c6c6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi WarningMsg ctermfg=130 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi! link Boolean Constant
  hi! link Character Constant
  hi Comment ctermfg=248 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
  hi! link Conditional Statement
  hi Constant ctermfg=23 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Define PreProc
  hi! link Debug Special
  hi! link Delimiter Special
  hi Error ctermfg=124 ctermbg=254 guifg=#b02a01 guibg=#e2e2e2 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi! link Exception Statement
  hi! link Float Constant
  hi! link Function Identifier
  hi Identifier ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Include PreProc
  hi! link Keyword Statement
  hi! link Label Statement
  hi! link Macro PreProc
  hi! link Number Constant
  hi! link Operator Statement
  hi! link PreCondit PreProc
  hi PreProc ctermfg=130 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Repeat Statement
  hi Special ctermfg=130 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link SpecialChar Special
  hi! link SpecialComment Special
  hi Statement ctermfg=22 ctermbg=NONE guifg=#056e07 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link StorageClass Type
  hi! link String Constant
  hi! link Structure Type
  hi! link Tag Special
  hi Todo ctermfg=126 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Type ctermfg=58 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Typedef Type
  hi Underlined ctermfg=92 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link lCursor Cursor
  hi CursorIM ctermfg=NONE ctermbg=fg guifg=NONE guibg=fg guisp=NONE cterm=NONE gui=NONE
  hi ToolbarLine ctermfg=NONE ctermbg=251 guifg=NONE guibg=#c6c6c6 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=238 ctermbg=251 guifg=#474747 guibg=#c6c6c6 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi NormalMode ctermfg=238 ctermbg=254 guifg=#474747 guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi InsertMode ctermfg=23 ctermbg=254 guifg=#066b5d guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ReplaceMode ctermfg=130 ctermbg=254 guifg=#924901 guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VisualMode ctermfg=126 ctermbg=254 guifg=#b2027e guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi CommandMode ctermfg=126 ctermbg=254 guifg=#b2027e guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  if get(g:, 'galactic_extra_hi_groups', 0)
    hi! link vimVar Identifier
    hi! link vimFunc Function
    hi! link vimUserFunc Function
    hi! link helpSpecial Special
    hi! link vimSet Normal
    hi! link vimSetEqual Normal
    hi vimCommentString ctermfg=92 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimCommand ctermfg=58 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimCmdSep ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi helpExample ctermfg=238 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi helpOption ctermfg=23 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi helpNote ctermfg=126 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi helpVim ctermfg=126 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi helpHyperTextJump ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi helpHyperTextEntry ctermfg=22 ctermbg=NONE guifg=#056e07 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimIsCommand ctermfg=246 ctermbg=NONE guifg=#919191 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimSynMtchOpt ctermfg=58 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimSynType ctermfg=23 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimHiLink ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimHiGroup ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimGroup ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi! link diffAdded Statement
    hi! link diffLine Identifier
    hi gitcommitComment ctermfg=248 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
    hi! link gitcommitUntracked gitcommitComment
    hi! link gitcommitDiscarded gitcommitComment
    hi! link gitcommitSelected gitcommitComment
    hi gitcommitUnmerged ctermfg=22 ctermbg=NONE guifg=#056e07 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi gitcommitOnBranch ctermfg=248 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi gitcommitBranch ctermfg=126 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi! link gitcommitNoBranch gitcommitBranch
    hi gitcommitdiscardedtype ctermfg=124 ctermbg=NONE guifg=#b02a01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi gitcommitselectedtype ctermfg=22 ctermbg=NONE guifg=#056e07 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi gitcommitHeader ctermfg=248 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi gitcommitUntrackedFile ctermfg=23 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi gitcommitDiscardedFile ctermfg=124 ctermbg=NONE guifg=#b02a01 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi gitcommitSelectedFile ctermfg=22 ctermbg=NONE guifg=#056e07 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi gitcommitUnmergedFile ctermfg=58 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi gitcommitFile ctermfg=59 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi! link gitcommitDiscardedArrow gitcommitDiscardedFile
    hi! link gitcommitSelectedArrow gitcommitSelectedFile
    hi! link gitcommitUnmergedArrow gitcommitUnmergedFile
    hi htmlTag ctermfg=248 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlEndTag ctermfg=248 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlTagN ctermfg=238 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi htmlTagName ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi htmlSpecialTagName ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
    hi htmlArg ctermfg=246 ctermbg=NONE guifg=#919191 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScript ctermfg=58 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link jsFuncCall Function
    hi perlHereDoc ctermfg=238 ctermbg=254 guifg=#474747 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
    hi perlVarPlain ctermfg=58 ctermbg=254 guifg=#6d5d01 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
    hi perlStatementFileDesc ctermfg=23 ctermbg=254 guifg=#066b5d guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
    hi texstatement ctermfg=23 ctermbg=254 guifg=#066b5d guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
    hi texmathzonex ctermfg=58 ctermbg=254 guifg=#6d5d01 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
    hi texmathmatcher ctermfg=58 ctermbg=254 guifg=#6d5d01 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
    hi texreflabel ctermfg=58 ctermbg=254 guifg=#6d5d01 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
    hi rubyDefine ctermfg=238 ctermbg=254 guifg=#474747 guibg=#e2e2e2 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi! link rubySymbol Type
    hi rubyBoolean ctermfg=126 ctermbg=254 guifg=#b2027e guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
    let hs_highlight_boolean=1
    let hs_highlight_delimiters=1
    hi cPreCondit ctermfg=130 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi VarId ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi ConId ctermfg=58 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi hsImport ctermfg=126 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi hsString ctermfg=246 ctermbg=NONE guifg=#919191 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi hsStructure ctermfg=23 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi hs_hlFunctionName ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi hsStatement ctermfg=23 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi hsImportLabel ctermfg=23 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi hs_OpFunctionName ctermfg=58 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi hs_DeclareFunction ctermfg=130 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi hsVarSym ctermfg=23 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi hsType ctermfg=58 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi hsTypedef ctermfg=23 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi hsModuleName ctermfg=22 ctermbg=NONE guifg=#056e07 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link hsImportParams Delimiter
    hi! link hsDelimTypeExport Delimiter
    hi! link hsModuleStartLabel hsStructure
    hi! link hsModuleWhereLabel hsModuleStartLabel
    hi hsNiceOperator ctermfg=23 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi hsniceoperator ctermfg=23 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocTitleBlock ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocTitleBlockTitle ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocTitleComment ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocComment ctermfg=248 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
    hi pandocVerbatimBlock ctermfg=58 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link pandocVerbatimBlockDeep pandocVerbatimBlock
    hi! link pandocCodeBlock pandocVerbatimBlock
    hi! link pandocCodeBlockDelim pandocVerbatimBlock
    hi pandocBlockQuote ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocBlockQuoteLeader1 ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocBlockQuoteLeader2 ctermfg=23 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocBlockQuoteLeader3 ctermfg=58 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocBlockQuoteLeader4 ctermfg=124 ctermbg=NONE guifg=#b02a01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocBlockQuoteLeader5 ctermfg=59 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocBlockQuoteLeader6 ctermfg=248 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocListMarker ctermfg=126 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocListReference ctermfg=126 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocDefinitionBlock ctermfg=92 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocDefinitionTerm ctermfg=92 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE,standout gui=NONE,standout
    hi pandocDefinitionIndctr ctermfg=92 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocEmphasisDefinition ctermfg=92 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
    hi pandocEmphasisNestedDefinition ctermfg=92 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrongEmphasisDefinition ctermfg=92 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrongEmphasisNestedDefinition ctermfg=92 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrongEmphasisEmphasisDefinition ctermfg=92 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrikeoutDefinition ctermfg=92 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi pandocVerbatimInlineDefinition ctermfg=92 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocSuperscriptDefinition ctermfg=92 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocSubscriptDefinition ctermfg=92 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocTable ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocTableStructure ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link pandocTableStructureTop pandocTableStructre
    hi! link pandocTableStructureEnd pandocTableStructre
    hi pandocTableZebraLight ctermfg=25 ctermbg=254 guifg=#0861af guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
    hi pandocTableZebraDark ctermfg=25 ctermbg=251 guifg=#0861af guibg=#c6c6c6 guisp=NONE cterm=NONE gui=NONE
    hi pandocEmphasisTable ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
    hi pandocEmphasisNestedTable ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrongEmphasisTable ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrongEmphasisNestedTable ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrongEmphasisEmphasisTable ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrikeoutTable ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi pandocVerbatimInlineTable ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocSuperscriptTable ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocSubscriptTable ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocHeading ctermfg=130 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocHeadingMarker ctermfg=130 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocEmphasisHeading ctermfg=130 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocEmphasisNestedHeading ctermfg=130 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrongEmphasisHeading ctermfg=130 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrongEmphasisNestedHeading ctermfg=130 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrongEmphasisEmphasisHeading ctermfg=130 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrikeoutHeading ctermfg=130 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi pandocVerbatimInlineHeading ctermfg=130 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocSuperscriptHeading ctermfg=130 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocSubscriptHeading ctermfg=130 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocLinkDelim ctermfg=248 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocLinkLabel ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocLinkText ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocLinkURL ctermfg=246 ctermbg=NONE guifg=#919191 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocLinkTitle ctermfg=246 ctermbg=NONE guifg=#919191 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocLinkTitleDelim ctermfg=248 ctermbg=NONE guifg=#ababab guibg=NONE guisp=#919191 cterm=NONE gui=NONE
    hi pandocLinkDefinition ctermfg=23 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=#919191 cterm=NONE gui=NONE
    hi pandocLinkDefinitionID ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocImageCaption ctermfg=92 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocFootnoteLink ctermfg=22 ctermbg=NONE guifg=#056e07 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocFootnoteDefLink ctermfg=22 ctermbg=NONE guifg=#056e07 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocFootnoteInline ctermfg=22 ctermbg=NONE guifg=#056e07 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocFootnote ctermfg=22 ctermbg=NONE guifg=#056e07 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocCitationDelim ctermfg=126 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocCitation ctermfg=126 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocCitationID ctermfg=126 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocCitationRef ctermfg=126 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocStyleDelim ctermfg=248 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocEmphasis ctermfg=59 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
    hi pandocEmphasisNested ctermfg=59 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrongEmphasis ctermfg=59 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrongEmphasisNested ctermfg=59 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrongEmphasisEmphasis ctermfg=59 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrikeout ctermfg=248 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi pandocVerbatimInline ctermfg=58 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocSuperscript ctermfg=92 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocSubscript ctermfg=92 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocRule ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocRuleLine ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocEscapePair ctermfg=124 ctermbg=NONE guifg=#b02a01 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocCitationRef ctermfg=126 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocNonBreakingSpace ctermfg=124 ctermbg=NONE guifg=#b02a01 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi! link pandocEscapedCharacter pandocEscapePair
    hi! link pandocLineBreak pandocEscapePair
    hi pandocMetadataDelim ctermfg=248 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocMetadata ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocMetadataKey ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocMetadata ctermfg=25 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi! link pandocMetadataTitle pandocMetadata
  endif
  if get(g:, "galactic_term_italics", 0)
    hi Comment cterm=italic
    hi gitcommitComment cterm=italic
    hi htmlSpecialTagName cterm=italic
    hi pandocComment cterm=italic
    hi pandocEmphasisDefinition cterm=italic
    hi pandocEmphasisTable cterm=italic
    hi pandocEmphasis cterm=italic
  endif
  if get(g:, 'galactic_plugin_hi_groups', 0)
    hi NeomakeErrorSign ctermfg=130 ctermbg=254 guifg=#924901 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
    hi NeomakeWarningSign ctermfg=58 ctermbg=254 guifg=#6d5d01 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
    hi NeomakeMessageSign ctermfg=23 ctermbg=254 guifg=#066b5d guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
    hi NeomakeNeomakeInfoSign ctermfg=22 ctermbg=254 guifg=#056e07 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
    hi NeomakeInfoSign ctermfg=22 ctermbg=254 guifg=#056e07 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
    hi GitGutterAdd ctermfg=22 ctermbg=254 guifg=#056e07 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
    hi GitGutterChange ctermfg=58 ctermbg=254 guifg=#6d5d01 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
    hi GitGutterDelete ctermfg=124 ctermbg=254 guifg=#b02a01 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
    hi GitGutterChangeDelete ctermfg=124 ctermbg=254 guifg=#b02a01 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
    hi SignifySignAdd ctermfg=22 ctermbg=254 guifg=#056e07 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
    hi SignifySignChange ctermfg=58 ctermbg=254 guifg=#6d5d01 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
    hi SignifySignDelete ctermfg=124 ctermbg=254 guifg=#b02a01 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
    hi SignifySignChangeDelete ctermfg=124 ctermbg=254 guifg=#b02a01 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
    hi ALEErrorSign ctermfg=130 ctermbg=254 guifg=#924901 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
    hi ALEWarningSign ctermfg=58 ctermbg=254 guifg=#6d5d01 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
  endif
  finish
endif

" 16-color variant
if get(g:, 'galactic_termtrans', 1)
  let g:galactic_termtrans=1
endif
if get(g:, 'galactic_extra_hi_groups', 1)
  let g:galactic_extra_hi_groups=1
endif
if get(g:, 'galactic_plugin_hi_groups', 1)
  let g:galactic_plugin_hi_groups=1
endif
if get(g:, 'galactic_term_italics', 1)
  let g:galactic_term_italics=1
endif

if &background ==# 'dark'
  let g:terminal_ansi_colors = ['#303030', '#ff511a', '#4ca340', '#a68f01', '#3294ff', '#fe3bb9', '#07a38f', '#c6c6c6',
        \ '#1b1b1b', '#dd7202', '#474747', '#5e5e5e', '#919191', '#cc62fe', '#ababab', '#e2e2e2']
  if has('nvim')
    hi! link TermCursor Cursor
    hi TermCursorNC ctermfg=8 ctermbg=10 guifg=#1b1b1b guibg=#474747 guisp=NONE cterm=NONE gui=NONE
    let g:terminal_color_0='#303030'
    let g:terminal_color_1='#ff511a'
    let g:terminal_color_2='#4ca340'
    let g:terminal_color_3='#a68f01'
    let g:terminal_color_4='#3294ff'
    let g:terminal_color_5='#fe3bb9'
    let g:terminal_color_6='#07a38f'
    let g:terminal_color_7='#c6c6c6'
    let g:terminal_color_8='#1b1b1b'
    let g:terminal_color_9='#dd7202'
    let g:terminal_color_10='#474747'
    let g:terminal_color_11='#5e5e5e'
    let g:terminal_color_12='#919191'
    let g:terminal_color_13='#cc62fe'
    let g:terminal_color_14='#ababab'
    let g:terminal_color_15='#e2e2e2'
  endif
  if !has('gui_running') && get(g:, 'galactic_termtrans', 0)
    hi Normal ctermfg=14 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi FoldColumn ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi Folded ctermfg=fg ctermbg=8 guifg=fg guibg=#1b1b1b guisp=#1b1b1b cterm=NONE,bold gui=NONE,bold
    hi LineNr ctermfg=10 ctermbg=8 guifg=#474747 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
    hi Terminal ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CursorLineNr ctermbg=8 guibg=#1b1b1b guifg=NONE
  else
    hi Normal ctermfg=14 ctermbg=8 guifg=#ababab guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
    hi FoldColumn ctermfg=12 ctermbg=0 guifg=#919191 guibg=#303030 guisp=NONE cterm=NONE gui=NONE
    hi Folded ctermfg=12 ctermbg=0 guifg=#919191 guibg=#303030 guisp=#1b1b1b cterm=NONE,bold gui=NONE,bold
    hi LineNr ctermfg=10 ctermbg=8 guifg=#474747 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
    hi Terminal ctermfg=fg ctermbg=8 guifg=fg guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
    hi CursorLineNr ctermbg=8 guibg=#1b1b1b
  endif
  if get(g:, "galactic_visibility", "") == "high"
    hi CursorLineNr ctermfg=9 guifg=#dd7202 cterm=bold gui=bold
    hi NonText ctermfg=9 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi SpecialKey ctermfg=9 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi SpellBad ctermfg=13 ctermbg=15 guifg=#cc62fe guibg=#e2e2e2 guisp=#ff511a cterm=NONE,reverse,underline gui=NONE,reverse,undercurl
    hi SpellCap ctermfg=13 ctermbg=15 guifg=#cc62fe guibg=#e2e2e2 guisp=#ff511a cterm=NONE,reverse,underline gui=NONE,reverse,undercurl
    hi SpellLocal ctermfg=3 ctermbg=15 guifg=#a68f01 guibg=#e2e2e2 guisp=#ff511a cterm=NONE,reverse,underline gui=NONE,reverse,undercurl
    hi SpellRare ctermfg=6 ctermbg=15 guifg=#07a38f guibg=#e2e2e2 guisp=#ff511a cterm=NONE,reverse,underline gui=NONE,reverse,undercurl
    hi Title ctermfg=3 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  elseif get(g:, "galactic_visibility", "") == "low"
    hi CursorLineNr ctermfg=10 guifg=#474747 cterm=bold gui=bold
    hi NonText ctermfg=0 ctermbg=NONE guifg=#303030 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi SpecialKey ctermfg=0 ctermbg=NONE guifg=#303030 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi SpellBad ctermfg=13 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=#cc62fe cterm=NONE,underline gui=NONE,undercurl
    hi SpellCap ctermfg=13 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=#cc62fe cterm=NONE,underline gui=NONE,undercurl
    hi SpellLocal ctermfg=3 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=#a68f01 cterm=NONE,underline gui=NONE,undercurl
    hi SpellRare ctermfg=6 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=#07a38f cterm=NONE,underline gui=NONE,undercurl
    hi Title ctermfg=10 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  else
    hi CursorLineNr ctermfg=12 guifg=#919191 cterm=bold gui=bold
    hi NonText ctermfg=11 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi SpecialKey ctermfg=11 ctermbg=0 guifg=#5e5e5e guibg=#303030 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi SpellBad ctermfg=13 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=#cc62fe cterm=NONE,underline gui=NONE,undercurl
    hi SpellCap ctermfg=13 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=#cc62fe cterm=NONE,underline gui=NONE,undercurl
    hi SpellLocal ctermfg=3 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=#a68f01 cterm=NONE,underline gui=NONE,undercurl
    hi SpellRare ctermfg=6 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=#07a38f cterm=NONE,underline gui=NONE,undercurl
    hi Title ctermfg=3 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  endif
  hi ColorColumn ctermfg=NONE ctermbg=0 guifg=NONE guibg=#303030 guisp=NONE cterm=NONE gui=NONE
  hi Conceal ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
  if get(g:, 'galactic_old_cursor_style', 0)
    hi Cursor ctermfg=8 ctermbg=12 guifg=#1b1b1b guibg=#919191 guisp=NONE cterm=NONE gui=NONE
  else
    hi Cursor ctermfg=15 ctermbg=4 guifg=#e2e2e2 guibg=#3294ff guisp=NONE cterm=NONE gui=NONE
  endif
  hi CursorColumn ctermfg=NONE ctermbg=0 guifg=NONE guibg=#303030 guisp=NONE cterm=NONE gui=NONE
  hi CursorLine ctermfg=NONE ctermbg=0 guifg=NONE guibg=#303030 guisp=#ababab cterm=NONE gui=NONE
  if get(g:, "galactic_diffmode", "") == "high"
    hi DiffAdd ctermfg=2 ctermbg=NONE guifg=#4ca340 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi DiffChange ctermfg=3 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi DiffDelete ctermfg=1 ctermbg=NONE guifg=#ff511a guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi DiffText ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  elseif get(g:, "galactic_diffmode", "") == "low"
    hi DiffAdd ctermfg=2 ctermbg=NONE guifg=#4ca340 guibg=NONE guisp=#4ca340 cterm=NONE gui=NONE
    hi DiffChange ctermfg=3 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=#a68f01 cterm=NONE gui=NONE
    hi DiffDelete ctermfg=1 ctermbg=NONE guifg=#ff511a guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi DiffText ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=#3294ff cterm=NONE gui=NONE
  else
    hi DiffAdd ctermfg=2 ctermbg=0 guifg=#4ca340 guibg=#303030 guisp=#4ca340 cterm=NONE gui=NONE
    hi DiffChange ctermfg=3 ctermbg=0 guifg=#a68f01 guibg=#303030 guisp=#a68f01 cterm=NONE gui=NONE
    hi DiffDelete ctermfg=1 ctermbg=0 guifg=#ff511a guibg=#303030 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi DiffText ctermfg=4 ctermbg=0 guifg=#3294ff guibg=#303030 guisp=#3294ff cterm=NONE gui=NONE
  endif
  hi Directory ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi EndOfBuffer ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi ErrorMsg ctermfg=1 ctermbg=15 guifg=#ff511a guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi IncSearch ctermfg=9 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,standout gui=NONE,standout
  hi MatchParen ctermfg=15 ctermbg=0 guifg=#e2e2e2 guibg=#303030 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi ModeMsg ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MoreMsg ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=14 ctermbg=0 guifg=#ababab guibg=#303030 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=NONE ctermbg=10 guifg=NONE guibg=#474747 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSel ctermfg=7 ctermbg=11 guifg=#c6c6c6 guibg=#5e5e5e guisp=NONE cterm=NONE gui=NONE
  hi PmenuThumb ctermfg=NONE ctermbg=12 guifg=NONE guibg=#919191 guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=6 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi! link QuickFixLine Search
  hi Search ctermfg=3 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SignColumn ctermfg=12 ctermbg=8 guifg=#919191 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
  if get(g:, "galactic_statusline", "") == "low"
    hi StatusLine ctermfg=10 ctermbg=7 guifg=#474747 guibg=#c6c6c6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi StatusLineNC ctermfg=10 ctermbg=0 guifg=#474747 guibg=#303030 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLine ctermfg=10 ctermbg=0 guifg=#474747 guibg=#303030 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLineFill ctermfg=10 ctermbg=0 guifg=#474747 guibg=#303030 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLineSel ctermfg=12 ctermbg=15 guifg=#919191 guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi VertSplit ctermfg=0 ctermbg=10 guifg=#303030 guibg=#474747 guisp=NONE cterm=NONE gui=NONE
  elseif get(g:, "galactic_statusline", "") == "flat"
    hi StatusLine ctermfg=0 ctermbg=7 guifg=#303030 guibg=#c6c6c6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi StatusLineNC ctermfg=0 ctermbg=14 guifg=#303030 guibg=#ababab guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLineSel ctermfg=7 ctermbg=0 guifg=#c6c6c6 guibg=#303030 guisp=NONE cterm=NONE gui=NONE
    hi TabLine ctermfg=10 ctermbg=0 guifg=#474747 guibg=#303030 guisp=NONE cterm=NONE gui=NONE
    hi TabLineFill ctermfg=10 ctermbg=0 guifg=#474747 guibg=#303030 guisp=NONE cterm=NONE gui=NONE
    hi VertSplit ctermfg=10 ctermbg=0 guifg=#474747 guibg=#303030 guisp=NONE cterm=NONE gui=NONE
  else
    hi StatusLine ctermfg=12 ctermbg=0 guifg=#919191 guibg=#303030 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi StatusLineNC ctermfg=10 ctermbg=0 guifg=#474747 guibg=#303030 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLine ctermfg=10 ctermbg=0 guifg=#474747 guibg=#303030 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLineFill ctermfg=10 ctermbg=0 guifg=#474747 guibg=#303030 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLineSel ctermfg=12 ctermbg=0 guifg=#919191 guibg=#303030 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi VertSplit ctermfg=0 ctermbg=10 guifg=#303030 guibg=#474747 guisp=NONE cterm=NONE gui=NONE
  endif
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi Visual ctermfg=10 ctermbg=8 guifg=#474747 guibg=#1b1b1b guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VisualNOS ctermfg=NONE ctermbg=0 guifg=NONE guibg=#303030 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi WarningMsg ctermfg=9 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi WildMenu ctermfg=7 ctermbg=0 guifg=#c6c6c6 guibg=#303030 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi! link Boolean Constant
  hi! link Character Constant
  hi Comment ctermfg=10 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
  hi! link Conditional Statement
  hi Constant ctermfg=6 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Define PreProc
  hi! link Debug Special
  hi! link Delimiter Special
  hi Error ctermfg=1 ctermbg=15 guifg=#ff511a guibg=#e2e2e2 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi! link Exception Statement
  hi! link Float Constant
  hi! link Function Identifier
  hi Identifier ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Include PreProc
  hi! link Keyword Statement
  hi! link Label Statement
  hi! link Macro PreProc
  hi! link Number Constant
  hi! link Operator Statement
  hi! link PreCondit PreProc
  hi PreProc ctermfg=9 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Repeat Statement
  hi Special ctermfg=1 ctermbg=NONE guifg=#ff511a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link SpecialChar Special
  hi! link SpecialComment Special
  hi Statement ctermfg=2 ctermbg=NONE guifg=#4ca340 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link StorageClass Type
  hi! link String Constant
  hi! link Structure Type
  hi! link Tag Special
  hi Todo ctermfg=5 ctermbg=NONE guifg=#fe3bb9 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Type ctermfg=3 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Typedef Type
  hi Underlined ctermfg=13 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link lCursor Cursor
  hi CursorIM ctermfg=NONE ctermbg=fg guifg=NONE guibg=fg guisp=NONE cterm=NONE gui=NONE
  hi ToolbarLine ctermfg=NONE ctermbg=0 guifg=NONE guibg=#303030 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=14 ctermbg=0 guifg=#ababab guibg=#303030 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi NormalMode ctermfg=12 ctermbg=15 guifg=#919191 guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi InsertMode ctermfg=6 ctermbg=15 guifg=#07a38f guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ReplaceMode ctermfg=9 ctermbg=15 guifg=#dd7202 guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VisualMode ctermfg=5 ctermbg=15 guifg=#fe3bb9 guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi CommandMode ctermfg=5 ctermbg=15 guifg=#fe3bb9 guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  if get(g:, 'galactic_extra_hi_groups', 0)
    hi! link vimVar Identifier
    hi! link vimFunc Function
    hi! link vimUserFunc Function
    hi! link helpSpecial Special
    hi! link vimSet Normal
    hi! link vimSetEqual Normal
    hi vimCommentString ctermfg=13 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimCommand ctermfg=3 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimCmdSep ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi helpExample ctermfg=14 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi helpOption ctermfg=6 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi helpNote ctermfg=5 ctermbg=NONE guifg=#fe3bb9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi helpVim ctermfg=5 ctermbg=NONE guifg=#fe3bb9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi helpHyperTextJump ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi helpHyperTextEntry ctermfg=2 ctermbg=NONE guifg=#4ca340 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimIsCommand ctermfg=11 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimSynMtchOpt ctermfg=3 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimSynType ctermfg=6 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimHiLink ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimHiGroup ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimGroup ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi! link diffAdded Statement
    hi! link diffLine Identifier
    hi gitcommitComment ctermfg=10 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
    hi! link gitcommitUntracked gitcommitComment
    hi! link gitcommitDiscarded gitcommitComment
    hi! link gitcommitSelected gitcommitComment
    hi gitcommitUnmerged ctermfg=2 ctermbg=NONE guifg=#4ca340 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi gitcommitOnBranch ctermfg=10 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi gitcommitBranch ctermfg=5 ctermbg=NONE guifg=#fe3bb9 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi! link gitcommitNoBranch gitcommitBranch
    hi gitcommitdiscardedtype ctermfg=1 ctermbg=NONE guifg=#ff511a guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi gitcommitselectedtype ctermfg=2 ctermbg=NONE guifg=#4ca340 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi gitcommitHeader ctermfg=10 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi gitcommitUntrackedFile ctermfg=6 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi gitcommitDiscardedFile ctermfg=1 ctermbg=NONE guifg=#ff511a guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi gitcommitSelectedFile ctermfg=2 ctermbg=NONE guifg=#4ca340 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi gitcommitUnmergedFile ctermfg=3 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi gitcommitFile ctermfg=12 ctermbg=NONE guifg=#919191 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi! link gitcommitDiscardedArrow gitcommitDiscardedFile
    hi! link gitcommitSelectedArrow gitcommitSelectedFile
    hi! link gitcommitUnmergedArrow gitcommitUnmergedFile
    hi htmlTag ctermfg=10 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlEndTag ctermfg=10 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlTagN ctermfg=14 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi htmlTagName ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi htmlSpecialTagName ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
    hi htmlArg ctermfg=11 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScript ctermfg=3 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link jsFuncCall Function
    hi perlHereDoc ctermfg=14 ctermbg=8 guifg=#ababab guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
    hi perlVarPlain ctermfg=3 ctermbg=8 guifg=#a68f01 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
    hi perlStatementFileDesc ctermfg=6 ctermbg=8 guifg=#07a38f guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
    hi texstatement ctermfg=6 ctermbg=8 guifg=#07a38f guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
    hi texmathzonex ctermfg=3 ctermbg=8 guifg=#a68f01 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
    hi texmathmatcher ctermfg=3 ctermbg=8 guifg=#a68f01 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
    hi texreflabel ctermfg=3 ctermbg=8 guifg=#a68f01 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
    hi rubyDefine ctermfg=14 ctermbg=8 guifg=#ababab guibg=#1b1b1b guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi! link rubySymbol Type
    hi rubyBoolean ctermfg=5 ctermbg=8 guifg=#fe3bb9 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
    let hs_highlight_boolean=1
    let hs_highlight_delimiters=1
    hi cPreCondit ctermfg=9 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi VarId ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi ConId ctermfg=3 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi hsImport ctermfg=5 ctermbg=NONE guifg=#fe3bb9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi hsString ctermfg=11 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi hsStructure ctermfg=6 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi hs_hlFunctionName ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi hsStatement ctermfg=6 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi hsImportLabel ctermfg=6 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi hs_OpFunctionName ctermfg=3 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi hs_DeclareFunction ctermfg=9 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi hsVarSym ctermfg=6 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi hsType ctermfg=3 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi hsTypedef ctermfg=6 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi hsModuleName ctermfg=2 ctermbg=NONE guifg=#4ca340 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link hsImportParams Delimiter
    hi! link hsDelimTypeExport Delimiter
    hi! link hsModuleStartLabel hsStructure
    hi! link hsModuleWhereLabel hsModuleStartLabel
    hi hsNiceOperator ctermfg=6 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi hsniceoperator ctermfg=6 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocTitleBlock ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocTitleBlockTitle ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocTitleComment ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocComment ctermfg=10 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
    hi pandocVerbatimBlock ctermfg=3 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link pandocVerbatimBlockDeep pandocVerbatimBlock
    hi! link pandocCodeBlock pandocVerbatimBlock
    hi! link pandocCodeBlockDelim pandocVerbatimBlock
    hi pandocBlockQuote ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocBlockQuoteLeader1 ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocBlockQuoteLeader2 ctermfg=6 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocBlockQuoteLeader3 ctermfg=3 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocBlockQuoteLeader4 ctermfg=1 ctermbg=NONE guifg=#ff511a guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocBlockQuoteLeader5 ctermfg=12 ctermbg=NONE guifg=#919191 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocBlockQuoteLeader6 ctermfg=10 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocListMarker ctermfg=5 ctermbg=NONE guifg=#fe3bb9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocListReference ctermfg=5 ctermbg=NONE guifg=#fe3bb9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocDefinitionBlock ctermfg=13 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocDefinitionTerm ctermfg=13 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE,standout gui=NONE,standout
    hi pandocDefinitionIndctr ctermfg=13 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocEmphasisDefinition ctermfg=13 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
    hi pandocEmphasisNestedDefinition ctermfg=13 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrongEmphasisDefinition ctermfg=13 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrongEmphasisNestedDefinition ctermfg=13 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrongEmphasisEmphasisDefinition ctermfg=13 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrikeoutDefinition ctermfg=13 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi pandocVerbatimInlineDefinition ctermfg=13 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocSuperscriptDefinition ctermfg=13 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocSubscriptDefinition ctermfg=13 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocTable ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocTableStructure ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link pandocTableStructureTop pandocTableStructre
    hi! link pandocTableStructureEnd pandocTableStructre
    hi pandocTableZebraLight ctermfg=4 ctermbg=8 guifg=#3294ff guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
    hi pandocTableZebraDark ctermfg=4 ctermbg=0 guifg=#3294ff guibg=#303030 guisp=NONE cterm=NONE gui=NONE
    hi pandocEmphasisTable ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
    hi pandocEmphasisNestedTable ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrongEmphasisTable ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrongEmphasisNestedTable ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrongEmphasisEmphasisTable ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrikeoutTable ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi pandocVerbatimInlineTable ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocSuperscriptTable ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocSubscriptTable ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocHeading ctermfg=9 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocHeadingMarker ctermfg=9 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocEmphasisHeading ctermfg=9 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocEmphasisNestedHeading ctermfg=9 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrongEmphasisHeading ctermfg=9 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrongEmphasisNestedHeading ctermfg=9 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrongEmphasisEmphasisHeading ctermfg=9 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrikeoutHeading ctermfg=9 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi pandocVerbatimInlineHeading ctermfg=9 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocSuperscriptHeading ctermfg=9 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocSubscriptHeading ctermfg=9 ctermbg=NONE guifg=#dd7202 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocLinkDelim ctermfg=10 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocLinkLabel ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocLinkText ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocLinkURL ctermfg=11 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocLinkTitle ctermfg=11 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocLinkTitleDelim ctermfg=10 ctermbg=NONE guifg=#474747 guibg=NONE guisp=#5e5e5e cterm=NONE gui=NONE
    hi pandocLinkDefinition ctermfg=6 ctermbg=NONE guifg=#07a38f guibg=NONE guisp=#5e5e5e cterm=NONE gui=NONE
    hi pandocLinkDefinitionID ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocImageCaption ctermfg=13 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocFootnoteLink ctermfg=2 ctermbg=NONE guifg=#4ca340 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocFootnoteDefLink ctermfg=2 ctermbg=NONE guifg=#4ca340 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocFootnoteInline ctermfg=2 ctermbg=NONE guifg=#4ca340 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocFootnote ctermfg=2 ctermbg=NONE guifg=#4ca340 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocCitationDelim ctermfg=5 ctermbg=NONE guifg=#fe3bb9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocCitation ctermfg=5 ctermbg=NONE guifg=#fe3bb9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocCitationID ctermfg=5 ctermbg=NONE guifg=#fe3bb9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocCitationRef ctermfg=5 ctermbg=NONE guifg=#fe3bb9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocStyleDelim ctermfg=10 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocEmphasis ctermfg=12 ctermbg=NONE guifg=#919191 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
    hi pandocEmphasisNested ctermfg=12 ctermbg=NONE guifg=#919191 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrongEmphasis ctermfg=12 ctermbg=NONE guifg=#919191 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrongEmphasisNested ctermfg=12 ctermbg=NONE guifg=#919191 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrongEmphasisEmphasis ctermfg=12 ctermbg=NONE guifg=#919191 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocStrikeout ctermfg=10 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi pandocVerbatimInline ctermfg=3 ctermbg=NONE guifg=#a68f01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocSuperscript ctermfg=13 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocSubscript ctermfg=13 ctermbg=NONE guifg=#cc62fe guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocRule ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocRuleLine ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocEscapePair ctermfg=1 ctermbg=NONE guifg=#ff511a guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi pandocCitationRef ctermfg=5 ctermbg=NONE guifg=#fe3bb9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocNonBreakingSpace ctermfg=1 ctermbg=NONE guifg=#ff511a guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi! link pandocEscapedCharacter pandocEscapePair
    hi! link pandocLineBreak pandocEscapePair
    hi pandocMetadataDelim ctermfg=10 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocMetadata ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocMetadataKey ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pandocMetadata ctermfg=4 ctermbg=NONE guifg=#3294ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi! link pandocMetadataTitle pandocMetadata
  endif
  if get(g:, "galactic_term_italics", 0)
    hi Comment cterm=italic
    hi gitcommitComment cterm=italic
    hi htmlSpecialTagName cterm=italic
    hi pandocComment cterm=italic
    hi pandocEmphasisDefinition cterm=italic
    hi pandocEmphasisTable cterm=italic
    hi pandocEmphasis cterm=italic
  endif
  if get(g:, 'galactic_plugin_hi_groups', 0)
    hi NeomakeErrorSign ctermfg=9 ctermbg=8 guifg=#dd7202 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
    hi NeomakeWarningSign ctermfg=3 ctermbg=8 guifg=#a68f01 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
    hi NeomakeMessageSign ctermfg=6 ctermbg=8 guifg=#07a38f guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
    hi NeomakeNeomakeInfoSign ctermfg=2 ctermbg=8 guifg=#4ca340 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
    hi NeomakeInfoSign ctermfg=2 ctermbg=8 guifg=#4ca340 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
    hi GitGutterAdd ctermfg=2 ctermbg=8 guifg=#4ca340 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
    hi GitGutterChange ctermfg=3 ctermbg=8 guifg=#a68f01 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
    hi GitGutterDelete ctermfg=1 ctermbg=8 guifg=#ff511a guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
    hi GitGutterChangeDelete ctermfg=1 ctermbg=8 guifg=#ff511a guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
    hi SignifySignAdd ctermfg=2 ctermbg=8 guifg=#4ca340 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
    hi SignifySignChange ctermfg=3 ctermbg=8 guifg=#a68f01 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
    hi SignifySignDelete ctermfg=1 ctermbg=8 guifg=#ff511a guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
    hi SignifySignChangeDelete ctermfg=1 ctermbg=8 guifg=#ff511a guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
    hi ALEErrorSign ctermfg=9 ctermbg=8 guifg=#dd7202 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
    hi ALEWarningSign ctermfg=3 ctermbg=8 guifg=#a68f01 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
  endif
  finish
endif

let g:terminal_ansi_colors = ['#303030', '#b02a01', '#056e07', '#6d5d01', '#0861af', '#b2027e', '#066b5d', '#c6c6c6',
      \ '#1b1b1b', '#924901', '#474747', '#5e5e5e', '#919191', '#9807d6', '#ababab', '#e2e2e2']
if has('nvim')
  hi! link TermCursor Cursor
  hi TermCursorNC ctermfg=15 ctermbg=14 guifg=#e2e2e2 guibg=#ababab guisp=NONE cterm=NONE gui=NONE
  let g:terminal_color_0='#303030'
  let g:terminal_color_1='#b02a01'
  let g:terminal_color_2='#056e07'
  let g:terminal_color_3='#6d5d01'
  let g:terminal_color_4='#0861af'
  let g:terminal_color_5='#b2027e'
  let g:terminal_color_6='#066b5d'
  let g:terminal_color_7='#c6c6c6'
  let g:terminal_color_8='#1b1b1b'
  let g:terminal_color_9='#924901'
  let g:terminal_color_10='#474747'
  let g:terminal_color_11='#5e5e5e'
  let g:terminal_color_12='#919191'
  let g:terminal_color_13='#9807d6'
  let g:terminal_color_14='#ababab'
  let g:terminal_color_15='#e2e2e2'
endif
if !has('gui_running') && get(g:, 'galactic_termtrans', 0)
  hi Normal ctermfg=10 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=11 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Folded ctermfg=11 ctermbg=7 guifg=#5e5e5e guibg=#c6c6c6 guisp=#e2e2e2 cterm=NONE,bold gui=NONE,bold
  hi LineNr ctermfg=14 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermbg=7 guifg=NONE
else
  hi Normal ctermfg=10 ctermbg=8 guifg=#474747 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=11 ctermbg=7 guifg=#5e5e5e guibg=#c6c6c6 guisp=NONE cterm=NONE gui=NONE
  hi Folded ctermfg=11 ctermbg=7 guifg=#5e5e5e guibg=#c6c6c6 guisp=#e2e2e2 cterm=NONE,bold gui=NONE,bold
  hi LineNr ctermfg=14 ctermbg=15 guifg=#ababab guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=fg ctermbg=8 guifg=fg guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermbg=7 guibg=#c6c6c6
endif
if get(g:, "galactic_visibility", "") == "high"
  hi CursorLineNr ctermfg=1 guifg=#b02a01 cterm=bold gui=bold
  if get(g:, 'galactic_old_cursor_style', 0)
    hi Cursor ctermfg=15 ctermbg=11 guifg=#e2e2e2 guibg=#5e5e5e guisp=NONE cterm=NONE gui=NONE
  else
    hi Cursor ctermfg=15 ctermbg=1 guifg=#e2e2e2 guibg=#b02a01 guisp=NONE cterm=NONE gui=NONE
  endif
  hi MatchParen ctermfg=15 ctermbg=12 guifg=#e2e2e2 guibg=#919191 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi NonText ctermfg=1 ctermbg=NONE guifg=#b02a01 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpecialKey ctermfg=1 ctermbg=NONE guifg=#b02a01 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SpellBad ctermfg=5 ctermbg=15 guifg=#b2027e guibg=#e2e2e2 guisp=#9807d6 cterm=NONE,reverse,underline gui=NONE,reverse,undercurl
  hi SpellCap ctermfg=5 ctermbg=15 guifg=#b2027e guibg=#e2e2e2 guisp=#9807d6 cterm=NONE,reverse,underline gui=NONE,reverse,undercurl
  hi SpellLocal ctermfg=3 ctermbg=15 guifg=#6d5d01 guibg=#e2e2e2 guisp=#924901 cterm=NONE,reverse,underline gui=NONE,reverse,undercurl
  hi SpellRare ctermfg=6 ctermbg=15 guifg=#066b5d guibg=#e2e2e2 guisp=#924901 cterm=NONE,reverse,underline gui=NONE,reverse,undercurl
  hi Title ctermfg=9 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
elseif get(g:, "galactic_visibility", "") == "low"
  hi CursorLineNr ctermfg=14 guifg=#ababab cterm=bold gui=bold
  if get(g:, 'galactic_old_cursor_style', 0)
    hi Cursor ctermfg=15 ctermbg=11 guifg=#e2e2e2 guibg=#5e5e5e guisp=NONE cterm=NONE gui=NONE
  else
    hi Cursor ctermfg=15 ctermbg=9 guifg=#e2e2e2 guibg=#924901 guisp=NONE cterm=NONE gui=NONE
  endif
  hi MatchParen ctermfg=1 ctermbg=7 guifg=#b02a01 guibg=#c6c6c6 guisp=NONE cterm=NONE,bold,underline gui=NONE,bold,underline
  hi NonText ctermfg=7 ctermbg=NONE guifg=#c6c6c6 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpecialKey ctermfg=7 ctermbg=NONE guifg=#c6c6c6 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpellBad ctermfg=5 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=#9807d6 cterm=NONE,underline gui=NONE,undercurl
  hi SpellCap ctermfg=5 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=#9807d6 cterm=NONE,underline gui=NONE,undercurl
  hi SpellLocal ctermfg=3 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=#6d5d01 cterm=NONE,underline gui=NONE,undercurl
  hi SpellRare ctermfg=6 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=#066b5d cterm=NONE,underline gui=NONE,undercurl
  hi Title ctermfg=14 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
else
  hi CursorLineNr ctermfg=11 guifg=#5e5e5e cterm=bold gui=bold
  if get(g:, 'solarized_old_cursor_style', 0)
    hi Cursor ctermfg=15 ctermbg=11 guifg=#e2e2e2 guibg=#5e5e5e guisp=NONE cterm=NONE gui=NONE
  else
    hi Cursor ctermfg=15 ctermbg=9 guifg=#e2e2e2 guibg=#924901 guisp=NONE cterm=NONE gui=NONE
  endif
  hi MatchParen ctermfg=1 ctermbg=7 guifg=#b02a01 guibg=#c6c6c6 guisp=NONE cterm=NONE,bold,underline gui=NONE,bold,underline
  hi NonText ctermfg=12 ctermbg=NONE guifg=#919191 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpecialKey ctermfg=12 ctermbg=7 guifg=#919191 guibg=#c6c6c6 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpellBad ctermfg=5 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=#9807d6 cterm=NONE,underline gui=NONE,undercurl
  hi SpellCap ctermfg=5 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=#9807d6 cterm=NONE,underline gui=NONE,undercurl
  hi SpellLocal ctermfg=3 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=#6d5d01 cterm=NONE,underline gui=NONE,undercurl
  hi SpellRare ctermfg=6 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=#066b5d cterm=NONE,underline gui=NONE,undercurl
  hi Title ctermfg=9 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
endif
hi ColorColumn ctermfg=NONE ctermbg=7 guifg=NONE guibg=#c6c6c6 guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=7 guifg=NONE guibg=#c6c6c6 guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=7 guifg=NONE guibg=#c6c6c6 guisp=#474747 cterm=NONE gui=NONE
if get(g:, "galactic_diffmode", "") == "high"
  hi DiffAdd ctermfg=2 ctermbg=NONE guifg=#056e07 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffChange ctermfg=3 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffDelete ctermfg=1 ctermbg=NONE guifg=#b02a01 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffText ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
elseif get(g:, "galactic_diffmode", "") == "low"
  hi DiffAdd ctermfg=2 ctermbg=NONE guifg=#056e07 guibg=NONE guisp=#056e07 cterm=NONE gui=NONE
  hi DiffChange ctermfg=3 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=#6d5d01 cterm=NONE gui=NONE
  hi DiffDelete ctermfg=1 ctermbg=NONE guifg=#b02a01 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi DiffText ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=#0861af cterm=NONE gui=NONE
else
  hi DiffAdd ctermfg=2 ctermbg=7 guifg=#056e07 guibg=#c6c6c6 guisp=#056e07 cterm=NONE gui=NONE
  hi DiffChange ctermfg=3 ctermbg=7 guifg=#6d5d01 guibg=#c6c6c6 guisp=#6d5d01 cterm=NONE gui=NONE
  hi DiffDelete ctermfg=1 ctermbg=7 guifg=#b02a01 guibg=#c6c6c6 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi DiffText ctermfg=4 ctermbg=7 guifg=#0861af guibg=#c6c6c6 guisp=#0861af cterm=NONE gui=NONE
endif
hi Directory ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=1 ctermbg=15 guifg=#b02a01 guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi IncSearch ctermfg=9 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,standout gui=NONE,standout
hi ModeMsg ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=10 ctermbg=7 guifg=#474747 guibg=#c6c6c6 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=NONE ctermbg=14 guifg=NONE guibg=#ababab guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=7 ctermbg=12 guifg=#c6c6c6 guibg=#919191 guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=NONE ctermbg=11 guifg=NONE guibg=#5e5e5e guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=6 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi! link QuickFixLine Search
hi Search ctermfg=3 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SignColumn ctermfg=11 ctermbg=15 guifg=#5e5e5e guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
if get(g:, "galactic_statusline", "") == "low"
  hi StatusLine ctermfg=14 ctermbg=15 guifg=#ababab guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineNC ctermfg=14 ctermbg=10 guifg=#ababab guibg=#474747 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=14 ctermbg=10 guifg=#ababab guibg=#474747 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLineFill ctermfg=14 ctermbg=10 guifg=#ababab guibg=#474747 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLineSel ctermfg=10 ctermbg=15 guifg=#474747 guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VertSplit ctermfg=10 ctermbg=14 guifg=#474747 guibg=#ababab guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=10 ctermbg=15 guifg=#474747 guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
elseif get(g:, "galactic_statusline", "") == "flat"
  hi StatusLine ctermfg=7 ctermbg=0 guifg=#c6c6c6 guibg=#303030 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineNC ctermfg=7 ctermbg=10 guifg=#c6c6c6 guibg=#474747 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLineSel ctermfg=0 ctermbg=7 guifg=#303030 guibg=#c6c6c6 guisp=NONE cterm=NONE gui=NONE
  hi TabLine ctermfg=14 ctermbg=7 guifg=#ababab guibg=#c6c6c6 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=14 ctermbg=7 guifg=#ababab guibg=#c6c6c6 guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=14 ctermbg=7 guifg=#ababab guibg=#c6c6c6 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=12 ctermbg=15 guifg=#919191 guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
else
  hi StatusLine ctermfg=10 ctermbg=7 guifg=#474747 guibg=#c6c6c6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineNC ctermfg=12 ctermbg=7 guifg=#919191 guibg=#c6c6c6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=12 ctermbg=7 guifg=#919191 guibg=#c6c6c6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLineFill ctermfg=12 ctermbg=7 guifg=#919191 guibg=#c6c6c6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLineSel ctermfg=10 ctermbg=7 guifg=#474747 guibg=#c6c6c6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VertSplit ctermfg=10 ctermbg=14 guifg=#474747 guibg=#ababab guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=0 ctermbg=7 guifg=#303030 guibg=#c6c6c6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
endif
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi Visual ctermfg=14 ctermbg=15 guifg=#ababab guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualNOS ctermfg=NONE ctermbg=7 guifg=NONE guibg=#c6c6c6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi WarningMsg ctermfg=9 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi! link Boolean Constant
hi! link Character Constant
hi Comment ctermfg=14 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
hi! link Conditional Statement
hi Constant ctermfg=6 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Define PreProc
hi! link Debug Special
hi! link Delimiter Special
hi Error ctermfg=1 ctermbg=15 guifg=#b02a01 guibg=#e2e2e2 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
hi! link Exception Statement
hi! link Float Constant
hi! link Function Identifier
hi Identifier ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Include PreProc
hi! link Keyword Statement
hi! link Label Statement
hi! link Macro PreProc
hi! link Number Constant
hi! link Operator Statement
hi! link PreCondit PreProc
hi PreProc ctermfg=9 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Repeat Statement
hi Special ctermfg=9 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link SpecialChar Special
hi! link SpecialComment Special
hi Statement ctermfg=2 ctermbg=NONE guifg=#056e07 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link StorageClass Type
hi! link String Constant
hi! link Structure Type
hi! link Tag Special
hi Todo ctermfg=5 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Type ctermfg=3 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Typedef Type
hi Underlined ctermfg=13 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=fg guifg=NONE guibg=fg guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=NONE ctermbg=7 guifg=NONE guibg=#c6c6c6 guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=10 ctermbg=7 guifg=#474747 guibg=#c6c6c6 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi NormalMode ctermfg=10 ctermbg=15 guifg=#474747 guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi InsertMode ctermfg=6 ctermbg=15 guifg=#066b5d guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ReplaceMode ctermfg=9 ctermbg=15 guifg=#924901 guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualMode ctermfg=5 ctermbg=15 guifg=#b2027e guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi CommandMode ctermfg=5 ctermbg=15 guifg=#b2027e guibg=#e2e2e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
if get(g:, 'galactic_extra_hi_groups', 0)
  hi! link vimVar Identifier
  hi! link vimFunc Function
  hi! link vimUserFunc Function
  hi! link helpSpecial Special
  hi! link vimSet Normal
  hi! link vimSetEqual Normal
  hi vimCommentString ctermfg=13 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimCommand ctermfg=3 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimCmdSep ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi helpExample ctermfg=10 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi helpOption ctermfg=6 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi helpNote ctermfg=5 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi helpVim ctermfg=5 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi helpHyperTextJump ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi helpHyperTextEntry ctermfg=2 ctermbg=NONE guifg=#056e07 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimIsCommand ctermfg=12 ctermbg=NONE guifg=#919191 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimSynMtchOpt ctermfg=3 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimSynType ctermfg=6 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimHiLink ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimHiGroup ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimGroup ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi! link diffAdded Statement
  hi! link diffLine Identifier
  hi gitcommitComment ctermfg=14 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
  hi! link gitcommitUntracked gitcommitComment
  hi! link gitcommitDiscarded gitcommitComment
  hi! link gitcommitSelected gitcommitComment
  hi gitcommitUnmerged ctermfg=2 ctermbg=NONE guifg=#056e07 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi gitcommitOnBranch ctermfg=14 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi gitcommitBranch ctermfg=5 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi! link gitcommitNoBranch gitcommitBranch
  hi gitcommitdiscardedtype ctermfg=1 ctermbg=NONE guifg=#b02a01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi gitcommitselectedtype ctermfg=2 ctermbg=NONE guifg=#056e07 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi gitcommitHeader ctermfg=14 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi gitcommitUntrackedFile ctermfg=6 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi gitcommitDiscardedFile ctermfg=1 ctermbg=NONE guifg=#b02a01 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi gitcommitSelectedFile ctermfg=2 ctermbg=NONE guifg=#056e07 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi gitcommitUnmergedFile ctermfg=3 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi gitcommitFile ctermfg=11 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi! link gitcommitDiscardedArrow gitcommitDiscardedFile
  hi! link gitcommitSelectedArrow gitcommitSelectedFile
  hi! link gitcommitUnmergedArrow gitcommitUnmergedFile
  hi htmlTag ctermfg=14 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlEndTag ctermfg=14 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlTagN ctermfg=10 ctermbg=NONE guifg=#474747 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi htmlTagName ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi htmlSpecialTagName ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
  hi htmlArg ctermfg=12 ctermbg=NONE guifg=#919191 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaScript ctermfg=3 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link jsFuncCall Function
  hi perlHereDoc ctermfg=10 ctermbg=8 guifg=#474747 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
  hi perlVarPlain ctermfg=3 ctermbg=8 guifg=#6d5d01 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
  hi perlStatementFileDesc ctermfg=6 ctermbg=8 guifg=#066b5d guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
  hi texstatement ctermfg=6 ctermbg=8 guifg=#066b5d guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
  hi texmathzonex ctermfg=3 ctermbg=8 guifg=#6d5d01 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
  hi texmathmatcher ctermfg=3 ctermbg=8 guifg=#6d5d01 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
  hi texreflabel ctermfg=3 ctermbg=8 guifg=#6d5d01 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
  hi rubyDefine ctermfg=10 ctermbg=8 guifg=#474747 guibg=#e2e2e2 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi! link rubySymbol Type
  hi rubyBoolean ctermfg=5 ctermbg=8 guifg=#b2027e guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
  let hs_highlight_boolean=1
  let hs_highlight_delimiters=1
  hi cPreCondit ctermfg=9 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi VarId ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi ConId ctermfg=3 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi hsImport ctermfg=5 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi hsString ctermfg=12 ctermbg=NONE guifg=#919191 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi hsStructure ctermfg=6 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi hs_hlFunctionName ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi hsStatement ctermfg=6 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi hsImportLabel ctermfg=6 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi hs_OpFunctionName ctermfg=3 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi hs_DeclareFunction ctermfg=9 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi hsVarSym ctermfg=6 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi hsType ctermfg=3 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi hsTypedef ctermfg=6 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi hsModuleName ctermfg=2 ctermbg=NONE guifg=#056e07 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link hsImportParams Delimiter
  hi! link hsDelimTypeExport Delimiter
  hi! link hsModuleStartLabel hsStructure
  hi! link hsModuleWhereLabel hsModuleStartLabel
  hi hsNiceOperator ctermfg=6 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi hsniceoperator ctermfg=6 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocTitleBlock ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocTitleBlockTitle ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocTitleComment ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocComment ctermfg=14 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
  hi pandocVerbatimBlock ctermfg=3 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link pandocVerbatimBlockDeep pandocVerbatimBlock
  hi! link pandocCodeBlock pandocVerbatimBlock
  hi! link pandocCodeBlockDelim pandocVerbatimBlock
  hi pandocBlockQuote ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocBlockQuoteLeader1 ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocBlockQuoteLeader2 ctermfg=6 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocBlockQuoteLeader3 ctermfg=3 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocBlockQuoteLeader4 ctermfg=1 ctermbg=NONE guifg=#b02a01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocBlockQuoteLeader5 ctermfg=11 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocBlockQuoteLeader6 ctermfg=14 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocListMarker ctermfg=5 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocListReference ctermfg=5 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocDefinitionBlock ctermfg=13 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocDefinitionTerm ctermfg=13 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE,standout gui=NONE,standout
  hi pandocDefinitionIndctr ctermfg=13 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocEmphasisDefinition ctermfg=13 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
  hi pandocEmphasisNestedDefinition ctermfg=13 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocStrongEmphasisDefinition ctermfg=13 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocStrongEmphasisNestedDefinition ctermfg=13 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocStrongEmphasisEmphasisDefinition ctermfg=13 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocStrikeoutDefinition ctermfg=13 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi pandocVerbatimInlineDefinition ctermfg=13 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocSuperscriptDefinition ctermfg=13 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocSubscriptDefinition ctermfg=13 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocTable ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocTableStructure ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link pandocTableStructureTop pandocTableStructre
  hi! link pandocTableStructureEnd pandocTableStructre
  hi pandocTableZebraLight ctermfg=4 ctermbg=15 guifg=#0861af guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
  hi pandocTableZebraDark ctermfg=4 ctermbg=7 guifg=#0861af guibg=#c6c6c6 guisp=NONE cterm=NONE gui=NONE
  hi pandocEmphasisTable ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
  hi pandocEmphasisNestedTable ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocStrongEmphasisTable ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocStrongEmphasisNestedTable ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocStrongEmphasisEmphasisTable ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocStrikeoutTable ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi pandocVerbatimInlineTable ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocSuperscriptTable ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocSubscriptTable ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocHeading ctermfg=9 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocHeadingMarker ctermfg=9 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocEmphasisHeading ctermfg=9 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocEmphasisNestedHeading ctermfg=9 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocStrongEmphasisHeading ctermfg=9 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocStrongEmphasisNestedHeading ctermfg=9 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocStrongEmphasisEmphasisHeading ctermfg=9 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocStrikeoutHeading ctermfg=9 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi pandocVerbatimInlineHeading ctermfg=9 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocSuperscriptHeading ctermfg=9 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocSubscriptHeading ctermfg=9 ctermbg=NONE guifg=#924901 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocLinkDelim ctermfg=14 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocLinkLabel ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocLinkText ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocLinkURL ctermfg=12 ctermbg=NONE guifg=#919191 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocLinkTitle ctermfg=12 ctermbg=NONE guifg=#919191 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocLinkTitleDelim ctermfg=14 ctermbg=NONE guifg=#ababab guibg=NONE guisp=#919191 cterm=NONE gui=NONE
  hi pandocLinkDefinition ctermfg=6 ctermbg=NONE guifg=#066b5d guibg=NONE guisp=#919191 cterm=NONE gui=NONE
  hi pandocLinkDefinitionID ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocImageCaption ctermfg=13 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocFootnoteLink ctermfg=2 ctermbg=NONE guifg=#056e07 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocFootnoteDefLink ctermfg=2 ctermbg=NONE guifg=#056e07 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocFootnoteInline ctermfg=2 ctermbg=NONE guifg=#056e07 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocFootnote ctermfg=2 ctermbg=NONE guifg=#056e07 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocCitationDelim ctermfg=5 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocCitation ctermfg=5 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocCitationID ctermfg=5 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocCitationRef ctermfg=5 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocStyleDelim ctermfg=14 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocEmphasis ctermfg=11 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
  hi pandocEmphasisNested ctermfg=11 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocStrongEmphasis ctermfg=11 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocStrongEmphasisNested ctermfg=11 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocStrongEmphasisEmphasis ctermfg=11 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocStrikeout ctermfg=14 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi pandocVerbatimInline ctermfg=3 ctermbg=NONE guifg=#6d5d01 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocSuperscript ctermfg=13 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocSubscript ctermfg=13 ctermbg=NONE guifg=#9807d6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocRule ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocRuleLine ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocEscapePair ctermfg=1 ctermbg=NONE guifg=#b02a01 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi pandocCitationRef ctermfg=5 ctermbg=NONE guifg=#b2027e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocNonBreakingSpace ctermfg=1 ctermbg=NONE guifg=#b02a01 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi! link pandocEscapedCharacter pandocEscapePair
  hi! link pandocLineBreak pandocEscapePair
  hi pandocMetadataDelim ctermfg=14 ctermbg=NONE guifg=#ababab guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocMetadata ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocMetadataKey ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pandocMetadata ctermfg=4 ctermbg=NONE guifg=#0861af guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi! link pandocMetadataTitle pandocMetadata
endif
if get(g:, "galactic_term_italics", 0)
  hi Comment cterm=italic
  hi gitcommitComment cterm=italic
  hi htmlSpecialTagName cterm=italic
  hi pandocComment cterm=italic
  hi pandocEmphasisDefinition cterm=italic
  hi pandocEmphasisTable cterm=italic
  hi pandocEmphasis cterm=italic
endif
if get(g:, 'galactic_plugin_hi_groups', 0)
  hi NeomakeErrorSign ctermfg=9 ctermbg=15 guifg=#924901 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
  hi NeomakeWarningSign ctermfg=3 ctermbg=15 guifg=#6d5d01 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
  hi NeomakeMessageSign ctermfg=6 ctermbg=15 guifg=#066b5d guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
  hi NeomakeNeomakeInfoSign ctermfg=2 ctermbg=15 guifg=#056e07 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
  hi NeomakeInfoSign ctermfg=2 ctermbg=15 guifg=#056e07 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
  hi GitGutterAdd ctermfg=2 ctermbg=15 guifg=#056e07 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
  hi GitGutterChange ctermfg=3 ctermbg=15 guifg=#6d5d01 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
  hi GitGutterDelete ctermfg=1 ctermbg=15 guifg=#b02a01 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
  hi GitGutterChangeDelete ctermfg=1 ctermbg=15 guifg=#b02a01 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
  hi SignifySignAdd ctermfg=2 ctermbg=15 guifg=#056e07 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
  hi SignifySignChange ctermfg=3 ctermbg=15 guifg=#6d5d01 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
  hi SignifySignDelete ctermfg=1 ctermbg=15 guifg=#b02a01 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
  hi SignifySignChangeDelete ctermfg=1 ctermbg=15 guifg=#b02a01 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
  hi ALEErrorSign ctermfg=9 ctermbg=15 guifg=#924901 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
  hi ALEWarningSign ctermfg=3 ctermbg=15 guifg=#6d5d01 guibg=#e2e2e2 guisp=NONE cterm=NONE gui=NONE
endif
finish

" Background: dark
" Color: base03               #1b1b1b                ~        8
" Color: base02               #303030                ~        0
" Color: base01               #474747                ~        10
" Color: base00               #5e5e5e                ~        11
" Color: base0                #919191                ~        12
" Color: base1                #ababab                ~        14
" Color: base2                #c6c6c6                ~        7
" Color: base3                #e2e2e2                ~        15
" Color: yellow               #a68f01                ~        3
" Color: orange               #dd7202                ~        9
" Color: red                  #ff511a                ~        1
" Color: magenta              #fe3bb9                ~        5
" Color: violet               #cc62fe                ~        13
" Color: blue                 #3294ff                ~        4
" Color: cyan                 #07a38f                ~        6
" Color: green                #4ca340                ~        2
" Color: back                 #1b1b1b                ~        8
" TermCursor        -> Cursor
" TermCursorNC         base03            base01
"   Normal             base1             none
"   FoldColumn         fg                none
"   Folded             fg                base03             bold s=base03
"   LineNr             base01            base03
"   Terminal           fg                none
"   Normal            base1             back
"   FoldColumn        base0             base02
"   Folded            base0             base02            bold s=base03
"   LineNr            base01            base03
"   Terminal          fg                back
" NonText              orange            none              bold
" SpecialKey           orange            none              reverse
" SpellBad             violet            base3             t=underline,reverse g=undercurl,reverse s=red
" SpellCap             violet            base3             t=underline,reverse g=undercurl,reverse s=red
" SpellLocal           yellow            base3             t=underline,reverse g=undercurl,reverse s=red
" SpellRare            cyan              base3             t=underline,reverse g=undercurl,reverse s=red
" Title                yellow            none              bold
" NonText              base02            none              bold
" SpecialKey           base02            none              reverse
" SpellBad             violet            none              t=underline g=undercurl s=violet
" SpellCap             violet            none              t=underline g=undercurl s=violet
" SpellLocal           yellow            none              t=underline g=undercurl s=yellow
" SpellRare            cyan              none              t=underline g=undercurl s=cyan
" Title                base01            none              bold
" NonText              base00            none              bold
" SpecialKey           base00            base02            bold
" SpellBad             violet            none              t=underline g=undercurl s=violet
" SpellCap             violet            none              t=underline g=undercurl s=violet
" SpellLocal           yellow            none              t=underline g=undercurl s=yellow
" SpellRare            cyan              none              t=underline g=undercurl s=cyan
" Title                yellow            none              bold
" ColorColumn          none              base02
" Conceal              blue              none
" Cursor               base03            base0
" Cursor               base3             blue
" CursorColumn         none              base02
" CursorLine           none              base02            s=base1
" DiffAdd              green             none              reverse
" DiffChange           yellow            none              reverse
" DiffDelete           red               none              reverse
" DiffText             blue              none              reverse
" DiffAdd              green             none              s=green
" DiffChange           yellow            none              s=yellow
" DiffDelete           red               none              bold
" DiffText             blue              none              s=blue
" DiffAdd              green             base02            s=green
" DiffChange           yellow            base02            s=yellow
" DiffDelete           red               base02            bold
" DiffText             blue              base02            s=blue
" Directory            blue              none
" EndOfBuffer          none              none
" ErrorMsg             red               base3             reverse
" IncSearch            orange            none              standout
" MatchParen           base3             base02            bold
" ModeMsg              blue              none
" MoreMsg              blue              none
" Pmenu                base1             base02
" PmenuSbar            none              base01
" PmenuSel             base2             base00
" PmenuThumb           none              base0
" Question             cyan              none              bold
" QuickFixLine     ->  Search
" Search               yellow            none              reverse
" SignColumn           base0             base03
" StatusLine           base01            base2             reverse
" StatusLineNC         base01            base02            reverse
" TabLine              base01            base02            reverse
" TabLineFill          base01            base02            reverse
" TabLineSel           base0             base3             reverse
" VertSplit            base02            base01
" StatusLine           base02            base2             reverse
" StatusLineNC         base02            base1             reverse
" TabLineSel           base2             base02
" TabLine              base01            base02
" TabLineFill          base01            base02
" VertSplit            base01            base02
" StatusLine           base0             base02            reverse
" StatusLineNC         base01            base02            reverse
" TabLine              base01            base02            reverse
" TabLineFill          base01            base02            reverse
" TabLineSel           base0             base02            reverse
" VertSplit            base02            base01
" StatusLineTerm    -> StatusLine
" StatusLineTermNC  -> StatusLineNC
" Visual               base01            base03            reverse
" VisualNOS            none              base02            reverse
" WarningMsg           orange            none              bold
" WildMenu             base2             base02            reverse
" Boolean           -> Constant
" Character         -> Constant
" Comment              base01            none              g=italic
" Conditional       -> Statement
" Constant             cyan              none
" Define            -> PreProc
" Debug             -> Special
" Delimiter         -> Special
" Error                red               base3             bold,reverse
" Exception         -> Statement
" Float             -> Constant
" Function          -> Identifier
" Identifier           blue              none
" Ignore               none              none
" Include           -> PreProc
" Keyword           -> Statement
" Label             -> Statement
" Macro             -> PreProc
" Number            -> Constant
" Operator          -> Statement
" PreCondit         -> PreProc
" PreProc              orange            none
" Repeat            -> Statement
" Special              red            none
" SpecialChar       -> Special
" SpecialComment    -> Special
" Statement            green             none
" StorageClass      -> Type
" String            -> Constant
" Structure         -> Type
" Tag               -> Special
" Todo                 magenta           none              bold
" Type                 yellow            none
" Typedef           -> Type
" Underlined           violet            none
" lCursor           -> Cursor
" CursorIM             none              fg
" ToolbarLine          none              base02
" ToolbarButton        base1             base02            bold
" NormalMode           base0             base3             reverse
" InsertMode           cyan              base3             reverse
" ReplaceMode          orange            base3             reverse
" VisualMode           magenta           base3             reverse
" CommandMode          magenta           base3             reverse
" vimVar            -> Identifier
" vimFunc           -> Function
" vimUserFunc       -> Function
" helpSpecial       -> Special
" vimSet            -> Normal
" vimSetEqual       -> Normal
" vimCommentString     violet            none
" vimCommand           yellow            none
" vimCmdSep            blue              none              bold
" helpExample          base1             none
" helpOption           cyan              none
" helpNote             magenta           none
" helpVim              magenta           none
" helpHyperTextJump    blue              none
" helpHyperTextEntry   green             none
" vimIsCommand         base00            none
" vimSynMtchOpt        yellow            none
" vimSynType           cyan              none
" vimHiLink            blue              none
" vimHiGroup           blue              none
" vimGroup             blue              none              bold
" diffAdded         -> Statement
" diffLine          -> Identifier
" gitcommitComment           base01          none              g=italic
" gitcommitUntracked      -> gitcommitComment
" gitcommitDiscarded      -> gitcommitComment
" gitcommitSelected       -> gitcommitComment
" gitcommitUnmerged          green           none              bold
" gitcommitOnBranch          base01          none              bold
" gitcommitBranch            magenta         none              bold
" gitcommitNoBranch       -> gitcommitBranch
" gitcommitdiscardedtype     red             none
" gitcommitselectedtype      green           none
" gitcommitHeader            base01          none
" gitcommitUntrackedFile     cyan            none              bold
" gitcommitDiscardedFile     red             none              bold
" gitcommitSelectedFile      green           none              bold
" gitcommitUnmergedFile      yellow          none              bold
" gitcommitFile              base0           none              bold
" gitcommitDiscardedArrow -> gitcommitDiscardedFile
" gitcommitSelectedArrow  -> gitcommitSelectedFile
" gitcommitUnmergedArrow  -> gitcommitUnmergedFile
" htmlTag                    base01          none
" htmlEndTag                 base01          none
" htmlTagN                   base1           none              bold
" htmlTagName                blue            none              bold
" htmlSpecialTagName         blue            none              g=italic
" htmlArg                    base00          none
" javaScript                 yellow          none
" jsFuncCall              -> Function
" perlHereDoc                base1           back
" perlVarPlain               yellow          back
" perlStatementFileDesc      cyan            back
" texstatement               cyan            back
" texmathzonex               yellow          back
" texmathmatcher             yellow          back
" texreflabel                yellow          back
" rubyDefine                 base1           back              bold
" rubySymbol              -> Type
" rubyBoolean                magenta         back
" cPreCondit                 orange          none
" VarId                      blue            none
" ConId                      yellow          none
" hsImport                   magenta         none
" hsString                   base00          none
" hsStructure                cyan            none
" hs_hlFunctionName          blue            none
" hsStatement                cyan            none
" hsImportLabel              cyan            none
" hs_OpFunctionName          yellow          none
" hs_DeclareFunction         orange          none
" hsVarSym                   cyan            none
" hsType                     yellow          none
" hsTypedef                  cyan            none
" hsModuleName               green           none
" hsImportParams          -> Delimiter
" hsDelimTypeExport       -> Delimiter
" hsModuleStartLabel      -> hsStructure
" hsModuleWhereLabel      -> hsModuleStartLabel
" hsNiceOperator             cyan            none
" hsniceoperator             cyan            none
" pandocTitleBlock                       blue               none
" pandocTitleBlockTitle                  blue               none           bold
" pandocTitleComment                     blue               none           bold
" pandocComment                          base01             none           g=italic
" pandocVerbatimBlock                    yellow             none
" pandocVerbatimBlockDeep             -> pandocVerbatimBlock
" pandocCodeBlock                     -> pandocVerbatimBlock
" pandocCodeBlockDelim                -> pandocVerbatimBlock
" pandocBlockQuote                       blue               none
" pandocBlockQuoteLeader1                blue               none
" pandocBlockQuoteLeader2                cyan               none
" pandocBlockQuoteLeader3                yellow             none
" pandocBlockQuoteLeader4                red                none
" pandocBlockQuoteLeader5                base0              none
" pandocBlockQuoteLeader6                base01             none
" pandocListMarker                       magenta            none
" pandocListReference                    magenta            none
" pandocDefinitionBlock                  violet             none
" pandocDefinitionTerm                   violet             none           standout
" pandocDefinitionIndctr                 violet             none           bold
" pandocEmphasisDefinition               violet             none           g=italic
" pandocEmphasisNestedDefinition         violet             none           bold
" pandocStrongEmphasisDefinition         violet             none           bold
" pandocStrongEmphasisNestedDefinition   violet             none           bold
" pandocStrongEmphasisEmphasisDefinition violet             none           bold
" pandocStrikeoutDefinition              violet             none           reverse
" pandocVerbatimInlineDefinition         violet             none
" pandocSuperscriptDefinition            violet             none
" pandocSubscriptDefinition              violet             none
" pandocTable                            blue               none
" pandocTableStructure                   blue               none
" pandocTableStructureTop             -> pandocTableStructre
" pandocTableStructureEnd             -> pandocTableStructre
" pandocTableZebraLight                  blue               base03
" pandocTableZebraDark                   blue               base02
" pandocEmphasisTable                    blue               none           g=italic
" pandocEmphasisNestedTable              blue               none           bold
" pandocStrongEmphasisTable              blue               none           bold
" pandocStrongEmphasisNestedTable        blue               none           bold
" pandocStrongEmphasisEmphasisTable      blue               none           bold
" pandocStrikeoutTable                   blue               none           reverse
" pandocVerbatimInlineTable              blue               none
" pandocSuperscriptTable                 blue               none
" pandocSubscriptTable                   blue               none
" pandocHeading                          orange             none           bold
" pandocHeadingMarker                    orange             none           bold
" pandocEmphasisHeading                  orange             none           bold
" pandocEmphasisNestedHeading            orange             none           bold
" pandocStrongEmphasisHeading            orange             none           bold
" pandocStrongEmphasisNestedHeading      orange             none           bold
" pandocStrongEmphasisEmphasisHeading    orange             none           bold
" pandocStrikeoutHeading                 orange             none           reverse
" pandocVerbatimInlineHeading            orange             none           bold
" pandocSuperscriptHeading               orange             none           bold
" pandocSubscriptHeading                 orange             none           bold
" pandocLinkDelim                        base01             none
" pandocLinkLabel                        blue               none
" pandocLinkText                         blue               none
" pandocLinkURL                          base00             none
" pandocLinkTitle                        base00             none
" pandocLinkTitleDelim                   base01             none           s=base00
" pandocLinkDefinition                   cyan               none           s=base00
" pandocLinkDefinitionID                 blue               none           bold
" pandocImageCaption                     violet             none           bold
" pandocFootnoteLink                     green              none
" pandocFootnoteDefLink                  green              none           bold
" pandocFootnoteInline                   green              none           bold
" pandocFootnote                         green              none
" pandocCitationDelim                    magenta            none
" pandocCitation                         magenta            none
" pandocCitationID                       magenta            none
" pandocCitationRef                      magenta            none
" pandocStyleDelim                       base01             none
" pandocEmphasis                         base0              none           g=italic
" pandocEmphasisNested                   base0              none           bold
" pandocStrongEmphasis                   base0              none           bold
" pandocStrongEmphasisNested             base0              none           bold
" pandocStrongEmphasisEmphasis           base0              none           bold
" pandocStrikeout                        base01             none           reverse
" pandocVerbatimInline                   yellow             none
" pandocSuperscript                      violet             none
" pandocSubscript                        violet             none
" pandocRule                             blue               none           bold
" pandocRuleLine                         blue               none           bold
" pandocEscapePair                       red                none           bold
" pandocCitationRef                      magenta            none
" pandocNonBreakingSpace                 red                none           reverse
" pandocEscapedCharacter              -> pandocEscapePair
" pandocLineBreak                     -> pandocEscapePair
" pandocMetadataDelim                    base01             none
" pandocMetadata                         blue               none
" pandocMetadataKey                      blue               none
" pandocMetadata                         blue               none           bold
" pandocMetadataTitle                 -> pandocMetadata
" NeomakeErrorSign           orange          base03
" NeomakeWarningSign         yellow          base03
" NeomakeMessageSign         cyan            base03
" NeomakeNeomakeInfoSign     green           base03
" NeomakeInfoSign            green           base03
" GitGutterAdd               green           base03
" GitGutterChange            yellow          base03
" GitGutterDelete            red             base03
" GitGutterChangeDelete      red             base03
" SignifySignAdd             green           base03
" SignifySignChange          yellow          base03
" SignifySignDelete          red             base03
" SignifySignChangeDelete    red             base03
" ALEErrorSign               orange          base03
" ALEWarningSign             yellow          base03
" Background: light
" Color: base3                #1b1b1b                ~        8
" Color: base2                #303030                ~        0
" Color: base1                #474747                ~        10
" Color: base0                #5e5e5e                ~        11
" Color: base00               #919191                ~        12
" Color: base01               #ababab                ~        14
" Color: base02               #c6c6c6                ~        7
" Color: base03               #e2e2e2                ~        15
" Color: yellow               #6d5d01                ~        3
" Color: orange               #924901                ~        9
" Color: red                  #b02a01                ~        1
" Color: magenta              #b2027e                ~        5
" Color: violet               #9807d6                ~        13
" Color: blue                 #0861af                ~        4
" Color: cyan                 #066b5d                ~        6
" Color: green                #056e07                ~        2
" Color: back                 #e2e2e2                ~        8
" TermCursor        -> Cursor
" TermCursorNC         base03            base01
"   Normal             base1             none
"   FoldColumn         base0             none
"   Folded             base0             base02              bold s=base03
"   LineNr             base01            none
"   Terminal           fg                none
"   Normal            base1             back
"   FoldColumn        base0             base02
"   Folded            base0             base02            bold s=base03
"   LineNr            base01            base03
"   Terminal          fg                back
" Cursor               base03            base0
" Cursor               base03            red
" MatchParen           base03            base00            bold
" NonText              red               none              bold
" SpecialKey           red               none              reverse
" SpellBad             magenta           base03            t=underline,reverse g=undercurl,reverse s=violet
" SpellCap             magenta           base03            t=underline,reverse g=undercurl,reverse s=violet
" SpellLocal           yellow            base03            t=underline,reverse g=undercurl,reverse s=orange
" SpellRare            cyan              base03            t=underline,reverse g=undercurl,reverse s=orange
" Title                orange            none              bold
" Cursor               base03            base0
" Cursor               base03            orange
" MatchParen           red               base02            bold,underline
" NonText              base02            none              bold
" SpecialKey           base02            none              bold
" SpellBad             magenta           none              t=underline g=undercurl s=violet
" SpellCap             magenta           none              t=underline g=undercurl s=violet
" SpellLocal           yellow            none              t=underline g=undercurl s=yellow
" SpellRare            cyan              none              t=underline g=undercurl s=cyan
" Title                base01            none              bold
" Cursor               base03            base0
" Cursor               base03            orange
" MatchParen           red               base02            bold,underline
" NonText              base00            none              bold
" SpecialKey           base00            base02            bold
" SpellBad             magenta           none              t=underline g=undercurl s=violet
" SpellCap             magenta           none              t=underline g=undercurl s=violet
" SpellLocal           yellow            none              t=underline g=undercurl s=yellow
" SpellRare            cyan              none              t=underline g=undercurl s=cyan
" Title                orange            none              bold
" ColorColumn          none              base02
" Conceal              blue              none
" CursorColumn         none              base02
" CursorLine           none              base02            s=base1
" DiffAdd              green             none              reverse
" DiffChange           yellow            none              reverse
" DiffDelete           red               none              reverse
" DiffText             blue              none              reverse
" DiffAdd              green             none              s=green
" DiffChange           yellow            none              s=yellow
" DiffDelete           red               none              bold
" DiffText             blue              none              s=blue
" DiffAdd              green             base02            s=green
" DiffChange           yellow            base02            s=yellow
" DiffDelete           red               base02            bold
" DiffText             blue              base02            s=blue
" Directory            blue              none
" EndOfBuffer          none              none
" ErrorMsg             red               base03            reverse
" IncSearch            orange            none              standout
" ModeMsg              blue              none
" MoreMsg              blue              none
" Pmenu                base1             base02
" PmenuSbar            none              base01
" PmenuSel             base02            base00
" PmenuThumb           none              base0
" Question             cyan              none              bold
" QuickFixLine     ->  Search
" Search               yellow            none              reverse
" SignColumn           base0             base03
" StatusLine           base01            base03            reverse
" StatusLineNC         base01            base1             reverse
" TabLine              base01            base1             reverse
" TabLineFill          base01            base1             reverse
" TabLineSel           base1             base03            reverse
" VertSplit            base1             base01
" WildMenu             base1             base03            reverse
" StatusLine           base02            base2             reverse
" StatusLineNC         base02            base1             reverse
" TabLineSel           base2             base02
" TabLine              base01            base02
" TabLineFill          base01            base02
" VertSplit            base01            base02
" WildMenu             base00            base03            reverse
" StatusLine           base1             base02            reverse
" StatusLineNC         base00            base02            reverse
" TabLine              base00            base02            reverse
" TabLineFill          base00            base02            reverse
" TabLineSel           base1             base02            reverse
" VertSplit            base1             base01
" WildMenu             base2             base02            reverse
" StatusLineTerm    -> StatusLine
" StatusLineTermNC  -> StatusLineNC
" Visual               base01            base03            reverse
" VisualNOS            none              base02            reverse
" WarningMsg           orange            none              bold
" Boolean           -> Constant
" Character         -> Constant
" Comment              base01            none              g=italic
" Conditional       -> Statement
" Constant             cyan              none
" Define            -> PreProc
" Debug             -> Special
" Delimiter         -> Special
" Error                red               base03            bold,reverse
" Exception         -> Statement
" Float             -> Constant
" Function          -> Identifier
" Identifier           blue              none
" Ignore               none              none
" Include           -> PreProc
" Keyword           -> Statement
" Label             -> Statement
" Macro             -> PreProc
" Number            -> Constant
" Operator          -> Statement
" PreCondit         -> PreProc
" PreProc              orange            none
" Repeat            -> Statement
" Special              orange            none
" SpecialChar       -> Special
" SpecialComment    -> Special
" Statement            green             none
" StorageClass      -> Type
" String            -> Constant
" Structure         -> Type
" Tag               -> Special
" Todo                 magenta           none              bold
" Type                 yellow            none
" Typedef           -> Type
" Underlined           violet            none
" lCursor           -> Cursor
" CursorIM             none              fg
" ToolbarLine          none              base02
" ToolbarButton        base1             base02            bold
" NormalMode           base1             base03            reverse
" InsertMode           cyan              base03            reverse
" ReplaceMode          orange            base03            reverse
" VisualMode           magenta           base03            reverse
" CommandMode          magenta           base03            reverse
" vimVar            -> Identifier
" vimFunc           -> Function
" vimUserFunc       -> Function
" helpSpecial       -> Special
" vimSet            -> Normal
" vimSetEqual       -> Normal
" vimCommentString     violet            none
" vimCommand           yellow            none
" vimCmdSep            blue              none              bold
" helpExample          base1             none
" helpOption           cyan              none
" helpNote             magenta           none
" helpVim              magenta           none
" helpHyperTextJump    blue              none
" helpHyperTextEntry   green             none
" vimIsCommand         base00            none
" vimSynMtchOpt        yellow            none
" vimSynType           cyan              none
" vimHiLink            blue              none
" vimHiGroup           blue              none
" vimGroup             blue              none              bold
" diffAdded         -> Statement
" diffLine          -> Identifier
" gitcommitComment           base01          none              g=italic
" gitcommitUntracked      -> gitcommitComment
" gitcommitDiscarded      -> gitcommitComment
" gitcommitSelected       -> gitcommitComment
" gitcommitUnmerged          green           none              bold
" gitcommitOnBranch          base01          none              bold
" gitcommitBranch            magenta         none              bold
" gitcommitNoBranch       -> gitcommitBranch
" gitcommitdiscardedtype     red             none
" gitcommitselectedtype      green           none
" gitcommitHeader            base01          none
" gitcommitUntrackedFile     cyan            none              bold
" gitcommitDiscardedFile     red             none              bold
" gitcommitSelectedFile      green           none              bold
" gitcommitUnmergedFile      yellow          none              bold
" gitcommitFile              base0           none              bold
" gitcommitDiscardedArrow -> gitcommitDiscardedFile
" gitcommitSelectedArrow  -> gitcommitSelectedFile
" gitcommitUnmergedArrow  -> gitcommitUnmergedFile
" htmlTag                    base01          none
" htmlEndTag                 base01          none
" htmlTagN                   base1           none              bold
" htmlTagName                blue            none              bold
" htmlSpecialTagName         blue            none              g=italic
" htmlArg                    base00          none
" javaScript                 yellow          none
" jsFuncCall              -> Function
" perlHereDoc                base1           back
" perlVarPlain               yellow          back
" perlStatementFileDesc      cyan            back
" texstatement               cyan            back
" texmathzonex               yellow          back
" texmathmatcher             yellow          back
" texreflabel                yellow          back
" rubyDefine                 base1           back              bold
" rubySymbol              -> Type
" rubyBoolean                magenta         back
" cPreCondit                 orange          none
" VarId                      blue            none
" ConId                      yellow          none
" hsImport                   magenta         none
" hsString                   base00          none
" hsStructure                cyan            none
" hs_hlFunctionName          blue            none
" hsStatement                cyan            none
" hsImportLabel              cyan            none
" hs_OpFunctionName          yellow          none
" hs_DeclareFunction         orange          none
" hsVarSym                   cyan            none
" hsType                     yellow          none
" hsTypedef                  cyan            none
" hsModuleName               green           none
" hsImportParams          -> Delimiter
" hsDelimTypeExport       -> Delimiter
" hsModuleStartLabel      -> hsStructure
" hsModuleWhereLabel      -> hsModuleStartLabel
" hsNiceOperator             cyan            none
" hsniceoperator             cyan            none
" pandocTitleBlock                       blue               none
" pandocTitleBlockTitle                  blue               none           bold
" pandocTitleComment                     blue               none           bold
" pandocComment                          base01             none           g=italic
" pandocVerbatimBlock                    yellow             none
" pandocVerbatimBlockDeep             -> pandocVerbatimBlock
" pandocCodeBlock                     -> pandocVerbatimBlock
" pandocCodeBlockDelim                -> pandocVerbatimBlock
" pandocBlockQuote                       blue               none
" pandocBlockQuoteLeader1                blue               none
" pandocBlockQuoteLeader2                cyan               none
" pandocBlockQuoteLeader3                yellow             none
" pandocBlockQuoteLeader4                red                none
" pandocBlockQuoteLeader5                base0              none
" pandocBlockQuoteLeader6                base01             none
" pandocListMarker                       magenta            none
" pandocListReference                    magenta            none
" pandocDefinitionBlock                  violet             none
" pandocDefinitionTerm                   violet             none           standout
" pandocDefinitionIndctr                 violet             none           bold
" pandocEmphasisDefinition               violet             none           g=italic
" pandocEmphasisNestedDefinition         violet             none           bold
" pandocStrongEmphasisDefinition         violet             none           bold
" pandocStrongEmphasisNestedDefinition   violet             none           bold
" pandocStrongEmphasisEmphasisDefinition violet             none           bold
" pandocStrikeoutDefinition              violet             none           reverse
" pandocVerbatimInlineDefinition         violet             none
" pandocSuperscriptDefinition            violet             none
" pandocSubscriptDefinition              violet             none
" pandocTable                            blue               none
" pandocTableStructure                   blue               none
" pandocTableStructureTop             -> pandocTableStructre
" pandocTableStructureEnd             -> pandocTableStructre
" pandocTableZebraLight                  blue               base03
" pandocTableZebraDark                   blue               base02
" pandocEmphasisTable                    blue               none           g=italic
" pandocEmphasisNestedTable              blue               none           bold
" pandocStrongEmphasisTable              blue               none           bold
" pandocStrongEmphasisNestedTable        blue               none           bold
" pandocStrongEmphasisEmphasisTable      blue               none           bold
" pandocStrikeoutTable                   blue               none           reverse
" pandocVerbatimInlineTable              blue               none
" pandocSuperscriptTable                 blue               none
" pandocSubscriptTable                   blue               none
" pandocHeading                          orange             none           bold
" pandocHeadingMarker                    orange             none           bold
" pandocEmphasisHeading                  orange             none           bold
" pandocEmphasisNestedHeading            orange             none           bold
" pandocStrongEmphasisHeading            orange             none           bold
" pandocStrongEmphasisNestedHeading      orange             none           bold
" pandocStrongEmphasisEmphasisHeading    orange             none           bold
" pandocStrikeoutHeading                 orange             none           reverse
" pandocVerbatimInlineHeading            orange             none           bold
" pandocSuperscriptHeading               orange             none           bold
" pandocSubscriptHeading                 orange             none           bold
" pandocLinkDelim                        base01             none
" pandocLinkLabel                        blue               none
" pandocLinkText                         blue               none
" pandocLinkURL                          base00             none
" pandocLinkTitle                        base00             none
" pandocLinkTitleDelim                   base01             none           s=base00
" pandocLinkDefinition                   cyan               none           s=base00
" pandocLinkDefinitionID                 blue               none           bold
" pandocImageCaption                     violet             none           bold
" pandocFootnoteLink                     green              none
" pandocFootnoteDefLink                  green              none           bold
" pandocFootnoteInline                   green              none           bold
" pandocFootnote                         green              none
" pandocCitationDelim                    magenta            none
" pandocCitation                         magenta            none
" pandocCitationID                       magenta            none
" pandocCitationRef                      magenta            none
" pandocStyleDelim                       base01             none
" pandocEmphasis                         base0              none           g=italic
" pandocEmphasisNested                   base0              none           bold
" pandocStrongEmphasis                   base0              none           bold
" pandocStrongEmphasisNested             base0              none           bold
" pandocStrongEmphasisEmphasis           base0              none           bold
" pandocStrikeout                        base01             none           reverse
" pandocVerbatimInline                   yellow             none
" pandocSuperscript                      violet             none
" pandocSubscript                        violet             none
" pandocRule                             blue               none           bold
" pandocRuleLine                         blue               none           bold
" pandocEscapePair                       red                none           bold
" pandocCitationRef                      magenta            none
" pandocNonBreakingSpace                 red                none           reverse
" pandocEscapedCharacter              -> pandocEscapePair
" pandocLineBreak                     -> pandocEscapePair
" pandocMetadataDelim                    base01             none
" pandocMetadata                         blue               none
" pandocMetadataKey                      blue               none
" pandocMetadata                         blue               none           bold
" pandocMetadataTitle                 -> pandocMetadata
" NeomakeErrorSign           orange          base03
" NeomakeWarningSign         yellow          base03
" NeomakeMessageSign         cyan            base03
" NeomakeNeomakeInfoSign     green           base03
" NeomakeInfoSign            green           base03
" GitGutterAdd               green           base03
" GitGutterChange            yellow          base03
" GitGutterDelete            red             base03
" GitGutterChangeDelete      red             base03
" SignifySignAdd             green           base03
" SignifySignChange          yellow          base03
" SignifySignDelete          red             base03
" SignifySignChangeDelete    red             base03
" ALEErrorSign               orange          base03
" ALEWarningSign             yellow          base03
