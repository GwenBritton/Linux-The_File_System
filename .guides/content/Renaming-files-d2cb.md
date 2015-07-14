## Is it possible to update the name of files and directories?

Changing the name of files and directories is a very common task regardless of the _operating system_ your computer is running on.

The typical workflow for this procedure would be: 

1. Right click on the file or directory you want the name updated
2. Click on the 'rename' option or similar
3. Type the desired name 
4. Press the return key

### More efficient name updates using the CLI

The CLI allows us to change files and directories' names just by inputting the following command:

```
mv <existing_file_or_directory_name> <desired_name>
```

Try it out on the terminal.

Lets update the name of the `styles.css` file to `style.css`. Make sure you are on the _~/workspace_ directory:

```
mv styles.css style.css
```

Voilà!