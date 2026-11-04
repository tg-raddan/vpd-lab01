import java.io.PrintStream;
import java.nio.charset.StandardCharsets;

public class Main {
    record Student(String nameRu, String nameEn, int number, String group, String language) {
    }

    public static void main(String[] args) {
        System.setOut(new PrintStream(System.out, true, StandardCharsets.UTF_8));

        Student student = new Student(
                "Леонтьев Максим Семенович",
                "Leontev Maksim Semenovich",
                13,
                "М3О-103БВ-26",
                "Java"
        );

        String studentId = String.format("%s/%02d", student.group(), student.number());
        int controlValue = 304 * student.number();

        System.out.printf("Hello to %d from %s, number %d, group %s!%n",
                controlValue, student.nameEn(), student.number(), student.group());
        System.out.printf("Привет, %d! Это %s, номер %d, группа %s!%n",
                controlValue, student.nameRu(), student.number(), student.group());
        System.out.printf("Student ID: %s | Language: %s | Control: %d%n",
                studentId, student.language(), controlValue);
    }
}
