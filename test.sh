#!/bin/zsh

: ${MYSQL:=mysql}

${=MYSQL} < init.sql

while true
do
    ${=MYSQL} db_test < recover.sql
    rm -f run.sql
    count=$(${=MYSQL} db_test < count.sql | tail -1)
    for i in {0..$((count))}
    do
	${=MYSQL} -N db_test < while.sql >> run.sql
    done
    echo "Null" >> run.sql

    ${=MYSQL} db_test < recover.sql
    ${=MYSQL} db_test < run.sql &
    run_pid=$!
    (while [ 0 -ne `ps h ${run_pid}|wc -l` ]
     do
	 ${=MYSQL} db_test < rollback.sql
     done)

    if ! diff -u \
	 <(${=MYSQL} db_test < select-no-index.sql) \
	 <(${=MYSQL} db_test < select-index.sql)
    then
	echo "Reproduced!!!"
	exit 1
    fi
done
