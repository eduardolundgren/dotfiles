function mysqlexec {
	mysql -u root -p -e "$1";
}

function mysql-create-db {
	mysqlexec "create database \`$1\` CHARACTER SET utf8;";
}

function mysql-drop-db {
	mysqlexec "drop database if exists \`$1\`;";
}

function mysql-clear-db {
	mysqlexec "drop database if exists \`$1\`; create database \`$1\` CHARACTER SET utf8;"
}