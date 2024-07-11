import 'package:freezed_annotation/freezed_annotation.dart';

part 'pop_up.freezed.dart';

part 'pop_up.g.dart';

@freezed
class PopUp with _$PopUp {
  const factory PopUp({
    required String url,
  }) = _PopUp;

  factory PopUp.fromJson(Map<String, Object?> json) => _$PopUpFromJson(json);
}
