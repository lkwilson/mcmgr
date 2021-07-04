# mcmgr

A python minecraft manager

# Setup

First, install dependencies. See below.

Then, set values in the env.sh file.

Then, run ./run

To check the status, run ./attach

You will be dropped into the tmux session. Press 'Ctrl-b' then 'd' to detach
from the tmux session.

## `mc_server_id`

The unique id for the server. This makes it possible to have multiple servers
running at once.

## `mc_root_backup_dir`

A location for minecraft backups. The backup for this specific server will be
located in `$mc_root_backup_dir/$mc_server_id`

## `mc_server_jar`

The minecraft server.jar file. It's recommended to put these in a single folder,
and each server can use the same one.

# Scripts

All scripts can be started from anywhere. They will locate themselves and cd
into the script's directory. They assume their directory is where the minecraft
server is.

## `run`

Starts the server.

## `stop`

Stops the server.

## `start`

Starts the server in the current terminal. This is good for testing, but `run` should be preferred.

## `attach`

Attach to the server if it's running. This is used to gain access to the minecraft terminal.

## `backup`

Create a backup in the specified backup directory.

## `console`

Output the console of the currently running server.

## `send`

Send a single command to the server. This is useful for quick things and for avoiding interacting with the server.

# Backups

In the config file, you can specify 

# Dependencies

## bkup

bkup is a bash script wrapper for incremental backups. It is a submodule of this repo.

Install via submodule
```
git submodule update --init
```

Install via clone
```
git clone https://github.com/lkwilson/bkup.git bkup
```

You can also download and unzip manually. Just make sure that backup and restore
are located as such: ./bkup/backup and ./bkup/restore.

## tar

If you are on mac, then your `tar` is actually `bsdtar`. The backup script needs
gnu tar.

Install with:

```
brew install gnu-tar
```

Add an alias in your ~/.bashrc
```
alias tar=gtar
```

Or create a higher priority symlinked tar:
```
PATH="$HOME/bin:$PATH"
ln -s /usr/local/bin/gtar ~/bin/tar
```

## tmux

mcmgr uses tmux for the persistence of the servers.


```
apt-get update
apt-get install -y tmux
```

### tips

Close tmux: ctrl-b + d
Attach to any tmux session: `tmux a`

## Java

First, you need a new enough version of java.

### Quick Install

Download a Java 16 tar ball from here: https://jdk.java.net/16/

Add the `bin/` directory to your `PATH` env var.

### Detailed Install

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
