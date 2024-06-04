#!/bin/sh

if [ -z "$1" ]; then
  echo "Usage: $0 <GitHub handle>"
  exit 1
fi

git clone https://github.com/aegilops/ms-reactor-workshop-aegilops.git
cd ms-reactor-workshop || exit 1
git remote add mirror https://github.com/ghas-bootcamp-2024-04-06-"$1"/ms-reactor-workshop
git push mirror '*:*' || ( echo "Push failed, did you set up the mirror repository, and do you have you CLI auth set up? Try using a PAT or SSH key" && exit 1 )
