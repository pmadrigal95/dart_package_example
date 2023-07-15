import 'package:dart_package_example/class/translation.dart';

class NativeName {
    Translation spa;

    NativeName({
        required this.spa,
    });

    factory NativeName.fromJson(Map<String, dynamic> json) => NativeName(
        spa: Translation.fromJson(json["spa"]),
    );

    Map<String, dynamic> toJson() => {
        "spa": spa.toJson(),
    };
}
