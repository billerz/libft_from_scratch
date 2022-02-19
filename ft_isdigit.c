/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isdigit.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ppetchda <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/02/19 22:17:29 by ppetchda          #+#    #+#             */
/*   Updated: 2022/02/19 22:19:33 by ppetchda         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int     ft_isdigit(int c)
{
	if (c >= '0' && c <= '9')
		return (1);
	return (0);
}