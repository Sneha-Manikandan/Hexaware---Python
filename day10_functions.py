# # Why?: Motivation of function
 
 
# a = 8
# b = 10
 
# print("The sum is: ", a + b)
 
 
# a1 = 60
# b1 = 70
 
# print("The sum is: ", a1 + b1)
 
# a2 = 600
# b2 = 70
 
# print("The sum is: ", a2 + b2)
 
 
# # Function
# # 1. Declaration / Definition
# # 2. Function name
# # 3. Parameters - 2
# # 4. Function body
# def add(a, b):
#     return round(a + b, 2)
 
 
# # Function call
# print("The sum is: ", add(8, 10))
# print("The sum is: ", add(60, 70))
# print("The sum is: ", add(600, 70))  # arguments
# print("The sum is: ", add(60.748494, 70.89898))
# print("The sum is: ", add(160.748494, 170.89898))
 
 
# # Default values
# def driving_test(name, age, car="Dezire"):
#     if age >= 18:
#         return f"{name} eligible for driving. You will be tested in {car}"
#     else:
#         return "Try again after few years 👶🍼"
 
 
# print(driving_test("Sai Subash", 20, "Creata"))
# print(driving_test("Sai Ganesh", 20))
 
 
# # Types of argument
# # 1. Position argument
# # 2. Keyword argument
 
# # Position argument
# # print(driving_test(20, "Poojitha"))
 
# # Keyword argument
# print(driving_test(age=20, name="Poojitha"))
# print(driving_test("Abishek", car="Honda city", age=20))
 

# library_list = [
#     {
#         "title": "Python Programming",
#         "author": "Eric Matthes",
#         "year": 2019,
#         "available": True
#     },
#     {
#         "title": "Automate the Boring Stuff with Python",
#         "author": "Al Sweigart",
#         "year": 2020,
#         "available": True
#     },
#     {
#         "title": "Learning Python I",
#         "author": "Mark Lutz",
#         "year": 2013,
#         "available": False
#     },
#     {
#         "title": "Fluent Python",
#         "author": "Luciano Ramalho",
#         "year": 2015,
#         "available": True
#     },
#     {
#         "title": "Adavance Python",
#         "author": "Mark Lutz",
#         "year": 2015,
#         "available": False
#     },
# ]

# book = {"title": "Fluent Python II", "author": "Alex", "year": 2016, "available": True}
# Task 1
# Add Book Function: Write a function add_book(library, new_book)

# def add_book(library_list,book):
#     library_list.append(book)
#     return library_list
# print(add_book(library_list,book))

# Task 2
# Search Books by Author Function: Write a function search_by_author(library, author_name)
# v1
# def search_book(library_list,author_name):
#     book1=[]
#     for book in library_list:
#         if(book["author"]==author_name):
#             book1.append(book)
#     return book1
# print(search_book(library_list,"Mark Lutz"))

#v2
# def search_book(library_list,author_name):
#     book1 = [book for book in library_list if book["author"]==author_name]
#     return book1
# print(search_book(library_list,"Mark Lutz"))

# # Task 3
# # Check Out Book Function: Write a function check_out_book(library, title) that marks a book as not available if it exists and is available in the library.
# # 1. Book available
# # 2. Book unavailable
# # 3. Book doesn't exists
# def check_out_book(library,title):
#     for book in library:
#         if(book["title"]==title and book["available"]==True):
#             book["available"]="False"
#             return f"{title} is available for checkout"
#         elif(book["title"]==title and book["available"]==False):
#             return f"{title} is unavailable"
#     return f"{title} does not exist"
 
# print(check_out_book(library_list,"Adavance Python"))
# print(check_out_book(library_list, "Python Programming"))
  

movies = [
    {
        "title": "Inception",
        "ratings": [5, 4, 5, 4, 5]
    },
    {
        "title": "Interstellar",
        "ratings": [5, 5, 4, 5, 4]
    },
    {
        "title": "Dunkirk",
        "ratings": [4, 4, 4, 3, 4]
    },
    {
        "title": "The Dark Knight",
        "ratings": [5, 5, 5, 5, 5]
    },
    {
        "title": "Memento",
        "ratings": [4, 5, 4, 5, 4]
    },
]

# # Function
# # Task 1
# # get_movies_avg_rating
# def movie_avg_rating(movies):
#     for movie in movies:
#         movie["average_rating"]=sum(movie["ratings"])/len(movie["ratings"])
#     return movies
# print(movie_avg_rating(movies))

# # Task 2 - break it into 2 functions
# def avg_rating(ratings):
#     average=sum(ratings)/len(ratings)
#     return average
# #or
# def avg_rating(movie):
#     average=sum(movie["ratings"])/len(movie["ratings"])
#     return average

# def movie_avg_rating(movies):
#     for movie in movies:
#         movie["average_rating"]=avg_rating(movie["ratings"])
#     return movies
# print(movie_avg_rating(movies))

# # Expected Output
# output = [
#     {"title": "Inception", "ratings": [5, 4, 5, 4, 5], "average_rating": 4.6},
#     {"title": "Interstellar", "ratings": [5, 5, 4, 5, 4], "average_rating": 4.2},
#     {"title": "Dunkirk", "ratings": [4, 4, 4, 3, 4], "average_rating": 4.1},
#     {"title": "The Dark Knight", "ratings": [5, 5, 5, 5, 5], "average_rating": 5},
#     {"title": "Memento", "ratings": [4, 5, 4, 5, 4], "average_rating": 4.2},
# ]

def own_max(*nums):
    # Implement max logic
    max=nums[0]
    for i in nums:
        if(i>max):
            max=i
    return max
 
 
print(own_max(5, 6, 10))
print(own_max(5, 6, 10, 7, 80, 60))

def party(**people):
    return ",".join(people.values())
print(party(p1="sneha",p2="rose",p3="yaaks",p4="varsh",p5="teju"))