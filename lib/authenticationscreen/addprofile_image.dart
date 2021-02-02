import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe/appassets/app_assets.dart';
import 'package:recipe/mainscreen/homepage.dart';

class UploadProfileImageScreen extends StatefulWidget {

  @override
  _UploadProfileImageScreenState createState() => _UploadProfileImageScreenState();
}

class _UploadProfileImageScreenState extends State<UploadProfileImageScreen> {

  // File _image;
  //
  // _imgFromCamera() async {
  //   File image = (await ImagePicker.pickImage(
  //       source: ImageSource.camera, imageQuality: 50
  //   )) as File;
  //
  //   setState(() {
  //     _image = image;
  //   });
  // }
  //
  // _imgFromGallery() async {
  //   File image = (await  ImagePicker.pickImage(
  //       source: ImageSource.gallery, imageQuality: 50
  //   )) as File;
  //
  //   setState(() {
  //     _image = image;
  //   });
  // }

  @override
  Widget build(BuildContext context) {

    Future<void> _showMyDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, //this means the user must tap a button to exit the Alert Dialog
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Enable the location to see the nearest stores that is available'),
            actions: <Widget>[

              Padding(
                padding: const EdgeInsets.only( right: 20, left: 20),
                child: Center(
                  child: FlatButton(
                    height: 48,
                    minWidth: 280,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0),
                        side: BorderSide(color: AppColors.accentcolor)),
                    color: AppColors.accentcolor,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()),);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Enable location services",
                        style: TextStyle(
                            fontSize: 16.0, fontFamily: 'Roboto'
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15.0, right: 20, left: 20),
                child: Center(
                  child: FlatButton(
                    height: 48,
                    minWidth: 280,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0),
                        side: BorderSide(color: AppColors.accentcolor)),
                    color: Colors.transparent,
                    textColor: AppColors.accentcolor,
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()),);// It should navigate to Home Screen
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "or enter your zip code",
                        style: TextStyle(
                            fontSize: 16.0, fontFamily: 'Roboto'
                        ),
                      ),
                    ),
                  ),
                ),
              ),

            ],
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 50.0, bottom: 20),
            child: Image(
              image: AssetImage('images/logo.png'), height: 100,
            ),
          ),

          Center(
            child: Text("You're signed up!", style: TextStyle(
              fontFamily: 'Roboto', color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold
            ),),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Text("Add a profile image to complete your profile.", style: TextStyle(
                  fontFamily: 'Roboto', color: Colors.black54, fontSize: 17, fontWeight: FontWeight.normal
              ),),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Center(
              child: Text("Add Image", style: TextStyle(
                  fontFamily: 'Roboto', color: AppColors.accentcolor, fontSize: 17, fontWeight: FontWeight.normal
              ),),
            ),
          ),

          //upload image from gallery
          Column(
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    // _showPicker(context);
                  },
                    child: CircleAvatar(
                      radius: 75,
                      backgroundColor: AppColors.accentcolor,
                      // child: _image != null
                      // ? ClipRRect(
                      //     borderRadius: BorderRadius.circular(75),
                      //     child: Image.file(
                      //       _image,
                      //       width: 160,
                      //       height: 160,
                      //       fit: BoxFit.fitHeight,
                      //     ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200], borderRadius: BorderRadius.circular(75)),
                        width: 150, height: 150,
                        child: Icon(
                          Icons.add_a_photo_outlined,
                          color: Colors.grey[800],),
                      ),
                    ),
                ),
              )
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Center(
              child: GestureDetector(
                onTap: ()
                {
                  _showMyDialog();
                  // showDialog(
                  //     barrierDismissible: true,
                  //     context: context,
                  //     builder: (_) {
                  //       return AlertDialog(
                  //         title: Text('Enable the location to see the nearest stores that is available', style: TextStyle(
                  //           fontFamily: 'Roboto', fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.black,
                  //         ),
                  //           textAlign: TextAlign.center,
                  //         ),
                  //         actions: [
                  //           Padding(
                  //             padding: const EdgeInsets.only( right: 20, left: 20),
                  //             child: Center(
                  //               child: FlatButton(
                  //                 height: 48,
                  //                 minWidth: 280,
                  //                 shape: RoundedRectangleBorder(
                  //                     borderRadius: BorderRadius.circular(35.0),
                  //                     side: BorderSide(color: AppColors.accentcolor)),
                  //                 color: AppColors.accentcolor,
                  //                 textColor: Colors.white,
                  //                 padding: EdgeInsets.all(8.0),
                  //                 onPressed: () {
                  //                   Navigator.push(context,
                  //                     MaterialPageRoute(builder: (context) => HomePage()),);
                  //                 },
                  //                 child: Padding(
                  //                   padding: const EdgeInsets.all(8.0),
                  //                   child: Text(
                  //                     "Enable location services",
                  //                     style: TextStyle(
                  //                         fontSize: 16.0, fontFamily: 'Roboto'
                  //                     ),
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //
                  //           Padding(
                  //             padding: const EdgeInsets.only(top: 15.0, right: 20, left: 20),
                  //             child: Center(
                  //               child: FlatButton(
                  //                 height: 48,
                  //                 minWidth: 280,
                  //                 shape: RoundedRectangleBorder(
                  //                     borderRadius: BorderRadius.circular(35.0),
                  //                     side: BorderSide(color: AppColors.accentcolor)),
                  //                 color: Colors.transparent,
                  //                 textColor: AppColors.accentcolor,
                  //                 padding: EdgeInsets.all(8.0),
                  //                 onPressed: () {
                  //                   Navigator.push(context,
                  //                     MaterialPageRoute(builder: (context) => HomePage()),);// It should navigate to Home Screen
                  //                 },
                  //                 child: Padding(
                  //                   padding: const EdgeInsets.all(8.0),
                  //                   child: Text(
                  //                     "or enter your zip code",
                  //                     style: TextStyle(
                  //                         fontSize: 16.0, fontFamily: 'Roboto'
                  //                     ),
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //         ],
                  //       );
                  //     }).then((exit) {
                  //   if (exit == null) return;
                  //
                  //   if (exit) {
                  //     Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => HomePage()),);
                  //   } else {
                  //     Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => HomePage()),);
                  //   }
                  // });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Add Later', style: TextStyle(
                        fontFamily: 'Roboto', color: AppColors.accentcolor, fontSize: 16, fontWeight: FontWeight.w500, decoration: TextDecoration.underline
                    ),),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_forward, color: AppColors.accentcolor,),
                    ),

                  ],
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }

  // void _showPicker(context) {
  //   showModalBottomSheet(
  //       context: context,
  //       builder: (BuildContext bc) {
  //         return SafeArea(
  //           child: Container(
  //             child: new Wrap(
  //               children: <Widget>[
  //                 new ListTile(
  //                     leading: new Icon(Icons.photo_library),
  //                     title: new Text('Photo Library'),
  //                     onTap: () {
  //                       _imgFromGallery();
  //                       Navigator.of(context).pop();
  //                     }),
  //                 new ListTile(
  //                   leading: new Icon(Icons.photo_camera),
  //                   title: new Text('Camera'),
  //                   onTap: () {
  //                     _imgFromCamera();
  //                     Navigator.of(context).pop();
  //                   },
  //                 ),
  //               ],
  //             ),
  //           ),
  //         );
  //       }
  //   );
  // }

}
