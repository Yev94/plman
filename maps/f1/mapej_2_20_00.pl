load_behaviour(entitySequentialMovement).

map_format_version(1.1).
map([
'########################################################',
'# .....................................................#',
'#....#####...#.........#.......#...#######...#....#....#',
'#....#    #..#.........###...###...#     #...##...#....#',
'#....#####...#.........#########...#######...#.##.#....#',
'#....#.......#.........#.......#...#.....#...#..#.#....#',
'#....#.......#.........#.......#...#.....#...#....#....#',
'#....#.......########..#.......#...#.....#...#....#....#',
'#......................................................#',
'########################################################'
]).
map_size(57, 10).
num_dots(333).
pacman_start(1, 1).
initMap:-
 	addSolidObject('#').


norule(_). 