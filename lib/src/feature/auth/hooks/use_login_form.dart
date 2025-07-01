import '../bloc/login_bloc.dart';
import '../controllers/login_controller.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

LoginController useLoginController(LoginBloc loginBloc) {
  final emailController = useTextEditingController(
    text: 'loisbecket@gmail.com',
  );
  final passwordController = useTextEditingController();

  final controller = useMemoized(
    () => LoginController(
      emailController: emailController,
      passwordController: passwordController,
      loginBloc: loginBloc,
    ),
    [loginBloc],
  );

  useEffect(() {
    return controller.dispose;
  }, [controller]);

  return controller;
}
