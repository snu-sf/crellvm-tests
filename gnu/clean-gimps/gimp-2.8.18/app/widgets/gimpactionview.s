	.text
	.file	"gimpactionview.bc"
	.globl	gimp_action_view_get_type
	.align	16, 0x90
	.type	gimp_action_view_get_type,@function
gimp_action_view_get_type:              # @gimp_action_view_get_type
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
	movq	gimp_action_view_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_action_view_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_tree_view_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$992, %edx              # imm = 0x3E0
	movabsq	$gimp_action_view_class_intern_init, %rdi
	movl	$144, %r8d
	movabsq	$gimp_action_view_init, %rcx
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
	movabsq	$gimp_action_view_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_action_view_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_action_view_get_type, .Lfunc_end0-gimp_action_view_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_action_view_class_intern_init,@function
gimp_action_view_class_intern_init:     # @gimp_action_view_class_intern_init
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
	movq	%rax, gimp_action_view_parent_class
	cmpl	$0, GimpActionView_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpActionView_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_action_view_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_action_view_class_intern_init, .Lfunc_end1-gimp_action_view_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_action_view_init,@function
gimp_action_view_init:                  # @gimp_action_view_init
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
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_action_view_init, .Lfunc_end2-gimp_action_view_init
	.cfi_endproc

	.globl	gimp_action_view_new
	.align	16, 0x90
	.type	gimp_action_view_new,@function
