/**
 * Copyright (c) 2000-present Liferay, Inc. All rights reserved.
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

import ClayAlert from '@clayui/alert';
import ClayButton from '@clayui/button';
import {openToast} from 'frontend-js-web';
import React from 'react';

import '../css/main.scss';

export default () => {
	const onClickSuccess = () => {
		openToast({
			message: Liferay.Language.get(
				'your-request-completed-successfully'
			),
			title: Liferay.Language.get('success'),
			type: 'success',
		});
	};

	const onClickFail = () => {
		openToast({
			message: Liferay.Language.get('an-unexpected-error-occurred'),
			title: Liferay.Language.get('error'),
			type: 'danger',
		});
	};

	return (
		<div>
			<h3>REACT EMBEDDED</h3>

			<ClayAlert displayType="danger" title="Error">
				This is an error message.
			</ClayAlert>

			<ClayAlert displayType="success" title="Success">
				This is a success message.
			</ClayAlert>

			<ClayAlert displayType="info" title="Info">
				This is an info message.
			</ClayAlert>

			<ClayAlert displayType="warning" title="Warning">
				This is a warning message.
			</ClayAlert>

			<h3>REACT STRIPE</h3>

			<ClayAlert displayType="danger" title="Error" variant="stripe">
				This is an error message.
			</ClayAlert>

			<ClayAlert displayType="success" title="Success" variant="stripe">
				This is a success message.
			</ClayAlert>

			<ClayAlert displayType="info" title="Info" variant="stripe">
				This is an info message.
			</ClayAlert>

			<ClayAlert displayType="warning" title="Warning" variant="stripe">
				This is a warning message.
			</ClayAlert>
		</div>
	);
};
