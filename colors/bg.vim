" Dark Vim/Neovim color scheme.
"
" URL:     github.com/bry-guy/vim-bg-colors
" License: MIT (https://opensource.org/licenses/MIT)

" Clear highlights and reset syntax only when changing colorschemes.
if exists('g:colors_name')
    highlight clear
    if exists('syntax_on')
        syntax reset
    endif
endif
let g:colors_name='bg'

" By default do not color the cursor.
let g:bgCursorColor = get(g:, 'bgCursorColor', 0)

" By default do use italics in GUI versions of Vim.
let g:bgItalics = get(g:, 'bgItalics', 1)

" By default do not use a customized 'NormalFloat' highlight group (for Neovim
" floating windows).
let g:bgNormalFloat = get(g:, 'bgNormalFloat', 0)

" By default use the bg color palette in the `:terminal`
let g:bgTerminalColors = get(g:, 'bgTerminalColors', 1)

" By default do not use a transparent background in GUI versions of Vim.
let g:bgTransparent = get(g:, 'bgTransparent', 0)

" By default do use undercurls in GUI versions of Vim, including terminal Vim
" with termguicolors set.
let g:bgUndercurls = get(g:, 'bgUndercurls', 1)

" By default do not underline matching parentheses.
let g:bgUnderlineMatchParen = get(g:, 'bgUnderlineMatchParen', 0)

" By default do display vertical split columns.
let g:bgVertSplits = get(g:, 'bgVertSplits', 1)

" Background and foreground
let s:tblack    = {"hex": '#000000', "term": 231}
let s:black     = {"hex": '#080808', "term": 232}
let s:white     = {"hex": '#c6c6c6', "term": 251}
" Variations of charcoal-grey
let s:grey0     = {"hex": '#323437', "term": 0  }
let s:grey254   = {"hex": '#e4e4e4', "term": 254}
let s:grey249   = {"hex": '#b2b2b2', "term": 249}
let s:grey247   = {"hex": '#9e9e9e', "term": 247}
let s:grey246   = {"hex": '#949494', "term": 246}
let s:grey244   = {"hex": '#808080', "term": 244}
let s:grey241   = {"hex": '#626262', "term": 241}
let s:grey237   = {"hex": '#3a3a3a', "term": 237}
let s:grey236   = {"hex": '#303030', "term": 236}
let s:grey235   = {"hex": '#262626', "term": 235}
let s:grey234   = {"hex": '#1c1c1c', "term": 234}
let s:grey233   = {"hex": '#121212', "term": 233}
" Core theme colors
let s:wheat     = {"hex": '#bfbf97', "term": 11}
let s:yellow    = {"hex": '#e3c78a', "term": 3 }
let s:orange    = {"hex": '#de935f', "term": 7 }
let s:coral     = {"hex": '#f09479', "term": 8 }
let s:lime      = {"hex": '#85dc85', "term": 14}
let s:green     = {"hex": '#8cc85f', "term": 2 }
let s:emerald   = {"hex": '#36c692', "term": 10}
let s:blue      = {"hex": '#80a0ff', "term": 4 }
let s:sky       = {"hex": '#74b2ff', "term": 12}
let s:turquoise = {"hex": '#79dac8', "term": 6 }
let s:purple    = {"hex": '#ae81ff', "term": 13}
let s:cranberry = {"hex": '#e2637f', "term": 15}
let s:violet    = {"hex": '#d183e8', "term": 5 }
let s:crimson   = {"hex": '#ff5189', "term": 9 }
let s:red       = {"hex": '#ff5454', "term": 1 }
" Extra colors
let s:spring    = {"hex": '#00875f', "term": 29}

" Specify the colors used by the inbuilt terminal of Neovim and Vim
if g:bgTerminalColors
    if has('nvim')
        let g:terminal_color_0  = s:grey0.hex
        let g:terminal_color_1  = s:red.hex
        let g:terminal_color_2  = s:green.hex
        let g:terminal_color_3  = s:yellow.hex
        let g:terminal_color_4  = s:blue.hex
        let g:terminal_color_5  = s:violet.hex
        let g:terminal_color_6  = s:turquoise.hex
        let g:terminal_color_7  = s:white.hex
        let g:terminal_color_8  = s:grey246.hex
        let g:terminal_color_9  = s:crimson.hex
        let g:terminal_color_10 = s:emerald.hex
        let g:terminal_color_11 = s:wheat.hex
        let g:terminal_color_12 = s:sky.hex
        let g:terminal_color_13 = s:purple.hex
        let g:terminal_color_14 = s:lime.hex
        let g:terminal_color_15 = s:grey254.hex
    else
        let g:terminal_ansi_colors = [
                    \ s:grey0.hex, s:red.hex, s:green.hex, s:yellow.hex,
                    \ s:blue.hex, s:violet.hex, s:turquoise.hex, s:white.hex,
                    \ s:grey246.hex, s:crimson.hex, s:emerald.hex, s:wheat.hex,
                    \ s:sky.hex, s:purple.hex, s:lime.hex, s:grey254.hex
                    \]
    endif
endif

" Background and text
if g:bgTransparent
    exec 'highlight Normal ctermbg=' . s:black.term . ' ctermfg=' . s:white.term . ' guibg=NONE guifg=' . s:white.hex
else
    exec 'highlight Normal ctermbg=' . s:black.term . ' ctermfg=' . s:white.term . ' guibg=' . s:black.hex . ' guifg=' . s:white.hex
endif

