" Generated by Inspiration at Sweyla
" http://inspiration.sweyla.com/code/

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "inspiration-837812"

if version >= 700
  hi CursorLine guibg=#060000
  hi CursorColumn guibg=#060000
  hi MatchParen guifg=#73A1D5 guibg=#060000 gui=bold
  hi Pmenu 		guifg=#FFFFFF guibg=#323232
  hi PmenuSel 	guifg=#FFFFFF guibg=#C08AA2
endif

" General colors
hi Cursor       guifg=NONE guibg=#FFFFFF gui=none
hi Normal       guifg=#FFFFFF guibg=#060000 gui=none
hi NonText      guifg=#FFFFFF guibg=#060000 gui=none
hi LineNr       guifg=#FFFFFF guibg=#323232 gui=none
hi Normal       guifg=#FFFFFF guibg=#060000 gui=none
hi StatusLine   guifg=#FFFFFF guibg=#060000 gui=italic
hi StatusLineNC guifg=#FFFFFF guibg=#060000 gui=none
hi VertSplit    guifg=#FFFFFF guibg=#060000 gui=none
hi Folded       guifg=#FFFFFF guibg=#060000 gui=none
hi Title		guifg=#C08AA2 guibg=NONE	gui=bold
hi Visual		guifg=#73A1D5 guibg=#323232 gui=none
hi SpecialKey	guifg=#E3FFB4 guibg=#323232 gui=none

" Syntax highlighting
hi Comment guifg=#C08AA2 gui=none
hi Constant guifg=#E3FFB4 gui=none
hi Number guifg=#E3FFB4 gui=none
hi Identifier guifg=#CFCA79 gui=none
hi Statement guifg=#CFCA79 gui=none
hi Function guifg=#BCFFFF gui=none
hi Special guifg=#D4F5BB gui=none
hi PreProc guifg=#D4F5BB gui=none
hi Keyword guifg=#73A1D5 gui=none
hi String guifg=#9EB1FF gui=none
hi Type guifg=#9CCAFF gui=none