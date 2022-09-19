import 'package:flutter/material.dart';
import 'package:movies_app/screen/searchpage.dart';
import 'package:movies_app/utils/theme.dart';
import 'package:movies_app/widgets/list_tile.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.only(left: 24),
          child: ListView(
            children: [
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(TextSpan(
                      text: 'Moviez',
                      style: title.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 28),
                      children: [
                        TextSpan(
                            text: '\nWatch much easier',
                            style: subtitle.copyWith(
                              fontSize: 16,
                            ))
                      ])),
                  Container(
                    width: 45,
                    height: 55,
                    padding: const EdgeInsets.all(11),
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: const BorderRadius.horizontal(
                            left: Radius.circular(28))),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Searchpage(),
                              ));
                        },
                        icon: const Icon(
                          Icons.search,
                          size: 22,
                        )),
                  )
                ],
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 279,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 75,
                      child: Column(
                        children: [
                          Container(
                            width: 356,
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                    image: AssetImage("assets/card_big.png"),
                                    fit: BoxFit.cover)),
                          ),
                          const SizedBox(height: 14),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text.rich(TextSpan(
                                  text: 'Jhon Wick 4',
                                  style: title.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                  children: [
                                    TextSpan(
                                        text: '\nAction, Crime',
                                        style: subtitle.copyWith(
                                          fontSize: 16,
                                        ))
                                  ])),
                              Row(
                                children: [
                                  Image.asset("assets/ic_star.png",
                                      width: 18, height: 18),
                                  Image.asset("assets/ic_star.png",
                                      width: 18, height: 18),
                                  Image.asset("assets/ic_star.png",
                                      width: 18, height: 18),
                                  Image.asset("assets/ic_star.png",
                                      width: 18, height: 18),
                                  Image.asset("assets/ic_star.png",
                                      width: 18, height: 18),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 24),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 75,
                      child: Column(
                        children: [
                          Container(
                            width: 356,
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                    image: AssetImage("assets/card_big2.png"),
                                    fit: BoxFit.cover)),
                          ),
                          const SizedBox(height: 14),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text.rich(TextSpan(
                                  text: 'Bohemian',
                                  style: title.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                  children: [
                                    TextSpan(
                                        text: '\nDocumentary',
                                        style: subtitle.copyWith(
                                          fontSize: 16,
                                        ))
                                  ])),
                              Row(
                                children: [
                                  Image.asset("assets/ic_star.png",
                                      width: 18, height: 18),
                                  Image.asset("assets/ic_star.png",
                                      width: 18, height: 18),
                                  Image.asset("assets/ic_star.png",
                                      width: 18, height: 18),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 24),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'From Disney',
                style:
                    title.copyWith(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(height: 20),
              ItemList(
                  "assets/card_small.png", "Mulan Session", "History, War", 3),
              const SizedBox(height: 30),
              ItemList(
                  "assets/card_small2.png", "Beauty & Beast", "Sci-Fiction", 4),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
