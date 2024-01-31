# Path to your oh-my-bash installation.
export OSH=/home/$USER/.oh-my-bash

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-bash is loaded.
OSH_THEME="font"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_OSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $OSH/custom?
# OSH_CUSTOM=/path/to/new-custom-folder

# Which completions would you like to load? (completions can be found in ~/.oh-my-bash/completions/*)
# Custom completions may be added to ~/.oh-my-bash/custom/completions/
# Example format: completions=(ssh git bundler gem pip pip3)
# Add wisely, as too many completions slow down shell startup.
completions=(
	  git
	    composer
	      ssh
      )

      # Which aliases would you like to load? (aliases can be found in ~/.oh-my-bash/aliases/*)
      # Custom aliases may be added to ~/.oh-my-bash/custom/aliases/
      # Example format: aliases=(vagrant composer git-avh)
      # Add wisely, as too many aliases slow down shell startup.
      aliases=(
	        general
	)

	# Which plugins would you like to load? (plugins can be found in ~/.oh-my-bash/plugins/*)
	# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
	# Example format: plugins=(rails git textmate ruby lighthouse)
	# Add wisely, as too many plugins slow down shell startup.
	plugins=(
		  git
		    bashmarks
	    )

	    source $OSH/oh-my-bash.sh

	    # User configuration
	     export MANPATH="/usr/local/man:$MANPATH"

	     # You may need to manually set your language environment
	     # export LANG=en_US.UTF-8

	     # Preferred editor for local and remote sessions
	     # if [[ -n $SSH_CONNECTION ]]; then
	     #   export EDITOR='vim'
	     # else
	     #   export EDITOR='mvim'
	     # fi

	     # Compilation flags
	     # export ARCHFLAGS="-arch x86_64"

	     # ssh
	     # export SSH_KEY_PATH="~/.ssh/rsa_id"

	     # Set personal aliases, overriding those provided by oh-my-bash libs,
	     # plugins, and themes. Aliases can be placed here, though oh-my-bash
	     # users are encouraged to define aliases within the OSH_CUSTOM folder.
	     # For a full list of active aliases, run `alias`.
	     #
	     # Example aliases
	     # alias bashconfig="mate ~/.bashrc"
	     # alias ohmybash="mate ~/.oh-my-bash"

	     #---------------------------------------------#

	     #Pywal
	     # Import colorscheme from 'wal' asynchronously
	     # &   # Run the process in the background.
	     # ( ) # Hide shell job control messages.
	     # Not supported in the "fish" shell.
	     (cat ~/.cache/wal/sequences &)

	     # Alternative (blocks terminal for 0-3ms)
	     cat ~/.cache/wal/sequences

	     # To add support for TTYs this line can be optionally added.
	     source ~/.cache/wal/colors-tty.sh

	     #---------------------------------------------#

	     #Cargo
	     . "$HOME/.cargo/env"

	     #Fzf
	     [ -f ~/.fzf.bash ] && source ~/.fzf.bash

	     #The Fuck Config
	     eval "$(thefuck --alias)"

	     #Vim
	     export EDITOR=/usr/bin/nvim

	     #Color Names!
	     txtblk='\[\e[0;30m\]' # Black - Regular
	     txtred='\[\e[0;31m\]' # Red
	     txtgrn='\[\e[0;32m\]' # Green
	     txtylw='\[\e[0;33m\]' # Yellow
	     txtblu='\[\e[0;34m\]' # Blue
	     txtpur='\[\e[0;35m\]' # Purple
	     txtcyn='\[\e[0;36m\]' # Cyan
	     txtwht='\[\e[0;37m\]' # White
	     bldblk='\[\e[1;30m\]' # Black - Bold
	     bldred='\[\e[1;31m\]' # Red
	     bldgrn='\[\e[1;32m\]' # Green
	     bldylw='\[\e[1;33m\]' # Yellow
	     bldblu='\[\e[1;34m\]' # Blue
	     bldpur='\[\e[1;35m\]' # Purple
	     bldcyn='\[\e[1;36m\]' # Cyan
	     bldwht='\[\e[1;37m\]' # White
	     unkblk='\[\e[4;30m\]' # Black - Underline
	     undred='\[\e[4;31m\]' # Red
	     undgrn='\[\e[4;32m\]' # Green
	     undylw='\[\e[4;33m\]' # Yellow
	     undblu='\[\e[4;34m\]' # Blue
	     undpur='\[\e[4;35m\]' # Purple
	     undcyn='\[\e[4;36m\]' # Cyan
	     undwht='\[\e[4;37m\]' # White
	     bakblk='\[\e[40m\]'   # Black - Background
	     bakred='\[\e[41m\]'   # Red
	     badgrn='\[\e[42m\]'   # Green
	     bakylw='\[\e[43m\]'   # Yellow
	     bakblu='\[\e[44m\]'   # Blue
	     bakpur='\[\e[45m\]'   # Purple
	     bakcyn='\[\e[46m\]'   # Cyan
	     bakwht='\[\e[47m\]'   # White
	     txtrst='\[\e[0m\]'    # Text Reset

	     #Prompt Colors
	     atC="${txtpur}"
	     nameC="${txtpur}"
	     hostC="${txtpur}"
	     pathC="${txtgrn}"
	     gitC="${txtpur}"
	     pointerC="${txtgrn}"
	     normalC="${txtwht}"

	     alias ls='lsd'

	     #Red name for root must copy to /root!!
	     if [ "${UID}" -eq "0" ]; then
		       nameC="${txtred}"
	     fi

	     export PATH=$PATH:/home/pi

	     alias ranger='. ranger'

	     #!/bin/bash

	     if [[ -d "$HOME/.local/bin" ]]
	     then
		         export PATH=$PATH:$HOME/.local/bin
	     fi

	     alias src='source ~/.bashrc'
	     alias :q='exit'
	     alias pacsys="pacman -Qq | fzf --preview 'pacman -Qil {}' --layout=reverse --bind 'enter:execute(pacman -Qil {} | less)'"
	     alias pacpkgs="pacman -Slq | fzf --preview 'pacman -Si {}' --layout=reverse"
	     alias vim='nvim'
	     alias grep='grep --color=auto'
	     alias pacman='pacman --color=auto' 
