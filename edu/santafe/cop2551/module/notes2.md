✍️ Step 2: Create a Method with No Parameters and No Return Value
Create a method named DisplayWelcomeMessage() that:

Takes no arguments

Returns nothing

Prints a welcome message to the user

📌 Call it at the beginning of Main().

✍️ Step 3: Method with Multiple Parameters and No Return Value
Create a method named DisplayBoxDetails(double height, double width, double depth) that:

Takes three double parameters

Returns nothing

Prints the box dimensions in a formatted way

📌 Call it right after getting the dimensions but before calculating volume.

✍️ Step 4: Method with Optional Parameters
Create a method named AskToContinue(string prompt = "Would you like to calculate another box volume? (yes/no): ") that:

Accepts one optional string parameter

Returns a bool depending on the user’s input ("yes" or "no")

📌 Use this method in a loop in Main() to allow repeated calculations.

✍️ Step 5: Method with Return Value and No Parameters
Create a method named GetUserName() that:

Accepts no parameters

Returns a string

Prompts the user to enter their name and returns it

📌 Use it at the beginning of Main() to greet the user by name.

✨ BONUS (Optional):
Add a method to calculate surface area of the box and display both surface area and volume.

csharp
Copy
Edit
static double CalculateSurfaceArea(double height, double width, double depth)
{
    return 2 * (height * width + width * depth + height * depth);
}
