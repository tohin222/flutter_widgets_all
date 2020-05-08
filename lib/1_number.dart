import 'package:flutter/material.dart';

class OneNumber extends StatefulWidget {
  static final oneRoute = '/one';

  @override
  _OneNumberState createState() => _OneNumberState();
}

class _OneNumberState extends State<OneNumber> {
  String _value = 'Hello';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('One'),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 20.0,),
          Center(
              child: DropdownButton<String>(
                items: [
                  DropdownMenuItem<String>(
                    value: _value,
                    child: Text('One'),

                  ),
                  DropdownMenuItem<String>(
                    value: _value,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.verified_user),
                        SizedBox(width: 10,),
                        Text(
                          'Faysal',
                          style:  TextStyle(color: Colors.black),
                        ),
                      ],
                    ),

                  ),
                ],
                onChanged: (String value){
                  setState(() {
                    value =_value;
                  });
                },
                hint: Text('Type',style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20
                ),),
                elevation: 2,
                style: TextStyle(color: Colors.purple, fontSize: 20),
                isDense: true,
                iconSize: 30.0,
                icon: Icon(Icons.arrow_downward),
                iconEnabledColor: Colors.red,
                underline: Container(
                       height: 1,

                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                  ),
                   ),

              )
          )
        ],
      ),
    );
  }
}
