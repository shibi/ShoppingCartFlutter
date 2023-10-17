import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_cart/pages/cart/cart.dart';
import 'package:shopping_cart/pages/profile/profile.dart';
import 'category_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/images/ic_back.svg",
                width: 21, height: 21, color: Colors.white),
          ),
          actions: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 10, top: 2, right:0, bottom: 2),
              child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfilePage()));
                },
                icon: SvgPicture.asset("assets/images/ic_profile.svg",
                    width: 21, height: 21, color: Colors.white),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 0, top: 2, right: 10, bottom: 2),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage()));
                  },
                  icon: SvgPicture.asset("assets/images/ic_cart.svg",
                      width: 21, height: 21, color: Colors.white)),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SubTitleWidget(),
            CategoryWidget(),
            Expanded(child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 0.8
              ), itemBuilder: (context, index) => ItemCard()
              ),
            )
            )
          ],
        )
    );
  }
}

class ItemCard extends StatelessWidget {

  const ItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(19),
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Image.asset('assets/images/carrot.png'),
        ),
        Text("Carrots", style: TextStyle(
            fontSize: 16, color: Colors.black
        )),
        Text("vegitable", style: TextStyle(
         fontSize: 14, color: Colors.blueGrey
        ))
      ],
    );
  }
}

class SubTitleWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(14.0),
      child: Text(
        "Women",
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.redAccent),
      ),
    );
  }
}




