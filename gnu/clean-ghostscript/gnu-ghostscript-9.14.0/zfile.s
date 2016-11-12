	.text
	.file	"zfile.bc"
	.globl	make_invalid_file
	.align	16, 0x90
	.type	make_invalid_file,@function
make_invalid_file:                      # @make_invalid_file
	.cfi_startproc
# BB#0:                                 # %entry
	movq	256(%rdi), %rax
	movq	%rax, 8(%rsi)
	movw	$768, (%rsi)            # imm = 0x300
	movl	$-1, 4(%rsi)
	retq
.Lfunc_end0:
	.size	make_invalid_file, .Lfunc_end0-make_invalid_file
	.cfi_endproc

	.globl	zfile
	.align	16, 0x90
	.type	zfile,@function
zfile:                                  # @zfile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 48
	subq	$64, %rsp
.Ltmp5:
	.cfi_def_cfa_offset 112
.Ltmp6:
	.cfi_offset %rbx, -48
.Ltmp7:
	.cfi_offset %r12, -40
.Ltmp8:
	.cfi_offset %r14, -32
.Ltmp9:
	.cfi_offset %r15, -24
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzwl	(%rbx), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB1_1
# BB#3:                                 # %if.end.i
	movq	8(%rbx), %rax
	movl	4(%rbx), %ecx
	movl	$-9, %ebp
	cmpl	$1, %ecx
	jne	.LBB1_4
# BB#7:                                 # %sw.bb.16.i
	movb	$0, 61(%rsp)
	jmp	.LBB1_8
.LBB1_1:                                # %if.then.i
	movzbl	1(%rbx), %eax
	movl	$-7, %ebp
	cmpl	$18, %eax
	je	.LBB1_67
# BB#2:                                 # %parse_file_access_string.exit
	movq	%rbx, %rdi
	callq	check_type_failed
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB1_11
	jmp	.LBB1_67
.LBB1_4:                                # %if.end.i
	cmpl	$2, %ecx
	jne	.LBB1_67
# BB#5:                                 # %sw.bb.i
	movzbl	1(%rax), %ecx
	cmpl	$43, %ecx
	jne	.LBB1_67
# BB#6:                                 # %if.end.13.i
	movw	$43, 61(%rsp)
.LBB1_8:                                # %sw.epilog.i
	movzbl	(%rax), %eax
	leal	-97(%rax), %ecx
	cmpl	$22, %ecx
	ja	.LBB1_67
# BB#9:                                 # %sw.epilog.i
	movl	$4325377, %edx          # imm = 0x420001
	btl	%ecx, %edx
	jae	.LBB1_67
# BB#10:                                # %parse_file_access_string.exit.thread132
	movb	%al, 60(%rsp)
.LBB1_11:                               # %if.end
	leaq	-16(%rbx), %rdi
	movl	188(%r14), %edx
	movq	8(%r14), %rcx
	leaq	24(%rsp), %rsi
	callq	parse_file_name
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_67
# BB#12:                                # %if.end.4
	movq	32(%rsp), %rbp
	testq	%rbp, %rbp
	je	.LBB1_56
# BB#13:                                # %land.lhs.true
	movl	$iodev_dtype_stdio, %eax
	cmpq	%rax, 8(%rbp)
	jne	.LBB1_57
# BB#14:                                # %land.lhs.true.8
	movl	$.L.str, %edi
	callq	strlen
	movq	(%rbp), %rbp
	cmpq	$3, %rax
	ja	.LBB1_22
# BB#15:                                # %cond.true
	movzbl	(%rbp), %r15d
	addl	$-37, %r15d
	testq	%rax, %rax
	je	.LBB1_23
# BB#16:                                # %cond.true
	testl	%r15d, %r15d
	jne	.LBB1_23
# BB#17:                                # %if.then.20
	movzbl	1(%rbp), %r15d
	addl	$-115, %r15d
	cmpq	$2, %rax
	jb	.LBB1_23
# BB#18:                                # %if.then.20
	testl	%r15d, %r15d
	jne	.LBB1_23
# BB#19:                                # %if.then.30
	movzbl	2(%rbp), %r15d
	addl	$-116, %r15d
	cmpq	$3, %rax
	jb	.LBB1_23
# BB#20:                                # %if.then.30
	testl	%r15d, %r15d
	jne	.LBB1_23
# BB#21:                                # %if.then.40
	movzbl	3(%rbp), %r15d
	addl	$-97, %r15d
	jmp	.LBB1_23
.LBB1_56:                               # %if.then.260
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	gs_getiodevice
	movq	%rax, 32(%rsp)
.LBB1_57:                               # %if.end.265
	movq	8(%r14), %r8
	leaq	24(%rsp), %rsi
	leaq	60(%rsp), %rdx
	leaq	16(%rsp), %rcx
	movq	%r14, %rdi
	callq	zopen_file
	movl	%eax, %ebp
.LBB1_58:                               # %if.end.270
	testl	%ebp, %ebp
	js	.LBB1_67
# BB#59:                                # %if.end.274
	movq	16(%rsp), %rdi
	movq	-8(%rbx), %rsi
	movl	-12(%rbx), %edx
	callq	ssetfilename
	movl	%eax, %ebp
	movq	16(%rsp), %r15
	testl	%ebp, %ebp
	js	.LBB1_60
# BB#61:                                # %if.end.285
	movl	$112, %r12d
	movzbl	61(%rsp), %eax
	cmpl	$43, %eax
	je	.LBB1_63
# BB#62:                                # %select.mid177
	xorl	%r12d, %r12d
.LBB1_63:                               # %select.end176
	movq	8(%r15), %rdi
	callq	imemory_space
	orl	%r12d, %eax
	movzbl	60(%rsp), %ecx
	movq	%r15, -8(%rbx)
	cmpl	$114, %ecx
	jne	.LBB1_65
# BB#64:                                # %if.then.i.119
	orl	$96, %eax
	movw	264(%r15), %cx
	movw	$0, 266(%r15)
	jmp	.LBB1_66
.LBB1_60:                               # %if.then.283
	movq	%r15, %rdi
	callq	sclose
	movl	$-25, %ebp
	jmp	.LBB1_67
.LBB1_65:                               # %if.else.i.123
	orl	$16, %eax
	movw	266(%r15), %cx
	movw	$0, 264(%r15)
.LBB1_66:                               # %make_stream_file.exit130
	addl	$768, %eax              # imm = 0x300
	movzwl	%cx, %ecx
	movw	%ax, -16(%rbx)
	movl	%ecx, -12(%rbx)
	addq	$-16, 624(%r14)
	jmp	.LBB1_67
.LBB1_22:                               # %cond.false
	movl	$.L.str, %esi
	movq	%rbp, %rdi
	callq	strcmp
	movl	%eax, %r15d
	movq	32(%rsp), %rax
	movq	(%rax), %rbp
.LBB1_23:                               # %cond.end
	movl	$.L.str.1, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB1_31
# BB#24:                                # %cond.true.64
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB1_32
# BB#25:                                # %cond.true.64
	testl	%eax, %eax
	jne	.LBB1_32
# BB#26:                                # %if.then.80
	movzbl	1(%rbp), %eax
	addl	$-108, %eax
	cmpq	$2, %rcx
	jb	.LBB1_32
# BB#27:                                # %if.then.80
	testl	%eax, %eax
	jne	.LBB1_32
# BB#28:                                # %if.then.90
	movzbl	2(%rbp), %eax
	addl	$-105, %eax
	cmpq	$3, %rcx
	jb	.LBB1_32
# BB#29:                                # %if.then.90
	testl	%eax, %eax
	jne	.LBB1_32
# BB#30:                                # %if.then.100
	movzbl	3(%rbp), %eax
	addl	$-110, %eax
	jmp	.LBB1_32
.LBB1_31:                               # %cond.false.109
	movl	$.L.str.1, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB1_32:                               # %cond.end.113
	movl	$-9, %ebp
	cmpq	$0, 40(%rsp)
	jne	.LBB1_67
# BB#33:                                # %if.end.119
	testl	%r15d, %r15d
	je	.LBB1_35
# BB#34:                                # %if.end.119
	testl	%eax, %eax
	je	.LBB1_35
# BB#55:                                # %cleanup.254
	movq	32(%rsp), %rdi
	movq	%r14, 120(%rdi)
	movq	8(%r14), %rcx
	leaq	60(%rsp), %rsi
	leaq	16(%rsp), %rdx
	callq	*24(%rdi)
	movl	%eax, %ebp
	movq	32(%rsp), %rax
	movq	$0, 120(%rax)
	jmp	.LBB1_58
.LBB1_35:                               # %if.then.122
	movq	8(%r14), %rdi
	movl	$.L.str.2, %esi
	movl	$6, %edx
	callq	gs_findiodevice
	movq	%rax, %r12
	movl	$.L.str.3, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB1_43
# BB#36:                                # %cond.true.137
	movzbl	60(%rsp), %eax
	addl	$-114, %eax
	testq	%rcx, %rcx
	je	.LBB1_44
# BB#37:                                # %cond.true.137
	testl	%eax, %eax
	jne	.LBB1_44
# BB#38:                                # %if.then.152
	movb	61(%rsp), %dl
	movzbl	%dl, %eax
	cmpq	$2, %rcx
	jb	.LBB1_44
# BB#39:                                # %if.then.152
	testb	%dl, %dl
	jne	.LBB1_44
# BB#40:                                # %if.then.162
	movb	62(%rsp), %dl
	movzbl	%dl, %eax
	cmpq	$3, %rcx
	jb	.LBB1_44
# BB#41:                                # %if.then.162
	testb	%dl, %dl
	jne	.LBB1_44
# BB#42:                                # %if.then.172
	movzbl	63(%rsp), %eax
	jmp	.LBB1_44
.LBB1_43:                               # %cond.false.181
	leaq	60(%rsp), %rdi
	movl	$.L.str.3, %esi
	callq	strcmp
.LBB1_44:                               # %cond.end.184
	movl	$-9, %ebp
	testl	%eax, %eax
	jne	.LBB1_67
# BB#45:                                # %if.end.188
	movq	%r14, 120(%r12)
	movq	8(%r14), %rcx
	leaq	60(%rsp), %rsi
	leaq	8(%rsp), %rdx
	movq	%r12, %rdi
	callq	*24(%r12)
	movl	%eax, %ebp
	movq	$0, 120(%r12)
	testl	%ebp, %ebp
	js	.LBB1_67
# BB#46:                                # %if.end.197
	movq	640(%r14), %rax
	movq	%rax, %rcx
	subq	624(%r14), %rcx
	cmpq	$31, %rcx
	jle	.LBB1_47
# BB#48:                                # %do.body
	leaq	32(%rbx), %rcx
	cmpq	%rax, %rcx
	jbe	.LBB1_49
.LBB1_47:                               # %if.then.205
	movl	$2, 688(%r14)
	movl	$-16, %ebp
	jmp	.LBB1_67
.LBB1_49:                               # %if.else
	movq	%rcx, 624(%r14)
	movq	8(%rsp), %rbp
	movl	$112, %r12d
	movzbl	61(%rsp), %eax
	cmpl	$43, %eax
	je	.LBB1_51
# BB#50:                                # %select.mid
	xorl	%r12d, %r12d
.LBB1_51:                               # %select.end
	movq	8(%rbp), %rdi
	callq	imemory_space
	orl	%r12d, %eax
	movzbl	60(%rsp), %ecx
	movq	%rbp, -8(%rbx)
	cmpl	$114, %ecx
	jne	.LBB1_53
# BB#52:                                # %if.then.i.105
	orl	$96, %eax
	movw	264(%rbp), %cx
	movw	$0, 266(%rbp)
	jmp	.LBB1_54
