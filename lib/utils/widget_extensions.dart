import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

extension ThingsProvider on BuildContext {
  ScaffoldState get scaffold => Scaffold.of(this);
  NavigatorState get navigator => Navigator.of(this);
  B bloc<B extends Bloc>() => BlocProvider.of<B>(this);
}
