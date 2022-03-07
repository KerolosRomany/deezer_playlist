import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_switch.dart';
import 'music_screen.dart';

class DeezerScreen extends StatelessWidget {
  List<MusicScreen> musicList = [
    MusicScreen(musicName: 'Rolling in the Deep', singerName: 'Adele', musicImage: 'assets/images/adele.jpg'),
    MusicScreen(musicName: 'Snowman', singerName: 'Sia', musicImage: 'assets/images/sia.jpg'),
    MusicScreen(musicName: 'Ana Hawait', singerName: 'Mohamed Mohsen', musicImage: 'assets/images/mohamedmohsen.jpg'),
    MusicScreen(musicName: 'Raghm El Masafa', singerName: 'Massar Egbari', musicImage: 'assets/images/massaregbary1.jpg'),
    MusicScreen(musicName: 'Samurai', singerName: 'Cairokee', musicImage: 'assets/images/cairokee1.jpg'),
    MusicScreen(musicName: 'Ghammad Einak', singerName: 'Cairokee', musicImage: 'assets/images/cairokee2.jpg'),
    MusicScreen(musicName: 'Alf Leila We Leila', singerName: 'Umm Kulthum', musicImage: 'assets/images/umkulthum.jpg'),
    MusicScreen(musicName: 'Ala Ba\'ady', singerName: 'Afroto', musicImage: 'assets/images/afroto.jpg'),
    MusicScreen(musicName: 'Hkaytak Eih', singerName: 'Amr Diab', musicImage: 'assets/images/amrdyab.jpg'),
    MusicScreen(musicName: 'La Vie En Rose', singerName: 'Emily Watts', musicImage: 'assets/images/emily.jpg'),
    MusicScreen(musicName: 'Kefayak Aazar', singerName: 'Tamer Hosny', musicImage: 'assets/images/tamerhosny.jpg'),
    MusicScreen(musicName: 'Mafeesh Menak', singerName: 'Amr Diab', musicImage: 'assets/images/amrdyab2.jpg'),
    MusicScreen(musicName: 'Fly Me to the Moon', singerName: 'The Macarons Project', musicImage: 'assets/images/flymetothemoon.jpg'),
    MusicScreen(musicName: 'Sway', singerName: 'Dean Martin', musicImage: 'assets/images/sway.jpg'),
    MusicScreen(musicName: 'El Bakht', singerName: 'Wegz', musicImage: 'assets/images/wegz.jpg'),
    MusicScreen(musicName: 'Tokaa We Tkoom', singerName: 'Massar Egbari', musicImage: 'assets/images/massaregbary2.jpg'),

  ];

  final ScrollController _mycontroller = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        leading: IconButton(onPressed: (){ },icon:Icon(Icons.arrow_back)),
        title: Text('Playlist' , style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,

          ),
        ),
        actions: [
            IconButton(onPressed: (){ }, icon: Icon(Icons.more_vert),),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
                  children: [
                        Container(
                          width: double.infinity,
                          height: 285,
                          decoration: BoxDecoration(
                          color: Colors.grey[900],
                        ),
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 3.0),
                              child: Container(
                                width: 200,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 70,
                                          height: 70,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/adele.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                                          ),
                                        ),
                                        Container(
                                          width: 70,
                                          height: 70,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/sia.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 70,
                                          height: 70,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/mohamedmohsen.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
                                          ),
                                        ),
                                        Container(
                                          width: 70,
                                          height: 70,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/massaregbary1.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text('Playlist',style: TextStyle(
                                      color: Colors.white,
                                      fontWeight:FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text('By kerolos',style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                    ),),

                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: SizedBox(
                                height: 60,
                                width: double.infinity,
                                child: Stack(
                                  children: [
                                    Container(
                                      color:Colors.grey[900],
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: 30 ,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        CircleAvatar(
                                          child: IconButton(
                                            onPressed: (){ },
                                            icon: Icon(Icons.share_outlined),
                                            color: Colors.red[500],
                                            iconSize: 21,
                                          ),
                                          backgroundColor: Colors.grey[900],
                                          radius: 23,
                                        ),
                                        MaterialButton(
                                          onPressed: (){  },
                                          child: Container(
                                            width: 180,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.red[500],
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 23,
                                                ),
                                                Icon(Icons.pause,color: Colors.white,size: 20,),
                                                SizedBox(
                                                  width: 30,
                                                ),
                                                Text('PLAY',style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 15,
                                                ),),
                                              ],
                                            ),
                                          ),
                                        ),
                                        CircleAvatar(
                                          child: IconButton(
                                            onPressed: (){ },
                                            icon: Icon(Icons.edit_outlined),
                                            color: Colors.red[500],
                                            iconSize: 21,
                                          ),
                                          backgroundColor: Colors.grey[900],
                                          radius: 23,

                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),


                            ),
                          ],
                        ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      CustomSwitch(
                                        activeColor: Colors.pinkAccent,
                                        value: false,
                                        onChanged: (value) { },
                                      ),
                                      SizedBox(width: 6,),
                                      Text('DOWNLOAD',style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),),
                                      SizedBox(width:100,),
                                      IconButton(onPressed: (){ },icon: Icon(Icons.search,color: Colors.grey[500],size: 25,)),
                                      IconButton(onPressed: (){ },icon: Icon(Icons.code,color: Colors.grey[500],size: 25,)),
                                    ],
                                  ),
                                ]
                            ),
                          ),
                        ),
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.only(start: 20,end: 20),
                            child: Container(
                              height: 1,
                              decoration: BoxDecoration(
                                color: Colors.grey[800],
                              ),
                            ),
                          ),
                          ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),
                          child: ListView.separated(
                            scrollDirection: Axis.vertical,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) => buildMusicItem(musicList[index]),
                            separatorBuilder:  (context, index) => Padding(
                              padding: const EdgeInsetsDirectional.only(start:20.0,end: 20.0),
                              child: Container(
                                height: 1,
                                color: Colors.grey[800],
                              ),
                            ),
                            itemCount: musicList.length,
                          ),
                        ),
                  ],
                ),
      ),


    );

  }
  Widget buildMusicItem(MusicScreen music) => Padding(
    padding: const EdgeInsets.only(top: 20.0,right: 6.0,left: 6.0,bottom: 20.0),
    child: MaterialButton(
      onPressed: (){ },

      child: Row(
        children: [
          Container(
            width: 220,
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('${music.musicImage}'),
                      fit: BoxFit.cover,
                    ),

                  ),

                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${music.musicName}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,

                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox( height: 2,),
                    Text('${music.singerName}' , style: TextStyle(
                      color: Colors.grey,
                    ),) ,
                  ],
                ),
              ],
            ),
          ),
          IconButton(onPressed: (){ }, icon: Icon(Icons.favorite,color: Colors.red[600],size: 25,),alignment: AlignmentDirectional.topEnd
          ),
          IconButton(
              onPressed: (){ },
              icon: Icon(
                Icons.more_vert,
                color: Colors.grey[500],
                size: 25,),
              alignment: AlignmentDirectional.topEnd,
          ),
        ],

      ),
    ),
  );

}
