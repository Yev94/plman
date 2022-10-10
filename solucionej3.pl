:- use_module('pl-man-game/main').

coco(DIR):-
  see(normal, DIR, '.').

espacio(DIR):-
  see(normal, DIR, ' ').

multiview(OBJ1, OBJ2, OBJ3, OBJ4, OBJ5, OBJ6, OBJ7, OBJ8, OBJ9):-
  see(normal, up-left, OBJ1),
  see(normal, up, OBJ2),
  see(normal, up-right, OBJ3),
  see(normal, left, OBJ4),
  see(normal, here, OBJ5),
  see(normal, right, OBJ6),
  see(normal, down-left, OBJ7),
  see(normal, down, OBJ8),
  see(normal, down-right, OBJ9),
  write(OBJ5).

dir_Valida(DIR):- 
  DIR = down; 
  DIR = up; 
  DIR = right; 
  DIR = left.

puertas(CHAR):- 
  CHAR = '-'; 
  CHAR = '|'.
pistola(l).
llaves(CHAR):- 
  CHAR = a;
  CHAR = r.
bomba('+').
palanca('/').
pelota(o).
abre(Llave, Puerta):-llaves(Llave), puertas(Puerta).

objetos(X):- 
  pistola(X); 
  llaves(X); 
  bomba(X); 
  palanca(X).

%------------Reglas inicio personalizadas por mapa-------
do(move(down)) :- 
  multiview('#', '.', '.', 
            ' ', ' ', '#', 
            '#', '.', ' '),
  writeln('move specificly to down').

do(move(down)) :- 
  multiview('.', '.', '.', 
            '#', ' ', '#', 
            ' ', ' ', '.'),
  writeln('move specificly to down').

do(move(down)) :- 
  multiview('.', ' ', '.', 
            '#', ' ', '#', 
            ' ', ' ', ' '),
  writeln('move specificly to down').

%----------Fin Reglas inicio personalizadas por mapa-------


do(get(DIR)) :-
  see(normal, DIR, CHAR), 
  objetos(CHAR), 
  dir_Valida(DIR),
  write('get '), write(CHAR), write(' from '), writeln(DIR).

do(use(DIR)) :-
  havingObject,
  see(normal, DIR, CHAR), 
  dir_Valida(DIR), 
  puertas(CHAR),
  write('use '), write(CHAR), write(' to '), writeln(DIR).

do(move(DIR)) :- 
  coco(DIR), 
  dir_Valida(DIR),
  write('move '), writeln(DIR).

%-----------------Reglas fin personalizadas por mapa-------

do(move(down)) :- 
  multiview('#', '#', '#', 
            '#', ' ', '#', 
            '#', ' ', ' '),
  writeln('move specificly to down').

do(move(right)) :- 
  multiview(_, _, _, 
            ' ', ' ', ' ', 
            '#', '#', '#'),
  writeln('move specificly to right').


do(move(up)) :- 
  multiview('#', ' ', ' ', 
            ' ', ' ', '#', 
            '#', '#', '#'),
  writeln('move specificly to up').

do(move(right)) :- 
  multiview('#', ' ', '#', 
            '#', ' ', ' ', 
            ' ', ' ', '#'),
  writeln('move specificly to right').

do(move(right)) :- 
  multiview(' ', ' ', '#', 
            '#', ' ', ' ', 
            _, _, _),
  writeln('move specificly to right').

do(move(up)) :- 
  multiview(' ', ' ', ' ', 
            '#', ' ', '#', 
            '#', ' ', ' '),
  writeln('move specificly to up').

do(move(left)) :- 
  multiview('#', '#', '#', 
            ' ', ' ', ' ', 
            ' ', '#', ' '),
  writeln('move specificly to left').

do(move(left)) :- 
  multiview('#', '#', '#', 
            ' ', ' ', ' ', 
            '.', '#', '#'),
  writeln('move specificly to left').

do(move(down)) :- 
  multiview(' ', ' ', ' ', 
            '#', ' ', '#', 
            ' ', ' ', ' '),
  writeln('move specificly to down').

do(move(left)) :- 
  multiview('#', '#', '#', 
            ' ', ' ', ' ', 
            ' ', '#', '#'),
  writeln('move specificly to left').

do(move(down)) :- 
  multiview('#', '#', '#', 
            '#', ' ', ' ', 
            ' ', ' ', '#'),
  writeln('move specificly to down').

do(move(down)) :- 
  multiview('#', ' ', ' ', 
            ' ', ' ', '#', 
            '#', ' ', ' '),
  writeln('move specificly to down').

do(move(up)) :- 
  multiview('#', ' ', '#', 
            ' ', ' ', '#', 
            '#', '#', '#'),
  writeln('move specificly to up').

do(move(up)) :- 
  multiview(' ', ' ', ' ', 
            '#', ' ', '#', 
            ' ', ' ', '#'),
  writeln('move specificly to up').

do(move(right)) :- 
  multiview('#', '#', '#', 
            ' ', ' ', ' ', 
            '#', ' ', '#'),
  writeln('move specificly to right').

do(move(right)).
%----------------Fin Reglas fin personalizadas por mapa-------
do(move(none)).