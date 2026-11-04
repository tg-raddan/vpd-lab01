#!/usr/bin/env bash
set -euo pipefail

student_name_ru="Леонтьев Максим Семенович"
student_name_en="Leontev Maksim Semenovich"
student_number=13
group_name="М3О-103БВ-26"
language_name="Bash"

printf -v student_id "%s/%02d" "$group_name" "$student_number"
control_value=$((304 * student_number))

printf 'Hello to %d from %s, number %d, group %s!\n' \
    "$control_value" "$student_name_en" "$student_number" "$group_name"
printf 'Привет, %d! Это %s, номер %d, группа %s!\n' \
    "$control_value" "$student_name_ru" "$student_number" "$group_name"
printf 'Student ID: %s | Language: %s | Control: %d\n' \
    "$student_id" "$language_name" "$control_value"

word_count=$(printf '%s\n' "$student_name_en" | wc -w | tr -d ' ')
char_count=$(printf '%s' "$student_name_en" | wc -c | tr -d ' ')
printf 'Words in student_name_en: %s, characters: %s\n' "$word_count" "$char_count"
