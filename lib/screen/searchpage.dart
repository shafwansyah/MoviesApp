import 'package:flutter/material.dart';
import 'package:movies_app/utils/theme.dart';
import 'package:movies_app/widgets/list_tile.dart';

class Searchpage extends StatelessWidget {
  const Searchpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 39),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 45,
              decoration: BoxDecoration(
                  color: white, borderRadius: BorderRadius.circular(20)),
              child: TextFormField(
                style: title.copyWith(fontSize: 16),
                decoration: InputDecoration(
                  hintText: "Search ...",
                  prefixIcon: Icon(Icons.search, size: 22, color: darkBlue),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 35),
            Text.rich(TextSpan(
                text: "Search Result",
                style:
                    title.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                children: [
                  TextSpan(text: " (3)", style: title.copyWith(fontSize: 16))
                ])),
            const SizedBox(height: 20),
            Expanded(
                child: ListView(
              children: [
                ItemList("assets/card_small3.png", "The Dark II", "Horror", 4),
                const SizedBox(height: 30),
                ItemList(
                    "assets/card_small4.png", "The Dark Knight", "Heroes", 5),
                const SizedBox(height: 30),
                ItemList(
                    "assets/card_small5.png", "The Dark Tower", "Action", 4),
                const SizedBox(height: 30),
              ],
            )),
            const SizedBox(height: 30),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(37)),
                      backgroundColor: darkBlue,
                      minimumSize: const Size(220, 50)),
                  child: Text(
                    'Suggest Movie',
                    style: whiteText.copyWith(fontSize: 16),
                  )),
            ),
          ],
        ),
      )),
    );
  }
}
