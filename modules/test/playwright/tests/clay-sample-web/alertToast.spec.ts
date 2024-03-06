/**
 * SPDX-FileCopyrightText: (c) 2000 Liferay, Inc. https://liferay.com
 * SPDX-License-Identifier: LGPL-2.1-or-later OR LicenseRef-Liferay-DXP-EULA-2.0.0-2023-06
 */

import {expect, mergeTests} from '@playwright/test';

import {apiHelpersTest} from '../../fixtures/apiHelpersTest';
import {loginTest} from '../../fixtures/loginTest';
import {widgetPagesTest} from '../../fixtures/widgetPagesTest';

export const test = mergeTests(

	apiHelpersTest,
	loginTest(),
	widgetPagesTest
);

test.describe('Clay Alert Toast', () => {
	test('LRQA-65932 Validate alert toast message does not disapear when mouse hovers over it.', async ({
	}) => {
		await test.step('Given clay sample portlet', async () => {

			// Add sample page
			// Add widget to page
			// column 1
		});

		await test.step('When a toast alert appears', async () => {
			// Click on fail button
		});

		await test.step('And user mouses over the alert', async () => {
			// Make mouse hover over the alert
		});

		await test.step('Then the alert does not disappear when hovered over', async () => {
			// Pause for 20 seconds?
			// Assert alert message is present
		});
	});
});