.LBB1_53:                               # %if.else.i
	orl	$16, %eax
	movw	266(%rbp), %cx
	movw	$0, 264(%rbp)
.LBB1_54:                               # %make_stream_file.exit
	testl	%r15d, %r15d
	sete	%dl
	addl	$768, %eax              # imm = 0x300
	movzwl	%cx, %ecx
	movw	%ax, -16(%rbx)
	movl	%ecx, -12(%rbx)
	movzbl	%dl, %eax
	movw	%ax, 8(%rbx)
	movw	$256, (%rbx)            # imm = 0x100
	movq	$0, 24(%rbx)
	movw	$2816, 16(%rbx)         # imm = 0xB00
	movq	$0, 40(%rbx)
	movl	$4608, %eax             # imm = 0x1200
	addl	56(%r14), %eax
	movw	%ax, 32(%rbx)
	movl	$0, 36(%rbx)
	movq	%r14, %rdi
	callq	zfilelineedit
	movl	%eax, %ebp
.LBB1_67:                               # %cleanup.292
	movl	%ebp, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	zfile, .Lfunc_end1-zfile
	.cfi_endproc

	.align	16, 0x90
	.type	parse_file_name,@function
parse_file_name:                        # @parse_file_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 32
.Ltmp14:
	.cfi_offset %rbx, -32
.Ltmp15:
	.cfi_offset %r14, -24
.Ltmp16:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movzwl	(%rdi), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB2_1
# BB#3:                                 # %if.end
	movq	8(%rdi), %rsi
	movl	4(%rdi), %edx
	movq	%rbx, %rdi
	callq	gs_parse_file_name
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_16
# BB#4:                                 # %if.end.12
	testl	%ebp, %ebp
	je	.LBB2_16
# BB#5:                                 # %if.end.12
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB2_16
# BB#6:                                 # %land.lhs.true.15
	movl	$.L.str.31, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	(%rbx), %rdi
	cmpq	$3, %rcx
	ja	.LBB2_14
# BB#7:                                 # %cond.true.19
	movzbl	(%rdi), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB2_15
# BB#8:                                 # %cond.true.19
	testl	%eax, %eax
	jne	.LBB2_15
# BB#9:                                 # %if.then.31
	movzbl	1(%rdi), %eax
	addl	$-112, %eax
	cmpq	$2, %rcx
	jb	.LBB2_15
# BB#10:                                # %if.then.31
	testl	%eax, %eax
	jne	.LBB2_15
# BB#11:                                # %if.then.41
	movzbl	2(%rdi), %eax
	addl	$-105, %eax
	cmpq	$3, %rcx
	jb	.LBB2_15
# BB#12:                                # %if.then.41
	testl	%eax, %eax
	jne	.LBB2_15
# BB#13:                                # %if.then.51
	movzbl	3(%rdi), %eax
	addl	$-112, %eax
	jmp	.LBB2_15
.LBB2_1:                                # %if.then
	movzbl	1(%rdi), %eax
	movl	$-7, %ecx
	cmpl	$18, %eax
	je	.LBB2_17
# BB#2:                                 # %cond.true
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB2_14:                               # %cond.false.60
	movl	$.L.str.31, %esi
	callq	strcmp
.LBB2_15:                               # %cond.end.64
	movl	$-9, %ecx
	testl	%eax, %eax
	je	.LBB2_17
.LBB2_16:                               # %if.end.69
	movl	%r14d, %ecx
.LBB2_17:                               # %cleanup
	movl	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	parse_file_name, .Lfunc_end2-parse_file_name
	.cfi_endproc

	.globl	make_stream_file
	.align	16, 0x90
	.type	make_stream_file,@function
make_stream_file:                       # @make_stream_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp18:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp21:
	.cfi_def_cfa_offset 48
.Ltmp22:
	.cfi_offset %rbx, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movzbl	1(%r15), %eax
	movl	$112, %ebp
	cmpl	$43, %eax
	je	.LBB3_2
# BB#1:                                 # %select.mid
	xorl	%ebp, %ebp
.LBB3_2:                                # %select.end
	movq	8(%rbx), %rdi
	callq	imemory_space
	orl	%ebp, %eax
	movzbl	(%r15), %ecx
	movq	%rbx, 8(%r14)
	cmpl	$114, %ecx
	jne	.LBB3_4
# BB#3:                                 # %if.then
	orl	$96, %eax
	movw	264(%rbx), %cx
	movw	$0, 266(%rbx)
	jmp	.LBB3_5
.LBB3_4:                                # %if.else
	orl	$16, %eax
	movw	266(%rbx), %cx
	movw	$0, 264(%rbx)
