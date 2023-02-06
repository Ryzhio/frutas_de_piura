import 'package:flutter/material.dart';
import 'package:frutas_de_piura/screens/home/menu_home.dart/clientes_home/finales_home/reportes_home/r_client_home/r_client_home.dart';
import 'package:google_fonts/google_fonts.dart';

class ReportesHome extends StatelessWidget {
  const ReportesHome({super.key});

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
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RClientHome()));
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                      child: Container(
                        alignment: Alignment.center,
                        width: 350,
                        height: 30,
                        child: const Text(
                          'AGRÍCOLA TERESITA SPA',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RClientHome()));
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                      child: Container(
                        alignment: Alignment.center,
                        width: 350,
                        height: 30,
                        child: const Text(
                          'ALDAYS PRODUCE INC',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RClientHome()));
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                      child: Container(
                        alignment: Alignment.center,
                        width: 350,
                        height: 30,
                        child: const Text(
                          'AMAZON PRODUCE NETWORK OF CALIFORNIA, LLC',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RClientHome()));
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                      child: Container(
                        alignment: Alignment.center,
                        width: 350,
                        height: 30,
                        child: const Text(
                          'AYCO FARMS',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RClientHome()));
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                      child: Container(
                        alignment: Alignment.center,
                        width: 350,
                        height: 30,
                        child: const Text(
                          'C.H. ROBINSON COMPANY, INC',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RClientHome()));
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                      child: Container(
                        alignment: Alignment.center,
                        width: 350,
                        height: 30,
                        child: const Text(
                          'CONTINENTAL FRESH LLC',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RClientHome()));
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                      child: Container(
                        alignment: Alignment.center,
                        width: 350,
                        height: 30,
                        child: const Text(
                          'EOSTA B.V.',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RClientHome()));
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                      child: Container(
                        alignment: Alignment.center,
                        width: 350,
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
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RClientHome()));
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                      child: Container(
                        alignment: Alignment.center,
                        width: 350,
                        height: 30,
                        child: const Text(
                          'HIPERMERCADOR TOTTUS S.A.',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RClientHome()));
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                      child: Container(
                        alignment: Alignment.center,
                        width: 350,
                        height: 30,
                        child: const Text(
                          'METRO ONTARIO',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RClientHome()));
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                      child: Container(
                        alignment: Alignment.center,
                        width: 350,
                        height: 30,
                        child: const Text(
                          'METRO RICHELIEU INC',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RClientHome()));
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                      child: Container(
                        alignment: Alignment.center,
                        width: 350,
                        height: 30,
                        child: const Text(
                          'MEX Y CAN TRADING',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RClientHome()));
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                      child: Container(
                        alignment: Alignment.center,
                        width: 350,
                        height: 30,
                        child: const Text(
                          'PACIFIC PRODUCE LTD',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                    child: Container(
                      alignment: Alignment.center,
                      width: 350,
                      height: 30,
                      child: const Text(
                        'SPECIAL FRUIT NV',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                    child: Container(
                      alignment: Alignment.center,
                      width: 350,
                      height: 30,
                      child: const Text(
                        'AGRÍCOLA TERESITA SPA',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                    child: Container(
                      alignment: Alignment.center,
                      width: 350,
                      height: 30,
                      child: const Text(
                        'MISSION PRODUCE, INC',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                    child: Container(
                      alignment: Alignment.center,
                      width: 350,
                      height: 30,
                      child: const Text(
                        'METRO ONTARIO',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
