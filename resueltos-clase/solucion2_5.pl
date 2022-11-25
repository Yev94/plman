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
  see(normal, down-right, OBJ9).
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
  CHAR = o;
  CHAR = p;
  CHAR = w;
  CHAR = '!';
  CHAR = '¬'.

open(Obstacle):-
  havingObject(appearance(a)), Obstacle = '_';
  havingObject(appearance(a)), Obstacle = '-';
  havingObject(appearance(a)), Obstacle = '|';
  havingObject(appearance(k)), Obstacle = '-';
  havingObject(appearance(k)), Obstacle = '|';
  havingObject(appearance(l)), Obstacle = '-';
  havingObject(appearance(o)), Obstacle = '|';
  havingObject(appearance(p)), Obstacle = '%'.
  
  
dropIn(Recipient):-
  havingObject(appearance(w)), Recipient = 'U'.
  
validSpellingObjects(Obstacle, Spell):-
  havingObject(appearance('!')), 
    Obstacle = '|', Spell = 'aLoHoM0rA';
  havingObject(appearance('!')), 
    Obstacle = '%', Spell = 'flIpEnDO';
  havingObject(appearance('!')), 
    Obstacle = 'E', Spell = 'aV4dA_keDaVra'.
% Fin definición objetos


%? ========= Reglas INICIO personalizadas por Objeto =========
%* --------- inicio Reglas INICIO Personalizadas ---------
%* doact

do(ACT) :-
  not(havingObject(appearance(_))),
  r2(ACT).

do(ACT) :-
  (havingObject(appearance('!'))),
  r4(ACT).

%* --------- fin Reglas INICIO Personalizadas -----------
do(ACT) :- doit(ACT). %==================================
%* --------- inicio Reglas FIN Personalizadas -----------
%* doact

do(ACT) :-
  not(havingObject(appearance(_))),
  r1(ACT).


do(ACT) :-
  (havingObject(appearance('!'))),
  r3(ACT).

%* --------- fin Reglas FIN Personalizadas --------------
do(ACT) :- donone(ACT). %=================================
%? ====== Fin Reglas INICIO personalizadas por Objeto ========

%! ======= SubReglas INICIO personalizadas por mapa ==========
%! vision
%! widevision
%! multiVision

r2(move(down)):-
  multiVision(
    '#', '#', 'E',
    ' ', ' ', '.',
    ' ', '.', '.');
  multiVision(
    ' ', '#', '#',
    'E', ' ', '.',
    ' ', '.', '.');
  multiVision(
    '#', 'v', '#',
    ' ', ' ', '.',
    '.', '.', '.');
  multiVision(
    '#', '¡', '#',
    ' ', ' ', '.',
    ' ', '.', '.');
  multiVision(
    ' ', '¡', '.',
    ' ', ' ', '.',
    ' ', '.', '.'),
  writeln('r2 multiVision to down').

r2(move(none)):-
  multiVision(
    ' ', ' ', 'E',
    ' ', ' ', '.',
    ' ', ' ', ' ');
  multiVision(
    ' ', ' ', '#',
    '.', ' ', '#',
    'E', '.', '#');
  multiVision(
    ' ', ' ', '#',
    'E', ' ', '#',
    '.', '.', '#');
  multiVision(
    ' ', ' ', ' ',
    'E', ' ', 'E',
    '.', '.', '.'),
  writeln('r2 multiVision to none').

r2(move(left)):-
  multiVision(
    '#', '¡', 'E',
    ' ', ' ', '.',
    ' ', '.', '.'),
  writeln('r2 multiVision to left').

r2(move(right)):-
  multiVision(
    ' ', '.', ' ',
    ' ', ' ', ' ',
    ' ', ' ', ' '),
  writeln('r1 multiVision to right').

r4(move(none)):-
  multiVision(
    '#', '#', '#',
    ' ', ' ', '#',
    'E', '.', '#');
  multiVision(
    '¡', ' ', ' ',
    '.', ' ', ' ',
    'E', '.', '.');
  multiVision(
    '¡', ' ', ' ',
    '.', ' ', ' ',
    'E', '.', '.'),
  writeln('r3 multiVision to none').

r4(move(none)):-
  multiVision(
    ' ', ' ', ' ',
    '¡', ' ', ' ',
    '.', '.', '.');
  multiVision(
    ' ', ' ', '¡',
    ' ', ' ', '.',
    ' ', '.', '.');
  multiVision(
    ' ', ' ', ' ',
    ' ', ' ', '¡',
    ' ', '.', '.'),
  writeln('r2 multiVision to ').

