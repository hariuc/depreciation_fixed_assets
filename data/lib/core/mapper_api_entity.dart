import 'package:data/core/api_dto.dart';
import 'package:domain/core/entity.dart';

abstract class MapperApiEntity<DTO extends ApiDTO, ENTITY extends Entity> {
  DTO mapToDto(ENTITY input);

  ENTITY mapToEntity(DTO input);
}