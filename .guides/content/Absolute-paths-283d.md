## There is a slash character before the home directory

On previous units, we learned that the `~` _tilda character_ represents the _home directory_, where every registered user in the computer system is assigned its own directory.

Notice the forward slash before the _home directory_ after executing the `pwd` command:

![pwd-cmd-root](.guides/img/pwd-command-root.png)

Regardless the directory we are currently on, __the directory is always going to be a root directory *branch*__. 

|||definition
### The root directory
In a computer file system, the root directory is the top-most directory in a file hierarchy represented by a `/` character.

Try navigating and listing the root directory by executing:

```
cd /
ls
```
Did you spot the _home_ directory? Try getting back to the _workspace_ directory by _changing directories_ into it.
|||

Remember the _file tree_? Well, its name can be likened to the trunk of a tree as the starting point where all branches originate from.

### I understand the root, so what are absolute paths?

|||definition
__Absolute paths__ are represented as starting from the root directory `/` character and ending in the current working directory.
|||

Lets compare absolute vs. relative paths in the next section.