	.text
	.file	"gimpsamplepointeditor.bc"
	.globl	gimp_sample_point_editor_get_type
	.align	16, 0x90
	.type	gimp_sample_point_editor_get_type,@function
gimp_sample_point_editor_get_type:      # @gimp_sample_point_editor_get_type
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
	movq	gimp_sample_point_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_sample_point_editor_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_image_editor_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$832, %edx              # imm = 0x340
	movabsq	$gimp_sample_point_editor_class_intern_init, %rdi
	movl	$216, %r8d
	movabsq	$gimp_sample_point_editor_init, %rcx
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
	movabsq	$gimp_sample_point_editor_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_sample_point_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_sample_point_editor_get_type, .Lfunc_end0-gimp_sample_point_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sample_point_editor_class_intern_init,@function
gimp_sample_point_editor_class_intern_init: # @gimp_sample_point_editor_class_intern_init
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
	movq	%rax, gimp_sample_point_editor_parent_class
	cmpl	$0, GimpSamplePointEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpSamplePointEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_sample_point_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_sample_point_editor_class_intern_init, .Lfunc_end1-gimp_sample_point_editor_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sample_point_editor_init,@function
gimp_sample_point_editor_init:          # @gimp_sample_point_editor_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$160, %rsp
.Ltmp9:
	.cfi_offset %rbx, -48
.Ltmp10:
	.cfi_offset %r12, -40
.Ltmp11:
	.cfi_offset %r14, -32
