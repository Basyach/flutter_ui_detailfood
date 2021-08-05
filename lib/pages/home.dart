import 'package:flutter/material.dart';
import 'package:practice1/theme.dart';
import 'package:practice1/widgets/info.dart';

class HomePage extends StatefulWidget {
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   int _counter =0;
  void increment(){
    setState(() {
          _counter++;
        });
  }
   void decrement(){
    setState(() {
          _counter--;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Image.asset('assets/gambar.png'),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/icon_back.png',
                    width: 15,
                  ),
                ),
                Text(
                  'Pie Details',
                  style: whiteTextStyle.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Image.asset(
                  'assets/icon_love.png',
                  width: 25,
                )
              ],
            ),
          ),
          ListView(
            children: [
              SizedBox(
                height: 310,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  color: whitecolor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'DoubleJumbo Pie',
                            style: darkblueTextStyle.copyWith(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                          Text(
                            'IDR 59.999',
                            style: orangeTextStyle.copyWith(
                                fontWeight: FontWeight.w400, fontSize: 18),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            width: 300,
                            height: 70,
                            color: lightcolor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Info(
                                    name: 'FreeDelivery',
                                    imageUrl: 'assets/icon_dolar.png'),
                                Info(
                                    name: 'FreeDelivery',
                                    imageUrl: 'assets/icon_jam.png'),
                                Info(
                                    name: '30 menit',
                                    imageUrl: 'assets/icon_bintang.png'),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Description',
                            style: darkblueTextStyle.copyWith(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          Text(
                              'Cream Sweet Pie is a pie made from real honey \n and combined with cream on top of the pie',
                              style: grayTextStyle.copyWith(fontSize: 12)),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                             FloatingActionButton(onPressed:increment,
                             child: Icon(Icons.add),
                             backgroundColor: darkbluecolor,
                             tooltip: 'increment',
                             
                             ),
                             SizedBox(width: 15,),
                             Text('$_counter',style: darkblueTextStyle.copyWith(fontSize: 18),),
                             SizedBox(width: 15,),
                             
                             FloatingActionButton(onPressed:decrement,
                             child: Icon(Icons.remove),
                             backgroundColor: orangecolor,
                             
                             tooltip: 'decrement',
                             ),
                             SizedBox(width: 40,),
                             Text('IDR 119.998',style: orangeTextStyle.copyWith(fontWeight: FontWeight.w600,fontSize: 18),)

                            ],
                          ),
                          SizedBox(height: 25,),
                           Container(
                        margin: EdgeInsets.symmetric(
                        ),
                        height: 50,
                        width: MediaQuery.of(context).size.width - (2 * 24),
                        
                           decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  color: orangecolor,
                ),
                          child: Center(
                            child: Text(
                              'Checkout Now',
                              style: whiteTextStyle.copyWith(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
