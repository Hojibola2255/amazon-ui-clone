
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class AmazonPage extends StatefulWidget {
  const AmazonPage({super.key});

  @override
  State<AmazonPage> createState() => _AmazonPageState();
}

class _AmazonPageState extends State<AmazonPage> {

  // App Perfomance
  // 1 - Build Mode(DubugMode, ProfileMode, ReleaseMode)
  // 2 - Hot-Reloat vs Hot - Restart
  // 3 - Dev tools
  // 4 - JIT(just in time) va AOT(ahead ot time)

  //  - enabling hot-reloading for faster development cycles
  //  - in release mode, compiled navite machine code for better perfomens.
  // Minimum size and remove other stuff that are usefullin dev mode

  @override
  void initState() {
    super.initState();
    // TODO: implement initState

    if(kDebugMode){
      print("App is running is Debug mode");
    }
    if(kProfileMode){
      print("App is running is Profile mode");
    }
    if(kReleaseMode){
      print("App is running is reliase mode");
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF018197),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 100,
              child: Image(
                image: AssetImage("assets/images/amazon_logo.png"),
              ),
            ),

            Row(
              children: [
                IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.mic, color: Colors.white,),
                ),

                IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.shopping_cart_rounded, color: Colors.white,),
                ),
              ],
            )
          ],
        ),
      ),
      body: Container(
        color: Colors.grey[300],
        child: Column(
          children: [
            Container(
              color: const Color(0xFF018197),
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Container(
                height: 50,
                padding: const EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey, width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                child: const Row(
                  children: [
                    Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "What are you looking for?",
                            border: InputBorder.none,
                            icon: Icon(Icons.search, color: Color(0xFF018197),)
                          ),
                        ),
                    ),
                    Icon(Icons.camera_alt, color: Color(0xFF018197),)
                  ],
                ),
              ),
            ),

            Expanded(
                child: ListView(
                  children: [
                    //#delivery
                    Container(
                      height: 45,
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      color: Colors.blueGrey,
                      child: const Row(
                        children: [
                          Icon(Icons.location_on,
                          color: Colors.white,
                          ),
                          SizedBox(width: 5,),
                          Text("Delivery to Korea, Republic of, 777",
                            style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),

                    //#banner
                    Container(
                      height: 140,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(70),
                                    bottomRight: Radius.circular(70),
                                  ),
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/image_1.jpg"),
                                  fit: BoxFit.cover
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(20),
                            width: 180,
                            child: const Text(
                              "We ship 45millions products",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //#login
                    Container(
                      color: Colors.white,
                      height: 160,
                      padding: const EdgeInsets.only(right: 16,left: 16),
                      margin: const EdgeInsets.only(top: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Sign in for the best experience',
                            style: TextStyle(color: Colors.black,fontSize: 18),),
                          const SizedBox(height: 15,),

                          Container(
                            color: Colors.orange,
                            width: double.infinity,
                            height: 50,
                            child: const Center(
                              child: Text('Sign in',style:
                              TextStyle(fontSize: 18),),
                            ),
                          ),
                          const SizedBox(height: 15,),
                          const Text('Create an acount',
                            style: TextStyle(color: Colors.blueAccent,fontSize: 18),)
                        ],
                      ),
                    ),

                    //#deal_of_the_day
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      padding: const EdgeInsets.all(16),
                      color: Colors.white,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Deal of the day", style: TextStyle(color: Colors.black, fontSize: 22),),
                          SizedBox(height: 16,),

                          Image(
                            width: double.infinity,
                            height: 240,
                            image: AssetImage("assets/images/item_7.jpg"),
                          fit: BoxFit.cover,),
                          SizedBox(height: 16,),
                          Text("Up to 31% off APC Battery Back", style: TextStyle(fontSize: 17),),
                          SizedBox(height: 6,),
                          Text("\$10.99 - \$79.9", style: TextStyle(fontSize: 17),),
                        ],
                      ),
                    ),

                    //#best_sellers
                    Container(
                      margin: const EdgeInsets.only(top: 8),

                      color: Colors.white,
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Best sellers in Electronics",
                          style: TextStyle(color: Colors.black, fontSize: 22),),
                          const SizedBox(height: 16,),

                          SizedBox(
                            height: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Expanded(
                                    child: Container(
                                      child: Column(
                                        children: [

                                          Expanded(
                                              child: Container(
                                            child: const Image(
                                              image: AssetImage("assets/images/item_7.jpg"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          ),
                                          const SizedBox(height: 5,),
                                          Expanded(
                                              child: Container(
                                                child: const Image(
                                                  image: AssetImage("assets/images/item_6.jpg"),
                                                  fit: BoxFit.cover,
                                                ),
                                              )),
                                        ],
                                      ),
                                ),
                                ),
                                const SizedBox(width: 5,),
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            child: const Image(
                                              image: AssetImage("assets/images/item_5.jpg"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 5,),
                                        Expanded(
                                            child: Container(
                                              child: const Image(
                                                image: AssetImage("assets/images/item_4.jpg"),
                                                fit: BoxFit.cover,
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      color: Colors.white,
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Top products in camera",
                            style: TextStyle(color: Colors.black, fontSize: 22),),

                          const SizedBox(height: 16,),

                          SizedBox(
                            height: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [

                                Expanded(
                                  child: Container(
                                    child: const Image(
                                      image: AssetImage("assets/images/item_7.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                ),
                                ),

                                Expanded(
                                    child: Container(

                                      child: Row(
                                        children: [

                                          Expanded(
                                              child: Container(
                                                child: const Image(
                                                  image: AssetImage("assets/images/item_3.jpg"),
                                                  fit: BoxFit.cover,
                                                ),
                                              )),
                                          const SizedBox(width: 5,),
                                          Expanded(
                                              child: Container(
                                                child: const Image(
                                                  image: AssetImage("assets/images/item_2.jpg"),
                                                  fit: BoxFit.cover,
                                                ),
                                              )),
                                        ],
                                      ),
                                ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
            ),
          ],
        ),
      ),

      drawer: const Drawer(
        shadowColor: Colors.white,
      ),
    );
  }
}
