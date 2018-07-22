#!/usr/bin/env bash
curl --user ${CIRCLE_TOKEN}: \
    --request POST \
    --form revision=7a0273ce671cd933a835b9676630e90f1c43badf\
    --form config=@config.yml \
    --form notify=false \
        https://circleci.com/api/v1.1/project/github/sodatea/regression-test-prototype/tree/master
