function brewup --description 'upgrade homebrew'
  brew update; brew upgrade; brew cleanup; brew prune;
end
