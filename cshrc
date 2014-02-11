if ( $?DISPLAY == "1" ) then
  xset b off
endif

# ignore case during completion
set complete = enhance

## Complete arguments to these commands with ...
##   directories only 
complete {cd,rmdir,mkdir} 'p/1/d/'
##   pdf files
complete {acroread,xpdf} 'p/*/f:*.{pdf}/'
complete {evince} 'p/*/f:*.{pdf,eps,ps}/'

# Quickstarts
alias cds     'cd /storage/gager'
alias cdw     'cd /work/gager'
alias cdwww     'cd /nfs/vmserv3/raid/www/usr2/gager/public_html/'
alias cdS     'cd ~/Simulations'
alias fcp      'cp *.py *.inp *.msh *.bou *.bcs *.nam *.sur *.msg *.dat *readme* *.sh *.f *.o *.sta *.png *.eps *.rpt *.dis *.nth *.out *.txt *.xml *.ipynb'
alias lss      'ls -h --size'
alias CAElinux 'vmplayer /storage/gager/CAELinux/CAElinux/*.vmx'
alias todo     'grep TODO ~/vimwiki/ScratchPad.wiki | grep -v DONE | grep TODO'
alias abqclean 'rm *.odb *.prt *.qlog *.qsub* *.sim *.pmg *.pes *.par *.com *.ipm *.log *.rpy*'
alias csm 'rm *.sta *.msg'


# Smart Replacements
alias ipynb    'ipython notebook'
alias cd..     'cd ..'
alias ls       'ls -F --color'
alias l        'ls -F --color'
alias du       'du -h'
alias df       'df -h'
alias ci       'vi'
alias grep     'grep --color'
alias grep2    'grep --color -A2 -B2 -i'
alias xterm    "xterm -rv +sb -fa 'Mono' -fs 11"
alias essen    'google-chrome http://www.deliciousmonster.at/images/mittagsmenue-1040-wien/wochenkarte-delicious-monster-restaurant-wien.pdf http://www.kunsthallencafe.at/khc/uploads/wochenkarte.pdf http://members.chello.at/natascha.orlik/mittagsmen%FCs.htm http://www.manzana.at'
#alias svndiff  'svn diff --diff-cmd diffwrap.sh'
# for inverse search in xdvi
alias gvim     'gvim --servername xdvi' 
alias ps2pdf   'ps2pdf -sPAPERSIZE=a4'
# pretty print of text files
alias printd    'enscript -f Helvetica12 -s 15.5 -M A4 -G -j --word-wrap'
alias printd2p  'enscript -f Helvetica12 -s 15.5 -M A4 -G -j --word-wrap --nup=2'
alias print    'enscript -f Helvetica12 -s 5 -M A4 -G -j --word-wrap'

#to use imagemagicks videoindex
alias vidjpg   'display -font fixed "vid:*.jpg"'
alias vidpng   'display -font fixed "vid:*.png"'
alias vidimg   'display -font fixed "vid:*.{jpg,jpeg,gif,xpm,png,xbm,bmp,JPG}"'
alias gth     'gthumb .'

#ghostscript version change
#alias gs '/usr2/gager/tools/ghostscript-9.05-linux_x86_64/gs-905-linux_x86_64'

