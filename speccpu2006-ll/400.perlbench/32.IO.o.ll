; ModuleID = 'IO.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, {}*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.interpreter = type { i8 }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.he = type { %struct.he*, %struct.hek*, %struct.sv* }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.pmop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op*, %struct.op*, %struct.op*, %struct.pmop*, %struct.regexp*, i32, i32, i8, %struct.hv* }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type opaque
%struct.reg_data = type opaque
%union.any = type { i8* }
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%struct._PerlIO = type opaque
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
%struct.xpv = type { i8*, i64, i64 }
%struct.pollfd = type { i32, i16, i16 }
%struct.xpviv = type { i8*, i64, i64, i64 }

@PL_stack_sp = external global %struct.sv**, align 8
@PL_stack_base = external global %struct.sv**, align 8
@PL_markstack_ptr = external global i32*, align 8
@.str = private unnamed_addr constant [36 x i8] c"Usage: IO::Seekable::getpos(handle)\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Usage: IO::Seekable::setpos(handle, pos)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"0 but true\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Usage: IO::File::new_tmpfile(packname = \22IO::File\22)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"IO::File\00", align 1
@PL_Sv = external global %struct.sv*, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"+>&\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Usage: IO::Poll::_poll(timeout, ...)\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Usage: IO::Handle::blocking(handle, blk=-1)\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Usage: IO::Handle::ungetc(handle, c)\00", align 1
@PL_op = external global %struct.op*, align 8
@PL_curpad = external global %struct.sv**, align 8
@.str.9 = private unnamed_addr constant [33 x i8] c"Usage: IO::Handle::error(handle)\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Usage: IO::Handle::clearerr(handle)\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Usage: IO::Handle::untaint(handle)\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Usage: IO::Handle::flush(handle)\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"Usage: IO::Handle::setbuf(handle, ...)\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"IO::Handle::setbuf\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"Usage: IO::Handle::setvbuf(handle, buf, type, size)\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"IO::Handle::setvbuf\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Usage: IO::Handle::sync(handle)\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"IO::Handle::sync\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"Usage: IO::Socket::sockatmark(sock)\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"IO.c\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"IO::Seekable::getpos\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"IO::Seekable::setpos\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"IO::File::new_tmpfile\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"IO::Poll::_poll\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"IO::Handle::blocking\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"$;$\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"IO::Handle::ungetc\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"IO::Handle::error\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"IO::Handle::clearerr\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"IO::Handle::untaint\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"IO::Handle::flush\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"IO::Socket::sockatmark\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"IO::Poll\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"POLLIN\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"POLLPRI\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"POLLOUT\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"POLLRDNORM\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"POLLWRNORM\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"POLLRDBAND\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"POLLWRBAND\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"POLLNORM\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"POLLERR\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"POLLHUP\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"POLLNVAL\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"IO::Handle\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"_IOFBF\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"_IOLBF\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"_IONBF\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"SEEK_SET\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"SEEK_CUR\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"SEEK_END\00", align 1
@PL_sv_yes = external global %struct.sv, align 8
@.str.53 = private unnamed_addr constant [40 x i8] c"%s not implemented on this architecture\00", align 1

; Function Attrs: nounwind uwtable
define void @XS_IO__Seekable_getpos(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %handle = alloca %struct._PerlIO**, align 8
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp ne i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %9, 0
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %call = call %struct.io* @Perl_sv_2io(%struct.sv* %11)
  %sv_any = getelementptr inbounds %struct.io, %struct.io* %call, i32 0, i32 0
  %12 = load %struct.xpvio*, %struct.xpvio** %sv_any, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %12, i32 0, i32 7
  %13 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  store %struct._PerlIO** %13, %struct._PerlIO*** %handle, align 8
  %14 = load %struct._PerlIO**, %struct._PerlIO*** %handle, align 8
  %tobool = icmp ne %struct._PerlIO** %14, null
  br i1 %tobool, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %call9 = call %struct.sv* @Perl_newSV(i64 0)
  %call10 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call9)
  %15 = load i32, i32* %ax, align 4
  %add11 = add nsw i32 %15, 0
  %idxprom12 = sext i32 %add11 to i64
  %16 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx13 = getelementptr inbounds %struct.sv*, %struct.sv** %16, i64 %idxprom12
  store %struct.sv* %call10, %struct.sv** %arrayidx13, align 8
  %17 = load %struct._PerlIO**, %struct._PerlIO*** %handle, align 8
  %18 = load i32, i32* %ax, align 4
  %add14 = add nsw i32 %18, 0
  %idxprom15 = sext i32 %add14 to i64
  %19 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx16 = getelementptr inbounds %struct.sv*, %struct.sv** %19, i64 %idxprom15
  %20 = load %struct.sv*, %struct.sv** %arrayidx16, align 8
  %call17 = call i32 @PerlIO_getpos(%struct._PerlIO** %17, %struct.sv* %20)
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.then.8
  %21 = load i32, i32* %ax, align 4
  %add21 = add nsw i32 %21, 0
  %idxprom22 = sext i32 %add21 to i64
  %22 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx23 = getelementptr inbounds %struct.sv*, %struct.sv** %22, i64 %idxprom22
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx23, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %if.then.8
  br label %if.end.29

if.else:                                          ; preds = %if.end
  %23 = load i32, i32* %ax, align 4
  %add25 = add nsw i32 %23, 0
  %idxprom26 = sext i32 %add25 to i64
  %24 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx27 = getelementptr inbounds %struct.sv*, %struct.sv** %24, i64 %idxprom26
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx27, align 8
  %call28 = call i32* @__errno_location()
  store i32 22, i32* %call28, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.end.24
  store i64 1, i64* %tmpXSoff, align 8
  %25 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %26 = load i32, i32* %ax, align 4
  %idx.ext30 = sext i32 %26 to i64
  %add.ptr31 = getelementptr inbounds %struct.sv*, %struct.sv** %25, i64 %idx.ext30
  %27 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %27, 1
  %add.ptr32 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr31, i64 %sub
  store %struct.sv** %add.ptr32, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare void @Perl_croak(i8*, ...) #1

declare %struct.io* @Perl_sv_2io(%struct.sv*) #1

declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

declare %struct.sv* @Perl_newSV(i64) #1

declare i32 @PerlIO_getpos(%struct._PerlIO**, %struct.sv*) #1

declare i32* @__errno_location() #1

