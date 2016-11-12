	.text
	.file	"gimptemporaryprocedure.bc"
	.globl	gimp_temporary_procedure_get_type
	.align	16, 0x90
	.type	gimp_temporary_procedure_get_type,@function
gimp_temporary_procedure_get_type:      # @gimp_temporary_procedure_get_type
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
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_temporary_procedure_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_temporary_procedure_get_type.g_define_type_id__volatile, %rax
	movq	%rax, %rdi
	callq	g_once_init_enter
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB0_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then
	callq	gimp_plug_in_procedure_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$192, %edx
	movabsq	$gimp_temporary_procedure_class_intern_init, %rdi
	movl	$296, %r8d              # imm = 0x128
	movabsq	$gimp_temporary_procedure_init, %rcx
	xorl	%esi, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movabsq	$gimp_temporary_procedure_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_temporary_procedure_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_temporary_procedure_get_type, .Lfunc_end0-gimp_temporary_procedure_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_temporary_procedure_class_intern_init,@function
gimp_temporary_procedure_class_intern_init: # @gimp_temporary_procedure_class_intern_init
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
	callq	g_type_class_peek_parent
	movq	%rax, gimp_temporary_procedure_parent_class
	cmpl	$0, GimpTemporaryProcedure_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpTemporaryProcedure_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_temporary_procedure_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_temporary_procedure_class_intern_init, .Lfunc_end1-gimp_temporary_procedure_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_temporary_procedure_init,@function
gimp_temporary_procedure_init:          # @gimp_temporary_procedure_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, 32(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_temporary_procedure_init, .Lfunc_end2-gimp_temporary_procedure_init
	.cfi_endproc

	.globl	gimp_temporary_procedure_get_progname
	.align	16, 0x90
	.type	gimp_temporary_procedure_get_progname,@function
gimp_temporary_procedure_get_progname:  # @gimp_temporary_procedure_get_progname
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
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_temporary_procedure_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	288(%rax), %rax
	movq	40(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_temporary_procedure_get_progname, .Lfunc_end3-gimp_temporary_procedure_get_progname
	.cfi_endproc

	.globl	gimp_temporary_procedure_new
	.align	16, 0x90
	.type	gimp_temporary_procedure_new,@function
gimp_temporary_procedure_new:           # @gimp_temporary_procedure_new
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_plug_in_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_temporary_procedure_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	callq	gimp_temporary_procedure_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movabsq	$.L.str.3, %rdi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, 288(%rsi)
	callq	g_strdup
	movq	-24(%rbp), %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_procedure_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, 136(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB4_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_temporary_procedure_new, .Lfunc_end4-gimp_temporary_procedure_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_temporary_procedure_class_init,@function
gimp_temporary_procedure_class_init:    # @gimp_temporary_procedure_class_init
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
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_procedure_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_temporary_procedure_get_progname, %rsi
	movabsq	$gimp_temporary_procedure_execute_async, %rdi
	movabsq	$gimp_temporary_procedure_execute, %rcx
	movabsq	$gimp_temporary_procedure_finalize, %rdx
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 160(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 168(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 176(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_temporary_procedure_class_init, .Lfunc_end5-gimp_temporary_procedure_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_temporary_procedure_finalize,@function
gimp_temporary_procedure_finalize:      # @gimp_temporary_procedure_finalize
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
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	gimp_temporary_procedure_parent_class, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_temporary_procedure_finalize, .Lfunc_end6-gimp_temporary_procedure_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_temporary_procedure_execute,@function
gimp_temporary_procedure_execute:       # @gimp_temporary_procedure_execute
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	376(%rcx), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gimp_temporary_procedure_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %r8
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_plug_in_manager_call_run_temp
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_temporary_procedure_execute, .Lfunc_end7-gimp_temporary_procedure_execute
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_temporary_procedure_execute_async,@function
gimp_temporary_procedure_execute_async: # @gimp_temporary_procedure_execute_async
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gimp_temporary_procedure_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	376(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %r8
	callq	gimp_plug_in_manager_call_run_temp
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_procedure_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rcx
	callq	gimp_plug_in_procedure_handle_return_values
	movq	-64(%rbp), %rdi
	callq	g_value_array_free
.LBB8_2:                                # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_temporary_procedure_execute_async, .Lfunc_end8-gimp_temporary_procedure_execute_async
	.cfi_endproc

	.type	gimp_temporary_procedure_get_type.g_define_type_id__volatile,@object # @gimp_temporary_procedure_get_type.g_define_type_id__volatile
	.local	gimp_temporary_procedure_get_type.g_define_type_id__volatile
	.comm	gimp_temporary_procedure_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpTemporaryProcedure"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Plug-In"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_temporary_procedure_new,@object # @__func__.gimp_temporary_procedure_new
.L__func__.gimp_temporary_procedure_new:
	.asciz	"gimp_temporary_procedure_new"
	.size	.L__func__.gimp_temporary_procedure_new, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_PLUG_IN (plug_in)"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"none"
	.size	.L.str.3, 5

	.type	gimp_temporary_procedure_parent_class,@object # @gimp_temporary_procedure_parent_class
	.local	gimp_temporary_procedure_parent_class
	.comm	gimp_temporary_procedure_parent_class,8,8
	.type	GimpTemporaryProcedure_private_offset,@object # @GimpTemporaryProcedure_private_offset
	.local	GimpTemporaryProcedure_private_offset
	.comm	GimpTemporaryProcedure_private_offset,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
