 # your own env, in your .zshrc, source this file


# 输入自己常用的命令
# finder 相关指令
alias co='code ./'
alias fo='open ./'

# pod 和 xcode 工程相关指令
alias o='open *.xcodeproj'
alias po='open *.xcworkspace'
alias pru='pod repo update'
alias pi='pod install'
alias pu='pod update'
alias piu='pod install --repo-update'
alias repoanalysis='specbackwarddependency /Users/lbp/.cocoapods/repos/51xianqu-xq_specs'
alias plint='pod lib lint --sources=git@gitlab.qima-inc.com:AppLib/CocoaPodsSpecs.git,git@gitlab.qima-inc.com:AppLib/RenRenPodspecs.git --allow-warnings --verbose --use-libraries'
alias pflutterlint='pod lib lint --sources=git@gitlab.qima-inc.com:AppLib/CocoaPodsSpecs.git,git@gitlab.qima-inc.com:AppLib/RenRenPodspecs.git --allow-warnings --verbose --use-libraries'
alias prepopush='pod repo push  qima-inc-applib-renrenpodspecs OmegaUtils.podspec --verbose --allow-warnings --use-libraries'
alias errorShow=' >1.log 2>&1'
alias podspecDir='cd /Users/lbp/.cocoapods/repos/qima-inc-applib-renrenpodspecs/'

# git 相关指令
alias gck='git checkout'
alias gm='git merge'
alias gb='git branch'
alias gbr='git branch -a'
alias gs='git status -s'
alias gc='git clone'
alias gl='git log'
alias ga='git add .'
alias gpull='git pull'
alias gpush='git push'
alias gpo='git push origin '
alias gpom='git push origin master'
alias gcm='git commit -m'
alias glocalbranchPush='git push --set-upstream origin '
alias glg="git log --graph --pretty=format:'%Cred%h%Crest -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias grm='git rebase master'
alias gdc='git diff --cached'
alias gdm='git diff master'
alias gh="open \`git remote -v | grep fetch | head -1 | cut -f2 | cut -d' ' -f1 | sed -e's/git@/http:\/\//' -e's/\.git$//' | sed -E 's/(\/\/[^:]*):/\1\//'\`" # open github
alias grebase2='git rebase -i HEAD~~'
alias gnew='function _new() { git checkout -b $1; git pull origin $1 }; _new'

# npm 相关指令
alias ns='npm start'
alias ni='npm install'
alias nb='npm run build'
alias nig='npm install -g '
alias ynpm="npm --registry=http://registry.npm.qima-inc.com --disturl=http://npm.taobao.org/mirrors/node"


# 效率
# 统计当前文件夹下文件的数量
alias showFilesCount='ls -l |grep "^-"|wc -l'



# http proxy
function un_proxy() {
  echo "---------------------------------------------"
  unset ALL_PROXY
  unset http_proxy
  unset https_proxy
  echo "关闭学习服务"
  curl -L cip.cc
  echo "---------------------------------------------"
}

function open_proxy() {
  echo "---------------------------------------------"
  export https_proxy=http://127.0.0.1:7890 
  export http_proxy=http://127.0.0.1:7890 
  export all_proxy=socks5://127.0.0.1:7890
  echo "开启学习服务"
  curl -L cip.cc
  echo "---------------------------------------------"
}
