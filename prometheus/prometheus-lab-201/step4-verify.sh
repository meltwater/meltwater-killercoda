if grep -qi punchline /class/blackbox.yml; then 
  exit done
else
  exit 1
fi