import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: DefaultTabController(
        length:4,
        child: Scaffold(
          appBar:AppBar(
            backgroundColor: Colors.teal,
            title:const Text('WhatsApp',style:TextStyle(color:Colors.white)),
            centerTitle: false,
            bottom:const TabBar(
              tabs: [
                Tab(child:Icon(Icons.groups,color:Colors.white)),
                Tab(child: Text('Chats',style:TextStyle(color:Colors.white))),
                Tab(child: Text('Status',style:TextStyle(color:Colors.white))),
                Tab(
                  child:Text('Calls',style:TextStyle(color:Colors.white))
                )
              ],
              
            ),
            actions:[
              Icon(Icons.search,color:Colors.white),

              PopupMenuButton(
                icon:Icon(Icons.more_horiz_outlined,color:Colors.white),
                itemBuilder:(context)=>[
                  PopupMenuItem(
                    value: 1,
                    child:Text('New Group')
                  ),
                  PopupMenuItem(
                    value: 1,
                    child:Text('Setting'),
                  ),
                  PopupMenuItem(
                    value: 1,
                    child:Text('LogOut')
                  )

              ]
              )
            ]

      
          ),
        body: TabBarView(
            children:[
               Text('Groups'),



              ListView.builder(
                itemCount:100,
                itemBuilder:(context,index){
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://wallpapers.com/images/hd/red-aesthetic-art-john-wick-hd-6ia5zmm6kvrchebp.webp'),

                    ),
                    title: Text('Dawood'),
                    subtitle:Text('The Future King, the best, '),
                      trailing:Text('10-00-00')
                  );
                },
              ),



              ListView.builder(
                itemCount: 100,
                itemBuilder:(context,index){
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                          border:Border.all(
                            color: index%3==0 ?Colors.teal:Colors.transparent,
                            width: 2
                          ),

                        ),

                    child:CircleAvatar(

                      backgroundImage: NetworkImage('https://wallpapers.com/images/hd/red-aesthetic-art-john-wick-hd-6ia5zmm6kvrchebp.webp'),



                    ),
                    ),
                        title:Text('Dawood')

                  );
                }

              ),



              ListView.builder(
                itemCount:100,
                itemBuilder:(context,index){
                  return  ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage('https://wallpapers.com/images/hd/best-ultra-hd-artwork-of-john-wick-07e6bkavirbhk8ia.webp'),
                    ),
                    title:const Text('Beast Slayer'),
                    subtitle:const Text('Yesterday, 9:49 PM'),
                    trailing:Icon(index % 3==0 ?Icons.phone: Icons.video_call),
                  );
                }
              )
            ])
        )
      )
    );
  }
}
