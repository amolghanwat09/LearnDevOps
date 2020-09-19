#!/bin/bash
usage () {
        echo "$0 -v -e <DEV|QA|DR|PROD> -m <BUILD|BUILDDEPLOY|BUILDDEPLOYSTART>"
exit
}
while getopts 've:m:' opt
do
        case $opt in
                e) ENVIRONMENT=$OPTARG ;;
                m) MODE=$OPTARG ;;
                v) VERSION="latest" ;;
                \?)usage ;;
        esac
done


if [[ $ENVIRONMENT != '' ]]
then
        echo $ENVIRONMENT
fi

if [[ $MODE != '' ]]
then
        echo $MODE
fi

if [[ $VERSION != '' ]]
then
        echo $VERSION
fi