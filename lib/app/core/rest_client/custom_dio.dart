import 'package:dio/dio.dart';
import 'package:dio/io.dart';

import '../config/env/env.dart';

class CustomDio extends DioForNative {
  // Passamos para o DioForNative (Pai) o baseOptions
  CustomDio()
      : super(BaseOptions(
          baseUrl: Env.instance['backend_base_url'] ?? "",
          // Se não receber uma resposta de conexão aceita em até 5s, irá cortar
          connectTimeout: const Duration(seconds: 5),
          // Se não receber uma resposta de conexão em até 60s, irá  levantar uma exception
          receiveTimeout: const Duration(seconds: 60),
        )) {
    // Quando se fizer um acesso a um serviço, ser colocado no Log o que estiver acontecendo
    interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        requestHeader: true,
      ),
    );
  }
  // Temos dois tipos de conexão com o backend, a Autenticada e a não autenticada
  CustomDio auth() {
    return this;
  }

  CustomDio unauth() {
    return this;
  }
}
