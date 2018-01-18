#!/bin/bash
keyerrorlogo='
==================================================================

           --------- Google Voice申请脚本 ----------
		   		   
                            部分拼凑于 -----  jialezi 
==================================================================';

clear
echo "$keyerrorlogo";
echo "请确保填写的信息准确，填错了脚本不会有任何提示。";
echo "按Enter继续";
read

echo "请输入你的cURL(bash)"
read curl

echo "请输入你要申请的GV号（纯数字10位，如：3859998880）"
read gv

echo $curl > gv.txt

sed -i 's/mid=2/mid=6/' gv.txt
sed -i 's/true%5D/%22%2B1'$gv'%22%2Ctrue%2C%22%22%5D/' gv.txt

echo "按Enter开始刷号";
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
