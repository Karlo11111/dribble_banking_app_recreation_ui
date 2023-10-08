import 'dart:ffi';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _notificationIconPress(){

  }
  void _activitiesIconButton(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade400,
      //body of the page
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30,),
            //hello nick text and icons
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  const Text("Hello ", style: TextStyle(fontSize: 30),),
                  const Text("Nick", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                  const SizedBox(width: 80,),
                  //notification icon
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.brown.shade500,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: IconButton(
                      iconSize: 30,
                      onPressed: _notificationIconPress, 
                      icon: const Icon(Icons.notifications_outlined),
                    )
                  ),
                  const SizedBox(width: 10,),
                  //profile icon
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.brown.shade500,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: IconButton(
                      iconSize: 30,
                      onPressed: _notificationIconPress, 
                      icon: const Icon(Icons.person)
                    )
                  )
                ],
              ),
            ),
            
            const SizedBox(height: 15),
              
            //your wallet text
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Your wallet", style: TextStyle(fontSize: 20),)
              ),
            ),
            
            const SizedBox(height: 10),
            //container with balance
            Container(
              height: 200,
              width: 370,
              decoration: BoxDecoration(
                      color: Colors.brown.shade300,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: Text("Your balance", style: TextStyle(fontSize: 20),),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: Text("\$23,54.50", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                        )
                      ],
                    ),
            ),
            const SizedBox(height: 10),
            //activities text and icon
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text("Activites", style: TextStyle(fontSize: 20)),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: IconButton(onPressed: _activitiesIconButton, icon: Icon(Icons.volunteer_activism))
                )
              ],
            ),
              
              
            //other containers
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Container(
                    height: 150,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.brown.shade300,
                        borderRadius: BorderRadius.circular(30)
                      ),
                    child: Column(
                        children: [
                        IconButton(onPressed: _notificationIconPress, icon: Icon(Icons.data_array_rounded)),
                        const SizedBox(height: 5,),
                        const Text("\$24,000", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                        const Text("Monthly salary", style: TextStyle(fontSize: 15)),
                        const SizedBox(height: 5,),
                        Container(
                          width: 140,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.brown.shade600,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: const Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("\$144,000/year "),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 4,),
                //the right containers
                Column(
                  children: [
                    //up container
                    Container(
                      height: 75,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.brown.shade300,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment. start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left:18.0, top: 9),
                            child: Text("Recent transfer"),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IconButton(onPressed: _notificationIconPress, icon: Icon(Icons.person)),
                              IconButton(onPressed: _notificationIconPress, icon: Icon(Icons.person)),
                              IconButton(onPressed: _notificationIconPress, icon: Icon(Icons.person)),
                            ],
                          ),
                          
                        ],
                      ),
                    ),
                    const SizedBox(height: 3,),
        
                    //down container
                    Container(
                      height: 75,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.brown.shade300,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(onPressed: _notificationIconPress, icon: Icon(Icons.network_cell, size: 40,)),
                          SizedBox(width: 12,),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Netflix", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                              Text("Monthly premium", style: TextStyle(fontSize: 10),),
                              const SizedBox(height: 5),
                              Text("-\$30,00", style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                            ],
                            
                          ),
                          SizedBox(width: 12,),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 10,),
            Container(
              height: 200,
              width: 370,
              decoration: BoxDecoration(
                      color: Colors.brown.shade300,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: Text("Yearly stats", style: TextStyle(fontSize: 20),),
                        ),
                        const SizedBox(height: 10),
                        const Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: Text("October", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: Container(
                            width: 140,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.brown.shade500,
                              borderRadius: BorderRadius.circular(30)
                            ),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text("View", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                              ),
                            ),
                          )
                        )
                      ],
                    ),
            ),
          ],
            
          ),
        ),
      ),
    );
  }
}