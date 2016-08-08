
dnf  install redhat-rpm-config postgresql postgresql-server postgresql-devel
postgresql-setup --initdb
systemctl start postgresql
systemctl enable postgresql
export ORACLE_HOME=/home/oracle/app/oracle/product/12.1.0/dbhome_1
export LD_LIBARY_PATH=$ORACLE_HOME/lib
dnf install perl-App-cpanminus
147  cpanm i dbi
cpani DBI
dnf install perl-Devel-Peek
cpanm --force DBD::Oracle
cpanm DBD::Pg
