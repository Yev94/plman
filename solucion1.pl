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

%TODO..............Inicio Cambio de estados.................
:- dynamic estoy/1.
estoy(abajo).

cambiarE(EST) :- retractall(estoy(_)), assert(estoy(EST)).


%TODO................Fin Cambio de estados.................


%? ========= Reglas INICIO personalizadas por Objeto =========
%* --------- inicio Reglas INICIO Personalizadas ---------
%* doact

%* --------- fin Reglas INICIO Personalizadas -----------
do(ACT) :- doit(ACT). %==================================
%* --------- inicio Reglas FIN Personalizadas -----------
%* doact

do(ACT) :- 
  estoy(EST), 
  not(havingObject(appearance(_))), 
  r1(EST, ACT), 
  write('Estoy '), writeln(EST).

do(ACT) :- 
  estoy(EST), 
  (havingObject(appearance(a))), 
  r2(EST, ACT), 
  write('Estoy '), writeln(EST).


%* --------- fin Reglas FIN Personalizadas --------------
do(ACT) :- donone(ACT). %=================================
%? ====== Fin Reglas INICIO personalizadas por Objeto ========

%! ======= SubReglas INICIO personalizadas por mapa ==========
%! vision
%! widevision
%! multiVision



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

doit(use(Spell, DIR)) :-
  see(normal, DIR, Obstacle), 
  validDir(DIR), 
  validSpellingObjects(Obstacle, Spell),
  write('open '), write(Obstacle), write(' to '), write(DIR), write(' spelling '), writeln(Spell).

doit(move(DIR)) :- 
  see(normal, DIR, '.'), 
  validDir(DIR),
  write('move '), writeln(DIR).

%TODO ===== SubReglas FIN personalizadas por mapa ============
%TODO vision
%TODO widevision
%TODO multivision

r1(abajo, move(left)):-
  multiVision(
    '#', '-', '#',
    ' ', ' ', ' ',
    '#', '#', '#');
  multiVision(
    '#', '#', '-',
    ' ', ' ', ' ',
    '#', '#', '#');
  multiVision(
    '#', '#', '#',
    ' ', ' ', ' ',
    '#', '#', '#');
  multiVision(
    ' ', '#', '#',
    ' ', ' ', ' ',
    '#', '#', '#'),
  writeln('r1 multiVision to left').

r1(abajo, move(up)):-
  multiVision(
    '#', ' ', '#',
    '#', ' ', ' ',
    '#', '#', '#');
  multiVision(
    '#', ' ', '#',
    '#', ' ', '#',
    '#', ' ', ' ');
  multiVision(
    '#', ' ', '#',
    '#', ' ', '#',
    '#', ' ', '#');
  multiVision(
    '#', ' ', ' ',
    '#', ' ', '#',
    '#', ' ', '#'),
  writeln('r1 multiVision to up').

r1(abajo, move(right)):-
  multiVision(
    '#', '#', '#',
    '#', ' ', ' ',
    '#', ' ', '#'),
  cambiarE(arriba),
  writeln('r1 multiVision to left').

r1(abajo, move(right)):-
  multiVision(
    '#', '#', '#',
    '#', ' ', ' ',
    '#', ' ', '#'),
  cambiarE(arriba),
  writeln('r1 multiVision to right').


r1(arriba, move(right)):-
  multiVision(
    '#', '#', '#',
    ' ', ' ', ' ',
    ' ', '#', '#');
  multiVision(
    '#', '#', '#',
    ' ', ' ', ' ',
    '#', '#', '#'),
  writeln('r1 multiVision to right').

r2(arriba, move(right)):-
  multiVision(
    '#', '#', '#',
    ' ', ' ', ' ',
    '#', '#', '#');
  multiVision(
    '#', '#', '#',
    ' ', ' ', ' ',
    '#', '#', ' '),
  writeln('r1 multiVision to right').

r2(arriba, move(down)):-
  multiVision(
    '#', '#', '#',
    ' ', ' ', '#',
    '#', ' ', '#');
  multiVision(
    ' ', ' ', '#',
    '#', ' ', '#',
    '#', ' ', '#');
  multiVision(
    '#', ' ', '#',
    '#', ' ', '#',
    '#', ' ', '#');
  multiVision(
    '#', ' ', '#',
    '#', ' ', '#',
    ' ', ' ', '#'),
  writeln('r2 multiVision to down').

r2(arriba, move(left)):-
  multiVision(
    '#', ' ', '#',
    ' ', ' ', '#',
    '#', '#', '#'),
  cambiarE(abajo),
  writeln('r3 multiVision to left').

r2(abajo, move(left)):-
  multiVision(
    '#', '#', ' ',
    ' ', ' ', ' ',
    '#', '#', '#');
  multiVision(
    '#', '#', '#',
    ' ', ' ', ' ',
    '#', '#', '#');
  multiVision(
    '-', '#', '#',
    ' ', ' ', ' ',
    '#', '#', '#'),
  cambiarE(dentro),
  writeln('r3 multiVision to left').

r2(dentro, move(right)):-
  multiVision(
    ' ', ' ', ' ',
    ' ', ' ', ' ',
    '#', '#', ' '),
  writeln('r2 multiVision to right').

%TODO ===== Fin SubReglas FIN personalizadas por mapa ========
donone(move(none)).