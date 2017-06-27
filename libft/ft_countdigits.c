/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_countdigits.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dspyrydo <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/12/18 15:48:43 by dspyrydo          #+#    #+#             */
/*   Updated: 2016/12/18 15:48:47 by dspyrydo         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_countdigits(long long int n)
{
	int count;
	int	negative;

	count = 0;
	negative = 0;
	if (n < 0)
		negative = 1;
	while (n != 0)
	{
		n = n / 10;
		count++;
	}
	if (count == 0)
		count++;
	return (count + negative);
}
