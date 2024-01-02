local Color, c, Group, g, s = require('colorbuddy').setup()

local palette = {
    background = { name = 'background', hex = '#181818' },
    white = { name = 'white', hex = '#ffffff' },
    green = { name = 'green', hex = '#99cc99' },
    yellow = { name = 'yellow', hex = '#f0c674' },
    blue = { name = 'blue', hex = '#81a2be' },
    sky_blue = { name = 'sky_blue', hex = '#7bdaf7' },
    turquoise = { name = 'turquoise', hex = '#8abec7' },
    orange = { name = 'orange', hex = '#d7875f' },
    gray = { name = 'gray', hex = '#949494' },
    dark_gray = { name = 'dark_gray', hex = '#7f7f7f' },
    brick = { name = 'brick', hex = '#875f5f' }
}

for _, value in pairs(palette) do
    Color.new(value.name, value.hex)
end


Group.new('Function', c.sky_blue:light(), c.background, s.none)
Group.new('Keyword', c.white, c.background, s.bold)
Group.new('Error', c.red, c.none, s.italic)
Group.new('Warning', c.orange, c.none, s.italic)
Group.new("Hint", c.blue, c.none, s.none)
Group.new('Special', c.turquoise:light(), c.none, s.none)
Group.new('String', c.green, c.none, s.none)
Group.new('Search', c.white, c.none, s.reverse)
Group.new('IncSearch', c.none, c.none, s.reverse)
Group.new('MatchParen', c.none, c.turquoise, s.none)
Group.new('Type', c.turquoise:light(), c.none, s.none)
Group.new('TypeDef', c.turquoise, c.none, s.none)
Group.new('Pmenu', c.white, c.background, s.none)
Group.new('PmenuSel', c.white:light(), c.gray:dark(), s.bold)
Group.new('PmenuThumb', c.orange, c.background, s.none)
Group.new('Operator', c.white, c.background, s.none)
Group.new('Visual', c.none, c.gray:dark(), s.none)
Group.new('Conditional', c.yellow, c.background, s.bold)
Group.new('Macro', c.orange:light(), nil, s.none)

Group.new('Title', c.blue, c.none, s.none)
Group.new('URI', c.blue, c.none, s.undercurl)
Group.new('LineNr', c.gray, c.none, s.none)
Group.new('Header', c.white, c.none, s.none)
Group.new('Normal', c.white, c.none, s.none)
Group.new('Noise', c.white:dark(), c.none, s.none)
Group.new('NonText', c.gray:light(), c.none, s.none)
Group.new('NotNormal', c.turquoise, c.none, s.none)
Group.new('CursorLineNr', c.yellow, nil, s.none)
Group.new('ColorCol', nil, c.dark_gray:dark(), s.none)
Group.new('Builtin', c.turquoise, c.none, s.none)


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


Group.link('helpHeader', g.Header)
Group.link('helpHeadline', g.Title)
Group.link('helpHyperTextEntry', g.Normal)
Group.link('helpIgnore', g.NonText)
Group.link('helpOption', g.String)
Group.link('helpSectionDelim', g.Noise)

Group.new('DiffAdd', c.none, c.dark_gray, s.bold)
Group.new('DiffAdded', c.none, c.dark_gray, s.bold)
Group.new('DiffChange', c.yellow:light(), c.none, s.italic)
Group.new('DiffDelete', c.brick, c.none, s.none)
Group.new('DiffLine', c.background:dark(), c.dark_gray:dark(), s.underline)
Group.new('DiffRemoved', c.brick, c.none, s.none)
Group.new('DiffText', c.White, c.none, s.none)

Group.link('ErrorMsg', g.Error)
Group.link('ModeMsg', g.Normal)
Group.link('CursorLineNr', g.CursorLineNr)
Group.link('@string.docstring', g.Comment)
Group.link('@function.builtin', g.Builtin)
Group.link('@namespace', g.NotNormal)
Group.link('Whitespace', g.NonText)
Group.link('NvimInternalError', g.Error)
Group.link('FloatBorder', g.NonText) -- light gray
Group.link("Include", g.Noise)       --imports and stuff
