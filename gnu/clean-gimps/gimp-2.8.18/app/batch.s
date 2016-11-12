	.text
	.file	"batch.bc"
	.globl	batch_run
	.align	16, 0x90
	.type	batch_run,@function
batch_run:                              # @batch_run
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_2
# BB#1:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_3
.LBB0_2:                                # %if.then
	jmp	.LBB0_24
.LBB0_3:                                # %if.end
	movabsq	$.L.str, %rsi
	movabsq	$batch_exit_after_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$1, %r9d
	movq	-8(%rbp), %rdi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_9
# BB#4:                                 # %if.then.3
	movabsq	$.L.str.1, %rdi
	callq	g_getenv
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_8
# BB#5:                                 # %if.then.6
	movabsq	$.L.str.2, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB0_7
# BB#6:                                 # %if.then.8
	movabsq	$.L.str.3, %rdi
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_printerr
.LBB0_7:                                # %if.end.10
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.11
	jmp	.LBB0_9
.LBB0_9:                                # %if.end.12
	movq	-16(%rbp), %rdi
	movl	$.L.str.2, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_15
# BB#10:                                # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.4, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_15
# BB#11:                                # %if.then.17
	movabsq	$.L.str.5, %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	520(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_pdb_lookup_procedure
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB0_13
# BB#12:                                # %if.then.20
	movl	$1, %ecx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	batch_run_cmd
	jmp	.LBB0_14
.LBB0_13:                               # %if.else
	movabsq	$.L.str.6, %rdi
	callq	gettext
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
.LBB0_14:                               # %if.end.22
	jmp	.LBB0_23
.LBB0_15:                               # %if.else.23
	movq	-8(%rbp), %rax
	movq	520(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_lookup_procedure
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB0_21
# BB#16:                                # %if.then.27
	movl	$0, -60(%rbp)
.LBB0_17:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-60(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB0_20
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movslq	-60(%rbp), %rax
	movq	-24(%rbp), %r8
	movq	(%r8,%rax,8), %r8
	callq	batch_run_cmd
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_17
.LBB0_20:                               # %for.end
	jmp	.LBB0_22
.LBB0_21:                               # %if.else.32
	movabsq	$.L.str.6, %rdi
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
.LBB0_22:                               # %if.end.34
	jmp	.LBB0_23
.LBB0_23:                               # %if.end.35
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_signal_handler_disconnect
.LBB0_24:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	batch_run, .Lfunc_end0-batch_run
	.cfi_endproc

	.align	16, 0x90
	.type	batch_exit_after_callback,@function
batch_exit_after_callback:              # @batch_exit_after_callback
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 56(%rdi)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.batch_exit_after_callback, %rsi
	movb	$0, %al
	callq	g_print
.LBB1_2:                                # %if.end
	callq	gegl_exit
	callq	tile_swap_exit
	xorl	%edi, %edi
	callq	exit
.Lfunc_end1:
	.size	batch_exit_after_callback, .Lfunc_end1-batch_exit_after_callback
	.cfi_endproc

	.align	16, 0x90
	.type	batch_run_cmd,@function
batch_run_cmd:                          # @batch_run_cmd
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_procedure_get_arguments
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	96(%rax), %ecx
	cmpl	-68(%rbp), %ecx
	jle	.LBB2_10
# BB#1:                                 # %land.lhs.true
	movslq	-68(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	104(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_param_int32_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true.4
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.7
	movl	$1, -92(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.8
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.10
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.12
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -68(%rbp)
	movslq	%eax, %rdx
	movq	-48(%rbp), %rsi
	imulq	$24, %rdx, %rdx
	addq	8(%rsi), %rdx
	movl	-28(%rbp), %esi
	movq	%rdx, %rdi
	callq	g_value_set_int
.LBB2_10:                               # %if.end.15
	movq	-24(%rbp), %rax
	movl	96(%rax), %ecx
	cmpl	-68(%rbp), %ecx
	jle	.LBB2_20
# BB#11:                                # %land.lhs.true.18
	movslq	-68(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	104(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_param_string_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB2_13
# BB#12:                                # %if.then.30
	movl	$0, -116(%rbp)
	jmp	.LBB2_18
.LBB2_13:                               # %if.else.31
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_16
# BB#14:                                # %land.lhs.true.34
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB2_16
# BB#15:                                # %if.then.38
	movl	$1, -116(%rbp)
	jmp	.LBB2_17
.LBB2_16:                               # %if.else.39
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB2_17:                               # %if.end.41
	jmp	.LBB2_18
.LBB2_18:                               # %if.end.42
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB2_20
# BB#19:                                # %if.then.45
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -68(%rbp)
	movslq	%eax, %rdx
	movq	-48(%rbp), %rsi
	imulq	$24, %rdx, %rdx
	addq	8(%rsi), %rdx
	movq	-40(%rbp), %rsi
	movq	%rdx, %rdi
	callq	g_value_set_static_string
.LBB2_20:                               # %if.end.50
	movq	-8(%rbp), %rax
	movq	520(%rax), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_get_user_context
	movq	-16(%rbp), %r8
	movq	-48(%rbp), %r9
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-64(%rbp), %rcx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_pdb_execute_procedure_by_name_args
	movq	%rax, -56(%rbp)
	movq	8(%rax), %rdi
	callq	g_value_get_enum
	movl	%eax, %r10d
	testl	%eax, %eax
	movl	%r10d, -132(%rbp)       # 4-byte Spill
	je	.LBB2_21
	jmp	.LBB2_33
.LBB2_33:                               # %if.end.50
	movl	-132(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB2_25
	jmp	.LBB2_34
.LBB2_34:                               # %if.end.50
	movl	-132(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	je	.LBB2_29
	jmp	.LBB2_30
.LBB2_21:                               # %sw.bb
	cmpq	$0, -64(%rbp)
	je	.LBB2_23
# BB#22:                                # %if.then.57
	movabsq	$.L.str.9, %rdi
	movq	-64(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_printerr
	jmp	.LBB2_24
.LBB2_23:                               # %if.else.58
	movabsq	$.L.str.10, %rdi
	movb	$0, %al
	callq	g_printerr
.LBB2_24:                               # %if.end.59
	jmp	.LBB2_30
.LBB2_25:                               # %sw.bb.60
	cmpq	$0, -64(%rbp)
	je	.LBB2_27
# BB#26:                                # %if.then.62
	movabsq	$.L.str.11, %rdi
	movq	-64(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_printerr
	jmp	.LBB2_28
.LBB2_27:                               # %if.else.64
	movabsq	$.L.str.12, %rdi
	movb	$0, %al
	callq	g_printerr
.LBB2_28:                               # %if.end.65
	jmp	.LBB2_30
.LBB2_29:                               # %sw.bb.66
	movabsq	$.L.str.13, %rdi
	movb	$0, %al
	callq	g_printerr
.LBB2_30:                               # %sw.epilog
	movq	-56(%rbp), %rdi
	callq	g_value_array_free
	movq	-48(%rbp), %rdi
	callq	g_value_array_free
	cmpq	$0, -64(%rbp)
	je	.LBB2_32
# BB#31:                                # %if.then.68
	movq	-64(%rbp), %rdi
	callq	g_error_free
.LBB2_32:                               # %if.end.69
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	batch_run_cmd, .Lfunc_end2-batch_run_cmd
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB3_2
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
.LBB3_2:                                # %entry
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
	movl	$.L.str.7, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end3:
	.size	g_message, .Lfunc_end3-g_message
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"exit"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_BATCH_INTERPRETER"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"plug-in-script-fu-eval"
	.size	.L.str.2, 23

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"No batch interpreter specified, using the default '%s'.\n"
	.size	.L.str.3, 57

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"-"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"plug-in-script-fu-text-console"
	.size	.L.str.5, 31

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"The batch interpreter '%s' is not available. Batch mode disabled."
	.size	.L.str.6, 66

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Gimp"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"EXIT: %s\n"
	.size	.L.str.8, 10

	.type	.L__func__.batch_exit_after_callback,@object # @__func__.batch_exit_after_callback
.L__func__.batch_exit_after_callback:
	.asciz	"batch_exit_after_callback"
	.size	.L__func__.batch_exit_after_callback, 26

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"batch command experienced an execution error:\n%s\n"
	.size	.L.str.9, 50

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"batch command experienced an execution error\n"
	.size	.L.str.10, 46

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"batch command experienced a calling error:\n%s\n"
	.size	.L.str.11, 47

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"batch command experienced a calling error\n"
	.size	.L.str.12, 43

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"batch command executed successfully\n"
	.size	.L.str.13, 37


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
