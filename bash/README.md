# BASH

We have two folders : 
- bin => useful scripts executing in a different shell
- func => functions executing in the same shell

I had to make a differences between those two because sometimes it's needed to launch code in the same shell to load env variables for example.

## BIN

### How to use

All the files must be named without the .sh.
We need to add the folder to our `.bashrc` ot `.zshrc` file.

``` bash
export PATH="$HOME/HELPERS/tools/bash/bin:$PATH"
```

### Bin Descriptions

#### Password Generation

`genpass` for generation password

Generate a secure password of the provided lenght.

We call it with :

```
genpass [size-of-password]
```

- size must be > 9
- it will use a combination of small-case letters, upper-case letters, numbers, and special characters. 
- defautl size is 16

#### Switch Kube Context

`kc` for kube change

Change the kubernetes context.

We call it with :

```
kc
```

- The kubernetes config files muste be in `$HOME/.kube/configs`


## FUNC

### How to use

All the files must be named with the .sh and contains only a function. 
We need to source the file in our `.bashrc` or `.zshrc`.

I use a loop to load everything in the folder : 

``` bash
for script in "$HOME/HELPERS/tools/bash/func/"*.sh; do
    [ -f "$script" ] && source "$script"
done
```

We call the function by using the function name.


### Functions Description

#### Load Environment

`load_env.sh`

Load all envrionment variables in a file. 
It's usefull to load a lot of variables switching project for example.

We call it with : 

```
load [env-name]
```

- It will search the file at `$HOME/.env/[env-name]`
