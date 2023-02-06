import 'package:flutter/material.dart';
import 'package:frutas_de_piura/screens/home/menu_home.dart/clientes_home/finales_home/reportes_home/r_client_home/graficos_home/graficos_home.dart';
import 'package:google_fonts/google_fonts.dart';

class RClientHome extends StatelessWidget {
  const RClientHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 180,
                ),
                Text(
                  'CLIENTES\n  FINALES',
                  style: GoogleFonts.ultra(
                    fontSize: 10,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/final.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green,
                          child: Container(
                            alignment: Alignment.center,
                            width: 200,
                            height: 30,
                            child: const Text(
                              'EXP GROUP LLC',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Row(
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green.shade300,
                          child: Container(
                            alignment: Alignment.center,
                            width: 100,
                            height: 30,
                            child: const Text(
                              'CAMPAÑA 2023',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: 3,
                  color: Colors.black,
                ),
                Container(
                  width: 240,
                  height: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black26,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          'TOTAL DE CAJAS\n   POR CALIBRE',
                          style: GoogleFonts.ultra(
                            fontSize: 10,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'CAL.',
                              style: GoogleFonts.ultra(
                                fontSize: 10,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                width: 40,
                                child: const Text(
                                  '5',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  'CANT. TOTAL',
                                  style: GoogleFonts.ultra(
                                    fontSize: 10,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Material(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    width: 40,
                                    child: const Text(
                                      '0',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'CAL.',
                              style: GoogleFonts.ultra(
                                fontSize: 10,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                width: 40,
                                child: const Text(
                                  '5',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  'CANT. TOTAL',
                                  style: GoogleFonts.ultra(
                                    fontSize: 10,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Material(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    width: 40,
                                    child: const Text(
                                      '0',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'CAL.',
                              style: GoogleFonts.ultra(
                                fontSize: 10,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                width: 40,
                                child: const Text(
                                  '5',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  'CANT. TOTAL',
                                  style: GoogleFonts.ultra(
                                    fontSize: 10,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Material(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    width: 40,
                                    child: const Text(
                                      '0',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'CAL.',
                              style: GoogleFonts.ultra(
                                fontSize: 10,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                width: 40,
                                child: const Text(
                                  '5',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  'CANT. TOTAL',
                                  style: GoogleFonts.ultra(
                                    fontSize: 10,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Material(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    width: 40,
                                    child: const Text(
                                      '0',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'CAL.',
                              style: GoogleFonts.ultra(
                                fontSize: 10,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                width: 40,
                                child: const Text(
                                  '5',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  'CANT. TOTAL',
                                  style: GoogleFonts.ultra(
                                    fontSize: 10,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Material(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    width: 40,
                                    child: const Text(
                                      '0',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'CAL.',
                              style: GoogleFonts.ultra(
                                fontSize: 10,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                width: 40,
                                child: const Text(
                                  '5',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  'CANT. TOTAL',
                                  style: GoogleFonts.ultra(
                                    fontSize: 10,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Material(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    width: 40,
                                    child: const Text(
                                      '0',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'CAL.',
                              style: GoogleFonts.ultra(
                                fontSize: 10,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                width: 40,
                                child: const Text(
                                  '5',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  'CANT. TOTAL',
                                  style: GoogleFonts.ultra(
                                    fontSize: 10,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Material(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    width: 40,
                                    child: const Text(
                                      '0',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'CAL.',
                              style: GoogleFonts.ultra(
                                fontSize: 10,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                width: 40,
                                child: const Text(
                                  '5',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  'CANT. TOTAL',
                                  style: GoogleFonts.ultra(
                                    fontSize: 10,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Material(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    width: 40,
                                    child: const Text(
                                      '0',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'TOTAL DE CAJAS',
                              style: GoogleFonts.ultra(
                                fontSize: 10,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                width: 60,
                                child: const Text(
                                  '90,345',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'GRÁFICAS      ',
                      style: GoogleFonts.ultra(
                        fontSize: 12,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const GraficosHome()));
                      },
                      child: Image.asset(
                        'assets/graficos.png',
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'DESCARGAR EXCEL      ',
                      style: GoogleFonts.ultra(
                        fontSize: 12,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        'assets/excel.png',
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
