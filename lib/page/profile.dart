import 'package:flutter/material.dart';
import 'package:test2/page/homepage.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //เริ่มappbar
          title: const Text(
            'ข้อมูลส่วนตัว',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xFF00439C),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              tooltip: 'รถเข็น',
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text('ไม่ทำ')));
              },
            ),
          ]),
      body: Column(children: <Widget>[
        Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              "assets/images/cow.jpg",
              width: 150,
            )),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: double.infinity,
            height: 255,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black)),
            child: const Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Color(0xFF7E7E7E),
                  ),
                  title: Text("นาย นาย"),
                  subtitle: Text("ชื่อ ไอน้อง",
                      style: TextStyle(color: Color(0xFF7E7E7E))),
                ),
                ListTile(
                  leading: Icon(Icons.home, color: Color(0xFF7E7E7E)),
                  title: Text(
                    "สารคาม",
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text("อยู่ใส",
                      style: TextStyle(color: Color(0xFF7E7E7E))),
                ),
                ListTile(
                  leading: Icon(Icons.call, color: Color(0xFF7E7E7E)),
                  title: Text("09999999"),
                  subtitle:
                      Text("เบอร์", style: TextStyle(color: Color(0xFF7E7E7E))),
                ),
                ListTile(
                  leading: Icon(Icons.email, color: Color(0xFF7E7E7E)),
                  title: Text("e@e.e"),
                  subtitle:
                      Text("เมล", style: TextStyle(color: Color(0xFF7E7E7E))),
                )
              ],
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black)),
                child: const Column(children: [
                  ListTile(
                      leading: Icon(
                        Icons.question_mark_rounded,
                        color: Color(0xFF7E7E7E),
                      ),
                      title: Text("มีอะไรจะพูดไหม"),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF7E7E7E),
                      )),
                ]))),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {},
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.red)),
          child: const Text(
            "ออกจากระบบ",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 180,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => homepages()));
                  },
                  icon: const Icon(Icons.home)),
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Profile()));
                  },
                  icon: const Icon(Icons.account_circle_sharp))
            ],
          ),
        ),
      ),
    );
  }
}
