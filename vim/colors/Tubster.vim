" Vim color file
" Converted from Textmate theme Tubster using Coloration v0.2.4 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Tubster"

hi Cursor  guifg=NONE guibg=#ffffff gui=NONE
hi Visual  guifg=NONE guibg=#535c72 gui=NONE
hi CursorLine  guifg=NONE guibg=#333435 gui=NONE
hi CursorColumn  guifg=NONE guibg=#333435 gui=NONE
hi LineNr  guifg=#858280 guibg=#232323 gui=NONE
hi VertSplit  guifg=#484746 guibg=#484746 gui=NONE
hi MatchParen  guifg=#cc6633 guibg=NONE gui=NONE
hi StatusLine  guifg=#e6e1dc guibg=#484746 gui=bold
hi StatusLineNC  guifg=#e6e1dc guibg=#484746 gui=NONE
hi Pmenu  guifg=#ffffff guibg=NONE gui=NONE
hi PmenuSel  guifg=NONE guibg=#535c72 gui=NONE
hi IncSearch  guifg=NONE guibg=#5b3928 gui=NONE
hi Search  guifg=NONE guibg=#5b3928 gui=NONE
hi Directory  guifg=#34a2d9 guibg=NONE gui=NONE
hi Folded  guifg=#666666 guibg=#232323 gui=NONE

hi Normal  guifg=#e6e1dc guibg=#232323 gui=NONE
hi Boolean  guifg=#3399cc guibg=NONE gui=NONE
hi Character  guifg=#34a2d9 guibg=NONE gui=NONE
hi Comment  guifg=#666666 guibg=NONE gui=italic
hi Conditional  guifg=#cc6633 guibg=NONE gui=NONE
hi Constant  guifg=#34a2d9 guibg=NONE gui=NONE
hi Define  guifg=#cc6633 guibg=NONE gui=NONE
hi ErrorMsg  guifg=#ffffff guibg=#cc0000 gui=NONE
hi WarningMsg  guifg=#ffffff guibg=#cc0000 gui=NONE
hi Float  guifg=#99cc66 guibg=NONE gui=NONE
hi Function  guifg=#ffcc33 guibg=NONE gui=NONE
hi Identifier  guifg=#cc6633 guibg=NONE gui=NONE
hi Keyword  guifg=#cc6633 guibg=NONE gui=NONE
hi Label  guifg=#99cc33 guibg=NONE gui=NONE
hi NonText  guifg=#404040 guibg=#333435 gui=NONE
hi Number  guifg=#99cc66 guibg=NONE gui=NONE
hi Operator  guifg=#cc6633 guibg=NONE gui=NONE
hi PreProc  guifg=#cc6633 guibg=NONE gui=NONE
hi Special  guifg=#e6e1dc guibg=NONE gui=NONE
hi SpecialKey  guifg=#404040 guibg=#333435 gui=NONE
hi Statement  guifg=#cc6633 guibg=NONE gui=NONE
hi StorageClass  guifg=#cc6633 guibg=NONE gui=NONE
hi String  guifg=#99cc33 guibg=NONE gui=NONE
hi Tag  guifg=#ffcc33 guibg=NONE gui=NONE
hi Title  guifg=#e6e1dc guibg=NONE gui=bold
hi Todo  guifg=#666666 guibg=NONE gui=inverse,bold,italic
hi Type  guifg=#ffffff guibg=NONE gui=NONE
hi Underlined  guifg=NONE guibg=NONE gui=underline
hi rubyClass  guifg=#cc6633 guibg=NONE gui=NONE
hi rubyFunction  guifg=#ffcc33 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter  guifg=NONE guibg=NONE gui=NONE
hi rubySymbol  guifg=#34a2d9 guibg=NONE gui=NONE
hi rubyConstant  guifg=NONE guibg=NONE gui=NONE
hi rubyStringDelimiter  guifg=#99cc33 guibg=NONE gui=NONE
hi rubyBlockParameter  guifg=NONE guibg=NONE gui=NONE
hi rubyInstanceVariable  guifg=#3399cc guibg=NONE gui=NONE
hi rubyInclude  guifg=#cc6633 guibg=NONE gui=NONE
hi rubyGlobalVariable  guifg=#3399cc guibg=NONE gui=NONE
hi rubyRegexp  guifg=#99cc33 guibg=NONE gui=NONE
hi rubyRegexpDelimiter  guifg=#99cc33 guibg=NONE gui=NONE
hi rubyEscape  guifg=#519f50 guibg=NONE gui=NONE
hi rubyControl  guifg=#cc6633 guibg=NONE gui=NONE
hi rubyClassVariable  guifg=NONE guibg=NONE gui=NONE
hi rubyOperator  guifg=#cc6633 guibg=NONE gui=NONE
hi rubyException  guifg=#cc6633 guibg=NONE gui=NONE
hi rubyPseudoVariable  guifg=#3399cc guibg=NONE gui=NONE
hi rubyRailsUserClass  guifg=NONE guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod  guifg=#da4939 guibg=NONE gui=NONE
hi rubyRailsARMethod  guifg=#da4939 guibg=NONE gui=NONE
hi rubyRailsRenderMethod  guifg=#da4939 guibg=NONE gui=NONE
hi rubyRailsMethod  guifg=#da4939 guibg=NONE gui=NONE
hi erubyDelimiter  guifg=NONE guibg=NONE gui=NONE
hi erubyComment  guifg=#666666 guibg=NONE gui=italic
hi erubyRailsMethod  guifg=#da4939 guibg=NONE gui=NONE
hi htmlTag  guifg=#ffcc33 guibg=NONE gui=NONE
hi htmlEndTag  guifg=#ffcc33 guibg=NONE gui=NONE
hi htmlTagName  guifg=#ffcc33 guibg=NONE gui=NONE
hi htmlArg  guifg=#ffcc33 guibg=NONE gui=NONE
hi htmlSpecialChar  guifg=#34a2d9 guibg=NONE gui=NONE
hi javaScriptFunction  guifg=#cc6633 guibg=NONE gui=NONE
hi javaScriptRailsFunction  guifg=#da4939 guibg=NONE gui=NONE
hi javaScriptBraces  guifg=NONE guibg=NONE gui=NONE
hi yamlKey  guifg=#ffcc33 guibg=NONE gui=NONE
hi yamlAnchor  guifg=#3399cc guibg=NONE gui=NONE
hi yamlAlias  guifg=#3399cc guibg=NONE gui=NONE
hi yamlDocumentHeader  guifg=#99cc33 guibg=NONE gui=NONE
hi cssURL  guifg=NONE guibg=NONE gui=NONE
hi cssFunctionName  guifg=#da4939 guibg=NONE gui=NONE
hi cssColor  guifg=#34a2d9 guibg=NONE gui=NONE
hi cssPseudoClassId  guifg=#ffcc33 guibg=NONE gui=NONE
hi cssClassName  guifg=#ffcc33 guibg=NONE gui=NONE
hi cssValueLength  guifg=#99cc66 guibg=NONE gui=NONE
hi cssCommonAttr  guifg=#99cc33 guibg=NONE gui=NONE
hi cssBraces  guifg=NONE guibg=NONE gui=NONE
