class User {
  final String name;
  final int age;
  final List<String> job;

  User({required this.name, required this.age, required this.job});

  User copyWith({String? name, int? age, List<String>? job}) {
    return User(
      name: name ?? this.name,
      age: age ?? this.age,
      job: job ?? this.job,
    );
  }
}
