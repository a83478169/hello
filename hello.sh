filepath1=/root/ql/config/env.sh

echo "`date +%Y%m%d` start upload......"
echo "`date +%Y%m%d` start upload......" > /home/import.log

sleep 1

password='Xiao1992'

echo "start copy datafile from remote path..."
echo "start copy datafile from remote path..." >> /home/import.log

/usr/bin/expect <<EOF
set timeout 10
spawn scp -r -p $filepath1 root@1.15.15.178:/root/env1`date "+%Y%m%d%H%M%S"`.sh

expect {
 "(yes/no)?"
 {
   send "yes\n"
   expect "*assword:" {send "$password\n"}
 }
 "*assword:"
 {
   send "$password\n"
 }
}
send "exit\n"
expect eof
EOF

if [ $? = 0 ]; then

        echo "datafile copy successful!"
        echo "datafile copy successful!" >> /home/import.log
else
        echo "datafile copy failed!"
        echo "datafile copy failed!" >> /home/import.log
fi
