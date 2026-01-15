# args_list='bob fred joe'
[[ -z $1 ]] && list=(*) || list=$1
for item in ${list[@]}; do echo $item; done

echo add gemma
list=(${list[@]} 'gemma')
for item in ${list[@]}; do echo $item; done

echo add stuff
list[${#list[@]}]='stuff'
for item in ${list[@]}; do echo $item; done

echo join 2 arrays
list2=(${list[@]} ${list[@]})
for item in ${list2[@]}; do echo $item; done

[[ "boo hiss" =~ "boo" ]] && echo boo || echo nope

echo ${list[@]}
# tight matching
check=$2
echo ${list[@]} | grep -w $check
echo $?
