	.text
	.file	"imainarg.bc"
	.globl	gs_main_init_with_args
	.align	16, 0x90
	.type	gs_main_init_with_args,@function
gs_main_init_with_args:                 # @gs_main_init_with_args
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
	subq	$2552, %rsp             # imm = 0x9F8
.Ltmp6:
	.cfi_def_cfa_offset 2608
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
	movq	%rdx, %r14
	movl	%esi, %edx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	movq	(%r15), %rax
	movq	144(%r15), %r9
	movq	%rax, (%rsp)
	leaq	40(%rsp), %rdi
	movl	$gs_main_arg_fopen, %ecx
	movq	%r14, %rsi
	movq	%r15, %r8
	callq	arg_init
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$25, %r8d
	movq	%r15, %rdi
	callq	gs_main_init0
	movl	%eax, 36(%rsp)
	testl	%eax, %eax
	js	.LBB0_45
# BB#1:                                 # %if.end
	movl	$0, 32(%rsp)
	leaq	32(%rsp), %rdx
	movl	$.L.str, %edi
	xorl	%esi, %esi
	callq	gp_getenv
	testl	%eax, %eax
	jns	.LBB0_3
# BB#2:                                 # %if.then.4
	movq	(%r15), %rdi
	movl	32(%rsp), %esi
	movl	$.L.str, %edx
	callq	*64(%rdi)
	movq	%rax, %rbp
	leaq	32(%rsp), %rdx
	movl	$.L.str, %edi
	movq	%rbp, %rsi
	callq	gp_getenv
	movq	%rbp, 80(%r15)
.LBB0_3:                                # %if.end.9
	movq	gs_lib_default_path(%rip), %rax
	movq	%rax, 88(%r15)
	movq	%r15, %rdi
	callq	gs_main_set_lib_paths
	movl	%eax, 36(%rsp)
	testl	%eax, %eax
	js	.LBB0_45
# BB#4:                                 # %for.cond.preheader
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpl	$2, %eax
	jl	.LBB0_16
# BB#5:                                 # %for.body.lr.ph
	movq	24(%rsp), %rax          # 8-byte Reload
	movslq	%eax, %rbp
	movl	$1, %r12d
	leaq	40(%rsp), %r13
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB0_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14,%r12,8), %rsi
	movl	$.L.str.1, %edx
	movq	%r13, %rdi
	callq	arg_strcmp
	testl	%eax, %eax
	je	.LBB0_16
# BB#7:                                 # %if.else
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	(%r14,%r12,8), %rsi
	movl	$.L.str.2, %edx
	movq	%r13, %rdi
	callq	arg_strcmp
	testl	%eax, %eax
	je	.LBB0_8
# BB#9:                                 # %if.else.23
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	(%r14,%r12,8), %rsi
	movl	$.L.str.3, %edx
	movq	%r13, %rdi
	callq	arg_strcmp
	testl	%eax, %eax
	je	.LBB0_10
# BB#11:                                # %if.else.30
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	(%r14,%r12,8), %rsi
	movl	$.L.str.4, %edx
	movq	%r13, %rdi
	callq	arg_strcmp
	testl	%eax, %eax
	jne	.LBB0_14
# BB#12:                                # %if.then.35
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	(%r15), %rdi
	xorl	%esi, %esi
	movq	gs_version(%rip), %rdx
	callq	printf_program_ident
	movq	(%r15), %rdi
	movl	$.L.str.5, %esi
	movl	$.L.str.6, %edx
	xorl	%eax, %eax
	callq	outprintf
	jmp	.LBB0_13
	.align	16, 0x90
.LBB0_8:                                # %if.then.22
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	%r15, %rdi
	callq	print_help
	jmp	.LBB0_13
	.align	16, 0x90
.LBB0_10:                               # %if.then.28
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	(%r15), %rdi
	callq	gs_debug_flags_list
.LBB0_13:                               # %for.inc
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$1, %ebx
.LBB0_14:                               # %for.inc
                                        #   in Loop: Header=BB0_6 Depth=1
	incq	%r12
	cmpq	%rbp, %r12
	jl	.LBB0_6
# BB#15:                                # %for.end
	movl	$-110, %eax
	testl	%ebx, %ebx
	jne	.LBB0_45
.LBB0_16:                               # %cleanup.cont
	movl	$1, 40(%r15)
	movl	$0, 32(%rsp)
	leaq	32(%rsp), %rdx
	movl	$.L.str.7, %edi
	xorl	%esi, %esi
	callq	gp_getenv
	testl	%eax, %eax
	jns	.LBB0_18
# BB#17:                                # %if.then.50
	movq	(%r15), %rdi
	movl	32(%rsp), %esi
	movl	$.L.str.7, %edx
	callq	*64(%rdi)
	movq	%rax, %rbp
	leaq	32(%rsp), %rdx
	movl	$.L.str.7, %edi
	movq	%rbp, %rsi
	callq	gp_getenv
	movq	(%r15), %r8
	leaq	40(%rsp), %rdi
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	%rbp, %rsi
	callq	arg_push_decoded_memory_string
	testl	%eax, %eax
	je	.LBB0_18
# BB#46:                                # %cleanup.66
	movl	$-100, %eax
	jmp	.LBB0_45
.LBB0_18:                               # %cleanup.66.thread
	movq	(%r15), %rdx
	leaq	40(%rsp), %rdi
	leaq	36(%rsp), %rsi
	callq	arg_next
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB0_27
# BB#19:                                # %while.body.lr.ph
	leaq	8(%r14), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	24(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	leaq	40(%rsp), %r12
	leaq	36(%rsp), %r13
	.align	16, 0x90
.LBB0_20:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_38 Depth 2
	movzbl	(%rbp), %eax
	movq	%r15, %rdi
	cmpl	$45, %eax
	jne	.LBB0_40
# BB#21:                                # %sw.bb
                                        #   in Loop: Header=BB0_20 Depth=1
	movq	%rbp, %rsi
	movq	%r12, %rdx
	callq	swproc
	movl	%eax, 36(%rsp)
	testl	%eax, %eax
	js	.LBB0_45
# BB#22:                                # %if.end.77
                                        #   in Loop: Header=BB0_20 Depth=1
	jle	.LBB0_24
# BB#23:                                # %if.then.80
                                        #   in Loop: Header=BB0_20 Depth=1
	movq	(%r15), %rdi
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdx
	callq	outprintf
.LBB0_24:                               # %if.end.83
                                        #   in Loop: Header=BB0_20 Depth=1
	cmpb	$0, gs_debug+58(%rip)
	je	.LBB0_26
# BB#25:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_20 Depth=1
	movzbl	1(%rbp), %eax
	cmpl	$90, %eax
	jne	.LBB0_26
# BB#37:                                # %if.then.90
                                        #   in Loop: Header=BB0_20 Depth=1
	movq	(%r15), %rdi
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	movq	%r15, %rdx
	callq	errprintf
	movq	(%r15), %rdi
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpl	$2, %eax
	movl	12(%rsp), %ebp          # 4-byte Reload
	movq	16(%rsp), %rbx          # 8-byte Reload
	jl	.LBB0_39
	.align	16, 0x90
.LBB0_38:                               # %for.body.97
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx), %rdx
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	callq	errprintf
	movq	(%r15), %rdi
	addq	$8, %rbx
	decl	%ebp
	jne	.LBB0_38
.LBB0_39:                               # %for.end.104
                                        #   in Loop: Header=BB0_20 Depth=1
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	callq	errprintf
	jmp	.LBB0_26
	.align	16, 0x90
.LBB0_40:                               # %sw.default
                                        #   in Loop: Header=BB0_20 Depth=1
	movq	%rbp, %rsi
	callq	argproc
	movl	%eax, 36(%rsp)
	testl	%eax, %eax
	js	.LBB0_45
# BB#41:                                # %if.end.112
                                        #   in Loop: Header=BB0_20 Depth=1
	cmpl	$0, 176(%r15)
	je	.LBB0_26
# BB#42:                                # %if.then.114
                                        #   in Loop: Header=BB0_20 Depth=1
	movq	160(%r15), %rax
	movq	(%rax), %rdi
	callq	gs_currentdevice
	movl	$.L.str.12, %esi
	movl	$18, %edx
	movq	%rax, %rdi
	callq	gx_saved_pages_param_process
	movl	%eax, 36(%rsp)
	testl	%eax, %eax
	js	.LBB0_45
# BB#43:                                # %if.end.120
                                        #   in Loop: Header=BB0_20 Depth=1
	jle	.LBB0_26
# BB#44:                                # %if.then.123
                                        #   in Loop: Header=BB0_20 Depth=1
	movq	160(%r15), %rax
	movq	(%rax), %rdi
	callq	gs_erasepage
	movl	%eax, 36(%rsp)
	testl	%eax, %eax
	js	.LBB0_45
	.align	16, 0x90
.LBB0_26:                               # %while.cond.backedge
                                        #   in Loop: Header=BB0_20 Depth=1
	movq	(%r15), %rdx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	arg_next
	movq	%rax, %rbp
	testq	%rbp, %rbp
	jne	.LBB0_20
.LBB0_27:                               # %while.end
	movl	36(%rsp), %eax
	testl	%eax, %eax
	js	.LBB0_45
# BB#28:                                # %if.end.139
	movq	%r15, %rdi
	callq	gs_main_init2
	movl	%eax, 36(%rsp)
	testl	%eax, %eax
	js	.LBB0_45
# BB#29:                                # %if.end.144
	cmpb	$0, gs_debug+58(%rip)
	je	.LBB0_34
# BB#30:                                # %if.then.146
	movq	(%r15), %rdi
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	movq	%r15, %rdx
	callq	errprintf
	movq	(%r15), %rdi
	movq	24(%rsp), %rbx          # 8-byte Reload
	cmpl	$2, %ebx
	jl	.LBB0_33
# BB#31:                                # %for.body.153.preheader
	addq	$8, %r14
	decl	%ebx
	.align	16, 0x90
.LBB0_32:                               # %for.body.153
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdx
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	callq	errprintf
	movq	(%r15), %rdi
	addq	$8, %r14
	decl	%ebx
	jne	.LBB0_32
.LBB0_33:                               # %for.end.160
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	36(%rsp), %eax
.LBB0_34:                               # %if.end.163
	movl	$-101, %ecx
	cmpl	$0, 40(%r15)
	je	.LBB0_36
# BB#35:                                # %select.mid
	movl	%eax, %ecx
.LBB0_36:                               # %select.end
	movl	%ecx, %eax
.LBB0_45:                               # %cleanup.168
	addq	$2552, %rsp             # imm = 0x9F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gs_main_init_with_args, .Lfunc_end0-gs_main_init_with_args
	.cfi_endproc

	.align	16, 0x90
	.type	gs_main_arg_fopen,@function
gs_main_arg_fopen:                      # @gs_main_arg_fopen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp15:
	.cfi_def_cfa_offset 32
.Ltmp16:
	.cfi_offset %rbx, -24
.Ltmp17:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rbx, %rdi
	callq	gs_main_set_lib_paths
	movq	(%rbx), %rsi
	leaq	48(%rbx), %rdi
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	lib_fopen               # TAILCALL
.Lfunc_end1:
	.size	gs_main_arg_fopen, .Lfunc_end1-gs_main_arg_fopen
	.cfi_endproc

	.align	16, 0x90
	.type	print_help,@function
print_help:                             # @print_help
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp22:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 56
	subq	$4168, %rsp             # imm = 0x1048
.Ltmp24:
	.cfi_def_cfa_offset 4224
.Ltmp25:
	.cfi_offset %rbx, -56
.Ltmp26:
	.cfi_offset %r12, -48
