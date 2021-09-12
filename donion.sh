#developed by con32 - Infernus Group
#!/bin/bash
if [ -z $1 ]
then
echo "USE: ./donion http://url.onion/ wordlist.txt"
exit
fi
if [ -z $2 ]
then
echo "USE: ./donion http://url.onion/ wordlist.txt"
exit
fi
echo "  _                    "
echo " | \  _  ._  o  _  ._  "
echo " |_/ (_) | | | (_) | | "
echo ""
echo "* Twitter : @Con3210"
echo ""
ping=$(curl -s --socks5-hostname 127.0.0.1:9150 -w %{http_code} -o /dev/null $1 2>/dev/null)
echo "+ status code : $ping"
echo ""
echo "----------------------"
for palavra in $(cat $2)
do
resp=$(curl -s --socks5-hostname 127.0.0.1:9150 -w %{http_code} -o /dev/null $1/$palavra/ 2>/dev/null)
if [ $resp == "200" ]
then
echo ""
echo "+ DIR FOUND -- /$palavra/"
fi
done
