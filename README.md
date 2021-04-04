myenv
===

Suppose that the os user name would be `iwark`.

### Dependencies

#### Homebrew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

#### asdf

```
$ brew install coreutils curl git 
$ brew install asdf
```

#### direnv

```
$ brew install direnv
```

#### z

```
$ brew install z
```

### Others

#### Node.js
 
```
$ asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
$ arch -x86_64 asdf install nodejs 15.13.0
```
