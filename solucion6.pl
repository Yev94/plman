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

validDir(DIR):- 
  DIR = down; 
  DIR = up; 
  DIR = right; 
  DIR = left.

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


%%..............Inicio Cambio de estados.................
%/ Diferenciar secciones Puertas, balas, llaves
%/ Diferenciar de cuando voy a la irDcha y a la izq

:- dynamic estado/2.
estado(irDcha, sPuertas).

:- dynamic inicio/1.
inicio(0).

:-dynamic puerta1/1.
:-dynamic puerta2/1.
:-dynamic puerta3/1.
puerta1(noProbada).
puerta2(noProbada).
puerta3(noProbada).

cambiarI(EST) :- 
  retractall(inicio(_)), 
  assert(inicio(EST)).

cambiarE(EST, SEC) :- 
  retractall(estado(_, _)), 
  assert(estado(EST, SEC)).

cambiarP1(EST) :- 
  retractall(puerta1(_)), 
  assert(puerta1(EST)).
cambiarP2(EST) :- 
  retractall(puerta2(_)), 
  assert(puerta2(EST)).
cambiarP3(EST) :- 
  retractall(puerta3(_)), 
  assert(puerta3(EST)).

%%................Fin Cambio de estados.................


%? ========= Reglas INICIO personalizadas por Objeto =========
%! --------- inicio Reglas INICIO Personalizadas ---------
%! doact

do(ACT) :- 
  estado(EST, SEC), 
  not(havingObject(appearance(_))), 
  r1(EST, SEC, ACT), 
  write('Estado '), write(EST), 
  write(' en '), writeln(SEC).


%! --------- fin Reglas INICIO Personalizadas -----------
do(ACT) :- doit(ACT).
%% --------- inicio Reglas FIN Personalizadas -----------
%% doact

do(ACT) :- 
  estado(EST, SEC), 
  not(havingObject(appearance(_))), 
  r2(EST, SEC, ACT), 
  write('Estado '), write(EST), 
  write(' en '), writeln(SEC).

do(ACT) :- 
  estado(EST, SEC), 
  (havingObject(appearance(_))), 
  r3(EST, SEC, ACT), 
  write('Estado '), write(EST), 
  write(' en '), writeln(SEC).

do(ACT) :- 
  estado(EST, SEC), 
  not(havingObject(appearance(_))), 
  r4(EST, SEC, ACT), 
  write('Estado '), write(EST), 
  write(' en '), writeln(SEC).


%% --------- fin Reglas FIN Personalizadas --------------
do(ACT) :- donone(ACT). 
%? ====== Fin Reglas INICIO personalizadas por Objeto ========

%! ======= SubReglas INICIO personalizadas por mapa ==========
%! vision
%! widevision
%! multiVision

r1(irDcha, sBalas, move(none)):-
  visionRight(
    /**//**/'|',
    /**/' ',' ',
    /**//**/' ');
  visionRight(
    /**//**/' ',
    /**/' ','|',
    /**//**/' ');
  visionRight(
    /**//**/' ',
    /**/' ',' ',
    /**//**/'|'),
  writeln('r1 visionRight to none').

r1(irDcha, sPuertas, move(right)):-
  multiVision(
     _ , '#', ' ',
     _ , ' ', ' ',
     _ , '#', ' '),
  cambiarE(irDcha, sBalas),
  writeln('r1 multiVision to right').   

r1(irDcha, sBalas, move(right)):-
  not(multiVision(
     _ , '#',  _ ,
     _ , ' ',  _ ,
     _ , '#',  _ )),
  writeln('r1 multiVision to right').

r1(irDcha, sBalas, move(right)):-
  multiVision(
    _ , '#',  _ ,
    _ , ' ',  _ ,
    _ , '#',  _ ),
  inicio(I),
  I = 0,
  cambiarE(cmrArriba, sLlaves),
  writeln('r visionRight to right').

r1(irDcha, sBalas, move(right)):-
  multiVision(
    _ , '#',  _ ,
    _ , ' ',  _ ,
    _ , '#',  _ ),
  inicio(I),
  I = 1,
  cambiarE(bLlaveUp, sLlaves),
  writeln('r visionRight to right jeje').

r1(cmrArriba, sLlaves, move(up)):-
  not(multiVision(
    '#', '#', '#',
    '#',  _ , '#',
    '#',  _ , '#')),
  cambiarI(1),
  writeln('r1 multiVision to up').

r1(cmrArriba, sLlaves, move(down)):-
  multiVision(
    '#', '#', '#',
    '#',  _ , '#',
    '#',  _ , '#'),
    cambiarE(cmrAbajo, sLlaves),
  writeln('r multiVision to ').

r1(cmrAbajo, sLlaves, move(down)):-
  not(multiVision(
    '#',  _ , '#',
    '#',  _ , '#',
    '#', '#', '#')),
  writeln('r1 multiVision to down').

