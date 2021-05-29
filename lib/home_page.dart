import 'dart:ui';

import 'package:flutter/material.dart';

import 'list_images.dart';

class HomePage extends StatefulWidget {
static final String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedSwitcher(
            duration: Duration(milliseconds: 500),
            child: Container(
              key: ValueKey<String>(data[_currentPage]),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(data[_currentPage]),
                      fit: BoxFit.cover
                  )
              ),
              child: BackdropFilter(filter: ImageFilter.blur(
                sigmaX: 15,
                sigmaY: 15,
              ),
                child: Container(
                  color: Colors.black.withOpacity(0.2),
                ),
              ),
            ),
          ),
          FractionallySizedBox(
            heightFactor: 0.55,
            child: PageView.builder(
                itemCount: data.length,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                itemBuilder: (BuildContext context, int index){
                  return FractionallySizedBox(
                    widthFactor: 0.8,
                    child: Container(
                      margin: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                            ),
                          ],
                          image: DecorationImage(
                              image: NetworkImage(data[index]),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
