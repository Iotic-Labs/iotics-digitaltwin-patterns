
sed "s/:revnumber: .*/:revnumber: $1/g" ../index.adoc
git add ../index.adoc
git commit -m"changed revision to $1"
git push
git tag $1 -m"tagging with $1"
git push origin $1
