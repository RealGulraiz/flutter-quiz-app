import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/view/new_quiz.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text('Create Quiz'),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor:  Colors.deepPurple,
        leading: Icon(Icons.chevron_left),
        actions: [
          Icon(Icons.more_horiz),
        ],
      ),
      body: Expanded(
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.98,
              width: MediaQuery.of(context).size.width * 0.95,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.09,),
                  Center(
                    child: Text('No Questions Added', style: TextStyle(fontSize: 16),),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return NewQuiz();
                        }));
                      },
                      child: Center(
                        child: Text('Add New', style: TextStyle(color: Colors.white, fontSize: 16),),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.5,),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text('Save', style: TextStyle(color: Colors.white, fontSize: 16),),
                    ),
                  ),

                ],
              ),
            ),
          ),
      ),
    );
  }
}