" Custom bg highlight groups
exec 'highlight bgReset ctermfg=fg guifg=fg'
exec 'highlight bgVisual ctermbg=' . s:grey0.term . ' guibg=' . s:grey0.hex
exec 'highlight bgWhite ctermfg=' . s:white.term . ' guifg=' . s:white.hex
exec 'highlight bgGrey0 ctermfg=' . s:grey0.term . ' guifg=' . s:grey0.hex
exec 'highlight bgGrey254 ctermfg=' . s:grey254.term . ' guifg=' . s:grey254.hex
exec 'highlight bgGrey249 ctermfg=' . s:grey249.term . ' guifg=' . s:grey249.hex
exec 'highlight bgGrey247 ctermfg=' . s:grey247.term . ' guifg=' . s:grey247.hex
exec 'highlight bgGrey246 ctermfg=' . s:grey246.term . ' guifg=' . s:grey246.hex
exec 'highlight bgGrey241 ctermfg=' . s:grey241.term . ' guifg=' . s:grey241.hex
exec 'highlight bgGrey236 ctermfg=' . s:grey236.term . ' guifg=' . s:grey236.hex
exec 'highlight bgWheat ctermfg=' . s:wheat.term . ' guifg=' . s:wheat.hex
exec 'highlight bgYellow ctermfg=' . s:yellow.term . ' guifg=' . s:yellow.hex
exec 'highlight bgOrange ctermfg=' . s:orange.term . ' guifg=' . s:orange.hex
exec 'highlight bgCoral ctermfg=' . s:coral.term . ' guifg=' . s:coral.hex
exec 'highlight bgLime ctermfg=' . s:lime.term . ' guifg=' . s:lime.hex
exec 'highlight bgGreen ctermfg=' . s:green.term . ' guifg=' . s:green.hex
exec 'highlight bgEmerald ctermfg=' . s:emerald.term . ' guifg=' . s:emerald.hex
exec 'highlight bgBlue ctermfg=' . s:blue.term . ' guifg=' . s:blue.hex
exec 'highlight bgSky ctermfg=' . s:sky.term . ' guifg=' . s:sky.hex
exec 'highlight bgTurquoise ctermfg=' . s:turquoise.term . ' guifg=' . s:turquoise.hex
exec 'highlight bgPurple ctermfg=' . s:purple.term . ' guifg=' . s:purple.hex
exec 'highlight bgCranberry ctermfg=' . s:cranberry.term . ' guifg=' . s:cranberry.hex
exec 'highlight bgViolet ctermfg=' . s:violet.term . ' guifg=' . s:violet.hex
exec 'highlight bgCrimson ctermfg=' . s:crimson.term . ' guifg=' . s:crimson.hex
exec 'highlight bgRed ctermfg=' . s:red.term . ' guifg=' . s:red.hex
exec 'highlight bgWhiteAlert ctermbg=bg ctermfg=' . s:white.term . ' guibg=bg guifg=' . s:white.hex
exec 'highlight bgYellowAlert ctermbg=bg ctermfg=' . s:yellow.term . ' guibg=bg guifg=' . s:yellow.hex
exec 'highlight bgCoralAlert ctermbg=bg ctermfg=' . s:coral.term . ' guibg=bg guifg=' . s:coral.hex
exec 'highlight bgEmeraldAlert ctermbg=bg ctermfg=' . s:emerald.term . ' guibg=bg guifg=' . s:emerald.hex
exec 'highlight bgPurpleAlert ctermbg=bg ctermfg=' . s:purple.term . ' guibg=bg guifg=' . s:purple.hex
exec 'highlight bgSkyAlert ctermbg=bg ctermfg=' . s:sky.term . ' guibg=bg guifg=' . s:sky.hex
exec 'highlight bgRedAlert ctermbg=bg ctermfg=' . s:red.term . ' guibg=bg guifg=' . s:red.hex

" Color of mode text, -- INSERT --
exec 'highlight ModeMsg ctermfg=' . s:grey247.term . ' guifg=' . s:grey247.hex . ' gui=none'

" Comments
if g:bgItalics
    exec 'highlight Comment ctermfg=' . s:grey246.term . ' guifg=' . s:grey246.hex . ' gui=italic'
else
    exec 'highlight Comment ctermfg=' . s:grey246.term . ' guifg=' . s:grey246.hex
endif

" Functions
highlight! link Function bgSky

" Strings
highlight! link String bgWheat

" Booleans
highlight! link Boolean bgCoral

" Identifiers
exec 'highlight Identifier ctermfg=' . s:turquoise.term . ' cterm=none guifg=' . s:turquoise.hex

" Color of titles
exec 'highlight Title ctermfg=' . s:orange.term . ' guifg=' . s:orange.hex . ' gui=none'

" const, static
highlight! link StorageClass bgCoral

" void, intptr_t
exec 'highlight Type ctermfg=' . s:emerald.term . ' guifg=' . s:emerald.hex . ' gui=none'

" Numbers
highlight! link Constant bgPurple

" Character constants
highlight! link Character bgPurple

" Exceptions
highlight! link Exception bgCrimson

" ifdef/endif
highlight! link PreProc bgCranberry

" case in switch statement
highlight! link Label bgTurquoise

" end-of-line '$', end-of-file '~'
exec 'highlight NonText ctermfg=' . s:grey241.term . ' guifg=' . s:grey241.hex . ' gui=none'

" sizeof
highlight! link Operator bgCranberry

" for, while
highlight! link Repeat bgViolet

" Search
exec 'highlight Search ctermbg=bg ctermfg=' . s:coral.term . ' cterm=reverse guibg=bg guifg=' . s:coral.hex . ' gui=reverse'
exec 'highlight IncSearch ctermbg=bg ctermfg=' . s:yellow.term . ' guibg=bg guifg=' . s:yellow.hex

" '\n' sequences
highlight! link Special bgCranberry

" if, else
exec 'highlight Statement ctermfg=' . s:violet.term . ' guifg=' . s:violet.hex . ' gui=none'

" struct, union, enum, typedef
highlight! link Structure bgBlue

" Status, split and tab lines
exec 'highlight StatusLine ctermbg=' . s:grey236.term . '  ctermfg=' . s:white.term . ' cterm=none guibg=' . s:grey236.hex . ' guifg=' . s:white.hex . ' gui=none'
exec 'highlight StatusLineNC ctermbg=' . s:grey236.term . ' ctermfg=' . s:grey247.term . ' cterm=none guibg=' . s:grey236.hex . ' guifg=' . s:grey247.hex . ' gui=none'
exec 'highlight Tabline ctermbg=' . s:grey236.term . ' ctermfg=' . s:grey247.term . ' cterm=none guibg=' . s:grey236.hex . ' guifg=' . s:grey247.hex . ' gui=none'
exec 'highlight TablineSel ctermbg=' . s:grey236.term . ' ctermfg=' . s:blue.term . ' cterm=none guibg=' . s:grey236.hex . ' guifg=' . s:blue.hex . ' gui=none'
exec 'highlight TablineFill ctermbg=' . s:grey236.term . ' ctermfg=' . s:grey236.term . ' cterm=none guibg=' . s:grey236.hex . ' guifg=' . s:grey236.hex . ' gui=none'
exec 'highlight StatusLineTerm ctermbg=' . s:grey236.term . ' ctermfg=' . s:white.term . ' cterm=none guibg=' . s:grey236.hex . ' guifg=' . s:white.hex . ' gui=none'
exec 'highlight StatusLineTermNC ctermbg=' . s:grey236.term . ' ctermfg=' . s:grey247.term . ' cterm=none guibg=' . s:grey236.hex . ' guifg=' . s:grey247.hex . ' gui=none'
if g:bgVertSplits
    exec 'highlight VertSplit ctermbg=' . s:grey236.term . ' ctermfg=' . s:grey236.term . ' cterm=none guibg=' . s:grey236.hex . ' guifg=' . s:grey236.hex . ' gui=none'
else
    exec 'highlight VertSplit ctermbg=' . s:tblack.term . ' ctermfg=' . s:tblack.term . ' cterm=none guibg=' . s:tblack.hex . ' guifg=' . s:tblack.hex . ' gui=none'
end