.Ltmp27:
	.cfi_offset %r13, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	(%r14), %rdi
	movq	gs_product(%rip), %rsi
	movq	gs_version(%rip), %rdx
	callq	printf_program_ident
	movq	(%r14), %rdi
	movq	gs_revisiondate(%rip), %r8
	movabsq	$3777893186295716171, %rcx # imm = 0x346DC5D63886594B
	movq	%r8, %rax
	imulq	%rcx
	movq	%rdx, %rcx
	movq	%rcx, %rax
	shrq	$63, %rax
	shrq	$11, %rcx
	addl	%eax, %ecx
	movabsq	$-6640827866535438581, %rsi # imm = 0xA3D70A3D70A3D70B
	movq	%r8, %rax
	imulq	%rsi
	movq	%rdx, %rbx
	addq	%r8, %rbx
	movq	%rbx, %rax
	shrq	$63, %rax
	sarq	$6, %rbx
	leal	(%rbx,%rax), %ebp
	addq	%rax, %rbx
	movq	%rbx, %rax
	imulq	%rsi
	addq	%rbx, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$6, %rdx
	addl	%eax, %edx
	imull	$100, %edx, %eax
	subl	%eax, %ebx
	imull	$100, %ebp, %eax
	subl	%eax, %r8d
	movq	gs_copyright(%rip), %r9
	movl	$.L.str.70, %esi
	xorl	%eax, %eax
	movl	%ecx, %edx
	movl	%ebx, %ecx
	callq	outprintf
	movq	(%r14), %rdi
	movl	$.L.str.75, %esi
	movl	$help_usage1, %edx
	xorl	%eax, %eax
	callq	outprintf
	movq	(%r14), %rdi
	movl	$.L.str.75, %esi
	movl	$help_usage2, %edx
	xorl	%eax, %eax
	callq	outprintf
	movq	(%r14), %rdi
	movl	$.L.str.75, %esi
	movl	$help_emulators, %edx
	xorl	%eax, %eax
	callq	outprintf
	movl	$gs_emulators, %ebx
	cmpb	$0, gs_emulators(%rip)
	jmp	.LBB2_2
	.align	16, 0x90
.LBB2_1:                                # %for.body.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$.L.str.76, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdx
	callq	outprintf
	movq	%rbx, %rdi
	callq	strlen
	cmpb	$0, 1(%rax,%rbx)
	leaq	1(%rax,%rbx), %rbx
.LBB2_2:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	jne	.LBB2_1
# BB#3:                                 # %print_emulators.exit
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	callq	outprintf
	movq	(%r14), %rdi
	movl	$.L.str.75, %esi
	movl	$help_default_device, %edx
	xorl	%eax, %eax
	callq	outprintf
	movq	(%r14), %rbx
	callq	gs_getdefaultdevice
	movq	%rax, %rdi
	callq	gs_devicename
	movq	%rax, %rcx
	movl	$.L.str.77, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	callq	outprintf
	movq	(%r14), %rdi
	movl	$.L.str.75, %esi
	movl	$help_devices, %edx
	xorl	%eax, %eax
	callq	outprintf
	movl	$-1, %r13d
	.align	16, 0x90
.LBB2_4:                                # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	incl	%r13d
	movl	%r13d, %edi
	callq	gs_getdevice
	testq	%rax, %rax
	jne	.LBB2_4
# BB#5:                                 # %for.end.i
	movq	(%r14), %rdi
	leal	(,%r13,8), %esi
	movl	$.L.str.78, %edx
	callq	*64(%rdi)
	movq	%rax, %rbp
	xorl	%edi, %edi
	callq	gs_getdevice
	testq	%rbp, %rbp
	je	.LBB2_15
# BB#6:                                 # %for.cond.35.preheader.i
	movslq	%r13d, %r12
	xorl	%ebx, %ebx
	jmp	.LBB2_8
	.align	16, 0x90
.LBB2_7:                                # %for.body.39.i
                                        #   in Loop: Header=BB2_8 Depth=1
	movq	%rax, %rdi
	callq	gs_devicename
	movq	%rax, (%rbp,%rbx,8)
	incq	%rbx
	movl	%ebx, %edi
	callq	gs_getdevice
.LBB2_8:                                # %for.body.39.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	jne	.LBB2_7
# BB#9:                                 # %for.end.43.i
	movl	$8, %edx
	movl	$cmpstr, %ecx
	movq	%rbp, %rdi
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movq	%r12, %rsi
	callq	qsort
	testl	%r13d, %r13d
	je	.LBB2_14
# BB#10:
	movl	$100, %r15d
	movq	48(%rsp), %rbp          # 8-byte Reload
	.align	16, 0x90
.LBB2_11:                               # %for.body.48.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbp), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %r12
	leal	1(%r15,%r12), %eax
	cmpl	$77, %eax
	jl	.LBB2_13
# BB#12:                                # %if.then.58.i
                                        #   in Loop: Header=BB2_11 Depth=1
	movq	(%r14), %rdi
	movl	$.L.str.79, %esi
	xorl	%eax, %eax
	callq	outprintf
	movq	(%rbp), %rbx
	movl	$2, %r15d
.LBB2_13:                               # %if.end.61.i
                                        #   in Loop: Header=BB2_11 Depth=1
	movq	(%r14), %rdi
	movl	$.L.str.76, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdx
	callq	outprintf
	leal	1(%r12,%r15), %r15d
	addq	$8, %rbp
	decl	%r13d
	jne	.LBB2_11
