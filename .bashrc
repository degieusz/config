#export CCACHE_DIR=/work/$USER/.ccache
#export use_ccache=1
#[ -d /work/$USER/.ccache ] || ( echo Creating .ccache directory in /work/$USER/.ccache;  mkdir -p /work/$USER/.ccache )
#source /opt/ccache/linux64/ix86/ccache_3.1.8/interface/startup/ccache_3.1.8.env
#PATH=$PATH:$CCACHE_HOME/bin/
#ccache -M 5G
#ccache .s

# Define a few Color's
BLACK='\e[0;30m'
BLUE='\e[0;34m'
GREEN='\e[0;32m'
CYAN='\e[0;36m'
RED='\e[0;31m'
PURPLE='\e[0;35m'
BROWN='\e[0;33m'
LIGHTGRAY='\e[0;37m'
DARKGRAY='\e[1;30m'
LIGHTBLUE='\e[1;34m'
LIGHTGREEN='\e[1;32m'
LIGHTCYAN='\e[1;36m'
LIGHTRED='\e[1;31m'
LIGHTPURPLE='\e[1;35m'
YELLOW='\e[1;33m'
WHITE='\e[1;37m'
NC='\e[0m'              # No Color
# Sample Command using color: echo -e "${CYAN}This is BASH ${RED}${BASH_VERSION%.*}${CYAN} - DISPLAY on ${RED}$DISPLAY${NC}\n"

# Alias's to modified commands
alias ps='ps auxf'
alias home='cd ~'
alias pg='ps aux | grep'  #requires an argument
alias un='tar -zxvf'
alias mountedinfo='df -hT'
alias ping='ping -c 10'
alias openports='netstat -nape --inet'
alias ns='netstat -alnp --protocol=inet | grep -v CLOSE_WAIT | cut -c-6,21-94 | tail +2'
alias du1='du -h --max-depth=1'
alias da='date "+%Y-%m-%d %A    %T %Z"'

alias la='ls -Al'               # show hidden files
alias ls='ls -aF --color=always' # add colors and file type extensions
alias lx='ls -lXB'              # sort by extension
alias lk='ls -lSr'              # sort by size
alias lc='ls -lcr'		# sort by change time
alias lu='ls -lur'		# sort by access time
alias lr='ls -lR'               # recursive ls
alias lt='ls -ltr'              # sort by date
alias lm='ls -al |more'         # pipe through 'more'
alias l='ls --color=always'
#export PS1='\[\034[01;32m\]\u@\h \[\034[01;34m\]\w \$ \[\033[00m\]'


source ~/.git_completion.bash
source ~/.git-prompt.sh

function seerun()
{
    SEEVER=$(setsee 2>&1 | awk '/LINSEE_BTS/ { print $1 }' | tail -n1)
    setsee -silent ${SEEVER} -E "$*"
}
alias svn='seerun svn'
SVN_ROOT=/opt/svn/linux/ix86/svn_1.6.16
export SVN_EDITOR=vim
source ~/.aliases
# while  make fsmf_test_run debug=1 -j20; do true; done
#  while true; do make fsmf_test_run debug=1 -j20 testfilter=autoconn_impl_test.oper_reset_another_autoconn_NOK; done
#git svn
source /opt/git/linux64/ix86/git_1.7.10.1/interface/startup/git_1.7.10.1_64.env
source /opt/beyondcompare/linux64/ix86/beyondcompare_3.3.5/interface/startup/beyondcompare_3.3.5.env
#git svn
source /var/fpwork/ccache.on



#ldlib path to delete after make corrections in trunk
 export LD_LIBRARY_PATH=ads

# branch name in command prompt, add to ps1 \$(__git_ps1)
source ~/bin/git_prompt.sh


#screen -raAdx
