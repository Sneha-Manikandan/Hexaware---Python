m=all([True, False,True]) # false - AND
m=any([True, False,True]) # true - OR


marks = [50, 40, 20, 90]
if all([mark>40 for mark in marks]):
    print("Yes, they will get the grade")
else:
    print("No, they will not get the grade")