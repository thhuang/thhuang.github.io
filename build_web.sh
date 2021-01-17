#!/bin/bash

git branch -D web &&
    git checkout -b web &&
    flutter build -v web &&
    rm -rf android assets build_web.sh ios lib pubspec.lock pubspec.yaml web &&
    mv build/web/* . &&
    rm -rf build &&
    git add . &&
    git commit -m "publish" &&
    git push origin web -f
