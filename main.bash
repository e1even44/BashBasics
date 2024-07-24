declare -a array
names=(Hilal Soraia Esra Bobi)

# arrays
echo "Hello, my name is" ${names[0]}
echo "My best friend's name is" ${names[1]}
echo "My sister's name is" ${names[2]}
echo "My cat's name is" ${names[3]}

echo -e "\n"

nums=(22 21 18 3)
for i in "${nums[@]}"
do
    echo "$i"
done

echo -e "\n"

for i in "${names[@]}"
do
    echo "$i"
done

echo -e "\n"

for i in "${!names[@]}"
do
    echo "$i""." "${names[$i]}"
done

echo -e "\n"

animals=(Cat Dog Cow Sheep Ladybug Fish)
echo "Printing all array elements with @:" ${animals[@]}
echo "Printing all array elements with *:" ${animals[*]}

echo -e "\n"

unset animals[-2]
echo "Printing all array elements with @ after deleting one item:" ${animals[@]}

echo -e "\n"

animals[6]=Orca
echo "Printing all array elements with @ after adding one item:" ${animals[@]}

echo -e "\n"

echo "Size of array 'names':" ${#names[@]}
echo "Size of array 'nums':" ${#nums[@]}
echo "Size of array 'animals':" ${#animals[@]}

echo -e "\n"

# cases
name="Hilal"
case $name in 
    "Hillal")
    echo "Hi, Hillal!"
    ;;
    "Hiilal")
    echo "Hi, Hiilal!"
    ;;
    "Hilal")
    echo "Hi, Hilal!"
    ;;
    *)
    echo "Hi, whatever your name is!"
    ;;
esac

echo -e "\n"

echo 'test string with nested single quote: '\''Hello'\'''

echo -e "\n"

echo escape $$ example
echo escape \$$ example

echo -e "\n"

# if..elif..else - Statement
if [ "$name" = "Hiilal" ] ; then
    echo "Your name is Hiilal!"
elif [ "$name" = "Hilal" ]; then
    echo "Your name is Hilal!"
else
    echo "I don't know your name."
fi

echo -e "\n"

# if - Statement
age=2
comparedAge=5
if [ $age -lt $comparedAge ]; then
    agediff="$(($comparedAge-$age))"
   echo "$age is less than $comparedAge. That means a $age year old person is $agediff year(s) younger than a $comparedAge year old person."
fi

echo -e "\n"

# for loop count from 22 to 0
echo "For Loop"
for ((i=22; i>0; i--)); do
    echo "$i"
done

echo -e "\n"

# while loop count from 0 to 22
echo "While Loop"
numb=0
while [[ numb -lt 23 ]]; do
    echo "$numb"
    numb=$((numb+1))
done

echo -e "\n"

# until loop
echo "Until Loop"
numb=0
until [[ numb -eq 22 ]];
do
    echo "$numb"
    numb=$((numb+1))
done

echo -e "\n"

# arthematic expressions (mathematical expressions)
result=$((143 + 234))
echo "$result"

echo -e "\n"

a=23
b=59
echo "The average of $a amd $b is $(((a+b)/2))." 

echo -e "\n"

# functions
Introduction() {
echo "Hello, my name is $1. I am $2 years old and I live in $3."
}

Introduction "Hilal" 22 "Austria"

echo -e "\n"

# string append
str1="Hello,"
str2="welcome to Coding!"
echo $str1 $str2

echo -e "\n"

str2="${str1} welcome to Coding!"
echo "${str2}"

echo -e "\n"

str1="Hello,"
str2="welcome to Coding!"
str1+=" $str2" 
echo $str1

echo -e "\n"

Equal () {
    if [ "$1" -eq "$2" ]; then
        echo "The numbers $1 and $2 are equal."
    elif [ $1 -ne "$2" ]; then
        echo "The numbers $1 and $2 are not equal."
    fi
}
Equal 11 11

echo -e "\n"

# file name
filepath="/home/lwnkah7/testing/hilalcodes.sh"
filename=$(basename "$filepath")
echo  "File:" $filename
echo "File Name: ${filename%.*}"
echo "File Extension: ${filename##*.}"

