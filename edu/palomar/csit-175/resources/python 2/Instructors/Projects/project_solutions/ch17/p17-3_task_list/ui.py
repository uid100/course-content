import db
from objects import Task

def display_tasks(tasks):
    if len(tasks) == 0:
        print("There are no tasks in this list.\n")
    else:
        i = 1
        for task in tasks:
            print(str(i) + ". " + str(task))
            i += 1
        print()

def add_task(tasks):
    description = input("Description: ")
    task = Task(description)
    db.add_task(task)
    print()

def delete_task(tasks):
    number = int(input("Number: "))
    task = tasks[number-1]
    db.delete_task(task)
    print()
        
def complete_task(tasks):
    number = int(input("Number: "))   
    task = tasks[number-1]
    db.complete_task(task)
    print()
        
def display_title():
    print("Task List")
    print()

def display_menu():
    print("COMMAND MENU")
    print("view     - View pending tasks")
    print("history  - View completed tasks")
    print("add      - Add a task")
    print("complete - Complete a task")
    print("delete   - Delete a task")
    print("exit     - Exit program")
    print()

def main():
    display_title()
    display_menu()
    db.connect()
    tasks = db.get_tasks()
    while True:        
        command = input("Command: ")
        if command.lower() == "view":
            tasks = db.get_tasks()
            display_tasks(tasks)
        elif command.lower() == "history":
            tasks = db.get_tasks(1)
            display_tasks(tasks)
        elif command.lower() == "add":
            add_task(tasks)
        elif command.lower() == "delete":
            delete_task(tasks)       
        elif command.lower() == "complete":
            complete_task(tasks)    
        elif command.lower() == "exit":
            db.close()
            print("Bye!")
            break
        else:
            print("Not a valid command. Please try again.\n")

if __name__ == "__main__":
    main()
