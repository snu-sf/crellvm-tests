	.text
	.file	"help.bc"
	.align	16, 0x90
	.type	query,@function
query:                                  # @query
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
	pushq	%rbx
	subq	$88, %rsp
.Ltmp3:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.5, %rdi
	movabsq	$.L.str.1, %rax
	movabsq	$.L.str.6, %rcx
	movabsq	$.L.str.7, %r8
	movabsq	$.L.str.8, %r9
	xorl	%edx, %edx
	movl	%edx, %esi
	movl	$2, %edx
	movl	$4, %r10d
	xorl	%r11d, %r11d
	movabsq	$query.args, %rbx
	movq	%rsi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movl	%edx, -20(%rbp)         # 4-byte Spill
	movq	%rax, %rdx
	movq	$0, (%rsp)
	movq	%rax, 8(%rsp)
	movl	$2, 16(%rsp)
	movl	$4, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%r10d, -24(%rbp)        # 4-byte Spill
	movl	%r11d, -28(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	query, .Lfunc_end0-query
	.cfi_endproc

	.align	16, 0x90
	.type	run,@function
run:                                    # @run
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -44(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.9, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.9, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -72(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	cmpl	$4, -12(%rbp)
	jne	.LBB1_6
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	8(%rax), %edi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	88(%rax), %edx
	movq	-24(%rbp), %rax
	movq	128(%rax), %rcx
	callq	gimp_help_init
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then.13
	movl	$1, -44(%rbp)
.LBB1_5:                                # %if.end
	jmp	.LBB1_7
.LBB1_6:                                # %if.else
	movabsq	$.L.str.11, %rdi
	movb	$0, %al
	callq	g_printerr
	movl	$1, -44(%rbp)
.LBB1_7:                                # %if.end.14
	cmpl	$3, -44(%rbp)
	jne	.LBB1_9
# BB#8:                                 # %if.then.16
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%esi, %esi
	callq	g_main_loop_new
	movq	%rax, main_loop
	callq	temp_proc_install
	callq	gimp_extension_ack
	callq	gimp_extension_enable
	movq	main_loop, %rdi
	callq	g_main_loop_run
	movq	main_loop, %rdi
	callq	g_main_loop_unref
	movabsq	$.L.str.12, %rdi
	movq	$0, main_loop
	callq	gimp_uninstall_temp_proc
.LBB1_9:                                # %if.end.18
	movabsq	$run.values, %rax
	movl	$21, run.values
	movl	-44(%rbp), %ecx
	movl	%ecx, run.values+8
	movq	-32(%rbp), %rdx
	movl	$1, (%rdx)
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	run, .Lfunc_end1-run
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$PLUG_IN_INFO, %rax
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_main
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc

	.align	16, 0x90
	.type	temp_proc_install,@function
temp_proc_install:                      # @temp_proc_install
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
.Ltmp13:
	.cfi_offset %rbx, -48
.Ltmp14:
	.cfi_offset %r12, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.22, %rdx
	movabsq	$.L.str.23, %rcx
	movabsq	$.L.str.7, %r8
	movabsq	$.L.str.8, %r9
	xorl	%eax, %eax
	movl	%eax, %r10d
	movabsq	$.L.str.1, %r11
	movl	$3, %eax
	movl	$4, %ebx
	xorl	%r14d, %r14d
	movabsq	$temp_proc_install.args, %r15
	movabsq	$temp_proc_run, %r12
	movq	$0, (%rsp)
	movq	%r11, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$4, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, 56(%rsp)
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movq	%r10, -48(%rbp)         # 8-byte Spill
	movl	%r14d, -52(%rbp)        # 4-byte Spill
	movl	%ebx, -56(%rbp)         # 4-byte Spill
	callq	gimp_install_temp_proc
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	temp_proc_install, .Lfunc_end3-temp_proc_install
	.cfi_endproc

	.align	16, 0x90
	.type	temp_proc_run,@function
temp_proc_run:                          # @temp_proc_run
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movabsq	$temp_proc_run.values, %rax
	movabsq	$.L.str.25, %r9
	movabsq	$.L.str.24, %r10
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -44(%rbp)
	movq	$0, -56(%rbp)
	movq	%r10, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpl	$4, -12(%rbp)
	jne	.LBB4_14
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB4_4
# BB#2:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB4_4
# BB#3:                                 # %if.then.5
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB4_4:                                # %if.end
	movq	-24(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB4_7
# BB#5:                                 # %land.lhs.true.13
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB4_7
# BB#6:                                 # %if.then.19
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB4_7:                                # %if.end.23
	movq	-24(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB4_10
# BB#8:                                 # %land.lhs.true.28
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB4_10
# BB#9:                                 # %if.then.34
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB4_10:                               # %if.end.38
	movq	-24(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB4_13
# BB#11:                                # %land.lhs.true.43
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB4_13
# BB#12:                                # %if.then.49
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB4_13:                               # %if.end.53
	jmp	.LBB4_14
.LBB4_14:                               # %if.end.54
	cmpq	$0, -56(%rbp)
	jne	.LBB4_16
# BB#15:                                # %if.then.56
	movl	$1, -44(%rbp)
.LBB4_16:                               # %if.end.57
	movl	$21, temp_proc_run.values
	movl	-44(%rbp), %eax
	movl	%eax, temp_proc_run.values+8
	cmpl	$3, -44(%rbp)
	jne	.LBB4_18
# BB#17:                                # %if.then.59
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	callq	load_help
.LBB4_18:                               # %if.end.60
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	temp_proc_run, .Lfunc_end4-temp_proc_run
	.cfi_endproc

	.align	16, 0x90
	.type	load_help,@function
load_help:                              # @load_help
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$32, %eax
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, %rdi
	callq	g_slice_alloc
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_strdup
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-32(%rbp), %rdi
	callq	g_strdup
	movabsq	$load_help_idle, %rdi
	movq	-40(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_idle_add
	movl	%eax, -44(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	load_help, .Lfunc_end5-load_help
	.cfi_endproc

	.align	16, 0x90
	.type	load_help_idle,@function
load_help_idle:                         # @load_help_idle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	gimp_help_lookup_domain
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB6_11
# BB#1:                                 # %if.then
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gimp_help_parse_locales
	movabsq	$.L.str.26, %rsi
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	jne	.LBB6_3
# BB#2:                                 # %if.then.4
	callq	load_help_progress_new
	movq	%rax, -32(%rbp)
.LBB6_3:                                # %if.end
	xorl	%eax, %eax
	movl	%eax, %r8d
	leaq	-52(%rbp), %r9
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	-32(%rbp), %rcx
	callq	gimp_help_domain_map
	movq	%rax, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB6_5
# BB#4:                                 # %if.then.8
	movq	-32(%rbp), %rdi
	callq	gimp_help_progress_free
.LBB6_5:                                # %if.end.9
	movabsq	$g_free, %rsi
	movq	-40(%rbp), %rdi
	callq	g_list_free_full
	cmpq	$0, -48(%rbp)
	je	.LBB6_7
# BB#6:                                 # %if.then.11
	leaq	-68(%rbp), %rsi
	movl	$4, %edx
	movl	$22, %r8d
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rcx
	movb	$0, %al
	callq	gimp_run_procedure
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_destroy_params
	movq	-48(%rbp), %rdi
	callq	g_free
	jmp	.LBB6_10
.LBB6_7:                                # %if.else
	cmpl	$0, -52(%rbp)
	je	.LBB6_9
# BB#8:                                 # %if.then.14
	movq	main_loop, %rdi
	callq	g_main_loop_quit
.LBB6_9:                                # %if.end.15
	jmp	.LBB6_10
.LBB6_10:                               # %if.end.16
	jmp	.LBB6_11
.LBB6_11:                               # %if.end.17
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_free
# BB#12:                                # %do.body
	movl	$32, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#13:                                # %do.end
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	load_help_idle, .Lfunc_end6-load_help_idle
	.cfi_endproc

	.align	16, 0x90
	.type	load_help_progress_new,@function
load_help_progress_new:                 # @load_help_progress_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	movabsq	$load_help_progress_new.vtable, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	gimp_help_progress_new
	popq	%rbp
	retq
.Lfunc_end7:
	.size	load_help_progress_new, .Lfunc_end7-load_help_progress_new
	.cfi_endproc

	.align	16, 0x90
	.type	load_help_progress_start,@function
load_help_progress_start:               # @load_help_progress_start
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_progress_init
	movl	%eax, -28(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	load_help_progress_start, .Lfunc_end8-load_help_progress_start
	.cfi_endproc

	.align	16, 0x90
	.type	load_help_progress_end,@function
load_help_progress_end:                 # @load_help_progress_end
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_progress_end
	movl	%eax, -12(%rbp)         # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	load_help_progress_end, .Lfunc_end9-load_help_progress_end
	.cfi_endproc

	.align	16, 0x90
	.type	load_help_progress_update,@function
load_help_progress_update:              # @load_help_progress_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movsd	%xmm0, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	%eax, -20(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	load_help_progress_update, .Lfunc_end10-load_help_progress_update
	.cfi_endproc

	.type	PLUG_IN_INFO,@object    # @PLUG_IN_INFO
	.section	.rodata,"a",@progbits
	.globl	PLUG_IN_INFO
	.align	8
PLUG_IN_INFO:
	.quad	0
	.quad	0
	.quad	query
	.quad	run
	.size	PLUG_IN_INFO, 32

	.type	query.args,@object      # @query.args
	.align	16
query.args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.1
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.3
	.quad	.L.str.1
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.1
	.size	query.args, 96

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"num-domain-names"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.zero	1
	.size	.L.str.1, 1

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"domain-names"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"num-domain-uris"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"domain-uris"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"extension-gimp-help"
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Sven Neumann <sven@gimp.org>, Michael Natterer <mitch@gimp.org>, Henrik Brix Andersen <brix@gimp.org>"
	.size	.L.str.6, 102

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Sven Neumann, Michael Natterer & Henrik Brix Andersen"
	.size	.L.str.7, 54

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"1999-2008"
	.size	.L.str.8, 10

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.9, 20

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"UTF-8"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"help: wrong number of arguments in procedure call.\n"
	.size	.L.str.11, 52

	.type	main_loop,@object       # @main_loop
	.local	main_loop
	.comm	main_loop,8,8
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"extension-gimp-help-temp"
	.size	.L.str.12, 25

	.type	temp_proc_install.args,@object # @temp_proc_install.args
	.section	.rodata,"a",@progbits
	.align	16
temp_proc_install.args:
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.13
	.quad	.L.str.14
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.15
	.quad	.L.str.16
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.17
	.quad	.L.str.18
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.19
	.quad	.L.str.20
	.size	temp_proc_install.args, 96

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"procedure"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"The procedure of the browser to use"
	.size	.L.str.14, 36

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"help-domain"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Help domain to use"
	.size	.L.str.16, 19

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"help-locales"
	.size	.L.str.17, 13

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Language to use"
	.size	.L.str.18, 16

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"help-id"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Help ID to open"
	.size	.L.str.20, 16

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"DON'T USE THIS ONE"
	.size	.L.str.21, 19

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"(Temporary procedure)"
	.size	.L.str.22, 22

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Sven Neumann <sven@gimp.org>, Michael Natterer <mitch@gimp.org>Henrik Brix Andersen <brix@gimp.org"
	.size	.L.str.23, 99

	.type	temp_proc_run.values,@object # @temp_proc_run.values
	.local	temp_proc_run.values
	.comm	temp_proc_run.values,40,16
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"http://www.gimp.org/help"
	.size	.L.str.24, 25

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-main"
	.size	.L.str.25, 10

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"file:"
	.size	.L.str.26, 6

	.type	load_help_progress_new.vtable,@object # @load_help_progress_new.vtable
	.section	.rodata,"a",@progbits
	.align	8
load_help_progress_new.vtable:
	.quad	load_help_progress_start
	.quad	load_help_progress_end
	.quad	load_help_progress_update
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	load_help_progress_new.vtable, 56


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
