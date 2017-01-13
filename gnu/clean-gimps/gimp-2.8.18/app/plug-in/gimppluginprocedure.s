	.text
	.file	"gimppluginprocedure.bc"
	.globl	gimp_plug_in_procedure_get_type
	.align	16, 0x90
	.type	gimp_plug_in_procedure_get_type,@function
gimp_plug_in_procedure_get_type:        # @gimp_plug_in_procedure_get_type
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
	movq	gimp_plug_in_procedure_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_plug_in_procedure_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_procedure_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$192, %edx
	movabsq	$gimp_plug_in_procedure_class_intern_init, %rdi
	movl	$288, %r8d              # imm = 0x120
	movabsq	$gimp_plug_in_procedure_init, %rcx
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
	movabsq	$gimp_plug_in_procedure_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_plug_in_procedure_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_plug_in_procedure_get_type, .Lfunc_end0-gimp_plug_in_procedure_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_procedure_class_intern_init,@function
gimp_plug_in_procedure_class_intern_init: # @gimp_plug_in_procedure_class_intern_init
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
	movq	%rax, gimp_plug_in_procedure_parent_class
	cmpl	$0, GimpPlugInProcedure_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpPlugInProcedure_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_plug_in_procedure_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_plug_in_procedure_class_intern_init, .Lfunc_end1-gimp_plug_in_procedure_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_procedure_init,@function
