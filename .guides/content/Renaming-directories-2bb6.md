## We can update directory names as well

Just as the `mv` command allows us to update existing file names, we can update existing directory names as well.

Let's update the `img` folder to be: _images_

Make sure you are on the _~/workspace_ folder and execute:

```
mv img images
```

|||definition
### Command: 
```
mv <source> <target>
```
__Definition:__ Update the name of existing files and directories.

|||

### Isn’t the `mv` command moving files and directories from one place to another?

Yes, it does, however this _bash_ command has 2 forms:

1. The first command form acts upon a _source_ file or directory to a _destination_ path name for moving files and directories.
2. The second form acts upon a _source_ path to a _target_ path name for renaming files and directories.