# Введение в профессиональную деятельность — лабораторная работа № 1

**Тема:** Языки программирования, терминал и Git

**Студент:** Леонтьев Максим Семенович  
**Группа:** М3О-103БВ-26  
**Номер в списке:** 13  
**Статус:** 1.0.0

## Цель проекта

Получить практическое представление о различиях между языками программирования и их инструментальными экосистемами, научиться собирать и запускать программы из терминала, а также организовать сопровождение проекта средствами Git.

## Используемые языки

- C
- C++
- Python
- JavaScript
- TypeScript
- Java
- C#
- F#
- Go
- Rust
- Bash
- Prolog
- Assembler (x86-64)

## Рабочее окружение

- ОС: Windows 11 Pro 10.0.26300, архитектура x86-64.
- Редактор: Visual Studio Code 1.143.1.
- Терминал: встроенный терминал VS Code / PowerShell 5.1; для Bash используется Git Bash 5.3.15.
- Все исходные файлы сохранены в UTF-8.

## Инструменты и команды

| Язык | Версия инструмента | Команда сборки/запуска |
|---|---|---|
| C | GCC 16.2.0 (MinGW-w64) | `gcc -Wall -Wextra -pedantic main.c -o main.exe && ./main.exe` |
| C++ | G++ 16.2.0 (MinGW-w64) | `g++ -Wall -Wextra -pedantic main.cpp -o main.exe && ./main.exe` |
| Python | Python 3.13.17 | `python main.py` |
| JavaScript | Node.js 24.22.1 | `node main.js` |
| TypeScript | TypeScript 7.0.2 | `tsc -p . && node dist/main.js` |
| Java | Temurin JDK 21.0.13 | `javac -encoding UTF-8 Main.java && java Main` |
| C# | .NET SDK 8.0.427 | `dotnet run --project csharp` |
| F# | .NET SDK 8.0.427 | `dotnet run --project fsharp` |
| Go | Go 1.27.3 | `go run main.go` |
| Rust | rustc 1.99.1 | `rustc main.rs -o main.exe && ./main.exe` |
| Bash | GNU Bash 5.3.15 | `bash main.sh` |
| Prolog | Trealla Prolog 3.14.50 | `tpl -q -l main.pl -g main` |
| Assembler | GNU as 2.47 (WinLibs MinGW-w64) | `as assembler.s -o assembler.o && gcc assembler.o -o assembler.exe && ./assembler.exe` |

> Для Prolog используется совместимая реализация Trealla Prolog. Команда для SWI-Prolog: `swipl -q -s main.pl -g main -t halt`.

## Исходные данные и вычисления

В каждой реализации задаются одни и те же логические данные:

| Поле | Значение |
|---|---|
| `student_name_ru` | Леонтьев Максим Семенович |
| `student_name_en` | Leontev Maksim Semenovich |
| `student_number` | 13 |
| `group_name` | М3О-103БВ-26 |
| `language_name` | название текущего языка |

Вычисляются:

- `student_id = "<группа>/<номер>"`, номер минимум из двух цифр: `М3О-103БВ-26/13`;
- `control_value = 304 × student_number = 304 × 13 = 3952`.

## Ожидаемый вывод

Пример для реализации на C:

```text
Hello to 3952 from Leontev Maksim Semenovich, number 13, group М3О-103БВ-26!
Привет, 3952! Это Леонтьев Максим Семенович, номер 13, группа М3О-103БВ-26!
Student ID: М3О-103БВ-26/13 | Language: C | Control: 3952
```

Для assembler достаточно одной персонализированной английской строки:

```text
Hello to 3952 from Leontev Maksim Semenovich, number 13, group M3O-103BV-26!
```

## Структура проекта

```text
VPD_Lab01/
├── README.md
├── CHANGELOG.md
├── .gitignore
├── c/
├── cpp/
├── python/
├── javascript/
├── typescript/
├── java/
├── csharp/
├── fsharp/
├── go/
├── rust/
├── bash/
├── prolog/
└── asm/
```

## «Визитные карточки» языков

- **C** — вывод через `printf()` и спецификаторы формата, номер форматируется через `%02d`.
- **C++** — вывод через `std::cout` и `operator<<`, форматирование через `std::setw` и `std::setfill`.
- **Python** — f-строки; дополнительно выводится количество слов в `student_name_en`.
- **JavaScript** — template literals; дополнительно выводится длина `student_name_en`.
- **TypeScript** — интерфейс `Student` с явными типами полей и типизированный объект.
- **Java** — типизированный `record`, `System.out.printf()`, после компиляции проверяется `.class` и выполняется `javap -c Main`.
- **C#** — интерполяция строк `$"..."`, типизированный `record`.
- **F#** — конвейер `|>`: имя разбивается на слова, вычисляются длины, сумма и количество.
- **Go** — `fmt.Printf`, вычисляемое значение `studentID` создаётся через короткое объявление `:=`.
- **Rust** — неизменяемые связывания `let`, `format!`/`println!`, отдельная строка с `student_id`.
- **Bash** — shell-переменные, настоящий pipe `|` и command substitution `$(...)`.
- **Prolog** — данные заданы фактом, есть правило `control_value/2` и правило `group_member/1`, выполняется запрос.
- **Assembler** — Windows x86-64, GNU Assembler (GAS), одна персонализированная английская строка.

## Кириллица в C/C++

Исходные файлы сохранены в UTF-8. В Windows перед выводом устанавливаются коды страницы консоли:

```c
SetConsoleCP(CP_UTF8);
SetConsoleOutputCP(CP_UTF8);
```

Дополнительно перед запуском можно выполнить `chcp 65001`. В Linux/macOS терминал обычно уже работает в UTF-8. Для C и C++ используется один и тот же подход; проверено, что русские строки корректно отображаются в Git Bash и PowerShell.

## Assembler

- ОС: Windows 11 Pro, x86-64.
- Ассемблер: GNU Assembler (GAS) 2.47 из WinLibs MinGW-w64.
- Синтаксис: Intel, `.intel_syntax noprefix`.
- Соглашение вызова: Windows x64 (первый аргумент `puts` передаётся через `rcx`, резервируется shadow space).
- Сборка:

```bash
cd asm
as assembler.s -o assembler.o
gcc assembler.o -o assembler.exe
./assembler.exe
```

В строке assembler группа записана латиницей `M3O-103BV-26`, чтобы не зависеть от кодировки консоли; в остальных реализациях используется кириллическая запись `М3О-103БВ-26`.

## Git

- Основная ветка: `main`.
- Feature-ветка: `feature/bash` (номер 13, `13 mod 5 = 3` → Bash).
- Минимум 6 осмысленных коммитов.
- Смоделирован merge-конфликт в `README.md` с второй рабочей копией `second_dev`.
- Первая завершённая версия отмечена аннотированным тегом `v1.0.0`.