; Function Attrs: nounwind uwtable
define void @XS_IO__Seekable_setpos(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %handle = alloca %struct._PerlIO**, align 8
  %pos = alloca %struct.sv*, align 8
  %RETVAL = alloca i32, align 4
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp ne i32 %8, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %9, 0
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %call = call %struct.io* @Perl_sv_2io(%struct.sv* %11)
  %sv_any = getelementptr inbounds %struct.io, %struct.io* %call, i32 0, i32 0
  %12 = load %struct.xpvio*, %struct.xpvio** %sv_any, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %12, i32 0, i32 7
  %13 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  store %struct._PerlIO** %13, %struct._PerlIO*** %handle, align 8
  %14 = load i32, i32* %ax, align 4
  %add8 = add nsw i32 %14, 1
  %idxprom9 = sext i32 %add8 to i64
  %15 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx10 = getelementptr inbounds %struct.sv*, %struct.sv** %15, i64 %idxprom9
  %16 = load %struct.sv*, %struct.sv** %arrayidx10, align 8
  store %struct.sv* %16, %struct.sv** %pos, align 8
  %17 = load %struct._PerlIO**, %struct._PerlIO*** %handle, align 8
  %tobool = icmp ne %struct._PerlIO** %17, null
  br i1 %tobool, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  %18 = load %struct._PerlIO**, %struct._PerlIO*** %handle, align 8
  %19 = load %struct.sv*, %struct.sv** %pos, align 8
  %call12 = call i32 @PerlIO_setpos(%struct._PerlIO** %18, %struct.sv* %19)
  store i32 %call12, i32* %RETVAL, align 4
  br label %if.end.14

if.else:                                          ; preds = %if.end
  store i32 -1, i32* %RETVAL, align 4
  %call13 = call i32* @__errno_location()
  store i32 22, i32* %call13, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.11
  %call15 = call %struct.sv* @Perl_sv_newmortal()
  %20 = load i32, i32* %ax, align 4
  %add16 = add nsw i32 %20, 0
  %idxprom17 = sext i32 %add16 to i64
  %21 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx18 = getelementptr inbounds %struct.sv*, %struct.sv** %21, i64 %idxprom17
  store %struct.sv* %call15, %struct.sv** %arrayidx18, align 8
  %22 = load i32, i32* %RETVAL, align 4
  %cmp19 = icmp ne i32 %22, -1
  br i1 %cmp19, label %if.then.21, label %if.end.34

if.then.21:                                       ; preds = %if.end.14
  %23 = load i32, i32* %RETVAL, align 4
  %cmp22 = icmp eq i32 %23, 0
  br i1 %cmp22, label %if.then.24, label %if.else.28

if.then.24:                                       ; preds = %if.then.21
  %24 = load i32, i32* %ax, align 4
  %add25 = add nsw i32 %24, 0
  %idxprom26 = sext i32 %add25 to i64
  %25 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx27 = getelementptr inbounds %struct.sv*, %struct.sv** %25, i64 %idxprom26
  %26 = load %struct.sv*, %struct.sv** %arrayidx27, align 8
  call void @Perl_sv_setpvn(%struct.sv* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i64 10)
  br label %if.end.33

if.else.28:                                       ; preds = %if.then.21
  %27 = load i32, i32* %ax, align 4
  %add29 = add nsw i32 %27, 0
  %idxprom30 = sext i32 %add29 to i64
  %28 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx31 = getelementptr inbounds %struct.sv*, %struct.sv** %28, i64 %idxprom30
  %29 = load %struct.sv*, %struct.sv** %arrayidx31, align 8
  %30 = load i32, i32* %RETVAL, align 4
  %conv32 = sext i32 %30 to i64
  call void @Perl_sv_setiv(%struct.sv* %29, i64 %conv32)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.28, %if.then.24
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.14
  store i64 1, i64* %tmpXSoff, align 8
  %31 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %32 = load i32, i32* %ax, align 4
  %idx.ext35 = sext i32 %32 to i64
  %add.ptr36 = getelementptr inbounds %struct.sv*, %struct.sv** %31, i64 %idx.ext35
  %33 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %33, 1
  %add.ptr37 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr36, i64 %sub
  store %struct.sv** %add.ptr37, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare i32 @PerlIO_setpos(%struct._PerlIO**, %struct.sv*) #1

declare %struct.sv* @Perl_sv_newmortal() #1

declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #1

declare void @Perl_sv_setiv(%struct.sv*, i64) #1

; Function Attrs: nounwind uwtable
define void @XS_IO__File_new_tmpfile(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %packname = alloca i8*, align 8
  %fp = alloca %struct._PerlIO**, align 8
  %gv = alloca %struct.gv*, align 8
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load i32, i32* %items, align 4
  %cmp7 = icmp sgt i32 %9, 1
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %10 = load i32, i32* %items, align 4
  %cmp9 = icmp slt i32 %10, 1
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8** %packname, align 8
  br label %if.end.21

if.else:                                          ; preds = %if.end
  %11 = load i32, i32* %ax, align 4
  %add12 = add nsw i32 %11, 0
  %idxprom = sext i32 %add12 to i64
  %12 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %12, i64 %idxprom
  %13 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 2
  %14 = load i32, i32* %sv_flags, align 4
  %and = and i32 %14, 262144
  %cmp13 = icmp eq i32 %and, 262144
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %15 = load i32, i32* %ax, align 4
  %add15 = add nsw i32 %15, 0
  %idxprom16 = sext i32 %add15 to i64
  %16 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx17 = getelementptr inbounds %struct.sv*, %struct.sv** %16, i64 %idxprom16
  %17 = load %struct.sv*, %struct.sv** %arrayidx17, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 0
  %18 = load i8*, i8** %sv_any, align 8
  %19 = bitcast i8* %18 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %19, i32 0, i32 0
  %20 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %21 = load i32, i32* %ax, align 4
  %add18 = add nsw i32 %21, 0
  %idxprom19 = sext i32 %add18 to i64
  %22 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx20 = getelementptr inbounds %struct.sv*, %struct.sv** %22, i64 %idxprom19
  %23 = load %struct.sv*, %struct.sv** %arrayidx20, align 8
  %call = call i8* @Perl_sv_2pv_nolen(%struct.sv* %23)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %20, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %packname, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %cond.end, %if.then.11
  %call22 = call %struct._PerlIO** @PerlIO_tmpfile()
  store %struct._PerlIO** %call22, %struct._PerlIO*** %fp, align 8
  %24 = load i8*, i8** %packname, align 8
  %call23 = call %struct.gv* @Perl_newGVgen(i8* %24)
  %25 = bitcast %struct.gv* %call23 to %struct.sv*
  store %struct.sv* %25, %struct.sv** @PL_Sv, align 8
  %26 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool = icmp ne %struct.sv* %26, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.21
  %27 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 1
  %28 = load i32, i32* %sv_refcnt, align 4
  %inc = add i32 %28, 1
  store i32 %inc, i32* %sv_refcnt, align 4
  %tobool24 = icmp ne i32 %inc, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.21
  %29 = phi i1 [ false, %if.end.21 ], [ %tobool24, %land.rhs ]
  %land.ext = zext i1 %29 to i32
  %30 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %31 = bitcast %struct.sv* %30 to %struct.gv*
  store %struct.gv* %31, %struct.gv** %gv, align 8
  %32 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any25 = getelementptr inbounds %struct.gv, %struct.gv* %32, i32 0, i32 0
  %33 = load %struct.xpvgv*, %struct.xpvgv** %sv_any25, align 8
  %xgv_stash = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %33, i32 0, i32 10
  %34 = load %struct.hv*, %struct.hv** %xgv_stash, align 8
  %35 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any26 = getelementptr inbounds %struct.gv, %struct.gv* %35, i32 0, i32 0
  %36 = load %struct.xpvgv*, %struct.xpvgv** %sv_any26, align 8
  %xgv_name = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %36, i32 0, i32 8
  %37 = load i8*, i8** %xgv_name, align 8
  %38 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any27 = getelementptr inbounds %struct.gv, %struct.gv* %38, i32 0, i32 0
  %39 = load %struct.xpvgv*, %struct.xpvgv** %sv_any27, align 8
  %xgv_namelen = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %39, i32 0, i32 9
  %40 = load i64, i64* %xgv_namelen, align 8
  %conv28 = trunc i64 %40 to i32
  %call29 = call %struct.sv* @Perl_hv_delete(%struct.hv* %34, i8* %37, i32 %conv28, i32 2)
  %41 = load %struct.gv*, %struct.gv** %gv, align 8
  %42 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %call30 = call signext i8 @Perl_do_open(%struct.gv* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 3, i32 0, i32 0, i32 0, %struct._PerlIO** %42)
  %tobool31 = icmp ne i8 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.else.43

if.then.32:                                       ; preds = %land.end
  %43 = load %struct.gv*, %struct.gv** %gv, align 8
  %44 = bitcast %struct.gv* %43 to %struct.sv*
  %call33 = call %struct.sv* @Perl_newRV(%struct.sv* %44)
  %call34 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call33)
  %45 = load i32, i32* %ax, align 4
  %add35 = add nsw i32 %45, 0
  %idxprom36 = sext i32 %add35 to i64
  %46 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx37 = getelementptr inbounds %struct.sv*, %struct.sv** %46, i64 %idxprom36
  store %struct.sv* %call34, %struct.sv** %arrayidx37, align 8
  %47 = load i32, i32* %ax, align 4
  %add38 = add nsw i32 %47, 0
  %idxprom39 = sext i32 %add38 to i64
  %48 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx40 = getelementptr inbounds %struct.sv*, %struct.sv** %48, i64 %idxprom39
  %49 = load %struct.sv*, %struct.sv** %arrayidx40, align 8
  %50 = load i8*, i8** %packname, align 8
  %call41 = call %struct.hv* @Perl_gv_stashpv(i8* %50, i32 1)
  %call42 = call %struct.sv* @Perl_sv_bless(%struct.sv* %49, %struct.hv* %call41)
  %51 = load %struct.gv*, %struct.gv** %gv, align 8
  %52 = bitcast %struct.gv* %51 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %52)
  br label %if.end.47

if.else.43:                                       ; preds = %land.end
  %53 = load i32, i32* %ax, align 4
  %add44 = add nsw i32 %53, 0
  %idxprom45 = sext i32 %add44 to i64
  %54 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx46 = getelementptr inbounds %struct.sv*, %struct.sv** %54, i64 %idxprom45
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx46, align 8
  %55 = load %struct.gv*, %struct.gv** %gv, align 8
  %56 = bitcast %struct.gv* %55 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %56)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.43, %if.then.32
  store i64 1, i64* %tmpXSoff, align 8
  %57 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %58 = load i32, i32* %ax, align 4
  %idx.ext48 = sext i32 %58 to i64
  %add.ptr49 = getelementptr inbounds %struct.sv*, %struct.sv** %57, i64 %idx.ext48
  %59 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %59, 1
  %add.ptr50 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr49, i64 %sub
  store %struct.sv** %add.ptr50, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare i8* @Perl_sv_2pv_nolen(%struct.sv*) #1

declare %struct._PerlIO** @PerlIO_tmpfile() #1

declare %struct.gv* @Perl_newGVgen(i8*) #1

declare %struct.sv* @Perl_hv_delete(%struct.hv*, i8*, i32, i32) #1

declare signext i8 @Perl_do_open(%struct.gv*, i8*, i32, i32, i32, i32, %struct._PerlIO**) #1

declare %struct.sv* @Perl_newRV(%struct.sv*) #1

declare %struct.sv* @Perl_sv_bless(%struct.sv*, %struct.hv*) #1

declare %struct.hv* @Perl_gv_stashpv(i8*, i32) #1

