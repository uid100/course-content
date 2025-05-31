working with numbers and file input, using `try-catch` to handle **multiple types of exceptions**.

---

### 🔷 **Exercise: Sum Two Numbers from User Input**

---

### 🧠 **Objective:**

Prompt the user for two numbers, handle exceptions if the input is invalid, and display their sum.

---

### 📝 **Instructions:**

1. Ask the user to enter two numbers.
2. Use `int.Parse()` to convert each input to an integer.
3. Use `try-catch` blocks to:

   - Catch and display an error if the input is not a valid number.
   - Optionally, catch other exceptions to show how multiple catch blocks work.

4. If both inputs are valid, display the sum of the two numbers.

---

### ✅ **Example Output (Valid Input):**

```
Enter the first number: 12
Enter the second number: 8
The sum is: 20
```

---

### ❌ **Example Output (Invalid Input):**

```
Enter the first number: apple
Invalid input! Please enter valid integers.
```

---

### 💻 **Sample Solution:**

```csharp
using System;

class Program
{
    static void Main()
    {
        try
        {
            Console.Write("Enter the first number: ");
            int num1 = int.Parse(Console.ReadLine());

            Console.Write("Enter the second number: ");
            int num2 = int.Parse(Console.ReadLine());

            int sum = num1 + num2;
            Console.WriteLine("The sum is: " + sum);
        }
        catch (FormatException)
        {
            Console.WriteLine("Invalid input! Please enter valid integers.");
        }
        catch (Exception ex)
        {
            Console.WriteLine("An unexpected error occurred: " + ex.Message);
        }
    }
}
```

---

### 🎯 **Learning Goals:**

- Understand how to catch and respond to common runtime errors.
- Learn the use of multiple `catch` blocks.
- Safely convert user input to numbers.
- Recognize the importance of error handling in user-facing applications.

Would you like a version that includes retry attempts or uses `int.TryParse()` instead of exceptions?
