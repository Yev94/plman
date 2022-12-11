:- use_module('pl-man-game/main').

% Inicio definicion vistas

vision(DIR, OBJ):-
  see(normal, DIR, OBJ).

visionLeft(OBJ1, OBJ2, OBJ3, OBJ4):- 
  vision(up-left, OBJ1),
  vision(left, OBJ2),
  vision(here, OBJ3),
  vision(down-left, OBJ4).

visionRight(OBJ1, OBJ2, OBJ3, OBJ4):- 
  vision(up-right, OBJ1),
  vision(here, OBJ2),
  vision(right, OBJ3),
  vision(down-right, OBJ4).

visionUp(OBJ1, OBJ2, OBJ3, OBJ4):- 
  vision(up-left, OBJ1),
  vision(up, OBJ2),
  vision(up-right, OBJ3),
  vision(here, OBJ4).

visionDown(OBJ1, OBJ2, OBJ3, OBJ4):- 
  vision(here, OBJ1),
  vision(down-left, OBJ2),
  vision(down, OBJ3),
  vision(down-right, OBJ4).

visionUpLeft(OBJ1, OBJ2, OBJ3, OBJ4):- 
  vision(up-left, OBJ1),
  vision(up, OBJ2),
  vision(left, OBJ3),
  vision(here, OBJ4).

visionUpRight(OBJ1, OBJ2, OBJ3, OBJ4):- 
  vision(up, OBJ1),
  vision(up-right, OBJ2),
  vision(here, OBJ3),
  vision(right, OBJ4).

visionDownLeft(OBJ1, OBJ2, OBJ3, OBJ4):- 
  vision(left, OBJ1),
  vision(here, OBJ2),
  vision(down-left, OBJ3),
  vision(down, OBJ4).

visionDownRight(OBJ1, OBJ2, OBJ3, OBJ4):- 
  vision(here, OBJ1),
  vision(right, OBJ2),
  vision(down, OBJ3),
  vision(down-right, OBJ4).

wideVisionLeft(OBJ1, OBJ2, OBJ3, OBJ4, OBJ5, OBJ6):- 
  vision(up-left, OBJ1),
  vision(up, OBJ2),
  vision(left, OBJ3),
  vision(here, OBJ4),
  vision(down-left, OBJ5),
  vision(down, OBJ6).

wideVisionRight(OBJ1, OBJ2, OBJ3, OBJ4, OBJ5, OBJ6):- 
  vision(up, OBJ1),
  vision(up-right, OBJ2),
  vision(here, OBJ3),
  vision(right, OBJ4),
  vision(down, OBJ5),
  vision(down-right, OBJ6).

wideVisionUp(OBJ1, OBJ2, OBJ3, OBJ4, OBJ5, OBJ6):- 
  vision(up-left, OBJ1),
  vision(up, OBJ2),
  vision(left, OBJ3),
  vision(here, OBJ4),
  vision(down-left, OBJ5),
  vision(down, OBJ6).

wideVisionDown(OBJ1, OBJ2, OBJ3, OBJ4, OBJ5, OBJ6):- 
  vision(up, OBJ1),
  vision(up-right, OBJ2),
  vision(here, OBJ3),
  vision(right, OBJ4),
  vision(down, OBJ5),
  vision(down-right, OBJ6).

wideVisionUpLeft(OBJ1, OBJ2, OBJ3, OBJ4, OBJ5, OBJ6):- 
  vision(up-left, OBJ1),
  vision(up, OBJ2),
  vision(up-right, OBJ3),
  vision(left, OBJ4),
  vision(here, OBJ5),
  vision(down-left, OBJ6).

wideVisionUpRight(OBJ1, OBJ2, OBJ3, OBJ4, OBJ5, OBJ6):- 
  vision(up-left, OBJ1),
  vision(up, OBJ2),
  vision(up-right, OBJ3),
  vision(here, OBJ4),
  vision(right, OBJ5),
  vision(down-right, OBJ6).

wideVisionDownLeft(OBJ1, OBJ2, OBJ3, OBJ4, OBJ5, OBJ6):- 
  vision(up-left, OBJ1),
  vision(left, OBJ2),
  vision(here, OBJ3),
  vision(down-left, OBJ4),
  vision(down, OBJ5),
  vision(down-right, OBJ6).

wideVisionDownRight(OBJ1, OBJ2, OBJ3, OBJ4, OBJ5, OBJ6):- 
  vision(up-right, OBJ1),
  vision(here, OBJ2),
  vision(right, OBJ3),
  vision(down-left, OBJ4),
  vision(down, OBJ5),
  vision(down-right, OBJ6).

multiVision(OBJ1, OBJ2, OBJ3, OBJ4, OBJ5, OBJ6, OBJ7, OBJ8, OBJ9):-
  vision(up-left, OBJ1),
  vision(up, OBJ2),
  vision(up-right, OBJ3),
  vision(left, OBJ4),
  vision(here, OBJ5),
  vision(right, OBJ6),
  vision(down-left, OBJ7),
  vision(down, OBJ8),
  vision(down-right, OBJ9).
