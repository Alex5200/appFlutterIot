//  Expanded(
//                   child: Container(
//                     //alignment: Alignment(2.0, 2.0),
//                     margin: EdgeInsets.fromLTRB(10, 0, 10, 0),

//                     width: 150,
//                     height: 50,
//                     child: TextButton(
//                         // btn 1
//                         style: btnStyle,
//                         onPressed: () {},
//                         child: const Text(
//                           'Loging',
//                           style: TextStyle(
//                             fontSize: 21,
//                             color: Colors.white,
//                           ),
//                         )),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
//                     width: 350,
//                     height: 50,
//                     child: TextButton(
//                       //btn 2
//                       style: btnStyle,
//                       onPressed: () {
//                         final snackBar = SnackBar(
//                           content: Text('Hey you loging '),
//                           backgroundColor: Colors.green,
//                           //color: Colors.white,
//                           action: SnackBarAction(
//                             textColor: Colors.white,
//                             label: 'Ok',
//                             onPressed: () {
//                               // Some code to undo the change.
//                             },
//                           ),
//                         );

//                         // Find the ScaffoldMessenger in the widget tree
//                         // and use it to show a SnackBar.
//                         ScaffoldMessenger.of(context).showSnackBar(snackBar);
//                       },
//                       child: const Text(
//                         'Submit',
//                         style: TextStyle(
//                           fontSize: 21,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),