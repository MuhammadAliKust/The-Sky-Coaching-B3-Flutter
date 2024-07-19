import 'package:flutter/material.dart';

class BottomSheetView extends StatelessWidget {
  const BottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomSheet"),
      ),
      body: ElevatedButton(
        onPressed: () {
          return;
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        const Text("React"),
                        const SizedBox(
                          height: 20,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Image.asset('assets/images/like.png'),
                                  const Text("Like")
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset('assets/images/like.png'),
                                  const Text("Like")
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset('assets/images/like.png'),
                                  const Text("Like")
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset('assets/images/like.png'),
                                  const Text("Like")
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset('assets/images/like.png'),
                                  const Text("Like")
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset('assets/images/like.png'),
                                  const Text("Like")
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset('assets/images/like.png'),
                                  const Text("Like")
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset('assets/images/like.png'),
                                  const Text("Like")
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset('assets/images/like.png'),
                                  const Text("Like")
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset('assets/images/like.png'),
                                  const Text("Like")
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset('assets/images/like.png'),
                                  const Text("Like")
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset('assets/images/like.png'),
                                  const Text("Like")
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    ));
              });
        },
        child: const Text("Bottom Sheet"),
      ),
    );
  }
}
