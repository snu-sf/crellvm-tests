	.text
	.file	"pop.bc"
	.globl	pop_open
	.align	16, 0x90
	.type	pop_open,@function
pop_open:                               # @pop_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_13
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	callq	getenv
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_3
# BB#2:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB0_12
.LBB0_3:                                # %if.then.3
	callq	getlogin
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_5
# BB#4:                                 # %land.lhs.true.6
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB0_11
.LBB0_5:                                # %if.then.9
	callq	getuid
	movl	%eax, %edi
	callq	getpwuid
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB0_9
# BB#6:                                 # %land.lhs.true.13
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_9
# BB#7:                                 # %land.lhs.true.15
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB0_9
# BB#8:                                 # %if.then.19
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_10
.LBB0_9:                                # %if.else
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.1, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	$0, -8(%rbp)
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB0_45
.LBB0_10:                               # %if.end
	jmp	.LBB0_11
.LBB0_11:                               # %if.end.22
	jmp	.LBB0_12
.LBB0_12:                               # %if.end.23
	jmp	.LBB0_13
.LBB0_13:                               # %if.end.24
	cmpq	$0, -16(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.26
	movabsq	$.L.str.2, %rdi
	callq	getenv
	movq	%rax, -16(%rbp)
.LBB0_15:                               # %if.end.28
	cmpq	$0, -16(%rbp)
	jne	.LBB0_17
# BB#16:                                # %if.then.30
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.3, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	$0, -8(%rbp)
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB0_45
.LBB0_17:                               # %if.end.32
	cmpq	$0, -32(%rbp)
	jne	.LBB0_23
# BB#18:                                # %if.then.34
	movl	-36(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	jne	.LBB0_20
# BB#19:                                # %if.then.36
	movabsq	$.L.str.4, %rdi
	callq	getpass
	movq	%rax, -32(%rbp)
.LBB0_20:                               # %if.end.38
	cmpq	$0, -32(%rbp)
	jne	.LBB0_22
# BB#21:                                # %if.then.40
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.5, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	$0, -8(%rbp)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB0_45
.LBB0_22:                               # %if.end.42
	jmp	.LBB0_23
.LBB0_23:                               # %if.end.43
	cmpq	$0, -32(%rbp)
	je	.LBB0_25
# BB#24:                                # %if.then.45
	movl	-36(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_26
.LBB0_25:                               # %if.else.46
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB0_26:                               # %if.end.47
	movq	-16(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	socket_connection
	movl	%eax, -40(%rbp)
	cmpl	$-1, -40(%rbp)
	jne	.LBB0_28
# BB#27:                                # %if.then.50
	movq	$0, -8(%rbp)
	jmp	.LBB0_45
.LBB0_28:                               # %if.end.51
	movl	$32, %eax
	movl	%eax, %edi
	callq	malloc
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_30
# BB#29:                                # %if.then.54
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.6, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	$0, -8(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB0_45
.LBB0_30:                               # %if.end.56
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %edi
	callq	malloc
	movq	-48(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB0_32
# BB#31:                                # %if.then.60
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.6, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	-48(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	free
	movq	$0, -8(%rbp)
	jmp	.LBB0_45
.LBB0_32:                               # %if.end.62
	movl	-40(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-48(%rbp), %rcx
	movl	$0, 4(%rcx)
	movq	-48(%rbp), %rcx
	movl	$0, 20(%rcx)
	movq	-48(%rbp), %rcx
	movl	$1024, 16(%rcx)         # imm = 0x400
	movq	-48(%rbp), %rcx
	movb	24(%rcx), %dl
	andb	$-2, %dl
	movb	%dl, 24(%rcx)
	movq	-48(%rbp), %rcx
	movb	24(%rcx), %dl
	andb	$-3, %dl
	movb	%dl, 24(%rcx)
	movq	-48(%rbp), %rdi
	callq	getok
	cmpl	$0, %eax
	je	.LBB0_34
# BB#33:                                # %if.then.67
	movq	$0, -8(%rbp)
	jmp	.LBB0_45
.LBB0_34:                               # %if.end.68
	movq	-24(%rbp), %rdi
	callq	strlen
	cmpq	$154, %rax
	jbe	.LBB0_36
# BB#35:                                # %if.then.72
	movq	-48(%rbp), %rdi
	callq	pop_close
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.7, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	$0, -8(%rbp)
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB0_45
.LBB0_36:                               # %if.end.74
	movabsq	$pop_error, %rdi
	movabsq	$.L.str.8, %rsi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	sprintf
	movabsq	$pop_error, %rsi
	movq	-48(%rbp), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	sendline
	cmpl	$0, %eax
	jne	.LBB0_38
# BB#37:                                # %lor.lhs.false
	movq	-48(%rbp), %rdi
	callq	getok
	cmpl	$0, %eax
	je	.LBB0_39
.LBB0_38:                               # %if.then.80
	movq	$0, -8(%rbp)
	jmp	.LBB0_45
.LBB0_39:                               # %if.end.81
	movq	-32(%rbp), %rdi
	callq	strlen
	cmpq	$154, %rax
	jbe	.LBB0_41
# BB#40:                                # %if.then.85
	movq	-48(%rbp), %rdi
	callq	pop_close
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.9, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	$0, -8(%rbp)
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB0_45
.LBB0_41:                               # %if.end.87
	movabsq	$pop_error, %rdi
	movabsq	$.L.str.10, %rsi
	movq	-32(%rbp), %rdx
	movb	$0, %al
	callq	sprintf
	movabsq	$pop_error, %rsi
	movq	-48(%rbp), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	sendline
	cmpl	$0, %eax
	jne	.LBB0_43
# BB#42:                                # %lor.lhs.false.91
	movq	-48(%rbp), %rdi
	callq	getok
	cmpl	$0, %eax
	je	.LBB0_44
.LBB0_43:                               # %if.then.94
	movq	$0, -8(%rbp)
	jmp	.LBB0_45
.LBB0_44:                               # %if.end.95
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_45:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pop_open, .Lfunc_end0-pop_open
	.cfi_endproc

	.align	16, 0x90
	.type	socket_connection,@function
socket_connection:                      # @socket_connection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movabsq	$.L.str.41, %rax
	xorl	%ecx, %ecx
	movl	$16, %edx
                                        # kill: RDX<def> EDX<kill>
	leaq	-120(%rbp), %r8
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movb	$0, -121(%rbp)
	movl	$0, -156(%rbp)
	movq	%r8, %rdi
	movl	%ecx, %esi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	memset
	movw	$2, -120(%rbp)
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)
	cmpb	$0, -121(%rbp)
	jne	.LBB1_5
# BB#1:                                 # %if.then
	movabsq	$.L.str.42, %rsi
	movq	-136(%rbp), %rdi
	callq	getservbyname
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then.2
	movq	-104(%rbp), %rax
	movl	16(%rax), %ecx
	movw	%cx, %dx
	movw	%dx, -118(%rbp)
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movl	$110, %edi
	callq	htons
	movw	%ax, -118(%rbp)
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %if.end.5
	movl	$2, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	socket
	movl	%eax, -140(%rbp)
	cmpl	$0, -140(%rbp)
	jge	.LBB1_7
# BB#6:                                 # %if.then.8
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movabsq	$pop_error, %rdi
	movl	$160, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.43, %rdx
	movabsq	$.L.str.44, %rcx
	movq	%rax, %r8
	movb	$0, %al
	callq	snprintf
	movl	$-1, -4(%rbp)
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB1_27
.LBB1_7:                                # %if.end.12
	xorl	%esi, %esi
	movl	$48, %eax
	movl	%eax, %edx
	leaq	-88(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
	movl	$1, -80(%rbp)
	movl	$2, -88(%rbp)
	movl	$2, -84(%rbp)
.LBB1_8:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	-88(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	getaddrinfo
	movl	%eax, -92(%rbp)
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	cmpl	$0, -92(%rbp)
	je	.LBB1_12
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$-3, -92(%rbp)
	jne	.LBB1_11
# BB#10:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$5, -156(%rbp)
	jne	.LBB1_12
.LBB1_11:                               # %if.then.20
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.45, %eax
	movl	%eax, %esi
	callq	strcpy
	movl	$-1, -4(%rbp)
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB1_27
.LBB1_12:                               # %if.end.22
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_13
.LBB1_13:                               # %do.cond
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -92(%rbp)
	jne	.LBB1_8
# BB#14:                                # %do.end
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB1_15:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB1_22
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	-40(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, %eax
	cmpq	$16, %rax
	jne	.LBB1_20
# BB#17:                                # %if.then.29
                                        #   in Loop: Header=BB1_15 Depth=1
	movl	$16, %edx
	leaq	-120(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, -168(%rbp)
	movq	-168(%rbp), %rcx
	movl	4(%rcx), %esi
	movl	%esi, -116(%rbp)
	movl	-140(%rbp), %edi
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rsi
	callq	connect
	cmpl	$0, %eax
	jne	.LBB1_19
# BB#18:                                # %if.then.33
	jmp	.LBB1_22
.LBB1_19:                               # %if.end.34
                                        #   in Loop: Header=BB1_15 Depth=1
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.35
                                        #   in Loop: Header=BB1_15 Depth=1
	jmp	.LBB1_21
.LBB1_21:                               # %for.inc
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB1_15
.LBB1_22:                               # %for.end
	cmpq	$0, -40(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB1_24
# BB#23:                                # %if.then.39
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	callq	strlen
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -152(%rbp)
	movq	-152(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rsi
	callq	strcpy
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB1_24:                               # %if.end.43
	movq	-32(%rbp), %rdi
	callq	freeaddrinfo
	cmpl	$0, -160(%rbp)
	jne	.LBB1_26
# BB#25:                                # %if.then.45
	movl	-140(%rbp), %edi
	callq	close
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movabsq	$pop_error, %rdi
	movl	$160, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.43, %rdx
	movabsq	$.L.str.46, %rcx
	movq	%rax, %r8
	movb	$0, %al
	callq	snprintf
	movl	$-1, -4(%rbp)
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jmp	.LBB1_27
.LBB1_26:                               # %if.end.50
	movl	-140(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB1_27:                               # %return
	movl	-4(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	socket_connection, .Lfunc_end1-socket_connection
	.cfi_endproc

	.align	16, 0x90
	.type	getok,@function
getok:                                  # @getok
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-24(%rbp), %rsi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	pop_getline
	cmpl	$0, %eax
	jge	.LBB2_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB2_7
.LBB2_2:                                # %if.end
	movabsq	$.L.str.29, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB2_4
# BB#3:                                 # %if.then.2
	movl	$0, -4(%rbp)
	jmp	.LBB2_7
.LBB2_4:                                # %if.else
	movabsq	$.L.str.14, %rsi
	movl	$4, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB2_6
# BB#5:                                 # %if.then.5
	movabsq	$pop_error, %rdi
	movl	$160, %eax
	movl	%eax, %esi
	movabsq	$.L.str.15, %rdx
	movq	-24(%rbp), %rcx
	movb	$0, %al
	callq	snprintf
	movl	$-1, -4(%rbp)
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.7
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.54, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	-16(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	pop_trash
	movl	$-1, -4(%rbp)
.LBB2_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	getok, .Lfunc_end2-getok
	.cfi_endproc

	.globl	pop_close
	.align	16, 0x90
	.type	pop_close,@function
pop_close:                              # @pop_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	pop_trash
	movq	-8(%rbp), %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	pop_close, .Lfunc_end3-pop_close
	.cfi_endproc

	.align	16, 0x90
	.type	sendline,@function
sendline:                               # @sendline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rsi, %rdi
	callq	strlen
	addq	$18, %rax
	andq	$-16, %rax
	movq	%rsp, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rsp
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	stpcpy
	movl	$.L.str.51, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcpy
	movq	-16(%rbp), %rsi
	movl	(%rsi), %edi
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	strlen
	movl	%eax, %ecx
	movl	-44(%rbp), %edi         # 4-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	%ecx, %edx
	callq	fullwrite
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jge	.LBB4_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	pop_trash
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movabsq	$pop_error, %rdi
	movl	$160, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.43, %rdx
	movabsq	$.L.str.52, %rcx
	movq	%rax, %r8
	movb	$0, %al
	callq	snprintf
	movl	-28(%rbp), %r9d
	movl	%r9d, -4(%rbp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB4_5
.LBB4_2:                                # %if.end
	testb	$1, pop_debug
	je	.LBB4_4
# BB#3:                                 # %if.then.9
	movabsq	$.L.str.53, %rsi
	movq	stderr, %rdi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB4_4:                                # %if.end.11
	movl	$0, -4(%rbp)
.LBB4_5:                                # %return
	movl	-4(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	sendline, .Lfunc_end4-sendline
	.cfi_endproc

	.globl	pop_stat
	.align	16, 0x90
	.type	pop_stat,@function
pop_stat:                               # @pop_stat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movb	24(%rdx), %al
	andb	$1, %al
	testb	$1, %al
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.11, %eax
	movl	%eax, %esi
	callq	strcpy
	movl	$-1, -4(%rbp)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB5_18
.LBB5_2:                                # %if.end
	movabsq	$.L.str.12, %rsi
	movq	-16(%rbp), %rdi
	callq	sendline
	cmpl	$0, %eax
	jne	.LBB5_4
# BB#3:                                 # %lor.lhs.false
	leaq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	pop_getline
	cmpl	$0, %eax
	jge	.LBB5_5
.LBB5_4:                                # %if.then.3
	movl	$-1, -4(%rbp)
	jmp	.LBB5_18
.LBB5_5:                                # %if.end.4
	movabsq	$.L.str.13, %rsi
	movl	$4, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB5_10
# BB#6:                                 # %if.then.7
	movabsq	$.L.str.14, %rsi
	movl	$4, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rdi
	callq	strncmp
	xorl	%ecx, %ecx
	cmpl	%eax, %ecx
	jne	.LBB5_8
# BB#7:                                 # %if.then.10
	movabsq	$pop_error, %rdi
	movl	$160, %eax
	movl	%eax, %esi
	movabsq	$.L.str.15, %rdx
	movq	-40(%rbp), %rcx
	movb	$0, %al
	callq	snprintf
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB5_9
.LBB5_8:                                # %if.else
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.16, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	-16(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	pop_trash
.LBB5_9:                                # %if.end.13
	movl	$-1, -4(%rbp)
	jmp	.LBB5_18
.LBB5_10:                               # %if.end.14
	callq	__errno_location
	leaq	-48(%rbp), %rsi
	movl	$10, %edx
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdi
	callq	strtol
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	addq	$4, %rax
	cmpq	-48(%rbp), %rax
	je	.LBB5_13
# BB#11:                                # %lor.lhs.false.19
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	jne	.LBB5_13
# BB#12:                                # %lor.lhs.false.23
	callq	__errno_location
	cmpl	$0, (%rax)
	je	.LBB5_14
.LBB5_13:                               # %if.then.26
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.16, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	-16(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	pop_trash
	movl	$-1, -4(%rbp)
	jmp	.LBB5_18
.LBB5_14:                               # %if.end.28
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	__errno_location
	leaq	-48(%rbp), %rsi
	movl	$10, %edx
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	strtol
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	cmpq	-48(%rbp), %rax
	je	.LBB5_16
# BB#15:                                # %lor.lhs.false.36
	callq	__errno_location
	cmpl	$0, (%rax)
	je	.LBB5_17
.LBB5_16:                               # %if.then.39
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.16, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	-16(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	pop_trash
	movl	$-1, -4(%rbp)
	jmp	.LBB5_18
.LBB5_17:                               # %if.end.41
	movl	$0, -4(%rbp)
.LBB5_18:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	pop_stat, .Lfunc_end5-pop_stat
	.cfi_endproc

	.align	16, 0x90
	.type	pop_getline,@function
pop_getline:                            # @pop_getline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -32(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 4(%rsi)
	je	.LBB6_7
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movslq	20(%rcx), %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %esi
	movq	%rax, %rdi
	callq	find_crlf
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB6_5
# BB#2:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	%rdx, %rax
	movslq	-44(%rbp), %rdx
	subq	%rdx, %rax
	movl	%eax, %ecx
	movl	%ecx, -48(%rbp)
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	movl	-48(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	4(%rax), %esi
	subl	%ecx, %esi
	movl	%esi, 4(%rax)
	movl	-48(%rbp), %ecx
	movq	-16(%rbp), %rax
	addl	20(%rax), %ecx
	movl	%ecx, 20(%rax)
	testb	$1, pop_debug
	je	.LBB6_4
# BB#3:                                 # %if.then.12
	movabsq	$.L.str.47, %rsi
	movq	stderr, %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-44(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB6_4:                                # %if.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-44(%rbp), %rcx
	addq	%rcx, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	-48(%rbp), %edx
	subl	$2, %edx
	movl	%edx, -4(%rbp)
	jmp	.LBB6_24
.LBB6_5:                                # %if.else
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movslq	20(%rcx), %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movslq	4(%rcx), %rdx
	movq	%rax, %rsi
	callq	memmove
	movq	-16(%rbp), %rax
	movl	4(%rax), %r8d
	subl	$1, %r8d
	movl	%r8d, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, 20(%rax)
# BB#6:                                 # %if.end.31
	jmp	.LBB6_8
.LBB6_7:                                # %if.else.32
	movq	-16(%rbp), %rax
	movl	$0, 20(%rax)
.LBB6_8:                                # %if.end.34
	jmp	.LBB6_9
.LBB6_9:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jne	.LBB6_13
# BB#10:                                # %if.then.38
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	addl	$1024, %ecx             # imm = 0x400
	movl	%ecx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movslq	16(%rax), %rsi
	callq	realloc
	movq	-16(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB6_12
# BB#11:                                # %if.then.48
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.48, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	-16(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	pop_trash
	movl	$-1, -4(%rbp)
	jmp	.LBB6_24
.LBB6_12:                               # %if.end.50
                                        #   in Loop: Header=BB6_9 Depth=1
	jmp	.LBB6_13
.LBB6_13:                               # %if.end.51
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movslq	4(%rcx), %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movl	16(%rcx), %edx
	movq	-16(%rbp), %rcx
	subl	4(%rcx), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	movq	%rax, %rsi
	callq	read
	movl	%eax, %edi
	movl	%edi, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jge	.LBB6_15
# BB#14:                                # %if.then.65
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movabsq	$pop_error, %rdi
	movl	$160, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.43, %rdx
	movabsq	$.L.str.49, %rcx
	movq	%rax, %r8
	movb	$0, %al
	callq	snprintf
	movq	-16(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	pop_trash
	movl	$-1, -4(%rbp)
	jmp	.LBB6_24
.LBB6_15:                               # %if.else.69
                                        #   in Loop: Header=BB6_9 Depth=1
	cmpl	$0, -28(%rbp)
	jne	.LBB6_17
# BB#16:                                # %if.then.72
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.50, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	-16(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	pop_trash
	movl	$-1, -4(%rbp)
	jmp	.LBB6_24
.LBB6_17:                               # %if.else.74
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	addl	4(%rcx), %eax
	movl	%eax, 4(%rcx)
	movq	-16(%rbp), %rcx
	movslq	4(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movb	$0, (%rdx,%rcx)
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movslq	-32(%rbp), %rdx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdx
	movl	4(%rdx), %eax
	subl	-32(%rbp), %eax
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	find_crlf
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB6_21
# BB#18:                                # %if.then.87
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -60(%rbp)
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
	movl	-60(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	4(%rax), %esi
	subl	%edx, %esi
	movl	%esi, 4(%rax)
	movl	-60(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 20(%rax)
	testb	$1, pop_debug
	je	.LBB6_20
# BB#19:                                # %if.then.99
	movabsq	$.L.str.47, %rsi
	movq	stderr, %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB6_20:                               # %if.end.102
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	-60(%rbp), %edx
	subl	$2, %edx
	movl	%edx, -4(%rbp)
	jmp	.LBB6_24
.LBB6_21:                               # %if.end.105
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	-28(%rbp), %eax
	subl	$1, %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
# BB#22:                                # %if.end.108
                                        #   in Loop: Header=BB6_9 Depth=1
	jmp	.LBB6_23
.LBB6_23:                               # %if.end.109
                                        #   in Loop: Header=BB6_9 Depth=1
	jmp	.LBB6_9
.LBB6_24:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	pop_getline, .Lfunc_end6-pop_getline
	.cfi_endproc

	.align	16, 0x90
	.type	pop_trash,@function
pop_trash:                              # @pop_trash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, (%rdi)
	jl	.LBB7_6
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movb	24(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB7_3
# BB#2:                                 # %if.then.1
	jmp	.LBB7_6
.LBB7_3:                                # %if.end
	movabsq	$.L.str.39, %rsi
	movq	-8(%rbp), %rax
	movb	24(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 24(%rax)
	movq	-8(%rbp), %rdi
	callq	sendline
	movabsq	$.L.str.40, %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	sendline
	movq	-8(%rbp), %rsi
	movl	(%rsi), %edi
	movl	%eax, -16(%rbp)         # 4-byte Spill
	callq	close
	movq	-8(%rbp), %rsi
	movl	$-1, (%rsi)
	movq	-8(%rbp), %rsi
	cmpq	$0, 8(%rsi)
	movl	%eax, -20(%rbp)         # 4-byte Spill
	je	.LBB7_5
# BB#4:                                 # %if.then.9
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
.LBB7_5:                                # %if.end.12
	jmp	.LBB7_6
.LBB7_6:                                # %if.end.13
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	pop_trash, .Lfunc_end7-pop_trash
	.cfi_endproc

	.globl	pop_list
	.align	16, 0x90
	.type	pop_list,@function
pop_list:                               # @pop_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rcx
	movb	24(%rcx), %al
	andb	$1, %al
	testb	$1, %al
	je	.LBB8_2
# BB#1:                                 # %if.then
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.17, %eax
	movl	%eax, %esi
	callq	strcpy
	movl	$-1, -4(%rbp)
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB8_39
.LBB8_2:                                # %if.end
	cmpl	$0, -20(%rbp)
	je	.LBB8_4
# BB#3:                                 # %if.then.1
	movl	$1, -44(%rbp)
	jmp	.LBB8_7
.LBB8_4:                                # %if.else
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	pop_stat
	cmpl	$0, %eax
	je	.LBB8_6
# BB#5:                                 # %if.then.4
	movl	$-1, -4(%rbp)
	jmp	.LBB8_39
.LBB8_6:                                # %if.end.5
	movl	-60(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB8_7:                                # %if.end.6
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movq	%rcx, %rdi
	callq	malloc
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	-44(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_9
# BB#8:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB8_10
.LBB8_9:                                # %if.then.14
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.18, %eax
	movl	%eax, %esi
	callq	strcpy
	movl	$-1, -4(%rbp)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB8_39
.LBB8_10:                               # %if.end.16
	cmpl	$0, -20(%rbp)
	je	.LBB8_23
# BB#11:                                # %if.then.18
	movabsq	$pop_error, %rdi
	movabsq	$.L.str.19, %rsi
	movl	-20(%rbp), %edx
	movb	$0, %al
	callq	sprintf
	movabsq	$pop_error, %rsi
	movq	-16(%rbp), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	sendline
	cmpl	$0, %eax
	je	.LBB8_13
# BB#12:                                # %if.then.22
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movl	$-1, -4(%rbp)
	jmp	.LBB8_39
.LBB8_13:                               # %if.end.23
	leaq	-56(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	pop_getline
	cmpl	$0, %eax
	jge	.LBB8_15
# BB#14:                                # %if.then.26
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movl	$-1, -4(%rbp)
	jmp	.LBB8_39
.LBB8_15:                               # %if.end.27
	movabsq	$.L.str.13, %rsi
	movl	$4, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB8_20
# BB#16:                                # %if.then.30
	movabsq	$.L.str.14, %rsi
	movl	$4, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB8_18
# BB#17:                                # %if.then.33
	movabsq	$pop_error, %rdi
	movl	$160, %eax
	movl	%eax, %esi
	movabsq	$.L.str.15, %rdx
	movq	-56(%rbp), %rcx
	movb	$0, %al
	callq	snprintf
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB8_19
.LBB8_18:                               # %if.else.35
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.20, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	-16(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	pop_trash
.LBB8_19:                               # %if.end.37
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movl	$-1, -4(%rbp)
	jmp	.LBB8_39
.LBB8_20:                               # %if.end.38
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdi
	callq	atoi
	movl	$32, %esi
	movq	-32(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	%eax, (%rdi)
	movq	-56(%rbp), %rdi
	addq	$4, %rdi
	callq	strchr
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB8_22
# BB#21:                                # %if.then.44
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.21, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	-16(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	pop_trash
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movl	$-1, -4(%rbp)
	jmp	.LBB8_39
.LBB8_22:                               # %if.end.46
	movq	-56(%rbp), %rdi
	callq	atoi
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	%eax, (%rdi)
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	$0, 4(%rdi)
	movq	-32(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	$0, 4(%rdi)
	movl	$0, -4(%rbp)
	jmp	.LBB8_39
.LBB8_23:                               # %if.else.51
	movabsq	$.L.str.22, %rsi
	leaq	-56(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	pop_multi_first
	cmpl	$0, %eax
	je	.LBB8_25
# BB#24:                                # %if.then.54
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movl	$-1, -4(%rbp)
	jmp	.LBB8_39
.LBB8_25:                               # %if.end.55
	movl	$0, -48(%rbp)
.LBB8_26:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB8_33
# BB#27:                                # %for.body
                                        #   in Loop: Header=BB8_26 Depth=1
	leaq	-56(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	pop_multi_next
	cmpl	$0, %eax
	jg	.LBB8_29
# BB#28:                                # %if.then.61
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movl	$-1, -4(%rbp)
	jmp	.LBB8_39
.LBB8_29:                               # %if.end.62
                                        #   in Loop: Header=BB8_26 Depth=1
	movq	-56(%rbp), %rdi
	callq	atoi
	movl	$32, %esi
	movslq	-48(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	%eax, (%rcx,%rdi,4)
	movq	-56(%rbp), %rdi
	callq	strchr
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB8_31
# BB#30:                                # %if.then.67
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.21, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	free
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-16(%rbp), %rdi
	callq	pop_trash
	movl	$-1, -4(%rbp)
	jmp	.LBB8_39
.LBB8_31:                               # %if.end.69
                                        #   in Loop: Header=BB8_26 Depth=1
	movq	-56(%rbp), %rdi
	callq	atoi
	movslq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	%eax, (%rcx,%rdi,4)
# BB#32:                                # %for.inc
                                        #   in Loop: Header=BB8_26 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB8_26
.LBB8_33:                               # %for.end
	leaq	-56(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	pop_multi_next
	cmpl	$0, %eax
	jge	.LBB8_35
# BB#34:                                # %if.then.76
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movl	$-1, -4(%rbp)
	jmp	.LBB8_39
.LBB8_35:                               # %if.else.77
	cmpq	$0, -56(%rbp)
	je	.LBB8_37
# BB#36:                                # %if.then.79
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.23, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	free
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movl	$-1, -4(%rbp)
	jmp	.LBB8_39
.LBB8_37:                               # %if.end.81
	jmp	.LBB8_38
.LBB8_38:                               # %if.end.82
	movslq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	$0, (%rcx,%rax,4)
	movslq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	$0, (%rcx,%rax,4)
	movl	$0, -4(%rbp)
.LBB8_39:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	pop_list, .Lfunc_end8-pop_list
	.cfi_endproc

	.globl	pop_multi_first
	.align	16, 0x90
	.type	pop_multi_first,@function
pop_multi_first:                        # @pop_multi_first
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movb	24(%rdx), %al
	andb	$1, %al
	testb	$1, %al
	je	.LBB9_2
# BB#1:                                 # %if.then
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.28, %eax
	movl	%eax, %esi
	callq	strcpy
	movl	$-1, -4(%rbp)
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB9_14
.LBB9_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	sendline
	cmpl	$0, %eax
	jne	.LBB9_4
# BB#3:                                 # %lor.lhs.false
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	pop_getline
	cmpl	$0, %eax
	jge	.LBB9_5
.LBB9_4:                                # %if.then.3
	movl	$-1, -4(%rbp)
	jmp	.LBB9_14
.LBB9_5:                                # %if.end.4
	movabsq	$.L.str.14, %rsi
	movl	$4, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	strncmp
	xorl	%r8d, %r8d
	cmpl	%eax, %r8d
	jne	.LBB9_7
# BB#6:                                 # %if.then.7
	movabsq	$pop_error, %rdi
	movl	$160, %eax
	movl	%eax, %esi
	movabsq	$.L.str.15, %rdx
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	$0, %al
	callq	snprintf
	movl	$-1, -4(%rbp)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB9_14
.LBB9_7:                                # %if.else
	movabsq	$.L.str.29, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	strncmp
	xorl	%r8d, %r8d
	cmpl	%eax, %r8d
	jne	.LBB9_13
# BB#8:                                 # %if.then.11
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	addq	$3, %rcx
	movq	%rcx, (%rax)
.LBB9_9:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	jne	.LBB9_12
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB9_9 Depth=1
	jmp	.LBB9_11
.LBB9_11:                               # %for.inc
                                        #   in Loop: Header=BB9_9 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	jmp	.LBB9_9
.LBB9_12:                               # %for.end
	movq	-16(%rbp), %rax
	movb	24(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 24(%rax)
	movl	$0, -4(%rbp)
	jmp	.LBB9_14
.LBB9_13:                               # %if.else.17
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.30, %eax
	movl	%eax, %esi
	callq	strcpy
	movl	$-1, -4(%rbp)
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB9_14:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	pop_multi_first, .Lfunc_end9-pop_multi_first
	.cfi_endproc

	.globl	pop_multi_next
	.align	16, 0x90
	.type	pop_multi_next,@function
pop_multi_next:                         # @pop_multi_next
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movb	24(%rsi), %al
	andb	$1, %al
	testb	$1, %al
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.31, %eax
	movl	%eax, %esi
	callq	strcpy
	movl	$-1, -4(%rbp)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB10_9
.LBB10_2:                               # %if.end
	leaq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	pop_getline
	movl	%eax, -36(%rbp)
	cmpl	$0, %eax
	jge	.LBB10_4
# BB#3:                                 # %if.then.2
	movl	$-1, -4(%rbp)
	jmp	.LBB10_9
.LBB10_4:                               # %if.end.3
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB10_8
# BB#5:                                 # %if.then.6
	movq	-32(%rbp), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB10_7
# BB#6:                                 # %if.then.8
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movb	24(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 24(%rax)
	movl	$0, -4(%rbp)
	jmp	.LBB10_9
.LBB10_7:                               # %if.else
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	-36(%rbp), %edx
	subl	$1, %edx
	movl	%edx, -4(%rbp)
	jmp	.LBB10_9
.LBB10_8:                               # %if.else.12
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	-36(%rbp), %edx
	movl	%edx, -4(%rbp)
.LBB10_9:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	pop_multi_next, .Lfunc_end10-pop_multi_next
	.cfi_endproc

	.globl	pop_retrieve
	.align	16, 0x90
	.type	pop_retrieve,@function
pop_retrieve:                           # @pop_retrieve
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movq	-16(%rbp), %rcx
	movb	24(%rcx), %al
	andb	$1, %al
	testb	$1, %al
	je	.LBB11_2
# BB#1:                                 # %if.then
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.24, %eax
	movl	%eax, %esi
	callq	strcpy
	movl	$-1, -4(%rbp)
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB11_25
.LBB11_2:                               # %if.end
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	pop_list
	cmpl	$0, %eax
	je	.LBB11_4
# BB#3:                                 # %if.then.2
	movl	$-1, -4(%rbp)
	jmp	.LBB11_25
.LBB11_4:                               # %if.end.3
	leaq	-80(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	pop_retrieve_first
	cmpl	$0, %eax
	je	.LBB11_6
# BB#5:                                 # %if.then.6
	movl	$-1, -4(%rbp)
	jmp	.LBB11_25
.LBB11_6:                               # %if.end.7
	xorl	%eax, %eax
	movl	$5, %ecx
	movq	-48(%rbp), %rdx
	movl	(%rdx), %esi
	cmpl	$0, -24(%rbp)
	cmovnel	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -52(%rbp)
	movslq	-52(%rbp), %rdi
	callq	malloc
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	cmpq	$0, -72(%rbp)
	jne	.LBB11_8
# BB#7:                                 # %if.then.11
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.25, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	-16(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	pop_retrieve_flush
	movl	$-1, -4(%rbp)
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB11_25
.LBB11_8:                               # %if.end.14
	jmp	.LBB11_9
.LBB11_9:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	leaq	-80(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	pop_retrieve_next
	movl	%eax, -84(%rbp)
	cmpl	$0, %eax
	jl	.LBB11_24
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB11_9 Depth=1
	cmpq	$0, -80(%rbp)
	jne	.LBB11_12
# BB#11:                                # %if.then.18
	movslq	-60(%rbp), %rax
	movq	-72(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	-60(%rbp), %edx
	movl	%edx, -4(%rbp)
	jmp	.LBB11_25
.LBB11_12:                              # %if.end.20
                                        #   in Loop: Header=BB11_9 Depth=1
	cmpl	$0, -24(%rbp)
	je	.LBB11_23
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB11_9 Depth=1
	movq	-80(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$70, %ecx
	jne	.LBB11_23
# BB#14:                                # %land.lhs.true.26
                                        #   in Loop: Header=BB11_9 Depth=1
	movq	-80(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$114, %ecx
	jne	.LBB11_23
# BB#15:                                # %land.lhs.true.31
                                        #   in Loop: Header=BB11_9 Depth=1
	movq	-80(%rbp), %rax
	movsbl	2(%rax), %ecx
	cmpl	$111, %ecx
	jne	.LBB11_23
# BB#16:                                # %land.lhs.true.36
                                        #   in Loop: Header=BB11_9 Depth=1
	movq	-80(%rbp), %rax
	movsbl	3(%rax), %ecx
	cmpl	$109, %ecx
	jne	.LBB11_23
# BB#17:                                # %land.lhs.true.41
                                        #   in Loop: Header=BB11_9 Depth=1
	movq	-80(%rbp), %rax
	movsbl	4(%rax), %ecx
	cmpl	$32, %ecx
	jne	.LBB11_23
# BB#18:                                # %if.then.46
                                        #   in Loop: Header=BB11_9 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	cmpl	$5, %eax
	jne	.LBB11_22
# BB#19:                                # %if.then.49
                                        #   in Loop: Header=BB11_9 Depth=1
	movl	-52(%rbp), %eax
	addl	$5, %eax
	movl	%eax, -52(%rbp)
	movq	-72(%rbp), %rdi
	movslq	-52(%rbp), %rsi
	callq	realloc
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB11_21
# BB#20:                                # %if.then.54
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.25, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	-16(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	pop_retrieve_flush
	movl	$-1, -4(%rbp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB11_25
.LBB11_21:                              # %if.end.57
                                        #   in Loop: Header=BB11_9 Depth=1
	movl	$0, -56(%rbp)
.LBB11_22:                              # %if.end.58
                                        #   in Loop: Header=BB11_9 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -60(%rbp)
	movslq	%eax, %rdx
	movq	-72(%rbp), %rsi
	movb	$62, (%rsi,%rdx)
.LBB11_23:                              # %if.end.62
                                        #   in Loop: Header=BB11_9 Depth=1
	movslq	-60(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	-80(%rbp), %rsi
	movslq	-84(%rbp), %rdx
	movq	%rax, %rdi
	callq	memcpy
	movl	-84(%rbp), %ecx
	addl	-60(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %ecx
	movl	%ecx, %r8d
	addl	$1, %r8d
	movl	%r8d, -60(%rbp)
	movslq	%ecx, %rax
	movq	-72(%rbp), %rdx
	movb	$10, (%rdx,%rax)
	jmp	.LBB11_9
.LBB11_24:                              # %while.end
	movq	-72(%rbp), %rdi
	callq	free
	movl	$-1, -4(%rbp)
.LBB11_25:                              # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	pop_retrieve, .Lfunc_end11-pop_retrieve
	.cfi_endproc

	.globl	pop_retrieve_first
	.align	16, 0x90
	.type	pop_retrieve_first,@function
pop_retrieve_first:                     # @pop_retrieve_first
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$pop_error, %rax
	movabsq	$.L.str.26, %rcx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %edx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movb	$0, %al
	callq	sprintf
	movabsq	$pop_error, %rsi
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	pop_multi_first
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	pop_retrieve_first, .Lfunc_end12-pop_retrieve_first
	.cfi_endproc

	.globl	pop_retrieve_flush
	.align	16, 0x90
	.type	pop_retrieve_flush,@function
pop_retrieve_flush:                     # @pop_retrieve_flush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	pop_multi_flush
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	pop_retrieve_flush, .Lfunc_end13-pop_retrieve_flush
	.cfi_endproc

	.globl	pop_retrieve_next
	.align	16, 0x90
	.type	pop_retrieve_next,@function
pop_retrieve_next:                      # @pop_retrieve_next
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	pop_multi_next
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	pop_retrieve_next, .Lfunc_end14-pop_retrieve_next
	.cfi_endproc

	.globl	pop_multi_flush
	.align	16, 0x90
	.type	pop_multi_flush,@function
pop_multi_flush:                        # @pop_multi_flush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movb	24(%rdi), %al
	andb	$1, %al
	testb	$1, %al
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB15_8
.LBB15_2:                               # %if.end
	jmp	.LBB15_3
.LBB15_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	leaq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	pop_multi_next
	movl	%eax, -28(%rbp)
	cmpl	$0, %eax
	je	.LBB15_7
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB15_3 Depth=1
	cmpl	$0, -28(%rbp)
	jge	.LBB15_6
# BB#5:                                 # %if.then.1
	movl	$-1, -4(%rbp)
	jmp	.LBB15_8
.LBB15_6:                               # %if.end.2
                                        #   in Loop: Header=BB15_3 Depth=1
	jmp	.LBB15_3
.LBB15_7:                               # %while.end
	movl	$0, -4(%rbp)
.LBB15_8:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	pop_multi_flush, .Lfunc_end15-pop_multi_flush
	.cfi_endproc

	.globl	pop_top_first
	.align	16, 0x90
	.type	pop_top_first,@function
pop_top_first:                          # @pop_top_first
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$pop_error, %rax
	movabsq	$.L.str.27, %r8
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movq	%rax, %rdi
	movq	%r8, %rsi
	movb	$0, %al
	callq	sprintf
	movabsq	$pop_error, %rsi
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	pop_multi_first
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	pop_top_first, .Lfunc_end16-pop_top_first
	.cfi_endproc

	.globl	pop_top_next
	.align	16, 0x90
	.type	pop_top_next,@function
pop_top_next:                           # @pop_top_next
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	pop_multi_next
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	pop_top_next, .Lfunc_end17-pop_top_next
	.cfi_endproc

	.globl	pop_top_flush
	.align	16, 0x90
	.type	pop_top_flush,@function
pop_top_flush:                          # @pop_top_flush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	pop_multi_flush
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	pop_top_flush, .Lfunc_end18-pop_top_flush
	.cfi_endproc

	.globl	pop_delete
	.align	16, 0x90
	.type	pop_delete,@function
pop_delete:                             # @pop_delete
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movb	24(%rdi), %al
	andb	$1, %al
	testb	$1, %al
	je	.LBB19_2
# BB#1:                                 # %if.then
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.32, %eax
	movl	%eax, %esi
	callq	strcpy
	movl	$-1, -4(%rbp)
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB19_6
.LBB19_2:                               # %if.end
	movabsq	$pop_error, %rdi
	movabsq	$.L.str.33, %rsi
	movl	-20(%rbp), %edx
	movb	$0, %al
	callq	sprintf
	movabsq	$pop_error, %rsi
	movq	-16(%rbp), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	sendline
	cmpl	$0, %eax
	jne	.LBB19_4
# BB#3:                                 # %lor.lhs.false
	movq	-16(%rbp), %rdi
	callq	getok
	cmpl	$0, %eax
	je	.LBB19_5
.LBB19_4:                               # %if.then.5
	movl	$-1, -4(%rbp)
	jmp	.LBB19_6
.LBB19_5:                               # %if.end.6
	movl	$0, -4(%rbp)
.LBB19_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	pop_delete, .Lfunc_end19-pop_delete
	.cfi_endproc

	.globl	pop_noop
	.align	16, 0x90
	.type	pop_noop,@function
pop_noop:                               # @pop_noop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movb	24(%rdi), %al
	andb	$1, %al
	testb	$1, %al
	je	.LBB20_2
# BB#1:                                 # %if.then
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.34, %eax
	movl	%eax, %esi
	callq	strcpy
	movl	$-1, -4(%rbp)
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB20_6
.LBB20_2:                               # %if.end
	movabsq	$.L.str.35, %rsi
	movq	-16(%rbp), %rdi
	callq	sendline
	cmpl	$0, %eax
	jne	.LBB20_4
# BB#3:                                 # %lor.lhs.false
	movq	-16(%rbp), %rdi
	callq	getok
	cmpl	$0, %eax
	je	.LBB20_5
.LBB20_4:                               # %if.then.4
	movl	$-1, -4(%rbp)
	jmp	.LBB20_6
.LBB20_5:                               # %if.end.5
	movl	$0, -4(%rbp)
.LBB20_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	pop_noop, .Lfunc_end20-pop_noop
	.cfi_endproc

	.globl	pop_last
	.align	16, 0x90
	.type	pop_last,@function
pop_last:                               # @pop_last
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movb	24(%rdi), %al
	andb	$1, %al
	testb	$1, %al
	je	.LBB21_2
# BB#1:                                 # %if.then
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.36, %eax
	movl	%eax, %esi
	callq	strcpy
	movl	$-1, -4(%rbp)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB21_14
.LBB21_2:                               # %if.end
	movabsq	$.L.str.37, %rsi
	movq	-16(%rbp), %rdi
	callq	sendline
	cmpl	$0, %eax
	je	.LBB21_4
# BB#3:                                 # %if.then.2
	movl	$-1, -4(%rbp)
	jmp	.LBB21_14
.LBB21_4:                               # %if.end.3
	leaq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	pop_getline
	cmpl	$0, %eax
	jge	.LBB21_6
# BB#5:                                 # %if.then.5
	movl	$-1, -4(%rbp)
	jmp	.LBB21_14
.LBB21_6:                               # %if.end.6
	movabsq	$.L.str.14, %rsi
	movl	$4, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB21_8
# BB#7:                                 # %if.then.9
	movabsq	$pop_error, %rdi
	movl	$160, %eax
	movl	%eax, %esi
	movabsq	$.L.str.15, %rdx
	movq	-24(%rbp), %rcx
	movb	$0, %al
	callq	snprintf
	movl	$-1, -4(%rbp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB21_14
.LBB21_8:                               # %if.else
	movabsq	$.L.str.13, %rsi
	movl	$4, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB21_10
# BB#9:                                 # %if.then.13
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.38, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	-16(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	pop_trash
	movl	$-1, -4(%rbp)
	jmp	.LBB21_14
.LBB21_10:                              # %if.else.15
	callq	__errno_location
	leaq	-32(%rbp), %rsi
	movl	$10, %edx
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdi
	callq	strtol
	movl	%eax, %edx
	movl	%edx, -36(%rbp)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	cmpq	-32(%rbp), %rax
	je	.LBB21_12
# BB#11:                                # %lor.lhs.false
	callq	__errno_location
	cmpl	$0, (%rax)
	je	.LBB21_13
.LBB21_12:                              # %if.then.22
	movl	$pop_error, %eax
	movl	%eax, %edi
	movl	$.L.str.38, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	-16(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	pop_trash
	movl	$-1, -4(%rbp)
	jmp	.LBB21_14
.LBB21_13:                              # %if.end.24
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB21_14:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	pop_last, .Lfunc_end21-pop_last
	.cfi_endproc

	.globl	pop_reset
	.align	16, 0x90
	.type	pop_reset,@function
pop_reset:                              # @pop_reset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	pop_retrieve_flush
	cmpl	$0, %eax
	je	.LBB22_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB22_6
.LBB22_2:                               # %if.end
	movabsq	$.L.str.39, %rsi
	movq	-16(%rbp), %rdi
	callq	sendline
	cmpl	$0, %eax
	jne	.LBB22_4
# BB#3:                                 # %lor.lhs.false
	movq	-16(%rbp), %rdi
	callq	getok
	cmpl	$0, %eax
	je	.LBB22_5
.LBB22_4:                               # %if.then.5
	movl	$-1, -4(%rbp)
	jmp	.LBB22_6
.LBB22_5:                               # %if.end.6
	movl	$0, -4(%rbp)
.LBB22_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	pop_reset, .Lfunc_end22-pop_reset
	.cfi_endproc

	.globl	pop_quit
	.align	16, 0x90
	.type	pop_quit,@function
pop_quit:                               # @pop_quit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, (%rdi)
	jl	.LBB23_7
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	pop_retrieve_flush
	cmpl	$0, %eax
	je	.LBB23_3
# BB#2:                                 # %if.then.1
	movl	$-1, -12(%rbp)
.LBB23_3:                               # %if.end
	movabsq	$.L.str.40, %rsi
	movq	-8(%rbp), %rdi
	callq	sendline
	cmpl	$0, %eax
	jne	.LBB23_5
# BB#4:                                 # %lor.lhs.false
	movq	-8(%rbp), %rdi
	callq	getok
	cmpl	$0, %eax
	je	.LBB23_6
.LBB23_5:                               # %if.then.6
	movl	$-1, -12(%rbp)
.LBB23_6:                               # %if.end.7
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	close
	movl	%eax, -16(%rbp)         # 4-byte Spill
.LBB23_7:                               # %if.end.10
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	pop_quit, .Lfunc_end23-pop_quit
	.cfi_endproc

	.align	16, 0x90
	.type	find_crlf,@function
find_crlf:                              # @find_crlf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
.LBB24_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB24_8
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$13, %ecx
	jne	.LBB24_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movsbl	1(%rax), %edx
	cmpl	$10, %edx
	jne	.LBB24_5
# BB#4:                                 # %if.then.5
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB24_9
.LBB24_5:                               # %if.end
                                        #   in Loop: Header=BB24_1 Depth=1
	jmp	.LBB24_7
.LBB24_6:                               # %if.else
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.LBB24_7:                               # %if.end.7
                                        #   in Loop: Header=BB24_1 Depth=1
	jmp	.LBB24_1
.LBB24_8:                               # %while.end
	movq	$0, -8(%rbp)
.LBB24_9:                               # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end24:
	.size	find_crlf, .Lfunc_end24-find_crlf
	.cfi_endproc

	.align	16, 0x90
	.type	fullwrite,@function
fullwrite:                              # @fullwrite
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -36(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
.LBB25_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -20(%rbp)
	movb	%cl, -37(%rbp)          # 1-byte Spill
	je	.LBB25_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB25_1 Depth=1
	movl	-4(%rbp), %edi
	movq	-32(%rbp), %rsi
	movslq	-20(%rbp), %rdx
	callq	write
	movl	%eax, %edi
	movl	%edi, -36(%rbp)
	cmpl	$0, %edi
	setg	%cl
	movb	%cl, -37(%rbp)          # 1-byte Spill
.LBB25_3:                               # %land.end
                                        #   in Loop: Header=BB25_1 Depth=1
	movb	-37(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB25_4
	jmp	.LBB25_5
.LBB25_4:                               # %while.body
                                        #   in Loop: Header=BB25_1 Depth=1
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	movl	-36(%rbp), %eax
	movl	-20(%rbp), %esi
	subl	%eax, %esi
	movl	%esi, -20(%rbp)
	jmp	.LBB25_1
.LBB25_5:                               # %while.end
	movl	-36(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	fullwrite, .Lfunc_end25-fullwrite
	.cfi_endproc

	.type	pop_debug,@object       # @pop_debug
	.bss
	.globl	pop_debug
pop_debug:
	.byte	0                       # 0x0
	.size	pop_debug, 1

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"USER"
	.size	.L.str, 5

	.type	pop_error,@object       # @pop_error
	.comm	pop_error,160,16
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Could not determine username"
	.size	.L.str.1, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"MAILHOST"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Could not determine POP server"
	.size	.L.str.3, 31

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Enter POP password:"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Could not determine POP password"
	.size	.L.str.5, 33

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Out of memory in pop_open"
	.size	.L.str.6, 26

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Username too long; recompile pop.c with larger ERROR_MAX"
	.size	.L.str.7, 57

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"USER %s"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Password too long; recompile pop.c with larger ERROR_MAX"
	.size	.L.str.9, 57

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"PASS %s"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"In multi-line query in pop_stat"
	.size	.L.str.11, 32

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"STAT"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"+OK "
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"-ERR"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%s"
	.size	.L.str.15, 3

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Unexpected response from POP server in pop_stat"
	.size	.L.str.16, 48

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"In multi-line query in pop_list"
	.size	.L.str.17, 32

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Out of memory in pop_list"
	.size	.L.str.18, 26

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"LIST %d"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Unexpected response from server in pop_list"
	.size	.L.str.20, 44

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Badly formatted response from server in pop_list"
	.size	.L.str.21, 49

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"LIST"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Too many response lines from server in pop_list"
	.size	.L.str.23, 48

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"In multi-line query in pop_retrieve"
	.size	.L.str.24, 36

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Out of memory in pop_retrieve"
	.size	.L.str.25, 30

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"RETR %d"
	.size	.L.str.26, 8

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"TOP %d %d"
	.size	.L.str.27, 10

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Already in multi-line query in pop_multi_first"
	.size	.L.str.28, 47

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"+OK"
	.size	.L.str.29, 4

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Unexpected response from server in pop_multi_first"
	.size	.L.str.30, 51

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Not in multi-line query in pop_multi_next"
	.size	.L.str.31, 42

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"In multi-line query in pop_delete"
	.size	.L.str.32, 34

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"DELE %d"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"In multi-line query in pop_noop"
	.size	.L.str.34, 32

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"NOOP"
	.size	.L.str.35, 5

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"In multi-line query in pop_last"
	.size	.L.str.36, 32

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"LAST"
	.size	.L.str.37, 5

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Unexpected response from server in pop_last"
	.size	.L.str.38, 44

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"RSET"
	.size	.L.str.39, 5

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"QUIT"
	.size	.L.str.40, 5

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"pop3"
	.size	.L.str.41, 5

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"tcp"
	.size	.L.str.42, 4

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"%s%s"
	.size	.L.str.43, 5

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Could not create socket for POP connection: "
	.size	.L.str.44, 45

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Could not determine POP server's address"
	.size	.L.str.45, 41

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Could not connect to POP server: "
	.size	.L.str.46, 34

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"<<< %s\n"
	.size	.L.str.47, 8

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Out of memory in pop_getline"
	.size	.L.str.48, 29

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Error reading from server: "
	.size	.L.str.49, 28

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Unexpected EOF from server in pop_getline"
	.size	.L.str.50, 42

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"\r\n"
	.size	.L.str.51, 3

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Error writing to POP server: "
	.size	.L.str.52, 30

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	">>> %s\n"
	.size	.L.str.53, 8

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Unexpected response from server; expecting +OK or -ERR"
	.size	.L.str.54, 55


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