r1(cmrAbajo, sLlaves, move(up)):-
  multiVision(
    '#',  _ , '#',
    '#',  _ , '#',
    '#', '#', '#'),
  cambiarE(irIzq, sLlaves),
  writeln('r2 multiVision to down').

%! ===== Fin SubReglas INICIO personalizadas por mapa ========

doit(get(DIR)) :-
  not(havingObject),
  vision(DIR, OBJ), 
  validObjects(OBJ), 
  validDir(DIR),
  cambiarE(irIzq, sLlaves),
  write('get '), write(OBJ), write(' from '), writeln(DIR).

doit(drop(DIR)) :-
  vision(DIR, OBJ),
  validDir(DIR),
  dropIn(OBJ),
  write('DROP into'), write(OBJ), write(' '), writeln(DIR).

doit(use(Spell, DIR)) :-
  vision(DIR, Obstacle), 
  validDir(DIR), 
  validSpellingObjects(Obstacle, Spell),
  write('open '), write(Obstacle), write(' to '), write(DIR), write(' spelling '), writeln(Spell).

doit(move(DIR)) :- 
  vision(DIR, '.'), 
  validDir(DIR),
  write('move '), writeln(DIR).

doit(use(DIR)) :-
  multiVision(
    '#', ' ', ' ',
    '|', ' ', ' ',
    '#', '#', '#'),
  vision(DIR, Obstacle), 
  validDir(DIR), 
  puerta1(P),
  P = noProbada,
  open(Obstacle),
  cambiarP1(probada),
  cambiarE(irIzq, sPuertas),
  write('open '), write(Obstacle), write(' to '), writeln(DIR).

doit(use(DIR)) :-
  multiVision(
    '#', ' ', ' ',
    '|', ' ', ' ',
    '#', ' ', ' '),
  vision(DIR, Obstacle), 
  validDir(DIR), 
  puerta2(P),
  P = noProbada,
  open(Obstacle),
  cambiarP2(probada),
  cambiarE(irIzq, sPuertas),
  write('open '), write(Obstacle), write(' to '), writeln(DIR).

doit(use(DIR)) :-
  multiVision(
    '#', '#', '#',
    '|', ' ', ' ',
    '#', ' ', ' '),
  vision(DIR, Obstacle), 
  validDir(DIR), 
  puerta3(P),
  P = noProbada,
  open(Obstacle),
  cambiarP3(probada),
  cambiarE(irIzq, sPuertas),
  write('open '), write(Obstacle), write(' to '), writeln(DIR).

%% ===== SubReglas FIN personalizadas por mapa ============
%% vision
%% widevision
%% multivision

r2(irIzq, sLlaves, move(up)):-
  multiVision(
    ' ',  _ , '#',
    '#',  _ , '#',
    '#',  _ , '#');
  multiVision(
    '#',  _ , '#',
    ' ',  _ , '#',
    '#',  _ , '#'),
  writeln('r2 multiVision to up').

r2(irIzq, sPuertas, move(right)):-
  multiVision(
    '#', '#', '#',
    '#', ' ', ' ',
    '#', '#', '#'),
  writeln('r2 multiVision to right').

r2(irIzq, sPuertas, move(right)):-
  multiVision(
    '#', '#', ' ',
    ' ', ' ', ' ',
    '#', '#', ' '),
  cambiarE(irUp, sPuertas),
  cambiarP1(noProbada),
  cambiarP2(noProbada),
  cambiarP3(noProbada),
  writeln('r2 multiVision to right jeje').
r2(irIzq, sPuertas, move(right)):-
  multiVision(
    '#', '#', '#',
    ' ', ' ', ' ',
    '#', '#', ' '),
  cambiarE(irUp, sPuertas),
  cambiarP1(noProbada),
  cambiarP2(noProbada),
  cambiarP3(noProbada),
  writeln('r2 multiVision to right jeje').
r2(irIzq, sPuertas, move(right)):-
  multiVision(
    '#', '#', ' ',
    ' ', ' ', ' ',
    '#', '#', '#'),
  cambiarE(irUp, sPuertas),
  cambiarP1(noProbada),
  cambiarP2(noProbada),
  cambiarP3(noProbada),
  writeln('r2 multiVision to right jeje').

r2(irUp, sPuertas, move(up)):-
  not(visionUp(
    '#','#','#',
    /**/' ' /**/
    /**//**//**/)),
  writeln('r visionUp to ').

r2(irUp, sPuertas, move(right)):-
  visionUp(
    '#','#','#',
    /**/' ' /**/
    /**//**//**/),
  cambiarE(irDownLeft, sPuertas),
  writeln('r visionUp to ').

