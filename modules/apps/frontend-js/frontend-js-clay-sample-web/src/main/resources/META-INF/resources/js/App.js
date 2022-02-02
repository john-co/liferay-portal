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
import React from 'react';
import ClayDatePicker from '@clayui/date-picker';

import '../css/main.scss';

export default function App() {
	const [value, setValue] = React.useState(null);

	return (
		<div>
			<ClayDatePicker
				dateFormat="MM/dd/yyyy"
				time
				use12Hours
				onValueChange={setValue}
				placeholder="__/__/____ __:__ _"
				spritemap={spritemap}
				value={value}
				years={{
					end: 2024,
					start: 2008
				}}
			/>
		</div>
	);
}
