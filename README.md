## A Fresh macOS Setup

Instructions for setting up new Mac devices.

### Backup your data

If you're migrating from an existing Mac, you should first make sure to backup all of your existing data. Go through the checklist below to make sure you didn't forget anything before you migrate.

-   Did you commit and push any changes/branches to your git repositories?
-   Did you remember to save all important documents from non-iCloud directories?
-   Did you save all of your work from apps which aren't synced through iCloud?
-   Did you remember to export important data from your local database?
-   Did you update [mackup](https://github.com/lra/mackup) to the latest version and ran `mackup backup`?

### Setting up your Mac

After backing up your old Mac you may now follow these install instructions to setup a new one.

1. Update macOS to the latest version through system preferences
2. Setup an SSH key by using one of the two following methods  
   2.1. If you use 1Password, install it with the 1Password [SSH agent](https://developer.1password.com/docs/ssh/get-started/#step-3-turn-on-the-1password-ssh-agent) and sync your SSH keys locally.  
   2.2. Otherwise [generate a new public and private SSH key](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) by running:

    ```zsh
    curl https://raw.githubusercontent.com/fvoort/dotfiles/HEAD/ssh.sh | sh -s "<your-email-address>"
    ```

3. Clone this repo to `~/.dotfiles` with:

    ```zsh
    git clone --recursive git@github.com:fvoort/dotfiles.git ~/.dotfiles
    ```

4. Run the installation with:

    ```zsh
    cd ~/.dotfiles && ./fresh.sh
    ```

5. After mackup is synced with your cloud storage, restore preferences by running `mackup restore`
6. Restart your computer to finalize the process

Your Mac is now ready to use!

> 💡 You can use a different location than `~/.dotfiles` if you want. Make sure you also update the references in the [`.zshrc`](./.zshrc#L2) and [`fresh.sh`](./fresh.sh#L20) files.

### Cleaning your old Mac (optionally)

After you've set up your new Mac you may want to wipe and clean install your old Mac. Follow [this article](https://support.apple.com/guide/mac-help/erase-and-reinstall-macos-mh27903/mac) to do that. Remember to [backup your data](#backup-your-data) first!

## Thanks To...

I'd like to thank [Dries Vints](https://github.com/driesvints) for their [dotfiles](https://github.com/driesvints/dotfiles) which mine are based on. Their blog post "[Getting Started with Dotfiles](https://driesvints.com/blog/getting-started-with-dotfiles)" was of great help to me too.
