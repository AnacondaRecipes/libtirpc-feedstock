#!/bin/bash

set -ex

# Test includes
test -f $PREFIX/include/tirpc/netconfig.h
test -f $PREFIX/include/tirpc/rpc/auth.h
test -f $PREFIX/include/tirpc/rpc/auth_des.h
test -f $PREFIX/include/tirpc/rpc/auth_unix.h
test -f $PREFIX/include/tirpc/rpc/clnt.h
test -f $PREFIX/include/tirpc/rpc/clnt_soc.h
test -f $PREFIX/include/tirpc/rpc/clnt_stat.h
test -f $PREFIX/include/tirpc/rpc/des.h
test -f $PREFIX/include/tirpc/rpc/des_crypt.h
test -f $PREFIX/include/tirpc/rpc/key_prot.h
test -f $PREFIX/include/tirpc/rpc/nettype.h
test -f $PREFIX/include/tirpc/rpc/pmap_clnt.h
test -f $PREFIX/include/tirpc/rpc/pmap_prot.h
test -f $PREFIX/include/tirpc/rpc/pmap_rmt.h
test -f $PREFIX/include/tirpc/rpc/raw.h
test -f $PREFIX/include/tirpc/rpc/rpc.h
test -f $PREFIX/include/tirpc/rpc/rpc_com.h
test -f $PREFIX/include/tirpc/rpc/rpc_msg.h
test -f $PREFIX/include/tirpc/rpc/rpcb_clnt.h
test -f $PREFIX/include/tirpc/rpc/rpcb_prot.h
test -f $PREFIX/include/tirpc/rpc/rpcb_prot.x
test -f $PREFIX/include/tirpc/rpc/rpcent.h
test -f $PREFIX/include/tirpc/rpc/svc.h
test -f $PREFIX/include/tirpc/rpc/svc_auth.h
test -f $PREFIX/include/tirpc/rpc/svc_dg.h
test -f $PREFIX/include/tirpc/rpc/svc_mt.h
test -f $PREFIX/include/tirpc/rpc/svc_soc.h
test -f $PREFIX/include/tirpc/rpc/types.h
test -f $PREFIX/include/tirpc/rpc/xdr.h
test -f $PREFIX/include/tirpc/rpcsvc/crypt.h
test -f $PREFIX/include/tirpc/rpcsvc/crypt.x

$CC test.c -o test $CFLAGS -I${CONDA_PREFIX}/include/tirpc $LDFLAGS -ltirpc
./test
