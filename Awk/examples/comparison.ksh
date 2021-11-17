Test1='A'
Test2='A'
[[ "$Test1" = "$Test2" ]]
Status=$?
echo "1: [['$Test1' = '$Test2']] = $Status"


Test1='A'
Test2='B'
[[ "$Test1" = "$Test2" ]]
Status=$?
echo "2: [['$Test1' = '$Test2']] = $Status"


Test1=''
[[ -z "$Test1" ]]
Status=$?
echo "3: [[-z '$Test1']] = $Status"


Test1='XX'
[[ -n "$Test1" ]]
Status=$?
echo "4: [[-n '$Test1']] = $Status"
