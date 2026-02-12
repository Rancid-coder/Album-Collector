class ModelTextRepresentation {
  final String language;
  final String script;

  ModelTextRepresentation({
    required this.language,
    required this.script,
  });

  factory ModelTextRepresentation.fromJson(Map<String, dynamic> json) {
    return ModelTextRepresentation(
      language: json['language'],
      script: json['script'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'language': language,
      'script': script,
    };
  }
}
