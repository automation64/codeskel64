test_string = 'sample string'
test_list = [2, 10, 25, 34]
test_list2 = [(2, 3), (20, 30), (200, 300)]
test_list3 = [[2, 3], [20, 30], [200, 300]]
test_dict = {'key1': 2, 'key2': 54}
test_tuple = (2, 3, 10, 20)

a = ''
for c in test_string:
    a += c + ':'
print('1.1. Loop string:', a)

a = ''
for c in test_list:
    a += str(c) + ':'
print('2.1. Loop list:', a)

a = ''
b = ''
for c, d in test_list3:
    a += str(c) + ':'
    b += str(d) + ':'
print('2.2. Loop tuple:', a, b)

a = ''
for c in test_dict:
    a += str(c) + ':'
print('3.1. Loop dict:', a)

a = ''
for c in test_dict.values():
    a += str(c) + ':'
print('3.2. Loop dict:', a)

a = ''
for c in test_dict.items():
    a += str(c) + ':'
print('3.3. Loop dict:', a)

a = ''
b = ''
for c, d in test_dict.items():
    a += str(c) + ':'
    b += str(d) + ':'
print('3.4. Loop dict:', a, b)

a = ''
for c in test_tuple:
    a += str(c) + ':'
print('4.1. Loop tuple:', a)

a = ''
for c in test_list2:
    a += str(c) + ':'
print('4.2. Loop tuple:', a)

a = ''
b = ''
for c, d in test_list2:
    a += str(c) + ':'
    b += str(d) + ':'
print('4.3. Loop tuple:', a, b)
