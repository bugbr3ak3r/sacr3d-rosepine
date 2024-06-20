--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require "lush"
local hsl = lush.hsl
local hsluv = lush.hsluv

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups

    ---------------------------------------------------

    -- ==> EXAMPLE <==
    -- ---------------

    -- -- Define Vim's Normal highlight group.
    -- -- You can provide values with hsl/hsluv or anything that responds to `tostring`
    -- Normal { bg = hsl(208, 90, 30), fg = "#A3CFF5" },

    -- -- Make whitespace slightly darker than normal.
    -- -- you must define Normal before deriving from it.
    -- Whitespace { fg = Normal.fg.darken(40) },

    -- -- Make comments look the same as whitespace, but with italic text
    -- Comment { Whitespace, gui = "italic" },

    -- -- Clear all highlighting for CursorLine
    -- CursorLine {},

    ---------------------------------------------------

    SpecialKey { fg = "#9ccfd8" }, -- SpecialKey     xxx guifg=#9ccfd8
    TermCursor { gui = "reverse" }, -- TermCursor     xxx cterm=reverse gui=reverse
    NonText { fg = "#6e6a86" }, -- NonText        xxx guifg=#6e6a86
    EndOfBuffer { NonText }, -- EndOfBuffer    xxx links to NonText
    Whitespace { NonText }, -- Whitespace     xxx links to NonText
    TelescopePreviewHyphen { NonText }, -- TelescopePreviewHyphen xxx links to NonText
    TelescopePromptCounter { NonText }, -- TelescopePromptCounter xxx links to NonText
    TelescopeResultsDiffUntracked { NonText }, -- TelescopeResultsDiffUntracked xxx links to NonText
    Directory { gui = "bold", fg = "#9ccfd8" }, -- Directory      xxx cterm=bold gui=bold guifg=#9ccfd8
    FloatTitle { Directory }, -- FloatTitle     xxx links to Directory
    OilDir { Directory }, -- OilDir         xxx links to Directory
    TelescopePreviewDate { Directory }, -- TelescopePreviewDate xxx links to Directory
    TelescopePreviewDirectory { Directory }, -- TelescopePreviewDirectory xxx links to Directory
    ErrorMsg { gui = "bold", fg = "#eb6f92" }, -- ErrorMsg       xxx cterm=bold gui=bold guifg=#eb6f92
    NvimInternalError { ErrorMsg }, -- NvimInternalError xxx links to ErrorMsg
    NvimInvalidSpacing { ErrorMsg }, -- NvimInvalidSpacing xxx links to ErrorMsg
    Search { bg = "#e0def4", fg = "#232136" }, -- Search         xxx guifg=#232136 guibg=#e0def4
    PounceMatch { Search }, -- PounceMatch    xxx links to Search
    PounceGap { Search }, -- PounceGap      xxx links to Search
    TelescopePreviewMatch { Search }, -- TelescopePreviewMatch xxx links to Search
    CurSearch { bg = "#f6c177", fg = "#232136" }, -- CurSearch      xxx guifg=#232136 guibg=#f6c177
    IncSearch { CurSearch }, -- IncSearch      xxx links to CurSearch
    MoreMsg { fg = "#c4a7e7" }, -- MoreMsg        xxx guifg=#c4a7e7
    ModeMsg { fg = "#908caa" }, -- ModeMsg        xxx guifg=#908caa
    LineNr { fg = "#6e6a86" }, -- LineNr         xxx guifg=#6e6a86
    LineNrAbove { LineNr }, -- LineNrAbove    xxx links to LineNr
    LineNrBelow { LineNr }, -- LineNrBelow    xxx links to LineNr
    TelescopeResultsLineNr { LineNr }, -- TelescopeResultsLineNr xxx links to LineNr
    CursorLineNr { gui = "bold", fg = "#e0def4" }, -- CursorLineNr   xxx cterm=bold gui=bold guifg=#e0def4
    Question { fg = "#f6c177" }, -- Question       xxx guifg=#f6c177
    StatusLine { bg = "#2a273f", fg = "#908caa" }, -- StatusLine     xxx guifg=#908caa guibg=#2a273f
    MsgSeparator { StatusLine }, -- MsgSeparator   xxx links to StatusLine
    ElCommandCV { StatusLine }, -- ElCommandCV    xxx links to StatusLine
    ElCommandEx { StatusLine }, -- ElCommandEx    xxx links to StatusLine
    ElConfirm { StatusLine }, -- ElConfirm      xxx links to StatusLine
    ElInsertCompletion { StatusLine }, -- ElInsertCompletion xxx links to StatusLine
    ElMore { StatusLine }, -- ElMore         xxx links to StatusLine
    ElNormalOperatorPending { StatusLine }, -- ElNormalOperatorPending xxx links to StatusLine
    ElPrompt { StatusLine }, -- ElPrompt       xxx links to StatusLine
    ElReplace { StatusLine }, -- ElReplace      xxx links to StatusLine
    ElSBlock { StatusLine }, -- ElSBlock       xxx links to StatusLine
    ElSelect { StatusLine }, -- ElSelect       xxx links to StatusLine
    ElShell { StatusLine }, -- ElShell        xxx links to StatusLine
    ElSLine { StatusLine }, -- ElSLine        xxx links to StatusLine
    ElTerm { StatusLine }, -- ElTerm         xxx links to StatusLine
    ElVirtualReplace { StatusLine }, -- ElVirtualReplace xxx links to StatusLine
    ElVisualBlock { StatusLine }, -- ElVisualBlock  xxx links to StatusLine
    ElVisualLine { StatusLine }, -- ElVisualLine   xxx links to StatusLine
    ElVisual { StatusLine }, -- ElVisual       xxx links to StatusLine
    StatusLineNC { bg = "#27253b", fg = "#6e6a86", blend = 60 }, -- StatusLineNC   xxx guifg=#6e6a86 guibg=#27253b blend=60
    WinSeparator { fg = "#6e6a86" }, -- WinSeparator   xxx guifg=#6e6a86
    VertSplit { fg = "#6e6a86" }, -- VertSplit      xxx guifg=#6e6a86
    Title { gui = "bold", fg = "#9ccfd8" }, -- Title          xxx cterm=bold gui=bold guifg=#9ccfd8
    sym "@text.title" { Title }, -- @text.title    xxx links to Title
    LspInfoTitle { Title }, -- LspInfoTitle   xxx links to Title
    Visual { bg = "#44415a" }, -- Visual         xxx guibg=#44415a
    VisualNOS { Visual }, -- VisualNOS      xxx links to Visual
    SnippetTabstop { Visual }, -- SnippetTabstop xxx links to Visual
    TelescopePreviewLine { Visual }, -- TelescopePreviewLine xxx links to Visual
    WarningMsg { gui = "bold", fg = "#f6c177" }, -- WarningMsg     xxx cterm=bold gui=bold guifg=#f6c177
    Folded { bg = "#2a273f", fg = "#e0def4" }, -- Folded         xxx guifg=#e0def4 guibg=#2a273f
    FoldColumn { fg = "#6e6a86" }, -- FoldColumn     xxx guifg=#6e6a86
    CursorLineFold { FoldColumn }, -- CursorLineFold xxx links to FoldColumn
    DiffAdd { bg = "#3b4456", blend = 20 }, -- DiffAdd        xxx guibg=#3b4456 blend=20
    diffAdded { DiffAdd }, -- diffAdded      xxx links to DiffAdd
    NeogitDiffAddHighlight { DiffAdd }, -- NeogitDiffAddHighlight xxx links to DiffAdd
    TelescopeResultsDiffAdd { DiffAdd }, -- TelescopeResultsDiffAdd xxx links to DiffAdd
    DiffChange { bg = "#4b3949", blend = 20 }, -- DiffChange     xxx guibg=#4b3949 blend=20
    diffChanged { DiffChange }, -- diffChanged    xxx links to DiffChange
    TelescopeResultsDiffChange { DiffChange }, -- TelescopeResultsDiffChange xxx links to DiffChange
    DiffDelete { bg = "#4b3148", blend = 20 }, -- DiffDelete     xxx guibg=#4b3148 blend=20
    diffRemoved { DiffDelete }, -- diffRemoved    xxx links to DiffDelete
    NeogitDiffDeleteHighlight { DiffDelete }, -- NeogitDiffDeleteHighlight xxx links to DiffDelete
    TelescopeResultsDiffDelete { DiffDelete }, -- TelescopeResultsDiffDelete xxx links to DiffDelete
    DiffText { bg = "#4b3949", blend = 20 }, -- DiffText       xxx guibg=#4b3949 blend=20
    SignColumn { fg = "#e0def4" }, -- SignColumn     xxx guifg=#e0def4
    CursorLineSign { SignColumn }, -- CursorLineSign xxx links to SignColumn
    SpellBad { gui = "undercurl", sp = "#908caa" }, -- SpellBad       xxx cterm=undercurl gui=undercurl guisp=#908caa
    SpellCap { gui = "undercurl", sp = "#908caa" }, -- SpellCap       xxx cterm=undercurl gui=undercurl guisp=#908caa
    SpellRare { gui = "undercurl", sp = "#908caa" }, -- SpellRare      xxx cterm=undercurl gui=undercurl guisp=#908caa
    SpellLocal { gui = "undercurl", sp = "#908caa" }, -- SpellLocal     xxx cterm=undercurl gui=undercurl guisp=#908caa
    Pmenu { bg = "#2a273f", fg = "#908caa" }, -- Pmenu          xxx guifg=#908caa guibg=#2a273f
    PmenuSel { bg = "#393552", fg = "#e0def4" }, -- PmenuSel       xxx guifg=#e0def4 guibg=#393552
    PmenuKind { bg = "#2a273f", fg = "#9ccfd8" }, -- PmenuKind      xxx guifg=#9ccfd8 guibg=#2a273f
    PmenuKindSel { bg = "#393552", fg = "#908caa" }, -- PmenuKindSel   xxx guifg=#908caa guibg=#393552
    PmenuExtra { bg = "#2a273f", fg = "#6e6a86" }, -- PmenuExtra     xxx guifg=#6e6a86 guibg=#2a273f
    PmenuExtraSel { bg = "#393552", fg = "#908caa" }, -- PmenuExtraSel  xxx guifg=#908caa guibg=#393552
    PmenuSbar { bg = "#2a273f" }, -- PmenuSbar      xxx guibg=#2a273f
    PmenuThumb { bg = "#6e6a86" }, -- PmenuThumb     xxx guibg=#6e6a86
    TabLine { bg = "#2a273f", fg = "#908caa" }, -- TabLine        xxx guifg=#908caa guibg=#2a273f
    TabLineSel { gui = "bold", bg = "#393552", fg = "#e0def4" }, -- TabLineSel     xxx cterm=bold gui=bold guifg=#e0def4 guibg=#393552
    TabLineFill { bg = "#2a273f" }, -- TabLineFill    xxx guibg=#2a273f
    CursorColumn { bg = "#393552" }, -- CursorColumn   xxx guibg=#393552
    CursorLine { bg = "#393552" }, -- CursorLine     xxx guibg=#393552
    ColorColumn { bg = "#2a273f" }, -- ColorColumn    xxx guibg=#2a273f
    QuickFixLine { fg = "nvimlightcyan" }, -- QuickFixLine   xxx ctermfg=14 guifg=NvimLightCyan
    NormalNC { bg = "#232136", fg = "#e0def4" }, -- NormalNC       xxx guifg=#e0def4 guibg=#232136
    NormalFloat { bg = "#2a273f" }, -- NormalFloat    xxx guibg=#2a273f
    TelescopeNormal { NormalFloat }, -- TelescopeNormal xxx links to NormalFloat
    FzfLuaNormal { NormalFloat }, -- FzfLuaNormal   xxx links to NormalFloat
    DapUIFloatNormal { NormalFloat }, -- DapUIFloatNormal xxx links to NormalFloat
    FloatBorder { bg = "#2a273f", fg = "#6e6a86" }, -- FloatBorder    xxx guifg=#6e6a86 guibg=#2a273f
    WinBar { bg = "#2a273f", fg = "#908caa" }, -- WinBar         xxx guifg=#908caa guibg=#2a273f
    WinBarNC { bg = "#27253b", fg = "#6e6a86", blend = 60 }, -- WinBarNC       xxx guifg=#6e6a86 guibg=#27253b blend=60
    Cursor { bg = "#56526e", fg = "#e0def4" }, -- Cursor         xxx guifg=#e0def4 guibg=#56526e
    CursorIM { Cursor }, -- CursorIM       xxx links to Cursor
    RedrawDebugNormal { gui = "reverse" }, -- RedrawDebugNormal xxx cterm=reverse gui=reverse
    Underlined { gui = "underline", fg = "#c4a7e7" }, -- Underlined     xxx cterm=underline gui=underline guifg=#c4a7e7
    sym "@markup.link" { Underlined }, -- @markup.link   xxx links to Underlined
    lCursor { bg = "fg", fg = "bg" }, -- lCursor        xxx guifg=bg guibg=fg
    Normal { bg = "#232136", fg = "#e0def4" }, -- Normal         xxx guifg=#e0def4 guibg=#232136
    Ignore { Normal }, -- Ignore         xxx links to Normal
    NvimSpacing { Normal }, -- NvimSpacing    xxx links to Normal
    NvimTreeNormal { Normal }, -- NvimTreeNormal xxx links to Normal
    DapUINormal { Normal }, -- DapUINormal    xxx links to Normal
    Character { fg = "#f6c177" }, -- Character      xxx guifg=#f6c177
    sym "@character" { Character }, -- @character     xxx links to Character
    sym "@character.special" { Character }, -- @character.special xxx links to Character
    Constant { fg = "#f6c177" }, -- Constant       xxx guifg=#f6c177
    ElCommand { Constant }, -- ElCommand      xxx links to Constant
    TelescopeResultsConstant { Constant }, -- TelescopeResultsConstant xxx links to Constant
    TelescopePreviewGroup { Constant }, -- TelescopePreviewGroup xxx links to Constant
    TelescopePreviewUser { Constant }, -- TelescopePreviewUser xxx links to Constant
    TelescopePreviewRead { Constant }, -- TelescopePreviewRead xxx links to Constant
    TelescopePreviewBlock { Constant }, -- TelescopePreviewBlock xxx links to Constant
    TelescopePreviewCharDev { Constant }, -- TelescopePreviewCharDev xxx links to Constant
    TelescopePreviewPipe { Constant }, -- TelescopePreviewPipe xxx links to Constant
    Number { fg = "#f6c177" }, -- Number         xxx guifg=#f6c177
    sym "@number" { Number }, -- @number        xxx links to Number
    sym "@number.float" { Number }, -- @number.float  xxx links to Number
    NvimNumber { Number }, -- NvimNumber     xxx links to Number
    sym "@float" { Number }, -- @float         xxx links to Number
    TelescopeResultsNumber { Number }, -- TelescopeResultsNumber xxx links to Number
    Boolean { fg = "#ea9a97" }, -- Boolean        xxx guifg=#ea9a97
    sym "@boolean" { Boolean }, -- @boolean       xxx links to Boolean
    Float { fg = "#f6c177" }, -- Float          xxx guifg=#f6c177
    Conditional { fg = "#3e8fb0" }, -- Conditional    xxx guifg=#3e8fb0
    sym "@conditional" { Conditional }, -- @conditional   xxx links to Conditional
    Statement { gui = "bold", fg = "#3e8fb0" }, -- Statement      xxx cterm=bold gui=bold guifg=#3e8fb0
    TelescopePreviewWrite { Statement }, -- TelescopePreviewWrite xxx links to Statement
    TelescopePreviewSocket { Statement }, -- TelescopePreviewSocket xxx links to Statement
    Repeat { fg = "#3e8fb0" }, -- Repeat         xxx guifg=#3e8fb0
    sym "@repeat" { Repeat }, -- @repeat        xxx links to Repeat
    Label { fg = "#9ccfd8" }, -- Label          xxx guifg=#9ccfd8
    sym "@label" { Label }, -- @label         xxx links to Label
    LspInfoBorder { Label }, -- LspInfoBorder  xxx links to Label
    Keyword { fg = "#3e8fb0" }, -- Keyword        xxx guifg=#3e8fb0
    sym "@keyword" { Keyword }, -- @keyword       xxx links to Keyword
    OilSocket { Keyword }, -- OilSocket      xxx links to Keyword
    TelescopePreviewSticky { Keyword }, -- TelescopePreviewSticky xxx links to Keyword
    Exception { fg = "#3e8fb0" }, -- Exception      xxx guifg=#3e8fb0
    Include { fg = "#3e8fb0" }, -- Include        xxx guifg=#3e8fb0
    sym "@namespace" { Include }, -- @namespace     xxx links to Include
    sym "@include" { Include }, -- @include       xxx links to Include
    Define { fg = "#c4a7e7" }, -- Define         xxx guifg=#c4a7e7
    Macro { fg = "#c4a7e7" }, -- Macro          xxx guifg=#c4a7e7
    sym "@attribute" { Macro }, -- @attribute     xxx links to Macro
    sym "@text.environment" { Macro }, -- @text.environment xxx links to Macro
    sym "@macro" { Macro }, -- @macro         xxx links to Macro
    sym "@markup.environment" { Macro }, -- @markup.environment xxx links to Macro
    PreCondit { fg = "#c4a7e7" }, -- PreCondit      xxx guifg=#c4a7e7
    PreProc { PreCondit }, -- PreProc        xxx links to PreCondit
    StorageClass { fg = "#9ccfd8" }, -- StorageClass   xxx guifg=#9ccfd8
    CmpItemKindClass { StorageClass }, -- CmpItemKindClass xxx links to StorageClass
    sym "@storageclass" { StorageClass }, -- @storageclass  xxx links to StorageClass
    Type { fg = "#9ccfd8" }, -- Type           xxx guifg=#9ccfd8
    Typedef { Type }, -- Typedef        xxx links to Type
    NvimNumberPrefix { Type }, -- NvimNumberPrefix xxx links to Type
    NvimOptionSigil { Type }, -- NvimOptionSigil xxx links to Type
    CmpItemKindInterface { Type }, -- CmpItemKindInterface xxx links to Type
    sym "@text.environment.name" { Type }, -- @text.environment.name xxx links to Type
    LspInfoFiletype { Type }, -- LspInfoFiletype xxx links to Type
    TelescopeMultiSelection { Type }, -- TelescopeMultiSelection xxx links to Type
    Structure { fg = "#9ccfd8" }, -- Structure      xxx guifg=#9ccfd8
    Tag { fg = "#9ccfd8" }, -- Tag            xxx guifg=#9ccfd8
    sym "@tag" { Tag }, -- @tag           xxx links to Tag
    Special { fg = "#9ccfd8" }, -- Special        xxx guifg=#9ccfd8
    SpecialChar { Special }, -- SpecialChar    xxx links to Special
    sym "@variable.parameter.builtin" { Special }, -- @variable.parameter.builtin xxx links to Special
    sym "@attribute.builtin" { Special }, -- @attribute.builtin xxx links to Special
    sym "@markup" { Special }, -- @markup        xxx links to Special
    sym "@tag.builtin" { Special }, -- @tag.builtin   xxx links to Special
    sym "@text.math" { Special }, -- @text.math     xxx links to Special
    sym "@markup.math" { Special }, -- @markup.math   xxx links to Special
    OilChange { Special }, -- OilChange      xxx links to Special
    TelescopePreviewLink { Special }, -- TelescopePreviewLink xxx links to Special
    SpecialComment { fg = "#c4a7e7" }, -- SpecialComment xxx guifg=#c4a7e7
    sym "@text.note" { SpecialComment }, -- @text.note     xxx links to SpecialComment
    TelescopeResultsSpecialComment { SpecialComment }, -- TelescopeResultsSpecialComment xxx links to SpecialComment
    Debug { fg = "#ea9a97" }, -- Debug          xxx guifg=#ea9a97
    LspCodeLens { fg = "#908caa" }, -- LspCodeLens    xxx guifg=#908caa
    LspCodeLensSeparator { fg = "#6e6a86" }, -- LspCodeLensSeparator xxx guifg=#6e6a86
    LspInlayHint { bg = "#2b283e", fg = "#6e6a86", blend = 10 }, -- LspInlayHint   xxx guifg=#6e6a86 guibg=#2b283e blend=10
    LspReferenceRead { bg = "#44415a" }, -- LspReferenceRead xxx guibg=#44415a
    IlluminatedWordRead { LspReferenceRead }, -- IlluminatedWordRead xxx links to LspReferenceRead
    LspReferenceText { bg = "#44415a" }, -- LspReferenceText xxx guibg=#44415a
    IlluminatedWordText { LspReferenceText }, -- IlluminatedWordText xxx links to LspReferenceText
    LspReferenceWrite { bg = "#44415a" }, -- LspReferenceWrite xxx guibg=#44415a
    IlluminatedWordWrite { LspReferenceWrite }, -- IlluminatedWordWrite xxx links to LspReferenceWrite
    LspSignatureActiveParameter { bg = "#393552" }, -- LspSignatureActiveParameter xxx guibg=#393552
    DiagnosticError { fg = "#eb6f92" }, -- DiagnosticError xxx guifg=#eb6f92
    DiagnosticFloatingError { DiagnosticError }, -- DiagnosticFloatingError xxx links to DiagnosticError
    DiagnosticSignError { DiagnosticError }, -- DiagnosticSignError xxx links to DiagnosticError
    DiagnosticDefaultError { DiagnosticError }, -- DiagnosticDefaultError xxx links to DiagnosticError
    OilDelete { DiagnosticError }, -- OilDelete      xxx links to DiagnosticError
    DiagnosticWarn { fg = "#f6c177" }, -- DiagnosticWarn xxx guifg=#f6c177
    DiagnosticFloatingWarn { DiagnosticWarn }, -- DiagnosticFloatingWarn xxx links to DiagnosticWarn
    DiagnosticSignWarn { DiagnosticWarn }, -- DiagnosticSignWarn xxx links to DiagnosticWarn
    DiagnosticDefaultWarn { DiagnosticWarn }, -- DiagnosticDefaultWarn xxx links to DiagnosticWarn
    OilMove { DiagnosticWarn }, -- OilMove        xxx links to DiagnosticWarn
    DiagnosticInfo { fg = "#9ccfd8" }, -- DiagnosticInfo xxx guifg=#9ccfd8
    DiagnosticFloatingInfo { DiagnosticInfo }, -- DiagnosticFloatingInfo xxx links to DiagnosticInfo
    DiagnosticSignInfo { DiagnosticInfo }, -- DiagnosticSignInfo xxx links to DiagnosticInfo
    DiagnosticDefaultInfo { DiagnosticInfo }, -- DiagnosticDefaultInfo xxx links to DiagnosticInfo
    OilCreate { DiagnosticInfo }, -- OilCreate      xxx links to DiagnosticInfo
    DiagnosticHint { fg = "#c4a7e7" }, -- DiagnosticHint xxx guifg=#c4a7e7
    DiagnosticFloatingHint { DiagnosticHint }, -- DiagnosticFloatingHint xxx links to DiagnosticHint
    DiagnosticSignHint { DiagnosticHint }, -- DiagnosticSignHint xxx links to DiagnosticHint
    DiagnosticDefaultHint { DiagnosticHint }, -- DiagnosticDefaultHint xxx links to DiagnosticHint
    OilCopy { DiagnosticHint }, -- OilCopy        xxx links to DiagnosticHint
    DiagnosticOk { fg = "nvimlightgreen" }, -- DiagnosticOk   xxx ctermfg=10 guifg=NvimLightGreen
    DiagnosticFloatingOk { DiagnosticOk }, -- DiagnosticFloatingOk xxx links to DiagnosticOk
    DiagnosticVirtualTextOk { DiagnosticOk }, -- DiagnosticVirtualTextOk xxx links to DiagnosticOk
    DiagnosticSignOk { DiagnosticOk }, -- DiagnosticSignOk xxx links to DiagnosticOk
    DiagnosticVirtualTextError { bg = "#37293f", fg = "#eb6f92", blend = 10 }, -- DiagnosticVirtualTextError xxx guifg=#eb6f92 guibg=#37293f blend=10
    NvimDapVirtualTextError { DiagnosticVirtualTextError }, -- NvimDapVirtualTextError xxx links to DiagnosticVirtualTextError
    DiagnosticVirtualTextWarn { bg = "#38313d", fg = "#f6c177", blend = 10 }, -- DiagnosticVirtualTextWarn xxx guifg=#f6c177 guibg=#38313d blend=10
    NvimDapVirtualTextChanged { DiagnosticVirtualTextWarn }, -- NvimDapVirtualTextChanged xxx links to DiagnosticVirtualTextWarn
    DiagnosticVirtualTextInfo { bg = "#2f3246", fg = "#9ccfd8", blend = 10 }, -- DiagnosticVirtualTextInfo xxx guifg=#9ccfd8 guibg=#2f3246 blend=10
    NvimDapVirtualTextInfo { DiagnosticVirtualTextInfo }, -- NvimDapVirtualTextInfo xxx links to DiagnosticVirtualTextInfo
    DiagnosticVirtualTextHint { bg = "#332e48", fg = "#c4a7e7", blend = 10 }, -- DiagnosticVirtualTextHint xxx guifg=#c4a7e7 guibg=#332e48 blend=10
    Comment { gui = "italic", fg = "#908caa" }, -- Comment        xxx cterm=italic gui=italic guifg=#908caa
    DiagnosticUnnecessary { Comment }, -- DiagnosticUnnecessary xxx links to Comment
    sym "@comment" { Comment }, -- @comment       xxx links to Comment
    LspInfoTip { Comment }, -- LspInfoTip     xxx links to Comment
    NvimDapVirtualText { Comment }, -- NvimDapVirtualText xxx links to Comment
    OilLinkTarget { Comment }, -- OilLinkTarget  xxx links to Comment
    OilTrashSourcePath { Comment }, -- OilTrashSourcePath xxx links to Comment
    TelescopeResultsComment { Comment }, -- TelescopeResultsComment xxx links to Comment
    sym "@variable" { gui = "italic", fg = "#e0def4" }, -- @variable      xxx cterm=italic gui=italic guifg=#e0def4
    sym "@lsp.typemod.variable.injected" { sym "@variable" }, -- @lsp.typemod.variable.injected xxx links to @variable
    sym "@lsp.type.variable.svelte" { sym "@variable" }, -- @lsp.type.variable.svelte xxx links to @variable
    sym "@lsp.type.namespace.python" { sym "@variable" }, -- @lsp.type.namespace.python xxx links to @variable
    sym "@variable.builtin" { gui = "bold", fg = "#eb6f92" }, -- @variable.builtin xxx cterm=bold gui=bold guifg=#eb6f92
    sym "@lsp.typemod.variable.defaultLibrary" { sym "@variable.builtin" }, -- @lsp.typemod.variable.defaultLibrary xxx links to @variable.builtin
    sym "@variable.parameter" { gui = "italic", fg = "#c4a7e7" }, -- @variable.parameter xxx cterm=italic gui=italic guifg=#c4a7e7
    sym "@constant" { fg = "#f6c177" }, -- @constant      xxx guifg=#f6c177
    sym "@lsp.type.enumMember" { sym "@constant" }, -- @lsp.type.enumMember xxx links to @constant
    sym "@lsp.typemod.variable.constant" { sym "@constant" }, -- @lsp.typemod.variable.constant xxx links to @constant
    sym "@constant.builtin" { gui = "bold", fg = "#f6c177" }, -- @constant.builtin xxx cterm=bold gui=bold guifg=#f6c177
    sym "@module" { fg = "#e0def4" }, -- @module        xxx guifg=#e0def4
    sym "@module.builtin" { gui = "bold", fg = "#e0def4" }, -- @module.builtin xxx cterm=bold gui=bold guifg=#e0def4
    String { fg = "#f6c177" }, -- String         xxx guifg=#f6c177
    sym "@string" { String }, -- @string        xxx links to String
    sym "@string.special" { String }, -- @string.special xxx links to String
    NvimString { String }, -- NvimString     xxx links to String
    CmpItemKindSnippet { String }, -- CmpItemKindSnippet xxx links to String
    sym "@regexp" { String }, -- @regexp        xxx links to String
    TelescopePreviewSize { String }, -- TelescopePreviewSize xxx links to String
    TelescopePreviewExecute { String }, -- TelescopePreviewExecute xxx links to String
    sym "@string.regexp" { fg = "#c4a7e7" }, -- @string.regexp xxx guifg=#c4a7e7
    sym "@lsp.type.regexp" { sym "@string.regexp" }, -- @lsp.type.regexp xxx links to @string.regexp
    sym "@string.escape" { fg = "#3e8fb0" }, -- @string.escape xxx guifg=#3e8fb0
    sym "@string.special.url" { fg = "#c4a7e7" }, -- @string.special.url xxx guifg=#c4a7e7
    sym "@type" { fg = "#9ccfd8" }, -- @type          xxx guifg=#9ccfd8
    sym "@lsp.type.class" { sym "@type" }, -- @lsp.type.class xxx links to @type
    sym "@lsp.type.enum" { sym "@type" }, -- @lsp.type.enum xxx links to @type
    sym "@lsp.type.event" { sym "@type" }, -- @lsp.type.event xxx links to @type
    sym "@lsp.type.struct" { sym "@type" }, -- @lsp.type.struct xxx links to @type
    sym "@lsp.type.type" { sym "@type" }, -- @lsp.type.type xxx links to @type
    sym "@markup.environment.name" { sym "@type" }, -- @markup.environment.name xxx links to @type
    sym "@type.builtin" { gui = "bold", fg = "#9ccfd8" }, -- @type.builtin  xxx cterm=bold gui=bold guifg=#9ccfd8
    sym "@property" { gui = "italic", fg = "#9ccfd8" }, -- @property      xxx cterm=italic gui=italic guifg=#9ccfd8
    sym "@lsp.type.property" { sym "@property" }, -- @lsp.type.property xxx links to @property
    Identifier { fg = "#e0def4" }, -- Identifier     xxx guifg=#e0def4
    NvimIdentifier { Identifier }, -- NvimIdentifier xxx links to Identifier
    sym "@symbol" { Identifier }, -- @symbol        xxx links to Identifier
    sym "@string.special.symbol" { Identifier }, -- @string.special.symbol xxx links to Identifier
    CmpItemKindVariable { Identifier }, -- CmpItemKindVariable xxx links to Identifier
    TelescopeResultsIdentifier { Identifier }, -- TelescopeResultsIdentifier xxx links to Identifier
    TelescopeMultiIcon { Identifier }, -- TelescopeMultiIcon xxx links to Identifier
    sym "@function" { fg = "#ea9a97" }, -- @function      xxx guifg=#ea9a97
    sym "@lsp.type.function" { sym "@function" }, -- @lsp.type.function xxx links to @function
    Function { fg = "#ea9a97" }, -- Function       xxx guifg=#ea9a97
    CmpItemKindFunction { Function }, -- CmpItemKindFunction xxx links to Function
    sym "@function.macro" { Function }, -- @function.macro xxx links to Function
    ElNormal { Function }, -- ElNormal       xxx links to Function
    LspInfoList { Function }, -- LspInfoList    xxx links to Function
    TelescopeResultsFunction { Function }, -- TelescopeResultsFunction xxx links to Function
    TelescopeResultsField { Function }, -- TelescopeResultsField xxx links to Function
    TelescopeResultsClass { Function }, -- TelescopeResultsClass xxx links to Function
    sym "@function.builtin" { gui = "bold", fg = "#ea9a97" }, -- @function.builtin xxx cterm=bold gui=bold guifg=#ea9a97
    sym "@lsp.typemod.function.defaultLibrary" { sym "@function.builtin" }, -- @lsp.typemod.function.defaultLibrary xxx links to @function.builtin
    sym "@constructor" { fg = "#9ccfd8" }, -- @constructor   xxx guifg=#9ccfd8
    Operator { fg = "#908caa" }, -- Operator       xxx guifg=#908caa
    sym "@operator" { Operator }, -- @operator      xxx links to Operator
    NvimAssignment { Operator }, -- NvimAssignment xxx links to Operator
    NvimOperator { Operator }, -- NvimOperator   xxx links to Operator
    TelescopeResultsOperator { Operator }, -- TelescopeResultsOperator xxx links to Operator
    sym "@punctuation" { fg = "#908caa" }, -- @punctuation   xxx guifg=#908caa
    Delimiter { fg = "#908caa" }, -- Delimiter      xxx guifg=#908caa
    NvimParenthesis { Delimiter }, -- NvimParenthesis xxx links to Delimiter
    NvimColon { Delimiter }, -- NvimColon      xxx links to Delimiter
    NvimComma { Delimiter }, -- NvimComma      xxx links to Delimiter
    NvimArrow { Delimiter }, -- NvimArrow      xxx links to Delimiter
    sym "@punctuation.special" { fg = "#908caa" }, -- @punctuation.special xxx guifg=#908caa
    sym "@comment.error" { fg = "#eb6f92" }, -- @comment.error xxx guifg=#eb6f92
    sym "@comment.warning" { fg = "#f6c177" }, -- @comment.warning xxx guifg=#f6c177
    sym "@comment.note" { bg = "#28374e", fg = "#3e8fb0", blend = 20 }, -- @comment.note  xxx guifg=#3e8fb0 guibg=#28374e blend=20
    sym "@comment.todo" { bg = "#4b3949", fg = "#ea9a97", blend = 20 }, -- @comment.todo  xxx guifg=#ea9a97 guibg=#4b3949 blend=20
    Todo { bg = "#4b3949", fg = "#ea9a97", blend = 20 }, -- Todo           xxx guifg=#ea9a97 guibg=#4b3949 blend=20
    sym "@todo" { Todo }, -- @todo          xxx links to Todo
    sym "@markup.strong" { gui = "bold" }, -- @markup.strong xxx cterm=bold gui=bold
    sym "@markup.italic" { gui = "italic" }, -- @markup.italic xxx cterm=italic gui=italic
    sym "@markup.strikethrough" { gui = "strikethrough" }, -- @markup.strikethrough xxx cterm=strikethrough gui=strikethrough
    sym "@markup.underline" { gui = "underline" }, -- @markup.underline xxx cterm=underline gui=underline
    sym "@markup.heading" { gui = "bold", fg = "#9ccfd8" }, -- @markup.heading xxx cterm=bold gui=bold guifg=#9ccfd8
    sym "@diff.plus" { bg = "#3b4456", fg = "#9ccfd8", blend = 20 }, -- @diff.plus     xxx guifg=#9ccfd8 guibg=#3b4456 blend=20
    Added { fg = "nvimlightgreen" }, -- Added          xxx ctermfg=10 guifg=NvimLightGreen
    sym "@diff.minus" { bg = "#4b3148", fg = "#eb6f92", blend = 20 }, -- @diff.minus    xxx guifg=#eb6f92 guibg=#4b3148 blend=20
    Removed { fg = "nvimlightred" }, -- Removed        xxx ctermfg=9 guifg=NvimLightRed
    sym "@diff.delta" { bg = "#4b3949", blend = 20 }, -- @diff.delta    xxx guibg=#4b3949 blend=20
    Changed { fg = "nvimlightcyan" }, -- Changed        xxx ctermfg=14 guifg=NvimLightCyan
    sym "@constant.macro" { fg = "#f6c177" }, -- @constant.macro xxx guifg=#f6c177
    sym "@lsp.type.macro" { sym "@constant.macro" }, -- @lsp.type.macro xxx links to @constant.macro
    sym "@function.method" { fg = "#ea9a97" }, -- @function.method xxx guifg=#ea9a97
    sym "@lsp.type.method" { sym "@function.method" }, -- @lsp.type.method xxx links to @function.method
    DiagnosticDeprecated { gui = "strikethrough", sp = "nvimlightred" }, -- DiagnosticDeprecated xxx cterm=strikethrough gui=strikethrough guisp=NvimLightRed
    sym "@lsp.mod.deprecated" { DiagnosticDeprecated }, -- @lsp.mod.deprecated xxx links to DiagnosticDeprecated
    FloatShadow { bg = "nvimdarkgrey4", blend = 80 }, -- FloatShadow    xxx ctermbg=0 guibg=NvimDarkGrey4 blend=80
    FloatShadowThrough { bg = "nvimdarkgrey4", blend = 100 }, -- FloatShadowThrough xxx ctermbg=0 guibg=NvimDarkGrey4 blend=100
    MatchParen { bg = "#2a3d55", fg = "#3e8fb0", blend = 25 }, -- MatchParen     xxx guifg=#3e8fb0 guibg=#2a3d55 blend=25
    LeapMatch { MatchParen }, -- LeapMatch      xxx links to MatchParen
    RedrawDebugClear { bg = "#f6c177", fg = "#232136" }, -- RedrawDebugClear xxx guifg=#232136 guibg=#f6c177
    RedrawDebugComposed { bg = "#3e8fb0", fg = "#232136" }, -- RedrawDebugComposed xxx guifg=#232136 guibg=#3e8fb0
    RedrawDebugRecompose { bg = "#eb6f92", fg = "#232136" }, -- RedrawDebugRecompose xxx guifg=#232136 guibg=#eb6f92
    Error { fg = "#eb6f92" }, -- Error          xxx guifg=#eb6f92
    NvimInvalid { Error }, -- NvimInvalid    xxx links to Error
    DiagnosticUnderlineError { gui = "undercurl", sp = "#eb6f92" }, -- DiagnosticUnderlineError xxx cterm=undercurl gui=undercurl guisp=#eb6f92
    DiagnosticUnderlineWarn { gui = "undercurl", sp = "#f6c177" }, -- DiagnosticUnderlineWarn xxx cterm=undercurl gui=undercurl guisp=#f6c177
    DiagnosticUnderlineInfo { gui = "undercurl", sp = "#9ccfd8" }, -- DiagnosticUnderlineInfo xxx cterm=undercurl gui=undercurl guisp=#9ccfd8
    DiagnosticUnderlineHint { gui = "undercurl", sp = "#c4a7e7" }, -- DiagnosticUnderlineHint xxx cterm=undercurl gui=undercurl guisp=#c4a7e7
    DiagnosticUnderlineOk { gui = "underline", sp = "nvimlightgreen" }, -- DiagnosticUnderlineOk xxx cterm=underline gui=underline guisp=NvimLightGreen
    StatusLineTermNC { bg = "#33637f", fg = "#232136", blend = 60 }, -- StatusLineTermNC xxx guifg=#232136 guibg=#33637f blend=60
    MiniClueTitle { gui = "bold", bg = "#2a273f" }, -- MiniClueTitle  xxx cterm=bold gui=bold guibg=#2a273f
    WhichKeyFloat { bg = "#2a273f" }, -- WhichKeyFloat  xxx guibg=#2a273f
    IblIndent { fg = "#393552" }, -- IblIndent      xxx guifg=#393552
    IblScope { fg = "#9ccfd8" }, -- IblScope       xxx guifg=#9ccfd8
    IblWhitespace { fg = "#393552" }, -- IblWhitespace  xxx guifg=#393552
    TelescopeSelectionCaret { bg = "#393552", fg = "#ea9a97" }, -- TelescopeSelectionCaret xxx guifg=#ea9a97 guibg=#393552
    TelescopeSelection { bg = "#393552", fg = "#e0def4" }, -- TelescopeSelection xxx guifg=#e0def4 guibg=#393552
    MiniPickPrompt { gui = "bold", bg = "#2a273f" }, -- MiniPickPrompt xxx cterm=bold gui=bold guibg=#2a273f
    MiniPickBorderText { bg = "#2a273f" }, -- MiniPickBorderText xxx guibg=#2a273f
    TreesitterContextLineNumber { bg = "#393552", fg = "#ea9a97" }, -- TreesitterContextLineNumber xxx guifg=#ea9a97 guibg=#393552
    TreesitterContext { bg = "#393552" }, -- TreesitterContext xxx guibg=#393552
    CopilotSuggestion { gui = "italic", fg = "#6e6a86" }, -- CopilotSuggestion xxx cterm=italic gui=italic guifg=#6e6a86
    AlphaShortcut { fg = "#ea9a97" }, -- AlphaShortcut  xxx guifg=#ea9a97
    AlphaHeader { fg = "#3e8fb0" }, -- AlphaHeader    xxx guifg=#3e8fb0
    AlphaFooter { fg = "#f6c177" }, -- AlphaFooter    xxx guifg=#f6c177
    AlphaButtons { fg = "#9ccfd8" }, -- AlphaButtons   xxx guifg=#9ccfd8
    MiniStatuslineModeVisual { gui = "bold", bg = "#c4a7e7", fg = "#232136" }, -- MiniStatuslineModeVisual xxx cterm=bold gui=bold guifg=#232136 guibg=#c4a7e7
    MiniStatuslineModeReplace { gui = "bold", bg = "#3e8fb0", fg = "#232136" }, -- MiniStatuslineModeReplace xxx cterm=bold gui=bold guifg=#232136 guibg=#3e8fb0
    MiniStatuslineModeOther { gui = "bold", bg = "#ea9a97", fg = "#232136" }, -- MiniStatuslineModeOther xxx cterm=bold gui=bold guifg=#232136 guibg=#ea9a97
    MiniStatuslineModeNormal { gui = "bold", bg = "#ea9a97", fg = "#232136" }, -- MiniStatuslineModeNormal xxx cterm=bold gui=bold guifg=#232136 guibg=#ea9a97
    MiniStatuslineModeInsert { gui = "bold", bg = "#9ccfd8", fg = "#232136" }, -- MiniStatuslineModeInsert xxx cterm=bold gui=bold guifg=#232136 guibg=#9ccfd8
    MiniStatuslineModeCommand { gui = "bold", bg = "#eb6f92", fg = "#232136" }, -- MiniStatuslineModeCommand xxx cterm=bold gui=bold guifg=#232136 guibg=#eb6f92
    MiniStatuslineFilename { bg = "#2a273f", fg = "#6e6a86" }, -- MiniStatuslineFilename xxx guifg=#6e6a86 guibg=#2a273f
    MiniStatuslineInactive { MiniStatuslineFilename }, -- MiniStatuslineInactive xxx links to MiniStatuslineFilename
    MiniStatuslineDevinfo { bg = "#393552", fg = "#908caa" }, -- MiniStatuslineDevinfo xxx guifg=#908caa guibg=#393552
    MiniStatuslineFileinfo { MiniStatuslineDevinfo }, -- MiniStatuslineFileinfo xxx links to MiniStatuslineDevinfo
    MiniIndentscopeSymbolOff { fg = "#6e6a86" }, -- MiniIndentscopeSymbolOff xxx guifg=#6e6a86
    MiniIndentscopeSymbol { fg = "#6e6a86" }, -- MiniIndentscopeSymbol xxx guifg=#6e6a86
    MiniDiffSignDelete { fg = "#eb6f92" }, -- MiniDiffSignDelete xxx guifg=#eb6f92
    MiniDiffSignChange { fg = "#ea9a97" }, -- MiniDiffSignChange xxx guifg=#ea9a97
    MiniDiffSignAdd { fg = "#9ccfd8" }, -- MiniDiffSignAdd xxx guifg=#9ccfd8
    MiniDiffOverDelete { bg = "#4b3148", fg = "#eb6f92", blend = 20 }, -- MiniDiffOverDelete xxx guifg=#eb6f92 guibg=#4b3148 blend=20
    MiniDiffOverContext { bg = "#2a273f" }, -- MiniDiffOverContext xxx guibg=#2a273f
    MiniDiffOverChange { bg = "#4b3949", fg = "#ea9a97", blend = 20 }, -- MiniDiffOverChange xxx guifg=#ea9a97 guibg=#4b3949 blend=20
    MiniDiffOverAdd { bg = "#3b4456", fg = "#9ccfd8", blend = 20 }, -- MiniDiffOverAdd xxx guifg=#9ccfd8 guibg=#3b4456 blend=20
    TroubleNormal { bg = "#2a273f", fg = "#e0def4" }, -- TroubleNormal  xxx guifg=#e0def4 guibg=#2a273f
    TroubleCount { bg = "#2a273f", fg = "#c4a7e7" }, -- TroubleCount   xxx guifg=#c4a7e7 guibg=#2a273f
    TroubleText { fg = "#908caa" }, -- TroubleText    xxx guifg=#908caa
    NoiceCursor { bg = "#e0def4", fg = "#56526e" }, -- NoiceCursor    xxx guifg=#56526e guibg=#e0def4
    NavicText { fg = "#908caa" }, -- NavicText      xxx guifg=#908caa
    NavicSeparator { fg = "#908caa" }, -- NavicSeparator xxx guifg=#908caa
    NavicIconsVariable { fg = "#e0def4" }, -- NavicIconsVariable xxx guifg=#e0def4
    NavicIconsTypeParameter { fg = "#9ccfd8" }, -- NavicIconsTypeParameter xxx guifg=#9ccfd8
    NavicIconsStruct { fg = "#9ccfd8" }, -- NavicIconsStruct xxx guifg=#9ccfd8
    NavicIconsProperty { fg = "#9ccfd8" }, -- NavicIconsProperty xxx guifg=#9ccfd8
    NavicIconsPackage { fg = "#6e6a86" }, -- NavicIconsPackage xxx guifg=#6e6a86
    NavicIconsOperator { fg = "#908caa" }, -- NavicIconsOperator xxx guifg=#908caa
    NavicIconsObject { fg = "#f6c177" }, -- NavicIconsObject xxx guifg=#f6c177
    NavicIconsNumber { fg = "#f6c177" }, -- NavicIconsNumber xxx guifg=#f6c177
    NavicIconsNull { fg = "#eb6f92" }, -- NavicIconsNull xxx guifg=#eb6f92
    NavicIconsNamespace { fg = "#6e6a86" }, -- NavicIconsNamespace xxx guifg=#6e6a86
    NavicIconsModule { fg = "#ea9a97" }, -- NavicIconsModule xxx guifg=#ea9a97
    NavicIconsMethod { fg = "#c4a7e7" }, -- NavicIconsMethod xxx guifg=#c4a7e7
    NavicIconsKeyword { fg = "#3e8fb0" }, -- NavicIconsKeyword xxx guifg=#3e8fb0
    NavicIconsKey { fg = "#c4a7e7" }, -- NavicIconsKey  xxx guifg=#c4a7e7
    NavicIconsInterface { fg = "#9ccfd8" }, -- NavicIconsInterface xxx guifg=#9ccfd8
    NavicIconsFunction { fg = "#3e8fb0" }, -- NavicIconsFunction xxx guifg=#3e8fb0
    NavicIconsFile { fg = "#6e6a86" }, -- NavicIconsFile xxx guifg=#6e6a86
    NavicIconsField { fg = "#9ccfd8" }, -- NavicIconsField xxx guifg=#9ccfd8
    NavicIconsEvent { fg = "#f6c177" }, -- NavicIconsEvent xxx guifg=#f6c177
    NavicIconsEnumMember { fg = "#9ccfd8" }, -- NavicIconsEnumMember xxx guifg=#9ccfd8
    NavicIconsEnum { fg = "#f6c177" }, -- NavicIconsEnum xxx guifg=#f6c177
    NavicIconsConstructor { fg = "#f6c177" }, -- NavicIconsConstructor xxx guifg=#f6c177
    NavicIconsConstant { fg = "#f6c177" }, -- NavicIconsConstant xxx guifg=#f6c177
    NavicIconsClass { fg = "#9ccfd8" }, -- NavicIconsClass xxx guifg=#9ccfd8
    NavicIconsBoolean { fg = "#ea9a97" }, -- NavicIconsBoolean xxx guifg=#ea9a97
    NavicIconsArray { fg = "#f6c177" }, -- NavicIconsArray xxx guifg=#f6c177
    DashboardShortcut { fg = "#eb6f92" }, -- DashboardShortcut xxx guifg=#eb6f92
    DashboardHeader { fg = "#3e8fb0" }, -- DashboardHeader xxx guifg=#3e8fb0
    DashboardFooter { fg = "#c4a7e7" }, -- DashboardFooter xxx guifg=#c4a7e7
    DashboardCenter { fg = "#f6c177" }, -- DashboardCenter xxx guifg=#f6c177
    DapUIThread { fg = "#f6c177" }, -- DapUIThread    xxx guifg=#f6c177
    DapUIWatchesValue { DapUIThread }, -- DapUIWatchesValue xxx links to DapUIThread
    DapUIBreakpointsInfo { DapUIThread }, -- DapUIBreakpointsInfo xxx links to DapUIThread
    DapUIWatchesEmpty { fg = "#eb6f92" }, -- DapUIWatchesEmpty xxx guifg=#eb6f92
    DapUIWatchesError { DapUIWatchesEmpty }, -- DapUIWatchesError xxx links to DapUIWatchesEmpty
    DapUIVariable { fg = "#e0def4" }, -- DapUIVariable  xxx guifg=#e0def4
    DapUIValue { fg = "#e0def4" }, -- DapUIValue     xxx guifg=#e0def4
    DapUIBreakpointsPath { fg = "#9ccfd8" }, -- DapUIBreakpointsPath xxx guifg=#9ccfd8
    DapUIStoppedThread { DapUIBreakpointsPath }, -- DapUIStoppedThread xxx links to DapUIBreakpointsPath
    DapUIScope { DapUIBreakpointsPath }, -- DapUIScope     xxx links to DapUIBreakpointsPath
    DapUILineNumber { DapUIBreakpointsPath }, -- DapUILineNumber xxx links to DapUIBreakpointsPath
    DapUIDecoration { DapUIBreakpointsPath }, -- DapUIDecoration xxx links to DapUIBreakpointsPath
    DapUIBreakpointsLine { DapUIBreakpointsPath }, -- DapUIBreakpointsLine xxx links to DapUIBreakpointsPath
    DapUISource { fg = "#c4a7e7" }, -- DapUISource    xxx guifg=#c4a7e7
    DapUIModifiedValue { gui = "bold", fg = "#9ccfd8" }, -- DapUIModifiedValue xxx cterm=bold gui=bold guifg=#9ccfd8
    DapUIFrameName { fg = "#e0def4" }, -- DapUIFrameName xxx guifg=#e0def4
    DapUIFloatBorder { bg = "#2a273f", fg = "#6e6a86" }, -- DapUIFloatBorder xxx guifg=#6e6a86 guibg=#2a273f
    DapUIBreakpointsDisabledLine { fg = "#6e6a86" }, -- DapUIBreakpointsDisabledLine xxx guifg=#6e6a86
    DapUIBreakpointsCurrentLine { gui = "bold", fg = "#f6c177" }, -- DapUIBreakpointsCurrentLine xxx cterm=bold gui=bold guifg=#f6c177
    DapUICurrentFrameName { DapUIBreakpointsCurrentLine }, -- DapUICurrentFrameName xxx links to DapUIBreakpointsCurrentLine
    CmpItemKind { fg = "#908caa" }, -- CmpItemKind    xxx guifg=#908caa
    CmpItemKindMethodDefault { CmpItemKind }, -- CmpItemKindMethodDefault xxx links to CmpItemKind
    CmpItemKindInterfaceDefault { CmpItemKind }, -- CmpItemKindInterfaceDefault xxx links to CmpItemKind
    CmpItemKindFieldDefault { CmpItemKind }, -- CmpItemKindFieldDefault xxx links to CmpItemKind
    CmpItemKindValueDefault { CmpItemKind }, -- CmpItemKindValueDefault xxx links to CmpItemKind
    CmpItemKindSnippetDefault { CmpItemKind }, -- CmpItemKindSnippetDefault xxx links to CmpItemKind
    CmpItemKindFunctionDefault { CmpItemKind }, -- CmpItemKindFunctionDefault xxx links to CmpItemKind
    CmpItemKindKeywordDefault { CmpItemKind }, -- CmpItemKindKeywordDefault xxx links to CmpItemKind
    CmpItemKindOperatorDefault { CmpItemKind }, -- CmpItemKindOperatorDefault xxx links to CmpItemKind
    CmpItemKindEnumDefault { CmpItemKind }, -- CmpItemKindEnumDefault xxx links to CmpItemKind
    CmpItemKindConstructorDefault { CmpItemKind }, -- CmpItemKindConstructorDefault xxx links to CmpItemKind
    CmpItemKindClassDefault { CmpItemKind }, -- CmpItemKindClassDefault xxx links to CmpItemKind
    CmpItemKindEventDefault { CmpItemKind }, -- CmpItemKindEventDefault xxx links to CmpItemKind
    CmpItemKindPropertyDefault { CmpItemKind }, -- CmpItemKindPropertyDefault xxx links to CmpItemKind
    CmpItemKindTextDefault { CmpItemKind }, -- CmpItemKindTextDefault xxx links to CmpItemKind
    CmpItemKindFileDefault { CmpItemKind }, -- CmpItemKindFileDefault xxx links to CmpItemKind
    CmpItemKindColorDefault { CmpItemKind }, -- CmpItemKindColorDefault xxx links to CmpItemKind
    CmpItemKindFolderDefault { CmpItemKind }, -- CmpItemKindFolderDefault xxx links to CmpItemKind
    CmpItemKindEnumMemberDefault { CmpItemKind }, -- CmpItemKindEnumMemberDefault xxx links to CmpItemKind
    CmpItemKindStructDefault { CmpItemKind }, -- CmpItemKindStructDefault xxx links to CmpItemKind
    CmpItemKindConstantDefault { CmpItemKind }, -- CmpItemKindConstantDefault xxx links to CmpItemKind
    CmpItemKindReferenceDefault { CmpItemKind }, -- CmpItemKindReferenceDefault xxx links to CmpItemKind
    CmpItemKindVariableDefault { CmpItemKind }, -- CmpItemKindVariableDefault xxx links to CmpItemKind
    CmpItemKindUnitDefault { CmpItemKind }, -- CmpItemKindUnitDefault xxx links to CmpItemKind
    CmpItemKindTypeParameterDefault { CmpItemKind }, -- CmpItemKindTypeParameterDefault xxx links to CmpItemKind
    CmpItemKindModuleDefault { CmpItemKind }, -- CmpItemKindModuleDefault xxx links to CmpItemKind
    CmpItemAbbrMatchFuzzy { gui = "bold", fg = "#e0def4" }, -- CmpItemAbbrMatchFuzzy xxx cterm=bold gui=bold guifg=#e0def4
    CmpItemAbbrMatch { gui = "bold", fg = "#e0def4" }, -- CmpItemAbbrMatch xxx cterm=bold gui=bold guifg=#e0def4
    CmpItemAbbrDeprecated { gui = "strikethrough", fg = "#908caa" }, -- CmpItemAbbrDeprecated xxx cterm=strikethrough gui=strikethrough guifg=#908caa
    CmpItemAbbr { fg = "#908caa" }, -- CmpItemAbbr    xxx guifg=#908caa
    WhichKeyValue { fg = "#ea9a97" }, -- WhichKeyValue  xxx guifg=#ea9a97
    WhichKeySeparator { fg = "#908caa" }, -- WhichKeySeparator xxx guifg=#908caa
    WhichKeyGroup { fg = "#9ccfd8" }, -- WhichKeyGroup  xxx guifg=#9ccfd8
    WhichKeyDesc { fg = "#f6c177" }, -- WhichKeyDesc   xxx guifg=#f6c177
    WhichKey { fg = "#c4a7e7" }, -- WhichKey       xxx guifg=#c4a7e7
    FlashLabel { bg = "#eb6f92", fg = "#232136" }, -- FlashLabel     xxx guifg=#232136 guibg=#eb6f92
    StatusLineTerm { bg = "#3e8fb0", fg = "#232136" }, -- StatusLineTerm xxx guifg=#232136 guibg=#3e8fb0
    NeoTreeTitleBar { StatusLineTerm }, -- NeoTreeTitleBar xxx links to StatusLineTerm
    NvimTreeWindowPicker { StatusLineTerm }, -- NvimTreeWindowPicker xxx links to StatusLineTerm
    LeapLabelSecondary { StatusLineTerm }, -- LeapLabelSecondary xxx links to StatusLineTerm
    NeoTreeGitUntracked { fg = "#908caa" }, -- NeoTreeGitUntracked xxx guifg=#908caa
    NeoTreeGitRenamed { fg = "#3e8fb0" }, -- NeoTreeGitRenamed xxx guifg=#3e8fb0
    NeoTreeGitModified { fg = "#ea9a97" }, -- NeoTreeGitModified xxx guifg=#ea9a97
    NeoTreeGitIgnored { fg = "#6e6a86" }, -- NeoTreeGitIgnored xxx guifg=#6e6a86
    NeoTreeGitDeleted { fg = "#eb6f92" }, -- NeoTreeGitDeleted xxx guifg=#eb6f92
    NeoTreeGitConflict { fg = "#c4a7e7" }, -- NeoTreeGitConflict xxx guifg=#c4a7e7
    NeoTreeGitAdded { fg = "#9ccfd8" }, -- NeoTreeGitAdded xxx guifg=#9ccfd8
    NeotestWatching { fg = "#c4a7e7" }, -- NeotestWatching xxx guifg=#c4a7e7
    NeotestUnknown { fg = "#908caa" }, -- NeotestUnknown xxx guifg=#908caa
    NeotestTest { fg = "#f6c177" }, -- NeotestTest    xxx guifg=#f6c177
    NeotestTarget { fg = "#eb6f92" }, -- NeotestTarget  xxx guifg=#eb6f92
    NeotestSkipped { fg = "#908caa" }, -- NeotestSkipped xxx guifg=#908caa
    NeotestWinSelect { fg = "#6e6a86" }, -- NeotestWinSelect xxx guifg=#6e6a86
    NeotestRunning { fg = "#f6c177" }, -- NeotestRunning xxx guifg=#f6c177
    NeotestPassed { fg = "#3e8fb0" }, -- NeotestPassed  xxx guifg=#3e8fb0
    NeotestNamespace { fg = "#f6c177" }, -- NeotestNamespace xxx guifg=#f6c177
    NeotestMarked { gui = "bold", fg = "#ea9a97" }, -- NeotestMarked  xxx cterm=bold gui=bold guifg=#ea9a97
    NeotestFocused { bg = "#44415a", fg = "#f6c177" }, -- NeotestFocused xxx guifg=#f6c177 guibg=#44415a
    NeotestFile { fg = "#e0def4" }, -- NeotestFile    xxx guifg=#e0def4
    NeotestFailed { fg = "#eb6f92" }, -- NeotestFailed  xxx guifg=#eb6f92
    NeotestExpandMarker { fg = "#44415a" }, -- NeotestExpandMarker xxx guifg=#44415a
    NeotestDir { fg = "#9ccfd8" }, -- NeotestDir     xxx guifg=#9ccfd8
    sym "@punctuation.delimiter" { fg = "#908caa" }, -- @punctuation.delimiter xxx guifg=#908caa
    sym "@punctuation.bracket" { fg = "#908caa" }, -- @punctuation.bracket xxx guifg=#908caa
    IndentBlanklineSpaceCharBlankline { gui = "nocombine", fg = "#6e6a86" }, -- IndentBlanklineSpaceCharBlankline xxx cterm=nocombine gui=nocombine guifg=#6e6a86
    IndentBlanklineSpaceChar { gui = "nocombine", fg = "#6e6a86" }, -- IndentBlanklineSpaceChar xxx cterm=nocombine gui=nocombine guifg=#6e6a86
    IndentBlanklineChar { gui = "nocombine", fg = "#6e6a86" }, -- IndentBlanklineChar xxx cterm=nocombine gui=nocombine guifg=#6e6a86
    sym "@text" { fg = "#e0def4" }, -- @text          xxx guifg=#e0def4
    sym "@text.warning" { fg = "#f6c177" }, -- @text.warning  xxx guifg=#f6c177
    sym "@interface" { fg = "#9ccfd8" }, -- @interface     xxx guifg=#9ccfd8
    sym "@lsp.type.interface" { sym "@interface" }, -- @lsp.type.interface xxx links to @interface
    sym "@conceal.markdown" { fg = "#908caa" }, -- @conceal.markdown xxx guifg=#908caa
    sym "@tag.delimiter" { fg = "#908caa" }, -- @tag.delimiter xxx guifg=#908caa
    sym "@tag.attribute" { fg = "#c4a7e7" }, -- @tag.attribute xxx guifg=#c4a7e7
    markdownH6 { gui = "bold", fg = "#9ccfd8" }, -- markdownH6     xxx cterm=bold gui=bold guifg=#9ccfd8
    markdownH6Delimiter { markdownH6 }, -- markdownH6Delimiter xxx links to markdownH6
    sym "@markup.heading.6.markdown" { markdownH6 }, -- @markup.heading.6.markdown xxx links to markdownH6
    sym "@text.title.6.markdown" { markdownH6 }, -- @text.title.6.markdown xxx links to markdownH6
    NeorgHeading6Title { markdownH6 }, -- NeorgHeading6Title xxx links to markdownH6
    VimwikiHeader6 { markdownH6 }, -- VimwikiHeader6 xxx links to markdownH6
    NeotestBorder { fg = "#44415a" }, -- NeotestBorder  xxx guifg=#44415a
    NeotestAdapterName { fg = "#c4a7e7" }, -- NeotestAdapterName xxx guifg=#c4a7e7
    NvimTreeRootFolder { gui = "bold", fg = "#9ccfd8" }, -- NvimTreeRootFolder xxx cterm=bold gui=bold guifg=#9ccfd8
    NvimTreeFolderName { fg = "#9ccfd8" }, -- NvimTreeFolderName xxx guifg=#9ccfd8
    NvimTreeOpenedFolderName { NvimTreeFolderName }, -- NvimTreeOpenedFolderName xxx links to NvimTreeFolderName
    NvimTreeOpenedFile { bg = "#393552", fg = "#e0def4" }, -- NvimTreeOpenedFile xxx guifg=#e0def4 guibg=#393552
    NvimTreeImageFile { fg = "#e0def4" }, -- NvimTreeImageFile xxx guifg=#e0def4
    NvimTreeGitStaged { fg = "#c4a7e7" }, -- NvimTreeGitStaged xxx guifg=#c4a7e7
    NvimTreeGitRenamed { fg = "#3e8fb0" }, -- NvimTreeGitRenamed xxx guifg=#3e8fb0
    NvimTreeGitNew { fg = "#9ccfd8" }, -- NvimTreeGitNew xxx guifg=#9ccfd8
    NvimTreeGitMerge { fg = "#c4a7e7" }, -- NvimTreeGitMerge xxx guifg=#c4a7e7
    NvimTreeGitIgnored { fg = "#6e6a86" }, -- NvimTreeGitIgnored xxx guifg=#6e6a86
    NvimTreeGitDirty { fg = "#ea9a97" }, -- NvimTreeGitDirty xxx guifg=#ea9a97
    NvimTreeGitDeleted { fg = "#eb6f92" }, -- NvimTreeGitDeleted xxx guifg=#eb6f92
    NvimTreeFolderIcon { fg = "#908caa" }, -- NvimTreeFolderIcon xxx guifg=#908caa
    NvimTreeFileStaged { fg = "#c4a7e7" }, -- NvimTreeFileStaged xxx guifg=#c4a7e7
    NvimTreeFileRenamed { fg = "#3e8fb0" }, -- NvimTreeFileRenamed xxx guifg=#3e8fb0
    NvimTreeFileNew { fg = "#9ccfd8" }, -- NvimTreeFileNew xxx guifg=#9ccfd8
    NvimTreeFileMerge { fg = "#c4a7e7" }, -- NvimTreeFileMerge xxx guifg=#c4a7e7
    NvimTreeFileDirty { fg = "#ea9a97" }, -- NvimTreeFileDirty xxx guifg=#ea9a97
    NvimTreeFileDeleted { fg = "#eb6f92" }, -- NvimTreeFileDeleted xxx guifg=#eb6f92
    NvimTreeEmptyFolderName { fg = "#6e6a86" }, -- NvimTreeEmptyFolderName xxx guifg=#6e6a86
    ModesVisual { bg = "#c4a7e7" }, -- ModesVisual    xxx guibg=#c4a7e7
    ModesInsert { bg = "#9ccfd8" }, -- ModesInsert    xxx guibg=#9ccfd8
    ModesDelete { bg = "#eb6f92" }, -- ModesDelete    xxx guibg=#eb6f92
    ModesCopy { bg = "#f6c177" }, -- ModesCopy      xxx guibg=#f6c177
    SignDelete { fg = "#eb6f92" }, -- SignDelete     xxx guifg=#eb6f92
    GitSignsDelete { SignDelete }, -- GitSignsDelete xxx links to SignDelete
    SignChange { fg = "#ea9a97" }, -- SignChange     xxx guifg=#ea9a97
    GitSignsChange { SignChange }, -- GitSignsChange xxx links to SignChange
    SignAdd { fg = "#9ccfd8" }, -- SignAdd        xxx guifg=#9ccfd8
    GitSignsAdd { SignAdd }, -- GitSignsAdd    xxx links to SignAdd
    BufferVisibleTarget { fg = "#f6c177" }, -- BufferVisibleTarget xxx guifg=#f6c177
    BufferVisibleSign { fg = "#6e6a86" }, -- BufferVisibleSign xxx guifg=#6e6a86
    BufferVisibleMod { fg = "#9ccfd8" }, -- BufferVisibleMod xxx guifg=#9ccfd8
    BufferVisibleIndex { fg = "#908caa" }, -- BufferVisibleIndex xxx guifg=#908caa
    BufferVisible { fg = "#908caa" }, -- BufferVisible  xxx guifg=#908caa
    BufferInactiveTarget { fg = "#f6c177" }, -- BufferInactiveTarget xxx guifg=#f6c177
    BufferInactiveSign { fg = "#6e6a86" }, -- BufferInactiveSign xxx guifg=#6e6a86
    BufferInactiveMod { fg = "#9ccfd8" }, -- BufferInactiveMod xxx guifg=#9ccfd8
    BufferInactiveIndex { fg = "#908caa" }, -- BufferInactiveIndex xxx guifg=#908caa
    BufferInactive { fg = "#908caa" }, -- BufferInactive xxx guifg=#908caa
    BufferCurrentTarget { bg = "#393552", fg = "#f6c177" }, -- BufferCurrentTarget xxx guifg=#f6c177 guibg=#393552
    BufferCurrentSign { bg = "#393552", fg = "#908caa" }, -- BufferCurrentSign xxx guifg=#908caa guibg=#393552
    BufferCurrentMod { bg = "#393552", fg = "#9ccfd8" }, -- BufferCurrentMod xxx guifg=#9ccfd8 guibg=#393552
    BufferCurrentIndex { bg = "#393552", fg = "#e0def4" }, -- BufferCurrentIndex xxx guifg=#e0def4 guibg=#393552
    BufferCurrent { bg = "#393552", fg = "#e0def4" }, -- BufferCurrent  xxx guifg=#e0def4 guibg=#393552
    sym "@parameter" { gui = "italic", fg = "#c4a7e7" }, -- @parameter     xxx cterm=italic gui=italic guifg=#c4a7e7
    sym "@lsp.type.parameter" { sym "@parameter" }, -- @lsp.type.parameter xxx links to @parameter
    LspFloatWinBorder { bg = "#2a273f", fg = "#6e6a86" }, -- LspFloatWinBorder xxx guifg=#6e6a86 guibg=#2a273f
    LspSagaHoverBorder { LspFloatWinBorder }, -- LspSagaHoverBorder xxx links to LspFloatWinBorder
    LspSagaLspFinderBorder { LspFloatWinBorder }, -- LspSagaLspFinderBorder xxx links to LspFloatWinBorder
    LspSagaCodeActionBorder { bg = "#2a273f", fg = "#ea9a97" }, -- LspSagaCodeActionBorder xxx guifg=#ea9a97 guibg=#2a273f
    LspSagaCodeActionTruncateLine { LspSagaCodeActionBorder }, -- LspSagaCodeActionTruncateLine xxx links to LspSagaCodeActionBorder
    LspSagaDefPreviewBorder { bg = "#2a273f", fg = "#6e6a86" }, -- LspSagaDefPreviewBorder xxx guifg=#6e6a86 guibg=#2a273f
    LspSagaDiagnosticHeader { gui = "bold", fg = "#9ccfd8" }, -- LspSagaDiagnosticHeader xxx cterm=bold gui=bold guifg=#9ccfd8
    NavicIconsString { fg = "#f6c177" }, -- NavicIconsString xxx guifg=#f6c177
    LspSagaDiagnosticBorder { bg = "#2a273f", fg = "#f6c177" }, -- LspSagaDiagnosticBorder xxx guifg=#f6c177 guibg=#2a273f
    LspSagaDiagnosticTruncateLine { LspSagaDiagnosticBorder }, -- LspSagaDiagnosticTruncateLine xxx links to LspSagaDiagnosticBorder
    sym "@text.uri" { fg = "#c4a7e7" }, -- @text.uri      xxx guifg=#c4a7e7
    sym "@text.underline" { gui = "underline" }, -- @text.underline xxx cterm=underline gui=underline
    markdownH5 { gui = "bold", fg = "#3e8fb0" }, -- markdownH5     xxx cterm=bold gui=bold guifg=#3e8fb0
    markdownH5Delimiter { markdownH5 }, -- markdownH5Delimiter xxx links to markdownH5
    sym "@text.title.5.markdown" { markdownH5 }, -- @text.title.5.markdown xxx links to markdownH5
    NeorgHeading5Title { markdownH5 }, -- NeorgHeading5Title xxx links to markdownH5
    sym "@markup.heading.5.markdown" { markdownH5 }, -- @markup.heading.5.markdown xxx links to markdownH5
    VimwikiHeader5 { markdownH5 }, -- VimwikiHeader5 xxx links to markdownH5
    htmlH5 { markdownH5 }, -- htmlH5         xxx links to markdownH5
    markdownH4 { gui = "bold", fg = "#f6c177" }, -- markdownH4     xxx cterm=bold gui=bold guifg=#f6c177
    markdownH4Delimiter { markdownH4 }, -- markdownH4Delimiter xxx links to markdownH4
    sym "@text.title.4.markdown" { markdownH4 }, -- @text.title.4.markdown xxx links to markdownH4
    sym "@markup.heading.4.markdown" { markdownH4 }, -- @markup.heading.4.markdown xxx links to markdownH4
    NeorgHeading4Title { markdownH4 }, -- NeorgHeading4Title xxx links to markdownH4
    VimwikiHeader4 { markdownH4 }, -- VimwikiHeader4 xxx links to markdownH4
    htmlH4 { markdownH4 }, -- htmlH4         xxx links to markdownH4
    markdownH3 { gui = "bold", fg = "#ea9a97" }, -- markdownH3     xxx cterm=bold gui=bold guifg=#ea9a97
    markdownH3Delimiter { markdownH3 }, -- markdownH3Delimiter xxx links to markdownH3
    sym "@text.title.3.markdown" { markdownH3 }, -- @text.title.3.markdown xxx links to markdownH3
    sym "@markup.heading.3.markdown" { markdownH3 }, -- @markup.heading.3.markdown xxx links to markdownH3
    NeorgHeading3Title { markdownH3 }, -- NeorgHeading3Title xxx links to markdownH3
    VimwikiHeader3 { markdownH3 }, -- VimwikiHeader3 xxx links to markdownH3
    htmlH3 { markdownH3 }, -- htmlH3         xxx links to markdownH3
    markdownH2 { gui = "bold", fg = "#9ccfd8" }, -- markdownH2     xxx cterm=bold gui=bold guifg=#9ccfd8
    markdownH2Delimiter { markdownH2 }, -- markdownH2Delimiter xxx links to markdownH2
    sym "@text.title.2.markdown" { markdownH2 }, -- @text.title.2.markdown xxx links to markdownH2
    sym "@markup.heading.2.markdown" { markdownH2 }, -- @markup.heading.2.markdown xxx links to markdownH2
    NeorgHeading2Title { markdownH2 }, -- NeorgHeading2Title xxx links to markdownH2
    VimwikiHeader2 { markdownH2 }, -- VimwikiHeader2 xxx links to markdownH2
    htmlH2 { markdownH2 }, -- htmlH2         xxx links to markdownH2
    markdownH1 { gui = "bold", fg = "#c4a7e7" }, -- markdownH1     xxx cterm=bold gui=bold guifg=#c4a7e7
    markdownH1Delimiter { markdownH1 }, -- markdownH1Delimiter xxx links to markdownH1
    sym "@text.title.1.markdown" { markdownH1 }, -- @text.title.1.markdown xxx links to markdownH1
    sym "@markup.heading.1.markdown" { markdownH1 }, -- @markup.heading.1.markdown xxx links to markdownH1
    NeorgHeading1Title { markdownH1 }, -- NeorgHeading1Title xxx links to markdownH1
    VimwikiHeader1 { markdownH1 }, -- VimwikiHeader1 xxx links to markdownH1
    htmlH1 { markdownH1 }, -- htmlH1         xxx links to markdownH1
    sym "@text.strike" { gui = "strikethrough" }, -- @text.strike   xxx cterm=strikethrough gui=strikethrough
    sym "@text.emphasis" { gui = "italic" }, -- @text.emphasis xxx cterm=italic gui=italic
    sym "@text.diff.delete" { bg = "#4b3148", fg = "#eb6f92", blend = 20 }, -- @text.diff.delete xxx guifg=#eb6f92 guibg=#4b3148 blend=20
    sym "@text.diff.add" { bg = "#3b4456", fg = "#9ccfd8", blend = 20 }, -- @text.diff.add xxx guifg=#9ccfd8 guibg=#3b4456 blend=20
    sym "@text.danger" { fg = "#eb6f92" }, -- @text.danger   xxx guifg=#eb6f92
    sym "@method" { fg = "#ea9a97" }, -- @method        xxx guifg=#ea9a97
    sym "@field" { fg = "#9ccfd8" }, -- @field         xxx guifg=#9ccfd8
    sym "@class" { fg = "#9ccfd8" }, -- @class         xxx guifg=#9ccfd8
    sym "@attribute.diff" { fg = "#f6c177" }, -- @attribute.diff xxx guifg=#f6c177
    LspSagaCodeActionTitle { gui = "bold", fg = "#f6c177" }, -- LspSagaCodeActionTitle xxx cterm=bold gui=bold guifg=#f6c177
    LspSagaCodeActionContent { fg = "#9ccfd8" }, -- LspSagaCodeActionContent xxx guifg=#9ccfd8
    LspSagaAutoPreview { fg = "#908caa" }, -- LspSagaAutoPreview xxx guifg=#908caa
    LspFloatWinNormal { bg = "#2a273f" }, -- LspFloatWinNormal xxx guibg=#2a273f
    DefinitionPreviewTitle { gui = "bold", fg = "#ea9a97" }, -- DefinitionPreviewTitle xxx cterm=bold gui=bold guifg=#ea9a97
    DefinitionIcon { fg = "#ea9a97" }, -- DefinitionIcon xxx guifg=#ea9a97
    DefinitionCount { fg = "#ea9a97" }, -- DefinitionCount xxx guifg=#ea9a97
    markdownUrl { gui = "underline", sp = "#c4a7e7", fg = "#c4a7e7" }, -- markdownUrl    xxx cterm=underline gui=underline guifg=#c4a7e7 guisp=#c4a7e7
    mkdURL { markdownUrl }, -- mkdURL         xxx links to markdownUrl
    VimwikiLink { markdownUrl }, -- VimwikiLink    xxx links to markdownUrl
    mkdLinkDef { markdownUrl }, -- mkdLinkDef     xxx links to markdownUrl
    mkdLink { markdownUrl }, -- mkdLink        xxx links to markdownUrl
    mkdInlineURL { markdownUrl }, -- mkdInlineURL   xxx links to markdownUrl
    markdownLinkText { markdownUrl }, -- markdownLinkText xxx links to markdownUrl
    htmlLink { markdownUrl }, -- htmlLink       xxx links to markdownUrl
    sym "@variable.member" { fg = "#9ccfd8" }, -- @variable.member xxx guifg=#9ccfd8
    sym "@function.method.call" { fg = "#c4a7e7" }, -- @function.method.call xxx guifg=#c4a7e7
    sym "@keyword.operator" { fg = "#908caa" }, -- @keyword.operator xxx guifg=#908caa
    sym "@keyword.storage" { fg = "#9ccfd8" }, -- @keyword.storage xxx guifg=#9ccfd8
    sym "@keyword.return" { fg = "#3e8fb0" }, -- @keyword.return xxx guifg=#3e8fb0
    sym "@keyword.exception" { fg = "#3e8fb0" }, -- @keyword.exception xxx guifg=#3e8fb0
    sym "@keyword.conditional" { fg = "#3e8fb0" }, -- @keyword.conditional xxx guifg=#3e8fb0
    sym "@keyword.conditional.ternary" { fg = "#3e8fb0" }, -- @keyword.conditional.ternary xxx guifg=#3e8fb0
    sym "@keyword.directive" { fg = "#c4a7e7" }, -- @keyword.directive xxx guifg=#c4a7e7
    sym "@keyword.directive.define" { fg = "#c4a7e7" }, -- @keyword.directive.define xxx guifg=#c4a7e7
    LspSagaFinderSelection { fg = "#f6c177" }, -- LspSagaFinderSelection xxx guifg=#f6c177
    sym "@comment.info" { bg = "#3b4456", fg = "#9ccfd8", blend = 20 }, -- @comment.info  xxx guifg=#9ccfd8 guibg=#3b4456 blend=20
    sym "@text.strong" { gui = "bold" }, -- @text.strong   xxx cterm=bold gui=bold
    NeorgMarkerTitle { gui = "bold", fg = "#9ccfd8" }, -- NeorgMarkerTitle xxx cterm=bold gui=bold guifg=#9ccfd8
    NotifyWARNTitle { fg = "#f6c177" }, -- NotifyWARNTitle xxx guifg=#f6c177
    NotifyWARNIcon { NotifyWARNTitle }, -- NotifyWARNIcon xxx links to NotifyWARNTitle
    NotifyWARNBorder { bg = "#2a273f", fg = "#f6c177" }, -- NotifyWARNBorder xxx guifg=#f6c177 guibg=#2a273f
    NotifyTRACETitle { fg = "#c4a7e7" }, -- NotifyTRACETitle xxx guifg=#c4a7e7
    NotifyTRACEIcon { NotifyTRACETitle }, -- NotifyTRACEIcon xxx links to NotifyTRACETitle
    NotifyTRACEBorder { bg = "#2a273f", fg = "#c4a7e7" }, -- NotifyTRACEBorder xxx guifg=#c4a7e7 guibg=#2a273f
    NotifyINFOTitle { fg = "#9ccfd8" }, -- NotifyINFOTitle xxx guifg=#9ccfd8
    NotifyINFOIcon { NotifyINFOTitle }, -- NotifyINFOIcon xxx links to NotifyINFOTitle
    NotifyINFOBorder { bg = "#2a273f", fg = "#9ccfd8" }, -- NotifyINFOBorder xxx guifg=#9ccfd8 guibg=#2a273f
    NotifyERRORTitle { fg = "#eb6f92" }, -- NotifyERRORTitle xxx guifg=#eb6f92
    NotifyERRORIcon { NotifyERRORTitle }, -- NotifyERRORIcon xxx links to NotifyERRORTitle
    NotifyERRORBorder { bg = "#2a273f", fg = "#eb6f92" }, -- NotifyERRORBorder xxx guifg=#eb6f92 guibg=#2a273f
    NotifyDEBUGTitle { fg = "#6e6a86" }, -- NotifyDEBUGTitle xxx guifg=#6e6a86
    NotifyDEBUGIcon { NotifyDEBUGTitle }, -- NotifyDEBUGIcon xxx links to NotifyDEBUGTitle
    NotifyDEBUGBorder { bg = "#2a273f", fg = "#6e6a86" }, -- NotifyDEBUGBorder xxx guifg=#6e6a86 guibg=#2a273f
    FzfLuaBufFlagAlt { fg = "#908caa" }, -- FzfLuaBufFlagAlt xxx guifg=#908caa
    FzfLuaBufFlagCur { fg = "#908caa" }, -- FzfLuaBufFlagCur xxx guifg=#908caa
    FzfLuaHeaderBind { fg = "#ea9a97" }, -- FzfLuaHeaderBind xxx guifg=#ea9a97
    FzfLuaHeaderText { fg = "#eb6f92" }, -- FzfLuaHeaderText xxx guifg=#eb6f92
    FzfLuaBorder { bg = "#2a273f", fg = "#6e6a86" }, -- FzfLuaBorder   xxx guifg=#6e6a86 guibg=#2a273f
    FzfLuaTitle { gui = "bold", fg = "#9ccfd8" }, -- FzfLuaTitle    xxx cterm=bold gui=bold guifg=#9ccfd8
    TelescopeTitle { gui = "bold", fg = "#9ccfd8" }, -- TelescopeTitle xxx cterm=bold gui=bold guifg=#9ccfd8
    TelescopePreviewTitle { TelescopeTitle }, -- TelescopePreviewTitle xxx links to TelescopeTitle
    TelescopeResultsTitle { TelescopeTitle }, -- TelescopeResultsTitle xxx links to TelescopeTitle
    TelescopePromptTitle { TelescopeTitle }, -- TelescopePromptTitle xxx links to TelescopeTitle
    TelescopePromptPrefix { fg = "#908caa" }, -- TelescopePromptPrefix xxx guifg=#908caa
    TelescopeMatching { fg = "#ea9a97" }, -- TelescopeMatching xxx guifg=#ea9a97
    TelescopeBorder { bg = "#2a273f", fg = "#6e6a86" }, -- TelescopeBorder xxx guifg=#6e6a86 guibg=#2a273f
    TelescopePreviewBorder { TelescopeBorder }, -- TelescopePreviewBorder xxx links to TelescopeBorder
    TelescopeResultsBorder { TelescopeBorder }, -- TelescopeResultsBorder xxx links to TelescopeBorder
    TelescopePromptBorder { TelescopeBorder }, -- TelescopePromptBorder xxx links to TelescopeBorder
    HopUnmatched { fg = "#6e6a86" }, -- HopUnmatched   xxx guifg=#6e6a86
    HopNextKey2 { bg = "#28374e", fg = "#3e8fb0", blend = 20 }, -- HopNextKey2    xxx guifg=#3e8fb0 guibg=#28374e blend=20
    HopNextKey1 { bg = "#3b4456", fg = "#9ccfd8", blend = 20 }, -- HopNextKey1    xxx guifg=#9ccfd8 guibg=#3b4456 blend=20
    HopNextKey { bg = "#4b3148", fg = "#eb6f92", blend = 20 }, -- HopNextKey     xxx guifg=#eb6f92 guibg=#4b3148 blend=20
    PounceAcceptBest { bg = "#4d4143", fg = "#f6c177", blend = 20 }, -- PounceAcceptBest xxx guifg=#f6c177 guibg=#4d4143 blend=20
    PounceAccept { bg = "#4b3148", fg = "#eb6f92", blend = 20 }, -- PounceAccept   xxx guifg=#eb6f92 guibg=#4b3148 blend=20
    TargetWord { fg = "#c4a7e7" }, -- TargetWord     xxx guifg=#c4a7e7
    SagaShadow { bg = "#393552" }, -- SagaShadow     xxx guibg=#393552
    ReferencesIcon { fg = "#ea9a97" }, -- ReferencesIcon xxx guifg=#ea9a97
    ReferencesCount { fg = "#ea9a97" }, -- ReferencesCount xxx guifg=#ea9a97
    LspSagaSignatureHelpBorder { bg = "#2a273f", fg = "#9ccfd8" }, -- LspSagaSignatureHelpBorder xxx guifg=#9ccfd8 guibg=#2a273f
    LspSagaShTruncateLine { LspSagaSignatureHelpBorder }, -- LspSagaShTruncateLine xxx links to LspSagaSignatureHelpBorder
    LspSagaRenamePromptPrefix { fg = "#eb6f92" }, -- LspSagaRenamePromptPrefix xxx guifg=#eb6f92
    LspSagaRenameBorder { bg = "#2a273f", fg = "#3e8fb0" }, -- LspSagaRenameBorder xxx guifg=#3e8fb0 guibg=#2a273f
    sym "@markup.list" { fg = "#e0def4" }, -- @markup.list   xxx guifg=#e0def4
    sym "@markup.list.unchecked" { fg = "#e0def4" }, -- @markup.list.unchecked xxx guifg=#e0def4
    sym "@markup.list.checked" { bg = "#2f3246", fg = "#9ccfd8", blend = 10 }, -- @markup.list.checked xxx guifg=#9ccfd8 guibg=#2f3246 blend=10
    sym "@markup.raw.delimiter.markdown" { fg = "#908caa" }, -- @markup.raw.delimiter.markdown xxx guifg=#908caa
    sym "@markup.link.url" { fg = "#c4a7e7" }, -- @markup.link.url xxx guifg=#c4a7e7
    sym "@markup.link.label.markdown_inline" { fg = "#9ccfd8" }, -- @markup.link.label.markdown_inline xxx guifg=#9ccfd8
    sym "@markup.link.markdown_inline" { fg = "#908caa" }, -- @markup.link.markdown_inline xxx guifg=#908caa
    sym "@markup.quote" { fg = "#908caa" }, -- @markup.quote  xxx guifg=#908caa
    sym "@comment.hint" { bg = "#433c59", fg = "#c4a7e7", blend = 20 }, -- @comment.hint  xxx guifg=#c4a7e7 guibg=#433c59 blend=20
    sym "@keyword.debug" { fg = "#ea9a97" }, -- @keyword.debug xxx guifg=#ea9a97
    sym "@keyword.repeat" { fg = "#3e8fb0" }, -- @keyword.repeat xxx guifg=#3e8fb0
    sym "@keyword.import" { fg = "#3e8fb0" }, -- @keyword.import xxx guifg=#3e8fb0
    VimwikiNoExistsLink { fg = "#eb6f92" }, -- VimwikiNoExistsLink xxx guifg=#eb6f92
    VimwikiList { fg = "#c4a7e7" }, -- VimwikiList    xxx guifg=#c4a7e7
    VimwikiHeaderChar { fg = "#908caa" }, -- VimwikiHeaderChar xxx guifg=#908caa
    VimwikiHR { fg = "#908caa" }, -- VimwikiHR      xxx guifg=#908caa
    NeogitHunkHeaderHighlight { bg = "#2a273f" }, -- NeogitHunkHeaderHighlight xxx guibg=#2a273f
    NeogitHunkHeader { bg = "#2a273f" }, -- NeogitHunkHeader xxx guibg=#2a273f
    NeogitFilePath { gui = "italic", fg = "#9ccfd8" }, -- NeogitFilePath xxx cterm=italic gui=italic guifg=#9ccfd8
    NeogitDiffContextHighlight { bg = "#2a273f" }, -- NeogitDiffContextHighlight xxx guibg=#2a273f
    NeogitChangeUpdated { gui = "bold,italic", fg = "#ea9a97" }, -- NeogitChangeUpdated xxx cterm=bold,italic gui=bold,italic guifg=#ea9a97
    NeogitChangeRenamed { gui = "bold,italic", fg = "#3e8fb0" }, -- NeogitChangeRenamed xxx cterm=bold,italic gui=bold,italic guifg=#3e8fb0
    NeogitChangeNewFile { gui = "bold,italic", fg = "#c4a7e7" }, -- NeogitChangeNewFile xxx cterm=bold,italic gui=bold,italic guifg=#c4a7e7
    NeogitChangeModified { gui = "bold,italic", fg = "#ea9a97" }, -- NeogitChangeModified xxx cterm=bold,italic gui=bold,italic guifg=#ea9a97
    NeogitChangeDeleted { gui = "bold,italic", fg = "#eb6f92" }, -- NeogitChangeDeleted xxx cterm=bold,italic gui=bold,italic guifg=#eb6f92
    NeogitChangeCopied { gui = "bold,italic", fg = "#908caa" }, -- NeogitChangeCopied xxx cterm=bold,italic gui=bold,italic guifg=#908caa
    NeogitChangeBothModified { gui = "bold,italic", fg = "#ea9a97" }, -- NeogitChangeBothModified xxx cterm=bold,italic gui=bold,italic guifg=#ea9a97
    NeogitChangeAdded { gui = "bold,italic", fg = "#9ccfd8" }, -- NeogitChangeAdded xxx cterm=bold,italic gui=bold,italic guifg=#9ccfd8
    mkdRule { fg = "#908caa" }, -- mkdRule        xxx guifg=#908caa
    mkdListItemLine { fg = "#e0def4" }, -- mkdListItemLine xxx guifg=#e0def4
    mkdID { gui = "underline", fg = "#9ccfd8" }, -- mkdID          xxx cterm=underline gui=underline guifg=#9ccfd8
    mkdFootnotes { fg = "#9ccfd8" }, -- mkdFootnotes   xxx guifg=#9ccfd8
    mkdCodeStart { fg = "#9ccfd8" }, -- mkdCodeStart   xxx guifg=#9ccfd8
    mkdCodeEnd { fg = "#9ccfd8" }, -- mkdCodeEnd     xxx guifg=#9ccfd8
    mkdCodeDelimiter { fg = "#ea9a97" }, -- mkdCodeDelimiter xxx guifg=#ea9a97
    mkdCode { gui = "italic", fg = "#9ccfd8" }, -- mkdCode        xxx cterm=italic gui=italic guifg=#9ccfd8
    markdownDelimiter { fg = "#908caa" }, -- markdownDelimiter xxx guifg=#908caa
    htmlTagName { fg = "#9ccfd8" }, -- htmlTagName    xxx guifg=#9ccfd8
    htmlTagN { fg = "#e0def4" }, -- htmlTagN       xxx guifg=#e0def4
    htmlTag { fg = "#908caa" }, -- htmlTag        xxx guifg=#908caa
    htmlItalic { gui = "italic" }, -- htmlItalic     xxx cterm=italic gui=italic
    htmlEndTag { fg = "#908caa" }, -- htmlEndTag     xxx guifg=#908caa
    htmlBold { gui = "bold" }, -- htmlBold       xxx cterm=bold gui=bold
    htmlArg { fg = "#c4a7e7" }, -- htmlArg        xxx guifg=#c4a7e7
    healthWarning { fg = "#f6c177" }, -- healthWarning  xxx guifg=#f6c177
    healthSuccess { fg = "#9ccfd8" }, -- healthSuccess  xxx guifg=#9ccfd8
    healthError { fg = "#eb6f92" }, -- healthError    xxx guifg=#eb6f92
    CmpItemAbbrDefault { fg = "#908caa" }, -- CmpItemAbbrDefault xxx guifg=#908caa
    CmpItemAbbrDeprecatedDefault { fg = "#908caa" }, -- CmpItemAbbrDeprecatedDefault xxx guifg=#908caa
    CmpItemAbbrMatchDefault { fg = "#908caa" }, -- CmpItemAbbrMatchDefault xxx guifg=#908caa
    CmpItemAbbrMatchFuzzyDefault { fg = "#908caa" }, -- CmpItemAbbrMatchFuzzyDefault xxx guifg=#908caa
    CmpItemKindDefault { fg = "#9ccfd8" }, -- CmpItemKindDefault xxx guifg=#9ccfd8
    CmpItemMenuDefault { fg = "#908caa" }, -- CmpItemMenuDefault xxx guifg=#908caa
    CmpItemMenu { CmpItemMenuDefault }, -- CmpItemMenu    xxx links to CmpItemMenuDefault
    DapUIType { fg = "#d484ff" }, -- DapUIType      xxx guifg=#d484ff
    DapUIStepOver { fg = "#00f1f5" }, -- DapUIStepOver  xxx guifg=#00f1f5
    DapUIStepInto { fg = "#00f1f5" }, -- DapUIStepInto  xxx guifg=#00f1f5
    DapUIStepBack { fg = "#00f1f5" }, -- DapUIStepBack  xxx guifg=#00f1f5
    DapUIStepOut { fg = "#00f1f5" }, -- DapUIStepOut   xxx guifg=#00f1f5
    DapUIStop { fg = "#f70067" }, -- DapUIStop      xxx guifg=#f70067
    DapUIPlayPause { fg = "#a9ff68" }, -- DapUIPlayPause xxx guifg=#a9ff68
    DapUIRestart { fg = "#a9ff68" }, -- DapUIRestart   xxx guifg=#a9ff68
    DapUIUnavailable { fg = "#424242" }, -- DapUIUnavailable xxx guifg=#424242
    DapUIWinSelect { gui = "bold", fg = "#00f1f5" }, -- DapUIWinSelect xxx ctermfg=14 gui=bold guifg=#00f1f5
    DapUINormalNC { bg = "#27253b" }, -- DapUINormalNC  xxx guibg=#27253b
    DapUIPlayPauseNC { bg = "#27253b", fg = "#a9ff68" }, -- DapUIPlayPauseNC xxx guifg=#a9ff68 guibg=#27253b
    DapUIRestartNC { bg = "#27253b", fg = "#a9ff68" }, -- DapUIRestartNC xxx guifg=#a9ff68 guibg=#27253b
    DapUIStopNC { bg = "#27253b", fg = "#f70067" }, -- DapUIStopNC    xxx guifg=#f70067 guibg=#27253b
    DapUIUnavailableNC { bg = "#27253b", fg = "#424242" }, -- DapUIUnavailableNC xxx guifg=#424242 guibg=#27253b
    DapUIStepOverNC { bg = "#27253b", fg = "#00f1f5" }, -- DapUIStepOverNC xxx guifg=#00f1f5 guibg=#27253b
    DapUIStepIntoNC { bg = "#27253b", fg = "#00f1f5" }, -- DapUIStepIntoNC xxx guifg=#00f1f5 guibg=#27253b
    DapUIStepBackNC { bg = "#27253b", fg = "#00f1f5" }, -- DapUIStepBackNC xxx guifg=#00f1f5 guibg=#27253b
    DapUIStepOutNC { bg = "#27253b", fg = "#00f1f5" }, -- DapUIStepOutNC xxx guifg=#00f1f5 guibg=#27253b
  }
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
