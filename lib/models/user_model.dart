class UserModel {
  int id;
  String name;
  String email;
  String username;
  String profilPhotoUrl;
  String token;

  UserModel({this.id, this.name, this.email, this.profilPhotoUrl, this.token});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    profilPhotoUrl = json['profil_photo_url'];
    token = json['token'];

    Map<String, dynamic> toJson() {
      return {
        'id': id,
        'name': name,
        'username': username,
        'email': email,
        'profil_photo_url': profilPhotoUrl,
        'token': token,
      };
    }
  }
}
