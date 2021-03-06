#!/usr/bin/env bash
# included in all the coflow scripts with source command
# should not be executable directly
# also should not be passed any arguments, since we need original $*

# resolve links - $0 may be a softlink
this="${BASH_SOURCE-$0}"
common_bin=$(cd -P -- "$(dirname -- "$this")" && pwd -P)
script="$(basename -- "$this")"
this="$common_bin/$script"

# convert relative path to absolute path
config_bin=`dirname "$this"`
script=`basename "$this"`
config_bin=`cd "$config_bin"; pwd`
this="$config_bin/$script"

export COFLOW_PREFIX=`dirname "$this"`/..
export COFLOW_HOME=${COFLOW_PREFIX}
export COFLOW_CONF_DIR="$COFLOW_HOME/conf"
