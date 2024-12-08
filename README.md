# Scope Zsh Function
The `scope` function is a custom Zsh command designed to streamline the process of searching for specific text within directories, concatenating the contents of
matching files, and copying the result directly to your clipboard. Additionally, it provides feedback on the number of characters copied, enhancing your productivity
in the terminal.

## Features
- Flexible Search: Easily search for any text string within a specified directory or the current directory by default.
- Clipboard Integration: Automatically copies the concatenated content to your clipboard.
- Character Count: Displays the number of characters copied for your reference.
- Easy Integration: Simple to add to your `.zshrc` file.

## Installation
1. Download the `scope.zsh` file from the repository.

2. Add to Your `.zshrc`

  Open your `.zshrc` file with your preferred text editor:
  ```bash
  nano ~/.zshrc
  ```
  Append the contents of `scope.zsh` to the end of the file.

3. Reload Your `.zshrc` by running `source ~/.zshrc`

## Examples
- Search for "ERROR" in the `/var/logs` directory
  ```bash
  scope "ERROR" /var/logs
  ```

  _Output:_ `Copied 12345 characters from files containing 'ERROR' to the clipboard.`

