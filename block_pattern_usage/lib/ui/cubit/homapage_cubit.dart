import 'package:block_pattern_usage/data/repo/maths_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageCubit extends Cubit<int>{
  HomePageCubit(): super(0);

  var mrepo = MathsRepo();

  void toplamaYap(String alinanSayi1, String alinanSayi2){
    int sonuc = mrepo.toplamaYap(alinanSayi1, alinanSayi2);
    emit(sonuc);
  }

  void carpmaYap(String alinanSayi1, String alinanSayi2){
    emit(mrepo.carpmaYap(alinanSayi1, alinanSayi2));
  }

}