import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nha_hang_flutter/models/post_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int PageViewIndex = 0;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          padding: EdgeInsets.all(4),
          margin: EdgeInsets.symmetric(horizontal: 22.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22.0),
            color: Color(0XFFEBEDEF),
          ),
          child: TabBar(
              controller: tabController,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  color: Color(0xFF33495D)),
              labelColor: Colors.white,
              unselectedLabelColor: Color(0xFF33495D),
              tabs: [
                Tab(text: 'reton'),
                Tab(text: 'reton'),
              ]),
        ),
        const SizedBox(
          height: 12.0,
        ),
        Divider(
          thickness: 6.0,
          color: Color(0Xfff5f6f7),
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              ListView.separated(
                  itemBuilder: (context, index) {
                    final post = posts[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 22.0, vertical: 12.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage(posts[index].user?.avatar ?? ''),
                              ),
                              const SizedBox(width: 10.0),
                              Column(
                                children: [
                                  Text(
                                    post.user?.name ?? '',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 2.0),
                                  Row(
                                    children: [
                                      Text(
                                        post.cuissineType ?? '',
                                        style: TextStyle(
                                          color: Color(0xffF19B15),
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: CircleAvatar(
                                          radius: 2,
                                          backgroundColor: Color(0xffF19B15),
                                        ),
                                      ),
                                      ...List.generate(
                                        post.user?.vote ?? 0,
                                        (index) => SvgPicture.asset(
                                            'assets/icons/Frame.svg'),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          const Divider(
                            thickness: 1.0,
                            color: Color(0xffEBEDEF),
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset('assets/icons/star.svg'),
                              const SizedBox(
                                width: 4.0,
                              ),
                              Text(
                                  '${post.user?.rate ?? 0.0} (${post.user?.review ?? ''} Avis)'),
                              const SizedBox(
                                width: 13.0,
                              ),
                              SvgPicture.asset('assets/icons/map-pin.svg'),
                              const SizedBox(
                                width: 4.0,
                              ),
                              Text(post.user?.location?.city ?? ''),
                            ],
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          Text(
                            post.desription ?? '',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          SizedBox(
                            height: 128.0,
                            child: Stack(
                              children: [
                                PageView(
                                  onPageChanged: (value) {
                                    setState(() {
                                      PageViewIndex = value;
                                    });
                                  },
                                  children: [
                                    ...List.generate(
                                      post.images?.length ?? 0,
                                      (index) => ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: Image.asset(
                                          post.images?[index] ?? ' ',
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Positioned(
                                  bottom: 6,
                                  right: 6,
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    child: Text(
                                      '${PageViewIndex + 1}/${post.images?.length ?? 0}',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      thickness: 6.0,
                      color: Color(0Xfff5f6f7),
                    );
                  },
                  itemCount: posts.length),
              Container(color: Colors.yellow),
            ],
          ),
        )
      ],
    ));
  }
}
