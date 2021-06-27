part of 'persona_bloc.dart';

abstract class PersonaEvent extends Equatable {
  const PersonaEvent();
}



class InitialEvent extends PersonaEvent{

  @override
  List<Object> get props => [];

}


class AddThingEvent extends PersonaEvent{
  final String thing;

  AddThingEvent(this.thing);

  @override
  List<Object> get props => [thing];

}

class CreatePersonEvent extends PersonaEvent {
  final int id;
  final String name;
  final double age;
  List<String> things;

  CreatePersonEvent({this.id, this.name, this.age, this.things });

  @override
  List<Object> get props => [id, name, age, things];

}
