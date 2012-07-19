" Vim color file
" Converted from Textmate theme GitHub using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=light
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "GitHub"

hi Cursor ctermfg=NONE ctermbg=0 cterm=NONE guifg=NONE guibg=#000000 gui=NONE
hi Visual ctermfg=NONE ctermbg=153 cterm=NONE guifg=NONE guibg=#bcd5fa gui=NONE
hi CursorLine ctermfg=NONE ctermbg=188 cterm=NONE guifg=NONE guibg=#dfdfe6 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=188 cterm=NONE guifg=NONE guibg=#dfdfe6 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=188 cterm=NONE guifg=NONE guibg=#dfdfe6 gui=NONE
hi LineNr ctermfg=244 ctermbg=188 cterm=NONE guifg=#7c7c80 guibg=#dfdfe6 gui=NONE
hi VertSplit ctermfg=249 ctermbg=249 cterm=NONE guifg=#b0b0b5 guibg=#b0b0b5 gui=NONE
hi MatchParen ctermfg=0 ctermbg=NONE cterm=bold guifg=#000000 guibg=NONE gui=bold
hi StatusLine ctermfg=0 ctermbg=249 cterm=bold guifg=#000000 guibg=#b0b0b5 gui=bold
hi StatusLineNC ctermfg=0 ctermbg=249 cterm=NONE guifg=#000000 guibg=#b0b0b5 gui=NONE
hi Pmenu ctermfg=60 ctermbg=NONE cterm=bold guifg=#445588 guibg=NONE gui=bold
hi PmenuSel ctermfg=NONE ctermbg=153 cterm=NONE guifg=NONE guibg=#bcd5fa gui=NONE
hi IncSearch ctermfg=NONE ctermbg=248 cterm=NONE guifg=NONE guibg=#a6a6ab gui=NONE
hi Search ctermfg=NONE ctermbg=248 cterm=NONE guifg=NONE guibg=#a6a6ab gui=NONE
hi Directory ctermfg=126 ctermbg=NONE cterm=NONE guifg=#aa2c8c guibg=NONE gui=NONE
hi Folded ctermfg=102 ctermbg=231 cterm=NONE guifg=#999988 guibg=#f8f8ff gui=NONE
hi Normal ctermfg=0 ctermbg=231 cterm=NONE guifg=#000000 guibg=#f8f8ff gui=NONE
hi Boolean ctermfg=0 ctermbg=NONE cterm=bold guifg=#000000 guibg=NONE gui=bold
hi Character ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Comment ctermfg=102 ctermbg=NONE cterm=NONE guifg=#999988 guibg=NONE gui=italic
hi Conditional ctermfg=0 ctermbg=NONE cterm=bold guifg=#000000 guibg=NONE gui=bold
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=0 ctermbg=NONE cterm=bold guifg=#000000 guibg=NONE gui=bold
hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Float ctermfg=30 ctermbg=NONE cterm=NONE guifg=#009999 guibg=NONE gui=NONE
hi Function ctermfg=88 ctermbg=NONE cterm=bold guifg=#990000 guibg=NONE gui=bold
hi Identifier ctermfg=0 ctermbg=NONE cterm=bold guifg=#000000 guibg=NONE gui=bold
hi Keyword ctermfg=0 ctermbg=NONE cterm=bold guifg=#000000 guibg=NONE gui=bold
hi Label ctermfg=161 ctermbg=NONE cterm=NONE guifg=#dd1144 guibg=NONE gui=NONE
"hi NonText ctermfg=250 ctermbg=189 cterm=NONE guifg=#bfbfbf guibg=#ececf2 gui=NONE
"hi NonText ctermfg=189 ctermbg=189 cterm=NONE guifg=#ececf2 guibg=#ececf2 gui=NONE
"hi NonText ctermfg=189 ctermbg=189 cterm=NONE guifg=#f8f8ff guibg=#f8f8ff gui=NONE
hi NonText ctermfg=bg ctermbg=bg cterm=NONE guifg=bg guibg=bg gui=NONE
hi Number ctermfg=30 ctermbg=NONE cterm=NONE guifg=#009999 guibg=NONE gui=NONE
hi Operator ctermfg=0 ctermbg=NONE cterm=bold guifg=#000000 guibg=NONE gui=bold
hi PreProc ctermfg=0 ctermbg=NONE cterm=bold guifg=#000000 guibg=NONE gui=bold
hi Special ctermfg=0 ctermbg=NONE cterm=NONE guifg=#000000 guibg=NONE gui=NONE
hi SpecialKey ctermfg=250 ctermbg=188 cterm=NONE guifg=#bfbfbf guibg=#dfdfe6 gui=NONE
hi Statement ctermfg=0 ctermbg=NONE cterm=bold guifg=#000000 guibg=NONE gui=bold
hi StorageClass ctermfg=0 ctermbg=NONE cterm=bold guifg=#000000 guibg=NONE gui=bold
hi String ctermfg=161 ctermbg=NONE cterm=NONE guifg=#dd1144 guibg=NONE gui=NONE
hi Tag ctermfg=18 ctermbg=NONE cterm=NONE guifg=#121289 guibg=NONE gui=NONE
hi Title ctermfg=0 ctermbg=NONE cterm=bold guifg=#000000 guibg=NONE gui=bold
hi Todo ctermfg=102 ctermbg=NONE cterm=inverse,bold guifg=#999988 guibg=NONE gui=inverse,bold,italic
hi Type ctermfg=60 ctermbg=NONE cterm=bold guifg=#445588 guibg=NONE gui=bold
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=0 ctermbg=NONE cterm=bold guifg=#000000 guibg=NONE gui=bold
hi rubyFunction ctermfg=88 ctermbg=NONE cterm=bold guifg=#990000 guibg=NONE gui=bold
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=126 ctermbg=NONE cterm=NONE guifg=#aa2c8c guibg=NONE gui=NONE
hi rubyConstant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=161 ctermbg=NONE cterm=NONE guifg=#dd1144 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=30 ctermbg=NONE cterm=NONE guifg=#108888 guibg=NONE gui=NONE
hi rubyInclude ctermfg=0 ctermbg=NONE cterm=bold guifg=#000000 guibg=NONE gui=bold
hi rubyGlobalVariable ctermfg=30 ctermbg=NONE cterm=NONE guifg=#108888 guibg=NONE gui=NONE
hi rubyRegexp ctermfg=28 ctermbg=NONE cterm=NONE guifg=#009926 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=28 ctermbg=NONE cterm=NONE guifg=#009926 guibg=NONE gui=NONE
hi rubyEscape ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyControl ctermfg=0 ctermbg=NONE cterm=bold guifg=#000000 guibg=NONE gui=bold
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=0 ctermbg=NONE cterm=bold guifg=#000000 guibg=NONE gui=bold
hi rubyException ctermfg=0 ctermbg=NONE cterm=bold guifg=#000000 guibg=NONE gui=bold
hi rubyPseudoVariable ctermfg=30 ctermbg=NONE cterm=NONE guifg=#108888 guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=30 ctermbg=NONE cterm=NONE guifg=#008080 guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=246 ctermbg=NONE cterm=bold guifg=#999999 guibg=NONE gui=bold
hi erubyComment ctermfg=102 ctermbg=NONE cterm=NONE guifg=#999988 guibg=NONE gui=italic
hi erubyRailsMethod ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=0 ctermbg=NONE cterm=bold guifg=#000000 guibg=NONE gui=bold
hi javaScriptRailsFunction ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=18 ctermbg=NONE cterm=NONE guifg=#121289 guibg=NONE gui=NONE
hi yamlAnchor ctermfg=30 ctermbg=NONE cterm=NONE guifg=#108888 guibg=NONE gui=NONE
hi yamlAlias ctermfg=30 ctermbg=NONE cterm=NONE guifg=#108888 guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=161 ctermbg=NONE cterm=NONE guifg=#dd1144 guibg=NONE gui=NONE
hi cssURL ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssFunctionName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssColor ctermfg=30 ctermbg=NONE cterm=NONE guifg=#009999 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=0 ctermbg=NONE cterm=NONE guifg=#000000 guibg=NONE gui=NONE
hi cssClassName ctermfg=60 ctermbg=NONE cterm=bold guifg=#445588 guibg=NONE gui=bold
hi cssValueLength ctermfg=30 ctermbg=NONE cterm=NONE guifg=#009999 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=0 ctermbg=NONE cterm=bold guifg=#000000 guibg=NONE gui=bold
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
