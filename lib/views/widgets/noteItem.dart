import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class noteItem extends StatelessWidget {
  const noteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 20,
        left: 16,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xffFCCB72)),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Flutter Tips",
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.black,
                        fontWeight: FontWeight.w500)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.trash,
                      color: Colors.black,
                    ))
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "build Your carrier with Elsp3awey",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black.withOpacity(0.4),
                  fontWeight: FontWeight.w400),
            ),
            // ListTile(
            //   trailing: IconButton(
            //       onPressed: () {},
            //       icon: const Icon(
            //         FontAwesomeIcons.trash,
            //         color: Colors.black,
            //       )),
            //   title: const Padding(
            //     padding: EdgeInsets.only(top: 24),
            //     child: Text(
            //       "Flutter Tips",
            //       style: TextStyle(
            //           fontSize: 26,
            //           color: Colors.black,
            //           fontWeight: FontWeight.w500),
            //     ),
            //   ),
            //   subtitle: Padding(
            //     padding: const EdgeInsets.only(
            //       top: 16,
            //     ),
            //     child: Text(
            //       "build Your carrier with Elsp3awey",
            //       style: TextStyle(
            //           fontSize: 20,
            //           color: Colors.black.withOpacity(0.4),
            //           fontWeight: FontWeight.w400),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(right: 16, top: 16),
              child: Text(
                "May21 , 2022",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.4),
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
