Dotfiles Template
=================

This is a template repository for bootstrapping your dotfiles with [Dotbot][dotbot].

To get started, you can [fork][fork] this repository (and probably delete this
README and rename your version to something like just `dotfiles`).

In general, you should be using symbolic links for everything, and using git
submodules whenever possible.

To keep submodules at their proper versions, you could include something like
`git submodule update --init --recursive` in your `install.conf.yaml`.

To upgrade your submodules to their latest versions, you could periodically run
`git submodule update --init --remote`.


License
-------

This software is hereby released into the public domain. That means you can do
whatever you want with it without restriction. See `LICENSE.md` for details.

That being said, I would appreciate it if you could maintain a link back to
Dotbot (or this repository) to help other people discover Dotbot.

[dotbot]: https://github.com/anishathalye/dotbot
