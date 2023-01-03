import 'package:flutter/material.dart';
import 'package:travel_app/screens/detail_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            label: 'Ana Sayfa',
            icon: Icon(
              Icons.home_outlined,
              size: 32,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Arama',
            icon: Icon(
              Icons.search,
              size: 32,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Favoriler',
            icon: Icon(
              Icons.favorite_outline,
              size: 32,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Ayarlar',
            icon: Icon(
              Icons.settings,
              size: 32,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SafeArea(
              top: true,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                  left: 15,
                  right: 15,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage("assets/p1.jpg"),
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              "Selam, Kaan!",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                        const Icon(
                          Icons.menu_rounded,
                          size: 32,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          Text(
                            "Popüler",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "Avrupa",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "Asya",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "Afrika",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "Amerika",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "Teklifler",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "Yeni",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "Size Özel",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                          ),
                          filled: true,
                          fillColor: Colors.grey[300],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.orange.withOpacity(0.5),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.home_outlined,
                              size: 32,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.orange.withOpacity(0.5),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.restaurant_menu,
                              size: 32,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.orange,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.family_restroom_outlined,
                              size: 32,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.orange.withOpacity(0.5),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.calendar_today_outlined,
                              size: 32,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        Text(
                          "Size Özel Teklifler",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.bottomCenter,
                            height: 180,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  "assets/bali.jpg",
                                ),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Text(
                                  "Bali",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color: Colors.orange,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color: Colors.orange,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color: Colors.orange,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color: Colors.orange,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Icon(
                                      Icons.star_outline,
                                      size: 20,
                                      color: Colors.orange,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DetailScreen()));
                            },
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              height: 180,
                              width: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    "assets/irlanda.jpg",
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const Text(
                                    "İrlanda",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      letterSpacing: 1.2,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.star,
                                        size: 20,
                                        color: Colors.orange,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 20,
                                        color: Colors.orange,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 20,
                                        color: Colors.orange,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 20,
                                        color: Colors.orange,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 20,
                                        color: Colors.orange,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            height: 180,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  "assets/italy.jpg",
                                ),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Text(
                                  "İtalya",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color: Colors.orange,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color: Colors.orange,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color: Colors.orange,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color: Colors.orange,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color: Colors.orange,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 160,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                            height: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  "assets/norway.jpg",
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Harika!",
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.orange,
                                  ),
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.orange,
                                  ),
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.orange,
                                  ),
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.orange,
                                  ),
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.orange,
                                  ),
                                  SizedBox(width: 4),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const SizedBox(
                                width: 180,
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
                                  overflow: TextOverflow.clip,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 160,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                            height: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  "assets/prag.jpg",
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Mutlaka Gidilmeli!",
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.orange,
                                  ),
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.orange,
                                  ),
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.orange,
                                  ),
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.orange,
                                  ),
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.orange,
                                  ),
                                  SizedBox(width: 4),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const SizedBox(
                                width: 180,
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
                                  overflow: TextOverflow.clip,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
