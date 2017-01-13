	.text
	.file	"gimpmenufactory.bc"
	.globl	gimp_menu_factory_get_type
	.align	16, 0x90
	.type	gimp_menu_factory_get_type,@function
gimp_menu_factory_get_type:             # @gimp_menu_factory_get_type
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
	movq	gimp_menu_factory_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_menu_factory_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_object_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$160, %edx
	movabsq	$gimp_menu_factory_class_intern_init, %rdi
	movl	$40, %r8d
	movabsq	$gimp_menu_factory_init, %rcx
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
	movabsq	$gimp_menu_factory_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_menu_factory_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_menu_factory_get_type, .Lfunc_end0-gimp_menu_factory_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_menu_factory_class_intern_init,@function
gimp_menu_factory_class_intern_init:    # @gimp_menu_factory_class_intern_init
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
	movq	%rax, gimp_menu_factory_parent_class
	cmpl	$0, GimpMenuFactory_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpMenuFactory_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_menu_factory_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_menu_factory_class_intern_init, .Lfunc_end1-gimp_menu_factory_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_menu_factory_init,@function
gimp_menu_factory_init:                 # @gimp_menu_factory_init
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
	callq	gimp_menu_factory_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-8(%rbp), %rsi
	movq	%rax, 32(%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_menu_factory_init, .Lfunc_end2-gimp_menu_factory_init
	.cfi_endproc

	.globl	gimp_menu_factory_new
	.align	16, 0x90
	.type	gimp_menu_factory_new,@function
gimp_menu_factory_new:                  # @gimp_menu_factory_new
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_menu_factory_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_25
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_action_factory_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_menu_factory_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_25
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	callq	gimp_menu_factory_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, (%rsi)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, 8(%rsi)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_25:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_menu_factory_new, .Lfunc_end3-gimp_menu_factory_new
	.cfi_endproc

	.globl	gimp_menu_factory_manager_register
	.align	16, 0x90
	.type	gimp_menu_factory_manager_register,@function
gimp_menu_factory_manager_register:     # @gimp_menu_factory_manager_register
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
	subq	$624, %rsp              # imm = 0x270
	testb	%al, %al
	movaps	%xmm7, -320(%rbp)       # 16-byte Spill
	movaps	%xmm6, -336(%rbp)       # 16-byte Spill
	movaps	%xmm5, -352(%rbp)       # 16-byte Spill
	movaps	%xmm4, -368(%rbp)       # 16-byte Spill
	movaps	%xmm3, -384(%rbp)       # 16-byte Spill
	movaps	%xmm2, -400(%rbp)       # 16-byte Spill
	movaps	%xmm1, -416(%rbp)       # 16-byte Spill
	movaps	%xmm0, -432(%rbp)       # 16-byte Spill
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%r9, -448(%rbp)         # 8-byte Spill
	movq	%r8, -456(%rbp)         # 8-byte Spill
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	movq	%rsi, -480(%rbp)        # 8-byte Spill
	je	.LBB4_47
# BB#46:                                # %entry
	movaps	-432(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -256(%rbp)
	movaps	-416(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -240(%rbp)
	movaps	-400(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -224(%rbp)
	movaps	-384(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -208(%rbp)
	movaps	-368(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -192(%rbp)
	movaps	-352(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -176(%rbp)
	movaps	-336(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -160(%rbp)
	movaps	-320(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -144(%rbp)
.LBB4_47:                               # %entry
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	%rax, -264(%rbp)
	movq	-456(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -272(%rbp)
	movq	-464(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -280(%rbp)
	movq	-472(%rbp), %rsi        # 8-byte Reload
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	-440(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_menu_factory_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.4
	movl	$1, -100(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.5
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.7
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.9
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_menu_factory_manager_register, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_45
.LBB4_11:                               # %if.end.11
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.12
	cmpq	$0, -16(%rbp)
	je	.LBB4_15
# BB#14:                                # %if.then.14
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_menu_factory_manager_register, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_45
.LBB4_16:                               # %if.end.16
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.17
	jmp	.LBB4_18
.LBB4_18:                               # %do.body.18
	cmpq	$0, -24(%rbp)
	je	.LBB4_20
# BB#19:                                # %if.then.20
	jmp	.LBB4_21
.LBB4_20:                               # %if.else.21
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_menu_factory_manager_register, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_45
.LBB4_21:                               # %if.end.22
	jmp	.LBB4_22
.LBB4_22:                               # %do.end.23
	movl	$24, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	leaq	-80(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rax, 16(%rdi)
	leaq	-304(%rbp), %rax
	movq	%rax, 16(%rsi)
	leaq	16(%rbp), %rax
	movq	%rax, 8(%rsi)
	movl	$48, 4(%rsi)
	movl	$24, (%rsi)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB4_23:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB4_29
# BB#24:                                # %for.body
                                        #   in Loop: Header=BB4_23 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_strdup
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-32(%rbp), %rsi
	movq	%rax, 8(%rsi)
# BB#25:                                # %for.inc
                                        #   in Loop: Header=BB4_23 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -496(%rbp)        # 8-byte Spill
	movl	%ecx, -500(%rbp)        # 4-byte Spill
	ja	.LBB4_27
# BB#26:                                # %vaarg.in_reg
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	-500(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-496(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	jmp	.LBB4_28
.LBB4_27:                               # %vaarg.in_mem
                                        #   in Loop: Header=BB4_23 Depth=1
	movq	-496(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -512(%rbp)        # 8-byte Spill
.LBB4_28:                               # %vaarg.end
                                        #   in Loop: Header=BB4_23 Depth=1
	movq	-512(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB4_23
.LBB4_29:                               # %for.end
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_list_reverse
	leaq	-80(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movl	-80(%rbp), %edx
	cmpl	$40, %edx
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	movl	%edx, -524(%rbp)        # 4-byte Spill
	ja	.LBB4_31
# BB#30:                                # %vaarg.in_reg.43
	movl	-524(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-520(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -536(%rbp)        # 8-byte Spill
	jmp	.LBB4_32
.LBB4_31:                               # %vaarg.in_mem.45
	movq	-520(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -536(%rbp)        # 8-byte Spill
.LBB4_32:                               # %vaarg.end.49
	movq	-536(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB4_33:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB4_44
# BB#34:                                # %while.body
                                        #   in Loop: Header=BB4_33 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -544(%rbp)        # 8-byte Spill
	movl	%ecx, -548(%rbp)        # 4-byte Spill
	ja	.LBB4_36
# BB#35:                                # %vaarg.in_reg.59
                                        #   in Loop: Header=BB4_33 Depth=1
	movl	-548(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-544(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -560(%rbp)        # 8-byte Spill
	jmp	.LBB4_37
.LBB4_36:                               # %vaarg.in_mem.61
                                        #   in Loop: Header=BB4_33 Depth=1
	movq	-544(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -560(%rbp)        # 8-byte Spill
.LBB4_37:                               # %vaarg.end.65
                                        #   in Loop: Header=BB4_33 Depth=1
	movq	-560(%rbp), %rax        # 8-byte Reload
	leaq	-80(%rbp), %rcx
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movl	-80(%rbp), %edx
	cmpl	$40, %edx
	movq	%rcx, -568(%rbp)        # 8-byte Spill
	movl	%edx, -572(%rbp)        # 4-byte Spill
	ja	.LBB4_39
# BB#38:                                # %vaarg.in_reg.71
                                        #   in Loop: Header=BB4_33 Depth=1
	movl	-572(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-568(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	jmp	.LBB4_40
.LBB4_39:                               # %vaarg.in_mem.73
                                        #   in Loop: Header=BB4_33 Depth=1
	movq	-568(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -584(%rbp)        # 8-byte Spill
.LBB4_40:                               # %vaarg.end.77
                                        #   in Loop: Header=BB4_33 Depth=1
	movq	-584(%rbp), %rax        # 8-byte Reload
	movl	$40, %ecx
	movl	%ecx, %edi
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	callq	g_slice_alloc0
	movq	%rax, -128(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_strdup
	movq	-128(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-112(%rbp), %rdi
	callq	g_strdup
	movq	-128(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-120(%rbp), %rax
	movq	-128(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	leaq	-80(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rsi, -592(%rbp)        # 8-byte Spill
	movl	%ecx, -596(%rbp)        # 4-byte Spill
	ja	.LBB4_42
# BB#41:                                # %vaarg.in_reg.90
                                        #   in Loop: Header=BB4_33 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-592(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -608(%rbp)        # 8-byte Spill
	jmp	.LBB4_43
.LBB4_42:                               # %vaarg.in_mem.92
                                        #   in Loop: Header=BB4_33 Depth=1
	movq	-592(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -608(%rbp)        # 8-byte Spill
.LBB4_43:                               # %vaarg.end.96
                                        #   in Loop: Header=BB4_33 Depth=1
	movq	-608(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB4_33
.LBB4_44:                               # %while.end
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_list_reverse
	leaq	-80(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	%rdi, -616(%rbp)        # 8-byte Spill
.LBB4_45:                               # %return
	addq	$624, %rsp              # imm = 0x270
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_menu_factory_manager_register, .Lfunc_end4-gimp_menu_factory_manager_register
	.cfi_endproc

	.globl	gimp_menu_factory_get_registered_menus
	.align	16, 0x90
	.type	gimp_menu_factory_get_registered_menus,@function
gimp_menu_factory_get_registered_menus: # @gimp_menu_factory_get_registered_menus
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_menu_factory_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_menu_factory_get_registered_menus, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB5_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_menu_factory_get_registered_menus, .Lfunc_end5-gimp_menu_factory_get_registered_menus
	.cfi_endproc

	.globl	gimp_menu_factory_manager_new
	.align	16, 0x90
	.type	gimp_menu_factory_manager_new,@function
gimp_menu_factory_manager_new:          # @gimp_menu_factory_manager_new
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
	subq	$240, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_menu_factory_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_menu_factory_manager_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_48
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB6_15
# BB#14:                                # %if.then.13
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_menu_factory_manager_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_48
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB6_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB6_47
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB6_18 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB6_42
# BB#20:                                # %if.then.23
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rdi
	movq	-80(%rbp), %rax
	movq	(%rax), %rsi
	callq	gimp_ui_manager_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_ui_manager_set_add_tearoffs
	movq	-88(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_ui_manager_get_accel_group
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
.LBB6_21:                               # %for.cond.36
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_23 Depth 2
	cmpq	$0, -104(%rbp)
	je	.LBB6_34
# BB#22:                                # %for.body.38
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdi
	movq	-104(%rbp), %rax
	movq	(%rax), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_action_factory_group_new
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_action_group_list_actions
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -128(%rbp)
.LBB6_23:                               # %for.cond.48
                                        #   Parent Loop BB6_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -128(%rbp)
	je	.LBB6_29
# BB#24:                                # %for.body.50
                                        #   in Loop: Header=BB6_23 Depth=2
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	gtk_action_set_accel_group
	movq	-136(%rbp), %rdi
	callq	gtk_action_connect_accelerator
# BB#25:                                # %for.inc
                                        #   in Loop: Header=BB6_23 Depth=2
	cmpq	$0, -128(%rbp)
	je	.LBB6_27
# BB#26:                                # %cond.true
                                        #   in Loop: Header=BB6_23 Depth=2
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB6_28
.LBB6_27:                               # %cond.false
                                        #   in Loop: Header=BB6_23 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB6_28
.LBB6_28:                               # %cond.end
                                        #   in Loop: Header=BB6_23 Depth=2
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -128(%rbp)
	jmp	.LBB6_23
.LBB6_29:                               # %for.end
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	-120(%rbp), %rdi
	callq	g_list_free
	movabsq	$.L.str.7, %rsi
	movabsq	$gimp_menu_factory_manager_action_added, %rdi
	xorl	%r8d, %r8d
	movq	-112(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-184(%rbp), %rdx        # 8-byte Reload
	callq	g_signal_connect_object
	movq	-88(%rbp), %rcx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rcx
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_ui_manager_insert_action_group
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
# BB#30:                                # %for.inc.59
                                        #   in Loop: Header=BB6_21 Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB6_32
# BB#31:                                # %cond.true.61
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB6_33
.LBB6_32:                               # %cond.false.63
                                        #   in Loop: Header=BB6_21 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB6_33
.LBB6_33:                               # %cond.end.64
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)
	jmp	.LBB6_21
.LBB6_34:                               # %for.end.66
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)
.LBB6_35:                               # %for.cond.67
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB6_41
# BB#36:                                # %for.body.69
                                        #   in Loop: Header=BB6_35 Depth=1
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-88(%rbp), %rdi
	movq	-144(%rbp), %rax
	movq	(%rax), %rsi
	movq	-144(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	16(%rax), %rcx
	callq	gimp_ui_manager_ui_register
# BB#37:                                # %for.inc.72
                                        #   in Loop: Header=BB6_35 Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB6_39
# BB#38:                                # %cond.true.74
                                        #   in Loop: Header=BB6_35 Depth=1
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB6_40
.LBB6_39:                               # %cond.false.76
                                        #   in Loop: Header=BB6_35 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB6_40
.LBB6_40:                               # %cond.end.77
                                        #   in Loop: Header=BB6_35 Depth=1
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)
	jmp	.LBB6_35
.LBB6_41:                               # %for.end.79
	movq	-88(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_48
.LBB6_42:                               # %if.end.80
                                        #   in Loop: Header=BB6_18 Depth=1
	jmp	.LBB6_43
.LBB6_43:                               # %for.inc.81
                                        #   in Loop: Header=BB6_18 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB6_45
# BB#44:                                # %cond.true.83
                                        #   in Loop: Header=BB6_18 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB6_46
.LBB6_45:                               # %cond.false.85
                                        #   in Loop: Header=BB6_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB6_46
.LBB6_46:                               # %cond.end.86
                                        #   in Loop: Header=BB6_18 Depth=1
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB6_18
.LBB6_47:                               # %for.end.88
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_menu_factory_manager_new, %rsi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	g_warning
	movq	$0, -8(%rbp)
.LBB6_48:                               # %return
	movq	-8(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_menu_factory_manager_new, .Lfunc_end6-gimp_menu_factory_manager_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_menu_factory_manager_action_added,@function
gimp_menu_factory_manager_action_added: # @gimp_menu_factory_manager_action_added
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_action_set_accel_group
	movq	-16(%rbp), %rdi
	callq	gtk_action_connect_accelerator
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_menu_factory_manager_action_added, .Lfunc_end7-gimp_menu_factory_manager_action_added
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB8_2
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
.LBB8_2:                                # %entry
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
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end8:
	.size	g_warning, .Lfunc_end8-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_menu_factory_class_init,@function
gimp_menu_factory_class_init:           # @gimp_menu_factory_class_init
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
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movl	$24, %ecx
	movl	%ecx, %esi
	movabsq	$gimp_menu_factory_finalize, %rdi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, 48(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_menu_factory_class_init, .Lfunc_end9-gimp_menu_factory_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_menu_factory_finalize,@function
gimp_menu_factory_finalize:             # @gimp_menu_factory_finalize
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_menu_factory_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_3 Depth 2
	cmpq	$0, -24(%rbp)
	je	.LBB10_18
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movabsq	$g_free, %rsi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_list_free_full
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB10_3:                               # %for.cond.3
                                        #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -40(%rbp)
	je	.LBB10_11
# BB#4:                                 # %for.body.5
                                        #   in Loop: Header=BB10_3 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free
# BB#5:                                 # %do.body
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	$40, %eax
	movl	%eax, %edi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#6:                                 # %do.end
                                        #   in Loop: Header=BB10_3 Depth=2
	jmp	.LBB10_7
.LBB10_7:                               # %for.inc
                                        #   in Loop: Header=BB10_3 Depth=2
	cmpq	$0, -40(%rbp)
	je	.LBB10_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB10_3 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB10_10
.LBB10_9:                               # %cond.false
                                        #   in Loop: Header=BB10_3 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB10_10
.LBB10_10:                              # %cond.end
                                        #   in Loop: Header=BB10_3 Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB10_3
.LBB10_11:                              # %for.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_list_free
# BB#12:                                # %do.body.9
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$24, %eax
	movl	%eax, %edi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#13:                                # %do.end.10
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_14
.LBB10_14:                              # %for.inc.11
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB10_16
# BB#15:                                # %cond.true.13
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB10_17
.LBB10_16:                              # %cond.false.15
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB10_17
.LBB10_17:                              # %cond.end.16
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB10_1
.LBB10_18:                              # %for.end.18
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rdi
	callq	g_list_free
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	$0, 16(%rax)
	movq	gimp_menu_factory_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_menu_factory_finalize, .Lfunc_end10-gimp_menu_factory_finalize
	.cfi_endproc

	.type	gimp_menu_factory_get_type.g_define_type_id__volatile,@object # @gimp_menu_factory_get_type.g_define_type_id__volatile
	.local	gimp_menu_factory_get_type.g_define_type_id__volatile
	.comm	gimp_menu_factory_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpMenuFactory"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_menu_factory_new,@object # @__func__.gimp_menu_factory_new
.L__func__.gimp_menu_factory_new:
	.asciz	"gimp_menu_factory_new"
	.size	.L__func__.gimp_menu_factory_new, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_ACTION_FACTORY (action_factory)"
	.size	.L.str.3, 40

	.type	.L__func__.gimp_menu_factory_manager_register,@object # @__func__.gimp_menu_factory_manager_register
.L__func__.gimp_menu_factory_manager_register:
	.asciz	"gimp_menu_factory_manager_register"
	.size	.L__func__.gimp_menu_factory_manager_register, 35

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_MENU_FACTORY (factory)"
	.size	.L.str.4, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"identifier != NULL"
	.size	.L.str.5, 19

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"first_group != NULL"
	.size	.L.str.6, 20

	.type	.L__func__.gimp_menu_factory_get_registered_menus,@object # @__func__.gimp_menu_factory_get_registered_menus
.L__func__.gimp_menu_factory_get_registered_menus:
	.asciz	"gimp_menu_factory_get_registered_menus"
	.size	.L__func__.gimp_menu_factory_get_registered_menus, 39

	.type	.L__func__.gimp_menu_factory_manager_new,@object # @__func__.gimp_menu_factory_manager_new
.L__func__.gimp_menu_factory_manager_new:
	.asciz	"gimp_menu_factory_manager_new"
	.size	.L__func__.gimp_menu_factory_manager_new, 30

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"action-added"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s: no entry registered for \"%s\""
	.size	.L.str.8, 33

	.type	gimp_menu_factory_parent_class,@object # @gimp_menu_factory_parent_class
	.local	gimp_menu_factory_parent_class
	.comm	gimp_menu_factory_parent_class,8,8
	.type	GimpMenuFactory_private_offset,@object # @GimpMenuFactory_private_offset
	.local	GimpMenuFactory_private_offset
	.comm	GimpMenuFactory_private_offset,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
