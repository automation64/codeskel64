test1 = True
test2 = ''
test3 = 0
test4 = 'x'
test5 = 1
test6 = 1.2
test7 = []
test8 = ()
test9 = {}
test10 = None
test100 = 'sample1'
test101 = "sample2"
test102 = """sample3"""
test103 = """
multi
line
sample
"""
test200 = f"using placeholders {test100} {test101}"

print('1.1. quotes:', test100)
print('1.2. quotes:', test101)
print('1.3. quotes:', test102)
print('1.4. quotes:', test103)

print('2.1. identify:', type(test100))

print('3.1. cast:', str(test2))
print('3.2. cast:', str(test3))
print('3.3. cast:', str(test4))
print('3.4. cast:', str(test5))
print('3.5. cast:', str(test6))
print('3.6. cast:', str(test7))
print('3.7. cast:', str(test8))
print('3.8. cast:', str(test9))
print('3.9. cast:', str(test10))
print('3.10. cast:', str(test1))

print('4.1. operator:', test100 + test101)

print('5.1. formatting', test200)

print('6.1. access:', test100[1])
print('6.2. access:', test100[-1])
print('6.3. access:', test100[0])
print('6.4. access:', test100[0:3])

print('7.1. delete:')
#del test100

print('8.1. modify:')
#test100[2] = '3'

test100 = '3233'
print('9.1. reassign:', test100)
