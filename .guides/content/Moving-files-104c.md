## Simplifying our web project structure

We realized that our current web project directory structure is too complex for just a simple static website.

We might need to move the `css/styles.css` file to the `~/workspace` directory.

Click on your terminal window and execute:

```
mv css/styles.css ~/workspace
```

|||definition
### Command: 
```
mv <source> <destination>
```
__Definition:__
The `mv` command moves each file or directory named by a __source__ argument to a __destination__ directory named by the destination directory argument.

__NOTE:__ This command can only perform one operation at a time. Meaning that it can only move one file or directory per input.

|||

Remove the empty _css/_ directory as it is no longer required, and list your `~/workspace` directory to confirm that the _styles.css_ file has been moved:

```
codio ~/workspace $ rmdir css
codio ~/workspace $ ls
assets index.html styles.css
```