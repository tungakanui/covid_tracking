import 'dart:convert';

class ValidationExceptionBody {
  final int? status;
  final String? type;
  final String? title;
  final Map<String, List<dynamic>> errors;

  ValidationExceptionBody({
    required this.status,
    this.type,
    this.title,
    required this.errors,
  });

  List<String> getMessages(List<String> fields) {
    List<String> messages = [];
    if (this.errors.length == 0) return messages;
    for (final f in fields) {
      if (this.errors[f] != null) messages.add(this.errors[f]?.first);
    }
    return messages;
  }

  String getMessageAsString() {
    String message = '';
    for (final e in this.errors.values) {
      message += e.join('\n') + '\n';
    }
    return message;
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'type': type,
      'title': title,
      'errors': errors,
    };
  }

  factory ValidationExceptionBody.fromMap(Map<String, dynamic> map) {
    //  if (map == null) return null;

    return ValidationExceptionBody(
      status: map['status'],
      type: map['type'],
      title: map['title'],
      errors: Map<String, List<dynamic>>.from(
        map['errors'],
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory ValidationExceptionBody.fromJson(String source) =>
      ValidationExceptionBody.fromMap(json.decode(source));
}