.LBB2_14:                               # %for.end.70.i
	movq	(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.78, %edx
	movq	48(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	jmp	.LBB2_20
.LBB2_15:                               # %for.cond.14.preheader.i
	testq	%rax, %rax
	je	.LBB2_20
# BB#16:
	movl	$100, %ebp
	movl	$1, %ebx
	.align	16, 0x90
.LBB2_17:                               # %for.body.18.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rdi
	callq	gs_devicename
	movq	%rax, %r15
	movq	%r15, %rdi
	callq	strlen
	movq	%rax, %r12
	leal	1(%rbp,%r12), %eax
	cmpl	$77, %eax
	jl	.LBB2_19
# BB#18:                                # %if.then.25.i
                                        #   in Loop: Header=BB2_17 Depth=1
	movq	(%r14), %rdi
	movl	$.L.str.79, %esi
	xorl	%eax, %eax
	callq	outprintf
	movl	$2, %ebp
.LBB2_19:                               # %if.end.i
                                        #   in Loop: Header=BB2_17 Depth=1
	movq	(%r14), %rdi
	movl	$.L.str.76, %esi
	xorl	%eax, %eax
	movq	%r15, %rdx
	callq	outprintf
	leal	1(%r12,%rbp), %ebp
	movl	%ebx, %edi
	callq	gs_getdevice
	incl	%ebx
	testq	%rax, %rax
	jne	.LBB2_17
.LBB2_20:                               # %print_devices.exit
	movq	(%r14), %rdi
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	callq	outprintf
	movq	(%r14), %rdi
	movl	$.L.str.75, %esi
	movl	$help_paths, %edx
	xorl	%eax, %eax
	callq	outprintf
	movq	%r14, %rdi
	callq	gs_main_set_lib_paths
	movl	68(%r14), %ecx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movb	$32, 64(%rsp)
	movb	gp_file_name_list_separator(%rip), %al
	movb	%al, 65(%rsp)
	movb	$0, 66(%rsp)
	testl	%ecx, %ecx
	je	.LBB2_29
# BB#21:                                # %for.body.lr.ph.i
	movq	24(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax), %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	$100, %ecx
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB2_22:                               # %for.body.i.33
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_27 Depth 2
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	72(%r14), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%r15, %rbx
	shlq	$4, %rbx
	movl	4(%rax,%rbx), %r13d
	cmpq	16(%rsp), %r15          # 8-byte Folded Reload
	leaq	64(%rsp), %r12
	movl	$.L.str.6, %eax
	cmoveq	%rax, %r12
	leal	1(%rcx), %eax
	movslq	%eax, %rbp
	movq	%r12, %rdi
	callq	strlen
	addq	%rbp, %rax
	addq	%r13, %rax
	cmpq	$77, %rax
	jb	.LBB2_24
# BB#23:                                # %if.then.i
                                        #   in Loop: Header=BB2_22 Depth=1
	movq	(%r14), %rdi
	movl	$.L.str.79, %esi
	xorl	%eax, %eax
	callq	outprintf
	movl	$2, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
.LBB2_24:                               # %if.end.i.35
                                        #   in Loop: Header=BB2_22 Depth=1
	movq	(%r14), %rdi
	movl	$.L.str.80, %esi
	xorl	%eax, %eax
	callq	outprintf
	testl	%r13d, %r13d
	movq	(%r14), %rdi
	je	.LBB2_25
# BB#26:                                # %for.body.21.lr.ph.i
                                        #   in Loop: Header=BB2_22 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	8(%rax,%rbx), %rbx
	movq	%r13, 40(%rsp)          # 8-byte Spill
	movl	%r13d, %ebp
	.align	16, 0x90
.LBB2_27:                               # %for.body.21.i
                                        #   Parent Loop BB2_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%rbx), %edx
	incq	%rbx
	movl	$.L.str.81, %esi
	xorl	%eax, %eax
	callq	outprintf
	decl	%ebp
	movq	(%r14), %rdi
	jne	.LBB2_27
	jmp	.LBB2_28
	.align	16, 0x90
.LBB2_25:                               #   in Loop: Header=BB2_22 Depth=1
	movq	%r13, 40(%rsp)          # 8-byte Spill
.LBB2_28:                               # %for.end.i.42
                                        #   in Loop: Header=BB2_22 Depth=1
	movl	$.L.str.75, %esi
	xorl	%eax, %eax
	movq	%r12, %rdx
	callq	outprintf
	movq	%r12, %rdi
	callq	strlen
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	48(%rsp), %rdx          # 8-byte Reload
	leal	(%rdx,%rcx), %ecx
	leal	1(%rax,%rcx), %ecx
	incq	%r15
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %r15d
	jne	.LBB2_22
.LBB2_29:                               # %print_paths.exit
	movq	(%r14), %rdi
	xorl	%ebp, %ebp
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	callq	outprintf
	movq	(%r14), %rdi
	movl	$.L.str.75, %esi
	movl	$help_fontconfig, %edx
	xorl	%eax, %eax
	callq	outprintf
	movl	gx_io_device_table_count(%rip), %r15d
	testl	%r15d, %r15d
	je	.LBB2_35
	.align	16, 0x90
.LBB2_30:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	gx_io_device_table(,%rbp,8), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB2_33
# BB#31:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_30 Depth=1
	movq	%rbx, %rdi
	callq	strlen
	cmpq	$5, %rax
	jne	.LBB2_33
# BB#32:                                # %land.lhs.true.3
                                        #   in Loop: Header=BB2_30 Depth=1
	movl	$.L.str.73, %edi
	movl	$5, %edx
	movq	%rbx, %rsi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB2_34
.LBB2_33:                               # %for.inc
                                        #   in Loop: Header=BB2_30 Depth=1
	incq	%rbp
	cmpl	%r15d, %ebp
	jb	.LBB2_30
	jmp	.LBB2_35
.LBB2_34:                               # %if.then.8
	movq	(%r14), %rdi
	movl	$.L.str.74, %esi
	xorl	%eax, %eax
	callq	outprintf
.LBB2_35:                               # %if.end.10
	movl	$4096, 60(%rsp)         # imm = 0x1000
	movq	gs_doc_directory(%rip), %r15
	movq	%r15, %rdi
	callq	strlen
	movq	%rax, %r12
	movl	$.L.str.82, %ebx
	movl	$.L.str.82, %edi
	callq	strlen
	leaq	60(%rsp), %rcx
	movq	%rcx, (%rsp)
	leaq	64(%rsp), %r13
	movl	$.L.str.82, %edx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movl	%r12d, %esi
	movl	%eax, %ecx
	movq	%r13, %r9
	callq	gp_file_name_combine
	cmpl	$1, %eax
	cmoveq	%r13, %rbx
	movq	(%r14), %rdi
	movl	$help_trailer, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdx
	callq	outprintf
	addq	$4168, %rsp             # imm = 0x1048
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	print_help, .Lfunc_end2-print_help
	.cfi_endproc

	.align	16, 0x90
	.type	swproc,@function
swproc:                                 # @swproc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp34:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp35:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 56
	subq	$1800, %rsp             # imm = 0x708
.Ltmp37:
	.cfi_def_cfa_offset 1856
.Ltmp38:
	.cfi_offset %rbx, -56
.Ltmp39:
	.cfi_offset %r12, -48
.Ltmp40:
	.cfi_offset %r13, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %rbp
	movq	%rdi, %r14
	movsbl	1(%rbp), %r13d
	movl	$0, 1780(%rsp)
	movw	$1, 1792(%rsp)
	movw	$256, 1784(%rsp)        # imm = 0x100
	leaq	2(%rbp), %rbx
	movl	$1, %r12d
	cmpl	$62, %r13d
	jle	.LBB3_1
# BB#13:                                # %entry
	leal	-63(%r13), %eax
	cmpl	$55, %eax
	ja	.LBB3_319
# BB#14:                                # %entry
	jmpq	*.LJTI3_0(,%rax,8)
.LBB3_181:                              # %sw.bb.813
	movq	(%r14), %rsi
	movq	%rbx, %rdi
	callq	arg_copy
	movq	%rax, %r15
	movl	$-100, %r12d
	testq	%r15, %r15
	je	.LBB3_319
# BB#182:                               # %if.end.831
	movl	$61, %esi
	movq	%r15, %rdi
	callq	strchr
	movq	%rax, %rbp
	testq	%rbp, %rbp
	jne	.LBB3_184
# BB#183:                               # %if.then.835
	movl	$35, %esi
	movq	%r15, %rdi
	callq	strchr
	movq	%rax, %rbp
.LBB3_184:                              # %if.end.837
	movq	%r14, %rdi
	callq	gs_main_init1
	movl	%eax, %r12d
	movl	%r12d, 1780(%rsp)
	testl	%r12d, %r12d
	js	.LBB3_319
# BB#185:                               # %if.end.842
	cmpq	%r15, %rbp
	je	.LBB3_186
# BB#187:                               # %if.end.848
	andb	$-33, %r13b
	testq	%rbp, %rbp
	je	.LBB3_188
# BB#190:                               # %if.else.865
	movq	160(%r14), %rdi
	movl	56(%rdi), %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	addq	$8, %rdi
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	leaq	1(%rbp), %r12
	movb	$0, (%rbp)
	movl	$4, %esi
	callq	ialloc_set_space
	movzbl	%r13b, %eax
	cmpl	$68, %eax
	jne	.LBB3_248
# BB#191:                               # %if.then.874
	movl	$35, %esi
	movq	%r12, %rdi
	callq	strchr
	testq	%rax, %rax
	jne	.LBB3_206
# BB#192:                               # %land.lhs.true.880
	movl	$46, %esi
	movq	%r12, %rdi
	callq	strchr
	testq	%rax, %rax
	jne	.LBB3_206
# BB#193:                               # %land.lhs.true.884
	movl	$101, %esi
	movq	%r12, %rdi
	callq	strchr
	testq	%rax, %rax
	jne	.LBB3_206
# BB#194:                               # %land.lhs.true.888
	movl	$69, %esi
	movq	%r12, %rdi
	callq	strchr
	testq	%rax, %rax
	jne	.LBB3_206
# BB#195:                               # %land.lhs.true.892
	leaq	1756(%rsp), %rdx
	movl	$.L.str.39, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB3_206
# BB#196:                               # %if.then.896
	movq	%r12, %rdi
	callq	strlen
	movsbl	-1(%rax,%r12), %eax
	addl	$-71, %eax
	cmpl	$38, %eax
	ja	.LBB3_200
# BB#197:                               # %if.then.896
	movabsq	$4294967297, %rcx       # imm = 0x100000001
	btq	%rax, %rcx
	jb	.LBB3_203
# BB#198:                               # %if.then.896
	movabsq	$68719476752, %rcx      # imm = 0x1000000010
	btq	%rax, %rcx
	jae	.LBB3_199
# BB#201:                               # %sw.bb.902
	movl	1756(%rsp), %eax
	shll	$10, %eax
	jmp	.LBB3_204
.LBB3_1:                                # %entry
	testl	%r13d, %r13d
	je	.LBB3_15
# BB#2:                                 # %entry
	cmpl	$43, %r13d
	je	.LBB3_67
# BB#3:                                 # %entry
	cmpl	$45, %r13d
	jne	.LBB3_319
# BB#4:                                 # %sw.bb.34
	movl	$.L.str.17, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$5, %rcx
	ja	.LBB3_31
# BB#5:                                 # %land.lhs.true
	cmpq	$3, %rcx
	ja	.LBB3_30
# BB#6:                                 # %cond.true.41
	movzbl	(%rbx), %eax
	addl	$-100, %eax
	testq	%rcx, %rcx
	je	.LBB3_32
# BB#7:                                 # %cond.true.41
	testl	%eax, %eax
	jne	.LBB3_32
# BB#8:                                 # %if.then.52
	movzbl	3(%rbp), %eax
	addl	$-101, %eax
	cmpq	$2, %rcx
	jb	.LBB3_32
# BB#9:                                 # %if.then.52
	testl	%eax, %eax
	jne	.LBB3_32
# BB#10:                                # %if.then.62
	movzbl	4(%rbp), %eax
	addl	$-98, %eax
	cmpq	$3, %rcx
	jb	.LBB3_32
# BB#11:                                # %if.then.62
	testl	%eax, %eax
	jne	.LBB3_32
# BB#12:                                # %if.then.72
	movzbl	5(%rbp), %eax
	addl	$-117, %eax
	jmp	.LBB3_32
.LBB3_15:                               # %sw.bb
	movq	(%r14), %rax
	movq	192(%rax), %rax
	movl	$1, 48(%rax)
	jmp	.LBB3_17
.LBB3_132:                              # %sw.bb.536
	movq	%r14, %rdi
	callq	print_help
	movl	$-110, %r12d
	jmp	.LBB3_319
.LBB3_87:                               # %sw.bb.334
	movsbl	(%rbx), %eax
	cmpl	$45, %eax
	jne	.LBB3_88
# BB#90:                                # %sw.bb.337
	movb	$0, gs_debug+64(%rip)
	jmp	.LBB3_318
.LBB3_94:                               # %sw.bb.341
	movzbl	(%rbx), %eax
	cmpl	$45, %eax
	jne	.LBB3_96
# BB#95:                                # %if.then.345
	movl	$0, 24(%r14)
	jmp	.LBB3_318
.LBB3_113:                              # %sw.bb.426
	movsbl	(%rbx), %eax
	cmpl	$45, %eax
	jne	.LBB3_114
# BB#116:                               # %sw.bb.429
	movb	$0, gs_debug+35(%rip)
	jmp	.LBB3_318
.LBB3_122:                              # %sw.bb.455
	cmpb	$0, (%rbx)
	je	.LBB3_123
# BB#124:                               # %if.end.460
	movl	24(%r14), %ebp
	movl	$1, 24(%r14)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	argproc
	movl	%eax, %r12d
	movl	%r12d, 1780(%rsp)
	movl	%ebp, 24(%r14)
	testl	%r12d, %r12d
	js	.LBB3_319
# BB#125:                               # %if.end.470
	cmpl	$0, 176(%r14)
	je	.LBB3_318
# BB#126:                               # %if.then.473
	movq	160(%r14), %rax
	movq	(%rax), %rdi
	callq	gs_currentdevice
	movl	$.L.str.12, %esi
	movl	$18, %edx
	movq	%rax, %rdi
	callq	gx_saved_pages_param_process
	movl	%eax, %r12d
	movl	%r12d, 1780(%rsp)
	testl	%r12d, %r12d
	js	.LBB3_319
# BB#127:                               # %if.end.483
	jg	.LBB3_28
	jmp	.LBB3_318
.LBB3_133:                              # %sw.bb.537
	cmpb	$0, (%rbx)
	jne	.LBB3_136
# BB#134:                               # %if.then.543
	movq	(%r14), %rdx
	leaq	1780(%rsp), %rsi
	movq	%r15, %rdi
	callq	arg_next
	movq	%rax, %rbx
	movl	1780(%rsp), %r12d
	testl	%r12d, %r12d
	js	.LBB3_319
# BB#135:                               # %if.end.551
	movl	$-100, %r12d
	testq	%rbx, %rbx
	je	.LBB3_319
.LBB3_136:                              # %if.end.555
	movq	(%r14), %rsi
	movq	%rbx, %rdi
	callq	arg_copy
	movl	$-100, %r12d
	testq	%rax, %rax
	je	.LBB3_319
# BB#137:                               # %cleanup.563
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	gs_main_add_lib_path
	jmp	.LBB3_318
.LBB3_138:                              # %sw.bb.566
	movabsq	$9007199254740990, %rbp # imm = 0x1FFFFFFFFFFFFE
	movq	$0, 32(%rsp)
	movq	(%r14), %rdi
	callq	gs_malloc_wrapped_contents
	movq	%rax, %r15
	leaq	32(%rsp), %rdx
	movl	$.L.str.37, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	__isoc99_sscanf
	movq	32(%rsp), %rax
	leaq	-1(%rax), %rcx
	cmpq	%rbp, %rcx
	jbe	.LBB3_140
# BB#139:                               # %if.then.577
	movq	(%r14), %rdi
	incq	%rbp
	movl	$.L.str.38, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdx
	jmp	.LBB3_93
.LBB3_141:                              # %sw.bb.585
	movl	$0, 32(%rsp)
	leaq	32(%rsp), %rdx
	movl	$.L.str.27, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	__isoc99_sscanf
	movl	32(%rsp), %eax
	shll	$10, %eax
	movl	%eax, 8(%r14)
	jmp	.LBB3_318
.LBB3_142:                              # %sw.bb.590
	movl	$0, 32(%rsp)
	leaq	32(%rsp), %rdx
	movl	$.L.str.39, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	__isoc99_sscanf
	movl	32(%rsp), %eax
	shlq	$10, %rax
	movq	%rax, 16(%r14)
	jmp	.LBB3_318
.LBB3_148:                              # %land.lhs.true.653
	movl	$.L.str.6, %edi
	callq	strlen
	cmpq	$3, %rax
	ja	.LBB3_157
# BB#149:                               # %cond.true.657
	movb	(%rbx), %cl
	testq	%rax, %rax
	je	.LBB3_156
# BB#150:                               # %cond.true.657
	testb	%cl, %cl
	jne	.LBB3_156
# BB#151:                               # %if.then.671
	movb	3(%rbp), %cl
	cmpq	$2, %rax
	jb	.LBB3_156
# BB#152:                               # %if.then.671
	testb	%cl, %cl
	jne	.LBB3_156
# BB#153:                               # %if.then.681
	movb	4(%rbp), %cl
	cmpq	$3, %rax
	jb	.LBB3_156
# BB#154:                               # %if.then.681
	testb	%cl, %cl
	jne	.LBB3_156
# BB#155:                               # %if.then.691
	movb	5(%rbp), %cl
.LBB3_156:                              # %if.end.698
	movzbl	%cl, %eax
	jmp	.LBB3_158
.LBB3_301:                              # %sw.bb.1246
	movzbl	2(%rbp), %eax
	addq	$3, %rbp
	cmpl	$45, %eax
	cmoveq	%rbp, %rbx
	movb	$-1, %al
	jne	.LBB3_303
# BB#302:                               # %sw.bb.1246
	xorl	%eax, %eax
.LBB3_303:                              # %sw.bb.1246
	movb	(%rbx), %cl
	testb	%cl, %cl
	je	.LBB3_318
# BB#304:                               # %while.body.i.418.preheader
	incq	%rbx
	.align	16, 0x90
.LBB3_305:                              # %while.body.i.418
                                        # =>This Inner Loop Header: Depth=1
	movzbl	%cl, %ecx
	andl	$127, %ecx
	movb	%al, vd_flags(%rcx)
	movb	(%rbx), %cl
	incq	%rbx
	testb	%cl, %cl
	jne	.LBB3_305
	jmp	.LBB3_318
.LBB3_311:                              # %sw.bb.1260
	movq	%r14, %rdi
	callq	gs_main_init2
	movl	%eax, %r12d
	movl	%r12d, 1780(%rsp)
	testl	%r12d, %r12d
	js	.LBB3_319
# BB#312:                               # %if.end.1265
	leaq	1400(%rsp), %rbx
	leaq	32(%rsp), %rbp
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	callq	gs_main_run_string_begin
	movl	$.L.str.62, %edi
	callq	strlen
	movl	$.L.str.62, %esi
	movl	$1, %ecx
	movq	%r14, %rdi
	movl	%eax, %edx
	movq	%rbx, %r8
	movq	%rbp, %r9
	callq	gs_main_run_string_continue
	movl	$.L.str.63, %edi
	callq	strlen
	movl	$.L.str.63, %esi
	movl	$1, %ecx
	movq	%r14, %rdi
	movl	%eax, %edx
	movq	%rbx, %r8
	movq	%rbp, %r9
	callq	gs_main_run_string_continue
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	callq	gs_main_run_string_end
	movl	$-101, %r12d
	jmp	.LBB3_319
.LBB3_313:                              # %sw.bb.1276
	movzbl	2(%rbp), %eax
	addq	$3, %rbp
	cmpl	$45, %eax
	cmoveq	%rbp, %rbx
	movb	$-1, %al
	jne	.LBB3_315
# BB#314:                               # %sw.bb.1276
	xorl	%eax, %eax
.LBB3_315:                              # %sw.bb.1276
	movb	(%rbx), %cl
	testb	%cl, %cl
	je	.LBB3_318
# BB#316:                               # %while.body.i.preheader
	incq	%rbx
	.align	16, 0x90
.LBB3_317:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	%cl, %ecx
	andl	$127, %ecx
	movb	%al, gs_debug(%rcx)
	movb	(%rbx), %cl
	incq	%rbx
	testb	%cl, %cl
	jne	.LBB3_317
	jmp	.LBB3_318
.LBB3_16:                               # %sw.bb.1
	movq	(%r14), %rax
	movq	192(%rax), %rax
	movl	$0, 48(%rax)
.LBB3_17:                               # %run_stdin
	movl	$0, 40(%r14)
	movl	$.L.str.15, %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	swproc
	movl	%eax, %r12d
	movl	%r12d, 1780(%rsp)
	testl	%r12d, %r12d
	jne	.LBB3_319
# BB#18:                                # %if.end
	movq	%r14, %rdi
	callq	gs_main_init2
	movl	%eax, %r12d
	movl	%r12d, 1780(%rsp)
	testl	%r12d, %r12d
	js	.LBB3_319
# BB#19:                                # %if.end.8
	movl	32(%r14), %edx
	leaq	1400(%rsp), %rcx
	leaq	32(%rsp), %r8
	movl	$.L.str.16, %esi
	movq	%r14, %rdi
	callq	gs_main_run_string
	movl	%eax, %r12d
	movq	160(%r14), %rdi
	callq	zflush
	movq	160(%r14), %rdi
	callq	zflushpage
	cmpl	$-101, %r12d
	je	.LBB3_24
# BB#20:                                # %if.end.8
	testl	%r12d, %r12d
	je	.LBB3_24
# BB#21:                                # %if.end.8
	cmpl	$-100, %r12d
	jne	.LBB3_23
# BB#22:                                # %run_finish.exit.thread
	movl	1400(%rsp), %r15d
	movq	(%r14), %rbp
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%r14), %rdi
	movl	$.L.str.72, %esi
	xorl	%eax, %eax
	movl	%r15d, %edx
	callq	errprintf
	movl	$-100, 1780(%rsp)
	movl	$-100, %r12d
	jmp	.LBB3_319
.LBB3_100:                              # %sw.bb.365
	movl	(%r15), %eax
	movl	%eax, 8(%rsp)           # 4-byte Spill
	movq	%r14, %rdi
	callq	gs_main_init2
	movl	%eax, %r12d
	movl	%r12d, 1780(%rsp)
	testl	%r12d, %r12d
	js	.LBB3_319
# BB#101:                               # %if.end.372
	movl	$0, (%r15)
.LBB3_102:                              # %while.cond.374
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdx
	movq	%r15, %rdi
	leaq	1780(%rsp), %rsi
	callq	arg_next
	movq	%rax, %rbp
	xorl	%r13d, %r13d
	testq	%rbp, %rbp
	movl	$0, %edi
	je	.LBB3_108
# BB#103:                               # %while.body.379
                                        #   in Loop: Header=BB3_102 Depth=1
	movzbl	(%rbp), %eax
	movb	$1, %r13b
	cmpl	$45, %eax
	jne	.LBB3_104
# BB#106:                               # %land.lhs.true.389
                                        #   in Loop: Header=BB3_102 Depth=1
	movzbl	1(%rbp), %ebx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	testb	$8, 1(%rax,%rbx,2)
	je	.LBB3_107
.LBB3_105:                              # %if.end.397
                                        #   in Loop: Header=BB3_102 Depth=1
	movl	$.L.str.6, %esi
	movl	$.L.str.29, %ecx
	movl	$4, %r8d
	movq	%r14, %rdi
	movq	%rbp, %rdx
	callq	runarg
	movl	%eax, %r12d
	movl	%r12d, 1780(%rsp)
	testl	%r12d, %r12d
	jns	.LBB3_102
	jmp	.LBB3_319
.LBB3_104:                              # %while.body.379
                                        #   in Loop: Header=BB3_102 Depth=1
	movzbl	%al, %eax
	cmpl	$64, %eax
	jne	.LBB3_105
.LBB3_107:
	movq	%rbp, %rdi
.LBB3_108:                              # %while.end.403
	movl	$-100, %r12d
	cmpl	$0, 1780(%rsp)
	js	.LBB3_319
# BB#109:                               # %if.end.407
	testb	%r13b, %r13b
	je	.LBB3_112
# BB#110:                               # %if.then.410
	movq	(%r14), %rsi
	callq	arg_copy
	testq	%rax, %rax
	je	.LBB3_319
# BB#111:                               # %cleanup.419.thread
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	arg_push_memory_string
.LBB3_112:                              # %cleanup.424
	movl	8(%rsp), %eax           # 4-byte Reload
	movl	%eax, (%r15)
	jmp	.LBB3_318
.LBB3_118:                              # %sw.bb.434
	cmpb	$0, (%rbx)
	je	.LBB3_318
# BB#119:                               # %if.then.438
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	argproc
	movl	%eax, %r12d
	movl	%r12d, 1780(%rsp)
	testl	%r12d, %r12d
	js	.LBB3_319
# BB#120:                               # %if.end.443
	cmpl	$0, 176(%r14)
	je	.LBB3_318
# BB#121:                               # %if.then.446
	movq	160(%r14), %rax
	movq	(%rax), %rdi
	callq	gs_currentdevice
	jmp	.LBB3_319
.LBB3_128:                              # %sw.bb.502
	movq	%r14, %rdi
	callq	gs_main_init1
	movl	%eax, %r12d
	movl	%r12d, 1780(%rsp)
	testl	%r12d, %r12d
	js	.LBB3_319
# BB#129:                               # %if.end.511
	leaq	1400(%rsp), %rdx
	leaq	1760(%rsp), %rcx
	movl	$.L.str.32, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	__isoc99_sscanf
	cmpl	$2, %eax
	jne	.LBB3_130
# BB#131:                               # %cleanup.532
	movq	1400(%rsp), %rax
	movq	%rax, 40(%rsp)
	movw	$2816, 32(%rsp)         # imm = 0xB00
	movq	160(%r14), %rdi
	leaq	32(%rsp), %rbx
	movl	$.L.str.34, %esi
	movq	%rbx, %rdx
	callq	i_initial_enter_name
	movq	1760(%rsp), %rax
	movq	%rax, 40(%rsp)
	movw	$2816, 32(%rsp)         # imm = 0xB00
	movq	160(%r14), %rdi
	movl	$.L.str.35, %esi
	movq	%rbx, %rdx
	callq	i_initial_enter_name
	movq	160(%r14), %rdi
	leaq	1784(%rsp), %rdx
	movl	$.L.str.36, %esi
	callq	i_initial_enter_name
	jmp	.LBB3_318
.LBB3_143:                              # %sw.bb.595
	cmpb	$0, (%rbx)
	jne	.LBB3_145
# BB#144:                               # %if.then.605
	movq	(%r14), %rdx
	leaq	1780(%rsp), %rsi
	movq	%r15, %rdi
	callq	arg_next
	movq	%rax, %rbx
	movl	1780(%rsp), %r12d
	testl	%r12d, %r12d
	js	.LBB3_319
.LBB3_145:                              # %if.end.613
	movq	%r14, %rdi
	callq	gs_main_init1
	movl	%eax, %r12d
	movl	%r12d, 1780(%rsp)
	testl	%r12d, %r12d
	js	.LBB3_319
# BB#146:                               # %if.end.618
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %r15
	movq	(%r14), %rdi
	movl	$.L.str.40, %edx
	movl	%r15d, %esi
	callq	*64(%rdi)
	movq	%rax, %rbp
	movl	$-25, %r12d
	testq	%rbp, %rbp
	je	.LBB3_319
# BB#147:                               # %cleanup.641
	movslq	%r15d, %rdx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	%rbp, 40(%rsp)
	movw	$4704, 32(%rsp)         # imm = 0x1260
	movl	%r15d, 36(%rsp)
	movq	160(%r14), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.41, %esi
	callq	i_initial_enter_name
	movq	160(%r14), %rdi
	leaq	1784(%rsp), %rbx
	movl	$.L.str.42, %esi
	movq	%rbx, %rdx
	callq	i_initial_enter_name
	movq	160(%r14), %rdi
	movl	$.L.str.43, %esi
	movq	%rbx, %rdx
	callq	i_initial_enter_name
	jmp	.LBB3_318
.LBB3_172:                              # %sw.bb.771
	movq	%r14, %rdi
	callq	gs_main_init1
	movl	%eax, %r12d
	movl	%r12d, 1780(%rsp)
	testl	%r12d, %r12d
	js	.LBB3_319
# BB#173:                               # %if.end.776
	movq	160(%r14), %rdi
	leaq	1784(%rsp), %rdx
	movl	$.L.str.46, %esi
	callq	i_initial_enter_name
	jmp	.LBB3_318
.LBB3_174:                              # %sw.bb.779
	movq	%r14, %rdi
	callq	gs_main_init1
	movl	%eax, %r12d
	movl	%r12d, 1780(%rsp)
	testl	%r12d, %r12d
	js	.LBB3_319
# BB#175:                               # %if.end.788
	leaq	1400(%rsp), %rdx
	leaq	1760(%rsp), %rcx
	movl	$.L.str.47, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB3_176
# BB#179:                               # %sw.bb.793
	movl	1400(%rsp), %eax
	movl	%eax, 1760(%rsp)
	jmp	.LBB3_180
.LBB3_306:                              # %sw.bb.1247
	cmpb	$0, (%rbx)
	je	.LBB3_307
# BB#308:                               # %if.end.1252
	movq	%r14, %rdi
	callq	gs_main_init1
	movl	%eax, %r12d
	movl	%r12d, 1780(%rsp)
	testl	%r12d, %r12d
	js	.LBB3_319
# BB#309:                               # %if.end.1257
	movq	160(%r14), %rdi
	movq	%rbx, %rsi
	callq	i_initial_remove_name
	jmp	.LBB3_318
.LBB3_310:                              # %sw.bb.1259
	movq	(%r14), %rdi
	movq	gs_product(%rip), %rsi
	movq	gs_version(%rip), %rdx
	callq	printf_program_ident
	movq	(%r14), %rdi
	movq	gs_revisiondate(%rip), %rbp
	movabsq	$3777893186295716171, %rcx # imm = 0x346DC5D63886594B
	movq	%rbp, %rax
	imulq	%rcx
	movq	%rdx, %rcx
	movq	%rcx, %rax
	shrq	$63, %rax
	shrq	$11, %rcx
	addl	%eax, %ecx
	movabsq	$-6640827866535438581, %r8 # imm = 0xA3D70A3D70A3D70B
	movq	%rbp, %rax
	imulq	%r8
	movq	%rdx, %rbx
	addq	%rbp, %rbx
	movq	%rbx, %rax
	shrq	$63, %rax
	sarq	$6, %rbx
	leal	(%rbx,%rax), %esi
	addq	%rax, %rbx
	movq	%rbx, %rax
	imulq	%r8
	addq	%rbx, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$6, %rdx
	addl	%eax, %edx
	imull	$100, %edx, %eax
	subl	%eax, %ebx
	imull	$100, %esi, %eax
	subl	%eax, %ebp
	movq	gs_copyright(%rip), %r9
	movl	$.L.str.70, %esi
	xorl	%eax, %eax
	movl	%ecx, %edx
	movl	%ebx, %ecx
	movl	%ebp, %r8d
	callq	outprintf
	movl	$-110, %r12d
	jmp	.LBB3_319
.LBB3_186:                              # %if.then.845
	movq	(%r14), %rdi
	movl	$.L.str.5, %esi
	movl	$.L.str.52, %edx
	jmp	.LBB3_92
.LBB3_31:                               # %cond.false.82
	movl	$.L.str.17, %esi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB3_32
.LBB3_88:                               # %sw.bb.334
	testl	%eax, %eax
	jne	.LBB3_91
# BB#89:                                # %sw.bb.336
	movb	$1, gs_debug+64(%rip)
	jmp	.LBB3_318
.LBB3_96:                               # %if.else.346
	leaq	32(%rsp), %rdx
	movl	$.L.str.27, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB3_98
# BB#97:                                # %if.else.346
	movl	32(%rsp), %eax
	leal	-1(%rax), %ecx
	cmpl	$1024, %ecx             # imm = 0x400
	jae	.LBB3_98
# BB#99:                                # %if.end.359
	movl	%eax, 24(%r14)
	jmp	.LBB3_318
.LBB3_114:                              # %sw.bb.426
	testl	%eax, %eax
	jne	.LBB3_117
# BB#115:                               # %sw.bb.428
	movb	$1, gs_debug+35(%rip)
	jmp	.LBB3_318
.LBB3_140:                              # %if.end.580
	shlq	$10, %rax
	movq	%rax, 224(%r15)
	jmp	.LBB3_318
.LBB3_157:                              # %cond.false.700
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB3_158:                              # %cond.end.702
	testl	%eax, %eax
	je	.LBB3_159
# BB#160:                               # %land.lhs.true.712
	movl	$.L.str.44, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB3_168
# BB#161:                               # %cond.true.716
	movzbl	(%rbx), %eax
	addl	$-45, %eax
	testq	%rcx, %rcx
	je	.LBB3_169
# BB#162:                               # %cond.true.716
	testl	%eax, %eax
	jne	.LBB3_169
# BB#163:                               # %if.then.730
	movb	3(%rbp), %dl
	movzbl	%dl, %eax
	cmpq	$2, %rcx
	jb	.LBB3_169
# BB#164:                               # %if.then.730
	testb	%dl, %dl
	jne	.LBB3_169
# BB#165:                               # %if.then.740
	movb	4(%rbp), %dl
	movzbl	%dl, %eax
	cmpq	$3, %rcx
	jb	.LBB3_169
# BB#166:                               # %if.then.740
	testb	%dl, %dl
	jne	.LBB3_169
# BB#167:                               # %if.then.750
	movzbl	5(%rbp), %eax
	jmp	.LBB3_169
.LBB3_123:                              # %if.then.457
	movq	(%r14), %rdi
	movl	$.L.str.5, %esi
	movl	$.L.str.31, %edx
	jmp	.LBB3_92
.LBB3_307:                              # %if.then.1249
	movq	(%r14), %rdi
	movl	$.L.str.5, %esi
	movl	$.L.str.61, %edx
	jmp	.LBB3_92
.LBB3_159:                              # %if.then.705
	movl	$1, 36(%r14)
	jmp	.LBB3_318
.LBB3_188:                              # %if.then.851
	movzbl	%r13b, %eax
	cmpl	$68, %eax
	jne	.LBB3_299
# BB#189:                               # %if.then.853
	movw	$1, 1768(%rsp)
	movw	$256, 1760(%rsp)        # imm = 0x100
	jmp	.LBB3_300
.LBB3_130:                              # %if.then.515
	movq	(%r14), %rdi
	movl	$.L.str.5, %esi
	movl	$.L.str.33, %edx
	jmp	.LBB3_92
.LBB3_176:                              # %if.end.788
	cmpl	$2, %eax
	jne	.LBB3_178
# BB#177:                               # %if.end.788.cleanup.809_crit_edge
	movl	1400(%rsp), %eax
.LBB3_180:                              # %cleanup.809
	movl	%eax, 40(%rsp)
	movw	$4096, 32(%rsp)         # imm = 0x1000
	movq	160(%r14), %rdi
	leaq	32(%rsp), %rbx
	movl	$.L.str.49, %esi
	movq	%rbx, %rdx
	callq	i_initial_enter_name
	movl	1760(%rsp), %eax
	movl	%eax, 40(%rsp)
	movw	$4096, 32(%rsp)         # imm = 0x1000
	movq	160(%r14), %rdi
	movl	$.L.str.50, %esi
	movq	%rbx, %rdx
	callq	i_initial_enter_name
	movq	160(%r14), %rdi
	leaq	1784(%rsp), %rdx
	movl	$.L.str.51, %esi
	callq	i_initial_enter_name
	jmp	.LBB3_318
.LBB3_168:                              # %cond.false.759
	movl	$.L.str.44, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB3_169:                              # %cond.end.761
	testl	%eax, %eax
	je	.LBB3_170
# BB#171:                               # %if.else.766
	movq	(%r14), %rdi
	movl	$.L.str.5, %esi
	movl	$.L.str.45, %edx
	jmp	.LBB3_92
.LBB3_248:                              # %if.else.1195
	movq	%r12, %rdi
	callq	strlen
	movq	%rax, %r13
	movq	(%r14), %rdi
	movl	$.L.str.58, %edx
	movl	%r13d, %esi
	callq	*64(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB3_249
# BB#250:                               # %if.end.1213
	movslq	%r13d, %rdx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	memcpy
	movq	%rbx, 1768(%rsp)
	movw	$4704, 1760(%rsp)       # imm = 0x1260
	movl	%r13d, 1764(%rsp)
	movl	$.L.str.66, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB3_258
# BB#251:                               # %cond.true.i
	movzbl	(%r15), %eax
	addl	$-115, %eax
	testq	%rcx, %rcx
	je	.LBB3_259
# BB#252:                               # %cond.true.i
	testl	%eax, %eax
	jne	.LBB3_259
# BB#253:                               # %if.then.i.404
	movzbl	1(%r15), %eax
	addl	$-116, %eax
	cmpq	$2, %rcx
	jb	.LBB3_259
# BB#254:                               # %if.then.i.404
	testl	%eax, %eax
	jne	.LBB3_259
# BB#255:                               # %if.then.18.i
	movzbl	2(%r15), %eax
	addl	$-100, %eax
	cmpq	$3, %rcx
	jb	.LBB3_259
# BB#256:                               # %if.then.18.i
	testl	%eax, %eax
	jne	.LBB3_259
# BB#257:                               # %if.then.28.i
	movzbl	3(%r15), %eax
	addl	$-111, %eax
	jmp	.LBB3_259
.LBB3_206:                              # %if.else.914
	leaq	1400(%rsp), %rbp
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	s_init
	movq	%r12, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	callq	sread_string
	leaq	32(%rsp), %r12
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	gs_scanner_init_stream_options
	movq	160(%r14), %rdi
	leaq	1760(%rsp), %rsi
	movq	%r12, %rdx
	callq	gs_scan_token
	testl	%eax, %eax
	je	.LBB3_209
# BB#207:                               # %if.then.922
	movq	(%r14), %rdi
	movl	$.L.str.53, %esi
.LBB3_208:                              # %cleanup.1191
	xorl	%eax, %eax
	movq	%rbx, %rdx
	jmp	.LBB3_93
.LBB3_30:                               # %cond.false
	movl	$.L.str.17, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB3_32:                               # %cond.end.84
	testl	%eax, %eax
	je	.LBB3_33
# BB#34:                                # %if.else
	movl	$.L.str.18, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$11, %rcx
	ja	.LBB3_44
# BB#35:                                # %land.lhs.true.105
	cmpq	$3, %rcx
	ja	.LBB3_43
# BB#36:                                # %cond.true.109
	movzbl	(%rbx), %eax
	addl	$-115, %eax
	testq	%rcx, %rcx
	je	.LBB3_45
# BB#37:                                # %cond.true.109
	testl	%eax, %eax
	jne	.LBB3_45
# BB#38:                                # %if.then.123
	movzbl	3(%rbp), %eax
	addl	$-97, %eax
	cmpq	$2, %rcx
	jb	.LBB3_45
# BB#39:                                # %if.then.123
	testl	%eax, %eax
	jne	.LBB3_45
# BB#40:                                # %if.then.133
	movzbl	4(%rbp), %eax
	addl	$-118, %eax
	cmpq	$3, %rcx
	jb	.LBB3_45
# BB#41:                                # %if.then.133
	testl	%eax, %eax
	jne	.LBB3_45
# BB#42:                                # %if.then.143
	movzbl	5(%rbp), %eax
	addl	$-101, %eax
	jmp	.LBB3_45
.LBB3_33:                               # %if.then.88
	movq	(%r14), %rdi
	addq	$8, %rbp
	movq	%rbp, %rsi
	callq	gs_debug_flags_parse
	jmp	.LBB3_29
.LBB3_44:                               # %cond.false.156
	movl	$.L.str.18, %esi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB3_45
.LBB3_91:                               # %sw.default.338
	movq	(%r14), %rdi
	movl	$.L.str.5, %esi
	movl	$.L.str.26, %edx
	jmp	.LBB3_92
.LBB3_98:                               # %if.then.356
	movq	(%r14), %rdi
	movl	$.L.str.28, %esi
	movl	$1024, %edx             # imm = 0x400
	xorl	%eax, %eax
	callq	outprintf
	movl	$-100, %r12d
	jmp	.LBB3_319
.LBB3_117:                              # %sw.default.430
	movq	(%r14), %rdi
	movl	$.L.str.5, %esi
	movl	$.L.str.30, %edx
	jmp	.LBB3_92
.LBB3_170:                              # %if.then.764
	movl	$0, 36(%r14)
	jmp	.LBB3_318
.LBB3_299:                              # %if.else.858
	movq	$0, 1768(%rsp)
	movw	$4704, 1760(%rsp)       # imm = 0x1260
	movl	$0, 1764(%rsp)
	jmp	.LBB3_300
.LBB3_43:                               # %cond.false.152
	movl	$.L.str.18, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB3_45:                               # %cond.end.158
	testl	%eax, %eax
	je	.LBB3_46
# BB#54:                                # %if.else.209
	movl	$.L.str.21, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$15, %rcx
	ja	.LBB3_64
# BB#55:                                # %land.lhs.true.219
	cmpq	$3, %rcx
	ja	.LBB3_63
# BB#56:                                # %cond.true.223
	movzbl	(%rbx), %eax
	addl	$-115, %eax
	testq	%rcx, %rcx
	je	.LBB3_65
# BB#57:                                # %cond.true.223
	testl	%eax, %eax
	jne	.LBB3_65
# BB#58:                                # %if.then.237
	movzbl	3(%rbp), %eax
	addl	$-97, %eax
	cmpq	$2, %rcx
	jb	.LBB3_65
# BB#59:                                # %if.then.237
	testl	%eax, %eax
	jne	.LBB3_65
# BB#60:                                # %if.then.247
	movzbl	4(%rbp), %eax
	addl	$-118, %eax
	cmpq	$3, %rcx
	jb	.LBB3_65
# BB#61:                                # %if.then.247
	testl	%eax, %eax
	jne	.LBB3_65
# BB#62:                                # %if.then.257
	movzbl	5(%rbp), %eax
	addl	$-101, %eax
	jmp	.LBB3_65
.LBB3_46:                               # %if.then.162
	cmpl	$1, 28(%r14)
	jg	.LBB3_51
# BB#47:                                # %if.then.168
	cmpq	$0, 168(%r14)
	je	.LBB3_48
# BB#49:                                # %if.else.174
	movq	(%r14), %rdi
	movl	$.L.str.19, %esi
	xorl	%eax, %eax
	callq	outprintf
	jmp	.LBB3_50
.LBB3_64:                               # %cond.false.270
	movl	$.L.str.21, %esi
	movl	$16, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB3_65
.LBB3_178:                              # %sw.default.790
	movq	(%r14), %rdi
	movl	$.L.str.5, %esi
	movl	$.L.str.48, %edx
.LBB3_92:                               # %cleanup.1278
	xorl	%eax, %eax
.LBB3_93:                               # %cleanup.1278
	callq	outprintf
	movl	$-100, %r12d
	jmp	.LBB3_319
.LBB3_51:                               # %if.else.178
	movq	160(%r14), %rax
	movq	(%rax), %rdi
	callq	gs_currentdevice
	movq	%rax, %rbx
	movl	$16, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	*1664(%rbx)
	testl	%eax, %eax
	je	.LBB3_52
# BB#53:                                # %if.end.188
	addq	$14, %rbp
	movq	%rbp, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	gx_saved_pages_param_process
	movl	%eax, 1780(%rsp)
	testl	%eax, %eax
	jg	.LBB3_28
	jmp	.LBB3_318
.LBB3_23:                               # %sw.default.i
	leaq	32(%rsp), %rdx
	movq	%r14, %rdi
	movl	%r12d, %esi
	callq	gs_main_dump_stack
.LBB3_24:                               # %run_finish.exit
	movl	%r12d, 1780(%rsp)
	testl	%r12d, %r12d
	js	.LBB3_319
# BB#25:                                # %if.end.13
	cmpl	$0, 176(%r14)
	je	.LBB3_318
# BB#26:                                # %if.then.15
	movq	160(%r14), %rax
	movq	(%rax), %rdi
	callq	gs_currentdevice
	movl	$.L.str.12, %esi
	movl	$18, %edx
	movq	%rax, %rdi
	callq	gx_saved_pages_param_process
	movl	%eax, %r12d
	movl	%r12d, 1780(%rsp)
	testl	%r12d, %r12d
	js	.LBB3_319
# BB#27:                                # %if.end.21
	jle	.LBB3_318
.LBB3_28:                               # %if.then.24
	movq	160(%r14), %rax
	movq	(%rax), %rdi
	callq	gs_erasepage
.LBB3_29:                               # %if.then.24
	movl	%eax, %r12d
	movl	%r12d, 1780(%rsp)
	testl	%r12d, %r12d
	jns	.LBB3_318
	jmp	.LBB3_319
.LBB3_249:                              # %if.then.1209
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.59, %edi
	movl	$798, %esi              # imm = 0x31E
	callq	lprintf_file_and_line
	movl	$.L.str.60, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	movl	$-100, %r12d
	jmp	.LBB3_319
.LBB3_209:                              # %if.end.925
	movzwl	1760(%rsp), %eax
	andl	$16256, %eax            # imm = 0x3F80
	cmpl	$3456, %eax             # imm = 0xD80
	jne	.LBB3_298
# BB#210:                               # %if.then.932
	movq	(%r14), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	1760(%rsp), %rsi
	leaq	16(%rsp), %rdx
	callq	names_string_ref
	movl	20(%rsp), %ebp
	cmpl	$5, %ebp
	je	.LBB3_231
# BB#211:                               # %if.then.932
	cmpl	$4, %ebp
	jne	.LBB3_320
# BB#212:                               # %land.lhs.true.940
	movl	$.L.str.54, %edi
	callq	strlen
	movq	24(%rsp), %r12
	cmpq	$3, %rax
	ja	.LBB3_240
# BB#213:                               # %cond.true.954
	movzbl	(%r12), %ecx
	addl	$-110, %ecx
	testq	%rax, %rax
	je	.LBB3_220
# BB#214:                               # %cond.true.954
	testl	%ecx, %ecx
	jne	.LBB3_220
# BB#215:                               # %if.then.970
	movzbl	1(%r12), %ecx
	addl	$-117, %ecx
	cmpq	$2, %rax
	jb	.LBB3_220
# BB#216:                               # %if.then.970
	testl	%ecx, %ecx
	jne	.LBB3_220
# BB#217:                               # %if.then.980
	movzbl	2(%r12), %ecx
	addl	$-108, %ecx
	cmpq	$3, %rax
	jb	.LBB3_220
# BB#218:                               # %if.then.980
	testl	%ecx, %ecx
	jne	.LBB3_220
# BB#219:                               # %if.then.990
	movzbl	3(%r12), %ecx
	addl	$-108, %ecx
.LBB3_220:                              # %cond.end.1003
	testl	%ecx, %ecx
	jne	.LBB3_221
	jmp	.LBB3_241
.LBB3_63:                               # %cond.false.266
	movl	$.L.str.21, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB3_65:                               # %cond.end.272
	testl	%eax, %eax
	je	.LBB3_66
.LBB3_67:                               # %sw.bb.281
	movl	$0, (%r15)
.LBB3_68:                               # %sw.bb.282
	movq	(%r14), %rdx
	leaq	1780(%rsp), %rsi
	movq	%r15, %rdi
	callq	arg_next
	movl	$-100, %r12d
	cmpl	$0, 1780(%rsp)
	js	.LBB3_319
# BB#69:                                # %if.end.289
	movq	(%r14), %rcx
	testq	%rax, %rax
	je	.LBB3_70
# BB#71:                                # %if.end.296
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	arg_copy
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB3_72
# BB#73:                                # %if.end.304
	movq	%r14, %rdi
	callq	gs_main_init2
	movl	%eax, 1780(%rsp)
	testl	%eax, %eax
	js	.LBB3_85
# BB#74:                                # %if.then.307
	movl	32(%r14), %edx
	leaq	1400(%rsp), %rcx
	leaq	32(%rsp), %r8
	movl	$.L.str.23, %esi
	movq	%r14, %rdi
	callq	gs_main_run_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB3_75
# BB#76:                                # %run_string.exit
	movq	160(%r14), %rdi
	callq	zflush
	movq	160(%r14), %rdi
	callq	zflushpage
	cmpl	$-101, %ebp
	je	.LBB3_79
# BB#77:                                # %run_string.exit
	cmpl	$-100, %ebp
	jne	.LBB3_80
# BB#78:                                # %sw.bb.1.i.429
	movl	1400(%rsp), %r15d
	movq	(%r14), %r12
	callq	gs_program_name
	movq	%rax, %r13
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%r14), %rdi
	movl	$.L.str.72, %esi
	xorl	%eax, %eax
	movl	%r15d, %edx
	callq	errprintf
.LBB3_79:                               # %if.end.309.thread436
	movl	%ebp, 1780(%rsp)
	jmp	.LBB3_85
.LBB3_70:                               # %if.then.292
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	movl	%r13d, %edx
	callq	outprintf
	movq	%r15, %rdi
	callq	arg_finit
	jmp	.LBB3_319
.LBB3_72:                               # %if.end.304.thread
	movl	$-100, 1780(%rsp)
	jmp	.LBB3_85
.LBB3_75:                               # %if.end.309.thread438
	movl	$0, 1780(%rsp)
	jmp	.LBB3_81
.LBB3_66:                               # %if.then.276
	movl	$1, 176(%r14)
	jmp	.LBB3_318
.LBB3_258:                              # %cond.false.i
	movl	$.L.str.66, %esi
	movq	%r15, %rdi
	callq	strcmp
.LBB3_259:                              # %cond.end.i
	testl	%eax, %eax
	jne	.LBB3_298
# BB#260:                               # %if.then.39.i
	movq	(%r14), %rax
	movq	192(%rax), %rax
	movq	$0, 40(%rax)
	movq	32(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB3_264
# BB#261:                               # %land.lhs.true.44.i
	cmpq	16(%rax), %rdi
	je	.LBB3_264
# BB#262:                               # %land.lhs.true.52.i
	cmpq	24(%rax), %rdi
	je	.LBB3_264
# BB#263:                               # %if.then.60.i
	callq	fclose
	movq	(%r14), %rax
	movq	192(%rax), %rax
	movq	$0, 32(%rax)
.LBB3_264:                              # %if.end.68.i
	movq	%r12, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB3_298
# BB#265:                               # %land.lhs.true.80.i
	movl	$.L.str.44, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB3_273
# BB#266:                               # %cond.true.84.i
	movzbl	(%r12), %eax
	addl	$-45, %eax
	testq	%rcx, %rcx
	je	.LBB3_274
# BB#267:                               # %cond.true.84.i
	testl	%eax, %eax
	jne	.LBB3_274
# BB#268:                               # %if.then.98.i
	movb	2(%rbp), %dl
	movzbl	%dl, %eax
	cmpq	$2, %rcx
	jb	.LBB3_274
# BB#269:                               # %if.then.98.i
	testb	%dl, %dl
	jne	.LBB3_274
# BB#270:                               # %if.then.108.i
	movb	3(%rbp), %dl
	movzbl	%dl, %eax
	cmpq	$3, %rcx
	jb	.LBB3_274
# BB#271:                               # %if.then.108.i
	testb	%dl, %dl
	jne	.LBB3_274
# BB#272:                               # %if.then.118.i
	movzbl	4(%rbp), %eax
	jmp	.LBB3_274
.LBB3_80:                               # %if.end.309
	leaq	32(%rsp), %rdx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	gs_main_dump_stack
	movl	%ebp, 1780(%rsp)
	testl	%ebp, %ebp
	js	.LBB3_85
.LBB3_81:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdx
	leaq	1780(%rsp), %rsi
	movq	%r15, %rdi
	callq	arg_next
	testq	%rax, %rax
	je	.LBB3_83
# BB#82:                                # %while.body
                                        #   in Loop: Header=BB3_81 Depth=1
	movl	$.L.str.6, %esi
	movl	$.L.str.6, %ecx
	movl	$1, %r8d
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	runarg
	movl	%eax, 1780(%rsp)
	testl	%eax, %eax
	jns	.LBB3_81
	jmp	.LBB3_85
.LBB3_83:                               # %if.end.322
	cmpl	$0, 1780(%rsp)
	js	.LBB3_85
# BB#84:                                # %if.then.325
	movl	$.L.str.24, %esi
	movl	$.L.str.25, %ecx
	movl	$3, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	runarg
	movl	%eax, 1780(%rsp)
.LBB3_85:                               # %if.end.327
	movq	(%r14), %rsi
	movq	%rbx, %rdi
	callq	arg_free
	movl	1780(%rsp), %r12d
	testl	%r12d, %r12d
	js	.LBB3_319
# BB#86:                                # %if.then.331
	movl	$-101, 1780(%rsp)
	movl	$-101, %r12d
	jmp	.LBB3_319
.LBB3_48:                               # %if.then.171
	addq	$14, %rbp
	movq	%rbp, 168(%r14)
	jmp	.LBB3_318
.LBB3_52:                               # %if.then.185
	movq	(%r14), %rdi
	movq	16(%rbx), %rdx
	movl	$.L.str.20, %esi
	xorl	%eax, %eax
	callq	outprintf
.LBB3_50:                               # %cleanup.1278
	movq	%r15, %rdi
	callq	arg_finit
	movl	$-100, %r12d
	jmp	.LBB3_319
.LBB3_273:                              # %cond.false.127.i
	movl	$.L.str.44, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB3_274:                              # %cond.end.129.i
	testl	%eax, %eax
	je	.LBB3_298
# BB#275:                               # %land.lhs.true.138.i
	movl	$.L.str.67, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB3_283
# BB#276:                               # %cond.true.142.i
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB3_284
# BB#277:                               # %cond.true.142.i
	testl	%eax, %eax
	jne	.LBB3_284
# BB#278:                               # %if.then.156.i
	movzbl	2(%rbp), %eax
	addl	$-115, %eax
	cmpq	$2, %rcx
	jb	.LBB3_284
# BB#279:                               # %if.then.156.i
	testl	%eax, %eax
	jne	.LBB3_284
# BB#280:                               # %if.then.166.i
	movzbl	3(%rbp), %eax
	addl	$-116, %eax
	cmpq	$3, %rcx
	jb	.LBB3_284
# BB#281:                               # %if.then.166.i
	testl	%eax, %eax
	jne	.LBB3_284
# BB#282:                               # %if.then.176.i
	movzbl	4(%rbp), %eax
	addl	$-100, %eax
	jmp	.LBB3_284
.LBB3_283:                              # %cond.false.185.i
	movl	$.L.str.67, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB3_284:                              # %cond.end.187.i
	testl	%eax, %eax
	je	.LBB3_298
# BB#285:                               # %land.lhs.true.196.i
	movl	$.L.str.68, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB3_293
# BB#286:                               # %cond.true.200.i
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB3_294
# BB#287:                               # %cond.true.200.i
	testl	%eax, %eax
	jne	.LBB3_294
# BB#288:                               # %if.then.214.i
	movzbl	2(%rbp), %eax
	addl	$-115, %eax
	cmpq	$2, %rcx
	jb	.LBB3_294
# BB#289:                               # %if.then.214.i
	testl	%eax, %eax
	jne	.LBB3_294
# BB#290:                               # %if.then.224.i
	movzbl	3(%rbp), %eax
	addl	$-116, %eax
	cmpq	$3, %rcx
	jb	.LBB3_294
# BB#291:                               # %if.then.224.i
	testl	%eax, %eax
	jne	.LBB3_294
# BB#292:                               # %if.then.234.i
	movzbl	4(%rbp), %eax
	addl	$-100, %eax
	jmp	.LBB3_294
.LBB3_293:                              # %cond.false.243.i
	movl	$.L.str.68, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB3_294:                              # %cond.end.245.i
	testl	%eax, %eax
	je	.LBB3_295
# BB#296:                               # %if.else.i
	movl	$.L.str.69, %esi
	movq	%r12, %rdi
	callq	gp_fopen
	movq	(%r14), %rcx
	movq	192(%rcx), %rcx
	movq	%rax, 32(%rcx)
	movl	$-9, %r12d
	testq	%rax, %rax
	jne	.LBB3_297
	jmp	.LBB3_319
.LBB3_240:                              # %cond.false.1006
	movl	$.L.str.54, %esi
	movl	$4, %edx
	movq	%r12, %rdi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB3_241
.LBB3_221:                              # %land.lhs.true.1019
	movl	$.L.str.55, %edi
	callq	strlen
	cmpq	$3, %rax
	ja	.LBB3_242
# BB#222:                               # %cond.true.1033
	movzbl	(%r12), %ecx
	addl	$-116, %ecx
	testq	%rax, %rax
	je	.LBB3_229
# BB#223:                               # %cond.true.1033
	testl	%ecx, %ecx
	jne	.LBB3_229
# BB#224:                               # %if.then.1049
	movzbl	1(%r12), %ecx
	addl	$-114, %ecx
	cmpq	$2, %rax
	jb	.LBB3_229
# BB#225:                               # %if.then.1049
	testl	%ecx, %ecx
	jne	.LBB3_229
# BB#226:                               # %if.then.1059
	movzbl	2(%r12), %ecx
	addl	$-117, %ecx
	cmpq	$3, %rax
	jb	.LBB3_229
# BB#227:                               # %if.then.1059
	testl	%ecx, %ecx
	jne	.LBB3_229
# BB#228:                               # %if.then.1069
	movzbl	3(%r12), %ecx
	addl	$-101, %ecx
.LBB3_229:                              # %cond.end.1082
	testl	%ecx, %ecx
	jne	.LBB3_230
	jmp	.LBB3_243
.LBB3_295:                              # %if.then.249.i
	movq	(%r14), %rax
	movq	192(%rax), %rcx
	movl	$1, 44(%rcx)
.LBB3_297:                              # %if.end.261.i
	movl	$1, 40(%rcx)
	jmp	.LBB3_298
.LBB3_241:                              # %if.then.1011
	movw	$3584, 1760(%rsp)       # imm = 0xE00
	jmp	.LBB3_298
.LBB3_242:                              # %cond.false.1085
	movl	$.L.str.55, %esi
	movl	$4, %edx
	movq	%r12, %rdi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB3_243
.LBB3_230:                              # %if.else.1095
	cmpl	$5, %ebp
	jne	.LBB3_320
.LBB3_231:                              # %land.lhs.true.1100
	movl	$.L.str.56, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$4, %rcx
	ja	.LBB3_245
# BB#232:                               # %land.lhs.true.1110
	movq	24(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB3_244
# BB#233:                               # %cond.true.1114
	movzbl	(%rdi), %eax
	addl	$-102, %eax
	testq	%rcx, %rcx
	je	.LBB3_246
# BB#234:                               # %cond.true.1114
	testl	%eax, %eax
	jne	.LBB3_246
# BB#235:                               # %if.then.1130
	movzbl	1(%rdi), %eax
	addl	$-97, %eax
	cmpq	$2, %rcx
	jb	.LBB3_246
# BB#236:                               # %if.then.1130
	testl	%eax, %eax
	jne	.LBB3_246
# BB#237:                               # %if.then.1140
	movzbl	2(%rdi), %eax
	addl	$-108, %eax
	cmpq	$3, %rcx
	jb	.LBB3_246
# BB#238:                               # %if.then.1140
	testl	%eax, %eax
	jne	.LBB3_246
# BB#239:                               # %if.then.1150
	movzbl	3(%rdi), %eax
	addl	$-115, %eax
	jmp	.LBB3_246
.LBB3_245:                              # %cond.false.1166
	movq	24(%rsp), %rdi
	movl	$.L.str.56, %esi
	movl	$5, %edx
	callq	strncmp
	jmp	.LBB3_246
.LBB3_244:                              # %cond.false.1159
	movl	$.L.str.56, %esi
	callq	strcmp
.LBB3_246:                              # %cond.false.1166
	testl	%eax, %eax
	je	.LBB3_247
.LBB3_320:                              # %cleanup.1182
	movq	(%r14), %rdi
	movl	$.L.str.57, %esi
	jmp	.LBB3_208
.LBB3_247:                              # %if.then.1171
	movw	$0, 1768(%rsp)
	movw	$256, 1760(%rsp)        # imm = 0x100
	jmp	.LBB3_298
.LBB3_243:                              # %if.then.1090
	movw	$1, 1768(%rsp)
	movw	$256, 1760(%rsp)        # imm = 0x100
	jmp	.LBB3_298
.LBB3_203:                              # %sw.bb.905
	movl	1756(%rsp), %eax
	shll	$30, %eax
	jmp	.LBB3_204
.LBB3_199:                              # %if.then.896
	movabsq	$274877907008, %rcx     # imm = 0x4000000040
	btq	%rax, %rcx
	jae	.LBB3_200
# BB#202:                               # %sw.bb.903
	movl	1756(%rsp), %eax
	shll	$20, %eax
.LBB3_204:                              # %sw.epilog.908
	movl	%eax, 1756(%rsp)
	jmp	.LBB3_205
.LBB3_200:                              # %if.then.896.sw.epilog.908_crit_edge
	movl	1756(%rsp), %eax
.LBB3_205:                              # %sw.epilog.908
	cltq
	movq	%rax, 1768(%rsp)
	movw	$2816, 1760(%rsp)       # imm = 0xB00
.LBB3_298:                              # %cleanup.1233
	movq	8(%rsp), %rdi           # 8-byte Reload
	movl	4(%rsp), %esi           # 4-byte Reload
	callq	ialloc_set_space
.LBB3_300:                              # %cleanup.1241
	movq	160(%r14), %rdi
	leaq	1760(%rsp), %rdx
	movq	%r15, %rsi
	callq	i_initial_enter_name
.LBB3_318:                              # %sw.epilog.1277
	xorl	%r12d, %r12d
.LBB3_319:                              # %cleanup.1278
	movl	%r12d, %eax
	addq	$1800, %rsp             # imm = 0x708
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	swproc, .Lfunc_end3-swproc
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_132
	.quad	.LBB3_68
	.quad	.LBB3_87
	.quad	.LBB3_94
	.quad	.LBB3_319
	.quad	.LBB3_181
	.quad	.LBB3_113
	.quad	.LBB3_122
	.quad	.LBB3_319
	.quad	.LBB3_319
	.quad	.LBB3_133
	.quad	.LBB3_319
	.quad	.LBB3_138
	.quad	.LBB3_319
	.quad	.LBB3_141
	.quad	.LBB3_142
	.quad	.LBB3_319
	.quad	.LBB3_148
	.quad	.LBB3_319
	.quad	.LBB3_319
	.quad	.LBB3_181
	.quad	.LBB3_301
	.quad	.LBB3_319
	.quad	.LBB3_319
	.quad	.LBB3_319
	.quad	.LBB3_311
	.quad	.LBB3_319
	.quad	.LBB3_313
	.quad	.LBB3_319
	.quad	.LBB3_319
	.quad	.LBB3_319
	.quad	.LBB3_319
	.quad	.LBB3_16
	.quad	.LBB3_319
	.quad	.LBB3_319
	.quad	.LBB3_319
	.quad	.LBB3_100
	.quad	.LBB3_181
	.quad	.LBB3_319
	.quad	.LBB3_118
	.quad	.LBB3_128
	.quad	.LBB3_132
	.quad	.LBB3_319
	.quad	.LBB3_319
	.quad	.LBB3_319
	.quad	.LBB3_319
	.quad	.LBB3_319
	.quad	.LBB3_319
	.quad	.LBB3_143
	.quad	.LBB3_319
	.quad	.LBB3_172
	.quad	.LBB3_174
	.quad	.LBB3_181
	.quad	.LBB3_319
	.quad	.LBB3_306
	.quad	.LBB3_310

	.text
	.align	16, 0x90
	.type	argproc,@function
argproc:                                # @argproc
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
	pushq	%r13
.Ltmp47:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp48:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp49:
	.cfi_def_cfa_offset 56
	subq	$1048, %rsp             # imm = 0x418
.Ltmp50:
	.cfi_def_cfa_offset 1104
.Ltmp51:
	.cfi_offset %rbx, -56
.Ltmp52:
	.cfi_offset %r12, -48
.Ltmp53:
	.cfi_offset %r13, -40
.Ltmp54:
	.cfi_offset %r14, -32
.Ltmp55:
	.cfi_offset %r15, -24
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	gs_main_init1
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB4_16
# BB#1:                                 # %if.end
	cmpl	$0, 24(%rbx)
	je	.LBB4_17
# BB#2:                                 # %if.then.1
	movl	$gp_fmode_rb, %esi
	movq	%r15, %rdi
	callq	gp_fopen
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB4_3
# BB#4:                                 # %if.end.i
	movq	%rbx, %rdi
	callq	gs_main_init2
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB4_5
# BB#6:                                 # %if.end.6.i
	movl	32(%rbx), %esi
	leaq	1044(%rsp), %rdx
	leaq	1024(%rsp), %rcx
	movq	%rbx, %rdi
	callq	gs_main_run_string_begin
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB4_11
# BB#7:                                 # %if.then.8.i
	leaq	(%rsp), %r15
	leaq	1044(%rsp), %r12
	leaq	1024(%rsp), %r13
	.align	16, 0x90
.LBB4_8:                                # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	24(%rbx), %edx
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%r14, %rcx
	callq	fread
	movl	32(%rbx), %ecx
	testl	%eax, %eax
	jle	.LBB4_10
# BB#9:                                 # %while.body.i
                                        #   in Loop: Header=BB4_8 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%eax, %edx
	movq	%r12, %r8
	movq	%r13, %r9
	callq	gs_main_run_string_continue
	movl	%eax, %ebp
	cmpl	$-106, %ebp
	je	.LBB4_8
	jmp	.LBB4_11
.LBB4_17:                               # %if.else
	movl	$.L.str.6, %esi
	movl	$.L.str.25, %ecx
	movl	$3, %r8d
	movq	%rbx, %rdi
	movq	%r15, %rdx
	addq	$1048, %rsp             # imm = 0x418
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	runarg                  # TAILCALL
.LBB4_3:                                # %if.then.i
	movq	(%rbx), %rdi
	movl	$.L.str.71, %esi
	xorl	%eax, %eax
	movq	%r15, %rdx
	callq	outprintf
	movl	$-9, %ebp
	jmp	.LBB4_16
.LBB4_5:                                # %if.then.4.i
	movq	%r14, %rdi
	callq	fclose
	jmp	.LBB4_16
.LBB4_10:                               # %if.then.22.i
	leaq	1044(%rsp), %rdx
	leaq	1024(%rsp), %rax
	movq	%rbx, %rdi
	movl	%ecx, %esi
	movq	%rax, %rcx
	callq	gs_main_run_string_end
	movl	%eax, %ebp
.LBB4_11:                               # %if.end.26.i
	movq	%r14, %rdi
	callq	fclose
	movq	160(%rbx), %rdi
	callq	zflush
	movq	160(%rbx), %rdi
	callq	zflushpage
	cmpl	$-101, %ebp
	je	.LBB4_16
# BB#12:                                # %if.end.26.i
	testl	%ebp, %ebp
	je	.LBB4_16
# BB#13:                                # %if.end.26.i
	cmpl	$-100, %ebp
	jne	.LBB4_15
# BB#14:                                # %sw.bb.1.i.i
	movl	1044(%rsp), %r14d
	movq	(%rbx), %r15
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%rbx), %rdi
	movl	$.L.str.72, %esi
	xorl	%eax, %eax
	movl	%r14d, %edx
	callq	errprintf
	movl	$-100, %ebp
	jmp	.LBB4_16
.LBB4_15:                               # %sw.default.i.i
	leaq	1024(%rsp), %rdx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	gs_main_dump_stack
.LBB4_16:                               # %cleanup
	movl	%ebp, %eax
	addq	$1048, %rsp             # imm = 0x418
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	argproc, .Lfunc_end4-argproc
	.cfi_endproc

	.globl	gs_main_inst_arg_decode
	.align	16, 0x90
	.type	gs_main_inst_arg_decode,@function
gs_main_inst_arg_decode:                # @gs_main_inst_arg_decode
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 144(%rdi)
	retq
.Lfunc_end5:
	.size	gs_main_inst_arg_decode, .Lfunc_end5-gs_main_inst_arg_decode
	.cfi_endproc

	.globl	gs_main_inst_get_arg_decode
	.align	16, 0x90
	.type	gs_main_inst_get_arg_decode,@function
gs_main_inst_get_arg_decode:            # @gs_main_inst_get_arg_decode
	.cfi_startproc
# BB#0:                                 # %entry
	movq	144(%rdi), %rax
	retq
.Lfunc_end6:
	.size	gs_main_inst_get_arg_decode, .Lfunc_end6-gs_main_inst_get_arg_decode
	.cfi_endproc

	.globl	gs_main_run_start
	.align	16, 0x90
	.type	gs_main_run_start,@function
gs_main_run_start:                      # @gs_main_run_start
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp60:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp61:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp62:
	.cfi_def_cfa_offset 80
.Ltmp63:
	.cfi_offset %rbx, -48
.Ltmp64:
	.cfi_offset %r12, -40
.Ltmp65:
	.cfi_offset %r14, -32
.Ltmp66:
	.cfi_offset %r15, -24
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	32(%rbx), %edx
	leaq	28(%rsp), %rcx
	leaq	8(%rsp), %r8
	movl	$.L.str.14, %esi
	callq	gs_main_run_string
	movl	%eax, %ebp
	movq	160(%rbx), %rdi
	callq	zflush
	movq	160(%rbx), %rdi
	callq	zflushpage
	cmpl	$-101, %ebp
	je	.LBB7_5
# BB#1:                                 # %entry
	testl	%ebp, %ebp
	je	.LBB7_5
# BB#2:                                 # %entry
	cmpl	$-100, %ebp
	jne	.LBB7_4
# BB#3:                                 # %sw.bb.1.i
	movl	28(%rsp), %r14d
	movq	(%rbx), %r15
	callq	gs_program_name
	movq	%rax, %r12
	callq	gs_revision_number
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%rbx), %rdi
	movl	$.L.str.72, %esi
	xorl	%eax, %eax
	movl	%r14d, %edx
	callq	errprintf
	jmp	.LBB7_5
.LBB7_4:                                # %sw.default.i
	leaq	8(%rsp), %rdx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	gs_main_dump_stack
.LBB7_5:                                # %run_finish.exit
	movl	%ebp, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gs_main_run_start, .Lfunc_end7-gs_main_run_start
	.cfi_endproc

	.align	16, 0x90
	.type	runarg,@function
runarg:                                 # @runarg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp69:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp70:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp71:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp72:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp73:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp74:
	.cfi_def_cfa_offset 96
.Ltmp75:
	.cfi_offset %rbx, -56
.Ltmp76:
	.cfi_offset %r12, -48
.Ltmp77:
	.cfi_offset %r13, -40
.Ltmp78:
	.cfi_offset %r14, -32
.Ltmp79:
	.cfi_offset %r15, -24
.Ltmp80:
	.cfi_offset %rbp, -16
	movl	%r8d, %r15d
	movq	%rcx, %rbx
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movq	%rdx, %rbp
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, %r12
	movq	%rsi, %rdi
	callq	strlen
	movq	%rax, %r14
	movq	%rbp, %rdi
	callq	strlen
	movq	%rax, %r13
	addq	%r13, %r13
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rbx
	addl	%r14d, %ebx
	testb	$1, %r15b
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	%r12, %rdi
	callq	gs_main_init2
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB8_17
.LBB8_2:                                # %if.end.9
	leal	3(%r13,%rbx), %esi
	movq	(%r12), %rdi
	movl	$.L.str.64, %edx
	callq	*64(%rdi)
	movq	%rax, %r13
	testq	%r13, %r13
	movq	%r12, %rbx
	je	.LBB8_3
# BB#4:                                 # %if.end.18
	movq	%r13, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	strcpy
	movq	%r13, %rdi
	callq	strlen
	movb	$60, (%r13,%rax)
	movb	(%rbp), %dl
	testb	%dl, %dl
	je	.LBB8_5
# BB#6:                                 # %for.body.i.preheader
	leaq	1(%rax,%r13), %rax
	incq	%rbp
	.align	16, 0x90
.LBB8_7:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	movzbl	%dl, %eax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movb	.L.str.65(%rdx), %dl
	movb	%dl, (%rcx)
	andl	$15, %eax
	movb	.L.str.65(%rax), %al
	movb	%al, 1(%rcx)
	movb	(%rbp), %dl
	leaq	2(%rcx), %rax
	incq	%rbp
	testb	%dl, %dl
	jne	.LBB8_7
# BB#8:
	incq	%rcx
	jmp	.LBB8_9
.LBB8_3:                                # %if.then.14
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.59, %edi
	movl	$962, %esi              # imm = 0x3C2
	callq	lprintf_file_and_line
	movl	$.L.str.60, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	movl	$-25, %r14d
	jmp	.LBB8_17
.LBB8_5:
	leaq	(%r13,%rax), %rcx
	leaq	1(%r13,%rax), %rax
.LBB8_9:                                # %esc_strcat.exit
	movb	$62, (%rax)
	movb	$0, 2(%rcx)
	movq	%r13, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	strcat
	movq	160(%rbx), %rax
	movl	%r15d, %ecx
	shrl	$2, %ecx
	notl	%ecx
	andl	$1, %ecx
	movl	%ecx, 192(%rax)
	movl	32(%rbx), %edx
	leaq	36(%rsp), %rcx
	leaq	16(%rsp), %r8
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	gs_main_run_string
	movl	%eax, %r14d
	andl	$2, %r15d
	orl	%r14d, %r15d
	je	.LBB8_11
# BB#10:                                # %if.then.i
	movq	160(%rbx), %rdi
	callq	zflush
	movq	160(%rbx), %rdi
	callq	zflushpage
.LBB8_11:                               # %run_string.exit
	cmpl	$-101, %r14d
	je	.LBB8_16
# BB#12:                                # %run_string.exit
	testl	%r14d, %r14d
	je	.LBB8_16
# BB#13:                                # %run_string.exit
	cmpl	$-100, %r14d
	jne	.LBB8_15
# BB#14:                                # %sw.bb.1.i
	movl	36(%rsp), %r15d
	movq	(%rbx), %r12
	callq	gs_program_name
	movq	%rbx, %rbp
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rbx
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%rbx), %rdi
	movl	$.L.str.72, %esi
	xorl	%eax, %eax
	movl	%r15d, %edx
	callq	errprintf
	jmp	.LBB8_16