declare void @Perl_sv_free(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define void @XS_IO__Poll__poll(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %timeout = alloca i32, align 4
  %nfd = alloca i32, align 4
  %tmpsv = alloca %struct.sv*, align 8
  %fds = alloca %struct.pollfd*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp slt i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %items, align 4
  %10 = load %struct.sv**, %struct.sv*** %sp, align 8
  %idx.ext7 = sext i32 %9 to i64
  %idx.neg = sub i64 0, %idx.ext7
  %add.ptr8 = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idx.neg
  store %struct.sv** %add.ptr8, %struct.sv*** %sp, align 8
  %11 = load i32, i32* %ax, align 4
  %add9 = add nsw i32 %11, 0
  %idxprom = sext i32 %add9 to i64
  %12 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %12, i64 %idxprom
  %13 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 2
  %14 = load i32, i32* %sv_flags, align 4
  %and = and i32 %14, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %15 = load i32, i32* %ax, align 4
  %add10 = add nsw i32 %15, 0
  %idxprom11 = sext i32 %add10 to i64
  %16 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx12 = getelementptr inbounds %struct.sv*, %struct.sv** %16, i64 %idxprom11
  %17 = load %struct.sv*, %struct.sv** %arrayidx12, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 0
  %18 = load i8*, i8** %sv_any, align 8
  %19 = bitcast i8* %18 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %19, i32 0, i32 3
  %20 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %21 = load i32, i32* %ax, align 4
  %add13 = add nsw i32 %21, 0
  %idxprom14 = sext i32 %add13 to i64
  %22 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx15 = getelementptr inbounds %struct.sv*, %struct.sv** %22, i64 %idxprom14
  %23 = load %struct.sv*, %struct.sv** %arrayidx15, align 8
  %call = call i64 @Perl_sv_2iv(%struct.sv* %23)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %20, %cond.true ], [ %call, %cond.false ]
  %conv16 = trunc i64 %cond to i32
  store i32 %conv16, i32* %timeout, align 4
  %24 = load i32, i32* %items, align 4
  %sub = sub nsw i32 %24, 1
  %div = sdiv i32 %sub, 2
  store i32 %div, i32* %nfd, align 4
  %25 = load i32, i32* %nfd, align 4
  %conv17 = sext i32 %25 to i64
  %mul = mul i64 %conv17, 8
  %call18 = call %struct.sv* @Perl_newSV(i64 %mul)
  store %struct.sv* %call18, %struct.sv** %tmpsv, align 8
  %26 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_any19 = getelementptr inbounds %struct.sv, %struct.sv* %26, i32 0, i32 0
  %27 = load i8*, i8** %sv_any19, align 8
  %28 = bitcast i8* %27 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %28, i32 0, i32 0
  %29 = load i8*, i8** %xpv_pv, align 8
  %30 = bitcast i8* %29 to %struct.pollfd*
  store %struct.pollfd* %30, %struct.pollfd** %fds, align 8
  store i32 1, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %31 = load i32, i32* %j, align 4
  %32 = load i32, i32* %nfd, align 4
  %cmp20 = icmp slt i32 %31, %32
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %ax, align 4
  %34 = load i32, i32* %i, align 4
  %add22 = add nsw i32 %33, %34
  %idxprom23 = sext i32 %add22 to i64
  %35 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx24 = getelementptr inbounds %struct.sv*, %struct.sv** %35, i64 %idxprom23
  %36 = load %struct.sv*, %struct.sv** %arrayidx24, align 8
  %sv_flags25 = getelementptr inbounds %struct.sv, %struct.sv* %36, i32 0, i32 2
  %37 = load i32, i32* %sv_flags25, align 4
  %and26 = and i32 %37, 65536
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %cond.true.28, label %cond.false.34

cond.true.28:                                     ; preds = %for.body
  %38 = load i32, i32* %ax, align 4
  %39 = load i32, i32* %i, align 4
  %add29 = add nsw i32 %38, %39
  %idxprom30 = sext i32 %add29 to i64
  %40 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx31 = getelementptr inbounds %struct.sv*, %struct.sv** %40, i64 %idxprom30
  %41 = load %struct.sv*, %struct.sv** %arrayidx31, align 8
  %sv_any32 = getelementptr inbounds %struct.sv, %struct.sv* %41, i32 0, i32 0
  %42 = load i8*, i8** %sv_any32, align 8
  %43 = bitcast i8* %42 to %struct.xpviv*
  %xiv_iv33 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %43, i32 0, i32 3
  %44 = load i64, i64* %xiv_iv33, align 8
  br label %cond.end.39

cond.false.34:                                    ; preds = %for.body
  %45 = load i32, i32* %ax, align 4
  %46 = load i32, i32* %i, align 4
  %add35 = add nsw i32 %45, %46
  %idxprom36 = sext i32 %add35 to i64
  %47 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx37 = getelementptr inbounds %struct.sv*, %struct.sv** %47, i64 %idxprom36
  %48 = load %struct.sv*, %struct.sv** %arrayidx37, align 8
  %call38 = call i64 @Perl_sv_2iv(%struct.sv* %48)
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.34, %cond.true.28
  %cond40 = phi i64 [ %44, %cond.true.28 ], [ %call38, %cond.false.34 ]
  %conv41 = trunc i64 %cond40 to i32
  %49 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %49 to i64
  %50 = load %struct.pollfd*, %struct.pollfd** %fds, align 8
  %arrayidx43 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %50, i64 %idxprom42
  %fd = getelementptr inbounds %struct.pollfd, %struct.pollfd* %arrayidx43, i32 0, i32 0
  store i32 %conv41, i32* %fd, align 4
  %51 = load i32, i32* %i, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %i, align 4
  %52 = load i32, i32* %ax, align 4
  %53 = load i32, i32* %i, align 4
  %add44 = add nsw i32 %52, %53
  %idxprom45 = sext i32 %add44 to i64
  %54 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx46 = getelementptr inbounds %struct.sv*, %struct.sv** %54, i64 %idxprom45
  %55 = load %struct.sv*, %struct.sv** %arrayidx46, align 8
  %sv_flags47 = getelementptr inbounds %struct.sv, %struct.sv* %55, i32 0, i32 2
  %56 = load i32, i32* %sv_flags47, align 4
  %and48 = and i32 %56, 65536
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %cond.true.50, label %cond.false.56

cond.true.50:                                     ; preds = %cond.end.39
  %57 = load i32, i32* %ax, align 4
  %58 = load i32, i32* %i, align 4
  %add51 = add nsw i32 %57, %58
  %idxprom52 = sext i32 %add51 to i64
  %59 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx53 = getelementptr inbounds %struct.sv*, %struct.sv** %59, i64 %idxprom52
  %60 = load %struct.sv*, %struct.sv** %arrayidx53, align 8
  %sv_any54 = getelementptr inbounds %struct.sv, %struct.sv* %60, i32 0, i32 0
  %61 = load i8*, i8** %sv_any54, align 8
  %62 = bitcast i8* %61 to %struct.xpviv*
  %xiv_iv55 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %62, i32 0, i32 3
  %63 = load i64, i64* %xiv_iv55, align 8
  br label %cond.end.61

cond.false.56:                                    ; preds = %cond.end.39
  %64 = load i32, i32* %ax, align 4
  %65 = load i32, i32* %i, align 4
  %add57 = add nsw i32 %64, %65
  %idxprom58 = sext i32 %add57 to i64
  %66 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx59 = getelementptr inbounds %struct.sv*, %struct.sv** %66, i64 %idxprom58
  %67 = load %struct.sv*, %struct.sv** %arrayidx59, align 8
  %call60 = call i64 @Perl_sv_2iv(%struct.sv* %67)
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.56, %cond.true.50
  %cond62 = phi i64 [ %63, %cond.true.50 ], [ %call60, %cond.false.56 ]
  %conv63 = trunc i64 %cond62 to i16
  %68 = load i32, i32* %j, align 4
  %idxprom64 = sext i32 %68 to i64
  %69 = load %struct.pollfd*, %struct.pollfd** %fds, align 8
  %arrayidx65 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %69, i64 %idxprom64
  %events = getelementptr inbounds %struct.pollfd, %struct.pollfd* %arrayidx65, i32 0, i32 1
  store i16 %conv63, i16* %events, align 2
  %70 = load i32, i32* %i, align 4
  %inc66 = add nsw i32 %70, 1
  store i32 %inc66, i32* %i, align 4
  %71 = load i32, i32* %j, align 4
  %idxprom67 = sext i32 %71 to i64
  %72 = load %struct.pollfd*, %struct.pollfd** %fds, align 8
  %arrayidx68 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %72, i64 %idxprom67
  %revents = getelementptr inbounds %struct.pollfd, %struct.pollfd* %arrayidx68, i32 0, i32 2
  store i16 0, i16* %revents, align 2
  br label %for.inc

for.inc:                                          ; preds = %cond.end.61
  %73 = load i32, i32* %j, align 4
  %inc69 = add nsw i32 %73, 1
  store i32 %inc69, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %74 = load %struct.pollfd*, %struct.pollfd** %fds, align 8
  %75 = load i32, i32* %nfd, align 4
  %conv70 = sext i32 %75 to i64
  %76 = load i32, i32* %timeout, align 4
  %call71 = call i32 @Perl_my_poll(%struct.pollfd* %74, i64 %conv70, i32 %76)
  store i32 %call71, i32* %ret, align 4
  %cmp72 = icmp sge i32 %call71, 0
  br i1 %cmp72, label %if.then.74, label %if.end.98

if.then.74:                                       ; preds = %for.end
  store i32 1, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.95, %if.then.74
  %77 = load i32, i32* %j, align 4
  %78 = load i32, i32* %nfd, align 4
  %cmp76 = icmp slt i32 %77, %78
  br i1 %cmp76, label %for.body.78, label %for.end.97

for.body.78:                                      ; preds = %for.cond.75
  %79 = load i32, i32* %ax, align 4
  %80 = load i32, i32* %i, align 4
  %add79 = add nsw i32 %79, %80
  %idxprom80 = sext i32 %add79 to i64
  %81 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx81 = getelementptr inbounds %struct.sv*, %struct.sv** %81, i64 %idxprom80
  %82 = load %struct.sv*, %struct.sv** %arrayidx81, align 8
  %83 = load i32, i32* %j, align 4
  %idxprom82 = sext i32 %83 to i64
  %84 = load %struct.pollfd*, %struct.pollfd** %fds, align 8
  %arrayidx83 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %84, i64 %idxprom82
  %fd84 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %arrayidx83, i32 0, i32 0
  %85 = load i32, i32* %fd84, align 4
  %conv85 = sext i32 %85 to i64
  call void @Perl_sv_setiv(%struct.sv* %82, i64 %conv85)
  %86 = load i32, i32* %i, align 4
  %inc86 = add nsw i32 %86, 1
  store i32 %inc86, i32* %i, align 4
  %87 = load i32, i32* %ax, align 4
  %88 = load i32, i32* %i, align 4
  %add87 = add nsw i32 %87, %88
  %idxprom88 = sext i32 %add87 to i64
  %89 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx89 = getelementptr inbounds %struct.sv*, %struct.sv** %89, i64 %idxprom88
  %90 = load %struct.sv*, %struct.sv** %arrayidx89, align 8
  %91 = load i32, i32* %j, align 4
  %idxprom90 = sext i32 %91 to i64
  %92 = load %struct.pollfd*, %struct.pollfd** %fds, align 8
  %arrayidx91 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %92, i64 %idxprom90
  %revents92 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %arrayidx91, i32 0, i32 2
  %93 = load i16, i16* %revents92, align 2
  %conv93 = sext i16 %93 to i64
  call void @Perl_sv_setiv(%struct.sv* %90, i64 %conv93)
  %94 = load i32, i32* %i, align 4
  %inc94 = add nsw i32 %94, 1
  store i32 %inc94, i32* %i, align 4
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.body.78
  %95 = load i32, i32* %j, align 4
  %inc96 = add nsw i32 %95, 1
  store i32 %inc96, i32* %j, align 4
  br label %for.cond.75

for.end.97:                                       ; preds = %for.cond.75
  br label %if.end.98

if.end.98:                                        ; preds = %for.end.97, %for.end
  %96 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_free(%struct.sv* %96)
  %97 = load i32, i32* %ret, align 4
  %conv99 = sext i32 %97 to i64
  %call100 = call %struct.sv* @Perl_newSViv(i64 %conv99)
  %call101 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call100)
  %98 = load i32, i32* %ax, align 4
  %add102 = add nsw i32 %98, 0
  %idxprom103 = sext i32 %add102 to i64
  %99 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx104 = getelementptr inbounds %struct.sv*, %struct.sv** %99, i64 %idxprom103
  store %struct.sv* %call101, %struct.sv** %arrayidx104, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %100 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %101 = load i32, i32* %ax, align 4
  %idx.ext105 = sext i32 %101 to i64
  %add.ptr106 = getelementptr inbounds %struct.sv*, %struct.sv** %100, i64 %idx.ext105
  %102 = load i64, i64* %tmpXSoff, align 8
  %sub107 = sub nsw i64 %102, 1
  %add.ptr108 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr106, i64 %sub107
  store %struct.sv** %add.ptr108, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare i64 @Perl_sv_2iv(%struct.sv*) #1

