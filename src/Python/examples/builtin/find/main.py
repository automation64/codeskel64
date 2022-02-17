import os
import importlib.util

spec = importlib.util.spec_from_file_location("sample", os.environ['DEVCS64_SAMPLES'] + '/Python/var_string_01.py')
x = importlib.util.module_from_spec(spec)
spec.loader.exec_module(x)

print( '1.1. find first space position in phrase: ', x.var_string_01_phrase.find(' ') )
