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

package com.test.model.impl;

import com.liferay.portal.kernel.util.StringBundler;
import com.liferay.portal.kernel.util.StringPool;
import com.liferay.portal.model.CacheModel;

import com.test.model.emoployeetable;

import java.io.Serializable;

/**
 * The cache model class for representing emoployeetable in entity cache.
 *
 * @author RahulTyagi
 * @see emoployeetable
 * @generated
 */
public class emoployeetableCacheModel implements CacheModel<emoployeetable>,
	Serializable {
	@Override
	public String toString() {
		StringBundler sb = new StringBundler(7);

		sb.append("{fooId=");
		sb.append(fooId);
		sb.append(", name=");
		sb.append(name);
		sb.append(", empid=");
		sb.append(empid);
		sb.append("}");

		return sb.toString();
	}

	public emoployeetable toEntityModel() {
		emoployeetableImpl emoployeetableImpl = new emoployeetableImpl();

		emoployeetableImpl.setFooId(fooId);

		if (name == null) {
			emoployeetableImpl.setName(StringPool.BLANK);
		}
		else {
			emoployeetableImpl.setName(name);
		}

		emoployeetableImpl.setEmpid(empid);

		emoployeetableImpl.resetOriginalValues();

		return emoployeetableImpl;
	}

	public long fooId;
	public String name;
	public int empid;
}