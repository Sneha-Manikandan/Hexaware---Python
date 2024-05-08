# # Task 1
# coordinates = [(5, 4), (1, 1), (6, 10), (9, 10)]
# # Output
# # [6.4, 1.414, 11.66, 13.45]

# # Task 1.1 for loop
# coordinates = [(5, 4), (1, 1), (6, 10), (9, 10)]
# d=[]
# for coordinate in coordinates:
#     x,y =coordinate
#     d.append(round((x**2 + y**2)**0.5,2))
# print(d)

# # Task 1.3 unpacking in declaration
# coordinates = [(5, 4), (1, 1), (6, 10), (9, 10)]
# d=[]
# for x,y in coordinates:
#     d.append(round((x**2 + y**2)**0.5,2))
# print(d)


# # Task 1.2 list comprehension
# coordinates = [(5, 4), (1, 1), (6, 10), (9, 10)]
# distance=[round((x**2 + y**2)**0.5,2) for x,y in coordinates]
# print(distance)

# mark1=[10,20]
# mark2=[*mark1,30,40] # [10,20,30,40]
# mark2=[mark1,30,40] # [[10,20],30,40]
# t1=[80,90]
# t2=[50,60]
# t3=[*t1,*t2]
# print(t3)

# Unpacking -> ** Dict
movie = {"name": "John wick", "year": 2014}
 
# Copy
mv1 = {**movie, "actor": "Keanu Reeves"}
mv2 = {**movie, "actor": "Keanu Reeves", "year": 2015}
mv3 = {"actor": "Keanu Reeves", "year": 2015, **movie}
print(mv1)
print(mv2)
print(mv3)
print(movie)