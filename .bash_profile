# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

export DE=/home/itang/dev-env

JAVA_HOME=$DE/java
export JAVA_HOME

SCALA_HOME=$DE/scala
export SCALA_HOME

MAVEN_HOME=$DE/maven
SBT_HOME=$DE/sbt

export NODE_HOME=$DE/node

ANDROID_SDK_HOME=$DE/android-sdk

PATH=$JAVA_HOME/bin:$SCALA_HOME/bin:$SBT_HOME:$MAVEN_HOME/bin:$NODE_HOME/bin:$ANDROID_SDK_HOME/tools:$ANDROID_SDK_HOME/platform-tools:$PATH:$HOME/bin
export PATH

