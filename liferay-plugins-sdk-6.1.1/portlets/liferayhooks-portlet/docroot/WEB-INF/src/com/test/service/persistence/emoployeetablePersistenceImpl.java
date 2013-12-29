/**
 * Copyright (c) 2000-2013 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */

package com.test.service.persistence;

import com.liferay.portal.NoSuchModelException;
import com.liferay.portal.kernel.bean.BeanReference;
import com.liferay.portal.kernel.cache.CacheRegistryUtil;
import com.liferay.portal.kernel.dao.orm.EntityCacheUtil;
import com.liferay.portal.kernel.dao.orm.FinderCacheUtil;
import com.liferay.portal.kernel.dao.orm.FinderPath;
import com.liferay.portal.kernel.dao.orm.Query;
import com.liferay.portal.kernel.dao.orm.QueryUtil;
import com.liferay.portal.kernel.dao.orm.Session;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.util.GetterUtil;
import com.liferay.portal.kernel.util.InstanceFactory;
import com.liferay.portal.kernel.util.OrderByComparator;
import com.liferay.portal.kernel.util.PropsKeys;
import com.liferay.portal.kernel.util.PropsUtil;
import com.liferay.portal.kernel.util.StringBundler;
import com.liferay.portal.kernel.util.StringUtil;
import com.liferay.portal.model.CacheModel;
import com.liferay.portal.model.ModelListener;
import com.liferay.portal.service.persistence.BatchSessionUtil;
import com.liferay.portal.service.persistence.ResourcePersistence;
import com.liferay.portal.service.persistence.UserPersistence;
import com.liferay.portal.service.persistence.impl.BasePersistenceImpl;

import com.test.NoSuchemoployeetableException;

import com.test.model.emoployeetable;
import com.test.model.impl.emoployeetableImpl;
import com.test.model.impl.emoployeetableModelImpl;

import java.io.Serializable;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * The persistence implementation for the emoployeetable service.
 *
 * <p>
 * Caching information and settings can be found in <code>portal.properties</code>
 * </p>
 *
 * @author RahulTyagi
 * @see emoployeetablePersistence
 * @see emoployeetableUtil
 * @generated
 */
