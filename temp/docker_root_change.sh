sudo vi /etc/default/docker
# Change docker option
# /etc/default/docker:
# ...
# Use DOCKER_OPTS to modify the daemon startup options.
# - DOCKER_OPTS="--dns 8.8.8.8 --dns 8.8.4.4"
# + DOCKER_OPTS="--dns 8.8.8.8 --dns 8.8.4.4 -g wherever/you/want"
# ...
sudo service docker stop
sudo service docker start
# original location: /var/lib/docker
# should check new directory if same sub-directories are created as original location