% Fin definción vistas
% Inicio deficinión objetos

validObjects(CHAR):-
  CHAR = a;
  CHAR = k;
  CHAR = n;
  CHAR = m;
  CHAR = o;
  CHAR = r;
  CHAR = p;
  CHAR = l;
  CHAR = w;
  CHAR = +;
  CHAR = '!';
  CHAR = '¬'.

canOpen(a, '_').
canOpen(a, '-').
canOpen(a, '|').
canOpen(n, '-').
canOpen(m, '-').
canOpen(m, '|').
canOpen(k, '-').
canOpen(k, '|').
canOpen(l, '-').
canOpen(o, '|').
canOpen(p, '%').
canOpen(r, '-').
canOpen(r, '|').

open(Obstacle):-
    havingObject(appearance(OBJ)),
    canOpen(OBJ, Obstacle).
  
  
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

validDir(DIR):- 
  DIR = left; 
  DIR = down; 
  DIR = right; 
  DIR = up.

%%..............Inicio Cambio de estados.................
% %/Estado
:-dynamic estado/1.
estado(inicio).

cambiarE(E):-
  retractall(estado(_)),
  assert(estado(E)).

% %/Contador
% :- dynamic contador/1.
% contador(0).

% incrementarContador:-
%   contador(C),
%   retractall(contador(C)),
%   NuevoC is C + 1,
%   asserta(contador(NuevoC)).

% mostrarContador:-
% contador(C),
% write('El valor del contador es: '), writeln(C).

%/Personalizado




%%................Fin Cambio de estados.................
%? ========= Reglas INICIO personalizadas por Objeto =========
%! --------- inicio Reglas INICIO Personalizadas ---------
%! doact
% %/ Do con Contador
% do(ACT) :-
%   disparo(D),
%   D < 3,
%   incrementarContador,
%   not(havingObject(appearance(l))),
%   r1(ACT).

do(ACT) :- 
  estado(EST),  
  r3(EST, ACT), 
  write('Estado '), writeln(EST).


%! --------- fin Reglas INICIO Personalizadas -----------
do(ACT) :- doit(ACT).
%% --------- inicio Reglas FIN Personalizadas -----------
%% doact

do(ACT) :- 
  estado(EST), 
  r1(EST, ACT), 
  write('Estado '), writeln(EST).

do(ACT) :- 
  estado(EST), 
  (havingObject(appearance(+))), 
  r2(EST, ACT), 
  write('Estado '), writeln(EST).


%% --------- fin Reglas FIN Personalizadas --------------
do(ACT) :- donone(ACT). 
%? ====== Fin Reglas INICIO personalizadas por Objeto ========

%! ======= SubReglas INICIO personalizadas por mapa ==========
%! vision
%! widevision
%! multiVision


r3(m1, move(right)):-
  multiVision(
    '#', '#', '#',
    '+', ' ', ' ',
    '#', ' ', ' '),
  cambiarE(s1),
  writeln('r1 multiVision to right').

r3(s1, move(down)):-
  multiVision(
    '#', ' ', '.',
    '.', ' ', ' ',
    '#', ' ', 'E'),
  writeln('r3 multiVision to down').

r3(s1, move(up)):-
  multiVision(
    ' ', ' ', ' ',
    ' ', ' ', 'E',
    '#', '#', '#'),
  writeln('r3 multiVision to up').

r3(m2, move(right)):-
  multiVision(
    '#', ' ', ' ',
    '+', ' ', ' ',
    '#', ' ', ' '),
    writeln('r1 multiVision to right').
  
r3(m2, move(right)):-
  multiVision(
    ' ', ' ', ' ',
    ' ', ' ', ' ',
    ' ', ' ', ' '),
  cambiarE(s2),
writeln('r1 multiVision to right').

r3(m3, move(right)):-
  multiVision(
    '#', '#', '#',
    '+', ' ', ' ',
    ' ', ' ', ' '),
  writeln('r3 multiVision to right').

r3(m3, move(up)):-
  multiVision(
    ' ', '.', '.',
    ' ', ' ', '.',
    ' ', '.', '<');
  multiVision(
    ' ', '.', ' ',
    ' ', ' ', '.',
    '.', '.', '<'),
  writeln('r3 multiVision to up').
r3(m3, move(up)):-
  multiVision(
    ' ', ' ', '.',
    ' ', ' ', ' ',
    '#', '#', '#'),
  cambiarE(s3),
  writeln('r3 multiVision to up').

r3(m3,move(right)):-
  multiVision(
    '#', '#', '#',
    ' ', ' ', '.',
    ' ', '.', '.');
  multiVision(
    '#', '#', '#',
    ' ', ' ', ' ',
    '.', '.', '.');
  multiVision(
    '#', '#', '#',
    ' ', ' ', '.',
    '.', '.', '.');
  multiVision(
    ' ', 'E', '.',
    '.', ' ', '.',
    '.', '.', '.'),
  writeln('r3 multiVision to right').

