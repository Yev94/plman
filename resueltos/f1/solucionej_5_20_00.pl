:- use_module('pl-man-game/main').

% Inicio definicion vistas
visionLeft(OBJ1, OBJ2, OBJ3, OBJ4):- 
  see(normal, up-left, OBJ1),
  see(normal, left, OBJ2),
  see(normal, here, OBJ3),
  see(normal, down-left, OBJ4).

visionRight(OBJ1, OBJ2, OBJ3, OBJ4):- 
  see(normal, up-right, OBJ1),
  see(normal, here, OBJ2),
  see(normal, right, OBJ3),
  see(normal, down-right, OBJ4).

visionUp(OBJ1, OBJ2, OBJ3, OBJ4):- 
  see(normal, up-left, OBJ1),
  see(normal, up, OBJ2),
  see(normal, up-right, OBJ3),
  see(normal, here, OBJ4).

visionDown(OBJ1, OBJ2, OBJ3, OBJ4):- 
  see(normal, here, OBJ1),
  see(normal, down-left, OBJ2),
  see(normal, down, OBJ3),
  see(normal, down-right, OBJ4).

visionUpLeft(OBJ1, OBJ2, OBJ3, OBJ4):- 
  see(normal, up-left, OBJ1),
  see(normal, up, OBJ2),
  see(normal, left, OBJ3),
  see(normal, here, OBJ4).

visionUpRight(OBJ1, OBJ2, OBJ3, OBJ4):- 
  see(normal, up, OBJ1),
  see(normal, up-right, OBJ2),
  see(normal, here, OBJ3),
  see(normal, right, OBJ4).

visionDownLeft(OBJ1, OBJ2, OBJ3, OBJ4):- 
  see(normal, left, OBJ1),
  see(normal, here, OBJ2),
  see(normal, down-left, OBJ3),
  see(normal, down, OBJ4).

visionDownRight(OBJ1, OBJ2, OBJ3, OBJ4):- 
  see(normal, here, OBJ1),
  see(normal, right, OBJ2),
  see(normal, down, OBJ3),
  see(normal, down-right, OBJ4).

wideVisionLeft(OBJ1, OBJ2, OBJ3, OBJ4, OBJ5, OBJ6):- 
  see(normal, up-left, OBJ1),
  see(normal, up, OBJ2),
  see(normal, left, OBJ3),
  see(normal, here, OBJ4),
  see(normal, down-left, OBJ5),
  see(normal, down, OBJ6).

wideVisionRight(OBJ1, OBJ2, OBJ3, OBJ4, OBJ5, OBJ6):- 
  see(normal, up, OBJ1),
  see(normal, up-right, OBJ2),
  see(normal, here, OBJ3),
  see(normal, right, OBJ4),
  see(normal, down, OBJ5),
  see(normal, down-right, OBJ6).

wideVisionUp(OBJ1, OBJ2, OBJ3, OBJ4, OBJ5, OBJ6):- 
  see(normal, up-left, OBJ1),
  see(normal, up, OBJ2),
  see(normal, left, OBJ3),
  see(normal, here, OBJ4),
  see(normal, down-left, OBJ5),
  see(normal, down, OBJ6).

wideVisionDown(OBJ1, OBJ2, OBJ3, OBJ4, OBJ5, OBJ6):- 
  see(normal, up, OBJ1),
  see(normal, up-right, OBJ2),
  see(normal, here, OBJ3),
  see(normal, right, OBJ4),
  see(normal, down, OBJ5),
  see(normal, down-right, OBJ6).

wideVisionUpLeft(OBJ1, OBJ2, OBJ3, OBJ4, OBJ5, OBJ6):- 
  see(normal, up-left, OBJ1),
  see(normal, up, OBJ2),
  see(normal, up-right, OBJ3),
  see(normal, left, OBJ4),
  see(normal, here, OBJ5),
  see(normal, down-left, OBJ6).

wideVisionUpRight(OBJ1, OBJ2, OBJ3, OBJ4, OBJ5, OBJ6):- 
  see(normal, up-left, OBJ1),
  see(normal, up, OBJ2),
  see(normal, up-right, OBJ3),
  see(normal, here, OBJ4),
  see(normal, right, OBJ5),
  see(normal, down-right, OBJ6).

