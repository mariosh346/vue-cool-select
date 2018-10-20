# abort on errors
set -e

# build
# yarn docs:build
yarn build

# navigate into the build output directory
cd gh-pages

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:iliyaZelenko/vue-cool-select.git master:gh-pages

cd -
