# jade.nvim

Yet another colorscheme.
Built using [colorbuddy](https://github.com/tjdevries/colorbuddy.nvim)
and took some inspiration from [catcusbuddy](https://github.com/redbug312/cactusbuddy).

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



