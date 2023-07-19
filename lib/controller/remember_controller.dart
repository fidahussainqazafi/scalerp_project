import 'package:scalerp/conts/const.dart';
import 'package:provider/provider.dart';
class RemController extends ChangeNotifier{

  bool _remeberMe = false;

  get remberMe => _remeberMe;

  void changeRemberMe(bool newValue){
    _remeberMe = newValue;
    notifyListeners();
  }
}