declare i32 @Perl_my_poll(%struct.pollfd*, i64, i32) #1

declare %struct.sv* @Perl_newSViv(i64) #1

; Function Attrs: nounwind uwtable
define void @XS_IO__Handle_blocking(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %handle = alloca %struct._PerlIO**, align 8
  %blk = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmpXSoff = alloca i64, align 8
  %tmpXSoff51 = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp slt i32 %8, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load i32, i32* %items, align 4
  %cmp7 = icmp sgt i32 %9, 2
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %10 = load i32, i32* %ax, align 4
  %add9 = add nsw i32 %10, 0
  %idxprom = sext i32 %add9 to i64
  %11 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %11, i64 %idxprom
  %12 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %call = call %struct.io* @Perl_sv_2io(%struct.sv* %12)
  %sv_any = getelementptr inbounds %struct.io, %struct.io* %call, i32 0, i32 0
  %13 = load %struct.xpvio*, %struct.xpvio** %sv_any, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %13, i32 0, i32 7
  %14 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  store %struct._PerlIO** %14, %struct._PerlIO*** %handle, align 8
  %15 = load i32, i32* %items, align 4
  %cmp10 = icmp slt i32 %15, 2
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end
  store i32 -1, i32* %blk, align 4
  br label %if.end.25

if.else:                                          ; preds = %if.end
  %16 = load i32, i32* %ax, align 4
  %add13 = add nsw i32 %16, 1
  %idxprom14 = sext i32 %add13 to i64
  %17 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx15 = getelementptr inbounds %struct.sv*, %struct.sv** %17, i64 %idxprom14
  %18 = load %struct.sv*, %struct.sv** %arrayidx15, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 2
  %19 = load i32, i32* %sv_flags, align 4
  %and = and i32 %19, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %20 = load i32, i32* %ax, align 4
  %add16 = add nsw i32 %20, 1
  %idxprom17 = sext i32 %add16 to i64
  %21 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx18 = getelementptr inbounds %struct.sv*, %struct.sv** %21, i64 %idxprom17
  %22 = load %struct.sv*, %struct.sv** %arrayidx18, align 8
  %sv_any19 = getelementptr inbounds %struct.sv, %struct.sv* %22, i32 0, i32 0
  %23 = load i8*, i8** %sv_any19, align 8
  %24 = bitcast i8* %23 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %24, i32 0, i32 3
  %25 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %26 = load i32, i32* %ax, align 4
  %add20 = add nsw i32 %26, 1
  %idxprom21 = sext i32 %add20 to i64
  %27 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx22 = getelementptr inbounds %struct.sv*, %struct.sv** %27, i64 %idxprom21
  %28 = load %struct.sv*, %struct.sv** %arrayidx22, align 8
  %call23 = call i64 @Perl_sv_2iv(%struct.sv* %28)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %25, %cond.true ], [ %call23, %cond.false ]
  %conv24 = trunc i64 %cond to i32
  store i32 %conv24, i32* %blk, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end, %if.then.12
  %29 = load %struct._PerlIO**, %struct._PerlIO*** %handle, align 8
  %30 = load i32, i32* %items, align 4
  %cmp26 = icmp eq i32 %30, 1
  br i1 %cmp26, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %if.end.25
  br label %cond.end.32

cond.false.29:                                    ; preds = %if.end.25
  %31 = load i32, i32* %blk, align 4
  %tobool30 = icmp ne i32 %31, 0
  %cond31 = select i1 %tobool30, i32 1, i32 0
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.29, %cond.true.28
  %cond33 = phi i32 [ -1, %cond.true.28 ], [ %cond31, %cond.false.29 ]
  %call34 = call i32 @io_blocking(%struct._PerlIO** %29, i32 %cond33)
  store i32 %call34, i32* %ret, align 4
  %32 = load i32, i32* %ret, align 4
  %cmp35 = icmp sge i32 %32, 0
  br i1 %cmp35, label %if.then.37, label %if.else.47

if.then.37:                                       ; preds = %cond.end.32
  %33 = load i32, i32* %ret, align 4
  %conv38 = sext i32 %33 to i64
  %call39 = call %struct.sv* @Perl_newSViv(i64 %conv38)
  %call40 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call39)
  %34 = load i32, i32* %ax, align 4
  %add41 = add nsw i32 %34, 0
  %idxprom42 = sext i32 %add41 to i64
  %35 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx43 = getelementptr inbounds %struct.sv*, %struct.sv** %35, i64 %idxprom42
  store %struct.sv* %call40, %struct.sv** %arrayidx43, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %36 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %37 = load i32, i32* %ax, align 4
  %idx.ext44 = sext i32 %37 to i64
  %add.ptr45 = getelementptr inbounds %struct.sv*, %struct.sv** %36, i64 %idx.ext44
  %38 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %38, 1
  %add.ptr46 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr45, i64 %sub
  store %struct.sv** %add.ptr46, %struct.sv*** @PL_stack_sp, align 8
  br label %return

if.else.47:                                       ; preds = %cond.end.32
  %39 = load i32, i32* %ax, align 4
  %add48 = add nsw i32 %39, 0
  %idxprom49 = sext i32 %add48 to i64
  %40 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx50 = getelementptr inbounds %struct.sv*, %struct.sv** %40, i64 %idxprom49
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx50, align 8
  store i64 1, i64* %tmpXSoff51, align 8
  %41 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %42 = load i32, i32* %ax, align 4
  %idx.ext52 = sext i32 %42 to i64
  %add.ptr53 = getelementptr inbounds %struct.sv*, %struct.sv** %41, i64 %idx.ext52
  %43 = load i64, i64* %tmpXSoff51, align 8
  %sub54 = sub nsw i64 %43, 1
  %add.ptr55 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr53, i64 %sub54
  store %struct.sv** %add.ptr55, %struct.sv*** @PL_stack_sp, align 8
  br label %return

return:                                           ; preds = %if.else.47, %if.then.37
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @io_blocking(%struct._PerlIO** %f, i32 %block) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._PerlIO**, align 8
  %block.addr = alloca i32, align 4
  %RETVAL = alloca i32, align 4
  %mode = alloca i32, align 4
  %newmode = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i32 %block, i32* %block.addr, align 4
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32* @__errno_location()
  store i32 9, i32* %call, align 4
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call1 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %1)
  %call2 = call i32 (i32, i32, ...) @fcntl(i32 %call1, i32 3, i32 0)
  store i32 %call2, i32* %RETVAL, align 4
  %2 = load i32, i32* %RETVAL, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %if.then.3, label %if.end.21

if.then.3:                                        ; preds = %if.end
  %3 = load i32, i32* %RETVAL, align 4
  store i32 %3, i32* %mode, align 4
  %4 = load i32, i32* %mode, align 4
  store i32 %4, i32* %newmode, align 4
  %5 = load i32, i32* %RETVAL, align 4
  %and = and i32 %5, 2048
  %tobool4 = icmp ne i32 %and, 0
  %cond = select i1 %tobool4, i32 0, i32 1
  store i32 %cond, i32* %RETVAL, align 4
  %6 = load i32, i32* %block.addr, align 4
  %cmp5 = icmp eq i32 %6, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.3
  %7 = load i32, i32* %newmode, align 4
  %and7 = and i32 %7, -2049
  store i32 %and7, i32* %newmode, align 4
  %8 = load i32, i32* %newmode, align 4
  %or = or i32 %8, 2048
  store i32 %or, i32* %newmode, align 4
  br label %if.end.12

