
syntax match NearleyInclude '\v^\@\w+'
syntax match NearleyComment '\v#.*'

syntax match NearleyOperator /\v\-\>/
syntax match NearleyOperator /\v\|/
syntax match NearleyOperator /\v\:\+/
syntax match NearleyOperator /\v\:\*/
syntax match NearleyOperator /\v\?/


syntax match NearleyNonTerminal "\v^[a-zA-Z0-9_?+]+"

syntax region NearleyString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region NearleyString start="\[" end="]"

highlight link NearleyInclude Include
highlight link NearleyComment Comment
highlight link NearleyOperator Operator
highlight link NearleyBuiltin Keyword
highlight link NearleyString String
highlight link NearleyNonTerminal Special

syntax include @JavaScript syntax/typescript.vim
syntax region javascriptPostProcessor start="{%" keepend end="%}" contains=@JavaScript
syntax keyword NearleyBuiltin id joiner arrconcat nuller containedin=javascriptPostProcessor
syntax region javascriptCode start="@{%" keepend end="%}" contains=@JavaScript

