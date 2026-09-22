import 'package:dicionario_api/services/usuario.service.dart';

void main() async {
  var service = UsuarioService();

  try {
    var usuarios = await service.getUsuarios();

    for (var usuario in usuarios) {
      print('ID: ${usuario.id}');
      print('Nome: ${usuario.nome}');
      print('Username: ${usuario.username}');
      print('Email: ${usuario.email}');
      print('Telefone: ${usuario.telefone}');
      print('Website: ${usuario.website}');
      print('-------------------------');
    }
  } catch (erro) {
    print('Erro ao buscar usuários: $erro');
  }
}