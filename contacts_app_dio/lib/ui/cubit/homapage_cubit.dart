import 'package:contacts_app_dio/data/entity/kisiler.dart';
import 'package:contacts_app_dio/data/repo/kisilerdao_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomePageCubit extends Cubit<List<Kisiler>>{
  HomePageCubit(): super (<Kisiler>[]);


  var krepo = KisilerDaoRepo();

  Future<void>kisileriYukle() async{
    var liste = await krepo.kisileriYukle();
    emit(liste);
  }

  Future<void> ara(String aramaKelimesi) async {
    var liste = await krepo.ara(aramaKelimesi);
    emit(liste);
  }

  Future<void> sil(int kisi_id) async {
    await krepo.sil(kisi_id);
    await kisileriYukle();
  }
}