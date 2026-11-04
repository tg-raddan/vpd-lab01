using System;
using System.Text;

record Student(string NameRu, string NameEn, int Number, string Group, string Language);

class Program
{
    static void Main()
    {
        Console.OutputEncoding = Encoding.UTF8;

        var student = new Student(
            "Леонтьев Максим Семенович",
            "Leontev Maksim Semenovich",
            13,
            "М3О-103БВ-26",
            "C#"
        );

        string studentId = $"{student.Group}/{student.Number:D2}";
        int controlValue = 304 * student.Number;

        Console.WriteLine($"Hello to {controlValue} from {student.NameEn}, number {student.Number}, group {student.Group}!");
        Console.WriteLine($"Привет, {controlValue}! Это {student.NameRu}, номер {student.Number}, группа {student.Group}!");
        Console.WriteLine($"Student ID: {studentId} | Language: {student.Language} | Control: {controlValue}");
    }
}
