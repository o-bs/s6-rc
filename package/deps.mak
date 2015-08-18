#
# This file has been generated by tools/gen-deps.sh
#

src/include/s6-rc/s6rc-utils.h: src/include/s6-rc/s6rc-db.h
src/include/s6-rc/s6rc.h: src/include/s6-rc/s6rc-constants.h src/include/s6-rc/s6rc-db.h src/include/s6-rc/s6rc-utils.h
src/libs6rc/s6rc_db_check_depcycles.o src/libs6rc/s6rc_db_check_depcycles.lo: src/libs6rc/s6rc_db_check_depcycles.c src/include/s6-rc/s6rc-db.h
src/libs6rc/s6rc_db_check_pipelines.o src/libs6rc/s6rc_db_check_pipelines.lo: src/libs6rc/s6rc_db_check_pipelines.c src/include/s6-rc/s6rc-db.h
src/libs6rc/s6rc_db_check_revdeps.o src/libs6rc/s6rc_db_check_revdeps.lo: src/libs6rc/s6rc_db_check_revdeps.c src/include/s6-rc/s6rc-db.h
src/libs6rc/s6rc_db_read.o src/libs6rc/s6rc_db_read.lo: src/libs6rc/s6rc_db_read.c src/include/s6-rc/s6rc-db.h
src/libs6rc/s6rc_db_read_sizes.o src/libs6rc/s6rc_db_read_sizes.lo: src/libs6rc/s6rc_db_read_sizes.c src/include/s6-rc/s6rc-db.h
src/libs6rc/s6rc_db_read_uint32.o src/libs6rc/s6rc_db_read_uint32.lo: src/libs6rc/s6rc_db_read_uint32.c src/include/s6-rc/s6rc-db.h
src/libs6rc/s6rc_graph_closure.o src/libs6rc/s6rc_graph_closure.lo: src/libs6rc/s6rc_graph_closure.c src/include/s6-rc/s6rc-db.h src/include/s6-rc/s6rc-utils.h
src/s6-rc/s6-rc-compile.o src/s6-rc/s6-rc-compile.lo: src/s6-rc/s6-rc-compile.c src/include/s6-rc/config.h src/include/s6-rc/s6rc.h
src/s6-rc/s6-rc-db.o src/s6-rc/s6-rc-db.lo: src/s6-rc/s6-rc-db.c src/include/s6-rc/config.h src/include/s6-rc/s6rc.h
src/s6-rc/s6-rc-dryrun.o src/s6-rc/s6-rc-dryrun.lo: src/s6-rc/s6-rc-dryrun.c
src/s6-rc/s6-rc-fdholder-filler.o src/s6-rc/s6-rc-fdholder-filler.lo: src/s6-rc/s6-rc-fdholder-filler.c
src/s6-rc/s6-rc-init.o src/s6-rc/s6-rc-init.lo: src/s6-rc/s6-rc-init.c src/include/s6-rc/config.h src/include/s6-rc/s6rc.h
src/s6-rc/s6-rc-update.o src/s6-rc/s6-rc-update.lo: src/s6-rc/s6-rc-update.c src/include/s6-rc/config.h src/include/s6-rc/s6rc.h
src/s6-rc/s6-rc.o src/s6-rc/s6-rc.lo: src/s6-rc/s6-rc.c src/include/s6-rc/config.h src/include/s6-rc/s6rc.h

libs6rc.a.xyzzy: src/libs6rc/s6rc_db_check_depcycles.o src/libs6rc/s6rc_db_check_pipelines.o src/libs6rc/s6rc_db_check_revdeps.o src/libs6rc/s6rc_db_read.o src/libs6rc/s6rc_db_read_sizes.o src/libs6rc/s6rc_db_read_uint32.o src/libs6rc/s6rc_graph_closure.o
libs6rc.so.xyzzy: private EXTRA_LIBS := -lskarnet
libs6rc.so.xyzzy: src/libs6rc/s6rc_db_check_depcycles.lo src/libs6rc/s6rc_db_check_pipelines.lo src/libs6rc/s6rc_db_check_revdeps.lo src/libs6rc/s6rc_db_read.lo src/libs6rc/s6rc_db_read_sizes.lo src/libs6rc/s6rc_db_read_uint32.lo src/libs6rc/s6rc_graph_closure.lo
s6-rc: private EXTRA_LIBS := ${TAINNOW_LIB}
s6-rc: src/s6-rc/s6-rc.o ${LIBS6RC} -lskarnet
s6-rc-compile: private EXTRA_LIBS :=
s6-rc-compile: src/s6-rc/s6-rc-compile.o ${LIBS6RC} -lexecline -lskarnet
s6-rc-db: private EXTRA_LIBS :=
s6-rc-db: src/s6-rc/s6-rc-db.o ${LIBS6RC} -lskarnet
s6-rc-dryrun: private EXTRA_LIBS := ${TAINNOW_LIB}
s6-rc-dryrun: src/s6-rc/s6-rc-dryrun.o -lskarnet
s6-rc-fdholder-filler: private EXTRA_LIBS := ${TAINNOW_LIB} ${SOCKET_LIB}
s6-rc-fdholder-filler: src/s6-rc/s6-rc-fdholder-filler.o -ls6 -lskarnet
s6-rc-init: private EXTRA_LIBS := ${TAINNOW_LIB} ${SOCKET_LIB}
s6-rc-init: src/s6-rc/s6-rc-init.o ${LIBS6RC} -ls6 -lskarnet
s6-rc-update: private EXTRA_LIBS := ${TAINNOW_LIB} ${SOCKET_LIB}
s6-rc-update: src/s6-rc/s6-rc-update.o ${LIBS6RC} -ls6 -lexecline -lskarnet
