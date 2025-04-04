abstract interface class Repository<T, ID, DTO> {
  Future<List<T>> findAll();
  Future<T?> findOne(ID id);
  Future<T?> findByWhere(bool Function(T predicate) predicate);
}
