#!/bin/bash

ZENQUOTE=$(/bin/curl https://zenquotes.io/api/random)

quote=$(/bin/jq '.[0].q' <<< $ZENQUOTE)
author=$(/bin/jq '.[0].a' <<< $ZENQUOTE)

cat <<EOF > ~/bin/zen/zen-quote.sh
#!/bin/bash

tput bold setaf 4
echo -e "\n"
echo \"$quote\";
tput setaf 3
echo -e "\n\t- $author\n\n"
tput sgr0

EOF

