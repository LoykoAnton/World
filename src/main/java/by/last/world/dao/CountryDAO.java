package by.last.world.dao;

import by.last.world.model.CityEntity;
import by.last.world.model.CountryEntity;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class CountryDAO extends DAO<CountryEntity> {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public CountryEntity read(int id) {
        return entityManager.find(CountryEntity.class, id);
    }

    @Override
    public List<CountryEntity> getAll() {
        return entityManager.createQuery("FROM CountryEntity" , CountryEntity.class).getResultList();
    }
}