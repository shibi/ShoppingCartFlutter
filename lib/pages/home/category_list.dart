import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CategoryState();
}

class _CategoryState extends State<CategoryWidget> {

  List<String> categoryArray = [
    "home",
    "grocery",
    "electronics",
    "gold",
    "food",
    "plant seeds",
    "toys"
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        height: 27,
        child: ListView.builder(
            itemCount: categoryArray.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => buildCategory(index)
        ),
      ),
    );
  }

  Widget buildCategory(int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding:EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      categoryArray[index],
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: (selectedIndex == index) ? Colors.blueGrey : Colors.blueGrey[40]
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 4),
                      width: 30,
                      height: 2,
                      color: (selectedIndex == index) ? Colors.blueGrey : Colors.transparent,
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}