" Visual selection
highlight! link Visual bgVisual
exec 'highlight VisualNOS ctermbg=' . s:grey0.term . ' ctermfg=fg cterm=none guibg=' . s:grey0.hex . ' guifg=fg gui=none'
exec 'highlight VisualInDiff ctermbg=' . s:grey0.term . ' ctermfg=' . s:white.term . ' guibg=' . s:grey0.hex . ' guifg=' . s:white.hex

" Errors, warnings and whitespace-eol
exec 'highlight Error ctermbg=bg ctermfg=' . s:red.term . ' guibg=bg guifg=' . s:red.hex
exec 'highlight ErrorMsg ctermbg=bg ctermfg=' . s:red.term . ' guibg=bg guifg=' . s:red.hex
exec 'highlight WarningMsg ctermbg=bg ctermfg=' . s:orange.term . ' guibg=bg guifg=' . s:orange.hex

" Auto-text-completion menu
exec 'highlight Pmenu ctermbg=' . s:grey235.term . ' ctermfg=fg guibg=' . s:grey235.hex . ' guifg=fg'
exec 'highlight PmenuSel ctermbg=' . s:spring.term . ' ctermfg=fg guibg=' . s:spring.hex . ' guifg=fg'
exec 'highlight PmenuSbar ctermbg=' . s:grey235.term . ' guibg=' . s:grey235.hex
exec 'highlight PmenuThumb ctermbg=' . s:grey244.term . ' guibg=' . s:grey244.hex
exec 'highlight WildMenu ctermbg=' . s:spring.term . ' ctermfg=fg guibg=' . s:spring.hex . ' guifg=fg'

" Spelling errors
if g:bgUndercurls
    exec 'highlight SpellBad ctermfg=' . s:red.term . ' cterm=underline gui=undercurl guisp=' . s:red.hex
    exec 'highlight SpellCap ctermfg=' . s:blue.term . ' cterm=underline gui=undercurl guisp=' . s:blue.hex
    exec 'highlight SpellRare ctermfg=' . s:yellow.term . ' cterm=underline gui=undercurl guisp=' . s:yellow.hex
    exec 'highlight SpellLocal ctermfg=' . s:sky.term . ' cterm=underline gui=undercurl guisp=' . s:sky.hex
else
    exec 'highlight SpellBad ctermfg=' . s:red.term . ' cterm=underline guifg=' . s:red.hex . ' gui=underline guisp=' . s:red.hex
    exec 'highlight SpellCap ctermfg=' . s:blue.term . ' cterm=underline guifg=' . s:blue.hex . ' gui=underline guisp=' . s:blue.hex
    exec 'highlight SpellRare ctermfg=' . s:yellow.term . ' cterm=underline guifg=' . s:yellow.hex . ' gui=underline guisp=' . s:yellow.hex
    exec 'highlight SpellLocal ctermfg=' . s:sky.term . ' cterm=underline guifg=' . s:sky.hex . ' gui=underline guisp=' . s:sky.hex
endif

" Misc
exec 'highlight Question ctermfg=' . s:lime.term . ' guifg=' . s:lime.hex . ' gui=none'
exec 'highlight MoreMsg ctermfg=' . s:red.term . ' guifg=' . s:red.hex . ' gui=none'
exec 'highlight LineNr ctermbg=bg ctermfg=' . s:grey241.term . ' guibg=bg guifg=' . s:grey241.hex . ' gui=none'
if g:bgCursorColor
    exec 'highlight Cursor ctermfg=bg ctermbg=' . s:blue.term . ' guifg=bg guibg=' . s:blue.hex
else
    exec 'highlight Cursor ctermfg=bg ctermbg=' . s:grey247.term . ' guifg=bg guibg=' . s:grey247.hex
endif
exec 'highlight lCursor ctermfg=bg ctermbg=' . s:grey247.term . ' guifg=bg guibg=' . s:grey247.hex
exec 'highlight CursorLineNr ctermbg=' . s:grey234.term . ' ctermfg=' . s:blue.term . ' cterm=none guibg=' . s:grey234.hex . ' guifg=' . s:blue.hex . ' gui=none'
exec 'highlight CursorColumn ctermbg=' . s:grey234.term . ' cterm=none guibg=' . s:grey234.hex
exec 'highlight CursorLine ctermbg=' . s:grey234.term . ' cterm=none guibg=' . s:grey234.hex
exec 'highlight Folded ctermbg=' . s:grey234.term . ' ctermfg=' . s:lime.term . ' guibg=' . s:grey234.hex . ' guifg='. s:lime.hex
exec 'highlight FoldColumn ctermbg=' . s:grey236.term . ' ctermfg=' . s:lime.term . ' guibg=' . s:grey236.hex . ' guifg=' . s:lime.hex
exec 'highlight SignColumn ctermbg=bg ctermfg=' . s:lime.term . ' guibg=bg guifg=' . s:lime.hex
exec 'highlight Todo ctermbg=' . s:yellow.term . ' ctermfg=' . s:black.term . ' guibg=' . s:yellow.hex . ' guifg=' . s:black.hex
exec 'highlight SpecialKey ctermbg=bg ctermfg=' . s:sky.term . ' guibg=bg guifg=' . s:sky.hex
if g:bgUnderlineMatchParen
    exec 'highlight MatchParen ctermbg=bg cterm=underline guibg=bg gui=underline'
else
    highlight! link MatchParen bgVisual
endif
exec 'highlight Ignore ctermfg=' . s:sky.term . ' guifg=' . s:sky.hex
exec 'highlight Underlined ctermfg=' . s:emerald.term . ' cterm=none guifg=' . s:emerald.hex . ' gui=none'
exec 'highlight QuickFixLine ctermbg=' . s:grey237.term . ' cterm=none guibg=' . s:grey237.hex
highlight! link Delimiter bgWhite
highlight! link qfFileName bgEmerald

" Color column (after line 80)
exec 'highlight ColorColumn ctermbg=' . s:grey233.term . ' guibg=' . s:grey233.hex

" Conceal color, as used by indentLine plugin
exec 'highlight Conceal ctermbg=NONE ctermfg=' . s:grey235.term . ' guibg=NONE guifg=' . s:grey235.hex

