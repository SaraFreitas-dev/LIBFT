/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sarfreit <sarfreit@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/10/22 10:58:45 by sarfreit          #+#    #+#             */
/*   Updated: 2025/10/22 10:58:45 by sarfreit         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int	num_counter(long int n)
{
	int	counter;

	counter = 0;
	if (n < 0)
	{
		n = -n;
		counter++;
	}
	if (n == 0)
		counter++;
	while (n != 0)
	{
		n /= 10;
		counter++;
	}
	return (counter);
}

char	*ft_itoa(int n)
{
	int			i;
	long int	nbr;
	char		*str;

	nbr = n;
	str = malloc(sizeof(char) * (num_counter(nbr) + 1));
	if (!str)
		return (NULL);
	i = num_counter(nbr) - 1;
	if (nbr < 0)
	{
		str[0] = '-';
		nbr = -nbr;
	}
	if (nbr == 0)
		str[i] = '0';
	while (nbr != 0)
	{
		str[i] = (nbr % 10) + '0';
		nbr = nbr / 10;
		i--;
	}
	str[num_counter(nbr)] = '\0';
	return (str);
}
/*
#include <stdio.h>

int	main(void)
{
	// num of chars
	printf("%d\n", num_counter(123));

	printf("%s\n", ft_itoa(0));

	return (0);
}
*/