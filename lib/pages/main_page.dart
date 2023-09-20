import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nha_hang_flutter/models/home_page.dart';

class ManiPage extends StatefulWidget {
  const ManiPage({super.key});

  @override
  State<ManiPage> createState() => _ManiPageState();
}

class _ManiPageState extends State<ManiPage> {
  int currentIndex = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 18.0),
          child: Row(
            children: [
              
              SvgPicture.asset('assets/icons/Logo.svg'),
              Spacer(),
              SvgPicture.asset('assets/icons/ic_search.svg'),
              const SizedBox(width: 18.0),
              SvgPicture.asset('assets/icons/ic_cup.svg'),
              ],
          ),
        ),
        preferredSize: Size.fromHeight(56.0),
      ),
      body: IndexedStack(
        index: currentIndex,
        children: [
          const HomePage(),
          Container(color: Colors.blue),
          Container(color: Colors.red),
          Container(color: Colors.pink),
          Container(color: Colors.yellow),
        ],
      ),
      bottomNavigationBar: BottomNavBarMallika1(
        selected: currentIndex,
        onPressed:(p0) {
          setState(() {
            currentIndex = p0;
          });
        }
      ),
      
    );
  }
  
}

class BottomNavBarMallika1 extends StatelessWidget {
  const BottomNavBarMallika1({Key? key, required this.onPressed, required this.selected }) : super(key: key);
  final Function(int) onPressed;
  final int selected;

  final orangeColor = const Color(0xffFF8527);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: Colors.white,
        child: SizedBox(
          height: 56,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconBottomBar(
                    text: "Home",
                    icon: 'assets/icons/Menu bar.svg',
                    selected: selected == 0,
                    onPressed: () => onPressed (0)),
                IconBottomBar(
                    text: "Search",
                    icon: 'assets/icons/map-pin.svg',
                    selected: selected == 1,
                    onPressed: () => onPressed (1)),
                IconBottomBar2(
                    text: "Add",
                    icon: Icons.add_outlined,
                    selected: selected == 2,
                    onPressed: ()  => onPressed (2)),
                IconBottomBar(
                    text: "Cart",
                    icon: 'assets/icons/bell.svg',
                    selected: selected == 3,
                    onPressed: ()  => onPressed (3)),
                IconBottomBar(
                    text: "Calendar",
                    icon: 'assets/icons/user.svg',
                    selected: selected == 4,
                    onPressed: ()  => onPressed (4))
              ],
            ),
          ),
        ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  const IconBottomBar(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed})
      : super(key: key);
  final String text;
  final String icon;
  final bool selected;
  final Function() onPressed;

 

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(icon, color:selected ? Color(0xffFF33495D) : Color(0xffADB6BE), width: 20.0,),
          Text(text,style: TextStyle(color: selected ? Color(0xffFF33495D) : Color(0xffADB6BE),fontSize: 10.0, fontWeight: FontWeight.w700),)
    
          // IconButton(
          //   onPressed: onPressed,
          //   icon: Icon(
          //     icon,
          //     size: 25,
          //     color: selected ? orangeColor : Colors.black54,
          //   ),
          // ),
        ],
      ),
    );
  }
}

class IconBottomBar2 extends StatelessWidget {
  const IconBottomBar2(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  final orangeColor = const Color(0xffFF8527);
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: orangeColor,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}
