open System
open System.Text

type Student = {
    NameRu: string
    NameEn: string
    Number: int
    Group: string
    Language: string
}

[<EntryPoint>]
let main _ =
    Console.OutputEncoding <- Encoding.UTF8

    let student = {
        NameRu = "Леонтьев Максим Семенович"
        NameEn = "Leontev Maksim Semenovich"
        Number = 13
        Group = "М3О-103БВ-26"
        Language = "F#"
    }

    let studentId = sprintf "%s/%02d" student.Group student.Number
    let controlValue = 304 * student.Number

    printfn "Hello to %d from %s, number %d, group %s!" controlValue student.NameEn student.Number student.Group
    printfn "Привет, %d! Это %s, номер %d, группа %s!" controlValue student.NameRu student.Number student.Group
    printfn "Student ID: %s | Language: %s | Control: %d" studentId student.Language controlValue

    let wordLengths =
        student.NameEn.Split(' ', StringSplitOptions.RemoveEmptyEntries)
        |> Array.map (fun word -> word.Length)

    printfn "Word lengths in student_name_en: %s (sum = %d, count = %d)"
        (String.Join(", ", wordLengths)) (Array.sum wordLengths) wordLengths.Length

    0
