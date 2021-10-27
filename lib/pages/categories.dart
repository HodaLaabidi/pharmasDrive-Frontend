
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Row(
          children: [
           
            Expanded(
              flex: 20,
              child: Scaffold(
                appBar: AppBar(
                    title: Text("Médicaments > Catégories"),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextButton(
                          onPressed: () {},
                          child: Text("Nom Admin",style:TextStyle(color:Colors.white)),
                          
                        ),
                      ),
                      
                         IconButton(
                          iconSize: 35.0,
                          icon: Icon(Icons.person_outline),
                          tooltip: 'Nom Admin',
                          onPressed: () {},
                        ),
                      
                    ],
                    shadowColor: Colors.black12,
                    backgroundColor: Color(0xFF21ba19)),
                ///// body will change with widgets dynamiclly

                body: Column(
                  children: [
                     SizedBox(height:5),
                    Text("Categories"),
                  ],
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}