%prueba1

map_format_version(1.1).
map([
'##############',
'#.........   #',
'#...####..   #',
'#.......#....#',
'#.......#....#',
'#.......#....#',
'#.......#....#',
'#.......#....#',
'#.......#....#',
'#.......#....#',
'#.......#....#',
'##############'
]).
map_size(14, 12).
num_dots(102).
pacman_start(12, 1).
initMap:-
 	addSolidObject('#').


norule(_). 
