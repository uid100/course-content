class Task:
    def __init__(self, description="", completed=False, id=0):
        self.description = description
        self.completed = completed
        self.id = id

    def __str__(self):
        completed_str = ""
        if self.completed == True:
            completed_str = " (DONE!)"            
        return self.description + completed_str

def main():
    task1 = Task("Fix bike", True, 1)
    print(task1)    
    task2 = Task("Call mom", False, 2)
    print(task2)

if __name__ == "__main__":
    main()