.LBB3_5:                                # %if.end
	addl	$768, %eax              # imm = 0x300
	movzwl	%cx, %ecx
	movw	%ax, (%r14)
	movl	%ecx, 4(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	make_stream_file, .Lfunc_end3-make_stream_file
	.cfi_endproc

	.globl	zopen_file
	.align	16, 0x90
	.type	zopen_file,@function
zopen_file:                             # @zopen_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 56
	subq	$4136, %rsp             # imm = 0x1028
.Ltmp32:
	.cfi_def_cfa_offset 4192
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%r8, %rbp
	movq	%rcx, %r8
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %rcx
	movq	8(%rbx), %r13
	movq	16(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB4_10
# BB#1:                                 # %if.else
	movq	32(%r13), %r14
	testq	%r14, %r14
	movl	$iodev_os_open_file, %eax
	cmoveq	%rax, %r14
	cmpq	%rax, %r14
	jne	.LBB4_8
# BB#2:                                 # %if.then.7
	movq	%rcx, (%rsp)            # 8-byte Spill
	movq	%r8, 8(%rsp)            # 8-byte Spill
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movl	24(%rbx), %esi
	movb	(%r12), %bpl
	movl	$4096, 28(%rsp)         # imm = 0x1000
	leaq	32(%rsp), %rdx
	leaq	28(%rsp), %rcx
	callq	gp_file_name_reduce
	cmpl	$1, %eax
	jne	.LBB4_3
# BB#4:                                 # %check_file_permissions.exit
	movl	$.L.str.16, %ecx
	movzbl	%bpl, %eax
	cmpl	$114, %eax
	je	.LBB4_6
# BB#5:                                 # %select.mid
	movl	$.L.str.17, %ecx
.LBB4_6:                                # %select.end
	movl	28(%rsp), %edx
	leaq	32(%rsp), %rsi
	movq	(%rsp), %rbp            # 8-byte Reload
	movq	%rbp, %rdi
	callq	check_file_permissions_reduced
	movq	%rbp, %rdi
	movl	%eax, %r15d
	testl	%r15d, %r15d
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	8(%rsp), %r8            # 8-byte Reload
	jns	.LBB4_8
	jmp	.LBB4_7
.LBB4_10:                               # %if.then
	movq	24(%r13), %rax
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%r8, %rdx
	movq	%rbp, %rcx
	addq	$4136, %rsp             # imm = 0x1028
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB4_3:                                # %check_file_permissions.exit.thread
	movl	$-7, %r15d
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	8(%rsp), %r8            # 8-byte Reload
	movq	(%rsp), %rdi            # 8-byte Reload
.LBB4_7:                                # %land.lhs.true
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	16(%rbx), %rsi
	movl	24(%rbx), %edx
	movq	%r8, %rbp
	callq	file_is_tempfile
	movq	%rbp, %r8
	movq	16(%rsp), %rbp          # 8-byte Reload
	testl	%eax, %eax
	je	.LBB4_9
.LBB4_8:                                # %if.end.19
	movq	16(%rbx), %rsi
	movl	24(%rbx), %edx
	movq	%r13, %rdi
	movq	%r12, %rcx
	movq	%rbp, %r9
	callq	*%r14
	movl	%eax, %r15d
.LBB4_9:                                # %cleanup.24
	movl	%r15d, %eax
	addq	$4136, %rsp             # imm = 0x1028
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	zopen_file, .Lfunc_end4-zopen_file
	.cfi_endproc

	.globl	zlibfile
	.align	16, 0x90
	.type	zlibfile,@function
zlibfile:                               # @zlibfile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 32
	subq	$2144, %rsp             # imm = 0x860
.Ltmp42:
	.cfi_def_cfa_offset 2176
.Ltmp43:
	.cfi_offset %rbx, -32
.Ltmp44:
	.cfi_offset %r14, -24
.Ltmp45:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movq	640(%rbx), %rax
	subq	%r14, %rax
	cmpq	$31, %rax
	jg	.LBB5_2
# BB#1:                                 # %if.then
	movl	$2, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB5_22
.LBB5_2:                                # %if.end
	movl	188(%rbx), %edx
	movq	8(%rbx), %rcx
	leaq	56(%rsp), %rsi
	movq	%r14, %rdi
	callq	parse_file_name
	testl	%eax, %eax
	js	.LBB5_22
# BB#3:                                 # %if.end.10
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	callq	gs_getiodevice
	movq	64(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB5_4
# BB#8:                                 # %if.end.17
	cmpq	%rax, %rcx
	je	.LBB5_5
# BB#9:                                 # %if.then.20
	movq	8(%rbx), %r8
	leaq	56(%rsp), %rsi
	leaq	48(%rsp), %rcx
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	callq	zopen_file
	testl	%eax, %eax
	js	.LBB5_14
# BB#10:                                # %if.then.25
	movq	48(%rsp), %rdi
	movq	8(%r14), %rsi
	movl	4(%r14), %edx
	callq	ssetfilename
	movq	48(%rsp), %r15
	testl	%eax, %eax
	js	.LBB5_11
# BB#16:                                # %if.end.48
	movq	8(%r15), %rdi
	callq	imemory_space
	movq	%r15, 8(%r14)
	orl	$96, %eax
	movzwl	264(%r15), %ecx
	movw	$0, 266(%r15)
	addl	$768, %eax              # imm = 0x300
	movw	%ax, (%r14)
	movl	%ecx, 4(%r14)
	jmp	.LBB5_19
.LBB5_4:                                # %if.end.17.thread
	movq	%rax, 64(%rsp)
.LBB5_5:                                # %if.else.49
	movq	8(%rbx), %rsi
	movq	200(%rbx), %rdi
	movq	72(%rsp), %rcx
	movl	80(%rsp), %r8d
	leaq	32(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	92(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	$2048, (%rsp)           # imm = 0x800
	leaq	96(%rsp), %r9
	movq	%rbx, %rdx
	callq	lib_file_open
	testl	%eax, %eax
	js	.LBB5_13
# BB#6:                                 # %if.then.54
	movq	40(%rsp), %rdi
	movq	%rdi, 48(%rsp)
	movl	92(%rsp), %edx
	leaq	96(%rsp), %rsi
	callq	ssetfilename
	testl	%eax, %eax
	js	.LBB5_7
# BB#18:                                # %cleanup
	movups	32(%rsp), %xmm0
	movups	%xmm0, (%r14)
.LBB5_19:                               # %do.body.92
	leaq	16(%r14), %rax
	cmpq	640(%rbx), %rax
	ja	.LBB5_15
# BB#20:                                # %if.else.102
	movq	%rax, 624(%rbx)
	movw	$1, 24(%r14)
	jmp	.LBB5_21
.LBB5_13:                               # %if.then.64
	movl	%eax, %ecx
	andl	$-17, %ecx
	cmpl	$-25, %ecx
	je	.LBB5_22
.LBB5_14:                               # %do.body
	leaq	16(%r14), %rax
	cmpq	640(%rbx), %rax
	jbe	.LBB5_17
.LBB5_15:                               # %if.then.38
	movl	$1, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB5_22
.LBB5_7:                                # %if.then.59
	movq	48(%rsp), %rdi
	jmp	.LBB5_12
.LBB5_17:                               # %if.else
	movq	%rax, 624(%rbx)
	movw	$0, 24(%r14)
.LBB5_21:                               # %cleanup.113
	movw	$256, 16(%r14)          # imm = 0x100
	xorl	%eax, %eax
	jmp	.LBB5_22
.LBB5_11:                               # %if.then.28
	movq	%r15, %rdi
.LBB5_12:                               # %cleanup.113
	callq	sclose
	movl	$-25, %eax
.LBB5_22:                               # %cleanup.113
	addq	$2144, %rsp             # imm = 0x860
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	zlibfile, .Lfunc_end5-zlibfile
	.cfi_endproc

	.globl	lib_file_open
	.align	16, 0x90
	.type	lib_file_open,@function
lib_file_open:                          # @lib_file_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp48:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp49:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp50:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp52:
	.cfi_def_cfa_offset 160
.Ltmp53:
	.cfi_offset %rbx, -56
.Ltmp54:
	.cfi_offset %r12, -48
.Ltmp55:
	.cfi_offset %r13, -40
.Ltmp56:
	.cfi_offset %r14, -32
.Ltmp57:
	.cfi_offset %r15, -24
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%r9, 80(%rsp)           # 8-byte Spill
	movl	%r8d, %r15d
	movq	%rcx, %r12
	movq	%rdx, %rbp
	movq	%rsi, %rbx
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movl	$1, %r13d
	testq	%rbp, %rbp
	je	.LBB6_2
# BB#1:                                 # %cond.false
	movl	192(%rbp), %r13d
.LBB6_2:                                # %cond.end
	movl	$114, 100(%rsp)
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gs_getiodevice
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	%rbx, %rdi
	callq	get_minst_from_memory
	movq	%rax, %r14
	testq	%rbp, %rbp
	je	.LBB6_4
# BB#3:                                 # %if.then
	movl	$0, 192(%rbp)
.LBB6_4:                                # %if.end
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	cmpq	$0, 88(%rsp)            # 8-byte Folded Reload
	jne	.LBB6_6
# BB#5:                                 # %if.then.5
	movq	gx_io_device_table(%rip), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
.LBB6_6:                                # %if.end.6
	leaq	100(%rsp), %rdi
	movl	$gp_fmode_binary_suffix, %esi
	callq	strcat
	movq	%r12, %rdi
	movq	%r12, 64(%rsp)          # 8-byte Spill
	movl	%r15d, %esi
	movl	%r15d, 76(%rsp)         # 4-byte Spill
	callq	gp_file_name_is_absolute
	movl	%eax, %r15d
	testl	%r15d, %r15d
	movl	$1, %r12d
	cmovel	%r13d, %r12d
	cmpl	$0, 36(%r14)
	je	.LBB6_11
# BB#7:                                 # %if.then.13
	testl	%r12d, %r12d
	je	.LBB6_9
# BB#8:                                 # %if.then.15
	leaq	100(%rsp), %rax
	movq	%rax, 32(%rsp)
	movl	%r13d, 24(%rsp)
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	176(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%rbx, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	64(%rsp), %rdx          # 8-byte Reload
	movl	76(%rsp), %ecx          # 4-byte Reload
	movq	80(%rsp), %r8           # 8-byte Reload
	movl	160(%rsp), %r9d
	callq	lib_file_open_search_with_no_combine
	testl	%eax, %eax
	jle	.LBB6_17
.LBB6_9:                                # %if.end.21
	testl	%r15d, %r15d
	jne	.LBB6_16
# BB#10:                                # %if.then.23
	leaq	100(%rsp), %rax
	movq	%rax, 40(%rsp)
	movl	%r13d, 32(%rsp)
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	%rax, 24(%rsp)
	movq	176(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	160(%rsp), %eax
	movl	%eax, (%rsp)
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	movq	56(%rsp), %rdx          # 8-byte Reload
	movq	64(%rsp), %rcx          # 8-byte Reload
	movl	76(%rsp), %r8d          # 4-byte Reload
	movq	80(%rsp), %r9           # 8-byte Reload
	callq	lib_file_open_search_with_combine
	jmp	.LBB6_15
.LBB6_11:                               # %if.else.30
	testl	%r15d, %r15d
	jne	.LBB6_13
# BB#12:                                # %if.then.32
	leaq	100(%rsp), %rax
	movq	%rax, 40(%rsp)
	movl	%r13d, 32(%rsp)
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	%rax, 24(%rsp)
	movq	176(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	160(%rsp), %eax
	movl	%eax, (%rsp)
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	movq	56(%rsp), %rdx          # 8-byte Reload
	movq	64(%rsp), %rcx          # 8-byte Reload
	movl	76(%rsp), %r8d          # 4-byte Reload
	movq	80(%rsp), %r9           # 8-byte Reload
	callq	lib_file_open_search_with_combine
	testl	%eax, %eax
	jle	.LBB6_17
.LBB6_13:                               # %if.end.38
	testl	%r12d, %r12d
	je	.LBB6_16
# BB#14:                                # %if.then.40
	leaq	100(%rsp), %rax
	movq	%rax, 32(%rsp)
	movl	%r13d, 24(%rsp)
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	176(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%rbx, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	64(%rsp), %rdx          # 8-byte Reload
	movl	76(%rsp), %ecx          # 4-byte Reload
	movq	80(%rsp), %r8           # 8-byte Reload
	movl	160(%rsp), %r9d
	callq	lib_file_open_search_with_no_combine
.LBB6_15:                               # %if.then.40
	testl	%eax, %eax
	jle	.LBB6_17
.LBB6_16:                               # %if.end.47
	movl	$-22, %eax
.LBB6_17:                               # %cleanup
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	lib_file_open, .Lfunc_end6-lib_file_open
	.cfi_endproc

	.align	16, 0x90
	.type	zdeletefile,@function
zdeletefile:                            # @zdeletefile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp61:
	.cfi_def_cfa_offset 32
	subq	$4144, %rsp             # imm = 0x1030
.Ltmp62:
	.cfi_def_cfa_offset 4176
.Ltmp63:
	.cfi_offset %rbx, -32
.Ltmp64:
	.cfi_offset %r14, -24
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzwl	(%rbx), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB7_1
# BB#3:                                 # %if.end.i
	movq	8(%r14), %rcx
	movq	8(%rbx), %rsi
	movl	4(%rbx), %edx
	leaq	8(%rsp), %rdi
	movl	$.L.str.21, %r8d
	callq	gs_parse_real_file_name
	jmp	.LBB7_4
.LBB7_1:                                # %if.then.i
	movzbl	1(%rbx), %eax
	movl	$-7, %ebp
	cmpl	$18, %eax
	je	.LBB7_12
# BB#2:                                 # %cond.true.i
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB7_4:                                # %parse_real_file_name.exit
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_12
# BB#5:                                 # %if.end
	movq	16(%rsp), %rbp
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	gs_getiodevice
	cmpq	%rax, %rbp
	jne	.LBB7_10
# BB#6:                                 # %if.then.5
	movq	24(%rsp), %rdi
	movl	32(%rsp), %esi
	movl	$4096, 44(%rsp)         # imm = 0x1000
	leaq	48(%rsp), %rdx
	leaq	44(%rsp), %rcx
	callq	gp_file_name_reduce
	cmpl	$1, %eax
	jne	.LBB7_7
# BB#8:                                 # %check_file_permissions.exit
	movl	44(%rsp), %edx
	leaq	48(%rsp), %rsi
	movl	$.L.str.22, %ecx
	movq	%r14, %rdi
	callq	check_file_permissions_reduced
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB7_10
	jmp	.LBB7_9
.LBB7_7:                                # %check_file_permissions.exit.thread
	movl	$-7, %ebp
.LBB7_9:                                # %land.lhs.true
	movq	8(%rbx), %rsi
	movl	4(%rbx), %edx
	movq	%r14, %rdi
	callq	file_is_tempfile
	testl	%eax, %eax
	je	.LBB7_12
.LBB7_10:                               # %if.end.11
	movq	16(%rsp), %rdi
	movq	24(%rsp), %rsi
	callq	*56(%rdi)
	movl	%eax, %ebp
	leaq	8(%rsp), %rdi
	movl	$.L.str.21, %esi
	callq	gs_free_file_name
	testl	%ebp, %ebp
	js	.LBB7_12
# BB#11:                                # %if.end.18
	addq	$-16, 624(%r14)
	xorl	%ebp, %ebp
.LBB7_12:                               # %cleanup
	movl	%ebp, %eax
	addq	$4144, %rsp             # imm = 0x1030
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	zdeletefile, .Lfunc_end7-zdeletefile
	.cfi_endproc

	.align	16, 0x90
	.type	zexecfile,@function
zexecfile:                              # @zexecfile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp66:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp67:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 32
.Ltmp69:
	.cfi_offset %rbx, -32
.Ltmp70:
	.cfi_offset %r14, -24
.Ltmp71:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movzwl	(%r14), %eax
	andl	$16352, %eax            # imm = 0x3FE0
	cmpl	$992, %eax              # imm = 0x3E0
	jne	.LBB8_1
# BB#3:                                 # %if.end
	movq	520(%rbx), %rax
	movq	536(%rbx), %rcx
	addq	$-64, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB8_6
# BB#4:                                 # %if.then.13
	leaq	520(%rbx), %r15
	movl	$4, %esi
	movq	%r15, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB8_7
# BB#5:                                 # %if.then.13.if.end.21_crit_edge
	movq	(%r15), %rax
.LBB8_6:                                # %if.end.21
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$execfile_cleanup, 24(%rax)
	movq	520(%rbx), %rax
	movw	$3712, (%rax)           # imm = 0xE80
	movl	$0, 4(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movups	(%r14), %xmm0
	movups	%xmm0, 16(%rax)
	movq	520(%rbx), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$execfile_finish, 24(%rax)
	movq	520(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	zexec                   # TAILCALL
.LBB8_1:                                # %if.then
	movzbl	1(%r14), %ecx
	movl	$-7, %eax
	cmpl	$3, %ecx
	jne	.LBB8_2
.LBB8_7:                                # %cleanup.61
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB8_2:                                # %cond.true
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.Lfunc_end8:
	.size	zexecfile, .Lfunc_end8-zexecfile
	.cfi_endproc

	.align	16, 0x90
	.type	zfilenameforall,@function
zfilenameforall:                        # @zfilenameforall
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp72:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp73:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp74:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp76:
	.cfi_def_cfa_offset 80
.Ltmp77:
	.cfi_offset %rbx, -40
.Ltmp78:
	.cfi_offset %r12, -32
.Ltmp79:
	.cfi_offset %r14, -24
.Ltmp80:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzwl	(%rbx), %eax
	andl	$16144, %eax            # imm = 0x3F10
	cmpl	$4624, %eax             # imm = 0x1210
	jne	.LBB9_1
# BB#3:                                 # %do.body
	leaq	-16(%rbx), %r15
	movzwl	-16(%rbx), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB9_4
# BB#5:                                 # %do.end
	leaq	-32(%rbx), %r12
	movzwl	-32(%rbx), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB9_6
# BB#8:                                 # %if.end.39
	movq	536(%r14), %rax
	addq	$-112, %rax
	cmpq	%rax, 520(%r14)
	jbe	.LBB9_10
# BB#9:                                 # %if.then.46
	leaq	520(%r14), %rdi
	movl	$7, %esi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB9_18
.LBB9_10:                               # %if.end.54
	movl	188(%r14), %edx
	movq	8(%r14), %rcx
	leaq	8(%rsp), %rsi
	movq	%r12, %rdi
	callq	parse_file_name
	testl	%eax, %eax
	js	.LBB9_18
# BB#11:                                # %if.end.60
	movq	16(%rsp), %r12
	testq	%r12, %r12
	jne	.LBB9_13
# BB#12:                                # %cond.true.64
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	gs_getiodevice
	movq	%rax, %r12
.LBB9_13:                               # %cond.end.70
	movl	32(%rsp), %edx
	testl	%edx, %edx
	je	.LBB9_15
# BB#14:                                # %lor.lhs.false
	movq	80(%r12), %r8
	movl	$iodev_no_enumerate_files, %eax
	cmpq	%rax, %r8
	je	.LBB9_15
# BB#16:                                # %if.end.81
	movq	24(%rsp), %rsi
	movq	8(%r14), %rcx
	movq	%r12, %rdi
	callq	*%r8
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB9_18
# BB#17:                                # %if.end.91
	movq	520(%r14), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, 520(%r14)
	movq	$file_cleanup, 24(%rax)
	movq	520(%r14), %rax
	movw	$3712, (%rax)           # imm = 0xE80
	movl	$2, 4(%rax)
	leaq	16(%rax), %rdx
	movq	%rdx, 520(%r14)
	movq	%r12, 24(%rax)
	movl	$2048, %eax             # imm = 0x800
	movl	56(%r14), %edx
	addl	%eax, %edx
	movq	520(%r14), %rsi
	movw	%dx, (%rsi)
	movl	-28(%rbx), %edx
	subl	32(%rsp), %edx
	movq	%rdx, 24(%rsi)
	movw	$2816, 16(%rsi)         # imm = 0xB00
	leaq	32(%rsi), %rdx
	movq	%rdx, 520(%r14)
	movups	(%rbx), %xmm0
	movups	%xmm0, 32(%rsi)
	movq	520(%r14), %rdx
	leaq	16(%rdx), %rsi
	movq	%rsi, 520(%r14)
	movq	%rcx, 24(%rdx)
	addl	56(%r14), %eax
	movq	520(%r14), %rcx
	movw	%ax, (%rcx)
	leaq	16(%rcx), %rax
	movq	%rax, 520(%r14)
	movups	(%r15), %xmm0
	movups	%xmm0, 16(%rcx)
	addq	$-48, 624(%r14)
	movq	%r14, %rdi
	callq	file_continue
	movl	%eax, %ecx
	cmpl	$14, %ecx
	movl	$5, %eax
	cmovnel	%ecx, %eax
	jmp	.LBB9_18
.LBB9_1:                                # %if.then
	movzbl	1(%rbx), %ecx
	movl	$-7, %eax
	cmpl	$18, %ecx
	je	.LBB9_18
# BB#2:                                 # %cond.true
	movq	%rbx, %rdi
	callq	check_type_failed
	jmp	.LBB9_18
.LBB9_4:                                # %if.then.14
	movq	%r15, %rdi
	callq	check_proc_failed
	jmp	.LBB9_18
.LBB9_6:                                # %if.then.25
	movzbl	1(%r12), %ecx
	movl	$-7, %eax
	cmpl	$18, %ecx
	je	.LBB9_18
# BB#7:                                 # %cond.true.33
	movq	%r12, %rdi
	callq	check_type_failed
	jmp	.LBB9_18
.LBB9_15:                               # %if.then.76
	addq	$-48, 624(%r14)
	xorl	%eax, %eax
.LBB9_18:                               # %cleanup.179
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end9:
	.size	zfilenameforall, .Lfunc_end9-zfilenameforall
	.cfi_endproc

	.align	16, 0x90
	.type	zfilenamelistseparator,@function
zfilenamelistseparator:                 # @zfilenamelistseparator
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	leaq	16(%rax), %rcx
	cmpq	640(%rdi), %rcx
	jbe	.LBB10_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	retq
.LBB10_2:                               # %if.else
	movq	%rcx, 624(%rdi)
	movq	$gp_file_name_list_separator, 24(%rax)
	movw	$4704, 16(%rax)         # imm = 0x1260
	movl	$1, 20(%rax)
	xorl	%eax, %eax
	retq
.Lfunc_end10:
	.size	zfilenamelistseparator, .Lfunc_end10-zfilenamelistseparator
	.cfi_endproc

	.align	16, 0x90
	.type	zfilenamesplit,@function
zfilenamesplit:                         # @zfilenamesplit
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rdi
	movzwl	(%rdi), %ecx
	andl	$16160, %ecx            # imm = 0x3F20
	movl	$-21, %eax
	cmpl	$4640, %ecx             # imm = 0x1220
	je	.LBB11_2
# BB#1:                                 # %if.then
	movzbl	1(%rdi), %ecx
	movl	$-7, %eax
	cmpl	$18, %ecx
	jne	.LBB11_3
.LBB11_2:                               # %cleanup
	retq
.LBB11_3:                               # %cond.true
	jmp	check_type_failed       # TAILCALL
.Lfunc_end11:
	.size	zfilenamesplit, .Lfunc_end11-zfilenamesplit
	.cfi_endproc

	.align	16, 0x90
	.type	zrenamefile,@function
zrenamefile:                            # @zrenamefile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp82:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp83:
	.cfi_def_cfa_offset 32
	subq	$4176, %rsp             # imm = 0x1050
.Ltmp84:
	.cfi_def_cfa_offset 4208
.Ltmp85:
	.cfi_offset %rbx, -32
.Ltmp86:
	.cfi_offset %r14, -24
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzwl	(%rbx), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB12_1
# BB#3:                                 # %if.end.i
	movq	8(%r14), %rcx
	movq	8(%rbx), %rsi
	movl	4(%rbx), %edx
	leaq	(%rsp), %rdi
	movl	$.L.str.23, %r8d
	callq	gs_parse_real_file_name
	jmp	.LBB12_4
.LBB12_1:                               # %if.then.i
	movzbl	1(%rbx), %eax
	movl	$-7, %ebp
	cmpl	$18, %eax
	je	.LBB12_29
# BB#2:                                 # %cond.true.i
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB12_4:                               # %parse_real_file_name.exit
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB12_29
# BB#5:                                 # %if.end
	movq	$0, 48(%rsp)
	movzwl	-16(%rbx), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB12_6
# BB#8:                                 # %if.end.i.33
	movq	8(%r14), %rcx
	movq	-8(%rbx), %rsi
	movl	-12(%rbx), %edx
	leaq	32(%rsp), %rdi
	movl	$.L.str.24, %r8d
	callq	gs_parse_real_file_name
	jmp	.LBB12_9
.LBB12_6:                               # %if.then.i.26
	leaq	-16(%rbx), %rdi
	movzbl	1(%rdi), %eax
	movl	$-7, %ebp
	cmpl	$18, %eax
	je	.LBB12_27
# BB#7:                                 # %cond.true.i.28
	callq	check_type_failed
.LBB12_9:                               # %parse_real_file_name.exit35
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB12_27
# BB#10:                                # %if.then.5
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	gs_getiodevice
	movq	40(%rsp), %rdi
	movq	8(%rsp), %rcx
	cmpq	%rcx, %rdi
	je	.LBB12_16
# BB#11:                                # %if.then.11
	cmpq	%rax, %rdi
	jne	.LBB12_13
# BB#12:                                # %if.then.14
	movq	%rcx, 40(%rsp)
	movq	%rcx, %rdi
.LBB12_13:                              # %if.end.17
	cmpq	%rax, %rcx
	jne	.LBB12_15
# BB#14:                                # %if.then.20
	movq	%rdi, 8(%rsp)
	movq	%rdi, %rcx
.LBB12_15:                              # %if.end.24
	movl	$-9, %ebp
	cmpq	%rcx, %rdi
	movq	%rcx, %rdi
	jne	.LBB12_27
.LBB12_16:                              # %lor.lhs.false
	cmpq	%rax, %rdi
	jne	.LBB12_26
# BB#17:                                # %land.lhs.true
	movq	48(%rsp), %rdi
	movl	56(%rsp), %esi
	movl	$4096, 4172(%rsp)       # imm = 0x1000
	leaq	64(%rsp), %rdx
	leaq	4172(%rsp), %rcx
	callq	gp_file_name_reduce
	cmpl	$1, %eax
	jne	.LBB12_19
# BB#18:                                # %check_file_permissions.exit
	movl	4172(%rsp), %edx
	leaq	64(%rsp), %rsi
	movl	$.L.str.22, %ecx
	movq	%r14, %rdi
	callq	check_file_permissions_reduced
	testl	%eax, %eax
	jns	.LBB12_20
.LBB12_19:                              # %land.lhs.true.33
	movq	-8(%rbx), %rsi
	movl	-12(%rbx), %edx
	movq	%r14, %rdi
	callq	file_is_tempfile
	movl	$-9, %ebp
	testl	%eax, %eax
	je	.LBB12_27
.LBB12_20:                              # %lor.lhs.false.36
	movq	16(%rsp), %rdi
	movl	24(%rsp), %esi
	movl	$4096, 4172(%rsp)       # imm = 0x1000
	leaq	64(%rsp), %rdx
	leaq	4172(%rsp), %rcx
	callq	gp_file_name_reduce
	cmpl	$1, %eax
	jne	.LBB12_21
# BB#22:                                # %check_file_permissions.exit47
	movl	4172(%rsp), %edx
	leaq	64(%rsp), %rsi
	movl	$.L.str.22, %ecx
	movq	%r14, %rdi
	callq	check_file_permissions_reduced
	movl	$-9, %ebp
	testl	%eax, %eax
	js	.LBB12_27
# BB#23:                                # %lor.lhs.false.41
	movq	16(%rsp), %rdi
	movl	24(%rsp), %esi
	movl	$4096, 4172(%rsp)       # imm = 0x1000
	leaq	64(%rsp), %rdx
	leaq	4172(%rsp), %rcx
	callq	gp_file_name_reduce
	cmpl	$1, %eax
	jne	.LBB12_27
# BB#24:                                # %check_file_permissions.exit55
	movl	4172(%rsp), %edx
	leaq	64(%rsp), %rsi
	movl	$.L.str.17, %ecx
	movq	%r14, %rdi
	callq	check_file_permissions_reduced
	testl	%eax, %eax
	js	.LBB12_27
# BB#25:                                # %check_file_permissions.exit55.if.else_crit_edge
	movq	40(%rsp), %rdi
.LBB12_26:                              # %if.else
	movq	48(%rsp), %rsi
	movq	16(%rsp), %rdx
	callq	*64(%rdi)
	movl	%eax, %ebp
	jmp	.LBB12_27
.LBB12_21:                              # %check_file_permissions.exit47.thread
	movl	$-9, %ebp
.LBB12_27:                              # %if.end.53
	leaq	(%rsp), %rdi
	movl	$.L.str.23, %esi
	callq	gs_free_file_name
	leaq	32(%rsp), %rdi
	movl	$.L.str.24, %esi
	callq	gs_free_file_name
	testl	%ebp, %ebp
	js	.LBB12_29
# BB#28:                                # %if.end.56
	addq	$-32, 624(%r14)
	xorl	%ebp, %ebp
.LBB12_29:                              # %cleanup
	movl	%ebp, %eax
	addq	$4176, %rsp             # imm = 0x1050
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end12:
	.size	zrenamefile, .Lfunc_end12-zrenamefile
	.cfi_endproc

	.align	16, 0x90
	.type	zstatus,@function
zstatus:                                # @zstatus
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp89:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp90:
	.cfi_def_cfa_offset 32
	subq	$176, %rsp
.Ltmp91:
	.cfi_def_cfa_offset 208
.Ltmp92:
	.cfi_offset %rbx, -32
.Ltmp93:
	.cfi_offset %r14, -24
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movzbl	1(%r14), %eax
	cmpl	$18, %eax
	jne	.LBB13_1
# BB#3:                                 # %sw.bb.9
	movl	188(%rbx), %edx
	movq	8(%rbx), %rcx
	leaq	144(%rsp), %rsi
	movq	%r14, %rdi
	callq	parse_file_name
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB13_4
# BB#7:                                 # %if.end.19
	movq	8(%rbx), %rsi
	leaq	144(%rsp), %rdi
	movl	$.L.str.25, %edx
	callq	gs_terminate_file_name
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB13_19
# BB#8:                                 # %if.end.26
	movq	152(%rsp), %rdi
	movq	160(%rsp), %rsi
	leaq	(%rsp), %rdx
	callq	*72(%rdi)
	movl	%eax, %ebp
	cmpl	$-22, %ebp
	jne	.LBB13_9
# BB#16:                                # %sw.bb.100
	movw	$0, 8(%r14)
	movw	$256, (%r14)            # imm = 0x100
.LBB13_17:                              # %sw.epilog
	xorl	%ebp, %ebp
	jmp	.LBB13_18
.LBB13_1:                               # %entry
	cmpl	$3, %eax
	jne	.LBB13_20
# BB#2:                                 # %sw.bb
	movq	8(%r14), %rax
	movw	266(%rax), %cx
	orw	264(%rax), %cx
	movzwl	%cx, %eax
	cmpl	4(%r14), %eax
	sete	%al
	movzbl	%al, %eax
	movw	%ax, 8(%r14)
	jmp	.LBB13_6
.LBB13_20:                              # %sw.default
	movq	%r14, %rdi
	addq	$176, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB13_4:                               # %if.then
	cmpl	$-22, %ebp
	jne	.LBB13_19
# BB#5:                                 # %if.then.14
	movw	$0, 8(%r14)
.LBB13_6:                               # %cleanup.108
	movw	$256, (%r14)            # imm = 0x100
	xorl	%ebp, %ebp
	jmp	.LBB13_19
.LBB13_9:                               # %if.end.26
	testl	%ebp, %ebp
	jne	.LBB13_18
# BB#10:                                # %sw.bb.29
	movq	640(%rbx), %rax
	movq	%rax, %rcx
	subq	624(%rbx), %rcx
	cmpq	$63, %rcx
	jle	.LBB13_11
# BB#12:                                # %do.body
	leaq	64(%r14), %rcx
	cmpq	%rax, %rcx
	jbe	.LBB13_13
.LBB13_11:                              # %if.then.37
	movl	$4, 688(%rbx)
	movl	$-16, %ebp
	jmp	.LBB13_19
.LBB13_18:                              # %sw.epilog
	leaq	144(%rsp), %rdi
	movl	$.L.str.25, %esi
	callq	gs_free_file_name
.LBB13_19:                              # %cleanup.108
	movl	%ebp, %eax
	addq	$176, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB13_13:                              # %if.else
	movq	%rcx, 624(%rbx)
	movq	64(%rsp), %rcx
	movq	%rcx, 8(%r14)
	movw	$2816, (%r14)           # imm = 0xB00
	movq	48(%rsp), %rax
	movq	%rax, 24(%r14)
	movw	$2816, 16(%r14)         # imm = 0xB00
	cvtsi2sdq	%rcx, %xmm0
	cvtsi2sdq	64(%rsp), %xmm1
	movl	$-13, %ebp
	ucomisd	%xmm1, %xmm0
	jne	.LBB13_19
	jp	.LBB13_19
# BB#14:                                # %lor.lhs.false
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdq	48(%rsp), %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB13_19
	jp	.LBB13_19
# BB#15:                                # %if.end.82
	movq	88(%rsp), %rax
	movq	%rax, 40(%r14)
	movw	$2816, 32(%r14)         # imm = 0xB00
	movq	104(%rsp), %rax
	movq	%rax, 56(%r14)
	movw	$2816, 48(%r14)         # imm = 0xB00
	movw	$1, 72(%r14)
	movw	$256, 64(%r14)          # imm = 0x100
	jmp	.LBB13_17
.Lfunc_end13:
	.size	zstatus, .Lfunc_end13-zstatus
	.cfi_endproc

	.align	16, 0x90
	.type	ztempfile,@function
ztempfile:                              # @ztempfile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp96:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp97:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp98:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp99:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp100:
	.cfi_def_cfa_offset 56
	subq	$4152, %rsp             # imm = 0x1038
.Ltmp101:
	.cfi_def_cfa_offset 4208
.Ltmp102:
	.cfi_offset %rbx, -56
.Ltmp103:
	.cfi_offset %r12, -48
.Ltmp104:
	.cfi_offset %r13, -40
.Ltmp105:
	.cfi_offset %r14, -32
.Ltmp106:
	.cfi_offset %r15, -24
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rdi, %r12
	movq	624(%r12), %rbx
	movzwl	(%rbx), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB14_1
# BB#3:                                 # %if.end.i
	movq	8(%rbx), %rax
	movl	4(%rbx), %ecx
	movl	$-9, %ebp
	cmpl	$1, %ecx
	jne	.LBB14_4
# BB#7:                                 # %sw.bb.16.i
	movb	$0, 41(%rsp)
	jmp	.LBB14_8
.LBB14_1:                               # %if.then.i
	movzbl	1(%rbx), %eax
	movl	$-7, %ebp
	cmpl	$18, %eax
	je	.LBB14_52
# BB#2:                                 # %parse_file_access_string.exit
	movq	%rbx, %rdi
	callq	check_type_failed
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB14_11
	jmp	.LBB14_52
.LBB14_4:                               # %if.end.i
	cmpl	$2, %ecx
	jne	.LBB14_52
# BB#5:                                 # %sw.bb.i
	movzbl	1(%rax), %ecx
	cmpl	$43, %ecx
	jne	.LBB14_52
# BB#6:                                 # %if.end.13.i
	movw	$43, 41(%rsp)
.LBB14_8:                               # %sw.epilog.i
	movzbl	(%rax), %eax
	leal	-97(%rax), %ecx
	cmpl	$22, %ecx
	ja	.LBB14_52
# BB#9:                                 # %sw.epilog.i
	movl	$4325377, %edx          # imm = 0x420001
	btl	%ecx, %edx
	jae	.LBB14_52
# BB#10:                                # %parse_file_access_string.exit.thread98
	movb	%al, 40(%rsp)
.LBB14_11:                              # %if.end
	movq	8(%r12), %rdi
	movl	$4096, %esi             # imm = 0x1000
	movl	$.L.str.26, %edx
	callq	*64(%rdi)
	movq	%rax, %r15
	movq	8(%r12), %rdi
	movl	$4096, %esi             # imm = 0x1000
	movl	$.L.str.27, %edx
	callq	*64(%rdi)
	movq	%rax, %r14
	testq	%r15, %r15
	je	.LBB14_12
# BB#13:                                # %if.end
	testq	%r14, %r14
	je	.LBB14_14
# BB#15:                                # %if.end.13
	leaq	40(%rsp), %rdi
	movl	$gp_fmode_binary_suffix, %esi
	callq	strcat
	movzbl	-15(%rbx), %eax
	movl	$gp_scratch_file_name_prefix, %r13d
	cmpl	$14, %eax
	je	.LBB14_21
# BB#16:                                # %if.else
	leaq	-16(%rbx), %rdi
	movzwl	(%rdi), %ecx
	andl	$16160, %ecx            # imm = 0x3F20
	cmpl	$4640, %ecx             # imm = 0x1220
	jne	.LBB14_17
# BB#19:                                # %if.end.35
	movl	-12(%rbx), %r13d
	cmpq	$4095, %r13             # imm = 0xFFF
	movl	$-15, %ebp
	ja	.LBB14_48
# BB#20:                                # %cleanup.thread101
	movq	-8(%rbx), %rsi
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	memcpy
	movb	$0, (%r15,%r13)
	movq	%r15, %r13
.LBB14_21:                              # %if.end.46
	movq	%r13, %rdi
	callq	strlen
	movq	%r13, %rdi
	movl	%eax, %esi
	callq	gp_file_name_is_absolute
	testl	%eax, %eax
	je	.LBB14_22
# BB#29:                                # %if.then.51
	movq	%r13, %rdi
	callq	strlen
	movl	$4096, 44(%rsp)         # imm = 0x1000
	leaq	48(%rsp), %rdx
	leaq	44(%rsp), %rcx
	movq	%r13, %rdi
	movl	%eax, %esi
	callq	gp_file_name_reduce
	cmpl	$1, %eax
	jne	.LBB14_30
# BB#31:                                # %check_file_permissions.exit
	movl	44(%rsp), %edx
	leaq	48(%rsp), %rsi
	movl	$.L.str.17, %ecx
	movq	%r12, %rdi
	callq	check_file_permissions_reduced
	movl	$-9, %ebp
	testl	%eax, %eax
	jns	.LBB14_32
	jmp	.LBB14_48
.LBB14_12:
	movl	$-25, %ebp
	jmp	.LBB14_48
.LBB14_14:
	movl	$-25, %ebp
	jmp	.LBB14_48
.LBB14_17:                              # %if.then.25
	movzbl	%al, %eax
	movl	$-7, %ebp
	cmpl	$18, %eax
	je	.LBB14_52
# BB#18:                                # %cond.true
	callq	check_type_failed
	movl	%eax, %ebp
	jmp	.LBB14_52
.LBB14_22:
	movq	%r13, %rax
	movl	$-9, %ebp
	jmp	.LBB14_23
	.align	16, 0x90
.LBB14_28:                              # %for.inc.i
                                        #   in Loop: Header=BB14_23 Depth=1
	incq	%rax
.LBB14_23:                              # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %ecx
	cmpl	$45, %ecx
	je	.LBB14_28
# BB#24:                                # %for.cond.i
                                        #   in Loop: Header=BB14_23 Depth=1
	movzbl	%cl, %edx
	cmpl	$95, %edx
	je	.LBB14_28
# BB#25:                                # %for.cond.i
                                        #   in Loop: Header=BB14_23 Depth=1
	testb	%cl, %cl
	je	.LBB14_32
# BB#26:                                # %lor.lhs.false.8.i
                                        #   in Loop: Header=BB14_23 Depth=1
	movb	%cl, %dl
	addb	$-48, %dl
	movzbl	%dl, %edx
	cmpl	$10, %edx
	jb	.LBB14_28
# BB#27:                                # %lor.lhs.false.8.i
                                        #   in Loop: Header=BB14_23 Depth=1
	andb	$-33, %cl
	addb	$-65, %cl
	movzbl	%cl, %ecx
	cmpl	$25, %ecx
	jbe	.LBB14_28
	jmp	.LBB14_48
.LBB14_32:                              # %if.end.64
	movq	8(%r12), %rdi
	movl	$.L.str.28, %esi
	callq	file_alloc_stream
	testq	%rax, %rax
	je	.LBB14_33
# BB#34:                                # %if.end.71
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	8(%r12), %rdi
	movl	file_default_buffer_size(%rip), %esi
	movl	$.L.str.29, %edx
	callq	*64(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB14_35
# BB#36:                                # %if.end.82
	movq	8(%r12), %rdi
	leaq	40(%rsp), %rcx
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	gp_open_scratch_file
	testq	%rax, %rax
	je	.LBB14_37
# BB#38:                                # %if.end.95
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	8(%r12), %rdi
	movl	$.L.str.30, %edx
	movl	%eax, %esi
	callq	*136(%rdi)
	testq	%rax, %rax
	je	.LBB14_39
# BB#40:                                # %if.end.113
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, %edx
	movq	%rax, %rdi
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%r14, %rsi
	callq	memcpy
	leaq	40(%rsp), %rdx
	movq	32(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	%rbp, %rcx
	movl	file_default_buffer_size(%rip), %r8d
	callq	file_init_stream
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	24(%rsp), %rdx          # 8-byte Reload
	callq	ssetfilename
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB14_41
# BB#42:                                # %if.end.133
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rax, -8(%rbx)
	movl	56(%r12), %eax
	orl	$96, %eax
	addl	$4608, %eax             # imm = 0x1200
	movw	%ax, -16(%rbx)
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	%eax, -12(%rbx)
	movl	$112, %edx
	movzbl	41(%rsp), %eax
	cmpl	$43, %eax
	je	.LBB14_44
# BB#43:                                # %select.mid
	xorl	%edx, %edx
.LBB14_44:                              # %select.end
	movl	%edx, 24(%rsp)          # 4-byte Spill
	movq	8(%r13), %rdi
	callq	imemory_space
	orl	24(%rsp), %eax          # 4-byte Folded Reload
	movzbl	40(%rsp), %ecx
	movq	%r13, 8(%rbx)
	cmpl	$114, %ecx
	jne	.LBB14_46
# BB#45:                                # %if.then.i.95
	orl	$96, %eax
	movw	264(%r13), %cx
	movw	$0, 266(%r13)
	jmp	.LBB14_47
.LBB14_30:                              # %check_file_permissions.exit.thread
	movl	$-9, %ebp
	jmp	.LBB14_48
.LBB14_33:
	movl	$-25, %ebp
	jmp	.LBB14_48
.LBB14_35:
	movl	$-25, %ebp
	jmp	.LBB14_48
.LBB14_37:                              # %if.then.89
	movq	8(%r12), %rdi
	movl	$.L.str.29, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	movl	$-9, %ebp
	jmp	.LBB14_48
.LBB14_39:                              # %if.then.106
	movq	8(%r12), %rdi
	movl	$.L.str.29, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	movl	$-25, %ebp
	jmp	.LBB14_48
.LBB14_41:                              # %if.then.120
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	callq	gs_getiodevice
	movq	%rax, %rbx
	movq	%r13, %rdi
	callq	sclose
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*56(%rbx)
	movq	8(%r12), %rdi
	movl	$.L.str.30, %ecx
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	callq	*160(%rdi)
	movl	$-25, %ebp
	jmp	.LBB14_48
.LBB14_46:                              # %if.else.i
	orl	$16, %eax
	movw	266(%r13), %cx
	movw	$0, 264(%r13)
.LBB14_47:                              # %make_stream_file.exit
	addl	$768, %eax              # imm = 0x300
	movzwl	%cx, %ecx
	movw	%ax, (%rbx)
	movl	%ecx, 4(%rbx)
.LBB14_48:                              # %done
	testq	%r15, %r15
	je	.LBB14_50
# BB#49:                                # %if.then.147
	movq	8(%r12), %rdi
	movl	$.L.str.26, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
.LBB14_50:                              # %if.end.154
	testq	%r14, %r14
	je	.LBB14_52
# BB#51:                                # %if.then.156
	movq	8(%r12), %rdi
	movl	$.L.str.27, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
.LBB14_52:                              # %cleanup.164
	movl	%ebp, %eax
	addq	$4152, %rsp             # imm = 0x1038
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	ztempfile, .Lfunc_end14-ztempfile
	.cfi_endproc

	.align	16, 0x90
	.type	file_continue,@function
file_continue:                          # @file_continue
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp109:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp110:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp111:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp112:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp113:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp114:
	.cfi_def_cfa_offset 80
.Ltmp115:
	.cfi_offset %rbx, -56
.Ltmp116:
	.cfi_offset %r12, -48
.Ltmp117:
	.cfi_offset %r13, -40
.Ltmp118:
	.cfi_offset %r14, -32
.Ltmp119:
	.cfi_offset %r15, -24
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rdi, %r12
	movq	520(%r12), %r13
	movq	-40(%r13), %rax
	movl	-28(%r13), %r14d
	movl	$-15, %ecx
	movl	%r14d, %ebp
	subl	%eax, %ebp
	jb	.LBB15_7
# BB#1:                                 # %if.end
	movq	624(%r12), %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	-56(%r13), %r15
	movq	-24(%r13), %rdi
	movq	-8(%r13), %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	(%r15), %rsi
	movslq	%eax, %rbx
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	%rbx, %rdx
	callq	memcpy
	addq	-24(%r13), %rbx
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	movl	%ebp, %edx
	callq	*88(%r15)
	cmpl	$-1, %eax
	je	.LBB15_2
# BB#3:                                 # %if.else
	cmpl	%r14d, %eax
	movl	$-15, %ecx
	ja	.LBB15_7
# BB#4:                                 # %do.body
	movq	8(%rsp), %rsi           # 8-byte Reload
	leaq	16(%rsi), %rcx
	cmpq	640(%r12), %rcx
	jbe	.LBB15_6
# BB#5:                                 # %if.then.40
	movl	$1, 688(%r12)
	movl	$-16, %ecx
	jmp	.LBB15_7
.LBB15_2:                               # %if.then.26
	addq	$-80, 520(%r12)
	movl	$14, %ecx
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.43
	leaq	-32(%r13), %rdx
	movq	%rcx, 624(%r12)
	movups	(%rdx), %xmm0
	movups	%xmm0, (%rcx)
	movq	(%rsp), %rcx            # 8-byte Reload
	addl	%ecx, %eax
	movl	%eax, 20(%rsi)
	movq	520(%r12), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%r12)
	movq	$file_continue, 24(%rax)
	movq	520(%r12), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%r12)
	movups	(%r13), %xmm0
	movups	%xmm0, 16(%rax)
	movl	$5, %ecx
.LBB15_7:                               # %cleanup
	movl	%ecx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	file_continue, .Lfunc_end15-file_continue
	.cfi_endproc

	.align	16, 0x90
	.type	execfile_finish,@function
execfile_finish:                        # @execfile_finish
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp121:
	.cfi_def_cfa_offset 16
	movq	624(%rdi), %rax
	movq	640(%rdi), %rcx
	subq	%rax, %rcx
	cmpq	$15, %rcx
	jg	.LBB16_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rdx
	retq
.LBB16_2:                               # %if.end
	movq	520(%rdi), %rdx
	leaq	-32(%rdx), %rsi
	movq	%rsi, 520(%rdi)
	cmpq	$15, %rcx
	jg	.LBB16_4
# BB#3:                                 # %if.then.i
	movl	$1, 688(%rdi)
	jmp	.LBB16_5
.LBB16_4:                               # %if.end.i
	leaq	16(%rax), %rcx
	movq	%rcx, 624(%rdi)
	movups	(%rdx), %xmm0
	movups	%xmm0, 16(%rax)
	callq	zclosefile
.LBB16_5:                               # %return
	movl	$14, %eax
	popq	%rdx
	retq
.Lfunc_end16:
	.size	execfile_finish, .Lfunc_end16-execfile_finish
	.cfi_endproc

	.align	16, 0x90
	.type	iodev_os_open_file,@function
iodev_os_open_file:                     # @iodev_os_open_file
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp122:
	.cfi_def_cfa_offset 32
	movq	%rdi, %rax
	movl	file_default_buffer_size(%rip), %r10d
	movq	40(%rax), %rdi
	movq	%r9, 8(%rsp)
	movq	%rdi, (%rsp)
	movq	%rsi, %rdi
	movl	%edx, %esi
	movq	%rcx, %rdx
	movl	%r10d, %ecx
	movq	%rax, %r9
	callq	file_open_stream
	addq	$24, %rsp
	retq
.Lfunc_end17:
	.size	iodev_os_open_file, .Lfunc_end17-iodev_os_open_file
	.cfi_endproc

	.align	16, 0x90
	.type	file_is_tempfile,@function
file_is_tempfile:                       # @file_is_tempfile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp124:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp125:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp126:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp127:
	.cfi_def_cfa_offset 80
.Ltmp128:
	.cfi_offset %rbx, -40
.Ltmp129:
	.cfi_offset %r14, -32
.Ltmp130:
	.cfi_offset %r15, -24
.Ltmp131:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbp
	leaq	504(%rbp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.33, %esi
	callq	dict_find_string
	xorl	%ebx, %ebx
	testl	%eax, %eax
	jle	.LBB18_4
# BB#1:                                 # %lor.lhs.false
	movq	32(%rsp), %rdi
	leaq	24(%rsp), %rdx
	movl	$.L.str.34, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB18_4
# BB#2:                                 # %if.end
	movq	8(%rbp), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	8(%rsp), %rcx
	movl	$-1, %r8d
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	names_ref
	testl	%eax, %eax
	js	.LBB18_4
# BB#3:                                 # %lor.lhs.false.5
	movq	24(%rsp), %rdi
	leaq	8(%rsp), %rsi
	leaq	32(%rsp), %rdx
	callq	dict_find
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %ebx
.LBB18_4:                               # %cleanup
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	file_is_tempfile, .Lfunc_end18-file_is_tempfile
	.cfi_endproc

	.align	16, 0x90
	.type	lib_file_open_search_with_no_combine,@function
lib_file_open_search_with_no_combine:   # @lib_file_open_search_with_no_combine
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp133:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp134:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp135:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp136:
	.cfi_def_cfa_offset 80
.Ltmp137:
	.cfi_offset %rbx, -40
.Ltmp138:
	.cfi_offset %r14, -32
.Ltmp139:
	.cfi_offset %r15, -24
.Ltmp140:
	.cfi_offset %rbp, -16
	movq	%r8, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	%r9d, 28(%rsp)
	leaq	28(%rsp), %rax
	movq	%rdx, %rdi
	movl	%ecx, %esi
	movq	%r15, %rdx
	movq	%rax, %rcx
	callq	gp_file_name_reduce
	movl	$1, %ebp
	cmpl	$1, %eax
	jne	.LBB19_7
# BB#1:                                 # %if.end
	movq	112(%rsp), %rdx
	movq	96(%rsp), %r9
	movl	28(%rsp), %esi
	movl	file_default_buffer_size(%rip), %ecx
	movq	40(%r9), %rax
	movq	%rbx, 8(%rsp)
	movq	%rax, (%rsp)
	leaq	32(%rsp), %r8
	movq	%r15, %rdi
	callq	file_open_stream
	testl	%eax, %eax
	jne	.LBB19_7
# BB#2:                                 # %if.then.3
	testq	%r14, %r14
	je	.LBB19_5
# BB#3:                                 # %if.then.3
	movl	104(%rsp), %eax
	testl	%eax, %eax
	jne	.LBB19_5
# BB#4:                                 # %check_file_permissions_aux.exit
	movl	28(%rsp), %edx
	movl	$.L.str.16, %ecx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	check_file_permissions_reduced
	testl	%eax, %eax
	js	.LBB19_6
.LBB19_5:                               # %if.then.6
	movq	88(%rsp), %rbx
	movq	80(%rsp), %rax
	movl	28(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	32(%rsp), %rbp
	movq	8(%rbp), %rdi
	callq	imemory_space
	movq	%rbp, 8(%rbx)
	orl	$96, %eax
	movzwl	264(%rbp), %ecx
	movw	$0, 266(%rbp)
	addl	$768, %eax              # imm = 0x300
	movw	%ax, (%rbx)
	movl	%ecx, 4(%rbx)
	xorl	%ebp, %ebp
	jmp	.LBB19_7
.LBB19_6:                               # %if.end.7
	movq	32(%rsp), %rdi
	callq	sclose
	movl	$-9, %ebp
.LBB19_7:                               # %cleanup
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	lib_file_open_search_with_no_combine, .Lfunc_end19-lib_file_open_search_with_no_combine
	.cfi_endproc

	.align	16, 0x90
	.type	lib_file_open_search_with_combine,@function
lib_file_open_search_with_combine:      # @lib_file_open_search_with_combine
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp142:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp143:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp144:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp145:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp146:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp147:
	.cfi_def_cfa_offset 160
.Ltmp148:
	.cfi_offset %rbx, -56
.Ltmp149:
	.cfi_offset %r12, -48
.Ltmp150:
	.cfi_offset %r13, -40
.Ltmp151:
	.cfi_offset %r14, -32
.Ltmp152:
	.cfi_offset %r15, -24
.Ltmp153:
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movl	%r8d, %r13d
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movq	%rdi, %rbp
	movl	$1, %eax
	cmpl	$0, 20(%rbp)
	je	.LBB20_16
# BB#1:                                 # %for.body.lr.ph
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movl	%r13d, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB20_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rbp), %rax
	movl	%r14d, %ecx
	shlq	$4, %rcx
	movq	8(%rax,%rcx), %r15
	movl	4(%rax,%rcx), %r12d
	movl	160(%rsp), %eax
	movl	%eax, 92(%rsp)
	movzbl	(%r15), %eax
	cmpl	$37, %eax
	jne	.LBB20_7
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB20_2 Depth=1
	leaq	56(%rsp), %rdi
	movq	%r15, %rsi
	movl	%r12d, %edx
	movq	48(%rsp), %rcx          # 8-byte Reload
	callq	gs_parse_file_name
	testl	%eax, %eax
	js	.LBB20_14
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB20_2 Depth=1
	movl	80(%rsp), %edx
	cmpl	%r12d, %edx
	movl	%r12d, %ecx
	cmoval	%edx, %ecx
	addl	%r13d, %ecx
	movl	$-13, %eax
	cmpl	160(%rsp), %ecx
	ja	.LBB20_16
# BB#5:                                 # %if.end.16
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	72(%rsp), %rsi
	movq	%rbx, %rdi
	callq	memcpy
	movl	80(%rsp), %eax
	leaq	(%rax,%rbx), %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	movq	32(%rsp), %rdx          # 8-byte Reload
	callq	memcpy
	movq	64(%rsp), %rdi
	movl	80(%rsp), %edx
	addl	%r13d, %edx
	movq	%rbx, %rsi
	movq	200(%rsp), %rcx
	leaq	96(%rsp), %r8
	movq	48(%rsp), %r9           # 8-byte Reload
	callq	*32(%rdi)
	testl	%eax, %eax
	js	.LBB20_14
	jmp	.LBB20_6
	.align	16, 0x90
.LBB20_7:                               # %if.else
                                        #   in Loop: Header=BB20_2 Depth=1
	leaq	92(%rsp), %rax
	movq	%rax, (%rsp)
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movl	%r12d, %esi
	movq	40(%rsp), %rdx          # 8-byte Reload
	movl	%r13d, %ecx
	movq	%rbx, %r9
	callq	gp_file_name_combine
	cmpl	$1, %eax
	jne	.LBB20_14
# BB#8:                                 # %if.end.46
                                        #   in Loop: Header=BB20_2 Depth=1
	movl	92(%rsp), %esi
	movq	184(%rsp), %r9
	movq	40(%r9), %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%rbx, %rdi
	movq	200(%rsp), %rdx
	movl	file_default_buffer_size(%rip), %ecx
	leaq	96(%rsp), %r8
	callq	file_open_stream
	testl	%eax, %eax
	je	.LBB20_9
.LBB20_14:                              # %for.inc
                                        #   in Loop: Header=BB20_2 Depth=1
	incl	%r14d
	cmpl	20(%rbp), %r14d
	jb	.LBB20_2
# BB#15:
	movl	$1, %eax
	jmp	.LBB20_16
.LBB20_6:                               # %if.end.34
	movq	96(%rsp), %rbp
	movq	8(%rbp), %rdi
	callq	imemory_space
	movq	176(%rsp), %rcx
	movq	%rcx, %rdx
	movq	%rbp, 8(%rdx)
	orl	$96, %eax
	movzwl	264(%rbp), %ecx
	movw	$0, 266(%rbp)
	addl	$768, %eax              # imm = 0x300
	movw	%ax, (%rdx)
	movl	%ecx, 4(%rdx)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	memcpy
	addq	%r12, %rbx
	movq	%rbx, %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	movq	32(%rsp), %rdx          # 8-byte Reload
	callq	memcpy
	leal	(%r13,%r12), %eax
	movq	168(%rsp), %rcx
	movl	%eax, (%rcx)
	xorl	%eax, %eax
	jmp	.LBB20_16
.LBB20_9:                               # %if.then.50
	movq	24(%rsp), %rdi          # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB20_12
# BB#10:                                # %if.then.50
	cmpl	$0, 192(%rsp)
	jne	.LBB20_12
# BB#11:                                # %check_file_permissions_aux.exit
	movl	92(%rsp), %edx
	movl	$.L.str.16, %ecx
	movq	%rbx, %rsi
	callq	check_file_permissions_reduced
	testl	%eax, %eax
	js	.LBB20_13
.LBB20_12:                              # %if.then.54
	movl	92(%rsp), %eax
	movq	168(%rsp), %rcx
	movl	%eax, (%rcx)
	movq	96(%rsp), %rbx
	movq	8(%rbx), %rdi
	callq	imemory_space
	movq	176(%rsp), %rcx
	movq	%rcx, %rdx
	movq	%rbx, 8(%rdx)
	orl	$96, %eax
	movzwl	264(%rbx), %ecx
	movw	$0, 266(%rbx)
	addl	$768, %eax              # imm = 0x300
	movw	%ax, (%rdx)
	movl	%ecx, 4(%rdx)
	xorl	%eax, %eax
	jmp	.LBB20_16
.LBB20_13:                              # %if.end.55
	movq	96(%rsp), %rdi
	callq	sclose
	movl	$-9, %eax
.LBB20_16:                              # %cleanup.65
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	lib_file_open_search_with_combine, .Lfunc_end20-lib_file_open_search_with_combine
	.cfi_endproc

	.globl	lib_fopen
	.align	16, 0x90
	.type	lib_fopen,@function
lib_fopen:                              # @lib_fopen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp154:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp155:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp156:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp157:
	.cfi_def_cfa_offset 40
	subq	$2104, %rsp             # imm = 0x838
.Ltmp158:
	.cfi_def_cfa_offset 2144
.Ltmp159:
	.cfi_offset %rbx, -40
.Ltmp160:
	.cfi_offset %r12, -32
.Ltmp161:
	.cfi_offset %r14, -24
.Ltmp162:
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	%rbx, %rdi
	callq	strlen
	leaq	24(%rsp), %rcx
	movq	%rcx, 16(%rsp)
	leaq	44(%rsp), %rcx
	movq	%rcx, 8(%rsp)
	movl	$2048, (%rsp)           # imm = 0x800
	xorl	%r14d, %r14d
	leaq	48(%rsp), %r9
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rcx
	movl	%eax, %r8d
	callq	lib_file_open
	testl	%eax, %eax
	js	.LBB21_2
# BB#1:                                 # %if.end
	movq	32(%rsp), %rax
	movq	304(%rax), %r14
.LBB21_2:                               # %cleanup
	movq	%r14, %rax
	addq	$2104, %rsp             # imm = 0x838
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end21:
	.size	lib_fopen, .Lfunc_end21-lib_fopen
	.cfi_endproc

	.globl	file_read_string
	.align	16, 0x90
	.type	file_read_string,@function
file_read_string:                       # @file_read_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp163:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp164:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp165:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp166:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp167:
	.cfi_def_cfa_offset 48
.Ltmp168:
	.cfi_offset %rbx, -48
.Ltmp169:
	.cfi_offset %r12, -40
.Ltmp170:
	.cfi_offset %r14, -32
.Ltmp171:
	.cfi_offset %r15, -24
.Ltmp172:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rdx, %r14
	movl	%esi, %r12d
	movq	%rdi, %rbp
	movl	$.L.str.18, %esi
	movq	%r15, %rdi
	callq	file_alloc_stream
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB22_2
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%r12d, %edx
	callq	sread_string
	movb	$1, 154(%rbx)
	movw	$0, 266(%rbx)
	movq	%rbx, 8(%r14)
	movq	%r15, %rdi
	callq	imemory_space
	orl	$96, %eax
	addl	$768, %eax              # imm = 0x300
	movw	%ax, (%r14)
	movzwl	264(%rbx), %eax
	movl	%eax, 4(%r14)
	movq	216(%rbx), %rax
	movq	%rax, 296(%rbx)
	movq	$file_close_disable, 216(%rbx)
	xorl	%eax, %eax
.LBB22_2:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	file_read_string, .Lfunc_end22-file_read_string
	.cfi_endproc

	.globl	filter_report_error
	.align	16, 0x90
	.type	filter_report_error,@function
filter_report_error:                    # @filter_report_error
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp173:
	.cfi_def_cfa_offset 16
.Ltmp174:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	28(%rbx), %rdi
	movl	$79, %edx
	callq	strncpy
	movb	$0, 107(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end23:
	.size	filter_report_error, .Lfunc_end23-filter_report_error
	.cfi_endproc

	.globl	filter_open
	.align	16, 0x90
	.type	filter_open,@function
filter_open:                            # @filter_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp175:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp176:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp177:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp178:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp179:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp180:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp181:
	.cfi_def_cfa_offset 112
.Ltmp182:
	.cfi_offset %rbx, -56
.Ltmp183:
	.cfi_offset %r12, -48
.Ltmp184:
	.cfi_offset %r13, -40
.Ltmp185:
	.cfi_offset %r14, -32
.Ltmp186:
	.cfi_offset %r15, -24
.Ltmp187:
	.cfi_offset %rbp, -16
	movq	%r9, 24(%rsp)           # 8-byte Spill
	movq	%r8, %r13
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movl	%esi, %ebp
	movq	%rdi, %r12
	movq	112(%rsp), %r15
	movq	(%r13), %rdi
	callq	gs_struct_type_size
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movq	(%r13), %rsi
	movl	$st_stream_state, %eax
	xorl	%ebx, %ebx
	cmpq	%rax, %rsi
	je	.LBB24_2
# BB#1:                                 # %if.then
	movl	$.L.str.19, %edx
	movq	%r15, %rdi
	callq	s_alloc_state
	movq	%rax, %rbx
	movl	$-25, %r14d
	testq	%rbx, %rbx
	je	.LBB24_19
.LBB24_2:                               # %if.end.6
	movq	%r15, 8(%rsp)
	movq	$0, (%rsp)
	leaq	48(%rsp), %r8
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%r9d, %r9d
	movq	%r12, %rdx
	movl	%ebp, %ecx
	callq	file_open_stream
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB24_3
# BB#4:                                 # %if.end.11
	movq	48(%rsp), %rdi
	movq	136(%rdi), %rsi
	movl	144(%rdi), %edx
	movzbl	(%r12), %eax
	movl	$1, %r8d
	cmpl	$114, %eax
	je	.LBB24_6
# BB#5:                                 # %select.mid
	movl	$2, %r8d
.LBB24_6:                               # %select.end
	movq	40(%rsp), %rcx          # 8-byte Reload
	callq	s_std_init
	movq	16(%r13), %rax
	movq	48(%rsp), %rcx
	movq	%rax, 224(%rcx)
	movq	48(%rsp), %rax
	movq	216(%rax), %rcx
	movq	%rcx, 296(%rax)
	movq	48(%rsp), %rax
	movq	$file_close_file, 216(%rax)
	testq	%rbx, %rbx
	je	.LBB24_7
# BB#8:                                 # %if.else
	movq	24(%rsp), %rsi          # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB24_10
# BB#9:                                 # %if.then.24
	movl	20(%rsp), %edx          # 4-byte Reload
	movq	%rbx, %rdi
	callq	memcpy
	jmp	.LBB24_10
.LBB24_3:                               # %if.then.9
	movl	$.L.str.19, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*24(%r15)
	jmp	.LBB24_19
.LBB24_7:                               # %if.then.21
	movq	48(%rsp), %rbx
.LBB24_10:                              # %if.end.28
	movq	48(%rsp), %rax
	movq	%rbx, 256(%rax)
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	s_init_state
	movq	$filter_report_error, 16(%rbx)
	movq	8(%r13), %rax
	testq	%rax, %rax
	je	.LBB24_13
# BB#11:                                # %if.then.31
	movq	%rbx, %rdi
	callq	*%rax
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB24_12
.LBB24_13:                              # %if.end.43
	movq	48(%rsp), %rbx
	movzbl	1(%r12), %eax
	movl	$112, %ebp
	cmpl	$43, %eax
	je	.LBB24_15
# BB#14:                                # %select.mid34
	xorl	%ebp, %ebp
.LBB24_15:                              # %select.end33
	movq	8(%rbx), %rdi
	callq	imemory_space
	orl	%ebp, %eax
	movzbl	(%r12), %ecx
	movq	32(%rsp), %rdx          # 8-byte Reload
	movq	%rbx, 8(%rdx)
	cmpl	$114, %ecx
	jne	.LBB24_17
# BB#16:                                # %if.then.i
	orl	$96, %eax
	movw	264(%rbx), %cx
	movw	$0, 266(%rbx)
	jmp	.LBB24_18
.LBB24_17:                              # %if.else.i
	orl	$16, %eax
	movw	266(%rbx), %cx
	movw	$0, 264(%rbx)
.LBB24_18:                              # %make_stream_file.exit
	addl	$768, %eax              # imm = 0x300
	movzwl	%cx, %ecx
	movw	%ax, (%rdx)
	movl	%ecx, 4(%rdx)
	xorl	%r14d, %r14d
	jmp	.LBB24_19
.LBB24_12:                              # %if.then.36
	movl	$.L.str.19, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*24(%r15)
	movq	48(%rsp), %rax
	movq	136(%rax), %rsi
	movl	$.L.str.20, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
.LBB24_19:                              # %cleanup
	movl	%r14d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	filter_open, .Lfunc_end24-filter_open
	.cfi_endproc

	.globl	file_close
	.align	16, 0x90
	.type	file_close,@function
file_close:                             # @file_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp188:
	.cfi_def_cfa_offset 16
	movq	%rdi, %rax
	movq	8(%rax), %rdi
	movw	266(%rdi), %cx
	orw	264(%rdi), %cx
	movzwl	%cx, %ecx
	cmpl	4(%rax), %ecx
	jne	.LBB25_2
# BB#1:                                 # %if.then
	callq	sclose
	movl	%eax, %ecx
	movl	$-12, %eax
	testl	%ecx, %ecx
	jne	.LBB25_3
.LBB25_2:                               # %if.end.5
	xorl	%eax, %eax
.LBB25_3:                               # %cleanup
	popq	%rdx
	retq
.Lfunc_end25:
	.size	file_close, .Lfunc_end25-file_close
	.cfi_endproc

	.align	16, 0x90
	.type	execfile_cleanup,@function
execfile_cleanup:                       # @execfile_cleanup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	movq	640(%rdi), %rcx
	subq	%rax, %rcx
	cmpq	$16, %rcx
	jge	.LBB26_2
# BB#1:                                 # %return
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	retq
.LBB26_2:                               # %if.end
	leaq	16(%rax), %rcx
	movq	%rcx, 624(%rdi)
	movq	520(%rdi), %rcx
	movups	32(%rcx), %xmm0
	movups	%xmm0, 16(%rax)
	jmp	zclosefile              # TAILCALL
.Lfunc_end26:
	.size	execfile_cleanup, .Lfunc_end26-execfile_cleanup
	.cfi_endproc

	.align	16, 0x90
	.type	file_cleanup,@function
file_cleanup:                           # @file_cleanup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp189:
	.cfi_def_cfa_offset 16
	movq	520(%rdi), %rax
	movq	40(%rax), %rcx
	movq	88(%rax), %rdi
	callq	*96(%rcx)
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end27:
	.size	file_cleanup, .Lfunc_end27-file_cleanup
	.cfi_endproc

	.align	16, 0x90
	.type	check_file_permissions_reduced,@function
check_file_permissions_reduced:         # @check_file_permissions_reduced
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp190:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp191:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp192:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp193:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp194:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp195:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp196:
	.cfi_def_cfa_offset 112
.Ltmp197:
	.cfi_offset %rbx, -56
.Ltmp198:
	.cfi_offset %r12, -48
.Ltmp199:
	.cfi_offset %r13, -40
.Ltmp200:
	.cfi_offset %r14, -32
.Ltmp201:
	.cfi_offset %r15, -24
.Ltmp202:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movl	%edx, %ebx
	movl	%ebx, 28(%rsp)          # 4-byte Spill
	movq	%rsi, %rbp
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %r12
	movq	$0, 48(%rsp)
	movl	$.L.str.32, %edi
	movl	$1, %esi
	movl	$.L.str.32, %edx
	callq	gs_file_name_check_separator
	movl	%eax, %r14d
	movq	%rbp, %rdi
	movl	%ebx, %esi
	callq	gp_file_name_parents
	movl	%eax, %ebx
	leaq	168(%r12), %rdi
	leaq	48(%rsp), %rdx
	movq	%r15, %rsi
	callq	dict_find_string
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jle	.LBB28_15
# BB#1:                                 # %for.cond.preheader
	movq	48(%rsp), %rsi
	cmpl	$0, 4(%rsi)
	je	.LBB28_14
# BB#2:                                 # %for.body.lr.ph
	xorl	%ebp, %ebp
	cmpl	$1, %r14d
	movl	$check_file_permissions_reduced.win_filename_params, %eax
	cmovneq	%rbp, %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	.align	16, 0x90
.LBB28_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r12), %rdi
	movq	%rbp, %rdx
	leaq	32(%rsp), %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB28_14
# BB#4:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB28_3 Depth=1
	movzbl	33(%rsp), %eax
	cmpl	$18, %eax
	jne	.LBB28_14
# BB#5:                                 # %if.end.16
                                        #   in Loop: Header=BB28_3 Depth=1
	movq	40(%rsp), %r13
	movl	36(%rsp), %r14d
	cmpl	$1, %r14d
	jne	.LBB28_8
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB28_3 Depth=1
	movzbl	(%r13), %eax
	cmpl	$42, %eax
	je	.LBB28_7
.LBB28_8:                               # %if.end.26
                                        #   in Loop: Header=BB28_3 Depth=1
	testl	%ebx, %ebx
	je	.LBB28_10
# BB#9:                                 # %land.lhs.true.29
                                        #   in Loop: Header=BB28_3 Depth=1
	movq	%r13, %rdi
	movl	%r14d, %esi
	callq	gp_file_name_parents
	cmpl	%eax, %ebx
	jne	.LBB28_13
.LBB28_10:                              # %if.end.34
                                        #   in Loop: Header=BB28_3 Depth=1
	movq	%r13, %rdi
	movl	%r14d, %esi
	callq	gp_file_name_cwds
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jle	.LBB28_12
# BB#11:                                # %land.lhs.true.38
                                        #   in Loop: Header=BB28_3 Depth=1
	movq	16(%rsp), %rdi          # 8-byte Reload
	movl	28(%rsp), %esi          # 4-byte Reload
	callq	gp_file_name_is_absolute
	testl	%eax, %eax
	jne	.LBB28_13
.LBB28_12:                              # %cleanup
                                        #   in Loop: Header=BB28_3 Depth=1
	movslq	%r15d, %rax
	addq	%rax, %r13
	subl	%r15d, %r14d
	movq	16(%rsp), %rdi          # 8-byte Reload
	movl	28(%rsp), %esi          # 4-byte Reload
	movq	%r13, %rdx
	movl	%r14d, %ecx
	movq	8(%rsp), %r8            # 8-byte Reload
	callq	string_match
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB28_15
.LBB28_13:                              # %for.inc
                                        #   in Loop: Header=BB28_3 Depth=1
	incq	%rbp
	movq	48(%rsp), %rsi
	movl	4(%rsi), %eax
	cmpq	%rax, %rbp
	jl	.LBB28_3
.LBB28_14:
	movl	$-9, %eax
.LBB28_15:                              # %cleanup.50
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB28_7:                               # %cleanup.thread27
	xorl	%eax, %eax
	jmp	.LBB28_15
.Lfunc_end28:
	.size	check_file_permissions_reduced, .Lfunc_end28-check_file_permissions_reduced
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%statementedit%"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%lineedit%"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%stdin"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"r"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"1deletefile"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"1.execfile"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"2file"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"3filenameforall"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"0.filenamelistseparator"
	.size	.L.str.8, 24

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"1.filenamesplit"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"1.libfile"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"2renamefile"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"1status"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"2.tempfile"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"0%file_continue"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"0%execfile_finish"
	.size	.L.str.15, 18

	.type	zfile_op_defs,@object   # @zfile_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfile_op_defs
	.align	16
zfile_op_defs:
	.quad	.L.str.4
	.quad	zdeletefile
	.quad	.L.str.5
	.quad	zexecfile
	.quad	.L.str.6
	.quad	zfile
	.quad	.L.str.7
	.quad	zfilenameforall
	.quad	.L.str.8
	.quad	zfilenamelistseparator
	.quad	.L.str.9
	.quad	zfilenamesplit
	.quad	.L.str.10
	.quad	zlibfile
	.quad	.L.str.11
	.quad	zrenamefile
	.quad	.L.str.12
	.quad	zstatus
	.quad	.L.str.13
	.quad	ztempfile
	.quad	.L.str.14
	.quad	file_continue
	.quad	.L.str.15
	.quad	execfile_finish
	.zero	16
	.size	zfile_op_defs, 208

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"PermitFileReading"
	.size	.L.str.16, 18

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"PermitFileWriting"
	.size	.L.str.17, 18

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"file_read_string"
	.size	.L.str.18, 17

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"filter_open(stream_state)"
	.size	.L.str.19, 26

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"filter_open(buffer)"
	.size	.L.str.20, 20

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"deletefile"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"PermitFileControl"
	.size	.L.str.22, 18

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"renamefile(to)"
	.size	.L.str.23, 15

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"renamefile(from)"
	.size	.L.str.24, 17

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"status"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"ztempfile(prefix)"
	.size	.L.str.26, 18

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"ztempfile(fname)"
	.size	.L.str.27, 17

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"ztempfile(stream)"
	.size	.L.str.28, 18

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"ztempfile(buffer)"
	.size	.L.str.29, 18

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	".tempfile(fname)"
	.size	.L.str.30, 17

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%pipe%"
	.size	.L.str.31, 7

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"\\"
	.size	.L.str.32, 2

	.type	check_file_permissions_reduced.win_filename_params,@object # @check_file_permissions_reduced.win_filename_params
	.section	.rodata,"a",@progbits
	.align	4
check_file_permissions_reduced.win_filename_params:
	.long	42                      # 0x2a
	.long	63                      # 0x3f
	.long	92                      # 0x5c
	.long	1                       # 0x1
	.long	1                       # 0x1
	.size	check_file_permissions_reduced.win_filename_params, 20

	.type	.L.str.33,@object       # @.str.33
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.33:
	.asciz	"SAFETY"
	.size	.L.str.33, 7

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"tempfiles"
	.size	.L.str.34, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