" Neovim only highlight groups
if has('nvim')
    exec 'highlight Whitespace ctermfg=' . s:grey235.term . ' guifg=' . s:grey235.hex
    exec 'highlight TermCursor ctermbg=' . s:grey247.term . ' ctermfg=bg cterm=none guibg=' . s:grey247.hex . ' guifg=bg gui=none'
    if g:bgNormalFloat
        exec 'highlight NormalFloat ctermbg=bg ctermfg=' . s:grey249.term . ' guibg=bg guifg=' . s:grey249.hex
    else
        exec 'highlight NormalFloat ctermbg=' . s:grey234.term . ' ctermfg=fg guibg=' . s:grey234.hex . ' guifg=fg'
    endif
    exec 'highlight FloatBorder ctermbg=bg ctermfg=' . s:grey236.term . ' guibg=bg guifg=' . s:grey236.hex

    " Neovim Treesitter
    highlight! link TSAnnotation bgViolet
    highlight! link TSAttribute bgSky
    highlight! link TSConstant bgTurquoise
    highlight! link TSConstBuiltin bgGreen
    highlight! link TSConstMacro bgViolet
    highlight! link TSConstructor bgEmerald
    highlight! link TSFuncBuiltin bgSky
    highlight! link TSFuncMacro bgSky
    highlight! link TSInclude bgCranberry
    highlight! link TSKeywordOperator bgViolet
    highlight! link TSNamespace bgBlue
    highlight! link TSParameter bgWhite
    highlight! link TSPunctSpecial bgCranberry
    highlight! link TSSymbol bgPurple
    highlight! link TSTag bgBlue
    highlight! link TSTagDelimiter bgLime
    highlight! link TSVariableBuiltin bgLime
    highlight! link bashTSParameter bgTurquoise
    highlight! link cssTSPunctDelimiter bgCranberry
    highlight! link cssTSType bgBlue
    highlight! link scssTSPunctDelimiter bgCranberry
    highlight! link scssTSType bgBlue
    highlight! link yamlTSField bgSky
    highlight! link yamlTSPunctDelimiter bgCranberry
endif

" C/C++
highlight! link cDefine bgViolet
highlight! link cPreCondit bgViolet
highlight! link cStatement bgViolet
highlight! link cStructure bgCoral
highlight! link cppAccess bgLime
highlight! link cppCast bgTurquoise
highlight! link cppCustomClass bgTurquoise
highlight! link cppExceptions bgLime
highlight! link cppModifier bgViolet
highlight! link cppOperator bgGreen
highlight! link cppStatement bgTurquoise
highlight! link cppSTLconstant bgBlue
highlight! link cppSTLnamespace bgBlue
highlight! link cppStructure bgViolet

" C#
highlight! link csModifier bgLime
highlight! link csPrecondit bgViolet
highlight! link csStorage bgViolet
highlight! link csXmlTag bgBlue

" Clojure
highlight! link clojureDefine bgViolet
highlight! link clojureKeyword bgPurple
highlight! link clojureMacro bgOrange
highlight! link clojureParen bgBlue
highlight! link clojureSpecial bgSky

" CoffeeScript
highlight! link coffeeConstant bgEmerald
highlight! link coffeeGlobal bgTurquoise
highlight! link coffeeKeyword bgOrange
highlight! link coffeeObjAssign bgSky
highlight! link coffeeSpecialIdent bgLime
highlight! link coffeeSpecialVar bgBlue
highlight! link coffeeStatement bgCoral

" Crystal
highlight! link crystalAccess bgYellow
highlight! link crystalAttribute bgSky
highlight! link crystalBlockParameter bgGreen
highlight! link crystalClass bgOrange
highlight! link crystalDefine bgViolet
highlight! link crystalExceptional bgCoral
highlight! link crystalInstanceVariable bgLime
highlight! link crystalModule bgBlue
highlight! link crystalPseudoVariable bgGreen
highlight! link crystalSharpBang bgGrey247
highlight! link crystalStringDelimiter bgWheat
highlight! link sassId bgSky
highlight! link sassIdChar bgViolet

" CSS/SCSS
highlight! link cssAtRule bgViolet
highlight! link cssAttr bgTurquoise
highlight! link cssBraces bgReset
highlight! link cssClassName bgEmerald
highlight! link cssClassNameDot bgViolet
highlight! link cssColor bgTurquoise
highlight! link cssIdentifier bgSky
highlight! link cssProp bgTurquoise
highlight! link cssTagName bgBlue
highlight! link cssUnitDecorators bgWheat
highlight! link cssValueLength bgPurple
highlight! link cssValueNumber bgPurple
highlight! link sassId bgBlue
highlight! link sassIdChar bgViolet
highlight! link sassMedia bgViolet
highlight! link scssSelectorName bgBlue

" Dart
highlight! link dartMetadata bgLime
highlight! link dartStorageClass bgViolet
highlight! link dartTypedef bgViolet

" Elixir
highlight! link eelixirDelimiter bgCrimson
highlight! link elixirBlockDefinition bgViolet
highlight! link elixirDefine bgViolet
highlight! link elixirDocTest bgGrey247
highlight! link elixirExUnitAssert bgLime
highlight! link elixirExUnitMacro bgSky
highlight! link elixirKernelFunction bgGreen
highlight! link elixirKeyword bgOrange
highlight! link elixirModuleDefine bgBlue
highlight! link elixirPrivateDefine bgViolet
highlight! link elixirStringDelimiter bgWheat
highlight! link elixirVariable bgTurquoise

" Elm
highlight! link elmLetBlockDefinition bgLime
highlight! link elmTopLevelDecl bgCoral
highlight! link elmType bgSky

" Go
highlight! link goBuiltins bgSky
highlight! link goConditional bgViolet
highlight! link goDeclType bgGreen
highlight! link goDirective bgCranberry
highlight! link goFloats bgPurple
highlight! link goFunction bgBlue
highlight! link goFunctionCall bgSky
highlight! link goImport bgCranberry
highlight! link goLabel bgYellow
highlight! link goMethod bgSky
highlight! link goMethodCall bgSky
highlight! link goPackage bgViolet
highlight! link goSignedInts bgEmerald
highlight! link goStruct bgCoral
highlight! link goStructDef bgCoral
highlight! link goUnsignedInts bgPurple

" Haskell
highlight! link haskellDecl bgOrange
highlight! link haskellDeclKeyword bgOrange
highlight! link haskellIdentifier bgTurquoise
highlight! link haskellLet bgSky
highlight! link haskellOperators bgCranberry
highlight! link haskellType bgSky
highlight! link haskellWhere bgViolet

" HTML
highlight! link htmlArg bgTurquoise
highlight! link htmlLink bgGreen
highlight! link htmlH1 bgCranberry
highlight! link htmlH2 bgOrange
highlight! link htmlEndTag bgPurple
highlight! link htmlTag bgLime
highlight! link htmlTagN bgBlue
highlight! link htmlTagName bgBlue
highlight! link htmlUnderline bgWhite
if g:bgItalics
    exec 'highlight htmlBoldItalic ctermbg=' . s:black.term . ' ctermfg=' . s:coral.term . ' guibg=' . s:black.hex . ' guifg=' . s:coral.hex . ' gui=italic'
    exec 'highlight htmlBoldUnderlineItalic ctermbg=' . s:black.term . ' ctermfg=' . s:coral.term . ' guibg=' . s:black.hex . ' guifg=' . s:coral.hex . ' gui=italic'
    exec 'highlight htmlItalic ctermfg=' . s:grey247.term . ' guifg=' . s:grey247.hex . ' gui=italic'
    exec 'highlight htmlUnderlineItalic ctermbg=' . s:black.term . ' ctermfg=' . s:grey247.term . ' guibg=' . s:black.hex . ' guifg=' . s:grey247.hex . ' gui=italic'
