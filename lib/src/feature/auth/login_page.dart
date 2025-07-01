import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:student_dashboard_app/src/feature/auth/widgets/login_formfield.dart';

import '../../common/routing/app_router.dart';
import 'bloc/login_bloc.dart';
import 'bloc/login_event.dart';
import 'bloc/login_state.dart';
import 'widgets/login_button.dart';
import 'widgets/login_header.dart';
import 'widgets/login_error_display.dart';
import 'controllers/login_controller.dart';

@RoutePage()
class LoginPage extends HookWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: const _LoginPageContent(),
    );
  }
}

class _LoginPageContent extends HookWidget {
  const _LoginPageContent();

  @override
  Widget build(BuildContext context) {
    // Modern state management with hooks
    final loginBloc = context.read<LoginBloc>();
    final loginController = useLoginController(loginBloc);
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final obscurePassword = useState(true);

    // Single animation controller for all animations
    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 800),
    );

    // Focus nodes
    final emailFocusNode = useFocusNode();
    final passwordFocusNode = useFocusNode();

    // Memoized animations (computed only once)
    final pageAnimation = useMemoized(
      () => AnimatedPageTransition(animationController),
      [animationController],
    );

    // Auto-start animation
    useEffect(() {
      animationController.forward();
      return null;
    }, []);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) => _handleStateChanges(context, state),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: AnimatedBuilder(
                animation: pageAnimation.fadeAnimation,
                builder:
                    (context, child) => FadeTransition(
                      opacity: pageAnimation.fadeAnimation,
                      child: SlideTransition(
                        position: pageAnimation.slideAnimation,
                        child: Form(
                          key: formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const LoginHeader(),
                              const SizedBox(height: 32),

                              LoginFormField.email(
                                controller: loginController.emailController,
                                focusNode: emailFocusNode,
                                onFieldSubmitted:
                                    (_) => passwordFocusNode.requestFocus(),
                              ),
                              const SizedBox(height: 16),

                              LoginFormField.password(
                                controller: loginController.passwordController,
                                focusNode: passwordFocusNode,
                                obscureText: obscurePassword.value,
                                onToggleVisibility:
                                    () => _togglePassword(obscurePassword),
                                onFieldSubmitted:
                                    (_) => _handleLogin(
                                      context,
                                      formKey,
                                      loginBloc,
                                    ),
                              ),
                              const SizedBox(height: 32),
                              ValueListenableBuilder<bool>(
                                valueListenable:
                                    loginController.formValidNotifier,
                                builder:
                                    (context, isValid, _) => LoginButton(
                                      onPressed:
                                          isValid
                                              ? () => _handleLogin(
                                                context,
                                                formKey,
                                                loginBloc,
                                              )
                                              : null,
                                    ),
                              ),
                              const LoginErrorDisplay(),
                            ],
                          ),
                        ),
                      ),
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Clean, focused methods
  void _handleStateChanges(BuildContext context, LoginState state) {
    if (state.errorMessage != null) {
      HapticFeedback.heavyImpact();
    }

    if (state.isLoginSuccessful) {
      HapticFeedback.lightImpact();
      context.router.popAndPush(MainWrapperRoute());
    }
  }

  void _togglePassword(ValueNotifier<bool> obscurePassword) {
    HapticFeedback.lightImpact();
    obscurePassword.value = !obscurePassword.value;
  }

  void _handleLogin(
    BuildContext context,
    GlobalKey<FormState> formKey,
    LoginBloc loginBloc,
  ) {
    HapticFeedback.mediumImpact();
    FocusScope.of(context).unfocus();

    if (formKey.currentState?.validate() ?? false) {
      loginBloc.add(const LoginEvent.loginSubmitted());
    }
  }
}

// Custom hook for login controller
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

// Animation helper class
class AnimatedPageTransition {
  AnimatedPageTransition(AnimationController controller)
    : fadeAnimation = Tween<double>(
        begin: 0.0,
        end: 1.0,
      ).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut)),
      slideAnimation = Tween<Offset>(
        begin: const Offset(0, 0.1),
        end: Offset.zero,
      ).animate(
        CurvedAnimation(parent: controller, curve: Curves.easeOutCubic),
      );

  final Animation<double> fadeAnimation;
  final Animation<Offset> slideAnimation;
}
