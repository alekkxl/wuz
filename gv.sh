#!/bin/bash
keyerrorlogo='
==================================================================
           --------- Google Voice����ű� ----------
		   		   
                                      �ű�һ��������-----  jialezi 
==================================================================';

clear
echo "$keyerrorlogo";
echo "��ȷ����д����Ϣ׼ȷ������˽ű��������κ���ʾ��";
echo "��Enter����";
read

echo "���������cURL(bash)"
read curl

echo "��������Ҫ�����GV�ţ�������10λ���磺3859998880��"
read gv

echo $curl > gv.txt

sed -i 's/mid=2/mid=6/' gv.txt
sed -i 's/true%5D/%22%2B1'$gv'%22%2Ctrue%2C%22%22%5D/' gv.txt

echo "��Enter��ʼˢ��";
read


for (( i=1; i>0; i++ ))
    do
	a=`bash gv.txt`;
        b='[[null,null,"There was an error with your request. Please try again."]]';

contains() {
    string="$a"
    substring="$b"
    if test "${string#*$substring}" != "$string"
    then
        return 0    # $substring is in $string
    else
        return 1    # $substring is not in $string
    fi
}

while true; do
    result=$(...)
    contains "$result" "error" || exit 0
    sleep 0.5s;
done