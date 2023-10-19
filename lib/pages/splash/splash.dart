import 'package:flutter/material.dart';
import 'package:shopping_cart/pages/home/home.dart';

class SplashPage extends StatefulWidget{

  const SplashPage({super.key});

  @override
  State<StatefulWidget> createState() => SplashState();

}

class SplashState extends State<SplashPage>{
  
  @override
  void initState() {
    super.initState();
    
    Future.delayed(const Duration(
      seconds: 4
    ), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HomePage()));
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.redAccent
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 256,height: 256,
                child: Stack(
                  children: [
                    Container(
                      width: 256, height: 256,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.yellow
                      ),
                    ),
                    Container(
                      width: 256, height: 256,
                      child: Center(
                        child: Image.asset(
                            "assets/images/carrot.png"
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "all right reserved",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                    ),
                  ),
                ) ,
              )
            ],
          ),
        ),
      ),
    );
  }

}

/*
Material(
color: Colors.redAccent,
child: Center(
child: Container(
width: 256,height: 256,
child: Stack(
children: [
Container(
width: 256, height: 256,
decoration: BoxDecoration(
shape: BoxShape.circle,
color: Colors.black
),
),
Container(
width: 256, height: 256,
child: Center(
child: Image.asset(
"assets/images/carrot.png"
),
),
)
],
),
),
),
)*/
