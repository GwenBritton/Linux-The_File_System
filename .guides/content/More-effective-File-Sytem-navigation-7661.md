## What if I'm at a deeper directory level?

We created a `nested-level-3` directory inside a new `~/workspace/nested-directories` directory available on your file tree.

The textual representation of this new directory hierarchy would be: 

```
~/workspace/
-- nested-directories
--- nested-level-1
---- nested-level-2
----- nested-level-3
```

Using your new _tab autocompletion_ knowledge, `cd` into the `nested-level-3` directory.

Now that you are on the _nested-level-3_ directory execute the `pwd` command to get an __absolute__ path from the __root directory__: 

```
/home/codio/workspace/nested-directories/nested-level-1/nested-level-2/nested-level-3
```

Wow! That's a long path! Let's understand what an absolute path and the root directory are.