public class emoployeetablePersistenceImpl extends BasePersistenceImpl<emoployeetable>
	implements emoployeetablePersistence {
	/*
	 * NOTE FOR DEVELOPERS:
	 *
	 * Never modify or reference this class directly. Always use {@link emoployeetableUtil} to access the emoployeetable persistence. Modify <code>service.xml</code> and rerun ServiceBuilder to regenerate this class.
	 */
	public static final String FINDER_CLASS_NAME_ENTITY = emoployeetableImpl.class.getName();
	public static final String FINDER_CLASS_NAME_LIST_WITH_PAGINATION = FINDER_CLASS_NAME_ENTITY +
		".List1";
	public static final String FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION = FINDER_CLASS_NAME_ENTITY +
		".List2";
	public static final FinderPath FINDER_PATH_WITH_PAGINATION_FIND_ALL = new FinderPath(emoployeetableModelImpl.ENTITY_CACHE_ENABLED,
			emoployeetableModelImpl.FINDER_CACHE_ENABLED,
			emoployeetableImpl.class, FINDER_CLASS_NAME_LIST_WITH_PAGINATION,
			"findAll", new String[0]);
	public static final FinderPath FINDER_PATH_WITHOUT_PAGINATION_FIND_ALL = new FinderPath(emoployeetableModelImpl.ENTITY_CACHE_ENABLED,
			emoployeetableModelImpl.FINDER_CACHE_ENABLED,
			emoployeetableImpl.class,
			FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "findAll", new String[0]);
	public static final FinderPath FINDER_PATH_COUNT_ALL = new FinderPath(emoployeetableModelImpl.ENTITY_CACHE_ENABLED,
			emoployeetableModelImpl.FINDER_CACHE_ENABLED, Long.class,
			FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "countAll", new String[0]);

	/**
	 * Caches the emoployeetable in the entity cache if it is enabled.
	 *
	 * @param emoployeetable the emoployeetable
	 */
	public void cacheResult(emoployeetable emoployeetable) {
		EntityCacheUtil.putResult(emoployeetableModelImpl.ENTITY_CACHE_ENABLED,
			emoployeetableImpl.class, emoployeetable.getPrimaryKey(),
			emoployeetable);

		emoployeetable.resetOriginalValues();
	}

	/**
	 * Caches the emoployeetables in the entity cache if it is enabled.
	 *
	 * @param emoployeetables the emoployeetables
	 */
	public void cacheResult(List<emoployeetable> emoployeetables) {
		for (emoployeetable emoployeetable : emoployeetables) {
			if (EntityCacheUtil.getResult(
						emoployeetableModelImpl.ENTITY_CACHE_ENABLED,
						emoployeetableImpl.class, emoployeetable.getPrimaryKey()) == null) {
				cacheResult(emoployeetable);
			}
			else {
				emoployeetable.resetOriginalValues();
			}
		}
	}

	/**
	 * Clears the cache for all emoployeetables.
	 *
	 * <p>
	 * The {@link com.liferay.portal.kernel.dao.orm.EntityCache} and {@link com.liferay.portal.kernel.dao.orm.FinderCache} are both cleared by this method.
	 * </p>
	 */
	@Override
	public void clearCache() {
		if (_HIBERNATE_CACHE_USE_SECOND_LEVEL_CACHE) {
			CacheRegistryUtil.clear(emoployeetableImpl.class.getName());
		}

		EntityCacheUtil.clearCache(emoployeetableImpl.class.getName());

		FinderCacheUtil.clearCache(FINDER_CLASS_NAME_ENTITY);
		FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
		FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
	}

	/**
	 * Clears the cache for the emoployeetable.
	 *
	 * <p>
	 * The {@link com.liferay.portal.kernel.dao.orm.EntityCache} and {@link com.liferay.portal.kernel.dao.orm.FinderCache} are both cleared by this method.
	 * </p>
	 */
	@Override
	public void clearCache(emoployeetable emoployeetable) {
		EntityCacheUtil.removeResult(emoployeetableModelImpl.ENTITY_CACHE_ENABLED,
			emoployeetableImpl.class, emoployeetable.getPrimaryKey());

		FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
		FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
	}

	@Override
	public void clearCache(List<emoployeetable> emoployeetables) {
		FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
		FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);

		for (emoployeetable emoployeetable : emoployeetables) {
			EntityCacheUtil.removeResult(emoployeetableModelImpl.ENTITY_CACHE_ENABLED,
				emoployeetableImpl.class, emoployeetable.getPrimaryKey());
		}
	}

	/**
	 * Creates a new emoployeetable with the primary key. Does not add the emoployeetable to the database.
	 *
	 * @param empid the primary key for the new emoployeetable
	 * @return the new emoployeetable
	 */
	public emoployeetable create(int empid) {
		emoployeetable emoployeetable = new emoployeetableImpl();

		emoployeetable.setNew(true);
		emoployeetable.setPrimaryKey(empid);

		return emoployeetable;
	}

	/**
	 * Removes the emoployeetable with the primary key from the database. Also notifies the appropriate model listeners.
	 *
	 * @param empid the primary key of the emoployeetable
	 * @return the emoployeetable that was removed
	 * @throws com.test.NoSuchemoployeetableException if a emoployeetable with the primary key could not be found
	 * @throws SystemException if a system exception occurred
	 */
	public emoployeetable remove(int empid)
		throws NoSuchemoployeetableException, SystemException {
		return remove(Integer.valueOf(empid));
	}

	/**
	 * Removes the emoployeetable with the primary key from the database. Also notifies the appropriate model listeners.
	 *
	 * @param primaryKey the primary key of the emoployeetable
	 * @return the emoployeetable that was removed
	 * @throws com.test.NoSuchemoployeetableException if a emoployeetable with the primary key could not be found
	 * @throws SystemException if a system exception occurred
	 */
	@Override
	public emoployeetable remove(Serializable primaryKey)
		throws NoSuchemoployeetableException, SystemException {
		Session session = null;

		try {
			session = openSession();

			emoployeetable emoployeetable = (emoployeetable)session.get(emoployeetableImpl.class,
					primaryKey);

			if (emoployeetable == null) {
				if (_log.isWarnEnabled()) {
					_log.warn(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY + primaryKey);
				}

				throw new NoSuchemoployeetableException(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY +
					primaryKey);
			}

			return remove(emoployeetable);
		}
		catch (NoSuchemoployeetableException nsee) {
			throw nsee;
		}
		catch (Exception e) {
			throw processException(e);
		}
		finally {
			closeSession(session);
		}
	}

	@Override
	protected emoployeetable removeImpl(emoployeetable emoployeetable)
		throws SystemException {
		emoployeetable = toUnwrappedModel(emoployeetable);

		Session session = null;

		try {
			session = openSession();

			BatchSessionUtil.delete(session, emoployeetable);
		}
		catch (Exception e) {
			throw processException(e);
		}
		finally {
			closeSession(session);
		}

		clearCache(emoployeetable);

		return emoployeetable;
	}

	@Override
	public emoployeetable updateImpl(
		com.test.model.emoployeetable emoployeetable, boolean merge)
		throws SystemException {
		emoployeetable = toUnwrappedModel(emoployeetable);

		boolean isNew = emoployeetable.isNew();

		Session session = null;

		try {
			session = openSession();

			BatchSessionUtil.update(session, emoployeetable, merge);

			emoployeetable.setNew(false);
		}
		catch (Exception e) {
			throw processException(e);
		}
		finally {
			closeSession(session);
		}

		FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);

		if (isNew) {
			FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
		}

		EntityCacheUtil.putResult(emoployeetableModelImpl.ENTITY_CACHE_ENABLED,
			emoployeetableImpl.class, emoployeetable.getPrimaryKey(),
			emoployeetable);

		return emoployeetable;
	}

	protected emoployeetable toUnwrappedModel(emoployeetable emoployeetable) {
		if (emoployeetable instanceof emoployeetableImpl) {
			return emoployeetable;
		}

		emoployeetableImpl emoployeetableImpl = new emoployeetableImpl();

		emoployeetableImpl.setNew(emoployeetable.isNew());
		emoployeetableImpl.setPrimaryKey(emoployeetable.getPrimaryKey());

		emoployeetableImpl.setFooId(emoployeetable.getFooId());
		emoployeetableImpl.setName(emoployeetable.getName());
		emoployeetableImpl.setEmpid(emoployeetable.getEmpid());

		return emoployeetableImpl;
	}

	/**
	 * Returns the emoployeetable with the primary key or throws a {@link com.liferay.portal.NoSuchModelException} if it could not be found.
	 *
	 * @param primaryKey the primary key of the emoployeetable
	 * @return the emoployeetable
	 * @throws com.liferay.portal.NoSuchModelException if a emoployeetable with the primary key could not be found
	 * @throws SystemException if a system exception occurred
	 */
	@Override
	public emoployeetable findByPrimaryKey(Serializable primaryKey)
		throws NoSuchModelException, SystemException {
		return findByPrimaryKey(((Integer)primaryKey).intValue());
	}

	/**
	 * Returns the emoployeetable with the primary key or throws a {@link com.test.NoSuchemoployeetableException} if it could not be found.
	 *
	 * @param empid the primary key of the emoployeetable
	 * @return the emoployeetable
	 * @throws com.test.NoSuchemoployeetableException if a emoployeetable with the primary key could not be found
	 * @throws SystemException if a system exception occurred
	 */
	public emoployeetable findByPrimaryKey(int empid)
		throws NoSuchemoployeetableException, SystemException {
		emoployeetable emoployeetable = fetchByPrimaryKey(empid);

		if (emoployeetable == null) {
			if (_log.isWarnEnabled()) {
				_log.warn(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY + empid);
			}

			throw new NoSuchemoployeetableException(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY +
				empid);
		}

		return emoployeetable;
	}

	/**
	 * Returns the emoployeetable with the primary key or returns <code>null</code> if it could not be found.
	 *
	 * @param primaryKey the primary key of the emoployeetable
	 * @return the emoployeetable, or <code>null</code> if a emoployeetable with the primary key could not be found
	 * @throws SystemException if a system exception occurred
	 */
	@Override
	public emoployeetable fetchByPrimaryKey(Serializable primaryKey)
		throws SystemException {
		return fetchByPrimaryKey(((Integer)primaryKey).intValue());
	}

	/**
	 * Returns the emoployeetable with the primary key or returns <code>null</code> if it could not be found.
	 *
	 * @param empid the primary key of the emoployeetable
	 * @return the emoployeetable, or <code>null</code> if a emoployeetable with the primary key could not be found
	 * @throws SystemException if a system exception occurred
	 */
	public emoployeetable fetchByPrimaryKey(int empid)
		throws SystemException {
		emoployeetable emoployeetable = (emoployeetable)EntityCacheUtil.getResult(emoployeetableModelImpl.ENTITY_CACHE_ENABLED,
				emoployeetableImpl.class, empid);

		if (emoployeetable == _nullemoployeetable) {
			return null;
		}

		if (emoployeetable == null) {
			Session session = null;

			boolean hasException = false;

			try {
				session = openSession();

				emoployeetable = (emoployeetable)session.get(emoployeetableImpl.class,
						Integer.valueOf(empid));
			}
			catch (Exception e) {
				hasException = true;

				throw processException(e);
			}
			finally {
				if (emoployeetable != null) {
					cacheResult(emoployeetable);
				}
				else if (!hasException) {
					EntityCacheUtil.putResult(emoployeetableModelImpl.ENTITY_CACHE_ENABLED,
						emoployeetableImpl.class, empid, _nullemoployeetable);
				}

				closeSession(session);
			}
		}

		return emoployeetable;
	}

	/**
	 * Returns all the emoployeetables.
	 *
	 * @return the emoployeetables
	 * @throws SystemException if a system exception occurred
	 */
	public List<emoployeetable> findAll() throws SystemException {
		return findAll(QueryUtil.ALL_POS, QueryUtil.ALL_POS, null);
	}

	/**
	 * Returns a range of all the emoployeetables.
	 *
	 * <p>
	 * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set.
	 * </p>
	 *
	 * @param start the lower bound of the range of emoployeetables
	 * @param end the upper bound of the range of emoployeetables (not inclusive)
	 * @return the range of emoployeetables
	 * @throws SystemException if a system exception occurred
	 */
	public List<emoployeetable> findAll(int start, int end)
		throws SystemException {
		return findAll(start, end, null);
	}

	/**
	 * Returns an ordered range of all the emoployeetables.
	 *
	 * <p>
	 * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set.
	 * </p>
	 *
	 * @param start the lower bound of the range of emoployeetables
	 * @param end the upper bound of the range of emoployeetables (not inclusive)
	 * @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
	 * @return the ordered range of emoployeetables
	 * @throws SystemException if a system exception occurred
	 */
	public List<emoployeetable> findAll(int start, int end,
		OrderByComparator orderByComparator) throws SystemException {
		FinderPath finderPath = null;
		Object[] finderArgs = new Object[] { start, end, orderByComparator };

		if ((start == QueryUtil.ALL_POS) && (end == QueryUtil.ALL_POS) &&
				(orderByComparator == null)) {
			finderPath = FINDER_PATH_WITHOUT_PAGINATION_FIND_ALL;
			finderArgs = FINDER_ARGS_EMPTY;
		}
		else {
			finderPath = FINDER_PATH_WITH_PAGINATION_FIND_ALL;
			finderArgs = new Object[] { start, end, orderByComparator };
		}

		List<emoployeetable> list = (List<emoployeetable>)FinderCacheUtil.getResult(finderPath,
				finderArgs, this);

		if (list == null) {
			StringBundler query = null;
			String sql = null;

			if (orderByComparator != null) {
				query = new StringBundler(2 +
						(orderByComparator.getOrderByFields().length * 3));

				query.append(_SQL_SELECT_EMOPLOYEETABLE);

				appendOrderByComparator(query, _ORDER_BY_ENTITY_ALIAS,
					orderByComparator);

				sql = query.toString();
			}
			else {
				sql = _SQL_SELECT_EMOPLOYEETABLE;
			}

			Session session = null;

			try {
				session = openSession();

				Query q = session.createQuery(sql);

				if (orderByComparator == null) {
					list = (List<emoployeetable>)QueryUtil.list(q,
							getDialect(), start, end, false);

					Collections.sort(list);
				}
				else {
					list = (List<emoployeetable>)QueryUtil.list(q,
							getDialect(), start, end);
				}
			}
			catch (Exception e) {
				throw processException(e);
			}
			finally {
				if (list == null) {
					FinderCacheUtil.removeResult(finderPath, finderArgs);
				}
				else {
					cacheResult(list);

					FinderCacheUtil.putResult(finderPath, finderArgs, list);
				}

				closeSession(session);
			}
		}

		return list;
	}

	/**
	 * Removes all the emoployeetables from the database.
	 *
	 * @throws SystemException if a system exception occurred
	 */
	public void removeAll() throws SystemException {
		for (emoployeetable emoployeetable : findAll()) {
			remove(emoployeetable);
		}
	}

	/**
	 * Returns the number of emoployeetables.
	 *
	 * @return the number of emoployeetables
	 * @throws SystemException if a system exception occurred
	 */
	public int countAll() throws SystemException {
		Long count = (Long)FinderCacheUtil.getResult(FINDER_PATH_COUNT_ALL,
				FINDER_ARGS_EMPTY, this);

		if (count == null) {
			Session session = null;

			try {
				session = openSession();

				Query q = session.createQuery(_SQL_COUNT_EMOPLOYEETABLE);

				count = (Long)q.uniqueResult();
			}
			catch (Exception e) {
				throw processException(e);
			}
			finally {
				if (count == null) {
					count = Long.valueOf(0);
				}

				FinderCacheUtil.putResult(FINDER_PATH_COUNT_ALL,
					FINDER_ARGS_EMPTY, count);

				closeSession(session);
			}
		}

		return count.intValue();
	}

	/**
	 * Initializes the emoployeetable persistence.
	 */
	public void afterPropertiesSet() {
		String[] listenerClassNames = StringUtil.split(GetterUtil.getString(
					com.liferay.util.service.ServiceProps.get(
						"value.object.listener.com.test.model.emoployeetable")));

		if (listenerClassNames.length > 0) {
			try {
				List<ModelListener<emoployeetable>> listenersList = new ArrayList<ModelListener<emoployeetable>>();

				for (String listenerClassName : listenerClassNames) {
					Class<?> clazz = getClass();

					listenersList.add((ModelListener<emoployeetable>)InstanceFactory.newInstance(
							clazz.getClassLoader(), listenerClassName));
				}

				listeners = listenersList.toArray(new ModelListener[listenersList.size()]);
			}
			catch (Exception e) {
				_log.error(e);
			}
		}
	}

	public void destroy() {
		EntityCacheUtil.removeCache(emoployeetableImpl.class.getName());
		FinderCacheUtil.removeCache(FINDER_CLASS_NAME_ENTITY);
		FinderCacheUtil.removeCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
	}

	@BeanReference(type = emoployeetablePersistence.class)
	protected emoployeetablePersistence emoployeetablePersistence;
	@BeanReference(type = FooPersistence.class)
	protected FooPersistence fooPersistence;
	@BeanReference(type = ResourcePersistence.class)
	protected ResourcePersistence resourcePersistence;
	@BeanReference(type = UserPersistence.class)
	protected UserPersistence userPersistence;
	private static final String _SQL_SELECT_EMOPLOYEETABLE = "SELECT emoployeetable FROM emoployeetable emoployeetable";
	private static final String _SQL_COUNT_EMOPLOYEETABLE = "SELECT COUNT(emoployeetable) FROM emoployeetable emoployeetable";
	private static final String _ORDER_BY_ENTITY_ALIAS = "emoployeetable.";
	private static final String _NO_SUCH_ENTITY_WITH_PRIMARY_KEY = "No emoployeetable exists with the primary key ";
	private static final boolean _HIBERNATE_CACHE_USE_SECOND_LEVEL_CACHE = GetterUtil.getBoolean(PropsUtil.get(
				PropsKeys.HIBERNATE_CACHE_USE_SECOND_LEVEL_CACHE));
	private static Log _log = LogFactoryUtil.getLog(emoployeetablePersistenceImpl.class);
	private static emoployeetable _nullemoployeetable = new emoployeetableImpl() {
			@Override
			public Object clone() {
				return this;
			}

			@Override
			public CacheModel<emoployeetable> toCacheModel() {
				return _nullemoployeetableCacheModel;
			}
		};

	private static CacheModel<emoployeetable> _nullemoployeetableCacheModel = new CacheModel<emoployeetable>() {
			public emoployeetable toEntityModel() {
				return _nullemoployeetable;
			}
		};
}