clear
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
export LC_CTYPE=en_UK.UTF-8
export LC_ALL=en_UK.UTF-8
echo -n -e "\033]0;LeoLaneseltd\007"
echo -e "Kernel Information: " ;uname -smr
echo -e "${COLOR_BROWN}"; bash --version
echo -ne "${COLOR_GRAY}Uptime: "; uptime
echo -ne "${COLOR_GRAY}Server time is: "; date	
cd /Users/

## dev LESS (lessc: npm install -g less) preprocessors
alias allwms="find ~/Sites/wi.mobile/Source/WI.Web/less/ -name '*.less' -exec lessc {} \; > ~/Sites/wi.mobile/Source/WI.Web/Css/combined.css;"


## instead doing this I can use Grunt: Compile LESS directly and copy into deployment CSS folder directory.
alias wms="lessc ~/Sites/wi.mobile/Source/WI.Web/less/accordion.less > ~/Sites/wi.mobile/Source/WI.Web/Css/accordion.css;
	    lessc ~/Sites/wi.mobile/Source/WI.Web/less/home.less > ~/Sites/wi.mobile/Source/WI.Web/Css/home.css;
            lessc ~/Sites/wi.mobile/Source/WI.Web/less/grid/col.less > ~/Sites/wi.mobile/Source/WI.Web/Css/grid/col.css;
            lessc ~/Sites/wi.mobile/Source/WI.Web/less/grid/sizes.less > ~/Sites/wi.mobile/Source/WI.Web/Css/grid/sizes.css;
            lessc ~/Sites/wi.mobile/Source/WI.Web/less/lib/fonts.less > ~/Sites/wi.mobile/Source/WI.Web/Css/lib/fonts.css;
            lessc ~/Sites/wi.mobile/Source/WI.Web/less/lib/mixins.less > ~/Sites/wi.mobile/Source/WI.Web/Css/lib/mixins.css;
            lessc ~/Sites/wi.mobile/Source/WI.Web/less/emailcapture.less > ~/Sites/wi.mobile/Source/WI.Web/Css/emailcapture.css;
"

## dev port
## find all .less and combined them into 1 CSS.
alias allport="find ~/Sites/ptf/less/ -name '*.less' -exec lessc {} \; > ~/Sites/ptf/css/combined.css;"


## instead doing this I can use Grunt: Compile LESS directly and copy into deployment CSS folder directory.
alias port="lessc ~/Sites/ptf/less/grid.less > ~/Sites/ptf/css/grid.css;
	    lessc ~/Sites/ptf/less/style.less > ~/Sites/ptf/css/style.css;
	    lessc ~/Sites/ptf/less/article.less > ~/Sites/ptf/css/article.css;
            lessc ~/Sites/ptf/less/canvas.less > ~/Sites/ptf/css/canvas.css;
            lessc ~/Sites/ptf/less/lab.less > ~/Sites/ptf/css/lab.css;
            lessc ~/Sites/ptf/less/type.less > ~/Sites/ptf/css/type.css;
            lessc ~/Sites/ptf/less/mindex.less > ~/Sites/ptf/css/mindex.css;
"



