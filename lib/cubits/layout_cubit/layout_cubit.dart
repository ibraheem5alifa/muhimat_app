import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:muhimat_app/cubits/layout_cubit/layout_states.dart';

class LayoutCubit extends Cubit<LayoutStates> {
  LayoutCubit() : super(LayoutStateInitial());
  int currentIndex = 0;

  changeLayout(int index) {
    currentIndex = index;
    log(index.toString());
    emit(LayoutStateChanges());
  }
}
