import 'package:films_app_dio/data/entity/filmler.dart';
import 'package:films_app_dio/repo/filmsdao_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageCubit extends Cubit<List<Filmler>>{
  HomePageCubit() : super(<Filmler>[]);

  var frepo = FilmlerDaoRepo();

  Future<void> filmleriYukle() async {
    var liste = await frepo.filmleriYukle();
    emit(liste);
  }

}