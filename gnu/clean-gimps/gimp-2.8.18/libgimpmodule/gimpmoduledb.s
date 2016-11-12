	.text
	.file	"gimpmoduledb.bc"
	.globl	gimp_module_db_get_type
	.align	16, 0x90
	.type	gimp_module_db_get_type,@function
gimp_module_db_get_type:                # @gimp_module_db_get_type
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_module_db_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_module_db_get_type.g_define_type_id__volatile(%rip), %rax
	movq	%rax, %rdi
	callq	g_once_init_enter@PLT
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
	leaq	.L.str(%rip), %rdi
	callq	g_intern_static_string@PLT
	movl	$80, %ecx
	movl	%ecx, %edi
	movl	$192, %edx
	leaq	gimp_module_db_class_intern_init(%rip), %rsi
	movl	$48, %r8d
	leaq	gimp_module_db_init(%rip), %r9
	xorl	%ecx, %ecx
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	g_type_register_static_simple@PLT
	leaq	gimp_module_db_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_module_db_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_module_db_get_type, .Lfunc_end0-gimp_module_db_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_module_db_class_intern_init,@function
gimp_module_db_class_intern_init:       # @gimp_module_db_class_intern_init
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
	callq	g_type_class_peek_parent@PLT
	movq	%rax, gimp_module_db_parent_class(%rip)
	cmpl	$0, GimpModuleDB_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpModuleDB_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_module_db_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_module_db_class_intern_init, .Lfunc_end1-gimp_module_db_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_module_db_init,@function
gimp_module_db_init:                    # @gimp_module_db_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, 24(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 32(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 40(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_module_db_init, .Lfunc_end2-gimp_module_db_init
	.cfi_endproc

	.globl	gimp_module_db_new
	.align	16, 0x90
	.type	gimp_module_db_new,@function
