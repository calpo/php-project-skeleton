#!/bin/sh
cd `dirname $0`

PROJECT_NAME=$1
NAMESPACE=$2

if [ "$PROJECT_NAME" = "" ] \
	|| [ "$NAMESPACE" = "" ]
then
	echo "Usage: $0 PROJECT_NAME NAMESPACE"
	echo "  ex) $0 hoge-fuga HogeFuga"
	exit 1
fi

sed -i -e "s/__GITHUB_REPO_PROJECT_NAME__/$PROJECT_NAME/g" ./composer.json
sed -i -e "s/__TOP_LEVEL_NAMESPACE__/$NAMESPACE/g" ./composer.json ./tests/bootstrap.php
