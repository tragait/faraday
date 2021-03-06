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

package com.test.model;

import com.liferay.portal.kernel.bean.AutoEscape;
import com.liferay.portal.model.BaseModel;
import com.liferay.portal.model.CacheModel;
import com.liferay.portal.service.ServiceContext;

import com.liferay.portlet.expando.model.ExpandoBridge;

import java.io.Serializable;

/**
 * The base model interface for the emoployeetable service. Represents a row in the &quot;service_emoployeetable&quot; database table, with each column mapped to a property of this class.
 *
 * <p>
 * This interface and its corresponding implementation {@link com.test.model.impl.emoployeetableModelImpl} exist only as a container for the default property accessors generated by ServiceBuilder. Helper methods and all application logic should be put in {@link com.test.model.impl.emoployeetableImpl}.
 * </p>
 *
 * @author RahulTyagi
 * @see emoployeetable
 * @see com.test.model.impl.emoployeetableImpl
 * @see com.test.model.impl.emoployeetableModelImpl
 * @generated
 */
public interface emoployeetableModel extends BaseModel<emoployeetable> {
	/*
	 * NOTE FOR DEVELOPERS:
	 *
	 * Never modify or reference this interface directly. All methods that expect a emoployeetable model instance should use the {@link emoployeetable} interface instead.
	 */

	/**
	 * Returns the primary key of this emoployeetable.
	 *
	 * @return the primary key of this emoployeetable
	 */
	public int getPrimaryKey();

	/**
	 * Sets the primary key of this emoployeetable.
	 *
	 * @param primaryKey the primary key of this emoployeetable
	 */
	public void setPrimaryKey(int primaryKey);

	/**
	 * Returns the foo ID of this emoployeetable.
	 *
	 * @return the foo ID of this emoployeetable
	 */
	public long getFooId();

	/**
	 * Sets the foo ID of this emoployeetable.
	 *
	 * @param fooId the foo ID of this emoployeetable
	 */
	public void setFooId(long fooId);

	/**
	 * Returns the name of this emoployeetable.
	 *
	 * @return the name of this emoployeetable
	 */
	@AutoEscape
	public String getName();

	/**
	 * Sets the name of this emoployeetable.
	 *
	 * @param name the name of this emoployeetable
	 */
	public void setName(String name);

	/**
	 * Returns the empid of this emoployeetable.
	 *
	 * @return the empid of this emoployeetable
	 */
	public int getEmpid();

	/**
	 * Sets the empid of this emoployeetable.
	 *
	 * @param empid the empid of this emoployeetable
	 */
	public void setEmpid(int empid);

	public boolean isNew();

	public void setNew(boolean n);

	public boolean isCachedModel();

	public void setCachedModel(boolean cachedModel);

	public boolean isEscapedModel();

	public Serializable getPrimaryKeyObj();

	public void setPrimaryKeyObj(Serializable primaryKeyObj);

	public ExpandoBridge getExpandoBridge();

	public void setExpandoBridgeAttributes(ServiceContext serviceContext);

	public Object clone();

	public int compareTo(emoployeetable emoployeetable);

	public int hashCode();

	public CacheModel<emoployeetable> toCacheModel();

	public emoployeetable toEscapedModel();

	public emoployeetable toUnescapedModel();

	public String toString();

	public String toXmlString();
}