.Ltmp12:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movq	-40(%rbp), %rdi
	movl	$1, 212(%rdi)
	movq	-40(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rsi
	leaq	-44(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_widget_style_get
	movl	$2, %r8d
	movl	$1, %edx
	movl	%r8d, %edi
	movl	%r8d, %esi
	callq	gtk_table_new
	movq	-40(%rbp), %rcx
	movq	%rax, 152(%rcx)
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	-44(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	-44(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-40(%rbp), %rcx
	movq	152(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -100(%rbp)        # 4-byte Spill
	movl	-100(%rbp), %ecx        # 4-byte Reload
	movl	-100(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gtk_widget_show
	movl	$0, -48(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -48(%rbp)
	jge	.LBB2_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	callq	gimp_color_frame_get_type
	movabsq	$.L.str.18, %rsi
	xorl	%edx, %edx
	movabsq	$.L.str.19, %rcx
	movl	$1, %r8d
	movabsq	$.L.str.20, %r9
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.22, %r10
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movl	-48(%rbp), %r11d
	addl	$1, %r11d
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r11d, (%rsp)
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%r10, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%rbx, -120(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$5, %edx
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rsi
	movl	-56(%rbp), %r11d
	movl	-56(%rbp), %r14d
	addl	$1, %r14d
	movl	-52(%rbp), %r15d
	movl	-52(%rbp), %r12d
	addl	$1, %r12d
	movq	%rax, %rdi
	movl	%edx, -132(%rbp)        # 4-byte Spill
	movl	%r11d, %edx
	movl	%r14d, %ecx
	movl	%r8d, -136(%rbp)        # 4-byte Spill
	movl	%r15d, %r8d
	movl	%r12d, %r9d
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rax
	movslq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	%rax, 160(%rdi,%rsi,8)
	movl	-56(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -56(%rbp)
	cmpl	$1, -56(%rbp)
	jle	.LBB2_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$0, -56(%rbp)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
.LBB2_4:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_5
.LBB2_5:                                # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB2_1
.LBB2_6:                                # %for.end
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_sample_point_editor_init, .Lfunc_end2-gimp_sample_point_editor_init
	.cfi_endproc

	.globl	gimp_sample_point_editor_new
	.align	16, 0x90
	.type	gimp_sample_point_editor_new,@function
gimp_sample_point_editor_new:           # @gimp_sample_point_editor_new
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_menu_factory_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_sample_point_editor_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_sample_point_editor_get_type
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.5, %r8
	movabsq	$.L.str.6, %r9
	movabsq	$.L.str.7, %rdx
	xorl	%edi, %edi
	movl	%edi, %r10d
	movq	-16(%rbp), %r11
	movq	%rax, %rdi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%r11, %rdx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movq	%r10, -56(%rbp)         # 8-byte Spill
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB3_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_sample_point_editor_new, .Lfunc_end3-gimp_sample_point_editor_new
	.cfi_endproc

	.globl	gimp_sample_point_editor_set_sample_merged
	.align	16, 0x90
	.type	gimp_sample_point_editor_set_sample_merged,@function
gimp_sample_point_editor_set_sample_merged: # @gimp_sample_point_editor_set_sample_merged
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_sample_point_editor_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_sample_point_editor_set_sample_merged, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_18
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdx
	movl	212(%rdx), %eax
	cmpl	-12(%rbp), %eax
	je	.LBB4_18
# BB#13:                                # %if.then.14
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 212(%rcx)
	movl	$0, -44(%rbp)
.LBB4_14:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -44(%rbp)
	jge	.LBB4_17
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB4_14 Depth=1
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	$1, 192(%rcx,%rax,4)
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB4_14 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB4_14
.LBB4_17:                               # %for.end
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rdi
	callq	gimp_sample_point_editor_dirty
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB4_18:                               # %if.end.19
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_sample_point_editor_set_sample_merged, .Lfunc_end4-gimp_sample_point_editor_set_sample_merged
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sample_point_editor_dirty,@function
gimp_sample_point_editor_dirty:         # @gimp_sample_point_editor_dirty
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jl	.LBB5_2
# BB#1:                                 # %if.then
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	$1, 192(%rcx,%rax,4)
.LBB5_2:                                # %if.end
	movq	-8(%rbp), %rax
	cmpl	$0, 208(%rax)
	je	.LBB5_4
# BB#3:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movl	208(%rax), %edi
	callq	g_source_remove
	movl	%eax, -16(%rbp)         # 4-byte Spill
.LBB5_4:                                # %if.end.3
	movabsq	$gimp_sample_point_editor_update, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_idle_add
	movq	-8(%rbp), %rcx
	movl	%eax, 208(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_sample_point_editor_dirty, .Lfunc_end5-gimp_sample_point_editor_dirty
	.cfi_endproc

	.globl	gimp_sample_point_editor_get_sample_merged
	.align	16, 0x90
	.type	gimp_sample_point_editor_get_sample_merged,@function
gimp_sample_point_editor_get_sample_merged: # @gimp_sample_point_editor_get_sample_merged
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_sample_point_editor_get_type
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
	movabsq	$.L__func__.gimp_sample_point_editor_get_sample_merged, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	212(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB6_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_sample_point_editor_get_sample_merged, .Lfunc_end6-gimp_sample_point_editor_get_sample_merged
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sample_point_editor_class_init,@function
gimp_sample_point_editor_class_init:    # @gimp_sample_point_editor_class_init
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
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
.Ltmp28:
	.cfi_offset %rbx, -32
.Ltmp29:
	.cfi_offset %r14, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.9, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %ecx
	movl	$231, %r8d
	movabsq	$gimp_sample_point_editor_set_image, %rdx
	movabsq	$gimp_sample_point_editor_style_set, %r9
	movabsq	$gimp_sample_point_editor_set_property, %r10
	movabsq	$gimp_sample_point_editor_get_property, %r11
	movabsq	$gimp_sample_point_editor_dispose, %rbx
	movabsq	$gimp_sample_point_editor_constructed, %r14
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%r14, 72(%rax)
	movq	-32(%rbp), %rax
	movq	%rbx, 40(%rax)
	movq	-32(%rbp), %rax
	movq	%r11, 32(%rax)
	movq	-32(%rbp), %rax
	movq	%r10, 24(%rax)
	movq	-40(%rbp), %rax
	movq	%r9, 280(%rax)
	movq	-48(%rbp), %rax
	movq	%rdx, 824(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$1, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_sample_point_editor_class_init, .Lfunc_end7-gimp_sample_point_editor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sample_point_editor_constructed,@function
gimp_sample_point_editor_constructed:   # @gimp_sample_point_editor_constructed
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
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	gimp_sample_point_editor_parent_class, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_sample_point_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB8_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_sample_point_editor_constructed, .Lfunc_end8-gimp_sample_point_editor_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sample_point_editor_dispose,@function
gimp_sample_point_editor_dispose:       # @gimp_sample_point_editor_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_sample_point_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 208(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	208(%rax), %edi
	callq	g_source_remove
	movq	-16(%rbp), %rcx
	movl	$0, 208(%rcx)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB9_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_sample_point_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_sample_point_editor_dispose, .Lfunc_end9-gimp_sample_point_editor_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sample_point_editor_get_property,@function
gimp_sample_point_editor_get_property:  # @gimp_sample_point_editor_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_sample_point_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB10_2
	jmp	.LBB10_1
.LBB10_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	212(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB10_5
.LBB10_2:                               # %sw.default
	jmp	.LBB10_3
.LBB10_3:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$223, %edx
	movabsq	$.L.str.12, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB10_5
.LBB10_5:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_sample_point_editor_get_property, .Lfunc_end10-gimp_sample_point_editor_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sample_point_editor_set_property,@function
gimp_sample_point_editor_set_property:  # @gimp_sample_point_editor_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_sample_point_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB11_2
	jmp	.LBB11_1
.LBB11_1:                               # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_sample_point_editor_set_sample_merged
	jmp	.LBB11_5
.LBB11_2:                               # %sw.default
	jmp	.LBB11_3
.LBB11_3:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movq	%r9, -104(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$204, %edx
	movabsq	$.L.str.12, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB11_5
.LBB11_5:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_sample_point_editor_set_property, .Lfunc_end11-gimp_sample_point_editor_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sample_point_editor_style_set,@function
gimp_sample_point_editor_style_set:     # @gimp_sample_point_editor_style_set
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_sample_point_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	gimp_sample_point_editor_parent_class, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movabsq	$.L.str.13, %rsi
	leaq	-28(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	gtk_widget_style_get
	movq	-24(%rbp), %rcx
	movq	152(%rcx), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	-28(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	-28(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_sample_point_editor_style_set, .Lfunc_end12-gimp_sample_point_editor_style_set
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sample_point_editor_set_image,@function
gimp_sample_point_editor_set_image:     # @gimp_sample_point_editor_set_image
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_sample_point_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_sample_point_editor_point_added, %rdx
	movq	-8(%rbp), %rdi
	movq	144(%rdi), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_sample_point_editor_point_removed, %rdi
	movq	-8(%rbp), %r9
	movq	144(%r9), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_sample_point_editor_point_moved, %rdi
	movq	-8(%rbp), %r9
	movq	144(%r9), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movq	144(%rdi), %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gimp_image_get_projection
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_sample_point_editor_proj_update, %rdi
	movq	-24(%rbp), %r9
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB13_2:                               # %if.end
	movq	gimp_sample_point_editor_parent_class, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	824(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	cmpq	$0, -16(%rbp)
	je	.LBB13_4
# BB#3:                                 # %if.then.15
	movabsq	$.L.str.14, %rsi
	movabsq	$gimp_sample_point_editor_point_added, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.15, %rsi
	movabsq	$gimp_sample_point_editor_point_removed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.16, %rsi
	movabsq	$gimp_sample_point_editor_point_moved, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-16(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_image_get_projection
	movabsq	$.L.str.17, %rsi
	movabsq	$gimp_sample_point_editor_proj_update, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB13_4:                               # %if.end.21
	movq	-24(%rbp), %rdi
	callq	gimp_sample_point_editor_points_changed
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_sample_point_editor_set_image, .Lfunc_end13-gimp_sample_point_editor_set_image
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB14_2
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
.LBB14_2:                               # %entry
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
.Lfunc_end14:
	.size	g_warning, .Lfunc_end14-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sample_point_editor_point_added,@function
gimp_sample_point_editor_point_added:   # @gimp_sample_point_editor_point_added
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_sample_point_editor_points_changed
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_sample_point_editor_point_added, .Lfunc_end15-gimp_sample_point_editor_point_added
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sample_point_editor_point_removed,@function
gimp_sample_point_editor_point_removed: # @gimp_sample_point_editor_point_removed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_sample_point_editor_points_changed
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_sample_point_editor_point_removed, .Lfunc_end16-gimp_sample_point_editor_point_removed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sample_point_editor_point_moved,@function
gimp_sample_point_editor_point_moved:   # @gimp_sample_point_editor_point_moved
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_sample_points
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	g_list_index
	movl	%eax, -28(%rbp)
	cmpl	$4, -28(%rbp)
	jge	.LBB17_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_sample_point_editor_dirty
.LBB17_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_sample_point_editor_point_moved, .Lfunc_end17-gimp_sample_point_editor_point_moved
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sample_point_editor_proj_update,@function
gimp_sample_point_editor_proj_update:   # @gimp_sample_point_editor_proj_update
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
	subq	$112, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movl	$0, -60(%rbp)
	movq	-48(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gimp_image_get_sample_points
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_list_length
	movl	$4, %ecx
	cmpl	%eax, %ecx
	jae	.LBB18_2
# BB#1:                                 # %cond.true
	movl	$4, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB18_3
.LBB18_2:                               # %cond.false
	movq	-56(%rbp), %rdi
	callq	g_list_length
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB18_3:                               # %cond.end
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	$0, -76(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, -72(%rbp)
.LBB18_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB18_15
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB18_4 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	8(%rax), %ecx
	cmpl	-16(%rbp), %ecx
	jl	.LBB18_10
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB18_4 Depth=1
	movq	-88(%rbp), %rax
	movl	8(%rax), %ecx
	movl	-16(%rbp), %edx
	addl	-24(%rbp), %edx
	cmpl	%edx, %ecx
	jge	.LBB18_10
# BB#7:                                 # %land.lhs.true.11
                                        #   in Loop: Header=BB18_4 Depth=1
	movq	-88(%rbp), %rax
	movl	12(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jl	.LBB18_10
# BB#8:                                 # %land.lhs.true.14
                                        #   in Loop: Header=BB18_4 Depth=1
	movq	-88(%rbp), %rax
	movl	12(%rax), %ecx
	movl	-20(%rbp), %edx
	addl	-28(%rbp), %edx
	cmpl	%edx, %ecx
	jge	.LBB18_10
# BB#9:                                 # %if.then
                                        #   in Loop: Header=BB18_4 Depth=1
	movq	-40(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	gimp_sample_point_editor_dirty
.LBB18_10:                              # %if.end
                                        #   in Loop: Header=BB18_4 Depth=1
	jmp	.LBB18_11
.LBB18_11:                              # %for.inc
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB18_13
# BB#12:                                # %cond.true.18
                                        #   in Loop: Header=BB18_4 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB18_14
.LBB18_13:                              # %cond.false.19
                                        #   in Loop: Header=BB18_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB18_14
.LBB18_14:                              # %cond.end.20
                                        #   in Loop: Header=BB18_4 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	jmp	.LBB18_4
.LBB18_15:                              # %for.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_sample_point_editor_proj_update, .Lfunc_end18-gimp_sample_point_editor_proj_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sample_point_editor_points_changed,@function
gimp_sample_point_editor_points_changed: # @gimp_sample_point_editor_points_changed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movl	$0, -28(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB19_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gimp_image_get_sample_points
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_list_length
	movl	$4, %ecx
	cmpl	%eax, %ecx
	jae	.LBB19_3
# BB#2:                                 # %cond.true
	movl	$4, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB19_4
.LBB19_3:                               # %cond.false
	movq	-24(%rbp), %rdi
	callq	g_list_length
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB19_4:                               # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -28(%rbp)
.LBB19_5:                               # %if.end
	movl	$0, -32(%rbp)
.LBB19_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB19_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB19_6 Depth=1
	movl	$1, %esi
	movslq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	160(%rcx,%rax,8), %rdi
	callq	gtk_widget_set_sensitive
	movslq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	$1, 192(%rcx,%rax,4)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB19_6 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB19_6
.LBB19_9:                               # %for.end
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB19_10:                              # %for.cond.9
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -32(%rbp)
	jge	.LBB19_13
# BB#11:                                # %for.body.11
                                        #   in Loop: Header=BB19_10 Depth=1
	xorl	%esi, %esi
	movslq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	160(%rcx,%rax,8), %rdi
	callq	gtk_widget_set_sensitive
	movslq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	160(%rcx,%rax,8), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_frame_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_color_frame_set_invalid
	movslq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	$0, 192(%rcx,%rax,4)
# BB#12:                                # %for.inc.23
                                        #   in Loop: Header=BB19_10 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB19_10
.LBB19_13:                              # %for.end.25
	cmpl	$0, -28(%rbp)
	jle	.LBB19_15
# BB#14:                                # %if.then.27
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rdi
	callq	gimp_sample_point_editor_dirty
.LBB19_15:                              # %if.end.28
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_sample_point_editor_points_changed, .Lfunc_end19-gimp_sample_point_editor_points_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sample_point_editor_update,@function
gimp_sample_point_editor_update:        # @gimp_sample_point_editor_update
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
	pushq	%r14
	pushq	%rbx
	subq	$208, %rsp
.Ltmp69:
	.cfi_offset %rbx, -32
.Ltmp70:
	.cfi_offset %r14, -24
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	$0, -52(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, 208(%rax)
	movq	-40(%rbp), %rax
	cmpq	$0, 144(%rax)
	jne	.LBB20_2
# BB#1:                                 # %if.then
	movl	$0, -20(%rbp)
	jmp	.LBB20_18
.LBB20_2:                               # %if.end
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gimp_image_get_sample_points
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_list_length
	movl	$4, %ecx
	cmpl	%eax, %ecx
	jae	.LBB20_4
# BB#3:                                 # %cond.true
	movl	$4, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB20_5
.LBB20_4:                               # %cond.false
	movq	-48(%rbp), %rdi
	callq	g_list_length
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB20_5:                               # %cond.end
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	movl	$0, -68(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -64(%rbp)
.LBB20_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB20_17
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB20_6 Depth=1
	movslq	-68(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpl	$0, 192(%rcx,%rax,4)
	je	.LBB20_12
# BB#8:                                 # %if.then.8
                                        #   in Loop: Header=BB20_6 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movslq	-68(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	$0, 192(%rcx,%rax,4)
	movslq	-68(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	160(%rcx,%rax,8), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_color_frame_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	%edx, %esi
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	leaq	-92(%rbp), %rcx
	leaq	-128(%rbp), %rdi
	leaq	-132(%rbp), %r8
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	-80(%rbp), %r10
	movl	8(%r10), %edx
	movq	-80(%rbp), %r10
	movl	12(%r10), %r11d
	movq	-32(%rbp), %r10
	movl	212(%r10), %ebx
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movq	%r8, -184(%rbp)         # 8-byte Spill
	movl	%ebx, %r8d
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-168(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	-184(%rbp), %r14        # 8-byte Reload
	movq	%r14, 16(%rsp)
	callq	gimp_image_pick_color
	cmpl	$0, %eax
	je	.LBB20_10
# BB#9:                                 # %if.then.19
                                        #   in Loop: Header=BB20_6 Depth=1
	leaq	-128(%rbp), %rdx
	movq	-88(%rbp), %rdi
	movl	-92(%rbp), %esi
	movl	-132(%rbp), %ecx
	callq	gimp_color_frame_set_color
	jmp	.LBB20_11
.LBB20_10:                              # %if.else
                                        #   in Loop: Header=BB20_6 Depth=1
	movq	-88(%rbp), %rdi
	callq	gimp_color_frame_set_invalid
.LBB20_11:                              # %if.end.20
                                        #   in Loop: Header=BB20_6 Depth=1
	jmp	.LBB20_12
.LBB20_12:                              # %if.end.21
                                        #   in Loop: Header=BB20_6 Depth=1
	jmp	.LBB20_13
.LBB20_13:                              # %for.inc
                                        #   in Loop: Header=BB20_6 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB20_15
# BB#14:                                # %cond.true.23
                                        #   in Loop: Header=BB20_6 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB20_16
.LBB20_15:                              # %cond.false.24
                                        #   in Loop: Header=BB20_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB20_16
.LBB20_16:                              # %cond.end.25
                                        #   in Loop: Header=BB20_6 Depth=1
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB20_6
.LBB20_17:                              # %for.end
	movl	$0, -20(%rbp)
.LBB20_18:                              # %return
	movl	-20(%rbp), %eax
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_sample_point_editor_update, .Lfunc_end20-gimp_sample_point_editor_update
	.cfi_endproc

	.type	gimp_sample_point_editor_get_type.g_define_type_id__volatile,@object # @gimp_sample_point_editor_get_type.g_define_type_id__volatile
	.local	gimp_sample_point_editor_get_type.g_define_type_id__volatile
	.comm	gimp_sample_point_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpSamplePointEditor"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_sample_point_editor_new,@object # @__func__.gimp_sample_point_editor_new
.L__func__.gimp_sample_point_editor_new:
	.asciz	"gimp_sample_point_editor_new"
	.size	.L__func__.gimp_sample_point_editor_new, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_MENU_FACTORY (menu_factory)"
	.size	.L.str.2, 36

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"menu-factory"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"menu-identifier"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"<SamplePoints>"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"ui-path"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"/sample-points-popup"
	.size	.L.str.7, 21

	.type	.L__func__.gimp_sample_point_editor_set_sample_merged,@object # @__func__.gimp_sample_point_editor_set_sample_merged
.L__func__.gimp_sample_point_editor_set_sample_merged:
	.asciz	"gimp_sample_point_editor_set_sample_merged"
	.size	.L__func__.gimp_sample_point_editor_set_sample_merged, 43

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_SAMPLE_POINT_EDITOR (editor)"
	.size	.L.str.8, 37

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"sample-merged"
	.size	.L.str.9, 14

	.type	.L__func__.gimp_sample_point_editor_get_sample_merged,@object # @__func__.gimp_sample_point_editor_get_sample_merged
.L__func__.gimp_sample_point_editor_get_sample_merged:
	.asciz	"gimp_sample_point_editor_get_sample_merged"
	.size	.L__func__.gimp_sample_point_editor_get_sample_merged, 43

	.type	gimp_sample_point_editor_parent_class,@object # @gimp_sample_point_editor_parent_class
	.local	gimp_sample_point_editor_parent_class
	.comm	gimp_sample_point_editor_parent_class,8,8
	.type	GimpSamplePointEditor_private_offset,@object # @GimpSamplePointEditor_private_offset
	.local	GimpSamplePointEditor_private_offset
	.comm	GimpSamplePointEditor_private_offset,4,4
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.10, 54

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimpsamplepointeditor.c"
	.size	.L.str.11, 24

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"property"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"content-spacing"
	.size	.L.str.13, 16

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"sample-point-added"
	.size	.L.str.14, 19

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"sample-point-removed"
	.size	.L.str.15, 21

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"sample-point-moved"
	.size	.L.str.16, 19

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"update"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"mode"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"has-number"
	.size	.L.str.19, 11

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"number"
	.size	.L.str.20, 7

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"has-color-area"
	.size	.L.str.21, 15

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"sensitive"
	.size	.L.str.22, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
