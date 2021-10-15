inp "1、推送至腾讯云1-2；2、推送至腾讯云2-4；3、推送至华为云"
opt
read watchtower
tar czvf ql.tar ql
if [ "$watchtower" = "1" ]; then
    scp -r /root/ql.tar root@1.15.15.178:/root/ql.tar
fi
if [ "$watchtower" = "2" ]; then
    scp -r /root/ql.tar root@49.233.39.214:/root/ql.tar
fi
if [ "$watchtower" = "3" ]; then
    scp -r /root/ql.tar root@123.60.33.62:/root/ql.tar  
fi