gimp_module_db_new:                     # @gimp_module_db_new
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
	movl	%edi, -4(%rbp)
	callq	gimp_module_db_get_type@PLT
	xorl	%edi, %edi
	movl	%edi, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -16(%rbp)
	cmpl	$0, -4(%rbp)
	cmovnel	%edx, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 40(%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_module_db_new, .Lfunc_end3-gimp_module_db_new
	.cfi_endproc

	.globl	gimp_module_db_set_load_inhibit
	.align	16, 0x90
	.type	gimp_module_db_set_load_inhibit,@function
gimp_module_db_set_load_inhibit:        # @gimp_module_db_set_load_inhibit
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_module_db_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_module_db_set_load_inhibit(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_21
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB4_14
# BB#13:                                # %if.then.13
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free@PLT
.LBB4_14:                               # %if.end.15
	movq	-16(%rbp), %rdi
	callq	g_strdup@PLT
	movq	-8(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB4_15:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB4_21
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB4_15 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	is_in_inhibit_list
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_module_set_load_inhibit@PLT
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB4_15 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB4_19
# BB#18:                                # %cond.true
                                        #   in Loop: Header=BB4_15 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB4_20
.LBB4_19:                               # %cond.false
                                        #   in Loop: Header=BB4_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB4_20
.LBB4_20:                               # %cond.end
                                        #   in Loop: Header=BB4_15 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB4_15
.LBB4_21:                               # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_module_db_set_load_inhibit, .Lfunc_end4-gimp_module_db_set_load_inhibit
	.cfi_endproc

	.align	16, 0x90
	.type	is_in_inhibit_list,@function
is_in_inhibit_list:                     # @is_in_inhibit_list
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB5_2
# BB#1:                                 # %lor.lhs.false
	movq	-24(%rbp), %rdi
	callq	strlen@PLT
	cmpq	$0, %rax
	jne	.LBB5_3
.LBB5_2:                                # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB5_17
.LBB5_3:                                # %if.end
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	strstr@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_5
# BB#4:                                 # %if.then.4
	movl	$0, -4(%rbp)
	jmp	.LBB5_17
.LBB5_5:                                # %if.end.5
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB5_6:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	cmpq	-24(%rbp), %rdx
	movb	%cl, -57(%rbp)          # 1-byte Spill
	je	.LBB5_8
# BB#7:                                 # %land.rhs
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	setne	%dl
	movb	%dl, -57(%rbp)          # 1-byte Spill
.LBB5_8:                                # %land.end
                                        #   in Loop: Header=BB5_6 Depth=1
	movb	-57(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_9
	jmp	.LBB5_10
.LBB5_9:                                # %while.body
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB5_6
.LBB5_10:                               # %while.end
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB5_12
# BB#11:                                # %if.then.11
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.LBB5_12:                               # %if.end.13
	movl	$58, %esi
	movq	-32(%rbp), %rdi
	callq	strchr@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB5_14
# BB#13:                                # %if.then.16
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	strlen@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -56(%rbp)
.LBB5_14:                               # %if.end.18
	movq	-16(%rbp), %rdi
	callq	strlen@PLT
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rdi
	subq	%rdi, %rax
	movslq	-36(%rbp), %rdi
	cmpq	%rdi, %rax
	jne	.LBB5_16
# BB#15:                                # %if.then.24
	movl	$1, -4(%rbp)
	jmp	.LBB5_17
.LBB5_16:                               # %if.end.25
	movl	$0, -4(%rbp)
.LBB5_17:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	is_in_inhibit_list, .Lfunc_end5-is_in_inhibit_list
	.cfi_endproc

	.globl	gimp_module_db_get_load_inhibit
	.align	16, 0x90
	.type	gimp_module_db_get_load_inhibit,@function
gimp_module_db_get_load_inhibit:        # @gimp_module_db_get_load_inhibit
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
	callq	gimp_module_db_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_module_db_get_load_inhibit(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB6_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_module_db_get_load_inhibit, .Lfunc_end6-gimp_module_db_get_load_inhibit
	.cfi_endproc

	.globl	gimp_module_db_load
	.align	16, 0x90
	.type	gimp_module_db_load,@function
gimp_module_db_load:                    # @gimp_module_db_load
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
	callq	gimp_module_db_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_module_db_load(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_19
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB7_15
# BB#14:                                # %if.then.13
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_module_db_load(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_19
.LBB7_16:                               # %if.end.15
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.16
	callq	g_module_supported@PLT
	cmpl	$0, %eax
	je	.LBB7_19
# BB#18:                                # %if.then.19
	movl	$16, %esi
	leaq	gimp_module_db_module_initialize(%rip), %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	callq	gimp_datafiles_read_directories@PLT
.LBB7_19:                               # %if.end.20
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_module_db_load, .Lfunc_end7-gimp_module_db_load
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_module_db_module_initialize,@function
gimp_module_db_module_initialize:       # @gimp_module_db_module_initialize
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_module_db_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.7(%rip), %rsi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_datafiles_check_extension@PLT
	cmpl	$0, %eax
	jne	.LBB8_2
# BB#1:                                 # %if.then
	jmp	.LBB8_5
.LBB8_2:                                # %if.end
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	callq	gimp_module_db_module_find_by_path
	cmpq	$0, %rax
	je	.LBB8_4
# BB#3:                                 # %if.then.6
	jmp	.LBB8_5
.LBB8_4:                                # %if.end.7
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rsi
	callq	is_in_inhibit_list
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movl	-36(%rbp), %esi
	movq	-24(%rbp), %rcx
	movl	40(%rcx), %edx
	callq	gimp_module_new@PLT
	leaq	.L.str.8(%rip), %rsi
	leaq	gimp_module_db_module_modified(%rip), %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	-24(%rbp), %rcx
	movq	24(%rcx), %rdi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_list_append@PLT
	xorl	%edx, %edx
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-24(%rbp), %rax
	movl	db_signals(%rip), %esi
	movq	-32(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
.LBB8_5:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_module_db_module_initialize, .Lfunc_end8-gimp_module_db_module_initialize
	.cfi_endproc

	.globl	gimp_module_db_refresh
	.align	16, 0x90
	.type	gimp_module_db_refresh,@function
gimp_module_db_refresh:                 # @gimp_module_db_refresh
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
	movq	$0, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_module_db_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_module_db_refresh(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_18
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB9_15
# BB#14:                                # %if.then.13
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_module_db_refresh(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_18
.LBB9_16:                               # %if.end.15
	jmp	.LBB9_17
.LBB9_17:                               # %do.end.16
	leaq	gimp_module_db_module_on_disk_func(%rip), %rsi
	leaq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rdi
	movq	%rax, %rdx
	callq	g_list_foreach@PLT
	leaq	gimp_module_db_module_remove_func(%rip), %rsi
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	callq	g_list_foreach@PLT
	movq	-24(%rbp), %rdi
	callq	g_list_free@PLT
	movl	$16, %esi
	leaq	gimp_module_db_module_initialize(%rip), %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	callq	gimp_datafiles_read_directories@PLT
.LBB9_18:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_module_db_refresh, .Lfunc_end9-gimp_module_db_refresh
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_module_db_module_on_disk_func,@function
gimp_module_db_module_on_disk_func:     # @gimp_module_db_module_on_disk_func
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
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movl	72(%rsi), %ecx
	movl	%ecx, -36(%rbp)
	movq	-24(%rbp), %rsi
	movq	56(%rsi), %rdi
	movl	%eax, %esi
	callq	g_file_test@PLT
	movq	-24(%rbp), %rdi
	movl	%eax, 72(%rdi)
	movq	-24(%rbp), %rdi
	cmpl	$0, 72(%rdi)
	jne	.LBB10_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpq	$0, 80(%rax)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append@PLT
	movq	-32(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	$0, -24(%rbp)
.LBB10_3:                               # %if.end
	cmpq	$0, -24(%rbp)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true.7
	movq	-24(%rbp), %rax
	movl	72(%rax), %ecx
	cmpl	-36(%rbp), %ecx
	je	.LBB10_6
# BB#5:                                 # %if.then.9
	movq	-24(%rbp), %rdi
	callq	gimp_module_modified@PLT
.LBB10_6:                               # %if.end.10
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_module_db_module_on_disk_func, .Lfunc_end10-gimp_module_db_module_on_disk_func
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_module_db_module_remove_func,@function
gimp_module_db_module_remove_func:      # @gimp_module_db_module_remove_func
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
	subq	$64, %rsp
	movl	$24, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_module_db_module_modified(%rip), %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movl	%eax, %esi
	movl	%ecx, %edx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_disconnect_matched@PLT
	movq	-32(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	-24(%rbp), %r8
	movq	%r8, %rsi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_list_remove@PLT
	xorl	%edx, %edx
	movq	-32(%rbp), %rsi
	movq	%rax, 24(%rsi)
	movq	-32(%rbp), %rax
	movl	db_signals+4(%rip), %esi
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_module_db_module_remove_func, .Lfunc_end11-gimp_module_db_module_remove_func
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_module_db_class_init,@function
gimp_module_db_class_init:              # @gimp_module_db_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$152, %rsp
.Ltmp39:
	.cfi_offset %rbx, -40
.Ltmp40:
	.cfi_offset %r14, -32
.Ltmp41:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_module_get_type@PLT
	leaq	.L.str.4(%rip), %rdi
	movl	$1, %edx
	movl	$136, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	g_cclosure_marshal_VOID__OBJECT@GOTPCREL(%rip), %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%r11, %rsi
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%rbx, %r9
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	movq	%r10, -72(%rbp)         # 8-byte Spill
	callq	g_signal_new@PLT
	movl	%eax, db_signals(%rip)
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_module_get_type@PLT
	leaq	.L.str.5(%rip), %rdi
	movl	$1, %edx
	movl	$144, %ecx
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movq	g_cclosure_marshal_VOID__OBJECT@GOTPCREL(%rip), %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	%r8, -96(%rbp)          # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new@PLT
	movl	%eax, db_signals+4(%rip)
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_module_get_type@PLT
	leaq	.L.str.6(%rip), %rdi
	movl	$1, %edx
	movl	$152, %ecx
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movq	g_cclosure_marshal_VOID__OBJECT@GOTPCREL(%rip), %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-120(%rbp), %r11        # 8-byte Reload
	movq	%r8, -128(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -136(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-128(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new@PLT
	leaq	gimp_module_db_finalize(%rip), %rsi
	movl	%eax, db_signals+8(%rip)
	movq	-40(%rbp), %rdi
	movq	%rsi, 48(%rdi)
	movq	-32(%rbp), %rsi
	movq	$0, 136(%rsi)
	movq	-32(%rbp), %rsi
	movq	$0, 144(%rsi)
	addq	$152, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_module_db_class_init, .Lfunc_end12-gimp_module_db_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_module_db_finalize,@function
gimp_module_db_finalize:                # @gimp_module_db_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_module_db_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_list_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
.LBB13_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB13_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB13_4:                               # %if.end.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_module_db_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_module_db_finalize, .Lfunc_end13-gimp_module_db_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_module_db_module_find_by_path,@function
gimp_module_db_module_find_by_path:     # @gimp_module_db_module_find_by_path
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
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, -32(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB14_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB14_4
# BB#3:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB14_10
.LBB14_4:                               # %if.end
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_5
.LBB14_5:                               # %for.inc
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB14_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB14_8
.LBB14_7:                               # %cond.false
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB14_8
.LBB14_8:                               # %cond.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB14_1
.LBB14_9:                               # %for.end
	movq	$0, -8(%rbp)
.LBB14_10:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_module_db_module_find_by_path, .Lfunc_end14-gimp_module_db_module_find_by_path
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_module_db_module_modified,@function
gimp_module_db_module_modified:         # @gimp_module_db_module_modified
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
	subq	$16, %rsp
	xorl	%edx, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	db_signals+8(%rip), %eax
	movq	-8(%rbp), %rcx
	movq	%rsi, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	g_signal_emit@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_module_db_module_modified, .Lfunc_end15-gimp_module_db_module_modified
	.cfi_endproc

	.type	gimp_module_db_get_type.g_define_type_id__volatile,@object # @gimp_module_db_get_type.g_define_type_id__volatile
	.local	gimp_module_db_get_type.g_define_type_id__volatile
	.comm	gimp_module_db_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpModuleDB"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpModule"
	.size	.L.str.1, 14

	.type	.L__func__.gimp_module_db_set_load_inhibit,@object # @__func__.gimp_module_db_set_load_inhibit
.L__func__.gimp_module_db_set_load_inhibit:
	.asciz	"gimp_module_db_set_load_inhibit"
	.size	.L__func__.gimp_module_db_set_load_inhibit, 32

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_MODULE_DB (db)"
	.size	.L.str.2, 23

	.type	.L__func__.gimp_module_db_get_load_inhibit,@object # @__func__.gimp_module_db_get_load_inhibit
.L__func__.gimp_module_db_get_load_inhibit:
	.asciz	"gimp_module_db_get_load_inhibit"
	.size	.L__func__.gimp_module_db_get_load_inhibit, 32

	.type	.L__func__.gimp_module_db_load,@object # @__func__.gimp_module_db_load
.L__func__.gimp_module_db_load:
	.asciz	"gimp_module_db_load"
	.size	.L__func__.gimp_module_db_load, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"module_path != NULL"
	.size	.L.str.3, 20

	.type	.L__func__.gimp_module_db_refresh,@object # @__func__.gimp_module_db_refresh
.L__func__.gimp_module_db_refresh:
	.asciz	"gimp_module_db_refresh"
	.size	.L__func__.gimp_module_db_refresh, 23

	.type	gimp_module_db_parent_class,@object # @gimp_module_db_parent_class
	.local	gimp_module_db_parent_class
	.comm	gimp_module_db_parent_class,8,8
	.type	GimpModuleDB_private_offset,@object # @GimpModuleDB_private_offset
	.local	GimpModuleDB_private_offset
	.comm	GimpModuleDB_private_offset,4,4
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"add"
	.size	.L.str.4, 4

	.type	db_signals,@object      # @db_signals
	.local	db_signals
	.comm	db_signals,12,4
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"remove"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"module-modified"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	".so"
	.size	.L.str.7, 4

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"modified"
	.size	.L.str.8, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
