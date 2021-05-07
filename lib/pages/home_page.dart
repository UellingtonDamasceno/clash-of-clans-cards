import 'package:clash_of_clans_troops/models/troop.dart';
import 'package:clash_of_clans_troops/repositories/TroopsRepository.dart';
import 'package:clash_of_clans_troops/widgets/card.dart';
import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  @override
  _CardPage createState() => _CardPage();
}

class _CardPage extends State<CardPage> {
  PageController _pageController;
  List<Troop> _troops;
  int _currentIndex;
  @override
  void initState() {
    this._pageController = PageController(viewportFraction: 0.8);
    this._troops = TroopsRepository().troops;

    this._currentIndex = 0;
    super.initState();
  }

  _isActive(Troop troop) {
    return _troops.indexOf(troop) == _currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: PageView.builder(
                physics: BouncingScrollPhysics(),
                controller: this._pageController,
                itemCount: this._troops.length,
                itemBuilder: (_, index) {
                  bool isActive = _currentIndex == index;
                  return MyCard(this._troops[index], isActive);
                },
                onPageChanged: (value) {
                  if (_currentIndex != value) {
                    setState(() {
                      _currentIndex = value;
                    });
                  }
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: _troops
                    .map((troop) => InkWell(
                          onTap: () {
                            _pageController.jumpToPage(_troops.indexOf(troop));
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            height: _isActive(troop) ? 15 : 5,
                            width: _isActive(troop) ? 15 : 5,
                            padding: EdgeInsets.only(bottom: 100),
                            decoration: BoxDecoration(
                              color: _isActive(troop)
                                  ? Colors.brown
                                  : Colors.brown.shade50,
                              borderRadius: BorderRadius.circular(200),
                            ),
                          ),
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
