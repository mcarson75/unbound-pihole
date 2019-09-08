# unbound-pihole
Single docker image with both unbound and Pihole together

The goal of this project was to combine the unbound resolver and Pihole DNS blacklist into a single Docker image. This was mainly so I could learn docker. I run separate DNS servers on each subnet so I plan on running multiple instances of this on a single computer, using networks defined as macvlans and external IP addresses. (This is reflected in docker-compose.yml)

Unbound runs on port 5053. This port is exposed to the outside if you wish to use it for testing. Pihole points to 127.0.0.1#5053.

The Pihole image uses the s6 process manager, so I had to modify Matthew Vance's unbound image to work with s6. I'm not sure it's done exactly right but it seems to work.

This is my first project so I know it's not perfect.
