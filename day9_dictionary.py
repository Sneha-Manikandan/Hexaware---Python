


# books = [
#     {
#         "title": "Infinite Jest",
#         "rating": 4.5,
#         "genre": "Fiction"
#     },
#     {
#         "title": "The Catcher in the Rye",
#         "rating": 3.9,
#         "genre": "Fiction"
#     },
#     {
#         "title": "Sapiens",
#         "rating": 4.9,
#         "genre": "History"
#     },
#     {
#         "title": "A Brief History of Time",
#         "rating": 4.8,
#         "genre": "Science"
#     },
#     {
#         "title": "Clean Code",
#         "rating": 4.7,
#         "genre": "Technology"
#     },
# ]

# # Task 1: Highly rated books | 4.7 or more
# # For loop
 
# for book in books:
#     print(book, type(book))
 
# # Expected Output
# # ['Sapiens' 'A Brief History of Time', 'Clean Code' ]

# # Task 1.1
# high_rated=[]
# for book in books:
#     if(book["rating"]>=4.7):
#         high_rated.append(book["title"])
# print(high_rated)

# # Task 1.2
# high_rated=[book["title"] for book in books if book["rating"]>=4.7]
# print(high_rated)

# person = {
#     "name": "Lionel Messi",
#     "age": 36,
#     "address": {
#         "city": "rosario",
#         "country": "Argentina",
#     },
#     "sport": "football",
# }

# loops in dictionary
# for key,value in person.items():
#     print(key,value)

# # nested dictionary
# print(person["address"]["city"]) # rosario
# print(person["stats"])  #key error

# # get()- safer way to access
# print(person.get("stats"))  # none if no value present, or return value if present

# person = {
#     "name": "Lionel Messi",
#     "age": 36,
#     "address": {
#         "city": "rosario",
#         "country": "Argentina",
#     },
#     # "stats": {"goals": 300, "assists": 500},
#     "sport": "football",
#     # "height": 168,
# }
 
# print(person["stats"]["goals"]) # KeyError: 'stats'
# print(person.get("stats").get("goals")) # 'NoneType' object has no attribute 'get'
 
# Default value - person.get(key, default value)
# print(person.get("height", 174))
 
# print(person.get("stats" ).get("goals")) # error- nonetype has no attribute

# print(person.get("stats",{} ).get("goals"))

# print(person.get("stats", {"goals": 0}).get("goals"))  # None

employees = [
    {"name": "Sneha", "experience": 2},
    {"name": "Manju"},
    {"name": "Sai Subash", "experience": 4},
    {"name": "Manasa"},
]
 
# Task 1: After 1 experience
 
# Output
# [
#     {"name": "Sneha", "experience": 3},
#     {"name": "Manju",  "experience": 1},
#     {"name": "Sai Subash", "experience": 5},
#     {"name": "Manasa", "experience": 1},
# ]
# for employee in employees:
#     employee["experience"]=employee.get("experience",0)+1
# print(employees)

# Task 2
#  Senior 5 or more, Mid-Level 3 to 5, Junior < 3
# Output
# [
#     {"name": "Sneha", "experience": 3, "status": "Mid-Level"},
#     {"name": "Manju", "experience": 1, "status": "Junior"},
#     {"name": "Sai Subash", "experience": 5, "status": "Senior"},
#     {"name": "Manasa", "experience": 1, "status": "Junior"},
# ]

# for employee in employees:
#     employee["experience"]=employee.get("experience",0)+1
#     if(employee["experience"]>=5):
#         employee["status"]="Senior"
#     elif(3<=employee["experience"]<5):
#         employee["status"]="Mid-level"
#     else:
#         employee["status"]="Junior"
# print(employees)