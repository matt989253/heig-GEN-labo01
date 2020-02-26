set -x

rm -rf .git

git init
git add .
git commit -m "Commit init (add script and report)" --allow-empty
git remote add origin https://github.com/matt989253/heig-gen-labo01.git
git push -u origin master

git commit -m "Commit master" --allow-empty
git push

git branch experimental
git checkout experimental
git commit -m "Commit experimental" --allow-empty
git push -u origin experimental

git checkout master
git commit -m "Commit master" --allow-empty
git commit -m "Commit master" --allow-empty
git push

git branch temp
git checkout temp
git commit -m "Commit temp" --allow-empty
git push -u origin temp

git checkout master
git commit -m "Commit master" --allow-empty
git push

git checkout temp
git merge experimental -m "Merge experimental into temp"
git push

git branch dev

git checkout master
git merge temp -m "Merge temp into master"
git push

git checkout dev
git commit -m "Commit dev" --allow-empty
git push -u origin dev

git merge master -m "Merge master into dev"
git commit -m "Commit dev" --allow-empty
git push

git checkout experimental
git commit -m "Commit crazy_idea" --allow-empty

git branch -m crazy_idea
git push -u origin crazy_idea

git checkout master
git merge crazy_idea -m "Merge crazy_idea into master"

git checkout dev
git merge master -m "Merge master into dev"
git commit -m "Commit dev and master" --allow-empty
git push

git push origin --delete temp

git checkout master
git branch bug_fix

git checkout bug_fix
git commit -m "Commit bug-fix" --allow-empty
git push -u origin bug_fix

git checkout master
git commit -m "Commit master" --allow-empty

git merge bug_fix -m "Merge bug_fix into master"

git push