import 'package:flutter/material.dart';
import 'package:frutas_de_piura/models/clients.dart';
import 'package:frutas_de_piura/screens/home/menu_home.dart/clientes_home/finales_home/envio_home/envio_home.dart';

class ClientTile extends StatefulWidget {
  const ClientTile({super.key, required this.client});
  final Client client;

  @override
  State<ClientTile> createState() => _ClientTileState();
}

class _ClientTileState extends State<ClientTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Material(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green,
              child: Container(
                alignment: Alignment.bottomCenter,
                width: 230,
                height: 23,
                child: Text(
                  widget.client.clientTitle!,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EnvioHome(),
                  ),
                );
              },
              child: Material(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  width: 130,
                  height: 23,
                  child: Text(
                    widget.client.envio!,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }
}
