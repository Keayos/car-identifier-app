// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCarModelCollection on Isar {
  IsarCollection<CarModel> get carModels => this.collection();
}

const CarModelSchema = CollectionSchema(
  name: r'CarModel',
  id: -7339873665292748562,
  properties: {
    r'drivenWheels': PropertySchema(
      id: 0,
      name: r'drivenWheels',
      type: IsarType.string,
    ),
    r'engineCylinders': PropertySchema(
      id: 1,
      name: r'engineCylinders',
      type: IsarType.long,
    ),
    r'engineFuelType': PropertySchema(
      id: 2,
      name: r'engineFuelType',
      type: IsarType.string,
    ),
    r'engineHp': PropertySchema(
      id: 3,
      name: r'engineHp',
      type: IsarType.double,
    ),
    r'make': PropertySchema(
      id: 4,
      name: r'make',
      type: IsarType.string,
    ),
    r'model': PropertySchema(
      id: 5,
      name: r'model',
      type: IsarType.string,
    ),
    r'numberOfDoors': PropertySchema(
      id: 6,
      name: r'numberOfDoors',
      type: IsarType.long,
    ),
    r'transmissionType': PropertySchema(
      id: 7,
      name: r'transmissionType',
      type: IsarType.string,
    ),
    r'vehicleSize': PropertySchema(
      id: 8,
      name: r'vehicleSize',
      type: IsarType.string,
    ),
    r'year': PropertySchema(
      id: 9,
      name: r'year',
      type: IsarType.long,
    )
  },
  estimateSize: _carModelEstimateSize,
  serialize: _carModelSerialize,
  deserialize: _carModelDeserialize,
  deserializeProp: _carModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'make': IndexSchema(
      id: 5140600661486122335,
      name: r'make',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'make',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'model': IndexSchema(
      id: 8229337662361542422,
      name: r'model',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'model',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'transmissionType': IndexSchema(
      id: 8506545184205218837,
      name: r'transmissionType',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'transmissionType',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'drivenWheels': IndexSchema(
      id: -1283863759071386780,
      name: r'drivenWheels',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'drivenWheels',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'vehicleSize': IndexSchema(
      id: 2383703215079696891,
      name: r'vehicleSize',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'vehicleSize',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _carModelGetId,
  getLinks: _carModelGetLinks,
  attach: _carModelAttach,
  version: '3.1.0+1',
);

int _carModelEstimateSize(
  CarModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.drivenWheels;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.engineFuelType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.make.length * 3;
  bytesCount += 3 + object.model.length * 3;
  {
    final value = object.transmissionType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.vehicleSize;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _carModelSerialize(
  CarModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.drivenWheels);
  writer.writeLong(offsets[1], object.engineCylinders);
  writer.writeString(offsets[2], object.engineFuelType);
  writer.writeDouble(offsets[3], object.engineHp);
  writer.writeString(offsets[4], object.make);
  writer.writeString(offsets[5], object.model);
  writer.writeLong(offsets[6], object.numberOfDoors);
  writer.writeString(offsets[7], object.transmissionType);
  writer.writeString(offsets[8], object.vehicleSize);
  writer.writeLong(offsets[9], object.year);
}

CarModel _carModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CarModel();
  object.drivenWheels = reader.readStringOrNull(offsets[0]);
  object.engineCylinders = reader.readLongOrNull(offsets[1]);
  object.engineFuelType = reader.readStringOrNull(offsets[2]);
  object.engineHp = reader.readDoubleOrNull(offsets[3]);
  object.id = id;
  object.make = reader.readString(offsets[4]);
  object.model = reader.readString(offsets[5]);
  object.numberOfDoors = reader.readLongOrNull(offsets[6]);
  object.transmissionType = reader.readStringOrNull(offsets[7]);
  object.vehicleSize = reader.readStringOrNull(offsets[8]);
  object.year = reader.readLong(offsets[9]);
  return object;
}

P _carModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _carModelGetId(CarModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _carModelGetLinks(CarModel object) {
  return [];
}

void _carModelAttach(IsarCollection<dynamic> col, Id id, CarModel object) {
  object.id = id;
}

extension CarModelQueryWhereSort on QueryBuilder<CarModel, CarModel, QWhere> {
  QueryBuilder<CarModel, CarModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhere> anyMake() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'make'),
      );
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhere> anyModel() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'model'),
      );
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhere> anyTransmissionType() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'transmissionType'),
      );
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhere> anyDrivenWheels() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'drivenWheels'),
      );
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhere> anyVehicleSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'vehicleSize'),
      );
    });
  }
}

