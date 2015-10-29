# .zprofile

# get aliases and functions
if [ -f ~/.zshrc ]; then
  . ~/.zshrc
fi

# user specific environment and startup programs

COIN_SVN=svn+ssh://coin@tti-coin.jp/coin/svn/word2vec/branches/pvdm
LOCAL=$HOME/local

export LC_ALL=en_US.UTF-8
export PATH=$HOME/bin:$LOCAL/bin:$LOCAL/usr/bin:$LOCAL/usr/local/bin:$PATH
export MANPATH=/usr/share/man:/usr/local/man:$MANPATH
export MANPATH=$LOCAL/usr/man:$LOCAL/usr/local/man:$MANPATH
export MANPATH=$LOCAL/usr/local/share/man:$MANPATH
export CC=clang
export CXX=clang++
export C_INCLUDE_PATH=$LOCAL/include:$LOCAL/usr/include
export C_INCLUDE_PATH=$LOCAL/usr/local/include:$C_INCLUDE_PATH
export C_INCLUDE_PATH=/coin/home/makoto.miwa/.lib_srv7/include:$C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=$C_INCLUDE_PATH
export LIBRARY_PATH=$LOCAL/lib64:$LOCAL/lib:$LOCAL/usr/lib64:$LOCAL/usr/lib
export LIBRARY_PATH=$LOCAL/usr/local/lib64:$LOCAL/usr/local/lib:$LIBRARY_PATH
export LIBRARY_PATH=/coin/home/makoto.miwa/.lib_srv7/lib:$LIBRARY_PATH

## cuda
export PATH=$PATH:/usr/local/cuda/bin
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/cuda/lib64

export LD_LIBRARY_PATH=$LIBRARY_PATH
export TERM=xterm
#export DESTDIR=$LOCAL

## cmake configuration

export CMAKE_INCLUDE_PATH=$C_INCLUDE_PATH
export CMAKE_LIBRARY_PATH=$LIBRARY_PATH
export CMAKE_PREFIX_PATH=$LOCAL
