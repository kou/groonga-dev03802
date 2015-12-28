#!/bin/zsh

: ${MYSQL:=mysql}

${=MYSQL} < init.sql

while true
do
    count=$(${=MYSQL} db_test < count.sql | tail -1)

    ${=MYSQL} db_test < recover.sql
    rm -f run.sql
    for i in {0..$((count / 2))}
    do
	${=MYSQL} -N db_test < while.sql >> run.sql
    done
    echo "Null" >> run.sql
    echo "Null" >> run.sql

    ${=MYSQL} db_test < recover.sql
    (while true
     do
	 ${=MYSQL} db_test < rollback.sql
     done) &
    rollback_pid=$!
    ${=MYSQL} db_test < run.sql
    kill ${rollback_pid}

    if ! diff -u \
	 <(${=MYSQL} db_test < select-no-index.sql) \
	 <(${=MYSQL} db_test < select-index.sql)
    then
	echo "Reproduced!!!"
	exit 1
    fi
done
