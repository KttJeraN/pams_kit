//import 'package:activity_attendance/pages/activities_page.dart';
//import 'package:activity_attendance/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:room_search/login/auth.dart';
import 'package:room_search/login/home_page.dart';

class RentalPage extends StatelessWidget {
  RentalPage({this.auth, this.onSignOut});
  final BaseAuth auth;
  final VoidCallback onSignOut;

String phoneNumber = '';
String _launchUrl = 'https://www.google.com/maps/place/Fulminar+Boarding+House/@8.4801635,124.6442747,16z/data=!4m8!1m2!2m1!1sboarding+house!3m4!1s0x32fff2c3d495b4c3:0xd8a5e356e4235956!8m2!3d8.4849086!4d124.6577306';

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

String phoneNumber4 = '';
String _launchUrl4 = 'https://www.google.com/maps/place/RBR+Boarding+House/@8.471609,124.6472646,16z/data=!4m8!1m2!2m1!1sboarding+house!3m4!1s0x32fff2d28828ba3b:0xd98f4484c67ee495!8m2!3d8.471609!4d124.651642';

Future<void> _launchInBrowser4(String url) async{
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

String phoneNumber5 = '';
String _launchUrl5 = 'https://www.google.com/maps/place/Quiz+Boarding+House/@8.4881676,124.6505436,16z/data=!4m8!1m2!2m1!1sboarding+house!3m4!1s0x32fff2e82dfa514d:0x633c1d6d7f90ce9f!8m2!3d8.4881676!4d124.654921';

Future<void> _launchInBrowser5(String url) async{
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

String phoneNumber6 = '';
String _launchUrl6 = 'https://www.google.com/maps/place/Saint+Bridget+Home/@8.4801634,124.6442747,16z/data=!4m8!1m2!2m1!1sboarding+house!3m4!1s0x32fff2d0a7b6e8df:0x933794231823b2e0!8m2!3d8.4791985!4d124.6465514';

Future<void> _launchInBrowser6(String url) async{
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

String phoneNumber7 = '';
String _launchUrl7 = 'https://www.google.com/maps/place/Marcojo+Hall+Dormitory/@8.4714808,124.6435071,16z/data=!4m8!1m2!2m1!1sboarding+house!3m4!1s0x32fff2d371c1dbe1:0xd8ddfa810d59331a!8m2!3d8.4714808!4d124.6478845';

Future<void> _launchInBrowser7(String url) async{
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
                        padding: EdgeInsets.only(left: 60.0),
                      ),
                       MaterialButton(
                    onPressed: () {_launchInBrowser(_launchUrl);},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)
                    ),
                    color: Theme.of(context).accentColor,
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(50.0),
                    child: Text("Fulminar Boarding House")
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
                    onPressed: () {_launchInBrowser4(_launchUrl4);},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)
                    ),
                    color: Theme.of(context).accentColor,
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(50.0),
                    child: Text("RBR Boarding House")
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
                    onPressed: () {_launchInBrowser5(_launchUrl5);},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)
                    ),
                    color: Theme.of(context).accentColor,
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(50.0),
                    child: Text("Quiz Boarding House")
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
                    onPressed: () {_launchInBrowser6(_launchUrl6);},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)
                    ),
                    color: Theme.of(context).accentColor,
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(50.0),
                    child: Text("Saint Bridget Home")
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
                        padding: EdgeInsets.only(left: 60.0),
                      ),
                       MaterialButton(
                    onPressed: () {_launchInBrowser7(_launchUrl7);},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)
                    ),
                    color: Theme.of(context).accentColor,
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(50.0),
                    child: Text("Marcojo Hall Dormitory")
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
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => HomePage()));
                  },
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Theme.of(context).accentColor),
                      borderRadius: BorderRadius.circular(12.0)
                  ),
                  color: Colors.white,
                  textColor: Theme.of(context).accentColor,
                  padding: const EdgeInsets.all(14.0),
                  child: Text("Dorms")
                  ),
              ),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                  ),
                  color: Theme.of(context).accentColor,
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(14.0),
                  child: Text("Room Rentals")
                  ),
                ),
              ],
            );
  }
}
