# Fresh Installation

### Take ssh keys

    Copy all files within ~/.ssh (except for known_hosts) in a safe place
    Paste them back after fresh install


### Bootable installer MacOS

    1. Put Bootable installer MacOS on USB
    2. Turn machine off and on
    3. Press 'alt' while machine turning on
    4. Choose 'boot from USB drive'
    5. When Disk Utilities open, first erase harddrive
    6. Then install macOS
    Choose Apple File System (APFS Encrypted)


### Initialize

1. Bring OS up to date.
2. Install XCode (App Store)
3. Install Command Line Developer Tools [+](https://developer.apple.com/downloads/)


### Software

- [ ] 1Password (App Store)
- [ ] Keynote (App Store)
- [ ] Numbers (App Store)
- [ ] Pages (App Store)
- [ ] Toggl (App Store)
- [ ] Slack (App Store)

- [ ] Postgres App [+](http://postgresapp.com/)
- [ ] Google Chrome [+](http://www.google.co.uk/chrome/)
- [ ] Dropbox [+](https://dropbox.com/)
- [ ] Github Desktop [+](https://desktop.github.com/)
- [ ] iTerm [+](https://www.iterm2.com/)
- [ ] vscode [+](https://code.visualstudio.com/)
- [ ] Paw [+](https://paw.cloud)
- [ ] Recordit [+](http://recordit.co/)
- [ ] Spotify [+](http://www.spotify.com/)

- [ ] Android Studio [+](http://developer.android.com/tools/studio/)
- [ ] Java JDK [+](https://facebook.github.io/react-native/docs/getting-started.html#java-development-kit)

### Oh my zsh

    xcode-select --install
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

    touch ~/.zprofile
    touch ~/.github_token


### NVM

    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
    nvm install 6
    npm install -g react-native-cli react-devtools
    curl -o- -L https://yarnpkg.com/install.sh | bash


### Homebrew

    # Install Homebrew
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    # Install Specifics
    brew update
    brew install htop
    brew install redis
    brew install mysql
    brew install pyenv
    brew install watchman
    brew install heroku/brew/heroku
    brew install getsentry/tools/sentry-cli

    brew cask install android-platform-tools
    brew cask install facebook-ios-sdk
    brew cask install fastlane


### Start redis & install catfish

    brew services start redis
    clone catfish [+](https://github.com/dabapps/catfish)


### Setup mysql

    sudo vim /etc/my.cnf
    > [mysqld]
    >
    > port = 8889

    mysql_secure_installation
    mysql --host=localhost --port=8889 -u root -p
    brew services start mysql
