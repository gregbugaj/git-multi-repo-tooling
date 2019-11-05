 #!/bin/bash  

echo 'Checking dependencies'

if ! [ -x "$(command -v make)" ]; then
    echo 'Error : make is not installed failed with $?. Run : apt-get install make ' >&2
    exit 1
fi

echo 'Cloning project into :: git-mrepo'
git clone https://github.com/gregbugaj/git-multi-repo-tooling.git git-mrepo || { echo >&2 "Clone failed with $?"; exit 1; } 
cd git-mrepo
echo 'Running :  make install'
make install || { echo >&2 "Installation failed with $?"; exit 1; }
cd ..
echo 'cleaning up'
rm -rf git-mrepo

echo 'you should be able to manually run git-mrepo'