%! ===== Fin SubReglas INICIO personalizadas por mapa ========

doit(get(DIR)) :-
  validDir(DIR),
  vision(DIR, OBJ), 
  validObjects(OBJ), 
  write('get '), write(OBJ), write(' from '), writeln(DIR).

doit(use(DIR)) :-
  validDir(DIR), 
  vision(DIR, Obstacle), 
  open(Obstacle),
  write('open '), write(Obstacle), write(' to '), writeln(DIR).

doit(drop(DIR)) :-
  validDir(DIR),
  vision(DIR, OBJ),
  dropIn(OBJ),
  write('DROP into'), write(OBJ), write(' '), writeln(DIR).

doit(use(Spell, DIR)) :-
  validDir(DIR), 
  vision(DIR, Obstacle), 
  validSpellingObjects(Obstacle, Spell),
  write('open '), write(Obstacle), write(' to '), write(DIR), write(' spelling '), writeln(Spell).

doit(move(DIR)) :- 
  validDir(DIR),
  vision(DIR, '.'), 
  write('move '), writeln(DIR).

%% ===== SubReglas FIN personalizadas por mapa ============
%% vision
%% widevision
%% multivision

r1(inicio, move(right)):-
  multiVision(
    '#', '#', '#',
    ' ', ' ', ' ',
    ' ', ' ', '.'),
  writeln('r1 inicio, multiVision to right').

r1(s1,move(left)):-
  multiVision(
    ' ', '#', '#',
    ' ', ' ', ' ',
    ' ', ' ', ' ');
  multiVision(
    ' ', ' ', '#',
    ' ', ' ', ' ',
    ' ', ' ', ' ');
  multiVision(
    ' ', ' ', ' ',
    ' ', ' ', ' ',
    '.', ' ', ' '),
  writeln('r1 multiVision to left').

r1(s2, move(left)):-
  multiVision(
    ' ', ' ', ' ',
    ' ', ' ', ' ',
    ' ', ' ', ' '),
  writeln('r2 multiVision to left').

r1(s2, move(down)):-
  multiVision(
    '#', ' ', '.',
    '#', ' ', ' ',
    '#', ')', '.'),
  writeln('r2 multiVision to down').

r1(s2, move(up)):-
  multiVision(
    ' ', ' ', ' ',
    ' ', ' ', ' ',
    '#', '#', '#'),
  cambiarE(m3),
  writeln('r1 multiVision to up').

r1(m3, move(left)):-
  multiVision(
    ' ', '#', '#',
    ' ', ' ', ' ',
    ' ', ' ', ' '),
  writeln('r1 multiVision to left').

r1(m3, move(up)):-
  multiVision(
    ' ', ' ', '#',
    ' ', ' ', ' ',
    ' ', ' ', ' ');
  multiVision(
    '#', ' ', '.',
    '#', ' ', ' ',
    '#', ')', '>'),
  writeln('r1 multiVision to up').

r1(m3, move(down)):-
  multiVision(
    '#', '#', '#',
    ' ', ' ', ' ',
    ' ', ' ', '.'),
  writeln('r2 multiVision to down').

r1(s3, move(right)):-
  vision(right, ' '),
  writeln('r1 multiVision to right').


r2(inicio, move(up)):-
  multiVision(
    ' ', ' ', '#',
    ' ', ' ', '#',
    ' ', ' ', '#'),
  writeln('r2 multiVision to up').

r2(inicio, move(left)):-
  multiVision(
    '#', '#', '#',
    ' ', ' ', '#',
    ' ', ' ', '#');
  multiVision(
    '#', '#', '#',
    ' ', ' ', ' ',
    ' ', ' ', ' '),
  writeln('r2 multiVision to up').

r2(inicio, drop(left)):-
  multiVision(
    '#', '#', '#',
    ' ', ' ', ' ',
    '#', ' ', ' '),
  cambiarE(m1),
  writeln('r2 multiVision to left').

r2(s1, move(left)):-
  multiVision(
    '#', '#', '#',
    ' ', ' ', ' ',
    ' ', ' ', ' '),
  writeln('r2 multiVision to left').

r2(s1, move(down)):-
  multiVision(
    '#', '#', '#',
    '#', ' ', ' ',
    '.', ' ', ' '),
  writeln('r2 multiVision to down').

r2(s1, move(right)):-
  multiVision(
    ' ', '#', ' ',
    '#', ' ', ' ',
    ' ', '#', ' '),
  writeln('r2 multiVision to right').

r2(s1, drop(left)):-
  multiVision(
    '#', ' ', ' ',
    ' ', ' ', ' ',
    '#', ' ', ' '),
  cambiarE(m2),
  writeln('r2 multiVision to left jeje').

r2(m3, drop(left)):-
  multiVision(
    '#', '#', '#',
    ' ', ' ', ' ',
    ' ', ' ', ' '),
  writeln('r2 multiVision to left').

%% ===== Fin SubReglas FIN personalizadas por mapa ========
donone(move(none)).