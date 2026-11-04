#include <stdio.h>
#include <string.h>

#ifdef _WIN32
#include <windows.h>
#endif

int main(void) {
#ifdef _WIN32
    SetConsoleCP(CP_UTF8);
    SetConsoleOutputCP(CP_UTF8);
#endif

    const char *student_name_ru = "Леонтьев Максим Семенович";
    const char *student_name_en = "Leontev Maksim Semenovich";
    const int student_number = 13;
    const char *group_name = "М3О-103БВ-26";
    const char *language_name = "C";

    char student_id[128];
    snprintf(student_id, sizeof(student_id), "%s/%02d", group_name, student_number);
    const int control_value = 304 * student_number;

    printf("Hello to %d from %s, number %d, group %s!\n",
           control_value, student_name_en, student_number, group_name);
    printf("Привет, %d! Это %s, номер %d, группа %s!\n",
           control_value, student_name_ru, student_number, group_name);
    printf("Student ID: %s | Language: %s | Control: %d\n",
           student_id, language_name, control_value);

    return 0;
}
