// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class TbMeal extends DataClass implements Insertable<TbMeal> {
  final int id;
  final String idMeal;
  final String strMeal;
  final String strCategory;
  final String strArea;
  final String strTags;
  final String strInstructions;
  final String strMealThumb;
  final String strIngredient1;
  final String strIngredient2;
  final String strIngredient3;
  final String strIngredient4;
  final String strIngredient5;
  final String strMeasure1;
  final String strMeasure2;
  final String strMeasure3;
  final String strMeasure4;
  final String strMeasure5;
  TbMeal(
      {@required this.id,
      @required this.idMeal,
      @required this.strMeal,
      @required this.strCategory,
      @required this.strArea,
      @required this.strTags,
      @required this.strInstructions,
      @required this.strMealThumb,
      @required this.strIngredient1,
      @required this.strIngredient2,
      @required this.strIngredient3,
      @required this.strIngredient4,
      @required this.strIngredient5,
      @required this.strMeasure1,
      @required this.strMeasure2,
      @required this.strMeasure3,
      @required this.strMeasure4,
      @required this.strMeasure5});
  factory TbMeal.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return TbMeal(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      idMeal:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}id_meal']),
      strMeal: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_meal']),
      strCategory: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_category']),
      strArea: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_area']),
      strTags: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_tags']),
      strInstructions: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_instructions']),
      strMealThumb: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_meal_thumb']),
      strIngredient1: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_ingredient1']),
      strIngredient2: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_ingredient2']),
      strIngredient3: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_ingredient3']),
      strIngredient4: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_ingredient4']),
      strIngredient5: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_ingredient5']),
      strMeasure1: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_measure1']),
      strMeasure2: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_measure2']),
      strMeasure3: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_measure3']),
      strMeasure4: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_measure4']),
      strMeasure5: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_measure5']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || idMeal != null) {
      map['id_meal'] = Variable<String>(idMeal);
    }
    if (!nullToAbsent || strMeal != null) {
      map['str_meal'] = Variable<String>(strMeal);
    }
    if (!nullToAbsent || strCategory != null) {
      map['str_category'] = Variable<String>(strCategory);
    }
    if (!nullToAbsent || strArea != null) {
      map['str_area'] = Variable<String>(strArea);
    }
    if (!nullToAbsent || strTags != null) {
      map['str_tags'] = Variable<String>(strTags);
    }
    if (!nullToAbsent || strInstructions != null) {
      map['str_instructions'] = Variable<String>(strInstructions);
    }
    if (!nullToAbsent || strMealThumb != null) {
      map['str_meal_thumb'] = Variable<String>(strMealThumb);
    }
    if (!nullToAbsent || strIngredient1 != null) {
      map['str_ingredient1'] = Variable<String>(strIngredient1);
    }
    if (!nullToAbsent || strIngredient2 != null) {
      map['str_ingredient2'] = Variable<String>(strIngredient2);
    }
    if (!nullToAbsent || strIngredient3 != null) {
      map['str_ingredient3'] = Variable<String>(strIngredient3);
    }
    if (!nullToAbsent || strIngredient4 != null) {
      map['str_ingredient4'] = Variable<String>(strIngredient4);
    }
    if (!nullToAbsent || strIngredient5 != null) {
      map['str_ingredient5'] = Variable<String>(strIngredient5);
    }
    if (!nullToAbsent || strMeasure1 != null) {
      map['str_measure1'] = Variable<String>(strMeasure1);
    }
    if (!nullToAbsent || strMeasure2 != null) {
      map['str_measure2'] = Variable<String>(strMeasure2);
    }
    if (!nullToAbsent || strMeasure3 != null) {
      map['str_measure3'] = Variable<String>(strMeasure3);
    }
    if (!nullToAbsent || strMeasure4 != null) {
      map['str_measure4'] = Variable<String>(strMeasure4);
    }
    if (!nullToAbsent || strMeasure5 != null) {
      map['str_measure5'] = Variable<String>(strMeasure5);
    }
    return map;
  }

  TbMealsCompanion toCompanion(bool nullToAbsent) {
    return TbMealsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      idMeal:
          idMeal == null && nullToAbsent ? const Value.absent() : Value(idMeal),
      strMeal: strMeal == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeal),
      strCategory: strCategory == null && nullToAbsent
          ? const Value.absent()
          : Value(strCategory),
      strArea: strArea == null && nullToAbsent
          ? const Value.absent()
          : Value(strArea),
      strTags: strTags == null && nullToAbsent
          ? const Value.absent()
          : Value(strTags),
      strInstructions: strInstructions == null && nullToAbsent
          ? const Value.absent()
          : Value(strInstructions),
      strMealThumb: strMealThumb == null && nullToAbsent
          ? const Value.absent()
          : Value(strMealThumb),
      strIngredient1: strIngredient1 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient1),
      strIngredient2: strIngredient2 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient2),
      strIngredient3: strIngredient3 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient3),
      strIngredient4: strIngredient4 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient4),
      strIngredient5: strIngredient5 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient5),
      strMeasure1: strMeasure1 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure1),
      strMeasure2: strMeasure2 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure2),
      strMeasure3: strMeasure3 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure3),
      strMeasure4: strMeasure4 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure4),
      strMeasure5: strMeasure5 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure5),
    );
  }

  factory TbMeal.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return TbMeal(
      id: serializer.fromJson<int>(json['id']),
      idMeal: serializer.fromJson<String>(json['idMeal']),
      strMeal: serializer.fromJson<String>(json['strMeal']),
      strCategory: serializer.fromJson<String>(json['strCategory']),
      strArea: serializer.fromJson<String>(json['strArea']),
      strTags: serializer.fromJson<String>(json['strTags']),
      strInstructions: serializer.fromJson<String>(json['strInstructions']),
      strMealThumb: serializer.fromJson<String>(json['strMealThumb']),
      strIngredient1: serializer.fromJson<String>(json['strIngredient1']),
      strIngredient2: serializer.fromJson<String>(json['strIngredient2']),
      strIngredient3: serializer.fromJson<String>(json['strIngredient3']),
      strIngredient4: serializer.fromJson<String>(json['strIngredient4']),
      strIngredient5: serializer.fromJson<String>(json['strIngredient5']),
      strMeasure1: serializer.fromJson<String>(json['strMeasure1']),
      strMeasure2: serializer.fromJson<String>(json['strMeasure2']),
      strMeasure3: serializer.fromJson<String>(json['strMeasure3']),
      strMeasure4: serializer.fromJson<String>(json['strMeasure4']),
      strMeasure5: serializer.fromJson<String>(json['strMeasure5']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'idMeal': serializer.toJson<String>(idMeal),
      'strMeal': serializer.toJson<String>(strMeal),
      'strCategory': serializer.toJson<String>(strCategory),
      'strArea': serializer.toJson<String>(strArea),
      'strTags': serializer.toJson<String>(strTags),
      'strInstructions': serializer.toJson<String>(strInstructions),
      'strMealThumb': serializer.toJson<String>(strMealThumb),
      'strIngredient1': serializer.toJson<String>(strIngredient1),
      'strIngredient2': serializer.toJson<String>(strIngredient2),
      'strIngredient3': serializer.toJson<String>(strIngredient3),
      'strIngredient4': serializer.toJson<String>(strIngredient4),
      'strIngredient5': serializer.toJson<String>(strIngredient5),
      'strMeasure1': serializer.toJson<String>(strMeasure1),
      'strMeasure2': serializer.toJson<String>(strMeasure2),
      'strMeasure3': serializer.toJson<String>(strMeasure3),
      'strMeasure4': serializer.toJson<String>(strMeasure4),
      'strMeasure5': serializer.toJson<String>(strMeasure5),
    };
  }

  TbMeal copyWith(
          {int id,
          String idMeal,
          String strMeal,
          String strCategory,
          String strArea,
          String strTags,
          String strInstructions,
          String strMealThumb,
          String strIngredient1,
          String strIngredient2,
          String strIngredient3,
          String strIngredient4,
          String strIngredient5,
          String strMeasure1,
          String strMeasure2,
          String strMeasure3,
          String strMeasure4,
          String strMeasure5}) =>
      TbMeal(
        id: id ?? this.id,
        idMeal: idMeal ?? this.idMeal,
        strMeal: strMeal ?? this.strMeal,
        strCategory: strCategory ?? this.strCategory,
        strArea: strArea ?? this.strArea,
        strTags: strTags ?? this.strTags,
        strInstructions: strInstructions ?? this.strInstructions,
        strMealThumb: strMealThumb ?? this.strMealThumb,
        strIngredient1: strIngredient1 ?? this.strIngredient1,
        strIngredient2: strIngredient2 ?? this.strIngredient2,
        strIngredient3: strIngredient3 ?? this.strIngredient3,
        strIngredient4: strIngredient4 ?? this.strIngredient4,
        strIngredient5: strIngredient5 ?? this.strIngredient5,
        strMeasure1: strMeasure1 ?? this.strMeasure1,
        strMeasure2: strMeasure2 ?? this.strMeasure2,
        strMeasure3: strMeasure3 ?? this.strMeasure3,
        strMeasure4: strMeasure4 ?? this.strMeasure4,
        strMeasure5: strMeasure5 ?? this.strMeasure5,
      );
  @override
  String toString() {
    return (StringBuffer('TbMeal(')
          ..write('id: $id, ')
          ..write('idMeal: $idMeal, ')
          ..write('strMeal: $strMeal, ')
          ..write('strCategory: $strCategory, ')
          ..write('strArea: $strArea, ')
          ..write('strTags: $strTags, ')
          ..write('strInstructions: $strInstructions, ')
          ..write('strMealThumb: $strMealThumb, ')
          ..write('strIngredient1: $strIngredient1, ')
          ..write('strIngredient2: $strIngredient2, ')
          ..write('strIngredient3: $strIngredient3, ')
          ..write('strIngredient4: $strIngredient4, ')
          ..write('strIngredient5: $strIngredient5, ')
          ..write('strMeasure1: $strMeasure1, ')
          ..write('strMeasure2: $strMeasure2, ')
          ..write('strMeasure3: $strMeasure3, ')
          ..write('strMeasure4: $strMeasure4, ')
          ..write('strMeasure5: $strMeasure5')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          idMeal.hashCode,
          $mrjc(
              strMeal.hashCode,
              $mrjc(
                  strCategory.hashCode,
                  $mrjc(
                      strArea.hashCode,
                      $mrjc(
                          strTags.hashCode,
                          $mrjc(
                              strInstructions.hashCode,
                              $mrjc(
                                  strMealThumb.hashCode,
                                  $mrjc(
                                      strIngredient1.hashCode,
                                      $mrjc(
                                          strIngredient2.hashCode,
                                          $mrjc(
                                              strIngredient3.hashCode,
                                              $mrjc(
                                                  strIngredient4.hashCode,
                                                  $mrjc(
                                                      strIngredient5.hashCode,
                                                      $mrjc(
                                                          strMeasure1.hashCode,
                                                          $mrjc(
                                                              strMeasure2
                                                                  .hashCode,
                                                              $mrjc(
                                                                  strMeasure3
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      strMeasure4
                                                                          .hashCode,
                                                                      strMeasure5
                                                                          .hashCode))))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is TbMeal &&
          other.id == this.id &&
          other.idMeal == this.idMeal &&
          other.strMeal == this.strMeal &&
          other.strCategory == this.strCategory &&
          other.strArea == this.strArea &&
          other.strTags == this.strTags &&
          other.strInstructions == this.strInstructions &&
          other.strMealThumb == this.strMealThumb &&
          other.strIngredient1 == this.strIngredient1 &&
          other.strIngredient2 == this.strIngredient2 &&
          other.strIngredient3 == this.strIngredient3 &&
          other.strIngredient4 == this.strIngredient4 &&
          other.strIngredient5 == this.strIngredient5 &&
          other.strMeasure1 == this.strMeasure1 &&
          other.strMeasure2 == this.strMeasure2 &&
          other.strMeasure3 == this.strMeasure3 &&
          other.strMeasure4 == this.strMeasure4 &&
          other.strMeasure5 == this.strMeasure5);
}

class TbMealsCompanion extends UpdateCompanion<TbMeal> {
  final Value<int> id;
  final Value<String> idMeal;
  final Value<String> strMeal;
  final Value<String> strCategory;
  final Value<String> strArea;
  final Value<String> strTags;
  final Value<String> strInstructions;
  final Value<String> strMealThumb;
  final Value<String> strIngredient1;
  final Value<String> strIngredient2;
  final Value<String> strIngredient3;
  final Value<String> strIngredient4;
  final Value<String> strIngredient5;
  final Value<String> strMeasure1;
  final Value<String> strMeasure2;
  final Value<String> strMeasure3;
  final Value<String> strMeasure4;
  final Value<String> strMeasure5;
  const TbMealsCompanion({
    this.id = const Value.absent(),
    this.idMeal = const Value.absent(),
    this.strMeal = const Value.absent(),
    this.strCategory = const Value.absent(),
    this.strArea = const Value.absent(),
    this.strTags = const Value.absent(),
    this.strInstructions = const Value.absent(),
    this.strMealThumb = const Value.absent(),
    this.strIngredient1 = const Value.absent(),
    this.strIngredient2 = const Value.absent(),
    this.strIngredient3 = const Value.absent(),
    this.strIngredient4 = const Value.absent(),
    this.strIngredient5 = const Value.absent(),
    this.strMeasure1 = const Value.absent(),
    this.strMeasure2 = const Value.absent(),
    this.strMeasure3 = const Value.absent(),
    this.strMeasure4 = const Value.absent(),
    this.strMeasure5 = const Value.absent(),
  });
  TbMealsCompanion.insert({
    this.id = const Value.absent(),
    @required String idMeal,
    @required String strMeal,
    @required String strCategory,
    @required String strArea,
    @required String strTags,
    @required String strInstructions,
    @required String strMealThumb,
    @required String strIngredient1,
    @required String strIngredient2,
    @required String strIngredient3,
    @required String strIngredient4,
    @required String strIngredient5,
    @required String strMeasure1,
    @required String strMeasure2,
    @required String strMeasure3,
    @required String strMeasure4,
    @required String strMeasure5,
  })  : idMeal = Value(idMeal),
        strMeal = Value(strMeal),
        strCategory = Value(strCategory),
        strArea = Value(strArea),
        strTags = Value(strTags),
        strInstructions = Value(strInstructions),
        strMealThumb = Value(strMealThumb),
        strIngredient1 = Value(strIngredient1),
        strIngredient2 = Value(strIngredient2),
        strIngredient3 = Value(strIngredient3),
        strIngredient4 = Value(strIngredient4),
        strIngredient5 = Value(strIngredient5),
        strMeasure1 = Value(strMeasure1),
        strMeasure2 = Value(strMeasure2),
        strMeasure3 = Value(strMeasure3),
        strMeasure4 = Value(strMeasure4),
        strMeasure5 = Value(strMeasure5);
  static Insertable<TbMeal> custom({
    Expression<int> id,
    Expression<String> idMeal,
    Expression<String> strMeal,
    Expression<String> strCategory,
    Expression<String> strArea,
    Expression<String> strTags,
    Expression<String> strInstructions,
    Expression<String> strMealThumb,
    Expression<String> strIngredient1,
    Expression<String> strIngredient2,
    Expression<String> strIngredient3,
    Expression<String> strIngredient4,
    Expression<String> strIngredient5,
    Expression<String> strMeasure1,
    Expression<String> strMeasure2,
    Expression<String> strMeasure3,
    Expression<String> strMeasure4,
    Expression<String> strMeasure5,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idMeal != null) 'id_meal': idMeal,
      if (strMeal != null) 'str_meal': strMeal,
      if (strCategory != null) 'str_category': strCategory,
      if (strArea != null) 'str_area': strArea,
      if (strTags != null) 'str_tags': strTags,
      if (strInstructions != null) 'str_instructions': strInstructions,
      if (strMealThumb != null) 'str_meal_thumb': strMealThumb,
      if (strIngredient1 != null) 'str_ingredient1': strIngredient1,
      if (strIngredient2 != null) 'str_ingredient2': strIngredient2,
      if (strIngredient3 != null) 'str_ingredient3': strIngredient3,
      if (strIngredient4 != null) 'str_ingredient4': strIngredient4,
      if (strIngredient5 != null) 'str_ingredient5': strIngredient5,
      if (strMeasure1 != null) 'str_measure1': strMeasure1,
      if (strMeasure2 != null) 'str_measure2': strMeasure2,
      if (strMeasure3 != null) 'str_measure3': strMeasure3,
      if (strMeasure4 != null) 'str_measure4': strMeasure4,
      if (strMeasure5 != null) 'str_measure5': strMeasure5,
    });
  }

  TbMealsCompanion copyWith(
      {Value<int> id,
      Value<String> idMeal,
      Value<String> strMeal,
      Value<String> strCategory,
      Value<String> strArea,
      Value<String> strTags,
      Value<String> strInstructions,
      Value<String> strMealThumb,
      Value<String> strIngredient1,
      Value<String> strIngredient2,
      Value<String> strIngredient3,
      Value<String> strIngredient4,
      Value<String> strIngredient5,
      Value<String> strMeasure1,
      Value<String> strMeasure2,
      Value<String> strMeasure3,
      Value<String> strMeasure4,
      Value<String> strMeasure5}) {
    return TbMealsCompanion(
      id: id ?? this.id,
      idMeal: idMeal ?? this.idMeal,
      strMeal: strMeal ?? this.strMeal,
      strCategory: strCategory ?? this.strCategory,
      strArea: strArea ?? this.strArea,
      strTags: strTags ?? this.strTags,
      strInstructions: strInstructions ?? this.strInstructions,
      strMealThumb: strMealThumb ?? this.strMealThumb,
      strIngredient1: strIngredient1 ?? this.strIngredient1,
      strIngredient2: strIngredient2 ?? this.strIngredient2,
      strIngredient3: strIngredient3 ?? this.strIngredient3,
      strIngredient4: strIngredient4 ?? this.strIngredient4,
      strIngredient5: strIngredient5 ?? this.strIngredient5,
      strMeasure1: strMeasure1 ?? this.strMeasure1,
      strMeasure2: strMeasure2 ?? this.strMeasure2,
      strMeasure3: strMeasure3 ?? this.strMeasure3,
      strMeasure4: strMeasure4 ?? this.strMeasure4,
      strMeasure5: strMeasure5 ?? this.strMeasure5,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (idMeal.present) {
      map['id_meal'] = Variable<String>(idMeal.value);
    }
    if (strMeal.present) {
      map['str_meal'] = Variable<String>(strMeal.value);
    }
    if (strCategory.present) {
      map['str_category'] = Variable<String>(strCategory.value);
    }
    if (strArea.present) {
      map['str_area'] = Variable<String>(strArea.value);
    }
    if (strTags.present) {
      map['str_tags'] = Variable<String>(strTags.value);
    }
    if (strInstructions.present) {
      map['str_instructions'] = Variable<String>(strInstructions.value);
    }
    if (strMealThumb.present) {
      map['str_meal_thumb'] = Variable<String>(strMealThumb.value);
    }
    if (strIngredient1.present) {
      map['str_ingredient1'] = Variable<String>(strIngredient1.value);
    }
    if (strIngredient2.present) {
      map['str_ingredient2'] = Variable<String>(strIngredient2.value);
    }
    if (strIngredient3.present) {
      map['str_ingredient3'] = Variable<String>(strIngredient3.value);
    }
    if (strIngredient4.present) {
      map['str_ingredient4'] = Variable<String>(strIngredient4.value);
    }
    if (strIngredient5.present) {
      map['str_ingredient5'] = Variable<String>(strIngredient5.value);
    }
    if (strMeasure1.present) {
      map['str_measure1'] = Variable<String>(strMeasure1.value);
    }
    if (strMeasure2.present) {
      map['str_measure2'] = Variable<String>(strMeasure2.value);
    }
    if (strMeasure3.present) {
      map['str_measure3'] = Variable<String>(strMeasure3.value);
    }
    if (strMeasure4.present) {
      map['str_measure4'] = Variable<String>(strMeasure4.value);
    }
    if (strMeasure5.present) {
      map['str_measure5'] = Variable<String>(strMeasure5.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TbMealsCompanion(')
          ..write('id: $id, ')
          ..write('idMeal: $idMeal, ')
          ..write('strMeal: $strMeal, ')
          ..write('strCategory: $strCategory, ')
          ..write('strArea: $strArea, ')
          ..write('strTags: $strTags, ')
          ..write('strInstructions: $strInstructions, ')
          ..write('strMealThumb: $strMealThumb, ')
          ..write('strIngredient1: $strIngredient1, ')
          ..write('strIngredient2: $strIngredient2, ')
          ..write('strIngredient3: $strIngredient3, ')
          ..write('strIngredient4: $strIngredient4, ')
          ..write('strIngredient5: $strIngredient5, ')
          ..write('strMeasure1: $strMeasure1, ')
          ..write('strMeasure2: $strMeasure2, ')
          ..write('strMeasure3: $strMeasure3, ')
          ..write('strMeasure4: $strMeasure4, ')
          ..write('strMeasure5: $strMeasure5')
          ..write(')'))
        .toString();
  }
}

class $TbMealsTable extends TbMeals with TableInfo<$TbMealsTable, TbMeal> {
  final GeneratedDatabase _db;
  final String _alias;
  $TbMealsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _idMealMeta = const VerificationMeta('idMeal');
  GeneratedTextColumn _idMeal;
  @override
  GeneratedTextColumn get idMeal => _idMeal ??= _constructIdMeal();
  GeneratedTextColumn _constructIdMeal() {
    return GeneratedTextColumn(
      'id_meal',
      $tableName,
      false,
    );
  }

  final VerificationMeta _strMealMeta = const VerificationMeta('strMeal');
  GeneratedTextColumn _strMeal;
  @override
  GeneratedTextColumn get strMeal => _strMeal ??= _constructStrMeal();
  GeneratedTextColumn _constructStrMeal() {
    return GeneratedTextColumn(
      'str_meal',
      $tableName,
      false,
    );
  }

  final VerificationMeta _strCategoryMeta =
      const VerificationMeta('strCategory');
  GeneratedTextColumn _strCategory;
  @override
  GeneratedTextColumn get strCategory =>
      _strCategory ??= _constructStrCategory();
  GeneratedTextColumn _constructStrCategory() {
    return GeneratedTextColumn(
      'str_category',
      $tableName,
      false,
    );
  }

  final VerificationMeta _strAreaMeta = const VerificationMeta('strArea');
  GeneratedTextColumn _strArea;
  @override
  GeneratedTextColumn get strArea => _strArea ??= _constructStrArea();
  GeneratedTextColumn _constructStrArea() {
    return GeneratedTextColumn(
      'str_area',
      $tableName,
      false,
    );
  }

  final VerificationMeta _strTagsMeta = const VerificationMeta('strTags');
  GeneratedTextColumn _strTags;
  @override
  GeneratedTextColumn get strTags => _strTags ??= _constructStrTags();
  GeneratedTextColumn _constructStrTags() {
    return GeneratedTextColumn(
      'str_tags',
      $tableName,
      false,
    );
  }

  final VerificationMeta _strInstructionsMeta =
      const VerificationMeta('strInstructions');
  GeneratedTextColumn _strInstructions;
  @override
  GeneratedTextColumn get strInstructions =>
      _strInstructions ??= _constructStrInstructions();
  GeneratedTextColumn _constructStrInstructions() {
    return GeneratedTextColumn(
      'str_instructions',
      $tableName,
      false,
    );
  }

  final VerificationMeta _strMealThumbMeta =
      const VerificationMeta('strMealThumb');
  GeneratedTextColumn _strMealThumb;
  @override
  GeneratedTextColumn get strMealThumb =>
      _strMealThumb ??= _constructStrMealThumb();
  GeneratedTextColumn _constructStrMealThumb() {
    return GeneratedTextColumn(
      'str_meal_thumb',
      $tableName,
      false,
    );
  }

  final VerificationMeta _strIngredient1Meta =
      const VerificationMeta('strIngredient1');
  GeneratedTextColumn _strIngredient1;
  @override
  GeneratedTextColumn get strIngredient1 =>
      _strIngredient1 ??= _constructStrIngredient1();
  GeneratedTextColumn _constructStrIngredient1() {
    return GeneratedTextColumn(
      'str_ingredient1',
      $tableName,
      false,
    );
  }

  final VerificationMeta _strIngredient2Meta =
      const VerificationMeta('strIngredient2');
  GeneratedTextColumn _strIngredient2;
  @override
  GeneratedTextColumn get strIngredient2 =>
      _strIngredient2 ??= _constructStrIngredient2();
  GeneratedTextColumn _constructStrIngredient2() {
    return GeneratedTextColumn(
      'str_ingredient2',
      $tableName,
      false,
    );
  }

  final VerificationMeta _strIngredient3Meta =
      const VerificationMeta('strIngredient3');
  GeneratedTextColumn _strIngredient3;
  @override
  GeneratedTextColumn get strIngredient3 =>
      _strIngredient3 ??= _constructStrIngredient3();
  GeneratedTextColumn _constructStrIngredient3() {
    return GeneratedTextColumn(
      'str_ingredient3',
      $tableName,
      false,
    );
  }

  final VerificationMeta _strIngredient4Meta =
      const VerificationMeta('strIngredient4');
  GeneratedTextColumn _strIngredient4;
  @override
  GeneratedTextColumn get strIngredient4 =>
      _strIngredient4 ??= _constructStrIngredient4();
  GeneratedTextColumn _constructStrIngredient4() {
    return GeneratedTextColumn(
      'str_ingredient4',
      $tableName,
      false,
    );
  }

  final VerificationMeta _strIngredient5Meta =
      const VerificationMeta('strIngredient5');
  GeneratedTextColumn _strIngredient5;
  @override
  GeneratedTextColumn get strIngredient5 =>
      _strIngredient5 ??= _constructStrIngredient5();
  GeneratedTextColumn _constructStrIngredient5() {
    return GeneratedTextColumn(
      'str_ingredient5',
      $tableName,
      false,
    );
  }

  final VerificationMeta _strMeasure1Meta =
      const VerificationMeta('strMeasure1');
  GeneratedTextColumn _strMeasure1;
  @override
  GeneratedTextColumn get strMeasure1 =>
      _strMeasure1 ??= _constructStrMeasure1();
  GeneratedTextColumn _constructStrMeasure1() {
    return GeneratedTextColumn(
      'str_measure1',
      $tableName,
      false,
    );
  }

  final VerificationMeta _strMeasure2Meta =
      const VerificationMeta('strMeasure2');
  GeneratedTextColumn _strMeasure2;
  @override
  GeneratedTextColumn get strMeasure2 =>
      _strMeasure2 ??= _constructStrMeasure2();
  GeneratedTextColumn _constructStrMeasure2() {
    return GeneratedTextColumn(
      'str_measure2',
      $tableName,
      false,
    );
  }

  final VerificationMeta _strMeasure3Meta =
      const VerificationMeta('strMeasure3');
  GeneratedTextColumn _strMeasure3;
  @override
  GeneratedTextColumn get strMeasure3 =>
      _strMeasure3 ??= _constructStrMeasure3();
  GeneratedTextColumn _constructStrMeasure3() {
    return GeneratedTextColumn(
      'str_measure3',
      $tableName,
      false,
    );
  }

  final VerificationMeta _strMeasure4Meta =
      const VerificationMeta('strMeasure4');
  GeneratedTextColumn _strMeasure4;
  @override
  GeneratedTextColumn get strMeasure4 =>
      _strMeasure4 ??= _constructStrMeasure4();
  GeneratedTextColumn _constructStrMeasure4() {
    return GeneratedTextColumn(
      'str_measure4',
      $tableName,
      false,
    );
  }

  final VerificationMeta _strMeasure5Meta =
      const VerificationMeta('strMeasure5');
  GeneratedTextColumn _strMeasure5;
  @override
  GeneratedTextColumn get strMeasure5 =>
      _strMeasure5 ??= _constructStrMeasure5();
  GeneratedTextColumn _constructStrMeasure5() {
    return GeneratedTextColumn(
      'str_measure5',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        idMeal,
        strMeal,
        strCategory,
        strArea,
        strTags,
        strInstructions,
        strMealThumb,
        strIngredient1,
        strIngredient2,
        strIngredient3,
        strIngredient4,
        strIngredient5,
        strMeasure1,
        strMeasure2,
        strMeasure3,
        strMeasure4,
        strMeasure5
      ];
  @override
  $TbMealsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'tb_meals';
  @override
  final String actualTableName = 'tb_meals';
  @override
  VerificationContext validateIntegrity(Insertable<TbMeal> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('id_meal')) {
      context.handle(_idMealMeta,
          idMeal.isAcceptableOrUnknown(data['id_meal'], _idMealMeta));
    } else if (isInserting) {
      context.missing(_idMealMeta);
    }
    if (data.containsKey('str_meal')) {
      context.handle(_strMealMeta,
          strMeal.isAcceptableOrUnknown(data['str_meal'], _strMealMeta));
    } else if (isInserting) {
      context.missing(_strMealMeta);
    }
    if (data.containsKey('str_category')) {
      context.handle(
          _strCategoryMeta,
          strCategory.isAcceptableOrUnknown(
              data['str_category'], _strCategoryMeta));
    } else if (isInserting) {
      context.missing(_strCategoryMeta);
    }
    if (data.containsKey('str_area')) {
      context.handle(_strAreaMeta,
          strArea.isAcceptableOrUnknown(data['str_area'], _strAreaMeta));
    } else if (isInserting) {
      context.missing(_strAreaMeta);
    }
    if (data.containsKey('str_tags')) {
      context.handle(_strTagsMeta,
          strTags.isAcceptableOrUnknown(data['str_tags'], _strTagsMeta));
    } else if (isInserting) {
      context.missing(_strTagsMeta);
    }
    if (data.containsKey('str_instructions')) {
      context.handle(
          _strInstructionsMeta,
          strInstructions.isAcceptableOrUnknown(
              data['str_instructions'], _strInstructionsMeta));
    } else if (isInserting) {
      context.missing(_strInstructionsMeta);
    }
    if (data.containsKey('str_meal_thumb')) {
      context.handle(
          _strMealThumbMeta,
          strMealThumb.isAcceptableOrUnknown(
              data['str_meal_thumb'], _strMealThumbMeta));
    } else if (isInserting) {
      context.missing(_strMealThumbMeta);
    }
    if (data.containsKey('str_ingredient1')) {
      context.handle(
          _strIngredient1Meta,
          strIngredient1.isAcceptableOrUnknown(
              data['str_ingredient1'], _strIngredient1Meta));
    } else if (isInserting) {
      context.missing(_strIngredient1Meta);
    }
    if (data.containsKey('str_ingredient2')) {
      context.handle(
          _strIngredient2Meta,
          strIngredient2.isAcceptableOrUnknown(
              data['str_ingredient2'], _strIngredient2Meta));
    } else if (isInserting) {
      context.missing(_strIngredient2Meta);
    }
    if (data.containsKey('str_ingredient3')) {
      context.handle(
          _strIngredient3Meta,
          strIngredient3.isAcceptableOrUnknown(
              data['str_ingredient3'], _strIngredient3Meta));
    } else if (isInserting) {
      context.missing(_strIngredient3Meta);
    }
    if (data.containsKey('str_ingredient4')) {
      context.handle(
          _strIngredient4Meta,
          strIngredient4.isAcceptableOrUnknown(
              data['str_ingredient4'], _strIngredient4Meta));
    } else if (isInserting) {
      context.missing(_strIngredient4Meta);
    }
    if (data.containsKey('str_ingredient5')) {
      context.handle(
          _strIngredient5Meta,
          strIngredient5.isAcceptableOrUnknown(
              data['str_ingredient5'], _strIngredient5Meta));
    } else if (isInserting) {
      context.missing(_strIngredient5Meta);
    }
    if (data.containsKey('str_measure1')) {
      context.handle(
          _strMeasure1Meta,
          strMeasure1.isAcceptableOrUnknown(
              data['str_measure1'], _strMeasure1Meta));
    } else if (isInserting) {
      context.missing(_strMeasure1Meta);
    }
    if (data.containsKey('str_measure2')) {
      context.handle(
          _strMeasure2Meta,
          strMeasure2.isAcceptableOrUnknown(
              data['str_measure2'], _strMeasure2Meta));
    } else if (isInserting) {
      context.missing(_strMeasure2Meta);
    }
    if (data.containsKey('str_measure3')) {
      context.handle(
          _strMeasure3Meta,
          strMeasure3.isAcceptableOrUnknown(
              data['str_measure3'], _strMeasure3Meta));
    } else if (isInserting) {
      context.missing(_strMeasure3Meta);
    }
    if (data.containsKey('str_measure4')) {
      context.handle(
          _strMeasure4Meta,
          strMeasure4.isAcceptableOrUnknown(
              data['str_measure4'], _strMeasure4Meta));
    } else if (isInserting) {
      context.missing(_strMeasure4Meta);
    }
    if (data.containsKey('str_measure5')) {
      context.handle(
          _strMeasure5Meta,
          strMeasure5.isAcceptableOrUnknown(
              data['str_measure5'], _strMeasure5Meta));
    } else if (isInserting) {
      context.missing(_strMeasure5Meta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TbMeal map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return TbMeal.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $TbMealsTable createAlias(String alias) {
    return $TbMealsTable(_db, alias);
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $TbMealsTable _tbMeals;
  $TbMealsTable get tbMeals => _tbMeals ??= $TbMealsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [tbMeals];
}
