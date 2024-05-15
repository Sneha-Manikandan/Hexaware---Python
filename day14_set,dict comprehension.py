# # set comprehension
# words = ["This", "is", "cool", "mangoes", "oranges", "apple"]
# count={len(word) for word in words}
# print(count)

# # dictionary comprehension
# squares={x:x**2 for x in range(1,21)}
# print(squares)

classes = {
    "Class A": [
        {"name": "Alice", "grades": [82, 90, 88]},
        {"name": "Bob", "grades": [78, 81, 86]},
        {"name": "Charlie", "grades": [85, 85, 87]},
        {"name": "Alex", "grades": [85, 90, 87]},
    ],
    "Class B": [
        {"name": "Dave", "grades": [92, 93, 88]},
        {"name": "Eve", "grades": [76, 88, 91]},
        {"name": "Frank", "grades": [88, 90, 92]},
    ],
}
 
 
# Task 1: Find average of each student
output = {
    "Class A": {"Alice": 90.50, "Bob": 84.50, "Charlie": 90.00},
    "Class B": {"Dave": 92.50, "Eve": 86.50, "Frank": 950},
}
 
# task1={}
# for class_name,students in classes.items():
#     class_student_avg=[]
#     for student in students:
#         average=sum(student["grades"])/len(student["grades"])
#         class_student_avg.append(average)
# print(average)


def find_avg(items):
    return round(sum(items)/len(items),2)
class_avg = {}
for class_name, students in classes.items():
    class_student_avg = []
    for student in students:
        # avg = find_avg(student["grades"])
        class_student_avg.append(find_avg(student["grades"]))
    class_avg[class_name] = find_avg(class_student_avg)
 
print(class_avg)


#  Task 2
# def find_avg(items):
#     return round(sum(items)/len(items),2)
# class_wise_student_avg = {}
# for class_name, students in classes.items():
#     class_student_avg = []
#     for student in students:
#         # avg = find_avg(student["grades"])
#         class_student_avg.append(find_avg(student["grades"]))
#         class_wise_student_average[class_name] =
#     # class_avg[class_name] = find_avg(class_student_avg)
 
# print(class_avg)


# Task3
class_avg = {
    class_name: find_avg([find_avg(student["grades"]) for student in students])
    for class_name, students in classes.items()
}
 
# print(class_avg)
# # task 2
# def find_avg(items):
#     return round(sum(items)/len(items),2)

# class_wise_student_avg = {}
# for class_name, students in classes.items():
#     class_student_avg = {}
#     for student in students:
#         avg = find_avg(student["grades"])
#         class_student_avg[student["name"]]= avg
#         # print("Inner loop")
#     print(class_name, find_avg(class_student_avg))
#     class_wise_student_avg[class_name] = class_student_avg
 
# print(class_student_avg)


