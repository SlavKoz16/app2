import 'package:flutter/material.dart';
import 'dart:math';

class Animal{
  final String name;
  final int age;
  final double weight;
  final List <String> skills;


  Animal ({required this.name, required this.age, required this.weight, required this.skills});
}

class WordModel extends ChangeNotifier{
  final List<Animal> animals = [
    Animal(name:"Бык", age:10, weight: 300, skills:["Скиллы: сильный, быстрый"]),
    Animal(name:"Петух", age:2, weight:4, skills:["Скиллы: Быстрый, громко орет, агрессивный"]),
    Animal(name:"Змея", age:5, weight:1, skills:["Скиллы: Гибкая, быстрая, большая скорость реакции"]),
    Animal(name:"Кролик", age:3, weight: 3, skills:["Скиллы: Быстрый, хитрый, незаметный"]),
    Animal(name:"Овца", age:5, weight:30, skills:["Скиллы: Много меха"]),
    Animal(name:"Дракон",age:1240, weight:560, skills:["Скиллы: Быстрый, сильный, умеет летать, изрыгает огонь"]),
    Animal(name:"Крыса",age:1, weight:0.2, skills:["Скиллы: Маленькая, быстрая, ест всё что только можно"]),
    Animal(name:"Лошадь", age:12, weight:230, skills:["Скиллы: Сильная, умная, быстрая, красивая"]),
    Animal(name:"Обезьяна",age:5, weight:23, skills:["Скиллы: Сильная, ловкая, быстрая, умная"]),
    Animal(name:"Собака", age:6, weight:14, skills:["Скиллы: Умная, верная, ловкая"]),
    Animal(name:"Свинья", age:4, weight:15, skills:["Скиллы: Вкусная"]),
    Animal(name:"Тигр", age:12, weight:343, skills:["Скиллы: Сильный, ловкий, быстрый, хитрый"]),
  ];

  final Random random=Random();
  Animal? _randomAnimal;

  Animal? get randomAnimal=> _randomAnimal;

  void generateRandomAnimal(){
    _randomAnimal = animals[random.nextInt(animals.length)];
    notifyListeners();
  }

}
