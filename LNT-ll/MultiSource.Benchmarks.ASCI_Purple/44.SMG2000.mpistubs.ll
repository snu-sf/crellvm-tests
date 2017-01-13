; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/44.SMG2000.mpistubs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_MPI_Status = type { i32 }

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Init(i32* %argc, i8*** %argv) #0 {
entry:
  %argc.addr = alloca i32*, align 8
  %argv.addr = alloca i8***, align 8
  store i32* %argc, i32** %argc.addr, align 8
  store i8*** %argv, i8**** %argv.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Finalize() #0 {
entry:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Abort(i32 %comm, i32 %errorcode) #0 {
entry:
  %comm.addr = alloca i32, align 4
  %errorcode.addr = alloca i32, align 4
  store i32 %comm, i32* %comm.addr, align 4
  store i32 %errorcode, i32* %errorcode.addr, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define double @hypre_MPI_Wtime() #0 {
entry:
  ret double 0.000000e+00
}

; Function Attrs: nounwind uwtable
define double @hypre_MPI_Wtick() #0 {
entry:
  ret double 0.000000e+00
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Barrier(i32 %comm) #0 {
entry:
  %comm.addr = alloca i32, align 4
  store i32 %comm, i32* %comm.addr, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Comm_create(i32 %comm, i32 %group, i32* %newcomm) #0 {
entry:
  %comm.addr = alloca i32, align 4
  %group.addr = alloca i32, align 4
  %newcomm.addr = alloca i32*, align 8
  store i32 %comm, i32* %comm.addr, align 4
  store i32 %group, i32* %group.addr, align 4
  store i32* %newcomm, i32** %newcomm.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Comm_dup(i32 %comm, i32* %newcomm) #0 {
entry:
  %comm.addr = alloca i32, align 4
  %newcomm.addr = alloca i32*, align 8
  store i32 %comm, i32* %comm.addr, align 4
  store i32* %newcomm, i32** %newcomm.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Comm_size(i32 %comm, i32* %size) #0 {
entry:
  %comm.addr = alloca i32, align 4
  %size.addr = alloca i32*, align 8
  store i32 %comm, i32* %comm.addr, align 4
  store i32* %size, i32** %size.addr, align 8
  %0 = load i32*, i32** %size.addr, align 8
  store i32 1, i32* %0, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Comm_rank(i32 %comm, i32* %rank) #0 {
entry:
  %comm.addr = alloca i32, align 4
  %rank.addr = alloca i32*, align 8
  store i32 %comm, i32* %comm.addr, align 4
  store i32* %rank, i32** %rank.addr, align 8
  %0 = load i32*, i32** %rank.addr, align 8
  store i32 0, i32* %0, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Comm_free(i32* %comm) #0 {
entry:
  %comm.addr = alloca i32*, align 8
  store i32* %comm, i32** %comm.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Comm_group(i32 %comm, i32* %group) #0 {
entry:
  %comm.addr = alloca i32, align 4
  %group.addr = alloca i32*, align 8
  store i32 %comm, i32* %comm.addr, align 4
  store i32* %group, i32** %group.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Group_incl(i32 %group, i32 %n, i32* %ranks, i32* %newgroup) #0 {
entry:
  %group.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %ranks.addr = alloca i32*, align 8
  %newgroup.addr = alloca i32*, align 8
  store i32 %group, i32* %group.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32* %ranks, i32** %ranks.addr, align 8
  store i32* %newgroup, i32** %newgroup.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Group_free(i32* %group) #0 {
entry:
  %group.addr = alloca i32*, align 8
  store i32* %group, i32** %group.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Address(i8* %location, i32* %address) #0 {
entry:
  %location.addr = alloca i8*, align 8
  %address.addr = alloca i32*, align 8
  store i8* %location, i8** %location.addr, align 8
  store i32* %address, i32** %address.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Get_count(%struct.hypre_MPI_Status* %status, i32 %datatype, i32* %count) #0 {
