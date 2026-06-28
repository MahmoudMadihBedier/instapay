import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';


part 'navigator_state.dart';

class NavigatorCubit extends Cubit<NavigatorSatate> {
  NavigatorCubit() : super(NavigatorInitial());

  void updateIndex(int newindex){
    ;
  }

}
