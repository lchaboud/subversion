if test $# -eq 0
  echo "no repository created"
  exit
fi

echo "create repository : $1"
svnadmin create /var/svn/$1

nano /var/svn/demo/conf/svnserve.conf
* supprimez le symbole # des lignes :
anon-access = none
auth-access = write
password-db = passwd
* utilisateurs
nano /var/svn/demo/conf/passwd
* dans la section [users], placer l'utilisateur sous la forme :
<nomutilisateur>=<motdepasse>
>>>
dev=dev
integ=integ
<<<

cd ~
svn co file:///var/svn/$1
cd $1
mkdir trunk
mkdir tags
mkdir branch
svn add *
svn ci
