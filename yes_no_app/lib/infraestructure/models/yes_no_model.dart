// el mapeo es una forma de transformar los datos de un formato a otro
// en este caso, estamos transformando la respuesta de la API a un objeto Message
import 'package:yes_no_app/domain/entities/message.dart';

class YesNoModel {
    final String answer;
    final bool forced;
    final String image;

    YesNoModel({
        required this.answer,
        required this.forced,
        required this.image,
    });

    factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
    };

    Message toMessageEntity() => Message
    (
      text: answer == 'yes' ? 'Sí' : 'No', 
      fromWho: FromWho.hers,
      imageUrl: image,
    );
}