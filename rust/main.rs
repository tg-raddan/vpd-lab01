fn main() {
    let student_name_ru = "Леонтьев Максим Семенович";
    let student_name_en = "Leontev Maksim Semenovich";
    let student_number: u32 = 13;
    let group_name = "М3О-103БВ-26";
    let language_name = "Rust";

    let student_id = format!("{}/{:02}", group_name, student_number);
    let control_value = 304 * student_number;

    println!(
        "Hello to {} from {}, number {}, group {}!",
        control_value, student_name_en, student_number, group_name
    );
    println!(
        "Привет, {}! Это {}, номер {}, группа {}!",
        control_value, student_name_ru, student_number, group_name
    );
    println!(
        "Student ID: {} | Language: {} | Control: {}",
        student_id, language_name, control_value
    );
    println!("student_id = {}", student_id);
}