gimp_plug_in_procedure_init:            # @gimp_plug_in_procedure_init
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
	movl	$1, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 168(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 180(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_plug_in_procedure_init, .Lfunc_end2-gimp_plug_in_procedure_init
	.cfi_endproc

	.globl	gimp_plug_in_procedure_real_get_progname
	.align	16, 0x90
	.type	gimp_plug_in_procedure_real_get_progname,@function
gimp_plug_in_procedure_real_get_progname: # @gimp_plug_in_procedure_real_get_progname
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	136(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_plug_in_procedure_real_get_progname, .Lfunc_end3-gimp_plug_in_procedure_real_get_progname
	.cfi_endproc

	.globl	gimp_plug_in_procedure_new
	.align	16, 0x90
	.type	gimp_plug_in_procedure_new,@function
gimp_plug_in_procedure_new:             # @gimp_plug_in_procedure_new
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
	subq	$64, %rsp
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpl	$1, -12(%rbp)
	je	.LBB4_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$2, -12(%rbp)
	jne	.LBB4_4
.LBB4_3:                                # %if.then
	jmp	.LBB4_5
.LBB4_4:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_procedure_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_12
.LBB4_5:                                # %if.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.end
	jmp	.LBB4_7
.LBB4_7:                                # %do.body.2
	cmpq	$0, -24(%rbp)
	je	.LBB4_9
# BB#8:                                 # %if.then.4
	jmp	.LBB4_10
.LBB4_9:                                # %if.else.5
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_procedure_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_12
.LBB4_10:                               # %if.end.6
	jmp	.LBB4_11
.LBB4_11:                               # %do.end.7
	callq	gimp_plug_in_procedure_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-32(%rbp), %rsi
	movq	%rax, 136(%rsi)
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, 32(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB4_12:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_plug_in_procedure_new, .Lfunc_end4-gimp_plug_in_procedure_new
	.cfi_endproc

	.globl	gimp_plug_in_procedure_find
	.align	16, 0x90
	.type	gimp_plug_in_procedure_find,@function
gimp_plug_in_procedure_find:            # @gimp_plug_in_procedure_find
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB5_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB5_4
# BB#3:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_procedure_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
	jmp	.LBB5_10
.LBB5_4:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_5
.LBB5_5:                                # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB5_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB5_8
.LBB5_7:                                # %cond.false
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB5_8
.LBB5_8:                                # %cond.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB5_1
.LBB5_9:                                # %for.end
	movq	$0, -8(%rbp)
.LBB5_10:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_plug_in_procedure_find, .Lfunc_end5-gimp_plug_in_procedure_find
	.cfi_endproc

	.globl	gimp_plug_in_procedure_get_progname
	.align	16, 0x90
	.type	gimp_plug_in_procedure_get_progname,@function
gimp_plug_in_procedure_get_progname:    # @gimp_plug_in_procedure_get_progname
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_plug_in_procedure_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_procedure_get_progname, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	176(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB6_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_plug_in_procedure_get_progname, .Lfunc_end6-gimp_plug_in_procedure_get_progname
	.cfi_endproc

	.globl	gimp_plug_in_procedure_set_locale_domain
	.align	16, 0x90
	.type	gimp_plug_in_procedure_set_locale_domain,@function
gimp_plug_in_procedure_set_locale_domain: # @gimp_plug_in_procedure_set_locale_domain
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_plug_in_procedure_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_procedure_set_locale_domain, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_16
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB7_14
# BB#13:                                # %cond.true
	movq	-16(%rbp), %rdi
	callq	g_quark_from_string
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB7_15
.LBB7_14:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB7_15
.LBB7_15:                               # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 144(%rcx)
.LBB7_16:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_plug_in_procedure_set_locale_domain, .Lfunc_end7-gimp_plug_in_procedure_set_locale_domain
	.cfi_endproc

	.globl	gimp_plug_in_procedure_get_locale_domain
	.align	16, 0x90
	.type	gimp_plug_in_procedure_get_locale_domain,@function
gimp_plug_in_procedure_get_locale_domain: # @gimp_plug_in_procedure_get_locale_domain
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_plug_in_procedure_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_procedure_get_locale_domain, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	144(%rax), %edi
	callq	g_quark_to_string
	movq	%rax, -8(%rbp)
.LBB8_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_plug_in_procedure_get_locale_domain, .Lfunc_end8-gimp_plug_in_procedure_get_locale_domain
	.cfi_endproc

	.globl	gimp_plug_in_procedure_set_help_domain
	.align	16, 0x90
	.type	gimp_plug_in_procedure_set_help_domain,@function
gimp_plug_in_procedure_set_help_domain: # @gimp_plug_in_procedure_set_help_domain
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_plug_in_procedure_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_procedure_set_help_domain, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_16
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB9_14
# BB#13:                                # %cond.true
	movq	-16(%rbp), %rdi
	callq	g_quark_from_string
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB9_15
.LBB9_14:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB9_15
.LBB9_15:                               # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 148(%rcx)
.LBB9_16:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_plug_in_procedure_set_help_domain, .Lfunc_end9-gimp_plug_in_procedure_set_help_domain
	.cfi_endproc

	.globl	gimp_plug_in_procedure_get_help_domain
	.align	16, 0x90
	.type	gimp_plug_in_procedure_get_help_domain,@function
gimp_plug_in_procedure_get_help_domain: # @gimp_plug_in_procedure_get_help_domain
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_plug_in_procedure_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_procedure_get_help_domain, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_13
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	148(%rax), %edi
	callq	g_quark_to_string
	movq	%rax, -8(%rbp)
.LBB10_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_plug_in_procedure_get_help_domain, .Lfunc_end10-gimp_plug_in_procedure_get_help_domain
	.cfi_endproc

	.globl	gimp_plug_in_procedure_add_menu_path
	.align	16, 0x90
	.type	gimp_plug_in_procedure_add_menu_path,@function
gimp_plug_in_procedure_add_menu_path:   # @gimp_plug_in_procedure_add_menu_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$800, %rsp              # imm = 0x320
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_plug_in_procedure_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_procedure_add_menu_path, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_245
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB11_15
# BB#14:                                # %if.then.13
	jmp	.LBB11_16
.LBB11_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_procedure_add_menu_path, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_245
.LBB11_16:                              # %if.end.15
	jmp	.LBB11_17
.LBB11_17:                              # %do.end.16
	jmp	.LBB11_18
.LBB11_18:                              # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB11_20
# BB#19:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB11_21
.LBB11_20:                              # %if.then.20
	jmp	.LBB11_22
.LBB11_21:                              # %if.else.21
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_procedure_add_menu_path, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_245
.LBB11_22:                              # %if.end.22
	jmp	.LBB11_23
.LBB11_23:                              # %do.end.23
	movq	-16(%rbp), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$62, %esi
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	strchr
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB11_26
# BB#24:                                # %lor.lhs.false.28
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movsbl	1(%rax), %edx
	cmpl	$0, %edx
	je	.LBB11_27
# BB#25:                                # %land.lhs.true.30
	movq	-64(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	je	.LBB11_27
.LBB11_26:                              # %if.then.34
	movq	-16(%rbp), %rax
	movq	136(%rax), %rdi
	callq	g_filename_display_basename
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	callq	gimp_plug_in_error_quark
	movq	-48(%rbp), %r8
	movq	-16(%rbp), %rdi
	movq	136(%rdi), %rdi
	movl	%eax, -604(%rbp)        # 4-byte Spill
	movq	%r8, -616(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-16(%rbp), %rdi
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	xorl	%edx, %edx
	movabsq	$.L.str.7, %rcx
	movq	-24(%rbp), %rdi
	movq	-600(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -632(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	-604(%rbp), %esi        # 4-byte Reload
	movq	-616(%rbp), %r8         # 8-byte Reload
	movq	-624(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-632(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB11_242
.LBB11_27:                              # %if.end.40
	movabsq	$.L.str.8, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	jne	.LBB11_29
# BB#28:                                # %lor.lhs.false.43
	movabsq	$.L.str.9, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB11_40
.LBB11_29:                              # %if.then.46
	movq	-40(%rbp), %rax
	cmpl	$1, 96(%rax)
	jl	.LBB11_38
# BB#30:                                # %lor.lhs.false.49
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_param_int32_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB11_32
# BB#31:                                # %if.then.58
	movl	$0, -116(%rbp)
	jmp	.LBB11_37
.LBB11_32:                              # %if.else.59
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_35
# BB#33:                                # %land.lhs.true.62
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB11_35
# BB#34:                                # %if.then.67
	movl	$1, -116(%rbp)
	jmp	.LBB11_36
.LBB11_35:                              # %if.else.68
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB11_36:                              # %if.end.70
	jmp	.LBB11_37
.LBB11_37:                              # %if.end.71
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	jne	.LBB11_39
.LBB11_38:                              # %if.then.74
	movabsq	$.L.str.10, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB11_242
.LBB11_39:                              # %if.end.75
	jmp	.LBB11_241
.LBB11_40:                              # %if.else.76
	movabsq	$.L.str.11, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB11_62
# BB#41:                                # %if.then.79
	movq	-40(%rbp), %rax
	cmpl	$3, 96(%rax)
	jl	.LBB11_60
# BB#42:                                # %lor.lhs.false.83
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_param_int32_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB11_44
# BB#43:                                # %if.then.94
	movl	$0, -140(%rbp)
	jmp	.LBB11_49
.LBB11_44:                              # %if.else.95
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_47
# BB#45:                                # %land.lhs.true.98
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB11_47
# BB#46:                                # %if.then.103
	movl	$1, -140(%rbp)
	jmp	.LBB11_48
.LBB11_47:                              # %if.else.104
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB11_48:                              # %if.end.106
	jmp	.LBB11_49
.LBB11_49:                              # %if.end.107
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB11_60
# BB#50:                                # %lor.lhs.false.110
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_param_image_id_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB11_52
# BB#51:                                # %if.then.121
	movl	$0, -164(%rbp)
	jmp	.LBB11_57
.LBB11_52:                              # %if.else.122
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_55
# BB#53:                                # %land.lhs.true.125
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB11_55
# BB#54:                                # %if.then.130
	movl	$1, -164(%rbp)
	jmp	.LBB11_56
.LBB11_55:                              # %if.else.131
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB11_56:                              # %if.end.133
	jmp	.LBB11_57
.LBB11_57:                              # %if.end.134
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB11_60
# BB#58:                                # %lor.lhs.false.137
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gimp_param_layer_id_get_type
	movq	-640(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB11_61
# BB#59:                                # %lor.lhs.false.145
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gimp_param_drawable_id_get_type
	movq	-648(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB11_61
.LBB11_60:                              # %if.then.153
	movabsq	$.L.str.12, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB11_242
.LBB11_61:                              # %if.end.154
	jmp	.LBB11_240
.LBB11_62:                              # %if.else.155
	movabsq	$.L.str.13, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB11_84
# BB#63:                                # %if.then.158
	movq	-40(%rbp), %rax
	cmpl	$3, 96(%rax)
	jl	.LBB11_82
# BB#64:                                # %lor.lhs.false.162
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	callq	gimp_param_int32_get_type
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB11_66
# BB#65:                                # %if.then.173
	movl	$0, -188(%rbp)
	jmp	.LBB11_71
.LBB11_66:                              # %if.else.174
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_69
# BB#67:                                # %land.lhs.true.177
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB11_69
# BB#68:                                # %if.then.182
	movl	$1, -188(%rbp)
	jmp	.LBB11_70
.LBB11_69:                              # %if.else.183
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -188(%rbp)
.LBB11_70:                              # %if.end.185
	jmp	.LBB11_71
.LBB11_71:                              # %if.end.186
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	je	.LBB11_82
# BB#72:                                # %lor.lhs.false.189
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -200(%rbp)
	callq	gimp_param_image_id_get_type
	movq	%rax, -208(%rbp)
	cmpq	$0, -200(%rbp)
	jne	.LBB11_74
# BB#73:                                # %if.then.200
	movl	$0, -212(%rbp)
	jmp	.LBB11_79
.LBB11_74:                              # %if.else.201
	movq	-200(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_77
# BB#75:                                # %land.lhs.true.204
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-208(%rbp), %rax
	jne	.LBB11_77
# BB#76:                                # %if.then.209
	movl	$1, -212(%rbp)
	jmp	.LBB11_78
.LBB11_77:                              # %if.else.210
	movq	-200(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -212(%rbp)
.LBB11_78:                              # %if.end.212
	jmp	.LBB11_79
.LBB11_79:                              # %if.end.213
	movl	-212(%rbp), %eax
	movl	%eax, -216(%rbp)
	cmpl	$0, -216(%rbp)
	je	.LBB11_82
# BB#80:                                # %lor.lhs.false.216
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gimp_param_channel_id_get_type
	movq	-656(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB11_83
# BB#81:                                # %lor.lhs.false.224
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gimp_param_drawable_id_get_type
	movq	-664(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB11_83
.LBB11_82:                              # %if.then.232
	movabsq	$.L.str.14, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB11_242
.LBB11_83:                              # %if.end.233
	jmp	.LBB11_239
.LBB11_84:                              # %if.else.234
	movabsq	$.L.str.15, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB11_112
# BB#85:                                # %if.then.237
	movq	-40(%rbp), %rax
	cmpl	$3, 96(%rax)
	jl	.LBB11_110
# BB#86:                                # %lor.lhs.false.241
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	callq	gimp_param_int32_get_type
	movq	%rax, -232(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB11_88
# BB#87:                                # %if.then.252
	movl	$0, -236(%rbp)
	jmp	.LBB11_93
.LBB11_88:                              # %if.else.253
	movq	-224(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_91
# BB#89:                                # %land.lhs.true.256
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-232(%rbp), %rax
	jne	.LBB11_91
# BB#90:                                # %if.then.261
	movl	$1, -236(%rbp)
	jmp	.LBB11_92
.LBB11_91:                              # %if.else.262
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -236(%rbp)
.LBB11_92:                              # %if.end.264
	jmp	.LBB11_93
.LBB11_93:                              # %if.end.265
	movl	-236(%rbp), %eax
	movl	%eax, -240(%rbp)
	cmpl	$0, -240(%rbp)
	je	.LBB11_110
# BB#94:                                # %lor.lhs.false.268
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -248(%rbp)
	callq	gimp_param_image_id_get_type
	movq	%rax, -256(%rbp)
	cmpq	$0, -248(%rbp)
	jne	.LBB11_96
# BB#95:                                # %if.then.279
	movl	$0, -260(%rbp)
	jmp	.LBB11_101
.LBB11_96:                              # %if.else.280
	movq	-248(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_99
# BB#97:                                # %land.lhs.true.283
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-256(%rbp), %rax
	jne	.LBB11_99
# BB#98:                                # %if.then.288
	movl	$1, -260(%rbp)
	jmp	.LBB11_100
.LBB11_99:                              # %if.else.289
	movq	-248(%rbp), %rdi
	movq	-256(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -260(%rbp)
.LBB11_100:                             # %if.end.291
	jmp	.LBB11_101
.LBB11_101:                             # %if.end.292
	movl	-260(%rbp), %eax
	movl	%eax, -264(%rbp)
	cmpl	$0, -264(%rbp)
	je	.LBB11_110
# BB#102:                               # %lor.lhs.false.295
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -272(%rbp)
	callq	gimp_param_vectors_id_get_type
	movq	%rax, -280(%rbp)
	cmpq	$0, -272(%rbp)
	jne	.LBB11_104
# BB#103:                               # %if.then.306
	movl	$0, -284(%rbp)
	jmp	.LBB11_109
.LBB11_104:                             # %if.else.307
	movq	-272(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_107
# BB#105:                               # %land.lhs.true.310
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-280(%rbp), %rax
	jne	.LBB11_107
# BB#106:                               # %if.then.315
	movl	$1, -284(%rbp)
	jmp	.LBB11_108
.LBB11_107:                             # %if.else.316
	movq	-272(%rbp), %rdi
	movq	-280(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -284(%rbp)
.LBB11_108:                             # %if.end.318
	jmp	.LBB11_109
.LBB11_109:                             # %if.end.319
	movl	-284(%rbp), %eax
	movl	%eax, -288(%rbp)
	cmpl	$0, -288(%rbp)
	jne	.LBB11_111
.LBB11_110:                             # %if.then.322
	movabsq	$.L.str.16, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB11_242
.LBB11_111:                             # %if.end.323
	jmp	.LBB11_238
.LBB11_112:                             # %if.else.324
	movabsq	$.L.str.17, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB11_132
# BB#113:                               # %if.then.327
	movq	-40(%rbp), %rax
	cmpl	$2, 96(%rax)
	jl	.LBB11_130
# BB#114:                               # %lor.lhs.false.331
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)
	callq	gimp_param_int32_get_type
	movq	%rax, -304(%rbp)
	cmpq	$0, -296(%rbp)
	jne	.LBB11_116
# BB#115:                               # %if.then.342
	movl	$0, -308(%rbp)
	jmp	.LBB11_121
.LBB11_116:                             # %if.else.343
	movq	-296(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_119
# BB#117:                               # %land.lhs.true.346
	movq	-296(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-304(%rbp), %rax
	jne	.LBB11_119
# BB#118:                               # %if.then.351
	movl	$1, -308(%rbp)
	jmp	.LBB11_120
.LBB11_119:                             # %if.else.352
	movq	-296(%rbp), %rdi
	movq	-304(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -308(%rbp)
.LBB11_120:                             # %if.end.354
	jmp	.LBB11_121
.LBB11_121:                             # %if.end.355
	movl	-308(%rbp), %eax
	movl	%eax, -312(%rbp)
	cmpl	$0, -312(%rbp)
	je	.LBB11_130
# BB#122:                               # %lor.lhs.false.358
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -320(%rbp)
	callq	gimp_param_image_id_get_type
	movq	%rax, -328(%rbp)
	cmpq	$0, -320(%rbp)
	jne	.LBB11_124
# BB#123:                               # %if.then.369
	movl	$0, -332(%rbp)
	jmp	.LBB11_129
.LBB11_124:                             # %if.else.370
	movq	-320(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_127
# BB#125:                               # %land.lhs.true.373
	movq	-320(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-328(%rbp), %rax
	jne	.LBB11_127
# BB#126:                               # %if.then.378
	movl	$1, -332(%rbp)
	jmp	.LBB11_128
.LBB11_127:                             # %if.else.379
	movq	-320(%rbp), %rdi
	movq	-328(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -332(%rbp)
.LBB11_128:                             # %if.end.381
	jmp	.LBB11_129
.LBB11_129:                             # %if.end.382
	movl	-332(%rbp), %eax
	movl	%eax, -336(%rbp)
	cmpl	$0, -336(%rbp)
	jne	.LBB11_131
.LBB11_130:                             # %if.then.385
	movabsq	$.L.str.18, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB11_242
.LBB11_131:                             # %if.end.386
	jmp	.LBB11_237
.LBB11_132:                             # %if.else.387
	movabsq	$.L.str.19, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB11_170
# BB#133:                               # %if.then.390
	movq	-40(%rbp), %rax
	cmpl	$3, 96(%rax)
	jl	.LBB11_158
# BB#134:                               # %lor.lhs.false.394
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	callq	gimp_param_int32_get_type
	movq	%rax, -352(%rbp)
	cmpq	$0, -344(%rbp)
	jne	.LBB11_136
# BB#135:                               # %if.then.405
	movl	$0, -356(%rbp)
	jmp	.LBB11_141
.LBB11_136:                             # %if.else.406
	movq	-344(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_139
# BB#137:                               # %land.lhs.true.409
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-352(%rbp), %rax
	jne	.LBB11_139
# BB#138:                               # %if.then.414
	movl	$1, -356(%rbp)
	jmp	.LBB11_140
.LBB11_139:                             # %if.else.415
	movq	-344(%rbp), %rdi
	movq	-352(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -356(%rbp)
.LBB11_140:                             # %if.end.417
	jmp	.LBB11_141
.LBB11_141:                             # %if.end.418
	movl	-356(%rbp), %eax
	movl	%eax, -360(%rbp)
	cmpl	$0, -360(%rbp)
	je	.LBB11_158
# BB#142:                               # %lor.lhs.false.421
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -368(%rbp)
	movq	g_param_spec_types, %rax
	movq	112(%rax), %rax
	movq	%rax, -376(%rbp)
	cmpq	$0, -368(%rbp)
	jne	.LBB11_144
# BB#143:                               # %if.then.432
	movl	$0, -380(%rbp)
	jmp	.LBB11_149
.LBB11_144:                             # %if.else.433
	movq	-368(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_147
# BB#145:                               # %land.lhs.true.436
	movq	-368(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-376(%rbp), %rax
	jne	.LBB11_147
# BB#146:                               # %if.then.441
	movl	$1, -380(%rbp)
	jmp	.LBB11_148
.LBB11_147:                             # %if.else.442
	movq	-368(%rbp), %rdi
	movq	-376(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -380(%rbp)
.LBB11_148:                             # %if.end.444
	jmp	.LBB11_149
.LBB11_149:                             # %if.end.445
	movl	-380(%rbp), %eax
	movl	%eax, -384(%rbp)
	cmpl	$0, -384(%rbp)
	je	.LBB11_158
# BB#150:                               # %lor.lhs.false.448
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -392(%rbp)
	movq	g_param_spec_types, %rax
	movq	112(%rax), %rax
	movq	%rax, -400(%rbp)
	cmpq	$0, -392(%rbp)
	jne	.LBB11_152
# BB#151:                               # %if.then.459
	movl	$0, -404(%rbp)
	jmp	.LBB11_157
.LBB11_152:                             # %if.else.460
	movq	-392(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_155
# BB#153:                               # %land.lhs.true.463
	movq	-392(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-400(%rbp), %rax
	jne	.LBB11_155
# BB#154:                               # %if.then.468
	movl	$1, -404(%rbp)
	jmp	.LBB11_156
.LBB11_155:                             # %if.else.469
	movq	-392(%rbp), %rdi
	movq	-400(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -404(%rbp)
.LBB11_156:                             # %if.end.471
	jmp	.LBB11_157
.LBB11_157:                             # %if.end.472
	movl	-404(%rbp), %eax
	movl	%eax, -408(%rbp)
	cmpl	$0, -408(%rbp)
	jne	.LBB11_159
.LBB11_158:                             # %if.then.475
	movabsq	$.L.str.20, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB11_242
.LBB11_159:                             # %if.end.476
	movq	-40(%rbp), %rax
	cmpl	$1, 112(%rax)
	jl	.LBB11_168
# BB#160:                               # %lor.lhs.false.479
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -416(%rbp)
	callq	gimp_param_image_id_get_type
	movq	%rax, -424(%rbp)
	cmpq	$0, -416(%rbp)
	jne	.LBB11_162
# BB#161:                               # %if.then.489
	movl	$0, -428(%rbp)
	jmp	.LBB11_167
.LBB11_162:                             # %if.else.490
	movq	-416(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_165
# BB#163:                               # %land.lhs.true.493
	movq	-416(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-424(%rbp), %rax
	jne	.LBB11_165
# BB#164:                               # %if.then.498
	movl	$1, -428(%rbp)
	jmp	.LBB11_166
.LBB11_165:                             # %if.else.499
	movq	-416(%rbp), %rdi
	movq	-424(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -428(%rbp)
.LBB11_166:                             # %if.end.501
	jmp	.LBB11_167
.LBB11_167:                             # %if.end.502
	movl	-428(%rbp), %eax
	movl	%eax, -432(%rbp)
	cmpl	$0, -432(%rbp)
	jne	.LBB11_169
.LBB11_168:                             # %if.then.505
	movabsq	$.L.str.21, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB11_242
.LBB11_169:                             # %if.end.506
	jmp	.LBB11_236
.LBB11_170:                             # %if.else.507
	movabsq	$.L.str.22, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB11_214
# BB#171:                               # %if.then.510
	movq	-40(%rbp), %rax
	cmpl	$5, 96(%rax)
	jl	.LBB11_212
# BB#172:                               # %lor.lhs.false.514
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -440(%rbp)
	callq	gimp_param_int32_get_type
	movq	%rax, -448(%rbp)
	cmpq	$0, -440(%rbp)
	jne	.LBB11_174
# BB#173:                               # %if.then.525
	movl	$0, -452(%rbp)
	jmp	.LBB11_179
.LBB11_174:                             # %if.else.526
	movq	-440(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_177
# BB#175:                               # %land.lhs.true.529
	movq	-440(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-448(%rbp), %rax
	jne	.LBB11_177
# BB#176:                               # %if.then.534
	movl	$1, -452(%rbp)
	jmp	.LBB11_178
.LBB11_177:                             # %if.else.535
	movq	-440(%rbp), %rdi
	movq	-448(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -452(%rbp)
.LBB11_178:                             # %if.end.537
	jmp	.LBB11_179
.LBB11_179:                             # %if.end.538
	movl	-452(%rbp), %eax
	movl	%eax, -456(%rbp)
	cmpl	$0, -456(%rbp)
	je	.LBB11_212
# BB#180:                               # %lor.lhs.false.541
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -464(%rbp)
	callq	gimp_param_image_id_get_type
	movq	%rax, -472(%rbp)
	cmpq	$0, -464(%rbp)
	jne	.LBB11_182
# BB#181:                               # %if.then.552
	movl	$0, -476(%rbp)
	jmp	.LBB11_187
.LBB11_182:                             # %if.else.553
	movq	-464(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_185
# BB#183:                               # %land.lhs.true.556
	movq	-464(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-472(%rbp), %rax
	jne	.LBB11_185
# BB#184:                               # %if.then.561
	movl	$1, -476(%rbp)
	jmp	.LBB11_186
.LBB11_185:                             # %if.else.562
	movq	-464(%rbp), %rdi
	movq	-472(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -476(%rbp)
.LBB11_186:                             # %if.end.564
	jmp	.LBB11_187
.LBB11_187:                             # %if.end.565
	movl	-476(%rbp), %eax
	movl	%eax, -480(%rbp)
	cmpl	$0, -480(%rbp)
	je	.LBB11_212
# BB#188:                               # %lor.lhs.false.568
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -488(%rbp)
	callq	gimp_param_drawable_id_get_type
	movq	%rax, -496(%rbp)
	cmpq	$0, -488(%rbp)
	jne	.LBB11_190
# BB#189:                               # %if.then.579
	movl	$0, -500(%rbp)
	jmp	.LBB11_195
.LBB11_190:                             # %if.else.580
	movq	-488(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_193
# BB#191:                               # %land.lhs.true.583
	movq	-488(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-496(%rbp), %rax
	jne	.LBB11_193
# BB#192:                               # %if.then.588
	movl	$1, -500(%rbp)
	jmp	.LBB11_194
.LBB11_193:                             # %if.else.589
	movq	-488(%rbp), %rdi
	movq	-496(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -500(%rbp)
.LBB11_194:                             # %if.end.591
	jmp	.LBB11_195
.LBB11_195:                             # %if.end.592
	movl	-500(%rbp), %eax
	movl	%eax, -504(%rbp)
	cmpl	$0, -504(%rbp)
	je	.LBB11_212
# BB#196:                               # %lor.lhs.false.595
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -512(%rbp)
	movq	g_param_spec_types, %rax
	movq	112(%rax), %rax
	movq	%rax, -520(%rbp)
	cmpq	$0, -512(%rbp)
	jne	.LBB11_198
# BB#197:                               # %if.then.606
	movl	$0, -524(%rbp)
	jmp	.LBB11_203
.LBB11_198:                             # %if.else.607
	movq	-512(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_201
# BB#199:                               # %land.lhs.true.610
	movq	-512(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-520(%rbp), %rax
	jne	.LBB11_201
# BB#200:                               # %if.then.615
	movl	$1, -524(%rbp)
	jmp	.LBB11_202
.LBB11_201:                             # %if.else.616
	movq	-512(%rbp), %rdi
	movq	-520(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -524(%rbp)
.LBB11_202:                             # %if.end.618
	jmp	.LBB11_203
.LBB11_203:                             # %if.end.619
	movl	-524(%rbp), %eax
	movl	%eax, -528(%rbp)
	cmpl	$0, -528(%rbp)
	je	.LBB11_212
# BB#204:                               # %lor.lhs.false.622
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -536(%rbp)
	movq	g_param_spec_types, %rax
	movq	112(%rax), %rax
	movq	%rax, -544(%rbp)
	cmpq	$0, -536(%rbp)
	jne	.LBB11_206
# BB#205:                               # %if.then.633
	movl	$0, -548(%rbp)
	jmp	.LBB11_211
.LBB11_206:                             # %if.else.634
	movq	-536(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_209
# BB#207:                               # %land.lhs.true.637
	movq	-536(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-544(%rbp), %rax
	jne	.LBB11_209
# BB#208:                               # %if.then.642
	movl	$1, -548(%rbp)
	jmp	.LBB11_210
.LBB11_209:                             # %if.else.643
	movq	-536(%rbp), %rdi
	movq	-544(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -548(%rbp)
.LBB11_210:                             # %if.end.645
	jmp	.LBB11_211
.LBB11_211:                             # %if.end.646
	movl	-548(%rbp), %eax
	movl	%eax, -552(%rbp)
	cmpl	$0, -552(%rbp)
	jne	.LBB11_213
.LBB11_212:                             # %if.then.649
	movabsq	$.L.str.23, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB11_242
.LBB11_213:                             # %if.end.650
	jmp	.LBB11_235
.LBB11_214:                             # %if.else.651
	movabsq	$.L.str.24, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	jne	.LBB11_222
# BB#215:                               # %lor.lhs.false.654
	movabsq	$.L.str.25, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	jne	.LBB11_222
# BB#216:                               # %lor.lhs.false.657
	movabsq	$.L.str.26, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	jne	.LBB11_222
# BB#217:                               # %lor.lhs.false.660
	movabsq	$.L.str.27, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	jne	.LBB11_222
# BB#218:                               # %lor.lhs.false.663
	movabsq	$.L.str.28, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	jne	.LBB11_222
# BB#219:                               # %lor.lhs.false.666
	movabsq	$.L.str.29, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	jne	.LBB11_222
# BB#220:                               # %lor.lhs.false.669
	movabsq	$.L.str.30, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	jne	.LBB11_222
# BB#221:                               # %lor.lhs.false.672
	movabsq	$.L.str.31, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB11_233
.LBB11_222:                             # %if.then.675
	movq	-40(%rbp), %rax
	cmpl	$1, 96(%rax)
	jl	.LBB11_231
# BB#223:                               # %lor.lhs.false.679
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -560(%rbp)
	callq	gimp_param_int32_get_type
	movq	%rax, -568(%rbp)
	cmpq	$0, -560(%rbp)
	jne	.LBB11_225
# BB#224:                               # %if.then.690
	movl	$0, -572(%rbp)
	jmp	.LBB11_230
.LBB11_225:                             # %if.else.691
	movq	-560(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_228
# BB#226:                               # %land.lhs.true.694
	movq	-560(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-568(%rbp), %rax
	jne	.LBB11_228
# BB#227:                               # %if.then.699
	movl	$1, -572(%rbp)
	jmp	.LBB11_229
.LBB11_228:                             # %if.else.700
	movq	-560(%rbp), %rdi
	movq	-568(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -572(%rbp)
.LBB11_229:                             # %if.end.702
	jmp	.LBB11_230
.LBB11_230:                             # %if.end.703
	movl	-572(%rbp), %eax
	movl	%eax, -576(%rbp)
	cmpl	$0, -576(%rbp)
	jne	.LBB11_232
.LBB11_231:                             # %if.then.706
	movabsq	$.L.str.10, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB11_242
.LBB11_232:                             # %if.end.707
	jmp	.LBB11_234
.LBB11_233:                             # %if.else.708
	movq	-16(%rbp), %rax
	movq	136(%rax), %rdi
	callq	g_filename_display_basename
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -672(%rbp)        # 8-byte Spill
	callq	gimp_plug_in_error_quark
	movq	-48(%rbp), %r8
	movq	-16(%rbp), %rdi
	movq	136(%rdi), %rdi
	movl	%eax, -676(%rbp)        # 4-byte Spill
	movq	%r8, -688(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-16(%rbp), %rdi
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	xorl	%edx, %edx
	movabsq	$.L.str.32, %rcx
	movq	-24(%rbp), %rdi
	movq	-672(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -704(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	-676(%rbp), %esi        # 4-byte Reload
	movq	-688(%rbp), %r8         # 8-byte Reload
	movq	-696(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-704(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB11_242
.LBB11_234:                             # %if.end.715
	jmp	.LBB11_235
.LBB11_235:                             # %if.end.716
	jmp	.LBB11_236
.LBB11_236:                             # %if.end.717
	jmp	.LBB11_237
.LBB11_237:                             # %if.end.718
	jmp	.LBB11_238
.LBB11_238:                             # %if.end.719
	jmp	.LBB11_239
.LBB11_239:                             # %if.end.720
	jmp	.LBB11_240
.LBB11_240:                             # %if.end.721
	jmp	.LBB11_241
.LBB11_241:                             # %if.end.722
	movq	-48(%rbp), %rdi
	callq	g_free
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	plug_in_menu_path_map
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	160(%rax), %rdi
	movq	-72(%rbp), %rsi
	callq	g_list_append
	xorl	%edx, %edx
	movq	-16(%rbp), %rsi
	movq	%rax, 160(%rsi)
	movq	-16(%rbp), %rax
	movl	gimp_plug_in_procedure_signals, %esi
	movq	-72(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movl	$1, -4(%rbp)
	jmp	.LBB11_245
.LBB11_242:                             # %failure
	cmpq	$0, -56(%rbp)
	je	.LBB11_244
# BB#243:                               # %if.then.727
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movl	$62, %esi
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rdi
	callq	strchr
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	136(%rax), %rdi
	callq	g_filename_display_basename
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -712(%rbp)        # 8-byte Spill
	callq	gimp_plug_in_error_quark
	movq	-48(%rbp), %r8
	movq	-16(%rbp), %rdi
	movq	136(%rdi), %rdi
	movl	%eax, -716(%rbp)        # 4-byte Spill
	movq	%r8, -728(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-584(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	%rdi, -736(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	xorl	%edx, %edx
	movabsq	$.L.str.33, %rcx
	movq	-584(%rbp), %rdi
	movq	-56(%rbp), %r8
	movq	-712(%rbp), %r9         # 8-byte Reload
	movq	%rdi, -752(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	-716(%rbp), %esi        # 4-byte Reload
	movq	-728(%rbp), %r10        # 8-byte Reload
	movq	%r8, -760(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	-744(%rbp), %r9         # 8-byte Reload
	movq	-736(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	%rax, 8(%rsp)
	movq	-752(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	-760(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_set_error
	movq	-584(%rbp), %rdi
	callq	g_free
.LBB11_244:                             # %if.end.737
	movq	-48(%rbp), %rdi
	callq	g_free
	movl	$0, -4(%rbp)
.LBB11_245:                             # %return
	movl	-4(%rbp), %eax
	addq	$800, %rsp              # imm = 0x320
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_plug_in_procedure_add_menu_path, .Lfunc_end11-gimp_plug_in_procedure_add_menu_path
	.cfi_endproc

	.globl	gimp_plug_in_procedure_get_label
	.align	16, 0x90
	.type	gimp_plug_in_procedure_get_label,@function
gimp_plug_in_procedure_get_label:       # @gimp_plug_in_procedure_get_label
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_plug_in_procedure_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_procedure_get_label, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_29
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB12_14
# BB#13:                                # %if.then.13
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB12_29
.LBB12_14:                              # %if.end.15
	movq	-16(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB12_16
# BB#15:                                # %if.then.17
	movq	-16(%rbp), %rdi
	callq	gimp_plug_in_procedure_get_locale_domain
	movq	-16(%rbp), %rdi
	movq	152(%rdi), %rsi
	movq	%rax, %rdi
	callq	dgettext
	movq	%rax, -24(%rbp)
	jmp	.LBB12_20
.LBB12_16:                              # %if.else.21
	movq	-16(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB12_18
# BB#17:                                # %if.then.23
	movq	-16(%rbp), %rdi
	callq	gimp_plug_in_procedure_get_locale_domain
	movq	-16(%rbp), %rdi
	movq	160(%rdi), %rdi
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	callq	dgettext
	movq	%rax, -24(%rbp)
	jmp	.LBB12_19
.LBB12_18:                              # %if.else.27
	movq	$0, -8(%rbp)
	jmp	.LBB12_29
.LBB12_19:                              # %if.end.28
	jmp	.LBB12_20
.LBB12_20:                              # %if.end.29
	movq	-24(%rbp), %rdi
	callq	gimp_strip_uline
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB12_22
# BB#21:                                # %if.then.33
	movq	-32(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -48(%rbp)
	jmp	.LBB12_23
.LBB12_22:                              # %if.else.35
	movq	-32(%rbp), %rdi
	callq	g_path_get_basename
	movq	%rax, -48(%rbp)
.LBB12_23:                              # %if.end.37
	movq	-32(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.34, %rsi
	movq	-48(%rbp), %rdi
	callq	strstr
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB12_25
# BB#24:                                # %if.then.40
	movabsq	$.L.str.35, %rsi
	movq	-48(%rbp), %rdi
	callq	strstr
	movq	%rax, -40(%rbp)
.LBB12_25:                              # %if.end.42
	cmpq	$0, -40(%rbp)
	je	.LBB12_28
# BB#26:                                # %land.lhs.true.44
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	-48(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-88(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	addq	$-3, %rcx
	movq	-80(%rbp), %rax         # 8-byte Reload
	cmpq	%rcx, %rax
	jne	.LBB12_28
# BB#27:                                # %if.then.48
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
.LBB12_28:                              # %if.end.49
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 168(%rcx)
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB12_29:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_plug_in_procedure_get_label, .Lfunc_end12-gimp_plug_in_procedure_get_label
	.cfi_endproc

	.globl	gimp_plug_in_procedure_get_blurb
	.align	16, 0x90
	.type	gimp_plug_in_procedure_get_blurb,@function
gimp_plug_in_procedure_get_blurb:       # @gimp_plug_in_procedure_get_blurb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_plug_in_procedure_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_procedure_get_blurb, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_16
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB13_15
# BB#13:                                # %land.lhs.true.14
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB13_15
# BB#14:                                # %if.then.18
	movq	-16(%rbp), %rdi
	callq	gimp_plug_in_procedure_get_locale_domain
	movq	-24(%rbp), %rdi
	movq	48(%rdi), %rsi
	movq	%rax, %rdi
	callq	dgettext
	movq	%rax, -8(%rbp)
	jmp	.LBB13_16
.LBB13_15:                              # %if.end.22
	movq	$0, -8(%rbp)
.LBB13_16:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_plug_in_procedure_get_blurb, .Lfunc_end13-gimp_plug_in_procedure_get_blurb
	.cfi_endproc

	.globl	gimp_plug_in_procedure_set_icon
	.align	16, 0x90
	.type	gimp_plug_in_procedure_set_icon,@function
gimp_plug_in_procedure_set_icon:        # @gimp_plug_in_procedure_set_icon
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_plug_in_procedure_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_procedure_set_icon, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_29
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	jmp	.LBB14_13
.LBB14_13:                              # %do.body.11
	cmpl	$-1, -12(%rbp)
	je	.LBB14_15
# BB#14:                                # %lor.lhs.false
	cmpq	$0, -24(%rbp)
	je	.LBB14_16
.LBB14_15:                              # %if.then.14
	jmp	.LBB14_17
.LBB14_16:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_procedure_set_icon, %rsi
	movabsq	$.L.str.36, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_29
.LBB14_17:                              # %if.end.16
	jmp	.LBB14_18
.LBB14_18:                              # %do.end.17
	jmp	.LBB14_19
.LBB14_19:                              # %do.body.18
	cmpl	$-1, -12(%rbp)
	je	.LBB14_21
# BB#20:                                # %lor.lhs.false.20
	cmpl	$0, -28(%rbp)
	jle	.LBB14_22
.LBB14_21:                              # %if.then.22
	jmp	.LBB14_23
.LBB14_22:                              # %if.else.23
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_procedure_set_icon, %rsi
	movabsq	$.L.str.37, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_29
.LBB14_23:                              # %if.end.24
	jmp	.LBB14_24
.LBB14_24:                              # %do.end.25
	movq	-8(%rbp), %rax
	cmpq	$0, 184(%rax)
	je	.LBB14_26
# BB#25:                                # %if.then.28
	movq	-8(%rbp), %rax
	movq	184(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movl	$-1, 180(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 184(%rax)
.LBB14_26:                              # %if.end.32
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 176(%rcx)
	movq	-8(%rbp), %rcx
	movl	176(%rcx), %eax
	testl	%eax, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB14_27
	jmp	.LBB14_30
.LBB14_30:                              # %if.end.32
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB14_28
	jmp	.LBB14_31
.LBB14_31:                              # %if.end.32
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jne	.LBB14_29
	jmp	.LBB14_27
.LBB14_27:                              # %sw.bb
	movq	-8(%rbp), %rax
	movl	$-1, 180(%rax)
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 184(%rdi)
	jmp	.LBB14_29
.LBB14_28:                              # %sw.bb.38
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 180(%rcx)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	g_memdup
	movq	-8(%rbp), %rcx
	movq	%rax, 184(%rcx)
.LBB14_29:                              # %sw.epilog
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_plug_in_procedure_set_icon, .Lfunc_end14-gimp_plug_in_procedure_set_icon
	.cfi_endproc

	.globl	gimp_plug_in_procedure_get_stock_id
	.align	16, 0x90
	.type	gimp_plug_in_procedure_get_stock_id,@function
gimp_plug_in_procedure_get_stock_id:    # @gimp_plug_in_procedure_get_stock_id
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_plug_in_procedure_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_procedure_get_stock_id, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB15_15
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	176(%rax), %ecx
	testl	%ecx, %ecx
	jne	.LBB15_14
	jmp	.LBB15_13
.LBB15_13:                              # %sw.bb
	movq	-16(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_15
.LBB15_14:                              # %sw.default
	movq	$0, -8(%rbp)
.LBB15_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_plug_in_procedure_get_stock_id, .Lfunc_end15-gimp_plug_in_procedure_get_stock_id
	.cfi_endproc

	.globl	gimp_plug_in_procedure_get_pixbuf
	.align	16, 0x90
	.type	gimp_plug_in_procedure_get_pixbuf,@function
gimp_plug_in_procedure_get_pixbuf:      # @gimp_plug_in_procedure_get_pixbuf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_plug_in_procedure_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_procedure_get_pixbuf, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_20
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	176(%rax), %ecx
	movl	%ecx, %edx
	subl	$1, %edx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movl	%edx, -64(%rbp)         # 4-byte Spill
	je	.LBB16_13
	jmp	.LBB16_21
.LBB16_21:                              # %do.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB16_14
	jmp	.LBB16_15
.LBB16_13:                              # %sw.bb
	movl	$1, %edx
	leaq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	180(%rax), %edi
	movq	-16(%rbp), %rax
	movq	184(%rax), %rsi
	callq	gdk_pixbuf_new_from_inline
	movq	%rax, -24(%rbp)
	jmp	.LBB16_16
.LBB16_14:                              # %sw.bb.12
	leaq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	184(%rax), %rdi
	callq	gdk_pixbuf_new_from_file
	movq	%rax, -24(%rbp)
	jmp	.LBB16_16
.LBB16_15:                              # %sw.default
	jmp	.LBB16_16
.LBB16_16:                              # %sw.epilog
	cmpq	$0, -24(%rbp)
	jne	.LBB16_19
# BB#17:                                # %land.lhs.true.16
	cmpq	$0, -32(%rbp)
	je	.LBB16_19
# BB#18:                                # %if.then.18
	movabsq	$.L.str.38, %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_printerr
	leaq	-32(%rbp), %rdi
	callq	g_clear_error
.LBB16_19:                              # %if.end.19
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB16_20:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_plug_in_procedure_get_pixbuf, .Lfunc_end16-gimp_plug_in_procedure_get_pixbuf
	.cfi_endproc

	.globl	gimp_plug_in_procedure_get_help_id
	.align	16, 0x90
	.type	gimp_plug_in_procedure_get_help_id,@function
gimp_plug_in_procedure_get_help_id:     # @gimp_plug_in_procedure_get_help_id
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_plug_in_procedure_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_procedure_get_help_id, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB17_15
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_plug_in_procedure_get_help_domain
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB17_14
# BB#13:                                # %if.then.13
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movabsq	$.L.str.39, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -8(%rbp)
	jmp	.LBB17_15
.LBB17_14:                              # %if.end.16
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
.LBB17_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_plug_in_procedure_get_help_id, .Lfunc_end17-gimp_plug_in_procedure_get_help_id
	.cfi_endproc

	.globl	gimp_plug_in_procedure_get_sensitive
	.align	16, 0x90
	.type	gimp_plug_in_procedure_get_sensitive,@function
gimp_plug_in_procedure_get_sensitive:   # @gimp_plug_in_procedure_get_sensitive
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$-1, -28(%rbp)
	movl	$0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_plug_in_procedure_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_procedure_get_sensitive, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB18_36
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	jmp	.LBB18_13
.LBB18_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB18_22
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB18_16
# BB#15:                                # %if.then.21
	movl	$0, -76(%rbp)
	jmp	.LBB18_21
.LBB18_16:                              # %if.else.22
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_19
# BB#17:                                # %land.lhs.true.25
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB18_19
# BB#18:                                # %if.then.29
	movl	$1, -76(%rbp)
	jmp	.LBB18_20
.LBB18_19:                              # %if.else.30
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB18_20:                              # %if.end.32
	jmp	.LBB18_21
.LBB18_21:                              # %if.end.33
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB18_23
.LBB18_22:                              # %if.then.36
	jmp	.LBB18_24
.LBB18_23:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_procedure_get_sensitive, %rsi
	movabsq	$.L.str.40, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB18_36
.LBB18_24:                              # %if.end.38
	jmp	.LBB18_25
.LBB18_25:                              # %do.end.39
	cmpq	$0, -24(%rbp)
	je	.LBB18_27
# BB#26:                                # %if.then.41
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_type
	movl	%eax, -28(%rbp)
.LBB18_27:                              # %if.end.43
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$5, %rdx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	ja	.LBB18_34
# BB#37:                                # %if.end.43
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	.LJTI18_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB18_28:                              # %sw.bb
	movq	-16(%rbp), %rax
	movl	200(%rax), %ecx
	andl	$1, %ecx
	movl	%ecx, -32(%rbp)
	jmp	.LBB18_35
.LBB18_29:                              # %sw.bb.44
	movq	-16(%rbp), %rax
	movl	200(%rax), %ecx
	andl	$8, %ecx
	movl	%ecx, -32(%rbp)
	jmp	.LBB18_35
.LBB18_30:                              # %sw.bb.47
	movq	-16(%rbp), %rax
	movl	200(%rax), %ecx
	andl	$2, %ecx
	movl	%ecx, -32(%rbp)
	jmp	.LBB18_35
.LBB18_31:                              # %sw.bb.50
	movq	-16(%rbp), %rax
	movl	200(%rax), %ecx
	andl	$16, %ecx
	movl	%ecx, -32(%rbp)
	jmp	.LBB18_35
.LBB18_32:                              # %sw.bb.53
	movq	-16(%rbp), %rax
	movl	200(%rax), %ecx
	andl	$4, %ecx
	movl	%ecx, -32(%rbp)
	jmp	.LBB18_35
.LBB18_33:                              # %sw.bb.56
	movq	-16(%rbp), %rax
	movl	200(%rax), %ecx
	andl	$32, %ecx
	movl	%ecx, -32(%rbp)
	jmp	.LBB18_35
.LBB18_34:                              # %sw.default
	jmp	.LBB18_35
.LBB18_35:                              # %sw.epilog
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -32(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, -4(%rbp)
.LBB18_36:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_plug_in_procedure_get_sensitive, .Lfunc_end18-gimp_plug_in_procedure_get_sensitive
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI18_0:
	.quad	.LBB18_28
	.quad	.LBB18_29
	.quad	.LBB18_30
	.quad	.LBB18_31
	.quad	.LBB18_32
	.quad	.LBB18_33

	.text
	.globl	gimp_plug_in_procedure_set_image_types
	.align	16, 0x90
	.type	gimp_plug_in_procedure_set_image_types,@function
gimp_plug_in_procedure_set_image_types: # @gimp_plug_in_procedure_set_image_types
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_plug_in_procedure_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_procedure_set_image_types, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_15
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB19_14
# BB#13:                                # %if.then.13
	movq	-8(%rbp), %rax
	movq	192(%rax), %rdi
	callq	g_free
.LBB19_14:                              # %if.end.15
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 192(%rdi)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-8(%rbp), %rdi
	movq	192(%rdi), %rsi
	movq	%rax, %rdi
	callq	image_types_parse
	movq	-8(%rbp), %rsi
	movl	%eax, 200(%rsi)
.LBB19_15:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_plug_in_procedure_set_image_types, .Lfunc_end19-gimp_plug_in_procedure_set_image_types
	.cfi_endproc

	.align	16, 0x90
	.type	image_types_parse,@function
image_types_parse:                      # @image_types_parse
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movl	$0, -36(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB20_2
# BB#1:                                 # %if.then
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB20_54
.LBB20_2:                               # %if.end
	jmp	.LBB20_3
.LBB20_3:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_5 Depth 2
                                        #     Child Loop BB20_34 Depth 2
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB20_53
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_5
.LBB20_5:                               # %while.cond.2
                                        #   Parent Loop BB20_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -37(%rbp)          # 1-byte Spill
	je	.LBB20_10
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB20_5 Depth=2
	movb	$1, %al
	movq	-24(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	$32, %edx
	movb	%al, -38(%rbp)          # 1-byte Spill
	je	.LBB20_9
# BB#7:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB20_5 Depth=2
	movb	$1, %al
	movq	-24(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	$9, %edx
	movb	%al, -38(%rbp)          # 1-byte Spill
	je	.LBB20_9
# BB#8:                                 # %lor.rhs
                                        #   in Loop: Header=BB20_5 Depth=2
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$44, %ecx
	sete	%dl
	movb	%dl, -38(%rbp)          # 1-byte Spill
.LBB20_9:                               # %lor.end
                                        #   in Loop: Header=BB20_5 Depth=2
	movb	-38(%rbp), %al          # 1-byte Reload
	movb	%al, -37(%rbp)          # 1-byte Spill
.LBB20_10:                              # %land.end
                                        #   in Loop: Header=BB20_5 Depth=2
	movb	-37(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB20_11
	jmp	.LBB20_12
.LBB20_11:                              # %while.body.12
                                        #   in Loop: Header=BB20_5 Depth=2
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB20_5
.LBB20_12:                              # %while.end
                                        #   in Loop: Header=BB20_3 Depth=1
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB20_52
# BB#13:                                # %if.then.14
                                        #   in Loop: Header=BB20_3 Depth=1
	movabsq	$.L.str.46, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB20_15
# BB#14:                                # %if.then.16
                                        #   in Loop: Header=BB20_3 Depth=1
	movl	-36(%rbp), %eax
	orl	$8, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB20_51
.LBB20_15:                              # %if.else
                                        #   in Loop: Header=BB20_3 Depth=1
	movabsq	$.L.str.47, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB20_17
# BB#16:                                # %if.then.19
                                        #   in Loop: Header=BB20_3 Depth=1
	movl	-36(%rbp), %eax
	orl	$9, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB20_50
.LBB20_17:                              # %if.else.22
                                        #   in Loop: Header=BB20_3 Depth=1
	movabsq	$.L.str.48, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB20_19
# BB#18:                                # %if.then.25
                                        #   in Loop: Header=BB20_3 Depth=1
	movl	-36(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB20_49
.LBB20_19:                              # %if.else.28
                                        #   in Loop: Header=BB20_3 Depth=1
	movabsq	$.L.str.49, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB20_21
# BB#20:                                # %if.then.31
                                        #   in Loop: Header=BB20_3 Depth=1
	movl	-36(%rbp), %eax
	orl	$16, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rcx
	addq	$5, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB20_48
.LBB20_21:                              # %if.else.34
                                        #   in Loop: Header=BB20_3 Depth=1
	movabsq	$.L.str.50, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB20_23
# BB#22:                                # %if.then.37
                                        #   in Loop: Header=BB20_3 Depth=1
	movl	-36(%rbp), %eax
	orl	$18, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rcx
	addq	$5, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB20_47
.LBB20_23:                              # %if.else.40
                                        #   in Loop: Header=BB20_3 Depth=1
	movabsq	$.L.str.51, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB20_25
# BB#24:                                # %if.then.43
                                        #   in Loop: Header=BB20_3 Depth=1
	movl	-36(%rbp), %eax
	orl	$2, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB20_46
.LBB20_25:                              # %if.else.46
                                        #   in Loop: Header=BB20_3 Depth=1
	movabsq	$.L.str.52, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB20_27
# BB#26:                                # %if.then.49
                                        #   in Loop: Header=BB20_3 Depth=1
	movl	-36(%rbp), %eax
	orl	$32, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB20_45
.LBB20_27:                              # %if.else.52
                                        #   in Loop: Header=BB20_3 Depth=1
	movabsq	$.L.str.53, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB20_29
# BB#28:                                # %if.then.55
                                        #   in Loop: Header=BB20_3 Depth=1
	movl	-36(%rbp), %eax
	orl	$36, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB20_44
.LBB20_29:                              # %if.else.58
                                        #   in Loop: Header=BB20_3 Depth=1
	movabsq	$.L.str.54, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB20_31
# BB#30:                                # %if.then.61
                                        #   in Loop: Header=BB20_3 Depth=1
	movl	-36(%rbp), %eax
	orl	$4, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rcx
	addq	$7, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB20_43
.LBB20_31:                              # %if.else.64
                                        #   in Loop: Header=BB20_3 Depth=1
	movabsq	$.L.str.55, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB20_33
# BB#32:                                # %if.then.67
                                        #   in Loop: Header=BB20_3 Depth=1
	movl	-36(%rbp), %eax
	orl	$63, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB20_42
.LBB20_33:                              # %if.else.70
                                        #   in Loop: Header=BB20_3 Depth=1
	movabsq	$.L.str.56, %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movb	$0, %al
	callq	g_printerr
.LBB20_34:                              # %while.cond.71
                                        #   Parent Loop BB20_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -39(%rbp)          # 1-byte Spill
	je	.LBB20_39
# BB#35:                                # %land.rhs.74
                                        #   in Loop: Header=BB20_34 Depth=2
	movb	$1, %al
	movq	-24(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	$32, %edx
	movb	%al, -40(%rbp)          # 1-byte Spill
	jne	.LBB20_38
# BB#36:                                # %lor.lhs.false.78
                                        #   in Loop: Header=BB20_34 Depth=2
	movb	$1, %al
	movq	-24(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	$9, %edx
	movb	%al, -40(%rbp)          # 1-byte Spill
	jne	.LBB20_38
# BB#37:                                # %lor.rhs.82
                                        #   in Loop: Header=BB20_34 Depth=2
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$44, %ecx
	setne	%dl
	movb	%dl, -40(%rbp)          # 1-byte Spill
.LBB20_38:                              # %lor.end.86
                                        #   in Loop: Header=BB20_34 Depth=2
	movb	-40(%rbp), %al          # 1-byte Reload
	movb	%al, -39(%rbp)          # 1-byte Spill
.LBB20_39:                              # %land.end.87
                                        #   in Loop: Header=BB20_34 Depth=2
	movb	-39(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB20_40
	jmp	.LBB20_41
.LBB20_40:                              # %while.body.88
                                        #   in Loop: Header=BB20_34 Depth=2
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB20_34
.LBB20_41:                              # %while.end.90
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_42
.LBB20_42:                              # %if.end.91
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_43
.LBB20_43:                              # %if.end.92
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_44
.LBB20_44:                              # %if.end.93
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_45
.LBB20_45:                              # %if.end.94
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_46
.LBB20_46:                              # %if.end.95
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_47
.LBB20_47:                              # %if.end.96
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_48
.LBB20_48:                              # %if.end.97
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_49
.LBB20_49:                              # %if.end.98
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_50
.LBB20_50:                              # %if.end.99
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_51
.LBB20_51:                              # %if.end.100
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_52
.LBB20_52:                              # %if.end.101
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_3
.LBB20_53:                              # %while.end.102
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB20_54:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	image_types_parse, .Lfunc_end20-image_types_parse
	.cfi_endproc

	.globl	gimp_plug_in_procedure_set_file_proc
	.align	16, 0x90
	.type	gimp_plug_in_procedure_set_file_proc,@function
gimp_plug_in_procedure_set_file_proc:   # @gimp_plug_in_procedure_set_file_proc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_plug_in_procedure_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_procedure_set_file_proc, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_41
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	movq	-8(%rbp), %rax
	movl	$1, 220(%rax)
	movq	-8(%rbp), %rax
	movq	224(%rax), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB21_16
# BB#13:                                # %if.then.13
	movq	-8(%rbp), %rax
	cmpq	$0, 224(%rax)
	je	.LBB21_15
# BB#14:                                # %if.then.16
	movq	-8(%rbp), %rax
	movq	224(%rax), %rdi
	callq	g_free
.LBB21_15:                              # %if.end.18
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 224(%rdi)
.LBB21_16:                              # %if.end.21
	movq	-8(%rbp), %rax
	cmpq	$0, 256(%rax)
	je	.LBB21_18
# BB#17:                                # %if.then.23
	movabsq	$g_free, %rsi
	movq	-8(%rbp), %rax
	movq	256(%rax), %rdi
	callq	g_slist_free_full
.LBB21_18:                              # %if.end.25
	movq	-8(%rbp), %rax
	movq	224(%rax), %rdi
	callq	extensions_parse
	movq	-8(%rbp), %rdi
	movq	%rax, 256(%rdi)
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB21_22
# BB#19:                                # %if.then.31
	movq	-8(%rbp), %rax
	cmpq	$0, 232(%rax)
	je	.LBB21_21
# BB#20:                                # %if.then.34
	movq	-8(%rbp), %rax
	movq	232(%rax), %rdi
	callq	g_free
.LBB21_21:                              # %if.end.36
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 232(%rdi)
.LBB21_22:                              # %if.end.39
	movq	-8(%rbp), %rax
	cmpq	$0, 264(%rax)
	je	.LBB21_24
# BB#23:                                # %if.then.41
	movabsq	$g_free, %rsi
	movq	-8(%rbp), %rax
	movq	264(%rax), %rdi
	callq	g_slist_free_full
.LBB21_24:                              # %if.end.43
	movq	-8(%rbp), %rax
	movq	232(%rax), %rdi
	callq	extensions_parse
	movq	-8(%rbp), %rdi
	movq	%rax, 264(%rdi)
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB21_25:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB21_34
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB21_25 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB21_29
# BB#27:                                # %land.lhs.true.51
                                        #   in Loop: Header=BB21_25 Depth=1
	movq	-72(%rbp), %rdi
	movl	$.L.str.41, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB21_29
# BB#28:                                # %if.then.54
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	264(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	g_slist_delete_link
	movq	-8(%rbp), %rsi
	movq	%rax, 264(%rsi)
	jmp	.LBB21_34
.LBB21_29:                              # %if.end.59
                                        #   in Loop: Header=BB21_25 Depth=1
	jmp	.LBB21_30
.LBB21_30:                              # %for.inc
                                        #   in Loop: Header=BB21_25 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB21_32
# BB#31:                                # %cond.true
                                        #   in Loop: Header=BB21_25 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB21_33
.LBB21_32:                              # %cond.false
                                        #   in Loop: Header=BB21_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB21_33
.LBB21_33:                              # %cond.end
                                        #   in Loop: Header=BB21_25 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB21_25
.LBB21_34:                              # %for.end
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB21_38
# BB#35:                                # %if.then.63
	movq	-8(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB21_37
# BB#36:                                # %if.then.66
	movq	-8(%rbp), %rax
	movq	240(%rax), %rdi
	callq	g_free
.LBB21_37:                              # %if.end.68
	movq	-32(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 240(%rdi)
.LBB21_38:                              # %if.end.71
	movq	-8(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB21_40
# BB#39:                                # %if.then.73
	movabsq	$g_free, %rsi
	movq	-8(%rbp), %rax
	movq	272(%rax), %rdi
	callq	g_slist_free_full
.LBB21_40:                              # %if.end.75
	movq	-8(%rbp), %rax
	movq	240(%rax), %rdi
	callq	extensions_parse
	movq	-8(%rbp), %rdi
	movq	%rax, 272(%rdi)
.LBB21_41:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_plug_in_procedure_set_file_proc, .Lfunc_end21-gimp_plug_in_procedure_set_file_proc
	.cfi_endproc

	.align	16, 0x90
	.type	extensions_parse,@function
extensions_parse:                       # @extensions_parse
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB22_5
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	g_strdup
	movabsq	$.L.str.57, %rsi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	strtok
	movq	%rax, -24(%rbp)
.LBB22_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB22_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB22_2 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_strdup
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_slist_prepend
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.57, %rsi
	movq	%rax, -16(%rbp)
	callq	strtok
	movq	%rax, -24(%rbp)
	jmp	.LBB22_2
.LBB22_4:                               # %while.end
	movq	-8(%rbp), %rdi
	callq	g_free
.LBB22_5:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	g_slist_reverse
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	extensions_parse, .Lfunc_end22-extensions_parse
	.cfi_endproc

	.globl	gimp_plug_in_procedure_set_mime_type
	.align	16, 0x90
	.type	gimp_plug_in_procedure_set_mime_type,@function
gimp_plug_in_procedure_set_mime_type:   # @gimp_plug_in_procedure_set_mime_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_plug_in_procedure_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB23_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.8
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_procedure_set_mime_type, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_15
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 248(%rax)
	je	.LBB23_14
# BB#13:                                # %if.then.13
	movq	-8(%rbp), %rax
	movq	248(%rax), %rdi
	callq	g_free
.LBB23_14:                              # %if.end.15
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 248(%rdi)
.LBB23_15:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_plug_in_procedure_set_mime_type, .Lfunc_end23-gimp_plug_in_procedure_set_mime_type
	.cfi_endproc

	.globl	gimp_plug_in_procedure_set_thumb_loader
	.align	16, 0x90
	.type	gimp_plug_in_procedure_set_thumb_loader,@function
gimp_plug_in_procedure_set_thumb_loader: # @gimp_plug_in_procedure_set_thumb_loader
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_plug_in_procedure_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB24_8
.LBB24_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB24_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB24_7:                               # %if.end
	jmp	.LBB24_8
.LBB24_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.8
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_procedure_set_thumb_loader, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_15
.LBB24_11:                              # %if.end.10
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB24_14
# BB#13:                                # %if.then.13
	movq	-8(%rbp), %rax
	movq	280(%rax), %rdi
	callq	g_free
.LBB24_14:                              # %if.end.15
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 280(%rdi)
.LBB24_15:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_plug_in_procedure_set_thumb_loader, .Lfunc_end24-gimp_plug_in_procedure_set_thumb_loader
	.cfi_endproc

	.globl	gimp_plug_in_procedure_handle_return_values
	.align	16, 0x90
	.type	gimp_plug_in_procedure_handle_return_values,@function
gimp_plug_in_procedure_handle_return_values: # @gimp_plug_in_procedure_handle_return_values
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_plug_in_procedure_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB25_8
.LBB25_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB25_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB25_7:                               # %if.end
	jmp	.LBB25_8
.LBB25_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.8
	jmp	.LBB25_11
.LBB25_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_procedure_handle_return_values, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_42
.LBB25_11:                              # %if.end.10
	jmp	.LBB25_12
.LBB25_12:                              # %do.end
	jmp	.LBB25_13
.LBB25_13:                              # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB25_15
# BB#14:                                # %if.then.13
	jmp	.LBB25_16
.LBB25_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_procedure_handle_return_values, %rsi
	movabsq	$.L.str.42, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_42
.LBB25_16:                              # %if.end.15
	jmp	.LBB25_17
.LBB25_17:                              # %do.end.16
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jg	.LBB25_19
# BB#18:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_pdb_status_type_get_type
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB25_20
.LBB25_19:                              # %if.then.22
	jmp	.LBB25_42
.LBB25_20:                              # %if.end.23
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_value_get_enum
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	je	.LBB25_32
	jmp	.LBB25_43
.LBB25_43:                              # %if.end.23
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB25_22
	jmp	.LBB25_44
.LBB25_44:                              # %if.end.23
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jne	.LBB25_42
	jmp	.LBB25_21
.LBB25_21:                              # %sw.bb
	jmp	.LBB25_42
.LBB25_22:                              # %sw.bb.27
	movq	-32(%rbp), %rax
	cmpl	$1, (%rax)
	jbe	.LBB25_31
# BB#23:                                # %land.lhs.true.30
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, -64(%rbp)
	movq	$64, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB25_25
# BB#24:                                # %if.then.39
	movl	$0, -76(%rbp)
	jmp	.LBB25_29
.LBB25_25:                              # %if.else.40
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB25_27
# BB#26:                                # %if.then.43
	movl	$1, -76(%rbp)
	jmp	.LBB25_28
.LBB25_27:                              # %if.else.44
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -76(%rbp)
.LBB25_28:                              # %if.end.46
	jmp	.LBB25_29
.LBB25_29:                              # %if.end.47
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB25_31
# BB#30:                                # %if.then.50
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.43, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_plug_in_procedure_get_label
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_value_get_string
	movl	$2, %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	gimp_message
.LBB25_31:                              # %if.end.57
	jmp	.LBB25_42
.LBB25_32:                              # %sw.bb.58
	movq	-32(%rbp), %rax
	cmpl	$1, (%rax)
	jbe	.LBB25_41
# BB#33:                                # %land.lhs.true.61
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, -88(%rbp)
	movq	$64, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB25_35
# BB#34:                                # %if.then.71
	movl	$0, -100(%rbp)
	jmp	.LBB25_39
.LBB25_35:                              # %if.else.72
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB25_37
# BB#36:                                # %if.then.75
	movl	$1, -100(%rbp)
	jmp	.LBB25_38
.LBB25_37:                              # %if.else.76
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -100(%rbp)
.LBB25_38:                              # %if.end.78
	jmp	.LBB25_39
.LBB25_39:                              # %if.end.79
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB25_41
# BB#40:                                # %if.then.82
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.44, %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_plug_in_procedure_get_label
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	g_value_get_string
	movl	$2, %edx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	-192(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	gimp_message
.LBB25_41:                              # %if.end.89
	jmp	.LBB25_42
.LBB25_42:                              # %sw.epilog
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_plug_in_procedure_handle_return_values, .Lfunc_end25-gimp_plug_in_procedure_handle_return_values
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_procedure_class_init,@function
gimp_plug_in_procedure_class_init:      # @gimp_plug_in_procedure_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$120, %rsp
.Ltmp81:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.45, %rdi
	movl	$1, %edx
	movl	$184, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__STRING, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movl	$64, %r8d
	movl	%r8d, %r11d
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$64, 24(%rsp)
	movb	$0, %al
	movq	%r11, -80(%rbp)         # 8-byte Spill
	movq	%r10, -88(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movabsq	$gimp_plug_in_procedure_real_get_progname, %rsi
	movabsq	$gimp_plug_in_procedure_execute_async, %rdi
	movabsq	$gimp_plug_in_procedure_execute, %r8
	movabsq	$gimp_plug_in_procedure_get_memsize, %r9
	movabsq	$gimp_plug_in_procedure_finalize, %r10
	movl	%eax, gimp_plug_in_procedure_signals
	movq	-24(%rbp), %r11
	movq	%r10, 48(%r11)
	movq	-32(%rbp), %r10
	movq	%r9, 152(%r10)
	movq	-40(%rbp), %r9
	movq	%r8, 160(%r9)
	movq	-40(%rbp), %r8
	movq	%rdi, 168(%r8)
	movq	-16(%rbp), %rdi
	movq	%rsi, 176(%rdi)
	movq	-16(%rbp), %rsi
	movq	$0, 184(%rsi)
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_plug_in_procedure_class_init, .Lfunc_end26-gimp_plug_in_procedure_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_procedure_finalize,@function
gimp_plug_in_procedure_finalize:        # @gimp_plug_in_procedure_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_procedure_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	136(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	152(%rax), %rdi
	callq	g_free
	movabsq	$g_free, %rsi
	movq	-16(%rbp), %rax
	movq	160(%rax), %rdi
	callq	g_list_free_full
	movq	-16(%rbp), %rax
	movq	168(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	184(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	192(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	224(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	232(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	240(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	248(%rax), %rdi
	callq	g_free
	movabsq	$g_free, %rsi
	movq	-16(%rbp), %rax
	movq	256(%rax), %rdi
	callq	g_slist_free_full
	movabsq	$g_free, %rsi
	movq	-16(%rbp), %rax
	movq	264(%rax), %rdi
	callq	g_slist_free_full
	movabsq	$g_free, %rsi
	movq	-16(%rbp), %rax
	movq	272(%rax), %rdi
	callq	g_slist_free_full
	movq	-16(%rbp), %rax
	movq	280(%rax), %rdi
	callq	g_free
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	gimp_plug_in_procedure_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_plug_in_procedure_finalize, .Lfunc_end27-gimp_plug_in_procedure_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_procedure_get_memsize,@function
gimp_plug_in_procedure_get_memsize:     # @gimp_plug_in_procedure_get_memsize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_procedure_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB28_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB28_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB28_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	$24, %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB28_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB28_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB28_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB28_6
.LBB28_5:                               # %cond.false
                                        #   in Loop: Header=BB28_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB28_6
.LBB28_6:                               # %cond.end
                                        #   in Loop: Header=BB28_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB28_1
.LBB28_7:                               # %for.end
	movq	-24(%rbp), %rax
	movl	176(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	je	.LBB28_8
	jmp	.LBB28_32
.LBB28_32:                              # %for.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB28_9
	jmp	.LBB28_33
.LBB28_33:                              # %for.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jne	.LBB28_10
	jmp	.LBB28_8
.LBB28_8:                               # %sw.bb
	movq	-24(%rbp), %rax
	movq	184(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB28_10
.LBB28_9:                               # %sw.bb.11
	movq	-24(%rbp), %rax
	movslq	180(%rax), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB28_10:                              # %sw.epilog
	movq	-24(%rbp), %rax
	movq	224(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	232(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	240(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	248(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	280(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB28_11:                              # %for.cond.23
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB28_17
# BB#12:                                # %for.body.25
                                        #   in Loop: Header=BB28_11 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	$16, %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
# BB#13:                                # %for.inc.30
                                        #   in Loop: Header=BB28_11 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB28_15
# BB#14:                                # %cond.true.32
                                        #   in Loop: Header=BB28_11 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB28_16
.LBB28_15:                              # %cond.false.34
                                        #   in Loop: Header=BB28_11 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB28_16
.LBB28_16:                              # %cond.end.35
                                        #   in Loop: Header=BB28_11 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB28_11
.LBB28_17:                              # %for.end.37
	movq	-24(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB28_18:                              # %for.cond.38
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB28_24
# BB#19:                                # %for.body.40
                                        #   in Loop: Header=BB28_18 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	$16, %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
# BB#20:                                # %for.inc.45
                                        #   in Loop: Header=BB28_18 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB28_22
# BB#21:                                # %cond.true.47
                                        #   in Loop: Header=BB28_18 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB28_23
.LBB28_22:                              # %cond.false.49
                                        #   in Loop: Header=BB28_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB28_23
.LBB28_23:                              # %cond.end.50
                                        #   in Loop: Header=BB28_18 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB28_18
.LBB28_24:                              # %for.end.52
	movq	-24(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB28_25:                              # %for.cond.53
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB28_31
# BB#26:                                # %for.body.55
                                        #   in Loop: Header=BB28_25 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	$16, %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
# BB#27:                                # %for.inc.60
                                        #   in Loop: Header=BB28_25 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB28_29
# BB#28:                                # %cond.true.62
                                        #   in Loop: Header=BB28_25 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB28_30
.LBB28_29:                              # %cond.false.64
                                        #   in Loop: Header=BB28_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB28_30
.LBB28_30:                              # %cond.end.65
                                        #   in Loop: Header=BB28_25 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB28_25
.LBB28_31:                              # %for.end.67
	movq	-32(%rbp), %rax
	movq	gimp_plug_in_procedure_parent_class, %rcx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-112(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_plug_in_procedure_get_memsize, .Lfunc_end28-gimp_plug_in_procedure_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_procedure_execute,@function
gimp_plug_in_procedure_execute:         # @gimp_plug_in_procedure_execute
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-16(%rbp), %rcx
	cmpl	$0, 32(%rcx)
	jne	.LBB29_2
# BB#1:                                 # %if.then
	movq	gimp_plug_in_procedure_parent_class, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	160(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	-56(%rbp), %r9
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB29_3
.LBB29_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	376(%rax), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_procedure_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-48(%rbp), %r8
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movq	%rax, %rcx
	movq	$0, (%rsp)
	callq	gimp_plug_in_manager_call_run
	movq	%rax, -8(%rbp)
.LBB29_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_plug_in_procedure_execute, .Lfunc_end29-gimp_plug_in_procedure_execute
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_procedure_execute_async,@function
gimp_plug_in_procedure_execute_async:   # @gimp_plug_in_procedure_execute_async
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp93:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_procedure_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	376(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	callq	gimp_plug_in_manager_call_run
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB30_2
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rcx
	callq	gimp_plug_in_procedure_handle_return_values
	movq	-64(%rbp), %rdi
	callq	g_value_array_free
.LBB30_2:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_plug_in_procedure_execute_async, .Lfunc_end30-gimp_plug_in_procedure_execute_async
	.cfi_endproc

	.type	gimp_plug_in_procedure_get_type.g_define_type_id__volatile,@object # @gimp_plug_in_procedure_get_type.g_define_type_id__volatile
	.local	gimp_plug_in_procedure_get_type.g_define_type_id__volatile
	.comm	gimp_plug_in_procedure_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpPlugInProcedure"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Plug-In"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_plug_in_procedure_new,@object # @__func__.gimp_plug_in_procedure_new
.L__func__.gimp_plug_in_procedure_new:
	.asciz	"gimp_plug_in_procedure_new"
	.size	.L__func__.gimp_plug_in_procedure_new, 27

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"proc_type == GIMP_PLUGIN || proc_type == GIMP_EXTENSION"
	.size	.L.str.2, 56

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"prog != NULL"
	.size	.L.str.3, 13

	.type	.L__func__.gimp_plug_in_procedure_get_progname,@object # @__func__.gimp_plug_in_procedure_get_progname
.L__func__.gimp_plug_in_procedure_get_progname:
	.asciz	"gimp_plug_in_procedure_get_progname"
	.size	.L__func__.gimp_plug_in_procedure_get_progname, 36

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_PLUG_IN_PROCEDURE (proc)"
	.size	.L.str.4, 33

	.type	.L__func__.gimp_plug_in_procedure_set_locale_domain,@object # @__func__.gimp_plug_in_procedure_set_locale_domain
.L__func__.gimp_plug_in_procedure_set_locale_domain:
	.asciz	"gimp_plug_in_procedure_set_locale_domain"
	.size	.L__func__.gimp_plug_in_procedure_set_locale_domain, 41

	.type	.L__func__.gimp_plug_in_procedure_get_locale_domain,@object # @__func__.gimp_plug_in_procedure_get_locale_domain
.L__func__.gimp_plug_in_procedure_get_locale_domain:
	.asciz	"gimp_plug_in_procedure_get_locale_domain"
	.size	.L__func__.gimp_plug_in_procedure_get_locale_domain, 41

	.type	.L__func__.gimp_plug_in_procedure_set_help_domain,@object # @__func__.gimp_plug_in_procedure_set_help_domain
.L__func__.gimp_plug_in_procedure_set_help_domain:
	.asciz	"gimp_plug_in_procedure_set_help_domain"
	.size	.L__func__.gimp_plug_in_procedure_set_help_domain, 39

	.type	.L__func__.gimp_plug_in_procedure_get_help_domain,@object # @__func__.gimp_plug_in_procedure_get_help_domain
.L__func__.gimp_plug_in_procedure_get_help_domain:
	.asciz	"gimp_plug_in_procedure_get_help_domain"
	.size	.L__func__.gimp_plug_in_procedure_get_help_domain, 39

	.type	.L__func__.gimp_plug_in_procedure_add_menu_path,@object # @__func__.gimp_plug_in_procedure_add_menu_path
.L__func__.gimp_plug_in_procedure_add_menu_path:
	.asciz	"gimp_plug_in_procedure_add_menu_path"
	.size	.L__func__.gimp_plug_in_procedure_add_menu_path, 37

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"menu_path != NULL"
	.size	.L.str.5, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.6, 32

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Plug-In \"%s\"\n(%s)\nattempted to install procedure \"%s\"\nin the invalid menu location \"%s\".\nThe menu path must look like either \"<Prefix>\" or \"<Prefix>/path/to/item\"."
	.size	.L.str.7, 164

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"<Toolbox>"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"<Image>"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"INT32"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"<Layers>"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"INT32, IMAGE, (LAYER | DRAWABLE)"
	.size	.L.str.12, 33

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"<Channels>"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"INT32, IMAGE, (CHANNEL | DRAWABLE)"
	.size	.L.str.14, 35

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"<Vectors>"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"INT32, IMAGE, VECTORS"
	.size	.L.str.16, 22

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"<Colormap>"
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"INT32, IMAGE"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"<Load>"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"INT32, STRING, STRING"
	.size	.L.str.20, 22

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"IMAGE"
	.size	.L.str.21, 6

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"<Save>"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"INT32, IMAGE, DRAWABLE, STRING, STRING"
	.size	.L.str.23, 39

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"<Brushes>"
	.size	.L.str.24, 10

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"<Dynamics>"
	.size	.L.str.25, 11

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"<Gradients>"
	.size	.L.str.26, 12

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"<Palettes>"
	.size	.L.str.27, 11

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"<Patterns>"
	.size	.L.str.28, 11

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"<ToolPresets>"
	.size	.L.str.29, 14

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"<Fonts>"
	.size	.L.str.30, 8

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"<Buffers>"
	.size	.L.str.31, 10

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Plug-In \"%s\"\n(%s)\nattempted to install procedure \"%s\" in the invalid menu location \"%s\".\nUse either \"<Image>\", \"<Layers>\", \"<Channels>\", \"<Vectors>\", \"<Colormap>\", \"<Brushes>\", \"<Dynamics>\", \"<Gradients>\", \"<Palettes>\", \"<Patterns>\", \"<ToolPresets>\", \"<Fonts>\" or \"<Buffers>\"."
	.size	.L.str.32, 277

	.type	gimp_plug_in_procedure_signals,@object # @gimp_plug_in_procedure_signals
	.local	gimp_plug_in_procedure_signals
	.comm	gimp_plug_in_procedure_signals,4,4
	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Plug-In \"%s\"\n(%s)\n\nattempted to install %s procedure \"%s\" which does not take the standard %s Plug-In arguments: (%s)."
	.size	.L.str.33, 119

	.type	.L__func__.gimp_plug_in_procedure_get_label,@object # @__func__.gimp_plug_in_procedure_get_label
.L__func__.gimp_plug_in_procedure_get_label:
	.asciz	"gimp_plug_in_procedure_get_label"
	.size	.L__func__.gimp_plug_in_procedure_get_label, 33

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"..."
	.size	.L.str.34, 4

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"\342\200\246"
	.size	.L.str.35, 4

	.type	.L__func__.gimp_plug_in_procedure_get_blurb,@object # @__func__.gimp_plug_in_procedure_get_blurb
.L__func__.gimp_plug_in_procedure_get_blurb:
	.asciz	"gimp_plug_in_procedure_get_blurb"
	.size	.L__func__.gimp_plug_in_procedure_get_blurb, 33

	.type	.L__func__.gimp_plug_in_procedure_set_icon,@object # @__func__.gimp_plug_in_procedure_set_icon
.L__func__.gimp_plug_in_procedure_set_icon:
	.asciz	"gimp_plug_in_procedure_set_icon"
	.size	.L__func__.gimp_plug_in_procedure_set_icon, 32

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"icon_type == -1 || icon_data != NULL"
	.size	.L.str.36, 37

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"icon_type == -1 || icon_data_length > 0"
	.size	.L.str.37, 40

	.type	.L__func__.gimp_plug_in_procedure_get_stock_id,@object # @__func__.gimp_plug_in_procedure_get_stock_id
.L__func__.gimp_plug_in_procedure_get_stock_id:
	.asciz	"gimp_plug_in_procedure_get_stock_id"
	.size	.L__func__.gimp_plug_in_procedure_get_stock_id, 36

	.type	.L__func__.gimp_plug_in_procedure_get_pixbuf,@object # @__func__.gimp_plug_in_procedure_get_pixbuf
.L__func__.gimp_plug_in_procedure_get_pixbuf:
	.asciz	"gimp_plug_in_procedure_get_pixbuf"
	.size	.L__func__.gimp_plug_in_procedure_get_pixbuf, 34

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"%s\n"
	.size	.L.str.38, 4

	.type	.L__func__.gimp_plug_in_procedure_get_help_id,@object # @__func__.gimp_plug_in_procedure_get_help_id
.L__func__.gimp_plug_in_procedure_get_help_id:
	.asciz	"gimp_plug_in_procedure_get_help_id"
	.size	.L__func__.gimp_plug_in_procedure_get_help_id, 35

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"?"
	.size	.L.str.39, 2

	.type	.L__func__.gimp_plug_in_procedure_get_sensitive,@object # @__func__.gimp_plug_in_procedure_get_sensitive
.L__func__.gimp_plug_in_procedure_get_sensitive:
	.asciz	"gimp_plug_in_procedure_get_sensitive"
	.size	.L__func__.gimp_plug_in_procedure_get_sensitive, 37

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"drawable == NULL || GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.40, 48

	.type	.L__func__.gimp_plug_in_procedure_set_image_types,@object # @__func__.gimp_plug_in_procedure_set_image_types
.L__func__.gimp_plug_in_procedure_set_image_types:
	.asciz	"gimp_plug_in_procedure_set_image_types"
	.size	.L__func__.gimp_plug_in_procedure_set_image_types, 39

	.type	.L__func__.gimp_plug_in_procedure_set_file_proc,@object # @__func__.gimp_plug_in_procedure_set_file_proc
.L__func__.gimp_plug_in_procedure_set_file_proc:
	.asciz	"gimp_plug_in_procedure_set_file_proc"
	.size	.L__func__.gimp_plug_in_procedure_set_file_proc, 37

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"file:"
	.size	.L.str.41, 6

	.type	.L__func__.gimp_plug_in_procedure_set_mime_type,@object # @__func__.gimp_plug_in_procedure_set_mime_type
.L__func__.gimp_plug_in_procedure_set_mime_type:
	.asciz	"gimp_plug_in_procedure_set_mime_type"
	.size	.L__func__.gimp_plug_in_procedure_set_mime_type, 37

	.type	.L__func__.gimp_plug_in_procedure_set_thumb_loader,@object # @__func__.gimp_plug_in_procedure_set_thumb_loader
.L__func__.gimp_plug_in_procedure_set_thumb_loader:
	.asciz	"gimp_plug_in_procedure_set_thumb_loader"
	.size	.L__func__.gimp_plug_in_procedure_set_thumb_loader, 40

	.type	.L__func__.gimp_plug_in_procedure_handle_return_values,@object # @__func__.gimp_plug_in_procedure_handle_return_values
.L__func__.gimp_plug_in_procedure_handle_return_values:
	.asciz	"gimp_plug_in_procedure_handle_return_values"
	.size	.L__func__.gimp_plug_in_procedure_handle_return_values, 44

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"return_vals != NULL"
	.size	.L.str.42, 20

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Calling error for '%s':\n%s"
	.size	.L.str.43, 27

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Execution error for '%s':\n%s"
	.size	.L.str.44, 29

	.type	gimp_plug_in_procedure_parent_class,@object # @gimp_plug_in_procedure_parent_class
	.local	gimp_plug_in_procedure_parent_class
	.comm	gimp_plug_in_procedure_parent_class,8,8
	.type	GimpPlugInProcedure_private_offset,@object # @GimpPlugInProcedure_private_offset
	.local	GimpPlugInProcedure_private_offset
	.comm	GimpPlugInProcedure_private_offset,4,4
	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"menu-path-added"
	.size	.L.str.45, 16

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"RGBA"
	.size	.L.str.46, 5

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"RGB*"
	.size	.L.str.47, 5

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"RGB"
	.size	.L.str.48, 4

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"GRAYA"
	.size	.L.str.49, 6

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"GRAY*"
	.size	.L.str.50, 6

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"GRAY"
	.size	.L.str.51, 5

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"INDEXEDA"
	.size	.L.str.52, 9

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"INDEXED*"
	.size	.L.str.53, 9

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"INDEXED"
	.size	.L.str.54, 8

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"*"
	.size	.L.str.55, 2

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"%s: image-type contains unrecognizable parts:'%s'\n"
	.size	.L.str.56, 51

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	" \t,"
	.size	.L.str.57, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
