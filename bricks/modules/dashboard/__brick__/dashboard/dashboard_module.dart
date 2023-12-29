import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile_mock/mobile_module/features/dashboard/dashboard_screen/cubit/dashboard_cubit.dart';

import 'dashboard_screen/dashboard_screen.dart';

class DashboardModule extends Module {
  @override
  void binds(Injector i) {
    i.add<DashboardCubit>(DashboardCubit.new);
    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => const DashboardScreen(),
      transition: TransitionType.noTransition,
      children: [],
    );

    super.routes(r);
  }
}