entry:
  %status.addr = alloca %struct.hypre_MPI_Status*, align 8
  %datatype.addr = alloca i32, align 4
  %count.addr = alloca i32*, align 8
  store %struct.hypre_MPI_Status* %status, %struct.hypre_MPI_Status** %status.addr, align 8
  store i32 %datatype, i32* %datatype.addr, align 4
  store i32* %count, i32** %count.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Alltoall(i8* %sendbuf, i32 %sendcount, i32 %sendtype, i8* %recvbuf, i32 %recvcount, i32 %recvtype, i32 %comm) #0 {
entry:
  %sendbuf.addr = alloca i8*, align 8
  %sendcount.addr = alloca i32, align 4
  %sendtype.addr = alloca i32, align 4
  %recvbuf.addr = alloca i8*, align 8
  %recvcount.addr = alloca i32, align 4
  %recvtype.addr = alloca i32, align 4
  %comm.addr = alloca i32, align 4
  store i8* %sendbuf, i8** %sendbuf.addr, align 8
  store i32 %sendcount, i32* %sendcount.addr, align 4
  store i32 %sendtype, i32* %sendtype.addr, align 4
  store i8* %recvbuf, i8** %recvbuf.addr, align 8
  store i32 %recvcount, i32* %recvcount.addr, align 4
  store i32 %recvtype, i32* %recvtype.addr, align 4
  store i32 %comm, i32* %comm.addr, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Allgather(i8* %sendbuf, i32 %sendcount, i32 %sendtype, i8* %recvbuf, i32 %recvcount, i32 %recvtype, i32 %comm) #0 {
entry:
  %sendbuf.addr = alloca i8*, align 8
  %sendcount.addr = alloca i32, align 4
  %sendtype.addr = alloca i32, align 4
  %recvbuf.addr = alloca i8*, align 8
  %recvcount.addr = alloca i32, align 4
  %recvtype.addr = alloca i32, align 4
  %comm.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %crecvbuf = alloca i32*, align 8
  %csendbuf = alloca i32*, align 8
  %crecvbuf4 = alloca double*, align 8
  %csendbuf5 = alloca double*, align 8
  %crecvbuf17 = alloca i8*, align 8
  %csendbuf18 = alloca i8*, align 8
  store i8* %sendbuf, i8** %sendbuf.addr, align 8
  store i32 %sendcount, i32* %sendcount.addr, align 4
  store i32 %sendtype, i32* %sendtype.addr, align 4
  store i8* %recvbuf, i8** %recvbuf.addr, align 8
  store i32 %recvcount, i32* %recvcount.addr, align 4
  store i32 %recvtype, i32* %recvtype.addr, align 4
  store i32 %comm, i32* %comm.addr, align 4
  %0 = load i32, i32* %sendtype.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.3
    i32 2, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %recvbuf.addr, align 8
  %2 = bitcast i8* %1 to i32*
  store i32* %2, i32** %crecvbuf, align 8
  %3 = load i8*, i8** %sendbuf.addr, align 8
  %4 = bitcast i8* %3 to i32*
  store i32* %4, i32** %csendbuf, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %sendcount.addr, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %csendbuf, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %10 to i64
  %11 = load i32*, i32** %crecvbuf, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %11, i64 %idxprom1
  store i32 %9, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %13 = load i8*, i8** %recvbuf.addr, align 8
  %14 = bitcast i8* %13 to double*
  store double* %14, double** %crecvbuf4, align 8
  %15 = load i8*, i8** %sendbuf.addr, align 8
  %16 = bitcast i8* %15 to double*
  store double* %16, double** %csendbuf5, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.13, %sw.bb.3
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %sendcount.addr, align 4
  %cmp7 = icmp slt i32 %17, %18
  br i1 %cmp7, label %for.body.8, label %for.end.15

for.body.8:                                       ; preds = %for.cond.6
  %19 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %19 to i64
  %20 = load double*, double** %csendbuf5, align 8
  %arrayidx10 = getelementptr inbounds double, double* %20, i64 %idxprom9
  %21 = load double, double* %arrayidx10, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %22 to i64
  %23 = load double*, double** %crecvbuf4, align 8
  %arrayidx12 = getelementptr inbounds double, double* %23, i64 %idxprom11
  store double %21, double* %arrayidx12, align 8
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.8
  %24 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %24, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond.6

