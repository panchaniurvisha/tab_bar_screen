import 'package:flutter/material.dart';
import 'package:tab_bar_screen/common_widget/app_divider.dart';
import 'package:tab_bar_screen/common_widget/app_row.dart';
import 'package:tab_bar_screen/common_widget/app_text.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.arrow_back_rounded,
                        color: Color(0xff000000),
                        size: 30,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      AppText(
                        text: 'Art',
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 37,
                  ),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50),
                        child: Image.asset('assets/images/Rectangle.png'),
                      ),
                      Image.asset('assets/images/Mask group.png',
                          height: 112, width: 112),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const AppText(
                    text: 'Explore art',
                    textAlign: TextAlign.center,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff000000),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const AppText(
                        text:
                            'Lorem Ipsum has been the industry dummy \ntext ever since the 1500s, when an unknown',
                        color: Color(0xff434343),
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          AppText(
                            text: 'printer.',
                            color: Color(0xff434343),
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                          AppText(
                            text: 'Read more....',
                            color: Color(0xff4353FF),
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 90, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/Group.png',
                          height: 20,
                          width: 20,
                        ),
                        Image.asset(
                          'assets/images/Vector1.png',
                          height: 15.7,
                          width: 21.97,
                        ),
                        Image.asset(
                          'assets/images/Vector2.png',
                          height: 20,
                          width: 20,
                        ),
                        Image.asset(
                          'assets/images/Vector3.png',
                          height: 20,
                          width: 20,
                        ),
                        Image.asset(
                          'assets/images/Send.png',
                          height: 20,
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  const AppDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: const [
                          AppText(
                            text: '1ok',
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                          AppText(
                            text: 'items',
                            color: Color(0xff636362),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                        child: VerticalDivider(
                          color: Color(0xffEEEEEE),
                          thickness: 2,
                        ),
                      ),
                      Column(
                        children: const [
                          AppText(
                            text: '4.7k',
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                          AppText(
                            text: 'owners',
                            color: Color(0xff636362),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                        child: VerticalDivider(
                          color: Color(0xffEEEEEE),
                          thickness: 2,
                        ),
                      ),
                      Column(
                        children: const [
                          AppText(
                            text: '0.875',
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                          AppText(
                            text: 'flood price',
                            color: Color(0xff636362),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                        child: VerticalDivider(
                          color: Color(0xffEEEEEE),
                          thickness: 2,
                        ),
                      ),
                      Column(
                        children: const [
                          AppText(
                            text: '299k',
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                          AppText(
                            text: 'total',
                            color: Color(0xff636362),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TabBar(
                        labelColor: const Color(0xff9F9E9E),
                        isScrollable: true,
                        unselectedLabelColor: const Color(0xff9F9E9E),
                        indicatorColor: const Color(0xff4353FF),
                        indicatorSize: TabBarIndicatorSize.tab,
                        tabs: [
                          Tab(
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/Group 58.png',
                                  height: 15,
                                  width: 15,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const AppText(
                                  text: 'Ranking',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff9F9E9E),
                                ),
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/activity 1.png',
                                  height: 15,
                                  width: 15,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const AppText(
                                  text: 'Activity',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4353FF),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 32,
                        width: 155,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xff4353FF),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            AppText(
                              text: 'Last 30 Days',
                              color: Color(0xff4353FF),
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                            Icon(
                              Icons.arrow_drop_down_outlined,
                              size: 30,
                              color: Color(0xff4353FF),
                            )
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          AppText(
                            text: '30 Days Avarage Price',
                            color: Color(0xff636362),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          AppText(
                            text: '12,765',
                            color: Color(0xff4353FF),
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          AppText(
                            text: '750',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          AppText(
                            text: '500',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          AppText(
                            text: '250',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          AppText(
                            text: '100',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          AppText(
                            text: '50',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          AppText(
                            text: '10',
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'assets/images/Vector 3.png',
                        height: 195,
                        width: 292,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      AppText(
                        text: 'Nov 23',
                      ),
                      AppText(
                        text: 'Nov 30',
                      ),
                      AppText(
                        text: 'Dec 03',
                      ),
                      AppText(
                        text: 'Dec 13',
                      ),
                      AppText(
                        text: 'Dec 20',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const AppRow(
                    image: 'assets/images/Group 150.png',
                    height: 15,
                    width: 9,
                  ),
                  const SizedBox(
                    height: 39,
                  ),
                  const AppRow(
                    image: 'assets/images/Group 150.png',
                    height: 15,
                    width: 9,
                  ),
                  const AppDivider(),
                  const AppRow(
                    image: 'assets/images/Vector5.png',
                    height: 12,
                    width: 15,
                  ),
                  const AppDivider(),
                  const AppRow(
                    image: 'assets/images/Group 150.png',
                    height: 15,
                    width: 9,
                  ),
                  const AppDivider(),
                  const AppRow(
                    image: 'assets/images/Vector5.png',
                    height: 12,
                    width: 15,
                  ),
                  const SizedBox(
                    height: 39,
                  ),
                  const AppRow(
                    image: 'assets/images/Group 150.png',
                    height: 15,
                    width: 9,
                  ),
                  const SizedBox(
                    height: 39,
                  ),
                  const AppRow(
                    image: 'assets/images/Group 150.png',
                    height: 15,
                    width: 9,
                  ),
                  const AppDivider(),
                  const AppRow(
                    image: 'assets/images/Vector5.png',
                    height: 12,
                    width: 15,
                  ),
                  const AppDivider(),
                  const AppRow(
                    image: 'assets/images/Group 150.png',
                    height: 15,
                    width: 9,
                  ),
                  const AppDivider(),
                  const AppRow(
                    image: 'assets/images/Vector5.png',
                    height: 12,
                    width: 15,
                  ),
                  const AppDivider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
