TOKEN=$(<../token.gh)
ID=$1 

(curl -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $TOKEN" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/Valouww/graphes/actions/artifacts) > gh-artifacts.json


curl -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $TOKEN" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/Valouww/graphes/actions/artifacts/$ID/zip --output artifact_$ID.zip
