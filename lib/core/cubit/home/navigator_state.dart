part of 'navigator_cubit.dart';


sealed class NavigatorSatate {
  final int slectedIndex;

  NavigatorSatate(this.slectedIndex);
}

class NavigatorInitial extends NavigatorSatate {
  NavigatorInitial():super(0);
}
class NewUpdatedindex extends NavigatorSatate{
  
  NewUpdatedindex(int index ):super(index);
}