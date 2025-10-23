/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstnew.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sarfreit <sarfreit@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/10/22 21:02:26 by sarfreit          #+#    #+#             */
/*   Updated: 2025/10/22 21:02:26 by sarfreit         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstnew(void *content)
{
	t_list	*node;

	node = (t_list *) malloc(sizeof(t_list));
	if (!node)
		return (NULL);
	node->content = content;
	node->next = NULL;
	return (node);
}
/*
#include <stdio.h>

int	main(void)
{
	t_list	*content = ft_lstnew("Hello");
	content->next = ft_lstnew("World");
	content->next->next = ft_lstnew("!");

	t_list	*temp = content;
	while (temp)
	{
		printf("%s ", (char *)temp->content);
		temp = temp->next;
	}
	free(content->next->next);
    free(content->next);
    free(content);

	return (0);
}
*/