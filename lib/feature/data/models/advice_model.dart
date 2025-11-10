
import 'package:equatable/equatable.dart';
import 'package:advicer/feature/domain/entities/advice.dart';

class AdviceModel extends AdviceEntity with EquatableMixin {
  AdviceModel({required super.advice, required super.id});

  factory AdviceModel.fromJson(Map<String, dynamic> json) {
    return AdviceModel(advice: json['advice'], id: json['advice_id']);
  }
  
  @override
  List<Object?> get props => [advice, id];
}