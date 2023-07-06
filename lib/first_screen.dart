import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<Map> data = [
    {
      "image": "assets/images/subcategorias.png",
      "information": "Subcategorías",
      "text": "Explora y selecciona tu\ncontenido favorito.",
    },
    {
      "image": "assets/images/favoritos.png",
      "information": "Favoritos",
      "text": "Tu lista de canales y videos\npreferidos en un sólo lugar.",
    },
    {
      "image": "assets/images/comunidates.png",
      "information": "Comunidades",
      "text": "Explora el mundo del stream,\nconecta, chatea y haz parte.",
    },
    {
      "image": "assets/images/historial.png",
      "information": "Historial",
      "text": "Encuentra el listado de los\núltimos canales que visitaste.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181933),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xff8574EB),
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Image.asset(
                      'assets/images/Ikbal.png',
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Image.asset('assets/images/lock.png', height: 35),
                const Text(
                  "SafeStream",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Color(0xff767BFF),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                const Icon(
                  Icons.search_outlined,
                  color: Colors.white,
                ),
                Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Color(0x1a767bff),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset(
                        'assets/images/horrizanal_line.png',
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              color: const Color(0x26767BFF),
              child: const Row(
                children: [
                  Icon(
                    Icons.navigate_before_rounded,
                    size: 40,
                    color: Colors.white,
                  ),
                  Text(
                    "Menú",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.white,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 90,
              color: const Color(0x4D767BFF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/agustin.png',
                    height: 75,
                    width: 75,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 16, right: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Agustín",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "8 años",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            color: Color(0xffBDBDBD),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "Cambiar perfil",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      color: Color(0xff767BFF),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 470,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: Container(
                          height: 90,
                          decoration: BoxDecoration(
                              color: index == 0
                                  ? const Color(0xff95D3FF)
                                  : index == 1
                                      ? const Color(0xffEDAF82)
                                      : index == 2
                                          ? const Color(0xffCC90FC)
                                          : const Color(0xffFFD585),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12))),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(data[index]["image"], height: 98),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Text(
                                      data[index]["information"],
                                      style: const TextStyle(
                                        fontFamily: "Poppins",
                                        color: Color(0xff181933),
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      data[index]["text"],
                                      style: const TextStyle(
                                        fontFamily: "Poppins",
                                        color: Color(0xff26273F),
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: const Color(0xff26273F),
                                          width: 3)),
                                  child: const Icon(
                                    Icons.navigate_next,
                                    size: 40,
                                    color: Color(0xff26273F),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  itemCount: data.length),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
          height: 55,
          color: const Color(0xff5960F3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(Icons.home_outlined, size: 25, color: Colors.white),
              const VerticalDivider(
                color: Color(0xffE6E6E6),
                thickness: 1,
                indent: 15,
                endIndent: 15,
              ),
              const Icon(Icons.notifications_none_outlined,
                  size: 25, color: Colors.white),
              const VerticalDivider(
                color: Color(0xffE6E6E6),
                thickness: 1,
                indent: 15,
                endIndent: 15,
              ),
              const Icon(Icons.favorite_border_outlined,
                  size: 25, color: Colors.white),
              const VerticalDivider(
                color: Color(0xffE6E6E6),
                thickness: 1,
                indent: 15,
                endIndent: 15,
              ),
              Image.asset('assets/images/person.png', height: 20, width: 20),
            ],
          )),
    );
  }
}
