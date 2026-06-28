import 'package:bloc/bloc.dart';


part 'deuration_state.dart';

class DeurationCubit extends Cubit<DeurationState> {
  DeurationCubit(super.DeurationInitial);

void delayDuration(){
  emit(DeurationInitial());

}
}