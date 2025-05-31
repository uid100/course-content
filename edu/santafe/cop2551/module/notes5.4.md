Here's a well-structured **C# exercise** that guides students to write a method that **throws an exception** when given invalid input, using the `switch` expression. This is a great way to teach them both exception handling and modern `switch` syntax.

---

### 🔷 **Exercise: Throw an Exception from a Method Using `switch`**

---

### 🧠 **Objective:**

Write a method `monthName(int month)` that returns the name of the month. If the input is not between 1 and 12, the method should throw an `ArgumentOutOfRangeException`.

---

### 📝 **Instructions:**

1. Write a method named `monthName` that:

   - Takes an integer `month` as a parameter.
   - Uses a **switch expression** to return the name of the month.
   - If the input is not between 1 and 12, **throws** an `ArgumentOutOfRangeException` with the message `"Bad month"`.

2. In the `Main()` method:

   - Ask the user to enter a month number (1–12).
   - Call the `monthName()` method with the user's input.
   - Catch and display any exceptions that occur.

---

### ✅ **Expected Output (Valid Input):**

```
Enter a month number: 3
Month name: March
```

---

### ❌ **Expected Output (Invalid Input):**

```
Enter a month number: 15
Error: Bad month (Parameter 'month')
```

---

### 💻 **Sample Solution:**

```csharp
using System;

class Program
{
    // Step 1: Method that uses a switch expression and throws an exception
    public static string monthName(int month) => month switch
    {
        1 => "January",
        2 => "February",
        3 => "March",
        4 => "April",
        5 => "May",
        6 => "June",
        7 => "July",
        8 => "August",
        9 => "September",
        10 => "October",
        11 => "November",
        12 => "December",
        _ => throw new ArgumentOutOfRangeException(nameof(month), "Bad month")
    };

    static void Main()
    {
        try
        {
            Console.Write("Enter a month number (1-12): ");
            int input = int.Parse(Console.ReadLine());
            string name = monthName(input);
            Console.WriteLine("Month name: " + name);
        }
        catch (ArgumentOutOfRangeException ex)
        {
            Console.WriteLine("Error: " + ex.Message);
        }
        catch (FormatException)
        {
            Console.WriteLine("Invalid input! Please enter a number.");
        }
    }
}
```

---

### 🎯 **Learning Outcomes:**

- Understand how to **throw exceptions from methods**.
- Use the **switch expression** syntax effectively.
- Practice **input validation** and **exception handling** with meaningful feedback.

Let me know if you'd like a version that loops until the user enters a valid month!

=================

In C#, the **`switch` expression** introduced in C# 8.0 allows a **concise, expression-based alternative** to the traditional `switch` statement. This modern syntax uses **`case` and `default`** logic in a **shorthand format**, enabling simpler, cleaner code.

---

### 🔷 Traditional `switch` Statement Syntax

```csharp
string result;
switch (day)
{
    case 1:
        result = "Monday";
        break;
    case 2:
        result = "Tuesday";
        break;
    default:
        result = "Invalid";
        break;
}
```

---

### ✅ **Shortcut Syntax Using the `switch` Expression**

This is more compact and eliminates the need for `break`:

```csharp
string result = day switch
{
    1 => "Monday",
    2 => "Tuesday",
    _ => "Invalid"
};
```

---

### 🧠 **Key Concepts in the Shortcut Syntax**

| **Syntax Element**    | **Meaning**                                   | **Example**                  |
| --------------------- | --------------------------------------------- | ---------------------------- |
| `=>`                  | Maps a case to its result (read as "returns") | `1 => "Monday"`              |
| `_`                   | Default case (like `default` in old switch)   | `_ => "Invalid"`             |
| `switch`              | Used as an expression that returns a value    | `day switch { ... }`         |
| **No `break` needed** | The result is returned immediately            | Cleaner and less error-prone |

---

### 🧪 **Example: Month Name Using Shortcut Syntax**

```csharp
string monthName = month switch
{
    1 => "January",
    2 => "February",
    3 => "March",
    // ...
    12 => "December",
    _ => "Invalid month" // Default case
};
```

---

### ✅ **Why Use It?**

- Shorter and more readable.
- Expression-based (can assign directly).
- No risk of fall-through bugs from missing `break`.

---

Let me know if you'd like to compare it with other versions or add pattern matching!
