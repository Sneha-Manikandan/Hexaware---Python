## Problem Solving Techniques
- Brute Force
- Greedy
- Divide and Conquer
- Dynamic Programming

## Modeling Tools
- Flow Chart (Algorithm)
- Data Flow Diagram (cloud architecture)
- Entity Relationship Diagram (databases)
- Unified Modeling Language (python)

## Algorithm
- Sequence of unambiguous instruction
- Finite time
    - Types:
        - sequence (one after other)
        - selection (decision)
        - loops (goto)

# Data Structure
 - Way of organizing data
 - Data representation and manipulation

 ## Types

 - Static - fixed size
 - Dynamic - no fixed size
 - Linear - sequential manner
    1. Arrays
        - continuous memory location
        - same datatype
        - static
    2. Stack 
        - FILO / LIFO
        - push - add element at the top of the stack
        - pop - delete element from the top of the stack
        - maxTop - max size of the stack
    3. Queue
        - FIFO / LILO
        - enqueue - add element at the rear
        - dequeue - delete element from the front
        - maxSize - capacity
    4. Linked List
        - non-continuous in RAM
        - Dynamic
        - Data part and pointer which points to the next node
        - head and tail

 - Non-Linear - one element connected to n elements
    1. Trees
        - Binary Search Tree - atmost 2 children
        - AVL Tree - balanced BST
        
           >Balance Factor = Height(left subtree)-Height(right subtree)
        
            - Balance Factor should be -1,0,1 <br>

        | Unbalanced      |      Balanced             |
        | -----------     |    ---------              |
        | LL     | clockwise                          |
        | RR     | anticlockwise                      |
        | LR     | convert to LL then do clockwise    |
        | RR     | onvert to RR then do anticlockwise |


## Searching
- Linear Search -> It examines each element until it finds a match, starting at the beginning of the data set, until the end.
- Binary search -> It finds the mid value and compares the key with mid value.

## Sorting
- Bubble sort -> swap the adj elements
- Insertion sort -> insert it in right position
- Selection sort -> min_idx
- Merge sort -> divide and conquer
- Quick sort -> pivot

## Shortcuts 
 
Below are some useful shortcuts in VScode
 
- `alt + (up/down)` - Move line (up/down)
- `ctrl + /` - Comment code
- `ctrl + shift + p` - Vscode Command palette
- `win + .` - Emoji panel