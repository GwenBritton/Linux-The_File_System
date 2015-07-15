## Relative paths start from the current working directory

An absolute path is a complete path from start of actual filesystem from the `/` directory. 

|||definition
__A relative path__ is related to the current working directory.
|||

Lets illustrate these differences with an example. 

If you'd like to enter the `nested-directories` directory while currently being in the `~/workspace` you may execute: 

__Using a relative path:__

```
cd nested-directories/
```

__Using an absolute path:__

```
cd /home/workspace/nested-directories/
```

Both of them should enter the desired directory.

### What is more suitable? 

Well, it depends. Take a look at the terminal, we are currently on the `nested-level-3/` directory. 

What if we want to _change directories_ back to the `~/workspace` directory?

__Using a relative path:__

```
# Going back 4 levels of double dots:
cd ../../../..
```

__Using an absolute path:__

```
# Using the root directory / character
cd /home/codio/workspace/
```

-- or because the _worskpace_ directory lives inside the home directory:

```
# Using the ~ tilda character that represents the /home/codio/ path
cd ~/workspace
```