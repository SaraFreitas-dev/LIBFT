/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstdelone_bonus.c                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sarfreit <sarfreit@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/10/23 20:37:33 by sarfreit          #+#    #+#             */
/*   Updated: 2025/10/23 21:19:09 by sarfreit         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_lstdelone(t_list *lst, void (*del)(void*))
{
	if (!lst || !del)
		return ;
	del(lst->content);
	free(lst);
}

void	del(void *content)
{
	free(content);
}

#include <stdio.h>

int	main(void)
{
	t_list *list = NULL;
    t_list *node1;
    t_list *node2;

    node1 = ft_lstnew("Hello");
    node2 = ft_lstnew("World");
	
	ft_lstadd_back(&list, node1);
    ft_lstadd_back(&list, node2);
	
	printf("Before: %d\n",ft_lstsize(list));
	ft_lstdelone(list, del);
	printf("After: %d\n", ft_lstsize(list));
	
	return (0);
}