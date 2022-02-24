import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashBoard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _homePage();

}
class _homePage extends State<DashBoard>{

  //final List<Icons> ActionIcon =[FontAwesomeIcons.bookOpen,FontAwesomeIcons.,];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
       appBar: _appBar(),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
           children: [
             Center(
               child: Card(
                 color: Colors.white,
                 elevation: 0,
                 child: Column(
                   children: [
                     Text('Welcome, employee name!',
                     style: TextStyle(
                       color: Colors.lightBlue,
                       fontSize: 24
                     ),),
                     SizedBox(height: 5,),
                     Text('Associate Consultant, Fnace Department',
                       style: TextStyle(
                           color: Colors.lightBlue,
                           fontSize: 12
                       ),),
                     SizedBox(height: 10,),
                     CircleAvatar(
                       radius: 50,
                       child: Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(50)),
                         color: Colors.black,
                       ),),
                     ),
                     Icon(FontAwesomeIcons.angleDown),
                     Wrap(
                       alignment: WrapAlignment.spaceEvenly,
                       children: [
                         Text('Check-In '),
                         Text(' Check-In '),
                         Text(' Check-In')
                       ],
                     ),
                     SizedBox(height: 10,),
                    Container(
                      color: Colors.lightBlue,
                      padding: EdgeInsets.all(2),
                      child:  ListTile(
                        leading: Icon(FontAwesomeIcons.calendar),
                        title: Text('Month Records'),
                        trailing: Icon(FontAwesomeIcons.angleDown),
                      ),
                    ),
                     SizedBox(height: 15,),
                     // GridView.builder(gridDelegate:
                     //     SliverGridDelegateWithFixedCrossAxisCount(
                     //         crossAxisCount: 2,
                     //       crossAxisSpacing: 10,
                     //       mainAxisSpacing: 10
                     //     ),
                     //     itemBuilder: (context,index){
                     //      return  _cardAction(Colors.red,FontAwesomeIcons.bell,'Name');
                     //     })
                     Wrap(
                       alignment: WrapAlignment.spaceEvenly,
                       children: [
                         _cardAction(Colors.red,FontAwesomeIcons.bookDead,'Leave Requests'),
                         _cardAction(Colors.red,FontAwesomeIcons.book,'Courses'),
                         _cardAction(Colors.red,FontAwesomeIcons.bookOpen,'Services'),
                         _cardAction(Colors.red,FontAwesomeIcons.handHoldingHeart,'Enquiry'),
                         _cardAction(Colors.red,FontAwesomeIcons.hammer,'Branch list'),
                         _cardAction(Colors.red,FontAwesomeIcons.users,'Attendance'),
                         _cardAction(Colors.red,FontAwesomeIcons.userSecret,'Faulty Attendance'),
                         _cardAction(Colors.red,FontAwesomeIcons.shoppingBag,'Admin Leave'),
                         _cardAction(Colors.red,FontAwesomeIcons.firefoxBrowser,'Released Sites'),
                         _cardAction(null,null,'')
                       ],
                     )
                   ],
                 ),
               ),
             )
           ],
          ),
        ),
      ),
    );
  }

}

AppBar _appBar(){
  return AppBar(
    leading: Icon(FontAwesomeIcons.bars),
    title: null,
    backgroundColor: Colors.blueGrey,
    actions: [
      IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.bell)),
      IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.bell)),
      IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.powerOff)),
    ],
  );
}

Widget _cardAction(bgColor,icon,name){
  return Container(
    width: 150,
    height: 110,
    margin :EdgeInsets.all(10),
    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.all(Radius.circular(20))
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,size: 40,color: Colors.white,),
        SizedBox(height: 5,),
        Text('$name',style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          wordSpacing: 0
        ),)
      ],
    ),
  );
}