	.text
	.file	"rinkj-screen-eb.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
	.text
	.globl	rinkj_screen_eb_new
	.align	16, 0x90
	.type	rinkj_screen_eb_new,@function
rinkj_screen_eb_new:                    # @rinkj_screen_eb_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$104, %edi
	callq	malloc
	movq	$rinkj_screen_eb_set, (%rax)
	movq	$rinkj_screen_eb_write, 16(%rax)
	movq	$rinkj_screen_eb_init, 8(%rax)
	movl	$0, 24(%rax)
	movq	%rbx, 48(%rax)
	movq	$0, 64(%rax)
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [1.000000e+00,1.000000e+00]
	movups	%xmm0, 72(%rax)
	movabsq	$4294967297, %rcx       # imm = 0x100000001
	movq	%rcx, 92(%rax)
	popq	%rbx
	retq
.Lfunc_end0:
	.size	rinkj_screen_eb_new, .Lfunc_end0-rinkj_screen_eb_new
	.cfi_endproc

	.align	16, 0x90
	.type	rinkj_screen_eb_set,@function
rinkj_screen_eb_set:                    # @rinkj_screen_eb_set
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 64
.Ltmp7:
	.cfi_offset %rbx, -40
.Ltmp8:
	.cfi_offset %r12, -32
.Ltmp9:
	.cfi_offset %r14, -24
.Ltmp10:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	leaq	8(%rsp), %rax
	leaq	16(%rsp), %rdx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	rinkj_config_keyval
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB1_46
# BB#1:                                 # %land.lhs.true.lr.ph
	leaq	8(%rsp), %r14
	leaq	16(%rsp), %r12
	.align	16, 0x90
.LBB1_2:                                # %land.lhs.true
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB1_10
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	(%rbx), %eax
	addl	$-68, %eax
	testq	%rcx, %rcx
	je	.LBB1_11
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_11
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	1(%rbx), %eax
	addl	$-105, %eax
	cmpq	$2, %rcx
	jb	.LBB1_11
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_11
# BB#7:                                 # %if.then.19
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	2(%rbx), %eax
	addl	$-116, %eax
	cmpq	$3, %rcx
	jb	.LBB1_11
# BB#8:                                 # %if.then.19
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_11
# BB#9:                                 # %if.then.29
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	3(%rbx), %eax
	addl	$-104, %eax
	jmp	.LBB1_11
	.align	16, 0x90
.LBB1_10:                               # %cond.false
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB1_11:                               # %cond.end
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	je	.LBB1_12
# BB#34:                                # %land.lhs.true.166
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.4, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB1_42
# BB#35:                                # %cond.true.170
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	(%rbx), %eax
	addl	$-65, %eax
	testq	%rcx, %rcx
	je	.LBB1_43
# BB#36:                                # %cond.true.170
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_43
# BB#37:                                # %if.then.184
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	1(%rbx), %eax
	addl	$-115, %eax
	cmpq	$2, %rcx
	jb	.LBB1_43
# BB#38:                                # %if.then.184
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_43
# BB#39:                                # %if.then.194
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	2(%rbx), %eax
	addl	$-112, %eax
	cmpq	$3, %rcx
	jb	.LBB1_43
# BB#40:                                # %if.then.194
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_43
# BB#41:                                # %if.then.204
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	3(%rbx), %eax
	addl	$-101, %eax
	jmp	.LBB1_43
	.align	16, 0x90
