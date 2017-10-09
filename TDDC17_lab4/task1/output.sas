begin_version
3
end_version
begin_metric
0
end_metric
12
begin_variable
var0
-1
2
Atom at(truck5, bay3)
Atom at(truck5, office5)
end_variable
begin_variable
var1
-1
2
Atom at(truck4, airport4)
Atom at(truck4, office4)
end_variable
begin_variable
var2
-1
2
Atom at(truck3, airport3)
Atom at(truck3, office3)
end_variable
begin_variable
var3
-1
3
Atom at(truck2, airport2)
Atom at(truck2, bay2)
Atom at(truck2, office2)
end_variable
begin_variable
var4
-1
3
Atom at(truck1, airport1)
Atom at(truck1, bay1)
Atom at(truck1, office1)
end_variable
begin_variable
var5
-1
3
Atom at(ship1, bay1)
Atom at(ship1, bay2)
Atom at(ship1, bay3)
end_variable
begin_variable
var6
-1
12
Atom at(packet5, airport1)
Atom at(packet5, airport2)
Atom at(packet5, bay1)
Atom at(packet5, bay2)
Atom at(packet5, bay3)
Atom at(packet5, office1)
Atom at(packet5, office2)
Atom at(packet5, office5)
Atom in(packet5, ship1)
Atom in(packet5, truck1)
Atom in(packet5, truck2)
Atom in(packet5, truck5)
end_variable
begin_variable
var7
-1
4
Atom at(airplane1, airport1)
Atom at(airplane1, airport2)
Atom at(airplane1, airport3)
Atom at(airplane1, airport4)
end_variable
begin_variable
var8
-1
19
Atom at(packet4, airport1)
Atom at(packet4, airport2)
Atom at(packet4, airport3)
Atom at(packet4, airport4)
Atom at(packet4, bay1)
Atom at(packet4, bay2)
Atom at(packet4, bay3)
Atom at(packet4, office1)
Atom at(packet4, office2)
Atom at(packet4, office3)
Atom at(packet4, office4)
Atom at(packet4, office5)
Atom in(packet4, airplane1)
Atom in(packet4, ship1)
Atom in(packet4, truck1)
Atom in(packet4, truck2)
Atom in(packet4, truck3)
Atom in(packet4, truck4)
Atom in(packet4, truck5)
end_variable
begin_variable
var9
-1
19
Atom at(packet3, airport1)
Atom at(packet3, airport2)
Atom at(packet3, airport3)
Atom at(packet3, airport4)
Atom at(packet3, bay1)
Atom at(packet3, bay2)
Atom at(packet3, bay3)
Atom at(packet3, office1)
Atom at(packet3, office2)
Atom at(packet3, office3)
Atom at(packet3, office4)
Atom at(packet3, office5)
Atom in(packet3, airplane1)
Atom in(packet3, ship1)
Atom in(packet3, truck1)
Atom in(packet3, truck2)
Atom in(packet3, truck3)
Atom in(packet3, truck4)
Atom in(packet3, truck5)
end_variable
begin_variable
var10
-1
19
Atom at(packet2, airport1)
Atom at(packet2, airport2)
Atom at(packet2, airport3)
Atom at(packet2, airport4)
Atom at(packet2, bay1)
Atom at(packet2, bay2)
Atom at(packet2, bay3)
Atom at(packet2, office1)
Atom at(packet2, office2)
Atom at(packet2, office3)
Atom at(packet2, office4)
Atom at(packet2, office5)
Atom in(packet2, airplane1)
Atom in(packet2, ship1)
Atom in(packet2, truck1)
Atom in(packet2, truck2)
Atom in(packet2, truck3)
Atom in(packet2, truck4)
Atom in(packet2, truck5)
end_variable
begin_variable
var11
-1
19
Atom at(packet1, airport1)
Atom at(packet1, airport2)
Atom at(packet1, airport3)
Atom at(packet1, airport4)
Atom at(packet1, bay1)
Atom at(packet1, bay2)
Atom at(packet1, bay3)
Atom at(packet1, office1)
Atom at(packet1, office2)
Atom at(packet1, office3)
Atom at(packet1, office4)
Atom at(packet1, office5)
Atom in(packet1, airplane1)
Atom in(packet1, ship1)
Atom in(packet1, truck1)
Atom in(packet1, truck2)
Atom in(packet1, truck3)
Atom in(packet1, truck4)
Atom in(packet1, truck5)
end_variable
0
begin_state
1
1
1
0
0
0
5
0
10
9
8
7
end_state
begin_goal
5
6 7
8 7
9 10
10 9
11 8
end_goal
306
begin_operator
drive truck1 airport1 bay1 city1
0
1
0 4 0 1
1
end_operator
begin_operator
drive truck1 airport1 office1 city1
0
1
0 4 0 2
1
end_operator
begin_operator
drive truck1 bay1 airport1 city1
0
1
0 4 1 0
1
end_operator
begin_operator
drive truck1 bay1 office1 city1
0
1
0 4 1 2
1
end_operator
begin_operator
drive truck1 office1 airport1 city1
0
1
0 4 2 0
1
end_operator
begin_operator
drive truck1 office1 bay1 city1
0
1
0 4 2 1
1
end_operator
begin_operator
drive truck2 airport2 bay2 city2
0
1
0 3 0 1
1
end_operator
begin_operator
drive truck2 airport2 office2 city2
0
1
0 3 0 2
1
end_operator
begin_operator
drive truck2 bay2 airport2 city2
0
1
0 3 1 0
1
end_operator
begin_operator
drive truck2 bay2 office2 city2
0
1
0 3 1 2
1
end_operator
begin_operator
drive truck2 office2 airport2 city2
0
1
0 3 2 0
1
end_operator
begin_operator
drive truck2 office2 bay2 city2
0
1
0 3 2 1
1
end_operator
begin_operator
drive truck3 airport3 office3 city3
0
1
0 2 0 1
1
end_operator
begin_operator
drive truck3 office3 airport3 city3
0
1
0 2 1 0
1
end_operator
begin_operator
drive truck4 airport4 office4 city4
0
1
0 1 0 1
1
end_operator
begin_operator
drive truck4 office4 airport4 city4
0
1
0 1 1 0
1
end_operator
begin_operator
drive truck5 bay3 office5 city5
0
1
0 0 0 1
1
end_operator
begin_operator
drive truck5 office5 bay3 city5
0
1
0 0 1 0
1
end_operator
begin_operator
fly airplane1 airport1 airport2
0
1
0 7 0 1
1
end_operator
begin_operator
fly airplane1 airport1 airport3
0
1
0 7 0 2
1
end_operator
begin_operator
fly airplane1 airport1 airport4
0
1
0 7 0 3
1
end_operator
begin_operator
fly airplane1 airport2 airport1
0
1
0 7 1 0
1
end_operator
begin_operator
fly airplane1 airport2 airport3
0
1
0 7 1 2
1
end_operator
begin_operator
fly airplane1 airport2 airport4
0
1
0 7 1 3
1
end_operator
begin_operator
fly airplane1 airport3 airport1
0
1
0 7 2 0
1
end_operator
begin_operator
fly airplane1 airport3 airport2
0
1
0 7 2 1
1
end_operator
begin_operator
fly airplane1 airport3 airport4
0
1
0 7 2 3
1
end_operator
begin_operator
fly airplane1 airport4 airport1
0
1
0 7 3 0
1
end_operator
begin_operator
fly airplane1 airport4 airport2
0
1
0 7 3 1
1
end_operator
begin_operator
fly airplane1 airport4 airport3
0
1
0 7 3 2
1
end_operator
begin_operator
load packet1 airplane1 airport1
1
7 0
1
0 11 0 12
1
end_operator
begin_operator
load packet1 airplane1 airport2
1
7 1
1
0 11 1 12
1
end_operator
begin_operator
load packet1 airplane1 airport3
1
7 2
1
0 11 2 12
1
end_operator
begin_operator
load packet1 airplane1 airport4
1
7 3
1
0 11 3 12
1
end_operator
begin_operator
load packet1 ship1 bay1
1
5 0
1
0 11 4 13
1
end_operator
begin_operator
load packet1 ship1 bay2
1
5 1
1
0 11 5 13
1
end_operator
begin_operator
load packet1 ship1 bay3
1
5 2
1
0 11 6 13
1
end_operator
begin_operator
load packet1 truck1 airport1
1
4 0
1
0 11 0 14
1
end_operator
begin_operator
load packet1 truck1 bay1
1
4 1
1
0 11 4 14
1
end_operator
begin_operator
load packet1 truck1 office1
1
4 2
1
0 11 7 14
1
end_operator
begin_operator
load packet1 truck2 airport2
1
3 0
1
0 11 1 15
1
end_operator
begin_operator
load packet1 truck2 bay2
1
3 1
1
0 11 5 15
1
end_operator
begin_operator
load packet1 truck2 office2
1
3 2
1
0 11 8 15
1
end_operator
begin_operator
load packet1 truck3 airport3
1
2 0
1
0 11 2 16
1
end_operator
begin_operator
load packet1 truck3 office3
1
2 1
1
0 11 9 16
1
end_operator
begin_operator
load packet1 truck4 airport4
1
1 0
1
0 11 3 17
1
end_operator
begin_operator
load packet1 truck4 office4
1
1 1
1
0 11 10 17
1
end_operator
begin_operator
load packet1 truck5 bay3
1
0 0
1
0 11 6 18
1
end_operator
begin_operator
load packet1 truck5 office5
1
0 1
1
0 11 11 18
1
end_operator
begin_operator
load packet2 airplane1 airport1
1
7 0
1
0 10 0 12
1
end_operator
begin_operator
load packet2 airplane1 airport2
1
7 1
1
0 10 1 12
1
end_operator
begin_operator
load packet2 airplane1 airport3
1
7 2
1
0 10 2 12
1
end_operator
begin_operator
load packet2 airplane1 airport4
1
7 3
1
0 10 3 12
1
end_operator
begin_operator
load packet2 ship1 bay1
1
5 0
1
0 10 4 13
1
end_operator
begin_operator
load packet2 ship1 bay2
1
5 1
1
0 10 5 13
1
end_operator
begin_operator
load packet2 ship1 bay3
1
5 2
1
0 10 6 13
1
end_operator
begin_operator
load packet2 truck1 airport1
1
4 0
1
0 10 0 14
1
end_operator
begin_operator
load packet2 truck1 bay1
1
4 1
1
0 10 4 14
1
end_operator
begin_operator
load packet2 truck1 office1
1
4 2
1
0 10 7 14
1
end_operator
begin_operator
load packet2 truck2 airport2
1
3 0
1
0 10 1 15
1
end_operator
begin_operator
load packet2 truck2 bay2
1
3 1
1
0 10 5 15
1
end_operator
begin_operator
load packet2 truck2 office2
1
3 2
1
0 10 8 15
1
end_operator
begin_operator
load packet2 truck3 airport3
1
2 0
1
0 10 2 16
1
end_operator
begin_operator
load packet2 truck3 office3
1
2 1
1
0 10 9 16
1
end_operator
begin_operator
load packet2 truck4 airport4
1
1 0
1
0 10 3 17
1
end_operator
begin_operator
load packet2 truck4 office4
1
1 1
1
0 10 10 17
1
end_operator
begin_operator
load packet2 truck5 bay3
1
0 0
1
0 10 6 18
1
end_operator
begin_operator
load packet2 truck5 office5
1
0 1
1
0 10 11 18
1
end_operator
begin_operator
load packet3 airplane1 airport1
1
7 0
1
0 9 0 12
1
end_operator
begin_operator
load packet3 airplane1 airport2
1
7 1
1
0 9 1 12
1
end_operator
begin_operator
load packet3 airplane1 airport3
1
7 2
1
0 9 2 12
1
end_operator
begin_operator
load packet3 airplane1 airport4
1
7 3
1
0 9 3 12
1
end_operator
begin_operator
load packet3 ship1 bay1
1
5 0
1
0 9 4 13
1
end_operator
begin_operator
load packet3 ship1 bay2
1
5 1
1
0 9 5 13
1
end_operator
begin_operator
load packet3 ship1 bay3
1
5 2
1
0 9 6 13
1
end_operator
begin_operator
load packet3 truck1 airport1
1
4 0
1
0 9 0 14
1
end_operator
begin_operator
load packet3 truck1 bay1
1
4 1
1
0 9 4 14
1
end_operator
begin_operator
load packet3 truck1 office1
1
4 2
1
0 9 7 14
1
end_operator
begin_operator
load packet3 truck2 airport2
1
3 0
1
0 9 1 15
1
end_operator
begin_operator
load packet3 truck2 bay2
1
3 1
1
0 9 5 15
1
end_operator
begin_operator
load packet3 truck2 office2
1
3 2
1
0 9 8 15
1
end_operator
begin_operator
load packet3 truck3 airport3
1
2 0
1
0 9 2 16
1
end_operator
begin_operator
load packet3 truck3 office3
1
2 1
1
0 9 9 16
1
end_operator
begin_operator
load packet3 truck4 airport4
1
1 0
1
0 9 3 17
1
end_operator
begin_operator
load packet3 truck4 office4
1
1 1
1
0 9 10 17
1
end_operator
begin_operator
load packet3 truck5 bay3
1
0 0
1
0 9 6 18
1
end_operator
begin_operator
load packet3 truck5 office5
1
0 1
1
0 9 11 18
1
end_operator
begin_operator
load packet4 airplane1 airport1
1
7 0
1
0 8 0 12
1
end_operator
begin_operator
load packet4 airplane1 airport2
1
7 1
1
0 8 1 12
1
end_operator
begin_operator
load packet4 airplane1 airport3
1
7 2
1
0 8 2 12
1
end_operator
begin_operator
load packet4 airplane1 airport4
1
7 3
1
0 8 3 12
1
end_operator
begin_operator
load packet4 ship1 bay1
1
5 0
1
0 8 4 13
1
end_operator
begin_operator
load packet4 ship1 bay2
1
5 1
1
0 8 5 13
1
end_operator
begin_operator
load packet4 ship1 bay3
1
5 2
1
0 8 6 13
1
end_operator
begin_operator
load packet4 truck1 airport1
1
4 0
1
0 8 0 14
1
end_operator
begin_operator
load packet4 truck1 bay1
1
4 1
1
0 8 4 14
1
end_operator
begin_operator
load packet4 truck1 office1
1
4 2
1
0 8 7 14
1
end_operator
begin_operator
load packet4 truck2 airport2
1
3 0
1
0 8 1 15
1
end_operator
begin_operator
load packet4 truck2 bay2
1
3 1
1
0 8 5 15
1
end_operator
begin_operator
load packet4 truck2 office2
1
3 2
1
0 8 8 15
1
end_operator
begin_operator
load packet4 truck3 airport3
1
2 0
1
0 8 2 16
1
end_operator
begin_operator
load packet4 truck3 office3
1
2 1
1
0 8 9 16
1
end_operator
begin_operator
load packet4 truck4 airport4
1
1 0
1
0 8 3 17
1
end_operator
begin_operator
load packet4 truck4 office4
1
1 1
1
0 8 10 17
1
end_operator
begin_operator
load packet4 truck5 bay3
1
0 0
1
0 8 6 18
1
end_operator
begin_operator
load packet4 truck5 office5
1
0 1
1
0 8 11 18
1
end_operator
begin_operator
loadlargepackage packet5 ship1 bay1
1
5 0
1
0 6 2 8
1
end_operator
begin_operator
loadlargepackage packet5 ship1 bay2
1
5 1
1
0 6 3 8
1
end_operator
begin_operator
loadlargepackage packet5 ship1 bay3
1
5 2
1
0 6 4 8
1
end_operator
begin_operator
loadtruck packet1 truck1 airport1
1
4 0
1
0 11 0 14
1
end_operator
begin_operator
loadtruck packet1 truck1 bay1
1
4 1
1
0 11 4 14
1
end_operator
begin_operator
loadtruck packet1 truck1 office1
1
4 2
1
0 11 7 14
1
end_operator
begin_operator
loadtruck packet1 truck2 airport2
1
3 0
1
0 11 1 15
1
end_operator
begin_operator
loadtruck packet1 truck2 bay2
1
3 1
1
0 11 5 15
1
end_operator
begin_operator
loadtruck packet1 truck2 office2
1
3 2
1
0 11 8 15
1
end_operator
begin_operator
loadtruck packet1 truck3 airport3
1
2 0
1
0 11 2 16
1
end_operator
begin_operator
loadtruck packet1 truck3 office3
1
2 1
1
0 11 9 16
1
end_operator
begin_operator
loadtruck packet1 truck4 airport4
1
1 0
1
0 11 3 17
1
end_operator
begin_operator
loadtruck packet1 truck4 office4
1
1 1
1
0 11 10 17
1
end_operator
begin_operator
loadtruck packet1 truck5 bay3
1
0 0
1
0 11 6 18
1
end_operator
begin_operator
loadtruck packet1 truck5 office5
1
0 1
1
0 11 11 18
1
end_operator
begin_operator
loadtruck packet2 truck1 airport1
1
4 0
1
0 10 0 14
1
end_operator
begin_operator
loadtruck packet2 truck1 bay1
1
4 1
1
0 10 4 14
1
end_operator
begin_operator
loadtruck packet2 truck1 office1
1
4 2
1
0 10 7 14
1
end_operator
begin_operator
loadtruck packet2 truck2 airport2
1
3 0
1
0 10 1 15
1
end_operator
begin_operator
loadtruck packet2 truck2 bay2
1
3 1
1
0 10 5 15
1
end_operator
begin_operator
loadtruck packet2 truck2 office2
1
3 2
1
0 10 8 15
1
end_operator
begin_operator
loadtruck packet2 truck3 airport3
1
2 0
1
0 10 2 16
1
end_operator
begin_operator
loadtruck packet2 truck3 office3
1
2 1
1
0 10 9 16
1
end_operator
begin_operator
loadtruck packet2 truck4 airport4
1
1 0
1
0 10 3 17
1
end_operator
begin_operator
loadtruck packet2 truck4 office4
1
1 1
1
0 10 10 17
1
end_operator
begin_operator
loadtruck packet2 truck5 bay3
1
0 0
1
0 10 6 18
1
end_operator
begin_operator
loadtruck packet2 truck5 office5
1
0 1
1
0 10 11 18
1
end_operator
begin_operator
loadtruck packet3 truck1 airport1
1
4 0
1
0 9 0 14
1
end_operator
begin_operator
loadtruck packet3 truck1 bay1
1
4 1
1
0 9 4 14
1
end_operator
begin_operator
loadtruck packet3 truck1 office1
1
4 2
1
0 9 7 14
1
end_operator
begin_operator
loadtruck packet3 truck2 airport2
1
3 0
1
0 9 1 15
1
end_operator
begin_operator
loadtruck packet3 truck2 bay2
1
3 1
1
0 9 5 15
1
end_operator
begin_operator
loadtruck packet3 truck2 office2
1
3 2
1
0 9 8 15
1
end_operator
begin_operator
loadtruck packet3 truck3 airport3
1
2 0
1
0 9 2 16
1
end_operator
begin_operator
loadtruck packet3 truck3 office3
1
2 1
1
0 9 9 16
1
end_operator
begin_operator
loadtruck packet3 truck4 airport4
1
1 0
1
0 9 3 17
1
end_operator
begin_operator
loadtruck packet3 truck4 office4
1
1 1
1
0 9 10 17
1
end_operator
begin_operator
loadtruck packet3 truck5 bay3
1
0 0
1
0 9 6 18
1
end_operator
begin_operator
loadtruck packet3 truck5 office5
1
0 1
1
0 9 11 18
1
end_operator
begin_operator
loadtruck packet4 truck1 airport1
1
4 0
1
0 8 0 14
1
end_operator
begin_operator
loadtruck packet4 truck1 bay1
1
4 1
1
0 8 4 14
1
end_operator
begin_operator
loadtruck packet4 truck1 office1
1
4 2
1
0 8 7 14
1
end_operator
begin_operator
loadtruck packet4 truck2 airport2
1
3 0
1
0 8 1 15
1
end_operator
begin_operator
loadtruck packet4 truck2 bay2
1
3 1
1
0 8 5 15
1
end_operator
begin_operator
loadtruck packet4 truck2 office2
1
3 2
1
0 8 8 15
1
end_operator
begin_operator
loadtruck packet4 truck3 airport3
1
2 0
1
0 8 2 16
1
end_operator
begin_operator
loadtruck packet4 truck3 office3
1
2 1
1
0 8 9 16
1
end_operator
begin_operator
loadtruck packet4 truck4 airport4
1
1 0
1
0 8 3 17
1
end_operator
begin_operator
loadtruck packet4 truck4 office4
1
1 1
1
0 8 10 17
1
end_operator
begin_operator
loadtruck packet4 truck5 bay3
1
0 0
1
0 8 6 18
1
end_operator
begin_operator
loadtruck packet4 truck5 office5
1
0 1
1
0 8 11 18
1
end_operator
begin_operator
loadtruck packet5 truck1 airport1
1
4 0
1
0 6 0 9
1
end_operator
begin_operator
loadtruck packet5 truck1 bay1
1
4 1
1
0 6 2 9
1
end_operator
begin_operator
loadtruck packet5 truck1 office1
1
4 2
1
0 6 5 9
1
end_operator
begin_operator
loadtruck packet5 truck2 airport2
1
3 0
1
0 6 1 10
1
end_operator
begin_operator
loadtruck packet5 truck2 bay2
1
3 1
1
0 6 3 10
1
end_operator
begin_operator
loadtruck packet5 truck2 office2
1
3 2
1
0 6 6 10
1
end_operator
begin_operator
loadtruck packet5 truck5 bay3
1
0 0
1
0 6 4 11
1
end_operator
begin_operator
loadtruck packet5 truck5 office5
1
0 1
1
0 6 7 11
1
end_operator
begin_operator
sail ship1 bay1 bay2
0
1
0 5 0 1
1
end_operator
begin_operator
sail ship1 bay1 bay3
0
1
0 5 0 2
1
end_operator
begin_operator
sail ship1 bay2 bay1
0
1
0 5 1 0
1
end_operator
begin_operator
sail ship1 bay2 bay3
0
1
0 5 1 2
1
end_operator
begin_operator
sail ship1 bay3 bay1
0
1
0 5 2 0
1
end_operator
begin_operator
sail ship1 bay3 bay2
0
1
0 5 2 1
1
end_operator
begin_operator
unload packet1 airplane1 airport1
1
7 0
1
0 11 12 0
1
end_operator
begin_operator
unload packet1 airplane1 airport2
1
7 1
1
0 11 12 1
1
end_operator
begin_operator
unload packet1 airplane1 airport3
1
7 2
1
0 11 12 2
1
end_operator
begin_operator
unload packet1 airplane1 airport4
1
7 3
1
0 11 12 3
1
end_operator
begin_operator
unload packet1 ship1 bay1
1
5 0
1
0 11 13 4
1
end_operator
begin_operator
unload packet1 ship1 bay2
1
5 1
1
0 11 13 5
1
end_operator
begin_operator
unload packet1 ship1 bay3
1
5 2
1
0 11 13 6
1
end_operator
begin_operator
unload packet1 truck1 airport1
1
4 0
1
0 11 14 0
1
end_operator
begin_operator
unload packet1 truck1 bay1
1
4 1
1
0 11 14 4
1
end_operator
begin_operator
unload packet1 truck1 office1
1
4 2
1
0 11 14 7
1
end_operator
begin_operator
unload packet1 truck2 airport2
1
3 0
1
0 11 15 1
1
end_operator
begin_operator
unload packet1 truck2 bay2
1
3 1
1
0 11 15 5
1
end_operator
begin_operator
unload packet1 truck2 office2
1
3 2
1
0 11 15 8
1
end_operator
begin_operator
unload packet1 truck3 airport3
1
2 0
1
0 11 16 2
1
end_operator
begin_operator
unload packet1 truck3 office3
1
2 1
1
0 11 16 9
1
end_operator
begin_operator
unload packet1 truck4 airport4
1
1 0
1
0 11 17 3
1
end_operator
begin_operator
unload packet1 truck4 office4
1
1 1
1
0 11 17 10
1
end_operator
begin_operator
unload packet1 truck5 bay3
1
0 0
1
0 11 18 6
1
end_operator
begin_operator
unload packet1 truck5 office5
1
0 1
1
0 11 18 11
1
end_operator
begin_operator
unload packet2 airplane1 airport1
1
7 0
1
0 10 12 0
1
end_operator
begin_operator
unload packet2 airplane1 airport2
1
7 1
1
0 10 12 1
1
end_operator
begin_operator
unload packet2 airplane1 airport3
1
7 2
1
0 10 12 2
1
end_operator
begin_operator
unload packet2 airplane1 airport4
1
7 3
1
0 10 12 3
1
end_operator
begin_operator
unload packet2 ship1 bay1
1
5 0
1
0 10 13 4
1
end_operator
begin_operator
unload packet2 ship1 bay2
1
5 1
1
0 10 13 5
1
end_operator
begin_operator
unload packet2 ship1 bay3
1
5 2
1
0 10 13 6
1
end_operator
begin_operator
unload packet2 truck1 airport1
1
4 0
1
0 10 14 0
1
end_operator
begin_operator
unload packet2 truck1 bay1
1
4 1
1
0 10 14 4
1
end_operator
begin_operator
unload packet2 truck1 office1
1
4 2
1
0 10 14 7
1
end_operator
begin_operator
unload packet2 truck2 airport2
1
3 0
1
0 10 15 1
1
end_operator
begin_operator
unload packet2 truck2 bay2
1
3 1
1
0 10 15 5
1
end_operator
begin_operator
unload packet2 truck2 office2
1
3 2
1
0 10 15 8
1
end_operator
begin_operator
unload packet2 truck3 airport3
1
2 0
1
0 10 16 2
1
end_operator
begin_operator
unload packet2 truck3 office3
1
2 1
1
0 10 16 9
1
end_operator
begin_operator
unload packet2 truck4 airport4
1
1 0
1
0 10 17 3
1
end_operator
begin_operator
unload packet2 truck4 office4
1
1 1
1
0 10 17 10
1
end_operator
begin_operator
unload packet2 truck5 bay3
1
0 0
1
0 10 18 6
1
end_operator
begin_operator
unload packet2 truck5 office5
1
0 1
1
0 10 18 11
1
end_operator
begin_operator
unload packet3 airplane1 airport1
1
7 0
1
0 9 12 0
1
end_operator
begin_operator
unload packet3 airplane1 airport2
1
7 1
1
0 9 12 1
1
end_operator
begin_operator
unload packet3 airplane1 airport3
1
7 2
1
0 9 12 2
1
end_operator
begin_operator
unload packet3 airplane1 airport4
1
7 3
1
0 9 12 3
1
end_operator
begin_operator
unload packet3 ship1 bay1
1
5 0
1
0 9 13 4
1
end_operator
begin_operator
unload packet3 ship1 bay2
1
5 1
1
0 9 13 5
1
end_operator
begin_operator
unload packet3 ship1 bay3
1
5 2
1
0 9 13 6
1
end_operator
begin_operator
unload packet3 truck1 airport1
1
4 0
1
0 9 14 0
1
end_operator
begin_operator
unload packet3 truck1 bay1
1
4 1
1
0 9 14 4
1
end_operator
begin_operator
unload packet3 truck1 office1
1
4 2
1
0 9 14 7
1
end_operator
begin_operator
unload packet3 truck2 airport2
1
3 0
1
0 9 15 1
1
end_operator
begin_operator
unload packet3 truck2 bay2
1
3 1
1
0 9 15 5
1
end_operator
begin_operator
unload packet3 truck2 office2
1
3 2
1
0 9 15 8
1
end_operator
begin_operator
unload packet3 truck3 airport3
1
2 0
1
0 9 16 2
1
end_operator
begin_operator
unload packet3 truck3 office3
1
2 1
1
0 9 16 9
1
end_operator
begin_operator
unload packet3 truck4 airport4
1
1 0
1
0 9 17 3
1
end_operator
begin_operator
unload packet3 truck4 office4
1
1 1
1
0 9 17 10
1
end_operator
begin_operator
unload packet3 truck5 bay3
1
0 0
1
0 9 18 6
1
end_operator
begin_operator
unload packet3 truck5 office5
1
0 1
1
0 9 18 11
1
end_operator
begin_operator
unload packet4 airplane1 airport1
1
7 0
1
0 8 12 0
1
end_operator
begin_operator
unload packet4 airplane1 airport2
1
7 1
1
0 8 12 1
1
end_operator
begin_operator
unload packet4 airplane1 airport3
1
7 2
1
0 8 12 2
1
end_operator
begin_operator
unload packet4 airplane1 airport4
1
7 3
1
0 8 12 3
1
end_operator
begin_operator
unload packet4 ship1 bay1
1
5 0
1
0 8 13 4
1
end_operator
begin_operator
unload packet4 ship1 bay2
1
5 1
1
0 8 13 5
1
end_operator
begin_operator
unload packet4 ship1 bay3
1
5 2
1
0 8 13 6
1
end_operator
begin_operator
unload packet4 truck1 airport1
1
4 0
1
0 8 14 0
1
end_operator
begin_operator
unload packet4 truck1 bay1
1
4 1
1
0 8 14 4
1
end_operator
begin_operator
unload packet4 truck1 office1
1
4 2
1
0 8 14 7
1
end_operator
begin_operator
unload packet4 truck2 airport2
1
3 0
1
0 8 15 1
1
end_operator
begin_operator
unload packet4 truck2 bay2
1
3 1
1
0 8 15 5
1
end_operator
begin_operator
unload packet4 truck2 office2
1
3 2
1
0 8 15 8
1
end_operator
begin_operator
unload packet4 truck3 airport3
1
2 0
1
0 8 16 2
1
end_operator
begin_operator
unload packet4 truck3 office3
1
2 1
1
0 8 16 9
1
end_operator
begin_operator
unload packet4 truck4 airport4
1
1 0
1
0 8 17 3
1
end_operator
begin_operator
unload packet4 truck4 office4
1
1 1
1
0 8 17 10
1
end_operator
begin_operator
unload packet4 truck5 bay3
1
0 0
1
0 8 18 6
1
end_operator
begin_operator
unload packet4 truck5 office5
1
0 1
1
0 8 18 11
1
end_operator
begin_operator
unloadlargepackage packet5 ship1 bay1
1
5 0
1
0 6 8 2
1
end_operator
begin_operator
unloadlargepackage packet5 ship1 bay2
1
5 1
1
0 6 8 3
1
end_operator
begin_operator
unloadlargepackage packet5 ship1 bay3
1
5 2
1
0 6 8 4
1
end_operator
begin_operator
unloadtruck packet1 truck1 airport1
1
4 0
1
0 11 14 0
1
end_operator
begin_operator
unloadtruck packet1 truck1 bay1
1
4 1
1
0 11 14 4
1
end_operator
begin_operator
unloadtruck packet1 truck1 office1
1
4 2
1
0 11 14 7
1
end_operator
begin_operator
unloadtruck packet1 truck2 airport2
1
3 0
1
0 11 15 1
1
end_operator
begin_operator
unloadtruck packet1 truck2 bay2
1
3 1
1
0 11 15 5
1
end_operator
begin_operator
unloadtruck packet1 truck2 office2
1
3 2
1
0 11 15 8
1
end_operator
begin_operator
unloadtruck packet1 truck3 airport3
1
2 0
1
0 11 16 2
1
end_operator
begin_operator
unloadtruck packet1 truck3 office3
1
2 1
1
0 11 16 9
1
end_operator
begin_operator
unloadtruck packet1 truck4 airport4
1
1 0
1
0 11 17 3
1
end_operator
begin_operator
unloadtruck packet1 truck4 office4
1
1 1
1
0 11 17 10
1
end_operator
begin_operator
unloadtruck packet1 truck5 bay3
1
0 0
1
0 11 18 6
1
end_operator
begin_operator
unloadtruck packet1 truck5 office5
1
0 1
1
0 11 18 11
1
end_operator
begin_operator
unloadtruck packet2 truck1 airport1
1
4 0
1
0 10 14 0
1
end_operator
begin_operator
unloadtruck packet2 truck1 bay1
1
4 1
1
0 10 14 4
1
end_operator
begin_operator
unloadtruck packet2 truck1 office1
1
4 2
1
0 10 14 7
1
end_operator
begin_operator
unloadtruck packet2 truck2 airport2
1
3 0
1
0 10 15 1
1
end_operator
begin_operator
unloadtruck packet2 truck2 bay2
1
3 1
1
0 10 15 5
1
end_operator
begin_operator
unloadtruck packet2 truck2 office2
1
3 2
1
0 10 15 8
1
end_operator
begin_operator
unloadtruck packet2 truck3 airport3
1
2 0
1
0 10 16 2
1
end_operator
begin_operator
unloadtruck packet2 truck3 office3
1
2 1
1
0 10 16 9
1
end_operator
begin_operator
unloadtruck packet2 truck4 airport4
1
1 0
1
0 10 17 3
1
end_operator
begin_operator
unloadtruck packet2 truck4 office4
1
1 1
1
0 10 17 10
1
end_operator
begin_operator
unloadtruck packet2 truck5 bay3
1
0 0
1
0 10 18 6
1
end_operator
begin_operator
unloadtruck packet2 truck5 office5
1
0 1
1
0 10 18 11
1
end_operator
begin_operator
unloadtruck packet3 truck1 airport1
1
4 0
1
0 9 14 0
1
end_operator
begin_operator
unloadtruck packet3 truck1 bay1
1
4 1
1
0 9 14 4
1
end_operator
begin_operator
unloadtruck packet3 truck1 office1
1
4 2
1
0 9 14 7
1
end_operator
begin_operator
unloadtruck packet3 truck2 airport2
1
3 0
1
0 9 15 1
1
end_operator
begin_operator
unloadtruck packet3 truck2 bay2
1
3 1
1
0 9 15 5
1
end_operator
begin_operator
unloadtruck packet3 truck2 office2
1
3 2
1
0 9 15 8
1
end_operator
begin_operator
unloadtruck packet3 truck3 airport3
1
2 0
1
0 9 16 2
1
end_operator
begin_operator
unloadtruck packet3 truck3 office3
1
2 1
1
0 9 16 9
1
end_operator
begin_operator
unloadtruck packet3 truck4 airport4
1
1 0
1
0 9 17 3
1
end_operator
begin_operator
unloadtruck packet3 truck4 office4
1
1 1
1
0 9 17 10
1
end_operator
begin_operator
unloadtruck packet3 truck5 bay3
1
0 0
1
0 9 18 6
1
end_operator
begin_operator
unloadtruck packet3 truck5 office5
1
0 1
1
0 9 18 11
1
end_operator
begin_operator
unloadtruck packet4 truck1 airport1
1
4 0
1
0 8 14 0
1
end_operator
begin_operator
unloadtruck packet4 truck1 bay1
1
4 1
1
0 8 14 4
1
end_operator
begin_operator
unloadtruck packet4 truck1 office1
1
4 2
1
0 8 14 7
1
end_operator
begin_operator
unloadtruck packet4 truck2 airport2
1
3 0
1
0 8 15 1
1
end_operator
begin_operator
unloadtruck packet4 truck2 bay2
1
3 1
1
0 8 15 5
1
end_operator
begin_operator
unloadtruck packet4 truck2 office2
1
3 2
1
0 8 15 8
1
end_operator
begin_operator
unloadtruck packet4 truck3 airport3
1
2 0
1
0 8 16 2
1
end_operator
begin_operator
unloadtruck packet4 truck3 office3
1
2 1
1
0 8 16 9
1
end_operator
begin_operator
unloadtruck packet4 truck4 airport4
1
1 0
1
0 8 17 3
1
end_operator
begin_operator
unloadtruck packet4 truck4 office4
1
1 1
1
0 8 17 10
1
end_operator
begin_operator
unloadtruck packet4 truck5 bay3
1
0 0
1
0 8 18 6
1
end_operator
begin_operator
unloadtruck packet4 truck5 office5
1
0 1
1
0 8 18 11
1
end_operator
begin_operator
unloadtruck packet5 truck1 airport1
1
4 0
1
0 6 9 0
1
end_operator
begin_operator
unloadtruck packet5 truck1 bay1
1
4 1
1
0 6 9 2
1
end_operator
begin_operator
unloadtruck packet5 truck1 office1
1
4 2
1
0 6 9 5
1
end_operator
begin_operator
unloadtruck packet5 truck2 airport2
1
3 0
1
0 6 10 1
1
end_operator
begin_operator
unloadtruck packet5 truck2 bay2
1
3 1
1
0 6 10 3
1
end_operator
begin_operator
unloadtruck packet5 truck2 office2
1
3 2
1
0 6 10 6
1
end_operator
begin_operator
unloadtruck packet5 truck5 bay3
1
0 0
1
0 6 11 4
1
end_operator
begin_operator
unloadtruck packet5 truck5 office5
1
0 1
1
0 6 11 7
1
end_operator
0
