#! /bin/bash

# 移动目录文件
mv ~/Library/Developer/Xcode/UserData/CodeSnippets ~/Library/Developer/Xcode/UserData/CodeSnippets.backup

#建立文件软连接

ln -s ./CodeSnippets ~/Library/Developer/Xcode/UserData/CodeSnippets

echo "done"

