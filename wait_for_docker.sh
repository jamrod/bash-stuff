
#!/bin/bash

dockerd &> /var/log/dockerd-logfile & && while [ $(docker version > /dev/null 2>&1) != 0 ]; do sleep 2 done
