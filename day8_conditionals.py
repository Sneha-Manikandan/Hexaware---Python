# name1=input("Enter your name: ")
# height1=int(input("Enter your height: "))
# name2=input("Enter your name: ")
# height2=int(input("Enter your height: "))
# if(height1>height2):
#   print(f"{name1} is taller")
# elif(height1==height2):
#   print(f"{name1} and {name2} is of same height")
# else:
#   print(f"{name2} is taller")

##one way
# stock1 = "vanilla"
# stock2 = "lime"
# stock3 = "chocolate"
# choice=input("Your favourite flavour: ")
# if(choice == stock1 or choice== stock2 or choice == stock3):
#   print("Yes,we do have it")
# else:
#   print("No,we ran out of stock")

#another way
# stock1 = "vanilla"
# stock2 = "lime"
# stock3 = "chocolate"
# choice=input("Your favourite flavour: ")
# if(choice in(stock1,stock2,stock3)):
#   print("Yes,we do have it")
# else:
#   print("No,we ran out of stock")
choice=input("Your favourite flavour: ")
shop_stock="vanilla,lime,chocolate"
print("Yes,we do have it"if(choice in shop_stock) else "No,we ran out of stock")