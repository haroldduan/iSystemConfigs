#set fish greeting
#set fish_greeting 'Talk is cheap. Show me the code.'
set fish_greeting 'Hello,the fucking world!'

#set autojump env
begin
    set --local AUTOJUMP_PATH $HOME/.autojump/share/autojump/autojump.fish
    if test -e $AUTOJUMP_PATH
        source $AUTOJUMP_PATH
    end
end

status --is-interactive; and source (pyenv init -|psub)
status --is-interactive; and source (pyenv virtualenv-init -|psub)



# set the go root path
set -x GOROOT /usr/lib/go 
#set -x GOROOT /usr/lib/go-1.12 
# set the workspace path
set -x GOPATH /home/haroldduan/go
# set the go bin path
set -x GOBIN $GOPATH/bin  
# add the go bin path to be able to execute our programs
set -x PATH $PATH $GOROOT/bin $GOPATH/bin
# set the GO111MODULE value
set -x GO111MODULE "on"
# set the GOPROXY address
set -x GOPROXY "https://goproxy.io/"

test -s /home/haroldduan/.nvm-fish/nvm.fish; and source /home/haroldduan/.nvm-fish/nvm.fish

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[ -f /home/haroldduan/.nvm/versions/node/v10.17.0/lib/node_modules/electron-forge/node_modules/_tabtab@2.2.2@tabtab/.completions/electron-forge.fish ]; and . /home/haroldduan/.nvm/versions/node/v10.17.0/lib/node_modules/electron-forge/node_modules/_tabtab@2.2.2@tabtab/.completions/electron-forge.fish

# set -x PATH  $PATH $HOME/iWorkSpace/iGitea/giprote.commandline/scripts

# export RUSTUP_DIST_SERVER="https://mirrors.ustc.edu.cn/rust-static"
# export RUSTUP_UPDATE_ROOT="https://mirrors.ustc.edu.cn/rust-static/rustup"
export PATH="$HOME/.cargo/bin:$PATH"

source /home/haroldduan/.config/fish/conf.d/dracula.fish
