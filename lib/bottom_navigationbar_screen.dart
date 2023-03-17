import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            leading: const Icon(Icons.sort_rounded, size: 35),
            backgroundColor: const Color(0xff192396),
            actions: [
              Image.asset(
                'assets/images/Icon.png',
                height: 23,
                width: 23,
              ),
              const Icon(
                Icons.notifications_none_outlined,
                size: 35,
              ),
            ],
          ),
          Container(
            height: 68,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Text(
                '¿Cómo está Oliva?',
                style: TextStyle(
                  color: Color(0xffE9E9E9),
                  fontStyle: FontStyle.normal,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Color(0xff192396),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.elliptical(60, 25),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 22,
            ),
            child: Row(
              children: [
                Container(
                  height: 31,
                  width: 78,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text('Alergias',
                        style: TextStyle(
                          color: Color(0xff0B1851),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                        textAlign: TextAlign.center),
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffD1D3EA),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Container(
                  height: 31,
                  width: 122,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text('Enfermedades',
                        style: TextStyle(
                          color: Color(0xff0B1851),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                        textAlign: TextAlign.center),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffD1D3EA),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Container(
                  height: 31,
                  width: 72,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text('Apetito',
                        style: TextStyle(
                          color: Color(0xff0B1851),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                        textAlign: TextAlign.center),
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffD1D3EA),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 94,
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: const Color(0xffFBFBFB),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 15,
                        offset: Offset(0, 4)),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 66,
                        width: 66,
                        decoration: BoxDecoration(
                            color: const Color(0xffEC742F),
                            borderRadius: BorderRadius.circular(14)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 17,
                          ),
                          child: Image.asset('assets/images/Vector.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                                text: 'Carnet de Vacunación\n',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  color: Color(0xff192396),
                                )),
                            TextSpan(
                                text: 'Última vacuna de Oliva\n',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  color: Color(0xff48527D),
                                )),
                            TextSpan(
                                text: 'Rabguard® 25/02/2022',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  color: Color(0xff858BA8),
                                )),
                            WidgetSpan(
                              child: Padding(
                                padding: EdgeInsets.only(right: 30.0),
                              ),
                            ),
                            TextSpan(
                                text: 'Ver más',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  color: Color(0xffEC742F),
                                )),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 22,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'Próximas citas',
              style: TextStyle(
                color: Color(0xff0B1851),
                fontSize: 22,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 94,
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: const Color(0xffFBFBFB),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 15,
                        offset: Offset(0, 4)),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 66,
                        width: 66,
                        decoration: BoxDecoration(
                            color: const Color(0xff535AB0),
                            borderRadius: BorderRadius.circular(14)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 17,
                          ),
                          child: Image.asset('assets/images/Union.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Desparasitación\n',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    color: Color(0xff192396),
                                  )),
                              TextSpan(
                                text: '22/12/2022 - 9:00AM\nLugar: Sazié 2086',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  color: Color(0xff48527D),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 22,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'Mascotas en Adopción',
              style: TextStyle(
                color: Color(0xff0B1851),
                fontSize: 22,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                height: 178,
                width: 174,
                'assets/images/dog.png',
              ),
              Image.asset(
                height: 178,
                width: 174,
                'assets/images/cat.png',
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              height: 30,
              width: 22,
              "assets/images/Home.png",
            ),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Búsqueda',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              height: 30,
              width: 22,
              "assets/images/heart.png",
            ),
            label: 'Salud',
          ),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.pets_rounded,
              ),
              label: 'Mascota'),
        ],
        selectedItemColor: const Color(0xff192396), selectedFontSize: 11,
        unselectedItemColor: const Color(0xff8C91CB),
        iconSize: 30,
        //elevation: 5),
        showUnselectedLabels: true,
        unselectedFontSize: 11,
      ),
    );
  }
}