for.end.15:                                       ; preds = %for.cond.6
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %25 = load i8*, i8** %recvbuf.addr, align 8
  store i8* %25, i8** %crecvbuf17, align 8
  %26 = load i8*, i8** %sendbuf.addr, align 8
  store i8* %26, i8** %csendbuf18, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.26, %sw.bb.16
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %sendcount.addr, align 4
  %cmp20 = icmp slt i32 %27, %28
  br i1 %cmp20, label %for.body.21, label %for.end.28

for.body.21:                                      ; preds = %for.cond.19
  %29 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %29 to i64
  %30 = load i8*, i8** %csendbuf18, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %30, i64 %idxprom22
  %31 = load i8, i8* %arrayidx23, align 1
  %32 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %32 to i64
  %33 = load i8*, i8** %crecvbuf17, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %33, i64 %idxprom24
  store i8 %31, i8* %arrayidx25, align 1
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.21
  %34 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %34, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.19

for.end.28:                                       ; preds = %for.cond.19
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %for.end.28, %for.end.15, %for.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Allgatherv(i8* %sendbuf, i32 %sendcount, i32 %sendtype, i8* %recvbuf, i32* %recvcounts, i32* %displs, i32 %recvtype, i32 %comm) #0 {
entry:
  %sendbuf.addr = alloca i8*, align 8
  %sendcount.addr = alloca i32, align 4
  %sendtype.addr = alloca i32, align 4
  %recvbuf.addr = alloca i8*, align 8
  %recvcounts.addr = alloca i32*, align 8
  %displs.addr = alloca i32*, align 8
  %recvtype.addr = alloca i32, align 4
  %comm.addr = alloca i32, align 4
  store i8* %sendbuf, i8** %sendbuf.addr, align 8
  store i32 %sendcount, i32* %sendcount.addr, align 4
  store i32 %sendtype, i32* %sendtype.addr, align 4
  store i8* %recvbuf, i8** %recvbuf.addr, align 8
  store i32* %recvcounts, i32** %recvcounts.addr, align 8
  store i32* %displs, i32** %displs.addr, align 8
  store i32 %recvtype, i32* %recvtype.addr, align 4
  store i32 %comm, i32* %comm.addr, align 4
  %0 = load i8*, i8** %sendbuf.addr, align 8
  %1 = load i32, i32* %sendcount.addr, align 4
  %2 = load i32, i32* %sendtype.addr, align 4
  %3 = load i8*, i8** %recvbuf.addr, align 8
  %4 = load i32*, i32** %recvcounts.addr, align 8
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* %recvtype.addr, align 4
  %7 = load i32, i32* %comm.addr, align 4
  %call = call i32 @hypre_MPI_Allgather(i8* %0, i32 %1, i32 %2, i8* %3, i32 %5, i32 %6, i32 %7)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Gather(i8* %sendbuf, i32 %sendcount, i32 %sendtype, i8* %recvbuf, i32 %recvcount, i32 %recvtype, i32 %root, i32 %comm) #0 {
