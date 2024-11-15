#### Simple script for setting up my terminal environment on Ubuntu

Usage:

Just clone the repo and run the following command:

**Note**: If you get an dulicated key error when you want to use broadcasting
in terminator it's about your keyaboard because it run `ibus` and it's not
related to terminator.
(https://github.com/gnome-terminator/terminator/issues/771#issuecomment-1583663774)
You can kill ibus by running the following command:

```bash
pkill ibus
```

Usage:
```bash
./setup.sh
```

### Some useful commands:

- Open directory in VIM: `vim .`
- Open file: `press enter`
- Open file horizontally: `s`
- Open file vertically: `v`

- Quit with/without save: `:q/:q!/:wq/:wq!`
- Save file: `:w`
- Save file in other location: `:w /path/to/filename`

- Create new file: `press m` and then `Menu: [ (a)dd ,m,d,r,o,c,p,l,C,s] (Use
    j/k/enter or shortcut):` if you want to create a new directory add `/` at
    the end of the path
- Create new directory: `:!mkdir -p path/to/new/dir` (other solution)

- Resize window vertically: `:vertical resize 100`
- Resize window horizontally: `:horizontal resize 100`

- Switch between windows: `Ctrl + h/j/k/l`

- Open terminal: `crtl + z`
- Come back to code: `fg`

- Hide and unhide file menu: `ctrl + n`



Feel free to contribute :)

