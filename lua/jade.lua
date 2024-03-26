local colorbuddy = require("colorbuddy")
colorbuddy.colorscheme("jade")

local Color = colorbuddy.Color
local color = colorbuddy.colors
local Group = colorbuddy.Group
local group = colorbuddy.groups
local style = colorbuddy.styles


local palette = {
    cyan = { name = 'cyan', code = '#8abeb7' },
    black = { name = 'black', code = '#181818' },
    white = { name = 'white', code = '#ffffff' },
    seagreen = { name = "seagreen", code = '#698b69' },
    green = { name = 'green', code = '#99cc99' },
    yellow = { name = 'yellow', code = '#f0c674' },
    blue = { name = 'blue', code = '#81a2be' },
    sky_blue = { name = 'sky_blue', code = '#7bdaf7' },
    turquoise = { name = 'turquoise', code = '#8abec7' },
    orange = { name = 'orange', code = '#d7875f' },
    red = { name = 'red', code = '#cc6666' },
    gray = { name = 'gray', code = '#949494' },
    light_gray = { name = 'light_gray', code = '#7f7f7f' },
    lighter_gray = { name = 'lighter_gray', code = '#6f6e6f' },
    brick = { name = 'brick', code = '#875f5f' },
}

for _, value in pairs(palette) do
    Color.new(value.name, value.code)
end


Group.new('Function', color.sky_blue:light(), color.none, style.none)
Group.new('Keyword', color.white, color.none, style.bold)
Group.new('Error', color.red, color.none, style.italic)
Group.new('Warning', color.orange, color.none, style.italic)
Group.new("Hint", color.blue, color.none, style.none)
Group.new('Special', color.turquoise:light(), color.none, style.none)
Group.new('String', color.green, color.none, style.none)
Group.new('Search', color.white, color.none, style.reverse)
Group.new('IncSearch', color.none, color.none, style.reverse)
Group.new('MatchParen', color.none, color.none, style.none)
Group.new('Type', color.turquoise:light(), color.none, style.none)
Group.new('TypeDef', color.turquoise, color.none, style.none)
Group.new('Pmenu', color.white, color.none, style.none)
Group.new('PmenuSel', color.white:light(), color.gray:dark(), style.bold)
Group.new('PmenuThumb', color.orange, color.black, style.none)
Group.new('Operator', color.white, color.none, style.none)
Group.new('Visual', color.none, color.light_gray:dark(), style.none)
Group.new('Conditional', color.yellow, color.none, style.bold)
Group.new('Macro', color.orange:light(), color.none, style.none)
Group.new("Define", color.orange:light():light(), color.none, style.italic)
Group.new("Structure", color.blue:light(), color.none, style.italic)

Group.new('Title', color.blue:light(), color.none, style.bold)
Group.new('URI', color.blue, color.none, style.undercurl)
Group.new('LineNr', color.gray, color.none, style.none)
Group.new('Normal', color.white, color.none, style.none)
Group.new('Noise', color.white:dark(), color.none, style.none)
Group.new('NonText', color.gray:light(), nil, style.none)
Group.new('NotNormal', color.turquoise, color.none, style.none)
Group.new('CursorLineNr', color.yellow, nil, style.none)
Group.new('ColorCol', nil, color.light_gray:dark(), style.none)
Group.new('CursorCol', nil, color.lighter_gray:dark(), style.none)
Group.new('Builtin', color.turquoise, color.none, style.none)
Group.new('NetrwDir', color.turquoise, color.none, style.bold)
Group.new("NormalFloat", color.none, color.none, style.none)
Group.new("Number", color.yellow, color.none, style.bold)
Group.new("SpecialChar", color.cyan, color.none, style.italic)


Group.link('EndOfBuffer', group.NonText)
Group.link('Delimiter', group.NotNormal)
Group.link('Identifier', group.Normal)
Group.link('Statement', group.NotNormal)
Group.link('SignColumn', group.LineNr)
Group.link('FoldColumn', group.LineNr)
Group.link('Folded', group.NonText)
Group.link('Comment', group.NonText)
Group.link('ColorColumn', group.ColorCol)
Group.link('PreProc', group.Macro)


Group.link('helpHeader', group.Normal)
Group.link('helpHeadline', group.Title)
Group.link('helpHyperTextEntry', group.Normal)
Group.link('helpIgnore', group.NonText)
Group.link('helpOption', group.String)
Group.link('helpSectionDelim', group.Noise)

Group.new('DiffAdd', color.none, color.light_gray, style.bold)
Group.new('DiffAdded', color.none, color.light_gray, style.bold)
Group.new('DiffChange', color.yellow:light(), color.none, style.italic)
Group.new('DiffDelete', color.none, color.brick, style.none)
Group.new('DiffLine', color.black:dark(), color.light_gray:dark(), style.underline)
Group.new('DiffRemoved', color.none, color.brick, style.none)
Group.new('DiffText', color.white, color.none, style.none)

Group.link('ErrorMsg', group.Error)
Group.link('ModeMsg', group.Normal)
Group.link('CursorLineNr', group.CursorLineNr)
Group.link('@string.docstring', group.Comment)
Group.link('@function.builtin', group.Builtin)
Group.link('@namespace', group.NotNormal)
Group.link('Whitespace', group.NonText)
Group.link('NvimInternalError', group.Error)
Group.link('FloatBorder', group.NonText)
Group.link("Include", group.Noise)           --imports and stuff
Group.link("NetrwDir", group.NetrwDir)
Group.link("NormalFloat", group.NormalFloat) --remove bg from floating windows
Group.link("Number", group.Number)
Group.link("SpecialChar", group.SpecialChar)
Group.link("Define", group.Define)
Group.link("Structure", group.Structure)
