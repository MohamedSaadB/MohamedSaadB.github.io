import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_landing_page/features/home/data/reposatories/portfolio_repository.dart';
import 'package:my_landing_page/features/home/presentation/cubit/home_content_cubit.dart';
import 'app.dart';
import 'features/settings/settings_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiBlocProvider(providers: [
      BlocProvider(create:(context)=> SettingsCubit()),
      BlocProvider(create:(context)=> HomeContentCubit(PortfolioRepository())..load())
    ], child: App())
  );
}
