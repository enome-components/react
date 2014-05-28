VERSION="0.10.0"

curl -L "http://fb.me/react-with-addons-$VERSION.js" > react.js

cat > component.json <<EOF
{
  "name": "react",
  "repositiory": "enome/react",
  "version": "$VERSION",
  "description": "https://github.com/facebook/react",
  "scripts": ["react.js"]
}
EOF

git add .
git commit -a -m "$VERSION"
git push
