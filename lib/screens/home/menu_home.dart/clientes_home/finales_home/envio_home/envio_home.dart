import 'package:flutter/material.dart';
import 'package:frutas_de_piura/widgets/custom_search/custom_search.dart';
import 'package:google_fonts/google_fonts.dart';

class EnvioHome extends StatefulWidget {
  const EnvioHome({super.key});

  @override
  State<EnvioHome> createState() => _EnvioHomeState();
}

class _EnvioHomeState extends State<EnvioHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow.shade200,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
          child: Column(
            children: [
              Row(
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
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'N° ENVIO',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                ],
              ),
              Row(
                children: [
                  const Text(
                    'CLIENTE FINAL :',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Row(
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black38,
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          width: 150,
                          height: 15,
                          child: const Text(
                            'EXP GROUP LLC',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green,
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          width: 100,
                          height: 15,
                          child: const Text(
                            'N° 00001',
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
                height: 40,
              ),
              Row(
                children: [
                  const Text(
                    'PRODUCTOR :',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Row(
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black26,
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          width: 260,
                          height: 15,
                          child: const Text(
                            'VALLADOLID RUIDIAS MARIA ESTHER',
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
                children: [
                  const Text(
                    'EXPORTADOR :',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 260,
                        height: 40,
                        child: CustomSearch(
                          onChanged: (val) {},
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'DETALLES POR EL N° DE ENVIO',
                            style: GoogleFonts.ultra(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      //LINEA DIVISORA 1
                      const Divider(
                        thickness: 3,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'FECHAS DEL TRÁNSITO DE LA NAVE',
                            style: GoogleFonts.ultra(
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'F. EMBARQUE',
                            style: GoogleFonts.ultra(
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            'F. ZARPE',
                            style: GoogleFonts.ultra(
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            'F. ARRIBO',
                            style: GoogleFonts.ultra(
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green,
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              width: 100,
                              height: 15,
                              child: const Text(
                                '27/11/2021',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green,
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              width: 100,
                              height: 15,
                              child: const Text(
                                '04/12/2021',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green,
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              width: 100,
                              height: 15,
                              child: const Text(
                                '27/12/2021',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '   TIEMPO\nTRANSITO',
                            style: GoogleFonts.ultra(
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            'DIAS DE DEMORA\n        EN ARRIBO',
                            style: GoogleFonts.ultra(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green,
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              width: 100,
                              height: 15,
                              child: const Text(
                                '23 DIAS',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green,
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              width: 100,
                              height: 15,
                              child: const Text(
                                '-1',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      //LINEA DIVISORA 2
                      const Divider(
                        thickness: 3,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'DETALLE DE TRÁNSITO',
                            style: GoogleFonts.ultra(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 370,
                            height: 415,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black26,
                            ),
                            child: Container(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, right: 70),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          'PUERTO DE\n    ORIGEN',
                                          style: GoogleFonts.ultra(
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5, right: 55),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Material(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white,
                                          child: Container(
                                            alignment: Alignment.bottomCenter,
                                            width: 100,
                                            height: 15,
                                            child: const Text(
                                              'PAITA',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 70),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'PUERTO DE\n    DESTINO',
                                          style: GoogleFonts.ultra(
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 40),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Material(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white,
                                          child: Container(
                                            alignment: Alignment.bottomCenter,
                                            width: 130,
                                            height: 15,
                                            child: const Text(
                                              'BROOKLYN',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 90),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          'PAIS',
                                          style: GoogleFonts.ultra(
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5, right: 25),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Material(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white,
                                          child: Container(
                                            alignment: Alignment.bottomCenter,
                                            width: 150,
                                            height: 15,
                                            child: const Text(
                                              'ESTADOS UNIDOS',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 70),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'BOOKING',
                                          style: GoogleFonts.ultra(
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 40),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Material(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white,
                                          child: Container(
                                            alignment: Alignment.bottomCenter,
                                            width: 130,
                                            height: 15,
                                            child: const Text(
                                              '6893902',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 70),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          'TIPO DE TEC\n     CONTEN.',
                                          style: GoogleFonts.ultra(
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5, right: 25),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Material(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white,
                                          child: Container(
                                            alignment: Alignment.bottomCenter,
                                            width: 160,
                                            height: 35,
                                            child: const Text(
                                              '     CONTENEDOR 40 RH\n  NORMAL -VENTILADOS',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 60),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'LINEA NAVIERA',
                                          style: GoogleFonts.ultra(
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 40),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Material(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white,
                                          child: Container(
                                            alignment: Alignment.bottomCenter,
                                            width: 130,
                                            height: 15,
                                            child: const Text(
                                              'BROOKLYN',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 55),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          'OPE LOGISTICO',
                                          style: GoogleFonts.ultra(
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5, right: 40),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Material(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white,
                                          child: Container(
                                            alignment: Alignment.bottomCenter,
                                            width: 130,
                                            child: const Text(
                                              '  TRANSTOTAL',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 90),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'DUA',
                                          style: GoogleFonts.ultra(
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 40),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Material(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white,
                                          child: Container(
                                            alignment: Alignment.bottomCenter,
                                            width: 130,
                                            height: 15,
                                            child: const Text(
                                              '54207',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 80),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          'CANAL',
                                          style: GoogleFonts.ultra(
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5, right: 55),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Material(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white,
                                          child: Container(
                                            alignment: Alignment.bottomCenter,
                                            width: 100,
                                            child: const Text(
                                              '  VERDE',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'CONTENIDO DEL CONTENEDOR',
                            style: GoogleFonts.ultra(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'PROPIETARIO:',
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
                                  width: 260,
                                  child: const Text(
                                    'VALLADOLID RUISDIAS MARIA ESTHER',
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
                        height: 10,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                'VARIEDAD:',
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
                                  width: 120,
                                  child: const Text(
                                    'KENT ORGANICO',
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
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'EXPORTADOR:',
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
                                  width: 260,
                                  child: const Text(
                                    'GROUP VILLA SOCIEDAD ANONIMA CERRADA',
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
                        height: 10,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                'TIPO CAJA:',
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
                                  width: 120,
                                  child: const Text(
                                    'CARTON 4.0 KG',
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
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'EMPACADORA:',
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
                                  width: 130,
                                  child: const Text(
                                    'DON PACKING',
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
                        height: 10,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                'PESO CAJA:',
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
                                  width: 120,
                                  child: const Text(
                                    '4.0 KG',
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
                        height: 10,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                'ETIQUETA:',
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
                                  width: 120,
                                  child: const Text(
                                    'BEST',
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
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'CAJA POR CALIBRE',
                            style: GoogleFonts.ultra(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Row(
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
                                            'CANT.',
                                            style: GoogleFonts.ultra(
                                              fontSize: 10,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Material(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              width: 40,
                                              child: const Text(
                                                '',
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
                                    width: 15,
                                  ),
                                  Row(
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
                                            '9',
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
                                            'CANT.',
                                            style: GoogleFonts.ultra(
                                              fontSize: 10,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Material(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              width: 40,
                                              child: const Text(
                                                '338',
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
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Row(
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
                                            'CANT.',
                                            style: GoogleFonts.ultra(
                                              fontSize: 10,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Material(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              width: 40,
                                              child: const Text(
                                                '',
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
                                    width: 15,
                                  ),
                                  Row(
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
                                            '9',
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
                                            'CANT.',
                                            style: GoogleFonts.ultra(
                                              fontSize: 10,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Material(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              width: 40,
                                              child: const Text(
                                                '338',
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
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Row(
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
                                            'CANT.',
                                            style: GoogleFonts.ultra(
                                              fontSize: 10,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Material(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              width: 40,
                                              child: const Text(
                                                '',
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
                                    width: 15,
                                  ),
                                  Row(
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
                                            '9',
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
                                            'CANT.',
                                            style: GoogleFonts.ultra(
                                              fontSize: 10,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Material(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              width: 40,
                                              child: const Text(
                                                '338',
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
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Row(
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
                                            'CANT.',
                                            style: GoogleFonts.ultra(
                                              fontSize: 10,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Material(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              width: 40,
                                              child: const Text(
                                                '',
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
                                    width: 15,
                                  ),
                                  Row(
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
                                            '9',
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
                                            'CANT.',
                                            style: GoogleFonts.ultra(
                                              fontSize: 10,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Material(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              width: 40,
                                              child: const Text(
                                                '338',
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
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Container(
                                    width: 200,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.lightGreen,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          '   N° CAJAS CALIBRE   |',
                                          style: GoogleFonts.ultra(
                                            fontSize: 10,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '   1,224',
                                              style: GoogleFonts.ultra(
                                                fontSize: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Divider(
                        thickness: 3,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'PROPIETARIO:',
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
                                  width: 260,
                                  child: const Text(
                                    'VALLADOLID RUISDIAS MARIA ESTHER',
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
                        height: 10,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                'VARIEDAD:',
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
                                  width: 120,
                                  child: const Text(
                                    'KENT ORGANICO',
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
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'EXPORTADOR:',
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
                                  width: 260,
                                  child: const Text(
                                    'GROUP VILLA SOCIEDAD ANONIMA CERRADA',
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
                        height: 10,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                'TIPO CAJA:',
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
                                  width: 120,
                                  child: const Text(
                                    'CARTON 4.0 KG',
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
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'EMPACADORA:',
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
                                  width: 130,
                                  child: const Text(
                                    'DON PACKING',
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
                        height: 10,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                'PESO CAJA:',
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
                                  width: 120,
                                  child: const Text(
                                    '4.0 KG',
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
                        height: 10,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                'ETIQUETA:',
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
                                  width: 120,
                                  child: const Text(
                                    'BEST',
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
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'CAJA POR CALIBRE',
                            style: GoogleFonts.ultra(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Row(
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
                                            'CANT.',
                                            style: GoogleFonts.ultra(
                                              fontSize: 10,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Material(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              width: 40,
                                              child: const Text(
                                                '',
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
                                    width: 15,
                                  ),
                                  Row(
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
                                            '9',
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
                                            'CANT.',
                                            style: GoogleFonts.ultra(
                                              fontSize: 10,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Material(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              width: 40,
                                              child: const Text(
                                                '338',
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
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Row(
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
                                            'CANT.',
                                            style: GoogleFonts.ultra(
                                              fontSize: 10,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Material(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              width: 40,
                                              child: const Text(
                                                '',
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
                                    width: 15,
                                  ),
                                  Row(
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
                                            '9',
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
                                            'CANT.',
                                            style: GoogleFonts.ultra(
                                              fontSize: 10,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Material(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              width: 40,
                                              child: const Text(
                                                '338',
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
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Row(
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
                                            'CANT.',
                                            style: GoogleFonts.ultra(
                                              fontSize: 10,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Material(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              width: 40,
                                              child: const Text(
                                                '',
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
                                    width: 15,
                                  ),
                                  Row(
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
                                            '9',
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
                                            'CANT.',
                                            style: GoogleFonts.ultra(
                                              fontSize: 10,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Material(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              width: 40,
                                              child: const Text(
                                                '338',
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
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Row(
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
                                            'CANT.',
                                            style: GoogleFonts.ultra(
                                              fontSize: 10,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Material(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              width: 40,
                                              child: const Text(
                                                '',
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
                                    width: 15,
                                  ),
                                  Row(
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
                                            '9',
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
                                            'CANT.',
                                            style: GoogleFonts.ultra(
                                              fontSize: 10,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Material(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              width: 40,
                                              child: const Text(
                                                '338',
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
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Container(
                                    width: 200,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.lightGreen,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          '   N° CAJAS CALIBRE   |',
                                          style: GoogleFonts.ultra(
                                            fontSize: 10,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '   1,224',
                                              style: GoogleFonts.ultra(
                                                fontSize: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Divider(
                        thickness: 3,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'PROPIETARIO:',
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
                                  width: 260,
                                  child: const Text(
                                    'VALLADOLID RUISDIAS MARIA ESTHER',
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
                        height: 10,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                'VARIEDAD:',
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
                                  width: 120,
                                  child: const Text(
                                    'KENT ORGANICO',
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
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'EXPORTADOR:',
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
                                  width: 260,
                                  child: const Text(
                                    'GROUP VILLA SOCIEDAD ANONIMA CERRADA',
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
                        height: 10,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                'TIPO CAJA:',
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
                                  width: 120,
                                  child: const Text(
                                    'CARTON 4.0 KG',
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
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'EMPACADORA:',
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
                                  width: 130,
                                  child: const Text(
                                    'DON PACKING',
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
                        height: 10,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                'PESO CAJA:',
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
                                  width: 120,
                                  child: const Text(
                                    '4.0 KG',
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
                        height: 10,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                'ETIQUETA:',
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
                                  width: 120,
                                  child: const Text(
                                    'BEST',
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
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'CAJA POR CALIBRE',
                            style: GoogleFonts.ultra(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Row(
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
                                            'CANT.',
                                            style: GoogleFonts.ultra(
                                              fontSize: 10,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Material(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              width: 40,
                                              child: const Text(
                                                '',
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
                                    width: 15,
                                  ),
                                  Row(
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
                                            '9',
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
                                            'CANT.',
                                            style: GoogleFonts.ultra(
                                              fontSize: 10,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Material(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              width: 40,
                                              child: const Text(
                                                '338',
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
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Row(
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
                                            'CANT.',
                                            style: GoogleFonts.ultra(
                                              fontSize: 10,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Material(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              width: 40,
                                              child: const Text(
                                                '',
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
                                    width: 15,
                                  ),
                                  Row(
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
                                            '9',
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
                                            'CANT.',
                                            style: GoogleFonts.ultra(
                                              fontSize: 10,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Material(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              width: 40,
                                              child: const Text(
                                                '338',
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
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Row(
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
                                            'CANT.',
                                            style: GoogleFonts.ultra(
                                              fontSize: 10,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Material(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              width: 40,
                                              child: const Text(
                                                '',
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
                                    width: 15,
                                  ),
                                  Row(
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
                                            '9',
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
                                            'CANT.',
                                            style: GoogleFonts.ultra(
                                              fontSize: 10,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Material(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              width: 40,
                                              child: const Text(
                                                '338',
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
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Row(
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
                                            'CANT.',
                                            style: GoogleFonts.ultra(
                                              fontSize: 10,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Material(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              width: 40,
                                              child: const Text(
                                                '',
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
                                    width: 15,
                                  ),
                                  Row(
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
                                            '9',
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
                                            'CANT.',
                                            style: GoogleFonts.ultra(
                                              fontSize: 10,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Material(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              width: 40,
                                              child: const Text(
                                                '338',
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
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Container(
                                    width: 200,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.lightGreen,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          '   N° CAJAS CALIBRE   |',
                                          style: GoogleFonts.ultra(
                                            fontSize: 10,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '   1,224',
                                              style: GoogleFonts.ultra(
                                                fontSize: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
