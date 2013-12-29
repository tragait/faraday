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

import com.liferay.portal.kernel.bean.AutoEscapeBeanHandler;
import com.liferay.portal.kernel.util.ProxyUtil;
import com.liferay.portal.kernel.util.StringBundler;
import com.liferay.portal.model.BaseModel;
import com.liferay.portal.model.impl.BaseModelImpl;

import com.test.service.ClpSerializer;

import java.io.Serializable;

import java.lang.reflect.Method;

import java.util.HashMap;
import java.util.Map;

/**
 * @author RahulTyagi
 */
public class emoployeetableClp extends BaseModelImpl<emoployeetable>
	implements emoployeetable {
	public emoployeetableClp() {
	}

	public Class<?> getModelClass() {
		return emoployeetable.class;
	}

	public String getModelClassName() {
		return emoployeetable.class.getName();
	}

	public int getPrimaryKey() {
		return _empid;
	}

	public void setPrimaryKey(int primaryKey) {
		setEmpid(primaryKey);
	}

	public Serializable getPrimaryKeyObj() {
		return new Integer(_empid);
	}

	public void setPrimaryKeyObj(Serializable primaryKeyObj) {
		setPrimaryKey(((Integer)primaryKeyObj).intValue());
	}

	@Override
	public Map<String, Object> getModelAttributes() {
		Map<String, Object> attributes = new HashMap<String, Object>();

		attributes.put("fooId", getFooId());
		attributes.put("name", getName());
		attributes.put("empid", getEmpid());

		return attributes;
	}

	@Override
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

	public long getFooId() {
		return _fooId;
	}

	public void setFooId(long fooId) {
		_fooId = fooId;

		if (_emoployeetableRemoteModel != null) {
			try {
				Class<?> clazz = _emoployeetableRemoteModel.getClass();

				Method method = clazz.getMethod("setFooId", long.class);

				method.invoke(_emoployeetableRemoteModel, fooId);
			}
			catch (Exception e) {
				throw new UnsupportedOperationException(e);
			}
		}
	}

	public String getName() {
		return _name;
	}

	public void setName(String name) {
		_name = name;

		if (_emoployeetableRemoteModel != null) {
			try {
				Class<?> clazz = _emoployeetableRemoteModel.getClass();

				Method method = clazz.getMethod("setName", String.class);

				method.invoke(_emoployeetableRemoteModel, name);
			}
			catch (Exception e) {
				throw new UnsupportedOperationException(e);
			}
		}
	}

	public int getEmpid() {
		return _empid;
	}

	public void setEmpid(int empid) {
		_empid = empid;

		if (_emoployeetableRemoteModel != null) {
			try {
				Class<?> clazz = _emoployeetableRemoteModel.getClass();

				Method method = clazz.getMethod("setEmpid", int.class);

				method.invoke(_emoployeetableRemoteModel, empid);
			}
			catch (Exception e) {
				throw new UnsupportedOperationException(e);
			}
		}
	}

	public BaseModel<?> getemoployeetableRemoteModel() {
		return _emoployeetableRemoteModel;
	}

	public void setemoployeetableRemoteModel(
		BaseModel<?> emoployeetableRemoteModel) {
		_emoployeetableRemoteModel = emoployeetableRemoteModel;
	}

	public Object invokeOnRemoteModel(String methodName,
		Class<?>[] parameterTypes, Object[] parameterValues)
		throws Exception {
		Object[] remoteParameterValues = new Object[parameterValues.length];

		for (int i = 0; i < parameterValues.length; i++) {
			if (parameterValues[i] != null) {
				remoteParameterValues[i] = ClpSerializer.translateInput(parameterValues[i]);
			}
		}

		Class<?> remoteModelClass = _emoployeetableRemoteModel.getClass();

		ClassLoader remoteModelClassLoader = remoteModelClass.getClassLoader();

		Class<?>[] remoteParameterTypes = new Class[parameterTypes.length];

		for (int i = 0; i < parameterTypes.length; i++) {
			if (parameterTypes[i].isPrimitive()) {
				remoteParameterTypes[i] = parameterTypes[i];
			}
			else {
				String parameterTypeName = parameterTypes[i].getName();

				remoteParameterTypes[i] = remoteModelClassLoader.loadClass(parameterTypeName);
			}
		}

		Method method = remoteModelClass.getMethod(methodName,
				remoteParameterTypes);

		Object returnValue = method.invoke(_emoployeetableRemoteModel,
				remoteParameterValues);

		if (returnValue != null) {
			returnValue = ClpSerializer.translateOutput(returnValue);
		}

		return returnValue;
	}

	@Override
	public emoployeetable toEscapedModel() {
		return (emoployeetable)ProxyUtil.newProxyInstance(emoployeetable.class.getClassLoader(),
			new Class[] { emoployeetable.class },
			new AutoEscapeBeanHandler(this));
	}

	public emoployeetable toUnescapedModel() {
		return this;
	}

	@Override
	public Object clone() {
		emoployeetableClp clone = new emoployeetableClp();

		clone.setFooId(getFooId());
		clone.setName(getName());
		clone.setEmpid(getEmpid());

		return clone;
	}

	public int compareTo(emoployeetable emoployeetable) {
		int primaryKey = emoployeetable.getPrimaryKey();

		if (getPrimaryKey() < primaryKey) {
			return -1;
		}
		else if (getPrimaryKey() > primaryKey) {
			return 1;
		}
		else {
			return 0;
		}
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}

		if (!(obj instanceof emoployeetableClp)) {
			return false;
		}

		emoployeetableClp emoployeetable = (emoployeetableClp)obj;

		int primaryKey = emoployeetable.getPrimaryKey();

		if (getPrimaryKey() == primaryKey) {
			return true;
		}
		else {
			return false;
		}
	}

	@Override
	public int hashCode() {
		return getPrimaryKey();
	}

	@Override
	public String toString() {
		StringBundler sb = new StringBundler(7);

		sb.append("{fooId=");
		sb.append(getFooId());
		sb.append(", name=");
		sb.append(getName());
		sb.append(", empid=");
		sb.append(getEmpid());
		sb.append("}");

		return sb.toString();
	}

	public String toXmlString() {
		StringBundler sb = new StringBundler(13);

		sb.append("<model><model-name>");
		sb.append("com.test.model.emoployeetable");
		sb.append("</model-name>");

		sb.append(
			"<column><column-name>fooId</column-name><column-value><![CDATA[");
		sb.append(getFooId());
		sb.append("]]></column-value></column>");
		sb.append(
			"<column><column-name>name</column-name><column-value><![CDATA[");
		sb.append(getName());
		sb.append("]]></column-value></column>");
		sb.append(
			"<column><column-name>empid</column-name><column-value><![CDATA[");
		sb.append(getEmpid());
		sb.append("]]></column-value></column>");

		sb.append("</model>");

		return sb.toString();
	}

	private long _fooId;
	private String _name;
	private int _empid;
	private BaseModel<?> _emoployeetableRemoteModel;
}