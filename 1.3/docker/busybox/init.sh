while true
do
   curl -s nginx-svc:80;
   res=$?
   if test "$res" = "7"; then
     exit 0;
   if test "$res" = "0"; then
     exit 0;
   echo "waiting for nginx-svc"
   sleep 3
done
