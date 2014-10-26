neo4j_docker
============

A docker image builder for a community edition neo4j server.

I'm hoping to make this work with the new OpenShift v3.  We'll see.

Neo4j is distributed with the GPL v3 license (attached in this Repo).  If it were easier to get a raw file from their distribution site, I'd make this Docker image download it directly, but their new website format doesn't lend to that currently.

Please consider giving Neo4j the props it deserves.  Buy licenses.  Donate.  Support them.  It's a neat project.

I'd like to give credit to Vinelab for providing some of the templates and basis for how I build this image.  Their github link to a neo4j docker image can be found at:

https://github.com/Vinelab/docker-neo4j

I wasn't trying to reinvent the wheel, but there were a few things that weren't working, so I build my own.  Sigh.
