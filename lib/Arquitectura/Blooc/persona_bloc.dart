import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_copy_and_paste/Arquitectura/Persona/persona.dart';


part 'persona_event.dart';
part 'persona_state.dart';

class PersonaBloc extends Bloc<PersonaEvent, PersonaState> {
  PersonaBloc() : super(InitialState());

  final Persona persona = new Persona();

  @override
  Stream<PersonaState> mapEventToState(
    PersonaEvent event,
  ) async* {
    if (event is InitialEvent) {
      //persona.id = 0;
      //persona.name = "gus";
      //persona.age = 25;
      //persona.things = ["futbool","programacion"];
      yield LoadedState(persona: persona);
    }
    if (event is AddThingEvent) {
    }

    if (event is CreatePersonEvent) {
      try{
        //await PersonaRepository.addThing(id: event.userId, recipe: event.recipe);
        //yield SuccesfullState();
      }catch(e){
        //yield FailState();
      }
    }

  }
}
