class Usuario {
  int id;
  String nome;
  String username;
  String email;
  String telefone;
  String website;

  Usuario({
    required this.id,
    required this.nome,
    required this.username,
    required this.email,
    required this.telefone,
    required this.website,
  });

  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
      id: map['id'],
      nome: map['name'],
      username: map['username'],
      email: map['email'],
      telefone: map['phone'],
      website: map['website'],
    );
  }
}