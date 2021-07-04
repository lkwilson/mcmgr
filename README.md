# mcmgr

A python minecraft manager

# Setup

Use run to start the server
Use start to start the server in the current terminal
Use backup to create a backup of the world (it doesn't have to be running)

To make copy, set env.sh. Use server.properties as example of using new version
of minecraft. Create and setup new backup location. Change .syn. You only have
to copy world if you want to make a copy of another world or use an old world.

# Java Dependency

First, you need a new enough version of java.

## Quick Install

Download a Java 16 tar ball from here: https://jdk.java.net/16/

Add the `bin/` directory to your `PATH` env var.

## Detailed Install

Download a Java 16 tar ball from here: https://jdk.java.net/16/

Untar the tar ball somewhere in your home directory:

```
cd ~
mkdir -p libraries/java
cd libraries/java
tar xf /path/to/openjdk-16.0.1_osx-x64_bin.tar.gz
```

It should create `jdk-16.0.1.jdk/`

Find the `bin/` dir that contains `java`.

Add it to your PATH variable. For example:

PATH="$HOME/libraries/java/jdk-16.0.1.jdk/Contents/Home/bin:$PATH"
