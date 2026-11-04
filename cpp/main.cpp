#include <iomanip>
#include <iostream>
#include <sstream>
#include <string>

#ifdef _WIN32
#include <windows.h>
#endif

int main() {
#ifdef _WIN32
    SetConsoleCP(CP_UTF8);
    SetConsoleOutputCP(CP_UTF8);
#endif

    const std::string student_name_ru = "Леонтьев Максим Семенович";
    const std::string student_name_en = "Leontev Maksim Semenovich";
    const int student_number = 13;
    const std::string group_name = "М3О-103БВ-26";
    const std::string language_name = "C++";

    std::ostringstream id_stream;
    id_stream << group_name << "/" << std::setw(2) << std::setfill('0') << student_number;
    const std::string student_id = id_stream.str();
    const int control_value = 304 * student_number;

    std::cout << "Hello to " << control_value << " from " << student_name_en
              << ", number " << student_number << ", group " << group_name << "!\n";
    std::cout << "Привет, " << control_value << "! Это " << student_name_ru
              << ", номер " << student_number << ", группа " << group_name << "!\n";
    std::cout << "Student ID: " << student_id << " | Language: " << language_name
              << " | Control: " << control_value << "\n";

    return 0;
}
