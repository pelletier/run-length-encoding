#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#define BUFFER_SIZE 1024 * 2

void write_integer_base10(unsigned int number) {
    char repr[10];
    char* current = repr + 9;
    for (; number > 0; --current) {
        *current = number % 10 + '0';
        number /= 10;
    }
    write(STDOUT_FILENO, current + 1, repr + 9 - current);
}

int main() {
    char current = 0;
    unsigned int count = 0;
    char buffer[BUFFER_SIZE + 1];
    buffer[BUFFER_SIZE] = 0;
    char* ptr = buffer;
    size_t last_read = 0;

    last_read = fread(buffer, 1, BUFFER_SIZE, stdin);
    *(buffer + last_read) = 0;

    while (1) {
        char c = *ptr;
        if (c == 0) {
            if (last_read < BUFFER_SIZE) {
                break;
            }
            last_read = fread(buffer, 1, BUFFER_SIZE, stdin);
            *(buffer + last_read) = 0;
            ptr = buffer;
            continue;
        }
        if (current != c) {
            if (count > 0) {
                write(STDOUT_FILENO, &current, 1);
                write_integer_base10(count);
            }
            current = c;
            count = 1;
        } else {
            ++count;
        }
        ++ptr;
    }

    write(STDOUT_FILENO, &current, 1);
    write_integer_base10(count);

    buffer[0] = '\n';
    write(STDOUT_FILENO, &buffer, 1);
}