# Environment variables
# use new matplotlib
setenv PYTHONPATH /usr2/gager/tools/pythonpackages/PyX-0.10/:/usr2/gager/tools/Sphinx/:/usr2/gager/tools/Scripts/plot_utils/:/usr2/gager/tools/pythonpackages/mpltools:/usr2/gager/tools/pythonpackages/obrowser:/usr2/gager/tools/pythonpackages:/student/08/e0825772/lib64/python2.6/site-packages/:/usr2/gager/tools/pythonpackages/Markups-0.2/:/usr2/gager/usr/lib/python2.6/site-packages/:/usr2/gager/tools/pythonpackages/sympy-0.7.3/build/lib:
# use old matplotlib and ipython
#setenv PYTHONPATH /usr2/gager/tools/pythonpackages/PyX-0.10/:/usr2/gager/tools/Sphinx/:/usr2/gager/tools/Scripts/plot_utils/:/usr2/gager/tools/pythonpackages/mpltools:/usr2/gager/tools/pythonpackages/obrowser:/usr2/gager/tools/pythonpackages:/student/08/e0825772/lib64/python2.6/site-packages/:/usr2/gager/tools/pythonpackages/Markups-0.2/:/usr2/gager/tools/pythonpackages/sympy-0.7.3/build/lib:
#setenv PYTHONHOME ../:./:/programs/python2.6//:
setenv TEXINPUTS ../:./:/usr2/gager/tools/Latexpackages//:/usr2/gager/Documentation/CompSciTech_2011-05/elsarticle/:
setenv PATH /usr2/gager/bin/:/usr/lib64/qt4/bin:$home/tools/intltool-0.41.0/bin/:$home/tools/Sphinx/bin/:/usr2/gager/usr/bin/:${PATH}
setenv SVN_EDITOR vim
# the following variables are set in fvwm:environmental_variables
#setenv PRINTER post3dh
#setenv http_proxy http://proxy.ilsb.tuwien.ac.at:8080
#setenv BROWSER google-chrome
#setenv no_proxy "localhost, *.ilsb.tuwien.ac.at, 127.0.0.1"
#
# colors in terminal:
setenv LS_COLORS 'no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=01;32:*.cmd=01;32:*.exe=01;32:*.com=01;32:*.btm=01;32:*.bat=01;32:*.sh=01;32:*.csh=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.bz=01;31:*.tz=01;31:*.rpm=01;31:*.cpio=01;31:*.jpg=01;35:*.gif=01;35:*.bmp=01;35:*.xbm=01;35:*.xpm=01;35:*.png=01;35:*.tif=01;35:*.txt=00;33:*.pdf=00;33:*.odf=00;33:*.tex=00;33:*.wiki=00;33:*.lck=05;31:'
 
# Prompt
#set prompt = "`whoami`@`hostname -s` %~ :"
#set prompt = "\n%{\033[32m%}%n@%m[%c]:%{\033[0m%} "
#set prompt = "%{\033]0;%T @ %m:%~\007%} \n%{\033[32m%}%n@%m[%c]:%{\033[0m%} "
set prompt = "%{\033]0;%T @ %m:%~\007%}__________________________________________________ \n%{\033[0m%}%n@%m[%c]:%{\033[0m%} "

# history search bindings
bindkey -k down history-search-forward
bindkey -k up history-search-backward

# some complete stuff 
# ~~~~~~~~~~~~~~~~
##   shell variables 
#complete {set,unset} 'p/1/s/'
##   environment variables
#complete {setenv,unsetenv} 'p/1/e/'
##   groups
#complete {chgrp,newgrp,groupdel,groupmod} 'p/1/g/'
##   usernames
#complete {chown,passwd,write,userdel,usermod} 'p/1/u//'
##   signals
#complete {kill} 'c/-/S/' 'p/*/c/'
##   aliases
#complete {alias,unalias} 'p/1/a/'
## completes args to my rm2path alias with paths currently in $path var
#complete rm2path 'p/*/$path/'
##   commands
#complete {man,which,nohup} 'p/*/c/'
##   null
#complete {true} 'p/1/x:Truth has no options. 8^)/'
##   complete with group after a .
#complete {chown} 'p/2-$/f' 'c/*./g/' 'p/1/u/'
##   hostnames from a shell var
#set boxen = ( ur io ix eos fossil )     #build list from /etc/hosts?
#complete {ssh,xsh,ping} 'p/*/$boxen/'
##
##   graphics files
#complete {gimp,xv} 'p/*/f:*.{jpg,jpeg,gif,xpm,png,xbm,bmp}/'

