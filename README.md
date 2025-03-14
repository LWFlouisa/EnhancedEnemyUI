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
