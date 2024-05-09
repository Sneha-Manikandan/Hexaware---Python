# Idea
# Object Oriented Programming
# Modeling our problem as real-world objects
 
# Car
# What makes a car?
# 1. engine
# 2. wheels
# 3. name
# 4. doors
 
 
#  Car
# 1. engine - v8
# 2. wheels - 4
# 3. name - Ferrari
# 4. doors - 2
 
 
# 1. engine - v4
# 2. wheels - 4
# 3. name - Alto
# 4. doors - 4
 
 
#  Car -> blueprint | Class blueprint object
 
class Car:
    def __init__(self, name, engine, wheels, doors):  # creating object calls init (constructor)
        # instance variable
        self.name = name
        self.engine = engine
        self.wheels = wheels
        self.doors = doors

    # instance method
    def horn(self):
        return f"{self.name} says vroom vroom"
# object/ instance -> Car (class)
ferrari = Car("Ferrari", "v8", 4, 2)  # object
alto = Car("Alto", "v4", 4, 4)  # object
audi = Car("Audi","v8",4,4)
Mercedes=Car("Mercedes","v8",4,4)

print(type(ferrari),type("cool"))
print(ferrari.name, ferrari.wheels)
print(alto.horn())

# Task 1
class Bank:
    # class variable | same for all objects/instance variables
    interest_rate=0.02
    def __init__(self,account_no,name,balance):
        self.account_no=account_no
        self.name=name
        self.balance=balance
    # Task 2 print balance
    def display_balance(self):
        return f"Your Balance is ₹{self.balance}"
    # Task 3 withdraw
    def withdraw(self,amount):
        if self.balance<amount:
            return f"Insufficient balance ₹ {self.balance}"
        else:
            self.balance-=amount
            return f"Success!! {self.display_balance()}"
    # Task 4 deposit
    def deposit(self,amount):
        if amount>0:
            self.balance+=amount
            return f"Success! {self.display_balance()}"
        else:
            return f"Invalid amount. {self.display_balance()}"
    # Task 5 interest rate
    def interest(self):
        self.balance+=self.balance*Bank.interest_rate
        return f"Your balance after applying interest is ₹ {self.balance}"

John = Bank("121212","John",70_000)
Clara = Bank("131313","Clara",60_000)
Joe = Bank("141414","Joe",50_000)

print(John.name)
print(Clara.display_balance())
print(Clara.withdraw(1000))
print(Joe.withdraw(60000))
print(Clara.deposit(1000))
print(Clara.interest())


# def apply_interest(self):
#         accumulated_interest_amt = self.balance * Bank1.interest_rate
#         self.balance += accumulated_interest_amt
#         return f"Interest received. ₹{accumulated_interest_amt}"



class Circle:
    pi = 3.14
 
    def __init__(self, radius):
        self.radius = radius
 
    @staticmethod 
    def perimeter(radius):
        return 2 * Circle.pi * radius
 
    @classmethod 
    def from_diameter(cls, diameter):
        radius=diameter/2
        return cls(radius)
 
    def calculate_area(self):
        return Circle.pi * self.radius**2
 
 
# Normal function but inside class | no access to self
print(Circle.perimeter(2))
 
# Instance method
circle1 = Circle(4)
print(circle1.calculate_area())
 
 
# Class method - to construct the object
circle_from_dia = Circle.from_diameter(10)
print(circle_from_dia.calculate_area())  # 78.5



# get_total_no_accounts(), update_interest_rate()
# Task 
class Bank2:
    # Class variable | All your instance share the class variable
    interest_rate = 0.02
    no_of_accounts=0
 
    def __init__(self, acc_no, name, balance):
        # instance variable
        self.acc_no = acc_no
        self.name = name
        self.balance = balance
        Bank2.no_of_accounts+=1
 
    def display_balance(self):
        return f"Your balance is: ₹{self.balance:,}"
 
    def withdraw(self, amount):
        if self.balance - amount >= 0:
            self.balance -= amount
            return f"Success. {self.display_balance()}"
        else:
            return f"Insufficient funds. {self.display_balance()}"
 
    def deposit(self, amount):
        if amount >= 0:
            self.balance += amount
            return f"Success. {self.display_balance()}"
        else:
            return f"Invalid amount. {self.display_balance()}"
 
    def apply_interest(self):
        accumulated_interest_amt = self.balance * Bank2.interest_rate
        self.balance += accumulated_interest_amt
        return f"Interest received. ₹{accumulated_interest_amt}"
    @staticmethod
    def total_no_accounts():
        return f"Total number of accounts: {Bank2.no_of_accounts}"

    @classmethod
    def update_interest_rate(cls,new_interest_rate):
        cls.interest_rate=new_interest_rate
       
 
sneha = Bank2(128, "Sneha", 1_00_000)
siva = Bank2(129, "Siva", 90_000)
 
 
# print(Bank2.get_total_no_accounts())
Bank2.update_interest_rate(0.10)
print(sneha.apply_interest())
print(sneha.display_balance())
print(Bank2.total_no_accounts())
 
#  sneha.apply_interest()
#  sneha.display_balance() # 110,000




