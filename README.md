![](https://shugg.dev/images/dwarrowdelf/logo_transparent.png)

After dipping my toes into the world of Vim scripting and theming, I decided to create my own. Dwarrowdelf is the result. Thanks to Alexander Gude's [Eldar](https://github.com/agude/vim-eldar) theme, pR0Ps' [Molokai Dark](https://github.com/pR0Ps/molokai-dark) theme, and the default [Elflord](https://github.com/vim/vim/blob/master/runtime/colors/elflord.vim) theme for inspiration.

# Installation

To install dwarrowdelf, simply drop the `dwarrowdelf.vim` file into your `~/.vim/colors` directory, and add this line to your `~/.vimrc`:

```vim
colorscheme dwarrowdelf
```

## Airline Theme

Optionally I've included a theme for Vim Airline. If you'd like to use this, drop it into `~/.vim/bundle/vim-airline-themes/autoload/airline/themes/dwarrowdelf.vim`, then set the theme accordingly:

```vim
let g:airline_theme='dwarrowdelf'
```

