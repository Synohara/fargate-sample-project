#! /bin/bash

# エラーで処理中断
set -ex

ENV=$1

echo BITBUCKET_BRANCH     : ${BITBUCKET_BRANCH}
echo BITBUCKET_CLONE_DIR  : ${BITBUCKET_CLONE_DIR}
echo BITBUCKET_COMMIT     : ${BITBUCKET_COMMIT}
echo BITBUCKET_REPO_OWNER : ${BITBUCKET_REPO_OWNER}
echo BITBUCKET_REPO_SLUG  : ${BITBUCKET_REPO_SLUG}
echo BITBUCKET_TAG        : ${BITBUCKET_TAG}
echo CI                   : ${CI}

${BASH_SOURCE%/*}/build_docker.sh $BITBUCKET_COMMIT $ENV
${BASH_SOURCE%/*}/deploy.sh $BITBUCKET_COMMIT $ENV

