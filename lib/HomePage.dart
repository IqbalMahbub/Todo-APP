import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todoapps/style.dart';

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  List ItemList =[];
  String item="";

  myInputOnChanged(content){
   item=content;
  }
  addTask(){
    setState(() {
      ItemList.add({'item':item});
    });
  }
RemoveItem(index){
    setState(() {
      ItemList.removeAt(index);
    });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
          leading: Icon(Icons.today_outlined),
          title: Text('Todo App'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 10,
              child: Row(
                children: [
                  Expanded(flex:80, child: TextFormField(
                    onChanged: (value){
                      myInputOnChanged(value);
                    },
                      decoration: inputStyling('Input Task'))),
                  Expanded( flex: 20, child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: ElevatedButton(
                      style: buttonStyle(),
                      onPressed: (){
                        addTask();
                      },
                      child: Text
                      ("ADD"),),
                  ))

                ],
              )),
          Expanded(
            flex: 90,
              child:ListView.builder(
                itemCount: ItemList.length,
                  itemBuilder: (context,index){
                  return Card(
                    elevation: 5,

                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                    child: Padding(
                      padding: EdgeInsets.all(15),
                        child: Row(
                            children: [
                              Expanded(
                                flex:90,
                                  child: Text(ItemList[index]['item'])),
                              Expanded(
                                flex: 10,
                                  child:ElevatedButton(
                                    //style: buttonStyle() ,
                                    onPressed: (){
                                      RemoveItem(index);
                                    },child:  Icon
                                    (Icons.delete),),)
                         ]
                        )
                    )
                  );
                  })
          )
        ],
      ),
    );
  }
}
