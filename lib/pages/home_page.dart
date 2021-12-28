import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor:  Colors.white,
        title: Text("facebook", style: TextStyle(color: Colors.blue, fontSize: 25),),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.grey,),
            onPressed: () {
              
            },
          ),
          IconButton(
            icon: Icon(Icons.camera_alt, color: Colors.grey,),
            onPressed: () {
              
            },
          ),

        ],
        elevation: 0,
      ),

      body:ListView(
        children: [
          Container(
            height: 120,
            color: Colors.white,
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          shape:BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/user_5.jpeg"),
                          )
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Container(
                          height:46,
                          padding: EdgeInsets.only(right:15, left: 15,),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            border: Border.all(
                              color: Colors.grey.shade500,
                              width: 1
                            )
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "What's on your mind?",
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.grey.shade700)
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Icon(Icons.video_call, color: Colors.red,),
                            SizedBox(width: 5,),
                            Text("Live")
                          ]
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top:14, bottom: 14),
                        width: 1,
                        color: Colors.grey.shade400,
                      ),
                       Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Icon(Icons.photo, color: Colors.green,),
                            SizedBox(width: 5,),
                            Text("Photo")
                          ]
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top:14, bottom: 14),
                        width: 1,
                        color: Colors.grey.shade400,
                      ),
                       Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Icon(Icons.location_on, color: Colors.red,),
                            SizedBox(width: 5,),
                            Text("Check in")
                          ]
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height:200,
            margin:EdgeInsets.only(top:10),
            padding: EdgeInsets.only(top: 10, bottom: 10),
            color:Colors.white,

            child:ListView(
              scrollDirection:Axis.horizontal,
              children:[
                SizedBox(width: 10,),
                makeStory("assets/images/story_1.jpeg", "assets/images/user_1.jpeg", "Lolo Pepe"),
                makeStory("assets/images/story_2.jpeg", "assets/images/user_4.jpeg", "Lolo Pepe"),
                makeStory("assets/images/story_3.jpeg", "assets/images/user_5.jpeg", "Lolo Pepe"),
                makeStory("assets/images/story_4.jpeg", "assets/images/user_3.jpeg", "Lolo Pepe"),
                makeStory("assets/images/story_5.jpeg", "assets/images/user_2.jpeg", "Lolo Pepe"),
              ]
            )
          ),

          makeFeed("Lolo Pepe","assets/images/user_1.jpeg", "1 hr ago", "All the Lorem generators on the Internet tend repeat predefined.", "assets/images/story_1.jpeg"),
          makeFeed("Lolo Pepe","assets/images/user_4.jpeg", "1 hr ago", "All the Lorem generators on the Internet tend repeat predefined.", "assets/images/story_2.jpeg"),
          makeFeed("Lolo Pepe","assets/images/user_5.jpeg", "1 hr ago", "All the Lorem generators on the Internet tend repeat predefined.", "assets/images/story_3.jpeg"),
          makeFeed("Lolo Pepe","assets/images/user_3.jpeg", "1 hr ago", "All the Lorem generators on the Internet tend repeat predefined.", "assets/images/story_4.jpeg"),
          makeFeed("Lolo Pepe","assets/images/user_2.jpeg", "1 hr ago", "All the Lorem generators on the Internet tend repeat predefined.", "assets/images/story_5.jpeg"),

        ],
      )
    );
  }

  Widget makeStory(String storyImage, String userImage, String userName){
    return AspectRatio(
      aspectRatio: 1.3/2,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image:AssetImage(storyImage),
            fit:BoxFit.cover
          )
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
               begin: Alignment.bottomRight,
               colors:[
                 Colors.black.withOpacity(0.9),
                 Colors.black.withOpacity(0.1),
               ] 
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue, width: 2),
                  image: DecorationImage(
                    image: AssetImage(userImage),
                    fit: BoxFit.cover
                  )
                ),
              ),

              Text(userName, style: TextStyle(color: Colors.white),)
            ]
          ),
        ),
      ),
    );
  }

  Widget makeFeed(String userName, String userImage, String feedTime, String feedText, String feedImage){
    return Container(
      margin: EdgeInsets.only(top:10),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(right: 10, left: 10),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image:DecorationImage(
                              image: AssetImage(userImage),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Text(userName, style: TextStyle(color:Colors.black87, fontSize: 18,fontWeight: FontWeight.bold),),
                            SizedBox(height: 3,),
                            Text(feedTime, style: TextStyle(color:Colors.black45, fontSize: 16,),)
                          ]
                        ),

                      ],
                    ),
                    IconButton(
                      icon: Icon(Icons.more_horiz, color: Colors.grey[600],),
                      onPressed: () {
                        
                      },
                    )
                  ]
                ),

                SizedBox(height:20),
                Text(feedText, style: TextStyle(fontSize:15, color: Colors.grey[800], height: 1.5, letterSpacing: 0.7),),
                SizedBox(height:20),
              ],
            ),
          ),
          // Photo
          Container(
            height: 240,
            decoration: BoxDecoration(
              image:DecorationImage(
                image: AssetImage(feedImage),
                fit: BoxFit.cover
              )
            ),
          ),

          // Likes

          SizedBox(height:20),
          Container(
            padding: EdgeInsets.only(right: 10, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Row(
                  children:[
                    makeLike(),
                    Transform.translate(
                      offset: Offset(-5,0),
                      child: makeLove(),
                    ),
                    SizedBox(width: 5,),
                    Text("2,5K", style: TextStyle(fontSize: 15, color: Colors.grey[800]),)
                  ]
                ),

                Text("400 Comments", style:TextStyle(color: Colors.grey[800], fontSize: 13)),
              ]
            ),
          ),

           SizedBox(height:10),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children:[
               makeLikeButton(isActive: true),
               makeCommentButton(),
               makeShareButton(),
             ]
           ),
           SizedBox(height:10),
        ],
      ),
    );
  }

  Widget makeLikeButton({isActive}){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.thumb_up, color:isActive? Colors.blue : Colors.grey, size:18),
            SizedBox(width:5),
            Text("Like", style: TextStyle(color: isActive? Colors.blue : Colors.grey),)
          ],
        ),
      ),

    );
  }

  Widget makeCommentButton(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.chat, color:Colors.grey, size:18),
            SizedBox(width:5),
            Text("Comments", style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),

    );
  }

  Widget makeShareButton(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.share, color:Colors.grey, size:18),
            SizedBox(width:5),
            Text("Share", style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),

    );
  }

  Widget makeLike(){
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white)
      ),
      child: Center(
        child:Icon(Icons.thumb_up, size: 12,color: Colors.white,)
      ),
      
    );
  }

  Widget makeLove(){
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white)
      ),
      child: Center(
        child:Icon(Icons.favorite, size: 12,color: Colors.white,)
      ),
      
    );
  }
}