## dev rsyncs
alias sync="rsync -avp --stats --prune-empty-dirs --exclude='*~' --exclude='.DS_Store' /Users/llanese/Sites/wi.mobile/Source/WI.Web/js/ /Volumes/wi.mobile/js;
	    rsync -avp --stats --prune-empty-dirs --exclude='*~' --exclude='.DS_Store' /Users/llanese/Sites/wi.mobile/Source/WI.Web/css/ /Volumes/wi.mobile/css;
	    rsync -avp --stats --prune-empty-dirs --exclude='*~' --exclude='.DS_Store' /Users/llanese/Sites/wi.mobile/Source/WI.Web/less/ /Volumes/wi.mobile/less;
	    rsync -avp --stats --prune-empty-dirs --exclude='*~' --exclude='.DS_Store' /Users/llanese/Sites/wi.mobile/Source/WI.Web/img/ /Volumes/wi.mobile/img;
	    rsync -avp --stats --prune-empty-dirs --exclude='*~' --exclude='.DS_Store' /Users/llanese/Sites/wi.mobile/Source/WI.Web/tests/jasmine/spec/ /Volumes/wi.mobile/tests/jasmine/spec;
	    rsync -avp --stats --prune-empty-dirs --exclude='*~' --exclude='.DS_Store' /Users/llanese/Sites/wi.mobile/Source/WI.Web/tests/jasmine/ /Volumes/wi.mobile/tests/jasmine;
	    rsync -avp --stats --prune-empty-dirs --exclude='*~' --exclude='.DS_Store' /Users/llanese/Sites/wi.mobile/Source/WI.Web/tests/jasmine/lib/helpers/ /Volumes/wi.mobile/tests/jasmine/lib/helpers;
	    rsync -avp --stats --prune-empty-dirs --exclude='*~' --exclude='.DS_Store' /Users/llanese/Sites/wi.mobile/Source/WI.Web/Views/ /Volumes/wi.mobile/Views;
            rsync -avp --stats --prune-empty-dirs --exclude='*~' --exclude='.DS_Store' /Users/llanese/Sites/wi.mobile/Source/WI.Web/css/fonts/ /Volumes/wi.mobile/css/fonts;
"

## all together
alias go="less sync"


## shortcuts & directions
alias  root="cd ~/Documents/root"
alias  goto_myP="goto_web; cd myProject"
alias  l="ls -la"
alias  ls="ls -aFhlG"
alias  ll="ls -l" 
alias  ls='ls -GFh'
alias  search=grep
alias  ..="cd .."
alias  ...="cd ../.."
alias  h="history"
alias  dh="sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'select LSQuarantineDataURLString from LSQuarantineEvent'"
alias  ddh="sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"
alias  used="defaults write com.apple.dock persistent-others -array-add '{ "tile-data" = { "list-type" = 1; }; "tile-type" = "recents-tile"; }'; killall Dock"
alias  reveal="defaults write com.apple.finder AppleShowAll Files TRUE; killall Finder"


## automatic tasks manages shortcuts
alias bower_dependencies = "grunt bower-install-simple; bower update"


## git
alias git_end_sprint="git branch | grep -v 'master' | xargs git branch -D"
alias git_merge="git difftool"
alias git_branch="git branch -a"
alias git_k="gitk --all &"
alias git_log="git log --graph --oneline --all --decorate --color"
alias git_users="git log --format='%aN' | sort -u"
alias git_diff="git log -p" 
alias git_i="git add -i"
alias git_me="git log --author=LeoLanese"
alias git_remote="git remote -v"
alias git_clean="find . -name .DS_Store -print0 | xargs -0 git rm --ignore-unmatch; 
		git config --global core.excludesfile ~/.gitignore;
		echo .DS_Store >> ~/.gitignore"
alias git_all_users='git log --format='%aN' | sort -u'
alias git_tasks='grep --exclude-dir=.git -rEI "TODO|FIXME" . 2>/dev/null'
#alias git_last='for k in 'git branch|sed s/^..//';do echo -e 'git log -1 --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" "$k"`\\t"$k";done|sort'
#alias git_ignore='find . \( -type d -empty \) -and \( -not -regex ./\.git.* \) -exec touch {}/.gitignore \;'
alias git_undelete='git checkout $(git rev-list -n 1 HEAD -- "$file")^ -- "$file"'
alias git_idea='git rm -r --cached .idea'
alias n='NODE_ENV=development grunt server'


## ports
#alias check_open_ports='lsof -Pi | grep LISTEN"
#alias check_port="lsof -i :8888"
#alias check_establish="lsof -i | grep -i estab"


