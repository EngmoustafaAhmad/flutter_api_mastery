void main() {
  try {
    int result = divide(10, 0);
    print(result);
  } catch (e) {
    print("Error occurred: $e");
  } finally {
    print("Execution finished");
  }
}

int divide(int a, int b) {
  if (b == 0) {
    throw Exception("Cannot divide by zero");
  }
  return a ~/ b;
}
