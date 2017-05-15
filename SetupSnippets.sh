#! /bin/bash


# 移动目录文件
if [ -d ~/Library/Developer/Xcode/UserData/CodeSnippets ];then
mv ~/Library/Developer/Xcode/UserData/CodeSnippets ~/Library/Developer/Xcode/UserData/CodeSnippets.backup
fi

# 建立文件软连接

SRC_HOME=`pwd`
ln -s ${SRC_HOME}/CodeSnippets ~/Library/Developer/Xcode/UserData/CodeSnippets

echo "done"

