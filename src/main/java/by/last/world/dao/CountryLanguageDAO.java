package by.last.world.dao;

import by.last.world.model.CityEntity;
import by.last.world.model.CountryLanguageEntity;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class CountryLanguageDAO extends DAO<CountryLanguageEntity> {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public CountryLanguageEntity read(int id) {
        return entityManager.find(CountryLanguageEntity.class, id);
    }

    @Override
    public List<CountryLanguageEntity> getAll() {
        return entityManager.createQuery("FROM CountryLanguageEntity" , CountryLanguageEntity.class).getResultList();
    }
}