package utils;

import java.awt.Color;
import java.lang.reflect.Field;
import java.util.Map;
import java.util.WeakHashMap;

/**
 * A utlity class to create java.awt.Color instances.
 * <p/>
 * Copyright (C) 2005 by Jon  
 * <p/>
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License. Y
 * ou may obtain a copy of the License at
 * <p/>
 * http://www.apache.org/licenses/LICENSE-2.0
 * <p/>
 * Unless required by applicable law or agreed to in writing, software d
 * istributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
public class ColorUtil
{
	private static final Map<String, Color> colors = new WeakHashMap<String, Color>();

	private ColorUtil()
	{
	}

	/**
	 * Get a color from the name.  The name can either be the name
	 * of one of the standard color attributes of the Color object,
	 * or it can be a 24 bit html color description (with our without
	 * the leading )
	 *
	 * @param aColor The name of the color to get
	 *
	 * @return java.awt.Color the color object.
	 *
	 * @throws RuntimeException Thrown when the color cannot be found.
	 */
	
	public static Color getColor(String aColor)
	{
		String vKey = aColor;
		Color vColor = (Color) colors.get(vKey);
		if (vColor == null)
		{
			try
			{
				Field vField = Color.class.getField(aColor);
				vColor = (Color) vField.get(null);
			}
			catch (Throwable e)
			{
				vColor = parseHtmlColor(aColor);
			}

			colors.put(vKey, vColor);
		}

		return vColor;
	}

	/**
	 * Parse an html color and return a java.awt.Color.
	 *
	 * @param aColor The HTML color string
	 *
	 * @return java.awt.Color representation of the HTML color
	 *
	 * @throws RuntimeException Thrown when the HTML color is not in a parsable hexadecimal format.
	 */
	public static Color parseHtmlColor(String aColor)
	{
		if (aColor.startsWith("#"))
		{
			aColor = aColor.substring(1);
		}

		aColor = aColor.toLowerCase();

		if (aColor.length() > 6)
		{
			throw new RuntimeException("[" + aColor + "] is not a 24 bit representation of the color");
		}

		Color vColor = new Color(Integer.parseInt(aColor, 16));

		return vColor;
	}
}