if.else:                                          ; preds = %if.then.3
  %9 = load i32, i32* %block.addr, align 4
  %cmp8 = icmp sgt i32 %9, 0
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.else
  %10 = load i32, i32* %newmode, align 4
  %and10 = and i32 %10, -2049
  store i32 %and10, i32* %newmode, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.6
  %11 = load i32, i32* %newmode, align 4
  %12 = load i32, i32* %mode, align 4
  %cmp13 = icmp ne i32 %11, %12
  br i1 %cmp13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %if.end.12
  %13 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call15 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %13)
  %14 = load i32, i32* %newmode, align 4
  %call16 = call i32 (i32, i32, ...) @fcntl(i32 %call15, i32 4, i32 %14)
  store i32 %call16, i32* %ret, align 4
  %15 = load i32, i32* %ret, align 4
  %cmp17 = icmp slt i32 %15, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.14
  %16 = load i32, i32* %ret, align 4
  store i32 %16, i32* %RETVAL, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.then.14
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end.12
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end
  %17 = load i32, i32* %RETVAL, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define void @XS_IO__Handle_ungetc(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %handle = alloca %struct._PerlIO**, align 8
  %c = alloca i32, align 4
  %RETVAL = alloca i32, align 4
  %targ = alloca %struct.sv*, align 8
  %tmp = alloca %struct.sv*, align 8
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp ne i32 %8, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %9, 0
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %call = call %struct.io* @Perl_sv_2io(%struct.sv* %11)
  %sv_any = getelementptr inbounds %struct.io, %struct.io* %call, i32 0, i32 0
  %12 = load %struct.xpvio*, %struct.xpvio** %sv_any, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %12, i32 0, i32 7
  %13 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  store %struct._PerlIO** %13, %struct._PerlIO*** %handle, align 8
  %14 = load i32, i32* %ax, align 4
  %add8 = add nsw i32 %14, 1
  %idxprom9 = sext i32 %add8 to i64
  %15 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx10 = getelementptr inbounds %struct.sv*, %struct.sv** %15, i64 %idxprom9
  %16 = load %struct.sv*, %struct.sv** %arrayidx10, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 2
  %17 = load i32, i32* %sv_flags, align 4
  %and = and i32 %17, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %18 = load i32, i32* %ax, align 4
  %add11 = add nsw i32 %18, 1
  %idxprom12 = sext i32 %add11 to i64
  %19 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx13 = getelementptr inbounds %struct.sv*, %struct.sv** %19, i64 %idxprom12
  %20 = load %struct.sv*, %struct.sv** %arrayidx13, align 8
  %sv_any14 = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 0
  %21 = load i8*, i8** %sv_any14, align 8
  %22 = bitcast i8* %21 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %22, i32 0, i32 3
  %23 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %24 = load i32, i32* %ax, align 4
  %add15 = add nsw i32 %24, 1
  %idxprom16 = sext i32 %add15 to i64
  %25 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx17 = getelementptr inbounds %struct.sv*, %struct.sv** %25, i64 %idxprom16
  %26 = load %struct.sv*, %struct.sv** %arrayidx17, align 8
  %call18 = call i64 @Perl_sv_2iv(%struct.sv* %26)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %23, %cond.true ], [ %call18, %cond.false ]
  %conv19 = trunc i64 %cond to i32
  store i32 %conv19, i32* %c, align 4
  %27 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %27, i32 0, i32 7
  %28 = load i8, i8* %op_private, align 1
  %conv20 = zext i8 %28 to i32
  %and21 = and i32 %conv20, 32
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %cond.true.23, label %cond.false.25

cond.true.23:                                     ; preds = %cond.end
  %29 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %29, i32 0, i32 3
  %30 = load i64, i64* %op_targ, align 8
  %31 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx24 = getelementptr inbounds %struct.sv*, %struct.sv** %31, i64 %30
  %32 = load %struct.sv*, %struct.sv** %arrayidx24, align 8
  br label %cond.end.27

cond.false.25:                                    ; preds = %cond.end
  %call26 = call %struct.sv* @Perl_sv_newmortal()
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.25, %cond.true.23
  %cond28 = phi %struct.sv* [ %32, %cond.true.23 ], [ %call26, %cond.false.25 ]
  store %struct.sv* %cond28, %struct.sv** %targ, align 8
  %33 = load %struct._PerlIO**, %struct._PerlIO*** %handle, align 8
  %tobool29 = icmp ne %struct._PerlIO** %33, null
  br i1 %tobool29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %cond.end.27
  %34 = load %struct._PerlIO**, %struct._PerlIO*** %handle, align 8
  %35 = load i32, i32* %c, align 4
  %call31 = call i32 @PerlIO_ungetc(%struct._PerlIO** %34, i32 %35)
  store i32 %call31, i32* %RETVAL, align 4
  br label %if.end.33

if.else:                                          ; preds = %cond.end.27
  store i32 -1, i32* %RETVAL, align 4
  %call32 = call i32* @__errno_location()
  store i32 22, i32* %call32, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.30
  %36 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %37 = load i32, i32* %ax, align 4
  %idx.ext34 = sext i32 %37 to i64
  %add.ptr35 = getelementptr inbounds %struct.sv*, %struct.sv** %36, i64 %idx.ext34
  %add.ptr36 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr35, i64 -1
  store %struct.sv** %add.ptr36, %struct.sv*** %sp, align 8
  %38 = load %struct.sv*, %struct.sv** %targ, align 8
  %39 = load i32, i32* %RETVAL, align 4
  %conv37 = sext i32 %39 to i64
  call void @Perl_sv_setiv(%struct.sv* %38, i64 %conv37)
  %40 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags38 = getelementptr inbounds %struct.sv, %struct.sv* %40, i32 0, i32 2
  %41 = load i32, i32* %sv_flags38, align 4
  %and39 = and i32 %41, 16384
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.end.33
  %42 = load %struct.sv*, %struct.sv** %targ, align 8
  %call42 = call i32 @Perl_mg_set(%struct.sv* %42)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.end.33
  %43 = load %struct.sv*, %struct.sv** %targ, align 8
  %44 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr44 = getelementptr inbounds %struct.sv*, %struct.sv** %44, i32 1
  store %struct.sv** %incdec.ptr44, %struct.sv*** %sp, align 8
  store %struct.sv* %43, %struct.sv** %incdec.ptr44, align 8
  store %struct.sv* %43, %struct.sv** %tmp
  %45 = load %struct.sv*, %struct.sv** %tmp
  store i64 1, i64* %tmpXSoff, align 8
  %46 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %47 = load i32, i32* %ax, align 4
  %idx.ext46 = sext i32 %47 to i64
  %add.ptr47 = getelementptr inbounds %struct.sv*, %struct.sv** %46, i64 %idx.ext46
  %48 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %48, 1
  %add.ptr48 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr47, i64 %sub
  store %struct.sv** %add.ptr48, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare i32 @PerlIO_ungetc(%struct._PerlIO**, i32) #1

