import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:to_do_app/Views/CreateToDo.dart';
class  MyHomeView extends StatelessWidget {
  const MyHomeView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.deepPurple,
      appBar:AppBar(
elevation: 0,
        title: Text('My Tasks',style: TextStyle(fontSize: 20),),
        actions: [
          Icon(Icons.filter_list_rounded),
          Icon(Icons.search),
          SizedBox(width: 25,)
        ],
        backgroundColor: Colors.deepPurple,
        leading: CircleAvatar(
          backgroundImage
          : NetworkImage('https://images.unsplash.com/photo-1608889825205-eebdb9fc5806?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80'),
        ),

      ) ,
      body: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(color: Colors.pink.shade100, borderRadius: BorderRadius.only
        (bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20)),
        ),
        child:ListView.separated(itemBuilder:(context,index){
          return Card(
         child: Padding(
           padding: const EdgeInsets.all(10),
           child: Row(
             children: [
               Icon(Icons.check_circle_outlined),
               SizedBox(
                 width: 8,
               ),
               Expanded(
                 child: Column(
                   crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [
                    Text('Plan a trip to Finland',
                    style: TextStyle(fontSize: 19,
                    color: Color(0xff44527E)
                    ),
                    ),
                    Text('planning the trip'),
                  ], 
                 ),
               ),
               Row(
                 children: [
                   Icon(Icons.notifications),
                   Text('yesterday'),
                 ],
               )
             ],
           ),
         ), );
        },
         separatorBuilder:(context,index){
           return SizedBox(height: 10,);
         }, 
         itemCount: 6)
        
      ),
      bottomNavigationBar: Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      child: InkWell(
        onTap: (){
          showBarModalBottomSheet(context:context,builder:(context){
            return ListView.separated(itemBuilder:(context,index){
          return Card(
         child: Padding(
           padding: const EdgeInsets.all(10),
           child: Row(
             children: [
               Icon(Icons.check_circle_outlined),
               SizedBox(
                 width: 8,
               ),
               Expanded(
                 child: Column(
                   crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [
                    Text('Plan a trip to Finland',
                    style: TextStyle(fontSize: 19,
                    color: Color(0xff44527E)
                    ),
                    ),
                    Text('planning the trip'),
                  ], 
                 ),
               ),
               Row(
                 children: [
                   Icon(Icons.notifications),
                   Text('yesterday'),
                 ],
               )
             ],
           ),
         ), );
        },
         separatorBuilder:(context,index){
           return SizedBox(height: 10,);
         }, 
         itemCount: 6);
          },
          );
        },
        child: Card(
          color: Colors.lightGreenAccent,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [Icon(Icons.check_circle),
              SizedBox(
      width: 180,
              ),
              Expanded(child:Text('Completed',style: TextStyle(fontSize: 16),),
              ),
              Text('24')
              ],
            ),
          ),
        ),
      )
      ,),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder:(context){
                return CreateToDo();
              }
            )
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
