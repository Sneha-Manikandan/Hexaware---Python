# break -> stop loop
# continue -> skip one iteration
# return -> exits out of function
 
 
def print_nums():
    for num in range(1, 10):
        if num == 6:
            break
 
        print(num)
    print("Execution continues 🎊")
 
 
def skip_even():
    for num in range(1, 10):
        if num % 2 == 0:
            continue
        print(num)
    print("Execution continues 🎊")
 
 
# Task 1: Find the first negative value
def first_negative(numbers):
    # Your students will fill this in
    for num in numbers:
        if num>0:
            continue
        print(num)
        break

def first_negative(numbers):
    # Your students will fill this in
    for num in numbers:
        if num<0:
            print(num)
            break
 
 
if __name__ == "__main__":
    # print_nums()
    # skip_even()
    # Test case
    print(first_negative([3, 5, 7, -1, 9, -3]))


# Task 2 : Process until duplicate
def process_until_duplicate(fruits):
    x=[]
    for fruit in fruits:
        if fruit in x:
            print("Duplicate found:Processing stopped")
            break
        else:
            x.append(fruit)
            print(f"Processed {fruit}")
        
 
 
if __name__ == "__main__":
    process_until_duplicate(["apple", "banana", "carrot", "apple", "date", "banana"])

# Output:
# Processed apple
# Processed banana
# Processed carrot
# Duplicate found:Processing stopped


# Task 3:
 
def censorship_bot(messages, banned_words):
    for msg in messages:
        for word in banned_words:
            if msg.find(word)!=-1:
                break
            else:
                print(f"Approved message: {msg}")
 
messages = [
    "Hello everyone!",
    "This is a bad word example!",
    "Let's keep our chat clean!",
    "Oops another bad content!",
    "Have a nice day!"
]
 
banned_words = ["bad", "oops"]
 
print(censorship_bot(messages,banned_words))
 
# Expected output
# Approved message: Hello everyone!
# Approved message: Let's keep our chat clean!
# Approved message: Have a nice day!