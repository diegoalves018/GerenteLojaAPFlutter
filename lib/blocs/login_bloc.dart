import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:gerente_loja/validators/login_validators.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc extends BlocBase with LoginValidators{
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  Stream<String> get outEmail => _emailController.stream.transform(validateEmail);
  Stream<String> get outPassword => _passwordController.stream.transform(validatePassord);

  @override
  void dispose() {
    _emailController.close();
    _passwordController.close();
  }

}