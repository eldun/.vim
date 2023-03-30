# Overview

This repo exists to allow me to use my custom vim config on any device.

Any additions that require explanation will be addressed in the next section.

Initial setup completed following [this guide](https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/) at [freecodecamp.com](freecodecamp.com)

# Custom Additions
- Toggle statusline with '\s'
- Show buffers with tab-complete with '\b'
- Toggle search highlighing with '\\\\'
- Toggle line numbers with '\\n'
- Toggle word wrap with '\z
- Open help in new tab by default (instead of horizontal split)

# Things to Remember
- Holy moly. Don't forget that "Jump to tag under cursor" is CTRL-] and NOT CTRL-J!!!
- Using [ctags](https://github.com/universal-ctags/ctags) ([Guide](https://learnvim.irian.to/basics/tags))
- `:args dir/*` to open multiple files in their own buffers from within VIM (vim dir/* from terminal)
- [Difference in map commands](https://stackoverflow.com/a/3776182)
- [Deleting content between XML/HTML tags](https://stackoverflow.com/a/946241)
- [Multi-line Editing (Visual Block mode)](https://stackoverflow.com/a/12399573)

# To-do
- Follow [this guide](https://vimways.org/2018/from-vimrc-to-vim/) (Mostly for managing my growing list of abbreviations)

# Useful Links

https://alvinalexander.com/linux/vi-vim-editor-color-scheme-syntax/

(Edited version of [jeffskinnerbox's README](https://github.com/jeffskinnerbox/.vim/blob/main/README.md)):

## Vim as an IDE
* [How to Turn Vim Into a Lightweight IDE](https://dane-bulat.medium.com/how-to-turn-vim-into-a-lightweight-ide-6185e0f47b79)
* [Vim: Setting up a Build System and Code Completion for C and C++](https://dane-bulat.medium.com/vim-setting-up-a-build-system-and-code-completion-for-c-and-c-eb263c0a19a1)

## Information about Vim

* [The Vim Editor][01]
* [The Recipes][02]
* [Turning Vim into a modern Python IDE][03]
* [Configuring Vim right][11]
* [Getting started with Vim visual mode][15]
* [How Did Vim Become So Popular][16]

## Vim Scripting Tutorials

* Run the Linux Vim tutorial program - Linux program "vimtutor"
* [Vim Introduction and Tutorial][04]
* [Learn Vimscript the Hard Way][05]
* [25 Vim Tutorials, Screencasts, and Resources][06]
* [How to Write Vim Plugins with Python][07]
* [:best of Vim][10]
* [Scripting the Vim editor, Part 1: Variables, values, and expressions][12]

## Maintaining and Synchronizing Vim on Other Machines

* [Working with submodules][13]
* [Git Submodules: Adding, Using, Removing, Updating][14]
* [Submodules and Pathogen][08]
* [Git Reference][09]

## Other Links

* [100 Vim commands every programmer should know](http://www.catswhocode.com/blog/100-vim-commands-every-programmer-should-know)
* [How to Use Vim's Spellchecker](http://tips.webdesign10.com/vim/how-use-vims-spellchecker)
* [Vim 101: A Gentle Introduction to Macros](http://usevim.com/2012/08/10/macros/)
* [VIM folding commands](https://sites.google.com/site/linuxpebbles/cool-tricks/some-of-my-favorite-vim-tips/vim-folding-commands)
* [Vi Cheat Sheet](http://www.lagmonster.org/docs/vi.html)
* [Vim Commands Cheat Sheet](http://bullium.com/support/vim.html)
* [How to copy text from vim to an external program?](http://unix.stackexchange.com/questions/12535/how-to-copy-text-from-vim-to-an-external-program)


* [Is Vim Really Not For You? A Beginner Guide](https://thevaluable.dev/vim-beginner/)
* [A Vim Guide for Intermediate Users](https://thevaluable.dev/vim-intermediate/)
* [A Vim Guide for Advanced Users](https://thevaluable.dev/vim-advanced/)

* [4 Vim features to use to improve productivity](https://opensource.com/article/22/3/vim-features-productivity)

* [Switch to Neovim](https://medium.com/pragmatic-programmers/switch-to-neovim-9c5339e8719e)
* [7 Surprising Vim Tricks That Will Save You Hours](https://levelup.gitconnected.com/7-surprising-vim-tricks-that-will-save-you-hours-b158d23fe9b7)
* [How to Add Top Features From Other Text Editors to Vim](https://www.makeuseof.com/tag/add-features-to-vim/)
* [Another Vim Cheat Sheet](http://www.terminally-incoherent.com/blog/reference/vim-cheat-sheet/)
* [Vim Cheatsheet](http://www.terminally-incoherent.com/blog/2008/10/27/vim-cheatsheet/)
* [Jonathan Oxer's Cheat Sheets](http://jon.oxer.com.au/cheatsheet/vim)
* [Graphical vi-vim Cheat Sheet and Tutorial](http://www.glump.net/howto/desktop/vim-graphical-cheat-sheet-and-tutorial)
* [Graphical vi-vim Cheat Sheet and Tutorial](http://www.viemu.com/a_vi_vim_graphical_cheat_sheet_tutorial.html)
* [Vim tips: Visual Search](http://amix.dk/blog/post/19334)
* [The Ultimate vimrc](https://github.com/amix/vimrc)
* [check out Jedi for auto completion](https://github.com/davidhalter/jedi-vim)
* [NERD Commenter Command](http://jaredforsyth.com/projects/vim-debug/)
* [A python debugger for vim](http://j605.wordpress.com/2011/10/08/a-python-debugger-for-vim/)
* [A Byte of Vim](http://files.swaroopch.com/vim/byte_of_vim_v051.pdf)
* [Vundle vs Pathogen](http://lepture.com/work/vundle-vs-pathogen)
* [Modern vim plugin management – Pathogen vs Vundle](http://rmitc.org/2013/04/modern-vim-plugin-management-pathogen-vs-vundle/)
* [Working with Vim and IPython](http://petro.tanrei.ca/2010/8/working-with-vim-and-ipython.html)
* [vim-ipython - A two-way integration between Vim and IPython](http://github.com/ivanov/vim-ipython)
* [wasavi (VI editor for any web page)](http://appsweets.net/wasavi/)
* [CodeMirror](http://codemirror.net/)
* [TextAid](http://lalashan.mcmaster.ca/theobio/projects/index.php/TextAid)
* [Working Productively in Bash's Vi Command Line Editing Mode (with Cheat Sheet)](http://www.catonmat.net/blog/bash-vi-editing-mode-cheat-sheet/)
* [usevim](http://usevim.com/)
* [Customising Vim to Get the Best Out of It](https://towardsdatascience.com/customising-vim-to-get-the-best-out-of-it-a5a4dae02562)
* [Customising Vim to Get the Best Out of It (Part 2)](https://towardsdatascience.com/customising-vim-to-get-the-best-out-of-it-part-2-931246996458)
* [Vim offers great benefits to writers](https://opensource.com/article/17/2/vim-plugins-writers)



 [01]:http://www.vim.org
 [02]:http://vim.runpaint.org/toc/
 [03]:http://sontek.net/blog/detail/turning-vim-into-a-modern-python-ide
 [04]:http://blog.interlinked.org/tutorials/vim_tutorial.html
 [05]:http://learnvimscriptthehardway.stevelosh.com/
 [06]:http://net.tutsplus.com/articles/web-roundups/25-vim-tutorials-screencasts-and-resources/
 [07]:http://brainacle.com/how-to-write-vim-plugins-with-python.html
 [08]:http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
 [09]:http://gitref.org/
 [10]:http://www.bestofvim.com/
 [11]:http://items.sjbach.com/319/configuring-vim-right
 [12]:http://www.ibm.com/developerworks/library/l-vim-script-1/
 [13]:https://blog.github.com/2016-02-01-working-with-submodules/
 [14]:https://chrisjean.com/git-submodules-adding-using-removing-and-updating/
 [15]:https://opensource.com/article/19/2/getting-started-vim-visual-mode
 [16]:https://pragmaticpineapple.com/how-did-vim-become-so-popular/
