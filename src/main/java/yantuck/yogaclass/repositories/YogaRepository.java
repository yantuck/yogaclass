package yantuck.yogaclass.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import yantuck.yogaclass.models.Yoga;

public interface YogaRepository extends CrudRepository<Yoga, Long> {
    List<Yoga> findAll();
}
