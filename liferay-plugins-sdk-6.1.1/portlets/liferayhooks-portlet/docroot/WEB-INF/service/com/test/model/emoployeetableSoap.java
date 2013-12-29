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

import java.io.Serializable;

import java.util.ArrayList;
import java.util.List;

/**
 * This class is used by SOAP remote services, specifically {@link com.test.service.http.emoployeetableServiceSoap}.
 *
 * @author    RahulTyagi
 * @see       com.test.service.http.emoployeetableServiceSoap
 * @generated
 */
public class emoployeetableSoap implements Serializable {
	public static emoployeetableSoap toSoapModel(emoployeetable model) {
		emoployeetableSoap soapModel = new emoployeetableSoap();

		soapModel.setFooId(model.getFooId());
		soapModel.setName(model.getName());
		soapModel.setEmpid(model.getEmpid());

		return soapModel;
	}

	public static emoployeetableSoap[] toSoapModels(emoployeetable[] models) {
		emoployeetableSoap[] soapModels = new emoployeetableSoap[models.length];

		for (int i = 0; i < models.length; i++) {
			soapModels[i] = toSoapModel(models[i]);
		}

		return soapModels;
	}

	public static emoployeetableSoap[][] toSoapModels(emoployeetable[][] models) {
		emoployeetableSoap[][] soapModels = null;

		if (models.length > 0) {
			soapModels = new emoployeetableSoap[models.length][models[0].length];
		}
		else {
			soapModels = new emoployeetableSoap[0][0];
		}

		for (int i = 0; i < models.length; i++) {
			soapModels[i] = toSoapModels(models[i]);
		}

		return soapModels;
	}

	public static emoployeetableSoap[] toSoapModels(List<emoployeetable> models) {
		List<emoployeetableSoap> soapModels = new ArrayList<emoployeetableSoap>(models.size());

		for (emoployeetable model : models) {
			soapModels.add(toSoapModel(model));
		}

		return soapModels.toArray(new emoployeetableSoap[soapModels.size()]);
	}

	public emoployeetableSoap() {
	}

	public int getPrimaryKey() {
		return _empid;
	}

	public void setPrimaryKey(int pk) {
		setEmpid(pk);
	}

	public long getFooId() {
		return _fooId;
	}

	public void setFooId(long fooId) {
		_fooId = fooId;
	}

	public String getName() {
		return _name;
	}

	public void setName(String name) {
		_name = name;
	}

	public int getEmpid() {
		return _empid;
	}

	public void setEmpid(int empid) {
		_empid = empid;
	}

	private long _fooId;
	private String _name;
	private int _empid;
}