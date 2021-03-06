# Notes: This is a general bash_profile which works on most POSIX systems 
# including Linux/BSD/Darwin/Ubuntu on Windows
# Updated: 3/9/2018
#########################
## Default Area        ##
#########################

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# Get the profile
if [ -f ~/.profile ]; then
       . ~/.profile
fi

# Environments and Startup
# IMPORTANT NOTE - For users of Homebrew,RVM, or any application that installs 
# under the home directories or unusally areas, you will need to add the paths here.

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

# Aliases add here
# User specific environment and startup programs
# aliases
alias ssh='ssh -o "StrictHostKeyChecking no"'
alias sshaws='ssh -i "~/.ssh/master_key_2018.pem"'

########################################
## Do not edit the Git code           ##
## I'm not sure how it works          ##
########################################

# This git status code was found on the Internet
# not sure who created it but it's extremely helpful

# get current branch in git repo
function parse_git_branch() {
    BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
    if [ ! "${BRANCH}" == "" ]
    then
        STAT=`parse_git_dirty`
        echo "[${BRANCH}${STAT}]"
    else
        echo ""
    fi
}

# get current status of git repo
function parse_git_dirty {
    status=`git status 2>&1 | tee`
    dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
    untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
    ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
    newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
    renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
    deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
    bits=''
    if [ "${renamed}" == "0" ]; then
        bits=">${bits}"
    fi
    if [ "${ahead}" == "0" ]; then
        bits="*${bits}"
    fi
    if [ "${newfile}" == "0" ]; then
        bits="+${bits}"
    fi
    if [ "${untracked}" == "0" ]; then
        bits="?${bits}"
    fi
    if [ "${deleted}" == "0" ]; then
        bits="x${bits}"
    fi
    if [ "${dirty}" == "0" ]; then
        bits="!${bits}"
    fi
    if [ ! "${bits}" == "" ]; then
        echo " ${bits}"
    else
        echo ""
    fi
}

#
# This line is for the prompt, you can remove the "\h" which displays the hostname
#
export PS1="\[\e[33m\][\[\e[m\] \[\e[35m\]\@\[\e[m\] \[\e[33m\]]\[\e[m\] \h \[\e[34m\][\[\e[m\] \[\e[32m\]\w\[\e[m\] \[\e[34m\]]\[\e[m\] \[\e[30;41m\]\`parse_git_branch\`\[\e[m\] \[\e[31m\]\\n$\[\e[m\] "


