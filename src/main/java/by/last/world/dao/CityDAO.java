package by.last.world.dao;

import by.last.world.model.CityEntity;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class CityDAO extends DAO<CityEntity> {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public CityEntity read(int id) {
        return entityManager.find(CityEntity.class, id);
    }

    @Override
    public List<CityEntity> getAll() {
        return entityManager.createQuery("FROM CityEntity" , CityEntity.class).getResultList();
    }
}