wideVisionDownLeft(OBJ1, OBJ2, OBJ3, OBJ4, OBJ5, OBJ6):- 
  see(normal, up-left, OBJ1),
  see(normal, left, OBJ2),
  see(normal, here, OBJ3),
  see(normal, down-left, OBJ4),
  see(normal, down, OBJ5),
  see(normal, down-right, OBJ6).

wideVisionDownRight(OBJ1, OBJ2, OBJ3, OBJ4, OBJ5, OBJ6):- 
  see(normal, up-right, OBJ1),
  see(normal, here, OBJ2),
  see(normal, right, OBJ3),
  see(normal, down-left, OBJ4),
  see(normal, down, OBJ5),
  see(normal, down-right, OBJ6).

multiVision(OBJ1, OBJ2, OBJ3, OBJ4, OBJ5, OBJ6, OBJ7, OBJ8, OBJ9):-
  see(normal, up-left, OBJ1),
  see(normal, up, OBJ2),
  see(normal, up-right, OBJ3),
  see(normal, left, OBJ4),
  see(normal, here, OBJ5),
  see(normal, right, OBJ6),
  see(normal, down-left, OBJ7),
  see(normal, down, OBJ8),
  see(normal, down-right, OBJ9),
  writeln(OBJ6).
% Fin definción vistas
% Inicio deficinión objetos

validDir(DIR):- 
  DIR = down; 
  DIR = up; 
  DIR = right; 
  DIR = left.

validObjects(CHAR):-
  CHAR = a;
  CHAR = k;
  CHAR = p;
  CHAR = w;
  CHAR = '¬'.

open(Obstacle):-
  havingObject(appearance(a)), Obstacle = '_';
  havingObject(appearance(a)), Obstacle = '-';
  havingObject(appearance(a)), Obstacle = '|';
  havingObject(appearance(k)), Obstacle = '-';
  havingObject(appearance(k)), Obstacle = '|';
  havingObject(appearance(p)), Obstacle = '%'.

dropIn(Recipient):-
  havingObject(appearance(w)), Recipient = 'U'.
% Fin definición objetos

%! ========= Reglas INICIO personalizadas por mapa ==========
%! vision
%! widevision
%! multiVision

do(move(right)):-
  multiVision(
    '#', '.', '.',
    ' ', ' ', '.',
    '#', '#', '#');
  multiVision(
    '.', '.', '.',
    ' ', ' ', '.',
    '#', '#', '0');
  multiVision(
    '.', '.', '.',
    ' ', ' ', '.',
    '#', 'g', '0');
  multiVision(
    '.', '.', '.',
    ' ', ' ', '.',
    'h', 'd', '0');
  multiVision(
    '.', '.', '.',
    ' ', ' ', '.',
    'e', 'k', '0');
  multiVision(
    '.', '.', '.',
    ' ', ' ', '.',
    'l', 'o', '#');
  multiVision(
    '.', '.', '.',
    ' ', ' ', '.',
    'p', '#', '#');
  multiVision(
    '.', '.', '#',
    ' ', ' ', '.',
    '#', '#', '#'),
  writeln('multiVision to right').

do(move(none)):-
  multiVision(
    '.', '.', '.',
    ' ', ' ', '.',
    '#',  _ , '0'),
  not(see(normal, down, 'g'));
  multiVision(
    '.', '.', '.',
    ' ', ' ', '.',
    'h',  _ , '0'),
  not(see(normal, down, 'd'));
  multiVision(
    '.', '.', '.',
    ' ', ' ', '.',
    'e',  _ , '0'),
  not(see(normal, down, 'k'));
  multiVision(
    '.', '.', '.',
    ' ', ' ', '.',
    'l',  _ , '#'),
  not(see(normal, down, 'o'));
  multiVision(
    'E', '.', '.',
    ' ', ' ', '.',
    ' ', ' ', ' ');
  multiVision(
    '#', '#', '#',
    ' ', ' ', ' ',
    '>', '.', ' ');
  multiVision(
    '#', '#', '#',
    ' ', ' ', ' ',
    '.', '>', ' ');
  multiVision(
    '#', '#', '#',
    '🕴', ' ', ' ',
    '.', ' ', ' '),
  writeln('multiVision to none').

