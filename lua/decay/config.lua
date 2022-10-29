local M = {}

M.highlights_base = function (colors, opts)
  return {
    Normal = { fg = colors.foreground, bg = colors.background },
    StatusLine = { bg = colors.statusline_bg, fg = colors.foreground },
    StatusLineNC = { bg = colors.statusline_bg, fg = colors.color7 }, -- note that if `StatusLineNC` is equal to `StatusLine`, nvim will use '^' in the status-line of the current window
    SignColumn = { bg = colors.background, fg = colors.background },
    MsgArea = { fg = colors.foreground, bg = colors.background },
    ModeMsg = { fg = colors.foreground, bg = colors.background },
    MsgSeparator = { fg = colors.foreground, bg = colors.background },
    SpellBad = { fg = colors.color2 },
    SpellCap = { fg = colors.color6 },
    SpellLocal = { fg = colors.color4 },
    SpellRare = { fg = colors.color6 },
    NormalNC = { fg = colors.foreground, bg = colors.background },
    WildMenu = { fg = colors.color7, bg = colors.color4 },
    CursorLineNr = { fg = colors.foreground },
    Comment = { fg = colors.comments, italic = opts.italics.comments },
    Folded = { fg = colors.color4, bg = colors.background },
    FoldColumn = { fg = colors.color4, bg = colors.background },
    LineNr = { fg = colors.color8, bg = colors.background },
    FloatBorder = { fg = colors.background, bg = colors.background },
    Whitespace = { fg = colors.color1 },
    VertSplit = { bg = colors.background, fg = colors.color0 },
    CursorLine = { bg = colors.cursorline },
    CursorColumn = { bg = colors.background },
    ColorColumn = { bg = colors.background },
    NormalFloat = { bg = colors.background },
    Visual = { bg = colors.color0, fg = colors.foreground },
    VisualNOS = { bg = colors.background },
    WarningMsg = { fg = colors.color3, bg = colors.background },
    DiffAdd = { bg = colors.background, fg = colors.color2 },
    DiffChange = { bg = colors.background, fg = colors.color4 },
    DiffDelete = { bg = colors.background, fg = colors.color1 },
    QuickFixLine = { bg = colors.color2 },
    MatchParen = { fg = colors.color4, bg = colors.background },
    Cursor = { fg = colors.fomeground, bg = colors.cursor },
    lCursor = { fg = colors.foreground, bg = colors.cursor },
    CursorIM = { fg = colors.foreground, bg = colors.cursor },
    TermCursor = { fg = colors.foreground, bg = colors.cursor },
    TermCursorNC = { fg = colors.foreground, bg = colors.cursor },
    Conceal = { fg = colors.color4, bg = colors.background },
    Directory = { fg = colors.color4 },
    SpecialKey = { fg = colors.color4 },
    Title = { fg = colors.color4 },
    ErrorMsg = { fg = colors.color1, bg = colors.background },
    Search = { fg = colors.background, bg = colors.color10 },
    IncSearch = { fg = colors.background, bg = colors.color10 },
    Substitute = { fg = colors.color3, bg = colors.color6 },
    MoreMsg = { fg = colors.color5 },
    Question = { fg = colors.color5 },
    EndOfBuffer = { fg = colors.background },
    NonText = { fg = colors.color1 },
    Variable = { fg = colors.color5 },
    String = { fg = colors.color2 },
    Character = { fg = colors.color12 },
    Constant = { fg = colors.color5 },
    Number = { fg = colors.color1 },
    Boolean = { fg = colors.color5 },
    Float = { fg = colors.color5 },
    Identifier = { fg = colors.color5 },
    Function = { fg = colors.color4 },
    Operator = { fg = colors.color6 },
    Type = { fg = colors.color5 },
    StorageClass = { fg = colors.color5 },
    Structure = { fg = colors.color6 },
    Typedef = { fg = colors.color6 },
    Keyword = { fg = colors.color5, italic = opts.italics.code },
    Statement = { fg = colors.color6 },
    Conditional = { fg = colors.color5 },
    Repeat = { fg = colors.color5, italic = opts.italics.code },
    Label = { fg = colors.color1 },
    Exception = { fg = colors.color9 },
    Include = { fg = colors.color5 },
    PreProc = { fg = colors.color4 },
    Define = { fg = colors.color4 },
    Macro = { fg = colors.color6 },
    PreCondit = { fg = colors.color6 },
    Special = { fg = colors.color6 },
    SpecialChar = { fg = colors.foreground },
    Tag = { fg = colors.color4 },
    Debug = { fg = colors.color1 },
    Delimiter = { fg = colors.foreground },
    SpecialComment = { fg = colors.comments },
    Ignore = { fg = colors.color7, bg = colors.background },
    Todo = { fg = colors.color1, bg = colors.background },
    Error = { fg = colors.color1, bg = colors.background },
    TabLine = { fg = colors.color2, bg = colors.contrast },
    TabLineSel = { fg = colors.foreground, bg = colors.background },
    TabLineFill = { fg = colors.foreground, bg = colors.background },

    -- Treesitter
    ["@comment"] = { fg = colors.comments },
    ["@error"] = { fg = colors.color1 },
    ["@preproc"] = { fg = colors.color5 }, -- various preprocessor directives & shebangs
    ["@define"] = { fg = colors.color5 }, -- preprocessor definition directives
    ["@operator"] = { fg = colors.color6 }, -- For any operator: +, but also -> and * in cp.

    -- Punctuation
    ["@punctuation.delimiter"] = { fg = colors.color6 }, -- For delimiters ie: .
    ["@punctuation.bracket"] = { fg = colors.color6 }, -- For brackets and parenthesis.
    ["@punctuation.special"] = { fg = colors.color6 }, -- For special punctutation that does not fall in the catagories before.

    -- Literals
    ["@string"] = { fg = colors.color2 }, -- For strings.
    ["@string.regex"] = { fg = colors.color3 }, -- For regexes.
    ["@string.escape"] = { fg = colors.color3 }, -- For escape characters within a string.
    ["@string.special"] = { fg = colors.color2 }, -- other special strings (e.g. dates)

    ["@character"] = { fg = colors.color4 }, -- character literals
    ["@character.special"] = { fg = colors.color4 }, -- special characters (e.g. wildcards)

    ["@boolean"] = { fg = colors.color5 }, -- For booleans.
    ["@number"] = { fg = colors.color1 }, -- For all numbers
    ["@float"] = { fg = colors.color1 }, -- For floats.

    -- Functions
    ["@function"] = { fg = colors.color4 }, -- For function (calls and definitions).
    ["@function.builtin"] = { fg = colors.color4 }, -- For builtin functions: table.insert in Lua.
    ["@function.call"] = { fg = colors.color4 }, -- function calls
    ["@function.macro"] = { fg = colors.color6 }, -- For macro defined functions (calls and definitions): each macro_rules in Ruscp.
    ["@method"] = { fg = colors.color4 }, -- For method calls and definitions.

    ["@method.call"] = { fg = colors.color4 }, -- method calls

    ["@constructor"] = { fg = colors.color3 }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.
    ["@parameter"] = { fg = colors.color6 }, -- For parameters of a function.

    -- Keywords
    ["@keyword"] = { fg = colors.color5 }, -- For keywords that don't fall in previous categories.
    ["@keyword.function"] = { fg = colors.color5 }, -- For keywords used to define a fuction.
    ["@keyword.operator"] = { fg = colors.color5 }, -- For new keyword operator
    ["@keyword.return"] = { fg = colors.color5 },

    ["@conditional"] = { fg = colors.color5 }, -- For keywords related to conditionnals.
    ["@repeat"] = { fg = colors.color5 }, -- For keywords related to loops.
    -- @debug            ; keywords related to debugging
    ["@label"] = { fg = colors.color5 }, -- For labels: label: in C and :label: in Lua.
    ["@include"] = { fg = colors.color5 }, -- For includes: #include in C, use or extern crate in Rust, or require in Lua.
    ["@exception"] = { fg = colors.color1 }, -- For exception related keywords.

    -- Types

    ["@type"] = { fg = colors.color3 }, -- For types.
    ["@type.builtin"] = { fg = colors.color3 }, -- For builtin types.
    ["@type.definition"] = { fg = colors.color6 }, -- type definitions (e.g. `typedef` in C)
    ["@type.qualifier"] = { fg = colors.color5 }, -- type qualifiers (e.g. `const`)

    ["@storageclass"] = { fg = colors.color3 }, -- visibility/life-time/etc. modifiers (e.g. `static`)
    ["@attribute"] = { fg = colors.color4 }, -- attribute annotations (e.g. Python decorators)
    ["@field"] = { fg = colors.color6 }, -- For fields.
    ["@property"] = { fg = colors.color6 }, -- Same as TSField.

    -- Identifiers

    ["@variable"] = { fg = colors.foreground }, -- Any variable name that does not have another highlighcp.
    ["@variable.builtin"] = { fg = colors.color3 }, -- Variable names that are defined by the languages, like this or self.

    ["@constant"] = { fg = colors.color3 }, -- For constants
    ["@constant.builtin"] = { fg = colors.color3 }, -- For constant that are built in the language: nil in Lua.
    ["@constant.macro"] = { fg = colors.color1 }, -- For constants that are defined by macros: NULL in cp.

    ["@namespace"] = { fg = colors.color5 }, -- For identifiers referring to modules and namespaces.
    ["@symbol"] = { fg = colors.color5 },

    -- Text

    ["@text"] = { fg = colors.foreground }, -- For strings considerated text in a markup language.
    ["@text.strong"] = { fg = colors.foreground, bold = true }, -- italic
    ["@text.emphasis"] = { fg = colors.color6 },
    ["@text.underline"] = { sp = colors.foreground, undercurl = true }, -- underlined text
    ["@text.strike"] = { fg = colors.foreground }, -- strikethrough text
    ["@text.title"] = { fg = colors.color4 }, -- titles like: # Example
    ["@text.literal"] = { fg = colors.color6 },
    ["@text.uri"] = { fg = colors.color6, undercurl = true }, -- urls, links and emails
    ["@text.math"] = { fg = colors.color4 }, -- math environments (e.g. `$ ... $` in LaTeX)
    ["@text.environment"] = { fg = colors.color5 }, -- text environments of markup languages
    ["@text.environment.name"] = { fg = colors.color4 }, -- text indicating the type of an environment
    ["@text.reference"] = { fg = colors.color5 }, -- references

    ["@text.todo"] = { bg = colors.color3 }, -- todo notes
    ["@text.note"] = { fg = colors.background, bg = colors.color5 },
    ["@text.warning"] = { fg = colors.background, bg = colors.color3 },
    ["@text.danger"] = { fg = colors.background, bg = colors.color1 },

    ["@text.diff.add"] = { fg = colors.color2 }, -- added text (for diff files)
    ["@text.diff.delete"] = { fg = colors.color1 }, -- deleted text (for diff files)

    -- Tags
    ["@tag"] = { fg = colors.color1 }, -- Tags like html tag names.
    ["@tag.attribute"] = { fg = colors.color4 }, -- Tags like html tag names.
    ["@tag.delimiter"] = { fg = colors.foreground }, -- Tag delimiter like < > /

    -- Language specific:

    -- toml
    ["@property.toml"] = { fg = colors.color4 }, -- Differentiates between string and properties

    -- json
    ["@label.json"] = { fg = colors.color4 }, -- For labels: label: in C and :label: in Lua.

    -- lua
    ["@field.lua"] = { fg = colors.color6 },
    ["@constructor.lua"] = { fg = colors.color4 }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.

    -- typescript
    ["@constructor.typescript"] = { fg = colors.color3 },

    -- TSX (Typescript React)
    ["@keyword.export"] = { fg = colors.color5 },
    ["@constructor.tsx"] = { fg = colors.color3 },
    ["@tag.attribute.tsx"] = { fg = colors.color5 },

    -- cpp
    ["@property.cpp"] = { fg = colors.color5 },

    -- yaml
    ["@field.yaml"] = { fg = colors.color4 }, -- For fields.

    -- Ruby
    ["@symbol.ruby"] = { fg = colors.color1 },

    -- LspTrouble
    LspTroubleText = { fg = colors.foreground },
    LspTroubleCount = { fg = colors.color6, bg = colors.foreground },
    LspTroubleNormal = { fg = colors.foreground, bg = colors.background },

    -- Illuminate
    illuminatedWord = { bg = colors.foreground },
    illuminatedCurWord = { bg = colors.foreground },

    -- diff
    diffAdded = { fg = colors.color4 },
    diffRemoved = { fg = colors.color1 },
    diffChanged = { fg = colors.color5 },
    diffOldFile = { fg = colors.color5 },
    diffNewFile = { fg = colors.color5 },
    diffFile = { fg = colors.color7 },
    diffLine = { fg = colors.color1 },
    diffIndexLine = { fg = colors.color6 },

   -- Neogit
    NeogitBranch = { fg = colors.color6 },
    NeogitRemote = { fg = colors.color6 },
    NeogitHunkHeader = { bg = colors.background, fg = colors.foreground },
    NeogitHunkHeaderHighlight = { bg = colors.foreground, fg = colors.color7 },
    NeogitDiffContextHighlight = { bg = colors.background, fg = colors.foreground },
    NeogitDiffDeleteHighlight = { fg = colors.color1, bg = colors.color1 },
    NeogitDiffAddHighlight = { fg = colors.color4, bg = colors.color4 },

    -- GitGutter
    GitGutterAdd = { fg = colors.color4 }, -- diff mode: Added line |diff.txt|
    GitGutterChange = { fg = colors.color5 }, -- diff mode: Changed line |diff.txt|
    GitGutterDelete = { fg = colors.color1 }, -- diff mode: Deleted line |diff.txt|

    -- GitSigns
    GitSignsAdd = { fg = colors.color4 }, -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = colors.color5 }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = colors.color1 }, -- diff mode: Deleted line |diff.txt|

    -- Telescope
    TelescopeBorder = { fg = colors.color0, bg = colors.background },
    TelescopeNormal = { fg = colors.foreground, bg = colors.background },
    TelescopeSelection = { fg = colors.background, bg = colors.color2 },

    -- Indent Blank Line
    IndentBlanklineChar = { fg = colors.color0, bg = 'NONE' },
    IndentBlanklineContextChar = { fg = colors.comments, bg = 'NONE' },
    IndentBlanklineContextStart = { sp = colors.comments, underline = true, bg = 'NONE' },

    -- NvimTree
    NvimTreeNormal = { fg = colors.foreground, bg = colors.background },
    NvimTreeNormalNC = { fg = colors.foreground, bg = colors.background },
    NvimTreeRootFolder = { fg = colors.color1 },
    NvimTreeGitDirty = { fg = colors.color5 },
    NvimTreeGitNew = { fg = colors.color4 },
    NvimTreeGitDeleted = { fg = colors.color1 },
    NvimTreeSpecialFile = { fg = colors.color6 },
    NvimTreeIndentMarker = { fg = colors.color0 },
    NvimTreeImageFile = { fg = colors.foreground },
    NvimTreeSymlink = { fg = colors.color7 },
    NvimTreeFolderIcon = { fg = colors.color4 },
    NvimTreeFolderName = { fg = colors.foreground },
    NvimTreeOpenedFolderName = { fg = colors.color4 },
    NvimTreeEmptyFolderName = { fg = colors.color2 },
    NvimTreeStatusLineNC = { bg = colors.background, fg = colors.background },

    -- LspSaga
    LspFloatWinNormal = { bg = colors.background },
    LspFloatWinBorder = { fg = colors.background },
    LspSagaBorderTitle = { fg = colors.color7 },
    LspSagaHoverBorder = { fg = colors.color7 },
    LspSagaRenameBorder = { fg = colors.color4 },
    LspSagaDefPreviewBorder = { fg = colors.color4 },
    LspSagaCodeActionBorder = { fg = colors.color7 },
    LspSagaCodeActionTitle = { fg = colors.color7 },
    LspSagaCodeActionContent = { fg = colors.color6 },
    LspSagaSignatureHelpBorder = { fg = colors.color1 },
    LspSagaDiagnosticHeader = { fg = colors.color4 },
    LspSagaDiagnosticBorder = { fg = colors.comments },
    LspSagaLspFinderBorder = { fg = colors.comments },
    LspSagaFinderSelection = { fg = colors.colo4 },
    ReferencesCount = { fg = colors.color6 },
    DefinitionCount = { fg = colors.color6 },
    DefinitionIcon = { fg = colors.color7 },
    ReferencesIcon = { fg = colors.color7 },
    TargetWord = { fg = colors.color7 },

    -- NeoVim
    healthError = { fg = colors.color1 },
    healthSuccess = { fg = colors.color4 },
    healthWarning = { fg = colors.color5 },

    -- BufferLine
    BufferLineIndicatorSelected = { fg = colors.color2 },
    BufferLineFill = { fg = colors.foreground, bg = colors.contrast },

   -- Barbar
   BufferCurrentSign = { fg = colors.blue, bg = colors.blue },
   BufferInactiveSign = { fg = colors.background, bg = colors.background },
   BufferOffset = { fg = colors.background, bg = colors.background },
   BufferTabpageFill = { fg = colors.background, bg = colors.background },

    -- Diagnostics support
    DiagnosticError = { fg = colors.color1 }, -- red
    DiagnosticWarn = { fg = colors.color3 }, -- yellow
    DiagnosticInfo = { fg = colors.color4 }, -- blue
    DiagnosticHint = { fg = colors.color6 }, -- cyan

    -- Underline
    DiagnosticUnderlineError = { undercurl = true, sp = colors.color1 }, -- red
    DiagnosticUnderlineWarn = { undercurl = true, sp = colors.color3 }, -- yellow
    DiagnosticUnderlineInfo = { undercurl = true, sp = colors.color4 }, -- blue
    DiagnosticUnderlineHint = { undercurl = true, sp = colors.color6 }, -- cyan
  }
end

return M
