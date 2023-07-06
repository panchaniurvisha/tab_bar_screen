import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class TrackOrder extends StatefulWidget {
  const TrackOrder({Key? key}) : super(key: key);

  @override
  State<TrackOrder> createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  List<String> data = [
    "Ready to Pickup\n04-02-2020 17:30",
    "Order Processed\n02-02-2020 09:30",
    "Order Placed\n28-01-2020 11:30",
    "Order Confirmed\n12-02-2020 08:00",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Color(0xff1E1E1E),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      "Track Order",
                      style: TextStyle(
                        color: Color(0xff1E1E1E),
                        fontFamily: "Poppins",
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset('assets/images/track_order_shooes.png'),
                    Container(
                      height: 61,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff1E1E1E),
                              Color(0x33ffffff),
                            ],
                          ),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          color: Color(0x1affffff)),
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Text(
                              "Order ID:",
                              style: TextStyle(
                                color: Color(0xff1E1E1E),
                                fontFamily: "Poppins",
                                fontSize: 12,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "11AR-F841",
                              style: TextStyle(
                                color: Color(0xff1E1E1E),
                                fontFamily: "Poppins",
                                fontSize: 14,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "\$841.00",
                              style: TextStyle(
                                color: Color(0xff1E1E1E),
                                fontFamily: "Poppins",
                                fontSize: 14,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                ListView.separated(
                  padding: const EdgeInsets.only(top: 40, bottom: 40),
                  itemCount: data.length,
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 80,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(5),
                    color: index == 0 || index == 1
                        ? const Color(0xffA1A1A1)
                        : const Color(0xff003A00),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        data[index],
                        style: TextStyle(
                          color: index == 0 || index == 1
                              ? const Color(0xffA1A1A1)
                              : const Color(0xff1E1E1E),
                          fontFamily: "Poppins",
                          fontSize: 12,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xffF5F5F5),
                          blurRadius: 40,
                          offset: Offset(0, 15))
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/track_order_home.png',
                      height: 20,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Delivery Address",
                          style: TextStyle(
                            color: Color(0xff1E1E1E),
                            fontFamily: "Poppins",
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "4517 Washington Ave. Manchester, Kentucky\n39495",
                          style: TextStyle(
                            color: Color(0xff1E1E1E),
                            fontFamily: "Poppins",
                            fontSize: 12,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xffF5F5F5),
                          blurRadius: 40,
                          offset: Offset(0, 15))
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/track_order_smily_star.png',
                        height: 20,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Write a Review",
                            style: TextStyle(
                              color: Color(0xffA1A1A1),
                              fontFamily: "Poppins",
                              fontSize: 14,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "Write a review to the store",
                            style: TextStyle(
                              color: Color(0xffA1A1A1),
                              fontFamily: "Poppins",
                              fontSize: 12,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
