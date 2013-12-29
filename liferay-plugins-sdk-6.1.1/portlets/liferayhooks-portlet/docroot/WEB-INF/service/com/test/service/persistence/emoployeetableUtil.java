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

import com.liferay.portal.kernel.bean.PortletBeanLocatorUtil;
import com.liferay.portal.kernel.dao.orm.DynamicQuery;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.util.OrderByComparator;
import com.liferay.portal.kernel.util.ReferenceRegistry;
import com.liferay.portal.service.ServiceContext;

import com.test.model.emoployeetable;

import java.util.List;

/**
 * The persistence utility for the emoployeetable service. This utility wraps {@link emoployeetablePersistenceImpl} and provides direct access to the database for CRUD operations. This utility should only be used by the service layer, as it must operate within a transaction. Never access this utility in a JSP, controller, model, or other front-end class.
 *
 * <p>
 * Caching information and settings can be found in <code>portal.properties</code>
 * </p>
 *
 * @author RahulTyagi
 * @see emoployeetablePersistence
 * @see emoployeetablePersistenceImpl
 * @generated
 */
public class emoployeetableUtil {
	/*
	 * NOTE FOR DEVELOPERS:
	 *
	 * Never modify this class directly. Modify <code>service.xml</code> and rerun ServiceBuilder to regenerate this class.
	 */

	/**
	 * @see com.liferay.portal.service.persistence.BasePersistence#clearCache()
	 */
	public static void clearCache() {
		getPersistence().clearCache();
	}

	/**
	 * @see com.liferay.portal.service.persistence.BasePersistence#clearCache(com.liferay.portal.model.BaseModel)
	 */
	public static void clearCache(emoployeetable emoployeetable) {
		getPersistence().clearCache(emoployeetable);
	}

	/**
	 * @see com.liferay.portal.service.persistence.BasePersistence#countWithDynamicQuery(DynamicQuery)
	 */
	public long countWithDynamicQuery(DynamicQuery dynamicQuery)
		throws SystemException {
		return getPersistence().countWithDynamicQuery(dynamicQuery);
	}

	/**
	 * @see com.liferay.portal.service.persistence.BasePersistence#findWithDynamicQuery(DynamicQuery)
	 */
	public static List<emoployeetable> findWithDynamicQuery(
		DynamicQuery dynamicQuery) throws SystemException {
		return getPersistence().findWithDynamicQuery(dynamicQuery);
	}

	/**
	 * @see com.liferay.portal.service.persistence.BasePersistence#findWithDynamicQuery(DynamicQuery, int, int)
	 */
	public static List<emoployeetable> findWithDynamicQuery(
		DynamicQuery dynamicQuery, int start, int end)
		throws SystemException {
		return getPersistence().findWithDynamicQuery(dynamicQuery, start, end);
	}

	/**
	 * @see com.liferay.portal.service.persistence.BasePersistence#findWithDynamicQuery(DynamicQuery, int, int, OrderByComparator)
	 */
	public static List<emoployeetable> findWithDynamicQuery(
		DynamicQuery dynamicQuery, int start, int end,
		OrderByComparator orderByComparator) throws SystemException {
		return getPersistence()
				   .findWithDynamicQuery(dynamicQuery, start, end,
			orderByComparator);
	}

	/**
	 * @see com.liferay.portal.service.persistence.BasePersistence#update(com.liferay.portal.model.BaseModel, boolean)
	 */
	public static emoployeetable update(emoployeetable emoployeetable,
		boolean merge) throws SystemException {
		return getPersistence().update(emoployeetable, merge);
	}

	/**
	 * @see com.liferay.portal.service.persistence.BasePersistence#update(com.liferay.portal.model.BaseModel, boolean, ServiceContext)
	 */
	public static emoployeetable update(emoployeetable emoployeetable,
		boolean merge, ServiceContext serviceContext) throws SystemException {
		return getPersistence().update(emoployeetable, merge, serviceContext);
	}

	/**
	* Caches the emoployeetable in the entity cache if it is enabled.
	*
	* @param emoployeetable the emoployeetable
	*/
	public static void cacheResult(com.test.model.emoployeetable emoployeetable) {
		getPersistence().cacheResult(emoployeetable);
	}

