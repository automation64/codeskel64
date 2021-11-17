test100 = 'sample1'
test101 = "sample2"
test102 = """sample3"""
test103 = """
multi
line
sample
"""
test104 = 'MuLtiCaSe1'
test105 = 'ALLCAPS'
test106 = '  string with   spaces  '
test107 = 'another string with   spaces'
test108 = 'another:string:with:colons'

print('1.1. format(): ', "using format placeholders {} {}".format(test100, test101))

print('2.1. lower(): ', test104.lower())

print('3.1. upper(): ', test104.upper())

print('4.1. swapcase(): ', test104.swapcase())

print('5.1. title(): ', test104.title())

print('6.1. capitalize(): ', test104.capitalize())

print('7.1. startswith(): ', test104.startswith('Mu'))

print('8.1. endswith(): ', test104.endswith('e1'))

print('9.1. join(): ', '='.join(test100))

print('10.1. center(): [', test100.center(20),']')

print('11.1. zfill(): [', test100.zfill(20),']')

print('12.1. strip(): [', test106.strip(),']')

print('12.2. strip(): [', test107.strip('an'),']')

print('13.1. split(): ', test107.split())

print('13.2. split(): ', test108.split(':'))
