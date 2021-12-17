#!/usr/bin/env zsh

input="home/"
output="../dist"
vars=$(cat .env | xargs)

pushd $input

echo "Bootstrapping..."
brew bundle --file ./Brewfile

echo "Preparing..."
for file in **/*(D); do

  # create subdirectory
  mkdir -p $output/$file:h

  # skip subdirectories
  if [[ -d $file ]]; then; continue; fi

  # check if file should use env vars
  if [[ $file == *.template ]]; then
    # substitute env vars
    env $vars envsubst < $file > $output/$file:r
  else
    # copy the source file
    cp $file $output/$file
  fi
done

echo "Installing..."
cp -ivR $output/. $HOME/
