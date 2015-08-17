## Relative paths start from the current working directory

|||definition
__A relative path__ is related to the current working directory.
|||

Let's illustrate absolute and relative paths differences with an example.

If you'd like to enter the `nested-directories` directory while currently being in the `~/workspace` you may execute: 

__Using a relative path:__

```
cd nested-directories/
```

__Using an absolute path:__

```
cd /home/workspace/nested-directories/
```

### What is more suitable? 

Assuming that we are currently on the `nested-level-3/` directory. What if we want to _change directories_ back to the `~/workspace` directory?

__Using a relative path:__

```
# Going back 4 levels of double dots notation:
cd ../../../..
```

__Using an absolute path:__

```
# Using the root directory / character
cd /home/codio/workspace/
```

-- or because the _worskpace_ directory lives inside the home directory:

```
# Using the ~ tilde character that represents the /home/codio/ path
cd ~/workspace
```