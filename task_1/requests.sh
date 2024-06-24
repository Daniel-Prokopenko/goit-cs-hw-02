#!/bin/bash
websites=("https://www.wikipedia.org" "https://www.youtube.com" "https://www.google.com" "https://www.fhjgvkb.com")
for website in "${websites[@]}"; do
  x=$(curl -L -o /dev/null -s -w "%{http_code}\\n" $website)
  echo $x
  if [ $x -eq 200 ]; then
    echo $website is UP >> results.log
  else
    echo $website is DOWN >> results.log
  fi
done
echo results saved in results.log