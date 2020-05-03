import 'package:blocworkflow/page/home.dart';
import 'package:blocworkflow/page/login.dart';
import 'package:blocworkflow/page/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/login_bloc.dart';
import 'bloc/operation_bloc.dart';
import 'bloc/profile_bloc.dart';

void main() => runApp(MaterialApp(initialRoute: '/', routes: {
      '/': (context) {
        return BlocProvider(
          create: (context) => LoginBloc(),
          child: Login(),
        );
      },
      '/profile': (context) {
        return BlocProvider(
          create: (context) => ProfileBloc(),
          child: Profile(),
        );
      },
    }));
