# **2025-OBJPROG-LAB005**
Week 02 - Introduction to Java Programming

Laboratory # 05 - Guided Coding Exercise: Utilizing the Java Math API Library

## **Instructions**

### **Step 1.1: Accept the Assignment**

   1. Click on the assignment link provided by your instructor.
   2. GitHub Classroom will create a **private repository** under your GitHub account.
   3. After the repository is created, click **"Go to Repository"** to view your assignment.

---

### **Step 1.2: Setup your Git Environment**
Only perform this if this is the first time you will setup your Git Environment

   1. Create a GitHub Account:
   ```bash
   https://github.com/signup?source=login
   ```
      
   2. Download and Install Git on your Laptop/Desktop:
   ```bash
   https://git-scm.com/downloads
   ```
   
   3. Create a Folder in your Laptop/Desktop
   4. Right-click anywhere in the created folder and select "Open Git Bash Here".
   5. In the Git Bash Terminal, set your git name, perform command:
   ```bash
   git config --global user.name "Your Name"
   ```
   
   6. In the Git Bash Terminal, set your git email, perform command:
   ```bash
   git config --global user.email "your.email@example.com"
   ```
   
   7. Create your SSH Key, just follow the instructions, no need to provide filename and passphrase. In the Git Bash Terminal, perform command:
   ```bash
   ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
   ```
   
   8. Copy your SSH Keys into clipboard. In the Git Bash Terminal, perform command:
   ```bash
   clip < ~/.ssh/id_rsa.pub
   ```
   
   9. Log in to your GitHub account.
   10. In the upper-right corner of GitHub, click your profile picture and select Settings.
   11. In the left sidebar, click on SSH and GPG keys.
   12. Click the New SSH key button.
   13. In the Title field, give the key a recognizable name (e.g., "My Windows Laptop").
   14. In the Key field, CTRL + V or paste the keys copied into your clipboard. Save the key.
   15. Go Back to terminal, use command:
   ```bash
   ssh -T git@github.com
   ```

### **Step 2: Clone the Repository to Your Local Machine**

   1. On your repository page, click the green **"Code"** button.
   2. Copy the repository URL (choose HTTPS for simplicity).
   3. Open your terminal (or Git Bash, Command Prompt, or PowerShell) and run:
   
   ```bash
   git clone <git_repo_url>
   ```
   
   4. Navigate into the cloned folder:
   
   ```bash
   cd <git_cloned_folder>
   ```

### **Step 3: Complete the Assignment**

