# Instructions

This modules creates a repo with direct updates to the master denied. Its has been a common DevOps process pattern to use the mainline model or trunk-based development <https://paulhammant.com/2013/04/05/what-is-trunk-based-development/,> however it is with experience that the optimal pattern is of short lived single activity feature branches, YMMV.

To use this repo the expected behaviour is to branch when starting a new piece of work, for example.

`git pull`

`git branch -b feature/JGW-121-Remove-Project-Managers`

Do your work, check-in.
Push to your feature branch.

`git push -u origin feature/JGW-121-Remove-Project-Managers`

Then when your done create a PR and request the merge.

## Details

Creates a group called developer to which the policy is attached.
To use the repo you need to the your users to the group.
