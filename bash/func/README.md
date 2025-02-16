# FUNC

## How to use

All the files must be named with the .sh and contains only a function. 
We need to source the file in our `.bashrc` or `.zshrc`.

I use a loop to load everything in the folder : 

``` bash
for script in "$HOME/HELPERS/tools/bash/func/"*.sh; do
    [ -f "$script" ] && source "$script"
done
```

We call the function by using the function name.


## Functions Description

### Load Environment

`load_env.sh`

Load all envrionment variables in a file. 
It's usefull to load a lot of variables switching project for example.

We call it with : 

```
load [env-name]
```

- It will search the file at `$HOME/.env/[env-name]`