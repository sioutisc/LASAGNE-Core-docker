#!/bin/bash
echo 'NOTE: You should be running this command from within the directory of your LASAGNE project'
docker run -v $(pwd):/opt/DEV --rm -it lasagne-core-dev