r4(move(down)):-
  multiVision(
    ' ', ' ', '#',
    '.', ' ', '#',
    '.', '.', '#'),
  writeln('r4 multiVision to down').

r4(use('aV4dA_keDaVra', right)):-
  multiVision(
    ' ', ' ', ' ',
    ' ', ' ', 'E',
    ' ', '.', '¡'),
  writeln('r4 multiVision to down').

r4(move(right)):-
  multiVision(
    ' ', ' ', ' ',
    '.', ' ', '.',
    '.', '.', '.'),
  writeln('r4 multiVision to right').

%! ===== Fin SubReglas INICIO personalizadas por mapa ========

doit(get(DIR)) :-
  see(normal, DIR, OBJ), 
  validObjects(OBJ), 
  validDir(DIR),
  write('get '), write(OBJ), write(' from '), writeln(DIR).

doit(use(DIR)) :-
  see(normal, DIR, Obstacle), 
  validDir(DIR), 
  open(Obstacle),
  write('open '), write(Obstacle), write(' to '), writeln(DIR).

doit(drop(DIR)) :-
  see(normal, DIR, OBJ),
  validDir(DIR),
  dropIn(OBJ),
  write('DROP into'), write(OBJ), write(' '), writeln(DIR).

doit(move(DIR)) :- 
  see(normal, DIR, '.'), 
  validDir(DIR),
  write('move '), writeln(DIR).

%TODO ===== SubReglas FIN personalizadas por mapa ============
%TODO vision
%TODO widevision
%TODO multivision

r1(move(down)):-
  multiVision(
    '#', '#', '#',
    ' ', ' ', '#',
    ' ', ' ', '|');
  multiVision(
    'v', '#', '#',
    '¡', ' ', '#',
    ' ', ' ', '#');
  multiVision(
    ' ', ' ', '#',
    '¡', ' ', '#',
    ' ', ' ', '#');
  multiVision(
    ' ', ' ', '#',
    '¡', ' ', '#',
    ' ', ' ', '|');
  multiVision(
    'E', ' ', ' ',
    ' ', ' ', ' ',
    ' ', ' ', ' '),
  writeln('r1 multiVision to down').

r1(move(right)):-
  multiVision(
    '#', '#', '#',
    ' ', ' ', '|',
    ' ', ' ', '#');
  multiVision(
    ' ', ' ', '#',
    ' ', ' ', '|',
    ' ', ' ', '#');
  multiVision(
    ' ', 'E', ' ',
    ' ', ' ', ' ',
    ' ', ' ', ' ');
  multiVision(
    ' ', ' ', ' ',
    ' ', ' ', ' ',
    ' ', 'E', ' ');
  multiVision(
    ' ', ' ', ' ',
    ' ', ' ', ' ',
    'E', ' ', 'E');
  multiVision(
    '#', '#', 'v',
    '#', ' ', ' ',
    '#', ' ', '¡');
  multiVision(
    ' ', '¡', ' ',
    'E', ' ', ' ',
    ' ', ' ', ' ');
  multiVision(
    'E', ' ', ' ',
    ' ', ' ', ' ',
    '#', '#', '#'),
  writeln('r1 multiVision to right').

r1(move(up)):-
  multiVision(
    '¡', ' ', '¡',
    ' ', ' ', ' ',
    ' ', 'E', ' ');
  multiVision(
    ' ', ' ', '.',
    ' ', ' ', ' ',
    '¡', 'E', '¡');
  multiVision(
    '.', ' ', '#',
    '¡', ' ', '#',
    ' ', ' ', '#');
  multiVision(
    '¡', ' ', '#',
    ' ', ' ', '#',
    ' ', ' ', '#');
  multiVision(
    ' ', ' ', '|',
    ' ', ' ', '#',
    '#', '#', '#'),
  writeln('r1 multiVision to up').

r3(use('aV4dA_keDaVra', right)):-
  multiVision(
    '#', '#', '#',
    '#', ' ', 'E',
    '#', ' ', 'E'),
  writeln('r3 multiVision to ').

r3(use('aV4dA_keDaVra', down)):-
  multiVision(
    '#', '#', '#',
    ' ', ' ', '#',
    '.', 'E', '#');
  multiVision(
    ' ', ' ', ' ',
    ' ', ' ', ' ',
    ' ', 'E', '.'),
  writeln('r3 multiVision to ').

r3(use('aV4dA_keDaVra', left)):-
  multiVision(
    ' ', ' ', ' ',
    'E', ' ', ' ',
    'E', ' ', ' '),
  writeln('r3 multiVision to ').

%TODO ===== Fin SubReglas FIN personalizadas por mapa ========
donone(move(none)).