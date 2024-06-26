

import 'package:flutter/material.dart';
import 'package:ooumph/view/sign_up.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await initHiveForFlutter();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SignUpPage(),
  ));
}