gimp_action_view_new:                   # @gimp_action_view_new
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$760, %rsp              # imm = 0x2F8
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	$0, -136(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_ui_manager_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -156(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -156(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_view_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_49
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gtk_action_get_type
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gdk_modifier_type_get_type
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	g_closure_get_type
	movl	$9, %edi
	movl	$20, %ecx
	movl	%ecx, %esi
	movl	$64, %ecx
	movl	%ecx, %edx
	movl	$28, %ecx
	movl	%ecx, %r8d
	movq	-320(%rbp), %r9         # 8-byte Reload
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	movq	%r9, %rdx
	movq	-336(%rbp), %rcx        # 8-byte Reload
	movq	-336(%rbp), %r10        # 8-byte Reload
	movq	%r8, -344(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r10, %r9
	movq	$64, (%rsp)
	movq	$28, 8(%rsp)
	movq	-328(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	gtk_tree_store_new
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_ui_manager_get_accel_group
	movq	%rax, -120(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_ui_manager_get_action_groups
	movq	%rax, -128(%rbp)
.LBB3_13:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_15 Depth 2
	cmpq	$0, -128(%rbp)
	je	.LBB3_44
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB3_13 Depth=1
	leaq	-216(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-128(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -168(%rbp)
	movq	-104(%rbp), %rdi
	callq	gtk_tree_store_append
	leaq	-216(%rbp), %rsi
	movl	$2, %edx
	movl	$3, %r8d
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-104(%rbp), %rdi
	movq	-168(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	-168(%rbp), %r9
	movq	40(%r9), %r9
	movl	$-1, (%rsp)
	movl	%eax, -364(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_store_set
	movq	-168(%rbp), %rcx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_action_group_list_actions
	movabsq	$gimp_action_name_compare, %rcx
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdi
	movq	%rcx, %rsi
	callq	g_list_sort
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
.LBB3_15:                               # %for.cond.30
                                        #   Parent Loop BB3_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -184(%rbp)
	je	.LBB3_39
# BB#16:                                # %for.body.32
                                        #   in Loop: Header=BB3_15 Depth=2
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rdi
	callq	gtk_action_get_name
	movq	%rax, -232(%rbp)
	movq	-224(%rbp), %rdi
	callq	gtk_action_get_stock_id
	movabsq	$.L.str.3, %rsi
	movq	%rax, -240(%rbp)
	movl	$0, -260(%rbp)
	movl	$0, -264(%rbp)
	movq	$0, -272(%rbp)
	movq	-232(%rbp), %rdi
	callq	strstr
	cmpq	$0, %rax
	jne	.LBB3_19
# BB#17:                                # %lor.lhs.false
                                        #   in Loop: Header=BB3_15 Depth=2
	movabsq	$.L.str.4, %rsi
	movq	-232(%rbp), %rdi
	callq	strstr
	cmpq	$0, %rax
	jne	.LBB3_19
# BB#18:                                # %lor.lhs.false.51
                                        #   in Loop: Header=BB3_15 Depth=2
	movq	-232(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$60, %ecx
	jne	.LBB3_20
.LBB3_19:                               # %if.then.54
                                        #   in Loop: Header=BB3_15 Depth=2
	jmp	.LBB3_35
.LBB3_20:                               # %if.end.55
                                        #   in Loop: Header=BB3_15 Depth=2
	movq	-224(%rbp), %rdi
	callq	gtk_action_get_label
	movq	%rax, %rdi
	callq	gimp_strip_uline
	movq	%rax, -248(%rbp)
	cmpq	$0, -248(%rbp)
	je	.LBB3_22
# BB#21:                                # %land.lhs.true.59
                                        #   in Loop: Header=BB3_15 Depth=2
	movq	-248(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	jne	.LBB3_23
.LBB3_22:                               # %if.then.62
                                        #   in Loop: Header=BB3_15 Depth=2
	movq	-248(%rbp), %rdi
	callq	g_free
	movq	-232(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -248(%rbp)
.LBB3_23:                               # %if.end.64
                                        #   in Loop: Header=BB3_15 Depth=2
	movq	$-1, %rsi
	movq	-248(%rbp), %rdi
	callq	g_utf8_casefold
	movq	%rax, -256(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB3_31
# BB#24:                                # %if.then.67
                                        #   in Loop: Header=BB3_15 Depth=2
	movq	-224(%rbp), %rdi
	callq	gtk_action_get_accel_closure
	movq	%rax, -272(%rbp)
	cmpq	$0, -272(%rbp)
	je	.LBB3_30
# BB#25:                                # %if.then.70
                                        #   in Loop: Header=BB3_15 Depth=2
	movabsq	$gimp_action_view_accel_find_func, %rsi
	movq	-120(%rbp), %rdi
	movq	-272(%rbp), %rax
	movq	%rax, %rdx
	callq	gtk_accel_group_find
	movq	%rax, -312(%rbp)
	cmpq	$0, -312(%rbp)
	je	.LBB3_29
# BB#26:                                # %land.lhs.true.74
                                        #   in Loop: Header=BB3_15 Depth=2
	movq	-312(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB3_29
# BB#27:                                # %land.lhs.true.77
                                        #   in Loop: Header=BB3_15 Depth=2
	movq	-312(%rbp), %rax
	movzwl	8(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB3_29
# BB#28:                                # %if.then.79
                                        #   in Loop: Header=BB3_15 Depth=2
	movq	-312(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -260(%rbp)
	movq	-312(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -264(%rbp)
.LBB3_29:                               # %if.end.81
                                        #   in Loop: Header=BB3_15 Depth=2
	jmp	.LBB3_30
.LBB3_30:                               # %if.end.82
                                        #   in Loop: Header=BB3_15 Depth=2
	jmp	.LBB3_31
.LBB3_31:                               # %if.end.83
                                        #   in Loop: Header=BB3_15 Depth=2
	leaq	-304(%rbp), %rsi
	leaq	-216(%rbp), %rdx
	movq	-104(%rbp), %rdi
	callq	gtk_tree_store_append
	leaq	-304(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %eax
	movl	$2, %ecx
	movl	$3, %r8d
	movl	$4, %r9d
	movl	$5, %r10d
	movl	$6, %r11d
	movl	$7, %ebx
	movl	$8, %r14d
	movl	$4294967295, %r15d      # imm = 0xFFFFFFFF
	movq	-104(%rbp), %rdi
	movq	-224(%rbp), %r12
	movq	-240(%rbp), %r13
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	movq	-248(%rbp), %rsi
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	movq	-256(%rbp), %rsi
	movq	%rsi, -400(%rbp)        # 8-byte Spill
	movq	-232(%rbp), %rsi
	movl	%eax, -404(%rbp)        # 4-byte Spill
	movl	-260(%rbp), %eax
	movl	%eax, -408(%rbp)        # 4-byte Spill
	movl	-264(%rbp), %eax
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	movq	-272(%rbp), %rsi
	movq	%rsi, -424(%rbp)        # 8-byte Spill
	movq	-384(%rbp), %rsi        # 8-byte Reload
	movl	%eax, -428(%rbp)        # 4-byte Spill
	movl	-404(%rbp), %eax        # 4-byte Reload
	movl	%ecx, -432(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	%r8d, -436(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	%r9d, -440(%rbp)        # 4-byte Spill
	movq	%r12, %r9
	movl	$2, (%rsp)
	movq	%r13, 8(%rsp)
	movl	$3, 16(%rsp)
	movq	-392(%rbp), %r12        # 8-byte Reload
	movq	%r12, 24(%rsp)
	movl	$4, 32(%rsp)
	movq	-400(%rbp), %r12        # 8-byte Reload
	movq	%r12, 40(%rsp)
	movl	$5, 48(%rsp)
	movq	-416(%rbp), %r12        # 8-byte Reload
	movq	%r12, 56(%rsp)
	movl	$6, 64(%rsp)
	movl	-408(%rbp), %eax        # 4-byte Reload
	movl	%eax, 72(%rsp)
	movl	$7, 80(%rsp)
	movl	-428(%rbp), %eax        # 4-byte Reload
	movl	%eax, 88(%rsp)
	movl	$8, 96(%rsp)
	movq	-424(%rbp), %r12        # 8-byte Reload
	movq	%r12, 104(%rsp)
	movl	$-1, 112(%rsp)
	movb	$0, %al
	movl	%ebx, -444(%rbp)        # 4-byte Spill
	movl	%r10d, -448(%rbp)       # 4-byte Spill
	movl	%r11d, -452(%rbp)       # 4-byte Spill
	movl	%r15d, -456(%rbp)       # 4-byte Spill
	movl	%r14d, -460(%rbp)       # 4-byte Spill
	callq	gtk_tree_store_set
	movq	-248(%rbp), %rdi
	callq	g_free
	movq	-256(%rbp), %rdi
	callq	g_free
	cmpq	$0, -64(%rbp)
	je	.LBB3_34
# BB#32:                                # %land.lhs.true.85
                                        #   in Loop: Header=BB3_15 Depth=2
	movq	-64(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_34
# BB#33:                                # %if.then.88
                                        #   in Loop: Header=BB3_15 Depth=2
	movq	-104(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-304(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_get_path
	movq	%rax, -136(%rbp)
.LBB3_34:                               # %if.end.92
                                        #   in Loop: Header=BB3_15 Depth=2
	jmp	.LBB3_35
.LBB3_35:                               # %for.inc
                                        #   in Loop: Header=BB3_15 Depth=2
	cmpq	$0, -184(%rbp)
	je	.LBB3_37
# BB#36:                                # %cond.true
                                        #   in Loop: Header=BB3_15 Depth=2
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jmp	.LBB3_38
.LBB3_37:                               # %cond.false
                                        #   in Loop: Header=BB3_15 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	jmp	.LBB3_38
.LBB3_38:                               # %cond.end
                                        #   in Loop: Header=BB3_15 Depth=2
	movq	-480(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)
	jmp	.LBB3_15
.LBB3_39:                               # %for.end
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-176(%rbp), %rdi
	callq	g_list_free
# BB#40:                                # %for.inc.94
                                        #   in Loop: Header=BB3_13 Depth=1
	cmpq	$0, -128(%rbp)
	je	.LBB3_42
# BB#41:                                # %cond.true.96
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	jmp	.LBB3_43
.LBB3_42:                               # %cond.false.98
                                        #   in Loop: Header=BB3_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	jmp	.LBB3_43
.LBB3_43:                               # %cond.end.99
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-488(%rbp), %rax        # 8-byte Reload
	movq	%rax, -128(%rbp)
	jmp	.LBB3_13
.LBB3_44:                               # %for.end.101
	movq	-104(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_tree_model_filter_new
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	callq	gimp_action_view_get_type
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.6, %rcx
	movl	$1, %r8d
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-112(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -80(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-112(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_filter_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_tree_model_filter_set_visible_column
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-80(%rbp), %rcx
	movq	%rax, -512(%rbp)        # 8-byte Spill
	movq	%rcx, -520(%rbp)        # 8-byte Spill
	callq	gimp_action_view_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-512(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 120(%rax)
	movl	-68(%rbp), %r8d
	movq	-80(%rbp), %rax
	movl	%r8d, -524(%rbp)        # 4-byte Spill
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gimp_action_view_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-524(%rbp), %r8d        # 4-byte Reload
	movl	%r8d, 128(%rax)
	movq	-80(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movq	%rax, %rdi
	callq	gtk_tree_view_set_search_column
	callq	gtk_tree_view_column_new
	movabsq	$.L.str.7, %rdi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_tree_view_column_set_title
	callq	gtk_cell_renderer_pixbuf_new
	xorl	%edx, %edx
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	gtk_tree_view_column_pack_start
	movabsq	$.L.str.8, %rdx
	movl	$2, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movb	$0, %al
	callq	gtk_tree_view_column_set_attributes
	callq	gtk_cell_renderer_text_new
	movl	$1, %edx
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	gtk_tree_view_column_pack_start
	movabsq	$.L.str.9, %rdx
	movl	$3, %ecx
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movb	$0, %al
	callq	gtk_tree_view_column_set_attributes
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gtk_tree_view_append_column
	cmpl	$0, -68(%rbp)
	movl	%eax, -556(%rbp)        # 4-byte Spill
	je	.LBB3_46
# BB#45:                                # %if.then.124
	movabsq	$.L.str.10, %rsi
	movabsq	$gimp_action_view_button_press, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rdi
	movq	%rdx, -568(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-568(%rbp), %rcx        # 8-byte Reload
	movq	-568(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.11, %rsi
	movabsq	$gimp_action_view_accel_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movq	%rdi, -576(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-576(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_column_new
	movabsq	$.L.str.12, %rdi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_tree_view_column_set_title
	callq	gtk_cell_renderer_accel_new
	movabsq	$.L.str.13, %rsi
	movl	$2, %edx
	movabsq	$.L.str.14, %rcx
	movl	$1, %r8d
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movl	$1, %edx
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	gtk_tree_view_column_pack_start
	movabsq	$.L.str.15, %rdx
	movl	$6, %ecx
	movabsq	$.L.str.16, %r8
	movl	$7, %r9d
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %r11
	movq	%rsi, -608(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gtk_tree_view_column_set_attributes
	movabsq	$.L.str.17, %rsi
	movabsq	$gimp_action_view_accel_edited, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	-80(%rbp), %r11
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.18, %rsi
	movabsq	$gimp_action_view_accel_cleared, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movq	%rdi, -616(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-616(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_append_column
	movl	%eax, -636(%rbp)        # 4-byte Spill
.LBB3_46:                               # %if.end.133
	callq	gtk_tree_view_column_new
	movabsq	$.L.str.19, %rdi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_tree_view_column_set_title
	callq	gtk_cell_renderer_text_new
	movl	$1, %edx
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	gtk_tree_view_column_pack_start
	movabsq	$.L.str.9, %rdx
	movl	$5, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movb	$0, %al
	callq	gtk_tree_view_column_set_attributes
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gtk_tree_view_append_column
	cmpq	$0, -136(%rbp)
	movl	%eax, -652(%rbp)        # 4-byte Spill
	je	.LBB3_48
# BB#47:                                # %if.then.139
	movq	-80(%rbp), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gimp_action_view_get_type
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_action_view_select_path
	movq	-136(%rbp), %rdi
	callq	gtk_tree_path_free
.LBB3_48:                               # %if.end.142
	movq	-80(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
.LBB3_49:                               # %return
	movq	-48(%rbp), %rax
	addq	$760, %rsp              # imm = 0x2F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_action_view_new, .Lfunc_end3-gimp_action_view_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_action_view_accel_find_func,@function
gimp_action_view_accel_find_func:       # @gimp_action_view_accel_find_func
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	cmpq	-16(%rbp), %rdx
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_action_view_accel_find_func, .Lfunc_end4-gimp_action_view_accel_find_func
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_action_view_button_press,@function
gimp_action_view_button_press:          # @gimp_action_view_button_press
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_tree_view_get_bin_window
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB5_7
.LBB5_2:                                # %if.end
	leaq	-40(%rbp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	cvttsd2si	24(%rsi), %esi
	movq	-24(%rbp), %r8
	cvttsd2si	32(%r8), %eax
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	$0, (%rsp)
	callq	gtk_tree_view_get_path_at_pos
	cmpl	$0, %eax
	je	.LBB5_6
# BB#3:                                 # %if.then.5
	movq	-40(%rbp), %rdi
	callq	gtk_tree_path_get_depth
	cmpl	$1, %eax
	jne	.LBB5_5
# BB#4:                                 # %if.then.9
	movq	-40(%rbp), %rdi
	callq	gtk_tree_path_free
	movl	$0, -4(%rbp)
	jmp	.LBB5_7
.LBB5_5:                                # %if.end.10
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rsi
	movabsq	$gtk_tree_path_free, %rcx
	movq	-40(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	callq	g_object_set_data_full
	movabsq	$.L.str.10, %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_signal_stop_emission_by_name
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$idle_start_editing, %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	g_cclosure_new_object
	movq	%rax, -48(%rbp)
	callq	g_idle_source_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_source_set_closure
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	-56(%rbp), %rdi
	callq	g_source_attach
	movq	-56(%rbp), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	g_source_unref
.LBB5_6:                                # %if.end.16
	movl	$1, -4(%rbp)
.LBB5_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_action_view_button_press, .Lfunc_end5-gimp_action_view_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_action_view_accel_changed,@function
gimp_action_view_accel_changed:         # @gimp_action_view_accel_changed
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_model
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	jmp	.LBB6_20
.LBB6_2:                                # %if.end
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_filter_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_model_filter_get_model
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB6_4
# BB#3:                                 # %if.then.7
	jmp	.LBB6_20
.LBB6_4:                                # %if.end.8
	leaq	-72(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first
	movl	%eax, -76(%rbp)
.LBB6_5:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_7 Depth 2
	cmpl	$0, -76(%rbp)
	je	.LBB6_20
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB6_5 Depth=1
	leaq	-112(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	gtk_tree_model_iter_children
	movl	%eax, -116(%rbp)
.LBB6_7:                                # %for.cond.12
                                        #   Parent Loop BB6_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -116(%rbp)
	je	.LBB6_18
# BB#8:                                 # %for.body.14
                                        #   in Loop: Header=BB6_7 Depth=2
	leaq	-112(%rbp), %rsi
	movl	$8, %edx
	leaq	-128(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	cmpq	$0, -128(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.16
                                        #   in Loop: Header=BB6_7 Depth=2
	movq	-128(%rbp), %rdi
	callq	g_closure_unref
.LBB6_10:                               # %if.end.17
                                        #   in Loop: Header=BB6_7 Depth=2
	movq	-24(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB6_16
# BB#11:                                # %if.then.18
	movabsq	$gimp_action_view_accel_find_func, %rsi
	movl	$0, -140(%rbp)
	movl	$0, -144(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	callq	gtk_accel_group_find
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	je	.LBB6_15
# BB#12:                                # %land.lhs.true
	movq	-136(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB6_15
# BB#13:                                # %land.lhs.true.23
	movq	-136(%rbp), %rax
	movzwl	8(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB6_15
# BB#14:                                # %if.then.25
	movq	-136(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -140(%rbp)
	movq	-136(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -144(%rbp)
.LBB6_15:                               # %if.end.27
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-112(%rbp), %rsi
	movl	$6, %edx
	movl	$7, %r8d
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	-140(%rbp), %r9d
	movl	-144(%rbp), %r10d
	movq	%rax, %rdi
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	%r10d, %r9d
	movl	$-1, (%rsp)
	movb	$0, %al
	callq	gtk_tree_store_set
	jmp	.LBB6_20
.LBB6_16:                               # %if.end.30
                                        #   in Loop: Header=BB6_7 Depth=2
	jmp	.LBB6_17
.LBB6_17:                               # %for.inc
                                        #   in Loop: Header=BB6_7 Depth=2
	leaq	-112(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gtk_tree_model_iter_next
	movl	%eax, -116(%rbp)
	jmp	.LBB6_7
.LBB6_18:                               # %for.end
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_19
.LBB6_19:                               # %for.inc.32
                                        #   in Loop: Header=BB6_5 Depth=1
	leaq	-72(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gtk_tree_model_iter_next
	movl	%eax, -76(%rbp)
	jmp	.LBB6_5
.LBB6_20:                               # %for.end.34
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_action_view_accel_changed, .Lfunc_end6-gimp_action_view_accel_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_action_view_accel_edited,@function
gimp_action_view_accel_edited:          # @gimp_action_view_accel_edited
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
	subq	$224, %rsp
	leaq	-48(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, %rdx
	callq	gimp_action_view_get_accel_action
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_31
.LBB7_2:                                # %if.end
	cmpl	$0, -20(%rbp)
	je	.LBB7_9
# BB#3:                                 # %lor.lhs.false
	cmpl	$65361, -20(%rbp)       # imm = 0xFF51
	je	.LBB7_9
# BB#4:                                 # %lor.lhs.false.2
	cmpl	$65363, -20(%rbp)       # imm = 0xFF53
	je	.LBB7_9
# BB#5:                                 # %lor.lhs.false.4
	cmpl	$65362, -20(%rbp)       # imm = 0xFF52
	je	.LBB7_9
# BB#6:                                 # %lor.lhs.false.6
	cmpl	$65364, -20(%rbp)       # imm = 0xFF54
	je	.LBB7_9
# BB#7:                                 # %lor.lhs.false.8
	cmpl	$32, -20(%rbp)
	je	.LBB7_9
# BB#8:                                 # %lor.lhs.false.10
	cmpl	$65408, -20(%rbp)       # imm = 0xFF80
	jne	.LBB7_10
.LBB7_9:                                # %if.then.12
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	40(%rcx), %rdi
	movq	-40(%rbp), %rcx
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.22, %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %edx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
	jmp	.LBB7_31
.LBB7_10:                               # %if.else
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	gtk_accel_map_change_entry
	cmpl	$0, %eax
	jne	.LBB7_30
# BB#11:                                # %if.then.17
	movq	$0, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_model
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_filter_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_model_filter_get_model
	leaq	-104(%rbp), %rsi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first
	movl	%eax, -108(%rbp)
.LBB7_12:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_14 Depth 2
	cmpl	$0, -108(%rbp)
	je	.LBB7_24
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB7_12 Depth=1
	leaq	-144(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	movq	-64(%rbp), %rdi
	callq	gtk_tree_model_iter_children
	movl	%eax, -148(%rbp)
.LBB7_14:                               # %for.cond.27
                                        #   Parent Loop BB7_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -148(%rbp)
	je	.LBB7_20
# BB#15:                                # %for.body.29
                                        #   in Loop: Header=BB7_14 Depth=2
	leaq	-144(%rbp), %rsi
	movl	$6, %edx
	leaq	-152(%rbp), %rcx
	movl	$7, %r8d
	leaq	-156(%rbp), %r9
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-64(%rbp), %rdi
	movl	$-1, (%rsp)
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get
	movl	-20(%rbp), %edx
	cmpl	-152(%rbp), %edx
	jne	.LBB7_18
# BB#16:                                # %land.lhs.true
                                        #   in Loop: Header=BB7_14 Depth=2
	movl	-24(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jne	.LBB7_18
# BB#17:                                # %if.then.32
                                        #   in Loop: Header=BB7_12 Depth=1
	leaq	-144(%rbp), %rsi
	movl	$1, %edx
	leaq	-72(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-64(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	jmp	.LBB7_20
.LBB7_18:                               # %if.end.33
                                        #   in Loop: Header=BB7_14 Depth=2
	jmp	.LBB7_19
.LBB7_19:                               # %for.inc
                                        #   in Loop: Header=BB7_14 Depth=2
	leaq	-144(%rbp), %rsi
	movq	-64(%rbp), %rdi
	callq	gtk_tree_model_iter_next
	movl	%eax, -148(%rbp)
	jmp	.LBB7_14
.LBB7_20:                               # %for.end
                                        #   in Loop: Header=BB7_12 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB7_22
# BB#21:                                # %if.then.36
	jmp	.LBB7_24
.LBB7_22:                               # %if.end.37
                                        #   in Loop: Header=BB7_12 Depth=1
	jmp	.LBB7_23
.LBB7_23:                               # %for.inc.38
                                        #   in Loop: Header=BB7_12 Depth=1
	leaq	-104(%rbp), %rsi
	movq	-64(%rbp), %rdi
	callq	gtk_tree_model_iter_next
	movl	%eax, -108(%rbp)
	jmp	.LBB7_12
.LBB7_24:                               # %for.end.40
	movq	-72(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB7_29
# BB#25:                                # %if.then.42
	cmpq	$0, -72(%rbp)
	je	.LBB7_27
# BB#26:                                # %if.then.44
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-56(%rbp), %r8
	callq	gimp_action_view_conflict_confirm
	movq	-72(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_unref
	jmp	.LBB7_28
.LBB7_27:                               # %if.else.45
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	40(%rcx), %rdi
	movq	-40(%rbp), %rcx
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %edx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
.LBB7_28:                               # %if.end.50
	jmp	.LBB7_29
.LBB7_29:                               # %if.end.51
	jmp	.LBB7_30
.LBB7_30:                               # %if.end.52
	jmp	.LBB7_31
.LBB7_31:                               # %if.end.53
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_action_view_accel_edited, .Lfunc_end7-gimp_action_view_accel_edited
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_action_view_accel_cleared,@function
gimp_action_view_accel_cleared:         # @gimp_action_view_accel_cleared
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
	subq	$64, %rsp
	leaq	-32(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, %rdx
	callq	gimp_action_view_get_accel_action
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	jmp	.LBB8_4
.LBB8_2:                                # %if.end
	xorl	%eax, %eax
	movq	-40(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gtk_accel_map_change_entry
	cmpl	$0, %eax
	jne	.LBB8_4
# BB#3:                                 # %if.then.3
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	40(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.32, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$2, %edx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
.LBB8_4:                                # %if.end.6
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_action_view_accel_cleared, .Lfunc_end8-gimp_action_view_accel_cleared
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI9_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	gimp_action_view_select_path,@function
gimp_action_view_select_path:           # @gimp_action_view_select_path
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_tree_path_copy
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_tree_path_up
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gtk_tree_view_expand_row
	movq	-32(%rbp), %rdi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	gtk_tree_path_free
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gtk_tree_view_set_cursor
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	$1, %ecx
	movss	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gtk_tree_view_scroll_to_cell
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_action_view_select_path, .Lfunc_end9-gimp_action_view_select_path
	.cfi_endproc

	.globl	gimp_action_view_set_filter
	.align	16, 0x90
	.type	gimp_action_view_set_filter,@function
gimp_action_view_set_filter:            # @gimp_action_view_set_filter
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -88(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_action_view_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -108(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_view_set_filter, %rsi
	movabsq	$.L.str.20, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_43
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_model
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_filter_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_model_filter_get_model
	movq	%rax, -40(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB10_15
# BB#13:                                # %land.lhs.true.18
	movq	-16(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	jne	.LBB10_15
# BB#14:                                # %if.then.21
	movq	$0, -16(%rbp)
.LBB10_15:                              # %if.end.22
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	$0, 136(%rax)
	cmpq	$0, -16(%rbp)
	je	.LBB10_17
# BB#16:                                # %if.then.26
	movq	$-1, %rsi
	movq	-16(%rbp), %rdi
	callq	g_utf8_casefold
	movq	-8(%rbp), %rsi
	movq	%rax, 136(%rsi)
.LBB10_17:                              # %if.end.29
	movq	-8(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-72(%rbp), %rdx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB10_19
# BB#18:                                # %if.then.35
	leaq	-72(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gtk_tree_model_get_path
	movq	%rax, -120(%rbp)
	movq	-32(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	gtk_tree_row_reference_new
	movq	%rax, -88(%rbp)
.LBB10_19:                              # %if.end.39
	leaq	-72(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first
	movl	%eax, -76(%rbp)
.LBB10_20:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_22 Depth 2
	cmpl	$0, -76(%rbp)
	je	.LBB10_36
# BB#21:                                # %for.body
                                        #   in Loop: Header=BB10_20 Depth=1
	leaq	-152(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movl	$0, -160(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_tree_model_iter_children
	movl	%eax, -156(%rbp)
.LBB10_22:                              # %for.cond.46
                                        #   Parent Loop BB10_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -156(%rbp)
	je	.LBB10_34
# BB#23:                                # %for.body.48
                                        #   in Loop: Header=BB10_22 Depth=2
	movl	$1, -164(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB10_30
# BB#24:                                # %if.then.52
                                        #   in Loop: Header=BB10_22 Depth=2
	leaq	-152(%rbp), %rsi
	movl	$4, %edx
	leaq	-176(%rbp), %rcx
	movl	$5, %r8d
	leaq	-184(%rbp), %r9
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-40(%rbp), %rdi
	movl	$-1, (%rsp)
	movl	%eax, -220(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get
	xorl	%edx, %edx
	movb	%dl, %al
	cmpq	$0, -176(%rbp)
	movb	%al, -221(%rbp)         # 1-byte Spill
	je	.LBB10_29
# BB#25:                                # %land.lhs.true.56
                                        #   in Loop: Header=BB10_22 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -184(%rbp)
	movb	%cl, -221(%rbp)         # 1-byte Spill
	je	.LBB10_29
# BB#26:                                # %land.rhs
                                        #   in Loop: Header=BB10_22 Depth=2
	movq	-176(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	136(%rax), %rsi
	callq	strstr
	movb	$1, %cl
	cmpq	$0, %rax
	movb	%cl, -222(%rbp)         # 1-byte Spill
	jne	.LBB10_28
# BB#27:                                # %lor.rhs
                                        #   in Loop: Header=BB10_22 Depth=2
	movq	-184(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	136(%rax), %rsi
	callq	strstr
	cmpq	$0, %rax
	setne	%cl
	movb	%cl, -222(%rbp)         # 1-byte Spill
.LBB10_28:                              # %lor.end
                                        #   in Loop: Header=BB10_22 Depth=2
	movb	-222(%rbp), %al         # 1-byte Reload
	movb	%al, -221(%rbp)         # 1-byte Spill
.LBB10_29:                              # %land.end
                                        #   in Loop: Header=BB10_22 Depth=2
	movb	-221(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -164(%rbp)
	movq	-176(%rbp), %rdi
	callq	g_free
	movq	-184(%rbp), %rdi
	callq	g_free
.LBB10_30:                              # %if.end.64
                                        #   in Loop: Header=BB10_22 Depth=2
	movq	-40(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-152(%rbp), %rsi
	xorl	%edx, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movl	-164(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_store_set
	cmpl	$0, -164(%rbp)
	je	.LBB10_32
# BB#31:                                # %if.then.68
                                        #   in Loop: Header=BB10_22 Depth=2
	movl	-160(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -160(%rbp)
.LBB10_32:                              # %if.end.69
                                        #   in Loop: Header=BB10_22 Depth=2
	jmp	.LBB10_33
.LBB10_33:                              # %for.inc
                                        #   in Loop: Header=BB10_22 Depth=2
	leaq	-152(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gtk_tree_model_iter_next
	movl	%eax, -156(%rbp)
	jmp	.LBB10_22
.LBB10_34:                              # %for.end
                                        #   in Loop: Header=BB10_20 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-72(%rbp), %rsi
	xorl	%edx, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	cmpl	$0, -160(%rbp)
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_store_set
# BB#35:                                # %for.inc.74
                                        #   in Loop: Header=BB10_20 Depth=1
	leaq	-72(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gtk_tree_model_iter_next
	movl	%eax, -76(%rbp)
	jmp	.LBB10_20
.LBB10_36:                              # %for.end.76
	movq	-8(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB10_38
# BB#37:                                # %if.then.79
	movq	-8(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_expand_all
	jmp	.LBB10_39
.LBB10_38:                              # %if.else.82
	movq	-8(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_collapse_all
.LBB10_39:                              # %if.end.85
	movq	-8(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_columns_autosize
	cmpq	$0, -88(%rbp)
	je	.LBB10_43
# BB#40:                                # %if.then.89
	movq	-88(%rbp), %rdi
	callq	gtk_tree_row_reference_valid
	cmpl	$0, %eax
	je	.LBB10_42
# BB#41:                                # %if.then.92
	movq	-88(%rbp), %rdi
	callq	gtk_tree_row_reference_get_path
	movq	%rax, -192(%rbp)
	movq	-8(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	gimp_action_view_select_path
	movq	-192(%rbp), %rdi
	callq	gtk_tree_path_free
.LBB10_42:                              # %if.end.96
	movq	-88(%rbp), %rdi
	callq	gtk_tree_row_reference_free
.LBB10_43:                              # %if.end.97
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_action_view_set_filter, .Lfunc_end10-gimp_action_view_set_filter
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_action_view_class_init,@function
gimp_action_view_class_init:            # @gimp_action_view_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_action_view_finalize, %rsi
	movabsq	$gimp_action_view_dispose, %rdi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 48(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_action_view_class_init, .Lfunc_end11-gimp_action_view_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_action_view_dispose,@function
gimp_action_view_dispose:               # @gimp_action_view_dispose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_action_view_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB12_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	cmpl	$0, 128(%rax)
	je	.LBB12_3
# BB#2:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_ui_manager_get_accel_group
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_action_view_accel_changed, %rdi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %r9
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB12_3:                               # %if.end
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 120(%rax)
.LBB12_4:                               # %if.end.11
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_action_view_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_action_view_dispose, .Lfunc_end12-gimp_action_view_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_action_view_finalize,@function
gimp_action_view_finalize:              # @gimp_action_view_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_action_view_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	136(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 136(%rax)
.LBB13_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_action_view_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_action_view_finalize, .Lfunc_end13-gimp_action_view_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	idle_start_editing,@function
idle_start_editing:                     # @idle_start_editing
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_grab_focus
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_tree_view_get_column
	movl	$1, %ecx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_tree_view_set_cursor
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB14_2:                               # %if.end
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	idle_start_editing, .Lfunc_end14-idle_start_editing
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_action_view_get_accel_action,@function
gimp_action_view_get_accel_action:      # @gimp_action_view_get_accel_action
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_model
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB15_8
.LBB15_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gtk_tree_path_new_from_string
	leaq	-80(%rbp), %rsi
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	gtk_tree_model_get_iter
	cmpl	$0, %eax
	je	.LBB15_6
# BB#3:                                 # %if.then.6
	leaq	-80(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	cmpq	$0, -88(%rbp)
	jne	.LBB15_5
# BB#4:                                 # %if.then.8
	jmp	.LBB15_7
.LBB15_5:                               # %if.end.9
	movq	-48(%rbp), %rdi
	callq	gtk_tree_path_free
	movq	-88(%rbp), %rdi
	callq	g_object_unref
	movq	-88(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, (%rax)
	movq	-88(%rbp), %rdi
	callq	gtk_action_get_accel_path
	movq	%rax, -8(%rbp)
	jmp	.LBB15_8
.LBB15_6:                               # %if.end.11
	jmp	.LBB15_7
.LBB15_7:                               # %done
	movq	-48(%rbp), %rdi
	callq	gtk_tree_path_free
	movq	$0, -8(%rbp)
.LBB15_8:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_action_view_get_accel_action, .Lfunc_end15-gimp_action_view_get_accel_action
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_action_view_conflict_confirm,@function
gimp_action_view_conflict_confirm:      # @gimp_action_view_conflict_confirm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$208, %rsp
.Ltmp56:
	.cfi_offset %rbx, -32
.Ltmp57:
	.cfi_offset %r14, -24
	movabsq	$.L.str.24, %rax
	leaq	-56(%rbp), %r9
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movq	%r9, %rdx
	movq	%r11, %rcx
	movb	$0, %al
	callq	g_object_get
	movq	-32(%rbp), %rdi
	callq	gtk_action_get_label
	movq	%rax, %rdi
	callq	gimp_strip_uline
	movq	%rax, -64(%rbp)
	movl	-36(%rbp), %edi
	movl	-40(%rbp), %esi
	callq	gtk_accelerator_get_label
	movl	$24, %esi
	movl	%esi, %edi
	movq	%rax, -72(%rbp)
	callq	g_slice_alloc
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rdi
	callq	g_strdup
	movabsq	$.L.str.25, %rdi
	movq	-80(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movl	-36(%rbp), %esi
	movq	-80(%rbp), %rax
	movl	%esi, 16(%rax)
	movl	-40(%rbp), %esi
	movq	-80(%rbp), %rax
	movl	%esi, 20(%rax)
	callq	gettext
	movq	-24(%rbp), %rcx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movabsq	$.L.str.28, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.26, %rsi
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	xorl	%r10d, %r10d
	movl	%r10d, %r9d
	movabsq	$.L.str.27, %rdx
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %r11        # 8-byte Reload
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%r11, %rdx
	movq	-128(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -132(%rbp)        # 4-byte Spill
	movl	%r10d, -136(%rbp)       # 4-byte Spill
	callq	gimp_message_dialog_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_action_view_conflict_response, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %r11
	movq	-80(%rbp), %r14
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	%r14, %rcx
	callq	g_signal_connect_data
	movq	-88(%rbp), %rcx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.30, %rdi
	movq	264(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	40(%rsi), %r8
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message_box_set_primary_text
	movabsq	$.L.str.31, %rdi
	movq	-96(%rbp), %rcx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-64(%rbp), %rdx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message_box_set_text
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_action_view_conflict_confirm, .Lfunc_end16-gimp_action_view_conflict_confirm
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_action_view_conflict_response,@function
gimp_action_view_conflict_response:     # @gimp_action_view_conflict_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	cmpl	$-5, -12(%rbp)
	jne	.LBB17_4
# BB#1:                                 # %if.then
	movl	$1, %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	16(%rax), %esi
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	callq	gtk_accel_map_change_entry
	cmpl	$0, %eax
	jne	.LBB17_3
# BB#2:                                 # %if.then.1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	40(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$2, %edx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
.LBB17_3:                               # %if.end
	jmp	.LBB17_4
.LBB17_4:                               # %if.end.4
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free
# BB#5:                                 # %do.body
	movl	$24, %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#6:                                 # %do.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_action_view_conflict_response, .Lfunc_end17-gimp_action_view_conflict_response
	.cfi_endproc

	.type	gimp_action_view_get_type.g_define_type_id__volatile,@object # @gimp_action_view_get_type.g_define_type_id__volatile
	.local	gimp_action_view_get_type.g_define_type_id__volatile
	.comm	gimp_action_view_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpActionView"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_action_view_new,@object # @__func__.gimp_action_view_new
.L__func__.gimp_action_view_new:
	.asciz	"gimp_action_view_new"
	.size	.L__func__.gimp_action_view_new, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_UI_MANAGER (manager)"
	.size	.L.str.2, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"-menu"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"-popup"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"model"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"rules-hint"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Action"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"stock-id"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"text"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"button-press-event"
	.size	.L.str.10, 19

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"accel-changed"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Shortcut"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"mode"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"editable"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"accel-key"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"accel-mods"
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"accel-edited"
	.size	.L.str.17, 13

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"accel-cleared"
	.size	.L.str.18, 14

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Name"
	.size	.L.str.19, 5

	.type	.L__func__.gimp_action_view_set_filter,@object # @__func__.gimp_action_view_set_filter
.L__func__.gimp_action_view_set_filter:
	.asciz	"gimp_action_view_set_filter"
	.size	.L__func__.gimp_action_view_set_filter, 28

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"GIMP_IS_ACTION_VIEW (view)"
	.size	.L.str.20, 27

	.type	gimp_action_view_parent_class,@object # @gimp_action_view_parent_class
	.local	gimp_action_view_parent_class
	.comm	gimp_action_view_parent_class,8,8
	.type	GimpActionView_private_offset,@object # @GimpActionView_private_offset
	.local	GimpActionView_private_offset
	.comm	GimpActionView_private_offset,4,4
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"start-editing-path"
	.size	.L.str.21, 19

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Invalid shortcut."
	.size	.L.str.22, 18

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Changing shortcut failed."
	.size	.L.str.23, 26

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"action-group"
	.size	.L.str.24, 13

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Conflicting Shortcuts"
	.size	.L.str.25, 22

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp-warning"
	.size	.L.str.26, 13

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gtk-cancel"
	.size	.L.str.27, 11

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"_Reassign shortcut"
	.size	.L.str.28, 19

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"response"
	.size	.L.str.29, 9

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Shortcut \"%s\" is already taken by \"%s\" from the \"%s\" group."
	.size	.L.str.30, 60

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Reassigning the shortcut will cause it to be removed from \"%s\"."
	.size	.L.str.31, 64

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Removing shortcut failed."
	.size	.L.str.32, 26


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
