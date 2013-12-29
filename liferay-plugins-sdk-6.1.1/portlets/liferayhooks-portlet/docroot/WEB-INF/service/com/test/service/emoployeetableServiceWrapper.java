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

package com.test.service;

import com.liferay.portal.service.ServiceWrapper;

/**
 * <p>
 * This class is a wrapper for {@link emoployeetableService}.
 * </p>
 *
 * @author    RahulTyagi
 * @see       emoployeetableService
 * @generated
 */
public class emoployeetableServiceWrapper implements emoployeetableService,
	ServiceWrapper<emoployeetableService> {
	public emoployeetableServiceWrapper(
		emoployeetableService emoployeetableService) {
		_emoployeetableService = emoployeetableService;
	}

	/**
	* Returns the Spring bean ID for this bean.
	*
	* @return the Spring bean ID for this bean
	*/
	public java.lang.String getBeanIdentifier() {
		return _emoployeetableService.getBeanIdentifier();
	}

	/**
	* Sets the Spring bean ID for this bean.
	*
	* @param beanIdentifier the Spring bean ID for this bean
	*/
	public void setBeanIdentifier(java.lang.String beanIdentifier) {
		_emoployeetableService.setBeanIdentifier(beanIdentifier);
	}

	public java.lang.Object invokeMethod(java.lang.String name,
		java.lang.String[] parameterTypes, java.lang.Object[] arguments)
		throws java.lang.Throwable {
		return _emoployeetableService.invokeMethod(name, parameterTypes,
			arguments);
	}

	/**
	 * @deprecated Renamed to {@link #getWrappedService}
	 */
	public emoployeetableService getWrappedemoployeetableService() {
		return _emoployeetableService;
	}

	/**
	 * @deprecated Renamed to {@link #setWrappedService}
	 */
	public void setWrappedemoployeetableService(
		emoployeetableService emoployeetableService) {
		_emoployeetableService = emoployeetableService;
	}

	public emoployeetableService getWrappedService() {
		return _emoployeetableService;
	}

	public void setWrappedService(emoployeetableService emoployeetableService) {
		_emoployeetableService = emoployeetableService;
	}

	private emoployeetableService _emoployeetableService;
}