#!/bin/bash

read -p "Input your project's name:" APPDOC_PROJECT_NAME
read -p "Input your company's name:" APPDOC_COMPANY_NAME
read -p "Input your source code's directory:" APPDOC_SOURCE_DIRECTORY

appledoc --output ./apiDoc -i *.m --project-name "$APPDOC_PROJECT_NAME" --project-company "$APPDOC_COMPANY_NAME" --no-create-docset --keep-undocumented-objects --keep-undocumented-members --no-warn-undocumented-object --no-warn-undocumented-member $APPDOC_SOURCE_DIRECTORY
#文档输出目录
#--output ./apiDoc
#忽略.m文件，因.m中均为私有api和属性，开源的接口文档中理应忽略掉
#-i *.m
#工程的名字
#--project-name "ScreenAdapterDemo"
#公司的名字
#--project-company "Leon Deng GitHub"
#不生成docset，直接输出html
#--no-create-docset
#没有注释的文件也输出html  -->目的是看到所有的文件
#--keep-undocumented-objects
#没有注释的属性和方法也输出到html  -->目的是看到所有的属性和方法
#--keep-undocumented-members
#没有注释的文件不提示警告
#--no-warn-undocumented-object
#没有注释的属性和方法不提示警告
#--no-warn-undocumented-member
#需要输出的文件路径  -->这里推荐最好直接为当前工程路径平级输出，便于维护和使用
#./