else
    exec 'highlight htmlBoldItalic ctermbg=' . s:black.term . ' ctermfg=' . s:coral.term . ' cterm=none guibg=' . s:black.hex . ' guifg=' . s:coral.hex ' gui=none'
    exec 'highlight htmlBoldUnderlineItalic ctermbg=' . s:black.term . ' ctermfg=' . s:coral.term . ' guibg=' . s:black.hex . ' guifg=' . s:coral.hex
    exec 'highlight htmlItalic ctermfg=' . s:grey247.term . ' cterm=none guifg=' . s:grey247.hex ' gui=none'
    exec 'highlight htmlUnderlineItalic ctermbg=' . s:black.term . ' ctermfg=' . s:grey247.term . ' guibg=' . s:black.hex . ' guifg=' . s:grey247.hex
endif

" Java
highlight! link javaAnnotation bgLime
highlight! link javaBraces bgWhite
highlight! link javaClassDecl bgYellow
highlight! link javaCommentTitle bgGrey247
highlight! link javaConstant bgSky
highlight! link javaDebug bgSky
highlight! link javaMethodDecl bgYellow
highlight! link javaOperator bgCrimson
highlight! link javaScopeDecl bgViolet
highlight! link javaStatement bgTurquoise

" JavaScript, 'pangloss/vim-javascript' plugin
highlight! link jsClassDefinition bgEmerald
highlight! link jsClassKeyword bgOrange
highlight! link jsFrom bgCoral
highlight! link jsFuncBlock bgTurquoise
highlight! link jsFuncCall bgSky
highlight! link jsFunction bgLime
highlight! link jsGlobalObjects bgEmerald
highlight! link jsModuleAs bgCoral
highlight! link jsObjectKey bgSky
highlight! link jsObjectValue bgEmerald
highlight! link jsOperator bgViolet
highlight! link jsStorageClass bgLime
highlight! link jsTemplateBraces bgCranberry
highlight! link jsTemplateExpression bgTurquoise
highlight! link jsThis bgGreen

" JSX, 'MaxMEllon/vim-jsx-pretty' plugin
highlight! link jsxAttrib bgLime
highlight! link jsxClosePunct bgPurple
highlight! link jsxComponentName bgBlue
highlight! link jsxOpenPunct bgLime
highlight! link jsxTagName bgBlue

" Lua
highlight! link luaBraces bgCranberry
highlight! link luaBuiltin bgGreen
highlight! link luaFuncCall bgSky
highlight! link luaSpecialTable bgSky

" Markdown, 'tpope/vim-markdown' plugin
highlight! link markdownBold bgYellow
highlight! link markdownCode bgWheat
highlight! link markdownCodeDelimiter bgWheat
highlight! link markdownError NormalNC
highlight! link markdownH1 bgOrange
highlight! link markdownHeadingRule bgBlue
highlight! link markdownItalic bgViolet
highlight! link markdownUrl bgPurple

" Markdown, 'plasticboy/vim-markdown' plugin
highlight! link mkdDelimiter bgWhite
highlight! link mkdLineBreak NormalNC
highlight! link mkdListItem bgBlue
highlight! link mkdURL bgPurple

" PHP
highlight! link phpClass bgEmerald
highlight! link phpClasses bgBlue
highlight! link phpFunction bgSky
highlight! link phpParent bgReset
highlight! link phpType bgViolet

" PureScript
highlight! link purescriptClass bgOrange
highlight! link purescriptModuleParams bgCoral

" Python
highlight! link pythonBuiltin bgBlue
highlight! link pythonClassVar bgGreen
highlight! link pythonCoding bgSky
highlight! link pythonImport bgCranberry
highlight! link pythonOperator bgViolet
highlight! link pythonRun bgSky
highlight! link pythonStatement bgViolet

" Ruby
highlight! link erubyDelimiter bgCrimson
highlight! link rubyAccess bgYellow
highlight! link rubyAssertion bgSky
highlight! link rubyAttribute bgSky
highlight! link rubyBlockParameter bgGreen
highlight! link rubyCallback bgSky
highlight! link rubyDefine bgViolet
highlight! link rubyEntities bgSky
highlight! link rubyExceptional bgCoral
highlight! link rubyGemfileMethod bgSky
highlight! link rubyInstanceVariable bgTurquoise
highlight! link rubyInterpolationDelimiter bgCranberry
highlight! link rubyMacro bgSky
highlight! link rubyModule bgBlue
highlight! link rubyPseudoVariable bgGreen
highlight! link rubyResponse bgSky
highlight! link rubyRoute bgSky
highlight! link rubySharpBang bgGrey247
highlight! link rubyStringDelimiter bgWheat

" Rust
highlight! link rustAssert bgGreen
highlight! link rustAttribute bgReset
highlight! link rustCharacterInvalid bgCranberry
highlight! link rustCharacterInvalidUnicode bgCranberry
highlight! link rustCommentBlockDoc bgGrey247
highlight! link rustCommentBlockDocError bgGrey247
highlight! link rustCommentLineDoc bgGrey247
highlight! link rustCommentLineDocError bgGrey247
highlight! link rustConstant bgOrange
highlight! link rustDerive bgGreen
highlight! link rustEscapeError bgCranberry
highlight! link rustFuncName bgBlue
highlight! link rustIdentifier bgBlue
highlight! link rustInvalidBareKeyword bgCranberry
highlight! link rustKeyword bgViolet
highlight! link rustLifetime bgViolet
highlight! link rustMacro bgGreen
highlight! link rustMacroVariable bgViolet
highlight! link rustModPath bgBlue
highlight! link rustObsoleteExternMod bgCranberry
highlight! link rustObsoleteStorage bgCranberry
highlight! link rustReservedKeyword bgCranberry
highlight! link rustSelf bgTurquoise
highlight! link rustSigil bgTurquoise
highlight! link rustStorage bgViolet
highlight! link rustStructure bgViolet
highlight! link rustTrait bgEmerald
highlight! link rustType bgEmerald

" Scala (note, link highlighting does not work, I don't know why)
exec 'highlight scalaCapitalWord ctermfg=' . s:blue.term . ' guifg=' . s:blue.hex
exec 'highlight scalaCommentCodeBlock ctermfg=' . s:grey247.term . ' guifg=' . s:grey247.hex
exec 'highlight scalaInstanceDeclaration ctermfg=' . s:turquoise.term . ' guifg=' . s:turquoise.hex
exec 'highlight scalaKeywordModifier ctermfg=' . s:lime.term . ' guifg=' . s:lime.hex
exec 'highlight scalaSpecial ctermfg=' . s:crimson.term . ' guifg=' . s:crimson.hex

