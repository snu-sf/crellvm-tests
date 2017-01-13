	.text
	.file	"imain.bc"
	.globl	get_minst_from_memory
	.align	16, 0x90
	.type	get_minst_from_memory,@function
get_minst_from_memory:                  # @get_minst_from_memory
	.cfi_startproc
# BB#0:                                 # %entry
	movq	192(%rdi), %rax
	movq	112(%rax), %rax
	retq
.Lfunc_end0:
	.size	get_minst_from_memory, .Lfunc_end0-get_minst_from_memory
	.cfi_endproc

	.globl	gs_main_alloc_instance
	.align	16, 0x90
	.type	gs_main_alloc_instance,@function
gs_main_alloc_instance:                 # @gs_main_alloc_instance
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB1_3
# BB#1:                                 # %if.end
	movl	$184, %esi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*8(%rbx)
	movq	%rax, %r14
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB1_3
# BB#2:                                 # %if.end.3
	movl	$gs_main_instance_init_values, %esi
	movl	$184, %edx
	movq	%r14, %rdi
	callq	memcpy
	movq	%rbx, (%r14)
	movq	192(%rbx), %rax
	movq	%r14, 112(%rax)
	movq	%r14, %rax
.LBB1_3:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	gs_main_alloc_instance, .Lfunc_end1-gs_main_alloc_instance
	.cfi_endproc

	.globl	get_op_array
	.align	16, 0x90
	.type	get_op_array,@function
get_op_array:                           # @get_op_array
	.cfi_startproc
# BB#0:                                 # %entry
	movq	192(%rdi), %rax
	movq	112(%rax), %rax
	movq	160(%rax), %rax
	cmpl	%esi, 332(%rax)
	jbe	.LBB2_2
# BB#1:
	addq	$264, %rax              # imm = 0x108
	retq
.LBB2_2:                                # %select.mid
	addq	$304, %rax              # imm = 0x130
	retq
.Lfunc_end2:
	.size	get_op_array, .Lfunc_end2-get_op_array
	.cfi_endproc

	.globl	get_global_op_array
	.align	16, 0x90
	.type	get_global_op_array,@function
get_global_op_array:                    # @get_global_op_array
	.cfi_startproc
# BB#0:                                 # %entry
	movq	192(%rdi), %rax
	movq	112(%rax), %rcx
	movl	$264, %eax              # imm = 0x108
	addq	160(%rcx), %rax
	retq
.Lfunc_end3:
	.size	get_global_op_array, .Lfunc_end3-get_global_op_array
	.cfi_endproc

	.globl	get_local_op_array
	.align	16, 0x90
	.type	get_local_op_array,@function
get_local_op_array:                     # @get_local_op_array
	.cfi_startproc
# BB#0:                                 # %entry
	movq	192(%rdi), %rax
	movq	112(%rax), %rcx
	movl	$304, %eax              # imm = 0x130
	addq	160(%rcx), %rax
	retq
.Lfunc_end4:
	.size	get_local_op_array, .Lfunc_end4-get_local_op_array
	.cfi_endproc

	.globl	gs_main_init0
	.align	16, 0x90
	.type	gs_main_init0,@function
gs_main_init0:                          # @gs_main_init0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 32
.Ltmp8:
	.cfi_offset %rbx, -32
.Ltmp9:
	.cfi_offset %r14, -24
.Ltmp10:
	.cfi_offset %rbp, -16
	movl	%r8d, %r14d
	movq	%rdi, %rbx
	callq	gp_init
	movl	$gs_debug, %edi
	xorl	%esi, %esi
	movl	$128, %edx
	callq	memset
	movb	$0, gs_debug+35(%rip)
	leaq	104(%rbx), %rdi
	callq	gp_get_realtime
	movq	(%rbx), %rdi
	movl	$16, %edx
	movl	$.L.str.1, %ecx
	movl	%r14d, %esi
	callq	*88(%rdi)
	movq	(%rbx), %rbp
	testq	%rax, %rax
	je	.LBB5_1
# BB#2:                                 # %if.end
	movl	$16, %edx
	movl	$.L.str.1, %ecx
	movq	%rbp, %rdi
	movl	%r14d, %esi
	callq	*88(%rbp)
	testq	%rax, %rax
	je	.LBB5_3
