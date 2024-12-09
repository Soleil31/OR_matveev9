server=$1
threshold=$2
email=$3
usage=$(ssh $server "df --output=pcent / | tail -n 1 | tr -d '[:space:]%'")
if [ "$usage" -gt "$threshold" ]; then
    echo "Мало места на жд сервера $server." | mail -s "Мало места" $email
fi
