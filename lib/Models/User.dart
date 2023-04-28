class User {
  late String name, job, company, image, id;

  User({
    required this.company,
    required this.job,
    required this.image,
    required this.name,
    required this.id,
  });

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json["id"];
    company = json["company"];
    image = json["image"];
    job = json["job"];
  }

  toJson() => {
        "name": name,
        "job": job,
        "image": image,
        "company": company,
      };
}
