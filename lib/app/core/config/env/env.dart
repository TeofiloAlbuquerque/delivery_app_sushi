import 'package:flutter_dotenv/flutter_dotenv.dart';
// Encapsulando  dotenv
class Env {
  static Env? _instance;

  Env._();
  static Env get instance => _instance ??= Env._();
  // Carregar as arquivos/variaveis de ambiente para dentro do dotenv
  Future<void> load() => dotenv.load();
  // Leitura de arquivos
  String? operator [](String key) => dotenv.env[key];
}
