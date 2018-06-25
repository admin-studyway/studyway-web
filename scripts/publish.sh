#!/usr/bin/env bash

npm run build:prod

if [ $? -eq 0 ]; then
    exit;
fi

pscp -r dist/studway/* root@studyway.in:/var/www/studyway.in
