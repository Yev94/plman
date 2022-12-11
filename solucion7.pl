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
zigZag(zUpLeft, zDown, left).
zigZag(zDown, zDownLeft, down).
zigZag(zDownLeft, zUp, left).
zigZag(zUp, zUpLeft, up).

%%..............Inicio Cambio de estados.................
%/ Que compruebe el número y que lo guarde 
%/ Que coja la llave correcta
:-dynamic llaveCorrecta/1.
llaveCorrecta(n).

guardarLlave(Z):-
  retractall(llaveCorrecta(_)),
  assert(llaveCorrecta(Z)).

:-dynamic estado/1.
estado(inicio).

cambiarE(E):-
  retractall(estado(_)),
  assert(estado(E)).

:- dynamic contador/1.
contador(0).

incrementarContador:-
  contador(C),
  retractall(contador(C)),
  NuevoC is C + 1,
  asserta(contador(NuevoC)).

mostrarContador:-
contador(C),
write('El valor del contador es: '), writeln(C).

%%................Fin Cambio de estados.................


%? ========= Reglas INICIO personalizadas por Objeto =========
%! --------- inicio Reglas INICIO Personalizadas ---------
%! doact

do(ACT) :-
  contador(C),
  C = 0,
  r0(ACT).

do(ACT) :-
  estado(EST),
  r1(EST, ACT),
  write('Estado '), writeln(EST).


%! --------- fin Reglas INICIO Personalizadas -----------
do(ACT) :- doit(ACT).
%% --------- inicio Reglas FIN Personalizadas -----------
%% doact

do(ACT) :-
  estado(EST),
  r2(EST, ACT).

%% --------- fin Reglas FIN Personalizadas --------------
do(ACT) :- donone(ACT). 
%? ====== Fin Reglas INICIO personalizadas por Objeto ========

%! ======= SubReglas INICIO personalizadas por mapa ==========
%! vision
%! widevision
%! multiVision

r0(get(DIR)) :-
  see(normal, DIR, OBJ), 
  not(havingObject),
  llaveCorrecta(OBJ),
  validDir(DIR),
  not(visionDown(
    /**//**//**/
    /**/ _ /**/,
    '+', OBJ,'#')),
  not(visionDown(
    /**//**//**/
    /**/ _ /**/,
    '#', OBJ,'+')),
  write('get '), write(OBJ), write(' from '), writeln(DIR).

r1(inicio, move(up)):-
  visionDown(
    /**//**//**/
    /**/ _ /**/,
     X ,'+', Y),
  Z is X + Y,
  guardarLlave(Z),
  cambiarE(zUpLeft),
  write('La llave es '), writeln(Z), 
  writeln('r1 move to right').

r1(zDownLeft, move(up)):-
  wideVisionDownLeft(
    '#' /**//**/,
    '#',  _ /**/,
    '#', '#','#'),
  cambiarE(goDoorUp),
  writeln('r1 wideVisionDownLeft to up').

r1(CUR, move(DIR)):-
  zigZag(CUR, NEX, DIR),
  cambiarE(NEX),
write('r1 multiVision to '), writeln(CUR).

r1(goDoorUp, move(up)):-
  not(wideVisionUpLeft(
    '#', '#','#',
    '#',  _ /**/,
    '#' /**//**/)),
  writeln('r1 wideVisionUpLeft to up').

r1(goDoorUp, move(right)):-
  wideVisionUpLeft(
    '#', '#','#',
    '#',  _ /**/,
    '#' /**//**/),
  cambiarE(goDoorRight),
  writeln('r1 wideVisionUpLeft to up').

r1(goDoorRight, move(right)):-
  not(wideVisionUpRight(
    '#','#','#',
    /**/ _ ,'#',
    /**//**/'#')),
  writeln('r1 wideVisionUpRight to right').

r1(goDoorRight, move(down)):-
  wideVisionUpRight(
    '#','#','#',
    /**/ _ ,'#',
    /**//**/'#'),
    cambiarE(goDoorDown),
  writeln('r1 wideVisionUpRight to right').


r1(goDoorDown, move(down)):-
  not(visionDown(
    /**//**//**/
    /**/ _ /**/,
    '+', _ ,'#')),
  writeln('r visionDown to down').

r1(goDoorDown, move(left)):-
  visionDown(
    /**//**//**/
    /**/ _ /**/,
    '+', _ ,'#'),
  cambiarE(abirPuerta),
  writeln('r1 visionDown to down').

r1(abirPuerta, use(down)) :-
  see(normal, down, '+'), 
  cambiarE(p1Pistola),
  writeln('Open Door to Down').


%! ===== Fin SubReglas INICIO personalizadas por mapa ========

doit(get(DIR)) :-
  vision(DIR, OBJ), 
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

% doit(move(DIR)) :- 
%   see(normal, DIR, '.'), 
%   validDir(DIR),
%   write('move '), writeln(DIR).

%% ===== SubReglas FIN personalizadas por mapa ============
%% vision
%% widevision
%% multivision

r2(p1Pistola, drop(up)):-
  contador(D),
  D = 0,
  incrementarContador,
  writeln('r1 multiVision to ').

r2(p1Pistola, move(down)):-
  contador(D),
  D < 4,
  incrementarContador,
  writeln('r1 multiVision to ').

r2(p1Pistola, move(right)):-
  not(vision(right, '#')),
  writeln('r2 vision to right').

r2(p1Pistola, move(left)):-
  (vision(right, '#')),
  cambiarE(p2Pistola),
  writeln('r2 vision to left').


r2(p2Pistola, move(left)):-
  not(vision(left, '#')),
  writeln('r2 vision to left').

r2(p2Pistola, move(down)):-
  (vision(left, '#')),
  cambiarE(p3Pistola),
  writeln('r2 vision to down').

r2(p3Pistola, move(down)):-
  not(vision(down, '#')),
  writeln('r2 vision to down').

r2(p3Pistola, use(right)):-
  (vision(down, '#')),
  cambiarE(termina),
  writeln('r2 vision to right').

r2(termina, move(right)):-
  not(vision(right, '#')),
  writeln('r2 vision to right').


%% ===== Fin SubReglas FIN personalizadas por mapa ========
donone(move(none)).


