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

import com.liferay.portal.kernel.util.Validator;
import com.liferay.portal.model.ModelWrapper;

import java.util.HashMap;
import java.util.Map;

/**
 * <p>
 * This class is a wrapper for {@link emoployeetable}.
 * </p>
 *
 * @author    RahulTyagi
 * @see       emoployeetable
 * @generated
 */
public class emoployeetableWrapper implements emoployeetable,
	ModelWrapper<emoployeetable> {
	public emoployeetableWrapper(emoployeetable emoployeetable) {
		_emoployeetable = emoployeetable;
	}

	public Class<?> getModelClass() {
		return emoployeetable.class;
	}

	public String getModelClassName() {
		return emoployeetable.class.getName();
	}

	public Map<String, Object> getModelAttributes() {
		Map<String, Object> attributes = new HashMap<String, Object>();

		attributes.put("fooId", getFooId());
		attributes.put("name", getName());
		attributes.put("empid", getEmpid());

		return attributes;
	}

	public void setModelAttributes(Map<String, Object> attributes) {
		Long fooId = (Long)attributes.get("fooId");

		if (fooId != null) {
			setFooId(fooId);
		}

		String name = (String)attributes.get("name");

		if (name != null) {
			setName(name);
		}

		Integer empid = (Integer)attributes.get("empid");

		if (empid != null) {
			setEmpid(empid);
		}
	}

	/**
	* Returns the primary key of this emoployeetable.
	*
	* @return the primary key of this emoployeetable
	*/
	public int getPrimaryKey() {
		return _emoployeetable.getPrimaryKey();
	}

	/**
	* Sets the primary key of this emoployeetable.
	*
	* @param primaryKey the primary key of this emoployeetable
	*/
	public void setPrimaryKey(int primaryKey) {
		_emoployeetable.setPrimaryKey(primaryKey);
	}

	/**
	* Returns the foo ID of this emoployeetable.
	*
	* @return the foo ID of this emoployeetable
	*/
	public long getFooId() {
		return _emoployeetable.getFooId();
	}

	/**
	* Sets the foo ID of this emoployeetable.
	*
	* @param fooId the foo ID of this emoployeetable
	*/
	public void setFooId(long fooId) {
		_emoployeetable.setFooId(fooId);
	}

	/**
	* Returns the name of this emoployeetable.
	*
	* @return the name of this emoployeetable
	*/
	public java.lang.String getName() {
		return _emoployeetable.getName();
	}

	/**
	* Sets the name of this emoployeetable.
	*
	* @param name the name of this emoployeetable
	*/
	public void setName(java.lang.String name) {
		_emoployeetable.setName(name);
	}

	/**
	* Returns the empid of this emoployeetable.
	*
	* @return the empid of this emoployeetable
	*/
	public int getEmpid() {
		return _emoployeetable.getEmpid();
	}

	/**
	* Sets the empid of this emoployeetable.
	*
	* @param empid the empid of this emoployeetable
	*/
	public void setEmpid(int empid) {
		_emoployeetable.setEmpid(empid);
	}

	public boolean isNew() {
		return _emoployeetable.isNew();
	}

	public void setNew(boolean n) {
		_emoployeetable.setNew(n);
	}

	public boolean isCachedModel() {
		return _emoployeetable.isCachedModel();
	}

	public void setCachedModel(boolean cachedModel) {
		_emoployeetable.setCachedModel(cachedModel);
	}

	public boolean isEscapedModel() {
		return _emoployeetable.isEscapedModel();
	}

	public java.io.Serializable getPrimaryKeyObj() {
		return _emoployeetable.getPrimaryKeyObj();
	}

	public void setPrimaryKeyObj(java.io.Serializable primaryKeyObj) {
		_emoployeetable.setPrimaryKeyObj(primaryKeyObj);
	}

	public com.liferay.portlet.expando.model.ExpandoBridge getExpandoBridge() {
		return _emoployeetable.getExpandoBridge();
	}

	public void setExpandoBridgeAttributes(
		com.liferay.portal.service.ServiceContext serviceContext) {
		_emoployeetable.setExpandoBridgeAttributes(serviceContext);
	}

	@Override
	public java.lang.Object clone() {
		return new emoployeetableWrapper((emoployeetable)_emoployeetable.clone());
	}

	public int compareTo(emoployeetable emoployeetable) {
		return _emoployeetable.compareTo(emoployeetable);
	}

	@Override
	public int hashCode() {
		return _emoployeetable.hashCode();
	}

	public com.liferay.portal.model.CacheModel<emoployeetable> toCacheModel() {
		return _emoployeetable.toCacheModel();
	}

	public emoployeetable toEscapedModel() {
		return new emoployeetableWrapper(_emoployeetable.toEscapedModel());
	}

	public emoployeetable toUnescapedModel() {
		return new emoployeetableWrapper(_emoployeetable.toUnescapedModel());
	}

	@Override
	public java.lang.String toString() {
		return _emoployeetable.toString();
	}

	public java.lang.String toXmlString() {
		return _emoployeetable.toXmlString();
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}

		if (!(obj instanceof emoployeetableWrapper)) {
			return false;
		}

		emoployeetableWrapper emoployeetableWrapper = (emoployeetableWrapper)obj;

		if (Validator.equals(_emoployeetable,
					emoployeetableWrapper._emoployeetable)) {
			return true;
		}

		return false;
	}

	/**
	 * @deprecated Renamed to {@link #getWrappedModel}
	 */
	public emoployeetable getWrappedemoployeetable() {
		return _emoployeetable;
	}

	public emoployeetable getWrappedModel() {
		return _emoployeetable;
	}

	public void resetOriginalValues() {
		_emoployeetable.resetOriginalValues();
	}

	private emoployeetable _emoployeetable;
}