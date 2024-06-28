import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Search",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xff27272E)),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 14,
          ),
        ),
      ),
      body: Column(
        children: [
          const Divider(
            color: Color(0xffE9E9ED),
          ),
          Expanded(

            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, i) {
                  return getNewsWidget(context);
                }),
          )
        ],
      ),
    );
  }

  Widget getNewsWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/images/header_img.png',
              height: 200,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  'assets/images/img.png',
                  height: 36,
                  width: 36,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "A protester carries the Confederate flag after breaching US Capitol security",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff323232)),
                    ),
                    Text(
                      "5 hours ago    |     News18",
                      style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff464646)),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/images/like.png',
                height: 24,
                width: 24,
              ),
              Image.asset(
                'assets/images/bookmark.png',
                height: 24,
                width: 24,
              ),
              Image.asset(
                'assets/images/copy.png',
                height: 24,
                width: 24,
              ),
              Image.asset(
                'assets/images/share.png',
                height: 24,
                width: 24,
              ),
            ],
          ),
          const Divider(
            color: Color(0xffE9E9ED),
          )
        ],
      ),
    );
  }
}
