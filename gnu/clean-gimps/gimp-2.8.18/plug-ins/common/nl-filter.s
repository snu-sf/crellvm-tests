	.text
	.file	"nl-filter.bc"
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.14, %rdx
	movabsq	$.L.str.15, %rcx
	movabsq	$.L.str.16, %r8
	movabsq	$.L.str.17, %r9
	movabsq	$.L.str.18, %rax
	movabsq	$.L.str.19, %r10
	movl	$1, %r11d
	movl	$6, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$6, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.20, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -64(%rbp)         # 4-byte Spill
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
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
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -56(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -52(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.21, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.22, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.21, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movl	$21, run.values(%rip)
	movl	-56(%rbp), %edi
	movl	%edi, run.values+8(%rip)
	movl	-52(%rbp), %edi
	testl	%edi, %edi
	movl	%edi, -84(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_18
.LBB1_18:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_19
.LBB1_19:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_10
	jmp	.LBB1_11
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.12, %rdi
	movabsq	$nlfvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	nlfilter_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_17
.LBB1_5:                                # %if.end
	jmp	.LBB1_12
.LBB1_6:                                # %sw.bb.9
	cmpl	$6, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.10
	movl	$1, -56(%rbp)
	jmp	.LBB1_9
.LBB1_8:                                # %if.else
	movq	-24(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, nlfvals
	movq	-24(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, nlfvals+8
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, nlfvals+16
.LBB1_9:                                # %if.end.19
	jmp	.LBB1_12
.LBB1_10:                               # %sw.bb.20
	movabsq	$.L.str.12, %rdi
	movabsq	$nlfvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_12
.LBB1_11:                               # %sw.default
	jmp	.LBB1_12
.LBB1_12:                               # %sw.epilog
	cmpl	$3, -56(%rbp)
	jne	.LBB1_16
# BB#13:                                # %if.then.23
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	nlfilter
	cmpl	$0, -52(%rbp)
	jne	.LBB1_15
# BB#14:                                # %if.then.25
	movabsq	$.L.str.12, %rdi
	movabsq	$nlfvals, %rax
	movl	$24, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB1_15:                               # %if.end.27
	jmp	.LBB1_16
.LBB1_16:                               # %if.end.28
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_17:                               # %return
	addq	$112, %rsp
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
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
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
	.type	atfilt0,@function
atfilt0:                                # @atfilt0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	M0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	12(%rdi), %rdi
	addl	M1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	28(%rdi), %rdi
	addl	M2(,%rdi,4), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	H0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	8(%rdi), %rdi
	addl	H1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	4(%rdi), %rdi
	addl	H2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	32(%rdi), %rdi
	addl	H3(,%rdi,4), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	V0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	12(%rdi), %rdi
	addl	V1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	8(%rdi), %rdi
	addl	V2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	4(%rdi), %rdi
	addl	V3(,%rdi,4), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	V0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	12(%rdi), %rdi
	addl	V1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	16(%rdi), %rdi
	addl	V2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	20(%rdi), %rdi
	addl	V3(,%rdi,4), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	H0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	16(%rdi), %rdi
	addl	H1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	20(%rdi), %rdi
	addl	H2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	24(%rdi), %rdi
	addl	H3(,%rdi,4), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	V0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	28(%rdi), %rdi
	addl	V1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	24(%rdi), %rdi
	addl	V2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	20(%rdi), %rdi
	addl	V3(,%rdi,4), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	V0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	28(%rdi), %rdi
	addl	V1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	32(%rdi), %rdi
	addl	V2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	4(%rdi), %rdi
	addl	V3(,%rdi,4), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	sarl	$8, %eax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	atfilt0, .Lfunc_end3-atfilt0
	.cfi_endproc

	.align	16, 0x90
	.type	atfilt1,@function
atfilt1:                                # @atfilt1
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	M0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	12(%rdi), %rdi
	addl	M1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	28(%rdi), %rdi
	addl	M2(,%rdi,4), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	H0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	8(%rdi), %rdi
	addl	H1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	4(%rdi), %rdi
	addl	H2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	32(%rdi), %rdi
	addl	H3(,%rdi,4), %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	V0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	12(%rdi), %rdi
	addl	V1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	8(%rdi), %rdi
	addl	V2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	4(%rdi), %rdi
	addl	V3(,%rdi,4), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	V0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	12(%rdi), %rdi
	addl	V1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	16(%rdi), %rdi
	addl	V2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	20(%rdi), %rdi
	addl	V3(,%rdi,4), %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	H0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	16(%rdi), %rdi
	addl	H1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	20(%rdi), %rdi
	addl	H2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	24(%rdi), %rdi
	addl	H3(,%rdi,4), %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	V0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	28(%rdi), %rdi
	addl	V1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	24(%rdi), %rdi
	addl	V2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	20(%rdi), %rdi
	addl	V3(,%rdi,4), %eax
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	V0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	28(%rdi), %rdi
	addl	V1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	32(%rdi), %rdi
	addl	V2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	4(%rdi), %rdi
	addl	V3(,%rdi,4), %eax
	movl	%eax, -36(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	%eax, -40(%rbp)
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB4_2
# BB#1:                                 # %if.then
	movl	-16(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_5
.LBB4_2:                                # %if.else
	movl	-16(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB4_4
# BB#3:                                 # %if.then.101
	movl	-16(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %if.end.102
	movl	-20(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB4_7
# BB#6:                                 # %if.then.105
	movl	-20(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_10
.LBB4_7:                                # %if.else.106
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB4_9
# BB#8:                                 # %if.then.108
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB4_9:                                # %if.end.109
	jmp	.LBB4_10
.LBB4_10:                               # %if.end.110
	movl	-24(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB4_12
# BB#11:                                # %if.then.113
	movl	-24(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_15
.LBB4_12:                               # %if.else.114
	movl	-24(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB4_14
# BB#13:                                # %if.then.116
	movl	-24(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB4_14:                               # %if.end.117
	jmp	.LBB4_15
.LBB4_15:                               # %if.end.118
	movl	-28(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB4_17
# BB#16:                                # %if.then.121
	movl	-28(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_20
.LBB4_17:                               # %if.else.122
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB4_19
# BB#18:                                # %if.then.124
	movl	-28(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB4_19:                               # %if.end.125
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.126
	movl	-32(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-32(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB4_22
# BB#21:                                # %if.then.129
	movl	-32(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_25
.LBB4_22:                               # %if.else.130
	movl	-32(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB4_24
# BB#23:                                # %if.then.132
	movl	-32(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB4_24:                               # %if.end.133
	jmp	.LBB4_25
.LBB4_25:                               # %if.end.134
	movl	-36(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB4_27
# BB#26:                                # %if.then.137
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_30
.LBB4_27:                               # %if.else.138
	movl	-36(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB4_29
# BB#28:                                # %if.then.140
	movl	-36(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB4_29:                               # %if.end.141
	jmp	.LBB4_30
.LBB4_30:                               # %if.end.142
	movl	-12(%rbp), %eax
	movl	-40(%rbp), %ecx
	addl	-44(%rbp), %ecx
	sarl	$8, %ecx
	movslq	%ecx, %rdx
	subl	ALFRAC(,%rdx,4), %eax
	sarl	$8, %eax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	atfilt1, .Lfunc_end4-atfilt1
	.cfi_endproc

	.align	16, 0x90
	.type	atfilt2,@function
atfilt2:                                # @atfilt2
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	M0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	12(%rdi), %rdi
	addl	M1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	28(%rdi), %rdi
	addl	M2(,%rdi,4), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	H0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	8(%rdi), %rdi
	addl	H1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	4(%rdi), %rdi
	addl	H2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	32(%rdi), %rdi
	addl	H3(,%rdi,4), %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	V0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	12(%rdi), %rdi
	addl	V1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	8(%rdi), %rdi
	addl	V2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	4(%rdi), %rdi
	addl	V3(,%rdi,4), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	V0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	12(%rdi), %rdi
	addl	V1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	16(%rdi), %rdi
	addl	V2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	20(%rdi), %rdi
	addl	V3(,%rdi,4), %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	H0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	16(%rdi), %rdi
	addl	H1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	20(%rdi), %rdi
	addl	H2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	24(%rdi), %rdi
	addl	H3(,%rdi,4), %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	V0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	28(%rdi), %rdi
	addl	V1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	24(%rdi), %rdi
	addl	V2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	20(%rdi), %rdi
	addl	V3(,%rdi,4), %eax
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	V0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	28(%rdi), %rdi
	addl	V1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	32(%rdi), %rdi
	addl	V2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	4(%rdi), %rdi
	addl	V3(,%rdi,4), %eax
	movl	%eax, -36(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	%eax, -40(%rbp)
	movl	$2147483647, -52(%rbp)  # imm = 0x7FFFFFFF
	movl	$0, -44(%rbp)
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB5_5
# BB#1:                                 # %if.then
	movl	-16(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB5_3
# BB#2:                                 # %if.then.101
	movl	-40(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movl	-16(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %if.end.102
	movl	-16(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB5_10
# BB#6:                                 # %if.then.104
	movl	-16(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB5_8
# BB#7:                                 # %if.then.106
	movl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.107
	movl	-16(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB5_9:                                # %if.end.108
	jmp	.LBB5_10
.LBB5_10:                               # %if.end.109
	movl	-20(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB5_15
# BB#11:                                # %if.then.112
	movl	-20(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB5_13
# BB#12:                                # %if.then.114
	movl	-40(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB5_14
.LBB5_13:                               # %if.else.115
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB5_14:                               # %if.end.116
	jmp	.LBB5_15
.LBB5_15:                               # %if.end.117
	movl	-20(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB5_20
# BB#16:                                # %if.then.119
	movl	-20(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB5_18
# BB#17:                                # %if.then.121
	movl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB5_19
.LBB5_18:                               # %if.else.122
	movl	-20(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB5_19:                               # %if.end.123
	jmp	.LBB5_20
.LBB5_20:                               # %if.end.124
	movl	-24(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB5_25
# BB#21:                                # %if.then.127
	movl	-24(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB5_23
# BB#22:                                # %if.then.129
	movl	-40(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB5_24
.LBB5_23:                               # %if.else.130
	movl	-24(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB5_24:                               # %if.end.131
	jmp	.LBB5_25
.LBB5_25:                               # %if.end.132
	movl	-24(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB5_30
# BB#26:                                # %if.then.134
	movl	-24(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB5_28
# BB#27:                                # %if.then.136
	movl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB5_29
.LBB5_28:                               # %if.else.137
	movl	-24(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB5_29:                               # %if.end.138
	jmp	.LBB5_30
.LBB5_30:                               # %if.end.139
	movl	-28(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB5_35
# BB#31:                                # %if.then.142
	movl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB5_33
# BB#32:                                # %if.then.144
	movl	-40(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB5_34
.LBB5_33:                               # %if.else.145
	movl	-28(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB5_34:                               # %if.end.146
	jmp	.LBB5_35
.LBB5_35:                               # %if.end.147
	movl	-28(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB5_40
# BB#36:                                # %if.then.149
	movl	-28(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB5_38
# BB#37:                                # %if.then.151
	movl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB5_39
.LBB5_38:                               # %if.else.152
	movl	-28(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB5_39:                               # %if.end.153
	jmp	.LBB5_40
.LBB5_40:                               # %if.end.154
	movl	-32(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-32(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB5_45
# BB#41:                                # %if.then.157
	movl	-32(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB5_43
# BB#42:                                # %if.then.159
	movl	-40(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB5_44
.LBB5_43:                               # %if.else.160
	movl	-32(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB5_44:                               # %if.end.161
	jmp	.LBB5_45
.LBB5_45:                               # %if.end.162
	movl	-32(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB5_50
# BB#46:                                # %if.then.164
	movl	-32(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB5_48
# BB#47:                                # %if.then.166
	movl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB5_49
.LBB5_48:                               # %if.else.167
	movl	-32(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB5_49:                               # %if.end.168
	jmp	.LBB5_50
.LBB5_50:                               # %if.end.169
	movl	-36(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB5_55
# BB#51:                                # %if.then.172
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB5_53
# BB#52:                                # %if.then.174
	movl	-40(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB5_54
.LBB5_53:                               # %if.else.175
	movl	-36(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB5_54:                               # %if.end.176
	jmp	.LBB5_55
.LBB5_55:                               # %if.end.177
	movl	-36(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB5_60
# BB#56:                                # %if.then.179
	movl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB5_58
# BB#57:                                # %if.then.181
	movl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB5_59
.LBB5_58:                               # %if.else.182
	movl	-36(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB5_59:                               # %if.end.183
	jmp	.LBB5_60
.LBB5_60:                               # %if.end.184
	movl	-12(%rbp), %eax
	subl	-40(%rbp), %eax
	subl	-48(%rbp), %eax
	movl	-44(%rbp), %ecx
	addl	-52(%rbp), %ecx
	sarl	$8, %ecx
	movslq	%ecx, %rdx
	subl	ALFRAC(,%rdx,4), %eax
	sarl	$8, %eax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	atfilt2, .Lfunc_end5-atfilt2
	.cfi_endproc

	.align	16, 0x90
	.type	atfilt3,@function
atfilt3:                                # @atfilt3
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	M0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	12(%rdi), %rdi
	addl	M1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	28(%rdi), %rdi
	addl	M2(,%rdi,4), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	H0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	8(%rdi), %rdi
	addl	H1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	4(%rdi), %rdi
	addl	H2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	32(%rdi), %rdi
	addl	H3(,%rdi,4), %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	V0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	12(%rdi), %rdi
	addl	V1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	8(%rdi), %rdi
	addl	V2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	4(%rdi), %rdi
	addl	V3(,%rdi,4), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	V0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	12(%rdi), %rdi
	addl	V1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	16(%rdi), %rdi
	addl	V2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	20(%rdi), %rdi
	addl	V3(,%rdi,4), %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	H0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	16(%rdi), %rdi
	addl	H1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	20(%rdi), %rdi
	addl	H2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	24(%rdi), %rdi
	addl	H3(,%rdi,4), %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	V0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	28(%rdi), %rdi
	addl	V1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	24(%rdi), %rdi
	addl	V2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	20(%rdi), %rdi
	addl	V3(,%rdi,4), %eax
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	V0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	28(%rdi), %rdi
	addl	V1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	32(%rdi), %rdi
	addl	V2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	4(%rdi), %rdi
	addl	V3(,%rdi,4), %eax
	movl	%eax, -36(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	%eax, -40(%rbp)
	movl	$2147483647, -60(%rbp)  # imm = 0x7FFFFFFF
	movl	$2147483647, -56(%rbp)  # imm = 0x7FFFFFFF
	movl	$0, -48(%rbp)
	movl	$0, -44(%rbp)
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	.LBB6_8
# BB#1:                                 # %if.then
	movl	-16(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB6_6
# BB#2:                                 # %if.then.101
	movl	-16(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB6_4
# BB#3:                                 # %if.then.103
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB6_5
.LBB6_4:                                # %if.else
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB6_5:                                # %if.end
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.104
	movl	-16(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB6_7:                                # %if.end.105
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.106
	movl	-16(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB6_16
# BB#9:                                 # %if.then.108
	movl	-16(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB6_14
# BB#10:                                # %if.then.110
	movl	-16(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB6_12
# BB#11:                                # %if.then.112
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB6_13
.LBB6_12:                               # %if.else.113
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB6_13:                               # %if.end.114
	jmp	.LBB6_15
.LBB6_14:                               # %if.else.115
	movl	-16(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB6_15:                               # %if.end.116
	jmp	.LBB6_16
.LBB6_16:                               # %if.end.117
	movl	-20(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	.LBB6_24
# BB#17:                                # %if.then.120
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB6_22
# BB#18:                                # %if.then.122
	movl	-20(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB6_20
# BB#19:                                # %if.then.124
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB6_21
.LBB6_20:                               # %if.else.125
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB6_21:                               # %if.end.126
	jmp	.LBB6_23
.LBB6_22:                               # %if.else.127
	movl	-20(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB6_23:                               # %if.end.128
	jmp	.LBB6_24
.LBB6_24:                               # %if.end.129
	movl	-20(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB6_32
# BB#25:                                # %if.then.131
	movl	-20(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB6_30
# BB#26:                                # %if.then.133
	movl	-20(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB6_28
# BB#27:                                # %if.then.135
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB6_29
.LBB6_28:                               # %if.else.136
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB6_29:                               # %if.end.137
	jmp	.LBB6_31
.LBB6_30:                               # %if.else.138
	movl	-20(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB6_31:                               # %if.end.139
	jmp	.LBB6_32
.LBB6_32:                               # %if.end.140
	movl	-24(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	.LBB6_40
# BB#33:                                # %if.then.143
	movl	-24(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB6_38
# BB#34:                                # %if.then.145
	movl	-24(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB6_36
# BB#35:                                # %if.then.147
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB6_37
.LBB6_36:                               # %if.else.148
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB6_37:                               # %if.end.149
	jmp	.LBB6_39
.LBB6_38:                               # %if.else.150
	movl	-24(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB6_39:                               # %if.end.151
	jmp	.LBB6_40
.LBB6_40:                               # %if.end.152
	movl	-24(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB6_48
# BB#41:                                # %if.then.154
	movl	-24(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB6_46
# BB#42:                                # %if.then.156
	movl	-24(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB6_44
# BB#43:                                # %if.then.158
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB6_45
.LBB6_44:                               # %if.else.159
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB6_45:                               # %if.end.160
	jmp	.LBB6_47
.LBB6_46:                               # %if.else.161
	movl	-24(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB6_47:                               # %if.end.162
	jmp	.LBB6_48
.LBB6_48:                               # %if.end.163
	movl	-28(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	.LBB6_56
# BB#49:                                # %if.then.166
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB6_54
# BB#50:                                # %if.then.168
	movl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB6_52
# BB#51:                                # %if.then.170
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB6_53
.LBB6_52:                               # %if.else.171
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB6_53:                               # %if.end.172
	jmp	.LBB6_55
.LBB6_54:                               # %if.else.173
	movl	-28(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB6_55:                               # %if.end.174
	jmp	.LBB6_56
.LBB6_56:                               # %if.end.175
	movl	-28(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB6_64
# BB#57:                                # %if.then.177
	movl	-28(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB6_62
# BB#58:                                # %if.then.179
	movl	-28(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB6_60
# BB#59:                                # %if.then.181
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB6_61
.LBB6_60:                               # %if.else.182
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB6_61:                               # %if.end.183
	jmp	.LBB6_63
.LBB6_62:                               # %if.else.184
	movl	-28(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB6_63:                               # %if.end.185
	jmp	.LBB6_64
.LBB6_64:                               # %if.end.186
	movl	-32(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-32(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	.LBB6_72
# BB#65:                                # %if.then.189
	movl	-32(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB6_70
# BB#66:                                # %if.then.191
	movl	-32(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB6_68
# BB#67:                                # %if.then.193
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB6_69
.LBB6_68:                               # %if.else.194
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB6_69:                               # %if.end.195
	jmp	.LBB6_71
.LBB6_70:                               # %if.else.196
	movl	-32(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB6_71:                               # %if.end.197
	jmp	.LBB6_72
.LBB6_72:                               # %if.end.198
	movl	-32(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB6_80
# BB#73:                                # %if.then.200
	movl	-32(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB6_78
# BB#74:                                # %if.then.202
	movl	-32(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB6_76
# BB#75:                                # %if.then.204
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB6_77
.LBB6_76:                               # %if.else.205
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB6_77:                               # %if.end.206
	jmp	.LBB6_79
.LBB6_78:                               # %if.else.207
	movl	-32(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB6_79:                               # %if.end.208
	jmp	.LBB6_80
.LBB6_80:                               # %if.end.209
	movl	-36(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	.LBB6_88
# BB#81:                                # %if.then.212
	movl	-36(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB6_86
# BB#82:                                # %if.then.214
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB6_84
# BB#83:                                # %if.then.216
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB6_85
.LBB6_84:                               # %if.else.217
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB6_85:                               # %if.end.218
	jmp	.LBB6_87
.LBB6_86:                               # %if.else.219
	movl	-36(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB6_87:                               # %if.end.220
	jmp	.LBB6_88
.LBB6_88:                               # %if.end.221
	movl	-36(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB6_96
# BB#89:                                # %if.then.223
	movl	-36(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB6_94
# BB#90:                                # %if.then.225
	movl	-36(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB6_92
# BB#91:                                # %if.then.227
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB6_93
.LBB6_92:                               # %if.else.228
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB6_93:                               # %if.end.229
	jmp	.LBB6_95
.LBB6_94:                               # %if.else.230
	movl	-36(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB6_95:                               # %if.end.231
	jmp	.LBB6_96
.LBB6_96:                               # %if.end.232
	movl	-12(%rbp), %eax
	subl	-40(%rbp), %eax
	subl	-44(%rbp), %eax
	subl	-52(%rbp), %eax
	subl	-56(%rbp), %eax
	movl	-48(%rbp), %ecx
	addl	-60(%rbp), %ecx
	sarl	$8, %ecx
	movslq	%ecx, %rdx
	subl	ALFRAC(,%rdx,4), %eax
	sarl	$8, %eax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	atfilt3, .Lfunc_end6-atfilt3
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	atfilt4,@function
atfilt4:                                # @atfilt4
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	M0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	12(%rdi), %rdi
	addl	M1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	28(%rdi), %rdi
	addl	M2(,%rdi,4), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	H0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	8(%rdi), %rdi
	addl	H1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	4(%rdi), %rdi
	addl	H2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	32(%rdi), %rdi
	addl	H3(,%rdi,4), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	V0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	12(%rdi), %rdi
	addl	V1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	8(%rdi), %rdi
	addl	V2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	4(%rdi), %rdi
	addl	V3(,%rdi,4), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	V0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	12(%rdi), %rdi
	addl	V1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	16(%rdi), %rdi
	addl	V2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	20(%rdi), %rdi
	addl	V3(,%rdi,4), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	H0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	16(%rdi), %rdi
	addl	H1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	20(%rdi), %rdi
	addl	H2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	24(%rdi), %rdi
	addl	H3(,%rdi,4), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	V0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	28(%rdi), %rdi
	addl	V1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	24(%rdi), %rdi
	addl	V2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	20(%rdi), %rdi
	addl	V3(,%rdi,4), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	V0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	28(%rdi), %rdi
	addl	V1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	32(%rdi), %rdi
	addl	V2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	4(%rdi), %rdi
	addl	V3(,%rdi,4), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jge	.LBB7_2
# BB#1:                                 # %if.then
	movl	$0, -12(%rbp)
.LBB7_2:                                # %if.end
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movl	-12(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, -12(%rbp)
	cvtsi2sdl	-12(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_4
# BB#3:                                 # %if.then.107
	movl	$255, -12(%rbp)
.LBB7_4:                                # %if.end.108
	movl	-12(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	atfilt4, .Lfunc_end7-atfilt4
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	atfilt5,@function
atfilt5:                                # @atfilt5
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	M0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	12(%rdi), %rdi
	addl	M1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	28(%rdi), %rdi
	addl	M2(,%rdi,4), %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	H0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	8(%rdi), %rdi
	addl	H1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	4(%rdi), %rdi
	addl	H2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	32(%rdi), %rdi
	addl	H3(,%rdi,4), %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	V0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	12(%rdi), %rdi
	addl	V1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	8(%rdi), %rdi
	addl	V2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	4(%rdi), %rdi
	addl	V3(,%rdi,4), %eax
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	V0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	12(%rdi), %rdi
	addl	V1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	16(%rdi), %rdi
	addl	V2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	20(%rdi), %rdi
	addl	V3(,%rdi,4), %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	H0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	16(%rdi), %rdi
	addl	H1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	20(%rdi), %rdi
	addl	H2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	24(%rdi), %rdi
	addl	H3(,%rdi,4), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	V0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	28(%rdi), %rdi
	addl	V1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	24(%rdi), %rdi
	addl	V2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	20(%rdi), %rdi
	addl	V3(,%rdi,4), %eax
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rdi
	movslq	(%rdi), %rdi
	movl	V0(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	28(%rdi), %rdi
	addl	V1(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	32(%rdi), %rdi
	addl	V2(,%rdi,4), %eax
	movq	-8(%rbp), %rdi
	movslq	4(%rdi), %rdi
	addl	V3(,%rdi,4), %eax
	movl	%eax, -48(%rbp)
	movl	-24(%rbp), %eax
	addl	-28(%rbp), %eax
	addl	-32(%rbp), %eax
	addl	-36(%rbp), %eax
	addl	-40(%rbp), %eax
	addl	-44(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	sarl	$6, %eax
	movslq	%eax, %rdi
	movl	AVEDIV(,%rdi,4), %eax
	movl	%eax, -12(%rbp)
	movl	-28(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	sarl	$6, %eax
	addl	$1021, %eax             # imm = 0x3FD
	movslq	%eax, %rdi
	movl	SQUARE(,%rdi,4), %eax
	movl	%eax, -16(%rbp)
	movl	-32(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	sarl	$6, %eax
	addl	$1021, %eax             # imm = 0x3FD
	movslq	%eax, %rdi
	movl	SQUARE(,%rdi,4), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-36(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	sarl	$6, %eax
	addl	$1021, %eax             # imm = 0x3FD
	movslq	%eax, %rdi
	movl	SQUARE(,%rdi,4), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-40(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	sarl	$6, %eax
	addl	$1021, %eax             # imm = 0x3FD
	movslq	%eax, %rdi
	movl	SQUARE(,%rdi,4), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-44(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	sarl	$6, %eax
	addl	$1021, %eax             # imm = 0x3FD
	movslq	%eax, %rdi
	movl	SQUARE(,%rdi,4), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-48(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	sarl	$6, %eax
	addl	$1021, %eax             # imm = 0x3FD
	movslq	%eax, %rdi
	movl	SQUARE(,%rdi,4), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-24(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	sarl	$6, %eax
	addl	$1021, %eax             # imm = 0x3FD
	movslq	%eax, %rdi
	movl	SQUARE(,%rdi,4), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movl	-12(%rbp), %eax
	movl	-16(%rbp), %ecx
	imull	-20(%rbp), %ecx
	movl	-16(%rbp), %edx
	addl	noisevariance, %edx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	movl	%edx, -56(%rbp)         # 4-byte Spill
	cltd
	movl	-56(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	-52(%rbp), %esi         # 4-byte Reload
	addl	%eax, %esi
	movl	%esi, -20(%rbp)
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB8_3:                                # %if.end
	cmpl	$0, -20(%rbp)
	jge	.LBB8_5
# BB#4:                                 # %if.then.150
	movl	$0, -20(%rbp)
.LBB8_5:                                # %if.end.151
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movl	-20(%rbp), %eax
	addl	$128, %eax
	sarl	$8, %eax
	movl	%eax, -20(%rbp)
	cvtsi2sdl	-20(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_7
# BB#6:                                 # %if.then.156
	movl	$255, -20(%rbp)
.LBB8_7:                                # %if.end.157
	movl	-20(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end8:
	.size	atfilt5, .Lfunc_end8-atfilt5
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4599676419421066581     # double 0.33333333333333331
.LCPI9_1:
	.quad	4607182418800017408     # double 1
.LCPI9_2:
	.quad	4587366580439587226     # double 0.050000000000000003
.LCPI9_3:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.align	16, 0x90
	.type	nlfilter_dialog,@function
nlfilter_dialog:                        # @nlfilter_dialog
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$536, %rsp              # imm = 0x218
.Ltmp35:
	.cfi_offset %rbx, -56
.Ltmp36:
	.cfi_offset %r12, -48
.Ltmp37:
	.cfi_offset %r13, -40
.Ltmp38:
	.cfi_offset %r14, -32
.Ltmp39:
	.cfi_offset %r15, -24
	movabsq	$.L.str.23, %rax
	movl	$1, %esi
	movq	%rdi, -48(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.24, %rdi
	callq	gettext
	movabsq	$.L.str.25, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.12, %r9
	movabsq	$.L.str.26, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.27, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -140(%rbp)        # 4-byte Spill
	movl	%r10d, -144(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-56(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_preview_new
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.28, %rsi
	movabsq	$nlfilter, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.29, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.30, %rdi
	movl	nlfvals+16, %r8d
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movl	%r8d, -212(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.31, %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.32, %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rcx
	movabsq	$nlfvals, %rdx
	addq	$16, %rdx
	xorl	%r8d, %r8d
	leaq	-88(%rbp), %rsi
	leaq	-96(%rbp), %r11
	movl	$2, %r9d
	leaq	-104(%rbp), %r14
	xorl	%r10d, %r10d
	movl	%r10d, %r15d
	movq	-208(%rbp), %r12        # 8-byte Reload
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	movq	%r12, %rsi
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movl	-212(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -252(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movq	-224(%rbp), %r13        # 8-byte Reload
	movl	%r9d, -256(%rbp)        # 4-byte Spill
	movq	%r13, %r9
	movl	$0, (%rsp)
	movq	-240(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	-232(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	$2, 48(%rsp)
	movq	%r14, 56(%rsp)
	movq	$0, 64(%rsp)
	movb	$0, %al
	movq	%r15, -264(%rbp)        # 8-byte Spill
	callq	gimp_int_radio_group_new
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_preview_invalidate, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-88(%rbp), %rdi
	movq	-72(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-96(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-280(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-104(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-296(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	$2, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-112(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -340(%rbp)        # 4-byte Spill
	movl	-340(%rbp), %ecx        # 4-byte Reload
	movl	-340(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movq	-112(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.34, %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movsd	.LCPI9_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI9_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI9_3, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %edx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movsd	nlfvals, %xmm1          # xmm1 = mem[0],zero
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -368(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -372(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	%ecx, -376(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-376(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -380(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movsd	%xmm0, -392(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-392(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-392(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-392(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.35, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$nlfvals, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-400(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.35, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-120(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-408(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-112(%rbp), %rcx
	movq	%rax, -424(%rbp)        # 8-byte Spill
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rdi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$1, %edx
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI9_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI9_3, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %ebx
	xorps	%xmm0, %xmm0
	xorl	%esi, %esi
	movl	%esi, %ecx
	movsd	nlfvals+8, %xmm5        # xmm5 = mem[0],zero
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	%r9d, %r8d
	movsd	%xmm0, -456(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-456(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-456(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -460(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.35, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$nlfvals, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-472(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.35, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-120(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-480(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rdi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %r9d
	movl	%r9d, -124(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-124(%rbp), %eax
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	nlfilter_dialog, .Lfunc_end9-nlfilter_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	nlfilter,@function
nlfilter:                               # @nlfilter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB10_2
# BB#1:                                 # %if.then
	leaq	-164(%rbp), %rsi
	leaq	-172(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-180(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_size
	movl	-164(%rbp), %eax
	addl	-180(%rbp), %eax
	movl	%eax, -168(%rbp)
	movl	-172(%rbp), %eax
	addl	-184(%rbp), %eax
	movl	%eax, -176(%rbp)
	jmp	.LBB10_3
.LBB10_2:                               # %if.else
	leaq	-164(%rbp), %rsi
	leaq	-172(%rbp), %rdx
	leaq	-168(%rbp), %rcx
	leaq	-176(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_bounds
	movl	-168(%rbp), %edi
	subl	-164(%rbp), %edi
	movl	%edi, -180(%rbp)
	movl	-176(%rbp), %edi
	subl	-172(%rbp), %edi
	movl	%edi, -184(%rbp)
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB10_3:                               # %if.end
	movl	$20, %eax
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %edx
	movl	%edx, -188(%rbp)
	movl	-180(%rbp), %edx
	imull	-188(%rbp), %edx
	movl	%edx, -200(%rbp)
	movl	-180(%rbp), %edx
	addl	$2, %edx
	imull	-188(%rbp), %edx
	movl	%edx, -204(%rbp)
	movl	-180(%rbp), %edx
	movl	%eax, -216(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-216(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	$1, %eax
	movl	%eax, -208(%rbp)
	movl	-180(%rbp), %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-220(%rbp), %esi        # 4-byte Reload
	movl	%eax, -224(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	xorl	%edi, %edi
	movl	%edi, %edx
	movl	-224(%rbp), %edi        # 4-byte Reload
	divl	%edi
	addl	$1, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	leaq	-64(%rbp), %rdi
	xorl	%eax, %eax
	movq	-8(%rbp), %rsi
	movl	-164(%rbp), %r8d
	movl	-172(%rbp), %ecx
	movl	-180(%rbp), %r9d
	movl	-184(%rbp), %r10d
	movl	%r8d, %edx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-112(%rbp), %rdi
	movl	$1, %eax
	movq	-8(%rbp), %rsi
	movl	-164(%rbp), %edx
	movl	-172(%rbp), %ecx
	movl	-180(%rbp), %r8d
	movl	-184(%rbp), %r9d
	cmpq	$0, -16(%rbp)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %r10d
	movl	%r10d, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -232(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$1, %eax
	movl	%eax, %esi
	imull	$3, -204(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc0_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -120(%rbp)
	movslq	-200(%rbp), %rdi
	callq	g_malloc0_n
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	movslq	-188(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movslq	-204(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movslq	-204(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -152(%rbp)
	movsd	nlfvals, %xmm0          # xmm0 = mem[0],zero
	movsd	nlfvals+8, %xmm1        # xmm1 = mem[0],zero
	movl	nlfvals+16, %edi
	callq	nlfiltInit
	movl	%eax, -192(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB10_5
# BB#4:                                 # %if.then.23
	movabsq	$.L.str.24, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB10_5:                               # %if.end.26
	leaq	-64(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movl	-164(%rbp), %edx
	movl	-172(%rbp), %ecx
	movl	-180(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-144(%rbp), %rdi
	movslq	-188(%rbp), %rax
	movq	%rsi, %r9
	subq	%rax, %r9
	addq	%r9, %rdi
	movq	-144(%rbp), %rax
	movslq	-188(%rbp), %rdx
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	callq	memcpy
	movq	-144(%rbp), %rax
	movslq	-200(%rbp), %rdx
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	movslq	-200(%rbp), %rsi
	addq	%rsi, %rdx
	movslq	-188(%rbp), %rsi
	movq	-248(%rbp), %rdi        # 8-byte Reload
	subq	%rsi, %rdi
	addq	%rdi, %rdx
	movslq	-188(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-256(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-136(%rbp), %rax
	movslq	-188(%rbp), %rdx
	movq	-248(%rbp), %rsi        # 8-byte Reload
	subq	%rdx, %rsi
	addq	%rsi, %rax
	movq	-144(%rbp), %rdx
	movslq	-188(%rbp), %rsi
	movq	-248(%rbp), %rdi        # 8-byte Reload
	subq	%rsi, %rdi
	addq	%rdi, %rdx
	movslq	-204(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-264(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movl	-172(%rbp), %ecx
	movl	%ecx, -196(%rbp)
.LBB10_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-196(%rbp), %eax
	movl	-176(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB10_12
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB10_6 Depth=1
	movl	-196(%rbp), %eax
	cltd
	idivl	-208(%rbp)
	cmpl	$0, %edx
	jne	.LBB10_10
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB10_6 Depth=1
	cmpq	$0, -16(%rbp)
	jne	.LBB10_10
# BB#9:                                 # %if.then.51
                                        #   in Loop: Header=BB10_6 Depth=1
	cvtsi2sdl	-196(%rbp), %xmm0
	cvtsi2sdl	-184(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB10_10:                              # %if.end.56
                                        #   in Loop: Header=BB10_6 Depth=1
	leaq	-64(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movl	-164(%rbp), %edx
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	-180(%rbp), %r8d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_row
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-152(%rbp), %rdi
	movslq	-188(%rbp), %r9
	movq	%rsi, %r10
	subq	%r9, %r10
	addq	%r10, %rdi
	movq	-152(%rbp), %r9
	movslq	-188(%rbp), %rdx
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	callq	memcpy
	movq	-152(%rbp), %rdx
	movslq	-200(%rbp), %rsi
	addq	%rsi, %rdx
	movq	-152(%rbp), %rsi
	movslq	-200(%rbp), %rdi
	addq	%rdi, %rsi
	movslq	-188(%rbp), %rdi
	movq	-280(%rbp), %r9         # 8-byte Reload
	subq	%rdi, %r9
	addq	%r9, %rsi
	movslq	-188(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-288(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movq	-152(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movl	-180(%rbp), %r8d
	movl	-188(%rbp), %r9d
	movl	-192(%rbp), %eax
	movl	%eax, (%rsp)
	callq	nlfiltRow
	leaq	-112(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movl	-164(%rbp), %edx
	movl	-196(%rbp), %ecx
	movl	-180(%rbp), %r8d
	callq	gimp_pixel_rgn_set_row
	movq	-136(%rbp), %rsi
	movq	%rsi, -160(%rbp)
	movq	-144(%rbp), %rsi
	movq	%rsi, -136(%rbp)
	movq	-152(%rbp), %rsi
	movq	%rsi, -144(%rbp)
	movq	-160(%rbp), %rsi
	movq	%rsi, -152(%rbp)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB10_6 Depth=1
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB10_6
.LBB10_12:                              # %for.end
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-152(%rbp), %rdx
	movslq	-188(%rbp), %rsi
	movq	%rcx, %rdi
	subq	%rsi, %rdi
	addq	%rdi, %rdx
	movq	-144(%rbp), %rsi
	movslq	-188(%rbp), %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rsi
	movslq	-204(%rbp), %rcx
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	callq	memcpy
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movq	-152(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movl	-180(%rbp), %r8d
	movl	-188(%rbp), %r9d
	movl	-192(%rbp), %eax
	movl	%eax, (%rsp)
	callq	nlfiltRow
	leaq	-112(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movl	-164(%rbp), %edx
	movl	-176(%rbp), %eax
	subl	$1, %eax
	movl	-180(%rbp), %r8d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_row
	movq	-120(%rbp), %rdi
	callq	g_free
	movq	-128(%rbp), %rdi
	callq	g_free
	cmpq	$0, -16(%rbp)
	je	.LBB10_14
# BB#13:                                # %if.then.79
	movq	-16(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_drawable_preview_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_drawable_preview_draw_region
	jmp	.LBB10_15
.LBB10_14:                              # %if.else.82
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-164(%rbp), %esi
	movl	-172(%rbp), %edx
	movl	-180(%rbp), %ecx
	movl	-184(%rbp), %r8d
	movl	%eax, -304(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -308(%rbp)        # 4-byte Spill
	callq	gimp_displays_flush
	movl	%eax, -312(%rbp)        # 4-byte Spill
.LBB10_15:                              # %if.end.89
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end10:
	.size	nlfilter, .Lfunc_end10-nlfilter
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4607182418800017408     # double 1
.LCPI11_1:
	.quad	4607092346807469998     # double 0.98999999999999999
.LCPI11_2:
	.quad	4619567317775286272     # double 7
.LCPI11_3:
	.quad	4620693217682128896     # double 8
.LCPI11_4:
	.quad	4643176031446892544     # double 255
.LCPI11_5:
	.quad	4622945017495814144     # double 12
.LCPI11_6:
	.quad	4602678819172646912     # double 0.5
.LCPI11_7:
	.quad	4611686018427387904     # double 2
.LCPI11_8:
	.quad	4595172819793696085     # double 0.16666666666666666
.LCPI11_9:
	.quad	4599676419421066581     # double 0.33333333333333331
.LCPI11_10:
	.quad	4613937818241073152     # double 3
.LCPI11_11:
	.quad	4617315517961601024     # double 5
.LCPI11_12:
	.quad	-4616189618054758400    # double -1
.LCPI11_13:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	nlfiltInit,@function
nlfiltInit:                             # @nlfiltInit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$320, %rsp              # imm = 0x140
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movl	%edi, -28(%rbp)
	movl	%edi, %eax
	testl	%edi, %edi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	je	.LBB11_1
	jmp	.LBB11_34
.LBB11_34:                              # %entry
	movl	-220(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	je	.LBB11_11
	jmp	.LBB11_35
.LBB11_35:                              # %entry
	movl	-220(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	je	.LBB11_20
	jmp	.LBB11_23
.LBB11_1:                               # %sw.bb
	xorps	%xmm0, %xmm0
	movsd	.LCPI11_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI11_5, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI11_6, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI11_7, %xmm4        # xmm4 = mem[0],zero
	movsd	-16(%rbp), %xmm5        # xmm5 = mem[0],zero
	divsd	%xmm4, %xmm5
	movsd	%xmm5, -16(%rbp)
	subsd	-16(%rbp), %xmm3
	mulsd	%xmm2, %xmm3
	addsd	%xmm1, %xmm3
	movsd	%xmm3, -64(%rbp)
	divsd	-64(%rbp), %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB11_3
	jp	.LBB11_3
# BB#2:                                 # %if.then
	xorps	%xmm0, %xmm0
	movl	$0, -32(%rbp)
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB11_10
.LBB11_3:                               # %if.else
	movsd	.LCPI11_8, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB11_5
# BB#4:                                 # %if.then.3
	movsd	.LCPI11_7, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI11_2, %xmm1        # xmm1 = mem[0],zero
	movl	$1, -32(%rbp)
	subsd	-64(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	jmp	.LBB11_9
.LBB11_5:                               # %if.else.6
	movsd	.LCPI11_9, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB11_7
# BB#6:                                 # %if.then.8
	movsd	.LCPI11_7, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI11_11, %xmm1       # xmm1 = mem[0],zero
	movl	$2, -32(%rbp)
	subsd	-64(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	jmp	.LBB11_8
.LBB11_7:                               # %if.else.11
	movsd	.LCPI11_7, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI11_10, %xmm1       # xmm1 = mem[0],zero
	movl	$3, -32(%rbp)
	subsd	-64(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
.LBB11_8:                               # %if.end
	jmp	.LBB11_9
.LBB11_9:                               # %if.end.14
	jmp	.LBB11_10
.LBB11_10:                              # %if.end.15
	jmp	.LBB11_24
.LBB11_11:                              # %sw.bb.16
	movsd	.LCPI11_3, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI11_4, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI11_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI11_2, %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm3, -80(%rbp)
	movl	$5, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
	divsd	-80(%rbp), %xmm2
	movsd	%xmm2, -56(%rbp)
	mulsd	-16(%rbp), %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, noisevariance
	movl	noisevariance, %eax
	imull	noisevariance, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, noisevariance
	movl	$0, -68(%rbp)
.LBB11_12:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7147, -68(%rbp)        # imm = 0x1BEB
	jge	.LBB11_15
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB11_12 Depth=1
	movl	$7, %eax
	movl	-68(%rbp), %ecx
	shll	$6, %ecx
	movl	%eax, -232(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-232(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movslq	-68(%rbp), %rsi
	movl	%eax, AVEDIV(,%rsi,4)
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB11_12 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB11_12
.LBB11_15:                              # %for.end
	movl	$0, -68(%rbp)
.LBB11_16:                              # %for.cond.27
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2042, -68(%rbp)        # imm = 0x7FA
	jge	.LBB11_19
# BB#17:                                # %for.body.30
                                        #   in Loop: Header=BB11_16 Depth=1
	movl	-68(%rbp), %eax
	subl	$1021, %eax             # imm = 0x3FD
	shll	$6, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	imull	-84(%rbp), %eax
	sarl	$18, %eax
	movslq	-68(%rbp), %rcx
	movl	%eax, SQUARE(,%rcx,4)
# BB#18:                                # %for.inc.36
                                        #   in Loop: Header=BB11_16 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB11_16
.LBB11_19:                              # %for.end.38
	jmp	.LBB11_24
.LBB11_20:                              # %sw.bb.39
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB11_22
	jp	.LBB11_22
# BB#21:                                # %if.then.42
	movsd	.LCPI11_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
.LBB11_22:                              # %if.end.43
	xorps	%xmm0, %xmm0
	movsd	.LCPI11_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI11_2, %xmm2        # xmm2 = mem[0],zero
	movl	$4, -32(%rbp)
	movsd	-16(%rbp), %xmm3        # xmm3 = mem[0],zero
	movd	%xmm3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm3
	movaps	%xmm1, %xmm4
	subsd	-16(%rbp), %xmm4
	mulsd	%xmm2, %xmm4
	divsd	%xmm4, %xmm3
	movaps	%xmm1, %xmm2
	mulsd	%xmm3, %xmm2
	movsd	%xmm2, -40(%rbp)
	movaps	%xmm1, %xmm2
	subsd	-16(%rbp), %xmm2
	movaps	%xmm1, %xmm3
	divsd	%xmm2, %xmm3
	addsd	-40(%rbp), %xmm3
	mulsd	%xmm3, %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB11_24
.LBB11_23:                              # %sw.default
	movabsq	$.L.str.37, %rdi
	movl	-28(%rbp), %esi
	movb	$0, %al
	callq	g_printerr
	movl	$-1, -4(%rbp)
	jmp	.LBB11_33
.LBB11_24:                              # %sw.epilog
	xorps	%xmm0, %xmm0
	movsd	.LCPI11_10, %xmm1       # xmm1 = mem[0],zero
	movsd	.LCPI11_7, %xmm2        # xmm2 = mem[0],zero
	movsd	-24(%rbp), %xmm3        # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	movsd	%xmm3, -96(%rbp)
	mulsd	-24(%rbp), %xmm1
	movsd	.LCPI11_5(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -248(%rbp)       # 8-byte Spill
	callq	sqrt
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-104(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-104(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-104(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-24(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-240(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	hex_area
	xorps	%xmm1, %xmm1
	movsd	.LCPI11_0, %xmm2        # xmm2 = mem[0],zero
	mulsd	-112(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-24(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movsd	-256(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	hex_area
	movsd	.LCPI11_0, %xmm1        # xmm1 = mem[0],zero
	mulsd	-112(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-104(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-24(%rbp), %xmm4        # xmm4 = mem[0],zero
	movaps	%xmm1, %xmm0
	callq	hex_area
	movsd	.LCPI11_0, %xmm1        # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	mulsd	-112(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-24(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movsd	-264(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	hex_area
	xorps	%xmm1, %xmm1
	mulsd	-112(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	movsd	-24(%rbp), %xmm4        # xmm4 = mem[0],zero
	movaps	%xmm1, %xmm0
	movsd	%xmm1, -272(%rbp)       # 8-byte Spill
	movsd	-272(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-272(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	hex_area
	xorps	%xmm1, %xmm1
	movsd	.LCPI11_0, %xmm2        # xmm2 = mem[0],zero
	mulsd	-120(%rbp), %xmm0
	movsd	%xmm0, -160(%rbp)
	movsd	-24(%rbp), %xmm4        # xmm4 = mem[0],zero
	movaps	%xmm1, %xmm0
	movsd	%xmm1, -280(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	movsd	-280(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-280(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	hex_area
	xorps	%xmm1, %xmm1
	movsd	.LCPI11_12, %xmm2       # xmm2 = mem[0],zero
	mulsd	-120(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)
	movsd	-24(%rbp), %xmm4        # xmm4 = mem[0],zero
	movaps	%xmm1, %xmm0
	movsd	%xmm1, -288(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	movsd	-288(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-288(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	hex_area
	xorps	%xmm1, %xmm1
	mulsd	-120(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-24(%rbp), %xmm4        # xmm4 = mem[0],zero
	movaps	%xmm1, %xmm0
	movsd	%xmm1, -296(%rbp)       # 8-byte Spill
	movsd	-296(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	hex_area
	movsd	.LCPI11_0, %xmm1        # xmm1 = mem[0],zero
	xorps	%xmm3, %xmm3
	mulsd	-112(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-24(%rbp), %xmm4        # xmm4 = mem[0],zero
	movaps	%xmm1, %xmm0
	callq	hex_area
	movsd	.LCPI11_0, %xmm1        # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	mulsd	-112(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movsd	-304(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm2, -312(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm2
	movsd	-312(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	hex_area
	movsd	.LCPI11_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI11_12, %xmm2       # xmm2 = mem[0],zero
	xorps	%xmm3, %xmm3
	mulsd	-112(%rbp), %xmm0
	movsd	%xmm0, -200(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movsd	-320(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	hex_area
	mulsd	-112(%rbp), %xmm0
	movsd	%xmm0, -208(%rbp)
	movl	$0, -88(%rbp)
.LBB11_25:                              # %for.cond.83
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$255, -88(%rbp)
	jg	.LBB11_28
# BB#26:                                # %for.body.86
                                        #   in Loop: Header=BB11_25 Depth=1
	movsd	.LCPI11_6, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI11_13, %xmm1       # xmm1 = mem[0],zero
	cvtsi2sdl	-88(%rbp), %xmm2
	movsd	%xmm2, -216(%rbp)
	movsd	-216(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-128(%rbp), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movslq	-88(%rbp), %rcx
	movl	%eax, V0(,%rcx,4)
	movsd	-216(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-136(%rbp), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movslq	-88(%rbp), %rcx
	movl	%eax, V1(,%rcx,4)
	movsd	-216(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-144(%rbp), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movslq	-88(%rbp), %rcx
	movl	%eax, V2(,%rcx,4)
	movsd	-216(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-152(%rbp), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movslq	-88(%rbp), %rcx
	movl	%eax, V3(,%rcx,4)
	movsd	-216(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-160(%rbp), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movslq	-88(%rbp), %rcx
	movl	%eax, M0(,%rcx,4)
	movsd	-216(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-168(%rbp), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movslq	-88(%rbp), %rcx
	movl	%eax, M1(,%rcx,4)
	movsd	-216(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-176(%rbp), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movslq	-88(%rbp), %rcx
	movl	%eax, M2(,%rcx,4)
	movsd	-216(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-184(%rbp), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movslq	-88(%rbp), %rcx
	movl	%eax, H0(,%rcx,4)
	movsd	-216(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-192(%rbp), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movslq	-88(%rbp), %rcx
	movl	%eax, H1(,%rcx,4)
	movsd	-216(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-200(%rbp), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movslq	-88(%rbp), %rcx
	movl	%eax, H2(,%rcx,4)
	movsd	-216(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-208(%rbp), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movslq	-88(%rbp), %rcx
	movl	%eax, H3(,%rcx,4)
# BB#27:                                # %for.inc.154
                                        #   in Loop: Header=BB11_25 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB11_25
.LBB11_28:                              # %for.end.156
	movl	$0, -88(%rbp)
.LBB11_29:                              # %for.cond.157
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2048, -88(%rbp)        # imm = 0x800
	jge	.LBB11_32
# BB#30:                                # %for.body.160
                                        #   in Loop: Header=BB11_29 Depth=1
	movsd	.LCPI11_6, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI11_13, %xmm1       # xmm1 = mem[0],zero
	cvtsi2sdl	-88(%rbp), %xmm2
	mulsd	-56(%rbp), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movslq	-88(%rbp), %rcx
	movl	%eax, ALFRAC(,%rcx,4)
# BB#31:                                # %for.inc.168
                                        #   in Loop: Header=BB11_29 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB11_29
.LBB11_32:                              # %for.end.170
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB11_33:                              # %return
	movl	-4(%rbp), %eax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end11:
	.size	nlfiltInit, .Lfunc_end11-nlfiltInit
	.cfi_endproc

	.align	16, 0x90
	.type	nlfiltRow,@function
nlfiltRow:                              # @nlfiltRow
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rcx
	movl	-36(%rbp), %eax
	imull	-40(%rbp), %eax
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -120(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -112(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-112(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jae	.LBB12_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	leaq	-80(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-96(%rbp), %rdx
	movzbl	(%rdx), %eax
	movl	%eax, -80(%rbp)
	movq	-96(%rbp), %rdx
	movslq	-40(%rbp), %rsi
	movq	%rcx, %r8
	subq	%rsi, %r8
	movzbl	(%rdx,%r8), %eax
	movl	%eax, -76(%rbp)
	movq	-104(%rbp), %rdx
	movslq	-40(%rbp), %rsi
	movq	%rcx, %r8
	subq	%rsi, %r8
	movzbl	(%rdx,%r8), %eax
	movl	%eax, -72(%rbp)
	movq	-104(%rbp), %rdx
	movzbl	(%rdx), %eax
	movl	%eax, -68(%rbp)
	movq	-104(%rbp), %rdx
	movslq	-40(%rbp), %rsi
	movzbl	(%rdx,%rsi), %eax
	movl	%eax, -64(%rbp)
	movq	-96(%rbp), %rdx
	movslq	-40(%rbp), %rsi
	movzbl	(%rdx,%rsi), %eax
	movl	%eax, -60(%rbp)
	movq	-88(%rbp), %rdx
	movslq	-40(%rbp), %rsi
	movzbl	(%rdx,%rsi), %eax
	movl	%eax, -56(%rbp)
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %eax
	movl	%eax, -52(%rbp)
	movq	-88(%rbp), %rdx
	movslq	-40(%rbp), %rsi
	subq	%rsi, %rcx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -48(%rbp)
	movslq	-44(%rbp), %rcx
	movq	atfuncs(,%rcx,8), %rcx
	callq	*%rcx
	movb	%al, %r9b
	movq	-112(%rbp), %rcx
	movb	%r9b, (%rcx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB12_1
.LBB12_4:                               # %for.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	nlfiltRow, .Lfunc_end12-nlfiltRow
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4603375528459739167     # double 0.57735026919999999
.LCPI13_1:
	.quad	4598871928832368671     # double 0.28867513459999999
.LCPI13_2:
	.quad	4611686018427387904     # double 2
.LCPI13_3:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	hex_area,@function
hex_area:                               # @hex_area
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	xorl	%edi, %edi
	movsd	.LCPI13_0, %xmm5        # xmm5 = mem[0],zero
	movsd	.LCPI13_1, %xmm6        # xmm6 = mem[0],zero
	movsd	.LCPI13_2, %xmm7        # xmm7 = mem[0],zero
	movsd	.LCPI13_3, %xmm8        # xmm8 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm3, -32(%rbp)
	movsd	%xmm4, -40(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	subsd	%xmm8, %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	%xmm8, %xmm0
	movsd	%xmm0, -120(%rbp)
	movaps	%xmm8, %xmm0
	addsd	-8(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	addsd	-16(%rbp), %xmm8
	movsd	%xmm8, -128(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm7, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm7, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movaps	%xmm5, %xmm1
	mulsd	-40(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movaps	%xmm6, %xmm1
	mulsd	-40(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm6
	addsd	%xmm6, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm5
	addsd	%xmm5, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-48(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-88(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-56(%rbp), %xmm6        # xmm6 = mem[0],zero
	movsd	-96(%rbp), %xmm7        # xmm7 = mem[0],zero
	callq	triang_area
	movl	$1, %edi
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-112(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-128(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-56(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-88(%rbp), %xmm6        # xmm6 = mem[0],zero
	movsd	-64(%rbp), %xmm7        # xmm7 = mem[0],zero
	movsd	-96(%rbp), %xmm8        # xmm8 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movaps	%xmm4, %xmm3
	movaps	%xmm5, %xmm4
	movaps	%xmm6, %xmm5
	movaps	%xmm7, %xmm6
	movaps	%xmm8, %xmm7
	callq	triang_area
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-112(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-128(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-48(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-80(%rbp), %xmm6        # xmm6 = mem[0],zero
	movsd	-64(%rbp), %xmm7        # xmm7 = mem[0],zero
	movsd	-88(%rbp), %xmm8        # xmm8 = mem[0],zero
	movsd	%xmm1, -144(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movaps	%xmm4, %xmm3
	movaps	%xmm5, %xmm4
	movaps	%xmm6, %xmm5
	movaps	%xmm7, %xmm6
	movaps	%xmm8, %xmm7
	callq	rectang_area
	movl	$2, %edi
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-112(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-128(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-48(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-72(%rbp), %xmm6        # xmm6 = mem[0],zero
	movsd	-56(%rbp), %xmm7        # xmm7 = mem[0],zero
	movsd	-80(%rbp), %xmm8        # xmm8 = mem[0],zero
	movsd	%xmm1, -152(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movaps	%xmm4, %xmm3
	movaps	%xmm5, %xmm4
	movaps	%xmm6, %xmm5
	movaps	%xmm7, %xmm6
	movaps	%xmm8, %xmm7
	callq	triang_area
	movl	$3, %edi
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-112(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-128(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-56(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-72(%rbp), %xmm6        # xmm6 = mem[0],zero
	movsd	-64(%rbp), %xmm7        # xmm7 = mem[0],zero
	movsd	-80(%rbp), %xmm8        # xmm8 = mem[0],zero
	movsd	%xmm1, -160(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movaps	%xmm4, %xmm3
	movaps	%xmm5, %xmm4
	movaps	%xmm6, %xmm5
	movaps	%xmm7, %xmm6
	movaps	%xmm8, %xmm7
	callq	triang_area
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	hex_area, .Lfunc_end13-hex_area
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	triang_area,@function
triang_area:                            # @triang_area
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
	movsd	%xmm4, -48(%rbp)
	movsd	%xmm5, -56(%rbp)
	movsd	%xmm6, -64(%rbp)
	movsd	%xmm7, -72(%rbp)
	movl	%edi, -76(%rbp)
	movl	-76(%rbp), %edi
	andl	$2, %edi
	cmpl	$0, %edi
	je	.LBB14_2
# BB#1:                                 # %if.then
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -72(%rbp)
.LBB14_2:                               # %if.end
	movl	-76(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB14_4
# BB#3:                                 # %if.then.6
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB14_4:                               # %if.end.12
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB14_6
# BB#5:                                 # %if.then.13
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
.LBB14_6:                               # %if.end.14
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB14_8
# BB#7:                                 # %if.then.16
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB14_8:                               # %if.end.17
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_10
# BB#9:                                 # %if.then.19
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
.LBB14_10:                              # %if.end.20
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_12
# BB#11:                                # %if.then.22
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
.LBB14_12:                              # %if.end.23
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB14_14
# BB#13:                                # %lor.lhs.false
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB14_15
.LBB14_14:                              # %if.then.26
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB14_36
.LBB14_15:                              # %if.end.27
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-56(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-56(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-56(%rbp), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-48(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	movl	$0, -76(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-144(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB14_17
# BB#16:                                # %if.then.38
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-16(%rbp), %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-24(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB14_36
.LBB14_17:                              # %if.else
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB14_21
# BB#18:                                # %if.then.43
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-136(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB14_20
# BB#19:                                # %if.then.47
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-16(%rbp), %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-24(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB14_36
.LBB14_20:                              # %if.end.51
	movl	$1, -76(%rbp)
.LBB14_21:                              # %if.end.52
	jmp	.LBB14_22
.LBB14_22:                              # %if.end.53
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-120(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-40(%rbp), %xmm0
	jb	.LBB14_24
# BB#23:                                # %if.then.57
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-16(%rbp), %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-24(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB14_36
.LBB14_24:                              # %if.else.61
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_28
# BB#25:                                # %if.then.63
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-128(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jb	.LBB14_27
# BB#26:                                # %if.then.67
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-16(%rbp), %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-24(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB14_36
.LBB14_27:                              # %if.end.71
	movl	-76(%rbp), %eax
	orl	$2, %eax
	movl	%eax, -76(%rbp)
.LBB14_28:                              # %if.end.72
	jmp	.LBB14_29
.LBB14_29:                              # %if.end.73
	cmpl	$0, -76(%rbp)
	jne	.LBB14_31
# BB#30:                                # %if.then.75
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-16(%rbp), %xmm1
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-24(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-16(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-128(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -8(%rbp)
	jmp	.LBB14_36
.LBB14_31:                              # %if.else.84
	cmpl	$1, -76(%rbp)
	jne	.LBB14_33
# BB#32:                                # %if.then.86
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-16(%rbp), %xmm1
	movsd	-128(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-24(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-16(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	movsd	-144(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-128(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -8(%rbp)
	jmp	.LBB14_36
.LBB14_33:                              # %if.else.95
	cmpl	$2, -76(%rbp)
	jne	.LBB14_35
# BB#34:                                # %if.then.97
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-136(%rbp), %xmm1
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-24(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-120(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-24(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -8(%rbp)
	jmp	.LBB14_36
.LBB14_35:                              # %if.else.106
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-120(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-24(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB14_36:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	triang_area, .Lfunc_end14-triang_area
	.cfi_endproc

	.align	16, 0x90
	.type	rectang_area,@function
rectang_area:                           # @rectang_area
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
	movsd	%xmm4, -48(%rbp)
	movsd	%xmm5, -56(%rbp)
	movsd	%xmm6, -64(%rbp)
	movsd	%xmm7, -72(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB15_2
# BB#1:                                 # %if.then
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
.LBB15_2:                               # %if.end
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB15_4
# BB#3:                                 # %if.then.2
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB15_4:                               # %if.end.3
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_6
# BB#5:                                 # %if.then.5
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
.LBB15_6:                               # %if.end.6
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_8
# BB#7:                                 # %if.then.8
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
.LBB15_8:                               # %if.end.9
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB15_10
# BB#9:                                 # %lor.lhs.false
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB15_11
.LBB15_10:                              # %if.then.12
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB15_12
.LBB15_11:                              # %if.end.13
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-16(%rbp), %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-24(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB15_12:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end15:
	.size	rectang_area, .Lfunc_end15-rectang_area
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

	.type	atfuncs,@object         # @atfuncs
	.data
	.globl	atfuncs
	.align	16
atfuncs:
	.quad	atfilt0
	.quad	atfilt1
	.quad	atfilt2
	.quad	atfilt3
	.quad	atfilt4
	.quad	atfilt5
	.size	atfuncs, 48

	.type	V0,@object              # @V0
	.bss
	.globl	V0
	.align	16
V0:
	.zero	1024
	.size	V0, 1024

	.type	V1,@object              # @V1
	.globl	V1
	.align	16
V1:
	.zero	1024
	.size	V1, 1024

	.type	V2,@object              # @V2
	.globl	V2
	.align	16
V2:
	.zero	1024
	.size	V2, 1024

	.type	V3,@object              # @V3
	.globl	V3
	.align	16
V3:
	.zero	1024
	.size	V3, 1024

	.type	M0,@object              # @M0
	.globl	M0
	.align	16
M0:
	.zero	1024
	.size	M0, 1024

	.type	M1,@object              # @M1
	.globl	M1
	.align	16
M1:
	.zero	1024
	.size	M1, 1024

	.type	M2,@object              # @M2
	.globl	M2
	.align	16
M2:
	.zero	1024
	.size	M2, 1024

	.type	H0,@object              # @H0
	.globl	H0
	.align	16
H0:
	.zero	1024
	.size	H0, 1024

	.type	H1,@object              # @H1
	.globl	H1
	.align	16
H1:
	.zero	1024
	.size	H1, 1024

	.type	H2,@object              # @H2
	.globl	H2
	.align	16
H2:
	.zero	1024
	.size	H2, 1024

	.type	H3,@object              # @H3
	.globl	H3
	.align	16
H3:
	.zero	1024
	.size	H3, 1024

	.type	ALFRAC,@object          # @ALFRAC
	.globl	ALFRAC
	.align	16
ALFRAC:
	.zero	8192
	.size	ALFRAC, 8192

	.type	AVEDIV,@object          # @AVEDIV
	.globl	AVEDIV
	.align	16
AVEDIV:
	.zero	28588
	.size	AVEDIV, 28588

	.type	SQUARE,@object          # @SQUARE
	.globl	SQUARE
	.align	16
SQUARE:
	.zero	8168
	.size	SQUARE, 8168

	.type	query.args,@object      # @query.args
	.section	.rodata,"a",@progbits
	.align	16
query.args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.size	query.args, 144

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"run-mode"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }"
	.size	.L.str.1, 61

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"img"
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"The Image to Filter"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"drw"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"The Drawable"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"alpha"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The amount of the filter to apply"
	.size	.L.str.7, 34

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"radius"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"The filter radius"
	.size	.L.str.9, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"filter"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"The Filter to Run, 0 - alpha trimmed mean; 1 - optimal estimation (alpha controls noise variance); 2 - edge enhancement"
	.size	.L.str.11, 120

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"plug-in-nlfilt"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Nonlinear swiss army knife filter"
	.size	.L.str.13, 34

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"This is the pnmnlfilt, in gimp's clothing.  See the pnmnlfilt manpage for details."
	.size	.L.str.14, 83

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Graeme W. Gill, gimp 0.99 plugin by Eric L. Hernes"
	.size	.L.str.15, 51

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Graeme W. Gill, Eric L. Hernes"
	.size	.L.str.16, 31

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"1997"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"_NL Filter..."
	.size	.L.str.18, 14

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"RGB,GRAY"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"<Image>/Filters/Enhance"
	.size	.L.str.20, 24

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.21, 20

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"UTF-8"
	.size	.L.str.22, 6

	.type	nlfvals,@object         # @nlfvals
	.data
	.align	8
nlfvals:
	.quad	4599075939470750515     # double 0.29999999999999999
	.quad	4599075939470750515     # double 0.29999999999999999
	.long	0                       # 0x0
	.zero	4
	.size	nlfvals, 24

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"nl-filter"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"NL Filter"
	.size	.L.str.24, 10

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-nl-filter"
	.size	.L.str.25, 15

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gtk-cancel"
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gtk-ok"
	.size	.L.str.27, 7

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"invalidated"
	.size	.L.str.28, 12

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Filter"
	.size	.L.str.29, 7

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"_Alpha trimmed mean"
	.size	.L.str.30, 20

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Op_timal estimation"
	.size	.L.str.31, 20

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"_Edge enhancement"
	.size	.L.str.32, 18

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"toggled"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"A_lpha:"
	.size	.L.str.34, 8

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"value-changed"
	.size	.L.str.35, 14

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"_Radius:"
	.size	.L.str.36, 9

	.type	noisevariance,@object   # @noisevariance
	.local	noisevariance
	.comm	noisevariance,4,4
	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"unknown filter %d\n"
	.size	.L.str.37, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
