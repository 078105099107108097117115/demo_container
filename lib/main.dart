import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(
    title:'Container Demo App',
    home: MyApp()
));

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Container'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.account_box), onPressed: null)
        ],

      ),
      body: Material(
          child: _buildImageColumn(),
      )
    );
  }
  Widget _buildDecoratedImage(int imageIndex){
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 10,color: Colors.black54),
          borderRadius: const BorderRadius.all(const Radius.circular(8)),
        ),
        margin: const EdgeInsets.all(4),
        child: Image.asset('images/pic$imageIndex.jpg',fit: BoxFit.fitWidth,),
      ),
    );
  }
  Widget _buildImageRow(int imageIndex)=>Row(
    children: <Widget>[
      _buildDecoratedImage(imageIndex),
      _buildDecoratedImage(imageIndex + 1),
    ],

  );
  Widget _buildImageColumn()=>Container(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black87,width: 12.0,style: BorderStyle.solid),
      borderRadius: BorderRadius.all(Radius.circular(9.0)),
    ),
    child: Column(
      children: <Widget>[
        _buildImageRow(1),
        _buildImageRow(3),
      ],
    ),

  );


}