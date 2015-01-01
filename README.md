Dotfiles of MyChaOS87
=====================
These is a try for my “more than just some” dotfiles

Based on [Dotbot][dotbot] for bootstrapping an using [Dotbot Dotfiles
Template][dotfiles_template] as skeleton.

Provides
--------
* [oh-my-zsh][oh-my-zsh], some additional plugins, an custom-folder and a zshrc
* [spf13-vim][spf13-vim], and some nonstandard options as [vim-go][vim-go] and [YouCompleteMe][YouCompleteMe]
    * even compiles YouCompleteMe binary component
    * and gets the go-tools for vim-go
* ... (some minor things)


Needed Packages (on Debian Jessie)
----------------------------------
Packages needed or helpful (incomplete List)
``` aptitude
    sudo aptitude install git mercurial golang gocode curl exuberant-ctags fonts-powerline vim zsh
```

License
-------

This software is hereby released into the public domain. That means you can do
whatever you want with it without restriction. See `LICENSE.md` for details.

That being said, I would appreciate it if you could maintain a link back to
Dotbot (or this repository) to help other people discover Dotbot.

[dotbot]: https://github.com/anishathalye/dotbot
[dotfiles_template]: https://github.com/anishathalye/dotfiles_template
[oh-my-zsh]: https://github.com/robbyrussell/oh-my-zsh/
[spf13-vim]: https://github.com/spf13/spf13-vim
[vim-go]: https://github.com/fatih/vim-go
[YouCompleteMe]: https://github.com/Valloric/YouCompleteMe
