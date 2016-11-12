	.text
	.file	"gdevupd.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.text
	.align	16, 0x90
	.type	upd_print_page,@function
upd_print_page:                         # @upd_print_page
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
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 128
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rdi, %r13
	movq	18488(%r13), %rbx
	testq	%rbx, %rbx
	je	.LBB0_2
# BB#1:                                 # %lor.lhs.false
	movl	$192512, %eax           # imm = 0x2F000
	andl	520(%rbx), %eax
	cmpl	$61440, %eax            # imm = 0xF000
	jne	.LBB0_2
# BB#3:                                 # %if.end
	movq	8(%rbx), %r15
	movq	sigupd(%rip), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	%rbx, sigupd(%rip)
	movl	$2, %edi
	movl	$upd_signal_handler, %esi
	callq	signal
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$15, %edi
	movl	$upd_signal_handler, %esi
	callq	signal
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	520(%rbx), %eax
	testl	$262144, %eax           # imm = 0x40000
	jne	.LBB0_7
# BB#4:                                 # %if.then.9
	movq	24(%rbx), %rcx
	movl	24(%rcx), %edx
	testq	%rdx, %rdx
	je	.LBB0_6
# BB#5:                                 # %if.then.11
	movq	16(%rcx), %rdi
	movl	$1, %esi
	movq	%rbp, %rcx
	callq	fwrite
	movl	520(%rbx), %eax
.LBB0_6:                                # %if.end.18
	orl	$262144, %eax           # imm = 0x40000
	movl	%eax, 520(%rbx)
.LBB0_7:                                # %if.end.20
	movq	24(%rbx), %rax
	movl	56(%rax), %edx
	testq	%rdx, %rdx
	je	.LBB0_9
# BB#8:                                 # %if.then.26
	movq	48(%rax), %rdi
	movl	$1, %esi
	movq	%rbp, %rcx
	callq	fwrite
.LBB0_9:                                # %if.end.35
	xorps	%xmm0, %xmm0
	movups	%xmm0, 608(%rbx)
	movq	504(%rbx), %rax
	testq	%rax, %rax
	je	.LBB0_11
# BB#10:                                # %if.then.37
	movq	%rbx, %rdi
	callq	*%rax
.LBB0_11:                               # %if.end.40
	movq	512(%rbx), %rax
	testq	%rax, %rax
	je	.LBB0_13
# BB#12:                                # %if.then.42
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*%rax
.LBB0_13:                               # %if.end.45
	movl	32(%r15), %eax
	imull	40(%r15), %eax
	testl	%eax, %eax
	movl	$1, %r12d
	cmovgl	%eax, %r12d
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [0,0,4294967295,4294967295]
	movups	%xmm0, 592(%rbx)
	leaq	184(%rbx), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	612(%rbx), %eax
	.align	16, 0x90
.LBB0_14:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
                                        #     Child Loop BB0_21 Depth 2
	cmpl	%eax, 552(%rbx)
	jle	.LBB0_25
# BB#15:                                # %while.body
                                        #   in Loop: Header=BB0_14 Depth=1
	subl	56(%r15), %eax
	movl	$0, %ecx
	cmovll	%ecx, %eax
	movl	%eax, %r14d
	addl	568(%rbx), %r14d
	movl	620(%rbx), %esi
	jmp	.LBB0_16
	.align	16, 0x90
.LBB0_30:                               # %for.inc
                                        #   in Loop: Header=BB0_16 Depth=2
	movl	620(%rbx), %esi
	incl	%esi
	movl	%esi, 620(%rbx)
.LBB0_16:                               # %while.body
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%r14d, %esi
	jge	.LBB0_19
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB0_16 Depth=2
	cmpl	%esi, 540(%rbx)
	jle	.LBB0_28
# BB#18:                                # %if.then.69
                                        #   in Loop: Header=BB0_16 Depth=2
	movq	176(%rbx), %rdx
	movq	%r13, %rdi
	movq	24(%rsp), %rcx          # 8-byte Reload
	callq	*1240(%r13)
	testl	%eax, %eax
	jns	.LBB0_29
	jmp	.LBB0_19
	.align	16, 0x90
.LBB0_28:                               # %if.else.76
                                        #   in Loop: Header=BB0_16 Depth=2
	movq	176(%rbx), %rdi
	movq	%rdi, 184(%rbx)
	movl	532(%rbx), %edx
	xorl	%esi, %esi
	callq	memset
.LBB0_29:                               # %if.end.81
                                        #   in Loop: Header=BB0_16 Depth=2
	movq	%rbx, %rdi
	callq	*208(%rbx)
	testl	%eax, %eax
	jns	.LBB0_30
.LBB0_19:                               # %for.end
                                        #   in Loop: Header=BB0_14 Depth=1
	movl	612(%rbx), %eax
	movl	620(%rbx), %ecx
	xorl	%ecx, %r14d
	testl	584(%rbx), %r14d
	jne	.LBB0_25
# BB#20:                                # %while.cond.93.preheader
                                        #   in Loop: Header=BB0_14 Depth=1
	leal	(%rax,%r12), %edx
	subl	56(%r15), %edx
	cmpl	%ecx, %edx
	jge	.LBB0_24
	.align	16, 0x90
.LBB0_21:                               # %while.body.101
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*216(%rbx)
	movl	612(%rbx), %eax
	cmpl	552(%rbx), %eax
	jge	.LBB0_24
# BB#22:                                # %if.end.108
                                        #   in Loop: Header=BB0_21 Depth=2
	testb	$1, 522(%rbx)
	jne	.LBB0_24
# BB#23:                                # %if.end.108.while.cond.93_crit_edge
                                        #   in Loop: Header=BB0_21 Depth=2
	leal	(%rax,%r12), %ecx
	subl	56(%r15), %ecx
	cmpl	620(%rbx), %ecx
	jl	.LBB0_21
	.align	16, 0x90
.LBB0_24:                               # %while.end
                                        #   in Loop: Header=BB0_14 Depth=1
	leal	(%rax,%r12), %ecx
	subl	56(%r15), %ecx
	cmpl	620(%rbx), %ecx
	jge	.LBB0_14
.LBB0_25:                               # %while.end.123
	movq	24(%rbx), %rcx
	cmpl	%eax, 552(%rbx)
	jle	.LBB0_31
# BB#26:                                # %land.lhs.true
	movl	88(%rcx), %edx
	testq	%rdx, %rdx
	je	.LBB0_31
# BB#27:                                # %if.then.133
	movq	80(%rcx), %rdi
	movl	$1, %esi
	movq	%rbp, %rcx
	callq	fwrite
	andb	$-5, 522(%rbx)
	jmp	.LBB0_33
.LBB0_2:                                # %if.then
	movq	24(%r13), %rdi
	movl	$.L.str.121, %esi
	xorl	%eax, %eax
	movq	%r13, %rdx
	movq	%rbp, %rcx
	callq	errprintf
	movl	$-21, %r14d
	jmp	.LBB0_41
.LBB0_31:                               # %if.else.144
	movl	72(%rcx), %edx
	testq	%rdx, %rdx
	je	.LBB0_33
# BB#32:                                # %if.then.150
	movq	64(%rcx), %rdi
	movl	$1, %esi
	movq	%rbp, %rcx
	callq	fwrite
.LBB0_33:                               # %if.end.160
	leaq	13056(%r13), %r14
	movq	%r14, %rdi
	callq	strlen
	movq	24(%r13), %r8
	leaq	40(%rsp), %rdi
	leaq	32(%rsp), %rsi
	movq	%r14, %rdx
	movl	%eax, %ecx
	callq	gx_parse_output_file_name
	testl	%eax, %eax
	js	.LBB0_38
# BB#34:                                # %if.end.160
	movq	32(%rsp), %rax
	testq	%rax, %rax
	je	.LBB0_38
# BB#35:                                # %if.then.176
	movq	24(%rbx), %rax
	movl	40(%rax), %edx
	testq	%rdx, %rdx
	je	.LBB0_37
# BB#36:                                # %if.then.182
	movq	32(%rax), %rdi
	movl	$1, %esi
	movq	%rbp, %rcx
	callq	fwrite
.LBB0_37:                               # %if.end.191
	andb	$-5, 522(%rbx)
.LBB0_38:                               # %if.end.194
	movq	%rbp, %rdi
	callq	fflush
	movl	552(%rbx), %eax
	movl	$-6, %r14d
	cmpl	612(%rbx), %eax
	jg	.LBB0_40
# BB#39:                                # %if.else.201
	movq	%rbp, %rdi
	callq	ferror
	testl	%eax, %eax
	movl	$-12, %r14d
	cmovel	%eax, %r14d
.LBB0_40:                               # %if.end.207
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rax, sigupd(%rip)
	movl	$2, %edi
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	signal
	movl	$15, %edi
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	signal
.LBB0_41:                               # %cleanup
	movl	%r14d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	upd_print_page, .Lfunc_end0-upd_print_page
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	1116733440              # float 72
.LCPI1_1:
	.long	1065353216              # float 1
.LCPI1_3:
	.long	1199570688              # float 65535
.LCPI1_4:
	.long	1056964608              # float 0.5
.LCPI1_8:
	.long	1135869952              # float 360
.LCPI1_10:
	.long	1163984896              # float 3600
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_2:
	.quad	4607182418800017408     # double 1
.LCPI1_5:
	.quad	4634766966517661696     # double 72
.LCPI1_6:
	.quad	4602678819172646912     # double 0.5
.LCPI1_7:
	.quad	4649544402794971136     # double 720
.LCPI1_9:
	.quad	-4588605070337114112    # double -72
.LCPI1_11:
	.quad	4660134898793709568     # double 3600
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_12:
	.quad	2                       # 0x2
	.quad	3                       # 0x3
.LCPI1_13:
	.quad	6                       # 0x6
	.quad	7                       # 0x7
.LCPI1_14:
	.quad	4                       # 0x4
	.quad	5                       # 0x5
.LCPI1_15:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.align	16, 0x90
	.type	upd_open,@function
upd_open:                               # @upd_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 224
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rdi, %r12
	movq	18488(%r12), %r15
	testq	%r15, %r15
	je	.LBB1_661
# BB#1:                                 # %land.lhs.true
	movq	40(%r15), %rcx
	movq	128(%rcx), %rax
	testq	%rax, %rax
	je	.LBB1_7
# BB#2:                                 # %land.lhs.true.3
	cmpl	$4, 136(%rcx)
	jne	.LBB1_7
# BB#3:                                 # %if.then
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, 148(%rsp)
	movss	12(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, 156(%rsp)
	testb	$8, 522(%r15)
	jne	.LBB1_4
# BB#5:                                 # %if.else
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	divss	.LCPI1_0(%rip), %xmm0
	leaq	144(%rsp), %rsi
	movss	%xmm0, 144(%rsp)
	addq	$8, %rax
	jmp	.LBB1_6
.LBB1_661:                              # %if.end.54
	movq	%r12, %rdi
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gdev_prn_open           # TAILCALL
.LBB1_4:                                # %if.then.21
	movss	8(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	divss	.LCPI1_0(%rip), %xmm0
	leaq	144(%rsp), %rsi
	movss	%xmm0, 144(%rsp)
.LBB1_6:                                # %if.end
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	divss	.LCPI1_0(%rip), %xmm0
	movss	%xmm0, 152(%rsp)
	movl	$1, %edx
	movq	%r12, %rdi
	callq	gx_device_set_margins
.LBB1_7:                                # %if.then.56
	movq	%r12, %rdi
	callq	gdev_prn_open
	movl	%eax, %ebx
	movl	$-61441, %eax           # imm = 0xFFFFFFFFFFFF0FFF
	andl	520(%r15), %eax
	movl	%eax, %ecx
	orl	$131072, %ecx           # imm = 0x20000
	testl	%ebx, %ebx
	cmovnsl	%eax, %ecx
	movl	%ecx, 520(%r15)
	movq	18488(%r12), %r13
	movq	$0, 48(%r13)
	movq	$0, 80(%r13)
	movq	$0, 112(%r13)
	movq	$0, 144(%r13)
	movl	$0, 556(%r13)
	testb	$2, 522(%r13)
	jne	.LBB1_70
# BB#8:                                 # %for.cond.4.preheader.i
	movl	$-1, 64(%r13)
	movl	$0, 68(%r13)
	movl	$-1, 96(%r13)
	movl	$0, 100(%r13)
	movl	$-1, 128(%r13)
	movl	$0, 132(%r13)
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	%rax, 160(%r13)
	movq	(%r13), %rax
	movl	(%rax), %eax
	decl	%eax
	cmpl	$6, %eax
	ja	.LBB1_70
# BB#9:                                 # %for.cond.4.preheader.i
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_13:                               # %sw.bb.82.i
	movl	%ebx, 72(%rsp)          # 4-byte Spill
	movq	%r12, 64(%rsp)          # 8-byte Spill
	movl	$4, 64(%r13)
	movl	$5, 96(%r13)
	movl	$6, 128(%r13)
	movl	$7, 160(%r13)
	movl	$4, %eax
	jmp	.LBB1_14
.LBB1_10:                               # %sw.bb.i
	movl	%ebx, 72(%rsp)          # 4-byte Spill
	movq	%r12, 64(%rsp)          # 8-byte Spill
	movl	$0, 64(%r13)
	xorl	%eax, %eax
	jmp	.LBB1_14
.LBB1_11:                               # %sw.bb.20.i
	movl	%ebx, 72(%rsp)          # 4-byte Spill
	movq	%r12, 64(%rsp)          # 8-byte Spill
	movl	$0, 64(%r13)
	movl	$1, 96(%r13)
	movl	$2, 128(%r13)
	movl	$3, 160(%r13)
	xorl	%eax, %eax
	jmp	.LBB1_14
.LBB1_12:                               # %sw.bb.33.i
	movl	%ebx, 72(%rsp)          # 4-byte Spill
	movq	%r12, 64(%rsp)          # 8-byte Spill
	movl	$1, 64(%r13)
	movl	$2, 96(%r13)
	movl	$3, 128(%r13)
	movl	$1, %eax
.LBB1_14:                               # %for.cond.98.preheader.i
	movl	$1, %r14d
	xorl	%r12d, %r12d
	jmp	.LBB1_15
	.align	16, 0x90
.LBB1_38:                               # %for.inc.281.for.body.100_crit_edge.i
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	%r12, %rax
	shlq	$5, %rax
	movl	64(%r13,%rax), %eax
	movl	%ecx, %r14d
.LBB1_15:                               # %for.body.100.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_33 Depth 2
                                        #     Child Loop BB1_29 Depth 2
	testl	%eax, %eax
	js	.LBB1_36
# BB#16:                                # %if.end.107.i
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	16(%r13), %rsi
	movq	16(%rsi), %rcx
	movl	(%rcx,%r12,4), %edx
	xorl	%ecx, %ecx
	testl	%edx, %edx
	js	.LBB1_37
# BB#17:                                # %if.end.107.i
                                        #   in Loop: Header=BB1_15 Depth=1
	cmpl	$16, %edx
	ja	.LBB1_37
# BB#18:                                # %lor.lhs.false.119.i
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	32(%rsi), %rsi
	movl	(%rsi,%r12,4), %esi
	testl	%esi, %esi
	js	.LBB1_37
# BB#19:                                # %lor.lhs.false.127.i
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	64(%rsp), %rdi          # 8-byte Reload
	movzwl	108(%rdi), %edi
	subl	%esi, %edi
	cmpl	%edi, %edx
	jg	.LBB1_37
# BB#20:                                # %if.else.i
                                        #   in Loop: Header=BB1_15 Depth=1
	cltq
	movq	40(%r13), %rcx
	shlq	$4, %rax
	movq	(%rcx,%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB1_25
# BB#21:                                # %lor.lhs.false.151.i
                                        #   in Loop: Header=BB1_15 Depth=1
	movl	8(%rcx,%rax), %eax
	cmpl	$2, %eax
	jae	.LBB1_22
# BB#23:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB1_15 Depth=1
	testl	%eax, %eax
	je	.LBB1_25
# BB#24:                                # %if.then.180.i
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
.LBB1_25:                               # %if.end.191.i
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	64(%rsp), %rbx          # 8-byte Reload
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$2, %esi
	movl	$4, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbp
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB1_74
# BB#26:                                # %cleanup.221.thread.i
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	%r12, %rax
	shlq	$5, %rax
	leaq	64(%r13,%rax), %rbx
	xorl	%esi, %esi
	movl	$8, %edx
	movq	%rbp, %rdi
	callq	memset
	movabsq	$4575657221408423936, %rax # imm = 0x3F80000000000000
	movq	%rax, (%rbp)
	movslq	(%rbx), %rax
	movq	40(%r13), %rcx
	shlq	$4, %rax
	movq	%rbp, (%rcx,%rax)
	movl	$2, 8(%rcx,%rax)
	movl	$2, %eax
	xorps	%xmm0, %xmm0
	jmp	.LBB1_27
.LBB1_22:                               # %lor.lhs.false.151.i.if.end.224.i_crit_edge
                                        #   in Loop: Header=BB1_15 Depth=1
	movss	(%rbp), %xmm0           # xmm0 = mem[0],zero,zero,zero
.LBB1_27:                               # %if.end.224.i
                                        #   in Loop: Header=BB1_15 Depth=1
	leal	-1(%rax), %ecx
	movslq	%ecx, %rdx
	movss	(%rbp,%rdx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB1_31
# BB#28:                                # %while.cond.i.preheader
                                        #   in Loop: Header=BB1_15 Depth=1
	addq	$4, %rbp
	addl	$-2, %eax
	.align	16, 0x90
.LBB1_29:                               # %while.cond.i
                                        #   Parent Loop BB1_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %ecx
	cmpl	$-1, %ecx
	je	.LBB1_35
# BB#30:                                # %while.body.i
                                        #   in Loop: Header=BB1_29 Depth=2
	movss	(%rbp), %xmm1           # xmm1 = mem[0],zero,zero,zero
	addq	$4, %rbp
	leal	-1(%rcx), %eax
	ucomiss	%xmm1, %xmm0
	movaps	%xmm1, %xmm0
	jb	.LBB1_29
	jmp	.LBB1_35
.LBB1_31:                               # %if.else.253.i
                                        #   in Loop: Header=BB1_15 Depth=1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB1_35
# BB#32:                                # %while.cond.258.i.preheader
                                        #   in Loop: Header=BB1_15 Depth=1
	addq	$4, %rbp
	addl	$-2, %eax
	.align	16, 0x90
.LBB1_33:                               # %while.cond.258.i
                                        #   Parent Loop BB1_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %ecx
	cmpl	$-1, %ecx
	je	.LBB1_35
# BB#34:                                # %while.body.261.i
                                        #   in Loop: Header=BB1_33 Depth=2
	movss	(%rbp), %xmm1           # xmm1 = mem[0],zero,zero,zero
	addq	$4, %rbp
	leal	-1(%rcx), %eax
	ucomiss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	jb	.LBB1_33
.LBB1_35:                               # %cleanup.275.thread.i
                                        #   in Loop: Header=BB1_15 Depth=1
	testl	%ecx, %ecx
	movl	$0, %eax
	cmovnsl	%eax, %r14d
.LBB1_36:                               # %for.inc.281.i
                                        #   in Loop: Header=BB1_15 Depth=1
	movl	%r14d, %ecx
.LBB1_37:                               # %for.inc.281.i
                                        #   in Loop: Header=BB1_15 Depth=1
	incq	%r12
	cmpq	$3, %r12
	jle	.LBB1_38
# BB#39:                                # %if.end.290.i
	testl	%r12d, %r12d
	movq	64(%rsp), %r12          # 8-byte Reload
	movl	72(%rsp), %ebx          # 4-byte Reload
	je	.LBB1_70
# BB#40:                                # %if.end.290.i
	testl	%ecx, %ecx
	je	.LBB1_70
# BB#41:                                # %for.body.296.i.preheader
	leaq	76(%r13), %rbx
	xorl	%r14d, %r14d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB1_42:                               # %for.body.296.i
                                        # =>This Inner Loop Header: Depth=1
	movslq	-12(%rbx), %rax
	testq	%rax, %rax
	js	.LBB1_44
# BB#43:                                # %if.end.304.i
                                        #   in Loop: Header=BB1_42 Depth=1
	movq	16(%r13), %rdx
	movq	16(%rdx), %rcx
	movl	(%rcx,%rbp,4), %ecx
	movl	%ecx, -8(%rbx)
	movq	32(%rdx), %rdx
	movl	(%rdx,%rbp,4), %edx
	movl	%edx, -16(%rbx)
	movl	$1, %esi
	shll	%cl, %esi
	leal	-1(%rsi), %ecx
	movl	%ecx, -20(%rbx)
	movq	40(%r13), %rcx
	shlq	$4, %rax
	movq	(%rcx,%rax), %rdx
	movl	8(%rcx,%rax), %eax
	decl	%eax
	movss	(%rdx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	ucomiss	(%rdx), %xmm0
	seta	%al
	movzbl	%al, %eax
	movl	%eax, (%rbx)
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$2, %edx
	movl	$.L.str.4, %ecx
	callq	*88(%rdi)
	movq	%rax, -28(%rbx)
	testq	%rax, %rax
	je	.LBB1_69
.LBB1_44:                               # %for.inc.393.i
                                        #   in Loop: Header=BB1_42 Depth=1
	incq	%rbp
	addq	$32, %rbx
	cmpq	$4, %rbp
	jl	.LBB1_42
# BB#45:
	pxor	%xmm11, %xmm11
	movsd	.LCPI1_2(%rip), %xmm8   # xmm8 = mem[0],zero
	movss	.LCPI1_1(%rip), %xmm9   # xmm9 = mem[0],zero,zero,zero
	movss	.LCPI1_3(%rip), %xmm10  # xmm10 = mem[0],zero,zero,zero
	.align	16, 0x90
.LBB1_46:                               # %for.body.408.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_57 Depth 2
                                        #       Child Loop BB1_58 Depth 3
	movq	%r14, %rcx
	shlq	$5, %rcx
	movslq	64(%r13,%rcx), %rsi
	testq	%rsi, %rsi
	js	.LBB1_63
# BB#47:                                # %if.end.424.i
                                        #   in Loop: Header=BB1_46 Depth=1
	movl	56(%r13,%rcx), %r9d
	movq	48(%r13,%rcx), %r8
	movw	$-1, (%r8,%r9,2)
	cmpl	$0, 68(%r13,%rcx)
	je	.LBB1_63
# BB#48:                                # %if.end.432.i
                                        #   in Loop: Header=BB1_46 Depth=1
	movq	40(%r13), %rdi
	shlq	$4, %rsi
	movq	(%rdi,%rsi), %rdx
	movss	(%rdx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	xorpd	%xmm4, %xmm4
	ucomiss	%xmm1, %xmm11
	xorpd	%xmm5, %xmm5
	ja	.LBB1_52
# BB#49:                                # %if.else.443.i
                                        #   in Loop: Header=BB1_46 Depth=1
	ucomiss	.LCPI1_1(%rip), %xmm1
	jbe	.LBB1_50
# BB#51:                                # %if.then.446.i
                                        #   in Loop: Header=BB1_46 Depth=1
	movapd	%xmm8, %xmm5
	jmp	.LBB1_52
.LBB1_50:                               #   in Loop: Header=BB1_46 Depth=1
	xorps	%xmm5, %xmm5
	cvtss2sd	%xmm1, %xmm5
.LBB1_52:                               # %if.end.448.i
                                        #   in Loop: Header=BB1_46 Depth=1
	movl	8(%rdi,%rsi), %esi
	leal	-1(%rsi), %edi
	movss	(%rdx,%rdi,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm11
	ja	.LBB1_56
# BB#53:                                # %if.else.466.i
                                        #   in Loop: Header=BB1_46 Depth=1
	ucomiss	.LCPI1_1(%rip), %xmm1
	jbe	.LBB1_54
# BB#55:                                # %if.then.469.i
                                        #   in Loop: Header=BB1_46 Depth=1
	movapd	%xmm8, %xmm4
	jmp	.LBB1_56
.LBB1_54:                               #   in Loop: Header=BB1_46 Depth=1
	xorps	%xmm4, %xmm4
	cvtss2sd	%xmm1, %xmm4
.LBB1_56:                               # %if.end.471.i
                                        #   in Loop: Header=BB1_46 Depth=1
	movapd	%xmm4, %xmm1
	subsd	%xmm5, %xmm1
	movapd	%xmm8, %xmm2
	divsd	%xmm1, %xmm2
	cmpneqsd	%xmm5, %xmm4
	andpd	%xmm2, %xmm4
	movl	%r9d, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ssq	%rcx, %xmm1
	movaps	%xmm9, %xmm6
	divss	%xmm1, %xmm6
	movl	%edi, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ssq	%rcx, %xmm1
	movaps	%xmm9, %xmm7
	divss	%xmm1, %xmm7
	mulss	%xmm10, %xmm7
	xorl	%ecx, %ecx
	xorl	%edi, %edi
	.align	16, 0x90
.LBB1_57:                               # %for.body.493.i
                                        #   Parent Loop BB1_46 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_58 Depth 3
	movl	%edi, %ebp
	xorps	%xmm1, %xmm1
	cvtsi2ssq	%rbp, %xmm1
	mulss	%xmm6, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movl	%ecx, %ebx
	.align	16, 0x90
.LBB1_58:                               # %while.cond.495.i
                                        #   Parent Loop BB1_46 Depth=1
                                        #     Parent Loop BB1_57 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%ebx, %ecx
	leal	2(%rcx), %eax
	leal	1(%rcx), %ebx
	movss	(%rdx,%rbx,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	cmpl	%esi, %eax
	jae	.LBB1_60
# BB#59:                                # %land.rhs.i
                                        #   in Loop: Header=BB1_58 Depth=3
	cvtss2sd	%xmm2, %xmm3
	subsd	%xmm5, %xmm3
	mulsd	%xmm4, %xmm3
	ucomisd	%xmm3, %xmm1
	ja	.LBB1_58
.LBB1_60:                               # %while.end.520.i
                                        #   in Loop: Header=BB1_57 Depth=2
	movl	%ecx, %eax
	xorps	%xmm3, %xmm3
	cvtsi2sdq	%rax, %xmm3
	movss	(%rdx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm5, %xmm0
	mulsd	%xmm4, %xmm0
	subsd	%xmm0, %xmm1
	cvtss2sd	%xmm2, %xmm2
	subsd	%xmm5, %xmm2
	mulsd	%xmm4, %xmm2
	subsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm1
	addsd	%xmm3, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	mulss	%xmm7, %xmm1
	xorpd	%xmm2, %xmm2
	ucomiss	%xmm1, %xmm11
	ja	.LBB1_62
# BB#61:                                # %cond.false.i
                                        #   in Loop: Header=BB1_57 Depth=2
	movaps	%xmm10, %xmm0
	minss	%xmm1, %xmm0
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
.LBB1_62:                               # %cond.end.570.i
                                        #   in Loop: Header=BB1_57 Depth=2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	movzwl	%ax, %ebx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ebx, %xmm1
	subss	%xmm1, %xmm0
	ucomiss	.LCPI1_4(%rip), %xmm0
	setae	%bl
	movzbl	%bl, %ebx
	addl	%eax, %ebx
	movw	%bx, (%r8,%rbp,2)
	incl	%edi
	cmpl	%r9d, %edi
	jbe	.LBB1_57
.LBB1_63:                               # %cleanup.597.i
                                        #   in Loop: Header=BB1_46 Depth=1
	incq	%r14
	cmpq	$4, %r14
	jne	.LBB1_46
# BB#64:                                # %if.then.613.i
	movq	(%r13), %rax
	movl	(%rax), %eax
	decl	%eax
	cmpl	$6, %eax
	movl	72(%rsp), %ebx          # 4-byte Reload
	ja	.LBB1_70
# BB#65:                                # %if.then.613.i
	jmpq	*.LJTI1_1(,%rax,8)
.LBB1_68:                               # %sw.bb.652.i
	movl	$4, 556(%r13)
	jmp	.LBB1_72
.LBB1_69:                               # %if.then.398.i
	movq	24(%r12), %rdi
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	72(%rsp), %ebx          # 4-byte Reload
.LBB1_70:                               # %if.then.662.i
	movq	%r12, %rdi
	callq	upd_close_map
.LBB1_73:                               # %upd_open_map.exit
	movl	%ebx, %eax
	movq	%r12, %rbx
.LBB1_74:                               # %upd_open_map.exit
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movl	832(%rbx), %eax
	movss	908(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI1_5(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	movss	916(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	movss	884(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	subl	%ecx, %eax
	movl	%eax, 536(%r15)
	movl	836(%rbx), %eax
	movss	920(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	divsd	%xmm2, %xmm0
	movss	912(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	movss	888(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	subl	%ecx, %eax
	movl	%eax, 540(%r15)
	movl	$0, 532(%r15)
	movq	$0, 176(%r15)
	testb	$16, 521(%r15)
	movq	%rbx, %r12
	je	.LBB1_79
# BB#75:                                # %if.then.97
	movl	$1, %esi
	movq	%r12, %rdi
	callq	gx_device_raster
	movl	%eax, %ebp
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.2, %ecx
	movl	%ebp, %esi
	callq	*88(%rdi)
	movq	%rax, 176(%r15)
	testq	%rax, %rax
	je	.LBB1_77
# BB#76:                                # %if.then.105
	movl	%ebp, 532(%r15)
	movl	$8192, %eax             # imm = 0x2000
	orl	520(%r15), %eax
	jmp	.LBB1_78
.LBB1_77:                               # %if.else.109
	movl	$131072, %eax           # imm = 0x20000
	orl	520(%r15), %eax
	movl	$-25, 60(%rsp)          # 4-byte Folded Spill
.LBB1_78:                               # %if.end.112
	movl	%eax, 520(%r15)
.LBB1_79:                               # %if.end.113
	movq	18488(%r12), %rbx
	movl	520(%rbx), %eax
	movl	%eax, %ecx
	andl	$-16385, %ecx           # imm = 0xFFFFFFFFFFFFBFFF
	movl	%ecx, 520(%rbx)
	movq	$0, 232(%rbx)
	movl	$0, 564(%rbx)
	movq	$0, 208(%rbx)
	movq	$0, 504(%rbx)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 240(%rbx)
	movupd	%xmm0, 256(%rbx)
	movupd	%xmm0, 272(%rbx)
	movupd	%xmm0, 288(%rbx)
	movupd	%xmm0, 304(%rbx)
	movq	$0, 320(%rbx)
	movupd	%xmm0, 328(%rbx)
	movupd	%xmm0, 344(%rbx)
	movupd	%xmm0, 360(%rbx)
	movupd	%xmm0, 376(%rbx)
	movupd	%xmm0, 392(%rbx)
	movupd	%xmm0, 408(%rbx)
	movupd	%xmm0, 424(%rbx)
	movupd	%xmm0, 440(%rbx)
	movupd	%xmm0, 456(%rbx)
	movupd	%xmm0, 472(%rbx)
	movq	$0, 488(%rbx)
	andl	$143360, %eax           # imm = 0x23000
	cmpl	$12288, %eax            # imm = 0x3000
	jne	.LBB1_99
# BB#80:                                # %if.then.i
	movl	536(%rbx), %eax
	movl	%eax, 544(%rbx)
	movq	8(%rbx), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, %eax
	movl	%eax, %edx
	cmovgl	%ecx, %edx
	testl	%ecx, %ecx
	cmovlel	%eax, %edx
	movl	%edx, 544(%rbx)
	movq	(%rbx), %rax
	movl	4(%rax), %eax
	cmpl	$3, %eax
	je	.LBB1_95
# BB#81:                                # %if.then.i
	cmpl	$2, %eax
	jne	.LBB1_82
# BB#84:                                # %sw.bb.16.i
	movq	18488(%r12), %rbp
	movq	%r12, %rdi
	callq	upd_open_fscomp
	movl	520(%rbp), %eax
	testb	$64, %ah
	je	.LBB1_98
# BB#85:                                # %land.lhs.true.i.i
	cmpl	$4, 556(%rbp)
	jne	.LBB1_98
# BB#86:                                # %land.lhs.true.2.i.i
	cmpl	$8, 68(%rbp)
	jl	.LBB1_98
# BB#87:                                # %land.lhs.true.4.i.i
	cmpl	$24, 60(%rbp)
	jne	.LBB1_98
# BB#88:                                # %land.lhs.true.8.i.i
	cmpl	$8, 100(%rbp)
	jl	.LBB1_98
# BB#89:                                # %land.lhs.true.13.i.i
	cmpl	$16, 92(%rbp)
	jne	.LBB1_98
# BB#90:                                # %land.lhs.true.18.i.i
	cmpl	$8, 132(%rbp)
	jl	.LBB1_98
# BB#91:                                # %land.lhs.true.23.i.i
	cmpl	$8, 124(%rbp)
	jne	.LBB1_98
# BB#92:                                # %land.lhs.true.28.i.i
	cmpl	$8, 164(%rbp)
	jl	.LBB1_98
# BB#93:                                # %land.lhs.true.33.i.i
	cmpl	$0, 156(%rbp)
	jne	.LBB1_98
# BB#94:                                # %if.then.i.i
	movq	$upd_fscmyk, 208(%rbp)
	jmp	.LBB1_99
.LBB1_95:                               # %sw.bb.17.i
	movq	18488(%r12), %rbp
	movq	%r12, %rdi
	callq	upd_open_fscomp
	movl	520(%rbp), %eax
	testb	$64, %ah
	je	.LBB1_98
# BB#96:                                # %land.lhs.true.i.30.i
	cmpl	$4, 556(%rbp)
	jne	.LBB1_98
# BB#97:                                # %if.then.i.32.i
	movq	$upd_fscmy_k, 208(%rbp)
	jmp	.LBB1_99
.LBB1_98:                               # %if.else.i.33.i
	andl	$-16385, %eax           # imm = 0xFFFFFFFFFFFFBFFF
	movl	%eax, 520(%rbp)
	jmp	.LBB1_99
.LBB1_82:                               # %if.then.i
	cmpl	$1, %eax
	jne	.LBB1_99
# BB#83:                                # %sw.bb.i.54
	movq	%r12, %rdi
	callq	upd_open_fscomp
.LBB1_99:                               # %if.end.18.i
	movl	$147456, %ebp           # imm = 0x24000
	movl	520(%rbx), %eax
	andl	%ebp, %eax
	cmpl	$16384, %eax            # imm = 0x4000
	je	.LBB1_101
# BB#100:                               # %if.then.22.i
	movq	%r12, %rdi
	callq	upd_close_render
.LBB1_101:                              # %upd_open_render.exit
	movq	18488(%r12), %r9
	movq	%r9, 48(%rsp)           # 8-byte Spill
	movq	$0, 512(%r9)
	movq	$0, 216(%r9)
	movq	$0, 224(%r9)
	movl	$0, 568(%r9)
	movl	$0, 576(%r9)
	movl	$0, 580(%r9)
	movq	$0, 496(%r9)
	movl	$0, 588(%r9)
	andl	520(%r9), %ebp
	movl	556(%r9), %eax
	movl	%eax, 572(%r9)
	movq	8(%r9), %rcx
	movl	8(%rcx), %edx
	testl	%edx, %edx
	cmovgl	%edx, %eax
	cmpl	$16384, %ebp            # imm = 0x4000
	sete	%r14b
	movl	%eax, 572(%r9)
	jne	.LBB1_102
# BB#103:                               # %if.then.8.i
	movl	40(%rcx), %eax
	testl	%eax, %eax
	jg	.LBB1_105
# BB#104:                               # %if.then.12.i
	movl	$1, 40(%rcx)
	movl	$1, %eax
.LBB1_105:                              # %if.end.15.i
	movl	36(%rcx), %edx
	testl	%edx, %edx
	jg	.LBB1_107
# BB#106:                               # %if.then.19.i
	movl	$1, 36(%rcx)
	movl	$1, %edx
.LBB1_107:                              # %if.end.22.i
	cmpl	$0, 32(%rcx)
	jg	.LBB1_109
# BB#108:                               # %if.then.26.i
	movl	$1, 32(%rcx)
.LBB1_109:                              # %if.end.29.i
	imull	%eax, %edx
	movl	44(%rcx), %esi
	cmpl	%esi, %edx
	jle	.LBB1_111
# BB#110:                               # %if.then.37.i
	movl	%edx, 44(%rcx)
	movl	%edx, %esi
.LBB1_111:                              # %if.end.45.i
	movq	16(%r9), %rax
	movl	72(%rax), %edx
	cmpl	%edx, %esi
	jbe	.LBB1_134
# BB#112:                               # %if.then.50.i
	movq	%r9, %rbx
	testl	%edx, %edx
	je	.LBB1_115
# BB#113:                               # %if.then.50.i
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.LBB1_115
# BB#114:                               # %if.then.58.i
	movq	24(%r12), %rcx
	movq	200(%rcx), %rdi
	movl	$.L.str.3, %edx
	movq	%rax, %rsi
	callq	*24(%rdi)
	movq	8(%rbx), %rcx
	movl	44(%rcx), %esi
.LBB1_115:                              # %if.end.64.i
	xorl	%ebp, %ebp
	testl	%esi, %esi
	jle	.LBB1_116
# BB#117:                               # %if.then.68.i
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$4, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbp
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB1_660
# BB#118:                               # %cleanup.thread.i
	movq	8(%rbx), %rax
	movslq	44(%rax), %rdx
	shlq	$2, %rdx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	memset
	movq	%rbx, %r9
	movq	8(%r9), %rcx
	movl	44(%rcx), %esi
	jmp	.LBB1_119
.LBB1_102:                              # %entry.if.end.522_crit_edge.i
	movq	16(%r9), %rax
	jmp	.LBB1_188
.LBB1_134:                              # %if.end.138.i
	cmpl	$0, 48(%rcx)
	jg	.LBB1_151
	jmp	.LBB1_135
.LBB1_116:
	movq	%rbx, %r9
.LBB1_119:                              # %if.end.84.i
	movq	16(%r9), %rax
	movq	%rbp, 64(%rax)
	movl	%esi, 72(%rax)
	movl	40(%rcx), %edi
	cmpl	$2, %edi
	jl	.LBB1_120
# BB#128:
	movl	$1, %esi
	.align	16, 0x90
.LBB1_129:                              # %for.cond.97.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_131 Depth 2
	cmpl	$1, 36(%rcx)
	movl	$1, %edi
	jle	.LBB1_130
	.align	16, 0x90
.LBB1_131:                              # %for.body.102.i
                                        #   Parent Loop BB1_129 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbp, %rdx
	movl	$0, (%rdx)
	incl	%edi
	leaq	4(%rdx), %rbp
	cmpl	36(%rcx), %edi
	jl	.LBB1_131
# BB#132:                               #   in Loop: Header=BB1_129 Depth=1
	addq	$8, %rdx
	jmp	.LBB1_133
	.align	16, 0x90
.LBB1_130:                              #   in Loop: Header=BB1_129 Depth=1
	leaq	4(%rbp), %rdx
.LBB1_133:                              # %for.end.i
                                        #   in Loop: Header=BB1_129 Depth=1
	movl	$1, (%rbp)
	incl	%esi
	movl	40(%rcx), %edi
	cmpl	%edi, %esi
	movq	%rdx, %rbp
	jl	.LBB1_129
	jmp	.LBB1_121
.LBB1_120:
	movq	%rbp, %rdx
.LBB1_121:                              # %for.cond.107.preheader.i
	cmpl	$1, 36(%rcx)
	jle	.LBB1_125
# BB#122:
	movl	$1, %esi
	.align	16, 0x90
.LBB1_123:                              # %for.body.112.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, (%rdx)
	addq	$4, %rdx
	incl	%esi
	cmpl	36(%rcx), %esi
	jl	.LBB1_123
# BB#124:                               # %for.cond.107.for.end.116_crit_edge.i
	movl	40(%rcx), %edi
.LBB1_125:                              # %for.end.116.i
	movl	32(%rcx), %esi
	imull	%edi, %esi
	movl	$1, %ebp
	subl	%edi, %ebp
	addl	%esi, %ebp
	movl	%ebp, (%rdx)
	movl	$0, 48(%rcx)
	movl	4(%rcx), %edx
	testl	%edx, %edx
	jne	.LBB1_127
# BB#126:                               # %cond.false.i.72
	movl	540(%r9), %edx
.LBB1_127:                              # %if.end.138.thread.i
	movl	%edx, 52(%rcx)
.LBB1_135:                              # %if.then.143.i
	movl	104(%rax), %ebx
	testl	%ebx, %ebx
	je	.LBB1_150
# BB#136:                               # %for.body.158.lr.ph.i
	movq	%r9, %r15
	movabsq	$8589934584, %r8        # imm = 0x1FFFFFFF8
	movq	96(%rax), %rsi
	leal	-1(%rbx), %ebp
	leaq	1(%rbp), %r9
	xorl	%edx, %edx
	movq	%r9, %r10
	andq	%r8, %r10
	xorpd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	je	.LBB1_145
# BB#137:                               # %vector.body.preheader
	leaq	1(%rbp), %r11
	andq	%r8, %r11
	addq	$-8, %r11
	movl	%r11d, %edx
	shrl	$3, %edx
	incl	%edx
	xorl	%edi, %edi
	testb	$3, %dl
	je	.LBB1_138
# BB#139:                               # %vector.body.prol.preheader
	movl	%ebx, %edx
	andl	$24, %edx
	addl	$-8, %edx
	shrl	$3, %edx
	incl	%edx
	andl	$3, %edx
	negq	%rdx
	xorpd	%xmm0, %xmm0
	xorl	%edi, %edi
	xorpd	%xmm1, %xmm1
	.align	16, 0x90
.LBB1_140:                              # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rsi,%rdi,4), %xmm2
	movdqu	16(%rsi,%rdi,4), %xmm3
	paddd	%xmm2, %xmm0
	paddd	%xmm3, %xmm1
	addq	$8, %rdi
	incq	%rdx
	jne	.LBB1_140
	jmp	.LBB1_141
.LBB1_150:                              # %if.else.169.i
	movl	$0, 48(%rcx)
	jmp	.LBB1_151
.LBB1_138:
	xorpd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
.LBB1_141:                              # %vector.body.preheader.split
	cmpq	$24, %r11
	jb	.LBB1_144
# BB#142:                               # %vector.body.preheader.split.split
	incq	%rbp
	andq	%r8, %rbp
	subq	%rdi, %rbp
	leaq	112(%rsi,%rdi,4), %rdx
	.align	16, 0x90
.LBB1_143:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-112(%rdx), %xmm2
	movdqu	-96(%rdx), %xmm3
	movdqu	-80(%rdx), %xmm4
	movdqu	-64(%rdx), %xmm5
	paddd	%xmm0, %xmm2
	paddd	%xmm1, %xmm3
	paddd	%xmm4, %xmm2
	paddd	%xmm5, %xmm3
	movdqu	-48(%rdx), %xmm4
	movdqu	-32(%rdx), %xmm5
	paddd	%xmm2, %xmm4
	paddd	%xmm3, %xmm5
	movdqu	-16(%rdx), %xmm0
	movdqu	(%rdx), %xmm1
	paddd	%xmm4, %xmm0
	paddd	%xmm5, %xmm1
	subq	$-128, %rdx
	addq	$-32, %rbp
	jne	.LBB1_143
.LBB1_144:
	movq	%r10, %rdx
.LBB1_145:                              # %middle.block
	paddd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddd	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %edi
	cmpq	%rdx, %r9
	jne	.LBB1_147
# BB#146:
	movq	%r15, %r9
	movl	%edi, 48(%rcx)
	jmp	.LBB1_151
.LBB1_147:                              # %for.body.158.i.preheader
	subl	%edx, %ebx
	leaq	(%rsi,%rdx,4), %rdx
	movq	%r15, %r9
	.align	16, 0x90
.LBB1_148:                              # %for.body.158.i
                                        # =>This Inner Loop Header: Depth=1
	addl	(%rdx), %edi
	addq	$4, %rdx
	decl	%ebx
	jne	.LBB1_148
# BB#149:                               # %for.end.166.i
	movl	%edi, 48(%rcx)
.LBB1_151:                              # %if.end.173.i
	cmpl	$0, 184(%rax)
	je	.LBB1_154
# BB#152:                               # %lor.lhs.false.i
	cmpl	$0, 152(%rax)
	je	.LBB1_154
# BB#153:                               # %lor.lhs.false.if.end.197_crit_edge.i
	leaq	52(%rcx), %rdx
	movl	52(%rcx), %esi
	jmp	.LBB1_157
.LBB1_154:                              # %if.then.184.i
	movl	4(%rcx), %esi
	testl	%esi, %esi
	jne	.LBB1_156
# BB#155:                               # %cond.false.191.i
	movl	540(%r9), %esi
.LBB1_156:                              # %cond.end.193.i
	leaq	52(%rcx), %rdx
	movl	%esi, 52(%rcx)
.LBB1_157:                              # %if.end.197.i
	testl	%esi, %esi
	jg	.LBB1_161
# BB#158:                               # %if.then.202.i
	movl	4(%rcx), %ecx
	testl	%ecx, %ecx
	jne	.LBB1_160
# BB#159:                               # %cond.false.209.i
	movl	540(%r9), %ecx
.LBB1_160:                              # %cond.end.211.i
	movl	%ecx, (%rdx)
.LBB1_161:                              # %if.end.215.i
	cmpl	$0, 88(%rax)
	jne	.LBB1_170
# BB#162:                               # %if.end.248.i
	movq	%r9, %rbx
	movl	72(%rax), %esi
	testl	%esi, %esi
	je	.LBB1_163
# BB#164:                               # %if.then.254.i
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$4, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbp
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB1_660
# BB#165:                               # %if.end.280.i
	movq	%rbx, %r15
	movq	16(%r15), %rax
	movl	72(%rax), %edx
	shlq	$2, %rdx
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	memset
	movq	%r15, %r9
	movq	16(%r9), %rax
	movl	72(%rax), %ecx
	movq	%rbp, 80(%rax)
	movl	%ecx, 88(%rax)
	testl	%ecx, %ecx
	je	.LBB1_170
# BB#166:                               # %for.body.296.lr.ph.i
	movq	8(%r9), %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB1_167:                              # %for.body.296.i.78
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, (%rbp,%rdx,4)
	incl	%ebx
	xorl	%esi, %esi
	cmpl	36(%rcx), %ebx
	je	.LBB1_169
# BB#168:                               # %select.mid
                                        #   in Loop: Header=BB1_167 Depth=1
	movl	%ebx, %esi
.LBB1_169:                              # %select.end
                                        #   in Loop: Header=BB1_167 Depth=1
	incq	%rdx
	cmpl	88(%rax), %edx
	movl	%esi, %ebx
	jb	.LBB1_167
	jmp	.LBB1_170
.LBB1_163:                              # %if.end.280.thread.i
	movq	$0, 80(%rax)
	movl	$0, 88(%rax)
	movq	%rbx, %r9
.LBB1_170:                              # %if.end.313.i
	movq	%r9, %rbx
	cmpl	$0, 120(%rax)
	jne	.LBB1_179
# BB#171:                               # %land.lhs.true.319.i
	movl	104(%rax), %esi
	testl	%esi, %esi
	je	.LBB1_179
# BB#172:                               # %if.then.358.i
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$4, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbp
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB1_660
# BB#173:                               # %if.end.384.i
	movq	%rbx, %r15
	movq	16(%r15), %rax
	movl	104(%rax), %edx
	shlq	$2, %rdx
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	memset
	movq	%r15, %rdi
	movq	16(%rdi), %rax
	movl	104(%rax), %ecx
	movq	%rbp, 112(%rax)
	movl	%ecx, 120(%rax)
	testl	%ecx, %ecx
	je	.LBB1_178
# BB#174:                               # %for.body.400.lr.ph.i
	movq	8(%rdi), %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB1_175:                              # %for.body.400.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, (%rbp,%rdx,4)
	incl	%ebx
	xorl	%esi, %esi
	cmpl	36(%rcx), %ebx
	je	.LBB1_177
# BB#176:                               # %select.mid802
                                        #   in Loop: Header=BB1_175 Depth=1
	movl	%ebx, %esi
.LBB1_177:                              # %select.end801
                                        #   in Loop: Header=BB1_175 Depth=1
	incq	%rdx
	cmpl	120(%rax), %edx
	movl	%esi, %ebx
	jb	.LBB1_175
.LBB1_178:
	movq	%rdi, %rbx
.LBB1_179:                              # %if.end.417.i
	cmpl	$0, 168(%rax)
	je	.LBB1_181
# BB#180:
	movq	%rbx, %r9
	jmp	.LBB1_188
.LBB1_181:                              # %land.lhs.true.423.i
	movl	152(%rax), %esi
	testl	%esi, %esi
	movq	%rbx, %r9
	je	.LBB1_188
# BB#182:                               # %if.then.462.i
	movq	%r9, %rbx
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$4, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbp
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB1_660
# BB#183:                               # %if.end.488.i
	movq	%rbx, %r15
	movq	16(%r15), %rax
	movl	152(%rax), %edx
	shlq	$2, %rdx
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	memset
	movq	%r15, %r9
	movq	16(%r9), %rax
	movl	152(%rax), %ecx
	movq	%rbp, 160(%rax)
	movl	%ecx, 168(%rax)
	testl	%ecx, %ecx
	je	.LBB1_188
# BB#184:                               # %for.body.504.lr.ph.i
	movq	8(%r9), %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB1_185:                              # %for.body.504.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, (%rbp,%rdx,4)
	incl	%ebx
	xorl	%esi, %esi
	cmpl	36(%rcx), %ebx
	je	.LBB1_187
# BB#186:                               # %select.mid813
                                        #   in Loop: Header=BB1_185 Depth=1
	movl	%ebx, %esi
.LBB1_187:                              # %select.end812
                                        #   in Loop: Header=BB1_185 Depth=1
	incq	%rdx
	cmpl	168(%rax), %edx
	movl	%esi, %ebx
	jb	.LBB1_185
.LBB1_188:                              # %if.end.522.i
	movq	8(%r9), %r10
	movl	72(%rax), %edi
	xorl	%edx, %edx
	cmpl	%edi, 44(%r10)
	movl	$0, %esi
	ja	.LBB1_191
# BB#189:                               # %if.else.531.i
	xorl	%esi, %esi
	cmpl	%edi, 88(%rax)
	jb	.LBB1_191
# BB#190:                               # %select.mid818
	movzbl	%r14b, %esi
.LBB1_191:                              # %if.end.542.i
	movl	104(%rax), %edi
	cmpl	%edi, 136(%rax)
	jb	.LBB1_198
# BB#192:                               # %for.cond.565.preheader.i
	movq	%r9, %r11
	movl	120(%rax), %r9d
	xorl	%r8d, %r8d
	testl	%edi, %edi
	movl	$0, %ebx
	je	.LBB1_197
# BB#193:                               # %for.body.571.lr.ph.i
	movl	32(%r10), %edx
	movq	128(%rax), %rbp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB1_194:                              # %for.body.571.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbp,%rbx,4), %ecx
	testl	%ecx, %ecx
	js	.LBB1_197
# BB#195:                               # %for.body.571.i
                                        #   in Loop: Header=BB1_194 Depth=1
	cmpl	%edx, %ecx
	jg	.LBB1_197
# BB#196:                               # %for.inc.591.i
                                        #   in Loop: Header=BB1_194 Depth=1
	incq	%rbx
	cmpl	%edi, %ebx
	jb	.LBB1_194
.LBB1_197:                              # %for.end.593.i
	cmpl	%edi, %ebx
	cmovbl	%r8d, %esi
	cmpl	%edi, %r9d
	cmovbl	%r8d, %esi
	movl	%esi, %edx
	movq	%r11, %r9
.LBB1_198:                              # %if.end.601.i
	movl	152(%rax), %esi
	xorl	%r8d, %r8d
	cmpl	%esi, 184(%rax)
	jb	.LBB1_205
# BB#199:                               # %for.cond.624.preheader.i
	movl	168(%rax), %ebp
	xorl	%r8d, %r8d
	testl	%esi, %esi
	movl	$0, %ebx
	je	.LBB1_204
# BB#200:                               # %for.body.630.lr.ph.i
	movl	32(%r10), %edi
	movq	176(%rax), %rax
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB1_201:                              # %for.body.630.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rax,%rbx,4), %ecx
	testl	%ecx, %ecx
	js	.LBB1_204
# BB#202:                               # %for.body.630.i
                                        #   in Loop: Header=BB1_201 Depth=1
	cmpl	%edi, %ecx
	jg	.LBB1_204
# BB#203:                               # %for.inc.650.i
                                        #   in Loop: Header=BB1_201 Depth=1
	incq	%rbx
	cmpl	%esi, %ebx
	jb	.LBB1_201
.LBB1_204:                              # %for.end.652.i
	cmpl	%esi, %ebx
	cmovbl	%r8d, %edx
	cmpl	%esi, %ebp
	cmovbl	%r8d, %edx
	movl	%edx, %r8d
.LBB1_205:                              # %if.end.660.i
	movl	%r8d, 72(%rsp)          # 4-byte Spill
	movq	32(%r9), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.LBB1_209
# BB#206:                               # %land.lhs.true.665.i
	testl	%r8d, %r8d
	je	.LBB1_208
# BB#207:                               # %land.lhs.true.665.i
	cmpl	%eax, 572(%r9)
	jbe	.LBB1_210
	jmp	.LBB1_208
.LBB1_209:                              # %if.end.673.i
	testl	%r8d, %r8d
	je	.LBB1_208
.LBB1_210:                              # %if.then.675.i
	movl	12(%r10), %eax
	movl	32(%r10), %edx
	imull	40(%r10), %edx
	cmpl	%edx, %eax
	cmovgel	%eax, %edx
	testl	%edx, %edx
	movl	$1, %esi
	cmovlel	%esi, %edx
	.align	16, 0x90
.LBB1_211:                              # %for.cond.695.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %eax
	testl	%eax, %eax
	jle	.LBB1_213
# BB#212:                               # %for.cond.695.i
                                        #   in Loop: Header=BB1_211 Depth=1
	leal	(%rax,%rax), %esi
	cmpl	%edx, %eax
	jle	.LBB1_211
.LBB1_213:                              # %if.end.713.i
	movl	%eax, 12(%r10)
	movl	%eax, 568(%r9)
	testl	%r8d, %r8d
	je	.LBB1_208
# BB#214:                               # %if.then.715.i
	movl	(%r10), %edx
	testl	%edx, %edx
	jg	.LBB1_216
# BB#215:                               # %if.else.723.i
	movl	536(%r9), %edx
.LBB1_216:                              # %if.end.725.i
	movl	%edx, 548(%r9)
	movslq	%edx, %rcx
	addq	$7, %rcx
	shrq	$3, %rcx
	movl	%ecx, 576(%r9)
	decl	%eax
	movl	%eax, 584(%r9)
	movl	4(%r10), %eax
	testl	%eax, %eax
	jg	.LBB1_218
# BB#217:                               # %if.else.741.i
	movl	540(%r9), %eax
.LBB1_218:                              # %if.then.747.i
	movl	%eax, 552(%r9)
	movq	(%r9), %rax
	movl	8(%rax), %eax
	decl	%eax
	cmpl	$6, %eax
	ja	.LBB1_208
# BB#219:                               # %if.then.747.i
	jmpq	*.LJTI1_2(,%rax,8)
.LBB1_284:                              # %sw.bb.760.i
	movq	18488(%r12), %r13
	movq	24(%r13), %rdi
	cmpl	$0, 56(%rdi)
	je	.LBB1_321
# BB#285:                               # %for.body.lr.ph.i.342.i
	movq	48(%rdi), %rax
	xorl	%ecx, %ecx
	movss	.LCPI1_8(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI1_10(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movsd	.LCPI1_6(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI1_9(%rip), %xmm3   # xmm3 = mem[0],zero
	xorl	%esi, %esi
	xorl	%edx, %edx
	.align	16, 0x90
.LBB1_286:                              # %for.body.i.343.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %edi
	cmpl	$15, %esi
	ja	.LBB1_320
# BB#287:                               # %for.body.i.343.i
                                        #   in Loop: Header=BB1_286 Depth=1
	jmpq	*.LJTI1_4(,%rdi,8)
.LBB1_288:                              # %sw.bb.i.347.i
                                        #   in Loop: Header=BB1_286 Depth=1
	movzbl	(%rax,%rcx), %esi
	cmpl	$27, %esi
	sete	%bl
	movzbl	%bl, %esi
	jmp	.LBB1_320
.LBB1_289:                              # %sw.bb.12.i.351.i
                                        #   in Loop: Header=BB1_286 Depth=1
	movzbl	(%rax,%rcx), %edi
	movl	$2, %esi
	cmpl	$40, %edi
	je	.LBB1_320
# BB#290:                               # %select.mid874
                                        #   in Loop: Header=BB1_286 Depth=1
	xorl	%esi, %esi
	jmp	.LBB1_320
.LBB1_291:                              # %sw.bb.20.i.353.i
                                        #   in Loop: Header=BB1_286 Depth=1
	movzbl	(%rax,%rcx), %edi
	cmpl	$99, %edi
	je	.LBB1_295
# BB#292:                               # %sw.bb.20.i.353.i
                                        #   in Loop: Header=BB1_286 Depth=1
	movl	$3, %esi
	cmpl	$85, %edi
	je	.LBB1_320
# BB#293:                               # %sw.bb.20.i.353.i
                                        #   in Loop: Header=BB1_286 Depth=1
	cmpl	$67, %edi
	jne	.LBB1_296
# BB#294:                               # %sw.bb.25.i.i
                                        #   in Loop: Header=BB1_286 Depth=1
	movl	$6, %esi
	jmp	.LBB1_320
.LBB1_297:                              # %sw.bb.27.i.i
                                        #   in Loop: Header=BB1_286 Depth=1
	movzbl	(%rax,%rcx), %edi
	movl	$4, %esi
	cmpl	$1, %edi
	je	.LBB1_320
# BB#298:                               # %select.mid876
                                        #   in Loop: Header=BB1_286 Depth=1
	xorl	%esi, %esi
	jmp	.LBB1_320
.LBB1_299:                              # %sw.bb.36.i.i
                                        #   in Loop: Header=BB1_286 Depth=1
	movl	$5, %esi
	cmpb	$0, (%rax,%rcx)
	je	.LBB1_320
# BB#300:                               # %select.mid878
                                        #   in Loop: Header=BB1_286 Depth=1
	xorl	%esi, %esi
	jmp	.LBB1_320
.LBB1_301:                              # %sw.bb.45.i.i
                                        #   in Loop: Header=BB1_286 Depth=1
	movzbl	(%rax,%rcx), %esi
	cvtsi2ssl	%esi, %xmm4
	movaps	%xmm0, %xmm2
	divss	%xmm4, %xmm2
	xorl	%esi, %esi
	jmp	.LBB1_320
.LBB1_302:                              # %sw.bb.51.i.355.i
                                        #   in Loop: Header=BB1_286 Depth=1
	movzbl	(%rax,%rcx), %edi
	movl	$7, %esi
	cmpl	$2, %edi
	je	.LBB1_320
# BB#303:                               # %select.mid880
                                        #   in Loop: Header=BB1_286 Depth=1
	xorl	%esi, %esi
	jmp	.LBB1_320
.LBB1_304:                              # %sw.bb.60.i.i
                                        #   in Loop: Header=BB1_286 Depth=1
	movl	$8, %esi
	cmpb	$0, (%rax,%rcx)
	je	.LBB1_320
# BB#305:                               # %select.mid882
                                        #   in Loop: Header=BB1_286 Depth=1
	xorl	%esi, %esi
	jmp	.LBB1_320
.LBB1_306:                              # %sw.bb.69.i.i
                                        #   in Loop: Header=BB1_286 Depth=1
	movl	$9, %esi
	testb	$32, 520(%r13)
	je	.LBB1_320
# BB#307:                               # %if.then.70.i.i
                                        #   in Loop: Header=BB1_286 Depth=1
	cvtsi2ssl	836(%r12), %xmm4
	mulss	%xmm2, %xmm4
	divss	888(%r12), %xmm4
	cvtss2sd	%xmm4, %xmm4
	addsd	%xmm1, %xmm4
	cvttsd2si	%xmm4, %edx
	movb	%dl, (%rax,%rcx)
	jmp	.LBB1_320
.LBB1_308:                              # %sw.bb.81.i.i
                                        #   in Loop: Header=BB1_286 Depth=1
	xorl	%esi, %esi
	testb	$32, 520(%r13)
	jne	.LBB1_319
	jmp	.LBB1_320
.LBB1_309:                              # %sw.bb.91.i.i
                                        #   in Loop: Header=BB1_286 Depth=1
	movzbl	(%rax,%rcx), %edi
	movl	$11, %esi
	cmpl	$4, %edi
	je	.LBB1_320
# BB#310:                               # %select.mid896
                                        #   in Loop: Header=BB1_286 Depth=1
	xorl	%esi, %esi
	jmp	.LBB1_320
.LBB1_311:                              # %sw.bb.100.i.i
                                        #   in Loop: Header=BB1_286 Depth=1
	movl	$12, %esi
	cmpb	$0, (%rax,%rcx)
	je	.LBB1_320
# BB#312:                               # %select.mid898
                                        #   in Loop: Header=BB1_286 Depth=1
	xorl	%esi, %esi
	jmp	.LBB1_320
.LBB1_313:                              # %sw.bb.109.i.i
                                        #   in Loop: Header=BB1_286 Depth=1
	movl	$13, %esi
	testb	$64, 520(%r13)
	je	.LBB1_320
# BB#314:                               # %if.then.113.i.i
                                        #   in Loop: Header=BB1_286 Depth=1
	movss	920(%r12), %xmm4        # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm4, %xmm4
	divsd	.LCPI1_5(%rip), %xmm4
	cvtss2sd	%xmm2, %xmm5
	mulsd	%xmm4, %xmm5
	cvttsd2si	%xmm5, %edx
	movb	%dl, (%rax,%rcx)
	jmp	.LBB1_320
.LBB1_315:                              # %sw.bb.125.i.i
                                        #   in Loop: Header=BB1_286 Depth=1
	movl	$14, %esi
	testb	$64, 520(%r13)
	jne	.LBB1_319
	jmp	.LBB1_320
.LBB1_316:                              # %sw.bb.136.i.i
                                        #   in Loop: Header=BB1_286 Depth=1
	movl	$15, %esi
	testb	$-128, 520(%r13)
	je	.LBB1_320
# BB#317:                               # %if.then.140.i.i
                                        #   in Loop: Header=BB1_286 Depth=1
	cvtsi2ssl	836(%r12), %xmm4
	mulss	%xmm2, %xmm4
	divss	888(%r12), %xmm4
	cvtss2sd	%xmm4, %xmm4
	addsd	%xmm1, %xmm4
	movss	912(%r12), %xmm5        # xmm5 = mem[0],zero,zero,zero
	cvtss2sd	%xmm5, %xmm5
	divsd	%xmm3, %xmm5
	cvtss2sd	%xmm2, %xmm6
	mulsd	%xmm5, %xmm6
	addsd	%xmm4, %xmm6
	cvttsd2si	%xmm6, %edx
	movb	%dl, (%rax,%rcx)
	jmp	.LBB1_320
.LBB1_318:                              # %sw.bb.161.i.i
                                        #   in Loop: Header=BB1_286 Depth=1
	xorl	%esi, %esi
	testb	$-128, 520(%r13)
	je	.LBB1_320
.LBB1_319:                              # %if.then.165.i.i
                                        #   in Loop: Header=BB1_286 Depth=1
	movb	%dh, (%rax,%rcx)  # NOREX
	jmp	.LBB1_320
.LBB1_295:                              # %sw.bb.26.i.i
                                        #   in Loop: Header=BB1_286 Depth=1
	movl	$10, %esi
	jmp	.LBB1_320
.LBB1_296:                              # %sw.default.i.i
                                        #   in Loop: Header=BB1_286 Depth=1
	xorl	%esi, %esi
	.align	16, 0x90
.LBB1_320:                              # %for.inc.i.365.i
                                        #   in Loop: Header=BB1_286 Depth=1
	incq	%rcx
	movq	24(%r13), %rdi
	cmpl	56(%rdi), %ecx
	jb	.LBB1_286
.LBB1_321:                              # %if.end.173.i.i
	movl	%r8d, %r14d
	movq	%r9, %rbx
	cmpl	$0, 152(%rdi)
	jne	.LBB1_324
# BB#322:                               # %if.end.196.i.i
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$5, %esi
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB1_208
# BB#323:                               # %cleanup.222.thread.i.i
	xorl	%esi, %esi
	movl	$5, %edx
	movq	%rbp, %rdi
	callq	memset
	movq	24(%r13), %rax
	movq	%rbp, 144(%rax)
	movl	$5, 152(%rax)
	movw	$10267, (%rbp)          # imm = 0x281B
	movl	520(%r13), %eax
	shrl	$6, %eax
	andl	$32, %eax
	xorl	$118, %eax
	movb	%al, 2(%rbp)
	movb	$2, 3(%rbp)
	movb	$0, 4(%rbp)
.LBB1_324:                              # %if.end.225.i.i
	movq	8(%r13), %rcx
	movl	16(%rcx), %edi
	cmpl	$2, %edi
	jl	.LBB1_326
# BB#325:                               # %land.lhs.true.229.i.i
	movq	24(%r13), %rax
	movl	$-1, %esi
	cmpl	$0, 120(%rax)
	je	.LBB1_346
.LBB1_326:                              # %if.else.236.i.i
	movl	36(%rcx), %edx
	xorl	%esi, %esi
	cmpl	$2, %edx
	jl	.LBB1_346
# BB#327:                               # %land.lhs.true.241.i.i
	movq	24(%r13), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB1_346
# BB#328:                               # %land.lhs.true.247.i.i
	cmpl	$0, 120(%rax)
	jne	.LBB1_346
# BB#329:                               # %if.then.253.i.i
	testl	%edi, %edi
	je	.LBB1_330
# BB#332:                               # %if.else.278.i.i
	negl	%edi
	jmp	.LBB1_333
.LBB1_220:                              # %sw.bb.i.88
	movq	18488(%r12), %rax
	movl	548(%rax), %ecx
	cmpl	$1, 556(%rax)
	jle	.LBB1_222
# BB#221:
	shll	$3, %ecx
.LBB1_222:                              # %select.end835
	addl	$15, %ecx
	sarl	$4, %ecx
	addl	%ecx, %ecx
	movl	%ecx, 588(%rax)
	movq	$upd_start_rascomp, 512(%rax)
	movq	$upd_rascomp, 216(%rax)
	jmp	.LBB1_636
.LBB1_223:                              # %sw.bb.754.i
	movq	18488(%r12), %r14
	testb	$32, 520(%r14)
	movq	24(%r14), %rbx
	je	.LBB1_241
# BB#224:                               # %land.lhs.true.i.i.92
	cmpl	$0, 56(%rbx)
	je	.LBB1_241
# BB#225:                               # %for.body.lr.ph.i.i
	movq	48(%rbx), %rax
	xorl	%edx, %edx
	movsd	.LCPI1_6(%rip), %xmm0   # xmm0 = mem[0],zero
	xorl	%esi, %esi
.LBB1_226:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %ecx
	cmpl	$3, %esi
	ja	.LBB1_240
# BB#227:                               # %for.body.i.i
                                        #   in Loop: Header=BB1_226 Depth=1
	jmpq	*.LJTI1_9(,%rcx,8)
.LBB1_228:                              # %sw.bb.i.i
                                        #   in Loop: Header=BB1_226 Depth=1
	movzbl	(%rax,%rdx), %ecx
	cmpl	$27, %ecx
	sete	%cl
	movzbl	%cl, %esi
	jmp	.LBB1_240
.LBB1_229:                              # %sw.bb.12.i.i
                                        #   in Loop: Header=BB1_226 Depth=1
	movzbl	(%rax,%rdx), %ecx
	movl	$2, %esi
	cmpl	$67, %ecx
	jne	.LBB1_239
	jmp	.LBB1_240
.LBB1_230:                              # %sw.bb.20.i.i
                                        #   in Loop: Header=BB1_226 Depth=1
	movb	(%rax,%rdx), %cl
	movl	$3, %esi
	testb	%cl, %cl
	je	.LBB1_240
# BB#231:                               # %if.then.24.i.i
                                        #   in Loop: Header=BB1_226 Depth=1
	cvtsi2ssl	836(%r12), %xmm1
	movzbl	%cl, %ecx
	cvtsi2ssl	%ecx, %xmm2
	mulss	%xmm1, %xmm2
	divss	888(%r12), %xmm2
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	testl	%ecx, %ecx
	jle	.LBB1_232
# BB#233:                               # %if.else.37.i.i
                                        #   in Loop: Header=BB1_226 Depth=1
	cmpl	$127, %ecx
	jle	.LBB1_234
# BB#235:                               # %if.else.44.i.i
                                        #   in Loop: Header=BB1_226 Depth=1
	movb	$127, (%rax,%rdx)
	jmp	.LBB1_239
.LBB1_236:                              # %sw.bb.51.i.i
                                        #   in Loop: Header=BB1_226 Depth=1
	cvtsi2ssl	836(%r12), %xmm1
	divss	888(%r12), %xmm1
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	testl	%ecx, %ecx
	jle	.LBB1_232
# BB#237:                               # %if.else.65.i.i
                                        #   in Loop: Header=BB1_226 Depth=1
	cmpl	$21, %ecx
	jg	.LBB1_238
.LBB1_234:                              # %if.then.40.i.i
                                        #   in Loop: Header=BB1_226 Depth=1
	movb	%cl, (%rax,%rdx)
	jmp	.LBB1_239
.LBB1_232:                              # %if.then.34.i.i
                                        #   in Loop: Header=BB1_226 Depth=1
	movb	$1, (%rax,%rdx)
	jmp	.LBB1_239
.LBB1_238:                              # %if.else.72.i.i
                                        #   in Loop: Header=BB1_226 Depth=1
	movb	$22, (%rax,%rdx)
.LBB1_239:                              # %for.inc.i.i
                                        #   in Loop: Header=BB1_226 Depth=1
	xorl	%esi, %esi
.LBB1_240:                              # %for.inc.i.i
                                        #   in Loop: Header=BB1_226 Depth=1
	incq	%rdx
	movq	24(%r14), %rbx
	cmpl	56(%rbx), %edx
	jb	.LBB1_226
.LBB1_241:                              # %if.end.77.i.i
	movl	136(%rbx), %ebp
	xorl	%eax, %eax
	testl	%ebp, %ebp
	jne	.LBB1_243
# BB#242:                               # %land.lhs.true.83.i.i
	cmpl	$1, 152(%rbx)
	sbbl	%eax, %eax
.LBB1_243:                              # %if.end.90.i.i
	movq	8(%r14), %r15
	movl	16(%r15), %edi
	cmpl	$2, %edi
	jl	.LBB1_245
# BB#244:                               # %land.lhs.true.94.i.i
	cmpl	$0, 120(%rbx)
	je	.LBB1_248
.LBB1_245:                              # %lor.lhs.false.i.i
	cmpl	$2, 36(%r15)
	jl	.LBB1_249
# BB#246:                               # %land.lhs.true.104.i.i
	cmpl	$0, 104(%rbx)
	jne	.LBB1_249
# BB#247:                               # %land.lhs.true.110.i.i
	cmpl	$0, 120(%rbx)
	jne	.LBB1_249
.LBB1_248:                              # %if.then.116.i.i
	movl	$-1, %eax
.LBB1_249:                              # %if.end.117.i.i
	testl	%eax, %eax
	js	.LBB1_208
# BB#250:                               # %if.end.117.i.i
	movq	32(%r14), %r10
	movl	24(%r10), %eax
	cmpl	%eax, 556(%r14)
	ja	.LBB1_208
# BB#251:                               # %if.then.126.i.i
	movl	152(%rbx), %eax
	testl	%eax, %eax
	je	.LBB1_253
# BB#252:                               # %if.then.133.i.i
	addl	$2, %eax
	movl	24(%r15), %esi
	jmp	.LBB1_258
.LBB1_467:                              # %sw.bb.766.i
	movq	18488(%r12), %r13
	movq	24(%r13), %rax
	cmpl	$0, 56(%rax)
	je	.LBB1_629
# BB#468:                               # %for.body.lr.ph.i.396.i
	movl	$-1, %ecx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	jmp	.LBB1_469
.LBB1_635:                              # %sw.bb.772.i
	movq	18488(%r12), %rax
	movl	576(%rax), %ecx
	leal	127(%rcx), %edx
	sarl	$31, %edx
	shrl	$25, %edx
	leal	127(%rcx,%rdx), %edx
	sarl	$7, %edx
	addl	%ecx, %edx
	movl	%edx, 588(%rax)
	movq	$upd_wrtcanon, 216(%rax)
	jmp	.LBB1_636
.LBB1_71:                               # %sw.bb.616.i
	movl	$1, 556(%r13)
	jmp	.LBB1_72
.LBB1_66:                               # %sw.bb.622.i
	movl	$4, 556(%r13)
	jmp	.LBB1_72
.LBB1_67:                               # %sw.bb.628.i
	movl	$3, 556(%r13)
.LBB1_72:                               # %if.else.664.i
	orb	$16, 521(%r13)
	movq	%r12, %rdi
	callq	upd_procs_map
	jmp	.LBB1_73
.LBB1_253:                              # %if.else.138.i.i
	movl	552(%r14), %eax
	movl	24(%r15), %esi
	cmpl	$2, %esi
	jl	.LBB1_255
# BB#254:                               # %if.then.143.i.i
	cltd
	idivl	%esi
	jmp	.LBB1_257
.LBB1_255:                              # %if.else.147.i.i
	cmpl	$-2, %esi
	jg	.LBB1_257
# BB#256:                               # %if.then.152.i.i
	negl	%eax
	imull	%esi, %eax
.LBB1_257:                              # %if.end.157.i.i
	cltq
	imulq	$-2139062143, %rax, %rcx # imm = 0xFFFFFFFF80808081
	shrq	$32, %rcx
	addl	%ecx, %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	sarl	$7, %eax
	addl	%ecx, %eax
	leal	3(%rax,%rbp,2), %eax
.LBB1_258:                              # %if.end.166.i.i
	cmpl	$2, %esi
	jl	.LBB1_260
# BB#259:                               # %if.then.171.i.i
	decl	%esi
	imull	168(%rbx), %esi
	addl	%eax, %esi
	movl	%esi, %eax
.LBB1_260:                              # %if.end.180.i.i
	movl	104(%rbx), %ecx
	leal	2(%rax,%rcx), %r13d
	cmpl	$2, %edi
	jl	.LBB1_262
# BB#261:                               # %if.then.190.i.i
	decl	%edi
	imull	120(%rbx), %edi
	addl	%r13d, %edi
	movl	%edi, %r13d
.LBB1_262:                              # %if.end.199.i.i
	cmpl	$0, 8(%r10)
	movslq	572(%r14), %r11
	je	.LBB1_273
# BB#263:                               # %for.cond.206.preheader.i.i
	movq	%r13, %rcx
	xorl	%esi, %esi
	testl	%r11d, %r11d
	jle	.LBB1_272
# BB#264:                               # %for.body.209.lr.ph.i.i
	movq	(%r10), %r13
	xorl	%edi, %edi
	testl	%r11d, %r11d
	movl	$0, %esi
	je	.LBB1_270
# BB#265:                               # %overflow.checked239
	xorl	%edi, %edi
	movq	%r11, %rax
	andq	$-8, %rax
	xorpd	%xmm0, %xmm0
	xorpd	%xmm2, %xmm2
	je	.LBB1_269
# BB#266:                               # %vector.body235.preheader
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	%r10, 32(%rsp)          # 8-byte Spill
	movq	%r15, 40(%rsp)          # 8-byte Spill
	movq	%r9, 48(%rsp)           # 8-byte Spill
	movq	%r12, %r15
	leaq	8(%r13), %rbx
	movq	%r11, %r12
	andq	$-8, %r12
	xorpd	%xmm0, %xmm0
	xorl	%ebp, %ebp
	movl	$1, %eax
	movd	%rax, %xmm11
	pslldq	$8, %xmm11              # xmm11 = zero,zero,zero,zero,zero,zero,zero,zero,xmm11[0,1,2,3,4,5,6,7]
	movdqa	.LCPI1_12(%rip), %xmm8  # xmm8 = [2,3]
	movdqa	.LCPI1_13(%rip), %xmm9  # xmm9 = [6,7]
	movdqa	.LCPI1_14(%rip), %xmm10 # xmm10 = [4,5]
	movdqa	.LCPI1_15(%rip), %xmm6  # xmm6 = [2147483648,2147483648,2147483648,2147483648]
	xorpd	%xmm2, %xmm2
.LBB1_267:                              # %vector.body235
                                        # =>This Inner Loop Header: Depth=1
	movd	%rbp, %xmm7
	pshufd	$68, %xmm7, %xmm7       # xmm7 = xmm7[0,1,0,1]
	movdqa	%xmm7, %xmm3
	paddq	%xmm11, %xmm3
	movdqa	%xmm7, %xmm4
	paddq	%xmm8, %xmm4
	movdqa	%xmm7, %xmm5
	paddq	%xmm9, %xmm5
	paddq	%xmm10, %xmm7
	pshufd	$78, %xmm3, %xmm3       # xmm3 = xmm3[2,3,0,1]
	movd	%xmm3, %rax
	shlq	$4, %rax
	movd	%xmm4, %rsi
	shlq	$4, %rsi
	pshufd	$78, %xmm4, %xmm3       # xmm3 = xmm4[2,3,0,1]
	movd	%xmm3, %rdi
	shlq	$4, %rdi
	movd	%xmm7, %rdx
	shlq	$4, %rdx
	pshufd	$78, %xmm7, %xmm3       # xmm3 = xmm7[2,3,0,1]
	movd	%xmm3, %r9
	shlq	$4, %r9
	movd	%xmm5, %r8
	shlq	$4, %r8
	pshufd	$78, %xmm5, %xmm3       # xmm3 = xmm5[2,3,0,1]
	movd	%xmm3, %r10
	shlq	$4, %r10
	movd	8(%r13,%rdi), %xmm3     # xmm3 = mem[0],zero,zero,zero
	movd	8(%r13,%rax), %xmm4     # xmm4 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	movd	8(%r13,%rsi), %xmm3     # xmm3 = mem[0],zero,zero,zero
	movd	(%rbx), %xmm5           # xmm5 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm5    # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1]
	punpckldq	%xmm4, %xmm5    # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1]
	movd	8(%r13,%r8), %xmm3      # xmm3 = mem[0],zero,zero,zero
	movd	8(%r13,%rdx), %xmm4     # xmm4 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	movd	8(%r13,%r10), %xmm3     # xmm3 = mem[0],zero,zero,zero
	movd	8(%r13,%r9), %xmm7      # xmm7 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm7    # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	punpckldq	%xmm7, %xmm4    # xmm4 = xmm4[0],xmm7[0],xmm4[1],xmm7[1]
	movdqa	%xmm5, %xmm3
	pxor	%xmm6, %xmm3
	movapd	%xmm0, %xmm7
	xorpd	%xmm6, %xmm7
	pcmpgtd	%xmm7, %xmm3
	movdqa	%xmm4, %xmm7
	pxor	%xmm6, %xmm7
	movapd	%xmm2, %xmm1
	xorpd	%xmm6, %xmm1
	pcmpgtd	%xmm1, %xmm7
	pand	%xmm3, %xmm5
	pandn	%xmm0, %xmm3
	movdqa	%xmm3, %xmm0
	por	%xmm5, %xmm0
	pand	%xmm7, %xmm4
	pandn	%xmm2, %xmm7
	movdqa	%xmm7, %xmm2
	por	%xmm4, %xmm2
	addq	$8, %rbp
	subq	$-128, %rbx
	cmpq	%rbp, %r12
	jne	.LBB1_267
# BB#268:
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%r15, %r12
	movq	48(%rsp), %r9           # 8-byte Reload
	movl	72(%rsp), %r8d          # 4-byte Reload
	movq	40(%rsp), %r15          # 8-byte Reload
	movq	32(%rsp), %r10          # 8-byte Reload
.LBB1_269:                              # %middle.block236
	movapd	.LCPI1_15(%rip), %xmm1  # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	movapd	%xmm2, %xmm3
	xorpd	%xmm1, %xmm3
	movapd	%xmm0, %xmm4
	xorpd	%xmm1, %xmm4
	pcmpgtd	%xmm3, %xmm4
	andpd	%xmm4, %xmm0
	andnpd	%xmm2, %xmm4
	orpd	%xmm0, %xmm4
	pshufd	$78, %xmm4, %xmm0       # xmm0 = xmm4[2,3,0,1]
	movapd	%xmm4, %xmm2
	xorpd	%xmm1, %xmm2
	movdqa	%xmm0, %xmm3
	pxor	%xmm1, %xmm3
	pcmpgtd	%xmm3, %xmm2
	pand	%xmm2, %xmm4
	pandn	%xmm0, %xmm2
	por	%xmm4, %xmm2
	pshufd	$229, %xmm2, %xmm0      # xmm0 = xmm2[1,1,2,3]
	movd	%xmm2, %eax
	pxor	%xmm1, %xmm2
	pxor	%xmm0, %xmm1
	pcmpgtd	%xmm1, %xmm2
	movdqa	%xmm2, 96(%rsp)
	movd	%xmm0, %esi
	testb	$1, 96(%rsp)
	cmovnel	%eax, %esi
	cmpq	%rdi, %r11
	je	.LBB1_272
.LBB1_270:                              # %for.body.209.i.i.preheader
	movq	%r11, %rax
	subq	%rdi, %rax
	shlq	$4, %rdi
	leaq	8(%r13,%rdi), %rdx
.LBB1_271:                              # %for.body.209.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rdx), %edi
	cmpl	%edi, %esi
	cmovbl	%edi, %esi
	addq	$16, %rdx
	decq	%rax
	jne	.LBB1_271
.LBB1_272:                              # %for.end.228.i.i
	addl	%ecx, %esi
	movl	%esi, %r13d
.LBB1_273:                              # %if.end.230.i.i
	xorl	%ebp, %ebp
	testl	%r11d, %r11d
	jle	.LBB1_282
# BB#274:                               # %for.body.235.lr.ph.i.i
	movq	16(%r10), %r10
	xorl	%edi, %edi
	testl	%r11d, %r11d
	movl	$0, %ebp
	je	.LBB1_280
# BB#275:                               # %overflow.checked276
	movq	%r15, 40(%rsp)          # 8-byte Spill
	movq	%r9, %r15
	xorl	%edi, %edi
	movq	%r11, %r9
	andq	$-8, %r9
	xorpd	%xmm0, %xmm0
	xorpd	%xmm2, %xmm2
	je	.LBB1_279
# BB#276:                               # %vector.body272.preheader
	movq	%r13, 32(%rsp)          # 8-byte Spill
	movl	%r8d, 72(%rsp)          # 4-byte Spill
	movq	%r12, 64(%rsp)          # 8-byte Spill
	leaq	8(%r10), %r12
	movq	%r11, %r8
	andq	$-8, %r8
	xorpd	%xmm0, %xmm0
	xorl	%r13d, %r13d
	movl	$1, %eax
	movd	%rax, %xmm11
	pslldq	$8, %xmm11              # xmm11 = zero,zero,zero,zero,zero,zero,zero,zero,xmm11[0,1,2,3,4,5,6,7]
	movdqa	.LCPI1_12(%rip), %xmm8  # xmm8 = [2,3]
	movdqa	.LCPI1_13(%rip), %xmm9  # xmm9 = [6,7]
	movdqa	.LCPI1_14(%rip), %xmm10 # xmm10 = [4,5]
	movdqa	.LCPI1_15(%rip), %xmm6  # xmm6 = [2147483648,2147483648,2147483648,2147483648]
	xorpd	%xmm2, %xmm2
.LBB1_277:                              # %vector.body272
                                        # =>This Inner Loop Header: Depth=1
	movd	%r13, %xmm7
	pshufd	$68, %xmm7, %xmm7       # xmm7 = xmm7[0,1,0,1]
	movdqa	%xmm7, %xmm3
	paddq	%xmm11, %xmm3
	movdqa	%xmm7, %xmm4
	paddq	%xmm8, %xmm4
	movdqa	%xmm7, %xmm5
	paddq	%xmm9, %xmm5
	paddq	%xmm10, %xmm7
	pshufd	$78, %xmm3, %xmm3       # xmm3 = xmm3[2,3,0,1]
	movd	%xmm3, %rax
	shlq	$4, %rax
	movd	%xmm4, %rsi
	shlq	$4, %rsi
	pshufd	$78, %xmm4, %xmm3       # xmm3 = xmm4[2,3,0,1]
	movd	%xmm3, %rbx
	shlq	$4, %rbx
	movd	%xmm7, %rcx
	shlq	$4, %rcx
	pshufd	$78, %xmm7, %xmm3       # xmm3 = xmm7[2,3,0,1]
	movd	%xmm3, %rdx
	shlq	$4, %rdx
	movd	%xmm5, %rbp
	shlq	$4, %rbp
	pshufd	$78, %xmm5, %xmm3       # xmm3 = xmm5[2,3,0,1]
	movd	%xmm3, %rdi
	shlq	$4, %rdi
	movd	8(%r10,%rbx), %xmm3     # xmm3 = mem[0],zero,zero,zero
	movd	8(%r10,%rax), %xmm4     # xmm4 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	movd	8(%r10,%rsi), %xmm3     # xmm3 = mem[0],zero,zero,zero
	movd	(%r12), %xmm5           # xmm5 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm5    # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1]
	punpckldq	%xmm4, %xmm5    # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1]
	movd	8(%r10,%rbp), %xmm3     # xmm3 = mem[0],zero,zero,zero
	movd	8(%r10,%rcx), %xmm4     # xmm4 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	movd	8(%r10,%rdi), %xmm3     # xmm3 = mem[0],zero,zero,zero
	movd	8(%r10,%rdx), %xmm7     # xmm7 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm7    # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	punpckldq	%xmm7, %xmm4    # xmm4 = xmm4[0],xmm7[0],xmm4[1],xmm7[1]
	movdqa	%xmm5, %xmm3
	pxor	%xmm6, %xmm3
	movapd	%xmm0, %xmm7
	xorpd	%xmm6, %xmm7
	pcmpgtd	%xmm7, %xmm3
	movdqa	%xmm4, %xmm7
	pxor	%xmm6, %xmm7
	movapd	%xmm2, %xmm1
	xorpd	%xmm6, %xmm1
	pcmpgtd	%xmm1, %xmm7
	pand	%xmm3, %xmm5
	pandn	%xmm0, %xmm3
	movdqa	%xmm3, %xmm0
	por	%xmm5, %xmm0
	pand	%xmm7, %xmm4
	pandn	%xmm2, %xmm7
	movdqa	%xmm7, %xmm2
	por	%xmm4, %xmm2
	addq	$8, %r13
	subq	$-128, %r12
	cmpq	%r13, %r8
	jne	.LBB1_277
# BB#278:
	movq	%r9, %rdi
	movq	64(%rsp), %r12          # 8-byte Reload
	movl	72(%rsp), %r8d          # 4-byte Reload
	movq	32(%rsp), %r13          # 8-byte Reload
.LBB1_279:                              # %middle.block273
	movapd	.LCPI1_15(%rip), %xmm1  # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	movapd	%xmm2, %xmm3
	xorpd	%xmm1, %xmm3
	movapd	%xmm0, %xmm4
	xorpd	%xmm1, %xmm4
	pcmpgtd	%xmm3, %xmm4
	andpd	%xmm4, %xmm0
	andnpd	%xmm2, %xmm4
	orpd	%xmm0, %xmm4
	pshufd	$78, %xmm4, %xmm0       # xmm0 = xmm4[2,3,0,1]
	movapd	%xmm4, %xmm2
	xorpd	%xmm1, %xmm2
	movdqa	%xmm0, %xmm3
	pxor	%xmm1, %xmm3
	pcmpgtd	%xmm3, %xmm2
	pand	%xmm2, %xmm4
	pandn	%xmm0, %xmm2
	por	%xmm4, %xmm2
	pshufd	$229, %xmm2, %xmm0      # xmm0 = xmm2[1,1,2,3]
	movd	%xmm2, %eax
	pxor	%xmm1, %xmm2
	pxor	%xmm0, %xmm1
	pcmpgtd	%xmm1, %xmm2
	movdqa	%xmm2, 80(%rsp)
	movd	%xmm0, %ebp
	testb	$1, 80(%rsp)
	cmovnel	%eax, %ebp
	cmpq	%rdi, %r11
	movq	%r15, %r9
	movq	40(%rsp), %r15          # 8-byte Reload
	je	.LBB1_282
.LBB1_280:                              # %for.body.235.i.i.preheader
	subq	%rdi, %r11
	shlq	$4, %rdi
	leaq	8(%r10,%rdi), %rax
.LBB1_281:                              # %for.body.235.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rax), %ecx
	cmpl	%ecx, %ebp
	cmovbl	%ecx, %ebp
	addq	$16, %rax
	decq	%r11
	jne	.LBB1_281
.LBB1_282:                              # %for.end.254.i.i
	movl	32(%r15), %eax
	movl	36(%r15), %ecx
	leal	7(%rax), %edx
	sarl	$31, %edx
	shrl	$29, %edx
	leal	7(%rax,%rdx), %esi
	sarl	$3, %esi
	movl	548(%r14), %eax
	leal	-1(%rax,%rcx), %eax
	cltd
	idivl	%ecx
	imull	%esi, %eax
	addl	%ebp, %r13d
	leal	2(%rax,%r13), %eax
	testl	%eax, %eax
	jle	.LBB1_208
# BB#283:                               # %upd_open_wrtescp.exit.i
	movl	%eax, 588(%r14)
	movq	$upd_wrtescp, 216(%r14)
	movl	36(%r15), %eax
	movl	%eax, 580(%r14)
	jmp	.LBB1_636
.LBB1_513:                              # %if.else.368.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	addb	$-48, %r15b
	movzbl	%r15b, %ecx
	cmpl	$10, %ecx
	movq	40(%rsp), %rcx          # 8-byte Reload
	cmovael	%ebx, %ecx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movl	$4, %edx
	jmp	.LBB1_628
.LBB1_545:                              # %if.else.530.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	movl	$18, %edx
	jmp	.LBB1_628
	.align	16, 0x90
.LBB1_469:                              # %for.body.i.399.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %ecx
	cmpl	$55, %edx
	jbe	.LBB1_470
# BB#626:                               # %sw.default.i.430.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	movq	24(%r12), %rdi
	movl	$.L.str.19, %esi
	xorl	%eax, %eax
	callq	errprintf
	movq	24(%r13), %rax
.LBB1_627:                              # %for.inc.i.431.i
                                        #   in Loop: Header=BB1_469 Depth=1
	xorl	%edx, %edx
	jmp	.LBB1_628
.LBB1_470:                              # %for.body.i.399.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movslq	%ebx, %r14
	movq	48(%rax), %rdx
	movb	(%rdx,%r14), %r15b
	jmpq	*.LJTI1_3(,%rcx,8)
.LBB1_471:                              # %sw.bb.i.402.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	movzbl	%r15b, %ecx
	cmpl	$27, %ecx
	sete	%cl
	movzbl	%cl, %edx
	jmp	.LBB1_628
.LBB1_472:                              # %sw.bb.12.i.403.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	$2, %edx
	movzbl	%r15b, %ecx
	cmpl	$42, %ecx
	je	.LBB1_619
# BB#473:                               # %sw.bb.12.i.403.i
                                        #   in Loop: Header=BB1_469 Depth=1
	cmpl	$37, %ecx
	jne	.LBB1_533
# BB#474:                               # %if.then.18.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	movl	$5, %edx
	jmp	.LBB1_628
.LBB1_475:                              # %sw.bb.22.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	$3, %edx
	movzbl	%r15b, %ecx
	cmpl	$114, %ecx
	je	.LBB1_614
# BB#476:                               # %sw.bb.22.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	cmpl	$116, %ecx
	jne	.LBB1_478
# BB#477:                               # %if.then.29.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	$4, %edx
	jmp	.LBB1_615
.LBB1_479:                              # %sw.bb.33.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	520(%r13), %ecx
	movb	%r15b, %dl
	andb	$-33, %dl
	movzbl	%dl, %edx
	cmpl	$83, %edx
	jne	.LBB1_489
# BB#480:                               # %sw.bb.33.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%ecx, %esi
	andl	$16, %esi
	je	.LBB1_489
# BB#481:                               # %if.then.38.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, 32(%rsp)         # 1-byte Spill
	movq	%r13, %rbp
	movl	548(%rbp), %edx
	xorl	%eax, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leaq	144(%rsp), %r15
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	gs_sprintf
	movq	%r15, %rdi
	callq	strlen
	movq	%rax, %r13
	movq	40(%rsp), %rax          # 8-byte Reload
	leal	1(%r13,%rax), %ecx
	movl	%ecx, 24(%rsp)          # 4-byte Spill
	movq	24(%rbp), %rax
	movl	56(%rax), %r15d
	subl	%ebx, %r15d
	addl	%ecx, %r15d
	je	.LBB1_484
# BB#482:                               # %if.then.49.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	movl	%r15d, %esi
	callq	*88(%rdi)
	testq	%rax, %rax
	je	.LBB1_208
# BB#483:                               # %cleanup.thread.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r15d, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, 16(%rsp)          # 8-byte Spill
	callq	memset
.LBB1_484:                              # %if.end.59.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r15d, 12(%rsp)         # 4-byte Spill
	jmp	.LBB1_485
.LBB1_500:                              # %sw.bb.242.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	andb	$-33, %cl
	movzbl	%cl, %ecx
	cmpl	$82, %ecx
	jne	.LBB1_512
# BB#501:                               # %sw.bb.242.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	$256, %ecx              # imm = 0x100
	andl	520(%r13), %ecx
	je	.LBB1_512
# BB#502:                               # %if.then.252.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, 32(%rsp)         # 1-byte Spill
	movss	884(%r12), %xmm0        # xmm0 = mem[0],zero,zero,zero
	maxss	888(%r12), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI1_6(%rip), %xmm0
	cvttsd2si	%xmm0, %edx
	xorl	%eax, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leaq	144(%rsp), %rbp
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	movq	%rax, %r15
	movq	40(%rsp), %rax          # 8-byte Reload
	leal	1(%r15,%rax), %ecx
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	movq	24(%r13), %rax
	movl	56(%rax), %ebp
	subl	%ebx, %ebp
	addl	%ecx, %ebp
	je	.LBB1_505
# BB#503:                               # %if.then.279.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	movl	%ebp, %esi
	callq	*88(%rdi)
	testq	%rax, %rax
	je	.LBB1_208
# BB#504:                               # %cleanup.296.thread.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%ebp, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, 24(%rsp)          # 8-byte Spill
	callq	memset
.LBB1_505:                              # %if.end.299.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%ebp, 16(%rsp)          # 4-byte Spill
	movq	40(%rsp), %rbp          # 8-byte Reload
	testl	%ebp, %ebp
	movq	24(%rsp), %r12          # 8-byte Reload
	js	.LBB1_507
# BB#506:                               # %if.then.302.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	leal	1(%rbp), %eax
	movq	24(%r13), %rcx
	movq	48(%rcx), %rsi
	movslq	%eax, %rdx
	movq	%r12, %rdi
	callq	memcpy
.LBB1_507:                              # %if.end.309.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movslq	%ebp, %rax
	leaq	(%r12,%rax), %rbp
	leaq	1(%r12,%rax), %rdi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %r15
	leaq	144(%rsp), %rsi
	movq	%r15, %rdx
	callq	memcpy
	leaq	1(%r15,%rbp), %rdi
	movq	24(%r13), %rax
	addq	48(%rax), %r14
	movl	56(%rax), %edx
	subl	%ebx, %edx
	movq	%r14, %rsi
	callq	memcpy
	movq	24(%r13), %rax
	movq	48(%rax), %rsi
	testq	%rsi, %rsi
	movq	%r12, %rcx
	je	.LBB1_508
# BB#509:                               # %land.lhs.true.338.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	cmpl	$0, 56(%rax)
	movq	64(%rsp), %r12          # 8-byte Reload
	movq	48(%rsp), %r9           # 8-byte Reload
	movl	72(%rsp), %r8d          # 4-byte Reload
	movb	32(%rsp), %r15b         # 1-byte Reload
	movl	16(%rsp), %edx          # 4-byte Reload
	je	.LBB1_511
# BB#510:                               # %if.then.343.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	%r9, %rbx
	movq	%rcx, %r14
	movl	%r8d, %ebp
	callq	*24(%rdi)
	movl	%ebp, %r8d
	movl	16(%rsp), %edx          # 4-byte Reload
	movq	%r14, %rcx
	movq	%rbx, %r9
	movq	24(%r13), %rax
	jmp	.LBB1_511
.LBB1_514:                              # %sw.bb.377.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	movzbl	%r15b, %ecx
	xorl	%esi, %esi
	cmpl	$45, %ecx
	movl	$6, %edx
	cmovnel	%esi, %edx
	jmp	.LBB1_628
.LBB1_515:                              # %sw.bb.383.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	movzbl	%r15b, %ecx
	xorl	%esi, %esi
	cmpl	$49, %ecx
	movl	$7, %edx
	cmovnel	%esi, %edx
	jmp	.LBB1_628
.LBB1_516:                              # %sw.bb.389.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	movzbl	%r15b, %ecx
	cmpl	$50, %ecx
	sete	%cl
	movzbl	%cl, %edx
	shll	$3, %edx
	jmp	.LBB1_628
.LBB1_517:                              # %sw.bb.395.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	movzbl	%r15b, %ecx
	cmpl	$51, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	leal	(%rcx,%rcx,8), %edx
	jmp	.LBB1_628
.LBB1_518:                              # %sw.bb.401.i.422.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	movzbl	%r15b, %ecx
	xorl	%esi, %esi
	cmpl	$52, %ecx
	movl	$10, %edx
	cmovnel	%esi, %edx
	jmp	.LBB1_628
.LBB1_519:                              # %sw.bb.407.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	movzbl	%r15b, %ecx
	xorl	%esi, %esi
	cmpl	$53, %ecx
	movl	$11, %edx
	cmovnel	%esi, %edx
	jmp	.LBB1_628
.LBB1_520:                              # %sw.bb.413.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	movzbl	%r15b, %ecx
	xorl	%esi, %esi
	cmpl	$88, %ecx
	jmp	.LBB1_521
.LBB1_522:                              # %sw.bb.419.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	movzbl	%r15b, %ecx
	xorl	%esi, %esi
	cmpl	$64, %ecx
	movl	$13, %edx
	cmovnel	%esi, %edx
	jmp	.LBB1_628
.LBB1_523:                              # %sw.bb.425.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	movzbl	%r15b, %ecx
	xorl	%esi, %esi
	cmpl	$80, %ecx
	movl	$14, %edx
	cmovnel	%esi, %edx
	jmp	.LBB1_628
.LBB1_524:                              # %sw.bb.431.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	movzbl	%r15b, %ecx
	xorl	%esi, %esi
	cmpl	$74, %ecx
	movl	$15, %edx
	cmovnel	%esi, %edx
	jmp	.LBB1_628
.LBB1_525:                              # %sw.bb.437.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	movzbl	%r15b, %ecx
	cmpl	$76, %ecx
	sete	%cl
	movzbl	%cl, %edx
	shll	$4, %edx
	jmp	.LBB1_628
.LBB1_526:                              # %sw.bb.443.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	$19, %edx
	movsbl	%r15b, %ecx
	cmpl	$12, %ecx
	jg	.LBB1_530
# BB#527:                               # %sw.bb.443.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movzbl	%r15b, %ecx
	cmpl	$9, %ecx
	je	.LBB1_619
# BB#528:                               # %sw.bb.443.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	cmpl	$10, %ecx
	jne	.LBB1_533
	jmp	.LBB1_529
.LBB1_534:                              # %sw.bb.462.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	movzbl	%r15b, %ecx
	xorl	%esi, %esi
	cmpl	$10, %ecx
.LBB1_521:                              # %for.inc.i.431.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	$12, %edx
	cmovnel	%esi, %edx
	jmp	.LBB1_628
.LBB1_535:                              # %sw.bb.473.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	andb	$-33, %cl
	movzbl	%cl, %ecx
	movl	$20, %edx
	cmpl	$83, %ecx
	je	.LBB1_619
# BB#536:                               # %if.else.480.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movzbl	%r15b, %ecx
	movl	$12, %edx
	cmpl	$10, %ecx
	je	.LBB1_619
# BB#537:                               # %if.else.484.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	cmpl	$13, %ecx
	setne	%cl
	movzbl	%cl, %ecx
	leal	17(%rcx,%rcx), %edx
	jmp	.LBB1_628
.LBB1_538:                              # %sw.bb.491.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	andb	$-33, %cl
	movzbl	%cl, %ecx
	movl	$21, %edx
	jmp	.LBB1_539
.LBB1_540:                              # %sw.bb.505.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	andb	$-33, %cl
	movzbl	%cl, %ecx
	movl	$22, %edx
	jmp	.LBB1_541
.LBB1_542:                              # %sw.bb.519.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	$23, %edx
	movzbl	%r15b, %ecx
	cmpl	$9, %ecx
	je	.LBB1_619
# BB#543:                               # %sw.bb.519.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	cmpl	$32, %ecx
	je	.LBB1_619
# BB#544:                               # %sw.bb.519.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	cmpl	$10, %ecx
	jne	.LBB1_545
.LBB1_529:                              # %if.then.457.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	movl	$12, %edx
	jmp	.LBB1_628
.LBB1_546:                              # %sw.bb.533.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	andb	$-33, %cl
	movzbl	%cl, %ecx
	movl	$24, %edx
	cmpl	$80, %ecx
	je	.LBB1_619
# BB#547:                               # %if.else.540.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	$41, %edx
	jmp	.LBB1_548
.LBB1_549:                              # %sw.bb.555.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	andb	$-33, %cl
	movzbl	%cl, %ecx
	movl	$25, %edx
	cmpl	$65, %ecx
	je	.LBB1_619
	jmp	.LBB1_625
.LBB1_550:                              # %sw.bb.569.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	andb	$-33, %cl
	movzbl	%cl, %ecx
	movl	$26, %edx
	cmpl	$80, %ecx
	je	.LBB1_619
	jmp	.LBB1_625
.LBB1_551:                              # %sw.bb.583.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	andb	$-33, %cl
	movzbl	%cl, %ecx
	movl	$27, %edx
	jmp	.LBB1_539
.LBB1_552:                              # %sw.bb.597.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	andb	$-33, %cl
	movzbl	%cl, %ecx
	movl	$28, %edx
.LBB1_548:                              # %if.else.540.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	cmpl	$82, %ecx
	je	.LBB1_619
	jmp	.LBB1_625
.LBB1_553:                              # %sw.bb.611.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	andb	$-33, %cl
	movzbl	%cl, %ecx
	movl	$29, %edx
	cmpl	$76, %ecx
	je	.LBB1_619
# BB#554:                               # %if.else.618.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	$36, %edx
	cmpl	$87, %ecx
	je	.LBB1_619
	jmp	.LBB1_625
.LBB1_555:                              # %sw.bb.633.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	andb	$-33, %cl
	movzbl	%cl, %ecx
	movl	$30, %edx
	jmp	.LBB1_539
.LBB1_556:                              # %sw.bb.647.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	andb	$-33, %cl
	movzbl	%cl, %ecx
	movl	$31, %edx
	jmp	.LBB1_557
.LBB1_558:                              # %sw.bb.661.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	andb	$-33, %cl
	movzbl	%cl, %ecx
	movl	$32, %edx
	cmpl	$71, %ecx
	je	.LBB1_619
	jmp	.LBB1_625
.LBB1_559:                              # %sw.bb.675.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	andb	$-33, %cl
	movzbl	%cl, %ecx
	movl	$33, %edx
	jmp	.LBB1_541
.LBB1_560:                              # %sw.bb.689.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	andb	$-33, %cl
	movzbl	%cl, %ecx
	movl	$34, %edx
	jmp	.LBB1_561
.LBB1_562:                              # %sw.bb.703.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	$51, %edx
	movzbl	%r15b, %ecx
	cmpl	$61, %ecx
	je	.LBB1_614
# BB#563:                               # %sw.bb.703.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	cmpl	$10, %ecx
	je	.LBB1_564
# BB#565:                               # %if.else.711.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	$34, %edx
	jmp	.LBB1_566
.LBB1_573:                              # %sw.bb.743.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	addb	$-48, %cl
	movl	$35, %edx
	movzbl	%cl, %ecx
	cmpl	$10, %ecx
	jb	.LBB1_619
# BB#574:                               # %if.then.749.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	testb	$32, 520(%r13)
	je	.LBB1_625
# BB#575:                               # %if.then.753.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, 32(%rsp)         # 1-byte Spill
	cvtsi2sdl	836(%r12), %xmm0
	mulsd	.LCPI1_7(%rip), %xmm0
	movss	888(%r12), %xmm1        # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB1_576
.LBB1_584:                              # %sw.bb.864.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	andb	$-33, %cl
	movzbl	%cl, %ecx
	movl	$37, %edx
	jmp	.LBB1_585
.LBB1_586:                              # %sw.bb.878.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	andb	$-33, %cl
	movzbl	%cl, %ecx
	movl	$38, %edx
	cmpl	$68, %ecx
	je	.LBB1_619
	jmp	.LBB1_625
.LBB1_587:                              # %sw.bb.892.i.427.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	andb	$-33, %cl
	movzbl	%cl, %ecx
	movl	$39, %edx
	jmp	.LBB1_541
.LBB1_588:                              # %sw.bb.906.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	andb	$-33, %cl
	movzbl	%cl, %ecx
	movl	$52, %edx
.LBB1_561:                              # %sw.bb.689.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	cmpl	$72, %ecx
	je	.LBB1_619
	jmp	.LBB1_625
.LBB1_596:                              # %sw.bb.960.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	addb	$-48, %cl
	movl	$40, %edx
	movzbl	%cl, %ecx
	cmpl	$10, %ecx
	jb	.LBB1_619
# BB#597:                               # %if.then.966.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	testb	$16, 520(%r13)
	je	.LBB1_625
# BB#598:                               # %if.then.970.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, 32(%rsp)         # 1-byte Spill
	cvtsi2sdl	832(%r12), %xmm0
	mulsd	.LCPI1_7(%rip), %xmm0
	movss	884(%r12), %xmm1        # xmm1 = mem[0],zero,zero,zero
.LBB1_576:                              # %if.then.753.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	jmp	.LBB1_577
.LBB1_599:                              # %sw.bb.1082.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	andb	$-33, %cl
	movzbl	%cl, %ecx
	movl	$42, %edx
.LBB1_539:                              # %sw.bb.491.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	cmpl	$69, %ecx
	je	.LBB1_619
	jmp	.LBB1_625
.LBB1_600:                              # %sw.bb.1096.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	andb	$-33, %cl
	movzbl	%cl, %ecx
	movl	$43, %edx
	cmpl	$83, %ecx
	je	.LBB1_619
	jmp	.LBB1_625
.LBB1_601:                              # %sw.bb.1110.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	andb	$-33, %cl
	movzbl	%cl, %ecx
	movl	$44, %edx
	jmp	.LBB1_602
.LBB1_603:                              # %sw.bb.1124.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	andb	$-33, %cl
	movzbl	%cl, %ecx
	movl	$45, %edx
	cmpl	$76, %ecx
	je	.LBB1_619
	jmp	.LBB1_625
.LBB1_604:                              # %sw.bb.1138.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	andb	$-33, %cl
	movzbl	%cl, %ecx
	movl	$46, %edx
	cmpl	$85, %ecx
	je	.LBB1_619
	jmp	.LBB1_625
.LBB1_605:                              # %sw.bb.1152.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	andb	$-33, %cl
	movzbl	%cl, %ecx
	movl	$47, %edx
.LBB1_541:                              # %sw.bb.505.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	cmpl	$84, %ecx
	je	.LBB1_619
	jmp	.LBB1_625
.LBB1_606:                              # %sw.bb.1166.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	andb	$-33, %cl
	movzbl	%cl, %ecx
	movl	$48, %edx
.LBB1_585:                              # %sw.bb.864.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	cmpl	$73, %ecx
	je	.LBB1_619
	jmp	.LBB1_625
.LBB1_607:                              # %sw.bb.1180.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	andb	$-33, %cl
	movzbl	%cl, %ecx
	movl	$49, %edx
.LBB1_602:                              # %sw.bb.1110.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	cmpl	$79, %ecx
	je	.LBB1_619
	jmp	.LBB1_625
.LBB1_608:                              # %sw.bb.1194.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	andb	$-33, %cl
	movzbl	%cl, %ecx
	movl	$54, %edx
.LBB1_557:                              # %sw.bb.647.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	cmpl	$78, %ecx
	je	.LBB1_619
	jmp	.LBB1_625
.LBB1_618:                              # %sw.bb.1248.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	addb	$-48, %cl
	movl	$50, %edx
	movzbl	%cl, %ecx
	cmpl	$10, %ecx
	jb	.LBB1_619
# BB#620:                               # %if.then.1254.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	testb	$1, 521(%r13)
	je	.LBB1_625
# BB#621:                               # %if.then.1258.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, 32(%rsp)         # 1-byte Spill
	movss	884(%r12), %xmm0        # xmm0 = mem[0],zero,zero,zero
	maxss	888(%r12), %xmm0
	cvtss2sd	%xmm0, %xmm0
.LBB1_577:                              # %if.then.753.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	addsd	.LCPI1_6(%rip), %xmm0
	cvttsd2si	%xmm0, %edx
	xorl	%eax, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leaq	144(%rsp), %rbp
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	movq	%rax, %r15
	movq	40(%rsp), %rax          # 8-byte Reload
	leal	1(%r15,%rax), %ecx
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	movq	24(%r13), %rax
	movl	56(%rax), %ebp
	subl	%ebx, %ebp
	addl	%ecx, %ebp
	je	.LBB1_580
# BB#578:                               # %if.then.775.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	movl	%ebp, %esi
	callq	*88(%rdi)
	testq	%rax, %rax
	je	.LBB1_208
# BB#579:                               # %cleanup.792.thread.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%ebp, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, 24(%rsp)          # 8-byte Spill
	callq	memset
.LBB1_580:                              # %if.end.795.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%ebp, 16(%rsp)          # 4-byte Spill
	movq	40(%rsp), %rbp          # 8-byte Reload
	testl	%ebp, %ebp
	movq	24(%rsp), %r12          # 8-byte Reload
	js	.LBB1_582
# BB#581:                               # %if.then.798.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	leal	1(%rbp), %eax
	movq	24(%r13), %rcx
	movq	48(%rcx), %rsi
	movslq	%eax, %rdx
	movq	%r12, %rdi
	callq	memcpy
.LBB1_582:                              # %if.end.805.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movslq	%ebp, %rax
	leaq	(%r12,%rax), %rbp
	leaq	1(%r12,%rax), %rdi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %r15
	leaq	144(%rsp), %rsi
	movq	%r15, %rdx
	callq	memcpy
	leaq	1(%r15,%rbp), %rdi
	movq	24(%r13), %rax
	addq	48(%rax), %r14
	movl	56(%rax), %edx
	subl	%ebx, %edx
	movq	%r14, %rsi
	callq	memcpy
	movq	24(%r13), %rax
	movq	48(%rax), %rsi
	testq	%rsi, %rsi
	movq	%r12, %rcx
	je	.LBB1_583
# BB#622:                               # %land.lhs.true.1349.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	cmpl	$0, 56(%rax)
	movq	64(%rsp), %r12          # 8-byte Reload
	movq	48(%rsp), %r9           # 8-byte Reload
	movl	72(%rsp), %r8d          # 4-byte Reload
	movb	32(%rsp), %r15b         # 1-byte Reload
	movl	16(%rsp), %edx          # 4-byte Reload
	je	.LBB1_624
# BB#623:                               # %if.then.1354.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	%r9, %rbx
	movq	%rcx, %r14
	movl	%r8d, %ebp
	callq	*24(%rdi)
	movl	%ebp, %r8d
	movl	16(%rsp), %edx          # 4-byte Reload
	movq	%r14, %rcx
	movq	%rbx, %r9
	movq	24(%r13), %rax
	jmp	.LBB1_624
.LBB1_569:                              # %sw.bb.721.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movzbl	%r15b, %ecx
	movl	$12, %edx
	cmpl	$10, %ecx
	je	.LBB1_619
# BB#570:                               # %if.else.725.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	$51, %edx
	cmpl	$9, %ecx
	je	.LBB1_614
# BB#571:                               # %if.else.725.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	cmpl	$32, %ecx
	je	.LBB1_614
# BB#572:                               # %if.else.732.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	addb	$-48, %r15b
	movzbl	%r15b, %ecx
	cmpl	$9, %ecx
	movl	$18, %ecx
	movl	$35, %edx
	cmoval	%ecx, %edx
	jmp	.LBB1_628
.LBB1_589:                              # %sw.bb.920.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	$53, %edx
	movzbl	%r15b, %ecx
	cmpl	$61, %ecx
	je	.LBB1_614
# BB#590:                               # %sw.bb.920.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	cmpl	$10, %ecx
	je	.LBB1_564
# BB#591:                               # %if.else.928.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	$52, %edx
	jmp	.LBB1_566
.LBB1_592:                              # %sw.bb.938.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movzbl	%r15b, %ecx
	movl	$12, %edx
	cmpl	$10, %ecx
	je	.LBB1_619
# BB#593:                               # %if.else.942.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	$53, %edx
	cmpl	$9, %ecx
	je	.LBB1_614
# BB#594:                               # %if.else.942.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	cmpl	$32, %ecx
	je	.LBB1_614
# BB#595:                               # %if.else.949.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	addb	$-48, %r15b
	movzbl	%r15b, %ecx
	cmpl	$9, %ecx
	movl	$18, %ecx
	movl	$40, %edx
	cmoval	%ecx, %edx
	jmp	.LBB1_628
.LBB1_609:                              # %sw.bb.1208.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	$55, %edx
	movzbl	%r15b, %ecx
	cmpl	$61, %ecx
	je	.LBB1_614
# BB#610:                               # %sw.bb.1208.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	cmpl	$10, %ecx
	jne	.LBB1_611
.LBB1_564:                              # %if.then.710.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	movl	$12, %edx
	jmp	.LBB1_615
.LBB1_612:                              # %sw.bb.1226.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movzbl	%r15b, %ecx
	movl	$12, %edx
	cmpl	$10, %ecx
	je	.LBB1_619
# BB#613:                               # %if.else.1230.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	$55, %edx
	cmpl	$9, %ecx
	je	.LBB1_614
# BB#616:                               # %if.else.1230.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	cmpl	$32, %ecx
	je	.LBB1_614
# BB#617:                               # %if.else.1237.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	addb	$-48, %r15b
	movzbl	%r15b, %ecx
	cmpl	$9, %ecx
	movl	$18, %ecx
	movl	$50, %edx
	cmoval	%ecx, %edx
	jmp	.LBB1_628
.LBB1_489:                              # %if.else.118.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	cmpl	$84, %edx
	jne	.LBB1_498
# BB#490:                               # %if.else.118.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	andl	$32, %ecx
	je	.LBB1_498
# BB#491:                               # %if.then.128.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, 32(%rsp)         # 1-byte Spill
	movq	%r13, %rbp
	movl	552(%rbp), %edx
	xorl	%eax, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leaq	144(%rsp), %r15
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	gs_sprintf
	movq	%r15, %rdi
	callq	strlen
	movq	%rax, %r13
	movq	40(%rsp), %rax          # 8-byte Reload
	leal	1(%r13,%rax), %ecx
	movl	%ecx, 24(%rsp)          # 4-byte Spill
	movq	24(%rbp), %rax
	movl	56(%rax), %r15d
	subl	%ebx, %r15d
	addl	%ecx, %r15d
	je	.LBB1_494
# BB#492:                               # %if.then.143.i.414.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	movl	%r15d, %esi
	callq	*88(%rdi)
	testq	%rax, %rax
	je	.LBB1_208
# BB#493:                               # %cleanup.160.thread.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r15d, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, 16(%rsp)          # 8-byte Spill
	callq	memset
.LBB1_494:                              # %if.end.163.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r15d, 12(%rsp)         # 4-byte Spill
	movq	%r12, 64(%rsp)          # 8-byte Spill
.LBB1_485:                              # %if.end.59.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movq	40(%rsp), %r12          # 8-byte Reload
	testl	%r12d, %r12d
	movq	16(%rsp), %r15          # 8-byte Reload
	js	.LBB1_487
# BB#486:                               # %if.then.62.i.411.i
                                        #   in Loop: Header=BB1_469 Depth=1
	leal	1(%r12), %eax
	movq	24(%rbp), %rcx
	movq	48(%rcx), %rsi
	movslq	%eax, %rdx
	movq	%r15, %rdi
	callq	memcpy
.LBB1_487:                              # %if.end.69.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movslq	%r12d, %rax
	leaq	(%r15,%rax), %r12
	leaq	1(%r15,%rax), %rdi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %r13
	leaq	144(%rsp), %rsi
	movq	%r13, %rdx
	callq	memcpy
	leaq	1(%r13,%r12), %rdi
	movq	24(%rbp), %rax
	addq	48(%rax), %r14
	movl	56(%rax), %edx
	subl	%ebx, %edx
	movq	%r14, %rsi
	callq	memcpy
	movq	24(%rbp), %rax
	movq	%rbp, %r13
	movq	48(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB1_488
# BB#495:                               # %land.lhs.true.202.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	cmpl	$0, 56(%rax)
	movq	64(%rsp), %r12          # 8-byte Reload
	movq	48(%rsp), %r9           # 8-byte Reload
	movl	72(%rsp), %r8d          # 4-byte Reload
	je	.LBB1_497
# BB#496:                               # %if.then.207.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	%r9, %rbx
	movl	%r8d, %ebp
	callq	*24(%rdi)
	movl	%ebp, %r8d
	movq	%rbx, %r9
	movq	24(%r13), %rax
	jmp	.LBB1_497
.LBB1_530:                              # %sw.bb.443.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movzbl	%r15b, %ecx
	cmpl	$32, %ecx
	je	.LBB1_619
# BB#531:                               # %sw.bb.443.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	cmpl	$13, %ecx
	jne	.LBB1_533
# BB#532:                               # %if.then.453.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	movl	$17, %edx
	jmp	.LBB1_628
.LBB1_533:                              # %if.else.19.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	jmp	.LBB1_627
.LBB1_583:                              #   in Loop: Header=BB1_469 Depth=1
	movq	64(%rsp), %r12          # 8-byte Reload
	movq	48(%rsp), %r9           # 8-byte Reload
	movl	72(%rsp), %r8d          # 4-byte Reload
	movb	32(%rsp), %r15b         # 1-byte Reload
	movl	16(%rsp), %edx          # 4-byte Reload
.LBB1_624:                              # %if.end.1365.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movq	%rcx, 48(%rax)
	movl	%edx, 56(%rax)
	movl	12(%rsp), %ebx          # 4-byte Reload
.LBB1_625:                              # %sw.bb.468.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	movzbl	%r15b, %ecx
	cmpl	$10, %ecx
	movl	$12, %ecx
	movl	$18, %edx
	cmovel	%ecx, %edx
	jmp	.LBB1_628
.LBB1_488:                              #   in Loop: Header=BB1_469 Depth=1
	movq	64(%rsp), %r12          # 8-byte Reload
	movq	48(%rsp), %r9           # 8-byte Reload
	movl	72(%rsp), %r8d          # 4-byte Reload
.LBB1_497:                              # %if.end.218.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movq	%r15, 48(%rax)
	movl	12(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 56(%rax)
	movb	32(%rsp), %r15b         # 1-byte Reload
	movl	24(%rsp), %ebx          # 4-byte Reload
.LBB1_498:                              # %if.end.226.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	addb	$-65, %cl
	movzbl	%cl, %ecx
	xorl	%edx, %edx
	cmpl	$26, %ecx
	jb	.LBB1_619
# BB#499:                               # %if.else.233.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	addb	$-48, %r15b
	movzbl	%r15b, %ecx
	cmpl	$10, %ecx
	movq	40(%rsp), %rcx          # 8-byte Reload
	cmovael	%ebx, %ecx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movl	$3, %edx
	jmp	.LBB1_628
.LBB1_478:                              # %if.else.30.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	xorl	%edx, %edx
	jmp	.LBB1_615
.LBB1_611:                              # %if.else.1216.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	$54, %edx
.LBB1_566:                              # %if.else.711.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	cmpl	$9, %ecx
	je	.LBB1_614
# BB#567:                               # %if.else.711.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	cmpl	$32, %ecx
	jne	.LBB1_568
.LBB1_614:                              #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
.LBB1_615:                              # %for.inc.i.431.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%ebx, %ecx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	jmp	.LBB1_628
.LBB1_568:                              # %if.then.717.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	movl	$18, %edx
	jmp	.LBB1_615
.LBB1_508:                              #   in Loop: Header=BB1_469 Depth=1
	movq	64(%rsp), %r12          # 8-byte Reload
	movq	48(%rsp), %r9           # 8-byte Reload
	movl	72(%rsp), %r8d          # 4-byte Reload
	movb	32(%rsp), %r15b         # 1-byte Reload
	movl	16(%rsp), %edx          # 4-byte Reload
.LBB1_511:                              # %if.end.354.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movq	%rcx, 48(%rax)
	movl	%edx, 56(%rax)
	movl	12(%rsp), %ebx          # 4-byte Reload
.LBB1_512:                              # %if.end.361.i.i
                                        #   in Loop: Header=BB1_469 Depth=1
	movb	%r15b, %cl
	addb	$-65, %cl
	movzbl	%cl, %ecx
	xorl	%edx, %edx
	cmpl	$26, %ecx
	jae	.LBB1_513
.LBB1_619:                              #   in Loop: Header=BB1_469 Depth=1
	movl	%r8d, %r14d
	movq	%r9, %rbp
	.align	16, 0x90
.LBB1_628:                              # %for.inc.i.431.i
                                        #   in Loop: Header=BB1_469 Depth=1
	incl	%ebx
	cmpl	56(%rax), %ebx
	movq	%rbp, %r9
	movl	%r14d, %r8d
	jb	.LBB1_469
.LBB1_629:                              # %if.end.1393.i.i
	movslq	572(%r13), %rax
	movq	32(%r13), %rcx
	cmpl	24(%rcx), %eax
	ja	.LBB1_208
# BB#630:                               # %if.then.1402.i.i
	movl	%r8d, %r15d
	movq	24(%r13), %rdx
	cmpl	$0, 152(%rdx)
	movl	552(%r13), %edx
	je	.LBB1_632
# BB#631:                               # %if.then.1412.i.i
	leaq	144(%rsp), %r14
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%r9, %rbp
	callq	gs_sprintf
	movq	24(%r13), %rax
	movl	152(%rax), %ebx
	movq	%r14, %rdi
	callq	strlen
	movq	%rbp, %r9
	addl	%ebx, %eax
	jmp	.LBB1_633
.LBB1_632:                              # %if.else.1424.i.i
	shlq	$4, %rax
	movq	16(%rcx), %rcx
	movl	-8(%rax,%rcx), %eax
	incl	%eax
	imull	%edx, %eax
.LBB1_633:                              # %if.end.1436.i.i
	movl	576(%r13), %edx
	leal	127(%rdx), %ecx
	sarl	$31, %ecx
	shrl	$25, %ecx
	leal	127(%rdx,%rcx), %ecx
	sarl	$7, %ecx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	cmpl	$-16, %ecx
	jle	.LBB1_208
# BB#634:                               # %upd_open_wrtrtl.exit.i
	addl	$16, %ecx
	movl	%ecx, 588(%r13)
	movq	$upd_wrtrtl, 216(%r13)
	movl	%r15d, %r8d
	jmp	.LBB1_636
.LBB1_330:                              # %if.then.270.i.i
	movss	884(%r12), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	888(%r12), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	addsd	.LCPI1_6(%rip), %xmm1
	cvtss2sd	%xmm0, %xmm0
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edi
	cmpl	$2, %edi
	jl	.LBB1_333
# BB#331:                               # %if.then.273.i.i
	movl	%edi, %esi
	negl	%esi
	movl	%esi, 16(%rcx)
.LBB1_333:                              # %if.end.282.i.i
	movl	%edi, %ecx
	cmpl	$2, %edx
	jne	.LBB1_339
# BB#334:                               # %if.then.287.i.i
	movl	%ecx, %r15d
	movq	112(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB1_337
# BB#335:                               # %land.lhs.true.292.i.i
	cmpl	$0, 120(%rax)
	je	.LBB1_337
# BB#336:                               # %if.then.297.i.i
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB1_337:                              # %if.end.308.i.i
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$4, %esi
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB1_208
# BB#338:                               # %cleanup.cont.325.i.i
	xorl	%esi, %esi
	movl	$4, %edx
	movq	%rbp, %rdi
	callq	memset
	xorl	%esi, %esi
	movq	24(%r13), %rax
	movl	$4, 120(%rax)
	movq	%rbp, 112(%rax)
	movb	$27, (%rbp)
	movb	$92, 1(%rbp)
	movl	%r15d, %eax
	movb	%al, 2(%rbp)
	movb	%ah, 3(%rbp)  # NOREX
	jmp	.LBB1_346
.LBB1_339:                              # %if.else.341.i.i
	movq	96(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB1_342
# BB#340:                               # %land.lhs.true.346.i.i
	cmpl	$0, 104(%rax)
	je	.LBB1_342
# BB#341:                               # %if.then.351.i.i
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB1_342:                              # %if.end.362.i.i
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$2, %esi
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB1_208
# BB#343:                               # %cleanup.cont.379.i.i
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%rbp, %rdi
	callq	memset
	movq	24(%r13), %rax
	movl	$2, 104(%rax)
	movq	%rbp, 96(%rax)
	movb	$27, (%rbp)
	movl	520(%r13), %eax
	testb	$4, %ah
	movb	$36, %al
	jne	.LBB1_345
# BB#344:                               # %cleanup.cont.379.i.i
	movb	$92, %al
.LBB1_345:                              # %cleanup.cont.379.i.i
	movb	%al, 1(%rbp)
	xorl	%esi, %esi
.LBB1_346:                              # %if.end.399.i.i
	movl	%esi, 40(%rsp)          # 4-byte Spill
	movq	(%r13), %rax
	cmpl	$7, 8(%rax)
	movq	%rbx, %r9
	movl	%r14d, %r8d
	jne	.LBB1_369
# BB#347:                               # %sw.bb.401.i.i
	movq	8(%r13), %rcx
	cmpl	$0, 60(%rcx)
	jne	.LBB1_349
# BB#348:                               # %if.then.406.i.i
	movl	$1, 60(%rcx)
.LBB1_349:                              # %if.end.409.i.i
	movl	64(%rcx), %esi
	testl	%esi, %esi
	jne	.LBB1_351
# BB#350:                               # %if.then.414.i.i
	movl	$1, 64(%rcx)
	movl	$1, %esi
.LBB1_351:                              # %if.end.417.i.i
	movq	16(%r13), %rax
	movl	200(%rax), %edx
	cmpl	%edx, %esi
	je	.LBB1_360
# BB#352:                               # %if.then.424.i.i
	movl	%r8d, %r14d
	movq	%r9, %rbx
	testl	%edx, %edx
	je	.LBB1_355
# BB#353:                               # %if.then.424.i.i
	movq	192(%rax), %rax
	testq	%rax, %rax
	je	.LBB1_355
# BB#354:                               # %if.then.438.i.i
	movq	24(%r12), %rcx
	movq	200(%rcx), %rdi
	movl	$.L.str.3, %edx
	movq	%rax, %rsi
	callq	*24(%rdi)
	movq	8(%r13), %rcx
	movl	64(%rcx), %esi
.LBB1_355:                              # %if.end.449.i.i
	xorl	%ebp, %ebp
	testl	%esi, %esi
	jle	.LBB1_358
# BB#356:                               # %if.then.454.i.i
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$4, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB1_208
# BB#357:                               # %cleanup.475.thread.i.i
	movq	8(%r13), %rax
	movslq	64(%rax), %rdx
	shlq	$2, %rdx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	memset
	movq	8(%r13), %rcx
	movl	64(%rcx), %esi
.LBB1_358:                              # %if.end.478.i.i
	movq	16(%r13), %rax
	movl	%esi, 200(%rax)
	movq	%rbp, 192(%rax)
	movl	64(%rcx), %esi
	xorl	%edx, %edx
	testl	%esi, %esi
	movq	%rbx, %r9
	movl	%r14d, %r8d
	jle	.LBB1_360
.LBB1_359:                              # %for.body.492.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, (%rbp,%rdx,4)
	movl	64(%rcx), %esi
	incq	%rdx
	cmpl	%esi, %edx
	jl	.LBB1_359
.LBB1_360:                              # %if.end.501.i.i
	movl	216(%rax), %edx
	cmpl	%edx, %esi
	je	.LBB1_369
# BB#361:                               # %if.then.509.i.i
	movl	%r8d, %r14d
	movq	%r9, %rbx
	testl	%edx, %edx
	je	.LBB1_364
# BB#362:                               # %if.then.509.i.i
	movq	208(%rax), %rax
	testq	%rax, %rax
	je	.LBB1_364
# BB#363:                               # %if.then.523.i.i
	movq	24(%r12), %rcx
	movq	200(%rcx), %rdi
	movl	$.L.str.3, %edx
	movq	%rax, %rsi
	callq	*24(%rdi)
	movq	8(%r13), %rcx
	movl	64(%rcx), %esi
.LBB1_364:                              # %if.end.534.i.i
	xorl	%ebp, %ebp
	testl	%esi, %esi
	jle	.LBB1_367
# BB#365:                               # %if.then.539.i.i
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$4, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB1_208
# BB#366:                               # %cleanup.560.thread.i.i
	movq	8(%r13), %rax
	movslq	64(%rax), %rdx
	shlq	$2, %rdx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	memset
	movq	8(%r13), %rcx
	movl	64(%rcx), %esi
.LBB1_367:                              # %if.end.563.i.i
	movq	16(%r13), %rax
	movl	%esi, 216(%rax)
	movq	%rbp, 208(%rax)
	xorl	%eax, %eax
	cmpl	$0, 64(%rcx)
	movq	%rbx, %r9
	movl	%r14d, %r8d
	jle	.LBB1_369
.LBB1_368:                              # %for.body.577.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, (%rbp,%rax,4)
	incq	%rax
	cmpl	64(%rcx), %eax
	jl	.LBB1_368
.LBB1_369:                              # %sw.epilog.588.i.i
	movq	32(%r13), %r11
	movl	24(%r11), %eax
	testl	%eax, %eax
	jne	.LBB1_404
# BB#370:                               # %land.lhs.true.593.i.i
	xorl	%eax, %eax
	cmpl	$0, 8(%r11)
	jne	.LBB1_404
# BB#371:                               # %if.then.599.i.i
	movl	%r8d, %r15d
	movq	%r9, %rbp
	cmpl	$4, 572(%r13)
	jne	.LBB1_383
# BB#372:                               # %if.end.669.i.i
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$4, %esi
	movl	$16, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB1_208
# BB#373:                               # %cleanup.cont.686.i.i
	xorl	%esi, %esi
	movl	$64, %edx
	movq	%r14, %rdi
	movq	%rbp, %rbx
	callq	memset
	movq	32(%r13), %rax
	movq	%r14, (%rax)
	movl	$4, 8(%rax)
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$3, %esi
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB1_208
# BB#374:                               # %cleanup.cont.713.i.i
	xorl	%esi, %esi
	movl	$3, %edx
	movq	%rbp, %rdi
	callq	memset
	movl	$3, 8(%r14)
	movq	%rbp, (%r14)
	movw	$29211, (%rbp)          # imm = 0x721B
	movq	240(%r13), %rax
	movl	28(%rax), %eax
	cmpq	$3, %rax
	ja	.LBB1_380
# BB#375:                               # %cleanup.cont.713.i.i
	jmpq	*.LJTI1_5(,%rax,8)
.LBB1_376:                              # %sw.bb.724.i.i
	movb	$0, 2(%rbp)
	jmp	.LBB1_380
.LBB1_377:                              # %sw.bb.726.i.i
	movb	$2, 2(%rbp)
	jmp	.LBB1_380
.LBB1_378:                              # %sw.bb.728.i.i
	movb	$1, 2(%rbp)
	jmp	.LBB1_380
.LBB1_379:                              # %sw.bb.730.i.i
	movb	$4, 2(%rbp)
.LBB1_380:                              # %for.inc.733.i.i
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$3, %esi
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB1_208
# BB#381:                               # %cleanup.cont.713.1.i.i
	xorl	%esi, %esi
	movl	$3, %edx
	movq	%rbp, %rdi
	callq	memset
	movl	$3, 24(%r14)
	movq	%rbp, 16(%r14)
	movw	$29211, (%rbp)          # imm = 0x721B
	movq	248(%r13), %rax
	movl	28(%rax), %eax
	cmpq	$3, %rax
	ja	.LBB1_452
# BB#382:                               # %cleanup.cont.713.1.i.i
	jmpq	*.LJTI1_6(,%rax,8)
.LBB1_451:                              # %sw.bb.724.1.i.i
	movb	$0, 2(%rbp)
	jmp	.LBB1_452
.LBB1_450:                              # %sw.bb.726.1.i.i
	movb	$2, 2(%rbp)
	jmp	.LBB1_452
.LBB1_449:                              # %sw.bb.728.1.i.i
	movb	$1, 2(%rbp)
	jmp	.LBB1_452
.LBB1_448:                              # %sw.bb.730.1.i.i
	movb	$4, 2(%rbp)
.LBB1_452:                              # %for.inc.733.1.i.i
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$3, %esi
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB1_208
# BB#453:                               # %cleanup.cont.713.2.i.i
	movl	%r15d, 72(%rsp)         # 4-byte Spill
	movq	%rbx, %r15
	xorl	%esi, %esi
	movl	$3, %edx
	movq	%rbp, %rdi
	callq	memset
	movl	$3, 40(%r14)
	movq	%rbp, 32(%r14)
	movw	$29211, (%rbp)          # imm = 0x721B
	movq	256(%r13), %rax
	movl	28(%rax), %eax
	cmpq	$3, %rax
	ja	.LBB1_459
# BB#454:                               # %cleanup.cont.713.2.i.i
	jmpq	*.LJTI1_7(,%rax,8)
.LBB1_458:                              # %sw.bb.724.2.i.i
	movb	$0, 2(%rbp)
	jmp	.LBB1_459
.LBB1_457:                              # %sw.bb.726.2.i.i
	movb	$2, 2(%rbp)
	jmp	.LBB1_459
.LBB1_456:                              # %sw.bb.728.2.i.i
	movb	$1, 2(%rbp)
	jmp	.LBB1_459
.LBB1_455:                              # %sw.bb.730.2.i.i
	movb	$4, 2(%rbp)
.LBB1_459:                              # %for.inc.733.2.i.i
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$3, %esi
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	movq	%r15, %rax
	movl	72(%rsp), %r15d         # 4-byte Reload
	je	.LBB1_208
# BB#460:                               # %cleanup.cont.713.3.i.i
	movq	%rax, %rbp
	xorl	%esi, %esi
	movl	$3, %edx
	movq	%rbx, %rdi
	callq	memset
	movl	$3, 56(%r14)
	movq	%rbx, 48(%r14)
	movw	$29211, (%rbx)          # imm = 0x721B
	movq	264(%r13), %rax
	movl	28(%rax), %eax
	cmpq	$3, %rax
	ja	.LBB1_466
# BB#461:                               # %cleanup.cont.713.3.i.i
	jmpq	*.LJTI1_8(,%rax,8)
.LBB1_465:                              # %sw.bb.724.3.i.i
	movb	$0, 2(%rbx)
.LBB1_466:                              # %for.inc.733.3.i.i
	movq	32(%r13), %r11
	jmp	.LBB1_383
.LBB1_464:                              # %sw.bb.726.3.i.i
	movb	$2, 2(%rbx)
	movq	32(%r13), %r11
	jmp	.LBB1_383
.LBB1_463:                              # %sw.bb.728.3.i.i
	movb	$1, 2(%rbx)
	movq	32(%r13), %r11
	jmp	.LBB1_383
.LBB1_462:                              # %sw.bb.730.3.i.i
	movb	$4, 2(%rbx)
	movq	32(%r13), %r11
.LBB1_383:                              # %if.end.736.i.i
	movq	16(%r11), %rax
	testq	%rax, %rax
	je	.LBB1_392
# BB#384:                               # %land.lhs.true.741.i.i
	cmpl	$0, 24(%r11)
	je	.LBB1_392
# BB#385:                               # %for.body.755.lr.ph.i.i
	xorl	%ebx, %ebx
	jmp	.LBB1_386
.LBB1_390:                              # %for.inc.786.for.body.755_crit_edge.i.i
                                        #   in Loop: Header=BB1_386 Depth=1
	movq	16(%r11), %rax
.LBB1_386:                              # %for.body.755.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebx
	movq	%rbx, %rcx
	shlq	$4, %rcx
	movq	(%rax,%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_389
# BB#387:                               # %land.lhs.true.763.i.i
                                        #   in Loop: Header=BB1_386 Depth=1
	cmpl	$0, 8(%rax,%rcx)
	je	.LBB1_389
# BB#388:                               # %if.then.771.i.i
                                        #   in Loop: Header=BB1_386 Depth=1
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
	movq	32(%r13), %r11
.LBB1_389:                              # %for.inc.786.i.i
                                        #   in Loop: Header=BB1_386 Depth=1
	incl	%ebx
	cmpl	24(%r11), %ebx
	jb	.LBB1_390
# BB#391:                               # %for.end.788.i.i
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movq	16(%r11), %rsi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB1_392:                              # %if.end.799.i.i
	movl	572(%r13), %esi
	xorl	%r14d, %r14d
	testl	%esi, %esi
	jle	.LBB1_395
# BB#393:                               # %if.then.803.i.i
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$16, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB1_208
# BB#394:                               # %cleanup.822.thread.i.i
	movslq	572(%r13), %rdx
	shlq	$4, %rdx
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	memset
	movl	572(%r13), %esi
.LBB1_395:                              # %if.end.825.i.i
	movq	32(%r13), %r11
	movq	%r14, 16(%r11)
	movl	556(%r13), %eax
	movl	%eax, 24(%r11)
	testl	%esi, %esi
	movq	%rbp, %r9
	movl	%r15d, %r8d
	jle	.LBB1_404
# BB#396:                               # %for.body.836.lr.ph.i.i
	movl	%r8d, 72(%rsp)          # 4-byte Spill
	movq	%r9, %r15
	addq	$8, %r14
	xorl	%ebx, %ebx
.LBB1_397:                              # %for.body.836.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$6, %esi
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB1_208
# BB#398:                               # %cleanup.cont.853.i.i
                                        #   in Loop: Header=BB1_397 Depth=1
	xorl	%esi, %esi
	movl	$6, %edx
	movq	%rbp, %rdi
	callq	memset
	movl	$6, (%r14)
	movq	%rbp, -8(%r14)
	movw	$11803, (%rbp)          # imm = 0x2E1B
	movb	$1, 2(%rbp)
	movq	(%r13), %rax
	movl	8(%rax), %eax
	leal	-3(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB1_399
# BB#662:                               # %sw.bb.865.i.i
                                        #   in Loop: Header=BB1_397 Depth=1
	movq	8(%r13), %rax
	cvtsi2sdl	40(%rax), %xmm0
	movsd	.LCPI1_11(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	movss	888(%r12), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	movsd	.LCPI1_6(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm3
	addsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, 3(%rbp)
	movq	8(%r13), %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	36(%rax), %xmm0
	mulsd	%xmm2, %xmm0
	movss	884(%r12), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	addsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, 4(%rbp)
	movq	8(%r13), %rax
	movb	32(%rax), %al
	jmp	.LBB1_401
.LBB1_399:                              # %cleanup.cont.853.i.i
                                        #   in Loop: Header=BB1_397 Depth=1
	cmpl	$7, %eax
	jne	.LBB1_402
# BB#400:                               # %sw.bb.892.i.i
                                        #   in Loop: Header=BB1_397 Depth=1
	movw	$2570, 3(%rbp)          # imm = 0xA0A
	movq	8(%r13), %rax
	movb	60(%rax), %al
.LBB1_401:                              # %for.inc.900.i.i
                                        #   in Loop: Header=BB1_397 Depth=1
	movb	%al, 5(%rbp)
.LBB1_402:                              # %for.inc.900.i.i
                                        #   in Loop: Header=BB1_397 Depth=1
	incq	%rbx
	movslq	572(%r13), %rax
	addq	$16, %r14
	cmpq	%rax, %rbx
	jl	.LBB1_397
# BB#403:                               # %for.cond.832.if.end.908.loopexit_crit_edge.i.i
	movq	32(%r13), %r11
	movl	24(%r11), %eax
	movq	%r15, %r9
	movl	72(%rsp), %r8d          # 4-byte Reload
.LBB1_404:                              # %if.end.908.i.i
	movslq	572(%r13), %r14
	movq	(%r13), %rdx
	movl	8(%rdx), %edx
	cmpl	$7, %edx
	je	.LBB1_410
# BB#405:                               # %if.end.908.i.i
	cmpl	$4, %edx
	jne	.LBB1_406
# BB#409:                               # %sw.bb.927.i.i
	movq	$upd_wrtescp2x, 216(%r13)
	movq	8(%r13), %rsi
	movl	36(%rsi), %edx
	movl	%edx, 580(%r13)
	jmp	.LBB1_412
.LBB1_410:                              # %sw.bb.931.i.i
	movq	8(%r13), %rsi
	cmpl	$1, 36(%rsi)
	jg	.LBB1_208
# BB#411:                               # %if.else.937.i.i
	movq	$upd_wrtescnm, 216(%r13)
	jmp	.LBB1_412
.LBB1_406:                              # %if.end.908.i.i
	cmpl	$3, %edx
	jne	.LBB1_208
# BB#407:                               # %sw.bb.919.i.i
	movq	8(%r13), %rsi
	cmpl	$1, 36(%rsi)
	jg	.LBB1_208
# BB#408:                               # %if.else.925.i.i
	movq	$upd_wrtescp2, 216(%r13)
.LBB1_412:                              # %sw.epilog.941.i.i
	cmpl	$0, 40(%rsp)            # 4-byte Folded Reload
	js	.LBB1_208
# BB#413:                               # %sw.epilog.941.i.i
	cmpl	%eax, %r14d
	ja	.LBB1_208
# BB#414:                               # %if.then.944.i.i
	movq	24(%r13), %rdi
	movl	152(%rdi), %eax
	testl	%eax, %eax
	je	.LBB1_416
# BB#415:                               # %if.then.954.i.i
	addl	$2, %eax
	movl	24(%rsi), %ebx
	jmp	.LBB1_421
.LBB1_416:                              # %if.else.959.i.i
	movl	552(%r13), %eax
	movl	24(%rsi), %ebx
	movl	%r8d, %ecx
	cmpl	$2, %ebx
	jl	.LBB1_418
# BB#417:                               # %if.then.965.i.i
	cltd
	idivl	%ebx
	jmp	.LBB1_420
.LBB1_418:                              # %if.else.969.i.i
	cmpl	$-2, %ebx
	jg	.LBB1_420
# BB#419:                               # %if.then.974.i.i
	negl	%eax
	imull	%ebx, %eax
.LBB1_420:                              # %if.end.980.i.i
	movl	136(%rdi), %r8d
	cltq
	imulq	$-2139062143, %rax, %rdx # imm = 0xFFFFFFFF80808081
	shrq	$32, %rdx
	addl	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	sarl	$7, %eax
	addl	%edx, %eax
	leal	3(%rax,%r8,2), %eax
	movl	%ecx, %r8d
.LBB1_421:                              # %if.end.989.i.i
	cmpl	$2, %ebx
	jl	.LBB1_423
# BB#422:                               # %if.then.994.i.i
	decl	%ebx
	imull	168(%rdi), %ebx
	addl	%eax, %ebx
	movl	%ebx, %eax
.LBB1_423:                              # %if.end.1003.i.i
	movl	104(%rdi), %edx
	testl	%edx, %edx
	je	.LBB1_424
# BB#425:                               # %if.else.1019.i.i
	leal	2(%rax,%rdx), %edx
	movl	16(%rsi), %eax
	cmpl	$2, %eax
	jl	.LBB1_427
# BB#426:                               # %if.then.1029.i.i
	decl	%eax
	imull	120(%rdi), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	jmp	.LBB1_427
.LBB1_424:                              # %if.then.1009.i.i
	movl	36(%rsi), %edx
	decl	%edx
	imull	120(%rdi), %edx
	leal	1(%rax,%rdx), %edx
.LBB1_427:                              # %if.end.1039.i.i
	cmpl	$0, 8(%r11)
	je	.LBB1_438
# BB#428:                               # %for.cond.1046.preheader.i.i
	xorl	%esi, %esi
	testl	%r14d, %r14d
	jle	.LBB1_437
# BB#429:                               # %for.body.1050.lr.ph.i.i
	movq	(%r11), %r12
	xorl	%r15d, %r15d
	testl	%r14d, %r14d
	movl	$0, %esi
	je	.LBB1_435
# BB#430:                               # %overflow.checked167
	xorl	%r15d, %r15d
	movq	%r14, %rcx
	andq	$-8, %rcx
	xorps	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	je	.LBB1_434
# BB#431:                               # %vector.body163.preheader
	movq	%rcx, %r15
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movl	%r8d, 72(%rsp)          # 4-byte Spill
	movq	%r9, 48(%rsp)           # 8-byte Spill
	leaq	8(%r12), %rdi
	movq	%r14, %r10
	andq	$-8, %r10
	xorps	%xmm0, %xmm0
	xorl	%eax, %eax
	movl	$1, %ebx
	movd	%rbx, %xmm11
	pslldq	$8, %xmm11              # xmm11 = zero,zero,zero,zero,zero,zero,zero,zero,xmm11[0,1,2,3,4,5,6,7]
	movdqa	.LCPI1_12(%rip), %xmm8  # xmm8 = [2,3]
	movdqa	.LCPI1_13(%rip), %xmm9  # xmm9 = [6,7]
	movdqa	.LCPI1_14(%rip), %xmm10 # xmm10 = [4,5]
	movdqa	.LCPI1_15(%rip), %xmm6  # xmm6 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm2, %xmm2
.LBB1_432:                              # %vector.body163
                                        # =>This Inner Loop Header: Depth=1
	movd	%rax, %xmm7
	pshufd	$68, %xmm7, %xmm7       # xmm7 = xmm7[0,1,0,1]
	movdqa	%xmm7, %xmm3
	paddq	%xmm11, %xmm3
	movdqa	%xmm7, %xmm4
	paddq	%xmm8, %xmm4
	movdqa	%xmm7, %xmm5
	paddq	%xmm9, %xmm5
	paddq	%xmm10, %xmm7
	pshufd	$78, %xmm3, %xmm3       # xmm3 = xmm3[2,3,0,1]
	movd	%xmm3, %rbx
	shlq	$4, %rbx
	movd	%xmm4, %rsi
	shlq	$4, %rsi
	pshufd	$78, %xmm4, %xmm3       # xmm3 = xmm4[2,3,0,1]
	movd	%xmm3, %rbp
	shlq	$4, %rbp
	movd	%xmm7, %rcx
	shlq	$4, %rcx
	pshufd	$78, %xmm7, %xmm3       # xmm3 = xmm7[2,3,0,1]
	movd	%xmm3, %rdx
	shlq	$4, %rdx
	movd	%xmm5, %r8
	shlq	$4, %r8
	pshufd	$78, %xmm5, %xmm3       # xmm3 = xmm5[2,3,0,1]
	movd	%xmm3, %r9
	shlq	$4, %r9
	movd	8(%r12,%rbp), %xmm3     # xmm3 = mem[0],zero,zero,zero
	movd	8(%r12,%rbx), %xmm4     # xmm4 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	movd	8(%r12,%rsi), %xmm3     # xmm3 = mem[0],zero,zero,zero
	movd	(%rdi), %xmm5           # xmm5 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm5    # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1]
	punpckldq	%xmm4, %xmm5    # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1]
	movd	8(%r12,%r8), %xmm3      # xmm3 = mem[0],zero,zero,zero
	movd	8(%r12,%rcx), %xmm4     # xmm4 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	movd	8(%r12,%r9), %xmm3      # xmm3 = mem[0],zero,zero,zero
	movd	8(%r12,%rdx), %xmm7     # xmm7 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm7    # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	punpckldq	%xmm7, %xmm4    # xmm4 = xmm4[0],xmm7[0],xmm4[1],xmm7[1]
	movdqa	%xmm5, %xmm3
	pxor	%xmm6, %xmm3
	movaps	%xmm0, %xmm7
	xorps	%xmm6, %xmm7
	pcmpgtd	%xmm7, %xmm3
	movdqa	%xmm4, %xmm7
	pxor	%xmm6, %xmm7
	movaps	%xmm2, %xmm1
	xorps	%xmm6, %xmm1
	pcmpgtd	%xmm1, %xmm7
	pand	%xmm3, %xmm5
	pandn	%xmm0, %xmm3
	movdqa	%xmm3, %xmm0
	por	%xmm5, %xmm0
	pand	%xmm7, %xmm4
	pandn	%xmm2, %xmm7
	movdqa	%xmm7, %xmm2
	por	%xmm4, %xmm2
	addq	$8, %rax
	subq	$-128, %rdi
	cmpq	%rax, %r10
	jne	.LBB1_432
# BB#433:
	movq	48(%rsp), %r9           # 8-byte Reload
	movl	72(%rsp), %r8d          # 4-byte Reload
	movq	40(%rsp), %rdx          # 8-byte Reload
.LBB1_434:                              # %middle.block164
	movaps	.LCPI1_15(%rip), %xmm1  # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	movaps	%xmm2, %xmm3
	xorps	%xmm1, %xmm3
	movaps	%xmm0, %xmm4
	xorps	%xmm1, %xmm4
	pcmpgtd	%xmm3, %xmm4
	andps	%xmm4, %xmm0
	andnps	%xmm2, %xmm4
	orps	%xmm0, %xmm4
	pshufd	$78, %xmm4, %xmm0       # xmm0 = xmm4[2,3,0,1]
	movaps	%xmm4, %xmm2
	xorps	%xmm1, %xmm2
	movdqa	%xmm0, %xmm3
	pxor	%xmm1, %xmm3
	pcmpgtd	%xmm3, %xmm2
	pand	%xmm2, %xmm4
	pandn	%xmm0, %xmm2
	por	%xmm4, %xmm2
	pshufd	$229, %xmm2, %xmm0      # xmm0 = xmm2[1,1,2,3]
	movd	%xmm2, %ecx
	pxor	%xmm1, %xmm2
	pxor	%xmm0, %xmm1
	pcmpgtd	%xmm1, %xmm2
	movdqa	%xmm2, 128(%rsp)
	movd	%xmm0, %esi
	testb	$1, 128(%rsp)
	cmovnel	%ecx, %esi
	cmpq	%r15, %r14
	je	.LBB1_437
.LBB1_435:                              # %for.body.1050.i.i.preheader
	movq	%r14, %rdi
	subq	%r15, %rdi
	shlq	$4, %r15
	leaq	8(%r12,%r15), %rax
.LBB1_436:                              # %for.body.1050.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rax), %ecx
	cmpl	%ecx, %esi
	cmovbl	%ecx, %esi
	addq	$16, %rax
	decq	%rdi
	jne	.LBB1_436
.LBB1_437:                              # %for.end.1069.i.i
	addl	%esi, %edx
.LBB1_438:                              # %if.end.1071.i.i
	xorl	%esi, %esi
	testl	%r14d, %r14d
	movq	64(%rsp), %r12          # 8-byte Reload
	jle	.LBB1_447
# BB#439:                               # %for.body.1076.lr.ph.i.i
	movq	16(%r11), %r10
	xorl	%eax, %eax
	testl	%r14d, %r14d
	movl	$0, %esi
	je	.LBB1_445
# BB#440:                               # %overflow.checked202
	movl	%r8d, %r15d
	xorl	%eax, %eax
	movq	%r14, %r8
	andq	$-8, %r8
	xorps	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	je	.LBB1_444
# BB#441:                               # %vector.body198.preheader
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	%r9, 48(%rsp)           # 8-byte Spill
	leaq	8(%r10), %r11
	movq	%r14, %r9
	andq	$-8, %r9
	xorps	%xmm0, %xmm0
	xorl	%r12d, %r12d
	movl	$1, %ecx
	movd	%rcx, %xmm11
	pslldq	$8, %xmm11              # xmm11 = zero,zero,zero,zero,zero,zero,zero,zero,xmm11[0,1,2,3,4,5,6,7]
	movdqa	.LCPI1_12(%rip), %xmm8  # xmm8 = [2,3]
	movdqa	.LCPI1_13(%rip), %xmm9  # xmm9 = [6,7]
	movdqa	.LCPI1_14(%rip), %xmm10 # xmm10 = [4,5]
	movdqa	.LCPI1_15(%rip), %xmm6  # xmm6 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm2, %xmm2
.LBB1_442:                              # %vector.body198
                                        # =>This Inner Loop Header: Depth=1
	movd	%r12, %xmm7
	pshufd	$68, %xmm7, %xmm7       # xmm7 = xmm7[0,1,0,1]
	movdqa	%xmm7, %xmm3
	paddq	%xmm11, %xmm3
	movdqa	%xmm7, %xmm4
	paddq	%xmm8, %xmm4
	movdqa	%xmm7, %xmm5
	paddq	%xmm9, %xmm5
	paddq	%xmm10, %xmm7
	pshufd	$78, %xmm3, %xmm3       # xmm3 = xmm3[2,3,0,1]
	movd	%xmm3, %rcx
	shlq	$4, %rcx
	movd	%xmm4, %rbx
	shlq	$4, %rbx
	pshufd	$78, %xmm4, %xmm3       # xmm3 = xmm4[2,3,0,1]
	movd	%xmm3, %rsi
	shlq	$4, %rsi
	movd	%xmm7, %rbp
	shlq	$4, %rbp
	pshufd	$78, %xmm7, %xmm3       # xmm3 = xmm7[2,3,0,1]
	movd	%xmm3, %rdx
	shlq	$4, %rdx
	movd	%xmm5, %rdi
	shlq	$4, %rdi
	pshufd	$78, %xmm5, %xmm3       # xmm3 = xmm5[2,3,0,1]
	movd	%xmm3, %rax
	shlq	$4, %rax
	movd	8(%r10,%rsi), %xmm3     # xmm3 = mem[0],zero,zero,zero
	movd	8(%r10,%rcx), %xmm4     # xmm4 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	movd	8(%r10,%rbx), %xmm3     # xmm3 = mem[0],zero,zero,zero
	movd	(%r11), %xmm5           # xmm5 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm5    # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1]
	punpckldq	%xmm4, %xmm5    # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1]
	movd	8(%r10,%rdi), %xmm3     # xmm3 = mem[0],zero,zero,zero
	movd	8(%r10,%rbp), %xmm4     # xmm4 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	movd	8(%r10,%rax), %xmm3     # xmm3 = mem[0],zero,zero,zero
	movd	8(%r10,%rdx), %xmm7     # xmm7 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm7    # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	punpckldq	%xmm7, %xmm4    # xmm4 = xmm4[0],xmm7[0],xmm4[1],xmm7[1]
	movdqa	%xmm5, %xmm3
	pxor	%xmm6, %xmm3
	movaps	%xmm0, %xmm7
	xorps	%xmm6, %xmm7
	pcmpgtd	%xmm7, %xmm3
	movdqa	%xmm4, %xmm7
	pxor	%xmm6, %xmm7
	movaps	%xmm2, %xmm1
	xorps	%xmm6, %xmm1
	pcmpgtd	%xmm1, %xmm7
	pand	%xmm3, %xmm5
	pandn	%xmm0, %xmm3
	movdqa	%xmm3, %xmm0
	por	%xmm5, %xmm0
	pand	%xmm7, %xmm4
	pandn	%xmm2, %xmm7
	movdqa	%xmm7, %xmm2
	por	%xmm4, %xmm2
	addq	$8, %r12
	subq	$-128, %r11
	cmpq	%r12, %r9
	jne	.LBB1_442
# BB#443:
	movq	%r8, %rax
	movq	64(%rsp), %r12          # 8-byte Reload
	movq	48(%rsp), %r9           # 8-byte Reload
	movq	40(%rsp), %rdx          # 8-byte Reload
.LBB1_444:                              # %middle.block199
	movaps	.LCPI1_15(%rip), %xmm1  # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	movaps	%xmm2, %xmm3
	xorps	%xmm1, %xmm3
	movaps	%xmm0, %xmm4
	xorps	%xmm1, %xmm4
	pcmpgtd	%xmm3, %xmm4
	andps	%xmm4, %xmm0
	andnps	%xmm2, %xmm4
	orps	%xmm0, %xmm4
	pshufd	$78, %xmm4, %xmm0       # xmm0 = xmm4[2,3,0,1]
	movaps	%xmm4, %xmm2
	xorps	%xmm1, %xmm2
	movdqa	%xmm0, %xmm3
	pxor	%xmm1, %xmm3
	pcmpgtd	%xmm3, %xmm2
	pand	%xmm2, %xmm4
	pandn	%xmm0, %xmm2
	por	%xmm4, %xmm2
	pshufd	$229, %xmm2, %xmm0      # xmm0 = xmm2[1,1,2,3]
	movd	%xmm2, %ecx
	pxor	%xmm1, %xmm2
	pxor	%xmm0, %xmm1
	pcmpgtd	%xmm1, %xmm2
	movdqa	%xmm2, 112(%rsp)
	movd	%xmm0, %esi
	testb	$1, 112(%rsp)
	cmovnel	%ecx, %esi
	cmpq	%rax, %r14
	movl	%r15d, %r8d
	je	.LBB1_447
.LBB1_445:                              # %for.body.1076.i.i.preheader
	subq	%rax, %r14
	shlq	$4, %rax
	leaq	8(%r10,%rax), %rax
.LBB1_446:                              # %for.body.1076.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rax), %ecx
	cmpl	%ecx, %esi
	cmovbl	%ecx, %esi
	addq	$16, %rax
	decq	%r14
	jne	.LBB1_446
.LBB1_447:                              # %upd_open_wrtescp2.exit.i
	movl	576(%r13), %eax
	leal	127(%rax), %ecx
	sarl	$31, %ecx
	shrl	$25, %ecx
	leal	127(%rax,%rcx), %ecx
	sarl	$7, %ecx
	addl	%esi, %edx
	addl	%ecx, %edx
	leal	2(%rdx,%rax,2), %eax
	movl	%eax, 588(%r13)
.LBB1_636:                              # %land.lhs.true.780.i
	movl	588(%r9), %esi
	testl	%esi, %esi
	je	.LBB1_638
# BB#637:                               # %if.then.784.i
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.12, %ecx
	movq	%r9, %rbx
	movl	%r8d, %ebp
	callq	*88(%rdi)
	movl	%ebp, %r8d
	movq	%rbx, %r9
	movq	%rax, 496(%r9)
	testq	%rax, %rax
	je	.LBB1_208
.LBB1_638:                              # %if.then.800.i
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	568(%r9), %esi
	movl	$8, %edx
	movl	$.L.str.13, %ecx
	movq	%r9, %rbx
	movl	%r8d, %ebp
	callq	*88(%rdi)
	movl	%ebp, %r8d
	movq	%rbx, %rbp
	movq	%rax, 224(%rbp)
	testq	%rax, %rax
	je	.LBB1_208
# BB#639:                               # %for.cond.816.preheader.i
	cmpl	$0, 568(%rbp)
	jle	.LBB1_658
# BB#640:                               # %for.body.820.i.preheader
	xorl	%r14d, %r14d
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB1_641:                              # %for.body.820.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_647 Depth 2
	testb	$1, %cl
	je	.LBB1_642
# BB#643:                               # %if.else.834.i
                                        #   in Loop: Header=BB1_641 Depth=1
	movq	$0, (%rax,%r14,8)
	jmp	.LBB1_644
.LBB1_642:                              # %if.then.822.i
                                        #   in Loop: Header=BB1_641 Depth=1
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	572(%rbp), %esi
	movl	$24, %edx
	movl	$.L.str.14, %ecx
	movl	%r8d, %ebx
	callq	*88(%rdi)
	movl	%ebx, %r8d
	movq	224(%rbp), %rcx
	movq	%rax, (%rcx,%r14,8)
.LBB1_644:                              # %if.end.838.i
                                        #   in Loop: Header=BB1_641 Depth=1
	movq	%r12, %r15
	movq	224(%rbp), %rax
	cmpq	$0, (%rax,%r14,8)
	je	.LBB1_645
# BB#646:                               # %for.cond.846.preheader.i
                                        #   in Loop: Header=BB1_641 Depth=1
	cmpl	$0, 572(%rbp)
	movl	$0, %ebx
	movl	$0, %r13d
	movl	%r8d, %r12d
	jle	.LBB1_656
	.align	16, 0x90
.LBB1_647:                              # %for.body.850.i
                                        #   Parent Loop BB1_641 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%r12d, %r12d
	je	.LBB1_649
# BB#648:                               # %if.then.852.i
                                        #   in Loop: Header=BB1_647 Depth=2
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	576(%rbp), %esi
	movl	$1, %edx
	movl	$.L.str.15, %ecx
	callq	*88(%rdi)
	movq	%rax, %rcx
	movq	224(%rbp), %rax
	movq	(%rax,%r14,8), %rdx
	movq	%rcx, (%rdx,%rbx)
	jmp	.LBB1_650
	.align	16, 0x90
.LBB1_649:                              # %if.else.866.i
                                        #   in Loop: Header=BB1_647 Depth=2
	movq	(%rax,%r14,8), %rcx
	movq	$0, (%rcx,%rbx)
.LBB1_650:                              # %if.end.873.i
                                        #   in Loop: Header=BB1_647 Depth=2
	movq	(%rax,%r14,8), %rcx
	xorl	%edx, %edx
	cmpq	$0, (%rcx,%rbx)
	je	.LBB1_652
# BB#651:                               # %select.mid1331
                                        #   in Loop: Header=BB1_647 Depth=2
	movl	%r12d, %edx
.LBB1_652:                              # %select.end1330
                                        #   in Loop: Header=BB1_647 Depth=2
	movl	%edx, %r12d
	movl	580(%rbp), %esi
	testl	%esi, %esi
	jle	.LBB1_654
# BB#653:                               # %if.then.886.i
                                        #   in Loop: Header=BB1_647 Depth=2
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$4, %edx
	movl	$.L.str.16, %ecx
	callq	*88(%rdi)
	movq	224(%rbp), %rcx
	movq	(%rcx,%r14,8), %rdx
	movq	%rax, 8(%rdx,%rbx)
	movq	(%rcx,%r14,8), %rax
	movq	8(%rax,%rbx), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	580(%rbp), %esi
	movl	$4, %edx
	movl	$.L.str.17, %ecx
	callq	*88(%rdi)
	movq	%rax, %rcx
	movq	224(%rbp), %rax
	movq	(%rax,%r14,8), %rdx
	movq	%rcx, 16(%rdx,%rbx)
	movq	(%rax,%r14,8), %rcx
	cmpq	$0, 8(%rcx,%rbx)
	movl	%r12d, %r8d
	movl	$0, %ecx
	cmovel	%ecx, %r8d
	cmpq	$0, 72(%rsp)            # 8-byte Folded Reload
	cmovel	%ecx, %r8d
	jmp	.LBB1_655
	.align	16, 0x90
.LBB1_654:                              # %if.else.931.i
                                        #   in Loop: Header=BB1_647 Depth=2
	movq	$0, 8(%rcx,%rbx)
	movq	(%rax,%r14,8), %rcx
	movq	$0, 16(%rcx,%rbx)
	movl	%r12d, %r8d
.LBB1_655:                              # %for.inc.945.i
                                        #   in Loop: Header=BB1_647 Depth=2
	incq	%r13
	movslq	572(%rbp), %rcx
	addq	$24, %rbx
	cmpq	%rcx, %r13
	movl	%r8d, %r12d
	jl	.LBB1_647
	jmp	.LBB1_656
.LBB1_645:                              #   in Loop: Header=BB1_641 Depth=1
	xorl	%r8d, %r8d
.LBB1_656:                              # %for.inc.949.i
                                        #   in Loop: Header=BB1_641 Depth=1
	incq	%r14
	movslq	568(%rbp), %rdx
	testl	%r8d, %r8d
	sete	%cl
	cmpq	%rdx, %r14
	movq	%r15, %r12
	jl	.LBB1_641
# BB#657:                               # %if.end.953.i
	testl	%r8d, %r8d
	je	.LBB1_208
.LBB1_658:                              # %if.then.955.i
	orb	$-128, 521(%rbp)
	jmp	.LBB1_659
.LBB1_208:                              # %if.else.957.i
	movq	%r12, %rdi
	callq	upd_close_writer
.LBB1_659:                              # %if.end.123
	movl	60(%rsp), %eax          # 4-byte Reload
.LBB1_660:                              # %if.end.123
	movl	832(%r12), %ecx
	movq	18488(%r12), %rdx
	movl	%ecx, 524(%rdx)
	movl	836(%r12), %ecx
	movl	%ecx, 528(%rdx)
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	upd_open, .Lfunc_end1-upd_open
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_10
	.quad	.LBB1_11
	.quad	.LBB1_12
	.quad	.LBB1_13
	.quad	.LBB1_13
	.quad	.LBB1_13
	.quad	.LBB1_13
.LJTI1_1:
	.quad	.LBB1_71
	.quad	.LBB1_66
	.quad	.LBB1_67
	.quad	.LBB1_68
	.quad	.LBB1_68
	.quad	.LBB1_68
	.quad	.LBB1_68
.LJTI1_2:
	.quad	.LBB1_220
	.quad	.LBB1_223
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_467
	.quad	.LBB1_635
	.quad	.LBB1_284
.LJTI1_3:
	.quad	.LBB1_471
	.quad	.LBB1_472
	.quad	.LBB1_475
	.quad	.LBB1_479
	.quad	.LBB1_500
	.quad	.LBB1_514
	.quad	.LBB1_515
	.quad	.LBB1_516
	.quad	.LBB1_517
	.quad	.LBB1_518
	.quad	.LBB1_519
	.quad	.LBB1_520
	.quad	.LBB1_522
	.quad	.LBB1_523
	.quad	.LBB1_524
	.quad	.LBB1_525
	.quad	.LBB1_526
	.quad	.LBB1_534
	.quad	.LBB1_625
	.quad	.LBB1_535
	.quad	.LBB1_538
	.quad	.LBB1_540
	.quad	.LBB1_542
	.quad	.LBB1_546
	.quad	.LBB1_549
	.quad	.LBB1_550
	.quad	.LBB1_551
	.quad	.LBB1_552
	.quad	.LBB1_553
	.quad	.LBB1_555
	.quad	.LBB1_556
	.quad	.LBB1_558
	.quad	.LBB1_559
	.quad	.LBB1_560
	.quad	.LBB1_562
	.quad	.LBB1_573
	.quad	.LBB1_584
	.quad	.LBB1_586
	.quad	.LBB1_587
	.quad	.LBB1_588
	.quad	.LBB1_596
	.quad	.LBB1_599
	.quad	.LBB1_600
	.quad	.LBB1_601
	.quad	.LBB1_603
	.quad	.LBB1_604
	.quad	.LBB1_605
	.quad	.LBB1_606
	.quad	.LBB1_607
	.quad	.LBB1_608
	.quad	.LBB1_618
	.quad	.LBB1_569
	.quad	.LBB1_589
	.quad	.LBB1_592
	.quad	.LBB1_609
	.quad	.LBB1_612
.LJTI1_4:
	.quad	.LBB1_288
	.quad	.LBB1_289
	.quad	.LBB1_291
	.quad	.LBB1_297
	.quad	.LBB1_299
	.quad	.LBB1_301
	.quad	.LBB1_302
	.quad	.LBB1_304
	.quad	.LBB1_306
	.quad	.LBB1_308
	.quad	.LBB1_309
	.quad	.LBB1_311
	.quad	.LBB1_313
	.quad	.LBB1_315
	.quad	.LBB1_316
	.quad	.LBB1_318
.LJTI1_5:
	.quad	.LBB1_376
	.quad	.LBB1_377
	.quad	.LBB1_378
	.quad	.LBB1_379
.LJTI1_6:
	.quad	.LBB1_451
	.quad	.LBB1_450
	.quad	.LBB1_449
	.quad	.LBB1_448
.LJTI1_7:
	.quad	.LBB1_458
	.quad	.LBB1_457
	.quad	.LBB1_456
	.quad	.LBB1_455
.LJTI1_8:
	.quad	.LBB1_465
	.quad	.LBB1_464
	.quad	.LBB1_463
	.quad	.LBB1_462
.LJTI1_9:
	.quad	.LBB1_228
	.quad	.LBB1_229
	.quad	.LBB1_230
	.quad	.LBB1_236

	.text
	.align	16, 0x90
	.type	upd_close,@function
upd_close:                              # @upd_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 32
.Ltmp29:
	.cfi_offset %rbx, -32
.Ltmp30:
	.cfi_offset %r14, -24
.Ltmp31:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	18488(%r14), %r15
	testq	%r15, %r15
	je	.LBB2_55
# BB#1:                                 # %land.lhs.true
	movl	520(%r15), %eax
	movl	%eax, %ecx
	andl	$454656, %ecx           # imm = 0x6F000
	cmpl	$323584, %ecx           # imm = 0x4F000
	jne	.LBB2_7
# BB#2:                                 # %if.then
	movq	17176(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB2_6
# BB#3:                                 # %land.lhs.true.3
	movq	24(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true.5
	movl	40(%rsi), %edx
	testq	%rdx, %rdx
	je	.LBB2_6
# BB#5:                                 # %if.then.8
	movq	32(%rsi), %rdi
	movl	$1, %esi
	callq	fwrite
	movl	520(%r15), %eax
.LBB2_6:                                # %if.end
	andl	$-262145, %eax          # imm = 0xFFFFFFFFFFFBFFFF
	movl	%eax, 520(%r15)
.LBB2_7:                                # %if.then.19
	movq	%r14, %rdi
	callq	upd_close_writer
	movq	176(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB2_9
# BB#8:                                 # %if.then.21
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.21, %edx
	callq	*24(%rdi)
.LBB2_9:                                # %if.end.25
	movq	$0, 176(%r15)
	movl	$0, 532(%r15)
	andb	$-33, 521(%r15)
	movq	%r14, %rdi
	callq	upd_close_render
	movq	%r14, %rdi
	callq	upd_close_map
	movq	(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB2_11
# BB#10:                                # %for.cond.preheader
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB2_11:                               # %if.end.43
	movq	$0, (%r15)
	movq	8(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB2_13
# BB#12:                                # %for.cond.48.preheader
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB2_13:                               # %if.end.64
	movq	$0, 8(%r15)
	movq	16(%r15), %rax
	testq	%rax, %rax
	je	.LBB2_21
# BB#14:                                # %for.cond.69.preheader
	movl	$8, %ebx
	jmp	.LBB2_15
	.align	16, 0x90
.LBB2_19:                               # %for.inc.97.for.body.73_crit_edge
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	16(%r15), %rax
.LBB2_15:                               # %for.body.73
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rax,%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_18
# BB#16:                                # %land.lhs.true.78
                                        #   in Loop: Header=BB2_15 Depth=1
	cmpl	$0, (%rax,%rbx)
	je	.LBB2_18
# BB#17:                                # %if.then.84
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB2_18:                               # %for.inc.97
                                        #   in Loop: Header=BB2_15 Depth=1
	addq	$16, %rbx
	cmpq	$232, %rbx
	jne	.LBB2_19
# BB#20:                                # %for.end.99
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movq	16(%r15), %rsi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB2_21:                               # %if.end.108
	movq	$0, 16(%r15)
	movq	24(%r15), %rax
	testq	%rax, %rax
	je	.LBB2_29
# BB#22:                                # %for.cond.114.preheader
	movl	$8, %ebx
	jmp	.LBB2_23
	.align	16, 0x90
.LBB2_27:                               # %for.inc.143.for.body.118_crit_edge
                                        #   in Loop: Header=BB2_23 Depth=1
	movq	24(%r15), %rax
.LBB2_23:                               # %for.body.118
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rax,%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_26
# BB#24:                                # %land.lhs.true.124
                                        #   in Loop: Header=BB2_23 Depth=1
	cmpl	$0, (%rax,%rbx)
	je	.LBB2_26
# BB#25:                                # %if.then.130
                                        #   in Loop: Header=BB2_23 Depth=1
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB2_26:                               # %for.inc.143
                                        #   in Loop: Header=BB2_23 Depth=1
	addq	$16, %rbx
	cmpq	$184, %rbx
	jne	.LBB2_27
# BB#28:                                # %for.end.145
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movq	24(%r15), %rsi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB2_29:                               # %if.end.154
	movq	$0, 24(%r15)
	movq	32(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB2_47
# BB#30:                                # %for.cond.159.preheader
	movq	(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB2_39
# BB#31:                                # %land.lhs.true.169
	cmpl	$0, 8(%rsi)
	je	.LBB2_39
# BB#32:
	xorl	%ebx, %ebx
	jmp	.LBB2_33
	.align	16, 0x90
.LBB2_37:                               # %for.inc.217.for.body.183_crit_edge
                                        #   in Loop: Header=BB2_33 Depth=1
	movq	(%rsi), %rcx
.LBB2_33:                               # %for.body.183
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebx
	movq	%rbx, %rdx
	shlq	$4, %rdx
	movq	(%rcx,%rdx), %rax
	testq	%rax, %rax
	je	.LBB2_36
# BB#34:                                # %land.lhs.true.192
                                        #   in Loop: Header=BB2_33 Depth=1
	cmpl	$0, 8(%rcx,%rdx)
	je	.LBB2_36
# BB#35:                                # %if.then.201
                                        #   in Loop: Header=BB2_33 Depth=1
	movq	24(%r14), %rcx
	movq	200(%rcx), %rdi
	movl	$.L.str.3, %edx
	movq	%rax, %rsi
	callq	*24(%rdi)
	movq	32(%r15), %rsi
.LBB2_36:                               # %for.inc.217
                                        #   in Loop: Header=BB2_33 Depth=1
	incl	%ebx
	cmpl	8(%rsi), %ebx
	jb	.LBB2_37
# BB#38:                                # %for.end.219
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movq	(%rsi), %rsi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
	movq	32(%r15), %rsi
.LBB2_39:                               # %for.inc.232
	movq	16(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB2_57
# BB#40:                                # %land.lhs.true.169.1
	cmpl	$0, 24(%rsi)
	je	.LBB2_57
# BB#41:
	xorl	%ebx, %ebx
	jmp	.LBB2_42
	.align	16, 0x90
.LBB2_46:                               # %for.inc.217.1.for.body.183.1_crit_edge
                                        #   in Loop: Header=BB2_42 Depth=1
	movq	16(%rsi), %rcx
.LBB2_42:                               # %for.body.183.1
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebx
	movq	%rbx, %rdx
	shlq	$4, %rdx
	movq	(%rcx,%rdx), %rax
	testq	%rax, %rax
	je	.LBB2_45
# BB#43:                                # %land.lhs.true.192.1
                                        #   in Loop: Header=BB2_42 Depth=1
	cmpl	$0, 8(%rcx,%rdx)
	je	.LBB2_45
# BB#44:                                # %if.then.201.1
                                        #   in Loop: Header=BB2_42 Depth=1
	movq	24(%r14), %rcx
	movq	200(%rcx), %rdi
	movl	$.L.str.3, %edx
	movq	%rax, %rsi
	callq	*24(%rdi)
	movq	32(%r15), %rsi
.LBB2_45:                               # %for.inc.217.1
                                        #   in Loop: Header=BB2_42 Depth=1
	incl	%ebx
	cmpl	24(%rsi), %ebx
	jb	.LBB2_46
# BB#56:                                # %for.end.219.1
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movq	16(%rsi), %rsi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
	movq	32(%r15), %rsi
.LBB2_57:                               # %for.inc.232.1
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB2_47:                               # %if.end.243
	movq	$0, 32(%r15)
	movq	40(%r15), %rax
	movl	$8, %ebx
	testq	%rax, %rax
	jne	.LBB2_48
	jmp	.LBB2_54
	.align	16, 0x90
.LBB2_52:                               # %for.inc.277.for.body.252_crit_edge
                                        #   in Loop: Header=BB2_48 Depth=1
	movq	40(%r15), %rax
.LBB2_48:                               # %for.body.252
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rax,%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_51
# BB#49:                                # %land.lhs.true.258
                                        #   in Loop: Header=BB2_48 Depth=1
	cmpl	$0, (%rax,%rbx)
	je	.LBB2_51
# BB#50:                                # %if.then.264
                                        #   in Loop: Header=BB2_48 Depth=1
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB2_51:                               # %for.inc.277
                                        #   in Loop: Header=BB2_48 Depth=1
	addq	$16, %rbx
	cmpq	$168, %rbx
	jne	.LBB2_52
# BB#53:                                # %for.end.279
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movq	40(%r15), %rsi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB2_54:                               # %if.end.288
	movq	$0, 40(%r15)
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	movq	$0, 18488(%r14)
.LBB2_55:                               # %if.end.297
	movq	%r14, %rdi
	callq	gdev_prn_close
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	%eax, %ecx
	movl	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	upd_close, .Lfunc_end2-upd_close
	.cfi_endproc

	.align	16, 0x90
	.type	upd_get_params,@function
upd_get_params:                         # @upd_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp34:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp36:
	.cfi_def_cfa_offset 64
.Ltmp37:
	.cfi_offset %rbx, -40
.Ltmp38:
	.cfi_offset %r12, -32
.Ltmp39:
	.cfi_offset %r14, -24
.Ltmp40:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	18488(%rbx), %r12
	callq	gdev_prn_get_params
	testl	%eax, %eax
	js	.LBB3_58
# BB#1:                                 # %if.then.2
	movq	$rcsid, 18472(%rbx)
	movl	$rcsid, %edi
	callq	strlen
	movl	%eax, 18480(%rbx)
	movl	$1, 18484(%rbx)
	leaq	18472(%rbx), %rdx
	movl	$.L.str.22, %esi
	movq	%r15, %rdi
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB3_58
# BB#2:                                 # %for.cond.preheader
	testq	%r12, %r12
	je	.LBB3_6
# BB#3:                                 # %land.lhs.true
	movq	(%r12), %rax
	testq	%rax, %rax
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true.21
	movslq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB3_6
# BB#5:                                 # %if.then.26
	movq	upd_mapper(,%rax,8), %rdi
	movq	%rdi, 8(%rsp)
	callq	strlen
	movl	%eax, 16(%rsp)
	movl	$1, 20(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.23, %esi
	movq	%r15, %rdi
	callq	param_write_name
	jmp	.LBB3_7
.LBB3_6:                                # %if.else
	movl	$.L.str.23, %esi
	movq	%r15, %rdi
	callq	param_write_null
.LBB3_7:                                # %if.end.48
	testl	%eax, %eax
	js	.LBB3_58
# BB#8:                                 # %for.cond
	testq	%r12, %r12
	je	.LBB3_62
# BB#9:                                 # %land.lhs.true.1
	movq	(%r12), %rax
	testq	%rax, %rax
	je	.LBB3_62
# BB#10:                                # %land.lhs.true.21.1
	movslq	4(%rax), %rax
	testq	%rax, %rax
	je	.LBB3_62
# BB#11:                                # %if.then.26.1
	movq	upd_render(,%rax,8), %rdi
	movq	%rdi, 8(%rsp)
	callq	strlen
	movl	%eax, 16(%rsp)
	movl	$1, 20(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.30, %esi
	movq	%r15, %rdi
	callq	param_write_name
	jmp	.LBB3_63
.LBB3_62:                               # %if.else.1
	movl	$.L.str.30, %esi
	movq	%r15, %rdi
	callq	param_write_null
.LBB3_63:                               # %if.end.48.1
	testl	%eax, %eax
	js	.LBB3_58
# BB#64:                                # %for.cond.1
	testq	%r12, %r12
	je	.LBB3_68
# BB#65:                                # %land.lhs.true.2
	movq	(%r12), %rax
	testq	%rax, %rax
	je	.LBB3_68
# BB#66:                                # %land.lhs.true.21.2
	movslq	8(%rax), %rax
	testq	%rax, %rax
	je	.LBB3_68
# BB#67:                                # %if.then.26.2
	movq	upd_format(,%rax,8), %rdi
	movq	%rdi, 8(%rsp)
	callq	strlen
	movl	%eax, 16(%rsp)
	movl	$1, 20(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.34, %esi
	movq	%r15, %rdi
	callq	param_write_name
	jmp	.LBB3_69
.LBB3_68:                               # %if.else.2
	movl	$.L.str.34, %esi
	movq	%r15, %rdi
	callq	param_write_null
.LBB3_69:                               # %if.end.48.2
	testl	%eax, %eax
	js	.LBB3_58
# BB#70:                                # %for.cond.2
	xorl	%ebx, %ebx
	leaq	8(%rsp), %r14
	.align	16, 0x90
.LBB3_18:                               # %for.body.57
                                        # =>This Inner Loop Header: Depth=1
	testq	%r12, %r12
	je	.LBB3_20
# BB#19:                                # %if.then.64
                                        #   in Loop: Header=BB3_18 Depth=1
	movl	$1, %eax
	movb	%bl, %cl
	shll	%cl, %eax
	andl	520(%r12), %eax
	movl	%eax, 8(%rsp)
	movq	upd_flags(,%rbx,8), %rsi
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	param_write_bool
	jmp	.LBB3_21
	.align	16, 0x90
.LBB3_20:                               # %if.else.68
                                        #   in Loop: Header=BB3_18 Depth=1
	movq	upd_flags(,%rbx,8), %rsi
	movq	%r15, %rdi
	callq	param_write_null
.LBB3_21:                               # %if.end.72
                                        #   in Loop: Header=BB3_18 Depth=1
	testl	%eax, %eax
	js	.LBB3_58
# BB#12:                                # %for.cond.53
                                        #   in Loop: Header=BB3_18 Depth=1
	incq	%rbx
	cmpl	$21, %ebx
	jb	.LBB3_18
# BB#13:                                # %for.cond.80.preheader
	xorl	%ebx, %ebx
	leaq	8(%rsp), %r14
	.align	16, 0x90
.LBB3_14:                               # %for.body.84
                                        # =>This Inner Loop Header: Depth=1
	testq	%r12, %r12
	je	.LBB3_28
# BB#15:                                # %land.lhs.true.91
                                        #   in Loop: Header=BB3_14 Depth=1
	movq	8(%r12), %rax
	testq	%rax, %rax
	je	.LBB3_28
# BB#16:                                # %land.lhs.true.93
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	(%rax,%rbx,4), %eax
	testl	%eax, %eax
	je	.LBB3_28
# BB#17:                                # %if.then.98
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	%eax, 8(%rsp)
	movq	upd_ints(,%rbx,8), %rsi
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	param_write_int
	jmp	.LBB3_29
	.align	16, 0x90
.LBB3_28:                               # %if.else.106
                                        #   in Loop: Header=BB3_14 Depth=1
	movq	upd_ints(,%rbx,8), %rsi
	movq	%r15, %rdi
	callq	param_write_null
.LBB3_29:                               # %if.end.110
                                        #   in Loop: Header=BB3_14 Depth=1
	testl	%eax, %eax
	js	.LBB3_58
# BB#22:                                # %for.cond.80
                                        #   in Loop: Header=BB3_14 Depth=1
	incq	%rbx
	cmpl	$17, %ebx
	jb	.LBB3_14
# BB#23:                                # %for.cond.118.preheader
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB3_24:                               # %for.body.122
                                        # =>This Inner Loop Header: Depth=1
	testq	%r12, %r12
	movq	upd_int_a(,%rbx,8), %rsi
	je	.LBB3_36
# BB#25:                                # %land.lhs.true.129
                                        #   in Loop: Header=BB3_24 Depth=1
	movq	16(%r12), %rdx
	testq	%rdx, %rdx
	je	.LBB3_36
# BB#26:                                # %land.lhs.true.131
                                        #   in Loop: Header=BB3_24 Depth=1
	cmpl	$0, 8(%rdx,%r14)
	je	.LBB3_36
# BB#27:                                # %if.then.137
                                        #   in Loop: Header=BB3_24 Depth=1
	addq	%r14, %rdx
	movq	%r15, %rdi
	callq	param_write_int_array
	jmp	.LBB3_37
	.align	16, 0x90
.LBB3_36:                               # %if.else.142
                                        #   in Loop: Header=BB3_24 Depth=1
	movq	%r15, %rdi
	callq	param_write_null
.LBB3_37:                               # %if.end.146
                                        #   in Loop: Header=BB3_24 Depth=1
	testl	%eax, %eax
	js	.LBB3_58
# BB#30:                                # %for.cond.118
                                        #   in Loop: Header=BB3_24 Depth=1
	incq	%rbx
	addq	$16, %r14
	cmpl	$14, %ebx
	jb	.LBB3_24
# BB#31:                                # %for.cond.154.preheader
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
.LBB3_32:                               # %for.body.158
                                        # =>This Inner Loop Header: Depth=1
	testq	%r12, %r12
	movq	upd_strings(,%rbx,8), %rsi
	je	.LBB3_43
# BB#33:                                # %land.lhs.true.165
                                        #   in Loop: Header=BB3_32 Depth=1
	movq	24(%r12), %rdx
	testq	%rdx, %rdx
	je	.LBB3_43
# BB#34:                                # %land.lhs.true.167
                                        #   in Loop: Header=BB3_32 Depth=1
	cmpl	$0, 8(%rdx,%r14)
	je	.LBB3_43
# BB#35:                                # %if.then.173
                                        #   in Loop: Header=BB3_32 Depth=1
	addq	%r14, %rdx
	movq	%r15, %rdi
	callq	param_write_string
	jmp	.LBB3_44
.LBB3_43:                               # %if.else.180
                                        #   in Loop: Header=BB3_32 Depth=1
	movq	%r15, %rdi
	callq	param_write_null
.LBB3_44:                               # %if.end.184
                                        #   in Loop: Header=BB3_32 Depth=1
	testl	%eax, %eax
	js	.LBB3_58
# BB#38:                                # %for.cond.154
                                        #   in Loop: Header=BB3_32 Depth=1
	incq	%rbx
	addq	$16, %r14
	cmpl	$11, %ebx
	jb	.LBB3_32
# BB#39:                                # %for.cond.192.preheader
	testq	%r12, %r12
	je	.LBB3_45
# BB#40:                                # %land.lhs.true.203
	movq	32(%r12), %rdx
	testq	%rdx, %rdx
	je	.LBB3_45
# BB#41:                                # %land.lhs.true.205
	cmpl	$0, 8(%rdx)
	je	.LBB3_45
# BB#42:                                # %if.then.211
	movl	$.L.str.105, %esi
	movq	%r15, %rdi
	callq	param_write_string_array
	jmp	.LBB3_46
.LBB3_45:                               # %if.else.218
	movl	$.L.str.105, %esi
	movq	%r15, %rdi
	callq	param_write_null
.LBB3_46:                               # %if.end.222
	testl	%eax, %eax
	js	.LBB3_58
# BB#47:                                # %for.cond.192
	testq	%r12, %r12
	je	.LBB3_59
# BB#48:                                # %land.lhs.true.203.1
	movq	32(%r12), %rdx
	testq	%rdx, %rdx
	je	.LBB3_59
# BB#49:                                # %land.lhs.true.205.1
	cmpl	$0, 24(%rdx)
	je	.LBB3_59
# BB#50:                                # %if.then.211.1
	addq	$16, %rdx
	movl	$.L.str.106, %esi
	movq	%r15, %rdi
	callq	param_write_string_array
	jmp	.LBB3_60
.LBB3_59:                               # %if.else.218.1
	movl	$.L.str.106, %esi
	movq	%r15, %rdi
	callq	param_write_null
.LBB3_60:                               # %if.end.222.1
	testl	%eax, %eax
	js	.LBB3_58
# BB#61:                                # %for.cond.192.1
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
.LBB3_51:                               # %for.body.234
                                        # =>This Inner Loop Header: Depth=1
	testq	%r12, %r12
	movq	upd_float_a(,%rbx,8), %rsi
	je	.LBB3_55
# BB#52:                                # %land.lhs.true.241
                                        #   in Loop: Header=BB3_51 Depth=1
	movq	40(%r12), %rdx
	testq	%rdx, %rdx
	je	.LBB3_55
# BB#53:                                # %land.lhs.true.243
                                        #   in Loop: Header=BB3_51 Depth=1
	cmpl	$0, 8(%rdx,%r14)
	je	.LBB3_55
# BB#54:                                # %if.then.249
                                        #   in Loop: Header=BB3_51 Depth=1
	addq	%r14, %rdx
	movq	%r15, %rdi
	callq	param_write_float_array
	jmp	.LBB3_56
.LBB3_55:                               # %if.else.256
                                        #   in Loop: Header=BB3_51 Depth=1
	movq	%r15, %rdi
	callq	param_write_null
.LBB3_56:                               # %if.end.260
                                        #   in Loop: Header=BB3_51 Depth=1
	testl	%eax, %eax
	js	.LBB3_58
# BB#57:                                # %if.end.260
                                        #   in Loop: Header=BB3_51 Depth=1
	incq	%rbx
	addq	$16, %r14
	cmpl	$10, %ebx
	jb	.LBB3_51
.LBB3_58:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	upd_get_params, .Lfunc_end3-upd_get_params
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI4_0:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
.LCPI4_2:
	.zero	16
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_1:
	.long	1116733440              # float 72
	.text
	.align	16, 0x90
	.type	upd_put_params,@function
upd_put_params:                         # @upd_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp44:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp45:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 56
	subq	$952, %rsp              # imm = 0x3B8
.Ltmp47:
	.cfi_def_cfa_offset 1008
.Ltmp48:
	.cfi_offset %rbx, -56
.Ltmp49:
	.cfi_offset %r12, -48
.Ltmp50:
	.cfi_offset %r13, -40
.Ltmp51:
	.cfi_offset %r14, -32
.Ltmp52:
	.cfi_offset %r15, -24
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	18488(%r15), %r12
	testq	%r12, %r12
	je	.LBB4_13
# BB#1:                                 # %land.lhs.true
	testb	$4, 522(%r12)
	je	.LBB4_13
# BB#2:                                 # %land.lhs.true.5
	cmpq	$0, 17176(%r15)
	je	.LBB4_13
# BB#3:                                 # %if.then
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 208(%rsp)
	leaq	208(%rsp), %rdx
	movl	$.L.str.117, %esi
	movq	%r14, %rdi
	callq	param_read_string
	cmpl	$2, %eax
	jb	.LBB4_6
# BB#4:                                 # %if.then.9
	movl	$.L.str.117, %esi
	movq	%r14, %rdi
	callq	param_read_null
	testl	%eax, %eax
	jne	.LBB4_13
# BB#5:                                 # %if.end.13.thread
	movq	$.L.str.118, 208(%rsp)
	movl	$.L.str.118, %edi
	movl	$0, 216(%rsp)
	xorl	%eax, %eax
	jmp	.LBB4_8
.LBB4_6:                                # %if.end.13
	testl	%eax, %eax
	jne	.LBB4_13
# BB#7:                                 # %if.end.13.cond.false_crit_edge
	movq	208(%rsp), %rdi
	movl	216(%rsp), %eax
.LBB4_8:                                # %cond.false
	leaq	13056(%r15), %rsi
	movl	%eax, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB4_13
# BB#9:                                 # %if.then.35
	movq	24(%r12), %rax
	testq	%rax, %rax
	je	.LBB4_12
# BB#10:                                # %land.lhs.true.38
	movq	18488(%r15), %rcx
	movq	24(%rcx), %rcx
	cmpl	$0, 40(%rcx)
	je	.LBB4_12
# BB#11:                                # %if.then.44
	movq	32(%rax), %rdi
	movl	40(%rax), %edx
	movq	17176(%r15), %rcx
	movl	$1, %esi
	callq	fwrite
.LBB4_12:                               # %if.end.54
	andb	$-5, 522(%r12)
.LBB4_13:                               # %if.end.58
	leaq	18472(%r15), %rbx
	movl	$.L.str.22, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	param_read_string
	movl	$0, 132(%rsp)           # 4-byte Folded Spill
	testl	%eax, %eax
	jns	.LBB4_18
# BB#14:                                # %if.then.62
	movl	$.L.str.22, %esi
	movq	%r14, %rdi
	callq	param_read_null
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB4_15
# BB#16:                                # %if.end.70
	jns	.LBB4_18
# BB#17:                                # %if.then.73
	movq	(%r14), %rax
	movl	$.L.str.22, %esi
	movq	%r14, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, 132(%rsp)         # 4-byte Spill
	jmp	.LBB4_18
.LBB4_15:                               # %if.then.66
	movl	$0, 132(%rsp)           # 4-byte Folded Spill
	xorl	%esi, %esi
	movl	$16, %edx
	movq	%rbx, %rdi
	callq	memset
.LBB4_18:                               # %if.end.79
	movdqu	892(%r15), %xmm0
	movdqa	%xmm0, 80(%rsp)         # 16-byte Spill
	movq	96(%r15), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	leaq	104(%r15), %r13
	leaq	240(%rsp), %rdi
	movl	$712, %edx              # imm = 0x2C8
	movq	%r13, %rsi
	callq	memcpy
	testq	%r12, %r12
	je	.LBB4_77
# BB#19:                                # %if.then.94
	movl	520(%r12), %eax
	movl	%eax, 128(%rsp)         # 4-byte Spill
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$3, %esi
	movl	$4, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbx
	movl	$-25, %ecx
	testq	%rbx, %rbx
	je	.LBB4_467
# BB#20:                                # %cleanup.cont
	xorl	%esi, %esi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	memset
	movq	(%r12), %rax
	testq	%rax, %rax
	je	.LBB4_22
# BB#21:                                # %for.cond.preheader
	movl	(%rax), %ecx
	movl	%ecx, (%rbx)
	movl	4(%rax), %ecx
	movl	%ecx, 4(%rbx)
	movl	8(%rax), %eax
	movl	%eax, 8(%rbx)
.LBB4_22:                               # %if.end.119
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$17, %esi
	movl	$4, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	testq	%rax, %rax
	je	.LBB4_23
# BB#24:                                # %cleanup.cont.136
	xorl	%esi, %esi
	movl	$68, %edx
	movq	%rax, %rbp
	movq	%rbp, %rdi
	callq	memset
	movq	8(%r12), %rax
	testq	%rax, %rax
	je	.LBB4_26
# BB#25:                                # %for.cond.144.preheader
	movl	(%rax), %ecx
	movl	%ecx, (%rbp)
	movl	4(%rax), %ecx
	movl	%ecx, 4(%rbp)
	movl	8(%rax), %ecx
	movl	%ecx, 8(%rbp)
	movl	12(%rax), %ecx
	movl	%ecx, 12(%rbp)
	movl	16(%rax), %ecx
	movl	%ecx, 16(%rbp)
	movl	20(%rax), %ecx
	movl	%ecx, 20(%rbp)
	movl	24(%rax), %ecx
	movl	%ecx, 24(%rbp)
	movl	28(%rax), %ecx
	movl	%ecx, 28(%rbp)
	movl	32(%rax), %ecx
	movl	%ecx, 32(%rbp)
	movl	36(%rax), %ecx
	movl	%ecx, 36(%rbp)
	movl	40(%rax), %ecx
	movl	%ecx, 40(%rbp)
	movl	44(%rax), %ecx
	movl	%ecx, 44(%rbp)
	movl	48(%rax), %ecx
	movl	%ecx, 48(%rbp)
	movl	52(%rax), %ecx
	movl	%ecx, 52(%rbp)
	movl	56(%rax), %ecx
	movl	%ecx, 56(%rbp)
	movl	60(%rax), %ecx
	movl	%ecx, 60(%rbp)
	movl	64(%rax), %eax
	movl	%eax, 64(%rbp)
.LBB4_26:                               # %if.end.157
	movq	%rbp, 120(%rsp)         # 8-byte Spill
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$14, %esi
	movl	$16, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	testq	%rax, %rax
	je	.LBB4_27
# BB#28:                                # %cleanup.cont.174
	movq	%r15, 136(%rsp)         # 8-byte Spill
	movq	%r13, 40(%rsp)          # 8-byte Spill
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$224, %edx
	movq	%rax, %rdi
	movq	%rax, 112(%rsp)         # 8-byte Spill
	callq	memset
	movq	16(%r12), %rax
	movl	$8, %ebx
	testq	%rax, %rax
	je	.LBB4_37
# BB#29:
	movq	112(%rsp), %r13         # 8-byte Reload
	jmp	.LBB4_30
	.align	16, 0x90
.LBB4_36:                               # %for.inc.267.for.body.186_crit_edge
                                        #   in Loop: Header=BB4_30 Depth=1
	addq	$16, %rbx
	movq	16(%r12), %rax
.LBB4_30:                               # %for.body.186
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rax,%rbx)
	je	.LBB4_35
# BB#31:                                # %land.lhs.true.192
                                        #   in Loop: Header=BB4_30 Depth=1
	movl	(%rax,%rbx), %esi
	testl	%esi, %esi
	je	.LBB4_35
# BB#32:                                # %if.then.208
                                        #   in Loop: Header=BB4_30 Depth=1
	movq	%r14, %r15
	movq	$0, -8(%r13,%rbx)
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rdi
	movl	$4, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB4_33
# BB#34:                                # %if.end.238
                                        #   in Loop: Header=BB4_30 Depth=1
	movq	16(%r12), %rax
	movl	(%rax,%rbx), %edx
	shlq	$2, %rdx
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	memset
	movq	%r14, -8(%r13,%rbx)
	movq	16(%r12), %rax
	movl	(%rax,%rbx), %edx
	movl	%edx, (%r13,%rbx)
	movq	-8(%rax,%rbx), %rsi
	shlq	$2, %rdx
	movq	%r14, %rdi
	callq	memcpy
	movq	%r15, %r14
.LBB4_35:                               # %for.inc.267
                                        #   in Loop: Header=BB4_30 Depth=1
	incq	%rbp
	cmpq	$13, %rbp
	jbe	.LBB4_36
.LBB4_37:                               # %if.end.273
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rdi
	movl	$11, %esi
	movl	$16, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB4_38
# BB#39:                                # %cleanup.cont.290
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$176, %edx
	movq	%r13, %rdi
	callq	memset
	movq	24(%r12), %rax
	movl	$8, %ebx
	testq	%rax, %rax
	jne	.LBB4_40
	jmp	.LBB4_47
	.align	16, 0x90
.LBB4_46:                               # %for.inc.384.for.body.302_crit_edge
                                        #   in Loop: Header=BB4_40 Depth=1
	addq	$16, %rbx
	movq	24(%r12), %rax
.LBB4_40:                               # %for.body.302
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rax,%rbx)
	je	.LBB4_45
# BB#41:                                # %land.lhs.true.308
                                        #   in Loop: Header=BB4_40 Depth=1
	movl	(%rax,%rbx), %esi
	testl	%esi, %esi
	je	.LBB4_45
# BB#42:                                # %if.then.324
                                        #   in Loop: Header=BB4_40 Depth=1
	movq	%r14, %r15
	movq	$0, -8(%r13,%rbx)
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB4_43
# BB#44:                                # %if.end.355
                                        #   in Loop: Header=BB4_40 Depth=1
	movq	24(%r12), %rax
	movl	(%rax,%rbx), %edx
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	memset
	movq	%r14, -8(%r13,%rbx)
	movq	24(%r12), %rax
	movl	(%rax,%rbx), %edx
	movl	%edx, (%r13,%rbx)
	movq	-8(%rax,%rbx), %rsi
	movq	%r14, %rdi
	callq	memcpy
	movq	%r15, %r14
.LBB4_45:                               # %for.inc.384
                                        #   in Loop: Header=BB4_40 Depth=1
	incq	%rbp
	cmpq	$10, %rbp
	jbe	.LBB4_46
.LBB4_47:                               # %if.end.390
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rdi
	movl	$2, %esi
	movl	$16, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	testq	%rax, %rax
	je	.LBB4_48
# BB#49:                                # %cleanup.cont.407
	movq	%r14, 56(%rsp)          # 8-byte Spill
	movq	%r13, 16(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$32, %edx
	movq	%rax, %rdi
	movq	%rax, 24(%rsp)          # 8-byte Spill
	callq	memset
	movq	32(%r12), %rax
	testq	%rax, %rax
	jne	.LBB4_50
	jmp	.LBB4_65
.LBB4_77:                               # %if.else.733
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$3, %esi
	movl	$4, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbx
	movl	$-25, %ecx
	testq	%rbx, %rbx
	je	.LBB4_467
# BB#78:                                # %cleanup.cont.750
	movq	%r13, 40(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	memset
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$17, %esi
	movl	$4, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB4_79
# BB#80:                                # %cleanup.cont.767
	xorl	%esi, %esi
	movl	$68, %edx
	movq	%rbp, %rdi
	callq	memset
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$14, %esi
	movl	$16, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	testq	%rax, %rax
	je	.LBB4_81
# BB#82:                                # %cleanup.cont.784
	movq	%r14, %r12
	xorl	%esi, %esi
	movl	$224, %edx
	movq	%rax, %rdi
	movq	%rax, 112(%rsp)         # 8-byte Spill
	callq	memset
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$11, %esi
	movl	$16, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB4_83
# BB#84:                                # %cleanup.cont.801
	xorl	%esi, %esi
	movl	$176, %edx
	movq	%r14, %rdi
	callq	memset
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$2, %esi
	movl	$16, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	testq	%rax, %rax
	je	.LBB4_85
# BB#86:                                # %cleanup.cont.818
	movq	%r14, 16(%rsp)          # 8-byte Spill
	movq	%rbp, 120(%rsp)         # 8-byte Spill
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movl	$0, 128(%rsp)           # 4-byte Folded Spill
	xorl	%esi, %esi
	movl	$32, %edx
	movq	%rax, %rdi
	movq	%rax, 24(%rsp)          # 8-byte Spill
	callq	memset
	movq	24(%r15), %rax
	movq	%r15, 136(%rsp)         # 8-byte Spill
	movq	200(%rax), %rdi
	movl	$10, %esi
	movl	$16, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	testq	%rax, %rax
	movl	$-25, %ecx
	je	.LBB4_467
# BB#87:                                # %cleanup.833.thread
	xorl	%esi, %esi
	movl	$160, %edx
	movq	%rax, %rdi
	movq	%rax, 64(%rsp)          # 8-byte Spill
	callq	memset
	movq	%r12, %r14
	jmp	.LBB4_88
	.align	16, 0x90
.LBB4_64:                               # %for.inc.609.for.body.419_crit_edge
                                        #   in Loop: Header=BB4_50 Depth=1
	movq	32(%r12), %rax
.LBB4_50:                               # %for.body.419
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_56 Depth 2
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	shlq	$4, %rbx
	cmpq	$0, (%rax,%rbx)
	je	.LBB4_63
# BB#51:                                # %land.lhs.true.425
                                        #   in Loop: Header=BB4_50 Depth=1
	movl	8(%rax,%rbx), %esi
	testl	%esi, %esi
	je	.LBB4_63
# BB#52:                                # %if.then.441
                                        #   in Loop: Header=BB4_50 Depth=1
	movq	24(%rsp), %rbp          # 8-byte Reload
	movq	$0, (%rbp,%rbx)
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rdi
	movl	$16, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	testq	%rax, %rax
	je	.LBB4_53
# BB#54:                                # %if.end.472
                                        #   in Loop: Header=BB4_50 Depth=1
	movq	%rax, %r13
	leaq	(%rbp,%rbx), %r15
	movq	32(%r12), %rax
	movl	8(%rax,%rbx), %edx
	shlq	$4, %rdx
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	memset
	movq	%r13, (%r15)
	movq	%r13, %r15
	movq	32(%r12), %rcx
	movl	8(%rcx,%rbx), %eax
	movl	%eax, 8(%rbp,%rbx)
	testl	%eax, %eax
	je	.LBB4_63
# BB#55:                                #   in Loop: Header=BB4_50 Depth=1
	movq	24(%rsp), %rdx          # 8-byte Reload
	leaq	8(%rdx,%rbx), %rdx
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	jmp	.LBB4_56
	.align	16, 0x90
.LBB4_62:                               # %for.inc.600.for.body.497_crit_edge
                                        #   in Loop: Header=BB4_56 Depth=2
	movq	32(%r12), %rcx
.LBB4_56:                               # %for.body.497
                                        #   Parent Loop BB4_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r14d, %r14d
	movq	(%rcx,%rbx), %rcx
	movq	%r14, %r13
	shlq	$4, %r13
	cmpq	$0, (%rcx,%r13)
	je	.LBB4_61
# BB#57:                                # %land.lhs.true.506
                                        #   in Loop: Header=BB4_56 Depth=2
	movl	8(%rcx,%r13), %esi
	testl	%esi, %esi
	je	.LBB4_61
# BB#58:                                # %if.then.528
                                        #   in Loop: Header=BB4_56 Depth=2
	movq	$0, (%r15,%r13)
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB4_59
# BB#60:                                # %if.then.570
                                        #   in Loop: Header=BB4_56 Depth=2
	leaq	(%r15,%r13), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	32(%r12), %rax
	movq	(%rax,%rbx), %rax
	movl	8(%rax,%r13), %edx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	memset
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	%rbp, (%rax)
	movq	32(%r12), %rax
	movq	(%rax,%rbx), %rax
	movl	8(%rax,%r13), %edx
	movl	%edx, 8(%r15,%r13)
	movq	(%rax,%r13), %rsi
	movq	%rbp, %rdi
	callq	memcpy
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
.LBB4_61:                               # %for.inc.600
                                        #   in Loop: Header=BB4_56 Depth=2
	incl	%r14d
	cmpl	%r14d, %eax
	ja	.LBB4_62
	.align	16, 0x90
.LBB4_63:                               # %for.inc.609
                                        #   in Loop: Header=BB4_50 Depth=1
	movq	48(%rsp), %rbx          # 8-byte Reload
	incq	%rbx
	cmpq	$1, %rbx
	jbe	.LBB4_64
.LBB4_65:                               # %if.end.615
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rdi
	movl	$10, %esi
	movl	$16, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	testq	%rax, %rax
	je	.LBB4_66
# BB#67:                                # %cleanup.cont.632
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$160, %edx
	movq	%rax, %rdi
	movq	%rax, 64(%rsp)          # 8-byte Spill
	callq	memset
	movq	40(%r12), %rax
	movl	$8, %ebx
	testq	%rax, %rax
	je	.LBB4_68
# BB#69:
	movq	56(%rsp), %r14          # 8-byte Reload
	movq	64(%rsp), %r15          # 8-byte Reload
	jmp	.LBB4_70
.LBB4_76:                               # %for.inc.726.for.body.644_crit_edge
                                        #   in Loop: Header=BB4_70 Depth=1
	addq	$16, %rbx
	movq	40(%r12), %rax
.LBB4_70:                               # %for.body.644
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rax,%rbx)
	je	.LBB4_75
# BB#71:                                # %land.lhs.true.650
                                        #   in Loop: Header=BB4_70 Depth=1
	movl	(%rax,%rbx), %esi
	testl	%esi, %esi
	je	.LBB4_75
# BB#72:                                # %if.then.666
                                        #   in Loop: Header=BB4_70 Depth=1
	movq	%r14, %r13
	movq	$0, -8(%r15,%rbx)
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rdi
	movl	$4, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB4_73
# BB#74:                                # %if.end.697
                                        #   in Loop: Header=BB4_70 Depth=1
	movq	40(%r12), %rax
	movl	(%rax,%rbx), %edx
	shlq	$2, %rdx
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	memset
	movq	%r14, -8(%r15,%rbx)
	movq	40(%r12), %rax
	movl	(%rax,%rbx), %edx
	movl	%edx, (%r15,%rbx)
	movq	-8(%rax,%rbx), %rsi
	shlq	$2, %rdx
	movq	%r14, %rdi
	callq	memcpy
	movq	%r13, %r14
.LBB4_75:                               # %for.inc.726
                                        #   in Loop: Header=BB4_70 Depth=1
	incq	%rbp
	cmpq	$9, %rbp
	jbe	.LBB4_76
	jmp	.LBB4_88
.LBB4_23:
	movl	$-25, %ecx
	jmp	.LBB4_467
.LBB4_27:
	movl	$-25, %ecx
	jmp	.LBB4_467
.LBB4_79:
	movl	$-25, %ecx
	jmp	.LBB4_467
.LBB4_81:
	movl	$-25, %ecx
	jmp	.LBB4_467
.LBB4_38:
	movl	$-25, %ecx
	jmp	.LBB4_467
.LBB4_83:
	movl	$-25, %ecx
	jmp	.LBB4_467
.LBB4_33:
	movl	$-25, %ecx
	jmp	.LBB4_467
.LBB4_48:
	movl	$-25, %ecx
	jmp	.LBB4_467
.LBB4_85:
	movl	$-25, %ecx
	jmp	.LBB4_467
.LBB4_59:
	movl	$-25, %ecx
	jmp	.LBB4_467
.LBB4_43:
	movl	$-25, %ecx
	jmp	.LBB4_467
.LBB4_66:
	movl	$-25, %ecx
	jmp	.LBB4_467
.LBB4_68:
	movq	56(%rsp), %r14          # 8-byte Reload
.LBB4_88:                               # %if.end.836
	movq	104(%rsp), %rax         # 8-byte Reload
	shrq	$32, %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%r13d, %r13d
	leaq	208(%rsp), %rbp
	movq	32(%rsp), %r15          # 8-byte Reload
	.align	16, 0x90
.LBB4_89:                               # %for.body.841
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_100 Depth 2
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, 208(%rsp)
	movq	upd_choice(,%r13,8), %r12
	movq	(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB4_106
# BB#90:                                # %if.end.848
                                        #   in Loop: Header=BB4_89 Depth=1
	movq	%r14, %rdi
	movq	%rbp, %rdx
	callq	param_read_name
	testl	%eax, %eax
	js	.LBB4_91
# BB#95:                                # %if.end.879
                                        #   in Loop: Header=BB4_89 Depth=1
	jne	.LBB4_106
	jmp	.LBB4_96
	.align	16, 0x90
.LBB4_91:                               # %if.then.855
                                        #   in Loop: Header=BB4_89 Depth=1
	movq	(%r12), %rsi
	movq	%r14, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	testl	%ebx, %ebx
	je	.LBB4_92
# BB#93:                                # %if.end.865
                                        #   in Loop: Header=BB4_89 Depth=1
	jns	.LBB4_106
# BB#94:                                # %if.then.868
                                        #   in Loop: Header=BB4_89 Depth=1
	movq	(%r14), %rax
	movq	(%r12), %rsi
	movq	%r14, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	132(%rsp), %eax         # 4-byte Reload
	cmpl	%ebx, %eax
	cmovgl	%ebx, %eax
	movl	%eax, 132(%rsp)         # 4-byte Spill
	jmp	.LBB4_106
.LBB4_92:                               # %if.end.879.thread1154
                                        #   in Loop: Header=BB4_89 Depth=1
	xorl	%esi, %esi
	movl	$16, %edx
	movq	%rbp, %rdi
	callq	memset
.LBB4_96:                               # %if.then.882
                                        #   in Loop: Header=BB4_89 Depth=1
	movl	132(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %eax
	orl	$4, %eax
	testl	%ecx, %ecx
	cmovnsl	%eax, %ecx
	movl	%ecx, 132(%rsp)         # 4-byte Spill
	movl	$0, (%r15,%r13,4)
	movl	216(%rsp), %ebx
	testq	%rbx, %rbx
	je	.LBB4_106
# BB#97:                                # %for.cond.894.preheader
                                        #   in Loop: Header=BB4_89 Depth=1
	movq	%r14, 56(%rsp)          # 8-byte Spill
	movq	8(%r12), %r14
	testq	%r14, %r14
	je	.LBB4_98
# BB#99:                                # %for.body.900.lr.ph
                                        #   in Loop: Header=BB4_89 Depth=1
	movq	208(%rsp), %r15
	movl	$1, %ebp
	.align	16, 0x90
.LBB4_100:                              # %for.body.900
                                        #   Parent Loop BB4_89 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rdi
	callq	strlen
	cmpq	%rbx, %rax
	jne	.LBB4_103
# BB#101:                               # %land.lhs.true.910
                                        #   in Loop: Header=BB4_100 Depth=2
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB4_102
.LBB4_103:                              # %for.inc.925
                                        #   in Loop: Header=BB4_100 Depth=2
	movq	8(%r12,%rbp,8), %r14
	incq	%rbp
	testq	%r14, %r14
	jne	.LBB4_100
# BB#104:                               #   in Loop: Header=BB4_89 Depth=1
	movq	32(%rsp), %r15          # 8-byte Reload
	jmp	.LBB4_105
.LBB4_98:                               #   in Loop: Header=BB4_89 Depth=1
	movq	56(%rsp), %r14          # 8-byte Reload
	jmp	.LBB4_106
.LBB4_102:                              # %if.then.921
                                        #   in Loop: Header=BB4_89 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	%ebp, (%rax,%r13,4)
	movq	%rax, %r15
.LBB4_105:                              # %cleanup.930
                                        #   in Loop: Header=BB4_89 Depth=1
	movq	56(%rsp), %r14          # 8-byte Reload
	leaq	208(%rsp), %rbp
	.align	16, 0x90
.LBB4_106:                              # %cleanup.930
                                        #   in Loop: Header=BB4_89 Depth=1
	incq	%r13
	cmpq	$3, %r13
	jne	.LBB4_89
# BB#107:                               # %for.cond.936.preheader
	movq	%r14, %r13
	movq	%r15, 32(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	movl	132(%rsp), %r12d        # 4-byte Reload
	.align	16, 0x90
.LBB4_108:                              # %for.body.940
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %r15d
	movb	%bpl, %cl
	shll	%cl, %r15d
	movl	128(%rsp), %eax         # 4-byte Reload
	btl	%ebp, %eax
	sbbl	%eax, %eax
	andl	$1, %eax
	movl	%eax, 208(%rsp)
	movq	upd_flags(,%rbp,8), %r14
	movq	%r13, %rdi
	movq	%r14, %rsi
	leaq	208(%rsp), %rdx
	callq	param_read_bool
	testl	%eax, %eax
	js	.LBB4_109
# BB#114:                               # %if.end.977
                                        #   in Loop: Header=BB4_108 Depth=1
	jne	.LBB4_118
	jmp	.LBB4_115
	.align	16, 0x90
.LBB4_109:                              # %if.then.955
                                        #   in Loop: Header=BB4_108 Depth=1
	movl	%r12d, %ebx
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	param_read_null
	movl	%eax, %r12d
	testl	%r12d, %r12d
	je	.LBB4_110
# BB#111:                               # %if.end.964
                                        #   in Loop: Header=BB4_108 Depth=1
	js	.LBB4_113
# BB#112:                               #   in Loop: Header=BB4_108 Depth=1
	movl	%ebx, %r12d
	jmp	.LBB4_118
.LBB4_110:                              # %if.end.977.thread1159
                                        #   in Loop: Header=BB4_108 Depth=1
	xorl	%esi, %esi
	movl	$4, %edx
	leaq	208(%rsp), %rdi
	callq	memset
	movl	%ebx, %r12d
.LBB4_115:                              # %if.then.980
                                        #   in Loop: Header=BB4_108 Depth=1
	movl	%r12d, %eax
	orl	$2, %eax
	testl	%r12d, %r12d
	cmovnsl	%eax, %r12d
	cmpl	$0, 208(%rsp)
	je	.LBB4_117
# BB#116:                               # %if.then.987
                                        #   in Loop: Header=BB4_108 Depth=1
	orl	%r15d, 128(%rsp)        # 4-byte Folded Spill
	jmp	.LBB4_118
.LBB4_117:                              # %if.else.989
                                        #   in Loop: Header=BB4_108 Depth=1
	notl	%r15d
	andl	%r15d, 128(%rsp)        # 4-byte Folded Spill
	jmp	.LBB4_118
.LBB4_113:                              # %if.then.967
                                        #   in Loop: Header=BB4_108 Depth=1
	movq	(%r13), %rax
	movq	%r13, %rdi
	movq	%r14, %rsi
	movl	%r12d, %edx
	callq	*56(%rax)
	cmpl	%r12d, %ebx
	cmovgl	%r12d, %ebx
	movl	%ebx, %r12d
	.align	16, 0x90
.LBB4_118:                              # %cleanup.993
                                        #   in Loop: Header=BB4_108 Depth=1
	incq	%rbp
	cmpq	$21, %rbp
	jne	.LBB4_108
# BB#119:                               # %for.cond.1000.preheader
	xorl	%ebx, %ebx
	leaq	208(%rsp), %r15
	.align	16, 0x90
.LBB4_120:                              # %for.body.1004
                                        # =>This Inner Loop Header: Depth=1
	movq	120(%rsp), %rax         # 8-byte Reload
	movl	(%rax,%rbx,4), %eax
	movl	%eax, 208(%rsp)
	movq	upd_ints(,%rbx,8), %r14
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	param_read_int
	testl	%eax, %eax
	js	.LBB4_121
# BB#126:                               # %if.end.1041
                                        #   in Loop: Header=BB4_120 Depth=1
	jne	.LBB4_128
	jmp	.LBB4_127
	.align	16, 0x90
.LBB4_121:                              # %if.then.1019
                                        #   in Loop: Header=BB4_120 Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	param_read_null
	movl	%eax, %r15d
	testl	%r15d, %r15d
	je	.LBB4_122
# BB#123:                               # %if.end.1028
                                        #   in Loop: Header=BB4_120 Depth=1
	js	.LBB4_125
# BB#124:                               #   in Loop: Header=BB4_120 Depth=1
	leaq	208(%rsp), %r15
	jmp	.LBB4_128
.LBB4_122:                              # %if.end.1041.thread1164
                                        #   in Loop: Header=BB4_120 Depth=1
	xorl	%esi, %esi
	movl	$4, %edx
	leaq	208(%rsp), %r15
	movq	%r15, %rdi
	callq	memset
.LBB4_127:                              # %if.then.1044
                                        #   in Loop: Header=BB4_120 Depth=1
	movl	%r12d, %eax
	orl	$8, %eax
	testl	%r12d, %r12d
	cmovnsl	%eax, %r12d
	movl	208(%rsp), %eax
	movq	120(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx,%rbx,4)
	jmp	.LBB4_128
.LBB4_125:                              # %if.then.1031
                                        #   in Loop: Header=BB4_120 Depth=1
	movq	(%r13), %rax
	movq	%r13, %rdi
	movq	%r14, %rsi
	movl	%r15d, %edx
	callq	*56(%rax)
	cmpl	%r15d, %r12d
	cmovgl	%r15d, %r12d
	leaq	208(%rsp), %r15
	.align	16, 0x90
.LBB4_128:                              # %cleanup.1053
                                        #   in Loop: Header=BB4_120 Depth=1
	incq	%rbx
	cmpq	$17, %rbx
	jne	.LBB4_120
# BB#129:                               # %for.cond.1059.preheader
	xorl	%ebp, %ebp
	movq	112(%rsp), %r15         # 8-byte Reload
	.align	16, 0x90
.LBB4_130:                              # %for.body.1063
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%r15), %xmm0
	movdqa	%xmm0, 208(%rsp)
	movq	upd_int_a(,%rbp,8), %rbx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	leaq	208(%rsp), %rdx
	callq	param_read_int_array
	testl	%eax, %eax
	js	.LBB4_131
# BB#136:                               # %if.end.1100
                                        #   in Loop: Header=BB4_130 Depth=1
	jne	.LBB4_145
	jmp	.LBB4_137
	.align	16, 0x90
.LBB4_131:                              # %if.then.1078
                                        #   in Loop: Header=BB4_130 Depth=1
	movl	%r12d, %r14d
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	param_read_null
	movl	%eax, %r12d
	testl	%r12d, %r12d
	je	.LBB4_132
# BB#133:                               # %if.end.1087
                                        #   in Loop: Header=BB4_130 Depth=1
	jns	.LBB4_135
# BB#134:                               # %if.then.1090
                                        #   in Loop: Header=BB4_130 Depth=1
	movq	(%r13), %rax
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movl	%r12d, %edx
	callq	*56(%rax)
	cmpl	%r12d, %r14d
	cmovgl	%r12d, %r14d
.LBB4_135:                              # %for.inc.1201
                                        #   in Loop: Header=BB4_130 Depth=1
	movl	%r14d, %r12d
	jmp	.LBB4_145
.LBB4_132:                              # %if.end.1100.thread1169
                                        #   in Loop: Header=BB4_130 Depth=1
	xorl	%esi, %esi
	movl	$16, %edx
	leaq	208(%rsp), %rdi
	callq	memset
	movl	%r14d, %r12d
.LBB4_137:                              # %if.then.1103
                                        #   in Loop: Header=BB4_130 Depth=1
	movl	%r12d, %eax
	orl	$16, %eax
	testl	%r12d, %r12d
	cmovnsl	%eax, %r12d
	movq	(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB4_140
# BB#138:                               # %land.lhs.true.1113
                                        #   in Loop: Header=BB4_130 Depth=1
	cmpl	$0, 8(%r15)
	je	.LBB4_140
# BB#139:                               # %if.then.1118
                                        #   in Loop: Header=BB4_130 Depth=1
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB4_140:                              # %if.end.1128
                                        #   in Loop: Header=BB4_130 Depth=1
	movl	216(%rsp), %esi
	testl	%esi, %esi
	je	.LBB4_141
# BB#142:                               # %if.else.1135
                                        #   in Loop: Header=BB4_130 Depth=1
	cmpq	$0, 208(%rsp)
	je	.LBB4_145
# BB#143:                               # %if.then.1148
                                        #   in Loop: Header=BB4_130 Depth=1
	movq	$0, (%r15)
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rdi
	movl	$4, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB4_150
# BB#144:                               # %if.end.1173
                                        #   in Loop: Header=BB4_130 Depth=1
	movl	216(%rsp), %edx
	shlq	$2, %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	memset
	movq	%rbx, (%r15)
	movl	216(%rsp), %edx
	movl	%edx, 8(%r15)
	movq	208(%rsp), %rsi
	shlq	$2, %rdx
	movq	%rbx, %rdi
	callq	memcpy
	jmp	.LBB4_145
.LBB4_141:                              # %if.then.1131
                                        #   in Loop: Header=BB4_130 Depth=1
	movq	$0, 208(%rsp)
	movdqa	208(%rsp), %xmm0
	movdqu	%xmm0, (%r15)
	.align	16, 0x90
.LBB4_145:                              # %for.inc.1201
                                        #   in Loop: Header=BB4_130 Depth=1
	incq	%rbp
	addq	$16, %r15
	cmpl	$14, %ebp
	jb	.LBB4_130
# BB#146:                               # %for.cond.1204.preheader
	xorl	%r15d, %r15d
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	%r13, %r14
	movq	%r14, 56(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB4_147:                              # %for.body.1208
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rbp), %xmm0
	movdqa	%xmm0, 208(%rsp)
	movq	upd_strings(,%r15,8), %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	leaq	208(%rsp), %rdx
	callq	param_read_string
	testl	%eax, %eax
	js	.LBB4_148
# BB#154:                               # %if.end.1245
                                        #   in Loop: Header=BB4_147 Depth=1
	jne	.LBB4_163
	jmp	.LBB4_155
	.align	16, 0x90
.LBB4_148:                              # %if.then.1223
                                        #   in Loop: Header=BB4_147 Depth=1
	movl	%r12d, %r13d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	param_read_null
	movl	%eax, %r12d
	testl	%r12d, %r12d
	je	.LBB4_149
# BB#151:                               # %if.end.1232
                                        #   in Loop: Header=BB4_147 Depth=1
	jns	.LBB4_153
# BB#152:                               # %if.then.1235
                                        #   in Loop: Header=BB4_147 Depth=1
	movq	(%r14), %rax
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%r12d, %edx
	callq	*56(%rax)
	cmpl	%r12d, %r13d
	cmovgl	%r12d, %r13d
.LBB4_153:                              # %for.inc.1347
                                        #   in Loop: Header=BB4_147 Depth=1
	movl	%r13d, %r12d
	jmp	.LBB4_163
.LBB4_149:                              # %if.end.1245.thread1180
                                        #   in Loop: Header=BB4_147 Depth=1
	xorl	%esi, %esi
	movl	$16, %edx
	leaq	208(%rsp), %rdi
	callq	memset
	movl	%r13d, %r12d
.LBB4_155:                              # %if.then.1248
                                        #   in Loop: Header=BB4_147 Depth=1
	movl	%r12d, %eax
	orl	$32, %eax
	testl	%r12d, %r12d
	cmovnsl	%eax, %r12d
	movq	(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB4_158
# BB#156:                               # %land.lhs.true.1258
                                        #   in Loop: Header=BB4_147 Depth=1
	cmpl	$0, 8(%rbp)
	je	.LBB4_158
# BB#157:                               # %if.then.1263
                                        #   in Loop: Header=BB4_147 Depth=1
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB4_158:                              # %if.end.1274
                                        #   in Loop: Header=BB4_147 Depth=1
	movl	216(%rsp), %esi
	testl	%esi, %esi
	je	.LBB4_159
# BB#160:                               # %if.else.1281
                                        #   in Loop: Header=BB4_147 Depth=1
	cmpq	$0, 208(%rsp)
	je	.LBB4_163
# BB#161:                               # %if.then.1294
                                        #   in Loop: Header=BB4_147 Depth=1
	movq	$0, (%rbp)
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB4_176
# BB#162:                               # %if.end.1319
                                        #   in Loop: Header=BB4_147 Depth=1
	movl	216(%rsp), %edx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	memset
	movq	%rbx, (%rbp)
	movl	216(%rsp), %edx
	movl	%edx, 8(%rbp)
	movq	208(%rsp), %rsi
	movq	%rbx, %rdi
	callq	memcpy
	jmp	.LBB4_163
.LBB4_159:                              # %if.then.1277
                                        #   in Loop: Header=BB4_147 Depth=1
	movq	$0, 208(%rsp)
	movdqa	208(%rsp), %xmm0
	movdqu	%xmm0, (%rbp)
	.align	16, 0x90
.LBB4_163:                              # %for.inc.1347
                                        #   in Loop: Header=BB4_147 Depth=1
	incq	%r15
	addq	$16, %rbp
	cmpl	$11, %r15d
	jb	.LBB4_147
# BB#164:                               # %for.cond.1350.preheader
	movl	%r12d, 132(%rsp)        # 4-byte Spill
	xorl	%ebp, %ebp
	movq	24(%rsp), %rdx          # 8-byte Reload
	.align	16, 0x90
.LBB4_165:                              # %if.end.1363
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_171 Depth 2
                                        #     Child Loop BB4_197 Depth 2
	movq	%rbp, %r13
	shlq	$4, %r13
	movdqu	(%rdx,%r13), %xmm0
	movq	%rdx, %r12
	movdqa	%xmm0, 208(%rsp)
	movq	upd_string_a(,%rbp,8), %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	leaq	208(%rsp), %rdx
	callq	param_read_string_array
	testl	%eax, %eax
	js	.LBB4_166
# BB#180:                               # %if.end.1391
                                        #   in Loop: Header=BB4_165 Depth=1
	je	.LBB4_168
# BB#181:                               #   in Loop: Header=BB4_165 Depth=1
	movq	136(%rsp), %r13         # 8-byte Reload
	movq	%r12, %rdx
	jmp	.LBB4_186
.LBB4_166:                              # %if.then.1369
                                        #   in Loop: Header=BB4_165 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	param_read_null
	movl	%eax, %r15d
	testl	%r15d, %r15d
	je	.LBB4_167
# BB#177:                               # %if.end.1378
                                        #   in Loop: Header=BB4_165 Depth=1
	movq	136(%rsp), %r13         # 8-byte Reload
	jns	.LBB4_179
# BB#178:                               # %if.then.1381
                                        #   in Loop: Header=BB4_165 Depth=1
	movq	(%r14), %rax
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%r15d, %edx
	callq	*56(%rax)
	movl	132(%rsp), %eax         # 4-byte Reload
	cmpl	%r15d, %eax
	cmovgl	%r15d, %eax
	movl	%eax, 132(%rsp)         # 4-byte Spill
.LBB4_179:                              # %for.inc.1627
                                        #   in Loop: Header=BB4_165 Depth=1
	movq	%r12, %rdx
	jmp	.LBB4_186
.LBB4_167:                              # %if.end.1391.thread1191
                                        #   in Loop: Header=BB4_165 Depth=1
	xorl	%esi, %esi
	movl	$16, %edx
	leaq	208(%rsp), %rdi
	callq	memset
.LBB4_168:                              # %if.then.1394
                                        #   in Loop: Header=BB4_165 Depth=1
	movq	%r12, %rdx
	leaq	(%rdx,%r13), %r12
	movl	132(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %eax
	orl	$64, %eax
	testl	%ecx, %ecx
	cmovnsl	%eax, %ecx
	movl	%ecx, 132(%rsp)         # 4-byte Spill
	movq	(%r12), %rcx
	testq	%rcx, %rcx
	je	.LBB4_183
# BB#169:                               # %land.lhs.true.1404
                                        #   in Loop: Header=BB4_165 Depth=1
	movl	8(%rdx,%r13), %eax
	testl	%eax, %eax
	je	.LBB4_183
# BB#170:                               #   in Loop: Header=BB4_165 Depth=1
	leaq	8(%rdx,%r13), %r15
	movq	%rdx, %r14
	xorl	%ebx, %ebx
	jmp	.LBB4_171
	.align	16, 0x90
.LBB4_175:                              # %for.inc.1449.for.body.1418_crit_edge
                                        #   in Loop: Header=BB4_171 Depth=2
	movq	(%r12), %rcx
.LBB4_171:                              # %for.body.1418
                                        #   Parent Loop BB4_165 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebx, %ebx
	movq	%rbx, %rdx
	shlq	$4, %rdx
	movq	(%rcx,%rdx), %rsi
	testq	%rsi, %rsi
	je	.LBB4_174
# BB#172:                               # %land.lhs.true.1426
                                        #   in Loop: Header=BB4_171 Depth=2
	cmpl	$0, 8(%rcx,%rdx)
	je	.LBB4_174
# BB#173:                               # %if.then.1434
                                        #   in Loop: Header=BB4_171 Depth=2
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
	movl	(%r15), %eax
.LBB4_174:                              # %for.inc.1449
                                        #   in Loop: Header=BB4_171 Depth=2
	incl	%ebx
	cmpl	%eax, %ebx
	jb	.LBB4_175
# BB#182:                               # %for.end.1451
                                        #   in Loop: Header=BB4_165 Depth=1
	movq	(%r12), %rsi
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
	movq	%r14, %rdx
	movq	56(%rsp), %r14          # 8-byte Reload
.LBB4_183:                              # %if.end.1462
                                        #   in Loop: Header=BB4_165 Depth=1
	movl	216(%rsp), %esi
	testl	%esi, %esi
	je	.LBB4_184
# BB#191:                               # %if.else.1469
                                        #   in Loop: Header=BB4_165 Depth=1
	cmpq	$0, 208(%rsp)
	je	.LBB4_185
# BB#192:                               # %if.then.1482
                                        #   in Loop: Header=BB4_165 Depth=1
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movq	%rdx, %rbx
	movq	$0, (%r12)
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rdi
	movl	$16, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB4_203
# BB#193:                               # %if.end.1507
                                        #   in Loop: Header=BB4_165 Depth=1
	movl	216(%rsp), %edx
	shlq	$4, %rdx
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	memset
	movq	%r15, (%r12)
	movl	216(%rsp), %eax
	movq	%rbx, %rdx
	movl	%eax, 8(%rdx,%r13)
	testl	%eax, %eax
	je	.LBB4_194
# BB#196:                               #   in Loop: Header=BB4_165 Depth=1
	leaq	8(%rdx,%r13), %rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movq	136(%rsp), %r13         # 8-byte Reload
	.align	16, 0x90
.LBB4_197:                              # %for.body.1531
                                        #   Parent Loop BB4_165 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r14d, %r14d
	movq	208(%rsp), %rcx
	movq	%r14, %rbx
	shlq	$4, %rbx
	cmpq	$0, (%rcx,%rbx)
	je	.LBB4_201
# BB#198:                               # %land.lhs.true.1537
                                        #   in Loop: Header=BB4_197 Depth=2
	movl	8(%rcx,%rbx), %esi
	testl	%esi, %esi
	je	.LBB4_201
# BB#199:                               # %if.then.1553
                                        #   in Loop: Header=BB4_197 Depth=2
	movq	$0, (%r15,%rbx)
	movq	24(%r13), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB4_203
# BB#200:                               # %if.end.1584
                                        #   in Loop: Header=BB4_197 Depth=2
	leaq	(%r15,%rbx), %r12
	movq	208(%rsp), %rax
	movl	8(%rax,%rbx), %edx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	memset
	movq	%rbp, (%r12)
	movq	208(%rsp), %rax
	movl	8(%rax,%rbx), %edx
	movl	%edx, 8(%r15,%rbx)
	movq	(%rax,%rbx), %rsi
	movq	%rbp, %rdi
	callq	memcpy
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
.LBB4_201:                              # %for.inc.1613
                                        #   in Loop: Header=BB4_197 Depth=2
	incl	%r14d
	cmpl	%r14d, %eax
	ja	.LBB4_197
# BB#202:                               #   in Loop: Header=BB4_165 Depth=1
	movq	24(%rsp), %rdx          # 8-byte Reload
	jmp	.LBB4_195
.LBB4_184:                              # %if.then.1465
                                        #   in Loop: Header=BB4_165 Depth=1
	movq	$0, 208(%rsp)
	movdqa	208(%rsp), %xmm0
	movdqu	%xmm0, (%r12)
.LBB4_185:                              # %for.inc.1627
                                        #   in Loop: Header=BB4_165 Depth=1
	movq	136(%rsp), %r13         # 8-byte Reload
	jmp	.LBB4_186
.LBB4_194:                              #   in Loop: Header=BB4_165 Depth=1
	movq	136(%rsp), %r13         # 8-byte Reload
.LBB4_195:                              # %for.inc.1627
                                        #   in Loop: Header=BB4_165 Depth=1
	movq	56(%rsp), %r14          # 8-byte Reload
	movq	48(%rsp), %rbp          # 8-byte Reload
	.align	16, 0x90
.LBB4_186:                              # %for.inc.1627
                                        #   in Loop: Header=BB4_165 Depth=1
	incq	%rbp
	cmpl	$2, %ebp
	jb	.LBB4_165
# BB#187:                               # %for.cond.1630.preheader
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
	movq	64(%rsp), %rbp          # 8-byte Reload
	movl	132(%rsp), %r12d        # 4-byte Reload
	.align	16, 0x90
.LBB4_188:                              # %for.body.1634
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rbp), %xmm0
	movdqa	%xmm0, 208(%rsp)
	movq	upd_float_a(,%r15,8), %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	leaq	208(%rsp), %rdx
	callq	param_read_float_array
	testl	%eax, %eax
	js	.LBB4_189
# BB#207:                               # %if.end.1671
                                        #   in Loop: Header=BB4_188 Depth=1
	jne	.LBB4_216
	jmp	.LBB4_208
.LBB4_189:                              # %if.then.1649
                                        #   in Loop: Header=BB4_188 Depth=1
	movl	%r12d, %r13d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	param_read_null
	movl	%eax, %r12d
	testl	%r12d, %r12d
	je	.LBB4_190
# BB#204:                               # %if.end.1658
                                        #   in Loop: Header=BB4_188 Depth=1
	jns	.LBB4_205
# BB#206:                               # %if.then.1661
                                        #   in Loop: Header=BB4_188 Depth=1
	movq	(%r14), %rax
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%r12d, %edx
	callq	*56(%rax)
	cmpl	%r12d, %r13d
	cmovgl	%r12d, %r13d
.LBB4_205:                              #   in Loop: Header=BB4_188 Depth=1
	movl	%r13d, %r12d
	movq	136(%rsp), %r13         # 8-byte Reload
	jmp	.LBB4_216
.LBB4_190:                              # %if.end.1671.thread1208
                                        #   in Loop: Header=BB4_188 Depth=1
	xorl	%esi, %esi
	movl	$16, %edx
	leaq	208(%rsp), %rdi
	callq	memset
	movl	%r13d, %r12d
	movq	136(%rsp), %r13         # 8-byte Reload
.LBB4_208:                              # %if.then.1674
                                        #   in Loop: Header=BB4_188 Depth=1
	movl	%r12d, %eax
	orl	$128, %eax
	testl	%r12d, %r12d
	cmovnsl	%eax, %r12d
	movq	(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB4_211
# BB#209:                               # %land.lhs.true.1684
                                        #   in Loop: Header=BB4_188 Depth=1
	cmpl	$0, 8(%rbp)
	je	.LBB4_211
# BB#210:                               # %if.then.1689
                                        #   in Loop: Header=BB4_188 Depth=1
	movq	24(%r13), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB4_211:                              # %if.end.1700
                                        #   in Loop: Header=BB4_188 Depth=1
	movl	216(%rsp), %esi
	testl	%esi, %esi
	je	.LBB4_212
# BB#213:                               # %if.else.1707
                                        #   in Loop: Header=BB4_188 Depth=1
	cmpq	$0, 208(%rsp)
	je	.LBB4_216
# BB#214:                               # %if.then.1720
                                        #   in Loop: Header=BB4_188 Depth=1
	movq	$0, (%rbp)
	movq	24(%r13), %rax
	movq	200(%rax), %rdi
	movl	$4, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB4_472
# BB#215:                               # %if.end.1745
                                        #   in Loop: Header=BB4_188 Depth=1
	movl	216(%rsp), %edx
	shlq	$2, %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	memset
	movq	%rbx, (%rbp)
	movl	216(%rsp), %edx
	movl	%edx, 8(%rbp)
	movq	208(%rsp), %rsi
	shlq	$2, %rdx
	movq	%rbx, %rdi
	callq	memcpy
	jmp	.LBB4_216
.LBB4_212:                              # %if.then.1703
                                        #   in Loop: Header=BB4_188 Depth=1
	movq	$0, 208(%rsp)
	movdqa	208(%rsp), %xmm0
	movdqu	%xmm0, (%rbp)
	.align	16, 0x90
.LBB4_216:                              # %for.inc.1773
                                        #   in Loop: Header=BB4_188 Depth=1
	incq	%r15
	addq	$16, %rbp
	cmpl	$10, %r15d
	jb	.LBB4_188
# BB#217:                               # %for.end.1775
	testl	%r12d, %r12d
	movq	32(%rsp), %rbp          # 8-byte Reload
	movq	%r14, 56(%rsp)          # 8-byte Spill
	jle	.LBB4_368
# BB#218:                               # %if.then.1778
	movq	112(%rsp), %rcx         # 8-byte Reload
	movl	8(%rcx), %eax
	cmpl	$6, %eax
	jae	.LBB4_219
# BB#220:                               # %if.then.1787
	testl	%eax, %eax
	movq	%rcx, %rax
	je	.LBB4_223
# BB#221:                               # %if.then.1787
	movq	(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB4_223
# BB#222:                               # %if.then.1795
	movq	%rax, %rbx
	movq	24(%r13), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
	movq	%rbx, %rax
.LBB4_223:                              # %if.end.1805
	movq	$0, (%rax)
	movq	%rax, %rbx
	movq	24(%r13), %rax
	movq	200(%rax), %rdi
	movl	$6, %esi
	movl	$4, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB4_467
# BB#224:                               # %cleanup.cont.1826
	xorl	%esi, %esi
	movl	$24, %edx
	movq	%rax, %r14
	movq	%r14, %rdi
	callq	memset
	movq	%r14, (%rbx)
	movl	$6, 8(%rbx)
	movq	%rbx, %rcx
	jmp	.LBB4_225
.LBB4_203:                              # %cleanup.1624
	movl	$-25, %ecx
	jmp	.LBB4_467
.LBB4_150:                              # %cleanup.1198
	movl	$-25, %ecx
	jmp	.LBB4_467
.LBB4_176:                              # %cleanup.1344
	movl	$-25, %ecx
	jmp	.LBB4_467
.LBB4_219:                              # %if.then.1778.if.end.1829_crit_edge
	movq	(%rcx), %r14
.LBB4_225:                              # %if.end.1829
	movl	%r12d, 132(%rsp)        # 4-byte Spill
	cmpl	$0, (%r14)
	jne	.LBB4_233
# BB#226:                               # %if.then.1836
	movl	(%rbp), %eax
	decl	%eax
	cmpl	$6, %eax
	jbe	.LBB4_227
# BB#232:                               # %sw.default
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	%eax, (%r14)
	jmp	.LBB4_233
.LBB4_53:
	movl	$-25, %ecx
	jmp	.LBB4_467
.LBB4_73:
	movl	$-25, %ecx
	jmp	.LBB4_467
.LBB4_472:                              # %cleanup.1770
	movl	$-25, %ecx
	jmp	.LBB4_467
.LBB4_227:                              # %if.then.1836
	jmpq	*.LJTI4_0(,%rax,8)
.LBB4_229:                              # %sw.bb.1841
	movl	$3, (%r14)
	jmp	.LBB4_233
.LBB4_230:                              # %sw.bb.1845
	movl	$4, (%r14)
	jmp	.LBB4_233
.LBB4_231:                              # %sw.bb.1849
	movl	$3, (%r14)
	jmp	.LBB4_233
.LBB4_228:                              # %sw.bb
	movl	$1, (%r14)
.LBB4_233:                              # %if.end.1852
	movl	(%rbp), %eax
	decl	%eax
	cmpl	$7, %eax
	cltq
	leaq	.Lswitch.table(,%rax,4), %rax
	cmovaeq	%r14, %rax
	movl	(%rax), %r11d
	cmpl	$4, %r11d
	movl	$4, %r12d
	cmovlel	%r11d, %r12d
	movq	%rcx, %rax
	cmpl	24(%rax), %r12d
	jbe	.LBB4_251
# BB#234:                               # %if.then.1872
	movq	%r14, 72(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	testl	%r12d, %r12d
	jle	.LBB4_247
# BB#235:                               # %if.then.1875
	movl	%r11d, 48(%rsp)         # 4-byte Spill
	movq	24(%r13), %rax
	movq	200(%rax), %rdi
	movl	$4, %r14d
	movl	$4, %edx
	movl	$.L.str.3, %ecx
	movl	%r12d, %esi
	callq	*88(%rdi)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB4_467
# BB#236:                               # %for.body.1903.lr.ph
	movslq	%r12d, %r15
	leaq	(,%r15,4), %rdx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, %rbx
	callq	memset
	movl	$32, %eax
	xorl	%edx, %edx
	idivl	%r12d
	cmpl	$8, %eax
	movl	$8, %ecx
	cmovlel	%eax, %ecx
	movl	48(%rsp), %r11d         # 4-byte Reload
	cmpl	$5, %r11d
	cmovll	%r11d, %r14d
	testl	%r14d, %r14d
	movq	112(%rsp), %rax         # 8-byte Reload
	je	.LBB4_246
# BB#237:                               # %overflow.checked
	movslq	%r14d, %r8
	xorl	%ebp, %ebp
	movq	%r8, %rdx
	andq	$-8, %rdx
	je	.LBB4_245
# BB#238:                               # %vector.ph
	movq	%rax, %r9
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	cmpl	$5, %r11d
	movl	$4, %esi
	cmovll	%r11d, %esi
	movslq	%esi, %rax
	addq	$-8, %rax
	movl	%eax, %esi
	shrl	$3, %esi
	incl	%esi
	xorl	%edi, %edi
	testb	$3, %sil
	je	.LBB4_241
# BB#239:                               # %vector.body.prol.preheader
	movl	%r11d, %esi
	notl	%esi
	cmpl	$-6, %esi
	movl	$-5, %edi
	cmovgl	%esi, %edi
	movl	$-9, %ebp
	subl	%edi, %ebp
	shrl	$3, %ebp
	incl	%ebp
	andl	$3, %ebp
	negq	%rbp
	xorl	%edi, %edi
.LBB4_240:                              # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%rbx,%rdi,4)
	movdqu	%xmm0, 16(%rbx,%rdi,4)
	addq	$8, %rdi
	incq	%rbp
	jne	.LBB4_240
.LBB4_241:                              # %vector.ph.split
	cmpq	$24, %rax
	jb	.LBB4_244
# BB#242:                               # %vector.ph.split.split
	movl	%r11d, %eax
	notl	%eax
	cmpl	$-6, %eax
	movl	$-5, %esi
	cmovgl	%eax, %esi
	notl	%esi
	movslq	%esi, %rsi
	andq	$-8, %rsi
	subq	%rdi, %rsi
	leaq	112(%rbx,%rdi,4), %rdi
.LBB4_243:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, -112(%rdi)
	movdqu	%xmm0, -96(%rdi)
	movdqu	%xmm0, -80(%rdi)
	movdqu	%xmm0, -64(%rdi)
	movdqu	%xmm0, -48(%rdi)
	movdqu	%xmm0, -32(%rdi)
	movdqu	%xmm0, -16(%rdi)
	movdqu	%xmm0, (%rdi)
	subq	$-128, %rdi
	addq	$-32, %rsi
	jne	.LBB4_243
.LBB4_244:
	movq	%rdx, %rbp
	movq	%r9, %rax
.LBB4_245:                              # %middle.block
	cmpq	%rbp, %r8
	je	.LBB4_247
.LBB4_246:                              # %for.body.1903
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, (%rbx,%rbp,4)
	incq	%rbp
	cmpq	%r15, %rbp
	jl	.LBB4_246
.LBB4_247:                              # %for.end.1908
	movq	16(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB4_250
# BB#248:                               # %land.lhs.true.1912
	cmpl	$0, 24(%rax)
	je	.LBB4_250
# BB#249:                               # %if.then.1916
	movq	%rax, %r14
	movq	24(%r13), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movl	%r11d, %ebp
	callq	*24(%rdi)
	movl	%ebp, %r11d
	movq	%r14, %rax
.LBB4_250:                              # %if.end.1926
	movq	%rbx, 16(%rax)
	movl	%r12d, 24(%rax)
	movq	32(%rsp), %rbp          # 8-byte Reload
	movq	72(%rsp), %r14          # 8-byte Reload
.LBB4_251:                              # %if.end.1931
	movq	%rax, 112(%rsp)         # 8-byte Spill
	cmpl	40(%rax), %r12d
	jbe	.LBB4_273
# BB#252:                               # %for.cond.1937.preheader
	movq	%r14, 72(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	testl	%r12d, %r12d
	movl	$0, %r15d
	jle	.LBB4_269
# BB#253:                               # %for.body.1940.lr.ph
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	16(%rax), %rax
	movslq	%r12d, %r14
	cmpl	$5, %r11d
	movl	$4, %ecx
	cmovll	%r11d, %ecx
	testl	%ecx, %ecx
	movl	$0, %esi
	je	.LBB4_264
# BB#254:                               # %overflow.checked1492
	movslq	%ecx, %rcx
	xorl	%esi, %esi
	movq	%rcx, %rdx
	andq	$-8, %rdx
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	je	.LBB4_263
# BB#255:                               # %vector.body1488.preheader
	cmpl	$5, %r11d
	movl	$4, %esi
	cmovll	%r11d, %esi
	movslq	%esi, %rbx
	addq	$-8, %rbx
	movl	%ebx, %esi
	shrl	$3, %esi
	incl	%esi
	xorl	%edi, %edi
	testb	$3, %sil
	je	.LBB4_256
# BB#257:                               # %vector.body1488.prol.preheader
	movl	%r11d, %esi
	notl	%esi
	cmpl	$-6, %esi
	movl	$-5, %edi
	cmovgl	%esi, %edi
	movl	$-9, %ebp
	subl	%edi, %ebp
	shrl	$3, %ebp
	incl	%ebp
	andl	$3, %ebp
	negq	%rbp
	pxor	%xmm0, %xmm0
	xorl	%edi, %edi
	pxor	%xmm1, %xmm1
.LBB4_258:                              # %vector.body1488.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rax,%rdi,4), %xmm2
	movdqu	16(%rax,%rdi,4), %xmm3
	paddd	%xmm2, %xmm0
	paddd	%xmm3, %xmm1
	addq	$8, %rdi
	incq	%rbp
	jne	.LBB4_258
	jmp	.LBB4_259
.LBB4_256:
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
.LBB4_259:                              # %vector.body1488.preheader.split
	cmpq	$24, %rbx
	jb	.LBB4_262
# BB#260:                               # %vector.body1488.preheader.split.split
	movl	%r11d, %esi
	notl	%esi
	cmpl	$-6, %esi
	movl	$-5, %ebp
	cmovgl	%esi, %ebp
	notl	%ebp
	movslq	%ebp, %rsi
	andq	$-8, %rsi
	subq	%rdi, %rsi
	leaq	112(%rax,%rdi,4), %rdi
.LBB4_261:                              # %vector.body1488
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-112(%rdi), %xmm2
	movdqu	-96(%rdi), %xmm3
	movdqu	-80(%rdi), %xmm4
	movdqu	-64(%rdi), %xmm5
	paddd	%xmm0, %xmm2
	paddd	%xmm1, %xmm3
	paddd	%xmm4, %xmm2
	paddd	%xmm5, %xmm3
	movdqu	-48(%rdi), %xmm4
	movdqu	-32(%rdi), %xmm5
	paddd	%xmm2, %xmm4
	paddd	%xmm3, %xmm5
	movdqu	-16(%rdi), %xmm0
	movdqu	(%rdi), %xmm1
	paddd	%xmm4, %xmm0
	paddd	%xmm5, %xmm1
	subq	$-128, %rdi
	addq	$-32, %rsi
	jne	.LBB4_261
.LBB4_262:
	movq	%rdx, %rsi
.LBB4_263:                              # %middle.block1489
	paddd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddd	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %ebp
	cmpq	%rsi, %rcx
	je	.LBB4_265
.LBB4_264:                              # %for.body.1940
                                        # =>This Inner Loop Header: Depth=1
	addl	(%rax,%rsi,4), %ebp
	incq	%rsi
	cmpq	%r14, %rsi
	jl	.LBB4_264
.LBB4_265:                              # %for.end.1947
	xorl	%r15d, %r15d
	testl	%r12d, %r12d
	jle	.LBB4_269
# BB#266:                               # %if.then.1950
	movl	%r11d, 48(%rsp)         # 4-byte Spill
	movq	24(%r13), %rax
	movq	200(%rax), %rdi
	movl	$4, %edx
	movl	$.L.str.3, %ecx
	movl	%r12d, %esi
	callq	*88(%rdi)
	movq	%rax, %r15
	movl	$-25, %ecx
	testq	%r15, %r15
	je	.LBB4_467
# BB#267:                               # %for.body.1974.lr.ph
	leaq	(,%r14,4), %rdx
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	memset
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	16(%rax), %rax
	movl	48(%rsp), %r11d         # 4-byte Reload
.LBB4_268:                              # %for.body.1974
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ecx
	subl	(%rax,%rbx,4), %ecx
	movl	%ecx, (%r15,%rbx,4)
	subl	(%rax,%rbx,4), %ebp
	incq	%rbx
	cmpq	%r14, %rbx
	jl	.LBB4_268
.LBB4_269:                              # %for.end.1988
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	32(%rax), %rsi
	testq	%rsi, %rsi
	movq	32(%rsp), %rbp          # 8-byte Reload
	je	.LBB4_272
# BB#270:                               # %land.lhs.true.1992
	cmpl	$0, 40(%rax)
	je	.LBB4_272
# BB#271:                               # %if.then.1996
	movl	%r12d, %r14d
	movq	%rax, %r12
	movq	24(%r13), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movl	%r11d, %ebx
	callq	*24(%rdi)
	movl	%ebx, %r11d
	movq	%r12, %rax
	movl	%r14d, %r12d
.LBB4_272:                              # %if.end.2006
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	%r15, 32(%rax)
	movl	%r12d, 40(%rax)
	movq	72(%rsp), %r14          # 8-byte Reload
.LBB4_273:                              # %if.end.2011
	cmpl	$0, 4(%r14)
	jne	.LBB4_293
# BB#274:                               # %for.cond.2016.preheader
	movq	%rbp, %r10
	movl	$1, %eax
	testl	%r12d, %r12d
	jle	.LBB4_292
# BB#275:                               # %for.body.2019.lr.ph
	movq	112(%rsp), %rdx         # 8-byte Reload
	movq	16(%rdx), %rcx
	movq	32(%rdx), %rdx
	movslq	%r12d, %rsi
	cmpl	$5, %r11d
	movl	$4, %ebx
	cmovll	%r11d, %ebx
	xorl	%edi, %edi
	testl	%ebx, %ebx
	movl	$0, %ebp
	je	.LBB4_285
# BB#276:                               # %overflow.checked1523
	movslq	%ebx, %r8
	xorl	%edi, %edi
	movq	%r8, %r9
	andq	$-8, %r9
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	je	.LBB4_284
# BB#277:                               # %vector.body1519.preheader
	cmpl	$5, %r11d
	movl	$4, %edi
	cmovll	%r11d, %edi
	movslq	%edi, %rdi
	addq	$-8, %rdi
	movq	%rdi, %rbx
	shrq	$3, %rbx
	xorl	%ebp, %ebp
	btq	$3, %rdi
	jb	.LBB4_278
# BB#279:                               # %vector.body1519.prol
	movdqu	(%rcx), %xmm0
	movdqu	16(%rcx), %xmm1
	movdqu	(%rdx), %xmm2
	movdqu	16(%rdx), %xmm3
	paddd	%xmm0, %xmm2
	paddd	%xmm1, %xmm3
	pxor	%xmm4, %xmm4
	movdqa	%xmm2, %xmm0
	pcmpgtd	%xmm4, %xmm0
	movdqa	%xmm3, %xmm1
	pcmpgtd	%xmm4, %xmm1
	pand	%xmm2, %xmm0
	pand	%xmm3, %xmm1
	movl	$8, %ebp
	jmp	.LBB4_280
.LBB4_278:
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
.LBB4_280:                              # %vector.body1519.preheader.split
	testq	%rbx, %rbx
	je	.LBB4_283
# BB#281:                               # %vector.body1519.preheader.split.split
	movl	%r11d, %edi
	notl	%edi
	cmpl	$-6, %edi
	movl	$-5, %ebx
	cmovgl	%edi, %ebx
	notl	%ebx
	movslq	%ebx, %rbx
	andq	$-8, %rbx
	subq	%rbp, %rbx
	leaq	48(%rcx,%rbp,4), %rdi
	leaq	48(%rdx,%rbp,4), %rbp
.LBB4_282:                              # %vector.body1519
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rdi), %xmm4
	movdqu	-32(%rdi), %xmm5
	movdqu	-16(%rdi), %xmm9
	movdqu	(%rdi), %xmm8
	movdqu	-48(%rbp), %xmm7
	movdqu	-32(%rbp), %xmm6
	movdqu	-16(%rbp), %xmm3
	movdqu	(%rbp), %xmm2
	paddd	%xmm4, %xmm7
	paddd	%xmm5, %xmm6
	movdqa	%xmm7, %xmm4
	pcmpgtd	%xmm0, %xmm4
	movdqa	%xmm6, %xmm5
	pcmpgtd	%xmm1, %xmm5
	pand	%xmm4, %xmm7
	pandn	%xmm0, %xmm4
	por	%xmm7, %xmm4
	pand	%xmm5, %xmm6
	pandn	%xmm1, %xmm5
	por	%xmm6, %xmm5
	paddd	%xmm9, %xmm3
	paddd	%xmm8, %xmm2
	movdqa	%xmm3, %xmm0
	pcmpgtd	%xmm4, %xmm0
	movdqa	%xmm2, %xmm1
	pcmpgtd	%xmm5, %xmm1
	pand	%xmm0, %xmm3
	pandn	%xmm4, %xmm0
	por	%xmm3, %xmm0
	pand	%xmm1, %xmm2
	pandn	%xmm5, %xmm1
	por	%xmm2, %xmm1
	addq	$64, %rdi
	addq	$64, %rbp
	addq	$-16, %rbx
	jne	.LBB4_282
.LBB4_283:
	movq	%r9, %rdi
.LBB4_284:                              # %middle.block1520
	movdqa	%xmm0, %xmm2
	pcmpgtd	%xmm1, %xmm2
	pand	%xmm2, %xmm0
	pandn	%xmm1, %xmm2
	por	%xmm0, %xmm2
	pshufd	$78, %xmm2, %xmm0       # xmm0 = xmm2[2,3,0,1]
	movdqa	%xmm2, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm2
	pandn	%xmm0, %xmm1
	por	%xmm2, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm1, %ebx
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm1, 192(%rsp)
	movd	%xmm0, %ebp
	testb	$1, 192(%rsp)
	cmovnel	%ebx, %ebp
	cmpq	%rdi, %r8
	je	.LBB4_286
.LBB4_285:                              # %for.body.2019
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rdx,%rdi,4), %ebx
	addl	(%rcx,%rdi,4), %ebx
	cmpl	%ebx, %ebp
	cmovll	%ebx, %ebp
	incq	%rdi
	cmpq	%rsi, %rdi
	jl	.LBB4_285
.LBB4_286:                              # %for.end.2044
	cmpl	$2, %ebp
	jl	.LBB4_292
# BB#287:                               # %if.else.2048
	movl	$2, %eax
	cmpl	$3, %ebp
	jl	.LBB4_292
# BB#288:                               # %if.else.2052
	movl	$4, %eax
	cmpl	$5, %ebp
	jl	.LBB4_292
# BB#289:                               # %if.else.2056
	movl	$8, %eax
	cmpl	$9, %ebp
	jl	.LBB4_292
# BB#290:                               # %if.else.2060
	movl	$16, %eax
	cmpl	$17, %ebp
	jl	.LBB4_292
# BB#291:                               # %if.else.2064
	cmpl	$24, %ebp
	setg	%al
	movzbl	%al, %eax
	leal	24(,%rax,8), %eax
.LBB4_292:                              # %if.end.2074
	movl	%eax, 4(%r14)
	movq	%r10, %rbp
.LBB4_293:                              # %if.end.2076
	cmpl	$0, 8(%r14)
	jne	.LBB4_309
# BB#294:                               # %for.cond.2081.preheader
	xorl	%esi, %esi
	testl	%r12d, %r12d
	jle	.LBB4_306
# BB#295:                               # %for.body.2084.lr.ph
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	16(%rax), %rax
	movslq	%r12d, %rcx
	cmpl	$5, %r11d
	movl	$4, %edx
	cmovll	%r11d, %edx
	xorl	%edi, %edi
	testl	%edx, %edx
	movl	$0, %esi
	je	.LBB4_305
# BB#296:                               # %overflow.checked1563
	movq	%rbp, %r8
	movslq	%edx, %rdx
	xorl	%edi, %edi
	movq	%rdx, %rsi
	andq	$-8, %rsi
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	je	.LBB4_304
# BB#297:                               # %vector.body1559.preheader
	cmpl	$5, %r11d
	movl	$4, %edi
	cmovll	%r11d, %edi
	movslq	%edi, %rdi
	addq	$-8, %rdi
	movq	%rdi, %rbx
	shrq	$3, %rbx
	xorl	%ebp, %ebp
	btq	$3, %rdi
	jb	.LBB4_298
# BB#299:                               # %vector.body1559.prol
	movdqu	(%rax), %xmm2
	movdqu	16(%rax), %xmm3
	pxor	%xmm4, %xmm4
	movdqa	%xmm2, %xmm0
	pcmpgtd	%xmm4, %xmm0
	movdqa	%xmm3, %xmm1
	pcmpgtd	%xmm4, %xmm1
	pand	%xmm2, %xmm0
	pand	%xmm3, %xmm1
	movl	$8, %ebp
	jmp	.LBB4_300
.LBB4_298:
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
.LBB4_300:                              # %vector.body1559.preheader.split
	testq	%rbx, %rbx
	je	.LBB4_303
# BB#301:                               # %vector.body1559.preheader.split.split
	movl	%r11d, %edi
	notl	%edi
	cmpl	$-6, %edi
	movl	$-5, %ebx
	cmovgl	%edi, %ebx
	notl	%ebx
	movslq	%ebx, %rdi
	andq	$-8, %rdi
	subq	%rbp, %rdi
	leaq	48(%rax,%rbp,4), %rbp
.LBB4_302:                              # %vector.body1559
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rbp), %xmm2
	movdqu	-32(%rbp), %xmm3
	movdqu	-16(%rbp), %xmm4
	movdqu	(%rbp), %xmm5
	movdqa	%xmm2, %xmm6
	pcmpgtd	%xmm0, %xmm6
	movdqa	%xmm3, %xmm7
	pcmpgtd	%xmm1, %xmm7
	pand	%xmm6, %xmm2
	pandn	%xmm0, %xmm6
	por	%xmm2, %xmm6
	pand	%xmm7, %xmm3
	pandn	%xmm1, %xmm7
	por	%xmm3, %xmm7
	movdqa	%xmm4, %xmm0
	pcmpgtd	%xmm6, %xmm0
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm7, %xmm1
	pand	%xmm0, %xmm4
	pandn	%xmm6, %xmm0
	por	%xmm4, %xmm0
	pand	%xmm1, %xmm5
	pandn	%xmm7, %xmm1
	por	%xmm5, %xmm1
	addq	$64, %rbp
	addq	$-16, %rdi
	jne	.LBB4_302
.LBB4_303:
	movq	%rsi, %rdi
.LBB4_304:                              # %middle.block1560
	movdqa	%xmm0, %xmm2
	pcmpgtd	%xmm1, %xmm2
	pand	%xmm2, %xmm0
	pandn	%xmm1, %xmm2
	por	%xmm0, %xmm2
	pshufd	$78, %xmm2, %xmm0       # xmm0 = xmm2[2,3,0,1]
	movdqa	%xmm2, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm2
	pandn	%xmm0, %xmm1
	por	%xmm2, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm1, %ebp
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm1, 176(%rsp)
	movd	%xmm0, %esi
	testb	$1, 176(%rsp)
	cmovnel	%ebp, %esi
	cmpq	%rdi, %rdx
	movq	%r8, %rbp
	je	.LBB4_306
.LBB4_305:                              # %for.body.2084
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rax,%rdi,4), %edx
	cmpl	%edx, %esi
	cmovll	%edx, %esi
	incq	%rdi
	cmpq	%rcx, %rdi
	jl	.LBB4_305
.LBB4_306:                              # %for.end.2099
	cmpl	$8, %esi
	movb	$8, %cl
	jg	.LBB4_308
# BB#307:                               # %for.end.2099
	movb	%sil, %cl
.LBB4_308:                              # %for.end.2099
	movl	$1, %eax
	shll	%cl, %eax
	decl	%eax
	movl	%eax, 8(%r14)
.LBB4_309:                              # %if.end.2107
	cmpl	$0, 12(%r14)
	jne	.LBB4_326
# BB#310:                               # %land.lhs.true.2111
	movslq	(%r14), %rax
	cmpq	$2, %rax
	jl	.LBB4_326
# BB#311:                               # %for.body.2120.lr.ph
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	16(%rcx), %rcx
	xorl	%esi, %esi
	testl	%eax, %eax
	movl	$0, %edx
	je	.LBB4_322
# BB#312:                               # %overflow.checked1602
	xorl	%esi, %esi
	movq	%rax, %rdx
	andq	$-8, %rdx
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	je	.LBB4_321
# BB#313:                               # %vector.body1598.preheader
	leaq	-8(%rax), %rbx
	movl	%ebx, %esi
	shrl	$3, %esi
	incl	%esi
	xorl	%edi, %edi
	testb	$3, %sil
	je	.LBB4_314
# BB#315:                               # %vector.body1598.prol.preheader
	movq	%rbp, %rsi
	leal	-8(%rax), %ebp
	shrl	$3, %ebp
	incl	%ebp
	andl	$3, %ebp
	negq	%rbp
	pxor	%xmm0, %xmm0
	xorl	%edi, %edi
	pxor	%xmm1, %xmm1
.LBB4_316:                              # %vector.body1598.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rcx,%rdi,4), %xmm2
	movdqu	16(%rcx,%rdi,4), %xmm3
	paddd	%xmm2, %xmm0
	paddd	%xmm3, %xmm1
	addq	$8, %rdi
	incq	%rbp
	jne	.LBB4_316
	jmp	.LBB4_317
.LBB4_314:
	movq	%rbp, %rsi
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
.LBB4_317:                              # %vector.body1598.preheader.split
	cmpq	$24, %rbx
	movq	%rsi, %rbp
	jb	.LBB4_320
# BB#318:                               # %vector.body1598.preheader.split.split
	movq	%rax, %rsi
	andq	$-8, %rsi
	subq	%rdi, %rsi
	leaq	112(%rcx,%rdi,4), %rdi
.LBB4_319:                              # %vector.body1598
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-112(%rdi), %xmm2
	movdqu	-96(%rdi), %xmm3
	movdqu	-80(%rdi), %xmm4
	movdqu	-64(%rdi), %xmm5
	paddd	%xmm0, %xmm2
	paddd	%xmm1, %xmm3
	paddd	%xmm4, %xmm2
	paddd	%xmm5, %xmm3
	movdqu	-48(%rdi), %xmm4
	movdqu	-32(%rdi), %xmm5
	paddd	%xmm2, %xmm4
	paddd	%xmm3, %xmm5
	movdqu	-16(%rdi), %xmm0
	movdqu	(%rdi), %xmm1
	paddd	%xmm4, %xmm0
	paddd	%xmm5, %xmm1
	subq	$-128, %rdi
	addq	$-32, %rsi
	jne	.LBB4_319
.LBB4_320:
	movq	%rdx, %rsi
.LBB4_321:                              # %middle.block1599
	paddd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddd	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %edx
	cmpq	%rsi, %rax
	je	.LBB4_323
.LBB4_322:                              # %for.body.2120
                                        # =>This Inner Loop Header: Depth=1
	addl	(%rcx,%rsi,4), %edx
	incq	%rsi
	cmpq	%rax, %rsi
	jl	.LBB4_322
.LBB4_323:                              # %for.end.2128
	cmpl	$8, %edx
	movb	$8, %cl
	jg	.LBB4_325
# BB#324:                               # %for.end.2128
	movb	%dl, %cl
.LBB4_325:                              # %for.end.2128
	movl	$1, %eax
	shll	%cl, %eax
	decl	%eax
	movl	%eax, 12(%r14)
.LBB4_326:                              # %if.end.2136
	cmpl	$0, 16(%r14)
	jne	.LBB4_342
# BB#327:                               # %for.cond.2141.preheader
	testl	%r12d, %r12d
	jle	.LBB4_341
# BB#328:                               # %for.body.2144.lr.ph
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	16(%rax), %rax
	movslq	%r12d, %rcx
	cmpl	$5, %r11d
	movl	$4, %edx
	cmovll	%r11d, %edx
	xorl	%edi, %edi
	testl	%edx, %edx
	movl	$0, %esi
	je	.LBB4_338
# BB#329:                               # %overflow.checked1639
	movq	%rbp, %r8
	movslq	%edx, %rdx
	xorl	%edi, %edi
	movq	%rdx, %rsi
	andq	$-8, %rsi
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	je	.LBB4_337
# BB#330:                               # %vector.body1635.preheader
	cmpl	$5, %r11d
	movl	$4, %edi
	cmovll	%r11d, %edi
	movslq	%edi, %rdi
	addq	$-8, %rdi
	movq	%rdi, %rbx
	shrq	$3, %rbx
	xorl	%ebp, %ebp
	btq	$3, %rdi
	jb	.LBB4_331
# BB#332:                               # %vector.body1635.prol
	movdqu	(%rax), %xmm2
	movdqu	16(%rax), %xmm3
	pxor	%xmm4, %xmm4
	movdqa	%xmm2, %xmm0
	pcmpgtd	%xmm4, %xmm0
	movdqa	%xmm3, %xmm1
	pcmpgtd	%xmm4, %xmm1
	pand	%xmm2, %xmm0
	pand	%xmm3, %xmm1
	movl	$8, %ebp
	jmp	.LBB4_333
.LBB4_331:
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
.LBB4_333:                              # %vector.body1635.preheader.split
	testq	%rbx, %rbx
	je	.LBB4_336
# BB#334:                               # %vector.body1635.preheader.split.split
	movl	%r11d, %edi
	notl	%edi
	cmpl	$-6, %edi
	movl	$-5, %ebx
	cmovgl	%edi, %ebx
	notl	%ebx
	movslq	%ebx, %rdi
	andq	$-8, %rdi
	subq	%rbp, %rdi
	leaq	48(%rax,%rbp,4), %rbp
.LBB4_335:                              # %vector.body1635
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rbp), %xmm2
	movdqu	-32(%rbp), %xmm3
	movdqu	-16(%rbp), %xmm4
	movdqu	(%rbp), %xmm5
	movdqa	%xmm2, %xmm6
	pcmpgtd	%xmm0, %xmm6
	movdqa	%xmm3, %xmm7
	pcmpgtd	%xmm1, %xmm7
	pand	%xmm6, %xmm2
	pandn	%xmm0, %xmm6
	por	%xmm2, %xmm6
	pand	%xmm7, %xmm3
	pandn	%xmm1, %xmm7
	por	%xmm3, %xmm7
	movdqa	%xmm4, %xmm0
	pcmpgtd	%xmm6, %xmm0
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm7, %xmm1
	pand	%xmm0, %xmm4
	pandn	%xmm6, %xmm0
	por	%xmm4, %xmm0
	pand	%xmm1, %xmm5
	pandn	%xmm7, %xmm1
	por	%xmm5, %xmm1
	addq	$64, %rbp
	addq	$-16, %rdi
	jne	.LBB4_335
.LBB4_336:
	movq	%rsi, %rdi
.LBB4_337:                              # %middle.block1636
	movdqa	%xmm0, %xmm2
	pcmpgtd	%xmm1, %xmm2
	pand	%xmm2, %xmm0
	pandn	%xmm1, %xmm2
	por	%xmm0, %xmm2
	pshufd	$78, %xmm2, %xmm0       # xmm0 = xmm2[2,3,0,1]
	movdqa	%xmm2, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm2
	pandn	%xmm0, %xmm1
	por	%xmm2, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm1, %ebp
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm1, 160(%rsp)
	movd	%xmm0, %esi
	testb	$1, 160(%rsp)
	cmovnel	%ebp, %esi
	cmpq	%rdi, %rdx
	movq	%r8, %rbp
	je	.LBB4_339
.LBB4_338:                              # %for.body.2144
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rax,%rdi,4), %edx
	cmpl	%edx, %esi
	cmovll	%edx, %esi
	incq	%rdi
	cmpq	%rcx, %rdi
	jl	.LBB4_338
.LBB4_339:                              # %for.end.2159
	cmpl	$3, %esi
	jl	.LBB4_341
# BB#340:                               # %if.then.2162
	movl	$256, 16(%r14)          # imm = 0x100
	jmp	.LBB4_342
.LBB4_341:                              # %if.else.2164
	movl	$2, 16(%r14)
.LBB4_342:                              # %if.end.2167
	movl	(%r14), %eax
	cmpl	$0, 20(%r14)
	jne	.LBB4_359
# BB#343:                               # %if.end.2167
	cmpl	$2, %eax
	jl	.LBB4_359
# BB#344:                               # %for.cond.2176.preheader
	testl	%r12d, %r12d
	jle	.LBB4_358
# BB#345:                               # %for.body.2179.lr.ph
	movq	%rbp, %r9
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	16(%rcx), %rcx
	movslq	%r12d, %rdx
	cmpl	$5, %r11d
	movl	$4, %ebp
	cmovll	%r11d, %ebp
	xorl	%edi, %edi
	testl	%ebp, %ebp
	movl	$0, %esi
	je	.LBB4_355
# BB#346:                               # %overflow.checked1679
	movslq	%ebp, %r8
	xorl	%edi, %edi
	movq	%r8, %rsi
	andq	$-8, %rsi
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	je	.LBB4_354
# BB#347:                               # %vector.body1675.preheader
	cmpl	$5, %r11d
	movl	$4, %edi
	cmovll	%r11d, %edi
	movslq	%edi, %rdi
	addq	$-8, %rdi
	movq	%rdi, %rbp
	shrq	$3, %rbp
	xorl	%ebx, %ebx
	btq	$3, %rdi
	jb	.LBB4_348
# BB#349:                               # %vector.body1675.prol
	movdqu	(%rcx), %xmm2
	movdqu	16(%rcx), %xmm3
	pxor	%xmm4, %xmm4
	movdqa	%xmm2, %xmm0
	pcmpgtd	%xmm4, %xmm0
	movdqa	%xmm3, %xmm1
	pcmpgtd	%xmm4, %xmm1
	pand	%xmm2, %xmm0
	pand	%xmm3, %xmm1
	movl	$8, %ebx
	jmp	.LBB4_350
.LBB4_348:
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
.LBB4_350:                              # %vector.body1675.preheader.split
	testq	%rbp, %rbp
	je	.LBB4_353
# BB#351:                               # %vector.body1675.preheader.split.split
	notl	%r11d
	cmpl	$-6, %r11d
	movl	$-5, %edi
	cmovgl	%r11d, %edi
	notl	%edi
	movslq	%edi, %rdi
	andq	$-8, %rdi
	subq	%rbx, %rdi
	leaq	48(%rcx,%rbx,4), %rbx
.LBB4_352:                              # %vector.body1675
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rbx), %xmm2
	movdqu	-32(%rbx), %xmm3
	movdqu	-16(%rbx), %xmm4
	movdqu	(%rbx), %xmm5
	movdqa	%xmm2, %xmm6
	pcmpgtd	%xmm0, %xmm6
	movdqa	%xmm3, %xmm7
	pcmpgtd	%xmm1, %xmm7
	pand	%xmm6, %xmm2
	pandn	%xmm0, %xmm6
	por	%xmm2, %xmm6
	pand	%xmm7, %xmm3
	pandn	%xmm1, %xmm7
	por	%xmm3, %xmm7
	movdqa	%xmm4, %xmm0
	pcmpgtd	%xmm6, %xmm0
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm7, %xmm1
	pand	%xmm0, %xmm4
	pandn	%xmm6, %xmm0
	por	%xmm4, %xmm0
	pand	%xmm1, %xmm5
	pandn	%xmm7, %xmm1
	por	%xmm5, %xmm1
	addq	$64, %rbx
	addq	$-16, %rdi
	jne	.LBB4_352
.LBB4_353:
	movq	%rsi, %rdi
.LBB4_354:                              # %middle.block1676
	movdqa	%xmm0, %xmm2
	pcmpgtd	%xmm1, %xmm2
	pand	%xmm2, %xmm0
	pandn	%xmm1, %xmm2
	por	%xmm0, %xmm2
	pshufd	$78, %xmm2, %xmm0       # xmm0 = xmm2[2,3,0,1]
	movdqa	%xmm2, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm2
	pandn	%xmm0, %xmm1
	por	%xmm2, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm1, %ebp
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm1, 144(%rsp)
	movd	%xmm0, %esi
	testb	$1, 144(%rsp)
	cmovnel	%ebp, %esi
	cmpq	%rdi, %r8
	je	.LBB4_356
.LBB4_355:                              # %for.body.2179
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rcx,%rdi,4), %ebp
	cmpl	%ebp, %esi
	cmovll	%ebp, %esi
	incq	%rdi
	cmpq	%rdx, %rdi
	jl	.LBB4_355
.LBB4_356:                              # %for.end.2194
	cmpl	$3, %esi
	movq	%r9, %rbp
	jl	.LBB4_358
# BB#357:                               # %if.then.2197
	movl	$256, 20(%r14)          # imm = 0x100
	jmp	.LBB4_359
.LBB4_358:                              # %if.else.2199
	movl	$2, 20(%r14)
.LBB4_359:                              # %if.end.2202
	movl	%eax, 100(%r13)
	movw	4(%r14), %ax
	movw	%ax, 108(%r13)
	movzwl	8(%r14), %eax
	movl	%eax, 112(%r13)
	movzwl	12(%r14), %eax
	movl	%eax, 116(%r13)
	movzwl	16(%r14), %eax
	movl	%eax, 120(%r13)
	movzwl	20(%r14), %eax
	movl	%eax, 124(%r13)
	leaq	224(%rsp), %rdx
	movl	$.L.str.119, %esi
	movq	56(%rsp), %rdi          # 8-byte Reload
	callq	param_read_float_array
	testl	%eax, %eax
	jne	.LBB4_363
# BB#360:                               # %land.lhs.true.2228
	cmpl	$2, 232(%rsp)
	jne	.LBB4_363
# BB#361:                               # %land.lhs.true.2232
	movq	224(%rsp), %rax
	testq	%rax, %rax
	je	.LBB4_363
# BB#362:                               # %if.then.2236
	movl	(%rax), %ecx
	movl	%ecx, 892(%r13)
	addq	$4, %rax
	jmp	.LBB4_364
.LBB4_363:                              # %if.else.2245
	movl	884(%r13), %eax
	movl	%eax, 892(%r13)
	leaq	888(%r13), %rax
.LBB4_364:                              # %if.end.2253
	movl	132(%rsp), %r12d        # 4-byte Reload
	movl	(%rax), %eax
	movl	%eax, 896(%r13)
	leaq	224(%rsp), %rdx
	movl	$.L.str.120, %esi
	movq	56(%rsp), %rdi          # 8-byte Reload
	callq	param_read_float_array
	testl	%eax, %eax
	jne	.LBB4_368
# BB#365:                               # %land.lhs.true.2257
	cmpl	$4, 232(%rsp)
	jne	.LBB4_368
# BB#366:                               # %land.lhs.true.2261
	movq	224(%rsp), %rax
	testq	%rax, %rax
	je	.LBB4_368
# BB#367:                               # %if.then.2265
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	892(%r13), %xmm0
	movaps	.LCPI4_0(%rip), %xmm1   # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm1, %xmm0
	movss	.LCPI4_1(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm0
	movss	%xmm0, 900(%r13)
	movss	12(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	mulss	896(%r13), %xmm0
	xorps	%xmm1, %xmm0
	divss	%xmm2, %xmm0
	movss	%xmm0, 904(%r13)
.LBB4_368:                              # %if.end.2295
	movq	%r13, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	gdev_prn_put_params
	testl	%eax, %eax
	cmovsl	%eax, %r12d
	movq	%r13, %rcx
	movq	18488(%rcx), %r13
	testq	%r13, %r13
	je	.LBB4_369
# BB#370:                               # %land.lhs.true.2303
	movl	832(%rcx), %eax
	movq	%rcx, %rbx
	cmpl	524(%r13), %eax
	jne	.LBB4_373
# BB#371:                               # %lor.lhs.false
	movl	836(%rbx), %eax
	cmpl	528(%r13), %eax
	jne	.LBB4_373
# BB#372:
	movq	%rbp, %r14
	jmp	.LBB4_374
.LBB4_373:                              # %if.then.2310
	movq	%rbp, %r14
	orl	$256, %r12d             # imm = 0x100
	jmp	.LBB4_374
.LBB4_369:
	movq	%rbp, %r14
	movq	%rcx, %rbx
.LBB4_374:                              # %if.end.2312
	testl	%r12d, %r12d
	movq	40(%rsp), %rbp          # 8-byte Reload
	jle	.LBB4_426
# BB#375:                               # %land.lhs.true.2315
	movq	%rbx, %rdi
	cmpl	$0, 84(%rdi)
	je	.LBB4_378
# BB#376:                               # %if.then.2317
	movq	%rdi, %rbx
	callq	gs_closedevice
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB4_426
# BB#377:                               # %if.then.2317.if.then.2326_crit_edge
	movq	%rbx, %rdi
	movq	18488(%rdi), %r13
.LBB4_378:                              # %if.then.2326
	movq	%rdi, %rbp
	testq	%r13, %r13
	je	.LBB4_379
# BB#381:                               # %if.else.2350
	movq	(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB4_383
# BB#382:                               # %for.cond.2356.preheader
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB4_383:                              # %if.end.2372
	movq	$0, (%r13)
	movq	8(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB4_385
# BB#384:                               # %for.cond.2379.preheader
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB4_385:                              # %if.end.2395
	movq	$0, 8(%r13)
	movq	16(%r13), %rax
	movl	$8, %ebx
	testq	%rax, %rax
	jne	.LBB4_386
	jmp	.LBB4_392
.LBB4_390:                              # %for.inc.2431.for.body.2406_crit_edge
                                        #   in Loop: Header=BB4_386 Depth=1
	movq	16(%r13), %rax
.LBB4_386:                              # %for.body.2406
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rax,%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB4_389
# BB#387:                               # %land.lhs.true.2412
                                        #   in Loop: Header=BB4_386 Depth=1
	cmpl	$0, (%rax,%rbx)
	je	.LBB4_389
# BB#388:                               # %if.then.2418
                                        #   in Loop: Header=BB4_386 Depth=1
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB4_389:                              # %for.inc.2431
                                        #   in Loop: Header=BB4_386 Depth=1
	addq	$16, %rbx
	cmpq	$232, %rbx
	jne	.LBB4_390
# BB#391:                               # %for.end.2433
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movq	16(%r13), %rsi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB4_392:                              # %if.end.2442
	movq	$0, 16(%r13)
	movq	24(%r13), %rax
	movl	$8, %ebx
	testq	%rax, %rax
	jne	.LBB4_393
	jmp	.LBB4_399
.LBB4_397:                              # %for.inc.2478.for.body.2453_crit_edge
                                        #   in Loop: Header=BB4_393 Depth=1
	movq	24(%r13), %rax
.LBB4_393:                              # %for.body.2453
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rax,%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB4_396
# BB#394:                               # %land.lhs.true.2459
                                        #   in Loop: Header=BB4_393 Depth=1
	cmpl	$0, (%rax,%rbx)
	je	.LBB4_396
# BB#395:                               # %if.then.2465
                                        #   in Loop: Header=BB4_393 Depth=1
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB4_396:                              # %for.inc.2478
                                        #   in Loop: Header=BB4_393 Depth=1
	addq	$16, %rbx
	cmpq	$184, %rbx
	jne	.LBB4_397
# BB#398:                               # %for.end.2480
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movq	24(%r13), %rsi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB4_399:                              # %if.end.2489
	movq	$0, 24(%r13)
	movq	32(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB4_417
# BB#400:                               # %for.cond.2496.preheader
	movq	(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB4_409
# BB#401:                               # %land.lhs.true.2506
	cmpl	$0, 8(%rsi)
	je	.LBB4_409
# BB#402:
	xorl	%ebx, %ebx
	jmp	.LBB4_403
.LBB4_407:                              # %for.inc.2556.for.body.2522_crit_edge
                                        #   in Loop: Header=BB4_403 Depth=1
	movq	(%rsi), %rcx
.LBB4_403:                              # %for.body.2522
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebx
	movq	%rbx, %rdx
	shlq	$4, %rdx
	movq	(%rcx,%rdx), %rax
	testq	%rax, %rax
	je	.LBB4_406
# BB#404:                               # %land.lhs.true.2531
                                        #   in Loop: Header=BB4_403 Depth=1
	cmpl	$0, 8(%rcx,%rdx)
	je	.LBB4_406
# BB#405:                               # %if.then.2540
                                        #   in Loop: Header=BB4_403 Depth=1
	movq	24(%rbp), %rcx
	movq	200(%rcx), %rdi
	movl	$.L.str.3, %edx
	movq	%rax, %rsi
	callq	*24(%rdi)
	movq	32(%r13), %rsi
.LBB4_406:                              # %for.inc.2556
                                        #   in Loop: Header=BB4_403 Depth=1
	incl	%ebx
	cmpl	8(%rsi), %ebx
	jb	.LBB4_407
# BB#408:                               # %for.end.2558
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movq	(%rsi), %rsi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
	movq	32(%r13), %rsi
.LBB4_409:                              # %for.inc.2571
	movq	16(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB4_469
# BB#410:                               # %land.lhs.true.2506.1
	cmpl	$0, 24(%rsi)
	je	.LBB4_469
# BB#411:
	xorl	%ebx, %ebx
	jmp	.LBB4_412
.LBB4_416:                              # %for.inc.2556.1.for.body.2522.1_crit_edge
                                        #   in Loop: Header=BB4_412 Depth=1
	movq	16(%rsi), %rcx
.LBB4_412:                              # %for.body.2522.1
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebx
	movq	%rbx, %rdx
	shlq	$4, %rdx
	movq	(%rcx,%rdx), %rax
	testq	%rax, %rax
	je	.LBB4_415
# BB#413:                               # %land.lhs.true.2531.1
                                        #   in Loop: Header=BB4_412 Depth=1
	cmpl	$0, 8(%rcx,%rdx)
	je	.LBB4_415
# BB#414:                               # %if.then.2540.1
                                        #   in Loop: Header=BB4_412 Depth=1
	movq	24(%rbp), %rcx
	movq	200(%rcx), %rdi
	movl	$.L.str.3, %edx
	movq	%rax, %rsi
	callq	*24(%rdi)
	movq	32(%r13), %rsi
.LBB4_415:                              # %for.inc.2556.1
                                        #   in Loop: Header=BB4_412 Depth=1
	incl	%ebx
	cmpl	24(%rsi), %ebx
	jb	.LBB4_416
# BB#468:                               # %for.end.2558.1
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movq	16(%rsi), %rsi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
	movq	32(%r13), %rsi
.LBB4_469:                              # %for.inc.2571.1
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB4_417:                              # %if.end.2582
	movq	$0, 32(%r13)
	movq	40(%r13), %rax
	movl	$8, %ebx
	testq	%rax, %rax
	jne	.LBB4_418
	jmp	.LBB4_424
.LBB4_422:                              # %for.inc.2618.for.body.2593_crit_edge
                                        #   in Loop: Header=BB4_418 Depth=1
	movq	40(%r13), %rax
.LBB4_418:                              # %for.body.2593
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rax,%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB4_421
# BB#419:                               # %land.lhs.true.2599
                                        #   in Loop: Header=BB4_418 Depth=1
	cmpl	$0, (%rax,%rbx)
	je	.LBB4_421
# BB#420:                               # %if.then.2605
                                        #   in Loop: Header=BB4_418 Depth=1
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB4_421:                              # %for.inc.2618
                                        #   in Loop: Header=BB4_418 Depth=1
	addq	$16, %rbx
	cmpq	$168, %rbx
	jne	.LBB4_422
# BB#423:                               # %for.end.2620
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movq	40(%r13), %rsi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB4_424:                              # %if.end.2629
	movq	$0, 40(%r13)
	jmp	.LBB4_425
.LBB4_426:                              # %if.else.2645
	movq	%rbx, %r15
	movdqa	80(%rsp), %xmm0         # 16-byte Reload
	movdqu	%xmm0, 892(%r15)
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	%eax, 96(%r15)
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	%eax, 100(%r15)
	leaq	240(%rsp), %rsi
	movl	$712, %edx              # imm = 0x2C8
	movq	%rbp, %rdi
	callq	memcpy
	movq	%r14, %rsi
	testq	%rsi, %rsi
	je	.LBB4_428
# BB#427:                               # %for.cond.2663.preheader
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB4_428:                              # %if.end.2678
	movq	120(%rsp), %rsi         # 8-byte Reload
	testq	%rsi, %rsi
	movq	16(%rsp), %r14          # 8-byte Reload
	je	.LBB4_430
# BB#429:                               # %for.cond.2683.preheader
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB4_430:                              # %if.end.2698
	movl	$8, %ebx
	movq	112(%rsp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB4_436
.LBB4_431:                              # %for.body.2707
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rax,%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB4_434
# BB#432:                               # %land.lhs.true.2712
                                        #   in Loop: Header=BB4_431 Depth=1
	cmpl	$0, (%rax,%rbx)
	je	.LBB4_434
# BB#433:                               # %if.then.2717
                                        #   in Loop: Header=BB4_431 Depth=1
	movq	%rax, %rbp
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
	movq	%rbp, %rax
.LBB4_434:                              # %for.inc.2729
                                        #   in Loop: Header=BB4_431 Depth=1
	addq	$16, %rbx
	cmpq	$232, %rbx
	jne	.LBB4_431
# BB#435:                               # %for.end.2731
	movq	%rax, %rsi
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB4_436:                              # %if.end.2739
	movl	$8, %ebx
	testq	%r14, %r14
	je	.LBB4_442
.LBB4_437:                              # %for.body.2748
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%r14,%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB4_440
# BB#438:                               # %land.lhs.true.2753
                                        #   in Loop: Header=BB4_437 Depth=1
	cmpl	$0, (%r14,%rbx)
	je	.LBB4_440
# BB#439:                               # %if.then.2758
                                        #   in Loop: Header=BB4_437 Depth=1
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB4_440:                              # %for.inc.2770
                                        #   in Loop: Header=BB4_437 Depth=1
	addq	$16, %rbx
	cmpq	$184, %rbx
	jne	.LBB4_437
# BB#441:                               # %for.end.2772
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
.LBB4_442:                              # %if.end.2780
	movq	24(%rsp), %rbx          # 8-byte Reload
	testq	%rbx, %rbx
	movq	64(%rsp), %rbp          # 8-byte Reload
	je	.LBB4_460
# BB#443:                               # %for.cond.2785.preheader
	movq	(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB4_452
# BB#444:                               # %land.lhs.true.2794
	movl	8(%rbx), %eax
	testl	%eax, %eax
	je	.LBB4_452
# BB#445:
	movq	%rbx, %r14
	xorl	%ebx, %ebx
	jmp	.LBB4_446
.LBB4_450:                              # %for.inc.2839.for.body.2808_crit_edge
                                        #   in Loop: Header=BB4_446 Depth=1
	movq	(%r14), %rcx
.LBB4_446:                              # %for.body.2808
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebx
	movq	%rbx, %rdx
	shlq	$4, %rdx
	movq	(%rcx,%rdx), %rsi
	testq	%rsi, %rsi
	je	.LBB4_449
# BB#447:                               # %land.lhs.true.2816
                                        #   in Loop: Header=BB4_446 Depth=1
	cmpl	$0, 8(%rcx,%rdx)
	je	.LBB4_449
# BB#448:                               # %if.then.2824
                                        #   in Loop: Header=BB4_446 Depth=1
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
	movl	8(%r14), %eax
.LBB4_449:                              # %for.inc.2839
                                        #   in Loop: Header=BB4_446 Depth=1
	incl	%ebx
	cmpl	%eax, %ebx
	jb	.LBB4_450
# BB#451:                               # %for.end.2841
	movq	%r14, %rbx
	movq	(%rbx), %rsi
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB4_452:                              # %for.inc.2853
	movq	16(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB4_471
# BB#453:                               # %land.lhs.true.2794.1
	movl	24(%rbx), %eax
	testl	%eax, %eax
	je	.LBB4_471
# BB#454:
	movq	%rbx, %r14
	xorl	%ebx, %ebx
	jmp	.LBB4_455
.LBB4_459:                              # %for.inc.2839.1.for.body.2808.1_crit_edge
                                        #   in Loop: Header=BB4_455 Depth=1
	movq	16(%r14), %rcx
.LBB4_455:                              # %for.body.2808.1
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebx
	movq	%rbx, %rdx
	shlq	$4, %rdx
	movq	(%rcx,%rdx), %rsi
	testq	%rsi, %rsi
	je	.LBB4_458
# BB#456:                               # %land.lhs.true.2816.1
                                        #   in Loop: Header=BB4_455 Depth=1
	cmpl	$0, 8(%rcx,%rdx)
	je	.LBB4_458
# BB#457:                               # %if.then.2824.1
                                        #   in Loop: Header=BB4_455 Depth=1
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
	movl	24(%r14), %eax
.LBB4_458:                              # %for.inc.2839.1
                                        #   in Loop: Header=BB4_455 Depth=1
	incl	%ebx
	cmpl	%eax, %ebx
	jb	.LBB4_459
# BB#470:                               # %for.end.2841.1
	movq	%r14, %rbx
	movq	16(%rbx), %rsi
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB4_471:                              # %for.inc.2853.1
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
.LBB4_460:                              # %if.end.2863
	movl	$8, %ebx
	testq	%rbp, %rbp
	je	.LBB4_466
.LBB4_461:                              # %for.body.2872
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp,%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB4_464
# BB#462:                               # %land.lhs.true.2877
                                        #   in Loop: Header=BB4_461 Depth=1
	cmpl	$0, (%rbp,%rbx)
	je	.LBB4_464
# BB#463:                               # %if.then.2882
                                        #   in Loop: Header=BB4_461 Depth=1
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB4_464:                              # %for.inc.2894
                                        #   in Loop: Header=BB4_461 Depth=1
	addq	$16, %rbx
	cmpq	$168, %rbx
	jne	.LBB4_461
# BB#465:                               # %for.end.2896
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	jmp	.LBB4_466
.LBB4_379:                              # %if.then.2329
	movq	$0, 18488(%rbp)
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$1, %esi
	movl	$632, %edx              # imm = 0x278
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %r13
	movl	$-25, %ecx
	testq	%r13, %r13
	je	.LBB4_467
# BB#380:                               # %if.then.2341
	xorl	%esi, %esi
	movl	$632, %edx              # imm = 0x278
	movq	%r13, %rdi
	callq	memset
	movq	%r13, 18488(%rbp)
.LBB4_425:                              # %if.end.2631
	movq	%r14, (%r13)
	movl	128(%rsp), %eax         # 4-byte Reload
	movl	%eax, 520(%r13)
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	%rax, 8(%r13)
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	%rax, 16(%r13)
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rax, 24(%r13)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, 32(%r13)
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	%rax, 40(%r13)
	movq	24(%rbp), %rax
	movq	%rax, 624(%r13)
	movq	%rbp, %r15
	xorl	%r12d, %r12d
.LBB4_466:                              # %if.end.2905
	movq	%r15, %rdi
	callq	upd_procs_map
	movl	%r12d, %ecx
.LBB4_467:                              # %cleanup.2907
	movl	%ecx, %eax
	addq	$952, %rsp              # imm = 0x3B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	upd_put_params, .Lfunc_end4-upd_put_params
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_228
	.quad	.LBB4_229
	.quad	.LBB4_229
	.quad	.LBB4_230
	.quad	.LBB4_230
	.quad	.LBB4_231
	.quad	.LBB4_231

	.text
	.align	16, 0x90
	.type	upd_close_map,@function
upd_close_map:                          # @upd_close_map
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp54:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp56:
	.cfi_def_cfa_offset 32
.Ltmp57:
	.cfi_offset %rbx, -24
.Ltmp58:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	18488(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB5_10
# BB#1:                                 # %for.cond.preheader
	movq	48(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_3
# BB#2:                                 # %if.then.3
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
.LBB5_3:                                # %if.end
	movq	$0, 48(%rbx)
	movq	$0, 56(%rbx)
	movl	$0, 68(%rbx)
	movl	$0, 76(%rbx)
	movq	80(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_5
# BB#4:                                 # %if.then.3.1
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
.LBB5_5:                                # %if.end.1
	movq	$0, 80(%rbx)
	movq	$0, 88(%rbx)
	movl	$0, 100(%rbx)
	movl	$0, 108(%rbx)
	movq	112(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_7
# BB#6:                                 # %if.then.3.2
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
.LBB5_7:                                # %if.end.2
	movq	$0, 112(%rbx)
	movq	$0, 120(%rbx)
	movl	$0, 132(%rbx)
	movl	$0, 140(%rbx)
	movq	144(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_9
# BB#8:                                 # %if.then.3.3
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
.LBB5_9:                                # %if.end.3
	movq	$0, 144(%rbx)
	movq	$0, 152(%rbx)
	movl	$0, 164(%rbx)
	movl	$0, 172(%rbx)
	andb	$-17, 521(%rbx)
.LBB5_10:                               # %if.end.26
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	upd_procs_map           # TAILCALL
.Lfunc_end5:
	.size	upd_close_map, .Lfunc_end5-upd_close_map
	.cfi_endproc

	.align	16, 0x90
	.type	upd_procs_map,@function
upd_procs_map:                          # @upd_procs_map
	.cfi_startproc
# BB#0:                                 # %entry
	movq	18488(%rdi), %rax
	testq	%rax, %rax
	je	.LBB6_12
# BB#1:                                 # %land.lhs.true
	testb	$16, 521(%rax)
	je	.LBB6_12
# BB#2:                                 # %if.end
	movq	(%rax), %rax
	movl	(%rax), %eax
	decl	%eax
	cmpl	$6, %eax
	jbe	.LBB6_3
.LBB6_12:                               # %sw.default
	movq	$gx_default_w_b_map_rgb_color, 1552(%rdi)
	movq	$gx_default_w_b_map_color_rgb, 1560(%rdi)
	movq	$gx_default_w_b_map_rgb_color, 1184(%rdi)
	movq	$gx_default_map_cmyk_color, 1264(%rdi)
	movq	$gx_default_w_b_map_color_rgb, 1192(%rdi)
	retq
.LBB6_3:                                # %if.end
	jmpq	*.LJTI6_0(,%rax,8)
.LBB6_4:                                # %sw.bb
	movq	$upd_rgb_1color, 1552(%rdi)
	movq	$upd_1color_rgb, 1560(%rdi)
	movq	$upd_rgb_1color, 1184(%rdi)
	movq	$gx_default_map_cmyk_color, 1264(%rdi)
	movq	$upd_1color_rgb, 1192(%rdi)
	retq
.LBB6_5:                                # %sw.bb.8
	movq	$upd_rgb_4color, 1552(%rdi)
	movq	$upd_4color_rgb, 1560(%rdi)
	movq	$upd_rgb_4color, 1184(%rdi)
	movq	$gx_default_map_cmyk_color, 1264(%rdi)
	movq	$upd_4color_rgb, 1192(%rdi)
	retq
.LBB6_6:                                # %sw.bb.19
	movq	$upd_rgb_3color, 1552(%rdi)
	movq	$upd_3color_rgb, 1560(%rdi)
	movq	$upd_rgb_3color, 1184(%rdi)
	movq	$gx_default_map_cmyk_color, 1264(%rdi)
	movq	$upd_3color_rgb, 1192(%rdi)
	retq
.LBB6_7:                                # %sw.bb.30
	movq	$upd_cmyk_icolor, 1552(%rdi)
	movq	$upd_icolor_rgb, 1560(%rdi)
	movq	$gx_default_w_b_map_rgb_color, 1184(%rdi)
	movq	$upd_cmyk_icolor, 1264(%rdi)
	movq	$upd_icolor_rgb, 1192(%rdi)
	retq
.LBB6_8:                                # %sw.bb.41
	movq	$upd_cmyk_kcolor, 1552(%rdi)
	movq	$upd_kcolor_rgb, 1560(%rdi)
	movq	$gx_default_w_b_map_rgb_color, 1184(%rdi)
	movq	$upd_cmyk_kcolor, 1264(%rdi)
	movq	$upd_kcolor_rgb, 1192(%rdi)
	retq
.LBB6_9:                                # %sw.bb.52
	movq	$upd_rgb_ovcolor, 1552(%rdi)
	movq	$upd_icolor_rgb, 1560(%rdi)
	movq	$upd_rgb_ovcolor, 1184(%rdi)
	jmp	.LBB6_10
.LBB6_11:                               # %sw.bb.63
	movq	$upd_rgb_novcolor, 1552(%rdi)
	movq	$upd_icolor_rgb, 1560(%rdi)
	movq	$upd_rgb_novcolor, 1184(%rdi)
.LBB6_10:                               # %sw.epilog
	movq	$gx_default_map_cmyk_color, 1264(%rdi)
	movq	$upd_icolor_rgb, 1192(%rdi)
	retq
.Lfunc_end6:
	.size	upd_procs_map, .Lfunc_end6-upd_procs_map
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_4
	.quad	.LBB6_5
	.quad	.LBB6_6
	.quad	.LBB6_7
	.quad	.LBB6_8
	.quad	.LBB6_9
	.quad	.LBB6_11

	.text
	.align	16, 0x90
	.type	upd_rgb_1color,@function
upd_rgb_1color:                         # @upd_rgb_1color
	.cfi_startproc
# BB#0:                                 # %entry
	movq	18488(%rdi), %r10
	movl	68(%r10), %eax
	testl	%eax, %eax
	je	.LBB7_1
# BB#2:                                 # %if.else.i
	movw	(%rsi), %di
	cmpl	$15, %eax
	ja	.LBB7_11
# BB#3:                                 # %if.then.5.i
	movzwl	%di, %r9d
	movq	48(%r10), %r8
	movl	56(%r10), %eax
	incl	%eax
	movl	%eax, %ecx
	andl	$-2, %ecx
	leaq	(%rcx,%r8), %rsi
	shrl	$2, %eax
	je	.LBB7_10
# BB#4:
	movzwl	%di, %edi
	.align	16, 0x90
.LBB7_5:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rsi), %edx
	cmpl	%edi, %edx
	jae	.LBB7_7
# BB#6:                                 # %if.then.17.i
                                        #   in Loop: Header=BB7_5 Depth=1
	movslq	%eax, %rdx
	jmp	.LBB7_9
	.align	16, 0x90
.LBB7_7:                                # %if.else.20.i
                                        #   in Loop: Header=BB7_5 Depth=1
	movzwl	-2(%rsi), %ecx
	cmpl	%edi, %ecx
	jbe	.LBB7_14
# BB#8:                                 # %if.then.25.i
                                        #   in Loop: Header=BB7_5 Depth=1
	movslq	%eax, %rdx
	negq	%rdx
.LBB7_9:                                # %if.end.41.i
                                        #   in Loop: Header=BB7_5 Depth=1
	leaq	(%rsi,%rdx,2), %rsi
	sarl	%eax
	testl	%eax, %eax
	jg	.LBB7_5
	jmp	.LBB7_10
.LBB7_1:
	xorl	%edi, %edi
	jmp	.LBB7_11
.LBB7_14:                               # %if.else.28.i
	leaq	-2(%rsi), %rax
	movl	%r9d, %edi
	subl	%ecx, %edi
	subl	%r9d, %edx
	cmpl	%edx, %edi
	cmovlq	%rax, %rsi
.LBB7_10:                               # %while.end.i
	movzwl	-2(%rsi), %eax
	movzwl	(%rsi), %ecx
	subl	%r9d, %ecx
	subl	%eax, %r9d
	cmpl	%ecx, %r9d
	leaq	-2(%rsi), %rdi
	cmovgel	%esi, %edi
	subl	%r8d, %edi
	shrl	%edi
.LBB7_11:                               # %if.end.59.i
	cmpl	$0, 76(%r10)
	jne	.LBB7_13
# BB#12:                                # %if.then.60.i
	movl	56(%r10), %eax
	subl	%edi, %eax
	movw	%ax, %di
.LBB7_13:                               # %upd_truncate.exit
	movzwl	%di, %eax
	movb	60(%r10), %cl
	shll	%cl, %eax
	retq
.Lfunc_end7:
	.size	upd_rgb_1color, .Lfunc_end7-upd_rgb_1color
	.cfi_endproc

	.align	16, 0x90
	.type	upd_1color_rgb,@function
upd_1color_rgb:                         # @upd_1color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	18488(%rdi), %rax
	movb	60(%rax), %cl
	shrq	%cl, %rsi
	movl	56(%rax), %ecx
	andl	%ecx, %esi
	cmpl	$0, 76(%rax)
	jne	.LBB8_2
# BB#1:
	subl	%esi, %ecx
	movl	%ecx, %esi
.LBB8_2:                                # %select.end
	cmpl	$15, 68(%rax)
	ja	.LBB8_4
# BB#3:                                 # %if.then.6.i
	movl	%esi, %ecx
	movq	48(%rax), %rax
	movzwl	(%rax,%rcx,2), %esi
.LBB8_4:                                # %upd_expand.exit
	movw	%si, (%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end8:
	.size	upd_1color_rgb, .Lfunc_end8-upd_1color_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	upd_rgb_4color,@function
upd_rgb_4color:                         # @upd_rgb_4color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp61:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp62:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp63:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp64:
	.cfi_def_cfa_offset 56
.Ltmp65:
	.cfi_offset %rbx, -56
.Ltmp66:
	.cfi_offset %r12, -48
.Ltmp67:
	.cfi_offset %r13, -40
.Ltmp68:
	.cfi_offset %r14, -32
.Ltmp69:
	.cfi_offset %r15, -24
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	18488(%rdi), %r13
	movw	(%rsi), %dx
	movw	2(%rsi), %r14w
	movzwl	%dx, %r11d
	movzwl	%r14w, %r9d
	movw	4(%rsi), %r15w
	cmpl	%r9d, %r11d
	jne	.LBB9_16
# BB#1:                                 # %entry
	movzwl	%r15w, %eax
	movzwl	%r14w, %ecx
	cmpl	%eax, %ecx
	jne	.LBB9_16
# BB#2:                                 # %if.then
	movl	68(%r13), %eax
	testl	%eax, %eax
	je	.LBB9_3
# BB#4:                                 # %if.else.i
	cmpl	$15, %eax
	ja	.LBB9_13
# BB#5:                                 # %if.then.5.i
	movq	48(%r13), %rcx
	movl	56(%r13), %eax
	incl	%eax
	movl	%eax, %esi
	andl	$-2, %esi
	leaq	(%rsi,%rcx), %rsi
	shrl	$2, %eax
	je	.LBB9_12
# BB#6:
	movzwl	%dx, %edx
	.align	16, 0x90
.LBB9_7:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rsi), %edi
	cmpl	%edx, %edi
	jae	.LBB9_9
# BB#8:                                 # %if.then.17.i
                                        #   in Loop: Header=BB9_7 Depth=1
	movslq	%eax, %rdi
	jmp	.LBB9_11
	.align	16, 0x90
.LBB9_9:                                # %if.else.20.i
                                        #   in Loop: Header=BB9_7 Depth=1
	movzwl	-2(%rsi), %ebp
	cmpl	%edx, %ebp
	jbe	.LBB9_68
# BB#10:                                # %if.then.25.i
                                        #   in Loop: Header=BB9_7 Depth=1
	movslq	%eax, %rdi
	negq	%rdi
.LBB9_11:                               # %if.end.41.i
                                        #   in Loop: Header=BB9_7 Depth=1
	leaq	(%rsi,%rdi,2), %rsi
	sarl	%eax
	testl	%eax, %eax
	jg	.LBB9_7
	jmp	.LBB9_12
.LBB9_16:                               # %if.else
	movzwl	%dx, %ebp
	movzwl	%r14w, %r12d
	cmpl	%ebp, %r12d
	movw	%dx, %ax
	cmovbw	%r14w, %ax
	movzwl	%ax, %ecx
	movzwl	%r15w, %r10d
	cmpl	%r10d, %ecx
	cmovaew	%r15w, %cx
	movl	68(%r13), %eax
	testl	%eax, %eax
	je	.LBB9_17
# BB#18:                                # %if.else.i.239
	cmpl	$15, %eax
	ja	.LBB9_28
# BB#19:                                # %if.then.5.i.248
	movq	48(%r13), %rdi
	movq	%rdi, -8(%rsp)          # 8-byte Spill
	movl	56(%r13), %eax
	incl	%eax
	movl	%eax, %esi
	andl	$-2, %esi
	leaq	(%rsi,%rdi), %rbx
	shrl	$2, %eax
	je	.LBB9_26
# BB#20:
	movzwl	%cx, %esi
	.align	16, 0x90
.LBB9_21:                               # %while.body.i.252
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rbx), %edi
	subl	%esi, %edi
	jae	.LBB9_23
# BB#22:                                # %if.then.17.i.254
                                        #   in Loop: Header=BB9_21 Depth=1
	movslq	%eax, %rdi
	jmp	.LBB9_25
	.align	16, 0x90
.LBB9_23:                               # %if.else.20.i.257
                                        #   in Loop: Header=BB9_21 Depth=1
	movzwl	-2(%rbx), %r8d
	cmpl	%esi, %r8d
	jbe	.LBB9_69
# BB#24:                                # %if.then.25.i.260
                                        #   in Loop: Header=BB9_21 Depth=1
	movslq	%eax, %rdi
	negq	%rdi
.LBB9_25:                               # %if.end.41.i.273
                                        #   in Loop: Header=BB9_21 Depth=1
	leaq	(%rbx,%rdi,2), %rbx
	sarl	%eax
	testl	%eax, %eax
	jg	.LBB9_21
.LBB9_26:                               # %while.end.loopexit.i.276
	movzwl	%cx, %esi
	jmp	.LBB9_27
.LBB9_3:
	xorl	%edx, %edx
	jmp	.LBB9_13
.LBB9_17:
	xorl	%ecx, %ecx
	jmp	.LBB9_28
.LBB9_68:                               # %if.else.28.i
	leaq	-2(%rsi), %rax
	movl	%r11d, %edx
	subl	%ebp, %edx
	subl	%r11d, %edi
	cmpl	%edi, %edx
	cmovlq	%rax, %rsi
.LBB9_12:                               # %while.end.i
	movzwl	-2(%rsi), %eax
	movzwl	(%rsi), %edx
	subl	%r11d, %edx
	subl	%eax, %r11d
	cmpl	%edx, %r11d
	leaq	-2(%rsi), %rdx
	cmovgel	%esi, %edx
	subl	%ecx, %edx
	shrl	%edx
.LBB9_13:                               # %if.end.59.i
	cmpl	$0, 76(%r13)
	jne	.LBB9_15
# BB#14:                                # %if.then.60.i
	movl	56(%r13), %eax
	subl	%edx, %eax
	movw	%ax, %dx
.LBB9_15:                               # %upd_truncate.exit
	movzwl	%dx, %edx
	movb	60(%r13), %cl
	shll	%cl, %edx
	jmp	.LBB9_67
.LBB9_69:                               # %if.else.28.i.268
	leaq	-2(%rbx), %rax
	movl	%esi, %ecx
	subl	%r8d, %ecx
	cmpl	%edi, %ecx
	cmovlq	%rax, %rbx
.LBB9_27:                               # %while.end.i.290
	movzwl	-2(%rbx), %eax
	movzwl	(%rbx), %ecx
	subl	%esi, %ecx
	subl	%eax, %esi
	cmpl	%ecx, %esi
	leaq	-2(%rbx), %rcx
	cmovgel	%ebx, %ecx
	movq	-8(%rsp), %rax          # 8-byte Reload
	subl	%eax, %ecx
	shrl	%ecx
.LBB9_28:                               # %if.end.59.i.294
	cmpl	$0, 76(%r13)
	jne	.LBB9_30
# BB#29:                                # %if.then.60.i.299
	movl	56(%r13), %eax
	subl	%ecx, %eax
	movw	%ax, %cx
.LBB9_30:                               # %upd_truncate.exit304
	movzwl	%cx, %r8d
	movb	60(%r13), %cl
	shll	%cl, %r8d
	movl	100(%r13), %eax
	testl	%eax, %eax
	je	.LBB9_31
# BB#32:                                # %if.else.i.170
	cmpl	$15, %eax
	ja	.LBB9_40
# BB#33:                                # %if.then.5.i.179
	movq	80(%r13), %rsi
	movl	88(%r13), %eax
	incl	%eax
	movl	%eax, %ecx
	andl	$-2, %ecx
	leaq	(%rcx,%rsi), %rcx
	shrl	$2, %eax
	je	.LBB9_39
	.align	16, 0x90
.LBB9_34:                               # %while.body.i.183
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rcx), %edx
	cmpl	%ebp, %edx
	jae	.LBB9_36
# BB#35:                                # %if.then.17.i.185
                                        #   in Loop: Header=BB9_34 Depth=1
	movslq	%eax, %rdx
	jmp	.LBB9_38
	.align	16, 0x90
.LBB9_36:                               # %if.else.20.i.188
                                        #   in Loop: Header=BB9_34 Depth=1
	movzwl	-2(%rcx), %edi
	cmpl	%ebp, %edi
	jbe	.LBB9_70
# BB#37:                                # %if.then.25.i.191
                                        #   in Loop: Header=BB9_34 Depth=1
	movslq	%eax, %rdx
	negq	%rdx
.LBB9_38:                               # %if.end.41.i.204
                                        #   in Loop: Header=BB9_34 Depth=1
	leaq	(%rcx,%rdx,2), %rcx
	sarl	%eax
	testl	%eax, %eax
	jg	.LBB9_34
	jmp	.LBB9_39
.LBB9_31:
	xorl	%edx, %edx
	jmp	.LBB9_40
.LBB9_70:                               # %if.else.28.i.199
	leaq	-2(%rcx), %rax
	subl	%r11d, %edx
	movl	%r11d, %ebx
	subl	%edi, %ebx
	cmpl	%edx, %ebx
	cmovlq	%rax, %rcx
.LBB9_39:                               # %while.end.i.221
	movzwl	-2(%rcx), %eax
	movzwl	(%rcx), %edx
	subl	%r11d, %edx
	subl	%eax, %r11d
	cmpl	%edx, %r11d
	leaq	-2(%rcx), %rdx
	cmovgel	%ecx, %edx
	subl	%esi, %edx
	shrl	%edx
.LBB9_40:                               # %if.end.59.i.225
	cmpl	$0, 108(%r13)
	jne	.LBB9_42
# BB#41:                                # %if.then.60.i.230
	movl	88(%r13), %eax
	subl	%edx, %eax
	movw	%ax, %dx
.LBB9_42:                               # %upd_truncate.exit235
	movzwl	%dx, %edx
	movb	92(%r13), %cl
	shll	%cl, %edx
	movl	132(%r13), %eax
	testl	%eax, %eax
	je	.LBB9_43
# BB#44:                                # %if.else.i.101
	cmpl	$15, %eax
	ja	.LBB9_52
# BB#45:                                # %if.then.5.i.110
	movq	112(%r13), %rcx
	movl	120(%r13), %eax
	incl	%eax
	movl	%eax, %esi
	andl	$-2, %esi
	leaq	(%rsi,%rcx), %rbp
	shrl	$2, %eax
	je	.LBB9_51
	.align	16, 0x90
.LBB9_46:                               # %while.body.i.114
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rbp), %esi
	cmpl	%r12d, %esi
	jae	.LBB9_48
# BB#47:                                # %if.then.17.i.116
                                        #   in Loop: Header=BB9_46 Depth=1
	movslq	%eax, %rsi
	jmp	.LBB9_50
	.align	16, 0x90
.LBB9_48:                               # %if.else.20.i.119
                                        #   in Loop: Header=BB9_46 Depth=1
	movzwl	-2(%rbp), %edi
	cmpl	%r12d, %edi
	jbe	.LBB9_71
# BB#49:                                # %if.then.25.i.122
                                        #   in Loop: Header=BB9_46 Depth=1
	movslq	%eax, %rsi
	negq	%rsi
.LBB9_50:                               # %if.end.41.i.135
                                        #   in Loop: Header=BB9_46 Depth=1
	leaq	(%rbp,%rsi,2), %rbp
	sarl	%eax
	testl	%eax, %eax
	jg	.LBB9_46
	jmp	.LBB9_51
.LBB9_43:
	xorl	%r14d, %r14d
	jmp	.LBB9_52
.LBB9_71:                               # %if.else.28.i.130
	leaq	-2(%rbp), %rax
	movl	%r9d, %ebx
	subl	%edi, %ebx
	subl	%r9d, %esi
	cmpl	%esi, %ebx
	cmovlq	%rax, %rbp
.LBB9_51:                               # %while.end.i.152
	movzwl	-2(%rbp), %eax
	movzwl	(%rbp), %esi
	subl	%r9d, %esi
	subl	%eax, %r9d
	cmpl	%esi, %r9d
	leaq	-2(%rbp), %r14
	cmovgel	%ebp, %r14d
	subl	%ecx, %r14d
	shrl	%r14d
.LBB9_52:                               # %if.end.59.i.156
	cmpl	$0, 140(%r13)
	jne	.LBB9_54
# BB#53:                                # %if.then.60.i.161
	movl	120(%r13), %eax
	subl	%r14d, %eax
	movw	%ax, %r14w
.LBB9_54:                               # %upd_truncate.exit166
	movzwl	%r14w, %esi
	movb	124(%r13), %cl
	shll	%cl, %esi
	movl	164(%r13), %eax
	testl	%eax, %eax
	je	.LBB9_55
# BB#56:                                # %if.else.i.32
	cmpl	$15, %eax
	ja	.LBB9_64
# BB#57:                                # %if.then.5.i.41
	movzwl	%r15w, %edi
	movq	144(%r13), %r9
	movl	152(%r13), %eax
	incl	%eax
	movl	%eax, %ecx
	andl	$-2, %ecx
	leaq	(%rcx,%r9), %rbp
	shrl	$2, %eax
	je	.LBB9_63
	.align	16, 0x90
.LBB9_58:                               # %while.body.i.45
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rbp), %ebx
	cmpl	%r10d, %ebx
	jae	.LBB9_60
# BB#59:                                # %if.then.17.i.47
                                        #   in Loop: Header=BB9_58 Depth=1
	movslq	%eax, %rbx
	jmp	.LBB9_62
	.align	16, 0x90
.LBB9_60:                               # %if.else.20.i.50
                                        #   in Loop: Header=BB9_58 Depth=1
	movzwl	-2(%rbp), %ecx
	cmpl	%r10d, %ecx
	jbe	.LBB9_72
# BB#61:                                # %if.then.25.i.53
                                        #   in Loop: Header=BB9_58 Depth=1
	movslq	%eax, %rbx
	negq	%rbx
.LBB9_62:                               # %if.end.41.i.66
                                        #   in Loop: Header=BB9_58 Depth=1
	leaq	(%rbp,%rbx,2), %rbp
	sarl	%eax
	testl	%eax, %eax
	jg	.LBB9_58
	jmp	.LBB9_63
.LBB9_55:
	xorl	%r15d, %r15d
	jmp	.LBB9_64
.LBB9_72:                               # %if.else.28.i.61
	leaq	-2(%rbp), %r10
	movl	%edi, %eax
	subl	%ecx, %eax
	subl	%edi, %ebx
	cmpl	%ebx, %eax
	cmovlq	%r10, %rbp
.LBB9_63:                               # %while.end.i.83
	movzwl	-2(%rbp), %eax
	movzwl	(%rbp), %ecx
	subl	%edi, %ecx
	subl	%eax, %edi
	cmpl	%ecx, %edi
	leaq	-2(%rbp), %r15
	cmovgel	%ebp, %r15d
	subl	%r9d, %r15d
	shrl	%r15d
.LBB9_64:                               # %if.end.59.i.87
	cmpl	$0, 172(%r13)
	jne	.LBB9_66
# BB#65:                                # %if.then.60.i.92
	movl	152(%r13), %eax
	subl	%r15d, %eax
	movw	%ax, %r15w
.LBB9_66:                               # %upd_truncate.exit97
	movzwl	%r15w, %eax
	movb	156(%r13), %cl
	shll	%cl, %eax
	orl	%r8d, %edx
	orl	%esi, %edx
	orl	%eax, %edx
.LBB9_67:                               # %if.end.39
	movl	%edx, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	upd_rgb_4color, .Lfunc_end9-upd_rgb_4color
	.cfi_endproc

	.align	16, 0x90
	.type	upd_4color_rgb,@function
upd_4color_rgb:                         # @upd_4color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	18488(%rdi), %r9
	movb	92(%r9), %cl
	movq	%rsi, %r8
	shrq	%cl, %r8
	movl	88(%r9), %eax
	andl	%eax, %r8d
	cmpl	$0, 108(%r9)
	jne	.LBB10_2
# BB#1:
	subl	%r8d, %eax
	movl	%eax, %r8d
.LBB10_2:                               # %select.end
	cmpl	$15, 100(%r9)
	ja	.LBB10_4
# BB#3:                                 # %if.then.6.i
	movl	%r8d, %eax
	movq	80(%r9), %rcx
	movzwl	(%rcx,%rax,2), %r8d
.LBB10_4:                               # %upd_expand.exit
	movw	%r8w, (%rdx)
	movb	124(%r9), %cl
	movq	%rsi, %rdi
	shrq	%cl, %rdi
	movl	120(%r9), %eax
	andl	%eax, %edi
	cmpl	$0, 140(%r9)
	jne	.LBB10_6
# BB#5:
	subl	%edi, %eax
	movl	%eax, %edi
.LBB10_6:                               # %select.end80
	cmpl	$15, 132(%r9)
	ja	.LBB10_8
# BB#7:                                 # %if.then.6.i.74
	movl	%edi, %eax
	movq	112(%r9), %rcx
	movzwl	(%rcx,%rax,2), %edi
.LBB10_8:                               # %upd_expand.exit78
	movw	%di, 2(%rdx)
	movb	156(%r9), %cl
	movq	%rsi, %rax
	shrq	%cl, %rax
	movl	152(%r9), %ecx
	andl	%ecx, %eax
	cmpl	$0, 172(%r9)
	jne	.LBB10_10
# BB#9:
	subl	%eax, %ecx
	movl	%ecx, %eax
.LBB10_10:                              # %select.end82
	cmpl	$15, 164(%r9)
	ja	.LBB10_12
# BB#11:                                # %if.then.6.i.53
	movl	%eax, %eax
	movq	144(%r9), %rcx
	movzwl	(%rcx,%rax,2), %eax
.LBB10_12:                              # %upd_expand.exit57
	movw	%ax, 4(%rdx)
	orl	%eax, %edi
	orw	%di, %r8w
	jne	.LBB10_18
# BB#13:                                # %if.then
	movb	60(%r9), %cl
	shrq	%cl, %rsi
	movl	56(%r9), %eax
	andl	%eax, %esi
	cmpl	$0, 76(%r9)
	jne	.LBB10_15
# BB#14:
	subl	%esi, %eax
	movl	%eax, %esi
.LBB10_15:                              # %select.end84
	cmpl	$15, 68(%r9)
	ja	.LBB10_17
# BB#16:                                # %if.then.6.i.32
	movl	%esi, %eax
	movq	48(%r9), %rcx
	movzwl	(%rcx,%rax,2), %esi
.LBB10_17:                              # %upd_expand.exit36
	movw	%si, 4(%rdx)
	movw	%si, 2(%rdx)
	movw	%si, (%rdx)
.LBB10_18:                              # %if.end
	xorl	%eax, %eax
	retq
.Lfunc_end10:
	.size	upd_4color_rgb, .Lfunc_end10-upd_4color_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	upd_rgb_3color,@function
upd_rgb_3color:                         # @upd_rgb_3color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp72:
	.cfi_def_cfa_offset 24
.Ltmp73:
	.cfi_offset %rbx, -24
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	18488(%rdi), %rdx
	movw	2(%rsi), %r11w
	movw	4(%rsi), %r10w
	movl	68(%rdx), %eax
	testl	%eax, %eax
	je	.LBB11_1
# BB#2:                                 # %if.else.i
	movw	(%rsi), %si
	cmpl	$15, %eax
	ja	.LBB11_11
# BB#3:                                 # %if.then.5.i
	movzwl	%si, %r9d
	movq	48(%rdx), %r8
	movl	56(%rdx), %edi
	incl	%edi
	movl	%edi, %eax
	andl	$-2, %eax
	leaq	(%rax,%r8), %rcx
	shrl	$2, %edi
	je	.LBB11_10
# BB#4:
	movzwl	%si, %esi
	.align	16, 0x90
.LBB11_5:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rcx), %eax
	cmpl	%esi, %eax
	jae	.LBB11_7
# BB#6:                                 # %if.then.17.i
                                        #   in Loop: Header=BB11_5 Depth=1
	movslq	%edi, %rax
	jmp	.LBB11_9
	.align	16, 0x90
.LBB11_7:                               # %if.else.20.i
                                        #   in Loop: Header=BB11_5 Depth=1
	movzwl	-2(%rcx), %ebx
	cmpl	%esi, %ebx
	jbe	.LBB11_40
# BB#8:                                 # %if.then.25.i
                                        #   in Loop: Header=BB11_5 Depth=1
	movslq	%edi, %rax
	negq	%rax
.LBB11_9:                               # %if.end.41.i
                                        #   in Loop: Header=BB11_5 Depth=1
	leaq	(%rcx,%rax,2), %rcx
	sarl	%edi
	testl	%edi, %edi
	jg	.LBB11_5
	jmp	.LBB11_10
.LBB11_1:
	xorl	%esi, %esi
	jmp	.LBB11_11
.LBB11_40:                              # %if.else.28.i
	leaq	-2(%rcx), %rsi
	movl	%r9d, %edi
	subl	%ebx, %edi
	subl	%r9d, %eax
	cmpl	%eax, %edi
	cmovlq	%rsi, %rcx
.LBB11_10:                              # %while.end.i
	movzwl	-2(%rcx), %eax
	movzwl	(%rcx), %esi
	subl	%r9d, %esi
	subl	%eax, %r9d
	cmpl	%esi, %r9d
	leaq	-2(%rcx), %rsi
	cmovgel	%ecx, %esi
	subl	%r8d, %esi
	shrl	%esi
.LBB11_11:                              # %if.end.59.i
	cmpl	$0, 76(%rdx)
	jne	.LBB11_13
# BB#12:                                # %if.then.60.i
	movl	56(%rdx), %eax
	subl	%esi, %eax
	movw	%ax, %si
.LBB11_13:                              # %upd_truncate.exit
	movzwl	%si, %r9d
	movb	60(%rdx), %cl
	shll	%cl, %r9d
	movl	100(%rdx), %eax
	testl	%eax, %eax
	je	.LBB11_14
# BB#15:                                # %if.else.i.84
	cmpl	$15, %eax
	ja	.LBB11_24
# BB#16:                                # %if.then.5.i.93
	movzwl	%r11w, %ebp
	movq	80(%rdx), %r8
	movl	88(%rdx), %edi
	incl	%edi
	movl	%edi, %eax
	andl	$-2, %eax
	leaq	(%rax,%r8), %rsi
	shrl	$2, %edi
	je	.LBB11_23
# BB#17:
	movzwl	%r11w, %eax
	.align	16, 0x90
.LBB11_18:                              # %while.body.i.97
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rsi), %ecx
	cmpl	%eax, %ecx
	jae	.LBB11_20
# BB#19:                                # %if.then.17.i.99
                                        #   in Loop: Header=BB11_18 Depth=1
	movslq	%edi, %rcx
	jmp	.LBB11_22
	.align	16, 0x90
.LBB11_20:                              # %if.else.20.i.102
                                        #   in Loop: Header=BB11_18 Depth=1
	movzwl	-2(%rsi), %ebx
	cmpl	%eax, %ebx
	jbe	.LBB11_41
# BB#21:                                # %if.then.25.i.105
                                        #   in Loop: Header=BB11_18 Depth=1
	movslq	%edi, %rcx
	negq	%rcx
.LBB11_22:                              # %if.end.41.i.118
                                        #   in Loop: Header=BB11_18 Depth=1
	leaq	(%rsi,%rcx,2), %rsi
	sarl	%edi
	testl	%edi, %edi
	jg	.LBB11_18
	jmp	.LBB11_23
.LBB11_14:
	xorl	%r11d, %r11d
	jmp	.LBB11_24
.LBB11_41:                              # %if.else.28.i.113
	leaq	-2(%rsi), %rax
	movl	%ebp, %edi
	subl	%ebx, %edi
	subl	%ebp, %ecx
	cmpl	%ecx, %edi
	cmovlq	%rax, %rsi
.LBB11_23:                              # %while.end.i.135
	movzwl	-2(%rsi), %eax
	movzwl	(%rsi), %ecx
	subl	%ebp, %ecx
	subl	%eax, %ebp
	cmpl	%ecx, %ebp
	leaq	-2(%rsi), %r11
	cmovgel	%esi, %r11d
	subl	%r8d, %r11d
	shrl	%r11d
.LBB11_24:                              # %if.end.59.i.139
	cmpl	$0, 108(%rdx)
	jne	.LBB11_26
# BB#25:                                # %if.then.60.i.144
	movl	88(%rdx), %eax
	subl	%r11d, %eax
	movw	%ax, %r11w
.LBB11_26:                              # %upd_truncate.exit149
	movzwl	%r11w, %eax
	movb	92(%rdx), %cl
	shll	%cl, %eax
	movl	132(%rdx), %ecx
	testl	%ecx, %ecx
	je	.LBB11_27
# BB#28:                                # %if.else.i.15
	cmpl	$15, %ecx
	ja	.LBB11_37
# BB#29:                                # %if.then.5.i.24
	movzwl	%r10w, %r11d
	movq	112(%rdx), %r8
	movl	120(%rdx), %edi
	incl	%edi
	movl	%edi, %ecx
	andl	$-2, %ecx
	leaq	(%rcx,%r8), %rsi
	shrl	$2, %edi
	je	.LBB11_36
# BB#30:
	movzwl	%r10w, %ecx
	.align	16, 0x90
.LBB11_31:                              # %while.body.i.28
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rsi), %ebx
	cmpl	%ecx, %ebx
	jae	.LBB11_33
# BB#32:                                # %if.then.17.i.30
                                        #   in Loop: Header=BB11_31 Depth=1
	movslq	%edi, %rbx
	jmp	.LBB11_35
	.align	16, 0x90
.LBB11_33:                              # %if.else.20.i.33
                                        #   in Loop: Header=BB11_31 Depth=1
	movzwl	-2(%rsi), %ebp
	cmpl	%ecx, %ebp
	jbe	.LBB11_42
# BB#34:                                # %if.then.25.i.36
                                        #   in Loop: Header=BB11_31 Depth=1
	movslq	%edi, %rbx
	negq	%rbx
.LBB11_35:                              # %if.end.41.i.49
                                        #   in Loop: Header=BB11_31 Depth=1
	leaq	(%rsi,%rbx,2), %rsi
	sarl	%edi
	testl	%edi, %edi
	jg	.LBB11_31
	jmp	.LBB11_36
.LBB11_27:
	xorl	%r10d, %r10d
	jmp	.LBB11_37
.LBB11_42:                              # %if.else.28.i.44
	leaq	-2(%rsi), %rcx
	movl	%r11d, %edi
	subl	%ebp, %edi
	subl	%r11d, %ebx
	cmpl	%ebx, %edi
	cmovlq	%rcx, %rsi
.LBB11_36:                              # %while.end.i.66
	movzwl	-2(%rsi), %ecx
	movzwl	(%rsi), %edi
	subl	%r11d, %edi
	subl	%ecx, %r11d
	cmpl	%edi, %r11d
	leaq	-2(%rsi), %r10
	cmovgel	%esi, %r10d
	subl	%r8d, %r10d
	shrl	%r10d
.LBB11_37:                              # %if.end.59.i.70
	cmpl	$0, 140(%rdx)
	jne	.LBB11_39
# BB#38:                                # %if.then.60.i.75
	movl	120(%rdx), %ecx
	subl	%r10d, %ecx
	movw	%cx, %r10w
.LBB11_39:                              # %upd_truncate.exit80
	movzwl	%r10w, %esi
	movb	124(%rdx), %cl
	shll	%cl, %esi
	orl	%r9d, %eax
	orl	%esi, %eax
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	upd_rgb_3color, .Lfunc_end11-upd_rgb_3color
	.cfi_endproc

	.align	16, 0x90
	.type	upd_3color_rgb,@function
upd_3color_rgb:                         # @upd_3color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	18488(%rdi), %rax
	movb	60(%rax), %cl
	movq	%rsi, %rdi
	shrq	%cl, %rdi
	movl	56(%rax), %ecx
	andl	%ecx, %edi
	cmpl	$0, 76(%rax)
	jne	.LBB12_2
# BB#1:
	subl	%edi, %ecx
	movl	%ecx, %edi
.LBB12_2:                               # %select.end
	cmpl	$15, 68(%rax)
	ja	.LBB12_4
# BB#3:                                 # %if.then.6.i
	movl	%edi, %ecx
	movq	48(%rax), %rdi
	movzwl	(%rdi,%rcx,2), %edi
.LBB12_4:                               # %upd_expand.exit
	movw	%di, (%rdx)
	movb	92(%rax), %cl
	movq	%rsi, %rdi
	shrq	%cl, %rdi
	movl	88(%rax), %ecx
	andl	%ecx, %edi
	cmpl	$0, 108(%rax)
	jne	.LBB12_6
# BB#5:
	subl	%edi, %ecx
	movl	%ecx, %edi
.LBB12_6:                               # %select.end50
	cmpl	$15, 100(%rax)
	ja	.LBB12_8
# BB#7:                                 # %if.then.6.i.45
	movl	%edi, %ecx
	movq	80(%rax), %rdi
	movzwl	(%rdi,%rcx,2), %edi
.LBB12_8:                               # %upd_expand.exit49
	movw	%di, 2(%rdx)
	movb	124(%rax), %cl
	shrq	%cl, %rsi
	movl	120(%rax), %ecx
	andl	%ecx, %esi
	cmpl	$0, 140(%rax)
	jne	.LBB12_10
# BB#9:
	subl	%esi, %ecx
	movl	%ecx, %esi
.LBB12_10:                              # %select.end52
	cmpl	$15, 132(%rax)
	ja	.LBB12_12
# BB#11:                                # %if.then.6.i.24
	movl	%esi, %ecx
	movq	112(%rax), %rax
	movzwl	(%rax,%rcx,2), %esi
.LBB12_12:                              # %upd_expand.exit28
	movw	%si, 4(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end12:
	.size	upd_3color_rgb, .Lfunc_end12-upd_3color_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	upd_cmyk_icolor,@function
upd_cmyk_icolor:                        # @upd_cmyk_icolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp76:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp77:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp78:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp79:
	.cfi_def_cfa_offset 48
.Ltmp80:
	.cfi_offset %rbx, -48
.Ltmp81:
	.cfi_offset %r12, -40
.Ltmp82:
	.cfi_offset %r14, -32
.Ltmp83:
	.cfi_offset %r15, -24
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	18488(%rdi), %r12
	movw	(%rsi), %dx
	movw	2(%rsi), %r15w
	movzwl	%dx, %r11d
	movzwl	%r15w, %r8d
	movw	4(%rsi), %r10w
	movw	6(%rsi), %cx
	cmpl	%r8d, %r11d
	jne	.LBB13_17
# BB#1:                                 # %entry
	movzwl	%r10w, %esi
	movzwl	%r15w, %edi
	cmpl	%esi, %edi
	jne	.LBB13_17
# BB#2:                                 # %if.then
	movzwl	%cx, %esi
	movzwl	%dx, %edi
	cmpl	%esi, %edi
	cmovaw	%dx, %cx
	movl	68(%r12), %edx
	testl	%edx, %edx
	je	.LBB13_3
# BB#4:                                 # %if.else.i
	cmpl	$15, %edx
	ja	.LBB13_14
# BB#5:                                 # %if.then.5.i
	movq	48(%r12), %r8
	movl	56(%r12), %ebx
	incl	%ebx
	movl	%ebx, %edx
	andl	$-2, %edx
	leaq	(%rdx,%r8), %rsi
	shrl	$2, %ebx
	je	.LBB13_12
# BB#6:
	movzwl	%cx, %eax
	.align	16, 0x90
.LBB13_7:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rsi), %ebp
	subl	%eax, %ebp
	jae	.LBB13_9
# BB#8:                                 # %if.then.17.i
                                        #   in Loop: Header=BB13_7 Depth=1
	movslq	%ebx, %rbp
	jmp	.LBB13_11
	.align	16, 0x90
.LBB13_9:                               # %if.else.20.i
                                        #   in Loop: Header=BB13_7 Depth=1
	movzwl	-2(%rsi), %edx
	cmpl	%eax, %edx
	jbe	.LBB13_71
# BB#10:                                # %if.then.25.i
                                        #   in Loop: Header=BB13_7 Depth=1
	movslq	%ebx, %rbp
	negq	%rbp
.LBB13_11:                              # %if.end.41.i
                                        #   in Loop: Header=BB13_7 Depth=1
	leaq	(%rsi,%rbp,2), %rsi
	sarl	%ebx
	testl	%ebx, %ebx
	jg	.LBB13_7
.LBB13_12:                              # %while.end.loopexit.i
	movzwl	%cx, %eax
	jmp	.LBB13_13
.LBB13_17:                              # %if.else
	movl	68(%r12), %esi
	testl	%esi, %esi
	je	.LBB13_18
# BB#19:                                # %if.else.i.234
	cmpl	$15, %esi
	ja	.LBB13_28
# BB#20:                                # %if.then.5.i.243
	movzwl	%cx, %r14d
	movq	48(%r12), %r9
	movl	56(%r12), %ebp
	incl	%ebp
	movl	%ebp, %eax
	andl	$-2, %eax
	leaq	(%rax,%r9), %rbx
	shrl	$2, %ebp
	je	.LBB13_27
# BB#21:
	movzwl	%cx, %ecx
	.align	16, 0x90
.LBB13_22:                              # %while.body.i.247
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rbx), %esi
	cmpl	%ecx, %esi
	jae	.LBB13_24
# BB#23:                                # %if.then.17.i.249
                                        #   in Loop: Header=BB13_22 Depth=1
	movslq	%ebp, %rsi
	jmp	.LBB13_26
	.align	16, 0x90
.LBB13_24:                              # %if.else.20.i.252
                                        #   in Loop: Header=BB13_22 Depth=1
	movzwl	-2(%rbx), %edi
	cmpl	%ecx, %edi
	jbe	.LBB13_72
# BB#25:                                # %if.then.25.i.255
                                        #   in Loop: Header=BB13_22 Depth=1
	movslq	%ebp, %rsi
	negq	%rsi
.LBB13_26:                              # %if.end.41.i.268
                                        #   in Loop: Header=BB13_22 Depth=1
	leaq	(%rbx,%rsi,2), %rbx
	sarl	%ebp
	testl	%ebp, %ebp
	jg	.LBB13_22
	jmp	.LBB13_27
.LBB13_3:
	xorl	%ecx, %ecx
	jmp	.LBB13_14
.LBB13_18:
	xorl	%ecx, %ecx
	jmp	.LBB13_28
.LBB13_71:                              # %if.else.28.i
	leaq	-2(%rsi), %rcx
	movl	%eax, %edi
	subl	%edx, %edi
	cmpl	%ebp, %edi
	cmovlq	%rcx, %rsi
.LBB13_13:                              # %while.end.i
	movzwl	-2(%rsi), %ecx
	movzwl	(%rsi), %edx
	subl	%eax, %edx
	subl	%ecx, %eax
	cmpl	%edx, %eax
	leaq	-2(%rsi), %rcx
	cmovgel	%esi, %ecx
	subl	%r8d, %ecx
	shrl	%ecx
.LBB13_14:                              # %if.end.59.i
	cmpl	$0, 76(%r12)
	jne	.LBB13_16
# BB#15:                                # %if.then.60.i
	movl	56(%r12), %eax
	subl	%ecx, %eax
	movw	%ax, %cx
.LBB13_16:                              # %upd_truncate.exit
	movzwl	%cx, %esi
	movb	60(%r12), %cl
	shll	%cl, %esi
	jmp	.LBB13_70
.LBB13_72:                              # %if.else.28.i.263
	leaq	-2(%rbx), %rax
	movl	%r14d, %ecx
	subl	%edi, %ecx
	subl	%r14d, %esi
	cmpl	%esi, %ecx
	cmovlq	%rax, %rbx
.LBB13_27:                              # %while.end.i.285
	movzwl	-2(%rbx), %eax
	movzwl	(%rbx), %ecx
	subl	%r14d, %ecx
	subl	%eax, %r14d
	cmpl	%ecx, %r14d
	leaq	-2(%rbx), %rcx
	cmovgel	%ebx, %ecx
	subl	%r9d, %ecx
	shrl	%ecx
.LBB13_28:                              # %if.end.59.i.289
	cmpl	$0, 76(%r12)
	jne	.LBB13_30
# BB#29:                                # %if.then.60.i.294
	movl	56(%r12), %eax
	subl	%ecx, %eax
	movw	%ax, %cx
.LBB13_30:                              # %upd_truncate.exit299
	movzwl	%cx, %r9d
	movb	60(%r12), %cl
	shll	%cl, %r9d
	movl	100(%r12), %ecx
	testl	%ecx, %ecx
	je	.LBB13_31
# BB#32:                                # %if.else.i.165
	cmpl	$15, %ecx
	ja	.LBB13_41
# BB#33:                                # %if.then.5.i.174
	movq	80(%r12), %rcx
	movl	88(%r12), %ebx
	incl	%ebx
	movl	%ebx, %eax
	andl	$-2, %eax
	leaq	(%rax,%rcx), %rsi
	shrl	$2, %ebx
	je	.LBB13_40
# BB#34:
	movzwl	%dx, %edx
	.align	16, 0x90
.LBB13_35:                              # %while.body.i.178
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rsi), %ebp
	cmpl	%edx, %ebp
	jae	.LBB13_37
# BB#36:                                # %if.then.17.i.180
                                        #   in Loop: Header=BB13_35 Depth=1
	movslq	%ebx, %rbp
	jmp	.LBB13_39
	.align	16, 0x90
.LBB13_37:                              # %if.else.20.i.183
                                        #   in Loop: Header=BB13_35 Depth=1
	movzwl	-2(%rsi), %edi
	cmpl	%edx, %edi
	jbe	.LBB13_73
# BB#38:                                # %if.then.25.i.186
                                        #   in Loop: Header=BB13_35 Depth=1
	movslq	%ebx, %rbp
	negq	%rbp
.LBB13_39:                              # %if.end.41.i.199
                                        #   in Loop: Header=BB13_35 Depth=1
	leaq	(%rsi,%rbp,2), %rsi
	sarl	%ebx
	testl	%ebx, %ebx
	jg	.LBB13_35
	jmp	.LBB13_40
.LBB13_31:
	xorl	%edx, %edx
	jmp	.LBB13_41
.LBB13_73:                              # %if.else.28.i.194
	leaq	-2(%rsi), %rax
	movl	%r11d, %edx
	subl	%edi, %edx
	subl	%r11d, %ebp
	cmpl	%ebp, %edx
	cmovlq	%rax, %rsi
.LBB13_40:                              # %while.end.i.216
	movzwl	-2(%rsi), %eax
	movzwl	(%rsi), %edx
	subl	%r11d, %edx
	subl	%eax, %r11d
	cmpl	%edx, %r11d
	leaq	-2(%rsi), %rdx
	cmovgel	%esi, %edx
	subl	%ecx, %edx
	shrl	%edx
.LBB13_41:                              # %if.end.59.i.220
	cmpl	$0, 108(%r12)
	jne	.LBB13_43
# BB#42:                                # %if.then.60.i.225
	movl	88(%r12), %eax
	subl	%edx, %eax
	movw	%ax, %dx
.LBB13_43:                              # %upd_truncate.exit230
	movzwl	%dx, %esi
	movb	92(%r12), %cl
	shll	%cl, %esi
	movl	132(%r12), %ecx
	testl	%ecx, %ecx
	je	.LBB13_44
# BB#45:                                # %if.else.i.96
	cmpl	$15, %ecx
	ja	.LBB13_54
# BB#46:                                # %if.then.5.i.105
	movq	112(%r12), %r11
	movl	120(%r12), %ebp
	incl	%ebp
	movl	%ebp, %eax
	andl	$-2, %eax
	leaq	(%rax,%r11), %rdx
	shrl	$2, %ebp
	je	.LBB13_53
# BB#47:
	movzwl	%r15w, %edi
	.align	16, 0x90
.LBB13_48:                              # %while.body.i.109
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rdx), %ebx
	cmpl	%edi, %ebx
	jae	.LBB13_50
# BB#49:                                # %if.then.17.i.111
                                        #   in Loop: Header=BB13_48 Depth=1
	movslq	%ebp, %rbx
	jmp	.LBB13_52
	.align	16, 0x90
.LBB13_50:                              # %if.else.20.i.114
                                        #   in Loop: Header=BB13_48 Depth=1
	movzwl	-2(%rdx), %ecx
	cmpl	%edi, %ecx
	jbe	.LBB13_74
# BB#51:                                # %if.then.25.i.117
                                        #   in Loop: Header=BB13_48 Depth=1
	movslq	%ebp, %rbx
	negq	%rbx
.LBB13_52:                              # %if.end.41.i.130
                                        #   in Loop: Header=BB13_48 Depth=1
	leaq	(%rdx,%rbx,2), %rdx
	sarl	%ebp
	testl	%ebp, %ebp
	jg	.LBB13_48
	jmp	.LBB13_53
.LBB13_44:
	xorl	%r15d, %r15d
	jmp	.LBB13_54
.LBB13_74:                              # %if.else.28.i.125
	leaq	-2(%rdx), %rax
	movl	%r8d, %edi
	subl	%ecx, %edi
	subl	%r8d, %ebx
	cmpl	%ebx, %edi
	cmovlq	%rax, %rdx
.LBB13_53:                              # %while.end.i.147
	movzwl	-2(%rdx), %eax
	movzwl	(%rdx), %ecx
	subl	%r8d, %ecx
	subl	%eax, %r8d
	cmpl	%ecx, %r8d
	leaq	-2(%rdx), %r15
	cmovgel	%edx, %r15d
	subl	%r11d, %r15d
	shrl	%r15d
.LBB13_54:                              # %if.end.59.i.151
	cmpl	$0, 140(%r12)
	jne	.LBB13_56
# BB#55:                                # %if.then.60.i.156
	movl	120(%r12), %eax
	subl	%r15d, %eax
	movw	%ax, %r15w
.LBB13_56:                              # %upd_truncate.exit161
	orl	%r9d, %esi
	movzwl	%r15w, %r11d
	movb	124(%r12), %cl
	shll	%cl, %r11d
	movl	164(%r12), %ecx
	testl	%ecx, %ecx
	je	.LBB13_57
# BB#58:                                # %if.else.i.27
	cmpl	$15, %ecx
	ja	.LBB13_67
# BB#59:                                # %if.then.5.i.36
	movzwl	%r10w, %r9d
	movq	144(%r12), %r8
	movl	152(%r12), %ebp
	incl	%ebp
	movl	%ebp, %eax
	andl	$-2, %eax
	leaq	(%rax,%r8), %rbx
	shrl	$2, %ebp
	je	.LBB13_66
# BB#60:
	movzwl	%r10w, %ecx
	.align	16, 0x90
.LBB13_61:                              # %while.body.i.40
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rbx), %edi
	cmpl	%ecx, %edi
	jae	.LBB13_63
# BB#62:                                # %if.then.17.i.42
                                        #   in Loop: Header=BB13_61 Depth=1
	movslq	%ebp, %rdi
	jmp	.LBB13_65
	.align	16, 0x90
.LBB13_63:                              # %if.else.20.i.45
                                        #   in Loop: Header=BB13_61 Depth=1
	movzwl	-2(%rbx), %edx
	cmpl	%ecx, %edx
	jbe	.LBB13_75
# BB#64:                                # %if.then.25.i.48
                                        #   in Loop: Header=BB13_61 Depth=1
	movslq	%ebp, %rdi
	negq	%rdi
.LBB13_65:                              # %if.end.41.i.61
                                        #   in Loop: Header=BB13_61 Depth=1
	leaq	(%rbx,%rdi,2), %rbx
	sarl	%ebp
	testl	%ebp, %ebp
	jg	.LBB13_61
	jmp	.LBB13_66
.LBB13_57:
	xorl	%r10d, %r10d
	jmp	.LBB13_67
.LBB13_75:                              # %if.else.28.i.56
	leaq	-2(%rbx), %rax
	movl	%r9d, %ecx
	subl	%edx, %ecx
	subl	%r9d, %edi
	cmpl	%edi, %ecx
	cmovlq	%rax, %rbx
.LBB13_66:                              # %while.end.i.78
	movzwl	-2(%rbx), %eax
	movzwl	(%rbx), %ecx
	subl	%r9d, %ecx
	subl	%eax, %r9d
	cmpl	%ecx, %r9d
	leaq	-2(%rbx), %r10
	cmovgel	%ebx, %r10d
	subl	%r8d, %r10d
	shrl	%r10d
.LBB13_67:                              # %if.end.59.i.82
	orl	%r11d, %esi
	cmpl	$0, 172(%r12)
	jne	.LBB13_69
# BB#68:                                # %if.then.60.i.87
	movl	152(%r12), %eax
	subl	%r10d, %eax
	movw	%ax, %r10w
.LBB13_69:                              # %upd_truncate.exit92
	movzwl	%r10w, %eax
	movb	156(%r12), %cl
	shll	%cl, %eax
	orl	%eax, %esi
.LBB13_70:                              # %if.end.29
	movl	%esi, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	upd_cmyk_icolor, .Lfunc_end13-upd_cmyk_icolor
	.cfi_endproc

	.align	16, 0x90
	.type	upd_icolor_rgb,@function
upd_icolor_rgb:                         # @upd_icolor_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	18488(%rdi), %rdi
	movb	60(%rdi), %cl
	movq	%rsi, %r8
	shrq	%cl, %r8
	movl	56(%rdi), %eax
	andl	%eax, %r8d
	cmpl	$0, 76(%rdi)
	jne	.LBB14_2
# BB#1:
	subl	%r8d, %eax
	movl	%eax, %r8d
.LBB14_2:                               # %select.end
	cmpl	$15, 68(%rdi)
	ja	.LBB14_4
# BB#3:                                 # %if.then.6.i
	movl	%r8d, %eax
	movq	48(%rdi), %rcx
	movzwl	(%rcx,%rax,2), %r8d
.LBB14_4:                               # %upd_expand.exit
	movb	92(%rdi), %cl
	movq	%rsi, %r9
	shrq	%cl, %r9
	movl	88(%rdi), %eax
	andl	%eax, %r9d
	cmpl	$0, 108(%rdi)
	jne	.LBB14_6
# BB#5:
	subl	%r9d, %eax
	movl	%eax, %r9d
.LBB14_6:                               # %select.end93
	cmpl	$15, 100(%rdi)
	ja	.LBB14_8
# BB#7:                                 # %if.then.6.i.88
	movl	%r9d, %eax
	movq	80(%rdi), %rcx
	movzwl	(%rcx,%rax,2), %r9d
.LBB14_8:                               # %upd_expand.exit92
	movb	124(%rdi), %cl
	movq	%rsi, %rax
	shrq	%cl, %rax
	movl	120(%rdi), %ecx
	andl	%ecx, %eax
	cmpl	$0, 140(%rdi)
	jne	.LBB14_10
# BB#9:
	subl	%eax, %ecx
	movl	%ecx, %eax
.LBB14_10:                              # %select.end95
	cmpl	$15, 132(%rdi)
	ja	.LBB14_12
# BB#11:                                # %if.then.6.i.67
	movl	%eax, %eax
	movq	112(%rdi), %rcx
	movzwl	(%rcx,%rax,2), %eax
.LBB14_12:                              # %upd_expand.exit71
	movb	156(%rdi), %cl
	shrq	%cl, %rsi
	movl	152(%rdi), %ecx
	andl	%ecx, %esi
	cmpl	$0, 172(%rdi)
	jne	.LBB14_14
# BB#13:
	subl	%esi, %ecx
	movl	%ecx, %esi
.LBB14_14:                              # %select.end97
	cmpl	$15, 164(%rdi)
	ja	.LBB14_16
# BB#15:                                # %if.then.6.i.46
	movl	%esi, %ecx
	movq	144(%rdi), %rsi
	movzwl	(%rsi,%rcx,2), %esi
.LBB14_16:                              # %upd_expand.exit50
	notl	%r9d
	movzwl	%r9w, %ecx
	subl	%r8d, %r9d
	movzwl	%r8w, %edi
	xorl	%r10d, %r10d
	cmpl	%ecx, %edi
	cmovaew	%r10w, %r9w
	movw	%r9w, (%rdx)
	notl	%eax
	movzwl	%ax, %ecx
	subl	%r8d, %eax
	cmpl	%ecx, %edi
	cmovaew	%r10w, %ax
	movw	%ax, 2(%rdx)
	notl	%esi
	movzwl	%si, %eax
	subl	%r8d, %esi
	cmpl	%eax, %edi
	cmovaew	%r10w, %si
	movw	%si, 4(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end14:
	.size	upd_icolor_rgb, .Lfunc_end14-upd_icolor_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	upd_cmyk_kcolor,@function
upd_cmyk_kcolor:                        # @upd_cmyk_kcolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp86:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp87:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp88:
	.cfi_def_cfa_offset 40
.Ltmp89:
	.cfi_offset %rbx, -40
.Ltmp90:
	.cfi_offset %r14, -32
.Ltmp91:
	.cfi_offset %r15, -24
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	18488(%rdi), %r14
	movw	(%rsi), %dx
	movw	2(%rsi), %r15w
	movzwl	%dx, %r9d
	movzwl	%r15w, %r8d
	movw	4(%rsi), %r11w
	movzwl	6(%rsi), %ecx
	cmpl	%r8d, %r9d
	jne	.LBB15_17
# BB#1:                                 # %entry
	movzwl	%r11w, %eax
	movzwl	%r15w, %esi
	cmpl	%eax, %esi
	jne	.LBB15_17
# BB#2:                                 # %if.then
	movzwl	%cx, %eax
	movzwl	%dx, %esi
	cmpl	%eax, %esi
	cmovaw	%dx, %cx
	movl	68(%r14), %eax
	testl	%eax, %eax
	je	.LBB15_3
# BB#4:                                 # %if.else.i
	cmpl	$15, %eax
	ja	.LBB15_14
# BB#5:                                 # %if.then.5.i
	movq	48(%r14), %r8
	movl	56(%r14), %ebx
	incl	%ebx
	movl	%ebx, %eax
	andl	$-2, %eax
	leaq	(%rax,%r8), %rsi
	shrl	$2, %ebx
	je	.LBB15_12
# BB#6:
	movzwl	%cx, %edx
	.align	16, 0x90
.LBB15_7:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rsi), %eax
	subl	%edx, %eax
	jae	.LBB15_9
# BB#8:                                 # %if.then.17.i
                                        #   in Loop: Header=BB15_7 Depth=1
	movslq	%ebx, %rax
	jmp	.LBB15_11
	.align	16, 0x90
.LBB15_9:                               # %if.else.20.i
                                        #   in Loop: Header=BB15_7 Depth=1
	movzwl	-2(%rsi), %ebp
	cmpl	%edx, %ebp
	jbe	.LBB15_75
# BB#10:                                # %if.then.25.i
                                        #   in Loop: Header=BB15_7 Depth=1
	movslq	%ebx, %rax
	negq	%rax
.LBB15_11:                              # %if.end.41.i
                                        #   in Loop: Header=BB15_7 Depth=1
	leaq	(%rsi,%rax,2), %rsi
	sarl	%ebx
	testl	%ebx, %ebx
	jg	.LBB15_7
.LBB15_12:                              # %while.end.loopexit.i
	movzwl	%cx, %edx
	jmp	.LBB15_13
.LBB15_17:                              # %if.else
	testw	%cx, %cx
	je	.LBB15_19
# BB#18:                                # %land.lhs.true.20
	movl	%r15d, %eax
	orl	%edx, %eax
	orw	%r11w, %ax
	je	.LBB15_20
.LBB15_19:                              # %if.else.27
	movzwl	%r15w, %eax
	movzwl	%dx, %ecx
	cmpl	%eax, %ecx
	movw	%r15w, %ax
	cmovbw	%dx, %ax
	movzwl	%ax, %ecx
	movzwl	%r11w, %eax
	cmpl	%eax, %ecx
	cmovaew	%r11w, %cx
.LBB15_20:                              # %if.end
	movl	68(%r14), %eax
	testl	%eax, %eax
	je	.LBB15_21
# BB#22:                                # %if.else.i.252
	cmpl	$15, %eax
	ja	.LBB15_32
# BB#23:                                # %if.then.5.i.261
	movq	48(%r14), %r10
	movl	56(%r14), %ebp
	incl	%ebp
	movl	%ebp, %eax
	andl	$-2, %eax
	leaq	(%rax,%r10), %rsi
	shrl	$2, %ebp
	je	.LBB15_30
# BB#24:
	movzwl	%cx, %ebx
	.align	16, 0x90
.LBB15_25:                              # %while.body.i.265
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rsi), %eax
	subl	%ebx, %eax
	jae	.LBB15_27
# BB#26:                                # %if.then.17.i.267
                                        #   in Loop: Header=BB15_25 Depth=1
	movslq	%ebp, %rax
	jmp	.LBB15_29
	.align	16, 0x90
.LBB15_27:                              # %if.else.20.i.270
                                        #   in Loop: Header=BB15_25 Depth=1
	movzwl	-2(%rsi), %edi
	cmpl	%ebx, %edi
	jbe	.LBB15_76
# BB#28:                                # %if.then.25.i.273
                                        #   in Loop: Header=BB15_25 Depth=1
	movslq	%ebp, %rax
	negq	%rax
.LBB15_29:                              # %if.end.41.i.286
                                        #   in Loop: Header=BB15_25 Depth=1
	leaq	(%rsi,%rax,2), %rsi
	sarl	%ebp
	testl	%ebp, %ebp
	jg	.LBB15_25
.LBB15_30:                              # %while.end.loopexit.i.289
	movzwl	%cx, %ebx
	jmp	.LBB15_31
.LBB15_3:
	xorl	%ecx, %ecx
	jmp	.LBB15_14
.LBB15_21:
	xorl	%ecx, %ecx
	jmp	.LBB15_32
.LBB15_75:                              # %if.else.28.i
	leaq	-2(%rsi), %rcx
	movl	%edx, %edi
	subl	%ebp, %edi
	cmpl	%eax, %edi
	cmovlq	%rcx, %rsi
.LBB15_13:                              # %while.end.i
	movzwl	-2(%rsi), %eax
	movzwl	(%rsi), %ecx
	subl	%edx, %ecx
	subl	%eax, %edx
	cmpl	%ecx, %edx
	leaq	-2(%rsi), %rcx
	cmovgel	%esi, %ecx
	subl	%r8d, %ecx
	shrl	%ecx
.LBB15_14:                              # %if.end.59.i
	cmpl	$0, 76(%r14)
	jne	.LBB15_16
# BB#15:                                # %if.then.60.i
	movl	56(%r14), %eax
	subl	%ecx, %eax
	movw	%ax, %cx
.LBB15_16:                              # %upd_truncate.exit
	movzwl	%cx, %esi
	movb	60(%r14), %cl
	shll	%cl, %esi
	jmp	.LBB15_74
.LBB15_76:                              # %if.else.28.i.281
	leaq	-2(%rsi), %rcx
	movl	%ebx, %ebp
	subl	%edi, %ebp
	cmpl	%eax, %ebp
	cmovlq	%rcx, %rsi
.LBB15_31:                              # %while.end.i.303
	movzwl	-2(%rsi), %eax
	movzwl	(%rsi), %ecx
	subl	%ebx, %ecx
	subl	%eax, %ebx
	cmpl	%ecx, %ebx
	leaq	-2(%rsi), %rcx
	cmovgel	%esi, %ecx
	subl	%r10d, %ecx
	shrl	%ecx
.LBB15_32:                              # %if.end.59.i.307
	cmpl	$0, 76(%r14)
	jne	.LBB15_34
# BB#33:                                # %if.then.60.i.312
	movl	56(%r14), %eax
	subl	%ecx, %eax
	movw	%ax, %cx
.LBB15_34:                              # %upd_truncate.exit317
	movzwl	%cx, %r10d
	movb	60(%r14), %cl
	shll	%cl, %r10d
	movl	100(%r14), %eax
	testl	%eax, %eax
	je	.LBB15_35
# BB#36:                                # %if.else.i.183
	cmpl	$15, %eax
	ja	.LBB15_45
# BB#37:                                # %if.then.5.i.192
	movq	80(%r14), %rcx
	movl	88(%r14), %ebx
	incl	%ebx
	movl	%ebx, %eax
	andl	$-2, %eax
	leaq	(%rax,%rcx), %rsi
	shrl	$2, %ebx
	je	.LBB15_44
# BB#38:
	movzwl	%dx, %edx
	.align	16, 0x90
.LBB15_39:                              # %while.body.i.196
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rsi), %ebp
	cmpl	%edx, %ebp
	jae	.LBB15_41
# BB#40:                                # %if.then.17.i.198
                                        #   in Loop: Header=BB15_39 Depth=1
	movslq	%ebx, %rax
	jmp	.LBB15_43
	.align	16, 0x90
.LBB15_41:                              # %if.else.20.i.201
                                        #   in Loop: Header=BB15_39 Depth=1
	movzwl	-2(%rsi), %eax
	cmpl	%edx, %eax
	jbe	.LBB15_77
# BB#42:                                # %if.then.25.i.204
                                        #   in Loop: Header=BB15_39 Depth=1
	movslq	%ebx, %rax
	negq	%rax
.LBB15_43:                              # %if.end.41.i.217
                                        #   in Loop: Header=BB15_39 Depth=1
	leaq	(%rsi,%rax,2), %rsi
	sarl	%ebx
	testl	%ebx, %ebx
	jg	.LBB15_39
	jmp	.LBB15_44
.LBB15_35:
	xorl	%edx, %edx
	jmp	.LBB15_45
.LBB15_77:                              # %if.else.28.i.212
	leaq	-2(%rsi), %rdx
	movl	%r9d, %edi
	subl	%eax, %edi
	subl	%r9d, %ebp
	cmpl	%ebp, %edi
	cmovlq	%rdx, %rsi
.LBB15_44:                              # %while.end.i.234
	movzwl	-2(%rsi), %eax
	movzwl	(%rsi), %edx
	subl	%r9d, %edx
	subl	%eax, %r9d
	cmpl	%edx, %r9d
	leaq	-2(%rsi), %rdx
	cmovgel	%esi, %edx
	subl	%ecx, %edx
	shrl	%edx
.LBB15_45:                              # %if.end.59.i.238
	cmpl	$0, 108(%r14)
	jne	.LBB15_47
# BB#46:                                # %if.then.60.i.243
	movl	88(%r14), %eax
	subl	%edx, %eax
	movw	%ax, %dx
.LBB15_47:                              # %upd_truncate.exit248
	movzwl	%dx, %esi
	movb	92(%r14), %cl
	shll	%cl, %esi
	movl	132(%r14), %eax
	testl	%eax, %eax
	je	.LBB15_48
# BB#49:                                # %if.else.i.114
	cmpl	$15, %eax
	ja	.LBB15_58
# BB#50:                                # %if.then.5.i.123
	movq	112(%r14), %rcx
	movl	120(%r14), %ebp
	incl	%ebp
	movl	%ebp, %eax
	andl	$-2, %eax
	leaq	(%rax,%rcx), %rdx
	shrl	$2, %ebp
	je	.LBB15_57
# BB#51:
	movzwl	%r15w, %edi
	.align	16, 0x90
.LBB15_52:                              # %while.body.i.127
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rdx), %ebx
	cmpl	%edi, %ebx
	jae	.LBB15_54
# BB#53:                                # %if.then.17.i.129
                                        #   in Loop: Header=BB15_52 Depth=1
	movslq	%ebp, %rax
	jmp	.LBB15_56
	.align	16, 0x90
.LBB15_54:                              # %if.else.20.i.132
                                        #   in Loop: Header=BB15_52 Depth=1
	movzwl	-2(%rdx), %eax
	cmpl	%edi, %eax
	jbe	.LBB15_78
# BB#55:                                # %if.then.25.i.135
                                        #   in Loop: Header=BB15_52 Depth=1
	movslq	%ebp, %rax
	negq	%rax
.LBB15_56:                              # %if.end.41.i.148
                                        #   in Loop: Header=BB15_52 Depth=1
	leaq	(%rdx,%rax,2), %rdx
	sarl	%ebp
	testl	%ebp, %ebp
	jg	.LBB15_52
	jmp	.LBB15_57
.LBB15_48:
	xorl	%r15d, %r15d
	jmp	.LBB15_58
.LBB15_78:                              # %if.else.28.i.143
	leaq	-2(%rdx), %rdi
	movl	%r8d, %ebp
	subl	%eax, %ebp
	subl	%r8d, %ebx
	cmpl	%ebx, %ebp
	cmovlq	%rdi, %rdx
.LBB15_57:                              # %while.end.i.165
	movzwl	-2(%rdx), %eax
	movzwl	(%rdx), %edi
	subl	%r8d, %edi
	subl	%eax, %r8d
	cmpl	%edi, %r8d
	leaq	-2(%rdx), %r15
	cmovgel	%edx, %r15d
	subl	%ecx, %r15d
	shrl	%r15d
.LBB15_58:                              # %if.end.59.i.169
	cmpl	$0, 140(%r14)
	jne	.LBB15_60
# BB#59:                                # %if.then.60.i.174
	movl	120(%r14), %eax
	subl	%r15d, %eax
	movw	%ax, %r15w
.LBB15_60:                              # %upd_truncate.exit179
	orl	%r10d, %esi
	movzwl	%r15w, %edx
	movb	124(%r14), %cl
	shll	%cl, %edx
	movl	164(%r14), %eax
	testl	%eax, %eax
	je	.LBB15_61
# BB#62:                                # %if.else.i.45
	cmpl	$15, %eax
	ja	.LBB15_71
# BB#63:                                # %if.then.5.i.54
	movzwl	%r11w, %r9d
	movq	144(%r14), %r8
	movl	152(%r14), %ebp
	incl	%ebp
	movl	%ebp, %eax
	andl	$-2, %eax
	leaq	(%rax,%r8), %rcx
	shrl	$2, %ebp
	je	.LBB15_70
# BB#64:
	movzwl	%r11w, %ebx
	.align	16, 0x90
.LBB15_65:                              # %while.body.i.58
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rcx), %edi
	cmpl	%ebx, %edi
	jae	.LBB15_67
# BB#66:                                # %if.then.17.i.60
                                        #   in Loop: Header=BB15_65 Depth=1
	movslq	%ebp, %rax
	jmp	.LBB15_69
	.align	16, 0x90
.LBB15_67:                              # %if.else.20.i.63
                                        #   in Loop: Header=BB15_65 Depth=1
	movzwl	-2(%rcx), %eax
	cmpl	%ebx, %eax
	jbe	.LBB15_79
# BB#68:                                # %if.then.25.i.66
                                        #   in Loop: Header=BB15_65 Depth=1
	movslq	%ebp, %rax
	negq	%rax
.LBB15_69:                              # %if.end.41.i.79
                                        #   in Loop: Header=BB15_65 Depth=1
	leaq	(%rcx,%rax,2), %rcx
	sarl	%ebp
	testl	%ebp, %ebp
	jg	.LBB15_65
	jmp	.LBB15_70
.LBB15_61:
	xorl	%r11d, %r11d
	jmp	.LBB15_71
.LBB15_79:                              # %if.else.28.i.74
	leaq	-2(%rcx), %rbp
	movl	%r9d, %ebx
	subl	%eax, %ebx
	subl	%r9d, %edi
	cmpl	%edi, %ebx
	cmovlq	%rbp, %rcx
.LBB15_70:                              # %while.end.i.96
	movzwl	-2(%rcx), %eax
	movzwl	(%rcx), %edi
	subl	%r9d, %edi
	subl	%eax, %r9d
	cmpl	%edi, %r9d
	leaq	-2(%rcx), %r11
	cmovgel	%ecx, %r11d
	subl	%r8d, %r11d
	shrl	%r11d
.LBB15_71:                              # %if.end.59.i.100
	orl	%edx, %esi
	cmpl	$0, 172(%r14)
	jne	.LBB15_73
# BB#72:                                # %if.then.60.i.105
	movl	152(%r14), %eax
	subl	%r11d, %eax
	movw	%ax, %r11w
.LBB15_73:                              # %upd_truncate.exit110
	movzwl	%r11w, %eax
	movb	156(%r14), %cl
	shll	%cl, %eax
	orl	%eax, %esi
.LBB15_74:                              # %if.end.62
	movl	%esi, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	upd_cmyk_kcolor, .Lfunc_end15-upd_cmyk_kcolor
	.cfi_endproc

	.align	16, 0x90
	.type	upd_kcolor_rgb,@function
upd_kcolor_rgb:                         # @upd_kcolor_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	18488(%rdi), %rdi
	movb	60(%rdi), %cl
	movq	%rsi, %r8
	shrq	%cl, %r8
	movl	56(%rdi), %eax
	andl	%eax, %r8d
	cmpl	$0, 76(%rdi)
	jne	.LBB16_2
# BB#1:
	subl	%r8d, %eax
	movl	%eax, %r8d
.LBB16_2:                               # %select.end
	cmpl	$15, 68(%rdi)
	ja	.LBB16_4
# BB#3:                                 # %if.then.6.i
	movl	%r8d, %eax
	movq	48(%rdi), %rcx
	movzwl	(%rcx,%rax,2), %r8d
.LBB16_4:                               # %upd_expand.exit
	movb	92(%rdi), %cl
	movq	%rsi, %r9
	shrq	%cl, %r9
	movl	88(%rdi), %eax
	andl	%eax, %r9d
	cmpl	$0, 108(%rdi)
	jne	.LBB16_6
# BB#5:
	subl	%r9d, %eax
	movl	%eax, %r9d
.LBB16_6:                               # %select.end86
	cmpl	$15, 100(%rdi)
	ja	.LBB16_8
# BB#7:                                 # %if.then.6.i.80
	movl	%r9d, %eax
	movq	80(%rdi), %rcx
	movzwl	(%rcx,%rax,2), %r9d
.LBB16_8:                               # %upd_expand.exit84
	movb	124(%rdi), %cl
	movq	%rsi, %rax
	shrq	%cl, %rax
	movl	120(%rdi), %ecx
	andl	%ecx, %eax
	cmpl	$0, 140(%rdi)
	jne	.LBB16_10
# BB#9:
	subl	%eax, %ecx
	movl	%ecx, %eax
.LBB16_10:                              # %select.end88
	cmpl	$15, 132(%rdi)
	ja	.LBB16_12
# BB#11:                                # %if.then.6.i.59
	movl	%eax, %eax
	movq	112(%rdi), %rcx
	movzwl	(%rcx,%rax,2), %eax
.LBB16_12:                              # %upd_expand.exit63
	movb	156(%rdi), %cl
	shrq	%cl, %rsi
	movl	152(%rdi), %ecx
	andl	%ecx, %esi
	cmpl	$0, 172(%rdi)
	jne	.LBB16_14
# BB#13:
	subl	%esi, %ecx
	movl	%ecx, %esi
.LBB16_14:                              # %select.end90
	cmpl	$15, 164(%rdi)
	ja	.LBB16_16
# BB#15:                                # %if.then.6.i.38
	movl	%esi, %ecx
	movq	144(%rdi), %rsi
	movzwl	(%rsi,%rcx,2), %esi
.LBB16_16:                              # %upd_expand.exit42
	movl	%eax, %ecx
	orl	%r9d, %ecx
	orw	%si, %cx
	je	.LBB16_17
# BB#18:                                # %if.else
	notl	%r9d
	movw	%r9w, (%rdx)
	notl	%eax
	notl	%esi
	movw	%ax, %r8w
	jmp	.LBB16_19
.LBB16_17:                              # %if.then
	notl	%r8d
	movw	%r8w, (%rdx)
	movw	%r8w, %si
.LBB16_19:                              # %if.end
	movw	%r8w, 2(%rdx)
	movw	%si, 4(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end16:
	.size	upd_kcolor_rgb, .Lfunc_end16-upd_kcolor_rgb
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI17_0:
	.long	1065353216              # float 1
.LCPI17_1:
	.long	1199570688              # float 65535
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_2:
	.quad	4602660804774137430     # double 0.499
	.text
	.align	16, 0x90
	.type	upd_rgb_ovcolor,@function
upd_rgb_ovcolor:                        # @upd_rgb_ovcolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp94:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp95:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp96:
	.cfi_def_cfa_offset 40
.Ltmp97:
	.cfi_offset %rbx, -40
.Ltmp98:
	.cfi_offset %r14, -32
.Ltmp99:
	.cfi_offset %r15, -24
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	18488(%rdi), %r15
	movzwl	2(%rsi), %edi
	movzwl	4(%rsi), %edx
	movzwl	(%rsi), %ecx
	cmpl	%edi, %ecx
	notl	%ecx
	jne	.LBB17_17
# BB#1:                                 # %entry
	movzwl	%dx, %eax
	movzwl	%di, %esi
	cmpl	%eax, %esi
	jne	.LBB17_17
# BB#2:                                 # %if.then
	movl	68(%r15), %eax
	testl	%eax, %eax
	je	.LBB17_3
# BB#4:                                 # %if.else.i
	cmpl	$15, %eax
	ja	.LBB17_14
# BB#5:                                 # %if.then.5.i
	movq	48(%r15), %r8
	movl	56(%r15), %edx
	incl	%edx
	movl	%edx, %eax
	andl	$-2, %eax
	leaq	(%rax,%r8), %rsi
	shrl	$2, %edx
	je	.LBB17_12
# BB#6:
	movzwl	%cx, %edi
	.align	16, 0x90
.LBB17_7:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rsi), %ebp
	subl	%edi, %ebp
	jae	.LBB17_9
# BB#8:                                 # %if.then.17.i
                                        #   in Loop: Header=BB17_7 Depth=1
	movslq	%edx, %rbp
	jmp	.LBB17_11
	.align	16, 0x90
.LBB17_9:                               # %if.else.20.i
                                        #   in Loop: Header=BB17_7 Depth=1
	movzwl	-2(%rsi), %ebx
	cmpl	%edi, %ebx
	jbe	.LBB17_84
# BB#10:                                # %if.then.25.i
                                        #   in Loop: Header=BB17_7 Depth=1
	movslq	%edx, %rbp
	negq	%rbp
.LBB17_11:                              # %if.end.41.i
                                        #   in Loop: Header=BB17_7 Depth=1
	leaq	(%rsi,%rbp,2), %rsi
	sarl	%edx
	testl	%edx, %edx
	jg	.LBB17_7
.LBB17_12:                              # %while.end.loopexit.i
	movzwl	%cx, %edi
	jmp	.LBB17_13
.LBB17_17:                              # %if.else
	notl	%edi
	notl	%edx
	movzwl	%di, %edi
	movzwl	%cx, %ebx
	cmpl	%edi, %ebx
	cmovaew	%di, %cx
	movzwl	%dx, %esi
	movzwl	%cx, %edx
	cmpl	%esi, %edx
	cmovaew	%si, %dx
	movzwl	%dx, %ecx
	movw	$-1, %r8w
	cmpl	$65535, %ecx            # imm = 0xFFFF
	movw	$-1, %r10w
	movw	$-1, %r11w
	je	.LBB17_28
# BB#18:                                # %if.then.43
	movl	%ecx, %eax
	xorl	$65535, %eax            # imm = 0xFFFF
	cvtsi2ssl	%eax, %xmm0
	subl	%ecx, %ebx
	cvtsi2ssl	%ebx, %xmm3
	divss	%xmm0, %xmm3
	xorps	%xmm1, %xmm1
	ucomiss	%xmm3, %xmm1
	xorps	%xmm2, %xmm2
	ja	.LBB17_21
# BB#19:                                # %if.else.56
	ucomiss	.LCPI17_0(%rip), %xmm3
	movaps	%xmm3, %xmm2
	jbe	.LBB17_21
# BB#20:                                # %if.then.60
	movss	.LCPI17_0(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
.LBB17_21:                              # %if.end.61
	mulss	.LCPI17_1(%rip), %xmm2
	cvtss2sd	%xmm2, %xmm2
	addsd	.LCPI17_2(%rip), %xmm2
	subl	%ecx, %edi
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%edi, %xmm3
	divss	%xmm0, %xmm3
	ucomiss	%xmm3, %xmm1
	ja	.LBB17_24
# BB#22:                                # %if.else.73
	ucomiss	.LCPI17_0(%rip), %xmm3
	movaps	%xmm3, %xmm1
	jbe	.LBB17_24
# BB#23:                                # %if.then.77
	movss	.LCPI17_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
.LBB17_24:                              # %if.end.79
	cvttsd2si	%xmm2, %r11d
	mulss	.LCPI17_1(%rip), %xmm1
	cvtss2sd	%xmm1, %xmm1
	addsd	.LCPI17_2(%rip), %xmm1
	cvttsd2si	%xmm1, %r10d
	subl	%ecx, %esi
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%esi, %xmm1
	divss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	ucomiss	%xmm1, %xmm0
	ja	.LBB17_27
# BB#25:                                # %if.else.93
	ucomiss	.LCPI17_0(%rip), %xmm1
	movaps	%xmm1, %xmm0
	jbe	.LBB17_27
# BB#26:                                # %if.then.97
	movss	.LCPI17_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
.LBB17_27:                              # %if.end.99
	mulss	.LCPI17_1(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI17_2(%rip), %xmm0
	cvttsd2si	%xmm0, %r8d
.LBB17_28:                              # %if.end.105
	movl	68(%r15), %eax
	testl	%eax, %eax
	je	.LBB17_29
# BB#30:                                # %if.else.i.263
	cmpl	$15, %eax
	ja	.LBB17_38
# BB#31:                                # %if.then.5.i.272
	movq	48(%r15), %r9
	movl	56(%r15), %edx
	incl	%edx
	movl	%edx, %eax
	andl	$-2, %eax
	leaq	(%rax,%r9), %rsi
	shrl	$2, %edx
	je	.LBB17_37
	.align	16, 0x90
.LBB17_32:                              # %while.body.i.276
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rsi), %edi
	subl	%ecx, %edi
	jae	.LBB17_34
# BB#33:                                # %if.then.17.i.278
                                        #   in Loop: Header=BB17_32 Depth=1
	movslq	%edx, %rdi
	jmp	.LBB17_36
	.align	16, 0x90
.LBB17_34:                              # %if.else.20.i.281
                                        #   in Loop: Header=BB17_32 Depth=1
	movzwl	-2(%rsi), %ebx
	cmpl	%ecx, %ebx
	jbe	.LBB17_85
# BB#35:                                # %if.then.25.i.284
                                        #   in Loop: Header=BB17_32 Depth=1
	movslq	%edx, %rdi
	negq	%rdi
.LBB17_36:                              # %if.end.41.i.297
                                        #   in Loop: Header=BB17_32 Depth=1
	leaq	(%rsi,%rdi,2), %rsi
	sarl	%edx
	testl	%edx, %edx
	jg	.LBB17_32
	jmp	.LBB17_37
.LBB17_3:
	xorl	%ecx, %ecx
	jmp	.LBB17_14
.LBB17_29:
	xorl	%edx, %edx
	jmp	.LBB17_38
.LBB17_84:                              # %if.else.28.i
	leaq	-2(%rsi), %rax
	movl	%edi, %ecx
	subl	%ebx, %ecx
	cmpl	%ebp, %ecx
	cmovlq	%rax, %rsi
.LBB17_13:                              # %while.end.i
	movzwl	-2(%rsi), %eax
	movzwl	(%rsi), %ecx
	subl	%edi, %ecx
	subl	%eax, %edi
	cmpl	%ecx, %edi
	leaq	-2(%rsi), %rcx
	cmovgel	%esi, %ecx
	subl	%r8d, %ecx
	shrl	%ecx
.LBB17_14:                              # %if.end.59.i
	cmpl	$0, 76(%r15)
	jne	.LBB17_16
# BB#15:                                # %if.then.60.i
	movl	56(%r15), %eax
	subl	%ecx, %eax
	movw	%ax, %cx
.LBB17_16:                              # %upd_truncate.exit
	movzwl	%cx, %edi
	movb	60(%r15), %cl
	shll	%cl, %edi
	jmp	.LBB17_83
.LBB17_85:                              # %if.else.28.i.292
	leaq	-2(%rsi), %rax
	movl	%ecx, %edx
	subl	%ebx, %edx
	cmpl	%edi, %edx
	cmovlq	%rax, %rsi
.LBB17_37:                              # %while.end.i.314
	movzwl	-2(%rsi), %eax
	movzwl	(%rsi), %edx
	subl	%ecx, %edx
	subl	%eax, %ecx
	cmpl	%edx, %ecx
	leaq	-2(%rsi), %rdx
	cmovgel	%esi, %edx
	subl	%r9d, %edx
	shrl	%edx
.LBB17_38:                              # %if.end.59.i.318
	cmpl	$0, 76(%r15)
	jne	.LBB17_40
# BB#39:                                # %if.then.60.i.323
	movl	56(%r15), %eax
	subl	%edx, %eax
	movw	%ax, %dx
.LBB17_40:                              # %upd_truncate.exit328
	movzwl	%dx, %r14d
	movb	60(%r15), %cl
	shll	%cl, %r14d
	movl	100(%r15), %eax
	testl	%eax, %eax
	je	.LBB17_41
# BB#42:                                # %if.else.i.194
	cmpl	$15, %eax
	ja	.LBB17_52
# BB#43:                                # %if.then.5.i.203
	movq	80(%r15), %r9
	movl	88(%r15), %edi
	incl	%edi
	movl	%edi, %eax
	andl	$-2, %eax
	leaq	(%rax,%r9), %rcx
	shrl	$2, %edi
	je	.LBB17_50
# BB#44:
	movzwl	%r11w, %esi
	.align	16, 0x90
.LBB17_45:                              # %while.body.i.207
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rcx), %edx
	subl	%esi, %edx
	jae	.LBB17_47
# BB#46:                                # %if.then.17.i.209
                                        #   in Loop: Header=BB17_45 Depth=1
	movslq	%edi, %rdx
	jmp	.LBB17_49
	.align	16, 0x90
.LBB17_47:                              # %if.else.20.i.212
                                        #   in Loop: Header=BB17_45 Depth=1
	movzwl	-2(%rcx), %ebx
	cmpl	%esi, %ebx
	jbe	.LBB17_86
# BB#48:                                # %if.then.25.i.215
                                        #   in Loop: Header=BB17_45 Depth=1
	movslq	%edi, %rdx
	negq	%rdx
.LBB17_49:                              # %if.end.41.i.228
                                        #   in Loop: Header=BB17_45 Depth=1
	leaq	(%rcx,%rdx,2), %rcx
	sarl	%edi
	testl	%edi, %edi
	jg	.LBB17_45
.LBB17_50:                              # %while.end.loopexit.i.231
	movzwl	%r11w, %esi
	jmp	.LBB17_51
.LBB17_41:
	xorl	%r11d, %r11d
	jmp	.LBB17_52
.LBB17_86:                              # %if.else.28.i.223
	leaq	-2(%rcx), %rax
	movl	%esi, %edi
	subl	%ebx, %edi
	cmpl	%edx, %edi
	cmovlq	%rax, %rcx
.LBB17_51:                              # %while.end.i.245
	movzwl	-2(%rcx), %eax
	movzwl	(%rcx), %edx
	subl	%esi, %edx
	subl	%eax, %esi
	cmpl	%edx, %esi
	leaq	-2(%rcx), %r11
	cmovgel	%ecx, %r11d
	subl	%r9d, %r11d
	shrl	%r11d
.LBB17_52:                              # %if.end.59.i.249
	cmpl	$0, 108(%r15)
	jne	.LBB17_54
# BB#53:                                # %if.then.60.i.254
	movl	88(%r15), %eax
	subl	%r11d, %eax
	movw	%ax, %r11w
.LBB17_54:                              # %upd_truncate.exit259
	movzwl	%r11w, %edi
	movb	92(%r15), %cl
	shll	%cl, %edi
	movl	132(%r15), %eax
	testl	%eax, %eax
	je	.LBB17_55
# BB#56:                                # %if.else.i.125
	cmpl	$15, %eax
	ja	.LBB17_66
# BB#57:                                # %if.then.5.i.134
	movq	112(%r15), %r9
	movl	120(%r15), %edx
	incl	%edx
	movl	%edx, %eax
	andl	$-2, %eax
	leaq	(%rax,%r9), %rcx
	shrl	$2, %edx
	je	.LBB17_64
# BB#58:
	movzwl	%r10w, %esi
	.align	16, 0x90
.LBB17_59:                              # %while.body.i.138
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rcx), %ebx
	subl	%esi, %ebx
	jae	.LBB17_61
# BB#60:                                # %if.then.17.i.140
                                        #   in Loop: Header=BB17_59 Depth=1
	movslq	%edx, %rbx
	jmp	.LBB17_63
	.align	16, 0x90
.LBB17_61:                              # %if.else.20.i.143
                                        #   in Loop: Header=BB17_59 Depth=1
	movzwl	-2(%rcx), %ebp
	cmpl	%esi, %ebp
	jbe	.LBB17_87
# BB#62:                                # %if.then.25.i.146
                                        #   in Loop: Header=BB17_59 Depth=1
	movslq	%edx, %rbx
	negq	%rbx
.LBB17_63:                              # %if.end.41.i.159
                                        #   in Loop: Header=BB17_59 Depth=1
	leaq	(%rcx,%rbx,2), %rcx
	sarl	%edx
	testl	%edx, %edx
	jg	.LBB17_59
.LBB17_64:                              # %while.end.loopexit.i.162
	movzwl	%r10w, %esi
	jmp	.LBB17_65
.LBB17_55:
	xorl	%r10d, %r10d
	jmp	.LBB17_66
.LBB17_87:                              # %if.else.28.i.154
	leaq	-2(%rcx), %rax
	movl	%esi, %edx
	subl	%ebp, %edx
	cmpl	%ebx, %edx
	cmovlq	%rax, %rcx
.LBB17_65:                              # %while.end.i.176
	movzwl	-2(%rcx), %eax
	movzwl	(%rcx), %edx
	subl	%esi, %edx
	subl	%eax, %esi
	cmpl	%edx, %esi
	leaq	-2(%rcx), %r10
	cmovgel	%ecx, %r10d
	subl	%r9d, %r10d
	shrl	%r10d
.LBB17_66:                              # %if.end.59.i.180
	cmpl	$0, 140(%r15)
	jne	.LBB17_68
# BB#67:                                # %if.then.60.i.185
	movl	120(%r15), %eax
	subl	%r10d, %eax
	movw	%ax, %r10w
.LBB17_68:                              # %upd_truncate.exit190
	orl	%r14d, %edi
	movzwl	%r10w, %r10d
	movb	124(%r15), %cl
	shll	%cl, %r10d
	movl	164(%r15), %eax
	testl	%eax, %eax
	je	.LBB17_69
# BB#70:                                # %if.else.i.56
	cmpl	$15, %eax
	ja	.LBB17_80
# BB#71:                                # %if.then.5.i.65
	movq	144(%r15), %r9
	movl	152(%r15), %ebx
	incl	%ebx
	movl	%ebx, %eax
	andl	$-2, %eax
	leaq	(%rax,%r9), %rsi
	shrl	$2, %ebx
	je	.LBB17_78
# BB#72:
	movzwl	%r8w, %edx
	.align	16, 0x90
.LBB17_73:                              # %while.body.i.69
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rsi), %ebp
	subl	%edx, %ebp
	jae	.LBB17_75
# BB#74:                                # %if.then.17.i.71
                                        #   in Loop: Header=BB17_73 Depth=1
	movslq	%ebx, %rbp
	jmp	.LBB17_77
	.align	16, 0x90
.LBB17_75:                              # %if.else.20.i.74
                                        #   in Loop: Header=BB17_73 Depth=1
	movzwl	-2(%rsi), %eax
	cmpl	%edx, %eax
	jbe	.LBB17_88
# BB#76:                                # %if.then.25.i.77
                                        #   in Loop: Header=BB17_73 Depth=1
	movslq	%ebx, %rbp
	negq	%rbp
.LBB17_77:                              # %if.end.41.i.90
                                        #   in Loop: Header=BB17_73 Depth=1
	leaq	(%rsi,%rbp,2), %rsi
	sarl	%ebx
	testl	%ebx, %ebx
	jg	.LBB17_73
.LBB17_78:                              # %while.end.loopexit.i.93
	movzwl	%r8w, %edx
	jmp	.LBB17_79
.LBB17_69:
	xorl	%r8d, %r8d
	jmp	.LBB17_80
.LBB17_88:                              # %if.else.28.i.85
	leaq	-2(%rsi), %rbx
	movl	%edx, %ecx
	subl	%eax, %ecx
	cmpl	%ebp, %ecx
	cmovlq	%rbx, %rsi
.LBB17_79:                              # %while.end.i.107
	movzwl	-2(%rsi), %eax
	movzwl	(%rsi), %ecx
	subl	%edx, %ecx
	subl	%eax, %edx
	cmpl	%ecx, %edx
	leaq	-2(%rsi), %r8
	cmovgel	%esi, %r8d
	subl	%r9d, %r8d
	shrl	%r8d
.LBB17_80:                              # %if.end.59.i.111
	orl	%r10d, %edi
	cmpl	$0, 172(%r15)
	jne	.LBB17_82
# BB#81:                                # %if.then.60.i.116
	movl	152(%r15), %eax
	subl	%r8d, %eax
	movw	%ax, %r8w
.LBB17_82:                              # %upd_truncate.exit121
	movzwl	%r8w, %eax
	movb	156(%r15), %cl
	shll	%cl, %eax
	orl	%eax, %edi
.LBB17_83:                              # %if.end.117
	movl	%edi, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	upd_rgb_ovcolor, .Lfunc_end17-upd_rgb_ovcolor
	.cfi_endproc

	.align	16, 0x90
	.type	upd_rgb_novcolor,@function
upd_rgb_novcolor:                       # @upd_rgb_novcolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp102:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp103:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp104:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp105:
	.cfi_def_cfa_offset 48
.Ltmp106:
	.cfi_offset %rbx, -48
.Ltmp107:
	.cfi_offset %r12, -40
.Ltmp108:
	.cfi_offset %r14, -32
.Ltmp109:
	.cfi_offset %r15, -24
.Ltmp110:
	.cfi_offset %rbp, -16
	movq	18488(%rdi), %r14
	movzwl	2(%rsi), %r15d
	movzwl	4(%rsi), %r11d
	movzwl	(%rsi), %r12d
	cmpl	%r15d, %r12d
	notl	%r12d
	jne	.LBB18_17
# BB#1:                                 # %entry
	movzwl	%r11w, %eax
	movzwl	%r15w, %ecx
	cmpl	%eax, %ecx
	jne	.LBB18_17
# BB#2:                                 # %if.then
	movl	68(%r14), %eax
	testl	%eax, %eax
	je	.LBB18_3
# BB#4:                                 # %if.else.i
	cmpl	$15, %eax
	ja	.LBB18_14
# BB#5:                                 # %if.then.5.i
	movq	48(%r14), %r8
	movl	56(%r14), %ecx
	incl	%ecx
	movl	%ecx, %eax
	andl	$-2, %eax
	leaq	(%rax,%r8), %rdx
	shrl	$2, %ecx
	je	.LBB18_12
# BB#6:
	movzwl	%r12w, %edi
	.align	16, 0x90
.LBB18_7:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rdx), %eax
	subl	%edi, %eax
	jae	.LBB18_9
# BB#8:                                 # %if.then.17.i
                                        #   in Loop: Header=BB18_7 Depth=1
	movslq	%ecx, %rax
	jmp	.LBB18_11
	.align	16, 0x90
.LBB18_9:                               # %if.else.20.i
                                        #   in Loop: Header=BB18_7 Depth=1
	movzwl	-2(%rdx), %ebx
	cmpl	%edi, %ebx
	jbe	.LBB18_76
# BB#10:                                # %if.then.25.i
                                        #   in Loop: Header=BB18_7 Depth=1
	movslq	%ecx, %rax
	negq	%rax
.LBB18_11:                              # %if.end.41.i
                                        #   in Loop: Header=BB18_7 Depth=1
	leaq	(%rdx,%rax,2), %rdx
	sarl	%ecx
	testl	%ecx, %ecx
	jg	.LBB18_7
.LBB18_12:                              # %while.end.loopexit.i
	movzwl	%r12w, %edi
	jmp	.LBB18_13
.LBB18_17:                              # %if.else
	notl	%r15d
	notl	%r11d
	movzwl	%r15w, %eax
	movzwl	%r12w, %ecx
	cmpl	%eax, %ecx
	cmovbw	%r12w, %ax
	movzwl	%ax, %eax
	movzwl	%r11w, %r8d
	cmpl	%r8d, %eax
	cmovbw	%ax, %r8w
	movl	68(%r14), %eax
	testl	%eax, %eax
	je	.LBB18_18
# BB#19:                                # %if.else.i.249
	cmpl	$15, %eax
	ja	.LBB18_20
# BB#21:                                # %if.then.5.i.258
	movq	48(%r14), %r9
	movl	56(%r14), %eax
	incl	%eax
	movl	%eax, %ecx
	andl	$-2, %ecx
	leaq	(%rcx,%r9), %rcx
	shrl	$2, %eax
	je	.LBB18_28
# BB#22:
	movzwl	%r8w, %esi
	.align	16, 0x90
.LBB18_23:                              # %while.body.i.262
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rcx), %ebx
	subl	%esi, %ebx
	jae	.LBB18_25
# BB#24:                                # %if.then.17.i.264
                                        #   in Loop: Header=BB18_23 Depth=1
	movslq	%eax, %rbx
	jmp	.LBB18_27
	.align	16, 0x90
.LBB18_25:                              # %if.else.20.i.267
                                        #   in Loop: Header=BB18_23 Depth=1
	movzwl	-2(%rcx), %edi
	cmpl	%esi, %edi
	jbe	.LBB18_77
# BB#26:                                # %if.then.25.i.270
                                        #   in Loop: Header=BB18_23 Depth=1
	movslq	%eax, %rbx
	negq	%rbx
.LBB18_27:                              # %if.end.41.i.283
                                        #   in Loop: Header=BB18_23 Depth=1
	leaq	(%rcx,%rbx,2), %rcx
	sarl	%eax
	testl	%eax, %eax
	jg	.LBB18_23
.LBB18_28:                              # %while.end.loopexit.i.286
	movzwl	%r8w, %esi
	jmp	.LBB18_29
.LBB18_3:
	xorl	%r12d, %r12d
	jmp	.LBB18_14
.LBB18_18:
	xorl	%eax, %eax
	jmp	.LBB18_30
.LBB18_20:
	movw	%r8w, %ax
	jmp	.LBB18_30
.LBB18_76:                              # %if.else.28.i
	leaq	-2(%rdx), %rcx
	movl	%edi, %esi
	subl	%ebx, %esi
	cmpl	%eax, %esi
	cmovlq	%rcx, %rdx
.LBB18_13:                              # %while.end.i
	movzwl	-2(%rdx), %eax
	movzwl	(%rdx), %ecx
	subl	%edi, %ecx
	subl	%eax, %edi
	cmpl	%ecx, %edi
	leaq	-2(%rdx), %r12
	cmovgel	%edx, %r12d
	subl	%r8d, %r12d
	shrl	%r12d
.LBB18_14:                              # %if.end.59.i
	cmpl	$0, 76(%r14)
	jne	.LBB18_16
# BB#15:                                # %if.then.60.i
	movl	56(%r14), %eax
	subl	%r12d, %eax
	movw	%ax, %r12w
.LBB18_16:                              # %upd_truncate.exit
	movzwl	%r12w, %esi
	movb	60(%r14), %cl
	shll	%cl, %esi
	jmp	.LBB18_75
.LBB18_77:                              # %if.else.28.i.278
	leaq	-2(%rcx), %rax
	movl	%esi, %edx
	subl	%edi, %edx
	cmpl	%ebx, %edx
	cmovlq	%rax, %rcx
.LBB18_29:                              # %while.end.i.300
	movzwl	-2(%rcx), %eax
	movzwl	(%rcx), %edx
	subl	%esi, %edx
	subl	%eax, %esi
	cmpl	%edx, %esi
	leaq	-2(%rcx), %rax
	cmovgel	%ecx, %eax
	subl	%r9d, %eax
	shrl	%eax
.LBB18_30:                              # %if.end.59.i.304
	cmpl	$0, 76(%r14)
	jne	.LBB18_32
# BB#31:                                # %if.then.60.i.309
	movl	56(%r14), %ecx
	subl	%eax, %ecx
	movw	%cx, %ax
.LBB18_32:                              # %upd_truncate.exit314
	movzwl	%ax, %r9d
	movb	60(%r14), %cl
	shll	%cl, %r9d
	movl	100(%r14), %eax
	testl	%eax, %eax
	je	.LBB18_33
# BB#34:                                # %if.else.i.180
	subl	%r8d, %r12d
	cmpl	$15, %eax
	ja	.LBB18_44
# BB#35:                                # %if.then.5.i.189
	movq	80(%r14), %r10
	movl	88(%r14), %eax
	incl	%eax
	movl	%eax, %ecx
	andl	$-2, %ecx
	leaq	(%rcx,%r10), %rcx
	shrl	$2, %eax
	je	.LBB18_42
# BB#36:
	movzwl	%r12w, %edx
	.align	16, 0x90
.LBB18_37:                              # %while.body.i.193
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rcx), %ebx
	subl	%edx, %ebx
	jae	.LBB18_39
# BB#38:                                # %if.then.17.i.195
                                        #   in Loop: Header=BB18_37 Depth=1
	movslq	%eax, %rbx
	jmp	.LBB18_41
	.align	16, 0x90
.LBB18_39:                              # %if.else.20.i.198
                                        #   in Loop: Header=BB18_37 Depth=1
	movzwl	-2(%rcx), %edi
	cmpl	%edx, %edi
	jbe	.LBB18_78
# BB#40:                                # %if.then.25.i.201
                                        #   in Loop: Header=BB18_37 Depth=1
	movslq	%eax, %rbx
	negq	%rbx
.LBB18_41:                              # %if.end.41.i.214
                                        #   in Loop: Header=BB18_37 Depth=1
	leaq	(%rcx,%rbx,2), %rcx
	sarl	%eax
	testl	%eax, %eax
	jg	.LBB18_37
.LBB18_42:                              # %while.end.loopexit.i.217
	movzwl	%r12w, %edx
	jmp	.LBB18_43
.LBB18_33:
	xorl	%r12d, %r12d
	jmp	.LBB18_44
.LBB18_78:                              # %if.else.28.i.209
	leaq	-2(%rcx), %rax
	movl	%edx, %esi
	subl	%edi, %esi
	cmpl	%ebx, %esi
	cmovlq	%rax, %rcx
.LBB18_43:                              # %while.end.i.231
	movzwl	-2(%rcx), %eax
	movzwl	(%rcx), %esi
	subl	%edx, %esi
	subl	%eax, %edx
	cmpl	%esi, %edx
	leaq	-2(%rcx), %r12
	cmovgel	%ecx, %r12d
	subl	%r10d, %r12d
	shrl	%r12d
.LBB18_44:                              # %if.end.59.i.235
	cmpl	$0, 108(%r14)
	jne	.LBB18_46
# BB#45:                                # %if.then.60.i.240
	movl	88(%r14), %eax
	subl	%r12d, %eax
	movw	%ax, %r12w
.LBB18_46:                              # %upd_truncate.exit245
	movzwl	%r12w, %esi
	movb	92(%r14), %cl
	shll	%cl, %esi
	movl	132(%r14), %eax
	testl	%eax, %eax
	je	.LBB18_47
# BB#48:                                # %if.else.i.111
	subl	%r8d, %r15d
	cmpl	$15, %eax
	ja	.LBB18_58
# BB#49:                                # %if.then.5.i.120
	movq	112(%r14), %r10
	movl	120(%r14), %eax
	incl	%eax
	movl	%eax, %ecx
	andl	$-2, %ecx
	leaq	(%rcx,%r10), %rcx
	shrl	$2, %eax
	je	.LBB18_56
# BB#50:
	movzwl	%r15w, %edx
	.align	16, 0x90
.LBB18_51:                              # %while.body.i.124
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rcx), %ebx
	subl	%edx, %ebx
	jae	.LBB18_53
# BB#52:                                # %if.then.17.i.126
                                        #   in Loop: Header=BB18_51 Depth=1
	movslq	%eax, %rbx
	jmp	.LBB18_55
	.align	16, 0x90
.LBB18_53:                              # %if.else.20.i.129
                                        #   in Loop: Header=BB18_51 Depth=1
	movzwl	-2(%rcx), %edi
	cmpl	%edx, %edi
	jbe	.LBB18_79
# BB#54:                                # %if.then.25.i.132
                                        #   in Loop: Header=BB18_51 Depth=1
	movslq	%eax, %rbx
	negq	%rbx
.LBB18_55:                              # %if.end.41.i.145
                                        #   in Loop: Header=BB18_51 Depth=1
	leaq	(%rcx,%rbx,2), %rcx
	sarl	%eax
	testl	%eax, %eax
	jg	.LBB18_51
.LBB18_56:                              # %while.end.loopexit.i.148
	movzwl	%r15w, %edx
	jmp	.LBB18_57
.LBB18_47:
	xorl	%r15d, %r15d
	jmp	.LBB18_58
.LBB18_79:                              # %if.else.28.i.140
	leaq	-2(%rcx), %rax
	movl	%edx, %ebp
	subl	%edi, %ebp
	cmpl	%ebx, %ebp
	cmovlq	%rax, %rcx
.LBB18_57:                              # %while.end.i.162
	movzwl	-2(%rcx), %eax
	movzwl	(%rcx), %edi
	subl	%edx, %edi
	subl	%eax, %edx
	cmpl	%edi, %edx
	leaq	-2(%rcx), %r15
	cmovgel	%ecx, %r15d
	subl	%r10d, %r15d
	shrl	%r15d
.LBB18_58:                              # %if.end.59.i.166
	cmpl	$0, 140(%r14)
	jne	.LBB18_60
# BB#59:                                # %if.then.60.i.171
	movl	120(%r14), %eax
	subl	%r15d, %eax
	movw	%ax, %r15w
.LBB18_60:                              # %upd_truncate.exit176
	orl	%r9d, %esi
	movzwl	%r15w, %r9d
	movb	124(%r14), %cl
	shll	%cl, %r9d
	movl	164(%r14), %eax
	testl	%eax, %eax
	je	.LBB18_61
# BB#62:                                # %if.else.i.42
	subl	%r8d, %r11d
	cmpl	$15, %eax
	ja	.LBB18_72
# BB#63:                                # %if.then.5.i.51
	movq	144(%r14), %r8
	movl	152(%r14), %eax
	incl	%eax
	movl	%eax, %ecx
	andl	$-2, %ecx
	leaq	(%rcx,%r8), %rcx
	shrl	$2, %eax
	je	.LBB18_70
# BB#64:
	movzwl	%r11w, %ebp
	.align	16, 0x90
.LBB18_65:                              # %while.body.i.55
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rcx), %ebx
	subl	%ebp, %ebx
	jae	.LBB18_67
# BB#66:                                # %if.then.17.i.57
                                        #   in Loop: Header=BB18_65 Depth=1
	movslq	%eax, %rbx
	jmp	.LBB18_69
	.align	16, 0x90
.LBB18_67:                              # %if.else.20.i.60
                                        #   in Loop: Header=BB18_65 Depth=1
	movzwl	-2(%rcx), %edi
	cmpl	%ebp, %edi
	jbe	.LBB18_80
# BB#68:                                # %if.then.25.i.63
                                        #   in Loop: Header=BB18_65 Depth=1
	movslq	%eax, %rbx
	negq	%rbx
.LBB18_69:                              # %if.end.41.i.76
                                        #   in Loop: Header=BB18_65 Depth=1
	leaq	(%rcx,%rbx,2), %rcx
	sarl	%eax
	testl	%eax, %eax
	jg	.LBB18_65
.LBB18_70:                              # %while.end.loopexit.i.79
	movzwl	%r11w, %ebp
	jmp	.LBB18_71
.LBB18_61:
	xorl	%r11d, %r11d
	jmp	.LBB18_72
.LBB18_80:                              # %if.else.28.i.71
	leaq	-2(%rcx), %rax
	movl	%ebp, %edx
	subl	%edi, %edx
	cmpl	%ebx, %edx
	cmovlq	%rax, %rcx
.LBB18_71:                              # %while.end.i.93
	movzwl	-2(%rcx), %eax
	movzwl	(%rcx), %edx
	subl	%ebp, %edx
	subl	%eax, %ebp
	cmpl	%edx, %ebp
	leaq	-2(%rcx), %r11
	cmovgel	%ecx, %r11d
	subl	%r8d, %r11d
	shrl	%r11d
.LBB18_72:                              # %if.end.59.i.97
	orl	%r9d, %esi
	cmpl	$0, 172(%r14)
	jne	.LBB18_74
# BB#73:                                # %if.then.60.i.102
	movl	152(%r14), %eax
	subl	%r11d, %eax
	movw	%ax, %r11w
.LBB18_74:                              # %upd_truncate.exit107
	movzwl	%r11w, %eax
	movb	156(%r14), %cl
	shll	%cl, %eax
	orl	%eax, %esi
.LBB18_75:                              # %if.end.62
	movl	%esi, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	upd_rgb_novcolor, .Lfunc_end18-upd_rgb_novcolor
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI19_0:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI19_1:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_2:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	upd_open_fscomp,@function
upd_open_fscomp:                        # @upd_open_fscomp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp112:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp113:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp114:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp115:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp116:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp117:
	.cfi_def_cfa_offset 80
.Ltmp118:
	.cfi_offset %rbx, -56
.Ltmp119:
	.cfi_offset %r12, -48
.Ltmp120:
	.cfi_offset %r13, -40
.Ltmp121:
	.cfi_offset %r14, -32
.Ltmp122:
	.cfi_offset %r15, -24
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	18488(%r14), %r15
	movslq	556(%r15), %rax
	xorl	%r12d, %r12d
	testq	%rax, %rax
	je	.LBB19_48
# BB#1:                                 # %entry
	cmpl	$4, %eax
	jg	.LBB19_48
# BB#2:                                 # %entry
	leal	-1(%rax), %ecx
	cmpl	$31, %ecx
	ja	.LBB19_48
# BB#3:                                 # %if.then.5
	movq	16(%r15), %rcx
	cmpl	56(%rcx), %eax
	jbe	.LBB19_4
# BB#14:                                # %for.cond.28.preheader
	movaps	.LCPI19_0(%rip), %xmm0  # xmm0 = [0,1,2,3]
	movaps	%xmm0, (%rsp)
	jmp	.LBB19_15
.LBB19_4:                               # %for.cond.preheader
	testl	%eax, %eax
	jle	.LBB19_48
# BB#5:                                 # %for.body.lr.ph
	movq	48(%rcx), %rdx
	xorl	%esi, %esi
	testb	$1, %al
	jne	.LBB19_7
# BB#6:
	movl	$1, %ecx
	jmp	.LBB19_8
.LBB19_7:                               # %for.body.prol
	movl	(%rdx), %ecx
	movl	%ecx, (%rsp)
	cmpl	$4, %ecx
	sbbl	%ecx, %ecx
	andl	$1, %ecx
	movl	$1, %esi
.LBB19_8:                               # %for.body.lr.ph.split
	movb	$1, %bl
	cmpl	$1, %eax
	je	.LBB19_12
# BB#9:
	xorl	%edi, %edi
	.align	16, 0x90
.LBB19_10:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rdx,%rsi,4), %ebp
	movl	%ebp, (%rsp,%rsi,4)
	movl	4(%rdx,%rsi,4), %ebx
	movl	%ebx, 4(%rsp,%rsi,4)
	orl	%ebp, %ebx
	cmpl	$3, %ebx
	cmoval	%edi, %ecx
	addq	$2, %rsi
	cmpq	%rsi, %rax
	jg	.LBB19_10
# BB#11:                                # %for.end.unr-lcssa
	testl	%esi, %esi
	setne	%bl
.LBB19_12:                              # %for.end
	xorl	%r12d, %r12d
	testb	%bl, %bl
	je	.LBB19_48
# BB#13:                                # %for.end
	testl	%ecx, %ecx
	je	.LBB19_48
.LBB19_15:                              # %for.end
	testl	%eax, %eax
	jle	.LBB19_48
# BB#16:                                # %for.body.43.lr.ph
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB19_17:                              # %for.body.43
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$1, %esi
	movl	$32, %edx
	movl	$.L.str.6, %ecx
	callq	*88(%rdi)
	movq	%rax, 240(%r15,%rbx,8)
	testq	%rax, %rax
	je	.LBB19_18
# BB#19:                                # %for.inc.56
                                        #   in Loop: Header=BB19_17 Depth=1
	incq	%rbx
	movslq	556(%r15), %rax
	cmpq	%rbx, %rax
	jg	.LBB19_17
# BB#20:                                # %if.end.59
	xorl	%r12d, %r12d
	testl	%ebx, %ebx
	je	.LBB19_48
# BB#21:                                # %if.then.61
	movl	544(%r15), %ebx
	addl	$2, %ebx
	imull	%eax, %ebx
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$4, %edx
	movl	$.L.str.8, %ecx
	movl	%ebx, %esi
	callq	*88(%rdi)
	movq	%rax, 232(%r15)
	testq	%rax, %rax
	je	.LBB19_22
# BB#23:                                # %if.end.80
	movl	%ebx, 564(%r15)
	movl	%ebx, %edx
	shlq	$2, %rdx
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	movslq	556(%r15), %rsi
	testq	%rsi, %rsi
	jle	.LBB19_48
# BB#24:                                # %for.body.87.lr.ph
	xorl	%r8d, %r8d
	xorps	%xmm0, %xmm0
	movss	.LCPI19_1(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movsd	.LCPI19_2(%rip), %xmm2  # xmm2 = mem[0],zero
	.align	16, 0x90
.LBB19_25:                              # %for.body.87
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_34 Depth 2
	movq	240(%r15,%r8,8), %r9
	movslq	(%rsp,%r8,4), %rcx
	movq	%rcx, %rax
	shlq	$5, %rax
	movl	56(%r15,%rax), %edi
	movl	%edi, 8(%r9)
	movl	%edi, 12(%r9)
	movl	$0, (%r9)
	movl	$1, 4(%r9)
	movl	%ecx, 28(%r9)
	movl	%r8d, 72(%r15,%rax)
	movl	68(%r15,%rax), %ecx
	movl	%ecx, 24(%r9)
	movl	60(%r15,%rax), %ecx
	movl	%ecx, 20(%r9)
	movl	%edi, 16(%r9)
	testl	%edi, %edi
	je	.LBB19_37
# BB#26:                                # %if.end.121
                                        #   in Loop: Header=BB19_25 Depth=1
	movslq	64(%r15,%rax), %rcx
	movq	40(%r15), %rdx
	shlq	$4, %rcx
	movl	8(%rdx,%rcx), %ebp
	decl	%ebp
	cmpl	$0, 76(%r15,%rax)
	movq	(%rdx,%rcx), %rax
	movss	(%rax), %xmm5           # xmm5 = mem[0],zero,zero,zero
	movss	(%rax,%rbp,4), %xmm3    # xmm3 = mem[0],zero,zero,zero
	movaps	%xmm5, %xmm4
	je	.LBB19_28
# BB#27:                                # %if.end.121
                                        #   in Loop: Header=BB19_25 Depth=1
	movaps	%xmm3, %xmm4
.LBB19_28:                              # %if.end.121
                                        #   in Loop: Header=BB19_25 Depth=1
	je	.LBB19_30
# BB#29:                                # %if.end.121
                                        #   in Loop: Header=BB19_25 Depth=1
	movaps	%xmm5, %xmm3
.LBB19_30:                              # %if.end.121
                                        #   in Loop: Header=BB19_25 Depth=1
	ucomiss	%xmm3, %xmm0
	jbe	.LBB19_33
# BB#31:                                # %if.then.192
                                        #   in Loop: Header=BB19_25 Depth=1
	xorps	%xmm3, %xmm3
	ucomiss	%xmm4, %xmm3
	jbe	.LBB19_33
# BB#32:                                # %if.then.196
                                        #   in Loop: Header=BB19_25 Depth=1
	leal	1(%rdi), %eax
	xorps	%xmm5, %xmm5
	cvtsi2ssl	%eax, %xmm5
	movaps	%xmm1, %xmm4
	divss	%xmm5, %xmm4
.LBB19_33:                              # %if.end.202
                                        #   in Loop: Header=BB19_25 Depth=1
	movaps	%xmm1, %xmm5
	minss	%xmm4, %xmm5
	movl	$268435455, 12(%r9)     # imm = 0xFFFFFFF
	subss	%xmm3, %xmm5
	xorps	%xmm4, %xmm4
	cvtss2sd	%xmm5, %xmm4
	xorl	%ebp, %ebp
	movl	$268435455, %ebx        # imm = 0xFFFFFFF
	.align	16, 0x90
.LBB19_34:                              # %for.body.212
                                        #   Parent Loop BB19_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorps	%xmm5, %xmm5
	cvtsi2sdl	%ebx, %xmm5
	mulsd	%xmm4, %xmm5
	addsd	%xmm2, %xmm5
	cvttsd2si	%xmm5, %ecx
	movl	%ecx, %eax
	cltd
	idivl	%edi
	testl	%edx, %edx
	je	.LBB19_36
# BB#35:                                # %if.end.222
                                        #   in Loop: Header=BB19_34 Depth=2
	movl	%edi, %eax
	subl	%edx, %eax
	addl	%eax, %ecx
	xorps	%xmm5, %xmm5
	cvtsi2sdl	%ecx, %xmm5
	divsd	%xmm4, %xmm5
	addsd	%xmm2, %xmm5
	cvttsd2si	%xmm5, %eax
	movl	%eax, %ebx
	notl	%ebx
	andl	$1, %ebx
	addl	%eax, %ebx
	movl	%ebx, 12(%r9)
	incl	%ebp
	cmpl	$32, %ebp
	jl	.LBB19_34
.LBB19_36:                              # %for.end.241
                                        #   in Loop: Header=BB19_25 Depth=1
	cvtss2sd	%xmm3, %xmm3
	xorps	%xmm4, %xmm4
	cvtsi2sdl	%ebx, %xmm4
	mulsd	%xmm3, %xmm4
	addsd	%xmm2, %xmm4
	cvttsd2si	%xmm4, %eax
	movl	%eax, (%r9)
	movl	%ecx, %eax
	cltd
	idivl	%edi
	movl	%eax, 4(%r9)
	movl	%ebx, %eax
	shrl	$31, %eax
	addl	%ebx, %eax
	sarl	%eax
	movl	%eax, 8(%r9)
.LBB19_37:                              # %cleanup
                                        #   in Loop: Header=BB19_25 Depth=1
	incq	%r8
	cmpq	%r8, %rsi
	jg	.LBB19_25
# BB#38:                                # %if.end.263
	xorl	%r12d, %r12d
	testl	%r8d, %r8d
	je	.LBB19_48
# BB#39:                                # %land.lhs.true
	movb	520(%r15), %cl
	andb	$8, %cl
	shrb	$3, %cl
	testl	%esi, %esi
	setle	%al
	xorl	%r12d, %r12d
	testb	%cl, %cl
	cmovnel	%r8d, %r12d
	jne	.LBB19_48
# BB#40:                                # %land.lhs.true
	testb	%al, %al
	jne	.LBB19_48
# BB#41:                                # %for.body.271.lr.ph
	movl	564(%r15), %eax
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB19_42:                              # %for.body.271
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_43 Depth 2
                                        #     Child Loop BB19_46 Depth 2
	movq	240(%r15,%r12,8), %r14
	movl	$2147483647, %r13d      # imm = 0x7FFFFFFF
	movl	$-2147483648, %ebp      # imm = 0xFFFFFFFF80000000
	cmpl	%eax, %r12d
	movl	%r12d, %ebx
	jae	.LBB19_44
	.align	16, 0x90
.LBB19_43:                              # %for.body.282
                                        #   Parent Loop BB19_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	rand
	cmpl	%eax, %r13d
	cmovgl	%eax, %r13d
	cmpl	%eax, %ebp
	cmovll	%eax, %ebp
	movslq	%ebx, %rcx
	movq	232(%r15), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	556(%r15), %esi
	movl	564(%r15), %eax
	leal	(%rcx,%rsi), %ebx
	cmpl	%eax, %ebx
	jb	.LBB19_43
.LBB19_44:                              # %for.end.298
                                        #   in Loop: Header=BB19_42 Depth=1
	cmpl	%eax, %r12d
	jae	.LBB19_47
# BB#45:                                # %for.body.314.lr.ph
                                        #   in Loop: Header=BB19_42 Depth=1
	cvtsi2ssl	8(%r14), %xmm1
	subl	%r13d, %ebp
	cvtsi2ssl	%ebp, %xmm2
	movaps	%xmm1, %xmm0
	divss	%xmm2, %xmm0
	movaps	%xmm0, %xmm2
	addss	%xmm2, %xmm2
	divss	%xmm2, %xmm1
	cvttss2si	%xmm1, %ecx
	movq	232(%r15), %rdx
	addl	%r13d, %ecx
	movl	%r12d, %edi
	.align	16, 0x90
.LBB19_46:                              # %for.body.314
                                        #   Parent Loop BB19_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%edi, %rdi
	movl	(%rdx,%rdi,4), %eax
	subl	%ecx, %eax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movl	%eax, (%rdx,%rdi,4)
	movl	556(%r15), %esi
	movl	564(%r15), %eax
	leal	(%rdi,%rsi), %edi
	cmpl	%eax, %edi
	jb	.LBB19_46
.LBB19_47:                              # %for.end.328
                                        #   in Loop: Header=BB19_42 Depth=1
	incq	%r12
	movslq	%esi, %rcx
	cmpq	%rcx, %r12
	jl	.LBB19_42
	jmp	.LBB19_48
.LBB19_18:                              # %if.then.52
	movq	24(%r14), %rdi
	xorl	%r12d, %r12d
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movl	%ebx, %edx
	callq	errprintf
	jmp	.LBB19_48
.LBB19_22:                              # %if.else.76
	movq	24(%r14), %rdi
	xorl	%r12d, %r12d
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	movl	%ebx, %edx
	callq	errprintf
.LBB19_48:                              # %if.end.332
	movq	$upd_fscomp, 208(%r15)
	movl	520(%r15), %eax
	movl	%eax, %ecx
	andl	$-16385, %ecx           # imm = 0xFFFFFFFFFFFFBFFF
	orl	$16384, %eax            # imm = 0x4000
	testl	%r12d, %r12d
	cmovel	%ecx, %eax
	movl	%eax, 520(%r15)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	upd_open_fscomp, .Lfunc_end19-upd_open_fscomp
	.cfi_endproc

	.align	16, 0x90
	.type	upd_close_render,@function
upd_close_render:                       # @upd_close_render
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp124:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp125:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp126:
	.cfi_def_cfa_offset 32
.Ltmp127:
	.cfi_offset %rbx, -32
.Ltmp128:
	.cfi_offset %r14, -24
.Ltmp129:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	18488(%r14), %r15
	testq	%r15, %r15
	je	.LBB20_11
# BB#1:                                 # %if.then
	movq	208(%r15), %rax
	movl	$upd_fscomp, %ecx
	cmpq	%rcx, %rax
	je	.LBB20_3
# BB#2:                                 # %if.then
	movl	$upd_fscmyk, %ecx
	cmpq	%rcx, %rax
	jne	.LBB20_7
.LBB20_3:                               # %if.then.4
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB20_4:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	240(%r15,%rbx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB20_6
# BB#5:                                 # %if.end.i
                                        #   in Loop: Header=BB20_4 Depth=1
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	callq	*24(%rdi)
	movq	$0, 240(%r15,%rbx,8)
.LBB20_6:                               # %for.inc.i
                                        #   in Loop: Header=BB20_4 Depth=1
	incq	%rbx
	cmpq	$32, %rbx
	jne	.LBB20_4
.LBB20_7:                               # %if.end
	cmpl	$0, 564(%r15)
	je	.LBB20_10
# BB#8:                                 # %land.lhs.true
	movq	232(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB20_10
# BB#9:                                 # %if.then.7
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.8, %edx
	callq	*24(%rdi)
.LBB20_10:                              # %if.end.11
	movq	$0, 232(%r15)
	movl	$0, 564(%r15)
	andb	$-65, 521(%r15)
	movq	$0, 208(%r15)
	movq	$0, 504(%r15)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 240(%r15)
	movups	%xmm0, 256(%r15)
	movups	%xmm0, 272(%r15)
	movups	%xmm0, 288(%r15)
	movups	%xmm0, 304(%r15)
	movq	$0, 320(%r15)
	movups	%xmm0, 328(%r15)
	movups	%xmm0, 344(%r15)
	movups	%xmm0, 360(%r15)
	movups	%xmm0, 376(%r15)
	movups	%xmm0, 392(%r15)
	movups	%xmm0, 408(%r15)
	movups	%xmm0, 424(%r15)
	movups	%xmm0, 440(%r15)
	movups	%xmm0, 456(%r15)
	movups	%xmm0, 472(%r15)
	movq	$0, 488(%r15)
.LBB20_11:                              # %if.end.16
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end20:
	.size	upd_close_render, .Lfunc_end20-upd_close_render
	.cfi_endproc

	.align	16, 0x90
	.type	upd_fscomp,@function
upd_fscomp:                             # @upd_fscomp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp130:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp131:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp132:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp133:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp134:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp135:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp136:
	.cfi_def_cfa_offset 144
.Ltmp137:
	.cfi_offset %rbx, -56
.Ltmp138:
	.cfi_offset %r12, -48
.Ltmp139:
	.cfi_offset %r13, -40
.Ltmp140:
	.cfi_offset %r14, -32
.Ltmp141:
	.cfi_offset %r15, -24
.Ltmp142:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbp
	movl	584(%rbp), %eax
	andl	620(%rbp), %eax
	cltq
	movq	224(%rbp), %rcx
	movq	232(%rbp), %r13
	movq	(%rcx,%rax,8), %rax
	movslq	556(%rbp), %r12
	cmpq	$3, %r12
	leaq	(%r13,%r12,4), %rcx
	movl	544(%rbp), %r15d
	jne	.LBB21_1
# BB#133:                               # %entry.sw.bb.6_crit_edge
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	leaq	576(%rbp), %r14
	jmp	.LBB21_3
.LBB21_1:                               # %entry
	cmpl	$4, %r12d
	jne	.LBB21_4
# BB#2:                                 # %sw.bb
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	72(%rax), %rdi
	leaq	576(%rbp), %r14
	movslq	576(%rbp), %rdx
	xorl	%esi, %esi
	movq	%rax, %rbx
	callq	memset
	movq	%rbx, %rax
.LBB21_3:                               # %sw.bb.6
	movq	48(%rax), %rdi
	movslq	(%r14), %rdx
	xorl	%esi, %esi
	movq	%rax, %rbx
	callq	memset
	movq	24(%rbx), %rdi
	movslq	(%r14), %rdx
	xorl	%esi, %esi
	callq	memset
	movq	%rbx, %rax
	movq	56(%rsp), %rcx          # 8-byte Reload
.LBB21_4:                               # %sw.default
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	%rax, 48(%rsp)          # 8-byte Spill
	leaq	(%rcx,%r12,4), %rbx
	movq	(%rax), %rdi
	movslq	576(%rbp), %rdx
	xorl	%esi, %esi
	callq	memset
	movq	%rbp, %r8
	movl	520(%r8), %eax
	movl	556(%r8), %ecx
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	movl	%eax, %ecx
	andl	$524288, %ecx           # imm = 0x80000
	testb	$1, %al
	jne	.LBB21_5
# BB#34:                                # %if.else.48
	testl	%ecx, %ecx
	je	.LBB21_35
# BB#36:                                # %if.then.52
	movl	68(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, %edx
	negl	%edx
	leal	-1(%r15), %esi
	imull	%esi, %ecx
	movslq	%ecx, %rcx
	leaq	(%rbx,%rcx,4), %rbx
	movb	%sil, %cl
	andb	$7, %cl
	movl	$128, %r12d
	shrl	%cl, %r12d
	sarl	$3, %esi
	movl	%edx, 68(%rsp)          # 4-byte Spill
	jmp	.LBB21_37
.LBB21_5:                               # %if.then
	movb	$-128, %r12b
	testl	%ecx, %ecx
	je	.LBB21_7
# BB#6:
	xorl	%esi, %esi
	jmp	.LBB21_8
.LBB21_35:
	movb	$-128, %r12b
	xorl	%esi, %esi
.LBB21_37:                              # %if.end.68
	testb	$4, %al
	jne	.LBB21_38
# BB#39:                                # %if.then.72
	movl	%esi, 84(%rsp)          # 4-byte Spill
	movq	%r8, %rdi
	movq	%r8, %rbp
	callq	upd_pxlrev
	testl	%r15d, %r15d
	jle	.LBB21_40
# BB#41:
	movq	%rbp, %r8
	.align	16, 0x90
.LBB21_42:                              # %land.rhs.77
                                        # =>This Inner Loop Header: Depth=1
	movq	%r8, %rdi
	movq	%r8, %rbp
	callq	*200(%rbp)
	movq	%rbp, %rcx
	testl	%eax, %eax
	jne	.LBB21_43
# BB#44:                                # %while.body.83
                                        #   in Loop: Header=BB21_42 Depth=1
	leal	-1(%r15), %r14d
	cmpl	$1, %r15d
	movl	%r14d, %r15d
	movq	%rcx, %r8
	jg	.LBB21_42
	jmp	.LBB21_45
.LBB21_7:                               # %if.else
	movl	68(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, %edx
	negl	%edx
	leal	-1(%r15), %esi
	imull	%esi, %ecx
	movslq	%ecx, %rcx
	leaq	(%rbx,%rcx,4), %rbx
	movb	%sil, %cl
	andb	$7, %cl
	movl	$128, %r12d
	shrl	%cl, %r12d
	sarl	$3, %esi
	movl	%edx, 68(%rsp)          # 4-byte Spill
.LBB21_8:                               # %if.end
	testb	$4, %al
	jne	.LBB21_9
# BB#10:                                # %if.then.41
	movq	184(%r8), %rax
	movq	%rax, 192(%r8)
	testq	%rax, %rax
	je	.LBB21_11
# BB#12:                                # %if.else.i
	movq	16(%r8), %rax
	movq	(%rax), %rax
	movl	4(%rax), %edx
	cmpl	$15, %edx
	jg	.LBB21_15
# BB#13:                                # %if.else.i
	movl	%esi, 84(%rsp)          # 4-byte Spill
	leal	-1(%rdx), %eax
	cmpl	$7, %eax
	ja	.LBB21_25
# BB#14:                                # %if.else.i
	jmpq	*.LJTI21_0(,%rax,8)
.LBB21_19:                              # %sw.bb.i
	movq	$upd_pxlget1f1, 200(%r8)
	movl	$upd_pxlget1f1, %ecx
	jmp	.LBB21_27
.LBB21_38:
	movl	%esi, 84(%rsp)          # 4-byte Spill
	movl	%r15d, %r14d
	jmp	.LBB21_45
.LBB21_9:
	movl	%esi, 84(%rsp)          # 4-byte Spill
	jmp	.LBB21_33
.LBB21_40:
	movl	%r15d, %r14d
	movq	%rbp, %r8
	jmp	.LBB21_45
.LBB21_11:                              # %if.then.i
	movl	%esi, 84(%rsp)          # 4-byte Spill
	jmp	.LBB21_26
.LBB21_43:
	movl	%r15d, %r14d
	movq	%rcx, %r8
.LBB21_45:                              # %if.end.86
	movq	184(%r8), %rax
	movq	%rax, 192(%r8)
	testq	%rax, %rax
	je	.LBB21_60
# BB#46:                                # %if.else.i.253
	movq	16(%r8), %rax
	movq	(%rax), %rax
	movl	4(%rax), %edx
	cmpl	$15, %edx
	jg	.LBB21_49
# BB#47:                                # %if.else.i.253
	leal	-1(%rdx), %eax
	cmpl	$7, %eax
	ja	.LBB21_59
# BB#48:                                # %if.else.i.253
	jmpq	*.LJTI21_1(,%rax,8)
.LBB21_53:                              # %sw.bb.i.255
	movq	$upd_pxlget1f1, 200(%r8)
	jmp	.LBB21_61
.LBB21_49:                              # %if.else.i.253
	cmpl	$16, %edx
	je	.LBB21_57
# BB#50:                                # %if.else.i.253
	cmpl	$24, %edx
	jne	.LBB21_51
# BB#58:                                # %sw.bb.11.i.265
	movq	$upd_pxlget24f, 200(%r8)
	jmp	.LBB21_61
.LBB21_15:                              # %if.else.i
	cmpl	$16, %edx
	je	.LBB21_23
# BB#16:                                # %if.else.i
	cmpl	$24, %edx
	jne	.LBB21_17
# BB#24:                                # %sw.bb.11.i
	movl	%esi, 84(%rsp)          # 4-byte Spill
	movq	$upd_pxlget24f, 200(%r8)
	movl	$upd_pxlget24f, %ecx
	jmp	.LBB21_27
.LBB21_57:                              # %sw.bb.9.i.263
	movq	$upd_pxlget16f, 200(%r8)
	jmp	.LBB21_61
.LBB21_51:                              # %if.else.i.253
	cmpl	$32, %edx
	jne	.LBB21_59
# BB#52:                                # %sw.bb.13.i.267
	movq	$upd_pxlget32f, 200(%r8)
	jmp	.LBB21_61
.LBB21_59:                              # %sw.default.i.271
	movq	624(%r8), %rdi
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%r8, %rbp
	callq	errprintf
	movq	%rbp, %r8
.LBB21_60:                              # %if.end.88
	movq	$upd_pxlgetnix, 200(%r8)
	jmp	.LBB21_61
.LBB21_23:                              # %sw.bb.9.i
	movl	%esi, 84(%rsp)          # 4-byte Spill
	movq	$upd_pxlget16f, 200(%r8)
	movl	$upd_pxlget16f, %ecx
	jmp	.LBB21_27
.LBB21_17:                              # %if.else.i
	movl	%esi, 84(%rsp)          # 4-byte Spill
	cmpl	$32, %edx
	jne	.LBB21_25
# BB#18:                                # %sw.bb.13.i
	movq	$upd_pxlget32f, 200(%r8)
	movl	$upd_pxlget32f, %ecx
	jmp	.LBB21_27
.LBB21_25:                              # %sw.default.i
	movq	624(%r8), %rdi
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%r8, %rbp
	callq	errprintf
	movq	%rbp, %r8
.LBB21_26:                              # %while.cond.preheader
	movq	$upd_pxlgetnix, 200(%r8)
	movl	$upd_pxlgetnix, %ecx
.LBB21_27:                              # %while.cond.preheader
	testl	%r15d, %r15d
	jle	.LBB21_33
# BB#28:                                # %land.rhs.preheader
	movq	%r8, %rdi
	movq	%r8, %rbp
	callq	*%rcx
	testl	%eax, %eax
	jne	.LBB21_32
	.align	16, 0x90
.LBB21_29:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r15d, %r14d
	cmpl	$2, %r14d
	jl	.LBB21_31
# BB#30:                                # %while.body.land.rhs_crit_edge
                                        #   in Loop: Header=BB21_29 Depth=1
	leal	-1(%r14), %r15d
	movq	%rbp, %rdi
	callq	*200(%rbp)
	testl	%eax, %eax
	je	.LBB21_29
.LBB21_31:                              # %while.body.if.end.46.loopexit_crit_edge
	decl	%r14d
	movl	%r14d, %r15d
.LBB21_32:                              # %if.end.46
	movq	%rbp, %r8
.LBB21_33:                              # %if.end.46
	movq	%r8, %rdi
	movq	%r8, %rbp
	callq	upd_pxlrev
	movq	%rbp, %r8
	movl	%r15d, %r14d
.LBB21_61:                              # %if.end.88
	movl	520(%r8), %eax
	testb	$2, %al
	jne	.LBB21_63
# BB#62:                                # %if.then.92
	xorl	$1, %eax
	movl	%eax, 520(%r8)
.LBB21_63:                              # %if.end.94
	testb	$4, %al
	jne	.LBB21_67
# BB#64:                                # %if.then.98
	movq	192(%r8), %rax
	movq	200(%r8), %r15
	testl	%r14d, %r14d
	jle	.LBB21_65
# BB#74:                                # %land.rhs.103.lr.ph
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movslq	68(%rsp), %rax          # 4-byte Folded Reload
	shlq	$2, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB21_75:                              # %land.rhs.103
                                        # =>This Inner Loop Header: Depth=1
	movq	%r8, %rdi
	movq	%r8, %rbp
	callq	*%r15
	testl	%eax, %eax
	jne	.LBB21_76
# BB#77:                                # %while.body.109
                                        #   in Loop: Header=BB21_75 Depth=1
	decl	%r14d
	movq	192(%rbp), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	200(%rbp), %r15
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	movq	%rbp, %r8
	js	.LBB21_78
# BB#81:                                # %if.else.124
                                        #   in Loop: Header=BB21_75 Depth=1
	shrb	%r12b
	sete	%al
	movb	$-128, %cl
	movl	84(%rsp), %edx          # 4-byte Reload
	je	.LBB21_83
# BB#82:                                # %if.else.124
                                        #   in Loop: Header=BB21_75 Depth=1
	movb	%r12b, %cl
.LBB21_83:                              # %if.else.124
                                        #   in Loop: Header=BB21_75 Depth=1
	movzbl	%al, %eax
	jmp	.LBB21_80
	.align	16, 0x90
.LBB21_78:                              # %if.then.117
                                        #   in Loop: Header=BB21_75 Depth=1
	addb	%r12b, %r12b
	cmpb	$1, %r12b
	sbbl	%eax, %eax
	testb	%r12b, %r12b
	movb	$1, %cl
	movl	84(%rsp), %edx          # 4-byte Reload
	je	.LBB21_80
# BB#79:                                # %if.then.117
                                        #   in Loop: Header=BB21_75 Depth=1
	movb	%r12b, %cl
	.align	16, 0x90
.LBB21_80:                              # %if.then.117
                                        #   in Loop: Header=BB21_75 Depth=1
	movb	%cl, %r12b
	addl	%eax, %edx
	movl	%edx, 84(%rsp)          # 4-byte Spill
	addq	40(%rsp), %rbx          # 8-byte Folded Reload
	leal	1(%r14), %eax
	cmpl	$1, %eax
	jg	.LBB21_75
	jmp	.LBB21_66
.LBB21_65:
	movq	%rax, 72(%rsp)          # 8-byte Spill
	jmp	.LBB21_66
.LBB21_76:
	movq	%rbp, %r8
.LBB21_66:                              # %while.end.132
	movq	%r15, 200(%r8)
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	%rax, 192(%r8)
.LBB21_67:                              # %if.end.135
	movl	$0, 72(%rsp)            # 4-byte Folded Spill
	movq	$-1, %rcx
	cmpl	$4, 556(%r8)
	jne	.LBB21_70
# BB#68:                                # %land.lhs.true
	testb	$16, 522(%r8)
	je	.LBB21_70
# BB#69:                                # %if.then.142
	movslq	72(%r8), %rcx
	movl	$1, %eax
	shll	%cl, %eax
	movl	%eax, 72(%rsp)          # 4-byte Spill
.LBB21_70:                              # %if.end.146
	testl	%r14d, %r14d
	jle	.LBB21_127
# BB#71:                                # %while.body.151.lr.ph
	leaq	(%rcx,%rcx,2), %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rax,8), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	incl	%r14d
	movl	68(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, %eax
	negl	%eax
	cltq
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movslq	%ecx, %rax
	shlq	$2, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	$1, %r15d
	movl	$1, %eax
	subl	%ecx, %eax
	cltq
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	$2, %eax
	subl	%ecx, %eax
	cltq
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$3, %eax
	subl	%ecx, %eax
	cltq
	movq	%rax, (%rsp)            # 8-byte Spill
	.align	16, 0x90
.LBB21_72:                              # %while.body.151
                                        # =>This Inner Loop Header: Depth=1
	movq	%r8, %rdi
	movq	%r8, %rbp
	callq	*200(%rbp)
	movq	%rbp, %r8
	movl	556(%r8), %ecx
	xorl	%edx, %edx
	cmpl	$3, %ecx
	jne	.LBB21_84
# BB#73:                                #   in Loop: Header=BB21_72 Depth=1
	movq	48(%rsp), %r9           # 8-byte Reload
	movq	56(%rsp), %rbp          # 8-byte Reload
	movl	84(%rsp), %r10d         # 4-byte Reload
	jmp	.LBB21_94
	.align	16, 0x90
.LBB21_84:                              # %while.body.151
                                        #   in Loop: Header=BB21_72 Depth=1
	cmpl	$4, %ecx
	movq	48(%rsp), %r9           # 8-byte Reload
	movq	56(%rsp), %rbp          # 8-byte Reload
	movl	84(%rsp), %r10d         # 4-byte Reload
	jne	.LBB21_111
# BB#85:                                # %sw.bb.155
                                        #   in Loop: Header=BB21_72 Depth=1
	movq	264(%r8), %rsi
	movb	20(%rsi), %cl
	movl	%eax, %edi
	shrl	%cl, %edi
	andl	16(%rsi), %edi
	imull	4(%rsi), %edi
	addl	(%rsi), %edi
	addl	12(%rbx), %edi
	movl	12(%rbp), %ecx
	addl	%ecx, %edi
	addl	$4, %ecx
	sarl	$3, %ecx
	subl	%ecx, %edi
	movl	%edi, 12(%r13)
	js	.LBB21_86
# BB#87:                                # %if.else.177
                                        #   in Loop: Header=BB21_72 Depth=1
	movl	12(%rsi), %ecx
	cmpl	%ecx, %edi
	jle	.LBB21_89
# BB#88:                                # %if.then.182
                                        #   in Loop: Header=BB21_72 Depth=1
	movl	%ecx, 12(%r13)
	movl	%ecx, %edi
	jmp	.LBB21_89
.LBB21_86:                              # %if.then.175
                                        #   in Loop: Header=BB21_72 Depth=1
	movl	$0, 12(%r13)
	xorl	%edi, %edi
.LBB21_89:                              # %if.end.187
                                        #   in Loop: Header=BB21_72 Depth=1
	xorl	%edx, %edx
	cmpl	8(%rsi), %edi
	jle	.LBB21_91
# BB#90:                                # %if.then.192
                                        #   in Loop: Header=BB21_72 Depth=1
	subl	12(%rsi), %edi
	movl	%edi, 12(%r13)
	movslq	%r10d, %rcx
	movq	72(%r9), %rdx
	orb	%r12b, (%rdx,%rcx)
	movl	$8, %edx
.LBB21_91:                              # %if.end.205
                                        #   in Loop: Header=BB21_72 Depth=1
	testl	%r15d, %r15d
	jne	.LBB21_93
# BB#92:                                # %if.then.207
                                        #   in Loop: Header=BB21_72 Depth=1
	movl	12(%r13), %ecx
	leal	8(%rcx,%rcx,2), %ecx
	sarl	$4, %ecx
	movq	(%rsp), %rsi            # 8-byte Reload
	addl	%ecx, (%rbx,%rsi,4)
.LBB21_93:                              # %if.end.216
                                        #   in Loop: Header=BB21_72 Depth=1
	imull	$5, 12(%r13), %ecx
	sarl	$4, %ecx
	movl	12(%rbp), %esi
	addl	$4, %esi
	sarl	$3, %esi
	addl	%ecx, %esi
	movl	%esi, 12(%rbx)
	movl	12(%r13), %ecx
	leal	(%rcx,%rcx,4), %esi
	sarl	$4, %esi
	leal	8(%rcx,%rcx,2), %edi
	subl	%esi, %ecx
	sarl	$4, %edi
	subl	%edi, %ecx
	movl	%ecx, 12(%rbp)
.LBB21_94:                              # %sw.bb.236
                                        #   in Loop: Header=BB21_72 Depth=1
	movq	256(%r8), %rsi
	movb	20(%rsi), %cl
	movl	%eax, %edi
	shrl	%cl, %edi
	andl	16(%rsi), %edi
	imull	4(%rsi), %edi
	addl	(%rsi), %edi
	addl	8(%rbx), %edi
	movl	8(%rbp), %ecx
	addl	%ecx, %edi
	addl	$4, %ecx
	sarl	$3, %ecx
	subl	%ecx, %edi
	movl	%edi, 8(%r13)
	js	.LBB21_95
# BB#96:                                # %if.else.263
                                        #   in Loop: Header=BB21_72 Depth=1
	movl	12(%rsi), %ecx
	cmpl	%ecx, %edi
	jle	.LBB21_98
# BB#97:                                # %if.then.269
                                        #   in Loop: Header=BB21_72 Depth=1
	movl	%ecx, 8(%r13)
	movl	%ecx, %edi
	jmp	.LBB21_98
	.align	16, 0x90
.LBB21_95:                              # %if.then.261
                                        #   in Loop: Header=BB21_72 Depth=1
	movl	$0, 8(%r13)
	xorl	%edi, %edi
.LBB21_98:                              # %if.end.274
                                        #   in Loop: Header=BB21_72 Depth=1
	cmpl	8(%rsi), %edi
	jle	.LBB21_100
# BB#99:                                # %if.then.280
                                        #   in Loop: Header=BB21_72 Depth=1
	subl	12(%rsi), %edi
	movl	%edi, 8(%r13)
	movslq	%r10d, %rcx
	movq	48(%r9), %rsi
	orb	%r12b, (%rsi,%rcx)
	orl	$4, %edx
.LBB21_100:                             # %if.end.294
                                        #   in Loop: Header=BB21_72 Depth=1
	testl	%r15d, %r15d
	jne	.LBB21_102
# BB#101:                               # %if.then.296
                                        #   in Loop: Header=BB21_72 Depth=1
	movl	8(%r13), %ecx
	leal	8(%rcx,%rcx,2), %ecx
	sarl	$4, %ecx
	movq	8(%rsp), %rsi           # 8-byte Reload
	addl	%ecx, (%rbx,%rsi,4)
.LBB21_102:                             # %if.end.305
                                        #   in Loop: Header=BB21_72 Depth=1
	imull	$5, 8(%r13), %ecx
	sarl	$4, %ecx
	movl	8(%rbp), %esi
	addl	$4, %esi
	sarl	$3, %esi
	addl	%ecx, %esi
	movl	%esi, 8(%rbx)
	movl	8(%r13), %ecx
	leal	(%rcx,%rcx,4), %esi
	sarl	$4, %esi
	leal	8(%rcx,%rcx,2), %edi
	subl	%esi, %ecx
	sarl	$4, %edi
	subl	%edi, %ecx
	movl	%ecx, 8(%rbp)
	movq	248(%r8), %rsi
	movb	20(%rsi), %cl
	movl	%eax, %edi
	shrl	%cl, %edi
	andl	16(%rsi), %edi
	imull	4(%rsi), %edi
	addl	(%rsi), %edi
	addl	4(%rbx), %edi
	movl	4(%rbp), %ecx
	addl	%ecx, %edi
	addl	$4, %ecx
	sarl	$3, %ecx
	subl	%ecx, %edi
	movl	%edi, 4(%r13)
	js	.LBB21_103
# BB#104:                               # %if.else.351
                                        #   in Loop: Header=BB21_72 Depth=1
	movl	12(%rsi), %ecx
	cmpl	%ecx, %edi
	jle	.LBB21_106
# BB#105:                               # %if.then.357
                                        #   in Loop: Header=BB21_72 Depth=1
	movl	%ecx, 4(%r13)
	movl	%ecx, %edi
	jmp	.LBB21_106
	.align	16, 0x90
.LBB21_103:                             # %if.then.349
                                        #   in Loop: Header=BB21_72 Depth=1
	movl	$0, 4(%r13)
	xorl	%edi, %edi
.LBB21_106:                             # %if.end.362
                                        #   in Loop: Header=BB21_72 Depth=1
	cmpl	8(%rsi), %edi
	jle	.LBB21_108
# BB#107:                               # %if.then.368
                                        #   in Loop: Header=BB21_72 Depth=1
	subl	12(%rsi), %edi
	movl	%edi, 4(%r13)
	movslq	%r10d, %rcx
	movq	24(%r9), %rsi
	orb	%r12b, (%rsi,%rcx)
	orl	$2, %edx
.LBB21_108:                             # %if.end.382
                                        #   in Loop: Header=BB21_72 Depth=1
	testl	%r15d, %r15d
	jne	.LBB21_110
# BB#109:                               # %if.then.384
                                        #   in Loop: Header=BB21_72 Depth=1
	movl	4(%r13), %ecx
	leal	8(%rcx,%rcx,2), %ecx
	sarl	$4, %ecx
	movq	16(%rsp), %rsi          # 8-byte Reload
	addl	%ecx, (%rbx,%rsi,4)
.LBB21_110:                             # %if.end.393
                                        #   in Loop: Header=BB21_72 Depth=1
	imull	$5, 4(%r13), %ecx
	sarl	$4, %ecx
	movl	4(%rbp), %esi
	addl	$4, %esi
	sarl	$3, %esi
	addl	%ecx, %esi
	movl	%esi, 4(%rbx)
	movl	4(%r13), %ecx
	leal	(%rcx,%rcx,4), %esi
	sarl	$4, %esi
	leal	8(%rcx,%rcx,2), %edi
	subl	%esi, %ecx
	sarl	$4, %edi
	subl	%edi, %ecx
	movl	%ecx, 4(%rbp)
.LBB21_111:                             # %sw.default.413
                                        #   in Loop: Header=BB21_72 Depth=1
	movq	240(%r8), %rsi
	movb	20(%rsi), %cl
	shrl	%cl, %eax
	andl	16(%rsi), %eax
	imull	4(%rsi), %eax
	addl	(%rsi), %eax
	addl	(%rbx), %eax
	movl	(%rbp), %ecx
	addl	%ecx, %eax
	addl	$4, %ecx
	sarl	$3, %ecx
	subl	%ecx, %eax
	movl	%eax, (%r13)
	js	.LBB21_112
# BB#113:                               # %if.else.440
                                        #   in Loop: Header=BB21_72 Depth=1
	movl	12(%rsi), %ecx
	cmpl	%ecx, %eax
	jle	.LBB21_115
# BB#114:                               # %if.then.446
                                        #   in Loop: Header=BB21_72 Depth=1
	movl	%ecx, (%r13)
	movl	%ecx, %eax
	jmp	.LBB21_115
	.align	16, 0x90
.LBB21_112:                             # %if.then.438
                                        #   in Loop: Header=BB21_72 Depth=1
	movl	$0, (%r13)
	xorl	%eax, %eax
.LBB21_115:                             # %if.end.451
                                        #   in Loop: Header=BB21_72 Depth=1
	cmpl	8(%rsi), %eax
	jle	.LBB21_117
# BB#116:                               # %if.then.457
                                        #   in Loop: Header=BB21_72 Depth=1
	subl	12(%rsi), %eax
	movl	%eax, (%r13)
	movslq	%r10d, %rax
	movq	(%r9), %rcx
	orb	%r12b, (%rcx,%rax)
	orl	$1, %edx
.LBB21_117:                             # %if.end.471
                                        #   in Loop: Header=BB21_72 Depth=1
	testl	%r15d, %r15d
	jne	.LBB21_119
# BB#118:                               # %if.then.473
                                        #   in Loop: Header=BB21_72 Depth=1
	movl	(%r13), %eax
	leal	8(%rax,%rax,2), %eax
	sarl	$4, %eax
	movq	32(%rsp), %rcx          # 8-byte Reload
	addl	%eax, (%rbx,%rcx,4)
.LBB21_119:                             # %if.end.482
                                        #   in Loop: Header=BB21_72 Depth=1
	imull	$5, (%r13), %eax
	sarl	$4, %eax
	movl	(%rbp), %ecx
	addl	$4, %ecx
	sarl	$3, %ecx
	addl	%eax, %ecx
	movl	%ecx, (%rbx)
	movl	(%r13), %eax
	leal	(%rax,%rax,4), %ecx
	sarl	$4, %ecx
	leal	8(%rax,%rax,2), %esi
	subl	%ecx, %eax
	sarl	$4, %esi
	subl	%esi, %eax
	cmpl	$0, 72(%rsp)            # 4-byte Folded Reload
	movl	%eax, (%rbp)
	je	.LBB21_123
# BB#120:                               # %if.then.504
                                        #   in Loop: Header=BB21_72 Depth=1
	movl	%edx, %eax
	orl	$15, %eax
	testl	72(%rsp), %edx          # 4-byte Folded Reload
	cmovel	%edx, %eax
	cmpl	$12, %eax
	ja	.LBB21_122
# BB#121:                               # %if.then.504
                                        #   in Loop: Header=BB21_72 Depth=1
	movl	$6015, %ecx             # imm = 0x177F
	btl	%eax, %ecx
	jb	.LBB21_123
	.align	16, 0x90
.LBB21_122:                             # %sw.default.511
                                        #   in Loop: Header=BB21_72 Depth=1
	movzbl	%r12b, %eax
	notl	%eax
	movslq	%r10d, %rcx
	movq	(%r9), %rdx
	movzbl	(%rdx,%rcx), %esi
	andl	%eax, %esi
	movb	%sil, (%rdx,%rcx)
	movq	24(%r9), %rdx
	movzbl	(%rdx,%rcx), %esi
	andl	%eax, %esi
	movb	%sil, (%rdx,%rcx)
	movq	48(%r9), %rdx
	movzbl	(%rdx,%rcx), %esi
	andl	%eax, %esi
	movb	%sil, (%rdx,%rcx)
	movq	72(%r9), %rdx
	movzbl	(%rdx,%rcx), %esi
	andl	%eax, %esi
	movb	%sil, (%rdx,%rcx)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	orb	%r12b, (%rax,%rcx)
.LBB21_123:                             # %if.end.557
                                        #   in Loop: Header=BB21_72 Depth=1
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	js	.LBB21_124
# BB#130:                               # %if.else.570
                                        #   in Loop: Header=BB21_72 Depth=1
	shrb	%r12b
	sete	%al
	movb	$-128, %cl
	je	.LBB21_132
# BB#131:                               # %if.else.570
                                        #   in Loop: Header=BB21_72 Depth=1
	movb	%r12b, %cl
.LBB21_132:                             # %if.else.570
                                        #   in Loop: Header=BB21_72 Depth=1
	movzbl	%al, %eax
	jmp	.LBB21_126
	.align	16, 0x90
.LBB21_124:                             # %if.then.562
                                        #   in Loop: Header=BB21_72 Depth=1
	addb	%r12b, %r12b
	cmpb	$1, %r12b
	sbbl	%eax, %eax
	testb	%r12b, %r12b
	movb	$1, %cl
	je	.LBB21_126
# BB#125:                               # %if.then.562
                                        #   in Loop: Header=BB21_72 Depth=1
	movb	%r12b, %cl
	.align	16, 0x90
.LBB21_126:                             # %if.then.562
                                        #   in Loop: Header=BB21_72 Depth=1
	movb	%cl, %r12b
	addl	%eax, %r10d
	movl	%r10d, 84(%rsp)         # 4-byte Spill
	decl	%r14d
	addq	40(%rsp), %rbx          # 8-byte Folded Reload
	xorl	%r15d, %r15d
	cmpl	$1, %r14d
	jg	.LBB21_72
.LBB21_127:                             # %while.end.579
	cmpl	$0, 580(%r8)
	jle	.LBB21_129
# BB#128:                               # %if.then.582
	movl	$1, %esi
	movq	%r8, %rdi
	callq	upd_limits
.LBB21_129:                             # %if.end.583
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB21_54:                              # %sw.bb.3.i.257
	movq	$upd_pxlget2f1, 200(%r8)
	jmp	.LBB21_61
.LBB21_55:                              # %sw.bb.5.i.259
	movq	$upd_pxlget4f1, 200(%r8)
	jmp	.LBB21_61
.LBB21_56:                              # %sw.bb.7.i.261
	movq	$upd_pxlget8f, 200(%r8)
	jmp	.LBB21_61
.LBB21_20:                              # %sw.bb.3.i
	movq	$upd_pxlget2f1, 200(%r8)
	movl	$upd_pxlget2f1, %ecx
	jmp	.LBB21_27
.LBB21_21:                              # %sw.bb.5.i
	movq	$upd_pxlget4f1, 200(%r8)
	movl	$upd_pxlget4f1, %ecx
	jmp	.LBB21_27
.LBB21_22:                              # %sw.bb.7.i
	movq	$upd_pxlget8f, 200(%r8)
	movl	$upd_pxlget8f, %ecx
	jmp	.LBB21_27
.Lfunc_end21:
	.size	upd_fscomp, .Lfunc_end21-upd_fscomp
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI21_0:
	.quad	.LBB21_19
	.quad	.LBB21_20
	.quad	.LBB21_25
	.quad	.LBB21_21
	.quad	.LBB21_25
	.quad	.LBB21_25
	.quad	.LBB21_25
	.quad	.LBB21_22
.LJTI21_1:
	.quad	.LBB21_53
	.quad	.LBB21_54
	.quad	.LBB21_59
	.quad	.LBB21_55
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_56

	.text
	.align	16, 0x90
	.type	upd_pxlrev,@function
upd_pxlrev:                             # @upd_pxlrev
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp143:
	.cfi_def_cfa_offset 16
.Ltmp144:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	548(%rbx), %edx
	movl	536(%rbx), %ecx
	movq	184(%rbx), %rax
	movq	%rax, 192(%rbx)
	testq	%rax, %rax
	je	.LBB22_32
# BB#1:                                 # %if.else
	cmpl	%ecx, %edx
	cmovlel	%edx, %ecx
	movq	16(%rbx), %rdx
	movq	(%rdx), %rdx
	movl	4(%rdx), %edx
	decl	%ecx
	imull	%edx, %ecx
	movl	%ecx, %esi
	shrl	$3, %esi
	addq	%rsi, %rax
	movq	%rax, 192(%rbx)
	cmpl	$15, %edx
	jg	.LBB22_4
# BB#2:                                 # %if.else
	leal	-1(%rdx), %eax
	cmpl	$7, %eax
	ja	.LBB22_31
# BB#3:                                 # %if.else
	andl	$7, %ecx
	jmpq	*.LJTI22_0(,%rax,8)
.LBB22_8:                               # %sw.bb
	movl	%ecx, %eax
	cmpl	$7, %ecx
	ja	.LBB22_33
# BB#9:                                 # %sw.bb
	jmpq	*.LJTI22_2(,%rax,8)
.LBB22_10:                              # %sw.bb.9
	movq	$upd_pxlget1r1, 200(%rbx)
	popq	%rbx
	retq
.LBB22_4:                               # %if.else
	cmpl	$16, %edx
	je	.LBB22_29
# BB#5:                                 # %if.else
	cmpl	$24, %edx
	jne	.LBB22_6
# BB#30:                                # %sw.bb.47
	movq	$upd_pxlget24r, 200(%rbx)
	addq	$2, %rax
	movq	%rax, 192(%rbx)
	popq	%rbx
	retq
.LBB22_29:                              # %sw.bb.43
	movq	$upd_pxlget16r, 200(%rbx)
	incq	%rax
	movq	%rax, 192(%rbx)
	popq	%rbx
	retq
.LBB22_6:                               # %if.else
	cmpl	$32, %edx
	jne	.LBB22_31
# BB#7:                                 # %sw.bb.51
	movq	$upd_pxlget32r, 200(%rbx)
	addq	$3, %rax
	movq	%rax, 192(%rbx)
	popq	%rbx
	retq
.LBB22_31:                              # %sw.default
	movq	624(%rbx), %rdi
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	callq	errprintf
.LBB22_32:                              # %if.end
	movq	$upd_pxlgetnix, 200(%rbx)
.LBB22_33:                              # %if.end
	popq	%rbx
	retq
.LBB22_18:                              # %sw.bb.25
	movl	%ecx, %eax
	cmpl	$6, %ecx
	ja	.LBB22_33
# BB#19:                                # %sw.bb.25
	jmpq	*.LJTI22_1(,%rax,8)
.LBB22_20:                              # %sw.bb.26
	movq	$upd_pxlget2r1, 200(%rbx)
	popq	%rbx
	retq
.LBB22_24:                              # %sw.bb.35
	cmpl	$4, %ecx
	jne	.LBB22_25
# BB#27:                                # %sw.bb.38
	movq	$upd_pxlget4r2, 200(%rbx)
	popq	%rbx
	retq
.LBB22_28:                              # %sw.bb.41
	movq	$upd_pxlget8r, 200(%rbx)
	popq	%rbx
	retq
.LBB22_25:                              # %sw.bb.35
	testl	%ecx, %ecx
	jne	.LBB22_33
# BB#26:                                # %sw.bb.36
	movq	$upd_pxlget4r1, 200(%rbx)
	popq	%rbx
	retq
.LBB22_21:                              # %sw.bb.28
	movq	$upd_pxlget2r2, 200(%rbx)
	popq	%rbx
	retq
.LBB22_22:                              # %sw.bb.30
	movq	$upd_pxlget2r3, 200(%rbx)
	popq	%rbx
	retq
.LBB22_23:                              # %sw.bb.32
	movq	$upd_pxlget2r4, 200(%rbx)
	popq	%rbx
	retq
.LBB22_11:                              # %sw.bb.11
	movq	$upd_pxlget1r2, 200(%rbx)
	popq	%rbx
	retq
.LBB22_12:                              # %sw.bb.13
	movq	$upd_pxlget1r3, 200(%rbx)
	popq	%rbx
	retq
.LBB22_13:                              # %sw.bb.15
	movq	$upd_pxlget1r4, 200(%rbx)
	popq	%rbx
	retq
.LBB22_14:                              # %sw.bb.17
	movq	$upd_pxlget1r5, 200(%rbx)
	popq	%rbx
	retq
.LBB22_15:                              # %sw.bb.19
	movq	$upd_pxlget1r6, 200(%rbx)
	popq	%rbx
	retq
.LBB22_16:                              # %sw.bb.21
	movq	$upd_pxlget1r7, 200(%rbx)
	popq	%rbx
	retq
.LBB22_17:                              # %sw.bb.23
	movq	$upd_pxlget1r8, 200(%rbx)
	popq	%rbx
	retq
.Lfunc_end22:
	.size	upd_pxlrev, .Lfunc_end22-upd_pxlrev
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI22_0:
	.quad	.LBB22_8
	.quad	.LBB22_18
	.quad	.LBB22_31
	.quad	.LBB22_24
	.quad	.LBB22_31
	.quad	.LBB22_31
	.quad	.LBB22_31
	.quad	.LBB22_28
.LJTI22_1:
	.quad	.LBB22_20
	.quad	.LBB22_33
	.quad	.LBB22_21
	.quad	.LBB22_33
	.quad	.LBB22_22
	.quad	.LBB22_33
	.quad	.LBB22_23
.LJTI22_2:
	.quad	.LBB22_10
	.quad	.LBB22_11
	.quad	.LBB22_12
	.quad	.LBB22_13
	.quad	.LBB22_14
	.quad	.LBB22_15
	.quad	.LBB22_16
	.quad	.LBB22_17

	.text
	.align	16, 0x90
	.type	upd_limits,@function
upd_limits:                             # @upd_limits
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp145:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp146:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp147:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp148:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp149:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp150:
	.cfi_def_cfa_offset 56
.Ltmp151:
	.cfi_offset %rbx, -56
.Ltmp152:
	.cfi_offset %r12, -48
.Ltmp153:
	.cfi_offset %r13, -40
.Ltmp154:
	.cfi_offset %r14, -32
.Ltmp155:
	.cfi_offset %r15, -24
.Ltmp156:
	.cfi_offset %rbp, -16
	movl	584(%rdi), %eax
	andl	620(%rdi), %eax
	cltq
	movq	224(%rdi), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -32(%rsp)         # 8-byte Spill
	movl	572(%rdi), %ecx
	testl	%ecx, %ecx
	jle	.LBB23_7
# BB#1:                                 # %for.body.lr.ph
	movl	580(%rdi), %edx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB23_2:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_4 Depth 2
	testl	%edx, %edx
	jle	.LBB23_6
# BB#3:                                 # %for.body.3.lr.ph
                                        #   in Loop: Header=BB23_2 Depth=1
	leaq	(%rax,%rax,2), %rdx
	movq	-32(%rsp), %rbp         # 8-byte Reload
	movq	8(%rbp,%rdx,8), %rcx
	movq	16(%rbp,%rdx,8), %rbp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB23_4:                               # %for.body.3
                                        #   Parent Loop BB23_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	548(%rdi), %edx
	movl	%edx, (%rcx,%rbx,4)
	movl	$-1, (%rbp,%rbx,4)
	incq	%rbx
	movslq	580(%rdi), %rdx
	cmpq	%rdx, %rbx
	jl	.LBB23_4
# BB#5:                                 # %for.cond.1.for.inc.8_crit_edge
                                        #   in Loop: Header=BB23_2 Depth=1
	movl	572(%rdi), %ecx
.LBB23_6:                               # %for.inc.8
                                        #   in Loop: Header=BB23_2 Depth=1
	incq	%rax
	movslq	%ecx, %rbp
	cmpq	%rbp, %rax
	jl	.LBB23_2
.LBB23_7:                               # %for.end.10
	testl	%esi, %esi
	je	.LBB23_40
# BB#8:                                 # %for.end.10
	testl	%ecx, %ecx
	jle	.LBB23_40
# BB#9:                                 # %for.body.14.lr.ph
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB23_10:                              # %for.body.14
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_12 Depth 2
                                        #     Child Loop BB23_16 Depth 2
                                        #     Child Loop BB23_20 Depth 2
                                        #       Child Loop BB23_22 Depth 3
                                        #       Child Loop BB23_27 Depth 3
                                        #       Child Loop BB23_30 Depth 3
                                        #       Child Loop BB23_33 Depth 3
                                        #       Child Loop BB23_35 Depth 3
	movq	%rcx, -40(%rsp)         # 8-byte Spill
	leaq	(%rcx,%rcx,2), %rax
	movq	-32(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %r15
	movslq	576(%rdi), %rcx
	testq	%rcx, %rcx
	movl	$0, %r14d
	jle	.LBB23_14
# BB#11:                                # %land.rhs.preheader
                                        #   in Loop: Header=BB23_10 Depth=1
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB23_12:                              # %land.rhs
                                        #   Parent Loop BB23_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, (%r15,%r14)
	jne	.LBB23_14
# BB#13:                                # %for.inc.24
                                        #   in Loop: Header=BB23_12 Depth=2
	incq	%r14
	cmpq	%rcx, %r14
	jl	.LBB23_12
.LBB23_14:                              # %for.end.26
                                        #   in Loop: Header=BB23_10 Depth=1
	cmpl	%ecx, %r14d
	jge	.LBB23_39
# BB#15:                                # %for.cond.31.preheader
                                        #   in Loop: Header=BB23_10 Depth=1
	movslq	%r14d, %rdx
	.align	16, 0x90
.LBB23_16:                              # %for.cond.31
                                        #   Parent Loop BB23_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %r8
	cmpq	%r8, %rdx
	jge	.LBB23_18
# BB#17:                                # %land.rhs.33
                                        #   in Loop: Header=BB23_16 Depth=2
	leaq	-1(%r8), %rcx
	cmpb	$0, -1(%r15,%r8)
	je	.LBB23_16
.LBB23_18:                              # %for.cond.42.preheader
                                        #   in Loop: Header=BB23_10 Depth=1
	movl	580(%rdi), %esi
	testl	%esi, %esi
	jle	.LBB23_39
# BB#19:                                # %for.body.45.lr.ph
                                        #   in Loop: Header=BB23_10 Depth=1
	leal	(,%r14,8), %r11d
	movq	-32(%rsp), %rcx         # 8-byte Reload
	leaq	8(%rcx,%rax,8), %rdx
	movq	%rdx, -8(%rsp)          # 8-byte Spill
	leal	7(,%r8,8), %edx
	movq	%rdx, -16(%rsp)         # 8-byte Spill
	leaq	16(%rcx,%rax,8), %rax
	movq	%rax, -24(%rsp)         # 8-byte Spill
	leal	7(,%r8,8), %r13d
	movl	%r11d, %r9d
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB23_20:                              # %for.body.45
                                        #   Parent Loop BB23_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB23_22 Depth 3
                                        #       Child Loop BB23_27 Depth 3
                                        #       Child Loop BB23_30 Depth 3
                                        #       Child Loop BB23_33 Depth 3
                                        #       Child Loop BB23_35 Depth 3
	movl	%r11d, %eax
	cltd
	idivl	%esi
	leal	(%r10,%r11), %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	sarl	$3, %ecx
	cmpl	%r14d, %ecx
	jge	.LBB23_23
# BB#21:                                # %while.body.preheader
                                        #   in Loop: Header=BB23_20 Depth=2
	movl	%r9d, %eax
	subl	%edx, %eax
	.align	16, 0x90
.LBB23_22:                              # %while.body
                                        #   Parent Loop BB23_10 Depth=1
                                        #     Parent Loop BB23_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rax,%rsi), %eax
	movl	%eax, %ecx
	sarl	$3, %ecx
	cmpl	%r14d, %ecx
	jl	.LBB23_22
.LBB23_23:                              # %while.cond.53.preheader
                                        #   in Loop: Header=BB23_20 Depth=2
	movq	-8(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %rdx
	movl	(%rdx,%r10,4), %ebp
	jmp	.LBB23_27
	.align	16, 0x90
.LBB23_26:                              # %if.end
                                        #   in Loop: Header=BB23_27 Depth=3
	leal	(%rax,%rsi), %eax
.LBB23_27:                              # %if.end
                                        #   Parent Loop BB23_10 Depth=1
                                        #     Parent Loop BB23_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	%ebp, %eax
	jge	.LBB23_28
# BB#24:                                # %while.body.59
                                        #   in Loop: Header=BB23_27 Depth=3
	movb	%al, %cl
	andb	$7, %cl
	movl	$128, %ebx
	shrl	%cl, %ebx
	movl	%eax, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	movzbl	(%r15,%rcx), %ecx
	testl	%ecx, %ebx
	je	.LBB23_26
# BB#25:                                # %if.then.67
                                        #   in Loop: Header=BB23_27 Depth=3
	movl	%eax, (%rdx,%r10,4)
	movl	580(%rdi), %esi
	movl	%eax, %ebp
	jmp	.LBB23_26
	.align	16, 0x90
.LBB23_28:                              # %while.end.76
                                        #   in Loop: Header=BB23_20 Depth=2
	movq	-16(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %eax
	cltd
	idivl	%esi
	leal	(%r10,%rcx), %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	sarl	$3, %ecx
	cmpl	%r8d, %ecx
	jge	.LBB23_31
# BB#29:                                # %while.body.87.preheader
                                        #   in Loop: Header=BB23_20 Depth=2
	movl	%r13d, %eax
	subl	%edx, %eax
	.align	16, 0x90
.LBB23_30:                              # %while.body.87
                                        #   Parent Loop BB23_10 Depth=1
                                        #     Parent Loop BB23_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rax,%rsi), %eax
	movl	%eax, %ecx
	sarl	$3, %ecx
	cmpl	%r8d, %ecx
	jl	.LBB23_30
.LBB23_31:                              # %while.cond.91.preheader
                                        #   in Loop: Header=BB23_20 Depth=2
	movl	%eax, %ecx
	sarl	$3, %ecx
	cmpl	%r8d, %ecx
	jle	.LBB23_34
# BB#32:                                # %while.body.95.preheader
                                        #   in Loop: Header=BB23_20 Depth=2
	movl	%esi, %ecx
	negl	%ecx
	.align	16, 0x90
.LBB23_33:                              # %while.body.95
                                        #   Parent Loop BB23_10 Depth=1
                                        #     Parent Loop BB23_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rcx,%rax), %edx
	subl	%esi, %eax
	sarl	$3, %edx
	cmpl	%r8d, %edx
	jg	.LBB23_33
.LBB23_34:                              # %while.cond.102.preheader
                                        #   in Loop: Header=BB23_20 Depth=2
	movq	-24(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx), %rdx
	movl	(%rdx,%r10,4), %r12d
	cmpl	%r12d, %eax
	movl	%r14d, %ecx
	jle	.LBB23_38
	.align	16, 0x90
.LBB23_35:                              # %while.body.108
                                        #   Parent Loop BB23_10 Depth=1
                                        #     Parent Loop BB23_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andb	$7, %cl
	movl	$128, %ebx
	shrl	%cl, %ebx
	movl	%eax, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	movzbl	(%r15,%rcx), %ecx
	testl	%ecx, %ebx
	je	.LBB23_37
# BB#36:                                # %if.then.116
                                        #   in Loop: Header=BB23_35 Depth=3
	movl	%eax, (%rdx,%r10,4)
	movl	580(%rdi), %esi
	movl	%eax, %r12d
.LBB23_37:                              # %if.end.120
                                        #   in Loop: Header=BB23_35 Depth=3
	subl	%esi, %eax
	cmpl	%r12d, %eax
	movl	%eax, %ecx
	jg	.LBB23_35
.LBB23_38:                              # %for.inc.127
                                        #   in Loop: Header=BB23_20 Depth=2
	incq	%r10
	movslq	%esi, %rax
	incl	%r9d
	incl	%r13d
	cmpq	%rax, %r10
	jl	.LBB23_20
.LBB23_39:                              # %for.inc.131
                                        #   in Loop: Header=BB23_10 Depth=1
	movq	-40(%rsp), %rcx         # 8-byte Reload
	incq	%rcx
	movslq	572(%rdi), %rax
	cmpq	%rax, %rcx
	jl	.LBB23_10
.LBB23_40:                              # %if.end.134
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	upd_limits, .Lfunc_end23-upd_limits
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlgetnix,@function
upd_pxlgetnix:                          # @upd_pxlgetnix
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end24:
	.size	upd_pxlgetnix, .Lfunc_end24-upd_pxlgetnix
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget1f1,@function
upd_pxlget1f1:                          # @upd_pxlget1f1
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$upd_pxlget1f2, 200(%rdi)
	movq	192(%rdi), %rax
	movb	(%rax), %al
	shrb	$7, %al
	movzbl	%al, %eax
	retq
.Lfunc_end25:
	.size	upd_pxlget1f1, .Lfunc_end25-upd_pxlget1f1
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget2f1,@function
upd_pxlget2f1:                          # @upd_pxlget2f1
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$upd_pxlget2f2, 200(%rdi)
	movq	192(%rdi), %rax
	movzbl	(%rax), %eax
	shrl	$6, %eax
	retq
.Lfunc_end26:
	.size	upd_pxlget2f1, .Lfunc_end26-upd_pxlget2f1
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget4f1,@function
upd_pxlget4f1:                          # @upd_pxlget4f1
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$upd_pxlget4f2, 200(%rdi)
	movq	192(%rdi), %rax
	movzbl	(%rax), %eax
	shrl	$4, %eax
	retq
.Lfunc_end27:
	.size	upd_pxlget4f1, .Lfunc_end27-upd_pxlget4f1
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget8f,@function
upd_pxlget8f:                           # @upd_pxlget8f
	.cfi_startproc
# BB#0:                                 # %entry
	movq	192(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 192(%rdi)
	movzbl	(%rax), %eax
	retq
.Lfunc_end28:
	.size	upd_pxlget8f, .Lfunc_end28-upd_pxlget8f
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget16f,@function
upd_pxlget16f:                          # @upd_pxlget16f
	.cfi_startproc
# BB#0:                                 # %entry
	movq	192(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 192(%rdi)
	movzbl	(%rax), %ecx
	shll	$8, %ecx
	leaq	2(%rax), %rdx
	movq	%rdx, 192(%rdi)
	movzbl	1(%rax), %eax
	orl	%ecx, %eax
	retq
.Lfunc_end29:
	.size	upd_pxlget16f, .Lfunc_end29-upd_pxlget16f
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget24f,@function
upd_pxlget24f:                          # @upd_pxlget24f
	.cfi_startproc
# BB#0:                                 # %entry
	movq	192(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 192(%rdi)
	movzbl	(%rax), %ecx
	shll	$16, %ecx
	leaq	2(%rax), %rdx
	movq	%rdx, 192(%rdi)
	movzbl	1(%rax), %edx
	shll	$8, %edx
	orl	%ecx, %edx
	leaq	3(%rax), %rcx
	movq	%rcx, 192(%rdi)
	movzbl	2(%rax), %eax
	orl	%edx, %eax
	retq
.Lfunc_end30:
	.size	upd_pxlget24f, .Lfunc_end30-upd_pxlget24f
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget32f,@function
upd_pxlget32f:                          # @upd_pxlget32f
	.cfi_startproc
# BB#0:                                 # %entry
	movq	192(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 192(%rdi)
	movzbl	(%rax), %ecx
	shll	$24, %ecx
	leaq	2(%rax), %rdx
	movq	%rdx, 192(%rdi)
	movzbl	1(%rax), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	leaq	3(%rax), %rcx
	movq	%rcx, 192(%rdi)
	movzbl	2(%rax), %ecx
	shll	$8, %ecx
	orl	%edx, %ecx
	leaq	4(%rax), %rdx
	movq	%rdx, 192(%rdi)
	movzbl	3(%rax), %eax
	orl	%ecx, %eax
	retq
.Lfunc_end31:
	.size	upd_pxlget32f, .Lfunc_end31-upd_pxlget32f
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget1f2,@function
upd_pxlget1f2:                          # @upd_pxlget1f2
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$upd_pxlget1f3, 200(%rdi)
	movq	192(%rdi), %rax
	movb	(%rax), %al
	shrb	$6, %al
	andb	$1, %al
	movzbl	%al, %eax
	retq
.Lfunc_end32:
	.size	upd_pxlget1f2, .Lfunc_end32-upd_pxlget1f2
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget1f3,@function
upd_pxlget1f3:                          # @upd_pxlget1f3
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$upd_pxlget1f4, 200(%rdi)
	movq	192(%rdi), %rax
	movb	(%rax), %al
	shrb	$5, %al
	andb	$1, %al
	movzbl	%al, %eax
	retq
.Lfunc_end33:
	.size	upd_pxlget1f3, .Lfunc_end33-upd_pxlget1f3
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget1f4,@function
upd_pxlget1f4:                          # @upd_pxlget1f4
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$upd_pxlget1f5, 200(%rdi)
	movq	192(%rdi), %rax
	movb	(%rax), %al
	shrb	$4, %al
	andb	$1, %al
	movzbl	%al, %eax
	retq
.Lfunc_end34:
	.size	upd_pxlget1f4, .Lfunc_end34-upd_pxlget1f4
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget1f5,@function
upd_pxlget1f5:                          # @upd_pxlget1f5
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$upd_pxlget1f6, 200(%rdi)
	movq	192(%rdi), %rax
	movb	(%rax), %al
	shrb	$3, %al
	andb	$1, %al
	movzbl	%al, %eax
	retq
.Lfunc_end35:
	.size	upd_pxlget1f5, .Lfunc_end35-upd_pxlget1f5
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget1f6,@function
upd_pxlget1f6:                          # @upd_pxlget1f6
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$upd_pxlget1f7, 200(%rdi)
	movq	192(%rdi), %rax
	movb	(%rax), %al
	shrb	$2, %al
	andb	$1, %al
	movzbl	%al, %eax
	retq
.Lfunc_end36:
	.size	upd_pxlget1f6, .Lfunc_end36-upd_pxlget1f6
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget1f7,@function
upd_pxlget1f7:                          # @upd_pxlget1f7
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$upd_pxlget1f8, 200(%rdi)
	movq	192(%rdi), %rax
	movb	(%rax), %al
	shrb	%al
	andb	$1, %al
	movzbl	%al, %eax
	retq
.Lfunc_end37:
	.size	upd_pxlget1f7, .Lfunc_end37-upd_pxlget1f7
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget1f8,@function
upd_pxlget1f8:                          # @upd_pxlget1f8
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$upd_pxlget1f1, 200(%rdi)
	movq	192(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 192(%rdi)
	movzbl	(%rax), %eax
	andl	$1, %eax
	retq
.Lfunc_end38:
	.size	upd_pxlget1f8, .Lfunc_end38-upd_pxlget1f8
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget2f2,@function
upd_pxlget2f2:                          # @upd_pxlget2f2
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$upd_pxlget2f3, 200(%rdi)
	movq	192(%rdi), %rax
	movzbl	(%rax), %eax
	shrl	$4, %eax
	andl	$3, %eax
	retq
.Lfunc_end39:
	.size	upd_pxlget2f2, .Lfunc_end39-upd_pxlget2f2
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget2f3,@function
upd_pxlget2f3:                          # @upd_pxlget2f3
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$upd_pxlget2f4, 200(%rdi)
	movq	192(%rdi), %rax
	movzbl	(%rax), %eax
	shrl	$2, %eax
	andl	$3, %eax
	retq
.Lfunc_end40:
	.size	upd_pxlget2f3, .Lfunc_end40-upd_pxlget2f3
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget2f4,@function
upd_pxlget2f4:                          # @upd_pxlget2f4
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$upd_pxlget2f1, 200(%rdi)
	movq	192(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 192(%rdi)
	movzbl	(%rax), %eax
	andl	$3, %eax
	retq
.Lfunc_end41:
	.size	upd_pxlget2f4, .Lfunc_end41-upd_pxlget2f4
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget4f2,@function
upd_pxlget4f2:                          # @upd_pxlget4f2
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$upd_pxlget4f1, 200(%rdi)
	movq	192(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 192(%rdi)
	movzbl	(%rax), %eax
	andl	$15, %eax
	retq
.Lfunc_end42:
	.size	upd_pxlget4f2, .Lfunc_end42-upd_pxlget4f2
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget1r1,@function
upd_pxlget1r1:                          # @upd_pxlget1r1
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$upd_pxlget1r8, 200(%rdi)
	movq	192(%rdi), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, 192(%rdi)
	movb	(%rax), %al
	shrb	$7, %al
	movzbl	%al, %eax
	retq
.Lfunc_end43:
	.size	upd_pxlget1r1, .Lfunc_end43-upd_pxlget1r1
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget1r2,@function
upd_pxlget1r2:                          # @upd_pxlget1r2
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$upd_pxlget1r1, 200(%rdi)
	movq	192(%rdi), %rax
	movb	(%rax), %al
	shrb	$6, %al
	andb	$1, %al
	movzbl	%al, %eax
	retq
.Lfunc_end44:
	.size	upd_pxlget1r2, .Lfunc_end44-upd_pxlget1r2
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget1r3,@function
upd_pxlget1r3:                          # @upd_pxlget1r3
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$upd_pxlget1r2, 200(%rdi)
	movq	192(%rdi), %rax
	movb	(%rax), %al
	shrb	$5, %al
	andb	$1, %al
	movzbl	%al, %eax
	retq
.Lfunc_end45:
	.size	upd_pxlget1r3, .Lfunc_end45-upd_pxlget1r3
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget1r4,@function
upd_pxlget1r4:                          # @upd_pxlget1r4
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$upd_pxlget1r3, 200(%rdi)
	movq	192(%rdi), %rax
	movb	(%rax), %al
	shrb	$4, %al
	andb	$1, %al
	movzbl	%al, %eax
	retq
.Lfunc_end46:
	.size	upd_pxlget1r4, .Lfunc_end46-upd_pxlget1r4
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget1r5,@function
upd_pxlget1r5:                          # @upd_pxlget1r5
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$upd_pxlget1r4, 200(%rdi)
	movq	192(%rdi), %rax
	movb	(%rax), %al
	shrb	$3, %al
	andb	$1, %al
	movzbl	%al, %eax
	retq
.Lfunc_end47:
	.size	upd_pxlget1r5, .Lfunc_end47-upd_pxlget1r5
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget1r6,@function
upd_pxlget1r6:                          # @upd_pxlget1r6
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$upd_pxlget1r5, 200(%rdi)
	movq	192(%rdi), %rax
	movb	(%rax), %al
	shrb	$2, %al
	andb	$1, %al
	movzbl	%al, %eax
	retq
.Lfunc_end48:
	.size	upd_pxlget1r6, .Lfunc_end48-upd_pxlget1r6
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget1r7,@function
upd_pxlget1r7:                          # @upd_pxlget1r7
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$upd_pxlget1r6, 200(%rdi)
	movq	192(%rdi), %rax
	movb	(%rax), %al
	shrb	%al
	andb	$1, %al
	movzbl	%al, %eax
	retq
.Lfunc_end49:
	.size	upd_pxlget1r7, .Lfunc_end49-upd_pxlget1r7
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget1r8,@function
upd_pxlget1r8:                          # @upd_pxlget1r8
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$upd_pxlget1r7, 200(%rdi)
	movq	192(%rdi), %rax
	movzbl	(%rax), %eax
	andl	$1, %eax
	retq
.Lfunc_end50:
	.size	upd_pxlget1r8, .Lfunc_end50-upd_pxlget1r8
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget2r1,@function
upd_pxlget2r1:                          # @upd_pxlget2r1
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$upd_pxlget2r4, 200(%rdi)
	movq	192(%rdi), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, 192(%rdi)
	movzbl	(%rax), %eax
	shrl	$6, %eax
	retq
.Lfunc_end51:
	.size	upd_pxlget2r1, .Lfunc_end51-upd_pxlget2r1
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget2r2,@function
upd_pxlget2r2:                          # @upd_pxlget2r2
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$upd_pxlget2r1, 200(%rdi)
	movq	192(%rdi), %rax
	movzbl	(%rax), %eax
	shrl	$4, %eax
	andl	$3, %eax
	retq
.Lfunc_end52:
	.size	upd_pxlget2r2, .Lfunc_end52-upd_pxlget2r2
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget2r3,@function
upd_pxlget2r3:                          # @upd_pxlget2r3
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$upd_pxlget2r2, 200(%rdi)
	movq	192(%rdi), %rax
	movzbl	(%rax), %eax
	shrl	$2, %eax
	andl	$3, %eax
	retq
.Lfunc_end53:
	.size	upd_pxlget2r3, .Lfunc_end53-upd_pxlget2r3
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget2r4,@function
upd_pxlget2r4:                          # @upd_pxlget2r4
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$upd_pxlget2r3, 200(%rdi)
	movq	192(%rdi), %rax
	movzbl	(%rax), %eax
	andl	$3, %eax
	retq
.Lfunc_end54:
	.size	upd_pxlget2r4, .Lfunc_end54-upd_pxlget2r4
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget4r1,@function
upd_pxlget4r1:                          # @upd_pxlget4r1
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$upd_pxlget4r2, 200(%rdi)
	movq	192(%rdi), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, 192(%rdi)
	movzbl	(%rax), %eax
	shrl	$4, %eax
	retq
.Lfunc_end55:
	.size	upd_pxlget4r1, .Lfunc_end55-upd_pxlget4r1
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget4r2,@function
upd_pxlget4r2:                          # @upd_pxlget4r2
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$upd_pxlget4r1, 200(%rdi)
	movq	192(%rdi), %rax
	movzbl	(%rax), %eax
	andl	$15, %eax
	retq
.Lfunc_end56:
	.size	upd_pxlget4r2, .Lfunc_end56-upd_pxlget4r2
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget8r,@function
upd_pxlget8r:                           # @upd_pxlget8r
	.cfi_startproc
# BB#0:                                 # %entry
	movq	192(%rdi), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, 192(%rdi)
	movzbl	(%rax), %eax
	retq
.Lfunc_end57:
	.size	upd_pxlget8r, .Lfunc_end57-upd_pxlget8r
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget16r,@function
upd_pxlget16r:                          # @upd_pxlget16r
	.cfi_startproc
# BB#0:                                 # %entry
	movq	192(%rdi), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, 192(%rdi)
	movzbl	(%rax), %ecx
	leaq	-2(%rax), %rdx
	movq	%rdx, 192(%rdi)
	movzbl	-1(%rax), %eax
	shll	$8, %eax
	orl	%ecx, %eax
	retq
.Lfunc_end58:
	.size	upd_pxlget16r, .Lfunc_end58-upd_pxlget16r
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget24r,@function
upd_pxlget24r:                          # @upd_pxlget24r
	.cfi_startproc
# BB#0:                                 # %entry
	movq	192(%rdi), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, 192(%rdi)
	movzbl	(%rax), %ecx
	leaq	-2(%rax), %rdx
	movq	%rdx, 192(%rdi)
	movzbl	-1(%rax), %edx
	shll	$8, %edx
	orl	%ecx, %edx
	leaq	-3(%rax), %rcx
	movq	%rcx, 192(%rdi)
	movzbl	-2(%rax), %eax
	shll	$16, %eax
	orl	%edx, %eax
	retq
.Lfunc_end59:
	.size	upd_pxlget24r, .Lfunc_end59-upd_pxlget24r
	.cfi_endproc

	.align	16, 0x90
	.type	upd_pxlget32r,@function
upd_pxlget32r:                          # @upd_pxlget32r
	.cfi_startproc
# BB#0:                                 # %entry
	movq	192(%rdi), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, 192(%rdi)
	movzbl	(%rax), %ecx
	leaq	-2(%rax), %rdx
	movq	%rdx, 192(%rdi)
	movzbl	-1(%rax), %edx
	shll	$8, %edx
	orl	%ecx, %edx
	leaq	-3(%rax), %rcx
	movq	%rcx, 192(%rdi)
	movzbl	-2(%rax), %ecx
	shll	$16, %ecx
	orl	%edx, %ecx
	leaq	-4(%rax), %rdx
	movq	%rdx, 192(%rdi)
	movzbl	-3(%rax), %eax
	shll	$24, %eax
	orl	%ecx, %eax
	retq
.Lfunc_end60:
	.size	upd_pxlget32r, .Lfunc_end60-upd_pxlget32r
	.cfi_endproc

	.align	16, 0x90
	.type	upd_fscmyk,@function
upd_fscmyk:                             # @upd_fscmyk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp157:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp158:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp159:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp160:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp161:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp162:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp163:
	.cfi_def_cfa_offset 80
.Ltmp164:
	.cfi_offset %rbx, -56
.Ltmp165:
	.cfi_offset %r12, -48
.Ltmp166:
	.cfi_offset %r13, -40
.Ltmp167:
	.cfi_offset %r14, -32
.Ltmp168:
	.cfi_offset %r15, -24
.Ltmp169:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	584(%rbx), %eax
	andl	620(%rbx), %eax
	cltq
	movq	224(%rbx), %rcx
	movq	232(%rbx), %r14
	movq	(%rcx,%rax,8), %rbp
	movq	%rbp, (%rsp)            # 8-byte Spill
	movl	544(%rbx), %r12d
	movq	(%rbp), %rdi
	movslq	576(%rbx), %rdx
	xorl	%esi, %esi
	callq	memset
	movq	24(%rbp), %rdi
	movslq	576(%rbx), %rdx
	xorl	%esi, %esi
	callq	memset
	movq	48(%rbp), %rdi
	movslq	576(%rbx), %rdx
	xorl	%esi, %esi
	callq	memset
	movq	72(%rbp), %rdi
	movslq	576(%rbx), %rdx
	xorl	%esi, %esi
	callq	memset
	movl	520(%rbx), %edi
	movl	%edi, %eax
	andl	$4, %eax
	testb	$1, %dil
	jne	.LBB61_1
# BB#19:                                # %if.else
	testl	%eax, %eax
	je	.LBB61_21
# BB#20:                                # %if.else.if.end.67_crit_edge
	movq	184(%rbx), %r9
	jmp	.LBB61_4
.LBB61_1:                               # %if.then
	testl	%eax, %eax
	je	.LBB61_6
# BB#2:                                 # %if.then.if.end.33_crit_edge
	movq	184(%rbx), %rcx
	jmp	.LBB61_3
.LBB61_21:                              # %if.then.40
	testl	%r12d, %r12d
	jle	.LBB61_26
# BB#22:                                # %land.rhs.50.lr.ph
	movq	184(%rbx), %r9
	movl	544(%rbx), %eax
	leal	-4(,%rax,4), %eax
	cltq
	leaq	(%rax,%r9), %rcx
	.align	16, 0x90
.LBB61_23:                              # %land.rhs.50
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rcx)
	jne	.LBB61_25
# BB#24:                                # %while.body.54
                                        #   in Loop: Header=BB61_23 Depth=1
	addq	$-4, %rcx
	cmpl	$1, %r12d
	leal	-1(%r12), %eax
	movl	%eax, %r12d
	jg	.LBB61_23
	jmp	.LBB61_26
.LBB61_6:                               # %if.then.22
	testl	%r12d, %r12d
	jle	.LBB61_11
# BB#7:                                 # %land.rhs.lr.ph
	movq	184(%rbx), %rcx
	movq	%rcx, %rax
	.align	16, 0x90
.LBB61_8:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rax)
	jne	.LBB61_10
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB61_8 Depth=1
	addq	$4, %rax
	cmpl	$1, %r12d
	leal	-1(%r12), %edx
	movl	%edx, %r12d
	jg	.LBB61_8
	jmp	.LBB61_11
.LBB61_25:                              # %while.end.57
	testl	%r12d, %r12d
	jg	.LBB61_4
.LBB61_26:                              # %if.then.60
	movl	580(%rbx), %eax
	testl	%eax, %eax
	jle	.LBB61_105
# BB#27:                                # %if.then.64
	movl	572(%rbx), %esi
	testl	%esi, %esi
	jle	.LBB61_105
# BB#28:                                # %for.body.lr.ph.i.349
	movl	584(%rbx), %ecx
	andl	620(%rbx), %ecx
	movslq	%ecx, %rcx
	movq	224(%rbx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB61_29:                              # %for.body.i.352
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB61_31 Depth 2
	testl	%eax, %eax
	jle	.LBB61_33
# BB#30:                                # %for.body.3.lr.ph.i.355
                                        #   in Loop: Header=BB61_29 Depth=1
	leaq	(%rdx,%rdx,2), %rax
	movq	8(%rcx,%rax,8), %rsi
	movq	16(%rcx,%rax,8), %rdi
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB61_31:                              # %for.body.3.i.361
                                        #   Parent Loop BB61_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	548(%rbx), %eax
	movl	%eax, (%rsi,%rbp,4)
	movl	$-1, (%rdi,%rbp,4)
	incq	%rbp
	movslq	580(%rbx), %rax
	cmpq	%rax, %rbp
	jl	.LBB61_31
# BB#32:                                # %for.cond.1.for.inc.8_crit_edge.i.363
                                        #   in Loop: Header=BB61_29 Depth=1
	movl	572(%rbx), %esi
.LBB61_33:                              # %for.inc.8.i.366
                                        #   in Loop: Header=BB61_29 Depth=1
	incq	%rdx
	movslq	%esi, %rdi
	cmpq	%rdi, %rdx
	jl	.LBB61_29
	jmp	.LBB61_105
.LBB61_10:                              # %while.end
	testl	%r12d, %r12d
	jle	.LBB61_11
.LBB61_3:                               # %if.end.33
	movl	544(%rbx), %eax
	leal	-4(,%rax,4), %eax
	movslq	%eax, %r9
	addq	%rcx, %r9
.LBB61_4:                               # %if.end.69
	leaq	32(%r14), %rdx
	movl	%edi, %eax
	shrl	$19, %eax
	xorl	%edi, %eax
	testb	$1, %al
	jne	.LBB61_34
# BB#5:
	movb	$-128, %r11b
	xorl	%ebp, %ebp
	movl	$4, %r10d
	jmp	.LBB61_35
.LBB61_34:                              # %if.else.82
	movslq	544(%rbx), %rbp
	decq	%rbp
	movq	%rbp, %rax
	shlq	$4, %rax
	addq	%rax, %rdx
	movb	%bpl, %cl
	andb	$7, %cl
	movl	$128, %r11d
	shrl	%cl, %r11d
	sarl	$3, %ebp
	movl	$-4, %r10d
.LBB61_35:                              # %if.end.95
	testb	$2, %dil
	jne	.LBB61_37
# BB#36:                                # %if.then.99
	xorl	$1, %edi
	movl	%edi, 520(%rbx)
.LBB61_37:                              # %if.end.101
	testl	%r12d, %r12d
	jle	.LBB61_38
# BB#39:                                # %if.end.101
	movl	%edi, %eax
	andl	$4, %eax
	jne	.LBB61_40
# BB#46:                                # %land.rhs.109.preheader
	movslq	%r10d, %r8
	movq	%r8, %rsi
	negq	%rsi
	testl	$524288, %edi           # imm = 0x80000
	cmoveq	%r8, %rsi
	shlq	$2, %r8
	.align	16, 0x90
.LBB61_47:                              # %land.rhs.109
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%r9)
	jne	.LBB61_48
# BB#49:                                # %while.body.114
                                        #   in Loop: Header=BB61_47 Depth=1
	decl	%r12d
	testl	%r10d, %r10d
	js	.LBB61_50
# BB#53:                                # %if.else.137
                                        #   in Loop: Header=BB61_47 Depth=1
	shrb	%r11b
	sete	%dil
	movb	$-128, %cl
	je	.LBB61_55
# BB#54:                                # %if.else.137
                                        #   in Loop: Header=BB61_47 Depth=1
	movb	%r11b, %cl
.LBB61_55:                              # %if.else.137
                                        #   in Loop: Header=BB61_47 Depth=1
	movzbl	%dil, %edi
	movb	%cl, %r11b
	jmp	.LBB61_41
	.align	16, 0x90
.LBB61_50:                              # %if.then.130
                                        #   in Loop: Header=BB61_47 Depth=1
	addb	%r11b, %r11b
	cmpb	$1, %r11b
	sbbl	%edi, %edi
	testb	%r11b, %r11b
	movb	$1, %al
	je	.LBB61_52
# BB#51:                                # %if.then.130
                                        #   in Loop: Header=BB61_47 Depth=1
	movb	%r11b, %al
.LBB61_52:                              # %if.then.130
                                        #   in Loop: Header=BB61_47 Depth=1
	movb	%al, %r11b
.LBB61_41:                              # %while.cond.106
                                        #   in Loop: Header=BB61_47 Depth=1
	addq	%rsi, %r9
	addl	%ebp, %edi
	addq	%r8, %rdx
	leal	1(%r12), %eax
	cmpl	$1, %eax
	movl	%edi, %ebp
	jg	.LBB61_47
	jmp	.LBB61_42
.LBB61_11:                              # %if.then.28
	movl	580(%rbx), %eax
	testl	%eax, %eax
	jle	.LBB61_105
# BB#12:                                # %if.then.31
	movl	572(%rbx), %esi
	testl	%esi, %esi
	jle	.LBB61_105
# BB#13:                                # %for.body.lr.ph.i
	movl	584(%rbx), %ecx
	andl	620(%rbx), %ecx
	movslq	%ecx, %rcx
	movq	224(%rbx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB61_14:                              # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB61_16 Depth 2
	testl	%eax, %eax
	jle	.LBB61_18
# BB#15:                                # %for.body.3.lr.ph.i
                                        #   in Loop: Header=BB61_14 Depth=1
	leaq	(%rdx,%rdx,2), %rax
	movq	8(%rcx,%rax,8), %rsi
	movq	16(%rcx,%rax,8), %rdi
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB61_16:                              # %for.body.3.i
                                        #   Parent Loop BB61_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	548(%rbx), %eax
	movl	%eax, (%rsi,%rbp,4)
	movl	$-1, (%rdi,%rbp,4)
	incq	%rbp
	movslq	580(%rbx), %rax
	cmpq	%rax, %rbp
	jl	.LBB61_16
# BB#17:                                # %for.cond.1.for.inc.8_crit_edge.i
                                        #   in Loop: Header=BB61_14 Depth=1
	movl	572(%rbx), %esi
.LBB61_18:                              # %for.inc.8.i
                                        #   in Loop: Header=BB61_14 Depth=1
	incq	%rdx
	movslq	%esi, %rdi
	cmpq	%rdi, %rdx
	jl	.LBB61_14
	jmp	.LBB61_105
.LBB61_38:
	movl	%ebp, %edi
	jmp	.LBB61_42
.LBB61_40:
	movl	%ebp, %edi
	jmp	.LBB61_42
.LBB61_48:
	movl	%ebp, %edi
.LBB61_42:                              # %while.cond.147.preheader
	testl	%r12d, %r12d
	jle	.LBB61_103
# BB#43:                                # %while.body.151.lr.ph
	movslq	%r10d, %r15
	movq	%r15, %rax
	negq	%rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	incl	%r12d
	movl	%r10d, %r13d
	negl	%r13d
	leaq	(,%r15,4), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$1, %r8d
	jmp	.LBB61_44
.LBB61_92:                              # %if.else.860
                                        #   in Loop: Header=BB61_44 Depth=1
	movslq	72(%rbx), %rcx
	movl	(%r14,%rcx,4), %eax
	movq	240(%rbx,%rcx,8), %rsi
	cmpl	8(%rsi), %eax
	jle	.LBB61_94
# BB#93:                                # %if.then.874
                                        #   in Loop: Header=BB61_44 Depth=1
	movslq	%edi, %rax
	leaq	(%rcx,%rcx,2), %rcx
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	(%rsi,%rcx,8), %rcx
	orb	%r11b, (%rcx,%rax)
	movslq	72(%rbx), %rax
	movq	240(%rbx,%rax,8), %rcx
	movl	12(%rcx), %ecx
	subl	%ecx, (%r14,%rax,4)
	jmp	.LBB61_94
	.align	16, 0x90
.LBB61_44:                              # %while.body.151
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r9), %eax
	movslq	72(%rbx), %rcx
	movq	240(%rbx,%rcx,8), %rsi
	imull	4(%rsi), %eax
	addl	(%rsi), %eax
	addl	(%rdx,%rcx,4), %eax
	movl	16(%r14,%rcx,4), %esi
	addl	%esi, %eax
	addl	$4, %esi
	sarl	$3, %esi
	subl	%esi, %eax
	movl	%eax, (%r14,%rcx,4)
	movslq	72(%rbx), %rcx
	movl	(%r14,%rcx,4), %eax
	testl	%eax, %eax
	js	.LBB61_45
# BB#56:                                # %if.else.202
                                        #   in Loop: Header=BB61_44 Depth=1
	movq	240(%rbx,%rcx,8), %rsi
	movl	12(%rsi), %esi
	cmpl	%esi, %eax
	jle	.LBB61_58
# BB#57:                                # %if.then.215
                                        #   in Loop: Header=BB61_44 Depth=1
	movl	%esi, (%r14,%rcx,4)
	jmp	.LBB61_58
	.align	16, 0x90
.LBB61_45:                              # %if.then.196
                                        #   in Loop: Header=BB61_44 Depth=1
	movl	$0, (%r14,%rcx,4)
.LBB61_58:                              # %if.end.228
                                        #   in Loop: Header=BB61_44 Depth=1
	movzbl	1(%r9), %ecx
	testl	%ecx, %ecx
	jne	.LBB61_61
# BB#59:                                # %lor.lhs.false
                                        #   in Loop: Header=BB61_44 Depth=1
	cmpb	$0, 2(%r9)
	jne	.LBB61_61
# BB#60:                                # %lor.lhs.false.235
                                        #   in Loop: Header=BB61_44 Depth=1
	cmpb	$0, 3(%r9)
	je	.LBB61_92
	.align	16, 0x90
.LBB61_61:                              # %if.then.239
                                        #   in Loop: Header=BB61_44 Depth=1
	movslq	104(%rbx), %rax
	movq	240(%rbx,%rax,8), %rsi
	imull	4(%rsi), %ecx
	addl	(%rsi), %ecx
	addl	(%rdx,%rax,4), %ecx
	movl	16(%r14,%rax,4), %esi
	addl	%esi, %ecx
	addl	$4, %esi
	sarl	$3, %esi
	subl	%esi, %ecx
	movl	%ecx, (%r14,%rax,4)
	movslq	104(%rbx), %rcx
	movl	(%r14,%rcx,4), %eax
	testl	%eax, %eax
	js	.LBB61_62
# BB#63:                                # %if.else.294
                                        #   in Loop: Header=BB61_44 Depth=1
	movq	240(%rbx,%rcx,8), %rsi
	movl	12(%rsi), %esi
	cmpl	%esi, %eax
	jle	.LBB61_65
# BB#64:                                # %if.then.308
                                        #   in Loop: Header=BB61_44 Depth=1
	movl	%esi, (%r14,%rcx,4)
	jmp	.LBB61_65
	.align	16, 0x90
.LBB61_62:                              # %if.then.288
                                        #   in Loop: Header=BB61_44 Depth=1
	movl	$0, (%r14,%rcx,4)
.LBB61_65:                              # %if.end.321
                                        #   in Loop: Header=BB61_44 Depth=1
	movzbl	2(%r9), %eax
	movslq	136(%rbx), %rcx
	movq	240(%rbx,%rcx,8), %rsi
	imull	4(%rsi), %eax
	addl	(%rsi), %eax
	addl	(%rdx,%rcx,4), %eax
	movl	16(%r14,%rcx,4), %esi
	addl	%esi, %eax
	addl	$4, %esi
	sarl	$3, %esi
	subl	%esi, %eax
	movl	%eax, (%r14,%rcx,4)
	movslq	136(%rbx), %rcx
	movl	(%r14,%rcx,4), %eax
	testl	%eax, %eax
	js	.LBB61_66
# BB#67:                                # %if.else.376
                                        #   in Loop: Header=BB61_44 Depth=1
	movq	240(%rbx,%rcx,8), %rsi
	movl	12(%rsi), %esi
	cmpl	%esi, %eax
	jle	.LBB61_69
# BB#68:                                # %if.then.390
                                        #   in Loop: Header=BB61_44 Depth=1
	movl	%esi, (%r14,%rcx,4)
	jmp	.LBB61_69
	.align	16, 0x90
.LBB61_66:                              # %if.then.370
                                        #   in Loop: Header=BB61_44 Depth=1
	movl	$0, (%r14,%rcx,4)
.LBB61_69:                              # %if.end.403
                                        #   in Loop: Header=BB61_44 Depth=1
	movzbl	3(%r9), %eax
	movslq	168(%rbx), %rcx
	movq	240(%rbx,%rcx,8), %rsi
	imull	4(%rsi), %eax
	addl	(%rsi), %eax
	addl	(%rdx,%rcx,4), %eax
	movl	16(%r14,%rcx,4), %esi
	addl	%esi, %eax
	addl	$4, %esi
	sarl	$3, %esi
	subl	%esi, %eax
	movl	%eax, (%r14,%rcx,4)
	movslq	168(%rbx), %rcx
	movl	(%r14,%rcx,4), %eax
	testl	%eax, %eax
	js	.LBB61_70
# BB#71:                                # %if.else.458
                                        #   in Loop: Header=BB61_44 Depth=1
	movq	240(%rbx,%rcx,8), %rsi
	movl	12(%rsi), %esi
	cmpl	%esi, %eax
	jle	.LBB61_73
# BB#72:                                # %if.then.472
                                        #   in Loop: Header=BB61_44 Depth=1
	movl	%esi, (%r14,%rcx,4)
	jmp	.LBB61_73
	.align	16, 0x90
.LBB61_70:                              # %if.then.452
                                        #   in Loop: Header=BB61_44 Depth=1
	movl	$0, (%r14,%rcx,4)
.LBB61_73:                              # %if.end.485
                                        #   in Loop: Header=BB61_44 Depth=1
	movslq	72(%rbx), %rax
	movl	(%r14,%rax,4), %ecx
	movq	240(%rbx,%rax,8), %rax
	cmpl	8(%rax), %ecx
	jle	.LBB61_75
# BB#74:                                # %if.then.498
                                        #   in Loop: Header=BB61_44 Depth=1
	movq	240(%rbx), %rax
	movl	12(%rax), %eax
	subl	%eax, (%r14)
	movq	248(%rbx), %rax
	movl	12(%rax), %eax
	subl	%eax, 4(%r14)
	movq	256(%rbx), %rax
	movl	12(%rax), %eax
	subl	%eax, 8(%r14)
	movq	264(%rbx), %rax
	movl	12(%rax), %eax
	subl	%eax, 12(%r14)
	movslq	%edi, %rax
	movslq	72(%rbx), %rcx
	jmp	.LBB61_84
	.align	16, 0x90
.LBB61_75:                              # %if.else.526
                                        #   in Loop: Header=BB61_44 Depth=1
	movzbl	(%r9), %ecx
	movzbl	1(%r9), %eax
	movq	%r15, %rbp
	cmpl	%eax, %ecx
	jae	.LBB61_78
# BB#76:                                # %land.lhs.true
                                        #   in Loop: Header=BB61_44 Depth=1
	movslq	104(%rbx), %r15
	movl	(%r14,%r15,4), %esi
	movq	240(%rbx,%r15,8), %rax
	cmpl	8(%rax), %esi
	jle	.LBB61_78
# BB#77:                                # %if.then.546
                                        #   in Loop: Header=BB61_44 Depth=1
	subl	12(%rax), %esi
	movl	%esi, (%r14,%r15,4)
	movslq	%edi, %rax
	movslq	104(%rbx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	(%rsi,%rcx,8), %rcx
	orb	%r11b, (%rcx,%rax)
	movb	(%r9), %cl
.LBB61_78:                              # %if.end.571
                                        #   in Loop: Header=BB61_44 Depth=1
	movzbl	2(%r9), %eax
	movzbl	%cl, %esi
	cmpl	%eax, %esi
	movq	%rbp, %r15
	jae	.LBB61_81
# BB#79:                                # %land.lhs.true.578
                                        #   in Loop: Header=BB61_44 Depth=1
	movslq	136(%rbx), %rsi
	movl	(%r14,%rsi,4), %ebp
	movq	240(%rbx,%rsi,8), %rax
	cmpl	8(%rax), %ebp
	jle	.LBB61_81
# BB#80:                                # %if.then.592
                                        #   in Loop: Header=BB61_44 Depth=1
	subl	12(%rax), %ebp
	movl	%ebp, (%r14,%rsi,4)
	movslq	%edi, %rax
	movslq	136(%rbx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	(%rsi,%rcx,8), %rcx
	orb	%r11b, (%rcx,%rax)
	movb	(%r9), %cl
.LBB61_81:                              # %if.end.617
                                        #   in Loop: Header=BB61_44 Depth=1
	movzbl	3(%r9), %eax
	movzbl	%cl, %ecx
	cmpl	%eax, %ecx
	jae	.LBB61_85
# BB#82:                                # %land.lhs.true.624
                                        #   in Loop: Header=BB61_44 Depth=1
	movslq	168(%rbx), %rcx
	movl	(%r14,%rcx,4), %esi
	movq	240(%rbx,%rcx,8), %rax
	cmpl	8(%rax), %esi
	jle	.LBB61_85
# BB#83:                                # %if.then.638
                                        #   in Loop: Header=BB61_44 Depth=1
	subl	12(%rax), %esi
	movl	%esi, (%r14,%rcx,4)
	movslq	%edi, %rax
	movslq	168(%rbx), %rcx
	.align	16, 0x90
.LBB61_84:                              # %if.end.664
                                        #   in Loop: Header=BB61_44 Depth=1
	leaq	(%rcx,%rcx,2), %rcx
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	(%rsi,%rcx,8), %rcx
	orb	%r11b, (%rcx,%rax)
.LBB61_85:                              # %if.end.664
                                        #   in Loop: Header=BB61_44 Depth=1
	testl	%r8d, %r8d
	jne	.LBB61_87
# BB#86:                                # %if.then.666
                                        #   in Loop: Header=BB61_44 Depth=1
	movslq	168(%rbx), %rax
	movl	(%r14,%rax,4), %ecx
	leal	8(%rcx,%rcx,2), %ecx
	sarl	$4, %ecx
	leal	(%r13,%rax), %eax
	cltq
	addl	%ecx, (%rdx,%rax,4)
.LBB61_87:                              # %if.end.682
                                        #   in Loop: Header=BB61_44 Depth=1
	movslq	168(%rbx), %rax
	imull	$5, (%r14,%rax,4), %ecx
	sarl	$4, %ecx
	movl	16(%r14,%rax,4), %esi
	addl	$4, %esi
	sarl	$3, %esi
	addl	%ecx, %esi
	movl	%esi, (%rdx,%rax,4)
	movslq	168(%rbx), %rax
	movl	(%r14,%rax,4), %ecx
	leal	(%rcx,%rcx,4), %esi
	sarl	$4, %esi
	leal	8(%rcx,%rcx,2), %ebp
	subl	%esi, %ecx
	sarl	$4, %ebp
	subl	%ebp, %ecx
	testl	%r8d, %r8d
	movl	%ecx, 16(%r14,%rax,4)
	jne	.LBB61_89
# BB#88:                                # %if.then.731
                                        #   in Loop: Header=BB61_44 Depth=1
	movslq	136(%rbx), %rax
	movl	(%r14,%rax,4), %ecx
	leal	8(%rcx,%rcx,2), %ecx
	sarl	$4, %ecx
	leal	(%r13,%rax), %eax
	cltq
	addl	%ecx, (%rdx,%rax,4)
.LBB61_89:                              # %if.end.747
                                        #   in Loop: Header=BB61_44 Depth=1
	movslq	136(%rbx), %rax
	imull	$5, (%r14,%rax,4), %ecx
	sarl	$4, %ecx
	movl	16(%r14,%rax,4), %esi
	addl	$4, %esi
	sarl	$3, %esi
	addl	%ecx, %esi
	movl	%esi, (%rdx,%rax,4)
	movslq	136(%rbx), %rax
	movl	(%r14,%rax,4), %ecx
	leal	(%rcx,%rcx,4), %esi
	sarl	$4, %esi
	leal	8(%rcx,%rcx,2), %ebp
	subl	%esi, %ecx
	sarl	$4, %ebp
	subl	%ebp, %ecx
	testl	%r8d, %r8d
	movl	%ecx, 16(%r14,%rax,4)
	jne	.LBB61_91
# BB#90:                                # %if.then.796
                                        #   in Loop: Header=BB61_44 Depth=1
	movslq	104(%rbx), %rax
	movl	(%r14,%rax,4), %ecx
	leal	8(%rcx,%rcx,2), %ecx
	sarl	$4, %ecx
	leal	(%r13,%rax), %eax
	cltq
	addl	%ecx, (%rdx,%rax,4)
.LBB61_91:                              # %if.end.812
                                        #   in Loop: Header=BB61_44 Depth=1
	movslq	104(%rbx), %rax
	imull	$5, (%r14,%rax,4), %ecx
	sarl	$4, %ecx
	movl	16(%r14,%rax,4), %esi
	addl	$4, %esi
	sarl	$3, %esi
	addl	%ecx, %esi
	movl	%esi, (%rdx,%rax,4)
	movslq	104(%rbx), %rax
	movl	(%r14,%rax,4), %ecx
	leal	(%rcx,%rcx,4), %esi
	sarl	$4, %esi
	leal	8(%rcx,%rcx,2), %ebp
	subl	%esi, %ecx
	sarl	$4, %ebp
	subl	%ebp, %ecx
	movl	%ecx, 16(%r14,%rax,4)
.LBB61_94:                              # %if.end.900
                                        #   in Loop: Header=BB61_44 Depth=1
	testl	%r8d, %r8d
	jne	.LBB61_96
# BB#95:                                # %if.then.902
                                        #   in Loop: Header=BB61_44 Depth=1
	movslq	72(%rbx), %rax
	movl	(%r14,%rax,4), %ecx
	leal	8(%rcx,%rcx,2), %ecx
	sarl	$4, %ecx
	leal	(%r13,%rax), %eax
	cltq
	addl	%ecx, (%rdx,%rax,4)
.LBB61_96:                              # %if.end.918
                                        #   in Loop: Header=BB61_44 Depth=1
	movslq	72(%rbx), %rax
	imull	$5, (%r14,%rax,4), %ecx
	sarl	$4, %ecx
	movl	16(%r14,%rax,4), %esi
	addl	$4, %esi
	sarl	$3, %esi
	addl	%ecx, %esi
	movl	%esi, (%rdx,%rax,4)
	movslq	72(%rbx), %rax
	movl	(%r14,%rax,4), %ecx
	leal	(%rcx,%rcx,4), %esi
	sarl	$4, %esi
	leal	8(%rcx,%rcx,2), %ebp
	subl	%esi, %ecx
	sarl	$4, %ebp
	subl	%ebp, %ecx
	movl	%ecx, 16(%r14,%rax,4)
	testl	%r10d, %r10d
	js	.LBB61_97
# BB#99:                                # %if.else.978
                                        #   in Loop: Header=BB61_44 Depth=1
	shrb	%r11b
	sete	%cl
	movb	$-128, %al
	je	.LBB61_101
# BB#100:                               # %if.else.978
                                        #   in Loop: Header=BB61_44 Depth=1
	movb	%r11b, %al
.LBB61_101:                             # %if.else.978
                                        #   in Loop: Header=BB61_44 Depth=1
	movzbl	%cl, %ecx
	jmp	.LBB61_102
	.align	16, 0x90
.LBB61_97:                              # %if.then.970
                                        #   in Loop: Header=BB61_44 Depth=1
	addb	%r11b, %r11b
	cmpb	$1, %r11b
	sbbl	%ecx, %ecx
	testb	%r11b, %r11b
	movb	$1, %al
	je	.LBB61_102
# BB#98:                                # %if.then.970
                                        #   in Loop: Header=BB61_44 Depth=1
	movb	%r11b, %al
	.align	16, 0x90
.LBB61_102:                             # %if.end.986
                                        #   in Loop: Header=BB61_44 Depth=1
	movb	%al, %r11b
	addl	%ecx, %edi
	testb	$8, 522(%rbx)
	movq	16(%rsp), %rax          # 8-byte Reload
	cmoveq	%r15, %rax
	addq	%rax, %r9
	decl	%r12d
	addq	8(%rsp), %rdx           # 8-byte Folded Reload
	xorl	%r8d, %r8d
	cmpl	$1, %r12d
	jg	.LBB61_44
.LBB61_103:                             # %while.end.998
	cmpl	$0, 580(%rbx)
	jle	.LBB61_105
# BB#104:                               # %if.then.1002
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	upd_limits
.LBB61_105:                             # %cleanup
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end61:
	.size	upd_fscmyk, .Lfunc_end61-upd_fscmyk
	.cfi_endproc

	.align	16, 0x90
	.type	upd_fscmy_k,@function
upd_fscmy_k:                            # @upd_fscmy_k
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp170:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp171:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp172:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp173:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp174:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp175:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp176:
	.cfi_def_cfa_offset 144
.Ltmp177:
	.cfi_offset %rbx, -56
.Ltmp178:
	.cfi_offset %r12, -48
.Ltmp179:
	.cfi_offset %r13, -40
.Ltmp180:
	.cfi_offset %r14, -32
.Ltmp181:
	.cfi_offset %r15, -24
.Ltmp182:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbp
	movl	584(%rbp), %eax
	andl	620(%rbp), %eax
	cltq
	movq	224(%rbp), %rcx
	movq	232(%rbp), %r15
	movq	(%rcx,%rax,8), %rbx
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movslq	556(%rbp), %rax
	leaq	(%r15,%rax,4), %r12
	leaq	(%r12,%rax,4), %r13
	movl	544(%rbp), %r14d
	movslq	%r14d, %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	72(%rbx), %rdi
	movslq	576(%rbp), %rdx
	xorl	%esi, %esi
	callq	memset
	movq	48(%rbx), %rdi
	movslq	576(%rbp), %rdx
	xorl	%esi, %esi
	callq	memset
	movq	24(%rbx), %rdi
	movslq	576(%rbp), %rdx
	xorl	%esi, %esi
	callq	memset
	movq	(%rbx), %rdi
	movslq	576(%rbp), %rdx
	xorl	%esi, %esi
	callq	memset
	movq	%rbp, %r10
	movl	520(%r10), %eax
	movl	%eax, %ecx
	andl	$524288, %ecx           # imm = 0x80000
	testb	$1, %al
	jne	.LBB62_1
# BB#30:                                # %if.else.42
	testl	%ecx, %ecx
	je	.LBB62_31
# BB#32:                                # %if.then.46
	movq	80(%rsp), %rsi          # 8-byte Reload
	decq	%rsi
	movq	%rsi, %rcx
	shlq	$4, %rcx
	addq	%rcx, %r13
	movb	%sil, %cl
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	sarl	$3, %esi
	movl	$-4, 60(%rsp)           # 4-byte Folded Spill
	movl	%esi, %ecx
	jmp	.LBB62_33
.LBB62_1:                               # %if.then
	testl	%ecx, %ecx
	je	.LBB62_3
# BB#2:
	movb	$-128, %sil
	movl	$4, 60(%rsp)            # 4-byte Folded Spill
	xorl	%ecx, %ecx
	jmp	.LBB62_4
.LBB62_31:
	movb	$-128, %dl
	xorl	%ecx, %ecx
	movl	$4, 60(%rsp)            # 4-byte Folded Spill
.LBB62_33:                              # %if.end.58
	testb	$4, %al
	jne	.LBB62_34
# BB#35:                                # %if.then.62
	movl	%edx, 76(%rsp)          # 4-byte Spill
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	movq	%r10, %rdi
	movq	%r10, %rbx
	callq	upd_pxlrev
	testl	%r14d, %r14d
	jle	.LBB62_36
# BB#37:
	movq	%rbx, %r10
	.align	16, 0x90
.LBB62_38:                              # %land.rhs.67
                                        # =>This Inner Loop Header: Depth=1
	movq	%r10, %rdi
	movq	%r10, %rbx
	callq	*200(%rbx)
	movq	%rbx, %rcx
	testl	%eax, %eax
	jne	.LBB62_39
# BB#40:                                # %while.body.73
                                        #   in Loop: Header=BB62_38 Depth=1
	leal	-1(%r14), %ebp
	cmpl	$1, %r14d
	movl	%ebp, %r14d
	movq	%rcx, %r10
	jg	.LBB62_38
	jmp	.LBB62_41
.LBB62_3:                               # %if.else
	movq	80(%rsp), %rdx          # 8-byte Reload
	decq	%rdx
	movq	%rdx, %rcx
	shlq	$4, %rcx
	addq	%rcx, %r13
	movb	%dl, %cl
	andb	$7, %cl
	movl	$128, %esi
	shrl	%cl, %esi
	sarl	$3, %edx
	movl	$-4, 60(%rsp)           # 4-byte Folded Spill
	movl	%edx, %ecx
.LBB62_4:                               # %if.end
	testb	$4, %al
	jne	.LBB62_5
# BB#6:                                 # %if.then.35
	movq	184(%r10), %rax
	movq	%rax, 192(%r10)
	testq	%rax, %rax
	je	.LBB62_7
# BB#8:                                 # %if.else.i
	movq	16(%r10), %rax
	movq	(%rax), %rax
	movl	4(%rax), %edx
	cmpl	$15, %edx
	jg	.LBB62_11
# BB#9:                                 # %if.else.i
	movl	%esi, 76(%rsp)          # 4-byte Spill
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	leal	-1(%rdx), %eax
	cmpl	$7, %eax
	ja	.LBB62_21
# BB#10:                                # %if.else.i
	jmpq	*.LJTI62_0(,%rax,8)
.LBB62_15:                              # %sw.bb.i
	movq	$upd_pxlget1f1, 200(%r10)
	movl	$upd_pxlget1f1, %ecx
	jmp	.LBB62_23
.LBB62_34:
	movl	%edx, 76(%rsp)          # 4-byte Spill
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	movl	%r14d, %ebp
	jmp	.LBB62_41
.LBB62_5:
	movl	%esi, 76(%rsp)          # 4-byte Spill
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	jmp	.LBB62_29
.LBB62_36:
	movl	%r14d, %ebp
	movq	%rbx, %r10
	jmp	.LBB62_41
.LBB62_7:                               # %if.then.i
	movl	%esi, 76(%rsp)          # 4-byte Spill
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	jmp	.LBB62_22
.LBB62_39:
	movl	%r14d, %ebp
	movq	%rcx, %r10
.LBB62_41:                              # %if.end.76
	movq	184(%r10), %rax
	movq	%rax, 192(%r10)
	testq	%rax, %rax
	je	.LBB62_56
# BB#42:                                # %if.else.i.233
	movq	16(%r10), %rax
	movq	(%rax), %rax
	movl	4(%rax), %edx
	cmpl	$15, %edx
	jg	.LBB62_45
# BB#43:                                # %if.else.i.233
	leal	-1(%rdx), %eax
	cmpl	$7, %eax
	ja	.LBB62_55
# BB#44:                                # %if.else.i.233
	jmpq	*.LJTI62_1(,%rax,8)
.LBB62_49:                              # %sw.bb.i.235
	movq	$upd_pxlget1f1, 200(%r10)
	jmp	.LBB62_57
.LBB62_45:                              # %if.else.i.233
	cmpl	$16, %edx
	je	.LBB62_53
# BB#46:                                # %if.else.i.233
	cmpl	$24, %edx
	jne	.LBB62_47
# BB#54:                                # %sw.bb.11.i.245
	movq	$upd_pxlget24f, 200(%r10)
	jmp	.LBB62_57
.LBB62_11:                              # %if.else.i
	cmpl	$16, %edx
	je	.LBB62_19
# BB#12:                                # %if.else.i
	cmpl	$24, %edx
	jne	.LBB62_13
# BB#20:                                # %sw.bb.11.i
	movl	%esi, 76(%rsp)          # 4-byte Spill
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	movq	$upd_pxlget24f, 200(%r10)
	movl	$upd_pxlget24f, %ecx
	jmp	.LBB62_23
.LBB62_53:                              # %sw.bb.9.i.243
	movq	$upd_pxlget16f, 200(%r10)
	jmp	.LBB62_57
.LBB62_47:                              # %if.else.i.233
	cmpl	$32, %edx
	jne	.LBB62_55
# BB#48:                                # %sw.bb.13.i.247
	movq	$upd_pxlget32f, 200(%r10)
	jmp	.LBB62_57
.LBB62_55:                              # %sw.default.i.251
	movq	624(%r10), %rdi
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%r10, %rbx
	callq	errprintf
	movq	%rbx, %r10
.LBB62_56:                              # %if.end.78
	movq	$upd_pxlgetnix, 200(%r10)
	jmp	.LBB62_57
.LBB62_19:                              # %sw.bb.9.i
	movl	%esi, 76(%rsp)          # 4-byte Spill
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	movq	$upd_pxlget16f, 200(%r10)
	movl	$upd_pxlget16f, %ecx
	jmp	.LBB62_23
.LBB62_13:                              # %if.else.i
	movl	%esi, 76(%rsp)          # 4-byte Spill
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	cmpl	$32, %edx
	jne	.LBB62_21
# BB#14:                                # %sw.bb.13.i
	movq	$upd_pxlget32f, 200(%r10)
	movl	$upd_pxlget32f, %ecx
	jmp	.LBB62_23
.LBB62_21:                              # %sw.default.i
	movq	624(%r10), %rdi
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%r10, %rbx
	callq	errprintf
	movq	%rbx, %r10
.LBB62_22:                              # %while.cond.preheader
	movq	$upd_pxlgetnix, 200(%r10)
	movl	$upd_pxlgetnix, %ecx
.LBB62_23:                              # %while.cond.preheader
	testl	%r14d, %r14d
	jle	.LBB62_29
# BB#24:                                # %land.rhs.preheader
	movq	%r10, %rdi
	movq	%r10, %rbp
	callq	*%rcx
	testl	%eax, %eax
	jne	.LBB62_28
	.align	16, 0x90
.LBB62_25:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r14d, %ebx
	cmpl	$2, %ebx
	jl	.LBB62_27
# BB#26:                                # %while.body.land.rhs_crit_edge
                                        #   in Loop: Header=BB62_25 Depth=1
	leal	-1(%rbx), %r14d
	movq	%rbp, %rdi
	callq	*200(%rbp)
	testl	%eax, %eax
	je	.LBB62_25
.LBB62_27:                              # %while.body.if.end.40.loopexit_crit_edge
	decl	%ebx
	movl	%ebx, %r14d
.LBB62_28:                              # %if.end.40
	movq	%rbp, %r10
.LBB62_29:                              # %if.end.40
	movq	%r10, %rdi
	movq	%r10, %rbx
	callq	upd_pxlrev
	movq	%rbx, %r10
	movl	%r14d, %ebp
.LBB62_57:                              # %if.end.78
	movl	520(%r10), %eax
	testb	$2, %al
	jne	.LBB62_59
# BB#58:                                # %if.then.82
	xorl	$1, %eax
	movl	%eax, 520(%r10)
.LBB62_59:                              # %if.end.84
	testb	$4, %al
	jne	.LBB62_63
# BB#60:                                # %if.then.88
	movq	192(%r10), %rax
	movq	200(%r10), %rbx
	testl	%ebp, %ebp
	jle	.LBB62_61
# BB#67:                                # %land.rhs.93.lr.ph
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movslq	60(%rsp), %rax          # 4-byte Folded Reload
	shlq	$2, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB62_68:                              # %land.rhs.93
                                        # =>This Inner Loop Header: Depth=1
	movq	%r10, %rdi
	movq	%r10, %r14
	callq	*%rbx
	testl	%eax, %eax
	jne	.LBB62_69
# BB#70:                                # %while.body.99
                                        #   in Loop: Header=BB62_68 Depth=1
	decl	%ebp
	movq	192(%r14), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	200(%r14), %rbx
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	movq	%r14, %r10
	js	.LBB62_71
# BB#74:                                # %if.else.114
                                        #   in Loop: Header=BB62_68 Depth=1
	movl	76(%rsp), %esi          # 4-byte Reload
	shrb	%sil
	sete	%al
	movb	$-128, %cl
	movl	80(%rsp), %edx          # 4-byte Reload
	je	.LBB62_76
# BB#75:                                # %if.else.114
                                        #   in Loop: Header=BB62_68 Depth=1
	movb	%sil, %cl
.LBB62_76:                              # %if.else.114
                                        #   in Loop: Header=BB62_68 Depth=1
	movzbl	%al, %eax
	jmp	.LBB62_73
	.align	16, 0x90
.LBB62_71:                              # %if.then.107
                                        #   in Loop: Header=BB62_68 Depth=1
	movl	76(%rsp), %esi          # 4-byte Reload
	addb	%sil, %sil
	cmpb	$1, %sil
	sbbl	%eax, %eax
	testb	%sil, %sil
	movb	$1, %cl
	movl	80(%rsp), %edx          # 4-byte Reload
	je	.LBB62_73
# BB#72:                                # %if.then.107
                                        #   in Loop: Header=BB62_68 Depth=1
	movb	%sil, %cl
	.align	16, 0x90
.LBB62_73:                              # %if.then.107
                                        #   in Loop: Header=BB62_68 Depth=1
	movl	%ecx, 76(%rsp)          # 4-byte Spill
	addl	%eax, %edx
	movl	%edx, 80(%rsp)          # 4-byte Spill
	addq	40(%rsp), %r13          # 8-byte Folded Reload
	leal	1(%rbp), %eax
	cmpl	$1, %eax
	jg	.LBB62_68
	jmp	.LBB62_62
.LBB62_61:
	movq	%rax, 64(%rsp)          # 8-byte Spill
	jmp	.LBB62_62
.LBB62_69:
	movq	%r14, %r10
.LBB62_62:                              # %while.end.122
	movq	%rbx, 200(%r10)
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	%rax, 192(%r10)
.LBB62_63:                              # %while.cond.126.preheader
	testl	%ebp, %ebp
	jle	.LBB62_116
# BB#64:                                # %while.body.130.lr.ph
	incl	%ebp
	movl	60(%rsp), %ecx          # 4-byte Reload
	movslq	%ecx, %rax
	shlq	$2, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	$3, %eax
	subl	%ecx, %eax
	cltq
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	$2, %eax
	subl	%ecx, %eax
	cltq
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	$1, %r14d
	movl	$1, %eax
	subl	%ecx, %eax
	cltq
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	%ecx, %eax
	negl	%eax
	cltq
	movq	%rax, 8(%rsp)           # 8-byte Spill
	.align	16, 0x90
.LBB62_65:                              # %while.body.130
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, 64(%rsp)          # 8-byte Spill
	movq	%r10, %rdi
	movq	%r10, %rbx
	callq	*200(%rbx)
	movq	%rbx, %r10
	movq	240(%r10), %r8
	movb	20(%r8), %cl
	movl	%eax, %esi
	shrl	%cl, %esi
	andl	16(%r8), %esi
	imull	4(%r8), %esi
	addl	(%r8), %esi
	addl	(%r13), %esi
	movl	(%r12), %ecx
	addl	%ecx, %esi
	addl	$4, %ecx
	sarl	$3, %ecx
	subl	%ecx, %esi
	movl	%esi, (%r15)
	js	.LBB62_66
# BB#77:                                # %if.else.154
                                        #   in Loop: Header=BB62_65 Depth=1
	movl	12(%r8), %ecx
	cmpl	%ecx, %esi
	jle	.LBB62_79
# BB#78:                                # %if.then.159
                                        #   in Loop: Header=BB62_65 Depth=1
	movl	%ecx, (%r15)
	movl	%ecx, %esi
	jmp	.LBB62_79
	.align	16, 0x90
.LBB62_66:                              # %if.then.152
                                        #   in Loop: Header=BB62_65 Depth=1
	movl	$0, (%r15)
	xorl	%esi, %esi
.LBB62_79:                              # %if.end.164
                                        #   in Loop: Header=BB62_65 Depth=1
	movq	248(%r10), %r9
	movb	20(%r9), %cl
	movl	%eax, %ebp
	shrl	%cl, %ebp
	andl	16(%r9), %ebp
	imull	4(%r9), %ebp
	addl	(%r9), %ebp
	addl	4(%r13), %ebp
	movl	4(%r12), %ecx
	addl	%ecx, %ebp
	addl	$4, %ecx
	sarl	$3, %ecx
	subl	%ecx, %ebp
	movl	%ebp, 4(%r15)
	js	.LBB62_80
# BB#81:                                # %if.else.191
                                        #   in Loop: Header=BB62_65 Depth=1
	movl	12(%r9), %ecx
	cmpl	%ecx, %ebp
	jle	.LBB62_83
# BB#82:                                # %if.then.197
                                        #   in Loop: Header=BB62_65 Depth=1
	movl	%ecx, 4(%r15)
	movl	%ecx, %ebp
	jmp	.LBB62_83
	.align	16, 0x90
.LBB62_80:                              # %if.then.189
                                        #   in Loop: Header=BB62_65 Depth=1
	movl	$0, 4(%r15)
	xorl	%ebp, %ebp
.LBB62_83:                              # %if.end.202
                                        #   in Loop: Header=BB62_65 Depth=1
	movq	256(%r10), %rbx
	movb	20(%rbx), %cl
	movl	%eax, %edx
	shrl	%cl, %edx
	andl	16(%rbx), %edx
	imull	4(%rbx), %edx
	addl	(%rbx), %edx
	addl	8(%r13), %edx
	movl	8(%r12), %ecx
	addl	%ecx, %edx
	addl	$4, %ecx
	sarl	$3, %ecx
	subl	%ecx, %edx
	movl	%edx, 8(%r15)
	js	.LBB62_84
# BB#85:                                # %if.else.229
                                        #   in Loop: Header=BB62_65 Depth=1
	movl	12(%rbx), %ecx
	cmpl	%ecx, %edx
	jle	.LBB62_87
# BB#86:                                # %if.then.235
                                        #   in Loop: Header=BB62_65 Depth=1
	movl	%ecx, 8(%r15)
	movl	%ecx, %edx
	jmp	.LBB62_87
	.align	16, 0x90
.LBB62_84:                              # %if.then.227
                                        #   in Loop: Header=BB62_65 Depth=1
	movl	$0, 8(%r15)
	xorl	%edx, %edx
.LBB62_87:                              # %if.end.240
                                        #   in Loop: Header=BB62_65 Depth=1
	movq	264(%r10), %rdi
	movb	20(%rdi), %cl
	shrl	%cl, %eax
	andl	16(%rdi), %eax
	imull	4(%rdi), %eax
	addl	(%rdi), %eax
	addl	12(%r13), %eax
	movl	12(%r12), %ecx
	addl	%ecx, %eax
	addl	$4, %ecx
	sarl	$3, %ecx
	subl	%ecx, %eax
	movl	%eax, 12(%r15)
	js	.LBB62_88
# BB#89:                                # %if.else.267
                                        #   in Loop: Header=BB62_65 Depth=1
	movl	12(%rdi), %ecx
	cmpl	%ecx, %eax
	jle	.LBB62_91
# BB#90:                                # %if.then.273
                                        #   in Loop: Header=BB62_65 Depth=1
	movl	%ecx, 12(%r15)
	movl	%ecx, %eax
	jmp	.LBB62_91
	.align	16, 0x90
.LBB62_88:                              # %if.then.265
                                        #   in Loop: Header=BB62_65 Depth=1
	movl	$0, 12(%r15)
	xorl	%eax, %eax
.LBB62_91:                              # %if.end.278
                                        #   in Loop: Header=BB62_65 Depth=1
	cmpl	8(%r8), %esi
	jle	.LBB62_93
# BB#92:                                # %if.then.283
                                        #   in Loop: Header=BB62_65 Depth=1
	subl	12(%r8), %esi
	movl	%esi, (%r15)
.LBB62_103:                             # %if.end.392
                                        #   in Loop: Header=BB62_65 Depth=1
	movl	80(%rsp), %esi          # 4-byte Reload
	movslq	%esi, %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %rcx
	movl	76(%rsp), %edi          # 4-byte Reload
	orb	%dil, (%rcx,%rax)
	movq	64(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB62_104
	.align	16, 0x90
.LBB62_93:                              # %if.else.295
                                        #   in Loop: Header=BB62_65 Depth=1
	cmpl	8(%r9), %ebp
	jle	.LBB62_94
# BB#95:                                # %lor.lhs.false
                                        #   in Loop: Header=BB62_65 Depth=1
	cmpl	8(%rbx), %edx
	jle	.LBB62_97
# BB#96:                                # %lor.lhs.false.306
                                        #   in Loop: Header=BB62_65 Depth=1
	cmpl	8(%rdi), %eax
	jle	.LBB62_97
# BB#102:                               # %if.else.370
                                        #   in Loop: Header=BB62_65 Depth=1
	subl	12(%r9), %ebp
	movl	%ebp, 4(%r15)
	subl	12(%rbx), %edx
	movl	%edx, 8(%r15)
	subl	12(%rdi), %eax
	movl	%eax, 12(%r15)
	jmp	.LBB62_103
	.align	16, 0x90
.LBB62_94:                              #   in Loop: Header=BB62_65 Depth=1
	movl	80(%rsp), %esi          # 4-byte Reload
	movl	76(%rsp), %edi          # 4-byte Reload
	jmp	.LBB62_98
.LBB62_97:                              # %if.then.318
                                        #   in Loop: Header=BB62_65 Depth=1
	subl	12(%r9), %ebp
	movl	%ebp, 4(%r15)
	movl	80(%rsp), %esi          # 4-byte Reload
	movslq	%esi, %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	24(%rcx), %rcx
	movl	76(%rsp), %edi          # 4-byte Reload
	orb	%dil, (%rcx,%rax)
	movl	8(%r15), %edx
	movq	256(%r10), %rbx
.LBB62_98:                              # %if.end.331
                                        #   in Loop: Header=BB62_65 Depth=1
	movq	64(%rsp), %rbp          # 8-byte Reload
	cmpl	8(%rbx), %edx
	jle	.LBB62_100
# BB#99:                                # %if.then.337
                                        #   in Loop: Header=BB62_65 Depth=1
	subl	12(%rbx), %edx
	movl	%edx, 8(%r15)
	movslq	%esi, %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	48(%rcx), %rcx
	orb	%dil, (%rcx,%rax)
.LBB62_100:                             # %if.end.350
                                        #   in Loop: Header=BB62_65 Depth=1
	movl	12(%r15), %eax
	movq	264(%r10), %rcx
	cmpl	8(%rcx), %eax
	jle	.LBB62_104
# BB#101:                               # %if.then.356
                                        #   in Loop: Header=BB62_65 Depth=1
	subl	12(%rcx), %eax
	movl	%eax, 12(%r15)
	movslq	%esi, %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	72(%rcx), %rcx
	orb	%dil, (%rcx,%rax)
.LBB62_104:                             # %if.end.392
                                        #   in Loop: Header=BB62_65 Depth=1
	testl	%r14d, %r14d
	jne	.LBB62_106
# BB#105:                               # %if.then.394
                                        #   in Loop: Header=BB62_65 Depth=1
	movl	(%r15), %eax
	leal	8(%rax,%rax,2), %eax
	sarl	$4, %eax
	movq	8(%rsp), %rcx           # 8-byte Reload
	addl	%eax, (%r13,%rcx,4)
.LBB62_106:                             # %if.end.403
                                        #   in Loop: Header=BB62_65 Depth=1
	imull	$5, (%r15), %eax
	sarl	$4, %eax
	movl	(%r12), %ecx
	addl	$4, %ecx
	sarl	$3, %ecx
	addl	%eax, %ecx
	movl	%ecx, (%r13)
	movl	(%r15), %eax
	leal	(%rax,%rax,4), %ecx
	sarl	$4, %ecx
	leal	8(%rax,%rax,2), %edx
	subl	%ecx, %eax
	sarl	$4, %edx
	subl	%edx, %eax
	testl	%r14d, %r14d
	movl	%eax, (%r12)
	jne	.LBB62_108
# BB#107:                               # %if.then.424
                                        #   in Loop: Header=BB62_65 Depth=1
	movl	4(%r15), %eax
	leal	8(%rax,%rax,2), %eax
	sarl	$4, %eax
	movq	16(%rsp), %rcx          # 8-byte Reload
	addl	%eax, (%r13,%rcx,4)
.LBB62_108:                             # %if.end.433
                                        #   in Loop: Header=BB62_65 Depth=1
	imull	$5, 4(%r15), %eax
	sarl	$4, %eax
	movl	4(%r12), %ecx
	addl	$4, %ecx
	sarl	$3, %ecx
	addl	%eax, %ecx
	movl	%ecx, 4(%r13)
	movl	4(%r15), %eax
	leal	(%rax,%rax,4), %ecx
	sarl	$4, %ecx
	leal	8(%rax,%rax,2), %edx
	subl	%ecx, %eax
	sarl	$4, %edx
	subl	%edx, %eax
	testl	%r14d, %r14d
	movl	%eax, 4(%r12)
	jne	.LBB62_110
# BB#109:                               # %if.then.454
                                        #   in Loop: Header=BB62_65 Depth=1
	movl	8(%r15), %eax
	leal	8(%rax,%rax,2), %eax
	sarl	$4, %eax
	movq	24(%rsp), %rcx          # 8-byte Reload
	addl	%eax, (%r13,%rcx,4)
.LBB62_110:                             # %if.end.463
                                        #   in Loop: Header=BB62_65 Depth=1
	imull	$5, 8(%r15), %eax
	sarl	$4, %eax
	movl	8(%r12), %ecx
	addl	$4, %ecx
	sarl	$3, %ecx
	addl	%eax, %ecx
	movl	%ecx, 8(%r13)
	movl	8(%r15), %eax
	leal	(%rax,%rax,4), %ecx
	sarl	$4, %ecx
	leal	8(%rax,%rax,2), %edx
	subl	%ecx, %eax
	sarl	$4, %edx
	subl	%edx, %eax
	testl	%r14d, %r14d
	movl	%eax, 8(%r12)
	jne	.LBB62_112
# BB#111:                               # %if.then.484
                                        #   in Loop: Header=BB62_65 Depth=1
	movl	12(%r15), %eax
	leal	8(%rax,%rax,2), %eax
	sarl	$4, %eax
	movq	32(%rsp), %rcx          # 8-byte Reload
	addl	%eax, (%r13,%rcx,4)
.LBB62_112:                             # %if.end.493
                                        #   in Loop: Header=BB62_65 Depth=1
	imull	$5, 12(%r15), %eax
	sarl	$4, %eax
	movl	12(%r12), %ecx
	addl	$4, %ecx
	sarl	$3, %ecx
	addl	%eax, %ecx
	movl	%ecx, 12(%r13)
	movl	12(%r15), %eax
	leal	(%rax,%rax,4), %ecx
	sarl	$4, %ecx
	leal	8(%rax,%rax,2), %edx
	subl	%ecx, %eax
	sarl	$4, %edx
	subl	%edx, %eax
	movl	%eax, 12(%r12)
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	js	.LBB62_113
# BB#119:                               # %if.else.525
                                        #   in Loop: Header=BB62_65 Depth=1
	shrb	%dil
	sete	%al
	movb	$-128, %cl
	je	.LBB62_121
# BB#120:                               # %if.else.525
                                        #   in Loop: Header=BB62_65 Depth=1
	movb	%dil, %cl
.LBB62_121:                             # %if.else.525
                                        #   in Loop: Header=BB62_65 Depth=1
	movzbl	%al, %eax
	jmp	.LBB62_115
	.align	16, 0x90
.LBB62_113:                             # %if.then.517
                                        #   in Loop: Header=BB62_65 Depth=1
	addb	%dil, %dil
	cmpb	$1, %dil
	sbbl	%eax, %eax
	testb	%dil, %dil
	movb	$1, %cl
	je	.LBB62_115
# BB#114:                               # %if.then.517
                                        #   in Loop: Header=BB62_65 Depth=1
	movb	%dil, %cl
	.align	16, 0x90
.LBB62_115:                             # %if.then.517
                                        #   in Loop: Header=BB62_65 Depth=1
	movl	%ecx, 76(%rsp)          # 4-byte Spill
	addl	%eax, %esi
	movl	%esi, 80(%rsp)          # 4-byte Spill
	decl	%ebp
	addq	40(%rsp), %r13          # 8-byte Folded Reload
	xorl	%r14d, %r14d
	cmpl	$1, %ebp
	jg	.LBB62_65
.LBB62_116:                             # %while.end.534
	cmpl	$0, 580(%r10)
	jle	.LBB62_118
# BB#117:                               # %if.then.537
	movl	$1, %esi
	movq	%r10, %rdi
	callq	upd_limits
.LBB62_118:                             # %if.end.538
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB62_50:                              # %sw.bb.3.i.237
	movq	$upd_pxlget2f1, 200(%r10)
	jmp	.LBB62_57
.LBB62_51:                              # %sw.bb.5.i.239
	movq	$upd_pxlget4f1, 200(%r10)
	jmp	.LBB62_57
.LBB62_52:                              # %sw.bb.7.i.241
	movq	$upd_pxlget8f, 200(%r10)
	jmp	.LBB62_57
.LBB62_16:                              # %sw.bb.3.i
	movq	$upd_pxlget2f1, 200(%r10)
	movl	$upd_pxlget2f1, %ecx
	jmp	.LBB62_23
.LBB62_17:                              # %sw.bb.5.i
	movq	$upd_pxlget4f1, 200(%r10)
	movl	$upd_pxlget4f1, %ecx
	jmp	.LBB62_23
.LBB62_18:                              # %sw.bb.7.i
	movq	$upd_pxlget8f, 200(%r10)
	movl	$upd_pxlget8f, %ecx
	jmp	.LBB62_23
.Lfunc_end62:
	.size	upd_fscmy_k, .Lfunc_end62-upd_fscmy_k
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI62_0:
	.quad	.LBB62_15
	.quad	.LBB62_16
	.quad	.LBB62_21
	.quad	.LBB62_17
	.quad	.LBB62_21
	.quad	.LBB62_21
	.quad	.LBB62_21
	.quad	.LBB62_18
.LJTI62_1:
	.quad	.LBB62_49
	.quad	.LBB62_50
	.quad	.LBB62_55
	.quad	.LBB62_51
	.quad	.LBB62_55
	.quad	.LBB62_55
	.quad	.LBB62_55
	.quad	.LBB62_52

	.text
	.align	16, 0x90
	.type	upd_close_writer,@function
upd_close_writer:                       # @upd_close_writer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp183:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp184:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp185:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp186:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp187:
	.cfi_def_cfa_offset 48
.Ltmp188:
	.cfi_offset %rbx, -48
.Ltmp189:
	.cfi_offset %r12, -40
.Ltmp190:
	.cfi_offset %r13, -32
.Ltmp191:
	.cfi_offset %r14, -24
.Ltmp192:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	18488(%r14), %r15
	testq	%r15, %r15
	je	.LBB63_28
# BB#1:                                 # %if.then
	cmpl	$0, 588(%r15)
	je	.LBB63_4
# BB#2:                                 # %land.lhs.true
	movq	496(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB63_4
# BB#3:                                 # %if.then.3
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.12, %edx
	callq	*24(%rdi)
.LBB63_4:                               # %if.end
	movl	$0, 588(%r15)
	movq	$0, 496(%r15)
	movl	568(%r15), %ecx
	testl	%ecx, %ecx
	jle	.LBB63_27
# BB#5:                                 # %land.lhs.true.10
	movq	224(%r15), %rax
	testq	%rax, %rax
	je	.LBB63_27
# BB#6:                                 # %for.body.lr.ph
	xorl	%r12d, %r12d
	jmp	.LBB63_7
	.align	16, 0x90
.LBB63_25:                              # %for.inc.122.for.body_crit_edge
                                        #   in Loop: Header=BB63_7 Depth=1
	movq	224(%r15), %rax
.LBB63_7:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB63_9 Depth 2
	cmpq	$0, (%rax,%r12,8)
	je	.LBB63_24
# BB#8:                                 # %for.cond.19.preheader
                                        #   in Loop: Header=BB63_7 Depth=1
	cmpl	$0, 572(%r15)
	movl	$0, %ebx
	movl	$0, %r13d
	jle	.LBB63_23
	.align	16, 0x90
.LBB63_9:                               # %for.body.21
                                        #   Parent Loop BB63_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, 576(%r15)
	jle	.LBB63_12
# BB#10:                                # %land.lhs.true.23
                                        #   in Loop: Header=BB63_9 Depth=2
	movq	(%rax,%r12,8), %rcx
	movq	(%rcx,%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB63_12
# BB#11:                                # %if.then.30
                                        #   in Loop: Header=BB63_9 Depth=2
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.15, %edx
	callq	*24(%rdi)
	movq	224(%r15), %rax
.LBB63_12:                              # %if.end.43
                                        #   in Loop: Header=BB63_9 Depth=2
	movq	(%rax,%r12,8), %rcx
	movq	$0, (%rcx,%rbx)
	cmpl	$0, 580(%r15)
	jle	.LBB63_13
# BB#14:                                # %land.lhs.true.51
                                        #   in Loop: Header=BB63_9 Depth=2
	movq	(%rax,%r12,8), %rcx
	movq	8(%rcx,%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB63_15
# BB#16:                                # %if.end.71
                                        #   in Loop: Header=BB63_9 Depth=2
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.16, %edx
	callq	*24(%rdi)
	movq	224(%r15), %rax
	movq	(%rax,%r12,8), %rcx
	cmpl	$0, 580(%r15)
	movq	$0, 8(%rcx,%rbx)
	jle	.LBB63_20
# BB#17:                                #   in Loop: Header=BB63_9 Depth=2
	leaq	(%rax,%r12,8), %rcx
	jmp	.LBB63_18
	.align	16, 0x90
.LBB63_13:                              # %if.end.71.thread86
                                        #   in Loop: Header=BB63_9 Depth=2
	movq	(%rax,%r12,8), %rcx
	movq	$0, 8(%rcx,%rbx)
	jmp	.LBB63_20
	.align	16, 0x90
.LBB63_15:                              # %if.end.71.thread
                                        #   in Loop: Header=BB63_9 Depth=2
	leaq	(%rax,%r12,8), %rcx
	movq	(%rax,%r12,8), %rdx
	movq	$0, 8(%rdx,%rbx)
.LBB63_18:                              # %land.lhs.true.80
                                        #   in Loop: Header=BB63_9 Depth=2
	movq	(%rcx), %rcx
	movq	16(%rcx,%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB63_20
# BB#19:                                # %if.then.87
                                        #   in Loop: Header=BB63_9 Depth=2
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.17, %edx
	callq	*24(%rdi)
	movq	224(%r15), %rax
.LBB63_20:                              # %if.end.100
                                        #   in Loop: Header=BB63_9 Depth=2
	movq	(%rax,%r12,8), %rcx
	movq	$0, 16(%rcx,%rbx)
	incq	%r13
	movslq	572(%r15), %rcx
	addq	$24, %rbx
	cmpq	%rcx, %r13
	jl	.LBB63_9
# BB#21:                                # %for.end
                                        #   in Loop: Header=BB63_7 Depth=1
	testl	%r13d, %r13d
	je	.LBB63_23
# BB#22:                                # %if.then.108
                                        #   in Loop: Header=BB63_7 Depth=1
	movq	24(%r14), %rcx
	movq	200(%rcx), %rdi
	movq	(%rax,%r12,8), %rsi
	movl	$.L.str.14, %edx
	callq	*24(%rdi)
	movq	224(%r15), %rax
.LBB63_23:                              # %if.end.118
                                        #   in Loop: Header=BB63_7 Depth=1
	movq	$0, (%rax,%r12,8)
	movl	568(%r15), %ecx
.LBB63_24:                              # %for.inc.122
                                        #   in Loop: Header=BB63_7 Depth=1
	incq	%r12
	movslq	%ecx, %rax
	cmpq	%r12, %rax
	jg	.LBB63_25
# BB#26:                                # %for.end.124
	movq	224(%r15), %rsi
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.13, %edx
	callq	*24(%rdi)
.LBB63_27:                              # %if.end.132
	andb	$127, 521(%r15)
.LBB63_28:                              # %if.end.133
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end63:
	.size	upd_close_writer, .Lfunc_end63-upd_close_writer
	.cfi_endproc

	.align	16, 0x90
	.type	upd_start_rascomp,@function
upd_start_rascomp:                      # @upd_start_rascomp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp193:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp194:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp195:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp196:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp197:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp198:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp199:
	.cfi_def_cfa_offset 64
.Ltmp200:
	.cfi_offset %rbx, -56
.Ltmp201:
	.cfi_offset %r12, -48
.Ltmp202:
	.cfi_offset %r13, -40
.Ltmp203:
	.cfi_offset %r14, -32
.Ltmp204:
	.cfi_offset %r15, -24
.Ltmp205:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	24(%rbx), %rax
	cmpl	$0, 56(%rax)
	jne	.LBB64_27
# BB#1:                                 # %if.then
	movl	$89, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movl	$166, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movl	$106, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movl	$149, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movl	548(%rbx), %eax
	movl	%eax, %edi
	movl	%eax, %ebp
	shrl	$24, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movl	%ebp, %eax
	shrl	$16, %eax
	movzbl	%al, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movl	%ebp, %eax
	movzbl	%ah, %edi  # NOREX
	movq	%r14, %rsi
	callq	_IO_putc
	movzbl	%bpl, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movl	552(%rbx), %eax
	movl	%eax, %edi
	movl	%eax, %ebp
	shrl	$24, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movl	%ebp, %eax
	shrl	$16, %eax
	movzbl	%al, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movl	%ebp, %eax
	movzbl	%ah, %edi  # NOREX
	movq	%r14, %rsi
	callq	_IO_putc
	movzbl	%bpl, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movl	$8, %ebp
	cmpl	$1, 556(%rbx)
	jg	.LBB64_3
# BB#2:                                 # %select.mid
	movl	$1, %ebp
.LBB64_3:                               # %select.end
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movl	%ebp, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	imull	548(%rbx), %ebp
	addl	$15, %ebp
	sarl	$4, %ebp
	imull	552(%rbx), %ebp
	leal	(%rbp,%rbp), %r15d
	movl	%r15d, %edi
	shrl	$24, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movl	%ebp, %eax
	shrl	$15, %eax
	movzbl	%al, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	shrl	$7, %ebp
	movzbl	%bpl, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movzbl	%r15b, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movl	$1, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movl	$1, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movb	556(%rbx), %cl
	movl	$3, %eax
	shll	%cl, %eax
	movl	%eax, %edi
	movl	%eax, %ebp
	shrl	$24, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movl	%ebp, %eax
	shrl	$16, %eax
	movzbl	%al, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movl	%ebp, %eax
	movzbl	%ah, %edi  # NOREX
	movq	%r14, %rsi
	callq	_IO_putc
	movzbl	%bpl, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movl	556(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB64_4
# BB#9:                                 # %if.then.97
	movq	240(%rbx), %rax
	movslq	28(%rax), %rax
	shlq	$5, %rax
	cmpl	$0, 76(%rbx,%rax)
	je	.LBB64_12
# BB#10:                                # %if.then.101
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movl	$-1, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movl	$-1, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movl	$-1, %edi
	jmp	.LBB64_11
.LBB64_4:                               # %select.end
	cmpl	$3, %eax
	jne	.LBB64_13
# BB#5:                                 # %for.cond.122.preheader.preheader
	xorl	%ebp, %ebp
	movl	$255, %r15d
	movl	$5, %r12d
	movl	$6, %r13d
	.align	16, 0x90
.LBB64_6:                               # %for.cond.122.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 76(%rbx,%rbp)
	movl	$255, %edi
	je	.LBB64_8
# BB#7:                                 # %select.mid180
                                        #   in Loop: Header=BB64_6 Depth=1
	xorl	%edi, %edi
.LBB64_8:                               # %select.end179
                                        #   in Loop: Header=BB64_6 Depth=1
	movq	%r14, %rsi
	callq	_IO_putc
	cmpl	$0, 76(%rbx,%rbp)
	sete	%al
	cmpl	$0, 72(%rbx,%rbp)
	sete	%cl
	xorb	%al, %cl
	movl	$0, %edi
	cmovnel	%r15d, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	cmpl	$0, 76(%rbx,%rbp)
	sete	%al
	cmpl	$1, 72(%rbx,%rbp)
	sete	%cl
	xorb	%al, %cl
	movl	$0, %edi
	cmovnel	%r15d, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	cmpl	$0, 76(%rbx,%rbp)
	sete	%al
	cmpl	$2, 72(%rbx,%rbp)
	setb	%cl
	xorb	%al, %cl
	movl	$0, %edi
	cmovnel	%r15d, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	cmpl	$0, 76(%rbx,%rbp)
	sete	%al
	cmpl	$2, 72(%rbx,%rbp)
	sete	%cl
	xorb	%al, %cl
	movl	$0, %edi
	cmovnel	%r15d, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	cmpl	$0, 76(%rbx,%rbp)
	sete	%al
	movl	72(%rbx,%rbp), %ecx
	btl	%ecx, %r12d
	setb	%cl
	xorb	%al, %cl
	movl	$0, %edi
	cmovnel	%r15d, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	cmpl	$0, 76(%rbx,%rbp)
	sete	%al
	movl	72(%rbx,%rbp), %ecx
	btl	%ecx, %r13d
	setb	%cl
	xorb	%al, %cl
	movl	$0, %edi
	cmovnel	%r15d, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	cmpl	$0, 76(%rbx,%rbp)
	sete	%al
	cmpl	$3, 72(%rbx,%rbp)
	setb	%cl
	xorb	%al, %cl
	movl	$0, %edi
	cmovnel	%r15d, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	addq	$32, %rbp
	cmpq	$96, %rbp
	jne	.LBB64_6
	jmp	.LBB64_27
.LBB64_13:                              # %for.cond.148.preheader
	movl	$16, %r12d
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB64_14:                              # %for.cond.153.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB64_15 Depth 2
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB64_15:                              # %for.body.156
                                        #   Parent Loop BB64_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$16777215, %eax         # imm = 0xFFFFFF
	movl	72(%rbx), %ecx
	btl	%ecx, %ebp
	jb	.LBB64_17
# BB#16:                                # %if.else.164
                                        #   in Loop: Header=BB64_15 Depth=2
	movl	104(%rbx), %eax
	movl	136(%rbx), %ecx
	btl	%eax, %ebp
	movl	$16711680, %eax         # imm = 0xFF0000
	cmovael	%r15d, %eax
	movl	%eax, %edx
	orl	$65280, %edx            # imm = 0xFF00
	btl	%ecx, %ebp
	cmovael	%eax, %edx
	movl	168(%rbx), %ecx
	movl	%edx, %eax
	orl	$255, %eax
	btl	%ecx, %ebp
	cmovael	%edx, %eax
.LBB64_17:                              # %if.end.191
                                        #   in Loop: Header=BB64_15 Depth=2
	cmpl	$0, 108(%rbx)
	jne	.LBB64_19
# BB#18:                                #   in Loop: Header=BB64_15 Depth=2
	xorl	$16711680, %eax         # imm = 0xFF0000
.LBB64_19:                              # %select.end196
                                        #   in Loop: Header=BB64_15 Depth=2
	cmpl	$0, 140(%rbx)
	jne	.LBB64_21
# BB#20:                                #   in Loop: Header=BB64_15 Depth=2
	xorl	$65280, %eax            # imm = 0xFF00
.LBB64_21:                              # %select.end266
                                        #   in Loop: Header=BB64_15 Depth=2
	cmpl	$0, 172(%rbx)
	jne	.LBB64_23
# BB#22:                                #   in Loop: Header=BB64_15 Depth=2
	xorl	$255, %eax
.LBB64_23:                              # %select.end271
                                        #   in Loop: Header=BB64_15 Depth=2
	movq	(%rbx), %rcx
	cmpl	$2, (%rcx)
	je	.LBB64_25
# BB#24:                                # %select.mid274
                                        #   in Loop: Header=BB64_15 Depth=2
	xorl	$16777215, %eax         # imm = 0xFFFFFF
.LBB64_25:                              # %select.end273
                                        #   in Loop: Header=BB64_15 Depth=2
	movb	%r12b, %cl
	shrl	%cl, %eax
	movzbl	%al, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	incl	%ebp
	cmpl	$16, %ebp
	jne	.LBB64_15
# BB#26:                                # %for.end.224
                                        #   in Loop: Header=BB64_14 Depth=1
	addl	$-8, %r12d
	jns	.LBB64_14
	jmp	.LBB64_27
.LBB64_12:                              # %if.else.108
	movl	$-1, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movl	$-1, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movl	$-1, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	xorl	%edi, %edi
.LBB64_11:                              # %if.end.229
	movq	%r14, %rsi
	callq	_IO_putc
.LBB64_27:                              # %if.end.229
	movq	496(%rbx), %rdi
	movl	588(%rbx), %edx
	xorl	%esi, %esi
	callq	memset
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end64:
	.size	upd_start_rascomp, .Lfunc_end64-upd_start_rascomp
	.cfi_endproc

	.align	16, 0x90
	.type	upd_rascomp,@function
upd_rascomp:                            # @upd_rascomp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp206:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp207:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp208:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp209:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp210:
	.cfi_def_cfa_offset 48
.Ltmp211:
	.cfi_offset %rbx, -48
.Ltmp212:
	.cfi_offset %r12, -40
.Ltmp213:
	.cfi_offset %r13, -32
.Ltmp214:
	.cfi_offset %r14, -24
.Ltmp215:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r13
	movl	584(%r13), %eax
	andl	612(%r13), %eax
	cltq
	movq	224(%r13), %rcx
	movq	(%rcx,%rax,8), %r8
	movl	548(%r13), %ebx
	movl	556(%r13), %eax
	cmpl	$1, %eax
	jne	.LBB65_4
# BB#1:                                 # %if.then
	leal	7(%rbx), %r15d
	shrl	$3, %r15d
	leaq	496(%r13), %r12
	movq	496(%r13), %rdi
	movq	(%r8), %rsi
	movq	%r15, %rdx
	callq	memcpy
	andl	$7, %ebx
	je	.LBB65_3
# BB#2:                                 # %if.then.2
	movl	$8, %ecx
	subl	%ebx, %ecx
	movl	$255, %eax
	shll	%cl, %eax
	decl	%r15d
	movq	(%r12), %rcx
	movzbl	(%rcx,%r15), %edx
	andl	%eax, %edx
	movb	%dl, (%rcx,%r15)
	jmp	.LBB65_3
.LBB65_4:                               # %if.else
	leaq	496(%r13), %r12
	testl	%ebx, %ebx
	je	.LBB65_3
# BB#5:                                 # %while.body.lr.ph
	movq	(%r12), %r10
	movl	$1, %edx
	subl	%ebx, %edx
	movb	$-128, %cl
	xorl	%r9d, %r9d
	jmp	.LBB65_6
	.align	16, 0x90
.LBB65_21:                              # %sw.epilog.while.body_crit_edge
                                        #   in Loop: Header=BB65_6 Depth=1
	addl	%eax, %r9d
	incq	%r10
	movl	556(%r13), %eax
	incl	%edx
	movb	%bl, %cl
.LBB65_6:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1, %eax
	je	.LBB65_11
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB65_6 Depth=1
	cmpl	$4, %eax
	jne	.LBB65_8
# BB#12:                                # %sw.bb
                                        #   in Loop: Header=BB65_6 Depth=1
	movslq	%r9d, %rdi
	movq	72(%r8), %rax
	testb	(%rax,%rdi), %cl
	setne	%al
	shlb	$3, %al
	jmp	.LBB65_13
	.align	16, 0x90
.LBB65_11:                              # %while.body.sw.bb.53_crit_edge
                                        #   in Loop: Header=BB65_6 Depth=1
	movslq	%r9d, %rdi
	xorl	%eax, %eax
	jmp	.LBB65_17
	.align	16, 0x90
.LBB65_8:                               # %while.body
                                        #   in Loop: Header=BB65_6 Depth=1
	cmpl	$3, %eax
	jne	.LBB65_9
# BB#10:                                # %while.body.sw.bb.26_crit_edge
                                        #   in Loop: Header=BB65_6 Depth=1
	movslq	%r9d, %rdi
	xorl	%eax, %eax
.LBB65_13:                              # %sw.bb.26
                                        #   in Loop: Header=BB65_6 Depth=1
	movq	24(%r8), %rbx
	movq	48(%r8), %rsi
	testb	(%rsi,%rdi), %cl
	je	.LBB65_15
# BB#14:                                # %sw.bb.26
                                        #   in Loop: Header=BB65_6 Depth=1
	orb	$4, %al
.LBB65_15:                              # %sw.bb.26
                                        #   in Loop: Header=BB65_6 Depth=1
	testb	(%rbx,%rdi), %cl
	je	.LBB65_17
# BB#16:                                # %sw.bb.26
                                        #   in Loop: Header=BB65_6 Depth=1
	orb	$2, %al
.LBB65_17:                              # %sw.bb.53
                                        #   in Loop: Header=BB65_6 Depth=1
	movq	(%r8), %rsi
	testb	(%rsi,%rdi), %cl
	setne	%dil
	orb	%al, %dil
	jmp	.LBB65_18
.LBB65_9:                               #   in Loop: Header=BB65_6 Depth=1
	xorl	%edi, %edi
	.align	16, 0x90
.LBB65_18:                              # %sw.epilog
                                        #   in Loop: Header=BB65_6 Depth=1
	movb	%dil, (%r10)
	testl	%edx, %edx
	je	.LBB65_3
# BB#19:                                # %sw.epilog.while.body_crit_edge
                                        #   in Loop: Header=BB65_6 Depth=1
	shrb	%cl
	sete	%al
	movzbl	%al, %eax
	movb	$-128, %bl
	je	.LBB65_21
# BB#20:                                # %sw.epilog.while.body_crit_edge
                                        #   in Loop: Header=BB65_6 Depth=1
	movb	%cl, %bl
	jmp	.LBB65_21
.LBB65_3:                               # %if.end.74
	movq	(%r12), %rdi
	movl	588(%r13), %edx
	movl	$1, %esi
	movq	%r14, %rcx
	callq	fwrite
	incl	612(%r13)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end65:
	.size	upd_rascomp, .Lfunc_end65-upd_rascomp
	.cfi_endproc

	.align	16, 0x90
	.type	upd_wrtescp,@function
upd_wrtescp:                            # @upd_wrtescp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp216:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp217:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp218:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp219:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp220:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp221:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp222:
	.cfi_def_cfa_offset 160
.Ltmp223:
	.cfi_offset %rbx, -56
.Ltmp224:
	.cfi_offset %r12, -48
.Ltmp225:
	.cfi_offset %r13, -40
.Ltmp226:
	.cfi_offset %r14, -32
.Ltmp227:
	.cfi_offset %r15, -24
.Ltmp228:
	.cfi_offset %rbp, -16
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %r12
	movl	612(%r12), %r10d
	movq	8(%r12), %r9
	movl	48(%r9), %r8d
	cmpl	%r8d, %r10d
	jge	.LBB66_2
# BB#1:                                 # %if.then
	movslq	596(%r12), %rcx
	movq	16(%r12), %rdx
	leaq	(,%rcx,4), %rax
	addq	112(%rdx), %rax
	movq	128(%rdx), %rdx
	movl	(%rdx,%rcx,4), %esi
	xorl	%edi, %edi
	jmp	.LBB66_5
.LBB66_2:                               # %if.else
	cmpl	52(%r9), %r10d
	movslq	596(%r12), %rcx
	movq	16(%r12), %rdx
	movl	32(%r9), %esi
	jge	.LBB66_3
# BB#4:                                 # %if.else.28
	shlq	$2, %rcx
	addq	80(%rdx), %rcx
	xorl	%edi, %edi
	movq	%rcx, %rax
	jmp	.LBB66_5
.LBB66_3:                               # %if.then.13
	leaq	(,%rcx,4), %rax
	addq	160(%rdx), %rax
	movq	176(%rdx), %rdx
	movl	%esi, %edi
	subl	(%rdx,%rcx,4), %edi
.LBB66_5:                               # %if.end.37
	movl	%edi, 96(%rsp)          # 4-byte Spill
	movl	%esi, 100(%rsp)         # 4-byte Spill
	movl	(%rax), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movslq	%eax, %r14
	movl	40(%r9), %r11d
	movl	56(%r9), %eax
	movl	%r11d, %ecx
	imull	%edi, %ecx
	addl	%r10d, %ecx
	subl	%eax, %ecx
	movl	%r11d, %ebx
	imull	%esi, %ebx
	addl	%r10d, %ebx
	subl	%eax, %ebx
	movl	%ebx, 36(%rsp)          # 4-byte Spill
	movl	548(%r12), %esi
	movl	$-1, %r13d
	cmpl	%ebx, %ecx
	jge	.LBB66_6
# BB#7:                                 # %for.body.lr.ph
	movl	$-1, %r13d
	movl	%ecx, 76(%rsp)          # 4-byte Spill
	movl	%ecx, %ebp
	.align	16, 0x90
.LBB66_8:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_15 Depth 2
	movl	%ebx, %r15d
	testl	%ebp, %ebp
	js	.LBB66_16
# BB#9:                                 # %if.end.55
                                        #   in Loop: Header=BB66_8 Depth=1
	movslq	572(%r12), %rdx
	testq	%rdx, %rdx
	jle	.LBB66_16
# BB#10:                                # %for.body.60.lr.ph
                                        #   in Loop: Header=BB66_8 Depth=1
	movl	584(%r12), %eax
	andl	%ebp, %eax
	cltq
	movq	224(%r12), %rcx
	movq	(%rcx,%rax,8), %rax
	testb	$1, %dl
	jne	.LBB66_12
# BB#11:                                #   in Loop: Header=BB66_8 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB66_13
.LBB66_12:                              # %for.body.60.prol
                                        #   in Loop: Header=BB66_8 Depth=1
	movq	8(%rax), %rcx
	movq	16(%rax), %rbx
	movl	(%rcx,%r14,4), %ecx
	cmpl	%ecx, %esi
	cmovgl	%ecx, %esi
	movl	(%rbx,%r14,4), %ecx
	cmpl	%ecx, %r13d
	cmovll	%ecx, %r13d
	movl	$1, %ecx
.LBB66_13:                              # %for.body.60.lr.ph.split
                                        #   in Loop: Header=BB66_8 Depth=1
	cmpl	$1, %edx
	je	.LBB66_16
# BB#14:                                # %for.body.60.lr.ph.split.split
                                        #   in Loop: Header=BB66_8 Depth=1
	leaq	(%rcx,%rcx,2), %rbx
	leaq	40(%rax,%rbx,8), %rax
	.align	16, 0x90
.LBB66_15:                              # %for.body.60
                                        #   Parent Loop BB66_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-32(%rax), %rbx
	movq	-24(%rax), %rdi
	movl	(%rbx,%r14,4), %ebx
	cmpl	%ebx, %esi
	cmovgl	%ebx, %esi
	movl	(%rdi,%r14,4), %edi
	cmpl	%edi, %r13d
	cmovll	%edi, %r13d
	movq	-8(%rax), %rdi
	movl	(%rdi,%r14,4), %edi
	cmpl	%edi, %esi
	cmovgl	%edi, %esi
	movq	(%rax), %rdi
	movl	(%rdi,%r14,4), %edi
	cmpl	%edi, %r13d
	cmovll	%edi, %r13d
	addq	$2, %rcx
	addq	$48, %rax
	cmpq	%rdx, %rcx
	jl	.LBB66_15
	.align	16, 0x90
.LBB66_16:                              # %for.inc.87
                                        #   in Loop: Header=BB66_8 Depth=1
	leal	(%rbp,%r11), %ebp
	movl	%r15d, %ebx
	cmpl	%ebx, %ebp
	jl	.LBB66_8
	jmp	.LBB66_17
.LBB66_6:
	movl	%ecx, 76(%rsp)          # 4-byte Spill
.LBB66_17:                              # %for.end.91
	cmpl	%r13d, %esi
	jg	.LBB66_87
# BB#18:                                # %if.then.93
	movq	24(%r12), %r8
	cmpl	$0, 104(%r8)
	movl	12(%rsp), %eax          # 4-byte Reload
	movl	%eax, 52(%rsp)          # 4-byte Spill
	je	.LBB66_20
# BB#19:                                # %select.mid
	movl	%esi, 52(%rsp)          # 4-byte Spill
.LBB66_20:                              # %select.end
	xorl	%r11d, %r11d
	movl	%r10d, %eax
	subl	616(%r12), %eax
	movl	76(%rsp), %edi          # 4-byte Reload
	je	.LBB66_37
# BB#21:                                # %if.then.100
	testb	$8, 521(%r12)
	je	.LBB66_23
# BB#22:                                # %if.then.102
	addl	28(%r9), %r10d
	movl	%r10d, %eax
.LBB66_23:                              # %if.end.111
	movl	%ebx, 36(%rsp)          # 4-byte Spill
	movl	24(%r9), %ecx
	cmpl	$2, %ecx
	jl	.LBB66_25
# BB#24:                                # %if.then.115
	movl	%eax, %esi
	cltd
	idivl	%ecx
	movl	%eax, %edx
	imull	%ecx, %edx
	subl	%edx, %esi
	movl	%esi, %ebx
	jmp	.LBB66_27
.LBB66_25:                              # %if.else.122
	xorl	%ebx, %ebx
	cmpl	$-2, %ecx
	jg	.LBB66_27
# BB#26:                                # %if.then.126
	negl	%eax
	imull	%ecx, %eax
.LBB66_27:                              # %if.end.133
	xorl	%r11d, %r11d
	testl	%eax, %eax
	je	.LBB66_33
# BB#28:                                # %if.then.135
	movl	%eax, %ebp
	movl	152(%r8), %edx
	testq	%rdx, %rdx
	je	.LBB66_29
# BB#97:                                # %if.then.140
	movq	496(%r12), %rdi
	movq	144(%r8), %rsi
	callq	memcpy
	movq	24(%r12), %rax
	movq	496(%r12), %rcx
	movslq	152(%rax), %rax
	movl	%ebp, %edx
	movb	%dl, (%rcx,%rax)
	leal	2(%rax), %r11d
	movq	496(%r12), %rcx
	movb	%dh, 1(%rax,%rcx)  # NOREX
	jmp	.LBB66_33
.LBB66_29:                              # %while.body.lr.ph
	xorl	%r11d, %r11d
	movl	%ebp, %edx
	.align	16, 0x90
.LBB66_30:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$255, %edx
	movl	%edx, %ebp
	movl	$255, %eax
	cmovgl	%eax, %ebp
	cmpl	%ebp, 604(%r12)
	je	.LBB66_32
# BB#31:                                # %if.then.169
                                        #   in Loop: Header=BB66_30 Depth=1
	movslq	%r11d, %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	496(%r12), %rdi
	addq	%rax, %rdi
	movq	24(%r12), %rax
	movq	128(%rax), %rsi
	movl	%edx, 88(%rsp)          # 4-byte Spill
	movl	136(%rax), %edx
	movq	%r11, %r15
	callq	memcpy
	movq	%r15, %r11
	movq	24(%r12), %rax
	movq	496(%r12), %rcx
	movl	136(%rax), %eax
	movq	80(%rsp), %rdx          # 8-byte Reload
	leal	(%rdx,%rax), %edx
	leal	1(%rax,%r11), %r11d
	movslq	%edx, %rax
	movl	88(%rsp), %edx          # 4-byte Reload
	movb	%bpl, (%rcx,%rax)
	movl	%ebp, 604(%r12)
.LBB66_32:                              # %if.end.191
                                        #   in Loop: Header=BB66_30 Depth=1
	movslq	%r11d, %rax
	incl	%r11d
	movq	496(%r12), %rcx
	movb	$10, (%rcx,%rax)
	subl	%ebp, %edx
	jne	.LBB66_30
.LBB66_33:                              # %if.end.198
	movq	24(%r12), %rax
	movl	168(%rax), %ecx
	testl	%ecx, %ecx
	je	.LBB66_36
# BB#34:                                # %if.end.198
	testl	%ebx, %ebx
	je	.LBB66_36
	.align	16, 0x90
.LBB66_35:                              # %while.body.207
                                        # =>This Inner Loop Header: Depth=1
	movslq	%r11d, %rbp
	movq	496(%r12), %rdi
	addq	%rbp, %rdi
	movq	160(%rax), %rsi
	movl	%ecx, %edx
	callq	memcpy
	movq	24(%r12), %rax
	movl	168(%rax), %ecx
	leal	(%rbp,%rcx), %r11d
	decl	%ebx
	jne	.LBB66_35
.LBB66_36:                              # %if.end.224
	movl	612(%r12), %r10d
	movl	%r10d, 616(%r12)
	movl	76(%rsp), %edi          # 4-byte Reload
	movl	36(%rsp), %ebx          # 4-byte Reload
.LBB66_37:                              # %for.cond.228.preheader
	movl	572(%r12), %edx
	testl	%edx, %edx
	jle	.LBB66_86
# BB#38:                                # %for.cond.233.preheader.lr.ph
	leal	1(%r13), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	%r13d, %eax
	subl	52(%rsp), %eax          # 4-byte Folded Reload
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movl	96(%rsp), %esi          # 4-byte Reload
	movb	%sil, %cl
	andb	$7, %cl
	movl	$128, %eax
	shrl	%cl, %eax
	movl	%eax, 72(%rsp)          # 4-byte Spill
	movl	%esi, %eax
	sarl	$3, %eax
	cltq
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	$7, %ecx
	movl	100(%rsp), %eax         # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	subl	%esi, %eax
	movl	%eax, 68(%rsp)          # 4-byte Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB66_39:                              # %for.cond.233.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_40 Depth 2
                                        #     Child Loop BB66_69 Depth 2
                                        #     Child Loop BB66_73 Depth 2
                                        #       Child Loop BB66_76 Depth 3
	cmpl	%ebx, %edi
	movl	%edi, %eax
	jge	.LBB66_84
	.align	16, 0x90
.LBB66_40:                              # %for.body.236
                                        #   Parent Loop BB66_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%eax, %eax
	js	.LBB66_42
# BB#41:                                # %if.end.240
                                        #   in Loop: Header=BB66_40 Depth=2
	movl	584(%r12), %ecx
	andl	%eax, %ecx
	movslq	%ecx, %rcx
	movq	224(%r12), %rsi
	movq	(%rsi,%rcx,8), %rcx
	leaq	(%rbp,%rbp,2), %r15
	movq	16(%rcx,%r15,8), %rcx
	cmpl	$0, (%rcx,%r14,4)
	jns	.LBB66_43
.LBB66_42:                              # %for.inc.255
                                        #   in Loop: Header=BB66_40 Depth=2
	movq	8(%r12), %rcx
	addl	40(%rcx), %eax
	cmpl	%ebx, %eax
	jl	.LBB66_40
	jmp	.LBB66_84
.LBB66_43:                              # %if.end.263
                                        #   in Loop: Header=BB66_39 Depth=1
	movq	32(%r12), %rax
	cmpl	$0, 8(%rax)
	je	.LBB66_44
# BB#45:                                # %land.lhs.true
                                        #   in Loop: Header=BB66_39 Depth=1
	cmpl	%ebp, 600(%r12)
	jne	.LBB66_47
# BB#46:                                #   in Loop: Header=BB66_39 Depth=1
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	jmp	.LBB66_50
.LBB66_44:                              #   in Loop: Header=BB66_39 Depth=1
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	jmp	.LBB66_50
.LBB66_47:                              # %if.then.271
                                        #   in Loop: Header=BB66_39 Depth=1
	movl	%ebp, 600(%r12)
	movq	(%rax), %rax
	movq	%rbp, %rbx
	shlq	$4, %rbx
	movl	8(%rax,%rbx), %edx
	testq	%rdx, %rdx
	je	.LBB66_48
# BB#49:                                # %if.then.281
                                        #   in Loop: Header=BB66_39 Depth=1
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	movslq	%r11d, %r11
	movq	496(%r12), %rdi
	addq	%r11, %rdi
	movq	(%rax,%rbx), %rsi
	movq	%r11, %rbp
	callq	memcpy
	movq	%rbp, %r11
	movq	32(%r12), %rax
	movq	(%rax), %rax
	addl	8(%rax,%rbx), %r11d
	jmp	.LBB66_50
.LBB66_48:                              #   in Loop: Header=BB66_39 Depth=1
	movq	%rbp, 56(%rsp)          # 8-byte Spill
.LBB66_50:                              # %if.end.307
                                        #   in Loop: Header=BB66_39 Depth=1
	movl	52(%rsp), %ebp          # 4-byte Reload
	subl	608(%r12), %ebp
	je	.LBB66_70
# BB#51:                                # %if.then.310
                                        #   in Loop: Header=BB66_39 Depth=1
	movq	24(%r12), %rcx
	movl	104(%rcx), %r8d
	testq	%r8, %r8
	je	.LBB66_52
# BB#53:                                # %if.else.322
                                        #   in Loop: Header=BB66_39 Depth=1
	testb	$4, 521(%r12)
	jne	.LBB66_54
# BB#55:                                # %if.else.330
                                        #   in Loop: Header=BB66_39 Depth=1
	movq	8(%r12), %rax
	jmp	.LBB66_56
.LBB66_52:                              # %if.then.316
                                        #   in Loop: Header=BB66_39 Depth=1
	movslq	%r11d, %rax
	incl	%r11d
	movq	496(%r12), %rcx
	movb	$13, (%rcx,%rax)
	movl	$0, 608(%r12)
	movl	12(%rsp), %ebp          # 4-byte Reload
	jmp	.LBB66_67
.LBB66_54:                              # %if.then.326
                                        #   in Loop: Header=BB66_39 Depth=1
	movq	8(%r12), %rax
	movl	20(%rax), %ebp
	addl	52(%rsp), %ebp          # 4-byte Folded Reload
.LBB66_56:                              # %if.end.333
                                        #   in Loop: Header=BB66_39 Depth=1
	movl	16(%rax), %edi
	cmpl	$2, %edi
	jl	.LBB66_62
# BB#57:                                # %if.then.338
                                        #   in Loop: Header=BB66_39 Depth=1
	movl	%ebp, %eax
	sarl	$31, %eax
	testl	%ebp, %ebp
	movl	%ebp, %esi
	cmovsl	%edi, %esi
	andl	%edi, %eax
	subl	%eax, %ebp
	movl	$0, %ebx
	je	.LBB66_59
# BB#58:                                # %if.then.348
                                        #   in Loop: Header=BB66_39 Depth=1
	movl	%ebp, %eax
	cltd
	idivl	%edi
	movl	%eax, %ebx
.LBB66_59:                              # %if.end.352
                                        #   in Loop: Header=BB66_39 Depth=1
	testl	%esi, %esi
	je	.LBB66_60
# BB#61:                                # %if.then.354
                                        #   in Loop: Header=BB66_39 Depth=1
	movl	%esi, %eax
	cltd
	idivl	%edi
	movl	%edx, %ebp
	jmp	.LBB66_65
.LBB66_62:                              # %if.else.358
                                        #   in Loop: Header=BB66_39 Depth=1
	cmpl	$-2, %edi
	jg	.LBB66_63
# BB#64:                                # %if.then.363
                                        #   in Loop: Header=BB66_39 Depth=1
	negl	%ebp
	imull	%ebp, %edi
	xorl	%ebp, %ebp
	movl	%edi, %ebx
	jmp	.LBB66_65
.LBB66_63:                              #   in Loop: Header=BB66_39 Depth=1
	movl	%ebp, %ebx
	jmp	.LBB66_65
.LBB66_60:                              #   in Loop: Header=BB66_39 Depth=1
	xorl	%ebp, %ebp
.LBB66_65:                              # %if.end.369
                                        #   in Loop: Header=BB66_39 Depth=1
	testl	%ebx, %ebx
	je	.LBB66_67
# BB#66:                                # %if.then.371
                                        #   in Loop: Header=BB66_39 Depth=1
	movslq	%r11d, %rdi
	addq	496(%r12), %rdi
	movq	96(%rcx), %rsi
	movq	%r8, %rdx
	movl	%ebx, 40(%rsp)          # 4-byte Spill
	movq	%r11, %rbx
	callq	memcpy
	movq	%rbx, %r11
	movq	24(%r12), %rax
	movq	496(%r12), %rcx
	movl	104(%rax), %eax
	leal	(%rax,%r11), %edx
	movslq	%edx, %rdx
	movl	40(%rsp), %ebx          # 4-byte Reload
	movb	%bl, (%rcx,%rdx)
	leal	2(%rax,%r11), %r11d
	movq	496(%r12), %rax
	movb	%bh, 1(%rdx,%rax)  # NOREX
.LBB66_67:                              # %if.end.401
                                        #   in Loop: Header=BB66_39 Depth=1
	testl	%ebp, %ebp
	je	.LBB66_70
# BB#68:                                # %land.lhs.true.403
                                        #   in Loop: Header=BB66_39 Depth=1
	movq	24(%r12), %rax
	movl	120(%rax), %ecx
	testl	%ecx, %ecx
	je	.LBB66_70
	.align	16, 0x90
.LBB66_69:                              # %while.body.413
                                        #   Parent Loop BB66_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%r11d, %rbx
	movq	496(%r12), %rdi
	addq	%rbx, %rdi
	movq	112(%rax), %rsi
	movl	%ecx, %edx
	callq	memcpy
	movq	24(%r12), %rax
	movl	120(%rax), %ecx
	leal	(%rbx,%rcx), %r11d
	decl	%ebp
	jne	.LBB66_69
.LBB66_70:                              # %if.end.431
                                        #   in Loop: Header=BB66_39 Depth=1
	movl	20(%rsp), %eax          # 4-byte Reload
	movl	%eax, 608(%r12)
	movq	32(%r12), %rax
	movq	16(%rax), %rax
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, %rbx
	shlq	$4, %rbx
	movl	8(%rax,%rbx), %edx
	testq	%rdx, %rdx
	je	.LBB66_72
# BB#71:                                # %if.then.442
                                        #   in Loop: Header=BB66_39 Depth=1
	movslq	%r11d, %r11
	movq	496(%r12), %rdi
	addq	%r11, %rdi
	movq	(%rax,%rbx), %rsi
	movq	%r11, %rbp
	callq	memcpy
	movq	%rbp, %r11
	movq	32(%r12), %rax
	movq	16(%rax), %rax
	addl	8(%rax,%rbx), %r11d
.LBB66_72:                              # %if.end.467
                                        #   in Loop: Header=BB66_39 Depth=1
	movq	%r11, 40(%rsp)          # 8-byte Spill
	movq	8(%r12), %rcx
	movq	496(%r12), %rsi
	movl	16(%rsp), %eax          # 4-byte Reload
	cltd
	idivl	36(%rcx)
	incl	%eax
	movslq	%r11d, %rcx
	movb	%al, (%rsi,%rcx)
	leal	2(%rcx), %edx
	movq	496(%r12), %rsi
	movb	%ah, 1(%rcx,%rsi)  # NOREX
	movslq	%edx, %rbp
	addq	496(%r12), %rbp
	movq	8(%r12), %rcx
	movl	32(%rcx), %ebx
	addl	$7, %ebx
	sarl	$3, %ebx
	imull	%eax, %ebx
	movslq	%ebx, %rdx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	memset
	movl	52(%rsp), %eax          # 4-byte Reload
	cmpl	%eax, %r13d
	movq	40(%rsp), %rcx          # 8-byte Reload
	leal	2(%rbx,%rcx), %r8d
	movl	%eax, %r9d
	jl	.LBB66_83
	.align	16, 0x90
.LBB66_73:                              # %for.body.500
                                        #   Parent Loop BB66_39 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB66_76 Depth 3
	addq	88(%rsp), %rbp          # 8-byte Folded Reload
	movl	96(%rsp), %eax          # 4-byte Reload
	cmpl	100(%rsp), %eax         # 4-byte Folded Reload
	jge	.LBB66_74
# BB#75:                                # %for.body.510.lr.ph
                                        #   in Loop: Header=BB66_73 Depth=2
	movl	%r9d, %eax
	sarl	$3, %eax
	movslq	%eax, %r11
	movb	%r9b, %cl
	andb	$7, %cl
	movl	$128, %edi
	shrl	%cl, %edi
	movl	68(%rsp), %ecx          # 4-byte Reload
	movl	72(%rsp), %eax          # 4-byte Reload
	movb	%al, %bl
	movl	76(%rsp), %eax          # 4-byte Reload
	.align	16, 0x90
.LBB66_76:                              # %for.body.510
                                        #   Parent Loop BB66_39 Depth=1
                                        #     Parent Loop BB66_73 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testl	%eax, %eax
	js	.LBB66_79
# BB#77:                                # %if.then.513
                                        #   in Loop: Header=BB66_76 Depth=3
	movl	584(%r12), %edx
	andl	%eax, %edx
	movslq	%edx, %rdx
	movq	224(%r12), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movq	(%rdx,%r15,8), %rdx
	movzbl	(%rdx,%r11), %edx
	testl	%edi, %edx
	je	.LBB66_79
# BB#78:                                # %if.then.529
                                        #   in Loop: Header=BB66_76 Depth=3
	orb	%bl, (%rbp)
.LBB66_79:                              # %if.end.534
                                        #   in Loop: Header=BB66_76 Depth=3
	shrb	%bl
	leaq	1(%rbp), %rdx
	testb	%bl, %bl
	cmoveq	%rdx, %rbp
	movb	$-128, %r10b
	je	.LBB66_81
# BB#80:                                # %if.end.534
                                        #   in Loop: Header=BB66_76 Depth=3
	movb	%bl, %r10b
.LBB66_81:                              # %if.end.534
                                        #   in Loop: Header=BB66_76 Depth=3
	movq	8(%r12), %rdx
	addl	40(%rdx), %eax
	decl	%ecx
	movb	%r10b, %bl
	jne	.LBB66_76
	jmp	.LBB66_82
	.align	16, 0x90
.LBB66_74:                              # %for.body.500.for.end.546_crit_edge
                                        #   in Loop: Header=BB66_73 Depth=2
	movq	8(%r12), %rdx
.LBB66_82:                              # %for.end.546
                                        #   in Loop: Header=BB66_73 Depth=2
	movl	32(%rdx), %eax
	addl	80(%rsp), %eax          # 4-byte Folded Reload
	sarl	$3, %eax
	cltq
	addq	%rax, %rbp
	addl	36(%rdx), %r9d
	cmpl	%r13d, %r9d
	jle	.LBB66_73
.LBB66_83:                              # %for.end.558
                                        #   in Loop: Header=BB66_39 Depth=1
	movq	496(%r12), %rdi
	movslq	%r8d, %rdx
	movl	$1, %esi
	movq	24(%rsp), %rcx          # 8-byte Reload
	callq	fwrite
	movl	572(%r12), %edx
	xorl	%r11d, %r11d
	movl	76(%rsp), %edi          # 4-byte Reload
	movl	36(%rsp), %ebx          # 4-byte Reload
	movq	56(%rsp), %rbp          # 8-byte Reload
	.align	16, 0x90
.LBB66_84:                              # %for.inc.562
                                        #   in Loop: Header=BB66_39 Depth=1
	incq	%rbp
	movslq	%edx, %rax
	cmpq	%rax, %rbp
	jl	.LBB66_39
# BB#85:                                # %for.cond.228.if.end.565.loopexit_crit_edge
	movl	612(%r12), %r10d
.LBB66_86:                              # %if.end.565.loopexit
	movq	8(%r12), %r9
	movl	48(%r9), %r8d
.LBB66_87:                              # %if.end.565
	cmpl	%r8d, %r10d
	jge	.LBB66_90
# BB#88:                                # %if.then.571
	movslq	596(%r12), %rdx
	leal	1(%rdx), %eax
	movl	%eax, 596(%r12)
	movq	16(%r12), %rcx
	movq	96(%rcx), %rsi
	addl	(%rsi,%rdx,4), %r10d
	movl	%r10d, 612(%r12)
	cmpl	%r10d, 48(%r9)
	jle	.LBB66_95
# BB#89:                                # %if.else.588
	cmpl	%eax, 104(%rcx)
	jbe	.LBB66_95
	jmp	.LBB66_96
.LBB66_90:                              # %if.else.599
	movslq	596(%r12), %rcx
	leal	1(%rcx), %eax
	cmpl	52(%r9), %r10d
	movl	%eax, 596(%r12)
	movq	16(%r12), %rdx
	jge	.LBB66_91
# BB#92:                                # %if.else.624
	movq	64(%rdx), %rsi
	addl	(%rsi,%rcx,4), %r10d
	movl	%r10d, 612(%r12)
	cmpl	%eax, 72(%rdx)
	ja	.LBB66_94
# BB#93:                                # %if.then.640
	movl	$0, 596(%r12)
.LBB66_94:                              # %if.end.642
	cmpl	52(%r9), %r10d
	jl	.LBB66_96
	jmp	.LBB66_95
.LBB66_91:                              # %if.then.605
	movq	144(%rdx), %rsi
	addl	(%rsi,%rcx,4), %r10d
	movl	%r10d, 612(%r12)
	cmpl	%eax, 152(%rdx)
	ja	.LBB66_96
.LBB66_95:                              # %if.then.648
	movl	$0, 596(%r12)
.LBB66_96:                              # %if.end.652
	xorl	%eax, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end66:
	.size	upd_wrtescp, .Lfunc_end66-upd_wrtescp
	.cfi_endproc

	.align	16, 0x90
	.type	upd_wrtescp2,@function
upd_wrtescp2:                           # @upd_wrtescp2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp229:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp230:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp231:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp232:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp233:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp234:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp235:
	.cfi_def_cfa_offset 144
.Ltmp236:
	.cfi_offset %rbx, -56
.Ltmp237:
	.cfi_offset %r12, -48
.Ltmp238:
	.cfi_offset %r13, -40
.Ltmp239:
	.cfi_offset %r14, -32
.Ltmp240:
	.cfi_offset %r15, -24
.Ltmp241:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movl	612(%r14), %ebp
	movq	8(%r14), %rbx
	movl	48(%rbx), %eax
	cmpl	%eax, %ebp
	jge	.LBB67_2
# BB#1:                                 # %if.then
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movq	%rsi, 80(%rsp)          # 8-byte Spill
	movslq	596(%r14), %rax
	movq	16(%r14), %rcx
	movq	128(%rcx), %rcx
	movl	(%rcx,%rax,4), %edx
	xorl	%edi, %edi
	jmp	.LBB67_5
.LBB67_2:                               # %if.else
	xorl	%edi, %edi
	cmpl	52(%rbx), %ebp
	movl	32(%rbx), %edx
	jge	.LBB67_4
# BB#3:
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movq	%rsi, 80(%rsp)          # 8-byte Spill
	jmp	.LBB67_5
.LBB67_4:                               # %if.then.7
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movq	%rsi, 80(%rsp)          # 8-byte Spill
	movslq	596(%r14), %rax
	movq	16(%r14), %rcx
	movq	176(%rcx), %rcx
	movl	%edx, %edi
	subl	(%rcx,%rax,4), %edi
.LBB67_5:                               # %if.end.19
	movl	%edi, 64(%rsp)          # 4-byte Spill
	movl	%edx, 40(%rsp)          # 4-byte Spill
	movl	40(%rbx), %r11d
	movl	56(%rbx), %eax
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movl	%r11d, %ecx
	imull	%edi, %ecx
	addl	%ebp, %ecx
	subl	%eax, %ecx
	movl	%r11d, %esi
	imull	%edx, %esi
	addl	%ebp, %esi
	movl	%ebp, 72(%rsp)          # 4-byte Spill
	subl	%eax, %esi
	movl	%esi, 68(%rsp)          # 4-byte Spill
	movl	576(%r14), %ebp
	movl	$-1, %r13d
	cmpl	%esi, %ecx
	jge	.LBB67_6
# BB#7:                                 # %for.body.lr.ph
	movslq	%ebp, %r9
	decq	%r9
	movl	$-1, %eax
	movl	%ecx, %r12d
	movl	%ecx, 44(%rsp)          # 4-byte Spill
	movl	%ebp, %edi
	.align	16, 0x90
.LBB67_8:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB67_13 Depth 2
                                        #       Child Loop BB67_15 Depth 3
                                        #       Child Loop BB67_21 Depth 3
	testl	%r12d, %r12d
	js	.LBB67_9
# BB#10:                                # %if.end.37
                                        #   in Loop: Header=BB67_8 Depth=1
	movslq	572(%r14), %r10
	testq	%r10, %r10
	jle	.LBB67_11
# BB#12:                                # %for.body.42.lr.ph
                                        #   in Loop: Header=BB67_8 Depth=1
	movl	584(%r14), %ecx
	andl	%r12d, %ecx
	movslq	%ecx, %rcx
	movq	224(%r14), %rdx
	movq	(%rdx,%rcx,8), %rdx
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB67_13:                              # %for.body.42
                                        #   Parent Loop BB67_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB67_15 Depth 3
                                        #       Child Loop BB67_21 Depth 3
	leaq	(%rcx,%rcx,2), %rsi
	movq	(%rdx,%rsi,8), %r8
	xorl	%ebx, %ebx
	testl	%edi, %edi
	jle	.LBB67_18
# BB#14:                                # %land.rhs.lr.ph
                                        #   in Loop: Header=BB67_13 Depth=2
	movslq	%edi, %rsi
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB67_15:                              # %land.rhs
                                        #   Parent Loop BB67_8 Depth=1
                                        #     Parent Loop BB67_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpb	$0, (%r8,%rbx)
	jne	.LBB67_17
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB67_15 Depth=3
	incq	%rbx
	cmpq	%rsi, %rbx
	jl	.LBB67_15
	jmp	.LBB67_18
	.align	16, 0x90
.LBB67_17:                              # %land.rhs.for.end_crit_edge
                                        #   in Loop: Header=BB67_13 Depth=2
	movl	%ebx, %edi
.LBB67_18:                              # %for.end
                                        #   in Loop: Header=BB67_13 Depth=2
	cmpl	%ebp, %ebx
	jge	.LBB67_19
# BB#20:                                # %for.cond.58.preheader
                                        #   in Loop: Header=BB67_13 Depth=2
	movslq	%eax, %rbx
	movq	%r9, %r15
	movl	%ebp, %r13d
	.align	16, 0x90
.LBB67_21:                              # %for.cond.58
                                        #   Parent Loop BB67_8 Depth=1
                                        #     Parent Loop BB67_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	%rbx, %r15
	jle	.LBB67_22
# BB#23:                                # %land.rhs.60
                                        #   in Loop: Header=BB67_21 Depth=3
	decl	%r13d
	cmpb	$0, (%r8,%r15)
	leaq	-1(%r15), %r15
	je	.LBB67_21
	jmp	.LBB67_24
	.align	16, 0x90
.LBB67_19:                              #   in Loop: Header=BB67_13 Depth=2
	movl	%eax, %r13d
	jmp	.LBB67_24
	.align	16, 0x90
.LBB67_22:                              #   in Loop: Header=BB67_13 Depth=2
	movl	%eax, %r13d
.LBB67_24:                              # %for.inc.73
                                        #   in Loop: Header=BB67_13 Depth=2
	incq	%rcx
	cmpq	%r10, %rcx
	movl	%r13d, %eax
	jl	.LBB67_13
	jmp	.LBB67_25
	.align	16, 0x90
.LBB67_9:                               #   in Loop: Header=BB67_8 Depth=1
	movl	%eax, %r13d
	jmp	.LBB67_25
	.align	16, 0x90
.LBB67_11:                              #   in Loop: Header=BB67_8 Depth=1
	movl	%eax, %r13d
.LBB67_25:                              # %for.inc.76
                                        #   in Loop: Header=BB67_8 Depth=1
	leal	(%r12,%r11), %r12d
	cmpl	68(%rsp), %r12d         # 4-byte Folded Reload
	movl	%r13d, %eax
	jl	.LBB67_8
	jmp	.LBB67_26
.LBB67_6:
	movl	%ecx, 44(%rsp)          # 4-byte Spill
	movl	%ebp, %edi
.LBB67_26:                              # %for.end.80
	cmpl	%r13d, %edi
	jle	.LBB67_28
# BB#27:
	movl	72(%rsp), %edi          # 4-byte Reload
	movq	56(%rsp), %rbp          # 8-byte Reload
	movl	48(%rsp), %eax          # 4-byte Reload
	jmp	.LBB67_104
.LBB67_28:                              # %if.then.82
	movq	24(%r14), %rcx
	xorl	%edx, %edx
	cmpl	$0, 104(%rcx)
	movl	$0, %r9d
	movl	72(%rsp), %eax          # 4-byte Reload
	je	.LBB67_30
# BB#29:                                # %select.mid
	movl	%edi, %r9d
.LBB67_30:                              # %select.end
	movl	%r9d, 36(%rsp)          # 4-byte Spill
	movl	%eax, %ebx
	subl	616(%r14), %ebx
	movl	44(%rsp), %r11d         # 4-byte Reload
	movl	68(%rsp), %ebp          # 4-byte Reload
	jne	.LBB67_32
# BB#31:
	movl	%eax, %edi
	jmp	.LBB67_45
.LBB67_32:                              # %if.then.89
	testb	$8, 521(%r14)
	jne	.LBB67_33
# BB#34:                                # %if.else.97
	movq	56(%rsp), %rdx          # 8-byte Reload
	jmp	.LBB67_35
.LBB67_33:                              # %if.then.92
	movq	56(%rsp), %rdx          # 8-byte Reload
	addl	28(%rdx), %eax
	movl	%eax, %ebx
.LBB67_35:                              # %if.end.101
	movl	%r11d, %r15d
	movl	24(%rdx), %esi
	cmpl	$2, %esi
	jl	.LBB67_37
# BB#36:                                # %if.then.105
	movl	%ebx, %eax
	cltd
	idivl	%esi
	movl	%eax, %edx
	imull	%esi, %edx
	subl	%edx, %ebx
	movl	%ebx, %ebp
	movl	%eax, %ebx
	jmp	.LBB67_39
.LBB67_37:                              # %if.else.112
	xorl	%ebp, %ebp
	cmpl	$-2, %esi
	jg	.LBB67_39
# BB#38:                                # %if.then.116
	negl	%ebx
	imull	%esi, %ebx
.LBB67_39:                              # %if.end.123
	xorl	%edx, %edx
	movl	%r9d, %r12d
	testl	%ebx, %ebx
	je	.LBB67_41
# BB#40:                                # %if.then.125
	movq	496(%r14), %rdi
	movq	144(%rcx), %rsi
	movl	152(%rcx), %edx
	callq	memcpy
	movq	24(%r14), %rax
	movq	496(%r14), %rcx
	movslq	152(%rax), %rax
	movb	%bl, (%rcx,%rax)
	leal	2(%rax), %edx
	movq	496(%r14), %rcx
	movb	%bh, 1(%rax,%rcx)  # NOREX
	movq	24(%r14), %rcx
.LBB67_41:                              # %if.end.148
	movl	168(%rcx), %eax
	testl	%eax, %eax
	je	.LBB67_44
# BB#42:                                # %if.end.148
	testl	%ebp, %ebp
	je	.LBB67_44
	.align	16, 0x90
.LBB67_43:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	%edx, %rbx
	movq	496(%r14), %rdi
	addq	%rbx, %rdi
	movq	160(%rcx), %rsi
	movl	%eax, %edx
	callq	memcpy
	movq	24(%r14), %rcx
	movl	168(%rcx), %eax
	leal	(%rbx,%rax), %edx
	decl	%ebp
	jne	.LBB67_43
.LBB67_44:                              # %if.end.172
	movl	612(%r14), %edi
	movl	%edi, 616(%r14)
	movl	%r15d, %r11d
	movl	68(%rsp), %ebp          # 4-byte Reload
	movl	%r12d, %r9d
.LBB67_45:                              # %for.cond.176.preheader
	movl	572(%r14), %r8d
	testl	%r8d, %r8d
	jle	.LBB67_103
# BB#46:                                # %for.cond.181.preheader.lr.ph
	movq	%rdx, %r15
	leal	1(%r13), %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	subl	%r9d, %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leal	(,%rax,8), %edx
	movl	%edx, 28(%rsp)          # 4-byte Spill
	shrl	$5, %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movslq	%r9d, %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movslq	%r13d, %rbx
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	leaq	-1(%rax), %r10
	movq	%r10, 8(%rsp)           # 8-byte Spill
	xorl	%ecx, %ecx
	movl	$128, %r12d
	.align	16, 0x90
.LBB67_47:                              # %for.cond.181.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB67_48 Depth 2
                                        #       Child Loop BB67_52 Depth 3
                                        #     Child Loop BB67_78 Depth 2
                                        #     Child Loop BB67_86 Depth 2
                                        #       Child Loop BB67_88 Depth 3
                                        #     Child Loop BB67_90 Depth 2
                                        #       Child Loop BB67_92 Depth 3
                                        #     Child Loop BB67_85 Depth 2
                                        #     Child Loop BB67_96 Depth 2
                                        #       Child Loop BB67_98 Depth 3
	cmpl	%ebp, %r11d
	movl	%r11d, %eax
	jge	.LBB67_101
	.align	16, 0x90
.LBB67_48:                              # %for.body.184
                                        #   Parent Loop BB67_47 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB67_52 Depth 3
	testl	%eax, %eax
	js	.LBB67_55
# BB#49:                                # %if.end.188
                                        #   in Loop: Header=BB67_48 Depth=2
	cmpl	%r13d, %r9d
	jg	.LBB67_55
# BB#50:                                #   in Loop: Header=BB67_48 Depth=2
	movl	584(%r14), %edx
	andl	%eax, %edx
	movslq	%edx, %rdx
	movq	224(%r14), %rsi
	movq	(%rsi,%rdx,8), %rdx
	leaq	(%rcx,%rcx,2), %rdi
	movq	(%rdx,%rdi,8), %rdx
	movq	%r10, %rsi
	.align	16, 0x90
.LBB67_52:                              # %land.rhs.200
                                        #   Parent Loop BB67_47 Depth=1
                                        #     Parent Loop BB67_48 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpb	$0, 1(%rdx,%rsi)
	jne	.LBB67_53
# BB#51:                                # %for.cond.197
                                        #   in Loop: Header=BB67_52 Depth=3
	incq	%rsi
	cmpq	%rbx, %rsi
	jl	.LBB67_52
	.align	16, 0x90
.LBB67_55:                              # %for.inc.214
                                        #   in Loop: Header=BB67_48 Depth=2
	movq	8(%r14), %rdx
	addl	40(%rdx), %eax
	cmpl	%ebp, %eax
	jl	.LBB67_48
	jmp	.LBB67_101
	.align	16, 0x90
.LBB67_53:                              # %if.end.222
                                        #   in Loop: Header=BB67_47 Depth=1
	movq	32(%r14), %rax
	cmpl	$0, 8(%rax)
	je	.LBB67_54
# BB#56:                                # %land.lhs.true
                                        #   in Loop: Header=BB67_47 Depth=1
	cmpl	%ecx, 600(%r14)
	jne	.LBB67_57
.LBB67_54:                              #   in Loop: Header=BB67_47 Depth=1
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%r15, %r10
	jmp	.LBB67_60
.LBB67_57:                              # %if.then.230
                                        #   in Loop: Header=BB67_47 Depth=1
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movl	%ecx, 600(%r14)
	movq	(%rax), %rax
	movq	%rcx, %rbx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	shlq	$4, %rbx
	movl	8(%rax,%rbx), %edx
	testq	%rdx, %rdx
	je	.LBB67_58
# BB#59:                                # %if.then.240
                                        #   in Loop: Header=BB67_47 Depth=1
	movslq	%r15d, %r15
	movq	496(%r14), %rdi
	addq	%r15, %rdi
	movq	(%rax,%rbx), %rsi
	movl	%r9d, %ebp
	callq	memcpy
	movq	%r15, %r10
	movl	%ebp, %r9d
	movq	32(%r14), %rax
	movq	(%rax), %rax
	addl	8(%rax,%rbx), %r10d
	jmp	.LBB67_60
.LBB67_58:                              #   in Loop: Header=BB67_47 Depth=1
	movq	%r15, %r10
	.align	16, 0x90
.LBB67_60:                              # %if.end.266
                                        #   in Loop: Header=BB67_47 Depth=1
	movl	%r9d, %ebp
	subl	608(%r14), %ebp
	je	.LBB67_79
# BB#61:                                # %if.then.269
                                        #   in Loop: Header=BB67_47 Depth=1
	movq	24(%r14), %rcx
	movl	104(%rcx), %r8d
	testq	%r8, %r8
	je	.LBB67_62
# BB#63:                                # %if.else.281
                                        #   in Loop: Header=BB67_47 Depth=1
	testb	$4, 521(%r14)
	je	.LBB67_65
# BB#64:                                # %if.then.285
                                        #   in Loop: Header=BB67_47 Depth=1
	movq	8(%r14), %rax
	movl	20(%rax), %ebp
	addl	%r9d, %ebp
.LBB67_65:                              # %if.end.292
                                        #   in Loop: Header=BB67_47 Depth=1
	movq	8(%r14), %rax
	movl	16(%rax), %edi
	cmpl	$2, %edi
	jl	.LBB67_71
# BB#66:                                # %if.then.297
                                        #   in Loop: Header=BB67_47 Depth=1
	movl	%ebp, %eax
	sarl	$31, %eax
	testl	%ebp, %ebp
	movl	%ebp, %esi
	cmovsl	%edi, %esi
	andl	%edi, %eax
	subl	%eax, %ebp
	movl	$0, %ebx
	je	.LBB67_68
# BB#67:                                # %if.then.307
                                        #   in Loop: Header=BB67_47 Depth=1
	movl	%ebp, %eax
	cltd
	idivl	%edi
	movl	%eax, %ebx
.LBB67_68:                              # %if.end.311
                                        #   in Loop: Header=BB67_47 Depth=1
	testl	%esi, %esi
	je	.LBB67_69
# BB#70:                                # %if.then.313
                                        #   in Loop: Header=BB67_47 Depth=1
	movl	%esi, %eax
	cltd
	idivl	%edi
	movl	%edx, %ebp
	jmp	.LBB67_74
.LBB67_62:                              # %if.end.360.thread
                                        #   in Loop: Header=BB67_47 Depth=1
	movslq	%r10d, %rax
	incl	%r10d
	movq	496(%r14), %rcx
	movb	$13, (%rcx,%rax)
	movl	$0, 608(%r14)
	jmp	.LBB67_79
.LBB67_71:                              # %if.else.317
                                        #   in Loop: Header=BB67_47 Depth=1
	cmpl	$-2, %edi
	jg	.LBB67_72
# BB#73:                                # %if.then.322
                                        #   in Loop: Header=BB67_47 Depth=1
	negl	%ebp
	imull	%ebp, %edi
	xorl	%ebp, %ebp
	movl	%edi, %ebx
	jmp	.LBB67_74
.LBB67_72:                              #   in Loop: Header=BB67_47 Depth=1
	movl	%ebp, %ebx
	jmp	.LBB67_74
.LBB67_69:                              #   in Loop: Header=BB67_47 Depth=1
	xorl	%ebp, %ebp
.LBB67_74:                              # %if.end.328
                                        #   in Loop: Header=BB67_47 Depth=1
	testl	%ebx, %ebx
	je	.LBB67_76
# BB#75:                                # %if.then.330
                                        #   in Loop: Header=BB67_47 Depth=1
	movslq	%r10d, %rdi
	addq	496(%r14), %rdi
	movq	96(%rcx), %rsi
	movq	%r8, %rdx
	movl	%ebx, %r15d
	movq	%r10, %rbx
	callq	memcpy
	movq	%rbx, %r10
	movq	24(%r14), %rax
	movq	496(%r14), %rcx
	movl	104(%rax), %eax
	leal	(%rax,%r10), %edx
	movslq	%edx, %rdx
	movl	%r15d, %ebx
	movb	%bl, (%rcx,%rdx)
	leal	2(%rax,%r10), %r10d
	movq	496(%r14), %rax
	movb	%bh, 1(%rdx,%rax)  # NOREX
.LBB67_76:                              # %if.end.360
                                        #   in Loop: Header=BB67_47 Depth=1
	testl	%ebp, %ebp
	je	.LBB67_79
# BB#77:                                # %land.lhs.true.362
                                        #   in Loop: Header=BB67_47 Depth=1
	movq	24(%r14), %rax
	movl	120(%rax), %ecx
	testl	%ecx, %ecx
	je	.LBB67_79
	.align	16, 0x90
.LBB67_78:                              # %while.body.372
                                        #   Parent Loop BB67_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%r10d, %rbx
	movq	496(%r14), %rdi
	addq	%rbx, %rdi
	movq	112(%rax), %rsi
	movl	%ecx, %edx
	callq	memcpy
	movq	24(%r14), %rax
	movl	120(%rax), %ecx
	leal	(%rbx,%rcx), %r10d
	decl	%ebp
	jne	.LBB67_78
	.align	16, 0x90
.LBB67_79:                              # %if.end.390
                                        #   in Loop: Header=BB67_47 Depth=1
	movl	32(%rsp), %eax          # 4-byte Reload
	movl	%eax, 608(%r14)
	movq	32(%r14), %rax
	movq	16(%rax), %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, %rbx
	shlq	$4, %rbx
	movl	8(%rax,%rbx), %edx
	testq	%rdx, %rdx
	je	.LBB67_81
# BB#80:                                # %if.then.401
                                        #   in Loop: Header=BB67_47 Depth=1
	movslq	%r10d, %r10
	movq	496(%r14), %rdi
	addq	%r10, %rdi
	movq	(%rax,%rbx), %rsi
	movq	%r10, %rbp
	callq	memcpy
	movq	%rbp, %r10
	movq	32(%r14), %rax
	movq	16(%rax), %rax
	addl	8(%rax,%rbx), %r10d
.LBB67_81:                              # %if.end.426
                                        #   in Loop: Header=BB67_47 Depth=1
	movl	64(%rsp), %ecx          # 4-byte Reload
	leal	2(%r10), %eax
	xorl	%ebp, %ebp
	testl	%ecx, %ecx
	movslq	%r10d, %rcx
	movq	496(%r14), %rdx
	movl	28(%rsp), %esi          # 4-byte Reload
	movb	%sil, (%rdx,%rcx)
	movq	496(%r14), %rdx
	movl	24(%rsp), %esi          # 4-byte Reload
	movb	%sil, 1(%rcx,%rdx)
	jle	.LBB67_82
	.align	16, 0x90
.LBB67_86:                              # %for.body.445
                                        #   Parent Loop BB67_47 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB67_88 Depth 3
	movq	72(%rsp), %rcx          # 8-byte Reload
	testl	%ecx, %ecx
	movl	$0, %ecx
	jle	.LBB67_89
# BB#87:                                # %while.body.66.i.preheader
                                        #   in Loop: Header=BB67_86 Depth=2
	movslq	%eax, %rdx
	addq	496(%r14), %rdx
	xorl	%ecx, %ecx
	movq	72(%rsp), %rsi          # 8-byte Reload
	.align	16, 0x90
.LBB67_88:                              # %while.body.66.i
                                        #   Parent Loop BB67_47 Depth=1
                                        #     Parent Loop BB67_86 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$128, %esi
	movl	%esi, %edi
	cmovgl	%r12d, %edi
	movl	$257, %ebx              # imm = 0x101
	subl	%edi, %ebx
	subl	%edi, %esi
	movb	%bl, (%rdx,%rcx)
	movb	$0, 1(%rdx,%rcx)
	leaq	2(%rcx), %rcx
	jg	.LBB67_88
.LBB67_89:                              # %upd_rle.exit
                                        #   in Loop: Header=BB67_86 Depth=2
	addl	%eax, %ecx
	movq	496(%r14), %rdi
	movslq	%ecx, %rdx
	movl	$1, %esi
	movq	80(%rsp), %rcx          # 8-byte Reload
	callq	fwrite
	incl	%ebp
	xorl	%eax, %eax
	cmpl	64(%rsp), %ebp          # 4-byte Folded Reload
	jne	.LBB67_86
.LBB67_82:                              # %for.cond.457.preheader
                                        #   in Loop: Header=BB67_47 Depth=1
	movl	44(%rsp), %r15d         # 4-byte Reload
	testl	%r15d, %r15d
	movl	%r15d, %ebp
	movq	72(%rsp), %r15          # 8-byte Reload
	jns	.LBB67_83
	.align	16, 0x90
.LBB67_90:                              # %for.body.460
                                        #   Parent Loop BB67_47 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB67_92 Depth 3
	testl	%r15d, %r15d
	movl	$0, %ecx
	jle	.LBB67_93
# BB#91:                                # %while.body.66.i.302.preheader
                                        #   in Loop: Header=BB67_90 Depth=2
	movslq	%eax, %rdx
	addq	496(%r14), %rdx
	xorl	%ecx, %ecx
	movl	%r15d, %esi
	.align	16, 0x90
.LBB67_92:                              # %while.body.66.i.302
                                        #   Parent Loop BB67_47 Depth=1
                                        #     Parent Loop BB67_90 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$128, %esi
	movl	%esi, %edi
	cmovgl	%r12d, %edi
	movl	$257, %ebx              # imm = 0x101
	subl	%edi, %ebx
	subl	%edi, %esi
	movb	%bl, (%rdx,%rcx)
	movb	$0, 1(%rdx,%rcx)
	leaq	2(%rcx), %rcx
	jg	.LBB67_92
.LBB67_93:                              # %upd_rle.exit304
                                        #   in Loop: Header=BB67_90 Depth=2
	addl	%eax, %ecx
	movq	496(%r14), %rdi
	movslq	%ecx, %rdx
	movl	$1, %esi
	movq	80(%rsp), %rcx          # 8-byte Reload
	callq	fwrite
	movq	8(%r14), %rax
	addl	40(%rax), %ebp
	movl	$0, %eax
	js	.LBB67_90
.LBB67_83:                              # %for.cond.474.preheader
                                        #   in Loop: Header=BB67_47 Depth=1
	cmpl	68(%rsp), %ebp          # 4-byte Folded Reload
	jge	.LBB67_94
# BB#84:                                #   in Loop: Header=BB67_47 Depth=1
	movq	(%rsp), %r15            # 8-byte Reload
	.align	16, 0x90
.LBB67_85:                              # %for.body.477
                                        #   Parent Loop BB67_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%eax, %rbx
	movq	496(%r14), %rdi
	addq	%rbx, %rdi
	movl	584(%r14), %eax
	andl	%ebp, %eax
	cltq
	movq	224(%r14), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	(%rax,%rcx,8), %rsi
	addq	%r15, %rsi
	movq	72(%rsp), %rdx          # 8-byte Reload
	callq	upd_rle
	addl	%eax, %ebx
	movq	496(%r14), %rdi
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	80(%rsp), %rcx          # 8-byte Reload
	callq	fwrite
	movq	8(%r14), %rcx
	addl	40(%rcx), %ebp
	xorl	%eax, %eax
	cmpl	68(%rsp), %ebp          # 4-byte Folded Reload
	jl	.LBB67_85
	jmp	.LBB67_95
	.align	16, 0x90
.LBB67_94:                              # %for.cond.474.preheader.for.cond.501.preheader_crit_edge
                                        #   in Loop: Header=BB67_47 Depth=1
	movq	8(%r14), %rcx
.LBB67_95:                              # %for.cond.501.preheader
                                        #   in Loop: Header=BB67_47 Depth=1
	movl	40(%rsp), %edx          # 4-byte Reload
	cmpl	32(%rcx), %edx
	movl	%edx, %ebp
	movq	72(%rsp), %r15          # 8-byte Reload
	jge	.LBB67_100
	.align	16, 0x90
.LBB67_96:                              # %for.body.506
                                        #   Parent Loop BB67_47 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB67_98 Depth 3
	testl	%r15d, %r15d
	movl	$0, %ecx
	jle	.LBB67_99
# BB#97:                                # %while.body.66.i.286.preheader
                                        #   in Loop: Header=BB67_96 Depth=2
	movslq	%eax, %rdx
	addq	496(%r14), %rdx
	xorl	%ecx, %ecx
	movl	%r15d, %esi
	.align	16, 0x90
.LBB67_98:                              # %while.body.66.i.286
                                        #   Parent Loop BB67_47 Depth=1
                                        #     Parent Loop BB67_96 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$128, %esi
	movl	%esi, %edi
	cmovgl	%r12d, %edi
	movl	$257, %ebx              # imm = 0x101
	subl	%edi, %ebx
	subl	%edi, %esi
	movb	%bl, (%rdx,%rcx)
	movb	$0, 1(%rdx,%rcx)
	leaq	2(%rcx), %rcx
	jg	.LBB67_98
.LBB67_99:                              # %upd_rle.exit288
                                        #   in Loop: Header=BB67_96 Depth=2
	addl	%eax, %ecx
	movq	496(%r14), %rdi
	movslq	%ecx, %rdx
	movl	$1, %esi
	movq	80(%rsp), %rcx          # 8-byte Reload
	callq	fwrite
	incl	%ebp
	movq	8(%r14), %rax
	cmpl	32(%rax), %ebp
	movl	$0, %eax
	jl	.LBB67_96
.LBB67_100:                             # %for.inc.518.loopexit
                                        #   in Loop: Header=BB67_47 Depth=1
	movl	572(%r14), %r8d
	movl	%eax, %r15d
	movl	44(%rsp), %r11d         # 4-byte Reload
	movl	68(%rsp), %ebp          # 4-byte Reload
	movl	36(%rsp), %r9d          # 4-byte Reload
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	8(%rsp), %r10           # 8-byte Reload
	movq	48(%rsp), %rcx          # 8-byte Reload
.LBB67_101:                             # %for.inc.518
                                        #   in Loop: Header=BB67_47 Depth=1
	incq	%rcx
	movslq	%r8d, %rax
	cmpq	%rax, %rcx
	jl	.LBB67_47
# BB#102:                               # %for.cond.176.if.end.521.loopexit_crit_edge
	movl	612(%r14), %edi
.LBB67_103:                             # %if.end.521.loopexit
	movq	8(%r14), %rbp
	movl	48(%rbp), %eax
.LBB67_104:                             # %if.end.521
	cmpl	%eax, %edi
	jge	.LBB67_107
# BB#105:                               # %if.then.527
	movslq	596(%r14), %rdx
	leal	1(%rdx), %eax
	movl	%eax, 596(%r14)
	movq	16(%r14), %rcx
	movq	96(%rcx), %rsi
	addl	(%rsi,%rdx,4), %edi
	movl	%edi, 612(%r14)
	cmpl	%edi, 48(%rbp)
	jle	.LBB67_112
# BB#106:                               # %if.else.544
	cmpl	%eax, 104(%rcx)
	jbe	.LBB67_112
	jmp	.LBB67_113
.LBB67_107:                             # %if.else.555
	movslq	596(%r14), %rcx
	leal	1(%rcx), %eax
	cmpl	52(%rbp), %edi
	movl	%eax, 596(%r14)
	movq	16(%r14), %rdx
	jge	.LBB67_108
# BB#109:                               # %if.else.580
	movq	64(%rdx), %rsi
	addl	(%rsi,%rcx,4), %edi
	movl	%edi, 612(%r14)
	cmpl	%eax, 72(%rdx)
	ja	.LBB67_111
# BB#110:                               # %if.then.596
	movl	$0, 596(%r14)
.LBB67_111:                             # %if.end.598
	cmpl	52(%rbp), %edi
	jl	.LBB67_113
	jmp	.LBB67_112
.LBB67_108:                             # %if.then.561
	movq	144(%rdx), %rsi
	addl	(%rsi,%rcx,4), %edi
	movl	%edi, 612(%r14)
	cmpl	%eax, 152(%rdx)
	ja	.LBB67_113
.LBB67_112:                             # %if.then.604
	movl	$0, 596(%r14)
.LBB67_113:                             # %if.end.608
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end67:
	.size	upd_wrtescp2, .Lfunc_end67-upd_wrtescp2
	.cfi_endproc

	.align	16, 0x90
	.type	upd_wrtescp2x,@function
upd_wrtescp2x:                          # @upd_wrtescp2x
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp242:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp243:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp244:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp245:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp246:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp247:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp248:
	.cfi_def_cfa_offset 128
.Ltmp249:
	.cfi_offset %rbx, -56
.Ltmp250:
	.cfi_offset %r12, -48
.Ltmp251:
	.cfi_offset %r13, -40
.Ltmp252:
	.cfi_offset %r14, -32
.Ltmp253:
	.cfi_offset %r15, -24
.Ltmp254:
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%r12, 40(%rsp)          # 8-byte Spill
	movl	612(%rdi), %r10d
	movq	8(%rdi), %r9
	movl	48(%r9), %eax
	movl	%eax, 64(%rsp)          # 4-byte Spill
	cmpl	%eax, %r10d
	jge	.LBB68_2
# BB#1:                                 # %if.then
	movslq	596(%rdi), %rdx
	movq	16(%rdi), %rsi
	leaq	(,%rdx,4), %rcx
	addq	112(%rsi), %rcx
	movq	128(%rsi), %rsi
	movl	(%rsi,%rdx,4), %eax
	xorl	%ebx, %ebx
	jmp	.LBB68_5
.LBB68_2:                               # %if.else
	cmpl	52(%r9), %r10d
	movslq	596(%rdi), %rdx
	movq	16(%rdi), %rsi
	movl	32(%r9), %eax
	jge	.LBB68_3
# BB#4:                                 # %if.else.28
	shlq	$2, %rdx
	addq	80(%rsi), %rdx
	xorl	%ebx, %ebx
	movq	%rdx, %rcx
	jmp	.LBB68_5
.LBB68_3:                               # %if.then.13
	leaq	(,%rdx,4), %rcx
	addq	160(%rsi), %rcx
	movq	176(%rsi), %rsi
	movl	%eax, %ebx
	subl	(%rsi,%rdx,4), %ebx
.LBB68_5:                               # %if.end.37
	movq	%rdi, %r14
	movl	%ebx, 12(%rsp)          # 4-byte Spill
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movl	(%rcx), %ecx
	movl	%ecx, (%rsp)            # 4-byte Spill
	movslq	%ecx, %r15
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movl	40(%r9), %r11d
	movl	56(%r9), %ecx
	movl	%r11d, %edx
	imull	%ebx, %edx
	addl	%r10d, %edx
	subl	%ecx, %edx
	movl	%r11d, %r8d
	imull	%eax, %r8d
	addl	%r10d, %r8d
	subl	%ecx, %r8d
	movl	%r8d, 60(%rsp)          # 4-byte Spill
	movl	548(%r14), %esi
	movl	$-1, %r13d
	cmpl	%r8d, %edx
	jge	.LBB68_6
# BB#7:                                 # %for.body.lr.ph
	movl	$-1, %r13d
	movl	%edx, 28(%rsp)          # 4-byte Spill
	movl	%edx, %ebp
	.align	16, 0x90
.LBB68_8:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB68_15 Depth 2
	testl	%ebp, %ebp
	js	.LBB68_16
# BB#9:                                 # %if.end.55
                                        #   in Loop: Header=BB68_8 Depth=1
	movslq	572(%r14), %rcx
	testq	%rcx, %rcx
	jle	.LBB68_16
# BB#10:                                # %for.body.60.lr.ph
                                        #   in Loop: Header=BB68_8 Depth=1
	movl	584(%r14), %edx
	andl	%ebp, %edx
	movslq	%edx, %rdx
	movq	224(%r14), %rbx
	movq	(%rbx,%rdx,8), %rbx
	testb	$1, %cl
	jne	.LBB68_12
# BB#11:                                #   in Loop: Header=BB68_8 Depth=1
	xorl	%edx, %edx
	jmp	.LBB68_13
.LBB68_12:                              # %for.body.60.prol
                                        #   in Loop: Header=BB68_8 Depth=1
	movq	8(%rbx), %rdx
	movq	16(%rbx), %rax
	movl	(%rdx,%r15,4), %edx
	cmpl	%edx, %esi
	cmovgl	%edx, %esi
	movl	(%rax,%r15,4), %eax
	cmpl	%eax, %r13d
	cmovll	%eax, %r13d
	movl	$1, %edx
.LBB68_13:                              # %for.body.60.lr.ph.split
                                        #   in Loop: Header=BB68_8 Depth=1
	cmpl	$1, %ecx
	je	.LBB68_16
# BB#14:                                # %for.body.60.lr.ph.split.split
                                        #   in Loop: Header=BB68_8 Depth=1
	leaq	(%rdx,%rdx,2), %rax
	leaq	40(%rbx,%rax,8), %rbx
	.align	16, 0x90
.LBB68_15:                              # %for.body.60
                                        #   Parent Loop BB68_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-32(%rbx), %rax
	movq	-24(%rbx), %rdi
	movl	(%rax,%r15,4), %eax
	cmpl	%eax, %esi
	cmovgl	%eax, %esi
	movl	(%rdi,%r15,4), %eax
	cmpl	%eax, %r13d
	cmovll	%eax, %r13d
	movq	-8(%rbx), %rax
	movl	(%rax,%r15,4), %eax
	cmpl	%eax, %esi
	cmovgl	%eax, %esi
	movq	(%rbx), %rax
	movl	(%rax,%r15,4), %eax
	cmpl	%eax, %r13d
	cmovll	%eax, %r13d
	addq	$2, %rdx
	addq	$48, %rbx
	cmpq	%rcx, %rdx
	jl	.LBB68_15
	.align	16, 0x90
.LBB68_16:                              # %for.inc.87
                                        #   in Loop: Header=BB68_8 Depth=1
	leal	(%rbp,%r11), %ebp
	cmpl	%r8d, %ebp
	jl	.LBB68_8
	jmp	.LBB68_17
.LBB68_6:
	movl	%edx, 28(%rsp)          # 4-byte Spill
.LBB68_17:                              # %for.end.91
	movq	%r14, %r11
	cmpl	%r13d, %esi
	jle	.LBB68_19
# BB#18:
	movl	64(%rsp), %eax          # 4-byte Reload
	jmp	.LBB68_87
.LBB68_19:                              # %if.then.93
	movl	576(%r11), %ebp
	movq	24(%r11), %rcx
	cmpl	$0, 104(%rcx)
	movl	(%rsp), %eax            # 4-byte Reload
	movl	%eax, 56(%rsp)          # 4-byte Spill
	je	.LBB68_21
# BB#20:                                # %select.mid
	movl	%esi, 56(%rsp)          # 4-byte Spill
.LBB68_21:                              # %select.end
	movl	%r10d, %eax
	subl	616(%r11), %eax
	movl	28(%rsp), %edi          # 4-byte Reload
	jne	.LBB68_23
# BB#22:
	movq	%rbp, %r9
	jmp	.LBB68_36
.LBB68_23:                              # %if.then.100
	testb	$8, 521(%r11)
	je	.LBB68_25
# BB#24:                                # %if.then.102
	addl	28(%r9), %r10d
	movl	%r10d, %eax
.LBB68_25:                              # %if.end.111
	movl	24(%r9), %esi
	cmpl	$2, %esi
	jl	.LBB68_27
# BB#26:                                # %if.then.115
	movl	%eax, %edi
	cltd
	idivl	%esi
	movl	%eax, %edx
	imull	%esi, %edx
	subl	%edx, %edi
	movl	%edi, %r14d
	movq	%rbp, %r9
	jmp	.LBB68_29
.LBB68_27:                              # %if.else.122
	xorl	%r14d, %r14d
	cmpl	$-2, %esi
	movq	%rbp, %r9
	jg	.LBB68_29
# BB#28:                                # %if.then.126
	negl	%eax
	imull	%esi, %eax
.LBB68_29:                              # %if.end.133
	testl	%eax, %eax
	je	.LBB68_30
# BB#31:                                # %if.then.135
	movl	%r8d, 60(%rsp)          # 4-byte Spill
	movslq	%r9d, %rdx
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movq	496(%r11), %rdi
	addq	%rdx, %rdi
	movq	144(%rcx), %rsi
	movl	152(%rcx), %edx
	movq	%r11, %rbx
	movq	%r9, %rbp
	movl	%eax, 48(%rsp)          # 4-byte Spill
	callq	memcpy
	movq	%rbp, %r9
	movq	%rbx, %r11
	movq	24(%r11), %rax
	movq	496(%r11), %rcx
	movl	152(%rax), %eax
	movq	64(%rsp), %rdx          # 8-byte Reload
	leal	(%rdx,%rax), %edx
	movslq	%edx, %rdx
	movl	48(%rsp), %ebx          # 4-byte Reload
	movb	%bl, (%rcx,%rdx)
	leal	2(%rax,%r9), %r9d
	movq	496(%r11), %rax
	movb	%bh, 1(%rdx,%rax)  # NOREX
	movq	24(%r11), %rcx
	jmp	.LBB68_32
.LBB68_30:
	movl	%r8d, 60(%rsp)          # 4-byte Spill
.LBB68_32:                              # %if.end.158
	movl	168(%rcx), %eax
	testl	%eax, %eax
	je	.LBB68_35
# BB#33:                                # %if.end.158
	testl	%r14d, %r14d
	je	.LBB68_35
	.align	16, 0x90
.LBB68_34:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	%r9d, %rbx
	movq	496(%r11), %rdi
	addq	%rbx, %rdi
	movq	160(%rcx), %rsi
	movl	%eax, %edx
	movq	%r11, %rbp
	callq	memcpy
	movq	%rbp, %r11
	movq	24(%r11), %rcx
	movl	168(%rcx), %eax
	leal	(%rbx,%rax), %r9d
	decl	%r14d
	jne	.LBB68_34
.LBB68_35:                              # %if.end.181
	movl	612(%r11), %r10d
	movl	%r10d, 616(%r11)
	movl	28(%rsp), %edi          # 4-byte Reload
	movl	60(%rsp), %r8d          # 4-byte Reload
.LBB68_36:                              # %for.cond.185.preheader
	movl	572(%r11), %ecx
	testl	%ecx, %ecx
	jle	.LBB68_86
# BB#37:                                # %for.cond.190.preheader.lr.ph
	leal	1(%r13), %eax
	movl	%eax, 8(%rsp)           # 4-byte Spill
	movl	%r13d, %eax
	subl	56(%rsp), %eax          # 4-byte Folded Reload
	movl	%eax, 4(%rsp)           # 4-byte Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB68_38:                              # %for.cond.190.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB68_39 Depth 2
                                        #     Child Loop BB68_66 Depth 2
                                        #     Child Loop BB68_71 Depth 2
                                        #       Child Loop BB68_73 Depth 3
                                        #     Child Loop BB68_90 Depth 2
                                        #       Child Loop BB68_92 Depth 3
                                        #     Child Loop BB68_95 Depth 2
                                        #       Child Loop BB68_96 Depth 3
                                        #     Child Loop BB68_79 Depth 2
                                        #       Child Loop BB68_81 Depth 3
	cmpl	%r8d, %edi
	movl	%edi, %eax
	jge	.LBB68_84
	.align	16, 0x90
.LBB68_39:                              # %for.body.193
                                        #   Parent Loop BB68_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%eax, %eax
	js	.LBB68_41
# BB#40:                                # %if.end.197
                                        #   in Loop: Header=BB68_39 Depth=2
	movl	584(%r11), %edx
	andl	%eax, %edx
	movslq	%edx, %rdx
	movq	224(%r11), %rsi
	movq	(%rsi,%rdx,8), %rdx
	leaq	(%rbp,%rbp,2), %rsi
	movq	16(%rdx,%rsi,8), %rdx
	cmpl	$0, (%rdx,%r15,4)
	jns	.LBB68_42
.LBB68_41:                              # %for.inc.212
                                        #   in Loop: Header=BB68_39 Depth=2
	movq	8(%r11), %rdx
	addl	40(%rdx), %eax
	cmpl	%r8d, %eax
	jl	.LBB68_39
	jmp	.LBB68_84
.LBB68_42:                              # %if.end.220
                                        #   in Loop: Header=BB68_38 Depth=1
	movq	32(%r11), %rax
	cmpl	$0, 8(%rax)
	je	.LBB68_43
# BB#44:                                # %land.lhs.true
                                        #   in Loop: Header=BB68_38 Depth=1
	cmpl	%ebp, 600(%r11)
	jne	.LBB68_45
.LBB68_43:                              #   in Loop: Header=BB68_38 Depth=1
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	jmp	.LBB68_47
.LBB68_45:                              # %if.then.228
                                        #   in Loop: Header=BB68_38 Depth=1
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movl	%ebp, 600(%r11)
	movq	(%rax), %rax
	movq	%rbp, %rbx
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	shlq	$4, %rbx
	movl	8(%rax,%rbx), %edx
	testq	%rdx, %rdx
	je	.LBB68_47
# BB#46:                                # %if.then.238
                                        #   in Loop: Header=BB68_38 Depth=1
	movslq	%r9d, %r9
	movq	496(%r11), %rdi
	addq	%r9, %rdi
	movq	(%rax,%rbx), %rsi
	movq	%r11, %r14
	movq	%r9, %rbp
	callq	memcpy
	movq	%rbp, %r9
	movq	%r14, %r11
	movq	32(%r11), %rax
	movq	(%rax), %rax
	addl	8(%rax,%rbx), %r9d
.LBB68_47:                              # %if.end.264
                                        #   in Loop: Header=BB68_38 Depth=1
	movl	56(%rsp), %r14d         # 4-byte Reload
	subl	608(%r11), %r14d
	je	.LBB68_67
# BB#48:                                # %if.then.267
                                        #   in Loop: Header=BB68_38 Depth=1
	movq	24(%r11), %rcx
	movl	104(%rcx), %r8d
	testq	%r8, %r8
	je	.LBB68_49
# BB#50:                                # %if.else.279
                                        #   in Loop: Header=BB68_38 Depth=1
	testb	$4, 521(%r11)
	jne	.LBB68_51
# BB#52:                                # %if.else.287
                                        #   in Loop: Header=BB68_38 Depth=1
	movq	8(%r11), %rax
	jmp	.LBB68_53
.LBB68_49:                              # %if.then.273
                                        #   in Loop: Header=BB68_38 Depth=1
	movslq	%r9d, %rax
	incl	%r9d
	movq	496(%r11), %rcx
	movb	$13, (%rcx,%rax)
	movl	$0, 608(%r11)
	movl	(%rsp), %r14d           # 4-byte Reload
	jmp	.LBB68_64
.LBB68_51:                              # %if.then.283
                                        #   in Loop: Header=BB68_38 Depth=1
	movq	8(%r11), %rax
	movl	20(%rax), %r14d
	addl	56(%rsp), %r14d         # 4-byte Folded Reload
.LBB68_53:                              # %if.end.290
                                        #   in Loop: Header=BB68_38 Depth=1
	movl	16(%rax), %edi
	cmpl	$2, %edi
	jl	.LBB68_59
# BB#54:                                # %if.then.295
                                        #   in Loop: Header=BB68_38 Depth=1
	movl	%r14d, %eax
	sarl	$31, %eax
	testl	%r14d, %r14d
	movl	%r14d, %esi
	cmovsl	%edi, %esi
	andl	%edi, %eax
	subl	%eax, %r14d
	movl	$0, %r15d
	je	.LBB68_56
# BB#55:                                # %if.then.305
                                        #   in Loop: Header=BB68_38 Depth=1
	movl	%r14d, %eax
	cltd
	idivl	%edi
	movl	%eax, %r15d
.LBB68_56:                              # %if.end.309
                                        #   in Loop: Header=BB68_38 Depth=1
	testl	%esi, %esi
	je	.LBB68_57
# BB#58:                                # %if.then.311
                                        #   in Loop: Header=BB68_38 Depth=1
	movl	%esi, %eax
	cltd
	idivl	%edi
	movl	%edx, %r14d
	jmp	.LBB68_62
.LBB68_59:                              # %if.else.315
                                        #   in Loop: Header=BB68_38 Depth=1
	cmpl	$-2, %edi
	jg	.LBB68_60
# BB#61:                                # %if.then.320
                                        #   in Loop: Header=BB68_38 Depth=1
	negl	%r14d
	imull	%r14d, %edi
	xorl	%r14d, %r14d
	movl	%edi, %r15d
	jmp	.LBB68_62
.LBB68_60:                              #   in Loop: Header=BB68_38 Depth=1
	movl	%r14d, %r15d
	jmp	.LBB68_62
.LBB68_57:                              #   in Loop: Header=BB68_38 Depth=1
	xorl	%r14d, %r14d
.LBB68_62:                              # %if.end.326
                                        #   in Loop: Header=BB68_38 Depth=1
	testl	%r15d, %r15d
	je	.LBB68_64
# BB#63:                                # %if.then.328
                                        #   in Loop: Header=BB68_38 Depth=1
	movslq	%r9d, %rdi
	addq	496(%r11), %rdi
	movq	96(%rcx), %rsi
	movq	%r8, %rdx
	movq	%r11, %rbx
	movq	%r9, %rbp
	callq	memcpy
	movq	%rbp, %r9
	movq	%rbx, %r11
	movq	24(%r11), %rax
	movq	496(%r11), %rcx
	movl	104(%rax), %eax
	leal	(%rax,%r9), %edx
	movslq	%edx, %rdx
	movl	%r15d, %ebx
	movb	%bl, (%rcx,%rdx)
	leal	2(%rax,%r9), %r9d
	movq	496(%r11), %rax
	movb	%bh, 1(%rdx,%rax)  # NOREX
.LBB68_64:                              # %if.end.358
                                        #   in Loop: Header=BB68_38 Depth=1
	testl	%r14d, %r14d
	je	.LBB68_67
# BB#65:                                # %land.lhs.true.360
                                        #   in Loop: Header=BB68_38 Depth=1
	movq	24(%r11), %rax
	movl	120(%rax), %ecx
	testl	%ecx, %ecx
	je	.LBB68_67
	.align	16, 0x90
.LBB68_66:                              # %while.body.370
                                        #   Parent Loop BB68_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%r9d, %rbx
	movq	496(%r11), %rdi
	addq	%rbx, %rdi
	movq	112(%rax), %rsi
	movl	%ecx, %edx
	movq	%r11, %rbp
	callq	memcpy
	movq	%rbp, %r11
	movq	24(%r11), %rax
	movl	120(%rax), %ecx
	leal	(%rbx,%rcx), %r9d
	decl	%r14d
	jne	.LBB68_66
.LBB68_67:                              # %if.end.388
                                        #   in Loop: Header=BB68_38 Depth=1
	movl	8(%rsp), %eax           # 4-byte Reload
	movl	%eax, 608(%r11)
	movq	32(%r11), %rax
	movq	16(%rax), %rax
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, %rbx
	shlq	$4, %rbx
	movl	8(%rax,%rbx), %edx
	testq	%rdx, %rdx
	je	.LBB68_69
# BB#68:                                # %if.then.399
                                        #   in Loop: Header=BB68_38 Depth=1
	movslq	%r9d, %r9
	movq	496(%r11), %rdi
	addq	%r9, %rdi
	movq	(%rax,%rbx), %rsi
	movq	%r11, %r14
	movq	%r9, %rbp
	callq	memcpy
	movq	%rbp, %r9
	movq	%r14, %r11
	movq	32(%r11), %rax
	movq	16(%rax), %rax
	addl	8(%rax,%rbx), %r9d
.LBB68_69:                              # %if.end.424
                                        #   in Loop: Header=BB68_38 Depth=1
	movl	12(%rsp), %r14d         # 4-byte Reload
	movq	8(%r11), %rcx
	movq	496(%r11), %rsi
	movl	4(%rsp), %eax           # 4-byte Reload
	cltd
	idivl	36(%rcx)
	addl	$8, %eax
	movb	%al, %dl
	andb	$-8, %dl
	movslq	%r9d, %rcx
	movb	%dl, (%rsi,%rcx)
	leal	2(%rcx), %r15d
	movq	496(%r11), %rdx
	movb	%ah, 1(%rcx,%rdx)  # NOREX
	sarl	$3, %eax
	movl	%eax, 64(%rsp)          # 4-byte Spill
	testl	%r14d, %r14d
	jle	.LBB68_75
# BB#70:                                # %for.body.448.lr.ph
                                        #   in Loop: Header=BB68_38 Depth=1
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB68_71:                              # %for.body.448
                                        #   Parent Loop BB68_38 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB68_73 Depth 3
	cmpl	$0, 64(%rsp)            # 4-byte Folded Reload
	movl	$0, %eax
	movl	$128, %ebx
	jle	.LBB68_74
# BB#72:                                # %while.body.66.i.preheader
                                        #   in Loop: Header=BB68_71 Depth=2
	movslq	%r15d, %rcx
	addq	496(%r11), %rcx
	xorl	%eax, %eax
	movl	64(%rsp), %edx          # 4-byte Reload
	.align	16, 0x90
.LBB68_73:                              # %while.body.66.i
                                        #   Parent Loop BB68_38 Depth=1
                                        #     Parent Loop BB68_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$128, %edx
	movl	%edx, %esi
	cmovgl	%ebx, %esi
	movl	$257, %edi              # imm = 0x101
	subl	%esi, %edi
	subl	%esi, %edx
	movb	%dil, (%rcx,%rax)
	movb	$0, 1(%rcx,%rax)
	leaq	2(%rax), %rax
	jg	.LBB68_73
.LBB68_74:                              # %upd_rle.exit
                                        #   in Loop: Header=BB68_71 Depth=2
	addl	%r15d, %eax
	movslq	576(%r11), %rdi
	subl	%edi, %eax
	addq	496(%r11), %rdi
	movslq	%eax, %rdx
	movl	$1, %esi
	movq	%r12, %rcx
	movq	%r11, %rbx
	callq	fwrite
	movq	%rbx, %r11
	movl	576(%r11), %r15d
	incl	%ebp
	cmpl	%r14d, %ebp
	jne	.LBB68_71
.LBB68_75:                              # %for.cond.466.preheader
                                        #   in Loop: Header=BB68_38 Depth=1
	movl	28(%rsp), %r14d         # 4-byte Reload
	testl	%r14d, %r14d
	jns	.LBB68_76
	.align	16, 0x90
.LBB68_90:                              # %for.body.469
                                        #   Parent Loop BB68_38 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB68_92 Depth 3
	xorl	%eax, %eax
	cmpl	$0, 64(%rsp)            # 4-byte Folded Reload
	movl	$128, %ebp
	jle	.LBB68_93
# BB#91:                                # %while.body.66.i.325.preheader
                                        #   in Loop: Header=BB68_90 Depth=2
	movslq	%r15d, %rcx
	addq	496(%r11), %rcx
	xorl	%eax, %eax
	movl	64(%rsp), %edx          # 4-byte Reload
	.align	16, 0x90
.LBB68_92:                              # %while.body.66.i.325
                                        #   Parent Loop BB68_38 Depth=1
                                        #     Parent Loop BB68_90 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$128, %edx
	movl	%edx, %esi
	cmovgl	%ebp, %esi
	movl	$257, %edi              # imm = 0x101
	subl	%esi, %edi
	subl	%esi, %edx
	movb	%dil, (%rcx,%rax)
	movb	$0, 1(%rcx,%rax)
	leaq	2(%rax), %rax
	jg	.LBB68_92
.LBB68_93:                              # %upd_rle.exit327
                                        #   in Loop: Header=BB68_90 Depth=2
	addl	%r15d, %eax
	movslq	576(%r11), %rdi
	subl	%edi, %eax
	addq	496(%r11), %rdi
	movslq	%eax, %rdx
	movl	$1, %esi
	movq	%r12, %rcx
	movq	%r11, %rbx
	callq	fwrite
	movq	%rbx, %r11
	movl	576(%r11), %r15d
	movq	8(%r11), %rax
	addl	40(%rax), %r14d
	js	.LBB68_90
.LBB68_76:                              # %for.cond.489.preheader
                                        #   in Loop: Header=BB68_38 Depth=1
	movl	60(%rsp), %eax          # 4-byte Reload
	cmpl	%eax, %r14d
	jge	.LBB68_77
# BB#94:                                # %for.body.492.lr.ph
                                        #   in Loop: Header=BB68_38 Depth=1
	movl	576(%r11), %r9d
	.align	16, 0x90
.LBB68_95:                              # %for.body.492
                                        #   Parent Loop BB68_38 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB68_96 Depth 3
	movl	584(%r11), %eax
	andl	%r14d, %eax
	cltq
	movq	224(%r11), %rcx
	movq	496(%r11), %rbp
	movq	(%rcx,%rax,8), %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	(%rax,%rcx,8), %r12
	movslq	%r9d, %rdx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	%r11, %rbx
	callq	memset
	movl	56(%rsp), %eax          # 4-byte Reload
	cmpl	%eax, %r13d
	movb	$-128, %dl
	jl	.LBB68_101
	.align	16, 0x90
.LBB68_96:                              # %for.body.507
                                        #   Parent Loop BB68_38 Depth=1
                                        #     Parent Loop BB68_95 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%eax, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	movzbl	(%r12,%rcx), %esi
	movb	%al, %cl
	andb	$7, %cl
	movl	$128, %edi
	shrl	%cl, %edi
	testl	%edi, %esi
	je	.LBB68_98
# BB#97:                                # %if.then.516
                                        #   in Loop: Header=BB68_96 Depth=3
	orb	%dl, (%rbp)
.LBB68_98:                              # %if.end.520
                                        #   in Loop: Header=BB68_96 Depth=3
	shrb	%dl
	leaq	1(%rbp), %rcx
	testb	%dl, %dl
	cmoveq	%rcx, %rbp
	movb	$-128, %cl
	je	.LBB68_100
# BB#99:                                # %if.end.520
                                        #   in Loop: Header=BB68_96 Depth=3
	movb	%dl, %cl
.LBB68_100:                             # %if.end.520
                                        #   in Loop: Header=BB68_96 Depth=3
	movq	8(%rbx), %rdx
	addl	36(%rdx), %eax
	cmpl	%r13d, %eax
	movb	%cl, %dl
	jle	.LBB68_96
.LBB68_101:                             # %for.end.531
                                        #   in Loop: Header=BB68_95 Depth=2
	movq	496(%rbx), %rsi
	movslq	%r15d, %rbp
	leaq	(%rsi,%rbp), %rdi
	movl	64(%rsp), %edx          # 4-byte Reload
	callq	upd_rle
	addl	%eax, %ebp
	movslq	576(%rbx), %rdi
	subl	%edi, %ebp
	addq	496(%rbx), %rdi
	movslq	%ebp, %rdx
	movl	$1, %esi
	movq	40(%rsp), %r12          # 8-byte Reload
	movq	%r12, %rcx
	callq	fwrite
	movq	%rbx, %r11
	movl	576(%r11), %r9d
	movq	8(%r11), %rax
	addl	40(%rax), %r14d
	cmpl	60(%rsp), %r14d         # 4-byte Folded Reload
	movl	%r9d, %r15d
	jl	.LBB68_95
	jmp	.LBB68_78
.LBB68_77:                              # %for.cond.489.preheader.for.cond.552.preheader_crit_edge
                                        #   in Loop: Header=BB68_38 Depth=1
	movq	8(%r11), %rax
	movl	%r15d, %r9d
.LBB68_78:                              # %for.cond.552.preheader
                                        #   in Loop: Header=BB68_38 Depth=1
	movl	24(%rsp), %ebp          # 4-byte Reload
	cmpl	32(%rax), %ebp
	movq	16(%rsp), %r15          # 8-byte Reload
	jge	.LBB68_83
	.align	16, 0x90
.LBB68_79:                              # %for.body.557
                                        #   Parent Loop BB68_38 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB68_81 Depth 3
	xorl	%eax, %eax
	cmpl	$0, 64(%rsp)            # 4-byte Folded Reload
	movl	$128, %ebx
	jle	.LBB68_82
# BB#80:                                # %while.body.66.i.309.preheader
                                        #   in Loop: Header=BB68_79 Depth=2
	movslq	%r9d, %rcx
	addq	496(%r11), %rcx
	xorl	%eax, %eax
	movl	64(%rsp), %edx          # 4-byte Reload
	.align	16, 0x90
.LBB68_81:                              # %while.body.66.i.309
                                        #   Parent Loop BB68_38 Depth=1
                                        #     Parent Loop BB68_79 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$128, %edx
	movl	%edx, %esi
	cmovgl	%ebx, %esi
	movl	$257, %edi              # imm = 0x101
	subl	%esi, %edi
	subl	%esi, %edx
	movb	%dil, (%rcx,%rax)
	movb	$0, 1(%rcx,%rax)
	leaq	2(%rax), %rax
	jg	.LBB68_81
.LBB68_82:                              # %upd_rle.exit311
                                        #   in Loop: Header=BB68_79 Depth=2
	addl	%r9d, %eax
	movslq	576(%r11), %rdi
	subl	%edi, %eax
	addq	496(%r11), %rdi
	movslq	%eax, %rdx
	movl	$1, %esi
	movq	%r12, %rcx
	movq	%r11, %rbx
	callq	fwrite
	movq	%rbx, %r11
	movl	576(%r11), %r9d
	incl	%ebp
	movq	8(%r11), %rax
	cmpl	32(%rax), %ebp
	jl	.LBB68_79
.LBB68_83:                              # %for.inc.575.loopexit
                                        #   in Loop: Header=BB68_38 Depth=1
	movl	572(%r11), %ecx
	movl	28(%rsp), %edi          # 4-byte Reload
	movl	60(%rsp), %r8d          # 4-byte Reload
	movq	32(%rsp), %rbp          # 8-byte Reload
	.align	16, 0x90
.LBB68_84:                              # %for.inc.575
                                        #   in Loop: Header=BB68_38 Depth=1
	incq	%rbp
	movslq	%ecx, %rax
	cmpq	%rax, %rbp
	jl	.LBB68_38
# BB#85:                                # %for.cond.185.if.end.578.loopexit_crit_edge
	movl	612(%r11), %r10d
.LBB68_86:                              # %if.end.578.loopexit
	movq	8(%r11), %r9
	movl	48(%r9), %eax
.LBB68_87:                              # %if.end.578
	cmpl	%eax, %r10d
	jge	.LBB68_102
# BB#88:                                # %if.then.584
	movslq	596(%r11), %rax
	leal	1(%rax), %ecx
	movl	%ecx, 596(%r11)
	movq	16(%r11), %rdx
	movq	96(%rdx), %rsi
	addl	(%rsi,%rax,4), %r10d
	movl	%r10d, 612(%r11)
	cmpl	%r10d, 48(%r9)
	jle	.LBB68_107
# BB#89:                                # %if.else.601
	cmpl	%ecx, 104(%rdx)
	jbe	.LBB68_107
	jmp	.LBB68_108
.LBB68_102:                             # %if.else.612
	movslq	596(%r11), %rdx
	leal	1(%rdx), %ecx
	cmpl	52(%r9), %r10d
	movl	%ecx, 596(%r11)
	movq	16(%r11), %rsi
	jge	.LBB68_103
# BB#104:                               # %if.else.637
	movq	64(%rsi), %rax
	addl	(%rax,%rdx,4), %r10d
	movl	%r10d, 612(%r11)
	cmpl	%ecx, 72(%rsi)
	ja	.LBB68_106
# BB#105:                               # %if.then.653
	movl	$0, 596(%r11)
.LBB68_106:                             # %if.end.655
	cmpl	52(%r9), %r10d
	jl	.LBB68_108
	jmp	.LBB68_107
.LBB68_103:                             # %if.then.618
	movq	144(%rsi), %rax
	addl	(%rax,%rdx,4), %r10d
	movl	%r10d, 612(%r11)
	cmpl	%ecx, 152(%rsi)
	ja	.LBB68_108
.LBB68_107:                             # %if.then.661
	movl	$0, 596(%r11)
.LBB68_108:                             # %if.end.665
	xorl	%eax, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end68:
	.size	upd_wrtescp2x, .Lfunc_end68-upd_wrtescp2x
	.cfi_endproc

	.align	16, 0x90
	.type	upd_wrtescnm,@function
upd_wrtescnm:                           # @upd_wrtescnm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp255:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp256:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp257:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp258:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp259:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp260:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp261:
	.cfi_def_cfa_offset 112
.Ltmp262:
	.cfi_offset %rbx, -56
.Ltmp263:
	.cfi_offset %r12, -48
.Ltmp264:
	.cfi_offset %r13, -40
.Ltmp265:
	.cfi_offset %r14, -32
.Ltmp266:
	.cfi_offset %r15, -24
.Ltmp267:
	.cfi_offset %rbp, -16
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movl	612(%rdi), %edx
	movq	8(%rdi), %r8
	cmpl	48(%r8), %edx
	jge	.LBB69_2
# BB#1:                                 # %if.then
	movslq	596(%rdi), %rax
	movq	16(%rdi), %rcx
	movq	128(%rcx), %rcx
	movl	(%rcx,%rax,4), %ebx
	xorl	%esi, %esi
	jmp	.LBB69_4
.LBB69_2:                               # %if.else
	xorl	%esi, %esi
	cmpl	52(%r8), %edx
	movl	32(%r8), %ebx
	jl	.LBB69_4
# BB#3:                                 # %if.then.7
	movslq	596(%rdi), %rax
	movq	16(%rdi), %rcx
	movq	176(%rcx), %rcx
	movl	%ebx, %esi
	subl	(%rcx,%rax,4), %esi
.LBB69_4:                               # %if.end.19
	movl	%ebx, 16(%rsp)          # 4-byte Spill
	movl	40(%r8), %r9d
	movl	56(%r8), %eax
	movl	%r9d, %ebp
	imull	%esi, %ebp
	addl	%edx, %ebp
	subl	%eax, %ebp
	movl	%r9d, %ecx
	imull	%ebx, %ecx
	addl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movl	576(%rdi), %r13d
	movl	$-1, %ebx
	cmpl	%ecx, %ebp
	jge	.LBB69_5
# BB#6:                                 # %for.body.lr.ph
	movl	%edx, 40(%rsp)          # 4-byte Spill
	movl	%esi, 24(%rsp)          # 4-byte Spill
	movq	%rdi, %r15
	movslq	%r13d, %r10
	decq	%r10
	movl	$-1, %edx
	movl	%r13d, %esi
	movl	%ebp, %r11d
	movl	%ebp, 36(%rsp)          # 4-byte Spill
	.align	16, 0x90
.LBB69_7:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB69_12 Depth 2
                                        #       Child Loop BB69_14 Depth 3
                                        #       Child Loop BB69_20 Depth 3
	testl	%r11d, %r11d
	js	.LBB69_8
# BB#9:                                 # %if.end.37
                                        #   in Loop: Header=BB69_7 Depth=1
	movslq	572(%r15), %r14
	testq	%r14, %r14
	jle	.LBB69_10
# BB#11:                                # %for.body.42.lr.ph
                                        #   in Loop: Header=BB69_7 Depth=1
	movl	584(%r15), %eax
	andl	%r11d, %eax
	cltq
	movq	224(%r15), %rcx
	movq	(%rcx,%rax,8), %r12
	xorl	%eax, %eax
	.align	16, 0x90
.LBB69_12:                              # %for.body.42
                                        #   Parent Loop BB69_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB69_14 Depth 3
                                        #       Child Loop BB69_20 Depth 3
	leaq	(%rax,%rax,2), %rcx
	movq	(%r12,%rcx,8), %rbp
	xorl	%ebx, %ebx
	testl	%esi, %esi
	jle	.LBB69_17
# BB#13:                                # %land.rhs.lr.ph
                                        #   in Loop: Header=BB69_12 Depth=2
	movslq	%esi, %rcx
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB69_14:                              # %land.rhs
                                        #   Parent Loop BB69_7 Depth=1
                                        #     Parent Loop BB69_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpb	$0, (%rbp,%rbx)
	jne	.LBB69_16
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB69_14 Depth=3
	incq	%rbx
	cmpq	%rcx, %rbx
	jl	.LBB69_14
	jmp	.LBB69_17
	.align	16, 0x90
.LBB69_16:                              # %land.rhs.for.end_crit_edge
                                        #   in Loop: Header=BB69_12 Depth=2
	movl	%ebx, %esi
.LBB69_17:                              # %for.end
                                        #   in Loop: Header=BB69_12 Depth=2
	cmpl	%r13d, %ebx
	jge	.LBB69_18
# BB#19:                                # %for.cond.58.preheader
                                        #   in Loop: Header=BB69_12 Depth=2
	movslq	%edx, %rcx
	movq	%r10, %rdi
	movl	%r13d, %ebx
	.align	16, 0x90
.LBB69_20:                              # %for.cond.58
                                        #   Parent Loop BB69_7 Depth=1
                                        #     Parent Loop BB69_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	%rcx, %rdi
	jle	.LBB69_21
# BB#22:                                # %land.rhs.60
                                        #   in Loop: Header=BB69_20 Depth=3
	decl	%ebx
	cmpb	$0, (%rbp,%rdi)
	leaq	-1(%rdi), %rdi
	je	.LBB69_20
	jmp	.LBB69_23
	.align	16, 0x90
.LBB69_18:                              #   in Loop: Header=BB69_12 Depth=2
	movl	%edx, %ebx
	jmp	.LBB69_23
	.align	16, 0x90
.LBB69_21:                              #   in Loop: Header=BB69_12 Depth=2
	movl	%edx, %ebx
.LBB69_23:                              # %for.inc.73
                                        #   in Loop: Header=BB69_12 Depth=2
	incq	%rax
	cmpq	%r14, %rax
	movl	%ebx, %edx
	jl	.LBB69_12
	jmp	.LBB69_24
	.align	16, 0x90
.LBB69_8:                               #   in Loop: Header=BB69_7 Depth=1
	movl	%edx, %ebx
	jmp	.LBB69_24
	.align	16, 0x90
.LBB69_10:                              #   in Loop: Header=BB69_7 Depth=1
	movl	%edx, %ebx
.LBB69_24:                              # %for.inc.76
                                        #   in Loop: Header=BB69_7 Depth=1
	leal	(%r11,%r9), %r11d
	cmpl	20(%rsp), %r11d         # 4-byte Folded Reload
	movl	%ebx, %edx
	jl	.LBB69_7
	jmp	.LBB69_25
.LBB69_5:
	movl	%edx, 40(%rsp)          # 4-byte Spill
	movl	%esi, 24(%rsp)          # 4-byte Spill
	movl	%ebp, 36(%rsp)          # 4-byte Spill
	movq	%rdi, %r15
	movl	%r13d, %esi
.LBB69_25:                              # %for.end.80
	movq	%r15, %r10
	cmpl	%ebx, %esi
	jg	.LBB69_118
# BB#26:                                # %if.then.82
	movq	24(%r10), %rcx
	xorl	%r14d, %r14d
	cmpl	$0, 104(%rcx)
	movl	$0, %r13d
	je	.LBB69_28
# BB#27:                                # %select.mid
	movl	%esi, %r13d
.LBB69_28:                              # %select.end
	movl	40(%rsp), %edx          # 4-byte Reload
	movl	%edx, %eax
	subl	616(%r10), %eax
	je	.LBB69_41
# BB#29:                                # %if.then.89
	testb	$8, 521(%r10)
	je	.LBB69_31
# BB#30:                                # %if.then.92
	addl	28(%r8), %edx
	movl	%edx, %eax
.LBB69_31:                              # %if.end.101
	movl	24(%r8), %esi
	cmpl	$2, %esi
	jl	.LBB69_33
# BB#32:                                # %if.then.105
	movl	%eax, %edi
	cltd
	idivl	%esi
	movl	%eax, %edx
	imull	%esi, %edx
	subl	%edx, %edi
	movl	%edi, %r15d
	jmp	.LBB69_35
.LBB69_33:                              # %if.else.112
	xorl	%r15d, %r15d
	cmpl	$-2, %esi
	jg	.LBB69_35
# BB#34:                                # %if.then.116
	negl	%eax
	imull	%esi, %eax
.LBB69_35:                              # %if.end.123
	xorl	%r14d, %r14d
	testl	%eax, %eax
	je	.LBB69_37
# BB#36:                                # %if.then.125
	movq	496(%r10), %rdi
	movq	144(%rcx), %rsi
	movl	%eax, %r14d
	movl	152(%rcx), %edx
	movq	%r10, %rbp
	callq	memcpy
	movq	%rbp, %r10
	movq	24(%r10), %rax
	movq	496(%r10), %rcx
	movslq	152(%rax), %rax
	movl	%r14d, %edx
	movb	%dl, (%rcx,%rax)
	leal	2(%rax), %r14d
	movq	496(%r10), %rcx
	movb	%dh, 1(%rax,%rcx)  # NOREX
	movq	24(%r10), %rcx
.LBB69_37:                              # %if.end.148
	movl	168(%rcx), %eax
	testl	%eax, %eax
	je	.LBB69_40
# BB#38:                                # %if.end.148
	testl	%r15d, %r15d
	je	.LBB69_40
	.align	16, 0x90
.LBB69_39:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	%r14d, %r14
	movq	496(%r10), %rdi
	addq	%r14, %rdi
	movq	160(%rcx), %rsi
	movl	%eax, %edx
	movq	%r10, %rbp
	callq	memcpy
	movq	%rbp, %r10
	movq	24(%r10), %rcx
	movl	168(%rcx), %eax
	leal	(%r14,%rax), %r14d
	decl	%r15d
	jne	.LBB69_39
.LBB69_40:                              # %if.end.172
	movl	612(%r10), %eax
	movl	%eax, 616(%r10)
.LBB69_41:                              # %if.end.175
	movq	32(%r10), %rax
	cmpl	$0, 8(%rax)
	je	.LBB69_44
# BB#42:                                # %if.then.180
	movl	$0, 600(%r10)
	movq	(%rax), %rax
	movl	8(%rax), %edx
	testq	%rdx, %rdx
	je	.LBB69_44
# BB#43:                                # %if.then.190
	movslq	%r14d, %r14
	movq	496(%r10), %rdi
	addq	%r14, %rdi
	movq	(%rax), %rsi
	movq	%r10, %rbp
	callq	memcpy
	movq	%rbp, %r10
	movq	32(%r10), %rax
	movq	(%rax), %rax
	addl	8(%rax), %r14d
.LBB69_44:                              # %if.end.216
	movl	%r13d, %r12d
	subl	608(%r10), %r12d
	je	.LBB69_64
# BB#45:                                # %if.then.219
	movq	24(%r10), %rbp
	movl	104(%rbp), %ecx
	testq	%rcx, %rcx
	je	.LBB69_46
# BB#47:                                # %if.else.231
	testb	$4, 521(%r10)
	jne	.LBB69_48
# BB#49:                                # %if.else.239
	movq	8(%r10), %rax
	jmp	.LBB69_50
.LBB69_46:                              # %if.end.310.thread
	movslq	%r14d, %rax
	incl	%r14d
	movq	496(%r10), %rcx
	movb	$13, (%rcx,%rax)
	movl	$0, 608(%r10)
	jmp	.LBB69_64
.LBB69_48:                              # %if.then.235
	movq	8(%r10), %rax
	movl	20(%rax), %r12d
	addl	%r13d, %r12d
.LBB69_50:                              # %if.end.242
	movl	16(%rax), %edi
	cmpl	$2, %edi
	jl	.LBB69_56
# BB#51:                                # %if.then.247
	movl	%r12d, %eax
	sarl	$31, %eax
	andl	%edi, %eax
	testl	%r12d, %r12d
	movl	%r12d, %esi
	cmovsl	%edi, %esi
	subl	%eax, %r12d
	movl	$0, %eax
	je	.LBB69_53
# BB#52:                                # %if.then.257
	movl	%r12d, %eax
	cltd
	idivl	%edi
.LBB69_53:                              # %if.end.261
	movl	%eax, %r8d
	testl	%esi, %esi
	je	.LBB69_54
# BB#55:                                # %if.then.263
	movl	%esi, %eax
	cltd
	idivl	%edi
	movl	%edx, %r12d
	movl	%r8d, %eax
	jmp	.LBB69_59
.LBB69_56:                              # %if.else.267
	cmpl	$-2, %edi
	jg	.LBB69_57
# BB#58:                                # %if.then.272
	negl	%r12d
	imull	%r12d, %edi
	xorl	%r12d, %r12d
	movl	%edi, %eax
	jmp	.LBB69_59
.LBB69_57:
	movl	%r12d, %eax
	jmp	.LBB69_59
.LBB69_54:
	xorl	%r12d, %r12d
	movl	%r8d, %eax
.LBB69_59:                              # %if.end.278
	testl	%eax, %eax
	je	.LBB69_61
# BB#60:                                # %if.then.280
	movslq	%r14d, %rdi
	addq	496(%r10), %rdi
	movq	96(%rbp), %rsi
	movq	%rcx, %rdx
	movq	%r10, %rbp
	movl	%eax, %r15d
	callq	memcpy
	movq	%rbp, %r10
	movq	24(%r10), %rax
	movq	496(%r10), %rsi
	movl	104(%rax), %eax
	leal	(%rax,%r14), %edx
	movslq	%edx, %rdx
	movl	%r15d, %ecx
	movb	%cl, (%rsi,%rdx)
	leal	2(%rax,%r14), %r14d
	movq	496(%r10), %rax
	movb	%ch, 1(%rdx,%rax)  # NOREX
.LBB69_61:                              # %if.end.310
	testl	%r12d, %r12d
	je	.LBB69_64
# BB#62:                                # %land.lhs.true
	movq	24(%r10), %rax
	movl	120(%rax), %ecx
	testl	%ecx, %ecx
	je	.LBB69_64
	.align	16, 0x90
.LBB69_63:                              # %while.body.321
                                        # =>This Inner Loop Header: Depth=1
	movslq	%r14d, %r14
	movq	496(%r10), %rdi
	addq	%r14, %rdi
	movq	112(%rax), %rsi
	movl	%ecx, %edx
	movq	%r10, %rbp
	callq	memcpy
	movq	%rbp, %r10
	movq	24(%r10), %rax
	movl	120(%rax), %ecx
	leal	(%r14,%rcx), %r14d
	decl	%r12d
	jne	.LBB69_63
.LBB69_64:                              # %if.end.339
	incl	%ebx
	movl	%ebx, 608(%r10)
	movq	32(%r10), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	testq	%rdx, %rdx
	je	.LBB69_66
# BB#65:                                # %if.then.350
	movslq	%r14d, %r14
	movq	496(%r10), %rdi
	addq	%r14, %rdi
	movq	(%rax), %rsi
	movq	%r10, %rbp
	callq	memcpy
	movq	%rbp, %r10
	movq	32(%r10), %rax
	movq	16(%rax), %rax
	addl	8(%rax), %r14d
.LBB69_66:                              # %if.end.375
	movl	24(%rsp), %esi          # 4-byte Reload
	subl	%r13d, %ebx
	movl	%r13d, 12(%rsp)         # 4-byte Spill
	leal	(,%rbx,8), %eax
	movslq	%r14d, %rcx
	movq	496(%r10), %rdx
	movb	%al, (%rdx,%rcx)
	movl	%ebx, %eax
	shrl	$5, %eax
	leal	2(%rcx), %r12d
	movq	496(%r10), %rdx
	movb	%al, 1(%rcx,%rdx)
	xorl	%r15d, %r15d
	testl	%esi, %esi
	jle	.LBB69_71
# BB#67:                                # %for.cond.395.preheader.lr.ph
	movq	8(%r10), %rax
	xorl	%edx, %edx
	movl	$128, %ebp
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB69_68:                              # %for.cond.395.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB69_69 Depth 2
                                        #       Child Loop BB69_78 Depth 3
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	cmpl	$0, 64(%rax)
	movl	$0, %r13d
	movl	%r12d, %r8d
	jle	.LBB69_80
	.align	16, 0x90
.LBB69_69:                              # %for.body.400
                                        #   Parent Loop BB69_68 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB69_78 Depth 3
	cmpl	60(%rax), %r15d
	jge	.LBB69_70
# BB#76:                                # %if.end.406
                                        #   in Loop: Header=BB69_69 Depth=2
	xorl	%r12d, %r12d
	testl	%ebx, %ebx
	movl	$0, %eax
	jle	.LBB69_79
# BB#77:                                # %while.body.66.i.preheader
                                        #   in Loop: Header=BB69_69 Depth=2
	movslq	%r8d, %rdx
	addq	496(%r10), %rdx
	xorl	%eax, %eax
	movl	%ebx, %esi
	.align	16, 0x90
.LBB69_78:                              # %while.body.66.i
                                        #   Parent Loop BB69_68 Depth=1
                                        #     Parent Loop BB69_69 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$128, %esi
	movl	%esi, %edi
	cmovgl	%ebp, %edi
	movl	$257, %ecx              # imm = 0x101
	subl	%edi, %ecx
	subl	%edi, %esi
	movb	%cl, (%rdx,%rax)
	movb	$0, 1(%rdx,%rax)
	leaq	2(%rax), %rax
	jg	.LBB69_78
.LBB69_79:                              # %upd_rle.exit
                                        #   in Loop: Header=BB69_69 Depth=2
	addl	%r8d, %eax
	movq	496(%r10), %rdi
	movslq	%eax, %rdx
	movl	$1, %esi
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	%r10, %r14
	callq	fwrite
	movq	%r14, %r10
	incl	%r15d
	incl	%r13d
	movq	8(%r10), %rax
	cmpl	64(%rax), %r13d
	movl	$0, %r8d
	jl	.LBB69_69
	jmp	.LBB69_80
	.align	16, 0x90
.LBB69_70:                              #   in Loop: Header=BB69_68 Depth=1
	movl	%r8d, %r12d
.LBB69_80:                              # %for.end.418
                                        #   in Loop: Header=BB69_68 Depth=1
	movq	40(%rsp), %rdx          # 8-byte Reload
	incl	%edx
	movl	24(%rsp), %ecx          # 4-byte Reload
	cmpl	%ecx, %edx
	jne	.LBB69_68
.LBB69_71:                              # %for.cond.422.preheader
	movl	36(%rsp), %edx          # 4-byte Reload
	testl	%edx, %edx
	jns	.LBB69_81
# BB#72:                                # %for.cond.427.preheader.lr.ph
	movq	8(%r10), %rax
	movl	$128, %r13d
	.align	16, 0x90
.LBB69_73:                              # %for.cond.427.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB69_74 Depth 2
                                        #       Child Loop BB69_90 Depth 3
	movl	%edx, 36(%rsp)          # 4-byte Spill
	cmpl	$0, 64(%rax)
	movl	$0, %r14d
	movl	%r12d, %r8d
	jle	.LBB69_92
	.align	16, 0x90
.LBB69_74:                              # %for.body.432
                                        #   Parent Loop BB69_73 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB69_90 Depth 3
	cmpl	60(%rax), %r15d
	jge	.LBB69_75
# BB#88:                                # %if.end.438
                                        #   in Loop: Header=BB69_74 Depth=2
	xorl	%r12d, %r12d
	testl	%ebx, %ebx
	movl	$0, %eax
	jle	.LBB69_91
# BB#89:                                # %while.body.66.i.352.preheader
                                        #   in Loop: Header=BB69_74 Depth=2
	movslq	%r8d, %rdx
	addq	496(%r10), %rdx
	xorl	%eax, %eax
	movl	%ebx, %esi
	.align	16, 0x90
.LBB69_90:                              # %while.body.66.i.352
                                        #   Parent Loop BB69_73 Depth=1
                                        #     Parent Loop BB69_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$128, %esi
	movl	%esi, %edi
	cmovgl	%r13d, %edi
	movl	$257, %ecx              # imm = 0x101
	subl	%edi, %ecx
	subl	%edi, %esi
	movb	%cl, (%rdx,%rax)
	movb	$0, 1(%rdx,%rax)
	leaq	2(%rax), %rax
	jg	.LBB69_90
.LBB69_91:                              # %upd_rle.exit354
                                        #   in Loop: Header=BB69_74 Depth=2
	addl	%r8d, %eax
	movq	496(%r10), %rdi
	movslq	%eax, %rdx
	movl	$1, %esi
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	%r10, %rbp
	callq	fwrite
	movq	%rbp, %r10
	incl	%r15d
	incl	%r14d
	movq	8(%r10), %rax
	cmpl	64(%rax), %r14d
	movl	$0, %r8d
	jl	.LBB69_74
	jmp	.LBB69_92
	.align	16, 0x90
.LBB69_75:                              #   in Loop: Header=BB69_73 Depth=1
	movl	%r8d, %r12d
.LBB69_92:                              # %for.end.450
                                        #   in Loop: Header=BB69_73 Depth=1
	movl	36(%rsp), %edx          # 4-byte Reload
	addl	40(%rax), %edx
	js	.LBB69_73
.LBB69_81:                              # %for.cond.456.preheader
	cmpl	20(%rsp), %edx          # 4-byte Folded Reload
	jge	.LBB69_82
# BB#93:                                # %for.body.459.lr.ph
	movl	%r12d, %r13d
	movslq	12(%rsp), %rax          # 4-byte Folded Reload
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	8(%r10), %r8
	movl	64(%r8), %r12d
	.align	16, 0x90
.LBB69_94:                              # %for.body.459
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB69_96 Depth 2
                                        #       Child Loop BB69_100 Depth 3
	movl	%edx, 36(%rsp)          # 4-byte Spill
	testl	%r12d, %r12d
	movl	%r12d, %eax
	movl	$0, 40(%rsp)            # 4-byte Folded Spill
	movl	$0, %r14d
	jle	.LBB69_95
	.align	16, 0x90
.LBB69_96:                              # %for.body.468
                                        #   Parent Loop BB69_94 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB69_100 Depth 3
	cmpl	60(%r8), %r15d
	jge	.LBB69_103
# BB#97:                                # %if.end.474
                                        #   in Loop: Header=BB69_96 Depth=2
	movl	%r15d, %eax
	cltd
	idivl	%r12d
	movslq	%edx, %rax
	movq	16(%r10), %rcx
	movq	192(%rcx), %rdx
	movslq	(%rdx,%rax,4), %rdx
	testq	%rdx, %rdx
	je	.LBB69_98
# BB#101:                               # %if.else.489
                                        #   in Loop: Header=BB69_96 Depth=2
	leaq	(%rdx,%rdx,2), %rdx
	movq	208(%rcx), %rcx
	movslq	%r13d, %rdi
	addq	496(%r10), %rdi
	movl	(%rcx,%rax,4), %eax
	addl	36(%rsp), %eax          # 4-byte Folded Reload
	andl	584(%r10), %eax
	cltq
	movq	224(%r10), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-24(%rax,%rdx,8), %rsi
	addq	24(%rsp), %rsi          # 8-byte Folded Reload
	movl	%ebx, %edx
	movq	%r10, %rbp
	callq	upd_rle
	movq	%rbp, %r10
	movq	8(%r10), %rcx
	movl	40(%rsp), %edx          # 4-byte Reload
	addl	40(%rcx), %edx
	movl	%edx, 40(%rsp)          # 4-byte Spill
	jmp	.LBB69_102
	.align	16, 0x90
.LBB69_98:                              # %if.then.483
                                        #   in Loop: Header=BB69_96 Depth=2
	xorl	%eax, %eax
	testl	%ebx, %ebx
	jle	.LBB69_102
# BB#99:                                # %while.body.66.i.368.preheader
                                        #   in Loop: Header=BB69_96 Depth=2
	movslq	%r13d, %rcx
	addq	496(%r10), %rcx
	xorl	%eax, %eax
	movl	%ebx, %edx
	movl	$128, %ebp
	.align	16, 0x90
.LBB69_100:                             # %while.body.66.i.368
                                        #   Parent Loop BB69_94 Depth=1
                                        #     Parent Loop BB69_96 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$128, %edx
	movl	%edx, %esi
	cmovgl	%ebp, %esi
	movl	$257, %edi              # imm = 0x101
	subl	%esi, %edi
	subl	%esi, %edx
	movb	%dil, (%rcx,%rax)
	movb	$0, 1(%rcx,%rax)
	leaq	2(%rax), %rax
	jg	.LBB69_100
.LBB69_102:                             # %if.end.515
                                        #   in Loop: Header=BB69_96 Depth=2
	addl	%r13d, %eax
	movq	496(%r10), %rdi
	movslq	%eax, %rdx
	movl	$1, %esi
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	%r10, %rbp
	callq	fwrite
	movq	%rbp, %r10
	incl	%r15d
	incl	%r14d
	movq	8(%r10), %r8
	movl	64(%r8), %eax
	xorl	%r13d, %r13d
	cmpl	%eax, %r14d
	jl	.LBB69_96
	jmp	.LBB69_103
	.align	16, 0x90
.LBB69_95:                              #   in Loop: Header=BB69_94 Depth=1
	movl	%r12d, %eax
	movl	$0, 40(%rsp)            # 4-byte Folded Spill
.LBB69_103:                             # %for.end.522
                                        #   in Loop: Header=BB69_94 Depth=1
	movl	40(%r8), %ecx
	cmpl	%eax, %ecx
	jge	.LBB69_104
# BB#105:                               # %if.then.529
                                        #   in Loop: Header=BB69_94 Depth=1
	movl	40(%rsp), %esi          # 4-byte Reload
	addl	36(%rsp), %esi          # 4-byte Folded Reload
	testl	%esi, %esi
	movl	$0, %edx
	cmovgl	%ecx, %edx
	subl	%edx, %esi
	movl	%esi, %edx
	jmp	.LBB69_106
	.align	16, 0x90
.LBB69_104:                             #   in Loop: Header=BB69_94 Depth=1
	movl	36(%rsp), %edx          # 4-byte Reload
.LBB69_106:                             # %if.end.538
                                        #   in Loop: Header=BB69_94 Depth=1
	addl	%ecx, %edx
	cmpl	20(%rsp), %edx          # 4-byte Folded Reload
	movl	%eax, %r12d
	jl	.LBB69_94
	jmp	.LBB69_83
.LBB69_82:                              # %for.cond.456.preheader.for.cond.544.preheader_crit_edge
	movl	%r12d, %r13d
	movq	8(%r10), %r8
.LBB69_83:                              # %for.cond.544.preheader
	movl	16(%rsp), %eax          # 4-byte Reload
	cmpl	32(%r8), %eax
	movl	%r13d, %r12d
	jge	.LBB69_112
# BB#84:
	movl	$128, %r13d
	.align	16, 0x90
.LBB69_85:                              # %for.cond.551.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB69_86 Depth 2
                                        #       Child Loop BB69_109 Depth 3
	cmpl	$0, 64(%r8)
	movl	$0, %r14d
	movl	%r12d, %r9d
	jle	.LBB69_111
	.align	16, 0x90
.LBB69_86:                              # %for.body.556
                                        #   Parent Loop BB69_85 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB69_109 Depth 3
	cmpl	60(%r8), %r15d
	jge	.LBB69_87
# BB#107:                               # %if.end.562
                                        #   in Loop: Header=BB69_86 Depth=2
	xorl	%r12d, %r12d
	testl	%ebx, %ebx
	movl	$0, %ecx
	jle	.LBB69_110
# BB#108:                               # %while.body.66.i.336.preheader
                                        #   in Loop: Header=BB69_86 Depth=2
	movslq	%r9d, %rdx
	addq	496(%r10), %rdx
	xorl	%ecx, %ecx
	movl	%ebx, %esi
	.align	16, 0x90
.LBB69_109:                             # %while.body.66.i.336
                                        #   Parent Loop BB69_85 Depth=1
                                        #     Parent Loop BB69_86 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$128, %esi
	movl	%esi, %edi
	cmovgl	%r13d, %edi
	movl	$257, %eax              # imm = 0x101
	subl	%edi, %eax
	subl	%edi, %esi
	movb	%al, (%rdx,%rcx)
	movb	$0, 1(%rdx,%rcx)
	leaq	2(%rcx), %rcx
	jg	.LBB69_109
.LBB69_110:                             # %upd_rle.exit338
                                        #   in Loop: Header=BB69_86 Depth=2
	addl	%r9d, %ecx
	movq	496(%r10), %rdi
	movslq	%ecx, %rdx
	movl	$1, %esi
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	%r10, %rbp
	callq	fwrite
	movq	%rbp, %r10
	incl	%r15d
	incl	%r14d
	movq	8(%r10), %r8
	cmpl	64(%r8), %r14d
	movl	$0, %r9d
	jl	.LBB69_86
	jmp	.LBB69_111
	.align	16, 0x90
.LBB69_87:                              #   in Loop: Header=BB69_85 Depth=1
	movl	%r9d, %r12d
.LBB69_111:                             # %for.end.574
                                        #   in Loop: Header=BB69_85 Depth=1
	movl	16(%rsp), %eax          # 4-byte Reload
	incl	%eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	cmpl	32(%r8), %eax
	jl	.LBB69_85
.LBB69_112:                             # %for.end.577
	cmpl	60(%r8), %r15d
	jge	.LBB69_118
# BB#113:                               # %for.body.588.lr.ph
	movl	$128, %ebp
	.align	16, 0x90
.LBB69_114:                             # %for.body.588
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB69_116 Depth 2
	testl	%ebx, %ebx
	movl	$0, %eax
	jle	.LBB69_117
# BB#115:                               # %while.body.66.i.320.preheader
                                        #   in Loop: Header=BB69_114 Depth=1
	movslq	%r12d, %rcx
	addq	496(%r10), %rcx
	xorl	%eax, %eax
	movl	%ebx, %edx
	.align	16, 0x90
.LBB69_116:                             # %while.body.66.i.320
                                        #   Parent Loop BB69_114 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$128, %edx
	movl	%edx, %esi
	cmovgl	%ebp, %esi
	movl	$257, %edi              # imm = 0x101
	subl	%esi, %edi
	subl	%esi, %edx
	movb	%dil, (%rcx,%rax)
	movb	$0, 1(%rcx,%rax)
	leaq	2(%rax), %rax
	jg	.LBB69_116
.LBB69_117:                             # %upd_rle.exit322
                                        #   in Loop: Header=BB69_114 Depth=1
	addl	%r12d, %eax
	movq	496(%r10), %rdi
	movslq	%eax, %rdx
	movl	$1, %esi
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	%r10, %r14
	callq	fwrite
	movq	%r14, %r10
	incl	%r15d
	movq	8(%r10), %r8
	xorl	%r12d, %r12d
	cmpl	60(%r8), %r15d
	jl	.LBB69_114
.LBB69_118:                             # %if.end.601
	movl	612(%r10), %eax
	cmpl	48(%r8), %eax
	jge	.LBB69_121
# BB#119:                               # %if.then.607
	movslq	596(%r10), %rsi
	leal	1(%rsi), %ecx
	movl	%ecx, 596(%r10)
	movq	16(%r10), %rdx
	movq	96(%rdx), %rdi
	addl	(%rdi,%rsi,4), %eax
	movl	%eax, 612(%r10)
	cmpl	%eax, 48(%r8)
	jle	.LBB69_126
# BB#120:                               # %if.else.624
	cmpl	%ecx, 104(%rdx)
	jbe	.LBB69_126
	jmp	.LBB69_127
.LBB69_121:                             # %if.else.635
	movslq	596(%r10), %rdx
	leal	1(%rdx), %ecx
	cmpl	52(%r8), %eax
	movl	%ecx, 596(%r10)
	movq	16(%r10), %rsi
	jge	.LBB69_122
# BB#123:                               # %if.else.660
	movq	64(%rsi), %rdi
	addl	(%rdi,%rdx,4), %eax
	movl	%eax, 612(%r10)
	cmpl	%ecx, 72(%rsi)
	ja	.LBB69_125
# BB#124:                               # %if.then.676
	movl	$0, 596(%r10)
.LBB69_125:                             # %if.end.678
	cmpl	52(%r8), %eax
	jl	.LBB69_127
	jmp	.LBB69_126
.LBB69_122:                             # %if.then.641
	movq	144(%rsi), %rdi
	addl	(%rdi,%rdx,4), %eax
	movl	%eax, 612(%r10)
	cmpl	%ecx, 152(%rsi)
	ja	.LBB69_127
.LBB69_126:                             # %if.then.684
	movl	$0, 596(%r10)
.LBB69_127:                             # %if.end.688
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end69:
	.size	upd_wrtescnm, .Lfunc_end69-upd_wrtescnm
	.cfi_endproc

	.align	16, 0x90
	.type	upd_rle,@function
upd_rle:                                # @upd_rle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp268:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp269:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp270:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp271:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp272:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp273:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp274:
	.cfi_def_cfa_offset 64
.Ltmp275:
	.cfi_offset %rbx, -56
.Ltmp276:
	.cfi_offset %r12, -48
.Ltmp277:
	.cfi_offset %r13, -40
.Ltmp278:
	.cfi_offset %r14, -32
.Ltmp279:
	.cfi_offset %r15, -24
.Ltmp280:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movq	%rdi, %r8
	xorl	%r15d, %r15d
	testq	%rbx, %rbx
	je	.LBB70_7
# BB#1:                                 # %while.cond.preheader
	testl	%ebp, %ebp
	jle	.LBB70_22
# BB#2:
	movl	$1, %r13d
	.align	16, 0x90
.LBB70_3:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB70_4 Depth 2
                                        #     Child Loop BB70_15 Depth 2
	movb	(%rbx), %cl
	movslq	%r13d, %r13
	movslq	%ebp, %rax
	.align	16, 0x90
.LBB70_4:                               # %while.cond.2
                                        #   Parent Loop BB70_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r13, %rax
	jle	.LBB70_10
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB70_4 Depth=2
	movzbl	(%rbx,%r13), %edx
	movzbl	%cl, %esi
	cmpl	%edx, %esi
	jne	.LBB70_10
# BB#6:                                 # %while.body.8
                                        #   in Loop: Header=BB70_4 Depth=2
	incq	%r13
	movl	$128, %r14d
	cmpl	$128, %r13d
	jne	.LBB70_4
	jmp	.LBB70_13
	.align	16, 0x90
.LBB70_10:                              # %while.end
                                        #   in Loop: Header=BB70_3 Depth=1
	cmpl	$2, %r13d
	jg	.LBB70_12
# BB#11:                                # %while.end
                                        #   in Loop: Header=BB70_3 Depth=1
	cmpl	%r13d, %ebp
	je	.LBB70_12
# BB#14:                                # %for.cond.preheader
                                        #   in Loop: Header=BB70_3 Depth=1
	movslq	%r13d, %rsi
	movl	%r13d, %edx
	movl	$1, %r9d
	.align	16, 0x90
.LBB70_15:                              # %for.cond
                                        #   Parent Loop BB70_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, %r13d
	jg	.LBB70_16
# BB#17:                                # %for.cond
                                        #   in Loop: Header=BB70_15 Depth=2
	cmpq	%rsi, %rax
	jle	.LBB70_18
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB70_15 Depth=2
	movzbl	%cl, %ecx
	movzbl	(%rbx,%rsi), %edi
	incl	%r13d
	cmpl	%edi, %ecx
	cmovnel	%r9d, %r13d
	incq	%rsi
	incl	%edx
	movl	$128, %r14d
	cmpl	$128, %edx
	movb	%dil, %cl
	jne	.LBB70_15
	jmp	.LBB70_20
	.align	16, 0x90
.LBB70_12:                              #   in Loop: Header=BB70_3 Depth=1
	movl	%r13d, %r14d
.LBB70_13:                              # %if.then.16
                                        #   in Loop: Header=BB70_3 Depth=1
	movl	$257, %eax              # imm = 0x101
	subl	%r14d, %eax
	movb	%al, (%r8)
	movb	%cl, 1(%r8)
	addq	$2, %r8
	addl	$2, %r15d
	movslq	%r14d, %r12
	movl	$1, %r13d
	jmp	.LBB70_21
.LBB70_16:                              #   in Loop: Header=BB70_3 Depth=1
	movl	%edx, %r14d
	jmp	.LBB70_20
.LBB70_18:                              #   in Loop: Header=BB70_3 Depth=1
	movl	%edx, %r14d
.LBB70_20:                              # %for.end
                                        #   in Loop: Header=BB70_3 Depth=1
	cmpl	$3, %r13d
	movl	$0, %eax
	cmovll	%eax, %r13d
	subl	%r13d, %r14d
	leal	255(%r14), %eax
	leaq	1(%r8), %rdi
	movb	%al, (%r8)
	movslq	%r14d, %r12
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%r8, (%rsp)             # 8-byte Spill
	callq	memcpy
	movq	(%rsp), %r8             # 8-byte Reload
	leal	1(%r15,%r14), %r15d
	leaq	1(%r8,%r12), %r8
.LBB70_21:                              # %while.cond.backedge
                                        #   in Loop: Header=BB70_3 Depth=1
	addq	%r12, %rbx
	subl	%r14d, %ebp
	jg	.LBB70_3
	jmp	.LBB70_22
.LBB70_7:                               # %while.cond.63.preheader
	testl	%ebp, %ebp
	jle	.LBB70_22
# BB#8:
	movl	$128, %eax
	.align	16, 0x90
.LBB70_9:                               # %while.body.66
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$128, %ebp
	movl	%ebp, %ecx
	cmovgl	%eax, %ecx
	movl	$257, %edx              # imm = 0x101
	subl	%ecx, %edx
	subl	%ecx, %ebp
	movb	%dl, (%r8,%r15)
	movb	$0, 1(%r8,%r15)
	leaq	2(%r15), %r15
	jg	.LBB70_9
.LBB70_22:                              # %if.end.77
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end70:
	.size	upd_rle, .Lfunc_end70-upd_rle
	.cfi_endproc

	.align	16, 0x90
	.type	upd_wrtrtl,@function
upd_wrtrtl:                             # @upd_wrtrtl
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp281:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp282:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp283:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp284:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp285:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp286:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp287:
	.cfi_def_cfa_offset 80
.Ltmp288:
	.cfi_offset %rbx, -56
.Ltmp289:
	.cfi_offset %r12, -48
.Ltmp290:
	.cfi_offset %r13, -40
.Ltmp291:
	.cfi_offset %r14, -32
.Ltmp292:
	.cfi_offset %r15, -24
.Ltmp293:
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, %r15
	movl	612(%r15), %r8d
	movslq	572(%r15), %r9
	testq	%r9, %r9
	jle	.LBB71_28
# BB#1:                                 # %for.body.lr.ph
	movl	584(%r15), %eax
	andl	%r8d, %eax
	cltq
	movq	224(%r15), %rdx
	movq	(%rdx,%rax,8), %rcx
	movslq	576(%r15), %rdx
	leal	-1(%rdx), %eax
	movslq	%eax, %rsi
	movl	$-1, %r13d
	xorl	%edi, %edi
	.align	16, 0x90
.LBB71_2:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB71_3 Depth 2
	leaq	(%rdi,%rdi,2), %rax
	movq	(%rcx,%rax,8), %rbx
	addq	%rsi, %rbx
	movq	%rdx, %rbp
	.align	16, 0x90
.LBB71_3:                               # %for.cond.3
                                        #   Parent Loop BB71_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbp, %rax
	testq	%rax, %rax
	jle	.LBB71_5
# BB#4:                                 # %for.body.5
                                        #   in Loop: Header=BB71_3 Depth=2
	leaq	-1(%rax), %rbp
	cmpb	$0, (%rbx)
	leaq	-1(%rbx), %rbx
	je	.LBB71_3
.LBB71_5:                               # %for.body.5.for.end_crit_edge
                                        #   in Loop: Header=BB71_2 Depth=1
	decl	%eax
	cmpl	%r13d, %eax
	cmovgel	%eax, %r13d
	incq	%rdi
	cmpq	%r9, %rdi
	jl	.LBB71_2
# BB#6:                                 # %for.end.12
	testl	%r13d, %r13d
	js	.LBB71_28
# BB#7:                                 # %if.then.14
	movl	616(%r15), %esi
	movl	%r8d, %edx
	subl	%esi, %edx
	jne	.LBB71_9
# BB#8:
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	jmp	.LBB71_18
.LBB71_9:                               # %if.then.17
	movq	24(%r15), %rax
	cmpl	$1, 152(%rax)
	jbe	.LBB71_10
# BB#29:                                # %if.then.20
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	496(%r15), %rdi
	movq	144(%rax), %rsi
	xorl	%eax, %eax
	callq	gs_sprintf
	movq	496(%r15), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movslq	%eax, %rdx
	movl	612(%r15), %r8d
	jmp	.LBB71_17
.LBB71_10:                              # %while.cond.preheader
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	cmpl	%esi, %r8d
	jle	.LBB71_16
# BB#11:
	movq	%r12, 8(%rsp)           # 8-byte Spill
	jmp	.LBB71_12
	.align	16, 0x90
.LBB71_15:                              # %for.end.60.for.cond.37.preheader_crit_edge
                                        #   in Loop: Header=BB71_12 Depth=1
	movl	572(%r15), %r9d
.LBB71_12:                              # %for.cond.37.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB71_13 Depth 2
	movq	496(%r15), %rbp
	testl	%r9d, %r9d
	movl	$0, %r14d
	movl	$0, %r12d
	movl	$0, %ebx
	jle	.LBB71_14
	.align	16, 0x90
.LBB71_13:                              # %for.body.41
                                        #   Parent Loop BB71_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	%rbx, %rbp
	movq	32(%r15), %rax
	movq	16(%rax), %rax
	movq	(%rax,%r14), %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	496(%r15), %rbp
	leaq	(%rbp,%rbx), %rdi
	callq	strlen
	addl	%eax, %ebx
	incq	%r12
	movslq	572(%r15), %rax
	movslq	%ebx, %rbx
	addq	$16, %r14
	cmpq	%rax, %r12
	jl	.LBB71_13
.LBB71_14:                              # %for.end.60
                                        #   in Loop: Header=BB71_12 Depth=1
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	movq	8(%rsp), %r12           # 8-byte Reload
	movq	%r12, %rcx
	callq	fwrite
	movl	616(%r15), %eax
	incl	%eax
	movl	%eax, 616(%r15)
	movl	612(%r15), %r8d
	cmpl	%eax, %r8d
	jg	.LBB71_15
.LBB71_16:                              # %if.end.66.loopexit
	movq	496(%r15), %rbx
	xorl	%edx, %edx
.LBB71_17:                              # %if.end.66
	movl	%r8d, 616(%r15)
	movl	$1, %esi
	movq	%rbx, %rdi
	movq	%r12, %rcx
	callq	fwrite
	movl	572(%r15), %r9d
.LBB71_18:                              # %for.cond.73.preheader
	testl	%r9d, %r9d
	jle	.LBB71_27
# BB#19:                                # %for.body.77.lr.ph
	leal	1(%r13), %eax
	movl	%eax, 8(%rsp)           # 4-byte Spill
	movslq	%eax, %rbp
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB71_20:                              # %for.body.77
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB71_23 Depth 2
	cmpl	$-1, %r13d
	jl	.LBB71_25
# BB#21:                                #   in Loop: Header=BB71_20 Depth=1
	leaq	(%r14,%r14,2), %rax
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx,%rax,8), %rsi
	movq	$-1, %rax
	.align	16, 0x90
.LBB71_23:                              # %for.body.84
                                        #   Parent Loop BB71_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, 1(%rsi,%rax)
	jne	.LBB71_24
# BB#22:                                # %for.cond.81
                                        #   in Loop: Header=BB71_23 Depth=2
	incq	%rax
	cmpq	%rbp, %rax
	jl	.LBB71_23
.LBB71_25:                              # %if.else.111
                                        #   in Loop: Header=BB71_20 Depth=1
	movq	32(%r15), %rax
	movq	16(%rax), %rax
	movq	%r14, %rcx
	shlq	$4, %rcx
	movq	(%rax,%rcx), %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	jmp	.LBB71_26
	.align	16, 0x90
.LBB71_24:                              # %if.then.95
                                        #   in Loop: Header=BB71_20 Depth=1
	movq	496(%r15), %rdi
	movl	8(%rsp), %edx           # 4-byte Reload
	callq	upd_rle
	movl	%eax, %ebx
	movq	32(%r15), %rax
	movq	16(%rax), %rax
	movq	%r14, %rcx
	shlq	$4, %rcx
	movq	(%rax,%rcx), %rsi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	fprintf
	movq	496(%r15), %rdi
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	%r12, %rcx
	callq	fwrite
.LBB71_26:                              # %for.inc.120
                                        #   in Loop: Header=BB71_20 Depth=1
	incq	%r14
	movslq	572(%r15), %rax
	cmpq	%rax, %r14
	jl	.LBB71_20
.LBB71_27:                              # %for.end.122
	incl	616(%r15)
	movl	612(%r15), %r8d
.LBB71_28:                              # %if.end.125
	incl	%r8d
	movl	%r8d, 612(%r15)
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end71:
	.size	upd_wrtrtl, .Lfunc_end71-upd_wrtrtl
	.cfi_endproc

	.align	16, 0x90
	.type	upd_wrtcanon,@function
upd_wrtcanon:                           # @upd_wrtcanon
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp294:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp295:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp296:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp297:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp298:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp299:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp300:
	.cfi_def_cfa_offset 80
.Ltmp301:
	.cfi_offset %rbx, -56
.Ltmp302:
	.cfi_offset %r12, -48
.Ltmp303:
	.cfi_offset %r13, -40
.Ltmp304:
	.cfi_offset %r14, -32
.Ltmp305:
	.cfi_offset %r15, -24
.Ltmp306:
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	612(%rbx), %r14d
	movslq	572(%rbx), %r9
	testq	%r9, %r9
	jle	.LBB72_22
# BB#1:                                 # %for.body.lr.ph
	movl	584(%rbx), %ecx
	andl	%r14d, %ecx
	movslq	%ecx, %rcx
	movq	224(%rbx), %rdx
	movq	(%rdx,%rcx,8), %rax
	movslq	576(%rbx), %rcx
	movq	%rbx, %r8
	leal	-1(%rcx), %edx
	movslq	%edx, %rdx
	movl	$-1, %r15d
	xorl	%esi, %esi
	.align	16, 0x90
.LBB72_2:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB72_3 Depth 2
	leaq	(%rsi,%rsi,2), %rdi
	movq	(%rax,%rdi,8), %rbp
	addq	%rdx, %rbp
	movq	%rcx, %rdi
	.align	16, 0x90
.LBB72_3:                               # %for.cond.3
                                        #   Parent Loop BB72_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	jle	.LBB72_5
# BB#4:                                 # %for.body.5
                                        #   in Loop: Header=BB72_3 Depth=2
	leaq	-1(%rbx), %rdi
	cmpb	$0, (%rbp)
	leaq	-1(%rbp), %rbp
	je	.LBB72_3
.LBB72_5:                               # %for.body.5.for.end_crit_edge
                                        #   in Loop: Header=BB72_2 Depth=1
	decl	%ebx
	cmpl	%r15d, %ebx
	cmovgel	%ebx, %r15d
	incq	%rsi
	cmpq	%r9, %rsi
	jl	.LBB72_2
# BB#6:                                 # %for.end.12
	testl	%r15d, %r15d
	js	.LBB72_7
# BB#8:                                 # %if.then.14
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%r8, %rbx
	subl	616(%rbx), %r14d
	je	.LBB72_10
# BB#9:                                 # %if.then.17
	movl	$27, %edi
	movq	%r12, %rsi
	callq	fputc
	movl	$40, %edi
	movq	%r12, %rsi
	callq	fputc
	movl	$101, %edi
	movq	%r12, %rsi
	callq	fputc
	movl	$2, %edi
	movq	%r12, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	fputc
	movl	%r14d, %edi
	sarl	$8, %edi
	movq	%r12, %rsi
	callq	fputc
	movzbl	%r14b, %edi
	movq	%r12, %rsi
	callq	fputc
	movl	612(%rbx), %eax
	movl	%eax, 616(%rbx)
	movl	572(%rbx), %r9d
.LBB72_10:                              # %for.cond.31.preheader
	testl	%r9d, %r9d
	jle	.LBB72_21
# BB#11:                                # %for.body.34.lr.ph
	leal	1(%r15), %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	movslq	%eax, %r13
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB72_12:                              # %for.body.34
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB72_14 Depth 2
	movq	%r12, %rbp
	movq	%rbx, %r12
	cmpl	$-1, %r15d
	movl	$0, %eax
	jl	.LBB72_18
# BB#13:                                #   in Loop: Header=BB72_12 Depth=1
	leaq	(%r14,%r14,2), %rax
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	(%rcx,%rax,8), %rsi
	movq	$-1, %rax
	.align	16, 0x90
.LBB72_14:                              # %for.body.40
                                        #   Parent Loop BB72_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, 1(%rsi,%rax)
	jne	.LBB72_17
# BB#15:                                # %for.cond.38
                                        #   in Loop: Header=BB72_14 Depth=2
	incq	%rax
	cmpq	%r13, %rax
	jl	.LBB72_14
# BB#16:                                #   in Loop: Header=BB72_12 Depth=1
	xorl	%eax, %eax
	jmp	.LBB72_18
	.align	16, 0x90
.LBB72_17:                              # %if.then.50
                                        #   in Loop: Header=BB72_12 Depth=1
	movq	496(%r12), %rdi
	movl	4(%rsp), %edx           # 4-byte Reload
	callq	upd_rle
.LBB72_18:                              # %if.end.55
                                        #   in Loop: Header=BB72_12 Depth=1
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leal	1(%rax), %ebx
	movl	$27, %edi
	movq	%rbp, %rsi
	callq	fputc
	movl	$40, %edi
	movq	%rbp, %rsi
	callq	fputc
	movl	$65, %edi
	movq	%rbp, %rsi
	callq	fputc
	movzbl	%bl, %edi
	movq	%rbp, %rsi
	callq	fputc
	sarl	$8, %ebx
	movl	%ebx, %edi
	movq	%rbp, %rsi
	callq	fputc
	movq	%r12, %rbx
	movl	572(%rbx), %eax
	leal	-3(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB72_19
# BB#23:                                # %sw.bb.66
                                        #   in Loop: Header=BB72_12 Depth=1
	movsbl	.L.str.20(%r14), %edi
	movq	%rbp, %rsi
	callq	fputc
	movq	%rbp, %r12
	jmp	.LBB72_20
	.align	16, 0x90
.LBB72_19:                              # %if.end.55
                                        #   in Loop: Header=BB72_12 Depth=1
	cmpl	$1, %eax
	movl	$75, %edi
	movq	%rbp, %r12
	movq	%r12, %rsi
	callq	fputc
.LBB72_20:                              # %sw.epilog
                                        #   in Loop: Header=BB72_12 Depth=1
	movq	496(%rbx), %rdi
	movq	16(%rsp), %rax          # 8-byte Reload
	movslq	%eax, %rdx
	movl	$1, %esi
	movq	%r12, %rcx
	callq	fwrite
	movl	$13, %edi
	movq	%r12, %rsi
	callq	fputc
	incq	%r14
	movslq	572(%rbx), %rax
	cmpq	%rax, %r14
	jl	.LBB72_12
.LBB72_21:                              # %for.end.77
	movl	$27, %edi
	movq	%r12, %rsi
	callq	fputc
	movl	$40, %edi
	movq	%r12, %rsi
	callq	fputc
	movl	$101, %edi
	movq	%r12, %rsi
	callq	fputc
	movl	$2, %edi
	movq	%r12, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	fputc
	movl	$1, %edi
	movq	%r12, %rsi
	callq	fputc
	incl	616(%rbx)
	movl	612(%rbx), %r14d
	jmp	.LBB72_22
.LBB72_7:
	movq	%r8, %rbx
.LBB72_22:                              # %if.end.87
	incl	%r14d
	movl	%r14d, 612(%rbx)
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end72:
	.size	upd_wrtcanon, .Lfunc_end72-upd_wrtcanon
	.cfi_endproc

	.align	16, 0x90
	.type	upd_signal_handler,@function
upd_signal_handler:                     # @upd_signal_handler
	.cfi_startproc
# BB#0:                                 # %entry
	movq	sigupd(%rip), %rax
	testq	%rax, %rax
	je	.LBB73_2
# BB#1:                                 # %if.then
	orb	$1, 522(%rax)
.LBB73_2:                               # %if.end
	retq
.Lfunc_end73:
	.size	upd_signal_handler, .Lfunc_end73-upd_signal_handler
	.cfi_endproc

	.type	upd_procs,@object       # @upd_procs
	.data
	.align	8
upd_procs:
	.quad	upd_open
	.quad	gx_default_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gdev_prn_output_page
	.quad	upd_close
	.quad	gx_default_w_b_map_rgb_color
	.quad	gx_default_w_b_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_get_bits
	.quad	upd_get_params
	.quad	upd_put_params
	.quad	gx_default_map_cmyk_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	upd_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"uniprint"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_uniprint_device,@object # @gs_uniprint_device
	.data
	.globl	gs_uniprint_device
	.align	8
gs_uniprint_device:
	.long	18496                   # 0x4840
	.zero	4
	.quad	upd_procs
	.quad	.L.str
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	upd_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.size	gs_uniprint_device, 18496

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"upd/gsbuf"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"uniprint/params"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"upd/code"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"upd_open_map: could not allocate code-arrays\n"
	.size	.L.str.5, 46

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"upd/fscomp"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"upd_open_fscomp: could not allocate %d. updcomp\n"
	.size	.L.str.7, 49

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"upd/valbuf"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"upd_open_fscomp: could not allocate %u words for valbuf\n"
	.size	.L.str.9, 57

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"upd_pxlfwd: unsupported depth (%d)\n"
	.size	.L.str.10, 36

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"upd_pxlrev: unsupported depth (%d)\n"
	.size	.L.str.11, 36

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"upd/outbuf"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"upd/scnbuf"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"upd/scnbuf[]"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"upd/bytes"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"upd/xbegin"
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"upd/xend"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%d"
	.size	.L.str.18, 3

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"UNIPRINT-Coding error, wrrtl, state = %d\n"
	.size	.L.str.19, 42

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"YMCK"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"uniprint/gsbuf"
	.size	.L.str.21, 15

	.type	rcsid,@object           # @rcsid
	.section	.rodata,"a",@progbits
	.align	16
rcsid:
	.asciz	"$Revision: 5215 $"
	.size	rcsid, 18

	.type	upd_choice,@object      # @upd_choice
	.align	16
upd_choice:
	.quad	upd_mapper
	.quad	upd_render
	.quad	upd_format
	.size	upd_choice, 24

	.type	upd_flags,@object       # @upd_flags
	.align	16
upd_flags:
	.quad	.L.str.42
	.quad	.L.str.43
	.quad	.L.str.44
	.quad	.L.str.45
	.quad	.L.str.46
	.quad	.L.str.47
	.quad	.L.str.48
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	.L.str.60
	.quad	.L.str.61
	.quad	.L.str.62
	.size	upd_flags, 168

	.type	upd_ints,@object        # @upd_ints
	.align	16
upd_ints:
	.quad	.L.str.63
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	.L.str.74
	.quad	.L.str.75
	.quad	.L.str.76
	.quad	.L.str.77
	.quad	.L.str.78
	.quad	.L.str.79
	.size	upd_ints, 136

	.type	upd_int_a,@object       # @upd_int_a
	.align	16
upd_int_a:
	.quad	.L.str.80
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	.L.str.85
	.quad	.L.str.86
	.quad	.L.str.87
	.quad	.L.str.88
	.quad	.L.str.89
	.quad	.L.str.90
	.quad	.L.str.91
	.quad	.L.str.92
	.quad	.L.str.93
	.size	upd_int_a, 112

	.type	upd_strings,@object     # @upd_strings
	.align	16
upd_strings:
	.quad	.L.str.94
	.quad	.L.str.95
	.quad	.L.str.96
	.quad	.L.str.97
	.quad	.L.str.98
	.quad	.L.str.99
	.quad	.L.str.100
	.quad	.L.str.101
	.quad	.L.str.102
	.quad	.L.str.103
	.quad	.L.str.104
	.size	upd_strings, 88

	.type	upd_string_a,@object    # @upd_string_a
	.align	16
upd_string_a:
	.quad	.L.str.105
	.quad	.L.str.106
	.size	upd_string_a, 16

	.type	upd_float_a,@object     # @upd_float_a
	.align	16
upd_float_a:
	.quad	.L.str.107
	.quad	.L.str.108
	.quad	.L.str.109
	.quad	.L.str.110
	.quad	.L.str.111
	.quad	.L.str.112
	.quad	.L.str.113
	.quad	.L.str.114
	.quad	.L.str.115
	.quad	.L.str.116
	.size	upd_float_a, 80

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"upVersion"
	.size	.L.str.22, 10

	.type	upd_mapper,@object      # @upd_mapper
	.section	.rodata,"a",@progbits
	.align	16
upd_mapper:
	.quad	.L.str.23
	.quad	.L.str.1
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	0
	.size	upd_mapper, 72

	.type	upd_render,@object      # @upd_render
	.align	16
upd_render:
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	0
	.size	upd_render, 40

	.type	upd_format,@object      # @upd_format
	.align	16
upd_format:
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.41
	.quad	0
	.size	upd_format, 72

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"upColorModel"
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"DeviceRGBW"
	.size	.L.str.24, 11

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"DeviceRGB"
	.size	.L.str.25, 10

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"DeviceCMYK"
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"DeviceCMYKgenerate"
	.size	.L.str.27, 19

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"DeviceRGB2CMYK"
	.size	.L.str.28, 15

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"DeviceRGB2CMY_K"
	.size	.L.str.29, 16

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"upRendering"
	.size	.L.str.30, 12

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"ErrorDiffusion"
	.size	.L.str.31, 15

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"FSCMYK32"
	.size	.L.str.32, 9

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"FSCMY_K"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"upOutputFormat"
	.size	.L.str.34, 15

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"SunRaster"
	.size	.L.str.35, 10

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Epson"
	.size	.L.str.36, 6

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"EscP2"
	.size	.L.str.37, 6

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"EscP2XY"
	.size	.L.str.38, 8

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Pcl"
	.size	.L.str.39, 4

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Canon"
	.size	.L.str.40, 6

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"EscNozzleMap"
	.size	.L.str.41, 13

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"upFSReverseDirection"
	.size	.L.str.42, 21

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"upFSFixedDirection"
	.size	.L.str.43, 19

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"upFSProcessWhiteSpace"
	.size	.L.str.44, 22

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"upFSZeroInit"
	.size	.L.str.45, 13

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"upAdjustPageWidthCommand"
	.size	.L.str.46, 25

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"upAdjustPageLengthCommand"
	.size	.L.str.47, 26

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"upAdjustTopMarginCommand"
	.size	.L.str.48, 25

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"upAdjustBottomMarginCommand"
	.size	.L.str.49, 28

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"upAdjustResolutionCommand"
	.size	.L.str.50, 26

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"upAdjustMediaSize"
	.size	.L.str.51, 18

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"upFormatXabsolute"
	.size	.L.str.52, 18

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"upFormatYabsolute"
	.size	.L.str.53, 18

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"upColorModelInitialized"
	.size	.L.str.54, 24

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"upRasterBufferInitialized"
	.size	.L.str.55, 26

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"upRenderingInitialized"
	.size	.L.str.56, 23

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"upOutputFormatInitialized"
	.size	.L.str.57, 26

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"upOutputAborted"
	.size	.L.str.58, 16

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"upErrorDetected"
	.size	.L.str.59, 16

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"upWroteData"
	.size	.L.str.60, 12

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"upYFlip"
	.size	.L.str.61, 8

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"upFSReduceK"
	.size	.L.str.62, 12

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"upOutputWidth"
	.size	.L.str.63, 14

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"upOutputHeight"
	.size	.L.str.64, 15

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"upOutputComponents"
	.size	.L.str.65, 19

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"upOutputBuffers"
	.size	.L.str.66, 16

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"upOutputXStep"
	.size	.L.str.67, 14

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"upOutputXOffset"
	.size	.L.str.68, 16

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"upOutputYStep"
	.size	.L.str.69, 14

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"upOutputYOffset"
	.size	.L.str.70, 16

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"upOutputPins"
	.size	.L.str.71, 13

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"upWeaveXPasses"
	.size	.L.str.72, 15

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"upWeaveYPasses"
	.size	.L.str.73, 15

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"upWeavePasses"
	.size	.L.str.74, 14

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"upWeaveInitialScan"
	.size	.L.str.75, 19

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"upWeaveFinalScan"
	.size	.L.str.76, 17

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"upWeaveYOffset"
	.size	.L.str.77, 15

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"upNozzleMapRowsPerPass"
	.size	.L.str.78, 23

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"upNozzleMapPatternRepeat"
	.size	.L.str.79, 25

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"upColorInfo"
	.size	.L.str.80, 12

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"upComponentBits"
	.size	.L.str.81, 16

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"upComponentShift"
	.size	.L.str.82, 17

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"upOutputComponentOrder"
	.size	.L.str.83, 23

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"upWeaveYFeeds"
	.size	.L.str.84, 14

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"upWeaveXStarts"
	.size	.L.str.85, 15

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"upWeaveInitialYFeeds"
	.size	.L.str.86, 21

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"upWeaveInitialXStarts"
	.size	.L.str.87, 22

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"upWeaveInitialPins"
	.size	.L.str.88, 19

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"upWeaveFinalYFeeds"
	.size	.L.str.89, 19

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"upWeaveFinalXStarts"
	.size	.L.str.90, 20

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"upWeaveFinalPins"
	.size	.L.str.91, 17

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"upNozzleMapRowMask"
	.size	.L.str.92, 19

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"upNozzleMapMaskScanOffset"
	.size	.L.str.93, 26

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"upModel"
	.size	.L.str.94, 8

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"upBeginJobCommand"
	.size	.L.str.95, 18

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"upEndJobCommand"
	.size	.L.str.96, 16

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"upBeginPageCommand"
	.size	.L.str.97, 19

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"upEndPageCommand"
	.size	.L.str.98, 17

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"upAbortCommand"
	.size	.L.str.99, 15

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"upXMoveCommand"
	.size	.L.str.100, 15

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"upXStepCommand"
	.size	.L.str.101, 15

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"upSetLineFeedCommand"
	.size	.L.str.102, 21

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"upYMoveCommand"
	.size	.L.str.103, 15

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"upYStepCommand"
	.size	.L.str.104, 15

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"upSelectComponentCommands"
	.size	.L.str.105, 26

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"upWriteComponentCommands"
	.size	.L.str.106, 25

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"upWhiteTransfer"
	.size	.L.str.107, 16

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"upRedTransfer"
	.size	.L.str.108, 14

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"upGreenTransfer"
	.size	.L.str.109, 16

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"upBlueTransfer"
	.size	.L.str.110, 15

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"upBlackTransfer"
	.size	.L.str.111, 16

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"upCyanTransfer"
	.size	.L.str.112, 15

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"upMagentaTransfer"
	.size	.L.str.113, 18

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"upYellowTransfer"
	.size	.L.str.114, 17

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"upMargins"
	.size	.L.str.115, 10

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"upColorMap"
	.size	.L.str.116, 11

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"OutputFile"
	.size	.L.str.117, 11

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.zero	1
	.size	.L.str.118, 1

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"HWResolution"
	.size	.L.str.119, 13

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	".HWMargins"
	.size	.L.str.120, 11

	.type	sigupd,@object          # @sigupd
	.local	sigupd
	.comm	sigupd,8,8
	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"CALL-REJECTED upd_print_page(0x%05lx,0x%05lx)\n"
	.size	.L.str.121, 47

	.type	.Lswitch.table,@object  # @switch.table
	.section	.rodata,"a",@progbits
	.align	16
.Lswitch.table:
	.long	1                       # 0x1
	.long	4                       # 0x4
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.size	.Lswitch.table, 28


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