" Shell scripts
highlight! link shAlias bgTurquoise
highlight! link shCommandSub bgReset
highlight! link shLoop bgViolet
highlight! link shSetList bgTurquoise
highlight! link shShellVariables bgLime
highlight! link shVariable bgTurquoise

" TypeScript (leafgarland/typescript-vim)
highlight! link typescriptDOMObjects bgBlue
highlight! link typescriptFuncComma bgWhite
highlight! link typescriptFuncKeyword bgLime
highlight! link typescriptGlobalObjects bgBlue
highlight! link typescriptIdentifier bgGreen
highlight! link typescriptNull bgGreen
highlight! link typescriptOpSymbols bgViolet
highlight! link typescriptOperator bgCrimson
highlight! link typescriptParens bgWhite
highlight! link typescriptReserved bgViolet
highlight! link typescriptStorageClass bgLime

" TypeScript (HerringtonDarkholme/yats.vim)
highlight! link typeScriptModule bgBlue
highlight! link typescriptAbstract bgCoral
highlight! link typescriptArrayMethod bgSky
highlight! link typescriptArrowFuncArg bgWhite
highlight! link typescriptBOM bgEmerald
highlight! link typescriptBOMHistoryMethod bgSky
highlight! link typescriptBOMLocationMethod bgSky
highlight! link typescriptBOMWindowProp bgGreen
highlight! link typescriptBraces bgWhite
highlight! link typescriptCall bgWhite
highlight! link typescriptClassHeritage bgEmerald
highlight! link typescriptClassKeyword bgOrange
highlight! link typescriptClassName bgEmerald
highlight! link typescriptDecorator bgLime
highlight! link typescriptDOMDocMethod bgSky
highlight! link typescriptDOMEventTargetMethod bgSky
highlight! link typescriptDOMNodeMethod bgSky
highlight! link typescriptExceptions bgCrimson
highlight! link typescriptFuncType bgWhite
highlight! link typescriptMathStaticMethod bgSky
highlight! link typescriptMethodAccessor bgViolet
highlight! link typescriptObjectLabel bgSky
highlight! link typescriptParamImpl bgWhite
highlight! link typescriptStringMethod bgSky
highlight! link typescriptTry bgCrimson
highlight! link typescriptVariable bgLime
highlight! link typescriptXHRMethod bgSky

" Vimscript
highlight! link vimBracket bgSky
highlight! link vimCommand bgViolet
highlight! link vimCommentTitle bgViolet
highlight! link vimEnvvar bgCrimson
highlight! link vimFuncName bgSky
highlight! link vimFuncSID bgSky
highlight! link vimFunction bgSky
highlight! link vimHighlight bgSky
highlight! link vimNotFunc bgViolet
highlight! link vimNotation bgSky
highlight! link vimOption bgTurquoise
highlight! link vimParenSep bgWhite
highlight! link vimSep bgWhite
highlight! link vimUserFunc bgSky

" XML
highlight! link xmlAttrib bgLime
highlight! link xmlEndTag bgBlue
highlight! link xmlTag bgLime
highlight! link xmlTagName bgBlue

" Git commits
highlight! link gitCommitBranch bgSky
highlight! link gitCommitDiscardedFile bgCrimson
highlight! link gitCommitDiscardedType bgSky
highlight! link gitCommitHeader bgPurple
highlight! link gitCommitSelectedFile bgEmerald
highlight! link gitCommitSelectedType bgSky
highlight! link gitCommitUntrackedFile bgCranberry
highlight! link gitEmail bgBlue

" Git commit diffs
highlight! link diffAdded bgGreen
highlight! link diffChanged bgCrimson
highlight! link diffIndexLine bgCrimson
highlight! link diffLine bgSky
highlight! link diffRemoved bgRed
highlight! link diffSubname bgSky

" Tagbar plugin
highlight! link TagbarFoldIcon bgGrey247
highlight! link TagbarVisibilityPublic bgLime
highlight! link TagbarVisibilityProtected bgLime
highlight! link TagbarVisibilityPrivate bgLime
highlight! link TagbarKind bgEmerald

" NERDTree plugin
highlight! link NERDTreeClosable bgEmerald
highlight! link NERDTreeCWD bgPurple
highlight! link NERDTreeDir bgSky
highlight! link NERDTreeDirSlash bgCranberry
highlight! link NERDTreeExecFile bgWheat
highlight! link NERDTreeFile bgWhite
highlight! link NERDTreeHelp bgGrey247
highlight! link NERDTreeLinkDir bgBlue
highlight! link NERDTreeLinkFile bgBlue
highlight! link NERDTreeLinkTarget bgTurquoise
highlight! link NERDTreeOpenable bgEmerald
highlight! link NERDTreePart bgGrey0
highlight! link NERDTreePartFile bgGrey0
highlight! link NERDTreeUp bgBlue

" NERDTree Git plugin
highlight! link NERDTreeGitStatusDirDirty bgWheat
highlight! link NERDTreeGitStatusModified bgCrimson
highlight! link NERDTreeGitStatusRenamed bgSky
highlight! link NERDTreeGitStatusStaged bgSky
highlight! link NERDTreeGitStatusUntracked bgRed

" fern.vim plugin
highlight! link FernBranchSymbol bgEmerald
highlight! link FernBranchText bgBlue
highlight! link FernMarkedLine bgYellow
highlight! link FernMarkedText bgCrimson
highlight! link FernRootSymbol bgPurple
highlight! link FernRootText bgPurple

" fern-git-status.vim plugin
highlight! link FernGitStatusBracket bgGrey246
highlight! link FernGitStatusIndex bgEmerald
highlight! link FernGitStatusWorktree bgCrimson

" Misc stylings
highlight! link bufExplorerHelp bgGrey247
highlight! link bufExplorerSortBy bgGrey247
highlight! link CleverFDefaultLabel bgCrimson
highlight! link CtrlPMatch bgCoral
highlight! link Directory bgBlue
highlight! link HighlightedyankRegion bgGrey0
highlight! link jsonKeyword bgSky
highlight! link jsonQuote bgWhite
highlight! link netrwClassify bgCranberry
highlight! link netrwDir bgSky
highlight! link netrwExe bgWheat
highlight! link tagName bgTurquoise
highlight! link Cheat40Header bgBlue
highlight! link yamlBlockMappingKey bgSky
highlight! link yamlFlowMappingKey bgSky
if g:bgUnderlineMatchParen
    exec 'highlight MatchWord cterm=underline gui=underline guisp=' . s:coral.hex
else
    highlight! link MatchWord bgCoral
endif
exec 'highlight snipLeadingSpaces ctermbg=bg ctermfg=fg guibg=bg guifg=fg'
exec 'highlight MatchWordCur ctermbg=bg guibg=bg'

