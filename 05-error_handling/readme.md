# 1. Compile-time Errors

Happen before the app runs

Examples:

Syntax errors

Missing semicolons

Type mismatch

int x = "10"; 
//  compile-time error


>> Fixed by the compiler before running.

# 2. Runtime Errors (Exceptions)

Happen while the app is running

Examples:

Division by zero

Null value access

Index out of range

Handling:
try {
  int result = 10 ~/ 0;
} catch (e) {
  print(e);
}

# 3. Logical Errors

The app runs, but gives wrong results

Example:
int sum(int a, int b) {
  return a - b; 
  //  logic error
}


 Hardest to detect — fixed by testing and debugging.

# 4. API / Network Errors

Happen when communicating with servers

Examples:

No internet

404 / 500 errors

Timeout

Handling:
if (response.statusCode == 200) {
  // success
} else {
  // error
}

# 5. Custom (Business Logic) Errors

Rules specific to your app

Examples:

Invalid email

Weak password

Unauthorized action

Handling:
throw InvalidEmailException("Invalid email");

# 6. Asynchronous Errors

Occur in async/await or Futures

Handling:
try {
  await fetchData();
} catch (e) {
  print(e);
}


OR

fetchData().catchError((e) {
  print(e);
});

# 7. UI / User Input Errors

Caused by invalid user actions

Examples:

Empty fields

Wrong format

Handled using:

Validators

Form validation
