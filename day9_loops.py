# # Task 1
# # no_of_stars = 5
# # ✨
# n = 1
# while n <= 5:
#     print("✨" * n)
#     n = n + 1


# no_of_stars = 5
# for i in range(1,6):
#     print('✨' * i)

# # Task 2 
# player_stats=[10,20,30]
# for i in range(len(player_stats)):
#     player_stats[i]=player_stats[i]*2
# print(player_stats)

# player_stats=[10,20,30]
# stats=[]
# for i in player_stats:
#     stats.append(i*2)
# print(stats)

# # List comprehension
# stats=[i*2 for i in player_stats]
# print(stats)

# avengers = [
#     "Hulk",
#     "Iron man",
#     "Black widow",
#     "Captain america",
#     "Spider man",
#     "Thor",
# ]
 
# # Output
# # [4, 8, 11, 15, 10, 4]
 
 
# # Task 4.1 - for loop
# count_letters=[]
# for name in avengers:
#     count_letters.append(len(name))
# print(count_letters)

# # Task 4.2 - List comprehension
# count_letters=[len(name) for name in avengers]
# print(count_letters)


avengers = [
    "Hulk",
    "Iron man",
    "Black widow",
    "Captain america",
    "Spider man",
    "Thor",
]
 
# Output
# [
#     "Black widow",
#     "Captain america",
# ]
 
 
# Task 5.1 - for loop
large_name=[]
for name in avengers:
    if(len(name)>10):
        large_name.append(name)
print(large_name)
    
 
# Task 5.2 - List comprehension
large_name=[name for name in avengers if len(name)>10]
print(large_name)

large_name=[name.upper() for name in avengers if len(name)>10]
print(large_name)