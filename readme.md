# Diff+
Diff+ is an interactive tool to analyze the diffs between many files. Conceptually, it sorts all of the files specified on the command-line into distinct "groups" where all of the files in a group are identical to one another. It then enters an interactive main loop where the user can enter commands to view the difference between groups, see all of the files in a group, and more.

Generally, the group that contains the most files will be considered the "base" group. By default, diffs shown by the program are considered to be relative to this base. Although the user is free to change the base group or specify a more specific diff if they so choose.

## Installation
**Requires Perl 5.26 or newer**
```
make install
```
This will also install the man page which you can view with `man diff+`.

## Usage
```
diff+ [-h|--help] FILE...
```
`FILE...` is the list of filenames to compare.

Once loaded, you can enter various commands to interact with the program. Enter `h`,`help` or `?`. To see the available commands, or
read the man page for more details.