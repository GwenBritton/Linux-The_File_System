## Executing multiple commands in a single line

In the previous section, we executed the following command in order to remove the empty _assets_ directory and to list the _workspace_ directory content after it:

```
codio ~/workspace $ rmdir assets | ls
img index.html styles.css
```

|||definition
### The pipe character
__Definition:__ The pipe character allows us to input multiple commands at once by passing the output of a command to another command.

#### Background:
UNIX, the technology over which the Codio terminal is running (you must not confuse it with _Bash_ which is the program running on the terminal) was designed to simultaneously run commands that perform small and specific tasks that result on more complex tasks.

__Some command combinations may not work together__ and its recommended to use no more than 2 commands at once.
|||

So lets say you want to create a directory, list the current directory, remove the previously created directory and list the current directory again. 

You may execute the following command: 

```
mkdir temp | ls | rmdir temp | ls
```