demonstrate and catch an `OverflowException`.

---

### 🔷 **Exercise: Demonstrate Overflow with Large Integers**

---

### 🧠 **Objective:**

Learn how an `OverflowException` can occur during arithmetic operations when a value exceeds the limits of a data type (e.g., `int.MaxValue`), and how to catch it.

---

### 📝 **Instructions:**

1. Use a `checked` block to enable overflow detection.
2. Set an integer variable to `int.MaxValue`.
3. Try adding 1 to the variable inside the `checked` block.
4. Use a `try-catch` block to catch the `OverflowException` and display an error message.

---

### ✅ **Expected Output:**

```
Attempting to add 1 to int.MaxValue...
Overflow occurred! Value was too large for an int.
```

---

### 💻 **Sample Solution:**

```csharp
using System;

class Program
{
    static void Main()
    {
        int maxValue = int.MaxValue;
        Console.WriteLine("Attempting to add 1 to int.MaxValue...");

        try
        {
            checked
            {
                int result = maxValue + 1;
                Console.WriteLine("Result: " + result);
            }
        }
        catch (OverflowException)
        {
            Console.WriteLine("Overflow occurred! Value was too large for an int.");
        }
    }
}
```

---

### 🎯 **Learning Points:**

- `int.MaxValue` is the largest value an `int` can store (`2,147,483,647`).
- `checked` blocks force the program to throw an `OverflowException` on numeric overflow (by default, overflow is silent in `int` operations).
- Catching this exception helps prevent unpredictable behavior in arithmetic-heavy programs.

---
