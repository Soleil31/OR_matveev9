server=$1
directory=$2
archive="$(date).tar.gz"
ssh $server "tar -czf ~/$archive -C $(dirname $directory) $(basename $directory)"
scp $server:~/$archive .
ssh $server "rm ~/$archive"
mkdir result
tar -xzf $archive -C result
echo "Завершено"
