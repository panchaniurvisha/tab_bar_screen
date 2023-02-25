import 'package:flutter/material.dart';

class AppRow extends StatelessWidget {
  final String? image;
  final double? height, width;
  const AppRow({Key? key, this.image, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/Rectangle 111.png',
          height: 60,
          width: 60,
        ),
        const SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'crypto boom',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xff636362),
                  fontStyle: FontStyle.normal,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins'),
            ),
            Row(
              children: [
                const Text(
                  'Crypto Raptors',
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins'),
                ),
                Image.asset(
                  'assets/images/Vector4.png',
                  height: 13,
                  width: 13,
                ),
              ],
            ),
            const Text(
              '+ more',
              style: TextStyle(
                  color: Color(0xff636362),
                  fontStyle: FontStyle.normal,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins'),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              'sale',
              textAlign: TextAlign.end,
              style: TextStyle(
                  color: Color(0xff636362),
                  fontStyle: FontStyle.normal,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins'),
            ),
            Row(
              children: [
                Image.asset(
                  image!,
                  height: height!,
                  width: width!,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  '0.875',
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontStyle: FontStyle.normal,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins'),
                ),
              ],
            ),
            const Text(
              '10 seconds ago..',
              style: TextStyle(
                  color: Color(0xff636362),
                  fontStyle: FontStyle.normal,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins'),
            ),
          ],
        ),
      ],
    );
  }
}
