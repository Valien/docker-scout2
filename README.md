# docker-scout2
Dockerized AWS Scout2

This Docker repo is for building a running container that will automatically run the default Scout2 ruleset through AWS and push out the report file for local viewing.

A few pre-requisites to get this to work properly:

* You need your AWS credentials. See this http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html to set it up. You do not have to have AWS CLI installed on your system but for this container to work you will need to have the config and credentials file ready to be read.
* Once your AWS creds are ready then run this command:
    `docker run --rm -v <path to your credentials>/.aws/:/scout2/.aws:ro -v <path to where you want to have reports dumped>:/reports:rw valien/docker-scout2`

    What this does is run the docker image (or pulls it if you don't have it cached), then mounts your aws credentials to the container. Runs the `Scout2.py` application, outputs the report.html and then tears down the container upon finishing.

    You can view the full Dockerfile and the `entrypoint.sh` file in the source code if you have any questions about what is running and how it is working.

* Optional: You can use the environment variable `-e AWS_PROFILE=<your AWS profile>` to pass along a different set of AWS credentials. If one is not provided then Scout2 will use the `default` profile.

The following repos were used in the build of this image:

* https://github.com/nccgroup/Scout2 - Scout2 application
* https://github.com/anigeo/docker-awscli - for docker run parameters


