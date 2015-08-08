## Directories can be copied and renamed too

Lets copy some `~/workspace` directories into the `test-website` directory.

Execute the following command from the _~/workspace_ directory path:

```
cp -R config test-website
```

Can you tell the difference if you execute the following similar command?:

```
cp -R images/. test-website
```

### Understanding the difference

__On command execution 1__, we input the `cp` command together with the `-R` option which copies directory content __together with the directory itself__ to the specified destination directory. `-R` stands for _recursive_ which goes through each one of the files or directories inside and copies them until its finished.

__On command execution 2__, the `<source>` directory argument includes a special syntax in order to copy the directory content __but not the directory itself__. So in this case, only the `~/workspace/images/logo.png` file was copied to the `test-website/` directory. 

__NOTE:__ The `cp -R` option needs to be specified when working with __non-empty directories__.

|||definition
### Command:
```
cp <option> <source> <destination>
```
__Definition:__
The `cp` command copies files and directories from an existing source file or directory name to an existing destination directory name.

Additionally, the destination path can include a file name to be assigned instead of the existing one without altering its content.

__NOTE:__ Destination directories must exist in order for the command to work.
|||