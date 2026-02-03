// Entity
class User {
  final String id;
  final String name;
  User({required this.id, required this.name});
}

// Repository interface
abstract class UserRepository {
  Future<User> getUser(String id);
}

// UseCase
class GetUserProfile {
  final UserRepository repository;
  GetUserProfile(this.repository);

  Future<User> call(String id) {
    return repository.getUser(id);
  }
}
