package main

import "fmt"

func main() {
	studentNameRu := "Леонтьев Максим Семенович"
	studentNameEn := "Leontev Maksim Semenovich"
	studentNumber := 13
	groupName := "М3О-103БВ-26"
	languageName := "Go"

	studentID := fmt.Sprintf("%s/%02d", groupName, studentNumber)
	controlValue := 304 * studentNumber

	fmt.Printf("Hello to %d from %s, number %d, group %s!\n", controlValue, studentNameEn, studentNumber, groupName)
	fmt.Printf("Привет, %d! Это %s, номер %d, группа %s!\n", controlValue, studentNameRu, studentNumber, groupName)
	fmt.Printf("Student ID: %s | Language: %s | Control: %d\n", studentID, languageName, controlValue)
}
