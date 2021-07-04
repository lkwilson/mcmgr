# This file is sourced by bash in the scripts. See README.md for information.

# Use directory name as server id. Warning: Make sure the directory name doesn't
# have spaces. mc_dir is set by scripts before sourcing this.
#mc_server_id=mc_svr_"$(basename "$mc_dir")"

mc_server_id=unique-mc-id
mc_root_backup_dir=/path/to/backup/dir
mc_server_jar=/path/to/minecraft_server.1.17.0.jar