r2(irDownLeft, sPuertas, move(right)):-
  not(wideVisionUpRight(
    '#','#','#',
    /**/' ','#',
    /**//**/'#')),
  writeln('r visionUp to ').
  
r2(irDownLeft, sPuertas, move(down)):-
  wideVisionUpRight(
    '#','#','#',
    /**/' ','#',
    /**//**/'#'),
  cambiarE(irDown, sPuertas),
  writeln('r visionUp to ').

r2(irDown, sPuertas, move(down)):-
  multiVision(
    ' ', ' ', '#',
    ' ', ' ', '#',
    ' ', ' ', ' '),
  writeln('r2 multiVision to down').

r2(irDown, sPuertas, move(right)):-
  multiVision(
    ' ', ' ', '#',
    ' ', ' ', ' ',
    ' ', ' ', '#'),
  cambiarE(irDcha, sPuertas),
  writeln('r2 multiVision to right').

r3(irIzq, sLlaves, move(up)):-
  multiVision(
    ' ',  _ , '#',
    '#',  _ , '#',
    '#',  _ , '#'),
  writeln('r3 multiVision to up').

r3(irIzq, sLlaves, move(down)):-
  multiVision(
    '#',  _ , '#',
    '#',  _ , '#',
    ' ',  _ , '#'),
  writeln('r3 multiVision to up').

r3(irIzq, sLlaves, move(left)):-
  multiVision(
    '#',  _ , '#',
    ' ',  _ , '#',
    '#',  _ , '#'),
  writeln('r3 multiVision to left').


r3(irIzq, sBalas, move(none)):-
  visionLeft(
    '|', /**//**/
    ' ', ' '/**/,
    ' ' /**//**/);
  visionLeft(
    ' ', /**//**/
    '|', ' '/**/,
    ' ' /**//**/);
  visionLeft(
    ' ', /**//**/
    ' ', ' '/**/,
    '|' /**//**/),
  writeln('r3 visionLeft to none').

r3(irIzq, sLlaves, move(left)):-
  multiVision(
    ' ', '#',  _ ,
    ' ', ' ',  _ ,
    ' ', '#',  _ ),
  cambiarE(irIzq, sBalas),
  writeln('r3 multiVision to left').

r3(irIzq, sBalas, move(left)):-
  not(multiVision(
    _ , '#',  _ ,
    _ , ' ',  _ ,
    _ , '#',  _ )),
  writeln('r3 multiVision to left').

r3(irIzq, sBalas, move(left)):-
  multiVision(
    _ , '#',  _ ,
    _ , ' ',  _ ,
    _ , '#',  _ ),
  cambiarE(irIzq, sPuertas),
  writeln('r3 multiVision to left').

r3(irIzq, sPuertas, move(down)):-
  multiVision(
    ' ', ' ', '#',
    ' ', ' ', ' ',
    ' ', ' ', '#');
  multiVision(
    ' ', ' ', ' ',
    ' ', ' ', '#',
    ' ', ' ', '#'),
  writeln('r3 multiVision to down').

r3(irIzq, sPuertas, move(left)):-
  multiVision(
    ' ', ' ', '#',
    ' ', ' ', '#',
    '#', '#', '#');
  multiVision(
    ' ', ' ', ' ',
    ' ', ' ', ' ',
    '#', '#', '#'),
  writeln('r3 multiVision to left').

r3(irIzq, sPuertas, move(up)):-
  multiVision(
    '#', ' ', ' ',
     _ , ' ', ' ',
    '#', '#', '#');
  multiVision(
     _ , ' ', ' ',
    '#' , ' ', ' ',
     _ , ' ', ' ');
    multiVision(
    '#', ' ', ' ',
     _ , ' ', ' ',
    '#', ' ', ' '),
  writeln('r3 multiVision to up').

r4(irDcha, sBalas, move(right)):-
  multiVision(
     _ , '#',  _ ,
     _ , ' ',  _ ,
     _ , '#',  _ ),
  cambiarE(bLlaveUp, sLlaves),
  writeln('r4 multiVision to right').

r4(bLlaveUp, sLlaves, move(up)):-
  multiVision(
    '#', ' ', '#',
    ' ',  _ , '#',
    '#', ' ', '#'),
  writeln('r4 multiVision to up').

r4(bLlaveUp, sLlaves, move(down)):-
  multiVision(
    '#', ' ', '#',
    '#',  _ , '#',
    ' ', ' ', '#'),
    cambiarE(bLlaveDown, sLlaves),
    writeln('r4 multiVision to up').
  
r4(bLlaveDown, sLlaves, move(down)):-
  multiVision(
    '#', ' ', '#',
    ' ',  _ , '#',
    '#', ' ', '#'),
  writeln('r4 multiVision to up').

%% ===== Fin SubReglas FIN personalizadas por mapa ========
donone(move(none)).