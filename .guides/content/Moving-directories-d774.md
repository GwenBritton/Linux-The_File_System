## Moving the _assets/img_ directory

It turns out that the _assets/_ directory only _clutters_ our file tree.

We need a lighter directory structure, lets move the _assets/img/_ folder one level back.

Inside your `~/workspace` folder execute:

```
mv assets/img .
```

|||info
Notice the `.` character. 

Remember that the dot character represents the current working directory, in this case the `~/workspace` directory.

In this case, the aforementioned command could also have been written as:
```
mv assets/img ~/workspace
```
|||

In the example above, we are passing the `<source>`, the `assets/img/` directory as a first argument and the second argument, the `<destination>` as the `.` or the _current working directory_ symbol.

Remove the empty _assets/_ folder and confirm that the _img/_ directory has been moved to the `~/workspace` directory:

```
codio ~/workspace $ rmdir assets
codio ~/workspace $ ls
img  index.html  styles.css  test-website
```