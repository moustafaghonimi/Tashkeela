class Player {
  final String name;
  final String nationality;
  final String imageUrl;
  final String description;

  Player({
    required this.name,
    required this.nationality,
    required this.imageUrl,
    required this.description,
  });

  factory Player.fromJson(Map<String, dynamic> json) {
    return Player(
      name: json['name'],
      nationality: json['nationality'],
      imageUrl: json['image_url'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'nationality': nationality,
      'image_url': imageUrl,
      'description': description,
    };
  }
}
