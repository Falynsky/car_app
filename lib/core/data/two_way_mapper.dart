abstract class TwoWayMapper<Model, DTO> {
  Model toModel(DTO value);
  DTO toDTO(Model value);
}