do(move(right)):-
  multiVision(
    ' ', ' ', ' ',
    ' ', ' ', ' ',
    ' ', ' ', ' '),
  writeln('multiVision to right').

do(move(down)):-
  multiVision(
    '#', '#', '#',
    '.', ' ', ' ',
    '.', '.', ' ');
    multiVision(
      '.', ' ', ' ',
      '.', ' ', '🕴',
      '.', '.', ' ');
    multiVision(
      ' ', ' ', ' ',
      '.', ' ', '#',
      '.', '.', '#'),
  writeln('multiVision to down').

do(move(left)):-
  multiVision(
    '.', '.', '.',
    '.', ' ', '.',
    '#', ' ', ' ');
  multiVision(
    '.', '.', '.',
    '.', ' ', '.',
    '#', ' ', '.');
  multiVision(
    '.', '>', ' ',
    ' ', ' ', '.',
    ' ', '.', '.'),
  writeln('multiVision to left').

do(use(up)):-
  multiVision(
    ' ', 'E', '.',
    ' ', ' ', '.',
    ' ', ' ', ' '),
  writeln('multiVision to right').

do(use(left)):-
  multiVision(
    '#', '#', '#',
    ' ', ' ', ' ',
    '.', '.', '>'),
  writeln('multiVision to right').
%! ======= Fin Reglas INICIO personalizadas por mapa ========

do(get(DIR)) :-
  see(normal, DIR, OBJ), 
  validObjects(OBJ), 
  validDir(DIR),
  write('get '), write(OBJ), write(' from '), writeln(DIR).

do(use(DIR)) :-
  see(normal, DIR, Obstacle), 
  validDir(DIR), 
  open(Obstacle),
  write('open '), write(Obstacle), write(' to '), writeln(DIR).

do(drop(DIR)) :-
  see(normal, DIR, Recipient), 
  validDir(DIR), 
  dropIn(Recipient),
  write('open '), write(Recipient), write(' to '), writeln(DIR).

do(move(DIR)) :- 
  see(normal, DIR, '.'), 
  validDir(DIR),
  write('move '), writeln(DIR).

%TODO =========== Reglas FIN personalizadas por mapa ============
%TODO vision
%TODO widevision
%TODO multivision

do(move(down)):-
  multiVision(
    '#', '#', '#',
    '#', ' ', '#',
    '#', ' ', '#');
  multiVision(
    '#', ' ', '#',
    '#', ' ', '#',
    '#', ' ', '#');
  multiVision(
    '#', ' ', '#',
    '#', ' ', '#',
    '#', ' ', ' '),
  writeln('multiVision to down').

do(move(right)):-
  multiVision(
    '#', ' ', '#',
    '#', ' ', ' ',
    '#', '#', '#');
  multiVision(
    '#', '#', '#',
    '#', ' ', ' ',
    '#', ' ', ' ');
  multiVision(
    '#', '#', ' ',
    ' ', ' ', ' ',
    ' ', ' ', ' '),
  writeln('multiVision to right').

do(move(left)):-
  multiVision(
    '.', '#', '#',
    ' ', ' ', ' ',
    '#', '#', '#');
  multiVision(
    '#', '#', '#',
    '+', ' ', ' ',
    '.', 'E', ' ');
  multiVision(
    ' ', '>', ' ',
    ' ', ' ', ' ',
    ' ', '#', ' ');
  multiVision(
    ' ', ' ', '>',
    ' ', ' ', ' ',
    '.', '#', '#'),
  writeln('multiVision to left').

do(move(up)):-
  multiVision(
    '#', ' ', ' ',
    '#', ' ', ' ',
    ' ', ' ', ' ');
  multiVision(
    '#', ' ', ' ',
    '#', ' ', ' ',
    '#', ' ', ' ');
  multiVision(
    '#', ' ', ' ',
    ' ', ' ', ' ',
    ' ', ' ', ' '),
  writeln('multiVision to up').

do(move(down)).

%TODO ========== Fin Reglas FIN personalizadas por mapa =========
do(move(none)).