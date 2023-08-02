$env.STARSHIP_SHELL = "nu"

def create_left_prompt [] {
    starship prompt --cmd-duration $env.CMD_DURATION_MS $'--status=($env.LAST_EXIT_CODE)' --terminal-width (tput cols)
}

# Use nushell functions to define your right and left prompt
$env.PROMPT_COMMAND = { create_left_prompt }
$env.PROMPT_COMMAND_RIGHT = ""

# The prompt indicators are environmental variables that represent
# the state of the prompt
$env.PROMPT_INDICATOR = ""
$env.PROMPT_INDICATOR_VI_INSERT = ": "
$env.PROMPT_INDICATOR_VI_NORMAL = "〉"
$env.PROMPT_MULTILINE_INDICATOR = "::: "

# some more ls aliases
alias ll = exa -alF
alias la = exa -a
alias l = exa
alias ls = exa
alias gac = git commit -a .

$env.PATH = $'($env.PATH):/home/fayaz/flutter/bin'

$env.LC_ALL = "en_US.UTF-8"
$env.LANG = "en_US.UTF-8"

# android setup
$env.ANDROID_HOME = $'($env.HOME)/android/sdk'
$env.ANDROID_SDK_ROOT = $'($env.HOME)/android/sdk'
$env.PATH = $'($env.ANDROID_HOME)/cmdline-tools/tools/bin/:($env.PATH)'
$env.PATH = $'($env.ANDROID_HOME)/emulator/:($env.PATH)'
$env.PATH = $'($env.ANDROID_HOME)/platform-tools/:($env.PATH)'

$env.JAVA_HOME = '/home/fayaz/jdk-17.0.8'

# nodejs and dart global variables
$env.PATH = $'($env.PATH):($env.HOME)/.pub-cache/bin'
$env.PATH = $'($env.PATH):/home/fayaz/Downloads/node18.17/bin"'

# for cargo
$env.PATH = $'($env.PATH):($env.HOME)/.cargo/bin'

