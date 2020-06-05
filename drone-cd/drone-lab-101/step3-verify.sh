if grep -qi something_private /class/secrets.txt; then 
  if [ -f /class/SOMETHING_STICKY.txt ]; then
    echo done; 
  fi
fi
