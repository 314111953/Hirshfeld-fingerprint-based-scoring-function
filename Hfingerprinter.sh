a=$(grep -n d\_e *.cxs|head -1|cut -d : -f 1)
b=$(grep -n d\_e *.cxs|head -2|tail -1|cut -d : -f 1)
b=$(($b-1))
c=$(($b-$a))
de=$(head -$b *.cxs|tail -$c)
d=$(grep -n d\_i *.cxs|head -1|cut -d : -f 1)
e=$(grep -n d\_i *.cxs|head -2|tail -1|cut -d : -f 1)
e=$(($e-1))
f=$(($e-$d))
di=$(head -$e *.cxs|tail -$f)
echo $de|tr " " "\n" > de
echo $di|tr " " "\n" > di
pr -m -t -s\  de di > dedi
rm de
rm di
mv dedi fort.21
wc -l fort.21|awk '{print $1}' > fort.19
touch Hfingerprint.txt
for i in {1..12}
do
./hirsh$i|tr " " "\n"|sed '/^$/d' >> Hfingerprint.txt
done