## curls
#alias get_ip='curl ip.telize.com'
#alias ip='curl -s http://wtfismyip.com/text'
#alias ip2='curl l2.io/ip'
#alias header='curl -I g.cn'
#alias validate_json='curl -s "http://feeds.delicious.com/v2/json?count=5" | python -m json.tool | less -R'


## the "qp" alias ("que pasa")
alias qp="ps auxwww"


# mongo
alias m="mongod --dbpath /Users/leolanese/met/data/db --rest"


## grunt alias to run dev
alias gdev="grunt dev && grunt"


## MAC alias
alias show_all="defaults write com.apple.finder AppleShowAllFiles true && killall Dock"
alias notification_center="launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist killall NotificationCenter"


## projects
alias  jira="open -a /Applications/Google Chrome.app http://jira.nnx.com/"
alias  localhost="open -a '/Applications/Google Chrome.app' http://localhost:9898/"
alias  leolanese="open -a '/Applications/Google Chrome.app' https://leolanese.com" 
alias  grunt_local="open -a '/Applications/Google Chrome.app' http://localhost:8888/"


## personal projects
alias  blog="open -a '/Applications/Google Chrome.app' http://leolanese.com/portfolio_old3/root/js_2.php"
alias  blog="open -a '/Applications/Google Chrome.app' http://leolanese.com"
alias  blog="open -a '/Applications/Google Chrome.app' http://www.rwdlab.com"
alias  blog="open -a '/Applications/Google Chrome.app' http://beresponsive.com"


## testing
alias  ios="open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app"
alias  safari="open -a safari http://localhost:9000/"
alias  chrome="open -a '/Applications/Google Chrome.app'"
alias  lynx="lynx 'http://www.bbc.co.uk'"


## test-driven test
alias  run_casper="casperjs /Users/llanese/Sites/tests/go.js http://www.bostonglobe.com/" 
alias  run_jasmine="open -a safari http://m.devu.jackpotparty.com/tests/jasmine/wmsRunner.html" 


## profile
alias  edit_profile='open -e ~/.bash_profile'
alias  reload_profile=". ~/.bash_profile"


## web development, so I need to edit these non-owned files fairly often
alias edit_hosts="open -e /etc/hosts"
alias edit_httpd="open -e /etc/apache2/httpd.conf"
alias edit_php="open -e /etc/php.ini"
alias edit_vhosts="open -e /etc/apache2/extra/httpd-vhosts.conf"


# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

## Modify Bash Prompt, Enable colors, improve ls
export PS1="-->\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$(parse_git_branch)\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad


## FIX logging (don not stop running processes)
alias logout="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"


## FIX sleep problem on MAC laptops (handle with care)
alias when_sleep='sudo pmset -a'
alias hibernate='sudo pmset -a hibernatemode 25'
alias sleep='sudo pmset -a hibernatemode 0'
alias safesleep='sudo pmset -a hibernatemode 3'
alias smartsleep='sudo pmset -a hibernatemode 2'


## FIX and destroy .DS_Store files in the folder I am currently in
alias killDS='find . -name *.DS_Store -type f -delete'


## git configuration
# specify a global exclusion list
git config --global core.excludesfile ~/.gitignore
# adding .DS_Store to that list
echo .DS_Store >> ~/.gitignore


## testing libs available status
alias testme='
        apachectl -v;
		git --version;
		node --version && npm --version;
		bower -v;
		karma --version;
        phantomjs --version;
		casperjs --version;
		grunt -version;
	    php -v;
		mongo --version; mongod --version;
		mongos --version;
		yo --version;
		grunt --version;
		bower --version;
        sass -v;
		protractor --version		
		'

## where is my stuff
alias where='which express; 
		which yo; 
		which grunt; 
		which mongo;
		which git;
		which php;
		which npm;
		which bower'

export PATH=/usr/local/bin:$PATH
export PATH=/usr/bin:$PATH
export PATH=/usr/local/bin:$PATH
