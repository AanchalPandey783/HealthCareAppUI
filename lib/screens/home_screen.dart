
import 'package:flutter/material.dart';
import 'package:t_ui_design/screens/calendar_screen.dart';
import 'package:t_ui_design/screens/community_screen.dart';
import 'package:t_ui_design/screens/messages_screen.dart';
import 'package:t_ui_design/screens/updates_screen.dart';

class UiWidget extends StatefulWidget {
  const UiWidget({super.key});

  @override
  State<UiWidget> createState() => _UiWidgetState();
}

class _UiWidgetState extends State<UiWidget> {
  List<String> notifications = List<String>.generate(
    20,
    (index) => "Notification ${index}",
  );
  int _selectedItem = 0;
  void _onItemSelect(int index){
    setState(() {
      _selectedItem = index;
    });
  }
  static const List <Widget> screens = <Widget>[
    MessagesScreen(),
    CalendarScreen(),
    UpdatesScreen(),
    CommunityScreen()
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.black), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.message, color: Colors.black),
                label: 'Messages'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month, color: Colors.black),
                label: 'Calendar'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notification_add_sharp, color: Colors.black),
                label: 'Notification'),
            BottomNavigationBarItem(
                icon: Icon(Icons.group, color: Colors.black), label: 'Group'),
          ],
          currentIndex : _selectedItem,
          selectedItemColor: Colors.amber[800],
          onTap: (_selectedItem){
            switch(_selectedItem){
              case 1:
                Navigator.push(context, MaterialPageRoute(builder: (context) => MessagesScreen()));
              case 2:
                Navigator.push(context, MaterialPageRoute(builder: (context) => CalendarScreen()));
              case 3:
                Navigator.push(context, MaterialPageRoute(builder: (context) => UpdatesScreen()));
              case 4:
                Navigator.push(context, MaterialPageRoute(builder: (context) => CommunityScreen()));
            }
          },

        ),
        body: SafeArea(
          child: Expanded(
            child: Container(
                color: Colors.white54,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Container(
                          alignment: Alignment.topCenter,
                          height: 50,
                          width: double.infinity,
                          color: Colors.blue,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                      onTap: () {
                                        showModalBottomSheet(
                                            isScrollControlled: true,
                                            context: context,
                                            builder: (context) {
                                              return Container(
                                                  height: 300,
                                                  width: 400,
                                                  color: Colors.white30,
                                                  child: ListView(children: [
                                                    IconButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      icon: const Icon(
                                                          Icons.close_rounded),
                                                      alignment:
                                                          Alignment.topRight,
                                                    ),
                                                    const ListTile(
                                                      title:
                                                          Text('User Details'),
                                                      leading:
                                                          Icon(Icons.person),
                                                    ),
                                                    const ListTile(
                                                      title: Text('Reports'),
                                                      leading: Icon(Icons
                                                          .sticky_note_2_outlined),
                                                    ),
                                                    const ListTile(
                                                      title: Text('Settings'),
                                                      leading:
                                                          Icon(Icons.settings),
                                                    ),
                                                    const ListTile(
                                                      title: Text('CheckUps'),
                                                      leading: Icon(
                                                          Icons.calendar_month),
                                                    ),
                                                    const ListTile(
                                                      title: Text('Wallet'),
                                                      leading: Icon(Icons
                                                          .currency_rupee_outlined),
                                                    ),
                                                    const ListTile(
                                                      title: Text('Health'),
                                                      leading: Icon(Icons
                                                          .auto_graph_rounded),
                                                    ),
                                                    const ListTile(
                                                      title: Text('Favourites'),
                                                      leading: Icon(Icons
                                                          .star_purple500_outlined),
                                                    ),
                                                    const ListTile(
                                                      title:
                                                          Text('Social Media'),
                                                      leading:
                                                          Icon(Icons.facebook),
                                                    ),
                                                  ]));
                                            });
                                      },
                                      child: ClipOval(
                                          child: Image.network(
                                        'https://i.pinimg.com/564x/a6/58/32/a65832155622ac173337874f02b218fb.jpg',
                                      ))),
                                  const SizedBox(width: 20),
                                  const Column(
                                    children: [
                                      Text(
                                        'Hi Aanchal,',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        'Welcome Back,',
                                        style: TextStyle(
                                            color: Colors.white30,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  const InkWell(
                                    splashColor: Colors.white70,
                                    highlightColor: Colors.white,
                                    radius: 10,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(Icons.search_sharp,
                                          color: Colors.white),
                                    ),
                                  ),
                                  InkWell(
                                    splashFactory: InkSparkle.splashFactory,
                                    splashColor: Colors.white70,
                                    highlightColor: Colors.white,
                                    radius: 10,
                                    onTap: () {
                                      showModalBottomSheet(
                                          isScrollControlled: true,
                                          context: context,
                                          builder: (context) {
                                            return Container(
                                                color: Colors.black54
                                                    .withOpacity(0.2),
                                                height: 500,
                                                width: 400,
                                                child: ListView(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: IconButton(
                                                        onPressed: () {
                                                          Navigator.pop(context);
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                                  SnackBar(
                                                            content: const Text(
                                                                'No new Notifications',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white)),
                                                            action:
                                                                SnackBarAction(
                                                                    label:
                                                                        'Close',
                                                                    onPressed:
                                                                        () {}),
                                                            duration: const Duration(
                                                                seconds: 3),
                                                            backgroundColor:
                                                                Colors.white,
                                                          ));
                                                        },
                                                        icon: const Icon(
                                                            Icons.close_rounded),
                                                        alignment:
                                                            Alignment.topRight,
                                                      ),
                                                    ),
                                                    const SizedBox(height: 10),
                                                    /*ListView.builder(
                                                  itemCount: notifications.length,
                                                  itemBuilder: (context, index){
                                                    return Card(
                                                      child: Row(
                                                        children:[
                                                          Icon(Icons.notifications_sharp),
                                                          Text('Notification ${index}'),
                                                        ]
                                                      ),
                                                    );
                                                  }
                                              ),*/
                                                  ],
                                                ));
                                          });
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(Icons.notification_add_sharp,
                                          color: Colors.white),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )),
                      Stack(
                        alignment: Alignment.center,
                        clipBehavior: Clip.none,
                        fit: StackFit.loose,
                        children: [
                          Container(
                            clipBehavior: Clip.none,
                            height: 160,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(50),
                                    bottomRight: Radius.circular(50))),
                          ),
                          Positioned(
                            bottom: -50,
                            child: Container(
                                height: 200,
                                width: 300,
                                alignment: Alignment.bottomCenter,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26.withOpacity(0.5),
                                        spreadRadius: 3,
                                        blurRadius: 5,
                                        offset: const Offset(0, 3)),
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: GridView(
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          crossAxisSpacing: 3,
                                          mainAxisSpacing: 3),
                                  children: [
                                    Column(
                                      children: [
                                        Image.network(
                                          'https://i.pinimg.com/564x/38/29/07/38290727840f25b84d47d8118c38a00c.jpg',
                                          width: 50,
                                          height: 70,
                                        ),
                                        const Text('Clinic Visit'),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image.network(
                                          'https://i.pinimg.com/564x/a6/f6/55/a6f6551e6d36fd37eb69a7637632f552.jpg',
                                          width: 50,
                                          height: 70,
                                        ),
                                        const Text('Home Visit'),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image.network(
                                          'https://i.pinimg.com/564x/ad/3a/c1/ad3ac1c75907ca7572c5473847f9f712.jpg',
                                          width: 50,
                                          height: 70,
                                        ),
                                        const Text('Consulting'),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image.network(
                                          'https://i.pinimg.com/564x/c4/48/9f/c4489fdc95cd9701bcbf8b5fc6eb31c1.jpg',
                                          width: 50,
                                          height: 70,
                                        ),
                                        const Text('Pharmacy'),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image.network(
                                          'https://i.pinimg.com/564x/08/7c/8d/087c8d51bdc1c043ce777b5cc7ef9150.jpg',
                                          width: 50,
                                          height: 70,
                                        ),
                                        const Text('Diseases'),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image.network(
                                          'https://i.pinimg.com/564x/57/d9/b8/57d9b8dceb8357db8175400f9d56c7ca.jpg',
                                          width: 50,
                                          height: 70,
                                        ),
                                        const Text('Covid-19'),
                                      ],
                                    ),
                                  ],
                                )),
                          )
                        ],
                      ),
                      const SizedBox(height: 50),
                      const SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Departments',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400)),
                              Row(children: [
                                Text('View All',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400)),
                                Icon(Icons.arrow_forward_ios_sharp,
                                    color: Colors.blue),
                              ])
                            ],
                          )),
                      Expanded(
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                                height: 70,
                                width: 100,
                                margin: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.black12,
                                  ),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.network(
                                      'https://i.pinimg.com/736x/fc/2a/97/fc2a973cd394c673bae219b2c7be4abe.jpg',
                                    ),
                                    const Column(
                                      children: [
                                        Text(
                                          'Orthopediac',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          '400 members',
                                          style: TextStyle(
                                              fontSize: 5,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black45),
                                        )
                                      ],
                                    )
                                  ],
                                )),
                            Container(
                                height: 70,
                                width: 100,
                                margin: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.black12,
                                  ),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.network(
                                      'https://i.pinimg.com/736x/0a/0b/08/0a0b08ae30bdcdbce8af4741159d4787.jpg',
                                    ),
                                    const Column(
                                      children: [
                                        Text(
                                          'Cardiology',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          '400 members',
                                          style: TextStyle(
                                              fontSize: 5,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black45),
                                        )
                                      ],
                                    )
                                  ],
                                )),
                            Container(
                                height: 70,
                                width: 100,
                                margin: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.black12,
                                  ),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.network(
                                      'https://i.pinimg.com/564x/5e/0d/33/5e0d3336cb9c21e315e82f003d6267b1.jpg',
                                    ),
                                    const Column(
                                      children: [
                                        Text(
                                          'Pediatrics',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          '400 members',
                                          style: TextStyle(
                                              fontSize: 5,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black45),
                                        )
                                      ],
                                    )
                                  ],
                                )),
                            Container(
                                height: 70,
                                width: 100,
                                margin: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.black12,
                                  ),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.network(
                                      'https://i.pinimg.com/564x/ce/63/21/ce6321ef9cd43ca09a2d6fabbf518fc3.jpg',
                                    ),
                                    const Column(
                                      children: [
                                        Text(
                                          'Neurology',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          '400 members',
                                          style: TextStyle(
                                              fontSize: 5,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black45),
                                        )
                                      ],
                                    )
                                  ],
                                )),
                            Container(
                                height: 70,
                                width: 100,
                                margin: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.black12,
                                  ),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.network(
                                      'https://i.pinimg.com/564x/90/c6/b8/90c6b815854d71207a5bf07365f077e4.jpg',
                                    ),
                                    const Column(
                                      children: [
                                        Text(
                                          'General Health',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          '400 members',
                                          style: TextStyle(
                                              fontSize: 5,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black45),
                                        )
                                      ],
                                    )
                                  ],
                                )),
                            const SizedBox(width: 20),
                          ],
                        ),
                      ),
                      const SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Top Hospitals',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400)),
                              Row(children: [
                                Text('View All',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400)),
                                Icon(Icons.arrow_forward_ios_sharp,
                                    color: Colors.blue),
                              ])
                            ],
                          )),
                      Expanded(
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                                height: 70,
                                width: 100,
                                margin: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.black12,
                                  ),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.network(
                                        'https://i.pinimg.com/564x/c7/49/ff/c749ff61f4fb9601e8b48d345210268b.jpg'),
                                    const Text(
                                      'AIMS',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                  ],
                                )),
                            Container(
                                height: 70,
                                width: 100,
                                margin: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.black12,
                                  ),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.network(
                                        'https://i.pinimg.com/564x/9d/2a/79/9d2a79ee2538961797405213ec4ea7fc.jpg'),
                                    const Text(
                                      'Apollo',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                  ],
                                )),
                            Container(
                                height: 70,
                                width: 100,
                                margin: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.black12,
                                  ),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.network(
                                        'https://i.pinimg.com/564x/74/65/ae/7465aefb3fa5c5b35c6371635f920a17.jpg'),
                                    const Text(
                                      'Fortis',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                  ],
                                )),
                            Container(
                                height: 70,
                                width: 100,
                                margin: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.black12,
                                  ),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.network(
                                        'https://i.pinimg.com/564x/c7/1f/a0/c71fa0ca10f8ae718891f45a1aedebb2.jpg'),
                                    const Text(
                                      'SRMS',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                  ],
                                )),
                            Container(
                                height: 70,
                                width: 100,
                                margin: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.black12,
                                  ),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.network(
                                        'https://i.pinimg.com/564x/b0/a8/62/b0a8623e2fcb39c34d3334ee8c66d81e.jpg'),
                                    const Text(
                                      'Ganga Ram',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                  ],
                                )),
                            const SizedBox(width: 20),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        ));
  }
}

class ProfileDetails extends StatefulWidget {
  const ProfileDetails({super.key});

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
