import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/home_page.dart';
import 'package:untitled/list_images.dart';
import 'list_images.dart';


class AsosiyPage extends StatefulWidget {

  static final String id = 'asosiy_page';


  @override
  _AsosiyPageState createState() => _AsosiyPageState();
}
class _AsosiyPageState extends State<AsosiyPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getCustomAppBar(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff0e0023),
              Color(0xff3a1e54),
            ]
          ),
        ),
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              // #header
              Container(
                width: double.infinity,
                height: 240,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://wallpaperboat.com/wp-content/uploads/2020/06/04/42521/blackpink-06.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.5),
                        Colors.black.withOpacity(.03),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              // #body
              Expanded(
                  child: GridView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: data.length,
                      itemBuilder:(context,index)=>GestureDetector(
                        child: _cellOfList(data[index]),
                        onTap: (){
                          print(index);
                          Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>HomePage(index: index,)));
                      },
                      ),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,

                  ),
                  ),
              ),

            ],
           ))
      );
  }

  Widget _cellOfList(String item) {
    // print("Rasm:"+item.toString());
    return Card(
              color: Colors.transparent,
              elevation: 0,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage(item),
                    fit: BoxFit.cover
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Pics',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 12),)
                  ],
                ),
              ),
    );
  }
}

_getCustomAppBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(40),
    child:  Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color(0xff0e0023),
                Color(0xff3a1e54),
              ]
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Wallpaper',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87,fontSize: 25),),
            Text('Hub',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pinkAccent,fontSize: 25),),
       
          ],
        ),

    ),
  );
}
