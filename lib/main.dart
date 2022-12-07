import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seeyoulaternavigator/presentation/pages/authentication/cubit/authentication_cubit.dart';
import 'package:seeyoulaternavigator/presentation/router/router.gr.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => AuthenticationCubit(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Ver2go',
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

const accessToken = "EjD9AriPap2QsijTmpPy";



/* import 'package:chopper/chopper.dart';

// Source code generation in Dart works by creating a new file which contains a "companion class".
// In order for the source gen to know which file to generate and which files are "linked", you need to use the part keyword.
part 'starwars_api_service.chopper.dart';

@ChopperApi(baseUrl: 'https://swapi.py4e.com/api')
abstract class StarWarsApiService extends ChopperService {
  @Get(path: '/people')
  Future<Response> getPeople();

  @Get(path: '/people/{id}')
  Future<Response> getPerson(@Path('id') int id);

  static StarWarsApiService create() {
    final client = ChopperClient(
      baseUrl: 'https://jsonplaceholder.typicode.com',
      services: [
        _$StarWarsApiService(),
      ],
      converter: const JsonConverter(),
      errorConverter: const JsonConverter(),
      interceptors: [HttpLoggingInterceptor()],
    );
    return _$StarWarsApiService(client);
  }
}
 */