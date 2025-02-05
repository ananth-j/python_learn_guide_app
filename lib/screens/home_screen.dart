import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../utils/master_data_list.dart';
import 'menu_screen.dart';
import '../widgets/main_title_tail.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          //App Bar
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              // color: appBarBgColor1,
              gradient: appbarGradient,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(19),
                  bottomRight: Radius.circular(19)),
            ),
            child: SafeArea(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Spacer(),
                Image.asset(
                  'assets/py_png (1).png',
                  repeat: ImageRepeat.noRepeat,
                  width: 35,
                  height: 35,
                ),
                const Spacer(
                  flex: 5,
                ),
                Text(
                  "LEARN PYTHON",
                  style: GoogleFonts.zenKurenaido(
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 48, 48, 48)),
                ),
                const Spacer(
                  flex: 5,
                ),
                // GestureDetector(
                //   onTap: () {
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const MenuScreen()));
                //   },
                //   child: Image.asset(
                //     'assets/menu-bar.png',
                //     repeat: ImageRepeat.noRepeat,
                //     width: 35,
                //     height: 35,
                //   ),
                // ),

                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SettingsPage()));
                    },
                    icon: const Icon(
                      Icons.menu,
                      size: 30,
                      color: Colors.white,
                    )),
                const SizedBox(
                  width: 15,
                )
              ],
            )),
          ),

          // Body
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(gradient: bodyBgGradient),
              child: ListView.builder(
                padding: EdgeInsets.all(0),
                itemCount: masterList.length,
                itemBuilder: (context, index) {
                  var data = masterList[index];
                  return MainTitleTail(
                    data: data,
                    title: data[1][1],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