declare i32 @Perl_mg_set(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define void @XS_IO__Handle_error(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %handle = alloca %struct._PerlIO**, align 8
  %RETVAL = alloca i32, align 4
  %targ = alloca %struct.sv*, align 8
  %tmp = alloca %struct.sv*, align 8
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp ne i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %9, 0
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %call = call %struct.io* @Perl_sv_2io(%struct.sv* %11)
  %sv_any = getelementptr inbounds %struct.io, %struct.io* %call, i32 0, i32 0
  %12 = load %struct.xpvio*, %struct.xpvio** %sv_any, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %12, i32 0, i32 7
  %13 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  store %struct._PerlIO** %13, %struct._PerlIO*** %handle, align 8
  %14 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %14, i32 0, i32 7
  %15 = load i8, i8* %op_private, align 1
  %conv8 = zext i8 %15 to i32
  %and = and i32 %conv8, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %16 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %16, i32 0, i32 3
  %17 = load i64, i64* %op_targ, align 8
  %18 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx9 = getelementptr inbounds %struct.sv*, %struct.sv** %18, i64 %17
  %19 = load %struct.sv*, %struct.sv** %arrayidx9, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call10 = call %struct.sv* @Perl_sv_newmortal()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %19, %cond.true ], [ %call10, %cond.false ]
  store %struct.sv* %cond, %struct.sv** %targ, align 8
  %20 = load %struct._PerlIO**, %struct._PerlIO*** %handle, align 8
  %tobool11 = icmp ne %struct._PerlIO** %20, null
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %cond.end
  %21 = load %struct._PerlIO**, %struct._PerlIO*** %handle, align 8
  %call13 = call i32 @Perl_PerlIO_error(%struct._PerlIO** %21)
  store i32 %call13, i32* %RETVAL, align 4
  br label %if.end.15

if.else:                                          ; preds = %cond.end
  store i32 -1, i32* %RETVAL, align 4
  %call14 = call i32* @__errno_location()
  store i32 22, i32* %call14, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.12
  %22 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %23 = load i32, i32* %ax, align 4
  %idx.ext16 = sext i32 %23 to i64
  %add.ptr17 = getelementptr inbounds %struct.sv*, %struct.sv** %22, i64 %idx.ext16
  %add.ptr18 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr17, i64 -1
  store %struct.sv** %add.ptr18, %struct.sv*** %sp, align 8
  %24 = load %struct.sv*, %struct.sv** %targ, align 8
  %25 = load i32, i32* %RETVAL, align 4
  %conv19 = sext i32 %25 to i64
  call void @Perl_sv_setiv(%struct.sv* %24, i64 %conv19)
  %26 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %26, i32 0, i32 2
  %27 = load i32, i32* %sv_flags, align 4
  %and20 = and i32 %27, 16384
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.15
  %28 = load %struct.sv*, %struct.sv** %targ, align 8
  %call23 = call i32 @Perl_mg_set(%struct.sv* %28)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.15
  %29 = load %struct.sv*, %struct.sv** %targ, align 8
  %30 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr25 = getelementptr inbounds %struct.sv*, %struct.sv** %30, i32 1
  store %struct.sv** %incdec.ptr25, %struct.sv*** %sp, align 8
  store %struct.sv* %29, %struct.sv** %incdec.ptr25, align 8
  store %struct.sv* %29, %struct.sv** %tmp
  %31 = load %struct.sv*, %struct.sv** %tmp
  store i64 1, i64* %tmpXSoff, align 8
  %32 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %33 = load i32, i32* %ax, align 4
  %idx.ext27 = sext i32 %33 to i64
  %add.ptr28 = getelementptr inbounds %struct.sv*, %struct.sv** %32, i64 %idx.ext27
  %34 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %34, 1
  %add.ptr29 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr28, i64 %sub
  store %struct.sv** %add.ptr29, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare i32 @Perl_PerlIO_error(%struct._PerlIO**) #1

; Function Attrs: nounwind uwtable
define void @XS_IO__Handle_clearerr(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %handle = alloca %struct._PerlIO**, align 8
  %RETVAL = alloca i32, align 4
  %targ = alloca %struct.sv*, align 8
  %tmp = alloca %struct.sv*, align 8
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp ne i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %9, 0
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %call = call %struct.io* @Perl_sv_2io(%struct.sv* %11)
  %sv_any = getelementptr inbounds %struct.io, %struct.io* %call, i32 0, i32 0
  %12 = load %struct.xpvio*, %struct.xpvio** %sv_any, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %12, i32 0, i32 7
  %13 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  store %struct._PerlIO** %13, %struct._PerlIO*** %handle, align 8
  %14 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %14, i32 0, i32 7
  %15 = load i8, i8* %op_private, align 1
  %conv8 = zext i8 %15 to i32
  %and = and i32 %conv8, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %16 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %16, i32 0, i32 3
  %17 = load i64, i64* %op_targ, align 8
  %18 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx9 = getelementptr inbounds %struct.sv*, %struct.sv** %18, i64 %17
  %19 = load %struct.sv*, %struct.sv** %arrayidx9, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call10 = call %struct.sv* @Perl_sv_newmortal()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %19, %cond.true ], [ %call10, %cond.false ]
  store %struct.sv* %cond, %struct.sv** %targ, align 8
  %20 = load %struct._PerlIO**, %struct._PerlIO*** %handle, align 8
  %tobool11 = icmp ne %struct._PerlIO** %20, null
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %cond.end
  %21 = load %struct._PerlIO**, %struct._PerlIO*** %handle, align 8
  call void @Perl_PerlIO_clearerr(%struct._PerlIO** %21)
  store i32 0, i32* %RETVAL, align 4
  br label %if.end.14

if.else:                                          ; preds = %cond.end
  store i32 -1, i32* %RETVAL, align 4
  %call13 = call i32* @__errno_location()
  store i32 22, i32* %call13, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.12
  %22 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %23 = load i32, i32* %ax, align 4
  %idx.ext15 = sext i32 %23 to i64
  %add.ptr16 = getelementptr inbounds %struct.sv*, %struct.sv** %22, i64 %idx.ext15
  %add.ptr17 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr16, i64 -1
  store %struct.sv** %add.ptr17, %struct.sv*** %sp, align 8
  %24 = load %struct.sv*, %struct.sv** %targ, align 8
  %25 = load i32, i32* %RETVAL, align 4
  %conv18 = sext i32 %25 to i64
  call void @Perl_sv_setiv(%struct.sv* %24, i64 %conv18)
  %26 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %26, i32 0, i32 2
  %27 = load i32, i32* %sv_flags, align 4
  %and19 = and i32 %27, 16384
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.14
  %28 = load %struct.sv*, %struct.sv** %targ, align 8
  %call22 = call i32 @Perl_mg_set(%struct.sv* %28)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.end.14
  %29 = load %struct.sv*, %struct.sv** %targ, align 8
  %30 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr24 = getelementptr inbounds %struct.sv*, %struct.sv** %30, i32 1
  store %struct.sv** %incdec.ptr24, %struct.sv*** %sp, align 8
  store %struct.sv* %29, %struct.sv** %incdec.ptr24, align 8
  store %struct.sv* %29, %struct.sv** %tmp
  %31 = load %struct.sv*, %struct.sv** %tmp
  store i64 1, i64* %tmpXSoff, align 8
  %32 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %33 = load i32, i32* %ax, align 4
  %idx.ext26 = sext i32 %33 to i64
  %add.ptr27 = getelementptr inbounds %struct.sv*, %struct.sv** %32, i64 %idx.ext26
  %34 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %34, 1
  %add.ptr28 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr27, i64 %sub
  store %struct.sv** %add.ptr28, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare void @Perl_PerlIO_clearerr(%struct._PerlIO**) #1

; Function Attrs: nounwind uwtable
define void @XS_IO__Handle_untaint(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %handle = alloca %struct.sv*, align 8
  %RETVAL = alloca i32, align 4
  %targ = alloca %struct.sv*, align 8
  %io = alloca %struct.io*, align 8
  %tmp = alloca %struct.sv*, align 8
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp ne i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %9, 0
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %11, %struct.sv** %handle, align 8
  %12 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %12, i32 0, i32 7
  %13 = load i8, i8* %op_private, align 1
  %conv8 = zext i8 %13 to i32
  %and = and i32 %conv8, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %14 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %14, i32 0, i32 3
  %15 = load i64, i64* %op_targ, align 8
  %16 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx9 = getelementptr inbounds %struct.sv*, %struct.sv** %16, i64 %15
  %17 = load %struct.sv*, %struct.sv** %arrayidx9, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = call %struct.sv* @Perl_sv_newmortal()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %17, %cond.true ], [ %call, %cond.false ]
  store %struct.sv* %cond, %struct.sv** %targ, align 8
  %18 = load %struct.sv*, %struct.sv** %handle, align 8
  %call10 = call %struct.io* @Perl_sv_2io(%struct.sv* %18)
  store %struct.io* %call10, %struct.io** %io, align 8
  %19 = load %struct.io*, %struct.io** %io, align 8
  %tobool11 = icmp ne %struct.io* %19, null
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %cond.end
  %20 = load %struct.io*, %struct.io** %io, align 8
  %sv_any = getelementptr inbounds %struct.io, %struct.io* %20, i32 0, i32 0
  %21 = load %struct.xpvio*, %struct.xpvio** %sv_any, align 8
  %xio_flags = getelementptr inbounds %struct.xpvio, %struct.xpvio* %21, i32 0, i32 22
  %22 = load i8, i8* %xio_flags, align 1
  %conv13 = sext i8 %22 to i32
  %or = or i32 %conv13, 16
  %conv14 = trunc i32 %or to i8
  store i8 %conv14, i8* %xio_flags, align 1
  store i32 0, i32* %RETVAL, align 4
  br label %if.end.16

if.else:                                          ; preds = %cond.end
  store i32 -1, i32* %RETVAL, align 4
  %call15 = call i32* @__errno_location()
  store i32 22, i32* %call15, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.12
  %23 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %24 = load i32, i32* %ax, align 4
  %idx.ext17 = sext i32 %24 to i64
  %add.ptr18 = getelementptr inbounds %struct.sv*, %struct.sv** %23, i64 %idx.ext17
  %add.ptr19 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr18, i64 -1
  store %struct.sv** %add.ptr19, %struct.sv*** %sp, align 8
  %25 = load %struct.sv*, %struct.sv** %targ, align 8
  %26 = load i32, i32* %RETVAL, align 4
  %conv20 = sext i32 %26 to i64
  call void @Perl_sv_setiv(%struct.sv* %25, i64 %conv20)
  %27 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 2
  %28 = load i32, i32* %sv_flags, align 4
  %and21 = and i32 %28, 16384
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.16
  %29 = load %struct.sv*, %struct.sv** %targ, align 8
  %call24 = call i32 @Perl_mg_set(%struct.sv* %29)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.16
  %30 = load %struct.sv*, %struct.sv** %targ, align 8
  %31 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr26 = getelementptr inbounds %struct.sv*, %struct.sv** %31, i32 1
  store %struct.sv** %incdec.ptr26, %struct.sv*** %sp, align 8
  store %struct.sv* %30, %struct.sv** %incdec.ptr26, align 8
  store %struct.sv* %30, %struct.sv** %tmp
  %32 = load %struct.sv*, %struct.sv** %tmp
  store i64 1, i64* %tmpXSoff, align 8
  %33 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %34 = load i32, i32* %ax, align 4
  %idx.ext28 = sext i32 %34 to i64
  %add.ptr29 = getelementptr inbounds %struct.sv*, %struct.sv** %33, i64 %idx.ext28
  %35 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %35, 1
  %add.ptr30 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr29, i64 %sub
  store %struct.sv** %add.ptr30, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_IO__Handle_flush(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %handle = alloca %struct._PerlIO**, align 8
  %RETVAL = alloca i32, align 4
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp ne i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %9, 0
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %call = call %struct.io* @Perl_sv_2io(%struct.sv* %11)
  %sv_any = getelementptr inbounds %struct.io, %struct.io* %call, i32 0, i32 0
  %12 = load %struct.xpvio*, %struct.xpvio** %sv_any, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %12, i32 0, i32 8
  %13 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  store %struct._PerlIO** %13, %struct._PerlIO*** %handle, align 8
  %14 = load %struct._PerlIO**, %struct._PerlIO*** %handle, align 8
  %tobool = icmp ne %struct._PerlIO** %14, null
  br i1 %tobool, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %15 = load %struct._PerlIO**, %struct._PerlIO*** %handle, align 8
  %call9 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %15)
  store i32 %call9, i32* %RETVAL, align 4
  br label %if.end.11

if.else:                                          ; preds = %if.end
  store i32 -1, i32* %RETVAL, align 4
  %call10 = call i32* @__errno_location()
  store i32 22, i32* %call10, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.8
  %call12 = call %struct.sv* @Perl_sv_newmortal()
  %16 = load i32, i32* %ax, align 4
  %add13 = add nsw i32 %16, 0
  %idxprom14 = sext i32 %add13 to i64
  %17 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx15 = getelementptr inbounds %struct.sv*, %struct.sv** %17, i64 %idxprom14
  store %struct.sv* %call12, %struct.sv** %arrayidx15, align 8
  %18 = load i32, i32* %RETVAL, align 4
  %cmp16 = icmp ne i32 %18, -1
  br i1 %cmp16, label %if.then.18, label %if.end.31

if.then.18:                                       ; preds = %if.end.11
  %19 = load i32, i32* %RETVAL, align 4
  %cmp19 = icmp eq i32 %19, 0
  br i1 %cmp19, label %if.then.21, label %if.else.25

if.then.21:                                       ; preds = %if.then.18
  %20 = load i32, i32* %ax, align 4
  %add22 = add nsw i32 %20, 0
  %idxprom23 = sext i32 %add22 to i64
  %21 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx24 = getelementptr inbounds %struct.sv*, %struct.sv** %21, i64 %idxprom23
  %22 = load %struct.sv*, %struct.sv** %arrayidx24, align 8
  call void @Perl_sv_setpvn(%struct.sv* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i64 10)
  br label %if.end.30

if.else.25:                                       ; preds = %if.then.18
  %23 = load i32, i32* %ax, align 4
  %add26 = add nsw i32 %23, 0
  %idxprom27 = sext i32 %add26 to i64
  %24 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx28 = getelementptr inbounds %struct.sv*, %struct.sv** %24, i64 %idxprom27
  %25 = load %struct.sv*, %struct.sv** %arrayidx28, align 8
  %26 = load i32, i32* %RETVAL, align 4
  %conv29 = sext i32 %26 to i64
  call void @Perl_sv_setiv(%struct.sv* %25, i64 %conv29)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.25, %if.then.21
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.11
  store i64 1, i64* %tmpXSoff, align 8
  %27 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %28 = load i32, i32* %ax, align 4
  %idx.ext32 = sext i32 %28 to i64
  %add.ptr33 = getelementptr inbounds %struct.sv*, %struct.sv** %27, i64 %idx.ext32
  %29 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %29, 1
  %add.ptr34 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr33, i64 %sub
  store %struct.sv** %add.ptr34, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare i32 @Perl_PerlIO_flush(%struct._PerlIO**) #1

; Function Attrs: nounwind uwtable
define void @XS_IO__Handle_setbuf(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %handle = alloca %struct._PerlIO**, align 8
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp slt i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %9, 0
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %call = call %struct.io* @Perl_sv_2io(%struct.sv* %11)
  %sv_any = getelementptr inbounds %struct.io, %struct.io* %call, i32 0, i32 0
  %12 = load %struct.xpvio*, %struct.xpvio** %sv_any, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %12, i32 0, i32 8
  %13 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  store %struct._PerlIO** %13, %struct._PerlIO*** %handle, align 8
  %14 = load %struct._PerlIO**, %struct._PerlIO*** %handle, align 8
  %tobool = icmp ne %struct._PerlIO** %14, null
  br i1 %tobool, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %call9 = call i32 @not_here(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end
  store i64 0, i64* %tmpXSoff, align 8
  %15 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %16 = load i32, i32* %ax, align 4
  %idx.ext11 = sext i32 %16 to i64
  %add.ptr12 = getelementptr inbounds %struct.sv*, %struct.sv** %15, i64 %idx.ext11
  %17 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %17, 1
  %add.ptr13 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr12, i64 %sub
  store %struct.sv** %add.ptr13, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @not_here(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.53, i32 0, i32 0), i8* %0)
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define void @XS_IO__Handle_setvbuf(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %RETVAL = alloca i32, align 4
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp ne i32 %8, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call i32 @not_here(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0))
  store i32 %call, i32* %RETVAL, align 4
  %call7 = call %struct.sv* @Perl_sv_newmortal()
  %9 = load i32, i32* %ax, align 4
  %add8 = add nsw i32 %9, 0
  %idxprom = sext i32 %add8 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  store %struct.sv* %call7, %struct.sv** %arrayidx, align 8
  %11 = load i32, i32* %RETVAL, align 4
  %cmp9 = icmp ne i32 %11, -1
  br i1 %cmp9, label %if.then.11, label %if.end.23

if.then.11:                                       ; preds = %if.end
  %12 = load i32, i32* %RETVAL, align 4
  %cmp12 = icmp eq i32 %12, 0
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.11
  %13 = load i32, i32* %ax, align 4
  %add15 = add nsw i32 %13, 0
  %idxprom16 = sext i32 %add15 to i64
  %14 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx17 = getelementptr inbounds %struct.sv*, %struct.sv** %14, i64 %idxprom16
  %15 = load %struct.sv*, %struct.sv** %arrayidx17, align 8
  call void @Perl_sv_setpvn(%struct.sv* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i64 10)
  br label %if.end.22

if.else:                                          ; preds = %if.then.11
  %16 = load i32, i32* %ax, align 4
  %add18 = add nsw i32 %16, 0
  %idxprom19 = sext i32 %add18 to i64
  %17 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx20 = getelementptr inbounds %struct.sv*, %struct.sv** %17, i64 %idxprom19
  %18 = load %struct.sv*, %struct.sv** %arrayidx20, align 8
  %19 = load i32, i32* %RETVAL, align 4
  %conv21 = sext i32 %19 to i64
  call void @Perl_sv_setiv(%struct.sv* %18, i64 %conv21)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.14
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end
  store i64 1, i64* %tmpXSoff, align 8
  %20 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %21 = load i32, i32* %ax, align 4
  %idx.ext24 = sext i32 %21 to i64
  %add.ptr25 = getelementptr inbounds %struct.sv*, %struct.sv** %20, i64 %idx.ext24
  %22 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %22, 1
  %add.ptr26 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr25, i64 %sub
  store %struct.sv** %add.ptr26, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_IO__Handle_sync(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %handle = alloca %struct._PerlIO**, align 8
  %RETVAL = alloca i32, align 4
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp ne i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %9, 0
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %call = call %struct.io* @Perl_sv_2io(%struct.sv* %11)
  %sv_any = getelementptr inbounds %struct.io, %struct.io* %call, i32 0, i32 0
  %12 = load %struct.xpvio*, %struct.xpvio** %sv_any, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %12, i32 0, i32 8
  %13 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  store %struct._PerlIO** %13, %struct._PerlIO*** %handle, align 8
  %call8 = call i32 @not_here(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0))
  store i32 %call8, i32* %RETVAL, align 4
  %call9 = call %struct.sv* @Perl_sv_newmortal()
  %14 = load i32, i32* %ax, align 4
  %add10 = add nsw i32 %14, 0
  %idxprom11 = sext i32 %add10 to i64
  %15 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx12 = getelementptr inbounds %struct.sv*, %struct.sv** %15, i64 %idxprom11
  store %struct.sv* %call9, %struct.sv** %arrayidx12, align 8
  %16 = load i32, i32* %RETVAL, align 4
  %cmp13 = icmp ne i32 %16, -1
  br i1 %cmp13, label %if.then.15, label %if.end.27

if.then.15:                                       ; preds = %if.end
  %17 = load i32, i32* %RETVAL, align 4
  %cmp16 = icmp eq i32 %17, 0
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then.15
  %18 = load i32, i32* %ax, align 4
  %add19 = add nsw i32 %18, 0
  %idxprom20 = sext i32 %add19 to i64
  %19 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx21 = getelementptr inbounds %struct.sv*, %struct.sv** %19, i64 %idxprom20
  %20 = load %struct.sv*, %struct.sv** %arrayidx21, align 8
  call void @Perl_sv_setpvn(%struct.sv* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i64 10)
  br label %if.end.26

if.else:                                          ; preds = %if.then.15
  %21 = load i32, i32* %ax, align 4
  %add22 = add nsw i32 %21, 0
  %idxprom23 = sext i32 %add22 to i64
  %22 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx24 = getelementptr inbounds %struct.sv*, %struct.sv** %22, i64 %idxprom23
  %23 = load %struct.sv*, %struct.sv** %arrayidx24, align 8
  %24 = load i32, i32* %RETVAL, align 4
  %conv25 = sext i32 %24 to i64
  call void @Perl_sv_setiv(%struct.sv* %23, i64 %conv25)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.18
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end
  store i64 1, i64* %tmpXSoff, align 8
  %25 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %26 = load i32, i32* %ax, align 4
  %idx.ext28 = sext i32 %26 to i64
  %add.ptr29 = getelementptr inbounds %struct.sv*, %struct.sv** %25, i64 %idx.ext28
  %27 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %27, 1
  %add.ptr30 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr29, i64 %sub
  store %struct.sv** %add.ptr30, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_IO__Socket_sockatmark(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %sock = alloca %struct._PerlIO**, align 8
  %fd = alloca i32, align 4
  %RETVAL = alloca i32, align 4
  %flag = alloca i32, align 4
  %tmpXSoff = alloca i64, align 8
  %tmpXSoff39 = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp ne i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %9, 0
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %call = call %struct.io* @Perl_sv_2io(%struct.sv* %11)
  %sv_any = getelementptr inbounds %struct.io, %struct.io* %call, i32 0, i32 0
  %12 = load %struct.xpvio*, %struct.xpvio** %sv_any, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %12, i32 0, i32 7
  %13 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  store %struct._PerlIO** %13, %struct._PerlIO*** %sock, align 8
  %14 = load %struct._PerlIO**, %struct._PerlIO*** %sock, align 8
  %call8 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %14)
  store i32 %call8, i32* %fd, align 4
  store i32 0, i32* %flag, align 4
  %15 = load i32, i32* %fd, align 4
  %call9 = call i32 (i32, i64, ...) @ioctl(i32 %15, i64 35077, i32* %flag)
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.19

if.then.12:                                       ; preds = %if.end
  %16 = load i32, i32* %ax, align 4
  %add13 = add nsw i32 %16, 0
  %idxprom14 = sext i32 %add13 to i64
  %17 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx15 = getelementptr inbounds %struct.sv*, %struct.sv** %17, i64 %idxprom14
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx15, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %18 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %19 = load i32, i32* %ax, align 4
  %idx.ext16 = sext i32 %19 to i64
  %add.ptr17 = getelementptr inbounds %struct.sv*, %struct.sv** %18, i64 %idx.ext16
  %20 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %20, 1
  %add.ptr18 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr17, i64 %sub
  store %struct.sv** %add.ptr18, %struct.sv*** @PL_stack_sp, align 8
  br label %return

if.end.19:                                        ; preds = %if.end
  %21 = load i32, i32* %flag, align 4
  store i32 %21, i32* %RETVAL, align 4
  %call20 = call %struct.sv* @Perl_sv_newmortal()
  %22 = load i32, i32* %ax, align 4
  %add21 = add nsw i32 %22, 0
  %idxprom22 = sext i32 %add21 to i64
  %23 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx23 = getelementptr inbounds %struct.sv*, %struct.sv** %23, i64 %idxprom22
  store %struct.sv* %call20, %struct.sv** %arrayidx23, align 8
  %24 = load i32, i32* %RETVAL, align 4
  %cmp24 = icmp ne i32 %24, -1
  br i1 %cmp24, label %if.then.26, label %if.end.38

if.then.26:                                       ; preds = %if.end.19
  %25 = load i32, i32* %RETVAL, align 4
  %cmp27 = icmp eq i32 %25, 0
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.then.26
  %26 = load i32, i32* %ax, align 4
  %add30 = add nsw i32 %26, 0
  %idxprom31 = sext i32 %add30 to i64
  %27 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx32 = getelementptr inbounds %struct.sv*, %struct.sv** %27, i64 %idxprom31
  %28 = load %struct.sv*, %struct.sv** %arrayidx32, align 8
  call void @Perl_sv_setpvn(%struct.sv* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i64 10)
  br label %if.end.37

if.else:                                          ; preds = %if.then.26
  %29 = load i32, i32* %ax, align 4
  %add33 = add nsw i32 %29, 0
  %idxprom34 = sext i32 %add33 to i64
  %30 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx35 = getelementptr inbounds %struct.sv*, %struct.sv** %30, i64 %idxprom34
  %31 = load %struct.sv*, %struct.sv** %arrayidx35, align 8
  %32 = load i32, i32* %RETVAL, align 4
  %conv36 = sext i32 %32 to i64
  call void @Perl_sv_setiv(%struct.sv* %31, i64 %conv36)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.29
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.19
  store i64 1, i64* %tmpXSoff39, align 8
  %33 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %34 = load i32, i32* %ax, align 4
  %idx.ext40 = sext i32 %34 to i64
  %add.ptr41 = getelementptr inbounds %struct.sv*, %struct.sv** %33, i64 %idx.ext40
  %35 = load i64, i64* %tmpXSoff39, align 8
  %sub42 = sub nsw i64 %35, 1
  %add.ptr43 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr41, i64 %sub42
  store %struct.sv** %add.ptr43, %struct.sv*** @PL_stack_sp, align 8
  br label %return

return:                                           ; preds = %if.end.38, %if.then.12
  ret void
}

declare i32 @Perl_PerlIO_fileno(%struct._PerlIO**) #1

declare i32 @ioctl(i32, i64, ...) #1

; Function Attrs: nounwind uwtable
define void @boot_IO(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %file = alloca i8*, align 8
  %stash = alloca %struct.hv*, align 8
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8** %file, align 8
  %8 = load i8*, i8** %file, align 8
  %call = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), void (%struct.cv*)* @XS_IO__Seekable_getpos, i8* %8)
  %9 = load i8*, i8** %file, align 8
  %call6 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), void (%struct.cv*)* @XS_IO__Seekable_setpos, i8* %9)
  %10 = load i8*, i8** %file, align 8
  %call7 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0), void (%struct.cv*)* @XS_IO__File_new_tmpfile, i8* %10)
  %11 = load i8*, i8** %file, align 8
  %call8 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0), void (%struct.cv*)* @XS_IO__Poll__poll, i8* %11)
  %12 = load i8*, i8** %file, align 8
  %call9 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i32 0, i32 0), void (%struct.cv*)* @XS_IO__Handle_blocking, i8* %12)
  %13 = bitcast %struct.cv* %call9 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0))
  %14 = load i8*, i8** %file, align 8
  %call10 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), void (%struct.cv*)* @XS_IO__Handle_ungetc, i8* %14)
  %15 = load i8*, i8** %file, align 8
  %call11 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), void (%struct.cv*)* @XS_IO__Handle_error, i8* %15)
  %16 = load i8*, i8** %file, align 8
  %call12 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0), void (%struct.cv*)* @XS_IO__Handle_clearerr, i8* %16)
  %17 = load i8*, i8** %file, align 8
  %call13 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), void (%struct.cv*)* @XS_IO__Handle_untaint, i8* %17)
  %18 = load i8*, i8** %file, align 8
  %call14 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0), void (%struct.cv*)* @XS_IO__Handle_flush, i8* %18)
  %19 = load i8*, i8** %file, align 8
  %call15 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), void (%struct.cv*)* @XS_IO__Handle_setbuf, i8* %19)
  %20 = load i8*, i8** %file, align 8
  %call16 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), void (%struct.cv*)* @XS_IO__Handle_setvbuf, i8* %20)
  %21 = load i8*, i8** %file, align 8
  %call17 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), void (%struct.cv*)* @XS_IO__Handle_sync, i8* %21)
  %22 = load i8*, i8** %file, align 8
  %call18 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i32 0, i32 0), void (%struct.cv*)* @XS_IO__Socket_sockatmark, i8* %22)
  %23 = bitcast %struct.cv* %call18 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0))
  %call19 = call %struct.hv* @Perl_gv_stashpvn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 8, i32 1)
  store %struct.hv* %call19, %struct.hv** %stash, align 8
  %24 = load %struct.hv*, %struct.hv** %stash, align 8
  %call20 = call %struct.sv* @Perl_newSViv(i64 1)
  %call21 = call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), %struct.sv* %call20)
  %25 = load %struct.hv*, %struct.hv** %stash, align 8
  %call22 = call %struct.sv* @Perl_newSViv(i64 2)
  %call23 = call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), %struct.sv* %call22)
  %26 = load %struct.hv*, %struct.hv** %stash, align 8
  %call24 = call %struct.sv* @Perl_newSViv(i64 4)
  %call25 = call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), %struct.sv* %call24)
  %27 = load %struct.hv*, %struct.hv** %stash, align 8
  %call26 = call %struct.sv* @Perl_newSViv(i64 64)
  %call27 = call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), %struct.sv* %call26)
  %28 = load %struct.hv*, %struct.hv** %stash, align 8
  %call28 = call %struct.sv* @Perl_newSViv(i64 4)
  %call29 = call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), %struct.sv* %call28)
  %29 = load %struct.hv*, %struct.hv** %stash, align 8
  %call30 = call %struct.sv* @Perl_newSViv(i64 128)
  %call31 = call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), %struct.sv* %call30)
  %30 = load %struct.hv*, %struct.hv** %stash, align 8
  %call32 = call %struct.sv* @Perl_newSViv(i64 256)
  %call33 = call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), %struct.sv* %call32)
  %31 = load %struct.hv*, %struct.hv** %stash, align 8
  %call34 = call %struct.sv* @Perl_newSViv(i64 64)
  %call35 = call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), %struct.sv* %call34)
  %32 = load %struct.hv*, %struct.hv** %stash, align 8
  %call36 = call %struct.sv* @Perl_newSViv(i64 8)
  %call37 = call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), %struct.sv* %call36)
  %33 = load %struct.hv*, %struct.hv** %stash, align 8
  %call38 = call %struct.sv* @Perl_newSViv(i64 16)
  %call39 = call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), %struct.sv* %call38)
  %34 = load %struct.hv*, %struct.hv** %stash, align 8
  %call40 = call %struct.sv* @Perl_newSViv(i64 32)
  %call41 = call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), %struct.sv* %call40)
  %call42 = call %struct.hv* @Perl_gv_stashpvn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32 10, i32 1)
  store %struct.hv* %call42, %struct.hv** %stash, align 8
  %35 = load %struct.hv*, %struct.hv** %stash, align 8
  %call43 = call %struct.sv* @Perl_newSViv(i64 0)
  %call44 = call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), %struct.sv* %call43)
  %36 = load %struct.hv*, %struct.hv** %stash, align 8
  %call45 = call %struct.sv* @Perl_newSViv(i64 1)
  %call46 = call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), %struct.sv* %call45)
  %37 = load %struct.hv*, %struct.hv** %stash, align 8
  %call47 = call %struct.sv* @Perl_newSViv(i64 2)
  %call48 = call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), %struct.sv* %call47)
  %38 = load %struct.hv*, %struct.hv** %stash, align 8
  %call49 = call %struct.sv* @Perl_newSViv(i64 0)
  %call50 = call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), %struct.sv* %call49)
  %39 = load %struct.hv*, %struct.hv** %stash, align 8
  %call51 = call %struct.sv* @Perl_newSViv(i64 1)
  %call52 = call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), %struct.sv* %call51)
  %40 = load %struct.hv*, %struct.hv** %stash, align 8
  %call53 = call %struct.sv* @Perl_newSViv(i64 2)
  %call54 = call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), %struct.sv* %call53)
  %41 = load i32, i32* %ax, align 4
  %add55 = add nsw i32 %41, 0
  %idxprom = sext i32 %add55 to i64
  %42 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %42, i64 %idxprom
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %43 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %44 = load i32, i32* %ax, align 4
  %idx.ext56 = sext i32 %44 to i64
  %add.ptr57 = getelementptr inbounds %struct.sv*, %struct.sv** %43, i64 %idx.ext56
  %45 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %45, 1
  %add.ptr58 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr57, i64 %sub
  store %struct.sv** %add.ptr58, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #1

declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

declare %struct.hv* @Perl_gv_stashpvn(i8*, i32, i32) #1

declare %struct.cv* @Perl_newCONSTSUB(%struct.hv*, i8*, %struct.sv*) #1

declare i32 @fcntl(i32, i32, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
