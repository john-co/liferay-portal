/**
 * SPDX-FileCopyrightText: (c) 2024 Liferay, Inc. https://liferay.com
 * SPDX-License-Identifier: LGPL-2.1-or-later OR LicenseRef-Liferay-DXP-EULA-2.0.0-2023-06
 */

package com.liferay.layout.utility.page.kernel.provider.util;

import com.liferay.layout.utility.page.kernel.provider.LayoutUtilityPageEntryLayoutProvider;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.model.Layout;
import com.liferay.portal.kernel.util.ServiceProxyFactory;

/**
 * @author Lourdes Fernández Besada
 */
public class LayoutUtilityPageEntryLayoutProviderUtil {

	public static Layout getDefaultLayoutUtilityPageEntryLayout(
			long groupId, String type)
		throws PortalException {

		return _layoutUtilityPageEntryLayoutProvider.
			getDefaultLayoutUtilityPageEntryLayout(groupId, type);
	}

	private static volatile LayoutUtilityPageEntryLayoutProvider
		_layoutUtilityPageEntryLayoutProvider =
			ServiceProxyFactory.newServiceTrackedInstance(
				LayoutUtilityPageEntryLayoutProvider.class,
				LayoutUtilityPageEntryLayoutProviderUtil.class,
				"_layoutUtilityPageEntryLayoutProvider", true);

}