# BIN

## How to use

All the files must be named without the .sh.
We need to add the folder to our `.bashrc` ot `.zshrc` file.

``` bash
export PATH="$HOME/HELPERS/tools/bash/bin:$PATH"
```

## Bin Descriptions

### Password Generation

`genpass` for generation password

Generate a secure password of the provided lenght.

We call it with :

```
genpass [size-of-password]
```

- size must be > 9
- it will use a combination of small-case letters, upper-case letters, numbers, and special characters. 
- defautl size is 16

### Switch Kube Context

`kc` for kube change

Change the kubernetes context.

We call it with :

```
kc
```

- The kubernetes config files muste be in `$HOME/.kube/configs`