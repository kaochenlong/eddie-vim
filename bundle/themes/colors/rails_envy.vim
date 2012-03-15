set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Rails Envy"

hi Cursor ctermfg=NONE ctermbg=231 cterm=NONE guifg=NONE guibg=#f8f8f0 gui=NONE
hi Visual ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#49483e gui=NONE
hi CursorLine ctermfg=NONE ctermbg=235 cterm=NONE guifg=NONE guibg=#292927 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=235 cterm=NONE guifg=NONE guibg=#292927 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=235 cterm=NONE guifg=NONE guibg=#292927 gui=NONE
hi LineNr ctermfg=244 ctermbg=235 cterm=NONE guifg=#858581 guibg=#292927 gui=NONE
hi VertSplit ctermfg=59 ctermbg=59 cterm=NONE guifg=#555552 guibg=#555552 gui=NONE
hi MatchParen ctermfg=72 ctermbg=NONE cterm=NONE guifg=#40a187 guibg=NONE gui=NONE
hi StatusLine ctermfg=231 ctermbg=59 cterm=bold guifg=#f8f8f2 guibg=#555552 gui=bold
hi StatusLineNC ctermfg=231 ctermbg=59 cterm=NONE guifg=#f8f8f2 guibg=#555552 gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#49483e gui=NONE
hi IncSearch ctermfg=NONE ctermbg=23 cterm=NONE guifg=NONE guibg=#0c605f gui=NONE
hi Search ctermfg=NONE ctermbg=23 cterm=NONE guifg=NONE guibg=#0c605f gui=NONE
hi Directory ctermfg=86 ctermbg=NONE cterm=NONE guifg=#70ffe0 guibg=NONE gui=NONE
hi Folded ctermfg=95 ctermbg=233 cterm=NONE guifg=#75715e guibg=#121210 gui=NONE
hi Normal ctermfg=231 ctermbg=233 cterm=NONE guifg=#f8f8f2 guibg=#121210 gui=NONE
hi Boolean ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi Character ctermfg=86 ctermbg=NONE cterm=NONE guifg=#70ffe0 guibg=NONE gui=NONE
hi Comment ctermfg=95 ctermbg=NONE cterm=NONE guifg=#75715e guibg=NONE gui=NONE
hi Conditional ctermfg=72 ctermbg=NONE cterm=NONE guifg=#40a187 guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=72 ctermbg=NONE cterm=NONE guifg=#40a187 guibg=NONE gui=NONE
hi ErrorMsg ctermfg=231 ctermbg=197 cterm=NONE guifg=#f8f8f0 guibg=#f92672 gui=NONE
hi WarningMsg ctermfg=231 ctermbg=197 cterm=NONE guifg=#f8f8f0 guibg=#f92672 gui=NONE
hi Float ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi Function ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE
hi Identifier ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8ae5ef guibg=NONE gui=italic
hi Keyword ctermfg=72 ctermbg=NONE cterm=NONE guifg=#40a187 guibg=NONE gui=NONE
hi Label ctermfg=227 ctermbg=NONE cterm=NONE guifg=#ffff66 guibg=NONE gui=NONE
"hi NonText ctermfg=59 ctermbg=234 cterm=NONE guifg=#3b3a32 guibg=#1e1e1b gui=NONE
hi NonText ctermfg=234 ctermbg=234 cterm=NONE guifg=#1e1e1b guibg=#1e1e1b gui=NONE
hi Number ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi Operator ctermfg=72 ctermbg=NONE cterm=NONE guifg=#40a187 guibg=NONE gui=NONE
hi PreProc ctermfg=72 ctermbg=NONE cterm=NONE guifg=#40a187 guibg=NONE gui=NONE
hi Special ctermfg=231 ctermbg=NONE cterm=NONE guifg=#f8f8f2 guibg=NONE gui=NONE
hi SpecialKey ctermfg=59 ctermbg=235 cterm=NONE guifg=#3b3a32 guibg=#292927 gui=NONE
hi Statement ctermfg=72 ctermbg=NONE cterm=NONE guifg=#40a187 guibg=NONE gui=NONE
hi StorageClass ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8ae5ef guibg=NONE gui=italic
hi String ctermfg=227 ctermbg=NONE cterm=NONE guifg=#ffff66 guibg=NONE gui=NONE
hi Tag ctermfg=87 ctermbg=NONE cterm=NONE guifg=#52f9f9 guibg=NONE gui=NONE
hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=#f8f8f2 guibg=NONE gui=bold
hi Todo ctermfg=95 ctermbg=NONE cterm=inverse,bold guifg=#75715e guibg=NONE gui=inverse,bold
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi TabLineFill cterm=reverse ctermbg=None ctermfg=DarkGrey
" language syntax
hi rubyClass ctermfg=72 ctermbg=NONE cterm=NONE guifg=#40a187 guibg=NONE gui=NONE
hi rubyFunction ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=86 ctermbg=NONE cterm=NONE guifg=#70ffe0 guibg=NONE gui=NONE
hi rubyConstant ctermfg=77 ctermbg=NONE cterm=NONE guifg=#56cf72 guibg=NONE gui=italic
hi rubyStringDelimiter ctermfg=227 ctermbg=NONE cterm=NONE guifg=#ffff66 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=208 ctermbg=NONE cterm=NONE guifg=#fd971f guibg=NONE gui=italic
hi rubyInstanceVariable ctermfg=51 ctermbg=NONE cterm=NONE guifg=#00ffff guibg=NONE gui=NONE
hi rubyInclude ctermfg=72 ctermbg=NONE cterm=NONE guifg=#40a187 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=51 ctermbg=NONE cterm=NONE guifg=#00ffff guibg=NONE gui=NONE
hi rubyRegexp ctermfg=227 ctermbg=NONE cterm=NONE guifg=#ffff66 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=227 ctermbg=NONE cterm=NONE guifg=#ffff66 guibg=NONE gui=NONE
hi rubyEscape ctermfg=86 ctermbg=NONE cterm=NONE guifg=#70ffe0 guibg=NONE gui=NONE
hi rubyControl ctermfg=72 ctermbg=NONE cterm=NONE guifg=#40a187 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=51 ctermbg=NONE cterm=NONE guifg=#00ffff guibg=NONE gui=NONE
hi rubyOperator ctermfg=72 ctermbg=NONE cterm=NONE guifg=#40a187 guibg=NONE gui=NONE
hi rubyException ctermfg=72 ctermbg=NONE cterm=NONE guifg=#40a187 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=51 ctermbg=NONE cterm=NONE guifg=#00ffff guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=77 ctermbg=NONE cterm=NONE guifg=#56cf72 guibg=NONE gui=italic
hi rubyRailsARAssociationMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=95 ctermbg=NONE cterm=NONE guifg=#75715e guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=86 ctermbg=NONE cterm=NONE guifg=#70ffe0 guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8ae5ef guibg=NONE gui=italic
hi javaScriptRailsFunction ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=87 ctermbg=NONE cterm=NONE guifg=#52f9f9 guibg=NONE gui=NONE
hi yamlAnchor ctermfg=51 ctermbg=NONE cterm=NONE guifg=#00ffff guibg=NONE gui=NONE
hi yamlAlias ctermfg=51 ctermbg=NONE cterm=NONE guifg=#00ffff guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=227 ctermbg=NONE cterm=NONE guifg=#ffff66 guibg=NONE gui=NONE
hi cssURL ctermfg=208 ctermbg=NONE cterm=NONE guifg=#fd971f guibg=NONE gui=italic
hi cssFunctionName ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi cssColor ctermfg=86 ctermbg=NONE cterm=NONE guifg=#70ffe0 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE
hi cssClassName ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE
hi cssValueLength ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=121 ctermbg=NONE cterm=NONE guifg=#8fefae guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
