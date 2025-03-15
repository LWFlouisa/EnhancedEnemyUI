# EnhancedEnemyUI
Enemy mechanics that rely on remembered player's previous actions.

## Current Focus
This is geared toward showing in a simple form how it impacts rock-paper-scissors, but can be extended to more complex enemy behaviours.

The randomness mostly allows for shortening the search path for finding an ideal candidate, this is chosen by constraints within random.

## Process
Enemy remembers players previous actions.<br />
From remembered plyaer actions, find an ideal candidate.<br />
Randomly generate an state using 4D arrays.<br />
Compare generated state to ideal state.<br />

If ideal state matches generated state, then attack is successful.<br />
From success have this be the choice, if enemy fails take away their own HP.
Otherwise take away player hp.

Else add one to ideal state, and generate comparative state once more.<br />

## Replacement
This refines the guess player behaviours from the old way of accomplishing the same task.

# Extended Theory
## Advanced Chart
Here is a chart for an advanced chart.
~~~
       01     03     05     07     09     11     13     02     04     06     08     10     12
01  01,01  01,03  01,05  01,07  01,09  01,11  01,13  01,02  01,04  01,06  01,08  01,10  01,12
03  03,01  03,03  03,05  03,07  03,09  03,11  03,13  03,02  03,04  03,06  03,08  03,10  03,12
05  05,01  05,03  05,05  05,07  05,09  05,11  05,13  05,02  05,04  05,06  05,08  05,10  05,12
07  07,01  07,03  07,05  07,07  07,09  07,11  07,13  07,02  07,04  07,06  07,08  07,10  07,12
09  09,01  09,03  09,05  09,07  09,09  01,11  01,13  01,02  01,04  01,06  01,08  01,10  01,12
11  11,01  11,03  11,05  11,07  11,09  11,11  11,13  11,02  11,04  11,06  11,08  11,10  11,12
13  13,01  13,03  13,05  13,07  13,09  13,11  13,13  13,02  13,04  13,06  13,08  13,10  13,12
02  02,01  02,03  02,05  02,07  02,09  02,11  02,13  02,02  02,04  02,06  02,08  02,10  02,12
04  04,01  04,03  04,05  04,07  04,09  04,11  04,13  04,02  04,04  04,06  04,08  04,10  04,12
06  06,01  06,03  06,05  06,07  06,09  06,11  06,13  06,02  06,04  06,06  06,08  06,10  06,12
08  08,01  08,03  08,05  08,07  08,09  08,11  08,13  08,02  08,04  08,06  08,08  08,10  08,12
10  10,01  10,03  10,05  10,07  10,09  10,11  10,13  10,02  10,04  10,06  10,08  10,10  10,12
12  12,01  12,03  12,05  12,07  12,09  12,11  12,13  12,02  12,04  12,06  12,08  12,10  12,12
~~~

## BASIC FORMULA
Basic formula for rock-paper-scissors.
~~~
Given a chart of 3x3, stalemate happens exactly 3 times.
From remembered player actions, find an ideal candidate.

Compare generated state based on rows and collumns.
  ( If result matches generated pathway
    declare that player's actions has been countered.
    make this the computer's choice

    ( if computer is correct        [ Player loses hp ]
    ( Else if computer is incorrect [ Enemy loses hp ]

  ( Els if result doesn't match pathway
    continue searching until generated result matches ideal candidate.
~~~

## LARGER DATASETS
Solutions for larger datasets.
~~~
Given a chart of 14x14, stalemate happens exactly 14 times.
From remembered player actions shuffled, find an ideal candidate. [ Shuffling remembered datasets reduces chance for error. ]

Compare generated state based on rows and collumns.
  ( If result matches generated pathway
    declare that player's actions has been countered.
    make this the computer's choice

    ( if computer is correct        [ Player loses hp ]
    ( Else if computer is incorrect [ Enemy loses hp ]

  ( Els if result doesn't match pathway
    continue searching until generated result matches ideal candidate.
~~~
