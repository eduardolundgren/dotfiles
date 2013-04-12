export ANT_OPTS=-Xmx1024m
export JAVA_HOME=/Library/Java/Home
export M2_HOME=/usr/share/maven

alias aa='ant all'
alias abm='ant build-modules'
alias abs="ant build-service"
alias absk='ant build-skins'
alias abt='ant build-themes'
alias acd='ant clean deploy'
alias ad='ant deploy'
alias afs="ant format-source"
alias alloy='cd $ALLOY_UI'
alias apache-start='sudo /usr/sbin/apachectl start'
alias apache-stop='sudo /usr/sbin/apachectl stop'
alias ba='lpw; ant build-alloy;cd -;'
alias dfpw='lpw; ant deploy-fast;cd -;'
alias dpi='lpi; ant deploy;cd -;'
alias dps='lps; ant deploy;cd -;'
alias dpw='lpw; ant deploy;cd -;'
alias fs='lpi; ant format-source;cd -;'
alias import-alloy-zip-old='cd $ALLOY_UI; ant release; cp alloy-2.0.0pr4.zip $LIFERAY_PORTAL/portal-web/third-party; cd $LIFERAY_PORTAL; ba'
alias import-alloy-zip='cd $ALLOY_UI; cp alloy-2.0.0pr4.zip $LIFERAY_PORTAL/portal-web/third-party; cd $LIFERAY_PORTAL; ba'
alias liferay-bundle='cd $LIFERAY_BUNDLE'
alias liferay-bundles='cd $LIFERAY_BUNDLES'
alias liferay-git='cd $LIFERAY_GIT'
alias liferay-plugins-ee='cd $LIFERAY_PLUGINS_EE'
alias liferay-plugins='cd $LIFERAY_PLUGINS'
alias liferay-portal-ee='cd $LIFERAY_PORTAL_EE'
alias liferay-portal='cd $LIFERAY_PORTAL'
alias liferay='liferay-portal'
alias lpi='cd $LIFERAY_PORTAL/portal-impl'
alias lps='cd $LIFERAY_PORTAL/portal-service'
alias lpw='cd $LIFERAY_PORTAL/portal-web'
alias start-tomcat='./bin/catalina.sh run && tail -f ./logs/catalina.out'

alias ya='yogi alloy'

function bac {
	cd $ALLOY_UI/src/aui-$1
	ant all
	cd -
}

zle -N bac
bindkey . bac