" vimdiff/nvim -d
exec 'highlight DiffAdd ctermbg=' . s:emerald.term . ' ctermfg=' . s:black.term . ' guibg=' . s:emerald.hex . ' guifg=' . s:black.hex
exec 'highlight DiffChange ctermbg=' . s:grey236.term . ' guibg=' . s:grey236.hex
exec 'highlight DiffDelete ctermbg=' . s:grey236.term . ' ctermfg=' . s:crimson.term . ' guibg=' . s:grey236.hex . ' guifg=' . s:crimson.hex ' gui=none'
exec 'highlight DiffText ctermbg=' . s:blue.term . ' ctermfg=' . s:black.term . ' guibg=' . s:blue.hex . ' guifg=' . s:black.hex . ' gui=none'

" ALE plugin
if g:bgUndercurls
     exec 'highlight ALEError ctermbg=bg guibg=bg gui=undercurl guisp=' . s:red.hex
     exec 'highlight ALEWarning ctermbg=bg guibg=bg gui=undercurl guisp=' . s:yellow.hex
     exec 'highlight ALEInfo ctermbg=bg guibg=bg gui=undercurl guisp=' . s:sky.hex
else
    exec 'highlight ALEError ctermbg=bg guibg=bg'
    exec 'highlight ALEWarning ctermbg=bg guibg=bg'
    exec 'highlight ALEInfo ctermbg=bg guibg=bg'
endif
highlight! link ALEVirtualTextError bgGrey241
highlight! link ALEErrorSign bgRedAlert
highlight! link ALEVirtualTextWarning bgGrey241
highlight! link ALEWarningSign bgYellowAlert
highlight! link ALEVirtualTextInfo bgGrey241
highlight! link ALEInfoSign bgSkyAlert

" GitGutter plugin
highlight! link GitGutterAdd bgEmeraldAlert
highlight! link GitGutterChange bgYellowAlert
highlight! link GitGutterChangeDelete bgCoralAlert
highlight! link GitGutterDelete bgRedAlert

" Signify plugin
highlight! link SignifySignAdd bgEmeraldAlert
highlight! link SignifySignChange bgYellowAlert
highlight! link SignifySignDelete bgRedAlert

" FZF plugin
exec 'highlight fzf1 ctermfg=' . s:crimson.term . ' ctermbg=' . s:grey236.term . ' guifg=' . s:crimson.hex . ' guibg=' . s:grey236.hex
exec 'highlight fzf2 ctermfg=' . s:blue.term . ' ctermbg=' . s:grey236.term . ' guifg=' . s:blue.hex . ' guibg=' . s:grey236.hex
exec 'highlight fzf3 ctermfg=' . s:emerald.term . ' ctermbg=' . s:grey236.term . ' guifg=' . s:emerald.hex . ' guibg=' . s:grey236.hex
exec 'highlight fzfNormal ctermfg=' . s:grey249.term . ' guifg=' . s:grey249.hex
exec 'highlight fzfFgPlus ctermfg=' . s:grey254.term . ' guifg=' . s:grey254.hex
exec 'highlight fzfBorder ctermfg=' . s:grey236.term . ' guifg=' . s:grey236.hex
let g:fzf_colors = {
  \  'fg':      ['fg', 'fzfNormal'],
  \  'bg':      ['bg', 'Normal'],
  \  'hl':      ['fg', 'Boolean'],
  \  'fg+':     ['fg', 'fzfFgPlus'],
  \  'bg+':     ['bg', 'Pmenu'],
  \  'hl+':     ['fg', 'Boolean'],
  \  'info':    ['fg', 'String'],
  \  'border':  ['fg', 'fzfBorder'],
  \  'prompt':  ['fg', 'fzf2'],
  \  'pointer': ['fg', 'Exception'],
  \  'marker':  ['fg', 'StorageClass'],
  \  'spinner': ['fg', 'Type'],
  \  'header':  ['fg', 'CursorLineNr']
  \}

" Coc plugin
highlight! link CocUnusedHighlight bgWhite

" Neovim diagnostics
if has('nvim-0.6')
    " Neovim 0.6 diagnostic
    highlight! link DiagnosticError bgRed
    highlight! link DiagnosticWarn bgYellow
    highlight! link DiagnosticInfo bgSky
    highlight! link DiagnosticHint bgWhite
    if g:bgUndercurls
        exec 'highlight DiagnosticUnderlineError ctermbg=bg guibg=bg gui=undercurl guisp=' . s:red.hex
        exec 'highlight DiagnosticUnderlineWarn ctermbg=bg guibg=bg gui=undercurl guisp=' . s:yellow.hex
        exec 'highlight DiagnosticUnderlineInfo ctermbg=bg guibg=bg gui=undercurl guisp=' . s:sky.hex
        exec 'highlight DiagnosticUnderlineHint ctermbg=bg guibg=bg gui=undercurl guisp=' . s:white.hex
    else
        exec 'highlight DiagnosticUnderlineError ctermbg=bg guibg=bg gui=underline guisp=' . s:red.hex
        exec 'highlight DiagnosticUnderlineWarn ctermbg=bg guibg=bg gui=underline guisp=' . s:blue.hex
        exec 'highlight DiagnosticUnderlineInfo ctermbg=bg guibg=bg gui=underline guisp=' . s:yellow.hex
        exec 'highlight DiagnosticUnderlineHint ctermbg=bg guibg=bg gui=underline guisp=' . s:sky.hex
    endif
    highlight! link DiagnosticVirtualTextError bgGrey241
    highlight! link DiagnosticVirtualTextWarn bgGrey241
    highlight! link DiagnosticVirtualTextInfo bgGrey241
    highlight! link DiagnosticVirtualTextHint bgGrey241
    highlight! link DiagnosticSignError bgRedAlert
    highlight! link DiagnosticSignWarn bgYellowAlert
    highlight! link DiagnosticSignInfo bgSkyAlert
    highlight! link DiagnosticSignHint bgWhiteAlert
    highlight! link DiagnosticFloatingError bgRed
    highlight! link DiagnosticFloatingWarn bgYellow
    highlight! link DiagnosticFloatingInfo bgSky
    highlight! link DiagnosticFloatingHint bgWhite
    highlight! link LspSignatureActiveParameter bgGrey0
