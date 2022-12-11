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
  CHAR = n;
  CHAR = o;
  CHAR = p;
  CHAR = l;
  CHAR = w;
  CHAR = '!';
  CHAR = '¬'.

open(Obstacle):-
  havingObject(appearance(a)), Obstacle = '_';
  havingObject(appearance(a)), Obstacle = '-';
  havingObject(appearance(a)), Obstacle = '|';
  havingObject(appearance(n)), Obstacle = '-';
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

%%..............Inicio Cambio de estados.................

% Definir una variable "contador" inicialmente en 0
:- dynamic disparo/1.
disparo(0).

incrementarDisparo:-
  disparo(D),
  retractall(disparo(D)),
  NuevoD is D + 1,
  asserta(disparo(NuevoD)).

mostrarDisparo:-
disparo(D),
write('El valor del disparo es: '), writeln(D).


%%................Fin Cambio de estados.................


%? ========= Reglas INICIO personalizadas por Objeto =========
%* --------- inicio Reglas INICIO Personalizadas ---------
%* doact

do(ACT) :-
  disparo(D),
  D < 3,
  (havingObject(appearance(l))),
  r1(ACT).

%* --------- fin Reglas INICIO Personalizadas -----------
do(ACT) :- doit(ACT). %==================================
%* --------- inicio Reglas FIN Personalizadas -----------
%* doact


%* --------- fin Reglas FIN Personalizadas --------------
do(ACT) :- donone(ACT). %=================================
%? ====== Fin Reglas INICIO personalizadas por Objeto ========

%! ======= SubReglas INICIO personalizadas por mapa ==========
%! vision
%! widevision
%! multiVision

r1(use(right)):-
  incrementarDisparo,
  mostrarDisparo,
  writeln('r1 use to right').


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

%% ===== SubReglas FIN personalizadas por mapa ============
%% vision
%% widevision
%% multivision


%% ===== Fin SubReglas FIN personalizadas por mapa ========
donone(move(none)).