export EDITOR="emacsclient -t"
export ALTERNATE_EDITOR=""
#needed to properly display complex color-themes in Emacs and vim
export TERM=xterm-256color

export DE=/home/itang/dev-env

JAVA_HOME=$DE/java
export JAVA_HOME

SCALA_HOME=$DE/scala
export SCALA_HOME

ROY_HOME=$DE/roy

MAVEN_HOME=$DE/maven
SBT_HOME=$DE/sbt

export NODE_HOME=$DE/node

ANDROID_SDK_HOME=$DE/android-sdk

ANT_HOME=$DE/apache-ant-1.8.2

export GAE_HOME=$DE/gae
export PLAY_HOME=$DE/Play20
export MONGODB_HOME=$DE/mongodb
export GOROOT=$DE/go
export GOBIN=$GOROOT/bin
export ELIXIR_HOME=$DE/elixir
export ERLANG_HOME=$DE/erlang
export RIAK_HOME=$DE/riak
export EMACS_HOME=$DE/emacs24

typeset -U path
path=($JAVA_HOME/bin $GOBIN $SCALA_HOME/bin $ROY_HOME $ERLANG_HOME/bin $RIAK_HOME/bin $ELIXIR_HOME/bin $PLAY_HOME $SBT_HOME $ANT_HOME/bin $MONGODB_HOME/bin $MAVEN_HOME/bin $NODE_HOME/bin $GAE_HOME/bin $ANDROID_SDK_HOME/tools $ANDROID_SDK_HOME/platform-tools $DE/sublime/ $EMACS_HOME/bin $HOME/bin $path) 

