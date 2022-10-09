class Location {
  final String icon;
  final String name;

  Location({
    required this.icon,
    required this.name,
  });

  Location copyWith({String? icon, String? name}) {
    return Location(
      icon: icon ?? this.icon,
      name: name ?? this.name,
    );
  }
}
