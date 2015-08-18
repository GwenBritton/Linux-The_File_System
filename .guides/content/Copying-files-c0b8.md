## I need the same file in different directories

As we have learned, _bash_ commands decreases the time we expend removing, moving and renaming files and directories. 

You may be wondering: __is it possible to copy them?__

Yes it is!

### Introducing: the `cp` command

Remember our _test-website_ folder? It still needs a _CSS stylesheet_ file for adding some styles to it.

Let's perform a slightly more complex command in order to demonstrate _bash's_ `cp` command power.

Make sure you are on the `~/workspace` directory and execute:

```
cp style.css test-website/test-styles.css
```

Not only did the `cp` command copy the `~/workspace/style.css` file together with its content, but also changed its name:

__style.css file content:__

```
/*
 * I have some CSS content!
 */
```

__test-styles.css file content:__

```
/*
 * I have some CSS content!
 */
```