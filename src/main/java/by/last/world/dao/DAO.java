package by.last.world.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

public abstract class DAO<T> {

    @PersistenceContext
    private EntityManager entityManager;

    public abstract T read(int id);

    public void add(T entity) {
        entityManager.persist(entity);
    }

    public void update(T entity) {
        entityManager.merge(entity);
    }

    public void delete(int id) {
        entityManager.remove(read(id));
    }

    public abstract List<T> getAll();
}