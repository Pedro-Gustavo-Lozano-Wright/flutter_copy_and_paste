import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

/// This allows the `Recipe` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'persona.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
//// To make this work, pass explicitToJson: true in the @JsonSerializable() annotation over the class declaration.
@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 5)
class Persona {
  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  double age;
  @HiveField(3)
  List<String> things;

  Persona({
    this.id,
    this.name,
    this.age,
    this.things,
  });

  /// A necessary factory constructor for creating a new Recipe instance
  /// from a map. Pass the map to the generated `_$RecipeFromJson()` constructor.
  /// The constructor is named after the source class, in this case, Recipe.
  factory Persona.fromJson(Map<String, dynamic> json) => _$PersonaFromJson(json);

  //

  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$RecipeToJson`.
  Map<String, dynamic> toJson() => _$PersonaToJson(this);
}
