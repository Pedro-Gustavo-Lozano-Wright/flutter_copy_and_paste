part of 'persona_bloc.dart';

abstract class PersonaState extends Equatable {
  const PersonaState();
}

class InitialState extends PersonaState {
  @override
  List<Object> get props => [];
}



class LoadedState extends PersonaState {
  final Persona persona;

  LoadedState({this.persona});

  LoadedState copyWith() {
    return LoadedState(persona: this.persona);
  }

  @override
  List<Object> get props => [persona];
}