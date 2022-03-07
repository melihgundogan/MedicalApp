import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:fsc_ibb/core/logger.dart';

class SignUpViewModel extends BaseViewModel {
  Logger log;

  SignUpViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
