# genPass

A shorthand to generate a random password using openssl

# Supported shells

Currently only these shells are supported:

* bash
* zsh

# Setup instructions

1. Check out the git repository
2. Run `setup.sh` as the user you want to install the alias for
3. (Optional) Remove the cloned git repository

# Usage

```bash
genPass [<NUM_OF_CHARS>]
```

Example:

```bash
$ genPass 15
cNjNltmcDnh1GPU5HamP
```

If genPass is being called without a number of chars, it defaults to 25.
