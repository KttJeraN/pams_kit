//import 'package:activity_attendance/pages/activities_page.dart';
//import 'package:activity_attendance/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:room_search/login/auth.dart';
import 'package:room_search/login/rental_page.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  HomePage({this.auth, this.onSignOut});
  final BaseAuth auth;
  final VoidCallback onSignOut;

String phoneNumber = '';
String _launchUrl = 'https://www.google.com/maps/place/Win+Grace+Dormitory/@8.474882,124.6435887,17z/data=!3m1!4b1!4m5!3m4!1s0x32fff2d6a2614f6d:0xd560191cb57dbb79!8m2!3d8.474882!4d124.6457774';

Future<void> _launchInBrowser(String url) async{
  if (await canLaunch(url)){  
    await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
      headers:<String, String>{'header_key':'header_value'}
    );    
  } else{
    throw 'Could not launch $url';
  }
}
String phoneNumber1 = '';
String _launchUrl1 = 'https://www.google.com/maps/place/Marcojo+Hall+Dormitory/@8.4714808,124.6435071,16z/data=!4m8!1m2!2m1!1sdormitory!3m4!1s0x32fff2d371c1dbe1:0xd8ddfa810d59331a!8m2!3d8.4714808!4d124.6478845';

Future<void> _launchInBrowser1(String url) async{
  if (await canLaunch(url)){  
    await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
      headers:<String, String>{'header_key':'header_value'}
    );    
  } else{
    throw 'Could not launch $url';
  }
}
String phoneNumber2 = '';
String _launchUrl2 = 'https://www.google.com/maps/place/Sophia+Residence+Hall/@8.4848303,124.6343833,16z/data=!4m8!1m2!2m1!1sdormitory!3m4!1s0x32fff3272bcbd67d:0xdfd0f0e7c7e92491!8m2!3d8.4848303!4d124.6387607';

Future<void> _launchInBrowser2(String url) async{
  if (await canLaunch(url)){  
    await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
      headers:<String, String>{'header_key':'header_value'}
    );    
  } else{
    throw 'Could not launch $url';
  }
}

String phoneNumber3 = '';
String _launchUrl3 = 'https://www.google.com/maps/place/HGM+Ladies+Dorm/@8.4801635,124.6442747,16z/data=!4m8!1m2!2m1!1sdormitory!3m4!1s0x32fff2d6999c47cb:0xc40398ba725295d9!8m2!3d8.4751039!4d124.6452302';

Future<void> _launchInBrowser3(String url) async{
  if (await canLaunch(url)){  
    await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
      headers:<String, String>{'header_key':'header_value'}
    );    
  } else{
    throw 'Could not launch $url';
  }
}


  @override
  Widget build(BuildContext context) {

    void _signOut() async {
      try {
        await auth.signOut();
        onSignOut();
      } catch (e) {
        print(e);
      }

    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text(
                'Profile'
              ),
              trailing: Icon(Icons.account_box),
              onTap: (){
                Navigator.of(context).pop();
                //Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => ProfilePage()));
              },
            ),
            ListTile(
              title: Text(
                'Activities'
              ),
              trailing: Icon(Icons.star),
              onTap: (){
                Navigator.of(context).pop();
                //Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Activitiespage()));
              },
            ),
            new Divider(),
            ListTile(
              title: Text(
                'Cancel'
              ),
              trailing: Icon(Icons.cancel),
               onTap: (){
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: <Widget>[
          FlatButton(
              onPressed: _signOut,
              child: Text('Logout', style: TextStyle(fontSize: 16.0, color: Colors.white))
          )
        ],
      ),
      body: SingleChildScrollView(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(20.0),
          child: Text(
            "Select Categories",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: _button(context),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5.0),
              ),
              Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 70.0),
                      ),
                       MaterialButton(
                    onPressed: () {
                      _launchInBrowser(_launchUrl);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)
                    ),
                    color: Theme.of(context).accentColor,
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(50.0),
                    child: Text("Win Grace Dormitory")
                    ),
                    ],
              ),
              SizedBox(
                width: 50,
              ),
            ],
          ),
           Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5.0),
              ),
              Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 70.0),
                      ),
                       MaterialButton(
                    onPressed: () {
                       _launchInBrowser1(_launchUrl1);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)
                    ),
                    color: Theme.of(context).accentColor,
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(45.0),
                    child: Text("Marcojo Hall Dormitory"
                    ),
                    ),
                    ],
              ),
              SizedBox(
                width: 50,
              ),
            ],
          ),
           Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5.0),
              ),
              Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 70.0),
                      ),
                       MaterialButton(
                    onPressed: () {
                      _launchInBrowser2(_launchUrl2);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)
                    ),
                    color: Theme.of(context).accentColor,
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(45.0),
                    child: Text("Sophia Residence Hall")
                    ),
                    ],
              ),
              SizedBox(
                width: 50,
              ),
            ],
          ),
           Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5.0),
              ),
              Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 70.0),
                      ),
                       MaterialButton(
                    onPressed: () {_launchInBrowser3(_launchUrl3);},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)
                    ),
                    color: Theme.of(context).accentColor,
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(50.0),
                    child: Text("HGM Ladies Dorm")
                    ),
                    ],
              ),
              SizedBox(
                width: 50,
              ),
            ],
          ),
        ],
      ),
      ),
    );
  }

  Widget _button(BuildContext context) {
    return Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                  ),
                  color: Theme.of(context).accentColor,
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(14.0),
                  child: Text("Dorms")
                  ),
              ),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => RentalPage()));
                    },
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Theme.of(context).accentColor),
                      borderRadius: BorderRadius.circular(12.0)
                  ),
                  color: Colors.white,
                  textColor: Theme.of(context).accentColor,
                  padding: const EdgeInsets.all(14.0),
                  child: Text("Room Rentals")
                  ),
                ),
              ],
            );
  }
}
