import 'package:flutter/material.dart';
import 'package:test2/model/model.dart';
import 'package:test2/page/profile.dart';

class homepages extends StatelessWidget {
  homepages({super.key});

  List<Modelll> menu = [
    Modelll('joy', 'assets/images/joy.jpg', '5วัน', '20'),
    Modelll('ps5', 'assets/images/ps5.webp', '10 วัน', '20000'),
    Modelll('เมาส์', 'assets/images/mous.webp', '2 วัน', '30'),
    Modelll('vr', 'assets/images/vr.jpg', '3วัน', '15000'),
    Modelll('ลำโพง', 'assets/images/adio.webp', '100 วัน', '10000')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00439C),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'รถ',
          )
        ],
        title: const Row(
          children: <Widget>[
            Icon(Icons.keyboard_arrow_left_outlined),
            SizedBox(
              child: Text('หน้าหลักกก'),
            )
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (BuildContext context, int index) {
          Modelll models = menu[index];

          return Column(
            children: [
              ListTile(
                leading: Image.asset(
                  models.img,
                  width: 250,
                  height: 150,
                ),
                title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(models.id),
                      Text(models.name),
                      Text('ราคา ${models.price} ฿'),
                    ]),
              ),
              const Divider(
                height: 10,
              )
            ],
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.large(
        shape: const CircleBorder(),
        backgroundColor: const Color.fromARGB(255, 88, 22, 229),
        onPressed: () {},
        tooltip: 'logo',
        child: Image.asset('assets/images/icons.png'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 56, // Set a height that suits your design
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(color: Color(0xFF031C3E)),
                  child: IconButton(
                    onPressed: () {
                    },
                    icon: const Icon(Icons.home, color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(color: Color(0xFF00439C)),
                  child: IconButton(
                    onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Profile()));
                    },
                    icon: const Icon(Icons.person, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
