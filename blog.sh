mv blog.md blog.bak
cat *.md > blog.md
pandoc -c pandoc.css -o index.html blog.md
git add --all
git commit -m "generic blog update commit message"
git push --set-upstream myblog master