.LBB1_12:                               # %land.lhs.true.45
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.1, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	8(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB1_20
# BB#13:                                # %cond.true.49
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	(%rdi), %eax
	addl	$-49, %eax
	testq	%rcx, %rcx
	je	.LBB1_21
# BB#14:                                # %cond.true.49
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_21
# BB#15:                                # %if.then.63
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	1(%rdi), %dl
	movzbl	%dl, %eax
	cmpq	$2, %rcx
	jb	.LBB1_21
# BB#16:                                # %if.then.63
                                        #   in Loop: Header=BB1_2 Depth=1
	testb	%dl, %dl
	jne	.LBB1_21
# BB#17:                                # %if.then.73
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	2(%rdi), %dl
	movzbl	%dl, %eax
	cmpq	$3, %rcx
	jb	.LBB1_21
# BB#18:                                # %if.then.73
                                        #   in Loop: Header=BB1_2 Depth=1
	testb	%dl, %dl
	jne	.LBB1_21
# BB#19:                                # %if.then.83
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	3(%rdi), %eax
	jmp	.LBB1_21
	.align	16, 0x90
.LBB1_42:                               # %cond.false.213
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB1_43:                               # %cond.end.215
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_45
# BB#44:                                # %if.then.218
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	8(%rsp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movl	%eax, 92(%r15)
	jmp	.LBB1_45
.LBB1_20:                               # %cond.false.92
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.1, %esi
	callq	strcmp
.LBB1_21:                               # %cond.end.94
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	je	.LBB1_22
# BB#23:                                # %land.lhs.true.103
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.2, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	8(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB1_31
# BB#24:                                # %cond.true.107
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	(%rdi), %eax
	addl	$-50, %eax
	testq	%rcx, %rcx
	je	.LBB1_32
# BB#25:                                # %cond.true.107
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_32
# BB#26:                                # %if.then.121
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	1(%rdi), %dl
	movzbl	%dl, %eax
	cmpq	$2, %rcx
	jb	.LBB1_32
# BB#27:                                # %if.then.121
                                        #   in Loop: Header=BB1_2 Depth=1
	testb	%dl, %dl
	jne	.LBB1_32
# BB#28:                                # %if.then.131
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	2(%rdi), %dl
	movzbl	%dl, %eax
	cmpq	$3, %rcx
	jb	.LBB1_32
# BB#29:                                # %if.then.131
                                        #   in Loop: Header=BB1_2 Depth=1
	testb	%dl, %dl
	jne	.LBB1_32
# BB#30:                                # %if.then.141
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	3(%rdi), %eax
	jmp	.LBB1_32
.LBB1_22:                               # %if.then.97
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$1, 96(%r15)
	jmp	.LBB1_45
.LBB1_31:                               # %cond.false.150
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.2, %esi
	callq	strcmp
.LBB1_32:                               # %cond.end.152
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_45
# BB#33:                                # %if.then.155
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$2, 96(%r15)
	movq	48(%r15), %rdi
	movl	$.L.str.3, %esi
	movl	$2, %edx
	callq	rinkj_device_set_param_int
	.align	16, 0x90
.LBB1_45:                               # %if.end.221
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%rbx, %rdi
	callq	free
	movq	8(%rsp), %rdi
	callq	free
	movq	16(%rsp), %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	rinkj_config_keyval
	movq	%rax, %rbx
	testq	%rbx, %rbx
	jne	.LBB1_2
.LBB1_46:                               # %for.end
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	rinkj_screen_eb_set, .Lfunc_end1-rinkj_screen_eb_set
	.cfi_endproc

	.align	16, 0x90
	.type	rinkj_screen_eb_write,@function
rinkj_screen_eb_write:                  # @rinkj_screen_eb_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp14:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp15:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp17:
	.cfi_def_cfa_offset 224
.Ltmp18:
	.cfi_offset %rbx, -56
.Ltmp19:
	.cfi_offset %r12, -48
.Ltmp20:
	.cfi_offset %r13, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rdi, %r12
	movq	%r12, 40(%rsp)          # 8-byte Spill
	movl	44(%r12), %ecx
	movslq	32(%r12), %r14
	movaps	.Lrinkj_screen_eb_write.cmyk_permutation(%rip), %xmm0
	movaps	%xmm0, 144(%rsp)
	movq	.Lrinkj_screen_eb_write.ccmmyk_permutation+16(%rip), %rax
	movq	%rax, 128(%rsp)
	movaps	.Lrinkj_screen_eb_write.ccmmyk_permutation(%rip), %xmm0
	movaps	%xmm0, 112(%rsp)
	movups	.Lrinkj_screen_eb_write.ccmmykk_permutation+12(%rip), %xmm0
	movups	%xmm0, 92(%rsp)
	movaps	.Lrinkj_screen_eb_write.ccmmykk_permutation(%rip), %xmm0
	movaps	%xmm0, 80(%rsp)
	testq	%rbp, %rbp
	je	.LBB2_1
# BB#2:                                 # %if.end
	cmpl	$7, %ecx
	je	.LBB2_7
# BB#3:                                 # %if.end
	cmpl	$6, %ecx
	jne	.LBB2_4
# BB#6:                                 # %if.then.5
	leaq	112(%rsp), %rax
	jmp	.LBB2_8
.LBB2_1:                                # %if.then
	movq	48(%r12), %rdi
	xorl	%esi, %esi
	callq	rinkj_device_write
	movl	%eax, %ebx
	movq	56(%r12), %rdi
	callq	even_better_free
	movq	%r12, %rdi
	callq	free
	movq	%rbx, %rax
	jmp	.LBB2_48
.LBB2_7:                                # %if.then.9
	leaq	80(%rsp), %rax
	jmp	.LBB2_8
.LBB2_4:                                # %if.end
	movl	$-1, %eax
	cmpl	$4, %ecx
	jne	.LBB2_48
# BB#5:                                 # %if.then.3
	leaq	144(%rsp), %rax
.LBB2_8:                                # %for.body.lr.ph
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movslq	%ecx, %r15
	shlq	$3, %r15
	movl	96(%r12), %ebx
	imull	%r14d, %ebx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	%r15, %rdi
	callq	malloc
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	%r15, %rdi
	callq	malloc
	movq	%rax, %r13
	movq	%r15, %rdi
	callq	malloc
	movq	%rax, %rdx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	addl	$7, %ebx
	sarl	$3, %ebx
	movslq	%ebx, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%rdx, %r15
	callq	malloc
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	%rax, (%rcx,%rbx,8)
	movq	%r14, %rdi
	callq	malloc
	movq	%r15, %rdx
	movq	%rax, (%r13,%rbx,8)
	movq	64(%rsp), %rax          # 8-byte Reload
	movslq	(%rax,%rbx,4), %rax
	movq	(%rbp,%rax,8), %rax
	movq	%rax, (%rdx,%rbx,8)
	incq	%rbx
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	%ebx, %eax
	jne	.LBB2_9
# BB#10:                                # %for.cond.37.preheader
	movq	64(%rsp), %rbx          # 8-byte Reload
	movq	%r13, %rbp
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	leaq	-3(%r14), %r13
	leaq	-7(%r14), %r15
	movl	%r14d, %eax
	andl	$-8, %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movl	%r14d, %eax
	andl	$-4, %eax
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movl	88(%r12), %edi
	leal	-1(%r14), %ecx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	leal	-1(%r14), %ecx
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_11:                               # %land.rhs
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_13 Depth 2
                                        #       Child Loop BB2_17 Depth 3
                                        #       Child Loop BB2_25 Depth 3
                                        #       Child Loop BB2_30 Depth 3
                                        #       Child Loop BB2_38 Depth 3
	movl	40(%r12), %ecx
	cmpl	%ecx, %edi
	movq	%rbp, %rsi
	jge	.LBB2_45
# BB#12:                                # %for.body.47.lr.ph
                                        #   in Loop: Header=BB2_11 Depth=1
	movq	56(%r12), %rdi
	movq	%rsi, %rbp
	callq	even_better_line
	movq	%rbp, %rdi
	xorl	%r10d, %r10d
	movq	56(%rsp), %r9           # 8-byte Reload
	movq	72(%rsp), %rsi          # 8-byte Reload
	.align	16, 0x90
.LBB2_13:                               # %for.body.47
                                        #   Parent Loop BB2_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_17 Depth 3
                                        #       Child Loop BB2_25 Depth 3
                                        #       Child Loop BB2_30 Depth 3
                                        #       Child Loop BB2_38 Depth 3
	movslq	(%rbx,%r10,4), %rax
	movq	(%rsi,%rax,8), %r11
	movq	(%rdi,%r10,8), %rcx
	movl	96(%r12), %eax
	cmpl	$2, %eax
	jne	.LBB2_14
# BB#28:                                # %for.cond.58.preheader
                                        #   in Loop: Header=BB2_13 Depth=2
	xorl	%r8d, %r8d
	cmpl	$4, %r14d
	jl	.LBB2_32
# BB#29:                                # %for.body.61.preheader
                                        #   in Loop: Header=BB2_13 Depth=2
	movq	%r9, %rsi
	movq	%r12, %r9
	movq	%r14, %r12
	movq	%rbx, %r14
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_30:                               # %for.body.61
                                        #   Parent Loop BB2_11 Depth=1
                                        #     Parent Loop BB2_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%rcx,%rax), %dl
	movb	1(%rcx,%rax), %bl
	shlb	$6, %dl
	shlb	$4, %bl
	orb	%dl, %bl
	movb	2(%rcx,%rax), %dl
	shlb	$2, %dl
	orb	%bl, %dl
	orb	3(%rcx,%rax), %dl
	movl	%eax, %ebp
	sarl	$2, %ebp
	movslq	%ebp, %rbp
	movb	%dl, (%r11,%rbp)
	addq	$4, %rax
	cmpq	%r13, %rax
	jl	.LBB2_30
# BB#31:                                #   in Loop: Header=BB2_13 Depth=2
	movl	48(%rsp), %r8d          # 4-byte Reload
	movq	%r14, %rbx
	movq	%r12, %r14
	movq	%r9, %r12
	movq	%rsi, %r9
	movq	72(%rsp), %rsi          # 8-byte Reload
.LBB2_32:                               # %for.end.87
                                        #   in Loop: Header=BB2_13 Depth=2
	cmpl	%r8d, %r14d
	jle	.LBB2_42
# BB#33:                                # %for.cond.91.preheader
                                        #   in Loop: Header=BB2_13 Depth=2
	movl	%r14d, %eax
	subl	%r8d, %eax
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jle	.LBB2_40
# BB#34:                                # %for.body.95.lr.ph
                                        #   in Loop: Header=BB2_13 Depth=2
	movslq	%r8d, %r9
	movl	%r14d, %eax
	subl	%r8d, %eax
	testb	$1, %al
	movl	$0, %esi
	je	.LBB2_36
# BB#35:                                # %for.body.95.prol
                                        #   in Loop: Header=BB2_13 Depth=2
	movzbl	(%rcx,%r9), %ebp
	shll	$6, %ebp
	movl	$1, %esi
.LBB2_36:                               # %for.body.95.lr.ph.split
                                        #   in Loop: Header=BB2_13 Depth=2
	cmpl	%r8d, 28(%rsp)          # 4-byte Folded Reload
	je	.LBB2_39
# BB#37:                                # %for.body.95.lr.ph.split.split
                                        #   in Loop: Header=BB2_13 Depth=2
	movl	%r14d, %r12d
	subl	%r8d, %r12d
	subl	%esi, %r12d
	movl	$2, %eax
	subl	%esi, %eax
	addl	%eax, %eax
	movl	$3, %edx
	subl	%esi, %edx
	addl	%edx, %edx
	addq	%rsi, %r9
	leaq	1(%rcx,%r9), %rsi
	.align	16, 0x90
.LBB2_38:                               # %for.body.95
                                        #   Parent Loop BB2_11 Depth=1
                                        #     Parent Loop BB2_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	-1(%rsi), %edi
	movb	%dl, %cl
	shll	%cl, %edi
	orl	%ebp, %edi
	movzbl	(%rsi), %ebx
	movb	%al, %cl
	shll	%cl, %ebx
	movzbl	%dil, %ebp
	orl	%ebx, %ebp
	addl	$-4, %eax
	addl	$-4, %edx
	addq	$2, %rsi
	addl	$-2, %r12d
	jne	.LBB2_38
.LBB2_39:                               # %for.cond.91.for.end.108_crit_edge
                                        #   in Loop: Header=BB2_13 Depth=2
	movq	40(%rsp), %r12          # 8-byte Reload
	movq	56(%rsp), %r9           # 8-byte Reload
	movq	72(%rsp), %rsi          # 8-byte Reload
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	64(%rsp), %rbx          # 8-byte Reload
.LBB2_40:                               # %for.end.108
                                        #   in Loop: Header=BB2_13 Depth=2
	sarl	$2, %r8d
	jmp	.LBB2_41
	.align	16, 0x90
.LBB2_14:                               # %for.body.47
                                        #   in Loop: Header=BB2_13 Depth=2
	cmpl	$1, %eax
	jne	.LBB2_42
# BB#15:                                # %for.cond.118.preheader
                                        #   in Loop: Header=BB2_13 Depth=2
	xorl	%r8d, %r8d
	cmpl	$8, %r14d
	jl	.LBB2_19
# BB#16:                                # %for.body.122.preheader
                                        #   in Loop: Header=BB2_13 Depth=2
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_17:                               # %for.body.122
                                        #   Parent Loop BB2_11 Depth=1
                                        #     Parent Loop BB2_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%rcx,%rax), %dl
	movb	1(%rcx,%rax), %bl
	shlb	$7, %dl
	shlb	$6, %bl
	orb	%dl, %bl
	movb	2(%rcx,%rax), %dl
	shlb	$5, %dl
	orb	%bl, %dl
	movb	3(%rcx,%rax), %bl
	shlb	$4, %bl
	orb	%dl, %bl
	movb	4(%rcx,%rax), %dl
	shlb	$3, %dl
	orb	%bl, %dl
	movb	5(%rcx,%rax), %bl
	shlb	$2, %bl
	orb	%dl, %bl
	movb	6(%rcx,%rax), %dl
	addb	%dl, %dl
	orb	%bl, %dl
	orb	7(%rcx,%rax), %dl
	movl	%eax, %ebp
	sarl	$3, %ebp
	movslq	%ebp, %rbp
	movb	%dl, (%r11,%rbp)
	addq	$8, %rax
	cmpq	%r15, %rax
	jl	.LBB2_17
# BB#18:                                #   in Loop: Header=BB2_13 Depth=2
	movl	24(%rsp), %r8d          # 4-byte Reload
	movq	64(%rsp), %rbx          # 8-byte Reload
.LBB2_19:                               # %for.end.175
                                        #   in Loop: Header=BB2_13 Depth=2
	cmpl	%r8d, %r14d
	jle	.LBB2_42
# BB#20:                                # %for.cond.181.preheader
                                        #   in Loop: Header=BB2_13 Depth=2
	movl	%r14d, %eax
	subl	%r8d, %eax
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jle	.LBB2_27
# BB#21:                                # %for.body.185.lr.ph
                                        #   in Loop: Header=BB2_13 Depth=2
	movslq	%r8d, %rax
	movl	%r14d, %edx
	subl	%r8d, %edx
	testb	$1, %dl
	movl	$0, %edx
	je	.LBB2_23
# BB#22:                                # %for.body.185.prol
                                        #   in Loop: Header=BB2_13 Depth=2
	movzbl	(%rcx,%rax), %ebp
	shll	$7, %ebp
	movl	$1, %edx
.LBB2_23:                               # %for.body.185.lr.ph.split
                                        #   in Loop: Header=BB2_13 Depth=2
	cmpl	%r8d, 20(%rsp)          # 4-byte Folded Reload
	je	.LBB2_26
# BB#24:                                # %for.body.185.lr.ph.split.split
                                        #   in Loop: Header=BB2_13 Depth=2
	movl	%r14d, %r12d
	subl	%r8d, %r12d
	subl	%edx, %r12d
	movl	$6, %r9d
	subq	%rdx, %r9
	addq	%rdx, %rax
	leaq	1(%rcx,%rax), %rsi
	xorl	%edx, %edx
	.align	16, 0x90
.LBB2_25:                               # %for.body.185
                                        #   Parent Loop BB2_11 Depth=1
                                        #     Parent Loop BB2_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	-1(%rsi), %edi
	leaq	(%r9,%rdx), %rax
	leal	1(%rax), %ecx
	shll	%cl, %edi
	orl	%ebp, %edi
	movzbl	(%rsi), %ebx
	movb	%al, %cl
	shll	%cl, %ebx
	movzbl	%dil, %ebp
	orl	%ebx, %ebp
	addq	$-2, %rdx
	addq	$2, %rsi
	addl	$-2, %r12d
	jne	.LBB2_25
.LBB2_26:                               # %for.cond.181.for.end.197_crit_edge
                                        #   in Loop: Header=BB2_13 Depth=2
	movq	40(%rsp), %r12          # 8-byte Reload
	movq	56(%rsp), %r9           # 8-byte Reload
	movq	72(%rsp), %rsi          # 8-byte Reload
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	64(%rsp), %rbx          # 8-byte Reload
.LBB2_27:                               # %for.end.197
                                        #   in Loop: Header=BB2_13 Depth=2
	sarl	$3, %r8d
.LBB2_41:                               # %if.end.203
                                        #   in Loop: Header=BB2_13 Depth=2
	movslq	%r8d, %rax
	movb	%bpl, (%r11,%rax)
.LBB2_42:                               # %if.end.203
                                        #   in Loop: Header=BB2_13 Depth=2
	incq	%r10
	cmpl	%r9d, %r10d
	jne	.LBB2_13
# BB#43:                                # %for.end.206
                                        #   in Loop: Header=BB2_11 Depth=1
	movq	%rdi, %rbp
	movq	%r9, 56(%rsp)           # 8-byte Spill
	movq	48(%r12), %rdi
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	callq	rinkj_device_write
	movl	88(%r12), %edi
	addl	36(%r12), %edi
	movl	%edi, 88(%r12)
	testl	%eax, %eax
	movq	8(%rsp), %rdx           # 8-byte Reload
	jns	.LBB2_11
# BB#44:                                # %for.end.206.for.end.212_crit_edge
	movl	40(%r12), %ecx
	movq	%rbp, %rsi
.LBB2_45:                               # %for.body.219.lr.ph
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	%rdx, %r13
	subl	%ecx, %edi
	movl	%edi, 88(%r12)
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r14d
	xorl	%ebp, %ebp
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	%rsi, %r15
	.align	16, 0x90
.LBB2_46:                               # %for.body.219
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax,%rbp,8), %rdi
	movq	%rax, %rbx
	callq	free
	movq	(%r15,%rbp,8), %rdi
	callq	free
	movq	%rbx, %rax
	incq	%rbp
	cmpl	%ebp, %r14d
	jne	.LBB2_46
# BB#47:                                # %for.end.226
	movq	%rax, %rdi
	callq	free
	movq	%r15, %rdi
	callq	free
	movq	%r13, %rdi
	callq	free
	movq	64(%rsp), %rax          # 8-byte Reload
.LBB2_48:                               # %cleanup
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	rinkj_screen_eb_write, .Lfunc_end2-rinkj_screen_eb_write
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	rinkj_screen_eb_init,@function
rinkj_screen_eb_init:                   # @rinkj_screen_eb_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp27:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp28:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
.Ltmp30:
	.cfi_def_cfa_offset 256
.Ltmp31:
	.cfi_offset %rbx, -56
.Ltmp32:
	.cfi_offset %r12, -48
.Ltmp33:
	.cfi_offset %r13, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	8(%r14), %ebp
	movaps	.Lrinkj_screen_eb_init.strengths4(%rip), %xmm0
	movaps	%xmm0, 96(%rsp)
	movq	.Lrinkj_screen_eb_init.strengths6+16(%rip), %rax
	movq	%rax, 80(%rsp)
	movaps	.Lrinkj_screen_eb_init.strengths6(%rip), %xmm0
	movaps	%xmm0, 64(%rsp)
	movups	.Lrinkj_screen_eb_init.strengths7+12(%rip), %xmm0
	movups	%xmm0, 44(%rsp)
	movaps	.Lrinkj_screen_eb_init.strengths7(%rip), %xmm0
	movaps	%xmm0, 32(%rsp)
	movl	(%r14), %r13d
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%r13d, %xmm0
	mulsd	72(%rbx), %xmm0
	addsd	.LCPI3_0(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %r15d
	movl	%r15d, 8(%rsp)
	movl	4(%r14), %r12d
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%r12d, %xmm0
	mulsd	80(%rbx), %xmm0
	addsd	.LCPI3_0(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	movl	%eax, 12(%rsp)
	movl	%ebp, 16(%rsp)
	movq	16(%r14), %rax
	movq	%rax, 24(%rsp)
	sarl	%r12d
	movl	%r12d, 88(%rbx)
	cmpl	$7, %ebp
	je	.LBB3_5
# BB#1:                                 # %entry
	cmpl	$6, %ebp
	jne	.LBB3_2
# BB#4:                                 # %if.then.16
	leaq	64(%rsp), %rax
	jmp	.LBB3_6
.LBB3_5:                                # %if.then.21
	leaq	32(%rsp), %rax
	jmp	.LBB3_6
.LBB3_2:                                # %entry
	cmpl	$4, %ebp
                                        # implicit-def: RAX
	jne	.LBB3_6
# BB#3:                                 # %if.then
	leaq	96(%rsp), %rax
.LBB3_6:                                # %if.end.24
	movl	%r13d, 112(%rsp)
	movl	%r15d, 116(%rsp)
	movb	96(%rbx), %cl
	movl	$1, %edx
	shll	%cl, %edx
	movl	%edx, 124(%rsp)
	movq	64(%rbx), %rcx
	movq	%rcx, 128(%rsp)
	movl	%ebp, 120(%rsp)
	movl	92(%rbx), %ecx
	movl	%ecx, 144(%rsp)
	movq	$0, 136(%rsp)
	movq	%rax, 152(%rsp)
	movl	$0, 160(%rsp)
	movl	$1, 164(%rsp)
	movl	$0, 168(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 192(%rsp)
	leaq	112(%rsp), %rdi
	callq	even_better_new
	movq	%rax, 56(%rbx)
	movl	%r15d, 32(%rbx)
	movl	4(%r14), %eax
	movl	%eax, 36(%rbx)
	movl	4(%rsp), %eax           # 4-byte Reload
	movl	%eax, 40(%rbx)
	movl	%ebp, 44(%rbx)
	movq	48(%rbx), %rdi
	leaq	8(%rsp), %rsi
	callq	rinkj_device_init
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	rinkj_screen_eb_init, .Lfunc_end3-rinkj_screen_eb_init
	.cfi_endproc

	.globl	rinkj_screen_eb_set_scale
	.align	16, 0x90
	.type	rinkj_screen_eb_set_scale,@function
rinkj_screen_eb_set_scale:              # @rinkj_screen_eb_set_scale
	.cfi_startproc
# BB#0:                                 # %entry
	movsd	%xmm0, 72(%rdi)
	movsd	%xmm1, 80(%rdi)
	retq
.Lfunc_end4:
	.size	rinkj_screen_eb_set_scale, .Lfunc_end4-rinkj_screen_eb_set_scale
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
.LCPI5_1:
	.quad	4571171282956062736     # double 0.0039215686274509803
.LCPI5_2:
	.quad	4715268809856909312     # double 16777216
.LCPI5_3:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	rinkj_screen_eb_set_gamma
	.align	16, 0x90
	.type	rinkj_screen_eb_set_gamma,@function
rinkj_screen_eb_set_gamma:              # @rinkj_screen_eb_set_gamma
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp39:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp40:
	.cfi_def_cfa_offset 48
.Ltmp41:
	.cfi_offset %rbx, -32
.Ltmp42:
	.cfi_offset %r14, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %r14
	cmpl	$15, %ebp
	jg	.LBB5_5
# BB#1:                                 # %if.end
	movsd	%xmm1, (%rsp)           # 8-byte Spill
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	cmpq	$0, 64(%r14)
	jne	.LBB5_3
# BB#2:                                 # %if.then.2
	movl	$128, %edi
	callq	malloc
	movq	%rax, 64(%r14)
.LBB5_3:                                # %if.end.4
	movl	$1024, %edi             # imm = 0x400
	callq	malloc
	movslq	%ebp, %rbp
	movq	64(%r14), %rcx
	movq	%rax, (%rcx,%rbp,8)
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	subsd	(%rsp), %xmm0           # 8-byte Folded Reload
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB5_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	mulsd	.LCPI5_1(%rip), %xmm0
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI5_0(%rip), %xmm1   # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	(%rsp), %xmm1           # 8-byte Folded Reload
	addsd	%xmm1, %xmm0
	mulsd	.LCPI5_2(%rip), %xmm0
	addsd	.LCPI5_3(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movq	64(%r14), %rcx
	movq	(%rcx,%rbp,8), %rcx
	movl	%eax, (%rcx,%rbx,4)
	incq	%rbx
	cmpq	$256, %rbx              # imm = 0x100
	jne	.LBB5_4
.LBB5_5:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	rinkj_screen_eb_set_gamma, .Lfunc_end5-rinkj_screen_eb_set_gamma
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI6_0:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
.LCPI6_1:
	.quad	4715268809856909312     # double 1.677722e+07
	.quad	4715268809856909312     # double 1.677722e+07
.LCPI6_2:
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4602678819172646912     # double 5.000000e-01
	.text
	.globl	rinkj_screen_eb_set_lut
	.align	16, 0x90
	.type	rinkj_screen_eb_set_lut,@function
rinkj_screen_eb_set_lut:                # @rinkj_screen_eb_set_lut
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp46:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 40
	subq	$56, %rsp
.Ltmp48:
	.cfi_def_cfa_offset 96
.Ltmp49:
	.cfi_offset %rbx, -40
.Ltmp50:
	.cfi_offset %r14, -32
.Ltmp51:
	.cfi_offset %r15, -24
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movl	%esi, %ebp
	movq	%rdi, %r14
	cmpl	$15, %ebp
	jg	.LBB6_5
# BB#1:                                 # %if.end
	cmpq	$0, 64(%r14)
	jne	.LBB6_3
# BB#2:                                 # %if.then.3
	movl	$128, %edi
	callq	malloc
	movq	%rax, 64(%r14)
.LBB6_3:                                # %if.end.5
	movl	$1024, %edi             # imm = 0x400
	callq	malloc
	movslq	%ebp, %rcx
	movq	64(%r14), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	64(%r14), %rax
	movq	(%rax,%rcx,8), %rbp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB6_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movupd	(%r15,%rbx,8), %xmm0
	movapd	.LCPI6_0(%rip), %xmm1   # xmm1 = [1.000000e+00,1.000000e+00]
	subpd	%xmm0, %xmm1
	movapd	.LCPI6_1(%rip), %xmm0   # xmm0 = [1.677722e+07,1.677722e+07]
	mulpd	%xmm0, %xmm1
	movapd	.LCPI6_2(%rip), %xmm0   # xmm0 = [5.000000e-01,5.000000e-01]
	addpd	%xmm0, %xmm1
	movapd	%xmm1, 32(%rsp)         # 16-byte Spill
	movapd	%xmm1, %xmm0
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	callq	floor
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movaps	32(%rsp), %xmm0         # 16-byte Reload
	callq	floor
	cvttsd2si	%xmm0, %rax
	movd	%rax, %xmm0
	cvttsd2si	16(%rsp), %rax  # 8-byte Folded Reload
	movd	%rax, %xmm1
	punpcklqdq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rbp,%rbx,4)
	movupd	16(%r15,%rbx,8), %xmm0
	movapd	.LCPI6_0(%rip), %xmm1   # xmm1 = [1.000000e+00,1.000000e+00]
	subpd	%xmm0, %xmm1
	mulpd	.LCPI6_1(%rip), %xmm1
	addpd	.LCPI6_2(%rip), %xmm1
	movapd	%xmm1, 32(%rsp)         # 16-byte Spill
	movapd	%xmm1, %xmm0
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	callq	floor
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movaps	32(%rsp), %xmm0         # 16-byte Reload
	callq	floor
	cvttsd2si	%xmm0, %rax
	movd	%rax, %xmm0
	cvttsd2si	16(%rsp), %rax  # 8-byte Folded Reload
	movd	%rax, %xmm1
	punpcklqdq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, 8(%rbp,%rbx,4)
	addq	$4, %rbx
	cmpq	$256, %rbx              # imm = 0x100
	jne	.LBB6_4
.LBB6_5:                                # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	rinkj_screen_eb_set_lut, .Lfunc_end6-rinkj_screen_eb_set_lut
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Dither"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"1"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"2"
	.size	.L.str.2, 2

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"BitsPerSample"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Aspect"
	.size	.L.str.4, 7

	.type	.Lrinkj_screen_eb_write.cmyk_permutation,@object # @rinkj_screen_eb_write.cmyk_permutation
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.Lrinkj_screen_eb_write.cmyk_permutation:
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.size	.Lrinkj_screen_eb_write.cmyk_permutation, 16

	.type	.Lrinkj_screen_eb_write.ccmmyk_permutation,@object # @rinkj_screen_eb_write.ccmmyk_permutation
	.section	.rodata,"a",@progbits
	.align	16
.Lrinkj_screen_eb_write.ccmmyk_permutation:
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	2                       # 0x2
	.size	.Lrinkj_screen_eb_write.ccmmyk_permutation, 24

	.type	.Lrinkj_screen_eb_write.ccmmykk_permutation,@object # @rinkj_screen_eb_write.ccmmykk_permutation
	.align	16
.Lrinkj_screen_eb_write.ccmmykk_permutation:
	.long	3                       # 0x3
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	2                       # 0x2
	.size	.Lrinkj_screen_eb_write.ccmmykk_permutation, 28

	.type	.Lrinkj_screen_eb_init.strengths4,@object # @rinkj_screen_eb_init.strengths4
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.Lrinkj_screen_eb_init.strengths4:
	.long	128                     # 0x80
	.long	50                      # 0x32
	.long	50                      # 0x32
	.long	10                      # 0xa
	.size	.Lrinkj_screen_eb_init.strengths4, 16

	.type	.Lrinkj_screen_eb_init.strengths6,@object # @rinkj_screen_eb_init.strengths6
	.section	.rodata,"a",@progbits
	.align	16
.Lrinkj_screen_eb_init.strengths6:
	.long	128                     # 0x80
	.long	50                      # 0x32
	.long	50                      # 0x32
	.long	25                      # 0x19
	.long	25                      # 0x19
	.long	10                      # 0xa
	.size	.Lrinkj_screen_eb_init.strengths6, 24

	.type	.Lrinkj_screen_eb_init.strengths7,@object # @rinkj_screen_eb_init.strengths7
	.align	16
.Lrinkj_screen_eb_init.strengths7:
	.long	128                     # 0x80
	.long	80                      # 0x50
	.long	50                      # 0x32
	.long	50                      # 0x32
	.long	25                      # 0x19
	.long	26                      # 0x1a
	.long	10                      # 0xa
	.size	.Lrinkj_screen_eb_init.strengths7, 28


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
