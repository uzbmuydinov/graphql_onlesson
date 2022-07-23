import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_onlesson/graphQL/graphql_config.dart';
import 'package:graphql_onlesson/pages/home_page.dart';
GraphQLConfiguration graphQLConfiguration=GraphQLConfiguration();
void main() {

 runApp(GraphQLProvider(
   client: graphQLConfiguration.client,
   child: CacheProvider(child:MyApp())
 ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.orange,
      ),
      home: HomePage(),
    );
  }
}