elseif has('nvim-0.5')
    " Neovim 0.5 LSP diagnostics
    if g:bgUndercurls
        exec 'highlight LspDiagnosticsUnderlineError ctermbg=bg guibg=bg gui=undercurl guisp=' . s:red.hex
        exec 'highlight LspDiagnosticsUnderlineWarning ctermbg=bg guibg=bg gui=undercurl guisp=' . s:yellow.hex
        exec 'highlight LspDiagnosticsUnderlineInformation ctermbg=bg guibg=bg gui=undercurl guisp=' . s:sky.hex
        exec 'highlight LspDiagnosticsUnderlineHint ctermbg=bg guibg=bg gui=undercurl guisp=' . s:white.hex
    else
        exec 'highlight LspDiagnosticsUnderlineError ctermbg=bg guibg=bg gui=underline guisp=' . s:red.hex
        exec 'highlight LspDiagnosticsUnderlineWarning ctermbg=bg guibg=bg gui=underline guisp=' . s:blue.hex
        exec 'highlight LspDiagnosticsUnderlineInformation ctermbg=bg guibg=bg gui=underline guisp=' . s:yellow.hex
        exec 'highlight LspDiagnosticsUnderlineHint ctermbg=bg guibg=bg gui=underline guisp=' . s:sky.hex
    endif
    highlight! link LspDiagnosticsVirtualTextWarning bgGrey241
    highlight! link LspDiagnosticsVirtualTextError bgGrey241
    highlight! link LspDiagnosticsVirtualTextInformation bgGrey241
    highlight! link LspDiagnosticsVirtualTextHint bgGrey241
    highlight! link LspDiagnosticsSignError bgRedAlert
    highlight! link LspDiagnosticsSignWarning bgYellowAlert
    highlight! link LspDiagnosticsSignInformation bgSkyAlert
    highlight! link LspDiagnosticsSignHint bgWhiteAlert
    highlight! link LspDiagnosticsFloatingError bgRed
    highlight! link LspDiagnosticsFloatingWarning bgYellow
    highlight! link LspDiagnosticsFloatingInformation bgSky
    highlight! link LspDiagnosticsFloatingHint bgWhite
    highlight! link LspSignatureActiveParameter bgGrey0
endif

" Neovim only plugins
if has('nvim')
    " NvimTree plugin
    highlight! link NvimTreeFolderIcon bgBlue
    highlight! link NvimTreeFolderName bgBlue
    highlight! link NvimTreeIndentMarker bgGrey236
    highlight! link NvimTreeOpenedFolderName bgBlue
    highlight! link NvimTreeRootFolder bgPurple
    highlight! link NvimTreeSpecialFile bgYellow
    highlight! link NvimTreeWindowPicker DiffChange
    exec 'highlight NvimTreeExecFile ctermfg=' . s:green.term . ' guifg=' . s:green.hex . ' gui=none'
    exec 'highlight NvimTreeImageFile ctermfg=' . s:violet.term . ' guifg=' . s:violet.hex . ' gui=none'
    exec 'highlight NvimTreeOpenedFile ctermfg=' . s:yellow.term . ' guifg=' . s:yellow.hex . ' gui=none'
    exec 'highlight NvimTreeSymlink ctermfg=' . s:turquoise.term . ' guifg=' . s:turquoise.hex . ' gui=none'

    " Telescope plugin
    highlight! link TelescopeBorder bgGrey236
    highlight! link TelescopeMatching bgCoral
    highlight! link TelescopeMultiSelection bgCrimson
    highlight! link TelescopeNormal bgGrey249
    highlight! link TelescopePreviewDate bgGrey246
    highlight! link TelescopePreviewGroup bgGrey246
    highlight! link TelescopePreviewLink bgTurquoise
    highlight! link TelescopePreviewMatch bgVisual
    highlight! link TelescopePreviewRead bgOrange
    highlight! link TelescopePreviewSize bgEmerald
    highlight! link TelescopePreviewUser bgGrey246
    highlight! link TelescopePromptPrefix bgBlue
    highlight! link TelescopeResultsDiffAdd bgGreen
    highlight! link TelescopeResultsDiffChange bgRed
    highlight! link TelescopeResultsSpecialComment bgGrey241
    highlight! link TelescopeSelectionCaret bgCrimson
    exec 'highlight TelescopeSelection ctermbg=' . s:grey0.term . ' ctermfg=' . s:grey254.term . ' guibg=' . s:grey0.hex . ' guifg=' . s:grey254.hex

    " gitsigns.nvim plugin
    highlight! link GitSignsAdd bgEmeraldAlert
    highlight! link GitSignsChange bgYellowAlert
    highlight! link GitSignsChangeNr bgYellowAlert
    highlight! link GitSignsChangeLn bgYellowAlert
    highlight! link GitSignsChangeDelete bgCoralAlert
    highlight! link GitSignsDelete bgRedAlert

    " Hop plugin
    highlight! link HopNextKey bgYellow
    highlight! link HopNextKey1 bgBlue
    highlight! link HopNextKey2 bgCrimson
    highlight! link HopUnmatched bgGrey247

    " Barbar plugin
    exec 'highlight BufferCurrent      ctermbg=' . s:grey234.term . ' ctermfg=' . s:white.term . '   guibg=' . s:grey234.hex . ' guifg=' . s:white.hex
    exec 'highlight BufferCurrentIndex ctermbg=' . s:grey234.term . ' ctermfg=' . s:white.term . '   guibg=' . s:grey234.hex . ' guifg=' . s:white.hex
    exec 'highlight BufferCurrentMod   ctermbg=' . s:grey234.term . ' ctermfg=' . s:wheat.term . '   guibg=' . s:grey234.hex . ' guifg=' . s:wheat.hex
    exec 'highlight BufferCurrentSign  ctermbg=' . s:grey234.term . ' ctermfg=' . s:blue.term . '    guibg=' . s:grey234.hex . ' guifg=' . s:blue.hex
    exec 'highlight BufferVisible      ctermbg=' . s:grey234.term . ' ctermfg=' . s:grey246.term . ' guibg=' . s:grey234.hex . ' guifg=' . s:grey246.hex
    exec 'highlight BufferVisibleIndex ctermbg=' . s:grey234.term . ' ctermfg=' . s:grey246.term . ' guibg=' . s:grey234.hex . ' guifg=' . s:grey246.hex
    exec 'highlight BufferVisibleMod   ctermbg=' . s:grey234.term . ' ctermfg=' . s:wheat.term . '   guibg=' . s:grey234.hex . ' guifg=' . s:wheat.hex
    exec 'highlight BufferVisibleSign  ctermbg=' . s:grey234.term . ' ctermfg=' . s:grey246.term . ' guibg=' . s:grey234.hex . ' guifg=' . s:grey246.hex
    exec 'highlight BufferInactive     ctermbg=' . s:grey236.term . ' ctermfg=' . s:grey246.term . ' guibg=' . s:grey236.hex . ' guifg=' . s:grey246.hex
    exec 'highlight BufferInactiveMod  ctermbg=' . s:grey236.term . ' ctermfg=' . s:wheat.term . '   guibg=' . s:grey236.hex . ' guifg=' . s:wheat.hex
    exec 'highlight BufferInactiveSign ctermbg=' . s:grey236.term . ' ctermfg=' . s:grey247.term . ' guibg=' . s:grey236.hex . ' guifg=' . s:grey247.hex

    " nvim-cmp plugin
    highlight! link CmpItemKind bgTurquoise
    highlight! link CmpItemMenu bgGrey247
    highlight! link CmpItemAbbrMatchFuzzy bgGrey254
endif

set background=dark

