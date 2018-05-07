#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: msymkany <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/07 19:53:54 by msymkany          #+#    #+#              #
#    Updated: 2018/05/07 19:54:03 by msymkany         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME := avm

CXX := @clang++
FL := -Wall -Wextra -Werror

SOURCE := main.cpp \
          Field.cpp \
          UserShip.cpp \
          FlyingEssence.cpp \
          Bullet.cpp \
          EnemyShip.cpp \
          Star.cpp \

OBJECTS := $(SOURCE:.cpp=.o)

all: $(NAME)

$(NAME): $(OBJECTS)
		@$(CXX) $(FL) $(OBJECTS) -o $(NAME) -lncurses
		@echo "The project is ready"

%.o: %.cpp
	$(CXX) $(FL) -c $< -o $@

.PHONY: clean fclean re

clean:
	@rm -f $(OBJECTS)
	@rm -f *~ *#
	@echo "It's clean"

fclean: clean
	@rm -f $(NAME)

re: fclean all