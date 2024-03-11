import 'package:app_delivery/app/core/ui/helpers/loader_mixin.dart';
import 'package:app_delivery/app/core/ui/widgets/custom_appbar.dart';
import 'package:app_delivery/app/models/product_model.dart';
import 'package:app_delivery/app/pages/home/widgets/delivery_product_tile.dart';
import 'package:flutter/material.dart';

import '../../core/ui/helpers/messages_mixin.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with LoaderMixin, MessagesMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // showLoader();
          // await Future.delayed(
          //   const Duration(seconds: 2),
          // );
          // hideLoader();
          showError('Erro ao criar qualquer coisa');
          await Future.delayed(
            const Duration(seconds: 2),
          );
          showInfo('Info ao criar qualquer coisa');
          await Future.delayed(
            const Duration(seconds: 2),
          );
          showSucess('Sucess ao criar qualquer coisa');
        },
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return DeliveryProductTile(
                  product: ProductModel(
                    id: 0,
                    name: 'Sushi X',
                    description:
                        'O prato traz tiras finas de peixe cru, geralmente salmão, atum e outros peixes. Não é consumido com arroz, mas pode ser acompanhado de alga, molho shoyu e wasabi',
                    price: 25.00,
                    image:
                        'https://i.ytimg.com/vi/0Fea2vwfnN8/maxresdefault.jpg',
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
