local colorbuddy = require("colorbuddy.init")
colorbuddy.colorscheme("jade")

local M = {}

function M.setup()
	M.setup_colorscheme()
end

local Color = colorbuddy.Color
local color = colorbuddy.colors
local Group = colorbuddy.Group
local group = colorbuddy.groups
local style = colorbuddy.styles

function M.setup_colorscheme()
	local palette = {
		cyan = "#8abeb7",
		dark = "#171717",
		white = "#ffffff",
		green = "#99cc99",
		yellow = "#f0c674",
		blue = "#81a2be",
		sky_blue = "#7bdaf7",
		turquoise = "#8abec7",
		orange = "#d7875f",
		red = "#cc6666",
		gray = "#949494",
		light_gray = "#7f7f7f",
		lighter_gray = "#6f6e6f",
		brick = "#875f5f",
		ml_bg = "#2e2e2e",
		ml_git_branch = "#d9d9d9",
	}

	for k, value in pairs(palette) do
		Color.new(k, value)
	end

	Group.new("Function", color.sky_blue:light(), color.none, style.none)
	Group.new("Keyword", color.white, color.none, style.bold)
	Group.new("Error", color.red, color.none, style.italic)
	Group.new("Warning", color.orange, color.none, style.italic)
	Group.new("Hint", color.blue, color.none, style.none)
	Group.new("Special", color.turquoise:light(), color.none, style.none)
	Group.new("String", color.green, color.none, style.none)
	Group.new("Search", color.white, color.none, style.reverse)
	Group.new("IncSearch", color.none, color.none, style.reverse)
	Group.new("MatchParen", color.none, color.none, style.none)
	Group.new("Type", color.turquoise:light(), color.none, style.none)
	Group.new("TypeDef", color.turquoise, color.none, style.none)
	Group.new("Pmenu", color.white, color.none, style.none)
	Group.new("PmenuSel", color.white:light(), color.gray:dark(), style.bold)
	Group.new("PmenuThumb", color.orange, color.dark, style.none)
	Group.new("Operator", color.white, color.none, style.none)
	Group.new("Visual", color.none, color.light_gray:dark(), style.none)
	Group.new("Conditional", color.yellow, color.none, style.bold)
	Group.new("Macro", color.orange:light(), color.none, style.none)
	Group.new("Define", color.orange:light():light(), color.none, style.italic)
	Group.new("Structure", color.blue:light(), color.none, style.italic)
	Group.new("Mute", color.dark:light(), color.none, style.none)

	Group.new("Normal", color.white, color.dark, style.none)

	Group.new("Title", color.blue:light(), color.none, style.bold)
	Group.new("URI", color.none, color.none, style.none)
	Group.new("LineNr", color.gray, color.none, style.none)

	Group.new("Noise", color.white:dark(), color.none, style.none)
	Group.new("NonText", color.gray:light(), nil, style.italic)
	Group.new("NotNormal", color.turquoise, color.none, style.none)
	Group.new("CursorLineNr", color.yellow, nil, style.none)
	Group.new("ColorCol", nil, color.dark:light(), style.none)
	Group.new("CursorCol", nil, color.lighter_gray:dark(), style.none)
	Group.new("Builtin", color.turquoise, color.none, style.none)
	Group.new("NetrwDir", color.turquoise, color.none, style.bold)
	Group.new("NormalFloat", color.none, color.none, style.none)
	Group.new("Number", color.yellow, color.none, style.bold)
	Group.new("SpecialChar", color.cyan, color.none, style.italic)

	Group.new("VueTag", color.orange:light(), color.none, style.bold)
	Group.new("VueSecondaryTag", color.blue:light(), color.none, style.italic)
	Group.new("TSMember", color.blue:light():light(), color.none, style.none) -- VAL.<target>
	Group.new("MDmeta", color.orange:dark():light():light(), color.none, style.none)
	Group.new("MDlabel", color.turquoise:light(), color.none, style.bold)
	Group.new("MDlink", color.lighter_gray:light(), color.none, style.italic)

	Group.new("DiffAdd", color.none, color.light_gray, style.bold)
	Group.new("DiffAdded", color.none, color.light_gray, style.bold)
	Group.new("DiffChange", color.yellow:light(), color.none, style.italic)
	Group.new("DiffDelete", color.none, color.brick, style.none)
	Group.new("DiffLine", color.dark:dark(), color.light_gray:dark(), style.underline)
	Group.new("DiffRemoved", color.none, color.brick, style.none)
	Group.new("DiffText", color.white, color.none, style.none)

	Group.new("MinLineMode", color.blue, color.ml_bg, style.bold)
	Group.new("MinLineGitBranch", color.ml_git_branch, color.ml_bg, style.bold)
	Group.new("MinLinePrimaryText", color.white, color.ml_bg, style.bold)
	Group.new("MinLineSecondaryText", color.white:light(), color.ml_bg, style.none)

	Group.new("Deprecated", color.brick, color.none, style.italic)

	Group.link("EndOfBuffer", group.Mute)
	Group.link("Delimiter", group.NotNormal)
	Group.link("Identifier", group.Normal)
	Group.link("Statement", group.NotNormal)
	Group.link("SignColumn", group.Mute)
	Group.link("FoldColumn", group.LineNr)
	Group.link("Folded", group.NonText)
	Group.link("Comment", group.NonText)
	Group.link("ColorColumn", group.ColorCol)
	Group.link("PreProc", group.Macro)

	Group.link("helpHeader", group.Normal)
	Group.link("helpHeadline", group.Title)
	Group.link("helpHyperTextEntry", group.Normal)
	Group.link("helpIgnore", group.NonText)
	Group.link("helpOption", group.String)
	Group.link("helpSectionDelim", group.Noise)

	Group.link("ErrorMsg", group.Error)
	Group.link("ModeMsg", group.Normal)
	Group.link("CursorLineNr", group.CursorLineNr)
	Group.link("@string.docstring", group.Comment)
	Group.link("@function.builtin", group.Builtin)
	Group.link("@namespace", group.NotNormal)
	Group.link("Whitespace", group.NonText)
	Group.link("NvimInternalError", group.Error)
	Group.link("FloatBorder", group.NonText)
	Group.link("Include", group.Noise) --imports and stuff
	Group.link("NetrwDir", group.NetrwDir)
	Group.link("NormalFloat", group.NormalFloat) --remove bg from floating windows
	Group.link("Number", group.Number)
	Group.link("SpecialChar", group.SpecialChar)
	Group.link("Define", group.Define)
	Group.link("Structure", group.Structure)
	Group.link("Conceal", group.NonText)
	Group.link("@tag.vue", group.VueTag)
	Group.link("@tag.attribute.vue", group.VueSecondaryTag)
	Group.link("@variable.member.vue", group.VueSecondaryTag) -- :<attribute>
	Group.link("@variable.member.typescript", group.TSMember)
	Group.link("@keyword.directive.markdown", group.MDmeta)
	Group.link("@markup.link.label.markdown_inline", group.MDlabel)
	Group.link("@markup.link.markdown_inline", group.URI)
	Group.link("@markup.link.url.markdown_inline", group.MDlink)

	Group.link("BlinkCmpMenu", group.Pmenu)
	Group.link("BlinkCmpMenuBorder", group.Pmenu)
	Group.link("BlinkCmpMenuSelection", group.PmenuSel)
	Group.link("BlinkCmpScrollBarThumb", group.PmenuThumb)
	Group.link("BlinkCmpLabelDeprecated", group.Deprecated)
end

return M
