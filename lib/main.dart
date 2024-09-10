import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'word_model.dart';

void main(){
  runApp(
    ChangeNotifierProvider(
        create: (context) =>WordModel(),
        child: MyApp(),

    ),
  );
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Consumer <WordModel>(
            builder: (context, wordModel, child) {
              return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){
                    wordModel.generateRandomAnimal();
                  },
                child:Text("Случайное животное",style: TextStyle(fontSize: 18),),
          ),
          SizedBox(height:20),
          if(wordModel.randomAnimal != null)
          Column(
            children: [
              Text("Животное: ${wordModel.randomAnimal!.name}",style: TextStyle(fontSize: 20),
              ),
              Text("Возраст: ${wordModel.randomAnimal!.age} лет",style: TextStyle(fontSize: 20),
              ),
              Text("Вес: ${wordModel.randomAnimal!.weight} килограммов",style: TextStyle(fontSize: 20),
              ),
              Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: wordModel.randomAnimal!.skills.map((skill) => Text(skill, style: TextStyle(fontSize: 20),textAlign: TextAlign.center,)).toList(),
              )
            ],
          )
          ],
              );
          },
          ),
        ),
      ),
    );
  }
}





/*void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeController(),
      child: const MaterialApp(
        home: HomeView(),
      ),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeController>(context);
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            controller.increment();
          },
          child: Text('${controller.i}'),
        ),
      ),
    );
  }
}

class HomeController extends ChangeNotifier {
  int i = 0;
  void increment() {
    i += 1;
    notifyListeners();
  }
}*/


