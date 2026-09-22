import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/usuario.dart';

class UsuarioService {

  final String url = 'https://jsonplaceholder.typicode.com/users';

  Future<List<Usuario>> getUsuarios() async {

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {

      List dados = jsonDecode(response.body);

      return dados
          .map((usuario) => Usuario.fromMap(usuario))
          .toList();

    } else {
      throw Exception('Erro ao buscar usuários');
    }
  }
}