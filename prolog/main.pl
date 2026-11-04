student('Леонтьев Максим Семенович',
        'Leontev Maksim Semenovich',
        13,
        'М3О-103БВ-26',
        'Prolog').

control_value(Number, Control) :-
    student(_, _, Number, _, _),
    Control is 304 * Number.

group_member(Group) :-
    student(_, _, _, Group, _).

student_id(Group, Number, ID) :-
    number_codes(Number, Codes),
    ( Codes = [_] -> atom_concat('0', Codes, Padded) ; atom_codes(Padded, Codes) ),
    atom_concat(Group, '/', Prefix),
    atom_concat(Prefix, Padded, ID).

main :-
    student(NameRu, NameEn, Number, Group, Language),
    control_value(Number, Control),
    student_id(Group, Number, StudentId),
    format("Hello to ~w from ~w, number ~w, group ~w!~n",
           [Control, NameEn, Number, Group]),
    format("Привет, ~w! Это ~w, номер ~w, группа ~w!~n",
           [Control, NameRu, Number, Group]),
    format("Student ID: ~w | Language: ~w | Control: ~w~n",
           [StudentId, Language, Control]),
    group_member(Group),
    format("Group membership rule confirmed for ~w.~n", [Group]).
