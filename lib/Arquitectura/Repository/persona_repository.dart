import 'package:dio/dio.dart';
import 'package:flutter_copy_and_paste/Arquitectura/Persona/persona.dart';
import 'package:flutter_copy_and_paste/Arquitectura/Services/personas_provider.dart';

import 'package:meta/meta.dart';


class PersonaRepository {
  RestClient api = RestClient(Dio());

  Future<List<String>> getThings({@required int id}) {//Future<RecipeListResponse>
    return api.getThings(id);
  }

  Future<String> addThing({@required int id, @required Persona persona}) {
    return api.addThings(id, persona);
  }


}
