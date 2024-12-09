local_directory=$1
remote_directory="$2:$3"
pattern="*log*"
rsync -avz --exclude="$pattern" $local_directory $remote_directory