.LBB8_15:                               # %sw.default.i
	leaq	16(%rsp), %rdx
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	gs_main_dump_stack
.LBB8_16:                               # %run_finish.exit
	movq	160(%rbx), %rax
	movl	$0, 192(%rax)
	movq	(%rbx), %rdi
	movl	$.L.str.64, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
.LBB8_17:                               # %cleanup
	movl	%r14d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	runarg, .Lfunc_end8-runarg
	.cfi_endproc

	.align	16, 0x90
	.type	cmpstr,@function
cmpstr:                                 # @cmpstr
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	jmp	strcmp                  # TAILCALL
.Lfunc_end9:
	.size	cmpstr, .Lfunc_end9-cmpstr
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GS_LIB"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"--"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"--help"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"--debug"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"--version"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%s\n"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.zero	1
	.size	.L.str.6, 1

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GS_OPTIONS"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Unknown switch %s - ignoring\n"
	.size	.L.str.8, 30

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%% Init started, instance 0x%p, with args: "
	.size	.L.str.9, 44

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%s "
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\n"
	.size	.L.str.11, 2

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"print normal flush"
	.size	.L.str.12, 19

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%% Init done, instance 0x%p, with args: "
	.size	.L.str.13, 41

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"systemdict /start get exec"
	.size	.L.str.14, 27

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"-dNOPAUSE"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	".runstdin"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"debug="
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"saved-pages="
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"   Only one --saved-pages=... command allowed before processing input\n"
	.size	.L.str.19, 71

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"   --saved-pages not supported by the '%s' device.\n"
	.size	.L.str.20, 52

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"saved-pages-test"
	.size	.L.str.21, 17

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Usage: gs ... -%c file.ps arg1 ... argn\n"
	.size	.L.str.22, 41

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"userdict/ARGUMENTS["
	.size	.L.str.23, 20

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"]put"
	.size	.L.str.24, 5

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	".runfile"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"-A may only be followed by -"
	.size	.L.str.26, 29

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%u"
	.size	.L.str.27, 3

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"-B must be followed by - or size between 1 and %u\n"
	.size	.L.str.28, 51

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	".runstring"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"-E may only be followed by -"
	.size	.L.str.30, 29

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"-F requires a file name"
	.size	.L.str.31, 24

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%ldx%ld"
	.size	.L.str.32, 8

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"-g must be followed by <width>x<height>"
	.size	.L.str.33, 40

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"DEVICEWIDTH"
	.size	.L.str.34, 12

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"DEVICEHEIGHT"
	.size	.L.str.35, 13

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"FIXEDMEDIA"
	.size	.L.str.36, 11

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"%ld"
	.size	.L.str.37, 4

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"-K<numK> must have 1 <= numK <= %ld\n"
	.size	.L.str.38, 37

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"%d"
	.size	.L.str.39, 3

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"-o"
	.size	.L.str.40, 3

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"OutputFile"
	.size	.L.str.41, 11

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"NOPAUSE"
	.size	.L.str.42, 8

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"BATCH"
	.size	.L.str.43, 6

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"-"
	.size	.L.str.44, 2

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Only -P or -P- is allowed."
	.size	.L.str.45, 27

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"QUIET"
	.size	.L.str.46, 6

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"%fx%f"
	.size	.L.str.47, 6

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"-r must be followed by <res> or <xres>x<yres>"
	.size	.L.str.48, 46

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"DEVICEXRESOLUTION"
	.size	.L.str.49, 18

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"DEVICEYRESOLUTION"
	.size	.L.str.50, 18

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"FIXEDRESOLUTION"
	.size	.L.str.51, 16

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Usage: -dNAME, -dNAME=TOKEN, -sNAME=STRING"
	.size	.L.str.52, 43

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Invalid value for option -d%s, -dNAME= must be followed by a valid token\n"
	.size	.L.str.53, 74

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"null"
	.size	.L.str.54, 5

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"true"
	.size	.L.str.55, 5

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"false"
	.size	.L.str.56, 6

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Invalid value for option -d%s, use -sNAME= to define string constants\n"
	.size	.L.str.57, 71

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"-s"
	.size	.L.str.58, 3

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"./psi/imainarg.c"
	.size	.L.str.59, 17

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Out of memory!\n"
	.size	.L.str.60, 16

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"-u requires a name to undefine."
	.size	.L.str.61, 32

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"\216\003abc"
	.size	.L.str.62, 6

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"== flush\n"
	.size	.L.str.63, 10

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"runarg"
	.size	.L.str.64, 7

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"0123456789abcdef"
	.size	.L.str.65, 17

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"stdout"
	.size	.L.str.66, 7

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"%stdout"
	.size	.L.str.67, 8

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"%stderr"
	.size	.L.str.68, 8

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"w"
	.size	.L.str.69, 2

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	" (%d-%02d-%02d)\n%s\n"
	.size	.L.str.70, 20

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Unable to open %s for reading"
	.size	.L.str.71, 30

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Unrecoverable error, exit code %d\n"
	.size	.L.str.72, 35

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"%rom%"
	.size	.L.str.73, 6

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Initialization files are compiled into the executable.\n"
	.size	.L.str.74, 56

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"%s"
	.size	.L.str.75, 3

	.type	help_usage1,@object     # @help_usage1
	.section	.rodata,"a",@progbits
	.align	16
