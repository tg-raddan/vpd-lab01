interface Student {
  nameRu: string;
  nameEn: string;
  number: number;
  group: string;
  language: string;
}

const student: Student = {
  nameRu: "Леонтьев Максим Семенович",
  nameEn: "Leontev Maksim Semenovich",
  number: 13,
  group: "М3О-103БВ-26",
  language: "TypeScript",
};

const studentId: string = `${student.group}/${student.number.toString().padStart(2, "0")}`;
const controlValue: number = 304 * student.number;

console.log(`Hello to ${controlValue} from ${student.nameEn}, number ${student.number}, group ${student.group}!`);
console.log(`Привет, ${controlValue}! Это ${student.nameRu}, номер ${student.number}, группа ${student.group}!`);
console.log(`Student ID: ${studentId} | Language: ${student.language} | Control: ${controlValue}`);
