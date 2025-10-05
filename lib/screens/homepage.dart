import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final PageController _pageController = PageController();
  int _currentpage = 0;

  final List<String> images = [
    'assets/intro/image.png',
    'assets/intro/img2.jpg',
    'assets/intro/img3.jpg',
  ];

  void _onNext() {
    if (_currentpage < images.length - 1) {
      _pageController.animateToPage(
        _currentpage + 1,
        duration: Duration(microseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      _finishintro();
    }
  }

  void _onskip() {
    _finishintro();
  }

  void _finishintro() {
    Navigator.pushNamed(context, '/home');
  }


  Widget _buildPageindIcator(bool isCurrent) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6.0),
      width: isCurrent ? 12 : 8,
      height: isCurrent ? 12 : 8,
      decoration: BoxDecoration(
        color: isCurrent ? Colors.white : Colors.white54,
        borderRadius: BorderRadius.circular(26),
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            itemCount: images.length,
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            padEnds: true,
            pageSnapping: true,
            onPageChanged: (int page) {
              setState(() {
                _currentpage = page;
              });
            },
            allowImplicitScrolling: true,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(images[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
          Positioned(
            left: 20,
            right: 20,
            bottom: 40,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(images.length, 
                  (index) => _buildPageindIcator(true),
                  )
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: _onskip
                      , child: Text(
                      "Skip",
                      style: TextStyle(color: Colors.white,fontSize: 18)
                      ),
                      ),
                      IconButton(
                        onPressed: _onNext,
                        icon: Icon(
                          _currentpage == images.length - 1 ? Icons.clear : Icons.keyboard_double_arrow_right_outlined ,
                          color: Colors.white,
                          size: 50,
                        ))
                  ],
                )
              ],
            ),
            ),  
        ],
      ),
    );
  }
}
