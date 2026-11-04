import sys

sys.stdout.reconfigure(encoding="utf-8")

student_name_ru = "Леонтьев Максим Семенович"
student_name_en = "Leontev Maksim Semenovich"
student_number = 13
group_name = "М3О-103БВ-26"
language_name = "Python"

student_id = f"{group_name}/{student_number:02d}"
control_value = 304 * student_number

print(f"Hello to {control_value} from {student_name_en}, number {student_number}, group {group_name}!")
print(f"Привет, {control_value}! Это {student_name_ru}, номер {student_number}, группа {group_name}!")
print(f"Student ID: {student_id} | Language: {language_name} | Control: {control_value}")
print(f"Words in student_name_en: {len(student_name_en.split())}")