class Bank3:
    # Class variable | All your instance share the class variable
    __interest_rate = 0.02
    __no_of_accounts = 0
 
    def __init__(self, acc_no, name, balance):
        # instance variable
        self.__acc_no = acc_no
        self.__name = name
        self.__balance = balance
        Bank3.__no_of_accounts += 1
 
    @staticmethod
    def get_total_no_accounts():
        return f"In total we have {Bank3.__no_of_accounts} accounts"
 
    @classmethod
    def update_interest_rate(cls, new_interest_rate):
        cls.__interest_rate = new_interest_rate
 
    def display_balance(self):
        return f"Your balance is: ₹{self.__balance:,}"
 
    def withdraw(self, amount):
        if self.__balance - amount >= 0:
            self.__balance -= amount
            return f"Success. {self.display_balance()}"
        else:
            return f"Insufficient funds. {self.display_balance()}"
 
    def deposit(self, amount):
        if amount >= 0:
            self.__balance += amount
            return f"Success. {self.display_balance()}"
        else:
            return f"Invalid amount. {self.display_balance()}"
 
    def apply_interest(self):
        accumulated_interest_amt = self.__balance * Bank3.__interest_rate
        self.__balance += accumulated_interest_amt
        return f"Interest received. ₹{accumulated_interest_amt}"
 
 
divya = Bank3(130, "Divya", 1_00_000)
priya = Bank3(131, "Priya", 90_000)
 
 
# divya.__balance = -800000  # should not be allowed ❌
 
# private
# print(divya.__balance)  # internal usage
 
 
print(divya.apply_interest())
print(divya.display_balance())

# Access specifiers
 
# 1. Private    -> __balance (double underscore)
# 2. Protected  -> _balance  (single underscore)
# 3. Public     -> balance   (no underscore)
 
 
# Conventions
 
# 1. Privatize all instance & class variables
# 2. Access to instance & class variable - through - public - methods
 
 
# Inheritance
class Animal:
    def __init__(self, name):
        self._name = name
 
    # methods / attributes
    def speak(self):
        return "Some sound"
 
 
class Dog(Animal):
    def __init__(self, name, speed):
        super().__init__(name)  # Base class constructor
        self.__speed = speed
 
    def run(self):
        return "🐶 wags tail!!"
 
    # Polymorphism:  Method overriding
    def speak(self):
        return "Woof!! 🐕"
 
    def speed_bonus(self):
        return f"{self._name} is running at {self.__speed * 2}Km/hr"
 
 
toby = Animal("toby")
print(toby.speak())
# print(toby.run())
 
maxy = Dog("maxy", 20)
# print(maxy._name)
print(maxy.run())
print(maxy.speak())
# print(maxy.__speed)
print(maxy.speed_bonus())




# Inheritance exercise
class Bank4:
    # Class variable | All your instance share the class variable
    __interest_rate = 0.02
    __no_of_accounts = 0
 
    def __init__(self, acc_no, name, balance):
        # instance variable
        self.__acc_no = acc_no
        self.__name = name
        self.__balance = balance
        Bank4.__no_of_accounts += 1
 
    @staticmethod
    def get_total_no_accounts():
        return f"In total we have {Bank3.__no_of_accounts} accounts"
 
    @classmethod
    def update_interest_rate(cls, new_interest_rate):
        cls.__interest_rate = new_interest_rate
 
    def display_balance(self):
        return f"Your balance is: ₹{self.__balance:,}"
 
    def withdraw(self, amount):
        if self.__balance - amount >= 0:
            self.__balance -= amount
            return f"Success. {self.display_balance()}"
        else:
            return f"Insufficient funds. {self.display_balance()}"
 
    def deposit(self, amount):
        if amount >= 0:
            self.__balance += amount
            return f"Success. {self.display_balance()}"
        else:
            return f"Invalid amount. {self.display_balance()}"
 
    def apply_interest(self):
        def apply_interest(self):
            accumulated_interest_amt = self.__balance * self.__interest_rate
            self.__balance += accumulated_interest_amt
            return f"Interest received. ₹{accumulated_interest_amt}"
       
# Task  5
# class SavingsAccount(Bank3):
#     interest_rate=0.05
#     def apply_interest(self):
#             accumulated_interest_amt = self.balance * SavingsAccount.interest_rate
#             self.balance += accumulated_interest_amt
#             return f"Interest received. ₹{accumulated_interest_amt}"
# # Instead of this, change savingaccount to self in base clase so that each time self points to the particular object

class SavingsAccount(Bank4):
    interest_rate=0.05
    
sabesh = SavingsAccount(131, "Sabesh", 80_000)
 
print(sabesh.apply_interest())  # 5%
print(sabesh.display_balance())
 
 
# Task 6
# withdraw - transaction_fee - 10 Rupee
class CurrentAccount(Bank4):
    transaction_fee=10
    # polymorphism - method overriding
    def withdraw(self, amount):
        total_amount = amount + CurrentAccount.transaction_fee
        return super().withdraw(total_amount)
 
   
tanishq = CurrentAccount(132, "Tanishq", 90_000)
 
print(tanishq.withdraw(1_000))
print(tanishq.withdraw(10_000))
print(tanishq.display_balance())

# common across objects - class variable  (cls)         - no. of eyes
# unique across objects - instance variable (self)      - size of nose


# Magic methods
class Cat:
    def __init__(self, name, speed):
        self.__name = name
        self.__speed = speed
 
    # Override - (human readable)
    def __str__(self):
        # Human readable
        return f"Hi, I am {self.__name} with speed {self.__speed}"
 
    # Override -  (debugging)
    def __repr__(self):
        # Human readable
        return f"Cat('{self.__name}', {self.__speed})"
 
    def __add__(self, other):
        return self.__speed + other.__speed
 
    # Polymorphism:  Method overriding
    def speak(self):
        return "Meow!! 🐈"
 
 
pichu = Cat("pichu", 30)
snowbell = Cat("snowbell", 10)
 
print(pichu)
print(repr(pichu))
print(repr(snowbell))
 
print(pichu + snowbell)
 
# x = [5, 6, 7]
# print(dir(x)) -> dunder methods



