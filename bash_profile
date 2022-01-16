
#enables colorin the terminal bash shell export
export CLICOLOR=1

#setsup thecolor scheme for list export
export LSCOLORS=gxfxcxdxbxegedabagacad

#sets up theprompt color (currently a green similar to linux terminal)
#export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$'

#enables colorfor iTerm
export TERM=xterm-256color

# depot_tools
DEPOT_TOOLS_PATH=/Users/ruibin.chow/Documents/code/other_code/webrtc
# CHROMIUM_BUILDTOOLS_PATH="$DEPOT_TOOLS_PATH/gn/buildtools"
# export CHROMIUM_BUILDTOOLS_PATH
export PATH=$PATH:$DEPOT_TOOLS_PATH/gn/depot_tools



export PATH=/usr/local/Cellar/protobuf/3.17.3/bin:$PATH


alias python='python3'
alias pip='pip3'