echo -e "\n"

# splitting variables
str="Hi:my:name:is:Hilal:and:I:like:coding:."
echo "$str" | awk -F':' '{print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11}'

echo -e "\n"

IFS=':' array=($str)
for element in "${array[@]}";
do
    echo $element
done

echo -e "\n"

msg="Welcome to my profile!"
array=($msg)

for item in "${array[@]}";
do
    echo "$item"
done

echo -e "\n"

# string length
echo "The string '$msg' is ${#msg} characters long."
echo "The string '$msg' is $(expr length "$msg") characters long."
echo "The string '$msg' is $(echo -n "$msg" | awk '{print length'}) characters long."

echo -e "\n"

# ternary operator
age=22
if [ "$age" -eq 22 ]; then result="true"; else result="false"; fi
echo $result

echo -e "\n"

[ $age == 22 ] && result="true" || result="false"
echo "$result"

echo -e "\n"

# string upper case - lower case
echo "HELLO WORLD. WELCOME!" | tr '[:upper:]' '[:lower:]'
echo "hello world, welcome!" | tr '[:lower:]' '[:upper:]'

echo -e "\n"
echo "HELLO WORLD, WELCOME!" | tr 'A-Z' 'a-z'
echo "hello world. welcome!" | tr 'a-z' 'A-Z'

echo -e "\n"
echo "HELLO WORLD, WELCOME!" | awk '{print tolower($0)}'
echo "hello world, welcome!" | awk '{print toupper($0)}'

echo -e "\n"
echo "HELLO WORLD, WELCOME!" | perl -ne 'print lc'
echo "hello world, welcome!" | perl -ne 'print uc'

echo -e "\n"
echo "${msg,,}"
echo "${msg^^}"

echo -e "\n"

# substring
mainstr="I am going on vacation soon!"
mainstr2="I like concerts, because I love music."
if [[ "$mainstr" == *"vacation"* ]]; then
    echo "The substring 'vacation' exists in given string '$mainstr'."
fi

if [[ "I like concerts, because I love music."  == *"music"* ]]; then
    echo "The substring 'music' exists in given string '$mainstr2'."
fi

if [[ "$mainstr" =~ "vacation" ]]; then
    echo "The substring 'vacation' exists in given string '$mainstr'."
fi

if [[ "I like concerts, because I love music." =~ "music" ]]; then
    echo "The given substring 'music' exists in given string '$mainstr2'."
fi

if echo "Australien" | grep -q "alien"; then
    echo "The given substring 'alien' exists in given string 'Australien'."
fi

if [[ "Ausfahrt" =~ "fahrt" ]]; then
    echo "The given substring 'fahrt' exists in given string 'Ausfahrt'."
fi

echo -e "\n"

# variable declaration
variable1=""

if [[ ${variable1+x} ]]
then
    echo "variable1 is set"
else
    echo "variable 1 is not set"
fi

if [[ ${variable2+x} ]]
then
    echo "variable2 is set"
else
    echo "variable2 is not set"
fi

echo -e "\n"

if [[ ! ${variable1+x}  ]]
then
  echo 'variable1 is not set'
else
  echo 'variable1 is set'
fi

if [[ ! ${variable2+x}  ]]
then
  echo 'variable2 is not set or unset'
else
  echo 'variable2 is  set'
fi

echo -e "\n"

if [[ $variable1 = "" ]]
then
    echo 'variable1 is empty'
else
    echo 'variable1 is not empty'
fi

echo -e "\n"

variable2=""
variable3="test"

if [ -z $variable2 ]
then
    echo "variable2 is set and empty"
else
    echo "variable2 is set and nonempty"
fi

if [ -z $variable3 ]
then
    echo "variable3 is set and empty"
else
    echo "variable3 is set and nonempty"
fi

echo -e "\n"

# iterate nos
number=7
for k in $(seq 1 $number); do echo $k; done

echo -e "\n"

for ((k=1; k<=number;k++));
do
    echo $k
done

k=1;
while [[ $k -le $number ]];
do
    echo $k
done