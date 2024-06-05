# task-zsh-completion

zsh completion for Taskfiles (taskfile.yml and taskfile.yaml)

## Installation

### Using [antigen](https://github.com/zsh-users/antigen)
1. Add the following line to your `.zshrc` file:

```zsh
antigen bundle https://github.com/conneroisu/task-zsh-completion
```

2. Run `source ~/.zshrc` to reload your `.zshrc` file   

3. Run `antigen rehash` to update your `.zshrc` file

### Using [zgen](https://github.com/tarjoilija/zgen)

1. Add the following line to your `.zshrc` file:

```zsh
zgen load https://github.com/conneroisu/task-zsh-completion
```

2. Run `source ~/.zshrc` to reload your `.zshrc` file   

3. Run `zgen reset` to update your `.zshrc` file

### Using [zplug](https://github.com/zplug/zplug)

1. Add the following line to your `.zshrc` file:

```zsh
zplug "conneroisu/task-zsh-completion"
```

2. Run `source ~/.zshrc` to reload your `.zshrc` file   

3. Run `zplug load` to update your `.zshrc` file

### Using [zinit](https://github.com/zdharma/zinit)

1. Add the following line to your `.zshrc` file:

```zsh
zinit ice as"command" pick"task" from"task-zsh-completion"
```

2. Run `source ~/.zshrc` to reload your `.zshrc` file   

3. Run `zinit light conneroisu/task-zsh-completion`    

### Manual
1. Clone this repository
2. Add the following line to your `.zshrc` file:

```zsh
source /path/to/task-zsh-completion/task.zsh
```

3. Run `source ~/.zshrc` to reload your `.zshrc` file

4. Run `task` to see a list of available tasks

## Usage

To use the completion, simply type `task` to see a list of available tasks.

## Contributing

Contributions are welcome! If you find any issues or have any suggestions, please open an issue or submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
