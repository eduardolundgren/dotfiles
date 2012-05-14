export ANT_OPTS=-Xmx1024m
export JAVA_HOME=/Library/Java/Home

alias aa='ant all'
alias abm='ant build-modules'
alias abs="ant build-service"
alias abs='ant build-skins'
alias abt='ant build-themes'
alias acd='ant clean deploy'
alias ad='ant deploy'
alias afs="ant format-source"
alias alloy='cd $ALLOY_UI'
alias ba='lpw; ant build-alloy;cd -;'
alias dfpw='lpw; ant deploy-fast;cd -;'
alias dpi='lpi; ant deploy;cd -;'
alias dps='lps; ant deploy;cd -;'
alias dpw='lpw; ant deploy;cd -;'
alias fs='lpi; ant format-source;cd -;'
alias import-alloy-zip='cd $ALLOY_UI; ant release; cp alloy-1.5.0.zip $LIFERAY_PORTAL/portal-web/third-party; cd $LIFERAY_PORTAL; ba'
alias liferay-bundle='cd $LIFERAY_BUNDLE'
alias liferay-tomcat='cd $LIFERAY_TOMCAT'
alias liferay='cd $LIFERAY_PORTAL'
alias lpi='cd $LIFERAY_PORTAL/portal-impl'
alias lps='cd $LIFERAY_PORTAL/portal-service'
alias lpw='cd $LIFERAY_PORTAL/portal-web'
alias start-tomcat='$LIFERAY_TOMCAT/bin/catalina.sh run && tail -f $LIFERAY_TOMCAT/logs/catalina.out'

function bac {
	cd $ALLOY_UI/src/aui-$1
	ant all
	cd -
}

zle -N bac
bindkey . bac