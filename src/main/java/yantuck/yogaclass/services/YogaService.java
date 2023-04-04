package yantuck.yogaclass.services;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yantuck.yogaclass.models.Yoga;
import yantuck.yogaclass.repositories.YogaRepository;

@Service
public class YogaService {

    @Autowired YogaRepository yogaRepository;

    public void createYoga(@Valid Yoga yoga) {
        yogaRepository.save(yoga);
    }
//! READ ALL
    public List<Yoga> getAllYogas() {
        return yogaRepository.findAll();
    }
//! READ ONE
    public Yoga getOneYoga(Long id) {
        Optional<Yoga> yoga = yogaRepository.findById(id);
        return yoga.orElse(null);
    }

    //! UPDATE
    public void updateYoga(Yoga yoga) {
        yogaRepository.save(yoga);
    }

    //! DELETE
    public void deleteYoga(Yoga yoga) {
        yogaRepository.delete(yoga);
    }
}
