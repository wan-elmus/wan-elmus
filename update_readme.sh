#!/bin/bash

# Fetch data from the GitHub API
repos=$(curl -s https://api.github.com/users/wan-elmus | jq '.public_repos')
followers=$(curl -s https://api.github.com/users/wan-elmus | jq '.followers')

# Update the README file
echo "# My GitHub Profile" > README.md
echo "" >> README.md
echo "Repositories: $repos" >> README.md
echo "Followers: $followers" >> README.md

if [ -z "$API_KEY" ]; then
  echo "API_KEY environment variable is not set or is empty"
  exit 1
else
  echo "API_KEY is set to $BOT_TOKEN"
  # Add the code that uses the $BOT_TOKEN variable here
fi




