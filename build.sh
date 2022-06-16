
hugo --cleanDestinationDir && git add --all && git commit -a -m "publish"
# Intentionally grepping '*', printed by git command.
# shellcheck disable=SC2063
git push origin "$(git branch | grep '*' | cut -f 2 -d ' ')"