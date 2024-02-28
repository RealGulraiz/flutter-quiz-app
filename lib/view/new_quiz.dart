import 'package:flutter/material.dart';

class NewQuiz extends StatefulWidget {
  const NewQuiz({Key? key}) : super(key: key);

  @override
  State<NewQuiz> createState() => _NewQuizState();
}

class _NewQuizState extends State<NewQuiz> {
  // List<String> quizTypes = ['Checkbox' , 'Poll', 'Multiple Answers' , 'True/False' , 'Free Teext'];
  // String? selectedQuizType = 'select';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          title: Text('Create Quiz'),
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor:  Colors.deepPurple,
          leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
              child: Icon(Icons.chevron_left)
          ),
          actions: const [
            Icon(Icons.more_horiz),
          ],
          bottom: const TabBar(
              tabs: [
                Tab(text: '1',),
                Tab(text: '2',),
                Tab(text: '3',),
              ],
            labelColor: Colors.white,
            indicatorColor: Colors.black,
            unselectedLabelColor: Colors.white70,
          ),
        ),
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.98,
            width: MediaQuery.of(context).size.width * 0.95,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
            child: TabBarView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // add cover image
                      Container(
                        height: MediaQuery.of(context).size.height * 0.27,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          color: Color(0xFFFAE6FA),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.image),
                            Center(
                              child: Text('Add Cover Image', style: TextStyle(color: Colors.purpleAccent, fontSize: 16),),
                            ),
                          ],
                        ),
                      ),

                      // Time and Quiz Type Selection
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Icon(Icons.timer),
                                DropdownButton<String>(
                                  items: <String>['10 sec', '20 sec', '30 sec', '40 sec', '50 sec'].map((String value){
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (_){},
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: DropdownButton<String>(
                              items: <String>['Checkbox', 'Poll', 'Multiple Answers', 'True False', 'Free Text'].map((String value){
                                return DropdownMenuItem<String>(
                                  value: value,
                                    child: Text(value),
                                );
                              }).toList(),
                              onChanged: (_){},
                            ),
                          )
                        ]
                      ),

                      // Add Question Segment
                      SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                      Text('Add Question',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'h',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),

                      // Correct Answer Segment
                      SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                      Text('Select Correct Answer',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'hh',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),

                      // Save Button
                      SizedBox(height: MediaQuery.of(context).size.height * 0.07,),
                      Center(
                        child: Container(
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
                      ),
                    ],
                  ),
                ),



                // Code for 2nd Tab
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // add cover image
                      Container(
                        height: MediaQuery.of(context).size.height * 0.27,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          color: Color(0xFFFAE6FA),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.image),
                            Center(
                              child: Text('Add Cover Image', style: TextStyle(color: Colors.purpleAccent, fontSize: 16),),
                            ),
                          ],
                        ),
                      ),

                      // Time and Quiz Type Selection
                      Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  Icon(Icons.timer),
                                  DropdownButton<String>(
                                    items: <String>['10 sec', '20 sec', '30 sec', '40 sec', '50 sec'].map((String value){
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (_){},
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: DropdownButton<String>(
                                items: <String>['Checkbox', 'Poll', 'Multiple Answers', 'True False', 'Free Text'].map((String value){
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (_){},
                              ),
                            )
                          ]
                      ),

                      // Add Question Segment
                      SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                      Text('Add Question',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'h',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),

                      // Correct Answer Segment
                      SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                      Text('Select Correct Answer',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'hh',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),

                      // Save Button
                      SizedBox(height: MediaQuery.of(context).size.height * 0.07,),
                      Center(
                        child: Container(
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
                      ),
                    ],
                  ),
                ),



                // Code for 3rd Tab
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // add cover image
                      Container(
                        height: MediaQuery.of(context).size.height * 0.27,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          color: Color(0xFFFAE6FA),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.image),
                            Center(
                              child: Text('Add Cover Image', style: TextStyle(color: Colors.purpleAccent, fontSize: 16),),
                            ),
                          ],
                        ),
                      ),

                      // Time and Quiz Type Selection
                      Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  Icon(Icons.timer),
                                  DropdownButton<String>(
                                    items: <String>['10 sec', '20 sec', '30 sec', '40 sec', '50 sec'].map((String value){
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (_){},
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: DropdownButton<String>(
                                items: <String>['Checkbox', 'Poll', 'Multiple Answers', 'True False', 'Free Text'].map((String value){
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (_){},
                              ),
                            )
                          ]
                      ),

                      // Add Question Segment
                      SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                      Text('Add Question',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'h',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),

                      // Correct Answer Segment
                      SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                      Text('Select Correct Answer',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'hh',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),

                      // Save Button
                      SizedBox(height: MediaQuery.of(context).size.height * 0.07,),
                      Center(
                        child: Container(
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
                      ),
                    ],
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
