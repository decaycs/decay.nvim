local M = {}

M.highlights_base = function (colors)
  return {
    Normal = { foreground = colors.foreground, background = colors.background },
    StatusLineNC = { background = colors.statusline_bg, foreground = colors.foreground },
    StatusLine = { background = colors.statusline_bg, foreground = colors.foreground },
    SignColumn = { background = colors.background, foreground = colors.background },
    MsgArea = { foreground = colors.foreground, background = colors.background },
    ModeMsg = { foreground = colors.foreground, background = colors.background },
    MsgSeparator = { foreground = colors.foreground, background = colors.background },
    SpellBad = { foreground = colors.color2 },
    SpellCap = { foreground = colors.color6 },
    SpellLocal = { foreground = colors.color4 },
    SpellRare = { foreground = colors.color6 },
    NormalNC = { foreground = colors.foreground, background = colors.background },
    Pmenu = { foreground = colors.foreground, background = colors.background },
    PmenuSel = { foreground = colors.background, background = colors.color4 },
    WildMenu = { foreground = colors.color7, background = colors.color4 },
    CursorLineNr = { foreground = colors.foreground },
    Comment = { foreground = colors.comments },
    Folded = { foreground = colors.color4, background = colors.background },
    FoldColumn = { foreground = colors.color4, background = colors.background },
    LineNr = { foreground = colors.color8, background = colors.background },
    FloatBorder = { foreground = colors.background, background = colors.background },
    Whitespace = { foreground = colors.color1 },
    VertSplit = { foreground = colors.background, background = colors.color0 },
    CursorLine = { background = colors.cursorline },
    CursorColumn = { background = colors.background },
    ColorColumn = { background = colors.background },
    NormalFloat = { background = colors.background },
    Visual = { background = colors.color0, foreground = colors.foreground },
    VisualNOS = { background = colors.background },
    WarningMsg = { foreground = colors.color3, background = colors.background },
    DiffAdd = { background = colors.background, foreground = colors.color2 },
    DiffChange = { background = colors.background, foreground = colors.color4 },
    DiffDelete = { background = colors.background, foreground = colors.color1 },
    QuickFixLine = { background = colors.color2 },
    PmenuSbar = { background = colors.background },
    PmenuThumb = { background = colors.color2 },
    MatchParen = { foreground = colors.color4, background = colors.background },
    Cursor = { foreground = colors.fomeground, background = colors.cursor },
    lCursor = { foreground = colors.foreground, background = colors.cursor },
    CursorIM = { foreground = colors.foreground, background = colors.cursor },
    TermCursor = { foreground = colors.foreground, background = colors.cursor },
    TermCursorNC = { foreground = colors.foreground, background = colors.cursor },
    Conceal = { foreground = colors.color4, background = colors.background },
    Directory = { foreground = colors.color4 },
    SpecialKey = { foreground = colors.color4 },
    Title = { foreground = colors.color4 },
    ErrorMsg = { foreground = colors.color1, background = colors.background },
    Search = { foreground = colors.background, background = colors.color10 },
    IncSearch = { foreground = colors.background, background = colors.color10 },
    Substitute = { foreground = colors.color3, background = colors.color6 },
    MoreMsg = { foreground = colors.color5 },
    Question = { foreground = colors.color5 },
    EndOfBuffer = { foreground = colors.background },
    NonText = { foreground = colors.color1 },
    Variable = { foreground = colors.color5 },
    String = { foreground = colors.color2 },
    Character = { foreground = colors.color12 },
    Constant = { foreground = colors.color5 },
    Number = { foreground = colors.color3 },
    Boolean = { foreground = colors.color5 },
    Float = { foreground = colors.color5 },
    Identifier = { foreground = colors.color5 },
    Function = { foreground = colors.color4 },
    Operator = { foreground = colors.color6 },
    Type = { foreground = colors.color5 },
    StorageClass = { foreground = colors.color7 },
    Structure = { foreground = colors.color6 },
    Typedef = { foreground = colors.color6 },
    Keyword = { foreground = colors.color5 },
    Statement = { foreground = colors.color6 },
    Conditional = { foreground = colors.color5 },
    Repeat = { foreground = colors.color5 },
    Label = { foreground = colors.color1 },
    Exception = { foreground = colors.color9 },
    Include = { foreground = colors.color5 },
    PreProc = { foreground = colors.color4 },
    Define = { foreground = colors.color4 },
    Macro = { foreground = colors.color6 },
    PreCondit = { foreground = colors.color6 },
    Special = { foreground = colors.color6 },
    SpecialChar = { foreground = colors.foreground },
    Tag = { foreground = colors.color4 },
    Debug = { foreground = colors.color1 },
    Delimiter = { foreground = colors.foreground },
    SpecialComment = { foreground = colors.comments },
    Ignore = { foreground = colors.color7, background = colors.background },
    Todo = { foreground = colors.color1, background = colors.background },
    Error = { foreground = colors.color1, background = colors.background },
    TabLine = { foreground = colors.color2, background = colors.contrast },
    TabLineSel = { foreground = colors.foreground, background = colors.background },
    TabLineFill = { foreground = colors.foreground, background = colors.background },
    CmpDocumentationBorder = { foreground = colors.foreground, background = colors.background },
    CmpItemAbbr = { foreground = colors.foreground, background = colors.background },
    CmpItemAbbrDeprecated = { foreground = colors.color2, background = colors.background },
    CmpItemAbbrMatch = { foreground = colors.color7, background = colors.background },
    CmpItemAbbrMatchFuzzy = { foreground = colors.color7, background = colors.background },
    CmpItemKind = { foreground = colors.color4, background = colors.background },
    CmpItemMenu = { foreground = colors.color2, background = colors.background },

    -- treesitter

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may color5.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSAnnotation        = { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute         = { };    -- (unstable) TODO: docs
    -- TSBoolean           = { };    -- For booleans.
    -- TSCharacter         = { };    -- For characters.
    -- TSComment           = { };    -- For color1 blocks.
    TSNote = { foreground = colors.background, background = colors.color5 },
    TSComment = { foreground = colors.comments },
    TSWarning = { foreground = colors.background, background = colors.color5 },
    TSDanger = { foreground = colors.background, background = colors.color3 },
    TSConstructor = { foreground = colors.color10 }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    TSConditional       = { foreground = colors.color5 };    -- For keywords related to conditionnals.
    TSConstant          = { foreground = colors.color1 };    -- For constants
    TSConstBuiltin      = { foreground = colors.color1 };    -- For constant that are built in the language: `nil` in Lua.
    TSConstMacro        = { foreground = colors.color1 };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError             = { };    -- For syntax/parser errors.
    -- TSException         = { };    -- For exception related keywords.
    TSField = { foreground = colors.color4 }, -- For fields.
    -- TSFloat             = { };    -- For floats.
    TSFunction          = { foreground = colors.color4 };    -- For function (calls and definitions).
    -- TSFuncBuiltin       = { };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro         = { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude           = { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSKeyword = { foreground = colors.color5 }, -- For keywords that don't fall in previous categories.
    TSKeywordFunction = { foreground = colors.color5 }, -- For keywords used to define a fuction.
    TSLabel = { foreground = colors.color7 }, -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod            = { };    -- For method calls and definitions.
    -- TSNamespace         = { };    -- For identifiers referring to modules and namespaces.
    -- TSNone              = { };    -- TODO: docs
    TSNumber = { foreground = colors.color1 },
    TSOperator = { foreground = colors.color7 }, -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter = { foreground = colors.color6 }, -- For parameters of a function.
    -- TSParameterReference= { };    -- For references to parameters of a function.
    TSProperty = { foreground = colors.color7 }, -- Same as `TSField`.
    TSPunctDelimiter = { foreground = colors.color7 }, -- For delimiters ie: `.`
    TSPunctBracket = { foreground = colors.foreground }, -- For brackets and parens.
    TSPunctSpecial = { foreground = colors.color7 }, -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat            = { };    -- For keywords related to loops.
    TSRepeat = { foreground = colors.color5 },
    TSString = { foreground = colors.color2 },
    TSStringRegex = { foreground = colors.color5 }, -- For regexes.
    TSStringEscape = { foreground = colors.color5 }, -- For escape characters within a string.
    -- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
    -- TSType              = { };    -- For types.
    -- TSTypeBuiltin       = { };    -- For builtin types.
    TSVariableBuiltin = { foreground = colors.color3 }, -- Variable names that are defined by the languages, like `this` or `self`.

    TSTag               = { foreground = colors.color1 };    -- Tags like html tag names.
    TSTagDelimiter      = { foreground = colors.foreground };    -- Tag delimiter like `<` `>` `/`
    -- TSText              = { };    -- For strings considered text in a markup language.
    TSTextReference = { foreground = colors.color6 },
    -- TSEmphasis          = { };    -- For text to be represented with emphasis.
    -- TSUnderline         = { };    -- For text to be represented with an underline.
    -- TSStrike            = { };    -- For strikethrough text.
    -- TSTitle             = { };    -- Text that is part of a title.
    -- TSLiteral           = { };    -- Literal text.
    -- TSURI               = { };    -- Any URI like a link or email.

    -- LspTrouble
    LspTroubleText = { foreground = colors.foreground },
    LspTroubleCount = { foreground = colors.color6, background = colors.foreground },
    LspTroubleNormal = { foreground = colors.foreground, background = colors.background },

    -- Illuminate
    illuminatedWord = { background = colors.foreground },
    illuminatedCurWord = { background = colors.foreground },

    -- diff
    diffAdded = { foreground = colors.color4 },
    diffRemoved = { foreground = colors.color1 },
    diffChanged = { foreground = colors.color5 },
    diffOldFile = { foreground = colors.color5 },
    diffNewFile = { foreground = colors.color5 },
    diffFile = { foreground = colors.color7 },
    diffLine = { foreground = colors.color1 },
    diffIndexLine = { foreground = colors.color6 },

   -- Neogit
    NeogitBranch = { foreground = colors.color6 },
    NeogitRemote = { foreground = colors.color6 },
    NeogitHunkHeader = { background = colors.background, foreground = colors.foreground },
    NeogitHunkHeaderHighlight = { background = colors.foreground, foreground = colors.color7 },
    NeogitDiffContextHighlight = { background = colors.background, foreground = colors.foreground },
    NeogitDiffDeleteHighlight = { foreground = colors.color1, background = colors.color1 },
    NeogitDiffAddHighlight = { foreground = colors.color4, background = colors.color4 },

    -- GitGutter
    GitGutterAdd = { foreground = colors.color4 }, -- diff mode: Added line |diff.txt|
    GitGutterChange = { foreground = colors.color5 }, -- diff mode: Changed line |diff.txt|
    GitGutterDelete = { foreground = colors.color1 }, -- diff mode: Deleted line |diff.txt|

    -- GitSigns
    GitSignsAdd = { foreground = colors.color4 }, -- diff mode: Added line |diff.txt|
    GitSignsChange = { foreground = colors.color5 }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { foreground = colors.color1 }, -- diff mode: Deleted line |diff.txt|

    -- Telescope
    TelescopeBorder = { foreground = colors.color0, background = colors.background },
    TelescopeNormal = { foreground = colors.foreground, background = colors.background },
    TelescopeSelection = { foreground = colors.background, background = colors.color2 },

    -- Indent Blank Line
    IndentBlanklineChar = { foreground = colors.color0, background = colors.background },

    -- NvimTree
    NvimTreeNormal = { foreground = colors.foreground, background = colors.background },
    NvimTreeNormalNC = { foreground = colors.foreground, background = colors.background },
    NvimTreeRootFolder = { foreground = colors.color1 },
    NvimTreeGitDirty = { foreground = colors.color5 },
    NvimTreeGitNew = { foreground = colors.color4 },
    NvimTreeGitDeleted = { foreground = colors.color1 },
    NvimTreeSpecialFile = { foreground = colors.color6 },
    NvimTreeIndentMarker = { foreground = colors.color0 },
    NvimTreeImageFile = { foreground = colors.foreground },
    NvimTreeSymlink = { foreground = colors.color7 },
    NvimTreeFolderIcon = { foreground = colors.color4 },
    NvimTreeFolderName = { foreground = colors.foreground },
    NvimTreeOpenedFolderName = { foreground = colors.color4 },
    NvimTreeEmptyFolderName = { foreground = colors.color2 },
    NvimTreeStatusLineNC = { background = colors.background, foreground = colors.background },

    -- LspSaga
    LspFloatWinNormal = { background = colors.background },
    LspFloatWinBorder = { foreground = colors.background },
    LspSagaBorderTitle = { foreground = colors.color7 },
    LspSagaHoverBorder = { foreground = colors.color7 },
    LspSagaRenameBorder = { foreground = colors.color4 },
    LspSagaDefPreviewBorder = { foreground = colors.color4 },
    LspSagaCodeActionBorder = { foreground = colors.color7 },
    LspSagaFinderSelection = { foreground = colors.color1 },
    LspSagaCodeActionTitle = { foreground = colors.color7 },
    LspSagaCodeActionContent = { foreground = colors.color6 },
    LspSagaSignatureHelpBorder = { foreground = colors.color1 },
    ReferencesCount = { foreground = colors.color6 },
    DefinitionCount = { foreground = colors.color6 },
    DefinitionIcon = { foreground = colors.color7 },
    ReferencesIcon = { foreground = colors.color7 },
    TargetWord = { foreground = colors.color7 },

    -- NeoVim
    healthError = { foreground = colors.color1 },
    healthSuccess = { foreground = colors.color4 },
    healthWarning = { foreground = colors.color5 },

    -- BufferLine
    BufferLineIndicatorSelected = { foreground = colors.color2 },
    BufferLineFill = { foreground = colors.foreground, background = colors.contrast },
  }
end

return M
