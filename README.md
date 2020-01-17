# git-multi-repo-tooling

GIT Multi Repository Tooling

Set of tooling for working with git multirepo projects.

Sometime we would like to perform operations on multiple projects that that are of similar structure.

``` text
├── projects-root           # All repos for the project are here
│   ├── project-repo-a      # repo for project-a
│   ├── project-repo-b      # repo for project-b
│   ├── project-repo-c      # repo for project-c
│   ├── project-repo-d      # repo for project-d
│   └── ...                 # etc.
└── ...
```

At this time the script does not support nested repos.

## Installation

Innstallation script takes advantage of `git` alliasing to setup up our script and create seamles integration with `git`.
By default we will create  `git mrepo` alias pointint to our `/usr/local/git-mrepo` script.

``` sh
curl -L  https://github.com/gregbugaj/git-multi-repo-tooling/raw/master/installer.sh | sudo bash -s — -v 12
```

After installation you should see message simillar to this

```sh
curl -L  https://github.com/gregbugaj/git-multi-repo-tooling/raw/master/installer.sh | sudo bash -s — -v 12
% Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   152  100   152    0     0    993      0 --:--:-- --:--:-- --:--:--   987
100   562  100   562    0     0   2508      0 --:--:-- --:--:-- --:--:--  2508
Checking dependencies
Cloning project into :: git-mrepo
Cloning into 'git-mrepo'...
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 83 (delta 0), reused 0 (delta 0), pack-reused 80
Unpacking objects: 100% (83/83), done.
Running :  make install
mkdir -p /usr/local/bin
install -m 0755 git-mrepo /usr/local/bin
cleaning up
you should be able to manually run git-mrepo
```

### Node NPM module Installation

### Manual Installation

``` bash
git clone https://github.com/gregbugaj/git-multi-repo-tooling.git git-mrepo
cd git-mrepo
sudo make install
```


## Usage

``` bash
git mrepo -c
```

## Defaults

Project repo names will be trimmed or padded  to a default length of `24` characters.

``` bash
 git-multi-repo-tooling              > [git-multi-repo-tooling  ]
 git-multi-repo-tooling-docs         > [git-multi-repo-tooling-d]
```

This setting ecan be adjusted by editing the script.

### Colors 

Git command coloring

``` bash
git -c color.status=always status
git -c color.ui=always diff
```

### Examples

Checking out multiple repos
```sh 
git mrepo checkout <branch>
```

```text
[OK   ] app-1 (## feature/xyz)
[OK   ] app-3 (## master)
[ERROR] app-2
[ --- ] ## No commits yet on master
[ --- ] ?? readme.md
```

## References

A lot of ideas and snippets at this locations

* http://gitready.com/
* https://book.git-scm.com/doc
* https://www.atlassian.com/blog/git/advanced-git-aliases
* https://www.atlassian.com/company/events/summit-europe/watch-sessions/2017/featured/git-aliases-of-the-gods
* https://coderwall.com/p/euwpig/a-better-git-log
* http://codegists.com/code/git-show-summary/

## Code formatting

Code is formatted using with [https://github.com/mvdan/sh] shfmt

```sh
shfmt -l -w git-mrepo
```
