void handleResponse(int statusCode) {
  switch (statusCode) {
    case 200:
      print("Success");
      break;
    case 400:
      print("Bad Request");
      break;
    case 401:
      print("Unauthorized");
      break;
    case 404:
      print("Not Found");
      break;
    case 500:
      print("Server Error");
      break;
    default:
      print("Unknown Error");
  }
}

void main() {
  handleResponse(404);
}
