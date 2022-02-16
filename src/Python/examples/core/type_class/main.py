class Parent(object):

    attribute1 = "attribute1"

    def __init__(self):
        self.self_variable1 = "self_variable1"
        variable1 = "variable1"

    def public_method1(self):
        return "return from public method1"

test_object = Parent()

print(test_object.attribute1)
print(test_object.self_variable1)
print(test_object.public_method1())

try:
    print(test_object.variable1)
except Exception as error:
    print(error)
