const studentNameRu = "Леонтьев Максим Семенович";
const studentNameEn = "Leontev Maksim Semenovich";
const studentNumber = 13;
const groupName = "М3О-103БВ-26";
const languageName = "JavaScript";

const studentId = `${groupName}/${String(studentNumber).padStart(2, "0")}`;
const controlValue = 304 * studentNumber;

console.log(`Hello to ${controlValue} from ${studentNameEn}, number ${studentNumber}, group ${groupName}!`);
console.log(`Привет, ${controlValue}! Это ${studentNameRu}, номер ${studentNumber}, группа ${groupName}!`);
console.log(`Student ID: ${studentId} | Language: ${languageName} | Control: ${controlValue}`);
console.log(`Length of student_name_en: ${studentNameEn.length}`);
