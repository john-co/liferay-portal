/**
 * SPDX-FileCopyrightText: (c) 2000 Liferay, Inc. https://liferay.com
 * SPDX-License-Identifier: LGPL-2.1-or-later OR LicenseRef-Liferay-DXP-EULA-2.0.0-2023-06
 */

import {expect, mergeTests} from '@playwright/test';

import {loginTest} from '../../fixtures/loginTest';

export const test = mergeTests(
	loginTest()
);

test.describe('Clay Alert Toast', () => {
	test('LRQA-65932 Validate alert toast message does not disapear when mouse hovers over it.', async({
		page,
	}) => {
		await test.step('Given clay sample portlet', async () => {
			await page.goto('/');
			await page.getByRole('link', { name: 'Edit' }).click();
			await page.getByLabel('Search Fragments and Widgets').click();
			await page.getByLabel('Search Fragments and Widgets').fill('clay sample');
			await page.getByRole('menuitem', { name: 'Clay Sample Add Clay Sample Mark Clay Sample as Favorite' }).click();
			await page.keyboard.press('Tab');
			await expect(page.getByLabel('Add Clay Sample')).toBeFocused();
			await page.keyboard.press('Enter');
			await page.keyboard.press('Enter');
			await expect(page.locator('header').filter({ hasText: 'Clay Sample' })).toBeVisible();
			await page.getByLabel('Publish').click();
		});

		await test.step('When a toast alert appears', async () => {
			// Click on fail button
			await page.getByRole('button', { name: 'Fail Submit' }).click();
		});

		await test.step('And user mouses over the alert', async () => {
			// Make mouse hover over the alert
  			await page.getByText('Error:An unexpected error occurred.').hover();
		});

		await test.step('Then the alert does not disappear when hovered over', async () => {
			// Pause for 20 seconds
			await page.waitForTimeout(20000);
			// Assert alert message is present
			await expect(page.getByText('Error:An unexpected error occurred.')).toBeVisible();
		});
	});
});
