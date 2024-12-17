import 'package:contacts_app_dio/data/repo/kisilerdao_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistrationPageCubit extends Cubit<void>{
  RegistrationPageCubit():super(0);

  var krepo = KisilerDaoRepo();

  Future<void> kaydet(String kisi_ad, String kisi_tel)async{
    await krepo.kaydet(kisi_ad, kisi_tel);
  }
}