extension CarModelQueryWhere on QueryBuilder<CarModel, CarModel, QWhereClause> {
  QueryBuilder<CarModel, CarModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> makeEqualTo(String make) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'make',
        value: [make],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> makeNotEqualTo(
      String make) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'make',
              lower: [],
              upper: [make],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'make',
              lower: [make],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'make',
              lower: [make],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'make',
              lower: [],
              upper: [make],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> makeGreaterThan(
    String make, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'make',
        lower: [make],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> makeLessThan(
    String make, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'make',
        lower: [],
        upper: [make],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> makeBetween(
    String lowerMake,
    String upperMake, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'make',
        lower: [lowerMake],
        includeLower: includeLower,
        upper: [upperMake],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> makeStartsWith(
      String MakePrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'make',
        lower: [MakePrefix],
        upper: ['$MakePrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> makeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'make',
        value: [''],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> makeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'make',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'make',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'make',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'make',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> modelEqualTo(
      String model) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'model',
        value: [model],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> modelNotEqualTo(
      String model) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'model',
              lower: [],
              upper: [model],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'model',
              lower: [model],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'model',
              lower: [model],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'model',
              lower: [],
              upper: [model],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> modelGreaterThan(
    String model, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'model',
        lower: [model],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> modelLessThan(
    String model, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'model',
        lower: [],
        upper: [model],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> modelBetween(
    String lowerModel,
    String upperModel, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'model',
        lower: [lowerModel],
        includeLower: includeLower,
        upper: [upperModel],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> modelStartsWith(
      String ModelPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'model',
        lower: [ModelPrefix],
        upper: ['$ModelPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> modelIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'model',
        value: [''],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> modelIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'model',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'model',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'model',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'model',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> transmissionTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'transmissionType',
        value: [null],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause>
      transmissionTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'transmissionType',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> transmissionTypeEqualTo(
      String? transmissionType) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'transmissionType',
        value: [transmissionType],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause>
      transmissionTypeNotEqualTo(String? transmissionType) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'transmissionType',
              lower: [],
              upper: [transmissionType],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'transmissionType',
              lower: [transmissionType],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'transmissionType',
              lower: [transmissionType],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'transmissionType',
              lower: [],
              upper: [transmissionType],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause>
      transmissionTypeGreaterThan(
    String? transmissionType, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'transmissionType',
        lower: [transmissionType],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> transmissionTypeLessThan(
    String? transmissionType, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'transmissionType',
        lower: [],
        upper: [transmissionType],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> transmissionTypeBetween(
    String? lowerTransmissionType,
    String? upperTransmissionType, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'transmissionType',
        lower: [lowerTransmissionType],
        includeLower: includeLower,
        upper: [upperTransmissionType],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause>
      transmissionTypeStartsWith(String TransmissionTypePrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'transmissionType',
        lower: [TransmissionTypePrefix],
        upper: ['$TransmissionTypePrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause>
      transmissionTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'transmissionType',
        value: [''],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause>
      transmissionTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'transmissionType',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'transmissionType',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'transmissionType',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'transmissionType',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> drivenWheelsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'drivenWheels',
        value: [null],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> drivenWheelsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'drivenWheels',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> drivenWheelsEqualTo(
      String? drivenWheels) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'drivenWheels',
        value: [drivenWheels],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> drivenWheelsNotEqualTo(
      String? drivenWheels) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'drivenWheels',
              lower: [],
              upper: [drivenWheels],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'drivenWheels',
              lower: [drivenWheels],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'drivenWheels',
              lower: [drivenWheels],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'drivenWheels',
              lower: [],
              upper: [drivenWheels],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> drivenWheelsGreaterThan(
    String? drivenWheels, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'drivenWheels',
        lower: [drivenWheels],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> drivenWheelsLessThan(
    String? drivenWheels, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'drivenWheels',
        lower: [],
        upper: [drivenWheels],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> drivenWheelsBetween(
    String? lowerDrivenWheels,
    String? upperDrivenWheels, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'drivenWheels',
        lower: [lowerDrivenWheels],
        includeLower: includeLower,
        upper: [upperDrivenWheels],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> drivenWheelsStartsWith(
      String DrivenWheelsPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'drivenWheels',
        lower: [DrivenWheelsPrefix],
        upper: ['$DrivenWheelsPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> drivenWheelsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'drivenWheels',
        value: [''],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> drivenWheelsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'drivenWheels',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'drivenWheels',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'drivenWheels',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'drivenWheels',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> vehicleSizeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'vehicleSize',
        value: [null],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> vehicleSizeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'vehicleSize',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> vehicleSizeEqualTo(
      String? vehicleSize) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'vehicleSize',
        value: [vehicleSize],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> vehicleSizeNotEqualTo(
      String? vehicleSize) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'vehicleSize',
              lower: [],
              upper: [vehicleSize],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'vehicleSize',
              lower: [vehicleSize],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'vehicleSize',
              lower: [vehicleSize],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'vehicleSize',
              lower: [],
              upper: [vehicleSize],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> vehicleSizeGreaterThan(
    String? vehicleSize, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'vehicleSize',
        lower: [vehicleSize],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> vehicleSizeLessThan(
    String? vehicleSize, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'vehicleSize',
        lower: [],
        upper: [vehicleSize],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> vehicleSizeBetween(
    String? lowerVehicleSize,
    String? upperVehicleSize, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'vehicleSize',
        lower: [lowerVehicleSize],
        includeLower: includeLower,
        upper: [upperVehicleSize],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> vehicleSizeStartsWith(
      String VehicleSizePrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'vehicleSize',
        lower: [VehicleSizePrefix],
        upper: ['$VehicleSizePrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> vehicleSizeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'vehicleSize',
        value: [''],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> vehicleSizeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'vehicleSize',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'vehicleSize',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'vehicleSize',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'vehicleSize',
              upper: [''],
            ));
      }
    });
  }
}

extension CarModelQueryFilter
    on QueryBuilder<CarModel, CarModel, QFilterCondition> {
  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> drivenWheelsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'drivenWheels',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      drivenWheelsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'drivenWheels',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> drivenWheelsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'drivenWheels',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      drivenWheelsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'drivenWheels',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> drivenWheelsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'drivenWheels',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> drivenWheelsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'drivenWheels',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      drivenWheelsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'drivenWheels',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> drivenWheelsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'drivenWheels',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> drivenWheelsContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'drivenWheels',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> drivenWheelsMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'drivenWheels',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      drivenWheelsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'drivenWheels',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      drivenWheelsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'drivenWheels',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineCylindersIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'engineCylinders',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineCylindersIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'engineCylinders',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineCylindersEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'engineCylinders',
        value: value,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineCylindersGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'engineCylinders',
        value: value,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineCylindersLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'engineCylinders',
        value: value,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineCylindersBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'engineCylinders',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineFuelTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'engineFuelType',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineFuelTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'engineFuelType',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> engineFuelTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'engineFuelType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineFuelTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'engineFuelType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineFuelTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'engineFuelType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> engineFuelTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'engineFuelType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineFuelTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'engineFuelType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineFuelTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'engineFuelType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineFuelTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'engineFuelType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> engineFuelTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'engineFuelType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineFuelTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'engineFuelType',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineFuelTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'engineFuelType',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> engineHpIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'engineHp',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> engineHpIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'engineHp',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> engineHpEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'engineHp',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> engineHpGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'engineHp',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> engineHpLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'engineHp',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> engineHpBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'engineHp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'make',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'make',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'make',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'make',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'make',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'make',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'make',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'make',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'make',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'make',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> modelEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'model',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> modelGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'model',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> modelLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'model',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> modelBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'model',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> modelStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'model',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> modelEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'model',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> modelContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'model',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> modelMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'model',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> modelIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'model',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> modelIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'model',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      numberOfDoorsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'numberOfDoors',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      numberOfDoorsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'numberOfDoors',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> numberOfDoorsEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numberOfDoors',
        value: value,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      numberOfDoorsGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'numberOfDoors',
        value: value,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> numberOfDoorsLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'numberOfDoors',
        value: value,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> numberOfDoorsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'numberOfDoors',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      transmissionTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'transmissionType',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      transmissionTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'transmissionType',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      transmissionTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transmissionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      transmissionTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'transmissionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      transmissionTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'transmissionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      transmissionTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'transmissionType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      transmissionTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'transmissionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      transmissionTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'transmissionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      transmissionTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'transmissionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      transmissionTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'transmissionType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      transmissionTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transmissionType',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      transmissionTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'transmissionType',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> vehicleSizeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'vehicleSize',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      vehicleSizeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'vehicleSize',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> vehicleSizeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vehicleSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      vehicleSizeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'vehicleSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> vehicleSizeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'vehicleSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> vehicleSizeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'vehicleSize',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> vehicleSizeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'vehicleSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> vehicleSizeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'vehicleSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> vehicleSizeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'vehicleSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> vehicleSizeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'vehicleSize',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> vehicleSizeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vehicleSize',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      vehicleSizeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'vehicleSize',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> yearEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'year',
        value: value,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> yearGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'year',
        value: value,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> yearLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'year',
        value: value,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> yearBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'year',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CarModelQueryObject
    on QueryBuilder<CarModel, CarModel, QFilterCondition> {}

extension CarModelQueryLinks
    on QueryBuilder<CarModel, CarModel, QFilterCondition> {}

extension CarModelQuerySortBy on QueryBuilder<CarModel, CarModel, QSortBy> {
  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByDrivenWheels() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drivenWheels', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByDrivenWheelsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drivenWheels', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByEngineCylinders() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineCylinders', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByEngineCylindersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineCylinders', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByEngineFuelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineFuelType', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByEngineFuelTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineFuelType', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByEngineHp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineHp', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByEngineHpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineHp', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByMake() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'make', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByMakeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'make', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByModel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'model', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByModelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'model', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByNumberOfDoors() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfDoors', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByNumberOfDoorsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfDoors', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByTransmissionType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transmissionType', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByTransmissionTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transmissionType', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByVehicleSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vehicleSize', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByVehicleSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vehicleSize', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension CarModelQuerySortThenBy
    on QueryBuilder<CarModel, CarModel, QSortThenBy> {
  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByDrivenWheels() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drivenWheels', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByDrivenWheelsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drivenWheels', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByEngineCylinders() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineCylinders', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByEngineCylindersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineCylinders', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByEngineFuelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineFuelType', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByEngineFuelTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineFuelType', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByEngineHp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineHp', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByEngineHpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineHp', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByMake() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'make', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByMakeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'make', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByModel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'model', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByModelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'model', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByNumberOfDoors() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfDoors', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByNumberOfDoorsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfDoors', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByTransmissionType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transmissionType', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByTransmissionTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transmissionType', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByVehicleSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vehicleSize', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByVehicleSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vehicleSize', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension CarModelQueryWhereDistinct
    on QueryBuilder<CarModel, CarModel, QDistinct> {
  QueryBuilder<CarModel, CarModel, QDistinct> distinctByDrivenWheels(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'drivenWheels', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarModel, CarModel, QDistinct> distinctByEngineCylinders() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'engineCylinders');
    });
  }

  QueryBuilder<CarModel, CarModel, QDistinct> distinctByEngineFuelType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'engineFuelType',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarModel, CarModel, QDistinct> distinctByEngineHp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'engineHp');
    });
  }

  QueryBuilder<CarModel, CarModel, QDistinct> distinctByMake(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'make', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarModel, CarModel, QDistinct> distinctByModel(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'model', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarModel, CarModel, QDistinct> distinctByNumberOfDoors() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numberOfDoors');
    });
  }

  QueryBuilder<CarModel, CarModel, QDistinct> distinctByTransmissionType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'transmissionType',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarModel, CarModel, QDistinct> distinctByVehicleSize(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'vehicleSize', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarModel, CarModel, QDistinct> distinctByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'year');
    });
  }
}

extension CarModelQueryProperty
    on QueryBuilder<CarModel, CarModel, QQueryProperty> {
  QueryBuilder<CarModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CarModel, String?, QQueryOperations> drivenWheelsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'drivenWheels');
    });
  }

  QueryBuilder<CarModel, int?, QQueryOperations> engineCylindersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'engineCylinders');
    });
  }

  QueryBuilder<CarModel, String?, QQueryOperations> engineFuelTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'engineFuelType');
    });
  }

  QueryBuilder<CarModel, double?, QQueryOperations> engineHpProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'engineHp');
    });
  }

  QueryBuilder<CarModel, String, QQueryOperations> makeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'make');
    });
  }

  QueryBuilder<CarModel, String, QQueryOperations> modelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'model');
    });
  }

  QueryBuilder<CarModel, int?, QQueryOperations> numberOfDoorsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numberOfDoors');
    });
  }

  QueryBuilder<CarModel, String?, QQueryOperations> transmissionTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transmissionType');
    });
  }

  QueryBuilder<CarModel, String?, QQueryOperations> vehicleSizeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'vehicleSize');
    });
  }

  QueryBuilder<CarModel, int, QQueryOperations> yearProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'year');
    });
  }
}
