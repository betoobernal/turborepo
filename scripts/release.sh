export PATH=$(npm bin):$PATH

VERSION=`auto version`

## Support for label 'skip-release'
if [ ! -z "$VERSION" ]; then
  ## Update Changelog
  auto changelog

  ## Create GitHub Release
  git push --follow-tags --set-upstream origin $branch
  auto release
fi