#!/data/data/com.termux/files/usr/bin/bash

echo "# sacr3d-rosepine" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:bugbr3ak3r/sacr3d-rosepine.git
git push -u origin main
