#!/bin/sh
( mkdir -p ~/.ghcup/bin && curl https://gitlab.haskell.org/haskell/ghcup/raw/master/ghcup > ~/.ghcup/bin/ghcup && chmod +x ~/.ghcup/bin/ghcup) && echo "success"
ghcup install $GHC_VER
ghcup install-cabal $CABAL_VER
ghcup set $GHC_VER
cabal update
echo "Cabal version before upgrade:"
cabal --version
cabal install Cabal cabal-install
echo "Cabal version after upgrade:"
cabal --version
