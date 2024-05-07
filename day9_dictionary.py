


books = [
    {
        "title": "Infinite Jest",
        "rating": 4.5,
        "genre": "Fiction"
    },
    {
        "title": "The Catcher in the Rye",
        "rating": 3.9,
        "genre": "Fiction"
    },
    {
        "title": "Sapiens",
        "rating": 4.9,
        "genre": "History"
    },
    {
        "title": "A Brief History of Time",
        "rating": 4.8,
        "genre": "Science"
    },
    {
        "title": "Clean Code",
        "rating": 4.7,
        "genre": "Technology"
    },
]

# Task 1: Highly rated books | 4.7 or more
# For loop
 
for book in books:
    print(book, type(book))
 
# Expected Output
# ['Sapiens' 'A Brief History of Time', 'Clean Code' ]

# Task 1.1
high_rated=[]
for book in books:
    if(book["rating"]>=4.7):
        high_rated.append(book["title"])
print(high_rated)

# Task 1.2
high_rated=[book["title"] for book in books if book["rating"]>=4.7]
print(high_rated)