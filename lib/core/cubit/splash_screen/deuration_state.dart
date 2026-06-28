part of 'deuration_cubit.dart';


sealed  class DeurationState {
  final int deuration;

  DeurationState(this.deuration);
}

class DeurationInitial extends DeurationState {
  DeurationInitial():super(1);
}