# BB#4:                                 # %if.end.12
	movq	%rax, 56(%rbx)
	movw	$1024, 48(%rbx)         # imm = 0x400
	movl	%r14d, 52(%rbx)
	movq	%rax, 72(%rbx)
	movw	$1120, 64(%rbx)         # imm = 0x460
	movl	$0, 68(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 80(%rbx)
	movl	$0, 96(%rbx)
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, 28(%rbx)
	xorl	%ebx, %ebx
	jmp	.LBB5_5
.LBB5_1:                                # %if.then
	movl	$-25, %ebx
	movl	$1, %edi
	movl	$-25, %esi
	movq	%rbp, %rdx
	callq	gs_lib_finit
	jmp	.LBB5_5
.LBB5_3:                                # %if.then.10
	movq	(%rbx), %rdx
	movl	$-25, %ebx
	movl	$1, %edi
	movl	$-25, %esi
	callq	gs_lib_finit
.LBB5_5:                                # %cleanup
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gs_main_init0, .Lfunc_end5-gs_main_init0
	.cfi_endproc

	.globl	gs_main_init1
	.align	16, 0x90
	.type	gs_main_init1,@function
gs_main_init1:                          # @gs_main_init1
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
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 40
	subq	$72, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 112
.Ltmp16:
	.cfi_offset %rbx, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	xorl	%eax, %eax
	cmpl	$0, 28(%r15)
	jg	.LBB6_9
# BB#1:                                 # %if.then
	movq	(%r15), %rbx
	movl	8(%r15), %ebp
	callq	gs_have_level2
	leaq	(%rsp), %rdi
	movq	%rbx, %rsi
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	ialloc_init
	testl	%eax, %eax
	js	.LBB6_9
# BB#2:                                 # %if.end
	movq	24(%rsp), %rdi
	callq	gs_lib_init1
	testl	%eax, %eax
	js	.LBB6_9
# BB#3:                                 # %if.end.7
	leaq	(%rsp), %rdi
	callq	alloc_save_init
	movq	24(%rsp), %r14
	movq	16(%r15), %rdi
	movq	%r14, %rsi
	callq	names_init
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB6_9
# BB#4:                                 # %if.end.19
	movq	192(%r14), %rdx
	movq	%rcx, 120(%rdx)
	addq	$120, %rdx
	xorl	%esi, %esi
	movl	$.L.str.2, %ecx
	movq	%r14, %rdi
	callq	gs_register_struct_root
	testl	%eax, %eax
	js	.LBB6_9
# BB#5:                                 # %cleanup.cont
	leaq	160(%r15), %r14
	leaq	(%rsp), %rsi
	movq	%r14, %rdi
	callq	obj_init
	testl	%eax, %eax
	js	.LBB6_9
# BB#6:                                 # %if.end.31
	movq	(%r14), %rdi
	callq	i_plugin_init
	testl	%eax, %eax
	js	.LBB6_9
# BB#7:                                 # %if.end.36
	movq	(%r14), %rax
	movq	8(%rax), %rdi
	callq	gs_iodev_init
	testl	%eax, %eax
	js	.LBB6_9
# BB#8:                                 # %cleanup.43
	movl	$1, 28(%r15)
	xorl	%eax, %eax
.LBB6_9:                                # %cleanup.48
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gs_main_init1, .Lfunc_end6-gs_main_init1
	.cfi_endproc

	.globl	gs_main_init2aux
	.align	16, 0x90
	.type	gs_main_init2aux,@function
gs_main_init2aux:                       # @gs_main_init2aux
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp22:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 40
	subq	$1448, %rsp             # imm = 0x5A8
.Ltmp24:
	.cfi_def_cfa_offset 1488
.Ltmp25:
	.cfi_offset %rbx, -40
.Ltmp26:
	.cfi_offset %r12, -32
.Ltmp27:
	.cfi_offset %r14, -24
.Ltmp28:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	cmpl	$1, 28(%r14)
	jg	.LBB7_16
# BB#1:                                 # %if.then
	movq	160(%r14), %rbx
	xorps	%xmm0, %xmm0
	movups	%xmm0, 280(%rbx)
	movups	%xmm0, 264(%rbx)
	movq	$0, 296(%rbx)
	movups	%xmm0, 320(%rbx)
	movups	%xmm0, 304(%rbx)
	movq	$0, 336(%rbx)
	movq	%rbx, %rdi
	callq	zop_init
	testl	%eax, %eax
	js	.LBB7_17
# BB#2:                                 # %if.end
	movq	%rbx, %rdi
	callq	op_init
	testl	%eax, %eax
	js	.LBB7_17
# BB#3:                                 # %if.end.7
	movq	$gs_init_files, 16(%rsp)
	movw	$4704, 8(%rsp)          # imm = 0x1260
	movl	gs_init_files_sizeof(%rip), %eax
	addl	$-2, %eax
	movl	%eax, 12(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	i_initial_enter_name
	testl	%eax, %eax
	js	.LBB7_17
# BB#4:                                 # %if.end.12
	movq	$gs_emulators, 16(%rsp)
	movw	$4704, 8(%rsp)          # imm = 0x1260
	movl	gs_emulators_sizeof(%rip), %eax
	addl	$-2, %eax
	movl	%eax, 12(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	callq	i_initial_enter_name
	testl	%eax, %eax
	js	.LBB7_17
# BB#5:                                 # %if.end.23
	leaq	64(%r14), %rdx
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	callq	i_initial_enter_name
	testl	%eax, %eax
	js	.LBB7_17
# BB#6:                                 # %if.end.27
	movq	160(%r14), %rbx
	movq	%r14, %rdi
	callq	gs_main_set_lib_paths
	movq	gs_init_file(%rip), %r15
	leaq	1432(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	gs_main_run_file_open
	testl	%eax, %eax
	js	.LBB7_7
# BB#8:                                 # %if.end.i
	leaq	48(%rsp), %r12
	leaq	1432(%rsp), %rsi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	gs_scanner_init_options
	leaq	1416(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	gs_scan_token
	testl	%eax, %eax
	jne	.LBB7_10
# BB#9:                                 # %lor.lhs.false.i
	movzbl	1417(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB7_10
# BB#11:                                # %if.end.12.i
	leaq	160(%r14), %rdi
	movq	624(%rbx), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 624(%rbx)
	movups	1416(%rsp), %xmm0
	movups	%xmm0, 16(%rax)
	orb	$-128, 1432(%rsp)
	movl	32(%r14), %edx
	leaq	48(%r14), %rax
	movq	160(%r14), %rcx
	movq	%rax, 200(%rcx)
	leaq	1432(%rsp), %rsi
	leaq	44(%rsp), %rcx
	leaq	24(%rsp), %r8
	callq	gs_interpret
	jmp	.LBB7_12
.LBB7_10:                               # %if.then.7.i
	movq	(%r14), %r12
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%r14), %rdi
	movl	$.L.str.34, %esi
	xorl	%eax, %eax
	movq	%r15, %rdx
	callq	errprintf
	movl	$255, 44(%rsp)
	movl	$-100, %eax
	jmp	.LBB7_12
.LBB7_7:                                # %if.then.i
	movl	$255, 44(%rsp)
.LBB7_12:                               # %gs_run_init_file.exit
	testl	%eax, %eax
	js	.LBB7_17
# BB#13:                                # %if.end.31
	movl	$2, 28(%r14)
	movq	152(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB7_15
# BB#14:                                # %if.then.33
	movq	%r14, %rdi
	callq	display_set_callback
	testl	%eax, %eax
	js	.LBB7_17
.LBB7_15:                               # %cleanup
	movl	$.L.str.6, %edi
	callq	strlen
	leaq	44(%rsp), %r8
	leaq	24(%rsp), %r9
	movl	$.L.str.6, %esi
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	gs_main_run_string_with_length
	testl	%eax, %eax
	js	.LBB7_17
.LBB7_16:                               # %if.end.47
	xorl	%eax, %eax
.LBB7_17:                               # %cleanup.48
	addq	$1448, %rsp             # imm = 0x5A8
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end7:
	.size	gs_main_init2aux, .Lfunc_end7-gs_main_init2aux
	.cfi_endproc

	.globl	gs_main_run_string
	.align	16, 0x90
	.type	gs_main_run_string,@function
gs_main_run_string:                     # @gs_main_run_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp30:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp32:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 48
.Ltmp34:
	.cfi_offset %rbx, -48
.Ltmp35:
	.cfi_offset %r12, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %r15
	movl	%edx, %r12d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movq	%rbx, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	movl	%r12d, %ecx
	movq	%r15, %r8
	movq	%r14, %r9
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_main_run_string_with_length # TAILCALL
.Lfunc_end8:
	.size	gs_main_run_string, .Lfunc_end8-gs_main_run_string
	.cfi_endproc

	.globl	gs_main_init2
	.align	16, 0x90
	.type	gs_main_init2,@function
gs_main_init2:                          # @gs_main_init2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp42:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 48
.Ltmp44:
	.cfi_offset %rbx, -48
.Ltmp45:
	.cfi_offset %r12, -40
.Ltmp46:
	.cfi_offset %r14, -32
.Ltmp47:
	.cfi_offset %r15, -24
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	callq	gs_main_init1
	testl	%eax, %eax
	js	.LBB9_16
# BB#1:                                 # %if.end
	movl	28(%rbx), %ebp
	movq	%rbx, %rdi
	callq	gs_main_init2aux
	testl	%eax, %eax
	js	.LBB9_16
# BB#2:                                 # %if.end.5
	movq	160(%rbx), %r12
	cmpl	$1, %ebp
	jg	.LBB9_13
# BB#3:                                 # %if.then.8
	movq	(%r12), %rdi
	callq	gs_currentdevice
	movq	%rax, %r14
	cmpl	$0, 176(%rbx)
	je	.LBB9_8
# BB#4:                                 # %if.then.11
	movl	$16, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	*1664(%r14)
	testl	%eax, %eax
	je	.LBB9_5
# BB#6:                                 # %if.else
	movl	$.L.str.7, %esi
	movl	$5, %edx
	movq	%r14, %rdi
	callq	gx_saved_pages_param_process
	testl	%eax, %eax
	js	.LBB9_16
# BB#7:                                 # %if.end.19
	jg	.LBB9_12
	jmp	.LBB9_13
.LBB9_8:                                # %if.else.30
	cmpq	$0, 168(%rbx)
	je	.LBB9_13
# BB#9:                                 # %if.then.32
	movl	$16, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	*1664(%r14)
	testl	%eax, %eax
	je	.LBB9_10
# BB#11:                                # %if.end.39
	movq	168(%rbx), %r15
	movq	%r15, %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	%eax, %edx
	callq	gx_saved_pages_param_process
	testl	%eax, %eax
	jle	.LBB9_13
.LBB9_12:                               # %if.then.46
	movq	160(%rbx), %rax
	movq	(%rax), %rdi
	callq	gs_erasepage
	testl	%eax, %eax
	jns	.LBB9_13
	jmp	.LBB9_16
.LBB9_5:                                # %if.then.14
	movl	$0, 176(%rbx)
.LBB9_13:                               # %if.end.58
	movl	$58, %edi
	callq	gs_debug_c
	testl	%eax, %eax
	je	.LBB9_15
# BB#14:                                # %if.then.61
	leaq	8(%r12), %rsi
	movl	$.L.str.9, %edx
	movq	%rbx, %rdi
	callq	print_resource_usage
.LBB9_15:                               # %if.end.62
	addq	$120, %rbx
	movq	32(%r12), %rsi
	movq	%rbx, %rdi
	callq	gp_readline_init
	xorl	%eax, %eax
.LBB9_16:                               # %cleanup.65
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_10:                               # %if.then.37
	movq	(%rbx), %rdi
	movq	16(%r14), %rdx
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	callq	outprintf
	movl	$-100, %eax
	jmp	.LBB9_16
.Lfunc_end9:
	.size	gs_main_init2, .Lfunc_end9-gs_main_init2
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4741671816366391296     # double 1.0E+9
	.text
	.globl	print_resource_usage
	.align	16, 0x90
	.type	print_resource_usage,@function
print_resource_usage:                   # @print_resource_usage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp52:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp53:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp55:
	.cfi_def_cfa_offset 112
.Ltmp56:
	.cfi_offset %rbx, -56
.Ltmp57:
	.cfi_offset %r12, -48
.Ltmp58:
	.cfi_offset %r13, -40
.Ltmp59:
	.cfi_offset %r14, -32
.Ltmp60:
	.cfi_offset %r15, -24
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, (%rsp)            # 8-byte Spill
	leaq	32(%rsp), %rdi
	callq	gp_get_realtime
	movq	16(%r15), %rbp
	xorl	%r12d, %r12d
	testq	%rbp, %rbp
	movl	$0, %r13d
	je	.LBB10_3
# BB#1:                                 # %if.then
	movq	%rbp, %rdi
	callq	*32(%rbp)
	movq	%rax, %rbx
	leaq	8(%rsp), %rsi
	movq	%rbp, %rdi
	callq	*40(%rbp)
	movq	8(%rsp), %r13
	movq	16(%rsp), %r12
	cmpq	%rbp, %rbx
	je	.LBB10_3
# BB#2:                                 # %if.then.20
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*40(%rbx)
	addq	8(%rsp), %r13
	addq	16(%rsp), %r12
.LBB10_3:                               # %if.end.27
	movq	24(%r15), %rbp
	testq	%rbp, %rbp
	je	.LBB10_8
# BB#4:                                 # %lor.lhs.false.1
	cmpq	16(%r15), %rbp
	je	.LBB10_8
# BB#5:                                 # %if.then.1
	movq	%r14, %rbx
	movq	%rbp, %rdi
	callq	*32(%rbp)
	movq	%rax, %r14
	leaq	8(%rsp), %rsi
	movq	%rbp, %rdi
	callq	*40(%rbp)
	addq	8(%rsp), %r13
	addq	16(%rsp), %r12
	cmpq	%rbp, %r14
	je	.LBB10_7
# BB#6:                                 # %if.then.20.1
	leaq	8(%rsp), %rsi
	movq	%r14, %rdi
	callq	*40(%r14)
	addq	8(%rsp), %r13
	addq	16(%rsp), %r12
.LBB10_7:                               # %if.end.1
	movq	%rbx, %r14
.LBB10_8:                               # %if.end.27.1
	movq	32(%r15), %rbp
	testq	%rbp, %rbp
	je	.LBB10_13
# BB#9:                                 # %lor.lhs.false.2
	cmpq	24(%r15), %rbp
	je	.LBB10_13
# BB#10:                                # %if.then.2
	movq	%r14, %rbx
	movq	%rbp, %rdi
	callq	*32(%rbp)
	movq	%rax, %r14
	leaq	8(%rsp), %rsi
	movq	%rbp, %rdi
	callq	*40(%rbp)
	addq	8(%rsp), %r13
	addq	16(%rsp), %r12
	cmpq	%rbp, %r14
	je	.LBB10_12
# BB#11:                                # %if.then.20.2
	leaq	8(%rsp), %rsi
	movq	%r14, %rdi
	callq	*40(%r14)
	addq	8(%rsp), %r13
	addq	16(%rsp), %r12
.LBB10_12:                              # %if.end.2
	movq	%rbx, %r14
.LBB10_13:                              # %if.end.27.2
	movq	40(%r15), %rbp
	testq	%rbp, %rbp
	je	.LBB10_17
# BB#14:                                # %lor.lhs.false.3
	cmpq	32(%r15), %rbp
	je	.LBB10_17
# BB#15:                                # %if.then.3
	movq	%rbp, %rdi
	callq	*32(%rbp)
	movq	%rax, %rbx
	leaq	8(%rsp), %rsi
	movq	%rbp, %rdi
	callq	*40(%rbp)
	addq	8(%rsp), %r13
	addq	16(%rsp), %r12
	cmpq	%rbp, %rbx
	je	.LBB10_17
# BB#16:                                # %if.then.20.3
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*40(%rbx)
	addq	8(%rsp), %r13
	addq	16(%rsp), %r12
.LBB10_17:                              # %if.end.3
	movq	(%rsp), %rdx            # 8-byte Reload
	movq	(%rdx), %rdi
	movq	32(%rsp), %rax
	movq	40(%rsp), %rcx
	subq	104(%rdx), %rax
	cvtsi2sdq	%rax, %xmm1
	subq	112(%rdx), %rcx
	cvtsi2sdq	%rcx, %xmm0
	divsd	.LCPI10_0(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movl	$.L.str.23, %esi
	movb	$1, %al
	movq	%r14, %rdx
	movq	%r13, %rcx
	movq	%r12, %r8
	callq	errprintf
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	print_resource_usage, .Lfunc_end10-print_resource_usage
	.cfi_endproc

	.globl	gs_main_add_lib_path
	.align	16, 0x90
	.type	gs_main_add_lib_path,@function
gs_main_add_lib_path:                   # @gs_main_add_lib_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp64:
	.cfi_def_cfa_offset 32
.Ltmp65:
	.cfi_offset %rbx, -24
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsi, %rax
	movq	%rdi, %rbx
	leaq	48(%rbx), %rsi
	cmpl	$0, 68(%rbx)
	je	.LBB11_1
# BB#2:                                 # %land.rhs
	movq	56(%rbx), %rcx
	movl	$gp_current_directory_name, %edx
	cmpq	%rdx, 8(%rcx)
	sete	%cl
	jmp	.LBB11_3
.LBB11_1:
	xorl	%ecx, %ecx
.LBB11_3:                               # %land.end
	movzbl	%cl, %ebp
	movl	96(%rbx), %ecx
	addl	%ebp, %ecx
	movl	%ecx, 68(%rbx)
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	file_path_add
	movl	68(%rbx), %ecx
	subl	%ebp, %ecx
	movl	%ecx, 96(%rbx)
	testl	%eax, %eax
	js	.LBB11_4
# BB#5:                                 # %if.end
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	gs_main_set_lib_paths   # TAILCALL
.LBB11_4:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gs_main_add_lib_path, .Lfunc_end11-gs_main_add_lib_path
	.cfi_endproc

	.align	16, 0x90
	.type	file_path_add,@function
file_path_add:                          # @file_path_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp68:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp69:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp70:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp71:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp72:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp73:
	.cfi_def_cfa_offset 96
.Ltmp74:
	.cfi_offset %rbx, -56
.Ltmp75:
	.cfi_offset %r12, -48
.Ltmp76:
	.cfi_offset %r13, -40
.Ltmp77:
	.cfi_offset %r14, -32
.Ltmp78:
	.cfi_offset %r15, -24
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rdx, %r12
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r13
	xorl	%eax, %eax
	testq	%r12, %r12
	je	.LBB12_12
# BB#1:                                 # %for.cond.preheader
	movl	20(%rsi), %edi
	movzbl	gp_file_name_list_separator(%rip), %r15d
	.align	16, 0x90
.LBB12_2:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_3 Depth 2
	movq	%r12, %r14
	.align	16, 0x90
.LBB12_3:                               # %while.cond
                                        #   Parent Loop BB12_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %rbp
	movb	(%rbp), %al
	leaq	1(%rbp), %r12
	testb	%al, %al
	je	.LBB12_5
# BB#4:                                 # %while.cond
                                        #   in Loop: Header=BB12_3 Depth=2
	movzbl	%al, %ecx
	cmpl	%r15d, %ecx
	jne	.LBB12_3
.LBB12_5:                               # %while.end
                                        #   in Loop: Header=BB12_2 Depth=1
	cmpq	%r14, %rbp
	jbe	.LBB12_10
# BB#6:                                 # %if.then.9
                                        #   in Loop: Header=BB12_2 Depth=1
	cmpl	4(%rsi), %edi
	jne	.LBB12_9
# BB#7:                                 # %if.then.14
                                        #   in Loop: Header=BB12_2 Depth=1
	movl	%edi, 28(%rsp)          # 4-byte Spill
	movl	52(%r13), %ecx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	56(%r13), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	(%r13), %rdi
	leal	5(%rcx), %ebx
	movl	$16, %edx
	movl	$.L.str.32, %ecx
	movl	%ebx, %esi
	callq	*88(%rdi)
	testq	%rax, %rax
	je	.LBB12_13
# BB#8:                                 # %extend_path_list_container.exit
                                        #   in Loop: Header=BB12_2 Depth=1
	movq	%rax, 56(%r13)
	movw	$1024, 48(%r13)         # imm = 0x400
	movl	%ebx, 52(%r13)
	movq	%rax, 72(%r13)
	movw	$1120, 64(%r13)         # imm = 0x460
	movl	$0, 68(%r13)
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdx
	shlq	$4, %rdx
	movq	%rax, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	memcpy
	movl	%ebx, 68(%r13)
	movq	(%r13), %rdi
	movl	$.L.str.33, %edx
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movq	8(%rsp), %rsi           # 8-byte Reload
	movl	28(%rsp), %edi          # 4-byte Reload
.LBB12_9:                               # %if.end.23
                                        #   in Loop: Header=BB12_2 Depth=1
	movl	%edi, %eax
	movq	8(%rsi), %rcx
	shlq	$4, %rax
	movq	%r14, 8(%rcx,%rax)
	movq	8(%rsi), %rcx
	movw	$4704, (%rcx,%rax)      # imm = 0x1260
	movl	%ebp, %edx
	subl	%r14d, %edx
	movl	%edx, 4(%rcx,%rax)
	incl	%edi
	movb	(%rbp), %al
.LBB12_10:                              # %cleanup
                                        #   in Loop: Header=BB12_2 Depth=1
	testb	%al, %al
	jne	.LBB12_2
# BB#11:                                # %for.end
	movl	%edi, 20(%rsi)
	xorl	%eax, %eax
	jmp	.LBB12_12
.LBB12_13:                              # %cleanup.thread
	movq	(%r13), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%r13), %rdi
	movl	$.L.str.31, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$-25, %eax
.LBB12_12:                              # %cleanup.46
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	file_path_add, .Lfunc_end12-file_path_add
	.cfi_endproc

	.globl	gs_main_set_lib_paths
	.align	16, 0x90
	.type	gs_main_set_lib_paths,@function
gs_main_set_lib_paths:                  # @gs_main_set_lib_paths
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp81:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp82:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp83:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp84:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp85:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp86:
	.cfi_def_cfa_offset 64
.Ltmp87:
	.cfi_offset %rbx, -56
.Ltmp88:
	.cfi_offset %r12, -48
.Ltmp89:
	.cfi_offset %r13, -40
.Ltmp90:
	.cfi_offset %r14, -32
.Ltmp91:
	.cfi_offset %r15, -24
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rdi, %r12
	movq	56(%r12), %r14
	movl	68(%r12), %eax
	testl	%eax, %eax
	je	.LBB13_1
# BB#2:                                 # %land.rhs
	movl	$gp_current_directory_name, %ecx
	cmpq	%rcx, 8(%r14)
	sete	%cl
	jmp	.LBB13_3
.LBB13_1:
	xorl	%ecx, %ecx
.LBB13_3:                               # %land.end
	movslq	96(%r12), %rbp
	cmpl	$0, 36(%r12)
	je	.LBB13_8
# BB#4:                                 # %if.then
	testb	%cl, %cl
	jne	.LBB13_10
# BB#5:                                 # %lor.lhs.false
	testl	%eax, %eax
	je	.LBB13_7
# BB#6:                                 # %land.lhs.true
	movl	$gp_current_directory_name, %edi
	callq	strlen
	movq	8(%r14), %rdx
	movl	4(%r14), %ecx
	movl	$gp_current_directory_name, %edi
	movl	%eax, %esi
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB13_10
.LBB13_7:                               # %if.then.20
	leaq	16(%r14), %rdi
	movq	%rbp, %rdx
	shlq	$4, %rdx
	movq	%r14, %rsi
	callq	memmove
	movq	$gp_current_directory_name, 8(%r14)
	movw	$4704, (%r14)           # imm = 0x1260
	movl	$gp_current_directory_name, %edi
	callq	strlen
	movl	%eax, 4(%r14)
	jmp	.LBB13_10
.LBB13_8:                               # %if.else
	testb	%cl, %cl
	je	.LBB13_10
# BB#9:                                 # %if.then.30
	leaq	16(%r14), %rsi
	movq	%rbp, %rdx
	shlq	$4, %rdx
	movq	%r14, %rdi
	callq	memmove
.LBB13_10:                              # %if.end.36
	leaq	48(%r12), %r14
	cmpl	$1, 36(%r12)
	sbbl	$-1, %ebp
	movl	%ebp, 68(%r12)
	movq	80(%r12), %rdx
	xorl	%r15d, %r15d
	testq	%rdx, %rdx
	je	.LBB13_12
# BB#11:                                # %if.then.47
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	file_path_add
	movl	%eax, %r15d
.LBB13_12:                              # %if.end.52
	movl	gx_io_device_table_count(%rip), %r13d
	xorl	%ebx, %ebx
	testl	%r13d, %r13d
	je	.LBB13_20
	.align	16, 0x90
.LBB13_13:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	gx_io_device_table(,%rbx,8), %rax
	movq	(%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB13_16
# BB#14:                                # %land.lhs.true.58
                                        #   in Loop: Header=BB13_13 Depth=1
	movq	%rbp, %rdi
	callq	strlen
	cmpq	$5, %rax
	jne	.LBB13_16
# BB#15:                                # %land.lhs.true.62
                                        #   in Loop: Header=BB13_13 Depth=1
	movl	$.L.str.10, %edi
	movl	$5, %edx
	movq	%rbp, %rsi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB13_17
.LBB13_16:                              # %for.inc
                                        #   in Loop: Header=BB13_13 Depth=1
	incq	%rbx
	cmpl	%r13d, %ebx
	jb	.LBB13_13
	jmp	.LBB13_20
.LBB13_17:                              # %for.end
	testl	%r15d, %r15d
	js	.LBB13_22
# BB#18:                                # %if.then.72
	movl	$.L.str.11, %edx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	file_path_add
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB13_22
# BB#19:                                # %if.end.78
	movl	$.L.str.12, %edx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	file_path_add
	movl	%eax, %r15d
.LBB13_20:                              # %if.end.81
	testl	%r15d, %r15d
	js	.LBB13_22
# BB#21:                                # %if.end.81
	movq	88(%r12), %rdx
	testq	%rdx, %rdx
	je	.LBB13_22
# BB#23:                                # %if.then.88
	movq	%r12, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	file_path_add           # TAILCALL
.LBB13_22:                              # %cleanup.94
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gs_main_set_lib_paths, .Lfunc_end13-gs_main_set_lib_paths
	.cfi_endproc

	.globl	gs_main_lib_open
	.align	16, 0x90
	.type	gs_main_lib_open,@function
gs_main_lib_open:                       # @gs_main_lib_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp93:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp94:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp95:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp96:
	.cfi_def_cfa_offset 40
	subq	$2088, %rsp             # imm = 0x828
.Ltmp97:
	.cfi_def_cfa_offset 2128
.Ltmp98:
	.cfi_offset %rbx, -40
.Ltmp99:
	.cfi_offset %r12, -32
.Ltmp100:
	.cfi_offset %r14, -24
.Ltmp101:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	160(%rbx), %rax
	addq	$48, %rbx
	movq	8(%rax), %r12
	movq	%r15, %rdi
	callq	strlen
	movq	%r14, 16(%rsp)
	leaq	28(%rsp), %rcx
	movq	%rcx, 8(%rsp)
	movl	$2048, (%rsp)           # imm = 0x800
	leaq	32(%rsp), %r9
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rcx
	movl	%eax, %r8d
	callq	lib_file_open
	addq	$2088, %rsp             # imm = 0x828
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end14:
	.size	gs_main_lib_open, .Lfunc_end14-gs_main_lib_open
	.cfi_endproc

	.globl	gs_main_run_file
	.align	16, 0x90
	.type	gs_main_run_file,@function
gs_main_run_file:                       # @gs_main_run_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp103:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp104:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp105:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp106:
	.cfi_def_cfa_offset 64
.Ltmp107:
	.cfi_offset %rbx, -40
.Ltmp108:
	.cfi_offset %r14, -32
.Ltmp109:
	.cfi_offset %r15, -24
.Ltmp110:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %r15
	movl	%edx, %ebp
	movq	%rdi, %rbx
	leaq	8(%rsp), %rdx
	callq	gs_main_run_file_open
	testl	%eax, %eax
	js	.LBB15_2
# BB#1:                                 # %if.end
	movq	160(%rbx), %rax
	leaq	48(%rbx), %rcx
	leaq	160(%rbx), %rdi
	movq	%rcx, 200(%rax)
	leaq	8(%rsp), %rsi
	movl	%ebp, %edx
	movq	%r15, %rcx
	movq	%r14, %r8
	callq	gs_interpret
.LBB15_2:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gs_main_run_file, .Lfunc_end15-gs_main_run_file
	.cfi_endproc

	.globl	gs_main_run_file_open
	.align	16, 0x90
	.type	gs_main_run_file_open,@function
gs_main_run_file_open:                  # @gs_main_run_file_open
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
	subq	$2088, %rsp             # imm = 0x828
.Ltmp117:
	.cfi_def_cfa_offset 2144
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
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gs_main_set_lib_paths
	movq	160(%rbx), %rax
	leaq	48(%rbx), %r13
	movq	8(%rax), %rbp
	movq	%r14, %rdi
	callq	strlen
	movq	%r15, 16(%rsp)
	leaq	28(%rsp), %rcx
	movq	%rcx, 8(%rsp)
	movl	$2048, (%rsp)           # imm = 0x800
	xorl	%r12d, %r12d
	leaq	32(%rsp), %r9
	xorl	%edx, %edx
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%r14, %rcx
	movl	%eax, %r8d
	callq	lib_file_open
	testl	%eax, %eax
	js	.LBB16_1
# BB#2:                                 # %if.end
	orb	$-64, (%r15)
	jmp	.LBB16_3
.LBB16_1:                               # %if.then
	movq	(%rbx), %r15
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%rbx), %rdi
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	movq	%r14, %rdx
	callq	errprintf
	movl	$-100, %r12d
.LBB16_3:                               # %return
	movl	%r12d, %eax
	addq	$2088, %rsp             # imm = 0x828
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gs_main_run_file_open, .Lfunc_end16-gs_main_run_file_open
	.cfi_endproc

	.globl	gs_main_run_string_with_length
	.align	16, 0x90
	.type	gs_main_run_string_with_length,@function
gs_main_run_string_with_length:         # @gs_main_run_string_with_length
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp125:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp126:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp127:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp128:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp129:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp130:
	.cfi_def_cfa_offset 80
.Ltmp131:
	.cfi_offset %rbx, -56
.Ltmp132:
	.cfi_offset %r12, -48
.Ltmp133:
	.cfi_offset %r13, -40
.Ltmp134:
	.cfi_offset %r14, -32
.Ltmp135:
	.cfi_offset %r15, -24
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, %r15
	movl	%ecx, %r12d
	movl	%edx, %ebp
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, %rbx
	callq	gs_main_set_lib_paths
	movq	$.L.str.14, 16(%rsp)
	movw	$4832, 8(%rsp)          # imm = 0x12E0
	movl	$.L.str.14, %edi
	callq	strlen
	movl	%eax, 12(%rsp)
	movq	160(%rbx), %rax
	leaq	48(%rbx), %r13
	leaq	160(%rbx), %rbx
	movq	%r13, 200(%rax)
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	movl	%r12d, %edx
	movq	%r15, %rcx
	movq	%r14, %r8
	callq	gs_interpret
	movl	%eax, %ecx
	testl	%ecx, %ecx
	movl	$-100, %edx
	cmovnel	%ecx, %edx
	xorl	%eax, %eax
	cmpl	$-106, %ecx
	cmovnel	%edx, %eax
	testl	%eax, %eax
	js	.LBB17_5
# BB#1:                                 # %if.end
	testl	%ebp, %ebp
	je	.LBB17_2
# BB#3:                                 # %gs_main_run_string_continue.exit
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%rax, 16(%rsp)
	movw	$4704, 8(%rsp)          # imm = 0x1260
	movl	%ebp, 12(%rsp)
	movq	(%rbx), %rax
	movq	%r13, 200(%rax)
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	movl	%r12d, %edx
	movq	%r15, %rcx
	movq	%r14, %r8
	callq	gs_interpret
	cmpl	$-106, %eax
	jne	.LBB17_5
# BB#4:                                 # %if.end.4
	movq	$0, 16(%rsp)
	movw	$4704, 8(%rsp)          # imm = 0x1260
	movl	$0, 12(%rsp)
	movq	(%rbx), %rax
	movq	%r13, 200(%rax)
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	movl	%r12d, %edx
	movq	%r15, %rcx
	movq	%r14, %r8
	callq	gs_interpret
	jmp	.LBB17_5
.LBB17_2:                               # %gs_main_run_string_continue.exit.thread
	xorl	%eax, %eax
.LBB17_5:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gs_main_run_string_with_length, .Lfunc_end17-gs_main_run_string_with_length
	.cfi_endproc

	.globl	gs_main_run_string_begin
	.align	16, 0x90
	.type	gs_main_run_string_begin,@function
gs_main_run_string_begin:               # @gs_main_run_string_begin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp137:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp138:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp139:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp140:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp141:
	.cfi_def_cfa_offset 64
.Ltmp142:
	.cfi_offset %rbx, -40
.Ltmp143:
	.cfi_offset %r14, -32
.Ltmp144:
	.cfi_offset %r15, -24
.Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movl	%esi, %ebp
	movq	%rdi, %rbx
	callq	gs_main_set_lib_paths
	movq	$.L.str.14, 16(%rsp)
	movw	$4832, 8(%rsp)          # imm = 0x12E0
	movl	$.L.str.14, %edi
	callq	strlen
	movl	%eax, 12(%rsp)
	movq	160(%rbx), %rax
	leaq	48(%rbx), %rcx
	leaq	160(%rbx), %rdi
	movq	%rcx, 200(%rax)
	leaq	8(%rsp), %rsi
	movl	%ebp, %edx
	movq	%r15, %rcx
	movq	%r14, %r8
	callq	gs_interpret
	testl	%eax, %eax
	movl	$-100, %edx
	cmovnel	%eax, %edx
	xorl	%ecx, %ecx
	cmpl	$-106, %eax
	cmovnel	%edx, %ecx
	movl	%ecx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gs_main_run_string_begin, .Lfunc_end18-gs_main_run_string_begin
	.cfi_endproc

	.globl	gs_main_run_string_continue
	.align	16, 0x90
	.type	gs_main_run_string_continue,@function
gs_main_run_string_continue:            # @gs_main_run_string_continue
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp146:
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB19_2
# BB#1:                                 # %if.end
	movq	%rsi, 16(%rsp)
	movw	$4704, 8(%rsp)          # imm = 0x1260
	movl	%edx, 12(%rsp)
	movq	160(%rdi), %rax
	leaq	48(%rdi), %rdx
	leaq	160(%rdi), %rdi
	movq	%rdx, 200(%rax)
	leaq	8(%rsp), %rsi
	movl	%ecx, %edx
	movq	%r8, %rcx
	movq	%r9, %r8
	callq	gs_interpret
.LBB19_2:                               # %cleanup
	addq	$24, %rsp
	retq
.Lfunc_end19:
	.size	gs_main_run_string_continue, .Lfunc_end19-gs_main_run_string_continue
	.cfi_endproc

	.globl	gs_main_run_string_end
	.align	16, 0x90
	.type	gs_main_run_string_end,@function
gs_main_run_string_end:                 # @gs_main_run_string_end
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp147:
	.cfi_def_cfa_offset 32
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%esi, %edx
	movq	$0, 16(%rsp)
	movw	$4704, 8(%rsp)          # imm = 0x1260
	movl	$0, 12(%rsp)
	movq	160(%rdi), %rsi
	leaq	48(%rdi), %rax
	leaq	160(%rdi), %rdi
	movq	%rax, 200(%rsi)
	leaq	8(%rsp), %rsi
	callq	gs_interpret
	addq	$24, %rsp
	retq
.Lfunc_end20:
	.size	gs_main_run_string_end, .Lfunc_end20-gs_main_run_string_end
	.cfi_endproc

	.globl	gs_push_boolean
	.align	16, 0x90
	.type	gs_push_boolean,@function
gs_push_boolean:                        # @gs_push_boolean
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp148:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp149:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp150:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp151:
	.cfi_def_cfa_offset 48
.Ltmp152:
	.cfi_offset %rbx, -32
.Ltmp153:
	.cfi_offset %r14, -24
.Ltmp154:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	160(%rdi), %rbp
	addq	$624, %rbp              # imm = 0x270
	movl	$1, %esi
	movq	%rbp, %rdi
	callq	ref_stack_push
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB21_2
# BB#1:                                 # %if.end.i
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	ref_stack_index
	movw	$256, (%rax)            # imm = 0x100
	movw	14(%rsp), %cx
	movw	%cx, 6(%rax)
	movl	10(%rsp), %ecx
	movl	%ecx, 2(%rax)
	movw	%r14w, 8(%rax)
	movw	8(%rsp), %cx
	movw	%cx, 14(%rax)
	movl	4(%rsp), %ecx
	movl	%ecx, 10(%rax)
.LBB21_2:                               # %push_value.exit
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gs_push_boolean, .Lfunc_end21-gs_push_boolean
	.cfi_endproc

	.globl	gs_push_integer
	.align	16, 0x90
	.type	gs_push_integer,@function
gs_push_integer:                        # @gs_push_integer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp155:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp156:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp157:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp158:
	.cfi_def_cfa_offset 48
.Ltmp159:
	.cfi_offset %rbx, -32
.Ltmp160:
	.cfi_offset %r14, -24
.Ltmp161:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	160(%rdi), %rbx
	addq	$624, %rbx              # imm = 0x270
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	ref_stack_push
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB22_2
# BB#1:                                 # %if.end.i
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	ref_stack_index
	movw	$2816, (%rax)           # imm = 0xB00
	movw	14(%rsp), %cx
	movw	%cx, 6(%rax)
	movl	10(%rsp), %ecx
	movl	%ecx, 2(%rax)
	movq	%r14, 8(%rax)
.LBB22_2:                               # %push_value.exit
	movl	%r15d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end22:
	.size	gs_push_integer, .Lfunc_end22-gs_push_integer
	.cfi_endproc

	.globl	gs_push_real
	.align	16, 0x90
	.type	gs_push_real,@function
gs_push_real:                           # @gs_push_real
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp162:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp163:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp164:
	.cfi_def_cfa_offset 48
.Ltmp165:
	.cfi_offset %rbx, -24
.Ltmp166:
	.cfi_offset %r14, -16
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movq	160(%rdi), %rbx
	addq	$624, %rbx              # imm = 0x270
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	ref_stack_push
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB23_2
# BB#1:                                 # %if.end.i
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rsp)          # 4-byte Spill
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	ref_stack_index
	movw	$4096, (%rax)           # imm = 0x1000
	movw	22(%rsp), %cx
	movw	%cx, 6(%rax)
	movl	18(%rsp), %ecx
	movl	%ecx, 2(%rax)
	movss	8(%rsp), %xmm0          # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 8(%rax)
.LBB23_2:                               # %push_value.exit
	movl	%r14d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end23:
	.size	gs_push_real, .Lfunc_end23-gs_push_real
	.cfi_endproc

	.globl	gs_push_string
	.align	16, 0x90
	.type	gs_push_string,@function
gs_push_string:                         # @gs_push_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp167:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp168:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp169:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp170:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp171:
	.cfi_def_cfa_offset 48
.Ltmp172:
	.cfi_offset %rbx, -48
.Ltmp173:
	.cfi_offset %r12, -40
.Ltmp174:
	.cfi_offset %r14, -32
.Ltmp175:
	.cfi_offset %r15, -24
.Ltmp176:
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	160(%rdi), %rbx
	addq	$624, %rbx              # imm = 0x270
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	ref_stack_push
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB24_2
# BB#1:                                 # %if.end.i
	testl	%r12d, %r12d
	movw	$4704, %ax              # imm = 0x1260
	movw	$4720, %r12w            # imm = 0x1270
	cmovnew	%ax, %r12w
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	ref_stack_index
	movw	%r12w, (%rax)
	movl	%r15d, 4(%rax)
	movq	%r14, 8(%rax)
.LBB24_2:                               # %push_value.exit
	movl	%ebp, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gs_push_string, .Lfunc_end24-gs_push_string
	.cfi_endproc

	.globl	gs_pop_boolean
	.align	16, 0x90
	.type	gs_pop_boolean,@function
gs_pop_boolean:                         # @gs_pop_boolean
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp177:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp178:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp179:
	.cfi_def_cfa_offset 32
.Ltmp180:
	.cfi_offset %rbx, -24
.Ltmp181:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	160(%rdi), %rbx
	addq	$624, %rbx              # imm = 0x270
	movq	%rbx, %rdi
	callq	ref_stack_count
	movl	%eax, %ecx
	movl	$-17, %eax
	testl	%ecx, %ecx
	je	.LBB25_3
# BB#1:                                 # %do.body
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	ref_stack_index
	movq	%rax, %rcx
	movl	$-20, %eax
	movzbl	1(%rcx), %edx
	cmpl	$1, %edx
	jne	.LBB25_3
# BB#2:                                 # %do.end
	movzwl	8(%rcx), %eax
	movl	%eax, (%r14)
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	ref_stack_pop
	xorl	%eax, %eax
.LBB25_3:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end25:
	.size	gs_pop_boolean, .Lfunc_end25-gs_pop_boolean
	.cfi_endproc

	.globl	gs_pop_integer
	.align	16, 0x90
	.type	gs_pop_integer,@function
gs_pop_integer:                         # @gs_pop_integer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp182:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp183:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp184:
	.cfi_def_cfa_offset 32
.Ltmp185:
	.cfi_offset %rbx, -24
.Ltmp186:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	160(%rdi), %rbx
	addq	$624, %rbx              # imm = 0x270
	movq	%rbx, %rdi
	callq	ref_stack_count
	movl	%eax, %ecx
	movl	$-17, %eax
	testl	%ecx, %ecx
	je	.LBB26_3
# BB#1:                                 # %do.body
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	ref_stack_index
	movq	%rax, %rcx
	movl	$-20, %eax
	movzbl	1(%rcx), %edx
	cmpl	$11, %edx
	jne	.LBB26_3
# BB#2:                                 # %do.end
	movq	8(%rcx), %rax
	movq	%rax, (%r14)
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	ref_stack_pop
	xorl	%eax, %eax
.LBB26_3:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end26:
	.size	gs_pop_integer, .Lfunc_end26-gs_pop_integer
	.cfi_endproc

	.globl	gs_pop_real
	.align	16, 0x90
	.type	gs_pop_real,@function
gs_pop_real:                            # @gs_pop_real
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp187:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp188:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp189:
	.cfi_def_cfa_offset 32
.Ltmp190:
	.cfi_offset %rbx, -24
.Ltmp191:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	160(%rdi), %rbx
	addq	$624, %rbx              # imm = 0x270
	movq	%rbx, %rdi
	callq	ref_stack_count
	movl	%eax, %ecx
	movl	$-17, %eax
	testl	%ecx, %ecx
	je	.LBB27_6
# BB#1:                                 # %if.end
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	ref_stack_index
	movzbl	1(%rax), %edx
	cmpl	$11, %edx
	movq	8(%rax), %rcx
	jne	.LBB27_2
# BB#4:                                 # %sw.bb.2
	cvtsi2ssq	%rcx, %xmm0
	jmp	.LBB27_5
.LBB27_2:                               # %if.end
	movl	$-20, %eax
	cmpl	$16, %edx
	jne	.LBB27_6
# BB#3:                                 # %sw.bb
	movd	%ecx, %xmm0
.LBB27_5:                               # %sw.epilog
	movss	%xmm0, (%r14)
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	ref_stack_pop
	xorl	%eax, %eax
.LBB27_6:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end27:
	.size	gs_pop_real, .Lfunc_end27-gs_pop_real
	.cfi_endproc

	.globl	gs_pop_string
	.align	16, 0x90
	.type	gs_pop_string,@function
gs_pop_string:                          # @gs_pop_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp192:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp193:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp194:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp195:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp196:
	.cfi_def_cfa_offset 64
.Ltmp197:
	.cfi_offset %rbx, -40
.Ltmp198:
	.cfi_offset %r14, -32
.Ltmp199:
	.cfi_offset %r15, -24
.Ltmp200:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$624, %ebx              # imm = 0x270
	addq	160(%r15), %rbx
	movq	%rbx, %rdi
	callq	ref_stack_count
	movl	$-17, %ebp
	testl	%eax, %eax
	je	.LBB28_6
# BB#1:                                 # %if.end
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	ref_stack_index
	movups	(%rax), %xmm0
	movaps	%xmm0, (%rsp)
	movzbl	1(%rsp), %eax
	cmpl	$18, %eax
	jne	.LBB28_2
# BB#4:                                 # %sw.bb.2
	movq	(%rsp), %rax
	movl	%eax, %ebp
	shrl	$4, %ebp
	notl	%ebp
	andl	$1, %ebp
	shrq	$32, %rax
	jmp	.LBB28_5
.LBB28_2:                               # %if.end
	movl	$-20, %ebp
	cmpl	$13, %eax
	jne	.LBB28_6
# BB#3:                                 # %sw.bb
	movq	(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	(%rsp), %rsi
	movq	%rsi, %rdx
	callq	names_string_ref
	movl	$1, %ebp
	movl	4(%rsp), %eax
.LBB28_5:                               # %rstr
	movq	8(%rsp), %rcx
	movq	%rcx, (%r14)
	movl	%eax, 8(%r14)
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	ref_stack_pop
.LBB28_6:                               # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gs_pop_string, .Lfunc_end28-gs_pop_string
	.cfi_endproc

	.globl	gs_main_finit
	.align	16, 0x90
	.type	gs_main_finit,@function
gs_main_finit:                          # @gs_main_finit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp201:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp202:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp203:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp204:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp205:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp206:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp207:
	.cfi_def_cfa_offset 192
.Ltmp208:
	.cfi_offset %rbx, -56
.Ltmp209:
	.cfi_offset %r12, -48
.Ltmp210:
	.cfi_offset %r13, -40
.Ltmp211:
	.cfi_offset %r14, -32
.Ltmp212:
	.cfi_offset %r15, -24
.Ltmp213:
	.cfi_offset %rbp, -16
	movl	%edx, 44(%rsp)          # 4-byte Spill
	movl	%esi, %r14d
	movq	%rdi, %r12
	movq	160(%r12), %rbp
	movq	$0, 72(%rsp)
	xorl	%ebx, %ebx
	cmpl	$2, 28(%r12)
	jl	.LBB29_12
# BB#1:                                 # %if.then.i
	leaq	504(%rbp), %rdi
	leaq	128(%rsp), %rdx
	movl	$.L.str.35, %esi
	callq	dict_find_string
	xorl	%ebx, %ebx
	testl	%eax, %eax
	jle	.LBB29_12
# BB#2:                                 # %lor.lhs.false.i
	movq	128(%rsp), %rdi
	leaq	120(%rsp), %rdx
	movl	$.L.str.36, %esi
	callq	dict_find_string
	xorl	%r13d, %r13d
	testl	%eax, %eax
	movl	$0, %ebx
	jle	.LBB29_12
# BB#3:                                 # %if.end.i
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movl	%r14d, 28(%rsp)         # 4-byte Spill
	movq	120(%rsp), %rdi
	callq	dict_first
	movl	%eax, %ebx
	leaq	80(%rsp), %rbp
	leaq	72(%rsp), %r14
	leaq	68(%rsp), %r15
	jmp	.LBB29_4
.LBB29_6:                               # %if.then.12.i
                                        #   in Loop: Header=BB29_4 Depth=1
	movl	68(%rsp), %eax
	leal	1(%r13,%rax), %r13d
	.align	16, 0x90
.LBB29_4:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movq	120(%rsp), %rdi
	movl	%ebx, %esi
	movq	%rbp, %rdx
	callq	dict_next
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB29_7
# BB#5:                                 # %while.body.i
                                        #   in Loop: Header=BB29_4 Depth=1
	movq	(%r12), %rdi
	movq	%rbp, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	callq	obj_string_data
	testl	%eax, %eax
	js	.LBB29_4
	jmp	.LBB29_6
.LBB29_7:                               # %while.end.i
	xorl	%ebx, %ebx
	testl	%r13d, %r13d
	movl	28(%rsp), %r14d         # 4-byte Reload
	movq	32(%rsp), %rbp          # 8-byte Reload
	je	.LBB29_12
# BB#8:                                 # %if.end.19.i
	incl	%r13d
	movslq	%r13d, %r15
	movq	%r15, %rdi
	callq	malloc
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB29_12
# BB#9:                                 # %if.then.20.i
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	%r15, %rdx
	callq	memset
	movq	120(%rsp), %rdi
	callq	dict_first
	movl	%eax, %r15d
	leaq	80(%rsp), %rbp
	leaq	72(%rsp), %r13
	leaq	68(%rsp), %r14
	jmp	.LBB29_10
.LBB29_21:                              # %if.then.36.i
                                        #   in Loop: Header=BB29_10 Depth=1
	movslq	%ebx, %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	16(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rcx), %rdi
	movq	72(%rsp), %rsi
	movl	68(%rsp), %edx
	callq	memcpy
	movl	68(%rsp), %eax
	movq	8(%rsp), %rcx           # 8-byte Reload
	leal	(%rcx,%rax), %ecx
	leal	1(%rax,%rbx), %ebx
	movslq	%ecx, %rax
	movq	16(%rsp), %rcx          # 8-byte Reload
	movb	$0, (%rcx,%rax)
	.align	16, 0x90
.LBB29_10:                              # %while.cond.25.i
                                        # =>This Inner Loop Header: Depth=1
	movq	120(%rsp), %rdi
	movl	%r15d, %esi
	movq	%rbp, %rdx
	callq	dict_next
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB29_11
# BB#20:                                # %while.body.30.i
                                        #   in Loop: Header=BB29_10 Depth=1
	movq	(%r12), %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	movq	%r14, %rcx
	callq	obj_string_data
	testl	%eax, %eax
	js	.LBB29_10
	jmp	.LBB29_21
.LBB29_11:
	movq	16(%rsp), %rbx          # 8-byte Reload
	movl	28(%rsp), %r14d         # 4-byte Reload
	movq	32(%rsp), %rbp          # 8-byte Reload
.LBB29_12:                              # %gs_main_tempnames.exit
	cmpl	$0, 28(%r12)
	jle	.LBB29_33
# BB#13:                                # %if.then
	cmpq	$0, 64(%rbp)
	je	.LBB29_16
# BB#14:                                # %if.then.4
	leaq	160(%r12), %rbp
	movl	$8, %esi
	movq	%rbp, %rdi
	callq	interp_reclaim
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB29_52
# BB#15:                                # %if.end
	movq	(%rbp), %rbp
.LBB29_16:                              # %if.end.14
	movq	(%rbp), %rax
	testq	%rax, %rax
	je	.LBB29_31
# BB#17:                                # %land.lhs.true
	movq	1872(%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB29_31
# BB#18:                                # %if.then.18
	movq	16(%rbp), %rcx
	movq	56(%rbp), %rax
	incq	%rax
	movq	%rax, 56(%rbp)
	je	.LBB29_22
# BB#19:
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	jmp	.LBB29_23
.LBB29_52:                              # %cleanup
	movq	(%r12), %r14
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%r12), %rdi
	movl	$.L.str.15, %esi
	xorl	%eax, %eax
	movl	%r15d, %edx
	callq	errprintf
	movl	$-100, %r14d
	jmp	.LBB29_51
.LBB29_22:                              # %do.end.34
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	64(%rbp), %rdi
	movl	$.L.str.16, %edx
	movq	%rbp, %rsi
	callq	*72(%rbp)
	xorl	%ebp, %ebp
.LBB29_23:                              # %do.end.46
	movl	$.L.str.17, %edi
	callq	strlen
	leaq	64(%rsp), %r8
	leaq	48(%rsp), %r9
	movl	$.L.str.17, %esi
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	gs_main_run_string_with_length
	movq	%rbp, %rdi
	callq	gs_closedevice
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB29_24
# BB#25:                                # %do.body.57
	testq	%rbp, %rbp
	jne	.LBB29_26
	jmp	.LBB29_28
.LBB29_24:                              # %do.body.57.thread
	movl	%r14d, 28(%rsp)         # 4-byte Spill
	movq	24(%rbp), %r14
	callq	gs_program_name
	movq	%rax, %r15
	callq	gs_revision_number
	movq	%r14, %rdi
	movl	28(%rsp), %r14d         # 4-byte Reload
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbp), %rdi
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	movl	%r13d, %edx
	movq	16(%rsp), %rcx          # 8-byte Reload
	callq	errprintf
.LBB29_26:                              # %do.end.63
	decq	56(%rbp)
	jne	.LBB29_28
# BB#27:                                # %do.end.76
	movq	64(%rbp), %rdi
	movl	$.L.str.16, %edx
	movq	%rbp, %rsi
	callq	*72(%rbp)
.LBB29_28:                              # %do.end.90
	testl	%r14d, %r14d
	je	.LBB29_30
# BB#29:                                # %do.end.90
	cmpl	$-101, %r14d
	jne	.LBB29_31
.LBB29_30:                              # %if.then.93
	movl	%r13d, %r14d
.LBB29_31:                              # %if.end.96
	cmpl	$2, 28(%r12)
	jl	.LBB29_33
# BB#32:                                # %if.then.99
	movl	$.L.str.19, %edi
	callq	strlen
	leaq	64(%rsp), %r8
	leaq	48(%rsp), %r9
	movl	$.L.str.19, %esi
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	gs_main_run_string_with_length
.LBB29_33:                              # %if.end.101
	movl	44(%rsp), %r13d         # 4-byte Reload
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movq	120(%r12), %rdi
	callq	gp_readline_finit
	movq	160(%r12), %rbx
	movl	$58, %edi
	callq	gs_debug_c
	testl	%eax, %eax
	je	.LBB29_35
# BB#34:                                # %if.then.105
	leaq	8(%rbx), %rsi
	movl	$.L.str.20, %edx
	movq	%r12, %rdi
	callq	print_resource_usage
	movq	(%r12), %rdi
	movl	$.L.str.21, %esi
	xorl	%eax, %eax
	movq	%r12, %rdx
	callq	errprintf
.LBB29_35:                              # %if.end.109
	cmpl	$0, 28(%r12)
	jle	.LBB29_39
# BB#36:                                # %if.then.112
	movq	8(%rbx), %rax
	movq	200(%rax), %rbp
	movq	720(%rbx), %r15
	leaq	8(%rbx), %rdi
	callq	alloc_restore_all
	movl	%eax, %r13d
	testl	%r13d, %r13d
	jns	.LBB29_38
# BB#37:                                # %if.then.117
	callq	gs_program_name
	movl	%r14d, 28(%rsp)         # 4-byte Spill
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	28(%rsp), %r14d         # 4-byte Reload
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r13d, %edx
	callq	errprintf
.LBB29_38:                              # %if.end.121
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	i_plugin_finit
.LBB29_39:                              # %if.end.122
	movq	(%r12), %rdx
	movq	192(%rdx), %rax
	movq	32(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB29_40
# BB#41:                                # %land.lhs.true.125
	cmpq	16(%rax), %rdi
	je	.LBB29_42
# BB#43:                                # %land.lhs.true.132
	cmpq	24(%rax), %rdi
	movq	32(%rsp), %rbp          # 8-byte Reload
	je	.LBB29_45
# BB#44:                                # %if.then.139
	callq	fclose
	movq	(%r12), %rdx
	movq	192(%rdx), %rax
	movq	$0, 32(%rax)
	jmp	.LBB29_45
.LBB29_40:
	movq	32(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB29_45
.LBB29_42:
	movq	32(%rsp), %rbp          # 8-byte Reload
.LBB29_45:                              # %if.end.147
	movq	$0, 40(%rax)
	testq	%rbp, %rbp
	je	.LBB29_50
# BB#46:                                # %while.cond.preheader
	cmpb	$0, (%rbp)
	je	.LBB29_49
# BB#47:
	movq	%rbp, %rbx
	.align	16, 0x90
.LBB29_48:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	unlink
	movq	%rbx, %rdi
	callq	strlen
	cmpb	$0, 1(%rax,%rbx)
	leaq	1(%rax,%rbx), %rbx
	jne	.LBB29_48
.LBB29_49:                              # %while.end
	movq	%rbp, %rdi
	callq	free
	movq	(%r12), %rdx
.LBB29_50:                              # %if.end.158
	movl	%r14d, %edi
	movl	%r13d, %esi
	callq	gs_lib_finit
.LBB29_51:                              # %cleanup.160
	movl	%r14d, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gs_main_finit, .Lfunc_end29-gs_main_finit
	.cfi_endproc

	.globl	gs_to_exit_with_code
	.align	16, 0x90
	.type	gs_to_exit_with_code,@function
gs_to_exit_with_code:                   # @gs_to_exit_with_code
	.cfi_startproc
# BB#0:                                 # %entry
	movq	192(%rdi), %rax
	movq	112(%rax), %rdi
	jmp	gs_main_finit           # TAILCALL
.Lfunc_end30:
	.size	gs_to_exit_with_code, .Lfunc_end30-gs_to_exit_with_code
	.cfi_endproc

	.globl	gs_to_exit
	.align	16, 0x90
	.type	gs_to_exit,@function
gs_to_exit:                             # @gs_to_exit
	.cfi_startproc
# BB#0:                                 # %entry
	movq	192(%rdi), %rax
	movq	112(%rax), %rdi
	xorl	%edx, %edx
	jmp	gs_main_finit           # TAILCALL
.Lfunc_end31:
	.size	gs_to_exit, .Lfunc_end31-gs_to_exit
	.cfi_endproc

	.globl	gs_abort
	.align	16, 0x90
	.type	gs_abort,@function
gs_abort:                               # @gs_abort
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %edi
	jmp	gp_do_exit              # TAILCALL
.Lfunc_end32:
	.size	gs_abort, .Lfunc_end32-gs_abort
	.cfi_endproc

	.globl	gs_main_dump_stack
	.align	16, 0x90
	.type	gs_main_dump_stack,@function
gs_main_dump_stack:                     # @gs_main_dump_stack
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp214:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp215:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp216:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp217:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp218:
	.cfi_def_cfa_offset 48
.Ltmp219:
	.cfi_offset %rbx, -40
.Ltmp220:
	.cfi_offset %r14, -32
.Ltmp221:
	.cfi_offset %r15, -24
.Ltmp222:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	160(%rbx), %r14
	movq	%r14, %rdi
	callq	zflush
	movq	(%rbx), %rdi
	movl	$.L.str.24, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	callq	errprintf
	testq	%r15, %r15
	je	.LBB33_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rdi
	movl	$.L.str.25, %esi
	movl	$.L.str.26, %edx
	xorl	%eax, %eax
	callq	errprintf
	movq	(%rbx), %rdi
	movq	%r15, %rsi
	callq	debug_print_ref
	movq	(%rbx), %rdi
	movl	$.L.str.27, %esi
	movl	$10, %edx
	xorl	%eax, %eax
	callq	errprintf
.LBB33_2:                               # %if.end
	movq	(%rbx), %rdi
	leaq	624(%r14), %rsi
	movl	$.L.str.28, %edx
	callq	debug_dump_stack
	movq	(%rbx), %rdi
	leaq	520(%r14), %rsi
	movl	$.L.str.29, %edx
	callq	debug_dump_stack
	movq	(%rbx), %rdi
	addq	$368, %r14              # imm = 0x170
	movl	$.L.str.30, %edx
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	debug_dump_stack        # TAILCALL
.Lfunc_end33:
	.size	gs_main_dump_stack, .Lfunc_end33-gs_main_dump_stack
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"init_main_instance"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"lib_path array"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"the_gs_name_table"
	.size	.L.str.2, 18

	.type	empty_table,@object     # @empty_table
	.section	.rodata,"a",@progbits
	.align	8
empty_table:
	.zero	40
	.size	empty_table, 40

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"INITFILES"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"EMULATORS"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"LIBPATH"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"JOBSERVER  { false 0 .startnewjob }  { NOOUTERSAVE not { save pop } if } ifelse"
	.size	.L.str.6, 80

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"begin"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"   --saved-pages not supported by the '%s' device.\n"
	.size	.L.str.8, 52

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Start"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%rom%"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%rom%Resource/Init/"
	.size	.L.str.11, 20

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%rom%lib/"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Can't find initialization file %s.\n"
	.size	.L.str.13, 36

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	".runstringbegin"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"ERROR %d reclaiming the memory while the interpreter finalization.\n"
	.size	.L.str.15, 68

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gs_main_finit"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	".uninstallpagedevice serverdict /.jobsavelevel get 0 eq {/quit} {/stop} ifelse .systemvar exec"
	.size	.L.str.17, 95

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"ERROR %d closing %s device. See gs/psi/ierrors.h for code explanation.\n"
	.size	.L.str.18, 72

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"(%stdout) (w) file closefile (%stderr) (w) file closefile serverdict /.jobsavelevel get 0 eq {/quit} {/stop} ifelse .systemvar exec"
	.size	.L.str.19, 132

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Final"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%% Exiting instance 0x%p\n"
	.size	.L.str.21, 26

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"ERROR %d while the final restore. See gs/psi/ierrors.h for code explanation.\n"
	.size	.L.str.22, 78

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%% %s time = %g, memory allocated = %lu, used = %lu\n"
	.size	.L.str.23, 53

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"\nUnexpected interpreter error %d.\n"
	.size	.L.str.24, 35

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"%s"
	.size	.L.str.25, 3

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Error object: "
	.size	.L.str.26, 15

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%c"
	.size	.L.str.27, 3

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Operand stack"
	.size	.L.str.28, 14

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Execution stack"
	.size	.L.str.29, 16

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Dictionary stack"
	.size	.L.str.30, 17

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"\nAdding path to search paths failed.\n"
	.size	.L.str.31, 38

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"extend_path_list_container array"
	.size	.L.str.32, 33

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"extend_path_list_container"
	.size	.L.str.33, 27

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Initialization file %s does not begin with an integer.\n"
	.size	.L.str.34, 56

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"SAFETY"
	.size	.L.str.35, 7

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"tempfiles"
	.size	.L.str.36, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
