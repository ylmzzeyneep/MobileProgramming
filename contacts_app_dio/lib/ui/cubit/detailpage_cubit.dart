import 'package:contacts_app_dio/data/repo/kisilerdao_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailPageCubit extends Cubit<void>{
  DetailPageCubit(): super(0);

  var krepo = KisilerDaoRepo();

  Future<void> guncelle(int kisi_id, String kisi_ad, String kisi_tel)async{
    await krepo.guncelle(kisi_id, kisi_ad, kisi_tel);
  }
}