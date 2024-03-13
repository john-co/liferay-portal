/**
 * SPDX-FileCopyrightText: (c) 2000 Liferay, Inc. https://liferay.com
 * SPDX-License-Identifier: LGPL-2.1-or-later OR LicenseRef-Liferay-DXP-EULA-2.0.0-2023-06
 */

import {expect, mergeTests} from '@playwright/test';

import {apiHelpersTest} from '../../fixtures/apiHelpersTest';
import {loginTest} from '../../fixtures/loginTest';
import {widgetPagesTest} from '../../fixtures/widgetPagesTest';
import {isolatedSiteTest} from '../../fixtures/isolatedSiteTest';
import getRandomString from '../../utils/getRandomString';
import {pageEditorPagesTest} from '../layout-content-page-editor-web/fixtures/pageEditorPagesTest';

// export const test = mergeTests(
// 	apiHelpersTest,
// 	applicationsMenuPageTest,
// 	featureFlagsTest({
// 		'LPS-178052': true,
// 	}),
// 	isolatedSiteTest,
// 	loginTest(),
// 	pageEditorPagesTest
// );


export const test = mergeTests(
	apiHelpersTest,
	isolatedSiteTest,
	loginTest(),
	pageEditorPagesTest,
	widgetPagesTest
);

test.describe('Clay Alert Toast', () => {
	test('LRQA-65932 Validate alert toast message does not disapear when mouse hovers over it.', async({
		apiHelpers,
		page,
		site,
		pageEditorPage
	}) => {
		await test.step('Given clay sample portlet', async () => {
			await page.goto('/');

			// Create a page with a Heading fragment

			const headingId = getRandomString();

			const layout = await apiHelpers.headlessDelivery.createSitePage(
				site.id,
				getRandomString()
			);

			// Add sample page
			// Add widget to page
			// column 1

			// Go to edit mode of page

			await pageEditorPage.goToEditMode(site, layout);

			// Assert undo button is disabled

			await expect(pageEditorPage.undoButton).toBeDisabled();

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
