:- use_module('pl-man-game/main').
dir_Valida(DIR):- DIR == up; DIR==right; DIR== down; DIR= left.
puertas(CHAR):- CHAR == '-'; CHAR == '|'.
pistola(l).
llaves(CHAR):- CHAR == a; CHAR == r.
bomba('+').
palanca('/').
pelota(o).
objetos(X):- pistola(X); llaves(X); bomba(X), palanca(X).

do(get(DIR)) :- see(normal, DIR, CHAR), objetos(CHAR), dir_Valida(DIR), write('get '), writeln(DIR).

do(use(DIR)) :- see(normal, DIR, CHAR), get(X), dir_Valida(DIR), puertas(CHAR), write('use '), write(X), write(' on '), writeln(DIR).
do(move(DIR)) :- see(normal, DIR, '.'), dir_Valida(DIR), write('move '), writeln(DIR).
