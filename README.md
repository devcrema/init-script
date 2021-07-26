# init-script
init script for develop

## mac

### before run
- `git clone https://github.com/devcrema/init-script`
- sign in appstore
- `sudo xcodebuild -license accept`

### before run in m1
- 스크립트 실행전에 아래를 먼저 할 것
- `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
- `echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/devcrema/.zshrc`
- `sudo softwareupdate --install-rosetta`

### run 
- `cd init-script`
- `sudo ./init_mac.sh`

### after run
- launch cask apps for init

### 작업 방법
- 초기작업은 `brew bundle dump` 로 추출하여 작업함
- https://github.com/Homebrew/homebrew-bundle
- brew 항목 찾기 : `brew search 이름`
- appstore 항목 찾기 : `mas search`