**Laboratory # 05 - Guided Coding Exercise: Utilizing the Java Math API Library**

   **Objective:**
   - Use basic `Math` library functions such as power, square root, rounding, and generating random numbers.

   **Desired Output:**
   ```txt
   Power: 8.0
   Square Root: 4.0
   Rounded Number: 6
   Random Number: 0.007895794160877712
   ```
   Note: Random Number value may vary.

   **File Naming Convention:**
   - `MathLibraryDemo.java`

   **Notable Observations (to be discussed after completing the exercise):**
   - Math Library Functions: The activity introduces several essential Math library functions: Math.pow() (for exponentiation), Math.sqrt() (for square root), Math.round() (for rounding), and Math.random() (for random number generation). These are commonly used in programming.
   - Return Types: Students should observe the return types of these functions. Math.pow() and Math.sqrt() return double values, while Math.round() returns a long. Math.random() returns a double between 0.0 and 1.0.
   - Randomness: It's important for students to understand that Math.random() generates pseudo-random numbers. They are not truly random, but they are sufficient for many purposes. The output will be different each time the program runs.
   - No Import Needed: The activity reinforces the fact that the java.lang package (which contains the Math class) is automatically imported, so no explicit import statement is required.
   - Application of Math Functions: This exercise provides a practical application of mathematical functions in Java. Students get to see how these functions can be used to perform common calculations.

   **Java Programming Best Practices:**
   - Using the Math Class: The Math class provides many useful mathematical functions. You don't need to import it; it's always available.
   - Math Function Arguments and Return Types: Pay close attention to the data types of arguments you pass to Math functions and the data type of the value they return. For example, Math.pow() returns a double, and Math.round() returns a long.
   - Descriptive Variable Names: Use descriptive names like powerResult, sqrtResult, etc., to make your code more readable.
   - Comments: Add comments to explain what each part of your code does, especially when using unfamiliar functions.
   - Random Number Generation: Math.random() generates a pseudo-random number between 0.0 (inclusive) and 1.0 (exclusive). Remember that each time you run the program, you'll likely get a different random number.
   - Rounding: Math.round() rounds a decimal number to the nearest whole number (a long). Be aware that there are other rounding methods in Java (e.g., Math.floor(), Math.ceil()) that behave differently.
      
   **Step-by-Step Instructions:**

   1. Class and Main Method
      - Create a file named `MathLibraryDemo.java`.
      - Define the class `MathLibraryDemo` and its main method.
      ```Java
      public class MathLibraryDemo {
          public static void main(String[] args) {
      
          }
      }
      ```
      
   2. Calculate Power
      - Declare a double variable named `base`. Initialize it with a number (e.g., 2).
      - Declare an integer variable named `exponent`. Initialize it with a number (e.g., 3).
      - Use `Math.pow(base, exponent)` to calculate the power (base raised to the exponent) and store the result in a double variable named `powerResult`.
      ```Java
      double base = 2;
      int exponent = 3;
      double powerResult = Math.pow(base, exponent);
      ```
            
   3. Calculate Square Root
      - Declare a double variable named `numberForSqrt`. Initialize it with a number (e.g., 16).
      - Use `Math.sqrt(numberForSqrt)` to calculate the square root and store the result in a double variable named `sqrtResult`.
      ```Java
      double numberForSqrt = 16;
      double sqrtResult = Math.sqrt(numberForSqrt);
      ```

   4. Round a Decimal Number
      - Declare a double variable named `decimalNumber`. Initialize it with a decimal value (e.g., 5.67).
      - Use `Math.round(decimalNumber)` to round the decimal number to the nearest whole number (long) and store the result in a long variable named `roundedNumber`.
      ```Java
      double decimalNumber = 5.67;
      long roundedNumber = Math.round(decimalNumber);
      ```

   5. Generate a Random Number
      - Use `Math.random()` to generate a random number between 0.0 (inclusive) and 1.0 (exclusive). Store this random number in a double variable named `randomNumber`.
      ```Java
      double randomNumber = Math.random();
      ```

   6. Output the Results
      - Use `System.out.println()` to display the value of `powerResult` with a descriptive label (e.g., "Power: ").
      - Do the same for `sqrtResult`, `roundedNumber`, and `randomNumber`, each with a clear label.
      ```Java
      System.out.println("Power: " + powerResult);
      System.out.println("Square Root: " + sqrtResult);
      System.out.println("Rounded Number: " + roundedNumber);
      System.out.println("Random Number: " + randomNumber);
      ```

   7. Compile and Run
       - Save the file as `MathLibraryDemo.java`.
       - Compile the code using `javac MathLibraryDemo.java` in your terminal or command prompt.
       - Run the compiled code using `java MathLibraryDemo`.

### **Step 4: Push Changes to GitHub**
Once you've completed your changes, follow these steps to upload your work to your GitHub repository.

1. Check the status of your changes:
   Open the terminal and run:
   
   ```bash
   git status
   ```
   This command shows any modified or new files.
   
2. Stage the changes:
   Add all modified files to staging:
   
   ```bash
   git add .
   ```
   
3. Commit your changes:
   Write a meaningful commit message:
   
   ```bash
   git commit -m "Submitting OBJPROG Week 02 - Session 01 - Exercise 04"
   ```
   
4. Push your changes to GitHub:
   Upload your changes to your remote repository:
   
   ```bash
   git push origin main
   ```
