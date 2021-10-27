  


import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';



class ParamProfil extends StatelessWidget {
  const ParamProfil({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              
              Expanded(
                flex: 20,
                child: Scaffold(
                 
                  body:  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100 , left: 20, right: 20,bottom: 20,),
                      child: Container(
                        width: double.infinity ,
                        decoration : BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)) , border: Border.all(color: bgColor) , color: Colors.white ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                
                                Padding(
                                  padding: const EdgeInsets.only(left:20,top:10,bottom: 8),
                                  child: Text("Paramétres",style:TextStyle(
                                        color: primaryColor,
                                        fontFamily: "Montserrat",
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16
                                        
                                      )),
                                ),
                               
                                    Padding(
                                  padding: const EdgeInsets.only(left:20,top:20,bottom: 8),
                                  child: Text("Nom",style:TextStyle(
                                       color: Color(0xFF3F4B57),
                                        fontFamily: "Montserrat",
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14
                                        
                                      )),
                                ),
                               Container(
                                       
                                       width: 400,
                                       decoration:  BoxDecoration(
                                          border: Border.all(
                                           color: Colors.white,
                                            ),
                                         borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                        color: Colors.white,
                                         boxShadow :[
                                           BoxShadow(
                                             color:Colors.black38,
                                             blurRadius: 2,
                                             offset: Offset(1, 2)
                                           )
                                         ]
                                       ),
                                       child: Padding(
                                         padding: const EdgeInsets.all(14.0),
                                         child: Text("Foulen ben Falten" ,
                                                          style: TextStyle(
                                                                
                                                                fontFamily: "Montserrat",
                                                                fontStyle: FontStyle.normal,
                                                                fontWeight: FontWeight.w500,
                                                                fontSize: 14)),
                                       )
                                     ),  
                                     
                                    //////email
                                      Padding(
                                  padding: const EdgeInsets.only(left:20,top:20,bottom: 8),
                                  child: Text("Email",style:TextStyle(
                                       color: Color(0xFF3F4B57),
                                        fontFamily: "Montserrat",
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14
                                        
                                      )),
                                ),
                               Container(
                                       
                                       width: 400,
                                       decoration:  BoxDecoration(
                                          border: Border.all(
                                           color: Colors.white,
                                            ),
                                         borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                        color: Colors.white,
                                         boxShadow :[
                                           BoxShadow(
                                             color:Colors.black38,
                                             blurRadius: 2,
                                             offset: Offset(1, 2)
                                           )
                                         ]
                                       ),
                                       child: Padding(
                                         padding: const EdgeInsets.all(14.0),
                                         child: Text("foulenbenfalten@gmail.com" ,
                                                          style: TextStyle(
                                                                
                                                                fontFamily: "Montserrat",
                                                                fontStyle: FontStyle.normal,
                                                                fontWeight: FontWeight.w500,
                                                                fontSize: 14)),
                                       )
                                     ) ,
                                     ///telephone 
                                       Padding(
                                  padding: const EdgeInsets.only(left:20,top:20,bottom: 8),
                                  child: Text("N° de téléphone",style:TextStyle(
                                       color: Color(0xFF3F4B57),
                                        fontFamily: "Montserrat",
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14
                                        
                                      )),
                                ),
                               Container(
                                       
                                       width: 400,
                                       decoration:  BoxDecoration(
                                          border: Border.all(
                                           color: Colors.white,
                                            ),
                                         borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                        color: Colors.white,
                                         boxShadow :[
                                           BoxShadow(
                                             color:Colors.black38,
                                             blurRadius: 2,
                                             offset: Offset(1, 2)
                                           )
                                         ]
                                       ),
                                       child: Padding(
                                         padding: const EdgeInsets.all(14.0),
                                         child: Text("5496461616516" ,
                                                          style: TextStyle(
                                                                
                                                                fontFamily: "Montserrat",
                                                                fontStyle: FontStyle.normal,
                                                                fontWeight: FontWeight.w500,
                                                                fontSize: 14)),
                                       )
                                     )    ,
                                            Padding(
                                  padding: const EdgeInsets.only(left:20,top:20,bottom: 8),
                                  child: Text("Mot de passe",style:TextStyle(
                                       color: Color(0xFF3F4B57),
                                        fontFamily: "Montserrat",
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14
                                        
                                      )),
                                ),
                                         Container(
                                       
                                       width: 400,
                                       decoration:  BoxDecoration(
                                          border: Border.all(
                                           color: Colors.white,
                                            ),
                                         borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                        color: Colors.white,
                                         boxShadow :[
                                           BoxShadow(
                                             color:Colors.black38,
                                             blurRadius: 2,
                                             offset: Offset(1, 2)
                                           )
                                         ]
                                       ),
                                       child: Padding(
                                         padding: const EdgeInsets.all(14.0),
                                         child: Text("*******" ,
                                                          style: TextStyle(
                                                                
                                                                fontFamily: "Montserrat",
                                                                fontStyle: FontStyle.normal,
                                                                fontWeight: FontWeight.w500,
                                                                fontSize: 14)),
                                       )
                                     )   ,
                                                Padding(
                                  padding: const EdgeInsets.only(left:20,top:20,bottom: 8),
                                  child: Text("Nouveau mot de passe",style:TextStyle(
                                       color: Color(0xFF3F4B57),
                                        fontFamily: "Montserrat",
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14
                                        
                                      )),
                                ),
                                         Container(
                                       
                                       width: 400,
                                       decoration:  BoxDecoration(
                                          border: Border.all(
                                           color: Colors.white,
                                            ),
                                         borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                        color: Colors.white,
                                         boxShadow :[
                                           BoxShadow(
                                             color:Colors.black38,
                                             blurRadius: 2,
                                             offset: Offset(1, 2)
                                           )
                                         ]
                                       ),
                                       child: Padding(
                                         padding: const EdgeInsets.all(14.0),
                                         child: Text("*****" ,
                                                          style: TextStyle(
                                                                
                                                                fontFamily: "Montserrat",
                                                                fontStyle: FontStyle.normal,
                                                                fontWeight: FontWeight.w500,
                                                                fontSize: 14)),
                                       )
                                     )              
                                                  
                                 ,

                                 Container(
                                  
                                  
                                   
                                   child:  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                                     Expanded(flex:1 , child: Column(children: [
                                        Padding(
                                  padding: const EdgeInsets.only(left:20,top:20,bottom: 8),
                                  child: Text("Nouveau mot de passe",style:TextStyle(
                                       color: Color(0xFF3F4B57),
                                        fontFamily: "Montserrat",
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14
                                        
                                      )),
                                ),
                                         Container(
                                       
                                       width: 400,
                                       decoration:  BoxDecoration(
                                          border: Border.all(
                                           color: Colors.white,
                                            ),
                                         borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                        color: Colors.white,
                                         boxShadow :[
                                           BoxShadow(
                                             color:Colors.black38,
                                             blurRadius: 2,
                                             offset: Offset(1, 2)
                                           )
                                         ]
                                       ),
                                       child: Padding(
                                         padding: const EdgeInsets.all(14.0),
                                         child: Text("*****" ,
                                                          style: TextStyle(
                                                                
                                                                fontFamily: "Montserrat",
                                                                fontStyle: FontStyle.normal,
                                                                fontWeight: FontWeight.w500,
                                                                fontSize: 14)),
                                       )
                                     )              
                                                  
                                 ,
                                     ],),) ,
                                     Expanded(flex:1 , child: Column(children: [
                                        Padding(
                                  padding: const EdgeInsets.only(left:20,top:20,bottom: 8),
                                  child: Text("Nouveau mot de passe",style:TextStyle(
                                       color: Color(0xFF3F4B57),
                                        fontFamily: "Montserrat",
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14
                                        
                                      )),
                                ),
                                         Container(
                                       
                                       width: 400,
                                       decoration:  BoxDecoration(
                                          border: Border.all(
                                           color: Colors.white,
                                            ),
                                         borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                        color: Colors.white,
                                         boxShadow :[
                                           BoxShadow(
                                             color:Colors.black38,
                                             blurRadius: 2,
                                             offset: Offset(1, 2)
                                           )
                                         ]
                                       ),
                                       child: Padding(
                                         padding: const EdgeInsets.all(14.0),
                                         child: Text("*****" ,
                                                          style: TextStyle(
                                                                
                                                                fontFamily: "Montserrat",
                                                                fontStyle: FontStyle.normal,
                                                                fontWeight: FontWeight.w500,
                                                                fontSize: 14)),
                                       )
                                     )              
                                                  
                                 ,
                                     ],),)
                                   ],),
                                 ) ,



                                 Container(
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     children: [
                                       Expanded(flex : 1 ,child: InkWell(
                onTap: () {
                  
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 50 , left: 50 , right: 10),
                  child: Container(
                    margin: EdgeInsets.only( right: 40),
                    decoration: BoxDecoration(
                        color: primaryColor, borderRadius: BorderRadius.circular(5)),
                    alignment: Alignment.center,
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                       "Enregistrer", style: TextStyle(color: Colors.white),
                      
                    ),
                  ),
                ),
              ), ),
              SizedBox( width: 100,)
                                     ,
                                       Expanded(flex : 1 ,child: InkWell(
                onTap: () {
                  
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 50 , right: 50),
                  child: Container(
                    margin: EdgeInsets.only(left: 40, right: 20),
                    decoration: BoxDecoration(
                        color: bgColor, borderRadius: BorderRadius.circular(5)),
                    alignment: Alignment.center,
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                       "Cancel", style: TextStyle(color: Colors.black),
                      
                    ),
                  ),
                ),
              ), )
                                     ,
                                     
                                     ],
                                   )

                                 )            
                                                  
                                    
                                 
                                     
                                
                              ],
                            ),
                        ),
                      ),
                    ),
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