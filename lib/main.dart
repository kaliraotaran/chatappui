import 'package:flutter/material.dart';

void main() {
  runApp(const Homepage());
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff171717),
        body: Stack(
          children: [
            Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 28.0, right: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu_rounded,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Message",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        )),
                    const SizedBox(
                      width: 30,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Online",
                          style: TextStyle(color: Colors.grey, fontSize: 24),
                        )),
                    const SizedBox(
                      width: 30,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Groups",
                          style: TextStyle(color: Colors.grey, fontSize: 24),
                        )),
                    const SizedBox(
                      width: 30,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Settings",
                          style: TextStyle(color: Colors.grey, fontSize: 24),
                        )),
                  ],
                ),
              )
            ]),
            Positioned(
                top: 160,
                left: 0,
                right: 0,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  height: 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.green.shade500,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Favourite Contacts',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_horiz,
                                color: Colors.white,
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                          height: 90,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              users('assets/img1.jpeg', 'Alina'),
                              users('assets/img2.jpeg', 'cara'),
                              users('assets/img3.jpeg', 'Vim'),
                              users('assets/img4.jpg', 'Jordan'),
                              users('assets/img5.jpeg', 'Brynn'),
                              users('assets/img6.jpeg', 'James'),
                              users('assets/img7.jpeg', 'Alex'),
                              users('assets/img8.jpg', 'Bttt'),
                            ],
                          ))
                    ],
                  ),
                )),
            Positioned(
              top: 350,
              right: 0,
              left: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.only(top: 6),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: ListView(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  children: const [
                    SizedBox(
                      height: 25,
                    ),
                    message(
                      name: 'Vim',
                      data: 'hey , call me ',
                      img: 'assets/img3.jpeg',
                      time: '9:45 pm',
                      messno: '1',
                    ),
                    message(
                      name: 'Jordan',
                      data: 'Yooooooo!!! ',
                      img: 'assets/img4.jpg',
                      time: '9:00 pm',
                      messno: '1',
                    ),
                    message(
                      name: 'Brynn',
                      data: ' join the meeting  ',
                      img: 'assets/img5.jpeg',
                      time: '8:55 pm',
                      messno: '4',
                    ),
                    message(
                      name: 'James',
                      data: 'hello there ',
                      img: 'assets/img4.jpg',
                      time: '8:54 pm',
                      messno: '1',
                    ),
                    message(
                      name: 'Anon',
                      data: 'I have your child ',
                      img: 'assets/img1.jpeg',
                      time: '8:40 pm',
                      messno: '2',
                    ),
                    message(
                      name: 'Alex',
                      data: 'its \$5000 ',
                      img: 'assets/img7.jpeg',
                      time: '8:30 pm',
                      messno: '2',
                    ),
                    message(
                      name: 'Bttt',
                      data: 'Yo, whens the car coming ',
                      img: 'assets/img8.jpg',
                      time: '8:00 pm',
                      messno: '1',
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        //floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: SizedBox(
          height: 60,
          width: 60,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.green.shade300,
            child: const Icon(Icons.edit_outlined),
          ),
        ),
      ),
    );
  }

  Padding users(String img, String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Column(
        children: [
          CircleAvatar(
            radius: 32,
            backgroundColor: Colors.white,
            child: CircleAvatar(radius: 29, backgroundImage: AssetImage(img)),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            name,
            style: const TextStyle(color: Colors.white, fontSize: 13),
          )
        ],
      ),
    );
  }
}

class message extends StatelessWidget {
  const message({
    super.key,
    required this.name,
    required this.data,
    required this.img,
    required this.time,
    required this.messno,
  });
  final String name;
  final String data;
  final String img;
  final String time;
  final String messno;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: Image.asset(img).image,
                  radius: 30,
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    Text(
                      data,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Column(
                children: [
                  Text(
                    time,
                    style: const TextStyle(fontSize: 10),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CircleAvatar(
                    radius: 7,
                    backgroundColor: Color(0xff27c1a9),
                    child: Text(
                      messno,
                      style: const TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 6,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Divider(),
        )
      ],
    );
  }
}
