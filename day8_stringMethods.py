# msg = "Hi, all"

# # Case methods
# print(msg.upper())
# print(msg.lower())
# print(msg.title())
# print(msg.capitalize())

# quote = "      Dream is not something that you see in sleep, Dream is something that does not let you sleep"

# print(quote)
# print(quote.strip())

# quote1 = "----Dream is not something-that you see in sleep, Dream is something that does not let you sleep----"
# print(quote1.strip("-"))
# print(quote1.lstrip("-"))
# print(quote1.rstrip("-"))

# quote3="Dream is not something-that you see in sleep, Dream is something that does not let you sleep"
# ctrl + space -> auto complete
# print(quote3.find('**')) # -1 if no match is found
# print(quote3.replace('Dream','Life')) #
# print(quote3) #-> here life will not be replaced as strings are immutable
# quote3[0]='T'
# print(quote3)
# quote3='cool'
# print(quote3)

# After the 🔑

# message = "    🚨🔍📱🔑secret_code✌️"

# code = "SECRET_CODE✌️"

# message = "    🚨🔍📱🔑secret_code✌️"
# code = "SECRET_CODE✌️"
# break_code = message[8:]
# output = ("you are an hacker" if (break_code.upper() == code) else "Try again")
# print(output)

# message = "    🚨🔍📱🔑secret_code✌️"
# code = "SECRET_CODE✌️"
# index=message.find('🔑')
# message = message[index+1:]
# if (message.upper() == code):
#   print("you are an hacker")
# else:
#   print("Try again")

#Task1
message = "    🚨🔍📱🔑secret_code✌️"
code = "SECRET_CODE✌️"
index=message.find('🔑')
message = message[index+1:]
if (message.upper() == code):
  print("You are an hacker")
else:
  print("Try again")

#Task2
message = "    🚨🔍📱🔑****secret_code✌️(((("
code = "SECRET_CODE✌️"
index=message.find('🔑')
message = message[index+1:].upper().strip('*').strip('(') # strip('*(')
if (message == code):
  print("You are an hacker")
else:
  print("Try again")