	.text
	.file	"gimpprogress.bc"
	.globl	gimp_progress_install
	.align	16, 0x90
	.type	gimp_progress_install,@function
gimp_progress_install:                  # @gimp_progress_install
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
	subq	$160, %rsp
	xorl	%eax, %eax
	movl	$112, %r9d
	movl	%r9d, %r10d
	leaq	-160(%rbp), %r11
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r11, %rdi
	movl	%eax, %esi
	movq	%r10, %rdx
	callq	memset@PLT
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_progress_install(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_21
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB0_8
# BB#7:                                 # %if.then.3
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_progress_install(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_21
.LBB0_9:                                # %if.end.5
	jmp	.LBB0_10
.LBB0_10:                               # %do.end.6
	jmp	.LBB0_11
.LBB0_11:                               # %do.body.7
	cmpq	$0, -32(%rbp)
	je	.LBB0_13
# BB#12:                                # %if.then.9
	jmp	.LBB0_14
.LBB0_13:                               # %if.else.10
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_progress_install(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_21
.LBB0_14:                               # %if.end.11
	jmp	.LBB0_15
.LBB0_15:                               # %do.end.12
	jmp	.LBB0_16
.LBB0_16:                               # %do.body.13
	cmpq	$0, -40(%rbp)
	je	.LBB0_18
# BB#17:                                # %if.then.15
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.16
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_progress_install(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_21
.LBB0_19:                               # %if.end.17
	jmp	.LBB0_20
.LBB0_20:                               # %do.end.18
	leaq	-160(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-48(%rbp), %rsi
	callq	gimp_progress_install_vtable@PLT
	movq	%rax, -8(%rbp)
.LBB0_21:                               # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_progress_install, .Lfunc_end0-gimp_progress_install
	.cfi_endproc

	.globl	gimp_progress_install_vtable
	.align	16, 0x90
	.type	gimp_progress_install_vtable,@function
gimp_progress_install_vtable:           # @gimp_progress_install_vtable
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
	pushq	%rbx
	subq	$152, %rsp
.Ltmp6:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_progress_install_vtable(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -16(%rbp)
	jmp	.LBB1_30
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	jmp	.LBB1_6
.LBB1_6:                                # %do.body.1
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_8
# BB#7:                                 # %if.then.3
	jmp	.LBB1_9
.LBB1_8:                                # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_progress_install_vtable(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -16(%rbp)
	jmp	.LBB1_30
.LBB1_9:                                # %if.end.5
	jmp	.LBB1_10
.LBB1_10:                               # %do.end.6
	jmp	.LBB1_11
.LBB1_11:                               # %do.body.7
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB1_13
# BB#12:                                # %if.then.9
	jmp	.LBB1_14
.LBB1_13:                               # %if.else.10
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_progress_install_vtable(%rip), %rsi
	leaq	.L.str.11(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -16(%rbp)
	jmp	.LBB1_30
.LBB1_14:                               # %if.end.11
	jmp	.LBB1_15
.LBB1_15:                               # %do.end.12
	jmp	.LBB1_16
.LBB1_16:                               # %do.body.13
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB1_18
# BB#17:                                # %if.then.15
	jmp	.LBB1_19
.LBB1_18:                               # %if.else.16
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_progress_install_vtable(%rip), %rsi
	leaq	.L.str.12(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -16(%rbp)
	jmp	.LBB1_30
.LBB1_19:                               # %if.end.17
	jmp	.LBB1_20
.LBB1_20:                               # %do.end.18
	jmp	.LBB1_21
.LBB1_21:                               # %do.body.19
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB1_23
# BB#22:                                # %if.then.21
	jmp	.LBB1_24
.LBB1_23:                               # %if.else.22
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_progress_install_vtable(%rip), %rsi
	leaq	.L.str.13(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -16(%rbp)
	jmp	.LBB1_30
.LBB1_24:                               # %if.end.23
	jmp	.LBB1_25
.LBB1_25:                               # %do.end.24
	callq	gimp_procedural_db_temp_name@PLT
	leaq	.L.str.14(%rip), %rsi
	leaq	.L.str.6(%rip), %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	movl	$3, %edx
	movl	$1, %r8d
	leaq	gimp_progress_install_vtable.args(%rip), %r9
	leaq	gimp_progress_install_vtable.values(%rip), %r10
	leaq	gimp_temp_progress_run(%rip), %r11
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	$0, (%rsp)
	movq	%rax, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, 40(%rsp)
	movq	%r10, 48(%rsp)
	movq	%r11, 56(%rsp)
	callq	gimp_install_temp_proc@PLT
	movq	-40(%rbp), %rdi
	callq	_gimp_progress_install
	cmpl	$0, %eax
	je	.LBB1_29
# BB#26:                                # %if.then.26
	callq	gimp_extension_enable@PLT
	cmpq	$0, gimp_progress_ht(%rip)
	jne	.LBB1_28
# BB#27:                                # %if.then.28
	movq	g_str_hash@GOTPCREL(%rip), %rdi
	movq	g_str_equal@GOTPCREL(%rip), %rsi
	movq	g_free@GOTPCREL(%rip), %rdx
	leaq	gimp_progress_data_free(%rip), %rax
	movq	%rax, %rcx
	callq	g_hash_table_new_full@PLT
	movq	%rax, gimp_progress_ht(%rip)
.LBB1_28:                               # %if.end.30
	movl	$128, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, 48(%rdi)
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, 120(%rdi)
	movq	gimp_progress_ht(%rip), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	callq	g_hash_table_insert@PLT
	movq	-40(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB1_30
.LBB1_29:                               # %if.end.50
	movq	-40(%rbp), %rdi
	callq	gimp_uninstall_temp_proc@PLT
	movq	-40(%rbp), %rdi
	callq	g_free@PLT
	movq	$0, -16(%rbp)
.LBB1_30:                               # %return
	movq	-16(%rbp), %rax
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_progress_install_vtable, .Lfunc_end1-gimp_progress_install_vtable
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	gimp_temp_progress_run,@function
gimp_temp_progress_run:                 # @gimp_temp_progress_run
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
	subq	$80, %rsp
	leaq	gimp_temp_progress_run.values(%rip), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, gimp_temp_progress_run.values(%rip)
	movl	$3, gimp_temp_progress_run.values+8(%rip)
	movq	gimp_progress_ht(%rip), %rdi
	movq	-8(%rbp), %rsi
	callq	g_hash_table_lookup@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	leaq	.L.str.17(%rip), %rdi
	movb	$0, %al
	callq	g_warning
	movl	$0, gimp_temp_progress_run.values+8(%rip)
	jmp	.LBB2_17
.LBB2_2:                                # %if.else
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movl	-52(%rbp), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$5, %rdx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	ja	.LBB2_15
# BB#18:                                # %if.else
	leaq	.LJTI2_0(%rip), %rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB2_3:                                # %sw.bb
	xorps	%xmm0, %xmm0
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movsd	88(%rcx), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	setne	%dl
	setp	%sil
	orb	%sil, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	-48(%rbp), %rcx
	movq	120(%rcx), %rdx
	callq	*%rax
	jmp	.LBB2_16
.LBB2_4:                                # %sw.bb.6
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	120(%rcx), %rdi
	callq	*%rax
	jmp	.LBB2_16
.LBB2_5:                                # %sw.bb.9
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	-48(%rbp), %rcx
	movq	120(%rcx), %rsi
	callq	*%rax
	jmp	.LBB2_16
.LBB2_6:                                # %sw.bb.15
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rcx
	movsd	88(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rcx
	movq	120(%rcx), %rdi
	callq	*%rax
	jmp	.LBB2_16
.LBB2_7:                                # %sw.bb.21
	movq	-48(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB2_9
# BB#8:                                 # %if.then.24
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	120(%rcx), %rdi
	callq	*%rax
	jmp	.LBB2_10
.LBB2_9:                                # %if.else.28
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	120(%rcx), %rdi
	callq	*%rax
.LBB2_10:                               # %if.end
	jmp	.LBB2_16
.LBB2_11:                               # %sw.bb.32
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$3, gimp_temp_progress_run.values+40(%rip)
	movq	-48(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB2_13
# BB#12:                                # %if.then.35
	movq	-48(%rbp), %rax
	movq	48(%rax), %rcx
	movq	120(%rax), %rdi
	callq	*%rcx
	movl	%eax, %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	movsd	%xmm0, gimp_temp_progress_run.values+48(%rip)
	jmp	.LBB2_14
.LBB2_13:                               # %if.else.41
	xorps	%xmm0, %xmm0
	movsd	%xmm0, gimp_temp_progress_run.values+48(%rip)
.LBB2_14:                               # %if.end.42
	jmp	.LBB2_16
.LBB2_15:                               # %sw.default
	movl	$1, gimp_temp_progress_run.values+8(%rip)
.LBB2_16:                               # %sw.epilog
	jmp	.LBB2_17
.LBB2_17:                               # %if.end.43
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_temp_progress_run, .Lfunc_end2-gimp_temp_progress_run
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI2_0:
	.long	.LBB2_3-.LJTI2_0
	.long	.LBB2_4-.LJTI2_0
	.long	.LBB2_5-.LJTI2_0
	.long	.LBB2_6-.LJTI2_0
	.long	.LBB2_7-.LJTI2_0
	.long	.LBB2_11-.LJTI2_0

	.text
	.align	16, 0x90
	.type	gimp_progress_data_free,@function
gimp_progress_data_free:                # @gimp_progress_data_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movl	$128, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1@PLT
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_progress_data_free, .Lfunc_end3-gimp_progress_data_free
	.cfi_endproc

	.globl	gimp_progress_uninstall
	.align	16, 0x90
	.type	gimp_progress_uninstall,@function
gimp_progress_uninstall:                # @gimp_progress_uninstall
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_progress_uninstall(%rip), %rsi
	leaq	.L.str.15(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB4_13
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.body.1
	cmpq	$0, gimp_progress_ht(%rip)
	je	.LBB4_8
# BB#7:                                 # %if.then.3
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_progress_uninstall(%rip), %rsi
	leaq	.L.str.16(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB4_13
.LBB4_9:                                # %if.end.5
	jmp	.LBB4_10
.LBB4_10:                               # %do.end.6
	movq	gimp_progress_ht(%rip), %rdi
	movq	-16(%rbp), %rsi
	callq	g_hash_table_lookup@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_12
# BB#11:                                # %if.then.7
	leaq	.L.str.17(%rip), %rdi
	movb	$0, %al
	callq	g_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_13
.LBB4_12:                               # %if.end.8
	movq	-16(%rbp), %rdi
	callq	_gimp_progress_uninstall
	movq	-16(%rbp), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	gimp_uninstall_temp_proc@PLT
	movq	-24(%rbp), %rdi
	movq	120(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	gimp_progress_ht(%rip), %rdi
	movq	-16(%rbp), %rsi
	callq	g_hash_table_remove@PLT
	movq	-32(%rbp), %rsi
	movq	%rsi, -8(%rbp)
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB4_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_progress_uninstall, .Lfunc_end4-gimp_progress_uninstall
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB5_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB5_2:                                # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	leaq	.L.str(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end5:
	.size	g_warning, .Lfunc_end5-g_warning
	.cfi_endproc

	.globl	gimp_progress_init
	.align	16, 0x90
	.type	gimp_progress_init,@function
gimp_progress_init:                     # @gimp_progress_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, gimp_progress_current(%rip)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_default_display@PLT
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	_gimp_progress_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_progress_init, .Lfunc_end6-gimp_progress_init
	.cfi_endproc

	.globl	gimp_progress_init_printf
	.align	16, 0x90
	.type	gimp_progress_init_printf,@function
gimp_progress_init_printf:              # @gimp_progress_init_printf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$432, %rsp              # imm = 0x1B0
	testb	%al, %al
	movaps	%xmm7, -256(%rbp)       # 16-byte Spill
	movaps	%xmm6, -272(%rbp)       # 16-byte Spill
	movaps	%xmm5, -288(%rbp)       # 16-byte Spill
	movaps	%xmm4, -304(%rbp)       # 16-byte Spill
	movaps	%xmm3, -320(%rbp)       # 16-byte Spill
	movaps	%xmm2, -336(%rbp)       # 16-byte Spill
	movaps	%xmm1, -352(%rbp)       # 16-byte Spill
	movaps	%xmm0, -368(%rbp)       # 16-byte Spill
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%r9, -384(%rbp)         # 8-byte Spill
	movq	%r8, -392(%rbp)         # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	je	.LBB7_8
# BB#7:                                 # %entry
	movaps	-368(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -192(%rbp)
	movaps	-352(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -176(%rbp)
	movaps	-336(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -160(%rbp)
	movaps	-320(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -144(%rbp)
	movaps	-304(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -128(%rbp)
	movaps	-288(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -112(%rbp)
	movaps	-272(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -96(%rbp)
	movaps	-256(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -80(%rbp)
.LBB7_8:                                # %entry
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -208(%rbp)
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -216(%rbp)
	movq	-408(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -224(%rbp)
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -232(%rbp)
	movq	-376(%rbp), %r8         # 8-byte Reload
	movq	%r8, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_progress_init_printf(%rip), %rsi
	leaq	.L.str.18(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB7_6
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	leaq	-240(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$8, (%rcx)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_strdup_vprintf@PLT
	leaq	-64(%rbp), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	callq	gimp_progress_init@PLT
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free@PLT
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB7_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_progress_init_printf, .Lfunc_end7-gimp_progress_init_printf
	.cfi_endproc

	.globl	gimp_progress_set_text_printf
	.align	16, 0x90
	.type	gimp_progress_set_text_printf,@function
gimp_progress_set_text_printf:          # @gimp_progress_set_text_printf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$432, %rsp              # imm = 0x1B0
	testb	%al, %al
	movaps	%xmm7, -256(%rbp)       # 16-byte Spill
	movaps	%xmm6, -272(%rbp)       # 16-byte Spill
	movaps	%xmm5, -288(%rbp)       # 16-byte Spill
	movaps	%xmm4, -304(%rbp)       # 16-byte Spill
	movaps	%xmm3, -320(%rbp)       # 16-byte Spill
	movaps	%xmm2, -336(%rbp)       # 16-byte Spill
	movaps	%xmm1, -352(%rbp)       # 16-byte Spill
	movaps	%xmm0, -368(%rbp)       # 16-byte Spill
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%r9, -384(%rbp)         # 8-byte Spill
	movq	%r8, -392(%rbp)         # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	je	.LBB8_8
# BB#7:                                 # %entry
	movaps	-368(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -192(%rbp)
	movaps	-352(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -176(%rbp)
	movaps	-336(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -160(%rbp)
	movaps	-320(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -144(%rbp)
	movaps	-304(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -128(%rbp)
	movaps	-288(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -112(%rbp)
	movaps	-272(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -96(%rbp)
	movaps	-256(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -80(%rbp)
.LBB8_8:                                # %entry
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -208(%rbp)
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -216(%rbp)
	movq	-408(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -224(%rbp)
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -232(%rbp)
	movq	-376(%rbp), %r8         # 8-byte Reload
	movq	%r8, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB8_3
# BB#2:                                 # %if.then
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_progress_set_text_printf(%rip), %rsi
	leaq	.L.str.18(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB8_6
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %do.end
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	leaq	-240(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$8, (%rcx)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_strdup_vprintf@PLT
	leaq	-64(%rbp), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	callq	gimp_progress_set_text@PLT
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free@PLT
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB8_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_progress_set_text_printf, .Lfunc_end8-gimp_progress_set_text_printf
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
.LCPI9_1:
	.quad	4571153621781053440     # double 0.00390625
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI9_2:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	gimp_progress_update
	.align	16, 0x90
	.type	gimp_progress_update,@function
gimp_progress_update:                   # @gimp_progress_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -16(%rbp)
	ucomisd	-16(%rbp), %xmm1
	jb	.LBB9_2
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movsd	gimp_progress_current(%rip), %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	setne	%al
	setp	%cl
	orb	%cl, %al
	andb	$1, %al
	movzbl	%al, %edx
	movl	%edx, -20(%rbp)
	movsd	%xmm0, -16(%rbp)
	jmp	.LBB9_6
.LBB9_2:                                # %if.else
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB9_4
# BB#3:                                 # %if.then.4
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	gimp_progress_current(%rip), %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	setne	%al
	setp	%cl
	orb	%cl, %al
	andb	$1, %al
	movzbl	%al, %edx
	movl	%edx, -20(%rbp)
	movsd	%xmm0, -16(%rbp)
	jmp	.LBB9_5
.LBB9_4:                                # %if.else.7
	movsd	.LCPI9_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	gimp_progress_current(%rip), %xmm1 # xmm1 = mem[0],zero
	subsd	-16(%rbp), %xmm1
	movapd	.LCPI9_2(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	seta	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -20(%rbp)
.LBB9_5:                                # %if.end
	jmp	.LBB9_6
.LBB9_6:                                # %if.end.10
	cmpl	$0, -20(%rbp)
	jne	.LBB9_8
# BB#7:                                 # %if.then.11
	movl	$1, -4(%rbp)
	jmp	.LBB9_9
.LBB9_8:                                # %if.end.12
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, gimp_progress_current(%rip)
	movsd	gimp_progress_current(%rip), %xmm0 # xmm0 = mem[0],zero
	callq	_gimp_progress_update
	movl	%eax, -4(%rbp)
.LBB9_9:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_progress_update, .Lfunc_end9-gimp_progress_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimp"
	.size	.L.str, 8

	.type	.L__func__.gimp_progress_install,@object # @__func__.gimp_progress_install
.L__func__.gimp_progress_install:
	.asciz	"gimp_progress_install"
	.size	.L__func__.gimp_progress_install, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"start_callback != NULL"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"end_callback != NULL"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"text_callback != NULL"
	.size	.L.str.3, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"value_callback != NULL"
	.size	.L.str.4, 23

	.type	gimp_progress_install_vtable.args,@object # @gimp_progress_install_vtable.args
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_progress_install_vtable.args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.5
	.quad	.L.str.6
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.7
	.quad	.L.str.6
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.6
	.size	gimp_progress_install_vtable.args, 72

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"command"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.zero	1
	.size	.L.str.6, 1

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"text"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"value"
	.size	.L.str.8, 6

	.type	gimp_progress_install_vtable.values,@object # @gimp_progress_install_vtable.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_progress_install_vtable.values:
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.6
	.size	gimp_progress_install_vtable.values, 24

	.type	.L__func__.gimp_progress_install_vtable,@object # @__func__.gimp_progress_install_vtable
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_progress_install_vtable:
	.asciz	"gimp_progress_install_vtable"
	.size	.L__func__.gimp_progress_install_vtable, 29

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"vtable != NULL"
	.size	.L.str.9, 15

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"vtable->start != NULL"
	.size	.L.str.10, 22

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"vtable->end != NULL"
	.size	.L.str.11, 20

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"vtable->set_text != NULL"
	.size	.L.str.12, 25

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"vtable->set_value != NULL"
	.size	.L.str.13, 26

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Temporary progress callback procedure"
	.size	.L.str.14, 38

	.type	gimp_progress_ht,@object # @gimp_progress_ht
	.local	gimp_progress_ht
	.comm	gimp_progress_ht,8,8
	.type	.L__func__.gimp_progress_uninstall,@object # @__func__.gimp_progress_uninstall
.L__func__.gimp_progress_uninstall:
	.asciz	"gimp_progress_uninstall"
	.size	.L__func__.gimp_progress_uninstall, 24

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"progress_callback != NULL"
	.size	.L.str.15, 26

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp_progress_ht != NULL"
	.size	.L.str.16, 25

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Can't find internal progress data"
	.size	.L.str.17, 34

	.type	gimp_progress_current,@object # @gimp_progress_current
	.local	gimp_progress_current
	.comm	gimp_progress_current,8,8
	.type	.L__func__.gimp_progress_init_printf,@object # @__func__.gimp_progress_init_printf
.L__func__.gimp_progress_init_printf:
	.asciz	"gimp_progress_init_printf"
	.size	.L__func__.gimp_progress_init_printf, 26

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"format != NULL"
	.size	.L.str.18, 15

	.type	.L__func__.gimp_progress_set_text_printf,@object # @__func__.gimp_progress_set_text_printf
.L__func__.gimp_progress_set_text_printf:
	.asciz	"gimp_progress_set_text_printf"
	.size	.L__func__.gimp_progress_set_text_printf, 30

	.type	gimp_temp_progress_run.values,@object # @gimp_temp_progress_run.values
	.local	gimp_temp_progress_run.values
	.comm	gimp_temp_progress_run.values,80,16
	.hidden	_gimp_progress_install
	.hidden	_gimp_progress_uninstall
	.hidden	_gimp_progress_init
	.hidden	_gimp_progress_update

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