	/**
	* Caches the emoployeetables in the entity cache if it is enabled.
	*
	* @param emoployeetables the emoployeetables
	*/
	public static void cacheResult(
		java.util.List<com.test.model.emoployeetable> emoployeetables) {
		getPersistence().cacheResult(emoployeetables);
	}

	/**
	* Creates a new emoployeetable with the primary key. Does not add the emoployeetable to the database.
	*
	* @param empid the primary key for the new emoployeetable
	* @return the new emoployeetable
	*/
	public static com.test.model.emoployeetable create(int empid) {
		return getPersistence().create(empid);
	}

	/**
	* Removes the emoployeetable with the primary key from the database. Also notifies the appropriate model listeners.
	*
	* @param empid the primary key of the emoployeetable
	* @return the emoployeetable that was removed
	* @throws com.test.NoSuchemoployeetableException if a emoployeetable with the primary key could not be found
	* @throws SystemException if a system exception occurred
	*/
	public static com.test.model.emoployeetable remove(int empid)
		throws com.liferay.portal.kernel.exception.SystemException,
			com.test.NoSuchemoployeetableException {
		return getPersistence().remove(empid);
	}

	public static com.test.model.emoployeetable updateImpl(
		com.test.model.emoployeetable emoployeetable, boolean merge)
		throws com.liferay.portal.kernel.exception.SystemException {
		return getPersistence().updateImpl(emoployeetable, merge);
	}

	/**
	* Returns the emoployeetable with the primary key or throws a {@link com.test.NoSuchemoployeetableException} if it could not be found.
	*
	* @param empid the primary key of the emoployeetable
	* @return the emoployeetable
	* @throws com.test.NoSuchemoployeetableException if a emoployeetable with the primary key could not be found
	* @throws SystemException if a system exception occurred
	*/
	public static com.test.model.emoployeetable findByPrimaryKey(int empid)
		throws com.liferay.portal.kernel.exception.SystemException,
			com.test.NoSuchemoployeetableException {
		return getPersistence().findByPrimaryKey(empid);
	}

	/**
	* Returns the emoployeetable with the primary key or returns <code>null</code> if it could not be found.
	*
	* @param empid the primary key of the emoployeetable
	* @return the emoployeetable, or <code>null</code> if a emoployeetable with the primary key could not be found
	* @throws SystemException if a system exception occurred
	*/
	public static com.test.model.emoployeetable fetchByPrimaryKey(int empid)
		throws com.liferay.portal.kernel.exception.SystemException {
		return getPersistence().fetchByPrimaryKey(empid);
	}

	/**
	* Returns all the emoployeetables.
	*
	* @return the emoployeetables
	* @throws SystemException if a system exception occurred
	*/
	public static java.util.List<com.test.model.emoployeetable> findAll()
		throws com.liferay.portal.kernel.exception.SystemException {
		return getPersistence().findAll();
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
	public static java.util.List<com.test.model.emoployeetable> findAll(
		int start, int end)
		throws com.liferay.portal.kernel.exception.SystemException {
		return getPersistence().findAll(start, end);
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
	public static java.util.List<com.test.model.emoployeetable> findAll(
		int start, int end,
		com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
		throws com.liferay.portal.kernel.exception.SystemException {
		return getPersistence().findAll(start, end, orderByComparator);
	}

	/**
	* Removes all the emoployeetables from the database.
	*
	* @throws SystemException if a system exception occurred
	*/
	public static void removeAll()
		throws com.liferay.portal.kernel.exception.SystemException {
		getPersistence().removeAll();
	}

	/**
	* Returns the number of emoployeetables.
	*
	* @return the number of emoployeetables
	* @throws SystemException if a system exception occurred
	*/
	public static int countAll()
		throws com.liferay.portal.kernel.exception.SystemException {
		return getPersistence().countAll();
	}

	public static emoployeetablePersistence getPersistence() {
		if (_persistence == null) {
			_persistence = (emoployeetablePersistence)PortletBeanLocatorUtil.locate(com.test.service.ClpSerializer.getServletContextName(),
					emoployeetablePersistence.class.getName());

			ReferenceRegistry.registerReference(emoployeetableUtil.class,
				"_persistence");
		}

		return _persistence;
	}

	/**
	 * @deprecated
	 */
	public void setPersistence(emoployeetablePersistence persistence) {
	}

	private static emoployeetablePersistence _persistence;
}