help_usage1:
	.asciz	"Usage: gs [switches] [file1.ps file2.ps ...]\nMost frequently used switches: (you can use # in place of =)\n -dNOPAUSE           no pause after page   | -q       `quiet', fewer messages\n -g<width>x<height>  page size in pixels   | -r<res>  pixels/inch resolution\n"
	.size	help_usage1, 262

	.type	help_usage2,@object     # @help_usage2
	.align	16
help_usage2:
	.asciz	" -sDEVICE=<devname>  select device         | -dBATCH  exit after last file\n -sOutputFile=<file> select output file: - for stdout, |command for pipe,\n                                         embed %d or %ld for page #\n"
	.size	help_usage2, 218

	.type	help_emulators,@object  # @help_emulators
help_emulators:
	.asciz	"Input formats:"
	.size	help_emulators, 15

	.type	.L.str.76,@object       # @.str.76
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.76:
	.asciz	" %s"
	.size	.L.str.76, 4

	.type	help_default_device,@object # @help_default_device
	.section	.rodata,"a",@progbits
	.align	16
help_default_device:
	.asciz	"Default output device:"
	.size	help_default_device, 23

	.type	.L.str.77,@object       # @.str.77
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.77:
	.asciz	" %s\n"
	.size	.L.str.77, 5

	.type	help_devices,@object    # @help_devices
	.section	.rodata,"a",@progbits
	.align	16
help_devices:
	.asciz	"Available devices:"
	.size	help_devices, 19

	.type	.L.str.78,@object       # @.str.78
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.78:
	.asciz	"print_devices"
	.size	.L.str.78, 14

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"\n  "
	.size	.L.str.79, 4

	.type	help_paths,@object      # @help_paths
	.section	.rodata,"a",@progbits
help_paths:
	.asciz	"Search path:"
	.size	help_paths, 13

	.type	.L.str.80,@object       # @.str.80
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.80:
	.asciz	" "
	.size	.L.str.80, 2

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"%c"
	.size	.L.str.81, 3

	.type	help_fontconfig,@object # @help_fontconfig
	.section	.rodata,"a",@progbits
	.align	16
help_fontconfig:
	.asciz	"Ghostscript is also using fontconfig to search for font files\n"
	.size	help_fontconfig, 63

	.type	.L.str.82,@object       # @.str.82
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.82:
	.asciz	"Use.htm"
	.size	.L.str.82, 8

	.type	help_trailer,@object    # @help_trailer
	.section	.rodata,"a",@progbits
	.align	16
help_trailer:
	.asciz	"For more information, see %s.\nPlease report bugs to bug-ghostscript@gnu.org.\n"
	.size	help_trailer, 78


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
