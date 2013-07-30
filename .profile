# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

DE=/home/itang/dev-env

ERLANG_HOME=/opt/erlang
ELIXIR_HOME=$DE/elixir

export JAVA_HOME=$DE/java
export MAVEN_HOME=$DE/maven

export GOROOT=$DE/go
export GOPATH=/home/itang/workspace/gopath

ANT_HOME=$DE/ant

ST_HOME=$DE/st

export RUST_HOME=$DE/rust
export SCALA_HOME=$DE/scala
export DART_HOME=$DE/dart/dart-sdk

export NODE_HOME=$DE/node
export VERTX_HOME=$DE/vertx

PLAY_HOME=$DE/play

export PATH=$JAVA_HOME/bin:$GOROOT/bin:$GOPATH/bin:$DART_HOME/bin:$ERLANG_HOME/bin:$ELIXIR_HOME/bin:$RUST_HOME/bin:$SCALA_HOME/bin:$PLAY_HOME/:$VERTX_HOME/bin:$NODE_HOME/bin:$ANT_HOME/bin:$MAVEN_HOME/bin:$ST_HOME:$PATH