entry:
  %sendbuf.addr = alloca i8*, align 8
  %sendcount.addr = alloca i32, align 4
  %sendtype.addr = alloca i32, align 4
  %recvbuf.addr = alloca i8*, align 8
  %recvcount.addr = alloca i32, align 4
  %recvtype.addr = alloca i32, align 4
  %root.addr = alloca i32, align 4
  %comm.addr = alloca i32, align 4
  store i8* %sendbuf, i8** %sendbuf.addr, align 8
  store i32 %sendcount, i32* %sendcount.addr, align 4
  store i32 %sendtype, i32* %sendtype.addr, align 4
  store i8* %recvbuf, i8** %recvbuf.addr, align 8
  store i32 %recvcount, i32* %recvcount.addr, align 4
  store i32 %recvtype, i32* %recvtype.addr, align 4
  store i32 %root, i32* %root.addr, align 4
  store i32 %comm, i32* %comm.addr, align 4
  %0 = load i8*, i8** %sendbuf.addr, align 8
  %1 = load i32, i32* %sendcount.addr, align 4
  %2 = load i32, i32* %sendtype.addr, align 4
  %3 = load i8*, i8** %recvbuf.addr, align 8
  %4 = load i32, i32* %recvcount.addr, align 4
  %5 = load i32, i32* %recvtype.addr, align 4
  %6 = load i32, i32* %comm.addr, align 4
  %call = call i32 @hypre_MPI_Allgather(i8* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Scatter(i8* %sendbuf, i32 %sendcount, i32 %sendtype, i8* %recvbuf, i32 %recvcount, i32 %recvtype, i32 %root, i32 %comm) #0 {
entry:
  %sendbuf.addr = alloca i8*, align 8
  %sendcount.addr = alloca i32, align 4
  %sendtype.addr = alloca i32, align 4
  %recvbuf.addr = alloca i8*, align 8
  %recvcount.addr = alloca i32, align 4
  %recvtype.addr = alloca i32, align 4
  %root.addr = alloca i32, align 4
  %comm.addr = alloca i32, align 4
  store i8* %sendbuf, i8** %sendbuf.addr, align 8
  store i32 %sendcount, i32* %sendcount.addr, align 4
  store i32 %sendtype, i32* %sendtype.addr, align 4
  store i8* %recvbuf, i8** %recvbuf.addr, align 8
  store i32 %recvcount, i32* %recvcount.addr, align 4
  store i32 %recvtype, i32* %recvtype.addr, align 4
  store i32 %root, i32* %root.addr, align 4
  store i32 %comm, i32* %comm.addr, align 4
  %0 = load i8*, i8** %sendbuf.addr, align 8
  %1 = load i32, i32* %sendcount.addr, align 4
  %2 = load i32, i32* %sendtype.addr, align 4
  %3 = load i8*, i8** %recvbuf.addr, align 8
  %4 = load i32, i32* %recvcount.addr, align 4
  %5 = load i32, i32* %recvtype.addr, align 4
  %6 = load i32, i32* %comm.addr, align 4
  %call = call i32 @hypre_MPI_Allgather(i8* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Bcast(i8* %buffer, i32 %count, i32 %datatype, i32 %root, i32 %comm) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %datatype.addr = alloca i32, align 4
  %root.addr = alloca i32, align 4
  %comm.addr = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32 %datatype, i32* %datatype.addr, align 4
  store i32 %root, i32* %root.addr, align 4
  store i32 %comm, i32* %comm.addr, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Send(i8* %buf, i32 %count, i32 %datatype, i32 %dest, i32 %tag, i32 %comm) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %datatype.addr = alloca i32, align 4
  %dest.addr = alloca i32, align 4
  %tag.addr = alloca i32, align 4
  %comm.addr = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32 %datatype, i32* %datatype.addr, align 4
  store i32 %dest, i32* %dest.addr, align 4
  store i32 %tag, i32* %tag.addr, align 4
  store i32 %comm, i32* %comm.addr, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Recv(i8* %buf, i32 %count, i32 %datatype, i32 %source, i32 %tag, i32 %comm, %struct.hypre_MPI_Status* %status) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %datatype.addr = alloca i32, align 4
  %source.addr = alloca i32, align 4
  %tag.addr = alloca i32, align 4
  %comm.addr = alloca i32, align 4
  %status.addr = alloca %struct.hypre_MPI_Status*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32 %datatype, i32* %datatype.addr, align 4
  store i32 %source, i32* %source.addr, align 4
  store i32 %tag, i32* %tag.addr, align 4
  store i32 %comm, i32* %comm.addr, align 4
  store %struct.hypre_MPI_Status* %status, %struct.hypre_MPI_Status** %status.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Isend(i8* %buf, i32 %count, i32 %datatype, i32 %dest, i32 %tag, i32 %comm, i32* %request) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %datatype.addr = alloca i32, align 4
  %dest.addr = alloca i32, align 4
  %tag.addr = alloca i32, align 4
  %comm.addr = alloca i32, align 4
  %request.addr = alloca i32*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32 %datatype, i32* %datatype.addr, align 4
  store i32 %dest, i32* %dest.addr, align 4
  store i32 %tag, i32* %tag.addr, align 4
  store i32 %comm, i32* %comm.addr, align 4
  store i32* %request, i32** %request.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Irecv(i8* %buf, i32 %count, i32 %datatype, i32 %source, i32 %tag, i32 %comm, i32* %request) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %datatype.addr = alloca i32, align 4
  %source.addr = alloca i32, align 4
  %tag.addr = alloca i32, align 4
  %comm.addr = alloca i32, align 4
  %request.addr = alloca i32*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32 %datatype, i32* %datatype.addr, align 4
  store i32 %source, i32* %source.addr, align 4
  store i32 %tag, i32* %tag.addr, align 4
  store i32 %comm, i32* %comm.addr, align 4
  store i32* %request, i32** %request.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Send_init(i8* %buf, i32 %count, i32 %datatype, i32 %dest, i32 %tag, i32 %comm, i32* %request) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %datatype.addr = alloca i32, align 4
  %dest.addr = alloca i32, align 4
  %tag.addr = alloca i32, align 4
  %comm.addr = alloca i32, align 4
  %request.addr = alloca i32*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32 %datatype, i32* %datatype.addr, align 4
  store i32 %dest, i32* %dest.addr, align 4
  store i32 %tag, i32* %tag.addr, align 4
  store i32 %comm, i32* %comm.addr, align 4
  store i32* %request, i32** %request.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Recv_init(i8* %buf, i32 %count, i32 %datatype, i32 %dest, i32 %tag, i32 %comm, i32* %request) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %datatype.addr = alloca i32, align 4
  %dest.addr = alloca i32, align 4
  %tag.addr = alloca i32, align 4
  %comm.addr = alloca i32, align 4
  %request.addr = alloca i32*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32 %datatype, i32* %datatype.addr, align 4
  store i32 %dest, i32* %dest.addr, align 4
  store i32 %tag, i32* %tag.addr, align 4
  store i32 %comm, i32* %comm.addr, align 4
  store i32* %request, i32** %request.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Irsend(i8* %buf, i32 %count, i32 %datatype, i32 %dest, i32 %tag, i32 %comm, i32* %request) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %datatype.addr = alloca i32, align 4
  %dest.addr = alloca i32, align 4
  %tag.addr = alloca i32, align 4
  %comm.addr = alloca i32, align 4
  %request.addr = alloca i32*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32 %datatype, i32* %datatype.addr, align 4
  store i32 %dest, i32* %dest.addr, align 4
  store i32 %tag, i32* %tag.addr, align 4
  store i32 %comm, i32* %comm.addr, align 4
  store i32* %request, i32** %request.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Startall(i32 %count, i32* %array_of_requests) #0 {
entry:
  %count.addr = alloca i32, align 4
  %array_of_requests.addr = alloca i32*, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32* %array_of_requests, i32** %array_of_requests.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Probe(i32 %source, i32 %tag, i32 %comm, %struct.hypre_MPI_Status* %status) #0 {
entry:
  %source.addr = alloca i32, align 4
  %tag.addr = alloca i32, align 4
  %comm.addr = alloca i32, align 4
  %status.addr = alloca %struct.hypre_MPI_Status*, align 8
  store i32 %source, i32* %source.addr, align 4
  store i32 %tag, i32* %tag.addr, align 4
  store i32 %comm, i32* %comm.addr, align 4
  store %struct.hypre_MPI_Status* %status, %struct.hypre_MPI_Status** %status.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Iprobe(i32 %source, i32 %tag, i32 %comm, i32* %flag, %struct.hypre_MPI_Status* %status) #0 {
entry:
  %source.addr = alloca i32, align 4
  %tag.addr = alloca i32, align 4
  %comm.addr = alloca i32, align 4
  %flag.addr = alloca i32*, align 8
  %status.addr = alloca %struct.hypre_MPI_Status*, align 8
  store i32 %source, i32* %source.addr, align 4
  store i32 %tag, i32* %tag.addr, align 4
  store i32 %comm, i32* %comm.addr, align 4
  store i32* %flag, i32** %flag.addr, align 8
  store %struct.hypre_MPI_Status* %status, %struct.hypre_MPI_Status** %status.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Test(i32* %request, i32* %flag, %struct.hypre_MPI_Status* %status) #0 {
entry:
  %request.addr = alloca i32*, align 8
  %flag.addr = alloca i32*, align 8
  %status.addr = alloca %struct.hypre_MPI_Status*, align 8
  store i32* %request, i32** %request.addr, align 8
  store i32* %flag, i32** %flag.addr, align 8
  store %struct.hypre_MPI_Status* %status, %struct.hypre_MPI_Status** %status.addr, align 8
  %0 = load i32*, i32** %flag.addr, align 8
  store i32 1, i32* %0, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Testall(i32 %count, i32* %array_of_requests, i32* %flag, %struct.hypre_MPI_Status* %array_of_statuses) #0 {
entry:
  %count.addr = alloca i32, align 4
  %array_of_requests.addr = alloca i32*, align 8
  %flag.addr = alloca i32*, align 8
  %array_of_statuses.addr = alloca %struct.hypre_MPI_Status*, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32* %array_of_requests, i32** %array_of_requests.addr, align 8
  store i32* %flag, i32** %flag.addr, align 8
  store %struct.hypre_MPI_Status* %array_of_statuses, %struct.hypre_MPI_Status** %array_of_statuses.addr, align 8
  %0 = load i32*, i32** %flag.addr, align 8
  store i32 1, i32* %0, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Wait(i32* %request, %struct.hypre_MPI_Status* %status) #0 {
entry:
  %request.addr = alloca i32*, align 8
  %status.addr = alloca %struct.hypre_MPI_Status*, align 8
  store i32* %request, i32** %request.addr, align 8
  store %struct.hypre_MPI_Status* %status, %struct.hypre_MPI_Status** %status.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Waitall(i32 %count, i32* %array_of_requests, %struct.hypre_MPI_Status* %array_of_statuses) #0 {
entry:
  %count.addr = alloca i32, align 4
  %array_of_requests.addr = alloca i32*, align 8
  %array_of_statuses.addr = alloca %struct.hypre_MPI_Status*, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32* %array_of_requests, i32** %array_of_requests.addr, align 8
  store %struct.hypre_MPI_Status* %array_of_statuses, %struct.hypre_MPI_Status** %array_of_statuses.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Waitany(i32 %count, i32* %array_of_requests, i32* %index, %struct.hypre_MPI_Status* %status) #0 {
entry:
  %count.addr = alloca i32, align 4
  %array_of_requests.addr = alloca i32*, align 8
  %index.addr = alloca i32*, align 8
  %status.addr = alloca %struct.hypre_MPI_Status*, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32* %array_of_requests, i32** %array_of_requests.addr, align 8
  store i32* %index, i32** %index.addr, align 8
  store %struct.hypre_MPI_Status* %status, %struct.hypre_MPI_Status** %status.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Allreduce(i8* %sendbuf, i8* %recvbuf, i32 %count, i32 %datatype, i32 %op, i32 %comm) #0 {
entry:
  %sendbuf.addr = alloca i8*, align 8
  %recvbuf.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %datatype.addr = alloca i32, align 4
  %op.addr = alloca i32, align 4
  %comm.addr = alloca i32, align 4
  %crecvbuf = alloca i32*, align 8
  %csendbuf = alloca i32*, align 8
  %crecvbuf3 = alloca double*, align 8
  %csendbuf4 = alloca double*, align 8
  %crecvbuf8 = alloca i8*, align 8
  %csendbuf9 = alloca i8*, align 8
  store i8* %sendbuf, i8** %sendbuf.addr, align 8
  store i8* %recvbuf, i8** %recvbuf.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32 %datatype, i32* %datatype.addr, align 4
  store i32 %op, i32* %op.addr, align 4
  store i32 %comm, i32* %comm.addr, align 4
  %0 = load i32, i32* %datatype.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.2
    i32 2, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %recvbuf.addr, align 8
  %2 = bitcast i8* %1 to i32*
  store i32* %2, i32** %crecvbuf, align 8
  %3 = load i8*, i8** %sendbuf.addr, align 8
  %4 = bitcast i8* %3 to i32*
  store i32* %4, i32** %csendbuf, align 8
  %5 = load i32*, i32** %csendbuf, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 0
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32*, i32** %crecvbuf, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %7, i64 0
  store i32 %6, i32* %arrayidx1, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load i8*, i8** %recvbuf.addr, align 8
  %9 = bitcast i8* %8 to double*
  store double* %9, double** %crecvbuf3, align 8
  %10 = load i8*, i8** %sendbuf.addr, align 8
  %11 = bitcast i8* %10 to double*
  store double* %11, double** %csendbuf4, align 8
  %12 = load double*, double** %csendbuf4, align 8
  %arrayidx5 = getelementptr inbounds double, double* %12, i64 0
  %13 = load double, double* %arrayidx5, align 8
  %14 = load double*, double** %crecvbuf3, align 8
  %arrayidx6 = getelementptr inbounds double, double* %14, i64 0
  store double %13, double* %arrayidx6, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %15 = load i8*, i8** %recvbuf.addr, align 8
  store i8* %15, i8** %crecvbuf8, align 8
  %16 = load i8*, i8** %sendbuf.addr, align 8
  store i8* %16, i8** %csendbuf9, align 8
  %17 = load i8*, i8** %csendbuf9, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx10, align 1
  %19 = load i8*, i8** %crecvbuf8, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 %18, i8* %arrayidx11, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.7, %sw.bb.2, %sw.bb
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Request_free(i32* %request) #0 {
entry:
  %request.addr = alloca i32*, align 8
  store i32* %request, i32** %request.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Type_contiguous(i32 %count, i32 %oldtype, i32* %newtype) #0 {
entry:
  %count.addr = alloca i32, align 4
  %oldtype.addr = alloca i32, align 4
  %newtype.addr = alloca i32*, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32 %oldtype, i32* %oldtype.addr, align 4
  store i32* %newtype, i32** %newtype.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Type_vector(i32 %count, i32 %blocklength, i32 %stride, i32 %oldtype, i32* %newtype) #0 {
entry:
  %count.addr = alloca i32, align 4
  %blocklength.addr = alloca i32, align 4
  %stride.addr = alloca i32, align 4
  %oldtype.addr = alloca i32, align 4
  %newtype.addr = alloca i32*, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32 %blocklength, i32* %blocklength.addr, align 4
  store i32 %stride, i32* %stride.addr, align 4
  store i32 %oldtype, i32* %oldtype.addr, align 4
  store i32* %newtype, i32** %newtype.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Type_hvector(i32 %count, i32 %blocklength, i32 %stride, i32 %oldtype, i32* %newtype) #0 {
entry:
  %count.addr = alloca i32, align 4
  %blocklength.addr = alloca i32, align 4
  %stride.addr = alloca i32, align 4
  %oldtype.addr = alloca i32, align 4
  %newtype.addr = alloca i32*, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32 %blocklength, i32* %blocklength.addr, align 4
  store i32 %stride, i32* %stride.addr, align 4
  store i32 %oldtype, i32* %oldtype.addr, align 4
  store i32* %newtype, i32** %newtype.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Type_struct(i32 %count, i32* %array_of_blocklengths, i32* %array_of_displacements, i32* %array_of_types, i32* %newtype) #0 {
entry:
  %count.addr = alloca i32, align 4
  %array_of_blocklengths.addr = alloca i32*, align 8
  %array_of_displacements.addr = alloca i32*, align 8
  %array_of_types.addr = alloca i32*, align 8
  %newtype.addr = alloca i32*, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32* %array_of_blocklengths, i32** %array_of_blocklengths.addr, align 8
  store i32* %array_of_displacements, i32** %array_of_displacements.addr, align 8
  store i32* %array_of_types, i32** %array_of_types.addr, align 8
  store i32* %newtype, i32** %newtype.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Type_commit(i32* %datatype) #0 {
entry:
  %datatype.addr = alloca i32*, align 8
  store i32* %datatype, i32** %datatype.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_MPI_Type_free(i32* %datatype) #0 {
entry:
  %datatype.addr = alloca i32*, align 8
  store i32* %datatype, i32** %datatype.addr, align 8
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
