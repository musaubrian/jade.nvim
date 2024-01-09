local Color, c, Group, g, s = require('colorbuddy').setup()

local palette = {
    aqua = { name = 'aqua', code = '#8ec07c' },
    black = { name = 'black', code = '#181818' },
    white = { name = 'white', code = '#ffffff' },
    seagreen = { name = "seagreen", code = '#698b69' },
    green = { name = 'green', code = '#99cc99' },
    yellow = { name = 'yellow', code = '#f0c674' },
    blue = { name = 'blue', code = '#81a2be' },
    sky_blue = { name = 'sky_blue', code = '#7bdaf7' },
    turquoise = { name = 'turquoise', code = '#8abec7' },
    cyan = { name = 'cyan', code = '#8abeb7' },
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


Group.new('Function', c.sky_blue:light(), c.none, s.none)
Group.new('Keyword', c.white, c.none, s.bold)
Group.new('Error', c.red, c.none, s.italic)
Group.new('Warning', c.orange, c.none, s.italic)
Group.new("Hint", c.blue, c.none, s.none)
Group.new('Special', c.turquoise:light(), c.none, s.none)
Group.new('String', c.green, c.none, s.none)
Group.new('Search', c.white, c.none, s.reverse)
Group.new('IncSearch', c.none, c.none, s.reverse)
Group.new('MatchParen', c.none, c.none, s.none)
Group.new('Type', c.turquoise:light(), c.none, s.none)
Group.new('TypeDef', c.turquoise, c.none, s.none)
Group.new('Pmenu', c.white, c.none, s.none)
Group.new('PmenuSel', c.white:light(), c.gray:dark(), s.bold)
Group.new('PmenuThumb', c.orange, c.black, s.none)
Group.new('Operator', c.white, c.none, s.none)
Group.new('Visual', c.none, c.light_gray:dark(), s.none)
Group.new('Conditional', c.yellow, c.none, s.bold)
Group.new('Macro', c.orange:light(), c.none, s.none)

Group.new('Title', c.blue:light(), c.none, s.bold)
Group.new('URI', c.blue, c.none, s.undercurl)
Group.new('LineNr', c.gray, c.none, s.none)
Group.new('Normal', c.white, c.none, s.none)
Group.new('Noise', c.white:dark(), c.none, s.none)
Group.new('NonText', c.gray:light(), nil, s.none)
Group.new('NotNormal', c.turquoise, c.none, s.none)
Group.new('CursorLineNr', c.yellow, nil, s.none)
Group.new('ColorCol', nil, c.light_gray:dark(), s.none)
Group.new('CursorCol', nil, c.lighter_gray:dark(), s.none)
Group.new('Builtin', c.turquoise, c.none, s.none)
Group.new('StatusLine', c.white:dark(), c.black, s.none)


Group.link('EndOfBuffer', g.NonText)
Group.link('Delimiter', g.NotNormal)
Group.link('Identifier', g.Normal)
Group.link('Statement', g.NotNormal)
Group.link('SignColumn', g.LineNr)
Group.link('FoldColumn', g.LineNr)
Group.link('Folded', g.NonText)
Group.link('Comment', g.NonText)
Group.link('ColorColumn', g.ColorCol)
Group.link('PreProc', g.Macro)


Group.link('helpHeader', g.Normal)
Group.link('helpHeadline', g.Title)
Group.link('helpHyperTextEntry', g.Normal)
Group.link('helpIgnore', g.NonText)
Group.link('helpOption', g.String)
Group.link('helpSectionDelim', g.Noise)

Group.new('DiffAdd', c.none, c.light_gray, s.bold)
Group.new('DiffAdded', c.none, c.light_gray, s.bold)
Group.new('DiffChange', c.yellow:light(), c.none, s.italic)
Group.new('DiffDelete', c.none, c.brick, s.none)
Group.new('DiffLine', c.black:dark(), c.light_gray:dark(), s.underline)
Group.new('DiffRemoved', c.none, c.brick, s.none)
Group.new('DiffText', c.white, c.none, s.none)

Group.link('ErrorMsg', g.Error)
Group.link('ModeMsg', g.Normal)
Group.link('CursorLineNr', g.CursorLineNr)
Group.link('@string.docstring', g.Comment)
Group.link('@function.builtin', g.Builtin)
Group.link('@namespace', g.NotNormal)
Group.link('Whitespace', g.NonText)
Group.link('NvimInternalError', g.Error)
Group.link('FloatBorder', g.NonText)
Group.link("Include", g.Noise) --imports and stuff
Group.link("Statusline", g.StatusLine)
