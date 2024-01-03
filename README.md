# jade.nvim

Yet another colorscheme.
Built using [colorbuddy](https://github.com/tjdevries/colorbuddy.nvim)
and took some inspiration from [catcusbuddy](https://github.com/redbug312/cactusbuddy).

> [!Info]
> 
> This is highly personalised on most of the files I work with, so it may not 
fit your prefered taste which is fine.
> 
> It does not apply styles to the status bar

## Usage
1. Packer

```lua

use = {"musaubrian/jade.nvim", requires = "tjdevries/colorbuddy.nvim"}

require("jade")

```

2. Lazy

```lua
  {
    'musaubrian/jade.nvim',
    dependencies = "tjdevries/colorbuddy.nvim",
    config = function()
      require("jade")
    end
  },
```

### Screenshots
- **Golang**
![](./media/go.png)
- **Lua**
![](./media/lua.png)



