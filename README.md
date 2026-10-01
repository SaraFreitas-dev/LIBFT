📚 Libft

42 School — Common Core Project

Libft is the first project of the 42 School Common Core.

The goal of this project is to create a personal C library by reimplementing a set of functions from the standard C library, as well as developing additional utility functions.

The project focuses on understanding how common C functions work internally, while strengthening knowledge of memory management, strings, pointers, file descriptors and linked lists.

---

🛠️ Technologies

- Language: C
- Compiler: GCC
- Build system: Makefile
- Library: "libft.a"

The project is compiled with:

-Wall -Wextra -Werror

---

📂 Project Structure

```text
LIBFT/
│
├── Makefile
├── libft.h
│
├── Character & String Functions
├── Memory Functions
├── Conversion Functions
├── Output Functions
├── Additional Functions
│
└── Bonus
    └── Linked List Functions
```

---

🔤 Mandatory Functions

Character Checks

Function| Description
"ft_isalpha"| Checks whether a character is alphabetic
"ft_isdigit"| Checks whether a character is a digit
"ft_isalnum"| Checks whether a character is alphanumeric
"ft_isascii"| Checks whether a value belongs to the ASCII set
"ft_isprint"| Checks whether a character is printable

String Functions

```text
Function| Description
"ft_strlen"| Returns the length of a string
"ft_strchr"| Locates the first occurrence of a character
"ft_strrchr"| Locates the last occurrence of a character
"ft_strncmp"| Compares two strings up to "n" characters
"ft_strnstr"| Searches for a string inside another string
"ft_strlcpy"| Copies a string with size limitation
"ft_strlcat"| Concatenates strings with size limitation
```

Memory Functions

```text
Function| Description
"ft_memset"| Fills a memory area with a byte value
"ft_bzero"| Sets a memory area to zero
"ft_memcpy"| Copies a memory area
"ft_memmove"| Copies memory while handling overlapping areas
"ft_memchr"| Searches for a byte in memory
"ft_memcmp"| Compares two memory areas
"ft_calloc"| Allocates and initializes memory
```

Conversion Functions

```text
Function| Description
"ft_atoi"| Converts a string to an integer
"ft_toupper"| Converts a lowercase character to uppercase
"ft_tolower"| Converts an uppercase character to lowercase
```

Other

```text
Function| Description
"ft_strdup"| Creates a dynamically allocated copy of a string
```

---

🧩 Additional Functions

The second part of Libft focuses on creating more complex string manipulation and output functions.

```text
Function| Description
"ft_substr"| Creates a substring
"ft_strjoin"| Joins two strings
"ft_strtrim"| Removes characters from the beginning and end of a string
"ft_split"| Splits a string using a delimiter
"ft_itoa"| Converts an integer to a string
"ft_strmapi"| Applies a function to each character
"ft_striteri"| Applies a function to each character in place
"ft_putchar_fd"| Writes a character to a file descriptor
"ft_putstr_fd"| Writes a string to a file descriptor
"ft_putendl_fd"| Writes a string followed by a newline
"ft_putnbr_fd"| Writes an integer to a file descriptor
```

---

🔗 Bonus — Linked Lists

The bonus section introduces singly linked lists through the "t_list" structure.

```text
typedef struct s_list
{
    void            *content;
    struct s_list   *next;
}   t_list;
```

Linked List Functions

```text
Function| Description
"ft_lstnew"| Creates a new list node
"ft_lstadd_front"| Adds a node to the beginning
"ft_lstsize"| Returns the number of nodes
"ft_lstlast"| Returns the last node
"ft_lstadd_back"| Adds a node to the end
"ft_lstdelone"| Deletes one node
"ft_lstclear"| Deletes an entire list
"ft_lstiter"| Iterates through a list
"ft_lstmap"| Creates a new list by applying a function
```

---

➕ Extra Functions

In addition to the required Libft functions, this repository also contains:

```text
Function| Description
"ft_strcmp"| Compares two strings
"ft_atol"| Converts a string to a "long"
```

These functions are included as additional utilities for future projects.

---

⚙️ Compilation

Clone the repository:

```bash
git clone https://github.com/SaraFreitas-dev/LIBFT.git
cd LIBFT
```

Compile the mandatory library

```bash
make
```

This creates:

```bash
libft.a
```

Compile with bonus functions

```bash
make bonus
```

Remove object files

```bash
make clean
```

Remove object files and the library

```bash
make fclean
```

Recompile everything

```bash
make re
```
---

📦 Using Libft in a Project

Once "libft.a" has been created, it can be compiled together with another C project.

For example:

```bash
gcc main.c -L. -lft -I .

And include the library in the source file:

#include "libft.h"
```

---



📚 42 School

This project was developed as part of the 42 School Common Core curriculum.

Project: Libft
Language: C
School: 42 Porto
milestone: 0
