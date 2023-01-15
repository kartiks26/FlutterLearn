import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/app.dart';
import 'package:untitled/counyer_observer.dart';
import 'package:untitled/counter/counter.dart';

void main() {
  Bloc.observer = CounterObserver();
  runApp(const CounterApp());
}