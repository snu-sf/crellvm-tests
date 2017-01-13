	.text
	.file	"gimptextbuffer.bc"
	.globl	gimp_text_buffer_get_type
	.align	16, 0x90
	.type	gimp_text_buffer_get_type,@function
gimp_text_buffer_get_type:              # @gimp_text_buffer_get_type
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
	movq	gimp_text_buffer_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_text_buffer_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_text_buffer_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$280, %edx              # imm = 0x118
	movabsq	$gimp_text_buffer_class_intern_init, %rdi
	movl	$176, %r8d
	movabsq	$gimp_text_buffer_init, %rcx
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
	movabsq	$gimp_text_buffer_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_text_buffer_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_text_buffer_get_type, .Lfunc_end0-gimp_text_buffer_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_buffer_class_intern_init,@function
gimp_text_buffer_class_intern_init:     # @gimp_text_buffer_class_intern_init
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
	movq	%rax, gimp_text_buffer_parent_class
	cmpl	$0, GimpTextBuffer_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpTextBuffer_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_text_buffer_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_text_buffer_class_intern_init, .Lfunc_end1-gimp_text_buffer_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_buffer_init,@function
gimp_text_buffer_init:                  # @gimp_text_buffer_init
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rsi
	movabsq	$gimp_text_buffer_serialize, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-24(%rbp), %r8          # 8-byte Reload
	callq	gtk_text_buffer_register_serialize_format
	movq	-8(%rbp), %rcx
	movq	%rax, 168(%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rsi
	movabsq	$gimp_text_buffer_deserialize, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	%rax, %rdi
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	-40(%rbp), %r8          # 8-byte Reload
	callq	gtk_text_buffer_register_deserialize_format
	movq	%rax, -48(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_text_buffer_init, .Lfunc_end2-gimp_text_buffer_init
	.cfi_endproc

	.globl	gimp_text_buffer_new
	.align	16, 0x90
	.type	gimp_text_buffer_new,@function
gimp_text_buffer_new:                   # @gimp_text_buffer_new
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
	callq	gimp_text_buffer_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_text_buffer_new, .Lfunc_end3-gimp_text_buffer_new
	.cfi_endproc

	.globl	gimp_text_buffer_set_text
	.align	16, 0x90
	.type	gimp_text_buffer_set_text,@function
gimp_text_buffer_set_text:              # @gimp_text_buffer_set_text
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_text_buffer_get_type
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
	movabsq	$.L__func__.gimp_text_buffer_set_text, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_15
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	cmpq	$0, -16(%rbp)
	jne	.LBB4_14
# BB#13:                                # %if.then.12
	movabsq	$.L.str.3, %rax
	movq	%rax, -16(%rbp)
.LBB4_14:                               # %if.end.13
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_text_buffer_set_text
	movq	-8(%rbp), %rdi
	callq	gimp_text_buffer_clear_insert_tags
.LBB4_15:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_text_buffer_set_text, .Lfunc_end4-gimp_text_buffer_set_text
	.cfi_endproc

	.globl	gimp_text_buffer_clear_insert_tags
	.align	16, 0x90
	.type	gimp_text_buffer_clear_insert_tags,@function
gimp_text_buffer_clear_insert_tags:     # @gimp_text_buffer_clear_insert_tags
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_text_buffer_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_clear_insert_tags, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rax
	movl	$0, 144(%rax)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	callq	g_list_free
	movq	-8(%rbp), %rax
	movq	160(%rax), %rdi
	callq	g_list_free
	movq	-8(%rbp), %rax
	movq	$0, 152(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 160(%rax)
.LBB5_13:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_text_buffer_clear_insert_tags, .Lfunc_end5-gimp_text_buffer_clear_insert_tags
	.cfi_endproc

	.globl	gimp_text_buffer_get_text
	.align	16, 0x90
	.type	gimp_text_buffer_get_text,@function
gimp_text_buffer_get_text:              # @gimp_text_buffer_get_text
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
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)
	callq	gimp_text_buffer_get_type
	movq	%rax, -192(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -196(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-184(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-192(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -196(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -196(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-196(%rbp), %eax
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_get_text, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-96(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_bounds
	movq	-16(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-96(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_text
	movq	%rax, -8(%rbp)
.LBB6_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_text_buffer_get_text, .Lfunc_end6-gimp_text_buffer_get_text
	.cfi_endproc

	.globl	gimp_text_buffer_set_markup
	.align	16, 0x90
	.type	gimp_text_buffer_set_markup,@function
gimp_text_buffer_set_markup:            # @gimp_text_buffer_set_markup
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
	subq	$368, %rsp              # imm = 0x170
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_text_buffer_get_type
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
	movabsq	$.L__func__.gimp_text_buffer_set_markup, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_18
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_text_buffer_set_text
	cmpq	$0, -16(%rbp)
	je	.LBB7_17
# BB#13:                                # %if.then.12
	movq	$0, -144(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_tag_table
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_text_buffer_new
	leaq	-136(%rbp), %rsi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_text_buffer_get_start_iter
	movq	-8(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-136(%rbp), %rcx
	movq	$-1, %r9
	leaq	-144(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	168(%rdx), %rdx
	movq	-16(%rbp), %r8
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -336(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-336(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	gtk_text_buffer_deserialize
	cmpl	$0, %eax
	jne	.LBB7_15
# BB#14:                                # %if.then.25
	movabsq	$.L.str.4, %rdi
	movq	-144(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_printerr
	leaq	-144(%rbp), %rdi
	callq	g_clear_error
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.26
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_text_buffer_post_deserialize
	leaq	-224(%rbp), %rsi
	leaq	-304(%rbp), %rdx
	movq	-56(%rbp), %rdi
	callq	gtk_text_buffer_get_bounds
	movq	-8(%rbp), %rdx
	movq	%rdx, -344(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-136(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_start_iter
	movq	-8(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-136(%rbp), %rsi
	leaq	-224(%rbp), %rdx
	leaq	-304(%rbp), %rcx
	movq	%rax, %rdi
	callq	gtk_text_buffer_insert_range
.LBB7_16:                               # %if.end.33
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB7_17:                               # %if.end.34
	movq	-8(%rbp), %rdi
	callq	gimp_text_buffer_clear_insert_tags
.LBB7_18:                               # %return
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_text_buffer_set_markup, .Lfunc_end7-gimp_text_buffer_set_markup
	.cfi_endproc

	.globl	gimp_text_buffer_get_markup
	.align	16, 0x90
	.type	gimp_text_buffer_get_markup,@function
gimp_text_buffer_get_markup:            # @gimp_text_buffer_get_markup
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
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -296(%rbp)
	callq	gimp_text_buffer_get_type
	movq	%rax, -304(%rbp)
	cmpq	$0, -296(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -308(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-296(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-296(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-304(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -308(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-296(%rbp), %rdi
	movq	-304(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -308(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-308(%rbp), %eax
	movl	%eax, -312(%rbp)
	cmpl	$0, -312(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_get_markup, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_tag_table
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_new
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-192(%rbp), %rsi
	leaq	-272(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_bounds
	leaq	-112(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gtk_text_buffer_get_start_iter
	leaq	-112(%rbp), %rsi
	leaq	-192(%rbp), %rdx
	leaq	-272(%rbp), %rcx
	movq	-32(%rbp), %rdi
	callq	gtk_text_buffer_insert_range
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_text_buffer_pre_serialize
	leaq	-192(%rbp), %rsi
	leaq	-272(%rbp), %rdx
	movq	-32(%rbp), %rdi
	callq	gtk_text_buffer_get_bounds
	movq	-16(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-192(%rbp), %rcx
	leaq	-272(%rbp), %r8
	leaq	-288(%rbp), %r9
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	168(%rdx), %rdx
	movq	%rax, %rdi
	callq	gtk_text_buffer_serialize
	movq	%rax, -280(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-280(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB8_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_text_buffer_get_markup, .Lfunc_end8-gimp_text_buffer_get_markup
	.cfi_endproc

	.globl	gimp_text_buffer_has_markup
	.align	16, 0x90
	.type	gimp_text_buffer_has_markup,@function
gimp_text_buffer_has_markup:            # @gimp_text_buffer_has_markup
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_text_buffer_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_has_markup, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB9_18
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_start_iter
.LBB9_13:                               # %do.body.13
                                        # =>This Inner Loop Header: Depth=1
	leaq	-96(%rbp), %rdi
	callq	gtk_text_iter_get_tags
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.LBB9_15
# BB#14:                                # %if.then.17
	movq	-128(%rbp), %rdi
	callq	g_slist_free
	movl	$1, -4(%rbp)
	jmp	.LBB9_18
.LBB9_15:                               # %if.end.18
                                        #   in Loop: Header=BB9_13 Depth=1
	jmp	.LBB9_16
.LBB9_16:                               # %do.cond
                                        #   in Loop: Header=BB9_13 Depth=1
	leaq	-96(%rbp), %rdi
	callq	gtk_text_iter_forward_char
	cmpl	$0, %eax
	jne	.LBB9_13
# BB#17:                                # %do.end.21
	movl	$0, -4(%rbp)
.LBB9_18:                               # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_text_buffer_has_markup, .Lfunc_end9-gimp_text_buffer_has_markup
	.cfi_endproc

	.globl	gimp_text_buffer_get_iter_size
	.align	16, 0x90
	.type	gimp_text_buffer_get_iter_size,@function
gimp_text_buffer_get_iter_size:         # @gimp_text_buffer_get_iter_size
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	104(%rdx), %rdx
	movq	%rdx, -40(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB10_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_text_iter_has_tag
	cmpl	$0, %eax
	je	.LBB10_6
# BB#3:                                 # %if.then
	cmpq	$0, -32(%rbp)
	je	.LBB10_5
# BB#4:                                 # %if.then.3
	movq	-48(%rbp), %rdi
	callq	gimp_text_tag_get_size
	movq	-32(%rbp), %rdi
	movl	%eax, (%rdi)
.LBB10_5:                               # %if.end
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_14
.LBB10_6:                               # %if.end.5
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_7
.LBB10_7:                               # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB10_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB10_10
.LBB10_9:                               # %cond.false
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB10_10
.LBB10_10:                              # %cond.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB10_1
.LBB10_11:                              # %for.end
	cmpq	$0, -32(%rbp)
	je	.LBB10_13
# BB#12:                                # %if.then.8
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
.LBB10_13:                              # %if.end.9
	movq	$0, -8(%rbp)
.LBB10_14:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_text_buffer_get_iter_size, .Lfunc_end10-gimp_text_buffer_get_iter_size
	.cfi_endproc

	.globl	gimp_text_buffer_get_size_tag
	.align	16, 0x90
	.type	gimp_text_buffer_get_size_tag,@function
gimp_text_buffer_get_size_tag:          # @gimp_text_buffer_get_size_tag
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	104(%rdi), %rdi
	movq	%rdi, -32(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB11_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %ecx
	movq	-40(%rbp), %rdi
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	callq	gimp_text_tag_get_size
	movl	-84(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB11_4
# BB#3:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_10
.LBB11_4:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_5
.LBB11_5:                               # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB11_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB11_8
.LBB11_7:                               # %cond.false
                                        #   in Loop: Header=BB11_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB11_8
.LBB11_8:                               # %cond.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB11_1
.LBB11_9:                               # %for.end
	movl	$32, %eax
	movl	%eax, %esi
	movabsq	$.L.str.5, %rdx
	leaq	-80(%rbp), %rdi
	movl	-20(%rbp), %ecx
	movb	$0, %al
	callq	g_snprintf
	movq	-16(%rbp), %rdx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	-80(%rbp), %rsi
	movl	-20(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_text_buffer_create_tag
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	104(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-16(%rbp), %rdx
	movq	%rax, 104(%rdx)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB11_10:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_text_buffer_get_size_tag, .Lfunc_end11-gimp_text_buffer_get_size_tag
	.cfi_endproc

	.globl	gimp_text_buffer_set_size
	.align	16, 0x90
	.type	gimp_text_buffer_set_size,@function
gimp_text_buffer_set_size:              # @gimp_text_buffer_set_size
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_text_buffer_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_set_size, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_34
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB12_15
# BB#14:                                # %if.then.13
	jmp	.LBB12_16
.LBB12_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_set_size, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_34
.LBB12_16:                              # %if.end.15
	jmp	.LBB12_17
.LBB12_17:                              # %do.end.16
	jmp	.LBB12_18
.LBB12_18:                              # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB12_20
# BB#19:                                # %if.then.19
	jmp	.LBB12_21
.LBB12_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_set_size, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_34
.LBB12_21:                              # %if.end.21
	jmp	.LBB12_22
.LBB12_22:                              # %do.end.22
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_text_iter_equal
	cmpl	$0, %eax
	je	.LBB12_24
# BB#23:                                # %if.then.25
	jmp	.LBB12_34
.LBB12_24:                              # %if.end.26
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_buffer_begin_user_action
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB12_25:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB12_31
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB12_25 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	callq	gtk_text_buffer_remove_tag
# BB#27:                                # %for.inc
                                        #   in Loop: Header=BB12_25 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB12_29
# BB#28:                                # %cond.true
                                        #   in Loop: Header=BB12_25 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB12_30
.LBB12_29:                              # %cond.false
                                        #   in Loop: Header=BB12_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB12_30
.LBB12_30:                              # %cond.end
                                        #   in Loop: Header=BB12_25 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB12_25
.LBB12_31:                              # %for.end
	cmpl	$0, -28(%rbp)
	je	.LBB12_33
# BB#32:                                # %if.then.34
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_text_buffer_get_size_tag
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	callq	gtk_text_buffer_apply_tag
.LBB12_33:                              # %if.end.39
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_buffer_end_user_action
.LBB12_34:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_text_buffer_set_size, .Lfunc_end12-gimp_text_buffer_set_size
	.cfi_endproc

	.globl	gimp_text_buffer_change_size
	.align	16, 0x90
	.type	gimp_text_buffer_change_size,@function
gimp_text_buffer_change_size:           # @gimp_text_buffer_change_size
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
	subq	$400, %rsp              # imm = 0x190
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -296(%rbp)
	callq	gimp_text_buffer_get_type
	movq	%rax, -304(%rbp)
	cmpq	$0, -296(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -308(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-296(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-296(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-304(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -308(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-296(%rbp), %rdi
	movq	-304(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -308(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-308(%rbp), %eax
	movl	%eax, -312(%rbp)
	cmpl	$0, -312(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_change_size, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_37
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB13_15
# BB#14:                                # %if.then.13
	jmp	.LBB13_16
.LBB13_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_change_size, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_37
.LBB13_16:                              # %if.end.15
	jmp	.LBB13_17
.LBB13_17:                              # %do.end.16
	jmp	.LBB13_18
.LBB13_18:                              # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB13_20
# BB#19:                                # %if.then.19
	jmp	.LBB13_21
.LBB13_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_change_size, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_37
.LBB13_21:                              # %if.end.21
	jmp	.LBB13_22
.LBB13_22:                              # %do.end.22
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_text_iter_equal
	cmpl	$0, %eax
	je	.LBB13_24
# BB#23:                                # %if.then.25
	jmp	.LBB13_37
.LBB13_24:                              # %if.end.26
	leaq	-112(%rbp), %rax
	leaq	-284(%rbp), %rdx
	movl	$80, %ecx
	movl	%ecx, %esi
	leaq	-192(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	%rax, %r9
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rsi, -344(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-16(%rbp), %rax
	movq	-336(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, %rdi
	movq	%rax, %rsi
	movq	-344(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-8(%rbp), %rdi
	movq	-360(%rbp), %rsi        # 8-byte Reload
	movq	-352(%rbp), %rdx        # 8-byte Reload
	callq	gimp_text_buffer_get_iter_size
	movq	%rax, -280(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_buffer_begin_user_action
.LBB13_25:                              # %do.body.30
                                        # =>This Inner Loop Header: Depth=1
	leaq	-112(%rbp), %rdi
	callq	gtk_text_iter_forward_char
	leaq	-112(%rbp), %rsi
	leaq	-324(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movl	%eax, -372(%rbp)        # 4-byte Spill
	callq	gimp_text_buffer_get_iter_size
	movl	$80, %ecx
	movl	%ecx, %edx
	leaq	-112(%rbp), %rsi
	leaq	-272(%rbp), %rdi
	movq	%rax, -320(%rbp)
	callq	memcpy
	movl	-324(%rbp), %ecx
	cmpl	-284(%rbp), %ecx
	jne	.LBB13_27
# BB#26:                                # %lor.lhs.false
                                        #   in Loop: Header=BB13_25 Depth=1
	leaq	-112(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_text_iter_compare
	cmpl	$0, %eax
	jl	.LBB13_32
.LBB13_27:                              # %if.then.38
                                        #   in Loop: Header=BB13_25 Depth=1
	cmpl	$0, -284(%rbp)
	je	.LBB13_29
# BB#28:                                # %if.then.40
                                        #   in Loop: Header=BB13_25 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-192(%rbp), %rdx
	leaq	-272(%rbp), %rcx
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_text_buffer_remove_tag
.LBB13_29:                              # %if.end.43
                                        #   in Loop: Header=BB13_25 Depth=1
	movl	-284(%rbp), %eax
	addl	-28(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB13_31
# BB#30:                                # %if.then.45
                                        #   in Loop: Header=BB13_25 Depth=1
	movq	-8(%rbp), %rdi
	movl	-284(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, %esi
	callq	gimp_text_buffer_get_size_tag
	movq	%rax, -280(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-192(%rbp), %rdx
	leaq	-272(%rbp), %rcx
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_text_buffer_apply_tag
.LBB13_31:                              # %if.end.50
                                        #   in Loop: Header=BB13_25 Depth=1
	movl	$80, %eax
	movl	%eax, %edx
	leaq	-112(%rbp), %rcx
	leaq	-192(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movl	-324(%rbp), %eax
	movl	%eax, -284(%rbp)
	movq	-320(%rbp), %rcx
	movq	%rcx, -280(%rbp)
.LBB13_32:                              # %if.end.51
                                        #   in Loop: Header=BB13_25 Depth=1
	leaq	-112(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_text_iter_compare
	cmpl	$0, %eax
	jle	.LBB13_34
# BB#33:                                # %if.then.54
                                        #   in Loop: Header=BB13_25 Depth=1
	movl	$80, %eax
	movl	%eax, %edx
	leaq	-112(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
.LBB13_34:                              # %if.end.55
                                        #   in Loop: Header=BB13_25 Depth=1
	jmp	.LBB13_35
.LBB13_35:                              # %do.cond
                                        #   in Loop: Header=BB13_25 Depth=1
	leaq	-112(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_text_iter_equal
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB13_25
# BB#36:                                # %do.end.58
	movq	-8(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_buffer_end_user_action
.LBB13_37:                              # %return
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_text_buffer_change_size, .Lfunc_end13-gimp_text_buffer_change_size
	.cfi_endproc

	.globl	gimp_text_buffer_get_iter_baseline
	.align	16, 0x90
	.type	gimp_text_buffer_get_iter_baseline,@function
gimp_text_buffer_get_iter_baseline:     # @gimp_text_buffer_get_iter_baseline
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	112(%rdx), %rdx
	movq	%rdx, -40(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB14_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_text_iter_has_tag
	cmpl	$0, %eax
	je	.LBB14_6
# BB#3:                                 # %if.then
	cmpq	$0, -32(%rbp)
	je	.LBB14_5
# BB#4:                                 # %if.then.3
	movq	-48(%rbp), %rdi
	callq	gimp_text_tag_get_baseline
	movq	-32(%rbp), %rdi
	movl	%eax, (%rdi)
.LBB14_5:                               # %if.end
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB14_14
.LBB14_6:                               # %if.end.5
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_7
.LBB14_7:                               # %for.inc
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB14_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB14_10
.LBB14_9:                               # %cond.false
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB14_10
.LBB14_10:                              # %cond.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB14_1
.LBB14_11:                              # %for.end
	cmpq	$0, -32(%rbp)
	je	.LBB14_13
# BB#12:                                # %if.then.8
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
.LBB14_13:                              # %if.end.9
	movq	$0, -8(%rbp)
.LBB14_14:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_text_buffer_get_iter_baseline, .Lfunc_end14-gimp_text_buffer_get_iter_baseline
	.cfi_endproc

	.globl	gimp_text_buffer_set_baseline
	.align	16, 0x90
	.type	gimp_text_buffer_set_baseline,@function
gimp_text_buffer_set_baseline:          # @gimp_text_buffer_set_baseline
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_text_buffer_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_set_baseline, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_34
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	jmp	.LBB15_13
.LBB15_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB15_15
# BB#14:                                # %if.then.13
	jmp	.LBB15_16
.LBB15_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_set_baseline, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_34
.LBB15_16:                              # %if.end.15
	jmp	.LBB15_17
.LBB15_17:                              # %do.end.16
	jmp	.LBB15_18
.LBB15_18:                              # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB15_20
# BB#19:                                # %if.then.19
	jmp	.LBB15_21
.LBB15_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_set_baseline, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_34
.LBB15_21:                              # %if.end.21
	jmp	.LBB15_22
.LBB15_22:                              # %do.end.22
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_text_iter_equal
	cmpl	$0, %eax
	je	.LBB15_24
# BB#23:                                # %if.then.25
	jmp	.LBB15_34
.LBB15_24:                              # %if.end.26
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_buffer_begin_user_action
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB15_25:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB15_31
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB15_25 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	callq	gtk_text_buffer_remove_tag
# BB#27:                                # %for.inc
                                        #   in Loop: Header=BB15_25 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB15_29
# BB#28:                                # %cond.true
                                        #   in Loop: Header=BB15_25 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB15_30
.LBB15_29:                              # %cond.false
                                        #   in Loop: Header=BB15_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB15_30
.LBB15_30:                              # %cond.end
                                        #   in Loop: Header=BB15_25 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB15_25
.LBB15_31:                              # %for.end
	cmpl	$0, -28(%rbp)
	je	.LBB15_33
# BB#32:                                # %if.then.34
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_text_buffer_get_baseline_tag
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	callq	gtk_text_buffer_apply_tag
.LBB15_33:                              # %if.end.39
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_buffer_end_user_action
.LBB15_34:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_text_buffer_set_baseline, .Lfunc_end15-gimp_text_buffer_set_baseline
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_buffer_get_baseline_tag,@function
gimp_text_buffer_get_baseline_tag:      # @gimp_text_buffer_get_baseline_tag
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	112(%rdi), %rdi
	movq	%rdi, -32(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB16_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %ecx
	movq	-40(%rbp), %rdi
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	callq	gimp_text_tag_get_baseline
	movl	-84(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB16_4
# BB#3:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB16_10
.LBB16_4:                               # %if.end
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_5
.LBB16_5:                               # %for.inc
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB16_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB16_8
.LBB16_7:                               # %cond.false
                                        #   in Loop: Header=BB16_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB16_8
.LBB16_8:                               # %cond.end
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB16_1
.LBB16_9:                               # %for.end
	movl	$32, %eax
	movl	%eax, %esi
	movabsq	$.L.str.37, %rdx
	leaq	-80(%rbp), %rdi
	movl	-20(%rbp), %ecx
	movb	$0, %al
	callq	g_snprintf
	movq	-16(%rbp), %rdx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	-80(%rbp), %rsi
	movl	-20(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_text_buffer_create_tag
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	112(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-16(%rbp), %rdx
	movq	%rax, 112(%rdx)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB16_10:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_text_buffer_get_baseline_tag, .Lfunc_end16-gimp_text_buffer_get_baseline_tag
	.cfi_endproc

	.globl	gimp_text_buffer_change_baseline
	.align	16, 0x90
	.type	gimp_text_buffer_change_baseline,@function
gimp_text_buffer_change_baseline:       # @gimp_text_buffer_change_baseline
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
	subq	$400, %rsp              # imm = 0x190
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -296(%rbp)
	callq	gimp_text_buffer_get_type
	movq	%rax, -304(%rbp)
	cmpq	$0, -296(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -308(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-296(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-296(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-304(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -308(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-296(%rbp), %rdi
	movq	-304(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -308(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-308(%rbp), %eax
	movl	%eax, -312(%rbp)
	cmpl	$0, -312(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_change_baseline, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_37
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	jmp	.LBB17_13
.LBB17_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB17_15
# BB#14:                                # %if.then.13
	jmp	.LBB17_16
.LBB17_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_change_baseline, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_37
.LBB17_16:                              # %if.end.15
	jmp	.LBB17_17
.LBB17_17:                              # %do.end.16
	jmp	.LBB17_18
.LBB17_18:                              # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB17_20
# BB#19:                                # %if.then.19
	jmp	.LBB17_21
.LBB17_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_change_baseline, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_37
.LBB17_21:                              # %if.end.21
	jmp	.LBB17_22
.LBB17_22:                              # %do.end.22
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_text_iter_equal
	cmpl	$0, %eax
	je	.LBB17_24
# BB#23:                                # %if.then.25
	jmp	.LBB17_37
.LBB17_24:                              # %if.end.26
	leaq	-112(%rbp), %rax
	leaq	-284(%rbp), %rdx
	movl	$80, %ecx
	movl	%ecx, %esi
	leaq	-192(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	%rax, %r9
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rsi, -344(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-16(%rbp), %rax
	movq	-336(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, %rdi
	movq	%rax, %rsi
	movq	-344(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-8(%rbp), %rdi
	movq	-360(%rbp), %rsi        # 8-byte Reload
	movq	-352(%rbp), %rdx        # 8-byte Reload
	callq	gimp_text_buffer_get_iter_baseline
	movq	%rax, -280(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_buffer_begin_user_action
.LBB17_25:                              # %do.body.30
                                        # =>This Inner Loop Header: Depth=1
	leaq	-112(%rbp), %rdi
	callq	gtk_text_iter_forward_char
	leaq	-112(%rbp), %rsi
	leaq	-324(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movl	%eax, -372(%rbp)        # 4-byte Spill
	callq	gimp_text_buffer_get_iter_baseline
	movl	$80, %ecx
	movl	%ecx, %edx
	leaq	-112(%rbp), %rsi
	leaq	-272(%rbp), %rdi
	movq	%rax, -320(%rbp)
	callq	memcpy
	movl	-324(%rbp), %ecx
	cmpl	-284(%rbp), %ecx
	jne	.LBB17_27
# BB#26:                                # %lor.lhs.false
                                        #   in Loop: Header=BB17_25 Depth=1
	leaq	-112(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_text_iter_compare
	cmpl	$0, %eax
	jl	.LBB17_32
.LBB17_27:                              # %if.then.38
                                        #   in Loop: Header=BB17_25 Depth=1
	cmpl	$0, -284(%rbp)
	je	.LBB17_29
# BB#28:                                # %if.then.40
                                        #   in Loop: Header=BB17_25 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-192(%rbp), %rdx
	leaq	-272(%rbp), %rcx
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_text_buffer_remove_tag
.LBB17_29:                              # %if.end.43
                                        #   in Loop: Header=BB17_25 Depth=1
	movl	-284(%rbp), %eax
	addl	-28(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB17_31
# BB#30:                                # %if.then.45
                                        #   in Loop: Header=BB17_25 Depth=1
	movq	-8(%rbp), %rdi
	movl	-284(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, %esi
	callq	gimp_text_buffer_get_baseline_tag
	movq	%rax, -280(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-192(%rbp), %rdx
	leaq	-272(%rbp), %rcx
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_text_buffer_apply_tag
.LBB17_31:                              # %if.end.50
                                        #   in Loop: Header=BB17_25 Depth=1
	movl	$80, %eax
	movl	%eax, %edx
	leaq	-112(%rbp), %rcx
	leaq	-192(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movl	-324(%rbp), %eax
	movl	%eax, -284(%rbp)
	movq	-320(%rbp), %rcx
	movq	%rcx, -280(%rbp)
.LBB17_32:                              # %if.end.51
                                        #   in Loop: Header=BB17_25 Depth=1
	leaq	-112(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_text_iter_compare
	cmpl	$0, %eax
	jle	.LBB17_34
# BB#33:                                # %if.then.54
                                        #   in Loop: Header=BB17_25 Depth=1
	movl	$80, %eax
	movl	%eax, %edx
	leaq	-112(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
.LBB17_34:                              # %if.end.55
                                        #   in Loop: Header=BB17_25 Depth=1
	jmp	.LBB17_35
.LBB17_35:                              # %do.cond
                                        #   in Loop: Header=BB17_25 Depth=1
	leaq	-112(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_text_iter_equal
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB17_25
# BB#36:                                # %do.end.58
	movq	-8(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_buffer_end_user_action
.LBB17_37:                              # %return
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_text_buffer_change_baseline, .Lfunc_end17-gimp_text_buffer_change_baseline
	.cfi_endproc

	.globl	gimp_text_buffer_get_iter_kerning
	.align	16, 0x90
	.type	gimp_text_buffer_get_iter_kerning,@function
gimp_text_buffer_get_iter_kerning:      # @gimp_text_buffer_get_iter_kerning
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	120(%rdx), %rdx
	movq	%rdx, -40(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB18_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_text_iter_has_tag
	cmpl	$0, %eax
	je	.LBB18_6
# BB#3:                                 # %if.then
	cmpq	$0, -32(%rbp)
	je	.LBB18_5
# BB#4:                                 # %if.then.3
	movq	-48(%rbp), %rdi
	callq	gimp_text_tag_get_kerning
	movq	-32(%rbp), %rdi
	movl	%eax, (%rdi)
.LBB18_5:                               # %if.end
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB18_14
.LBB18_6:                               # %if.end.5
                                        #   in Loop: Header=BB18_1 Depth=1
	jmp	.LBB18_7
.LBB18_7:                               # %for.inc
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB18_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB18_10
.LBB18_9:                               # %cond.false
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB18_10
.LBB18_10:                              # %cond.end
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB18_1
.LBB18_11:                              # %for.end
	cmpq	$0, -32(%rbp)
	je	.LBB18_13
# BB#12:                                # %if.then.8
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
.LBB18_13:                              # %if.end.9
	movq	$0, -8(%rbp)
.LBB18_14:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_text_buffer_get_iter_kerning, .Lfunc_end18-gimp_text_buffer_get_iter_kerning
	.cfi_endproc

	.globl	gimp_text_buffer_set_kerning
	.align	16, 0x90
	.type	gimp_text_buffer_set_kerning,@function
gimp_text_buffer_set_kerning:           # @gimp_text_buffer_set_kerning
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_text_buffer_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_set_kerning, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_34
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	jmp	.LBB19_13
.LBB19_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB19_15
# BB#14:                                # %if.then.13
	jmp	.LBB19_16
.LBB19_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_set_kerning, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_34
.LBB19_16:                              # %if.end.15
	jmp	.LBB19_17
.LBB19_17:                              # %do.end.16
	jmp	.LBB19_18
.LBB19_18:                              # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB19_20
# BB#19:                                # %if.then.19
	jmp	.LBB19_21
.LBB19_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_set_kerning, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_34
.LBB19_21:                              # %if.end.21
	jmp	.LBB19_22
.LBB19_22:                              # %do.end.22
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_text_iter_equal
	cmpl	$0, %eax
	je	.LBB19_24
# BB#23:                                # %if.then.25
	jmp	.LBB19_34
.LBB19_24:                              # %if.end.26
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_buffer_begin_user_action
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB19_25:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB19_31
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB19_25 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	callq	gtk_text_buffer_remove_tag
# BB#27:                                # %for.inc
                                        #   in Loop: Header=BB19_25 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB19_29
# BB#28:                                # %cond.true
                                        #   in Loop: Header=BB19_25 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB19_30
.LBB19_29:                              # %cond.false
                                        #   in Loop: Header=BB19_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB19_30
.LBB19_30:                              # %cond.end
                                        #   in Loop: Header=BB19_25 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB19_25
.LBB19_31:                              # %for.end
	cmpl	$0, -28(%rbp)
	je	.LBB19_33
# BB#32:                                # %if.then.34
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_text_buffer_get_kerning_tag
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	callq	gtk_text_buffer_apply_tag
.LBB19_33:                              # %if.end.39
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_buffer_end_user_action
.LBB19_34:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_text_buffer_set_kerning, .Lfunc_end19-gimp_text_buffer_set_kerning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_buffer_get_kerning_tag,@function
gimp_text_buffer_get_kerning_tag:       # @gimp_text_buffer_get_kerning_tag
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	120(%rdi), %rdi
	movq	%rdi, -32(%rbp)
.LBB20_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB20_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %ecx
	movq	-40(%rbp), %rdi
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	callq	gimp_text_tag_get_kerning
	movl	-84(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB20_4
# BB#3:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB20_10
.LBB20_4:                               # %if.end
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_5
.LBB20_5:                               # %for.inc
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB20_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB20_8
.LBB20_7:                               # %cond.false
                                        #   in Loop: Header=BB20_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB20_8
.LBB20_8:                               # %cond.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB20_1
.LBB20_9:                               # %for.end
	movl	$32, %eax
	movl	%eax, %esi
	movabsq	$.L.str.38, %rdx
	leaq	-80(%rbp), %rdi
	movl	-20(%rbp), %ecx
	movb	$0, %al
	callq	g_snprintf
	movq	-16(%rbp), %rdx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	-80(%rbp), %rsi
	movl	-20(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_text_buffer_create_tag
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	120(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-16(%rbp), %rdx
	movq	%rax, 120(%rdx)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB20_10:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_text_buffer_get_kerning_tag, .Lfunc_end20-gimp_text_buffer_get_kerning_tag
	.cfi_endproc

	.globl	gimp_text_buffer_change_kerning
	.align	16, 0x90
	.type	gimp_text_buffer_change_kerning,@function
gimp_text_buffer_change_kerning:        # @gimp_text_buffer_change_kerning
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
	subq	$400, %rsp              # imm = 0x190
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -296(%rbp)
	callq	gimp_text_buffer_get_type
	movq	%rax, -304(%rbp)
	cmpq	$0, -296(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -308(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-296(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-296(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-304(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -308(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-296(%rbp), %rdi
	movq	-304(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -308(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-308(%rbp), %eax
	movl	%eax, -312(%rbp)
	cmpl	$0, -312(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_change_kerning, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_37
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	jmp	.LBB21_13
.LBB21_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB21_15
# BB#14:                                # %if.then.13
	jmp	.LBB21_16
.LBB21_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_change_kerning, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_37
.LBB21_16:                              # %if.end.15
	jmp	.LBB21_17
.LBB21_17:                              # %do.end.16
	jmp	.LBB21_18
.LBB21_18:                              # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB21_20
# BB#19:                                # %if.then.19
	jmp	.LBB21_21
.LBB21_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_change_kerning, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_37
.LBB21_21:                              # %if.end.21
	jmp	.LBB21_22
.LBB21_22:                              # %do.end.22
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_text_iter_equal
	cmpl	$0, %eax
	je	.LBB21_24
# BB#23:                                # %if.then.25
	jmp	.LBB21_37
.LBB21_24:                              # %if.end.26
	leaq	-112(%rbp), %rax
	leaq	-284(%rbp), %rdx
	movl	$80, %ecx
	movl	%ecx, %esi
	leaq	-192(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	%rax, %r9
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rsi, -344(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-16(%rbp), %rax
	movq	-336(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, %rdi
	movq	%rax, %rsi
	movq	-344(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-8(%rbp), %rdi
	movq	-360(%rbp), %rsi        # 8-byte Reload
	movq	-352(%rbp), %rdx        # 8-byte Reload
	callq	gimp_text_buffer_get_iter_kerning
	movq	%rax, -280(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_buffer_begin_user_action
.LBB21_25:                              # %do.body.30
                                        # =>This Inner Loop Header: Depth=1
	leaq	-112(%rbp), %rdi
	callq	gtk_text_iter_forward_char
	leaq	-112(%rbp), %rsi
	leaq	-324(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movl	%eax, -372(%rbp)        # 4-byte Spill
	callq	gimp_text_buffer_get_iter_kerning
	movl	$80, %ecx
	movl	%ecx, %edx
	leaq	-112(%rbp), %rsi
	leaq	-272(%rbp), %rdi
	movq	%rax, -320(%rbp)
	callq	memcpy
	movl	-324(%rbp), %ecx
	cmpl	-284(%rbp), %ecx
	jne	.LBB21_27
# BB#26:                                # %lor.lhs.false
                                        #   in Loop: Header=BB21_25 Depth=1
	leaq	-112(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_text_iter_compare
	cmpl	$0, %eax
	jl	.LBB21_32
.LBB21_27:                              # %if.then.38
                                        #   in Loop: Header=BB21_25 Depth=1
	cmpl	$0, -284(%rbp)
	je	.LBB21_29
# BB#28:                                # %if.then.40
                                        #   in Loop: Header=BB21_25 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-192(%rbp), %rdx
	leaq	-272(%rbp), %rcx
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_text_buffer_remove_tag
.LBB21_29:                              # %if.end.43
                                        #   in Loop: Header=BB21_25 Depth=1
	movl	-284(%rbp), %eax
	addl	-28(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB21_31
# BB#30:                                # %if.then.45
                                        #   in Loop: Header=BB21_25 Depth=1
	movq	-8(%rbp), %rdi
	movl	-284(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, %esi
	callq	gimp_text_buffer_get_kerning_tag
	movq	%rax, -280(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-192(%rbp), %rdx
	leaq	-272(%rbp), %rcx
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_text_buffer_apply_tag
.LBB21_31:                              # %if.end.50
                                        #   in Loop: Header=BB21_25 Depth=1
	movl	$80, %eax
	movl	%eax, %edx
	leaq	-112(%rbp), %rcx
	leaq	-192(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movl	-324(%rbp), %eax
	movl	%eax, -284(%rbp)
	movq	-320(%rbp), %rcx
	movq	%rcx, -280(%rbp)
.LBB21_32:                              # %if.end.51
                                        #   in Loop: Header=BB21_25 Depth=1
	leaq	-112(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_text_iter_compare
	cmpl	$0, %eax
	jle	.LBB21_34
# BB#33:                                # %if.then.54
                                        #   in Loop: Header=BB21_25 Depth=1
	movl	$80, %eax
	movl	%eax, %edx
	leaq	-112(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
.LBB21_34:                              # %if.end.55
                                        #   in Loop: Header=BB21_25 Depth=1
	jmp	.LBB21_35
.LBB21_35:                              # %do.cond
                                        #   in Loop: Header=BB21_25 Depth=1
	leaq	-112(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_text_iter_equal
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB21_25
# BB#36:                                # %do.end.58
	movq	-8(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_buffer_end_user_action
.LBB21_37:                              # %return
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_text_buffer_change_kerning, .Lfunc_end21-gimp_text_buffer_change_kerning
	.cfi_endproc

	.globl	gimp_text_buffer_get_iter_font
	.align	16, 0x90
	.type	gimp_text_buffer_get_iter_font,@function
gimp_text_buffer_get_iter_font:         # @gimp_text_buffer_get_iter_font
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	%rdx, -40(%rbp)
.LBB22_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB22_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_text_iter_has_tag
	cmpl	$0, %eax
	je	.LBB22_6
# BB#3:                                 # %if.then
	cmpq	$0, -32(%rbp)
	je	.LBB22_5
# BB#4:                                 # %if.then.3
	movq	-48(%rbp), %rdi
	callq	gimp_text_tag_get_font
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB22_5:                               # %if.end
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB22_14
.LBB22_6:                               # %if.end.5
                                        #   in Loop: Header=BB22_1 Depth=1
	jmp	.LBB22_7
.LBB22_7:                               # %for.inc
                                        #   in Loop: Header=BB22_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB22_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB22_10
.LBB22_9:                               # %cond.false
                                        #   in Loop: Header=BB22_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB22_10
.LBB22_10:                              # %cond.end
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB22_1
.LBB22_11:                              # %for.end
	cmpq	$0, -32(%rbp)
	je	.LBB22_13
# BB#12:                                # %if.then.8
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
.LBB22_13:                              # %if.end.9
	movq	$0, -8(%rbp)
.LBB22_14:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_text_buffer_get_iter_font, .Lfunc_end22-gimp_text_buffer_get_iter_font
	.cfi_endproc

	.globl	gimp_text_buffer_get_font_tag
	.align	16, 0x90
	.type	gimp_text_buffer_get_font_tag,@function
gimp_text_buffer_get_font_tag:          # @gimp_text_buffer_get_font_tag
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
	subq	$352, %rsp              # imm = 0x160
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	pango_font_description_from_string
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rdi
	callq	pango_font_description_to_string
	movq	%rax, -320(%rbp)
	movq	-312(%rbp), %rdi
	callq	pango_font_description_free
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB23_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB23_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_text_tag_get_font
	movq	%rax, -328(%rbp)
	movq	-320(%rbp), %rdi
	movq	-328(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB23_4
# BB#3:                                 # %if.then
	movq	-328(%rbp), %rdi
	callq	g_free
	movq	-320(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	jmp	.LBB23_10
.LBB23_4:                               # %if.end
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-328(%rbp), %rdi
	callq	g_free
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB23_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB23_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB23_8
.LBB23_7:                               # %cond.false
                                        #   in Loop: Header=BB23_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB23_8
.LBB23_8:                               # %cond.end
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB23_1
.LBB23_9:                               # %for.end
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %esi
	movabsq	$.L.str.9, %rdx
	leaq	-304(%rbp), %rdi
	movq	-320(%rbp), %rcx
	movb	$0, %al
	callq	g_snprintf
	movq	-16(%rbp), %rcx
	movl	%eax, -340(%rbp)        # 4-byte Spill
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rdx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	leaq	-304(%rbp), %rsi
	movq	-320(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_text_buffer_create_tag
	xorl	%esi, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_text_tag_set_priority
	movq	-320(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-16(%rbp), %rcx
	movq	%rax, 128(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB23_10:                              # %return
	movq	-8(%rbp), %rax
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_text_buffer_get_font_tag, .Lfunc_end23-gimp_text_buffer_get_font_tag
	.cfi_endproc

	.globl	gimp_text_buffer_set_font
	.align	16, 0x90
	.type	gimp_text_buffer_set_font,@function
gimp_text_buffer_set_font:              # @gimp_text_buffer_set_font
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_text_buffer_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB24_8
.LBB24_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB24_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB24_7:                               # %if.end
	jmp	.LBB24_8
.LBB24_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.8
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_set_font, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_34
.LBB24_11:                              # %if.end.10
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	jmp	.LBB24_13
.LBB24_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB24_15
# BB#14:                                # %if.then.13
	jmp	.LBB24_16
.LBB24_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_set_font, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_34
.LBB24_16:                              # %if.end.15
	jmp	.LBB24_17
.LBB24_17:                              # %do.end.16
	jmp	.LBB24_18
.LBB24_18:                              # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB24_20
# BB#19:                                # %if.then.19
	jmp	.LBB24_21
.LBB24_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_set_font, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_34
.LBB24_21:                              # %if.end.21
	jmp	.LBB24_22
.LBB24_22:                              # %do.end.22
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_text_iter_equal
	cmpl	$0, %eax
	je	.LBB24_24
# BB#23:                                # %if.then.25
	jmp	.LBB24_34
.LBB24_24:                              # %if.end.26
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_buffer_begin_user_action
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB24_25:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB24_31
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB24_25 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	callq	gtk_text_buffer_remove_tag
# BB#27:                                # %for.inc
                                        #   in Loop: Header=BB24_25 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB24_29
# BB#28:                                # %cond.true
                                        #   in Loop: Header=BB24_25 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB24_30
.LBB24_29:                              # %cond.false
                                        #   in Loop: Header=BB24_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB24_30
.LBB24_30:                              # %cond.end
                                        #   in Loop: Header=BB24_25 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB24_25
.LBB24_31:                              # %for.end
	cmpq	$0, -32(%rbp)
	je	.LBB24_33
# BB#32:                                # %if.then.34
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_text_buffer_get_font_tag
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	callq	gtk_text_buffer_apply_tag
.LBB24_33:                              # %if.end.39
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_buffer_end_user_action
.LBB24_34:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_text_buffer_set_font, .Lfunc_end24-gimp_text_buffer_set_font
	.cfi_endproc

	.globl	gimp_text_buffer_get_iter_color
	.align	16, 0x90
	.type	gimp_text_buffer_get_iter_color,@function
gimp_text_buffer_get_iter_color:        # @gimp_text_buffer_get_iter_color
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	%rdx, -40(%rbp)
.LBB25_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB25_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_text_iter_has_tag
	cmpl	$0, %eax
	je	.LBB25_6
# BB#3:                                 # %if.then
	cmpq	$0, -32(%rbp)
	je	.LBB25_5
# BB#4:                                 # %if.then.3
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_text_tag_get_color
.LBB25_5:                               # %if.end
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB25_12
.LBB25_6:                               # %if.end.4
                                        #   in Loop: Header=BB25_1 Depth=1
	jmp	.LBB25_7
.LBB25_7:                               # %for.inc
                                        #   in Loop: Header=BB25_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB25_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB25_10
.LBB25_9:                               # %cond.false
                                        #   in Loop: Header=BB25_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB25_10
.LBB25_10:                              # %cond.end
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB25_1
.LBB25_11:                              # %for.end
	movq	$0, -8(%rbp)
.LBB25_12:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_text_buffer_get_iter_color, .Lfunc_end25-gimp_text_buffer_get_iter_color
	.cfi_endproc

	.globl	gimp_text_buffer_get_color_tag
	.align	16, 0x90
	.type	gimp_text_buffer_get_color_tag,@function
gimp_text_buffer_get_color_tag:         # @gimp_text_buffer_get_color_tag
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
	subq	$416, %rsp              # imm = 0x1A0
	leaq	-321(%rbp), %rax
	leaq	-322(%rbp), %rdx
	leaq	-323(%rbp), %rcx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_rgb_get_uchar
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB26_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB26_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB26_1 Depth=1
	leaq	-360(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_text_tag_get_color
	leaq	-360(%rbp), %rdi
	leaq	-361(%rbp), %rsi
	leaq	-362(%rbp), %rdx
	leaq	-363(%rbp), %rcx
	callq	gimp_rgb_get_uchar
	movzbl	-361(%rbp), %r8d
	movzbl	-321(%rbp), %r9d
	cmpl	%r9d, %r8d
	jne	.LBB26_6
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB26_1 Depth=1
	movzbl	-362(%rbp), %eax
	movzbl	-322(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB26_6
# BB#4:                                 # %land.lhs.true.7
                                        #   in Loop: Header=BB26_1 Depth=1
	movzbl	-363(%rbp), %eax
	movzbl	-323(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB26_6
# BB#5:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB26_12
.LBB26_6:                               # %if.end
                                        #   in Loop: Header=BB26_1 Depth=1
	jmp	.LBB26_7
.LBB26_7:                               # %for.inc
                                        #   in Loop: Header=BB26_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB26_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB26_10
.LBB26_9:                               # %cond.false
                                        #   in Loop: Header=BB26_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	jmp	.LBB26_10
.LBB26_10:                              # %cond.end
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB26_1
.LBB26_11:                              # %for.end
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %esi
	movabsq	$.L.str.11, %rdx
	leaq	-304(%rbp), %rdi
	movzbl	-321(%rbp), %ecx
	movzbl	-322(%rbp), %r8d
	movzbl	-323(%rbp), %r9d
	movb	$0, %al
	callq	g_snprintf
	leaq	-320(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movl	%eax, -380(%rbp)        # 4-byte Spill
	callq	gimp_rgb_get_gdk_color
	movq	-16(%rbp), %rdx
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rdx
	leaq	-320(%rbp), %rcx
	movabsq	$.L.str.13, %r8
	movl	$1, %r9d
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	leaq	-304(%rbp), %rdi
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -408(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gtk_text_buffer_create_tag
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	136(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-16(%rbp), %rcx
	movq	%rax, 136(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB26_12:                              # %return
	movq	-8(%rbp), %rax
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_text_buffer_get_color_tag, .Lfunc_end26-gimp_text_buffer_get_color_tag
	.cfi_endproc

	.globl	gimp_text_buffer_set_color
	.align	16, 0x90
	.type	gimp_text_buffer_set_color,@function
gimp_text_buffer_set_color:             # @gimp_text_buffer_set_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_text_buffer_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB27_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB27_8
.LBB27_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB27_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB27_7
.LBB27_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB27_7:                               # %if.end
	jmp	.LBB27_8
.LBB27_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB27_10
# BB#9:                                 # %if.then.8
	jmp	.LBB27_11
.LBB27_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_set_color, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_34
.LBB27_11:                              # %if.end.10
	jmp	.LBB27_12
.LBB27_12:                              # %do.end
	jmp	.LBB27_13
.LBB27_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB27_15
# BB#14:                                # %if.then.13
	jmp	.LBB27_16
.LBB27_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_set_color, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_34
.LBB27_16:                              # %if.end.15
	jmp	.LBB27_17
.LBB27_17:                              # %do.end.16
	jmp	.LBB27_18
.LBB27_18:                              # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB27_20
# BB#19:                                # %if.then.19
	jmp	.LBB27_21
.LBB27_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_set_color, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_34
.LBB27_21:                              # %if.end.21
	jmp	.LBB27_22
.LBB27_22:                              # %do.end.22
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_text_iter_equal
	cmpl	$0, %eax
	je	.LBB27_24
# BB#23:                                # %if.then.25
	jmp	.LBB27_34
.LBB27_24:                              # %if.end.26
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_buffer_begin_user_action
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB27_25:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB27_31
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB27_25 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	callq	gtk_text_buffer_remove_tag
# BB#27:                                # %for.inc
                                        #   in Loop: Header=BB27_25 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB27_29
# BB#28:                                # %cond.true
                                        #   in Loop: Header=BB27_25 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB27_30
.LBB27_29:                              # %cond.false
                                        #   in Loop: Header=BB27_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB27_30
.LBB27_30:                              # %cond.end
                                        #   in Loop: Header=BB27_25 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB27_25
.LBB27_31:                              # %for.end
	cmpq	$0, -32(%rbp)
	je	.LBB27_33
# BB#32:                                # %if.then.34
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_text_buffer_get_color_tag
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	callq	gtk_text_buffer_apply_tag
.LBB27_33:                              # %if.end.39
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_buffer_end_user_action
.LBB27_34:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_text_buffer_set_color, .Lfunc_end27-gimp_text_buffer_set_color
	.cfi_endproc

	.globl	gimp_text_buffer_tag_to_name
	.align	16, 0x90
	.type	gimp_text_buffer_tag_to_name,@function
gimp_text_buffer_tag_to_name:           # @gimp_text_buffer_tag_to_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_text_buffer_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB28_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB28_8
.LBB28_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB28_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB28_7
.LBB28_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB28_7:                               # %if.end
	jmp	.LBB28_8
.LBB28_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB28_10
# BB#9:                                 # %if.then.8
	jmp	.LBB28_11
.LBB28_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_tag_to_name, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB28_75
.LBB28_11:                              # %if.end.10
	jmp	.LBB28_12
.LBB28_12:                              # %do.end
	jmp	.LBB28_13
.LBB28_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gtk_text_tag_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB28_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB28_20
.LBB28_15:                              # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB28_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB28_19
.LBB28_18:                              # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB28_19:                              # %if.end.31
	jmp	.LBB28_20
.LBB28_20:                              # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB28_22
# BB#21:                                # %if.then.35
	jmp	.LBB28_23
.LBB28_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_tag_to_name, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB28_75
.LBB28_23:                              # %if.end.37
	jmp	.LBB28_24
.LBB28_24:                              # %do.end.38
	cmpq	$0, -32(%rbp)
	je	.LBB28_26
# BB#25:                                # %if.then.40
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
.LBB28_26:                              # %if.end.41
	cmpq	$0, -40(%rbp)
	je	.LBB28_28
# BB#27:                                # %if.then.43
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
.LBB28_28:                              # %if.end.44
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	72(%rcx), %rax
	jne	.LBB28_30
# BB#29:                                # %if.then.46
	movabsq	$.L.str.15, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB28_75
.LBB28_30:                              # %if.else.47
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	80(%rcx), %rax
	jne	.LBB28_32
# BB#31:                                # %if.then.49
	movabsq	$.L.str.16, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB28_75
.LBB28_32:                              # %if.else.50
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	88(%rcx), %rax
	jne	.LBB28_34
# BB#33:                                # %if.then.52
	movabsq	$.L.str.17, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB28_75
.LBB28_34:                              # %if.else.53
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	96(%rcx), %rax
	jne	.LBB28_36
# BB#35:                                # %if.then.55
	movabsq	$.L.str.18, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB28_75
.LBB28_36:                              # %if.else.56
	movq	-16(%rbp), %rax
	movq	104(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	je	.LBB28_42
# BB#37:                                # %if.then.59
	cmpq	$0, -32(%rbp)
	je	.LBB28_39
# BB#38:                                # %if.then.61
	movabsq	$.L.str.6, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB28_39:                              # %if.end.62
	cmpq	$0, -40(%rbp)
	je	.LBB28_41
# BB#40:                                # %if.then.64
	movq	-24(%rbp), %rdi
	callq	gimp_text_tag_get_size
	movabsq	$.L.str.19, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB28_41:                              # %if.end.67
	movabsq	$.L.str.20, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB28_75
.LBB28_42:                              # %if.else.68
	movq	-16(%rbp), %rax
	movq	112(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	je	.LBB28_48
# BB#43:                                # %if.then.71
	cmpq	$0, -32(%rbp)
	je	.LBB28_45
# BB#44:                                # %if.then.73
	movabsq	$.L.str.21, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB28_45:                              # %if.end.74
	cmpq	$0, -40(%rbp)
	je	.LBB28_47
# BB#46:                                # %if.then.76
	movq	-24(%rbp), %rdi
	callq	gimp_text_tag_get_baseline
	movabsq	$.L.str.19, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB28_47:                              # %if.end.79
	movabsq	$.L.str.20, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB28_75
.LBB28_48:                              # %if.else.80
	movq	-16(%rbp), %rax
	movq	120(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	je	.LBB28_54
# BB#49:                                # %if.then.83
	cmpq	$0, -32(%rbp)
	je	.LBB28_51
# BB#50:                                # %if.then.85
	movabsq	$.L.str.22, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB28_51:                              # %if.end.86
	cmpq	$0, -40(%rbp)
	je	.LBB28_53
# BB#52:                                # %if.then.88
	movq	-24(%rbp), %rdi
	callq	gimp_text_tag_get_kerning
	movabsq	$.L.str.19, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB28_53:                              # %if.end.91
	movabsq	$.L.str.20, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB28_75
.LBB28_54:                              # %if.else.92
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	je	.LBB28_60
# BB#55:                                # %if.then.95
	cmpq	$0, -32(%rbp)
	je	.LBB28_57
# BB#56:                                # %if.then.97
	movabsq	$.L.str.10, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB28_57:                              # %if.end.98
	cmpq	$0, -40(%rbp)
	je	.LBB28_59
# BB#58:                                # %if.then.100
	movq	-24(%rbp), %rdi
	callq	gimp_text_tag_get_font
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB28_59:                              # %if.end.102
	movabsq	$.L.str.20, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB28_75
.LBB28_60:                              # %if.else.103
	movq	-16(%rbp), %rax
	movq	136(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	je	.LBB28_66
# BB#61:                                # %if.then.106
	cmpq	$0, -32(%rbp)
	je	.LBB28_63
# BB#62:                                # %if.then.108
	movabsq	$.L.str.23, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB28_63:                              # %if.end.109
	cmpq	$0, -40(%rbp)
	je	.LBB28_65
# BB#64:                                # %if.then.111
	leaq	-120(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_text_tag_get_color
	leaq	-120(%rbp), %rdi
	leaq	-121(%rbp), %rsi
	leaq	-122(%rbp), %rdx
	leaq	-123(%rbp), %rcx
	callq	gimp_rgb_get_uchar
	movabsq	$.L.str.24, %rdi
	movzbl	-121(%rbp), %esi
	movzbl	-122(%rbp), %edx
	movzbl	-123(%rbp), %ecx
	movb	$0, %al
	callq	g_strdup_printf
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB28_65:                              # %if.end.119
	movabsq	$.L.str.20, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB28_75
.LBB28_66:                              # %if.end.120
	jmp	.LBB28_67
.LBB28_67:                              # %if.end.121
	jmp	.LBB28_68
.LBB28_68:                              # %if.end.122
	jmp	.LBB28_69
.LBB28_69:                              # %if.end.123
	jmp	.LBB28_70
.LBB28_70:                              # %if.end.124
	jmp	.LBB28_71
.LBB28_71:                              # %if.end.125
	jmp	.LBB28_72
.LBB28_72:                              # %if.end.126
	jmp	.LBB28_73
.LBB28_73:                              # %if.end.127
	jmp	.LBB28_74
.LBB28_74:                              # %if.end.128
	movq	$0, -8(%rbp)
.LBB28_75:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_text_buffer_tag_to_name, .Lfunc_end28-gimp_text_buffer_tag_to_name
	.cfi_endproc

	.globl	gimp_text_buffer_name_to_tag
	.align	16, 0x90
	.type	gimp_text_buffer_name_to_tag,@function
gimp_text_buffer_name_to_tag:           # @gimp_text_buffer_name_to_tag
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$152, %rsp
.Ltmp90:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_text_buffer_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB29_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB29_8
.LBB29_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB29_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB29_7
.LBB29_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB29_7:                               # %if.end
	jmp	.LBB29_8
.LBB29_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB29_10
# BB#9:                                 # %if.then.8
	jmp	.LBB29_11
.LBB29_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_name_to_tag, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB29_48
.LBB29_11:                              # %if.end.10
	jmp	.LBB29_12
.LBB29_12:                              # %do.end
	jmp	.LBB29_13
.LBB29_13:                              # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB29_15
# BB#14:                                # %if.then.13
	jmp	.LBB29_16
.LBB29_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_name_to_tag, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB29_48
.LBB29_16:                              # %if.end.15
	jmp	.LBB29_17
.LBB29_17:                              # %do.end.16
	movq	-32(%rbp), %rdi
	movl	$.L.str.15, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB29_19
# BB#18:                                # %if.then.19
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB29_48
.LBB29_19:                              # %if.else.20
	movq	-32(%rbp), %rdi
	movl	$.L.str.16, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB29_21
# BB#20:                                # %if.then.23
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB29_48
.LBB29_21:                              # %if.else.24
	movq	-32(%rbp), %rdi
	movl	$.L.str.17, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB29_23
# BB#22:                                # %if.then.27
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB29_48
.LBB29_23:                              # %if.else.28
	movq	-32(%rbp), %rdi
	movl	$.L.str.18, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB29_25
# BB#24:                                # %if.then.31
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB29_48
.LBB29_25:                              # %if.else.32
	movq	-32(%rbp), %rdi
	movl	$.L.str.20, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB29_43
# BB#26:                                # %land.lhs.true.35
	cmpq	$0, -40(%rbp)
	je	.LBB29_43
# BB#27:                                # %land.lhs.true.37
	cmpq	$0, -48(%rbp)
	je	.LBB29_43
# BB#28:                                # %if.then.39
	movq	-40(%rbp), %rdi
	movl	$.L.str.6, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB29_30
# BB#29:                                # %if.then.42
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	atoi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_text_buffer_get_size_tag
	movq	%rax, -16(%rbp)
	jmp	.LBB29_48
.LBB29_30:                              # %if.else.45
	movq	-40(%rbp), %rdi
	movl	$.L.str.21, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB29_32
# BB#31:                                # %if.then.48
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	atoi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_text_buffer_get_baseline_tag
	movq	%rax, -16(%rbp)
	jmp	.LBB29_48
.LBB29_32:                              # %if.else.51
	movq	-40(%rbp), %rdi
	movl	$.L.str.22, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB29_34
# BB#33:                                # %if.then.54
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	atoi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_text_buffer_get_kerning_tag
	movq	%rax, -16(%rbp)
	jmp	.LBB29_48
.LBB29_34:                              # %if.else.57
	movq	-40(%rbp), %rdi
	movl	$.L.str.10, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB29_36
# BB#35:                                # %if.then.60
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_text_buffer_get_font_tag
	movq	%rax, -16(%rbp)
	jmp	.LBB29_48
.LBB29_36:                              # %if.else.62
	movq	-40(%rbp), %rdi
	movl	$.L.str.23, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB29_38
# BB#37:                                # %if.then.65
	movabsq	$.L.str.24, %rsi
	leaq	-108(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-116(%rbp), %r8
	movq	-48(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_sscanf
	leaq	-104(%rbp), %rdi
	movl	-108(%rbp), %r9d
	movb	%r9b, %r10b
	movl	-112(%rbp), %r9d
	movb	%r9b, %r11b
	movl	-116(%rbp), %r9d
	movb	%r9b, %bl
	movzbl	%r10b, %esi
	movzbl	%r11b, %edx
	movzbl	%bl, %ecx
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gimp_rgb_set_uchar
	leaq	-104(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_text_buffer_get_color_tag
	movq	%rax, -16(%rbp)
	jmp	.LBB29_48
.LBB29_38:                              # %if.end.74
	jmp	.LBB29_39
.LBB29_39:                              # %if.end.75
	jmp	.LBB29_40
.LBB29_40:                              # %if.end.76
	jmp	.LBB29_41
.LBB29_41:                              # %if.end.77
	jmp	.LBB29_42
.LBB29_42:                              # %if.end.78
	jmp	.LBB29_43
.LBB29_43:                              # %if.end.79
	jmp	.LBB29_44
.LBB29_44:                              # %if.end.80
	jmp	.LBB29_45
.LBB29_45:                              # %if.end.81
	jmp	.LBB29_46
.LBB29_46:                              # %if.end.82
	jmp	.LBB29_47
.LBB29_47:                              # %if.end.83
	movq	$0, -16(%rbp)
.LBB29_48:                              # %return
	movq	-16(%rbp), %rax
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_text_buffer_name_to_tag, .Lfunc_end29-gimp_text_buffer_name_to_tag
	.cfi_endproc

	.globl	gimp_text_buffer_set_insert_tags
	.align	16, 0x90
	.type	gimp_text_buffer_set_insert_tags,@function
gimp_text_buffer_set_insert_tags:       # @gimp_text_buffer_set_insert_tags
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_text_buffer_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB30_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB30_8
.LBB30_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB30_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB30_7
.LBB30_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB30_7:                               # %if.end
	jmp	.LBB30_8
.LBB30_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB30_10
# BB#9:                                 # %if.then.8
	jmp	.LBB30_11
.LBB30_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_set_insert_tags, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB30_13
.LBB30_11:                              # %if.end.10
	jmp	.LBB30_12
.LBB30_12:                              # %do.end
	movq	-8(%rbp), %rax
	movl	$1, 144(%rax)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	callq	g_list_free
	movq	-8(%rbp), %rax
	movq	160(%rax), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 152(%rdi)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 160(%rdi)
.LBB30_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_text_buffer_set_insert_tags, .Lfunc_end30-gimp_text_buffer_set_insert_tags
	.cfi_endproc

	.globl	gimp_text_buffer_insert
	.align	16, 0x90
	.type	gimp_text_buffer_insert,@function
gimp_text_buffer_insert:                # @gimp_text_buffer_insert
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp96:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -208(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -216(%rbp)
	callq	gimp_text_buffer_get_type
	movq	%rax, -224(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.LBB31_3
# BB#2:                                 # %if.then
	movl	$0, -228(%rbp)
	jmp	.LBB31_8
.LBB31_3:                               # %if.else
	movq	-216(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB31_6
# BB#4:                                 # %land.lhs.true
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-224(%rbp), %rax
	jne	.LBB31_6
# BB#5:                                 # %if.then.3
	movl	$1, -228(%rbp)
	jmp	.LBB31_7
.LBB31_6:                               # %if.else.4
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -228(%rbp)
.LBB31_7:                               # %if.end
	jmp	.LBB31_8
.LBB31_8:                               # %if.end.6
	movl	-228(%rbp), %eax
	movl	%eax, -232(%rbp)
	cmpl	$0, -232(%rbp)
	je	.LBB31_10
# BB#9:                                 # %if.then.8
	jmp	.LBB31_11
.LBB31_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_insert, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB31_41
.LBB31_11:                              # %if.end.10
	jmp	.LBB31_12
.LBB31_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_insert
	leaq	-96(%rbp), %rsi
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_text_buffer_get_iter_at_mark
	leaq	-96(%rbp), %rdi
	callq	gtk_text_iter_get_offset
	leaq	-96(%rbp), %rdi
	xorl	%esi, %esi
	movl	%eax, -180(%rbp)
	movq	-8(%rbp), %rdx
	movl	144(%rdx), %eax
	movl	%eax, -184(%rbp)
	movq	-8(%rbp), %rdx
	movq	152(%rdx), %rdx
	movq	%rdx, -192(%rbp)
	movq	-8(%rbp), %rdx
	movq	160(%rdx), %rdx
	movq	%rdx, -200(%rbp)
	movq	-8(%rbp), %rdx
	movl	$0, 144(%rdx)
	movq	-8(%rbp), %rdx
	movq	$0, 152(%rdx)
	movq	-8(%rbp), %rdx
	movq	$0, 160(%rdx)
	callq	gtk_text_iter_get_toggled_tags
	movq	%rax, -208(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_buffer_begin_user_action
	movq	-8(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-96(%rbp), %rsi
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_text_buffer_insert
	movq	-8(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-176(%rbp), %rsi
	movl	-180(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_iter_at_offset
	cmpl	$0, -184(%rbp)
	je	.LBB31_28
# BB#13:                                # %if.then.31
	movq	-200(%rbp), %rax
	movq	%rax, -240(%rbp)
.LBB31_14:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -240(%rbp)
	je	.LBB31_20
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB31_14 Depth=1
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-176(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	-248(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_text_buffer_remove_tag
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB31_14 Depth=1
	cmpq	$0, -240(%rbp)
	je	.LBB31_18
# BB#17:                                # %cond.true
                                        #   in Loop: Header=BB31_14 Depth=1
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB31_19
.LBB31_18:                              # %cond.false
                                        #   in Loop: Header=BB31_14 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB31_19
.LBB31_19:                              # %cond.end
                                        #   in Loop: Header=BB31_14 Depth=1
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	%rax, -240(%rbp)
	jmp	.LBB31_14
.LBB31_20:                              # %for.end
	movq	-192(%rbp), %rax
	movq	%rax, -240(%rbp)
.LBB31_21:                              # %for.cond.38
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -240(%rbp)
	je	.LBB31_27
# BB#22:                                # %for.body.40
                                        #   in Loop: Header=BB31_21 Depth=1
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-176(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	-256(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_text_buffer_apply_tag
# BB#23:                                # %for.inc.46
                                        #   in Loop: Header=BB31_21 Depth=1
	cmpq	$0, -240(%rbp)
	je	.LBB31_25
# BB#24:                                # %cond.true.48
                                        #   in Loop: Header=BB31_21 Depth=1
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB31_26
.LBB31_25:                              # %cond.false.50
                                        #   in Loop: Header=BB31_21 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB31_26
.LBB31_26:                              # %cond.end.51
                                        #   in Loop: Header=BB31_21 Depth=1
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -240(%rbp)
	jmp	.LBB31_21
.LBB31_27:                              # %for.end.53
	jmp	.LBB31_28
.LBB31_28:                              # %if.end.54
	cmpq	$0, -208(%rbp)
	je	.LBB31_40
# BB#29:                                # %if.then.56
	movq	-208(%rbp), %rax
	movq	%rax, -264(%rbp)
.LBB31_30:                              # %for.cond.58
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -264(%rbp)
	je	.LBB31_39
# BB#31:                                # %for.body.60
                                        #   in Loop: Header=BB31_30 Depth=1
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-200(%rbp), %rdi
	movq	-272(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	jne	.LBB31_34
# BB#32:                                # %land.lhs.true.66
                                        #   in Loop: Header=BB31_30 Depth=1
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdi
	movq	-272(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	jne	.LBB31_34
# BB#33:                                # %if.then.69
                                        #   in Loop: Header=BB31_30 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-176(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	-272(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_text_buffer_apply_tag
.LBB31_34:                              # %if.end.72
                                        #   in Loop: Header=BB31_30 Depth=1
	jmp	.LBB31_35
.LBB31_35:                              # %for.inc.73
                                        #   in Loop: Header=BB31_30 Depth=1
	cmpq	$0, -264(%rbp)
	je	.LBB31_37
# BB#36:                                # %cond.true.75
                                        #   in Loop: Header=BB31_30 Depth=1
	movq	-264(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB31_38
.LBB31_37:                              # %cond.false.77
                                        #   in Loop: Header=BB31_30 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB31_38
.LBB31_38:                              # %cond.end.78
                                        #   in Loop: Header=BB31_30 Depth=1
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -264(%rbp)
	jmp	.LBB31_30
.LBB31_39:                              # %for.end.80
	movq	-208(%rbp), %rdi
	callq	g_slist_free
.LBB31_40:                              # %if.end.81
	movq	-200(%rbp), %rdi
	callq	g_list_free
	movq	-192(%rbp), %rdi
	callq	g_list_free
	movq	-8(%rbp), %rdi
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_buffer_end_user_action
.LBB31_41:                              # %return
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_text_buffer_insert, .Lfunc_end31-gimp_text_buffer_insert
	.cfi_endproc

	.globl	gimp_text_buffer_get_iter_index
	.align	16, 0x90
	.type	gimp_text_buffer_get_iter_index,@function
gimp_text_buffer_get_iter_index:        # @gimp_text_buffer_get_iter_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp99:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_text_buffer_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB32_3
# BB#2:                                 # %if.then
	movl	$0, -148(%rbp)
	jmp	.LBB32_8
.LBB32_3:                               # %if.else
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB32_6
# BB#4:                                 # %land.lhs.true
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB32_6
# BB#5:                                 # %if.then.3
	movl	$1, -148(%rbp)
	jmp	.LBB32_7
.LBB32_6:                               # %if.else.4
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB32_7:                               # %if.end
	jmp	.LBB32_8
.LBB32_8:                               # %if.end.6
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB32_10
# BB#9:                                 # %if.then.8
	jmp	.LBB32_11
.LBB32_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_get_iter_index, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB32_29
.LBB32_11:                              # %if.end.10
	jmp	.LBB32_12
.LBB32_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_start_iter
	movq	-16(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-112(%rbp), %rsi
	movl	$1, %ecx
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_text
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -124(%rbp)
	movq	-120(%rbp), %rdi
	callq	g_free
	cmpl	$0, -28(%rbp)
	je	.LBB32_28
# BB#13:                                # %if.then.18
	jmp	.LBB32_14
.LBB32_14:                              # %do.body.19
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_15 Depth 2
	leaq	-112(%rbp), %rdi
	callq	gtk_text_iter_get_tags
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -168(%rbp)
.LBB32_15:                              # %for.cond
                                        #   Parent Loop BB32_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -168(%rbp)
	je	.LBB32_23
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB32_15 Depth=2
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-16(%rbp), %rax
	movq	120(%rax), %rdi
	movq	-176(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	je	.LBB32_18
# BB#17:                                # %if.then.27
                                        #   in Loop: Header=BB32_14 Depth=1
	movl	-124(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB32_23
.LBB32_18:                              # %if.end.28
                                        #   in Loop: Header=BB32_15 Depth=2
	jmp	.LBB32_19
.LBB32_19:                              # %for.inc
                                        #   in Loop: Header=BB32_15 Depth=2
	cmpq	$0, -168(%rbp)
	je	.LBB32_21
# BB#20:                                # %cond.true
                                        #   in Loop: Header=BB32_15 Depth=2
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB32_22
.LBB32_21:                              # %cond.false
                                        #   in Loop: Header=BB32_15 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB32_22
.LBB32_22:                              # %cond.end
                                        #   in Loop: Header=BB32_15 Depth=2
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	jmp	.LBB32_15
.LBB32_23:                              # %for.end
                                        #   in Loop: Header=BB32_14 Depth=1
	movq	-160(%rbp), %rdi
	callq	g_slist_free
	leaq	-112(%rbp), %rdi
	callq	gtk_text_iter_forward_char
	leaq	-112(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gtk_text_iter_compare
	cmpl	$0, %eax
	jle	.LBB32_25
# BB#24:                                # %if.then.34
                                        #   in Loop: Header=BB32_14 Depth=1
	movl	$80, %eax
	movl	%eax, %edx
	leaq	-112(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
.LBB32_25:                              # %if.end.35
                                        #   in Loop: Header=BB32_14 Depth=1
	jmp	.LBB32_26
.LBB32_26:                              # %do.cond
                                        #   in Loop: Header=BB32_14 Depth=1
	leaq	-112(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_text_iter_equal
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB32_14
# BB#27:                                # %do.end.38
	jmp	.LBB32_28
.LBB32_28:                              # %if.end.39
	movl	-124(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB32_29:                              # %return
	movl	-4(%rbp), %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_text_buffer_get_iter_index, .Lfunc_end32-gimp_text_buffer_get_iter_index
	.cfi_endproc

	.globl	gimp_text_buffer_get_iter_at_index
	.align	16, 0x90
	.type	gimp_text_buffer_get_iter_at_index,@function
gimp_text_buffer_get_iter_at_index:     # @gimp_text_buffer_get_iter_at_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp102:
	.cfi_def_cfa_register %rbp
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -200(%rbp)
	callq	gimp_text_buffer_get_type
	movq	%rax, -208(%rbp)
	cmpq	$0, -200(%rbp)
	jne	.LBB33_3
# BB#2:                                 # %if.then
	movl	$0, -212(%rbp)
	jmp	.LBB33_8
.LBB33_3:                               # %if.else
	movq	-200(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB33_6
# BB#4:                                 # %land.lhs.true
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-208(%rbp), %rax
	jne	.LBB33_6
# BB#5:                                 # %if.then.3
	movl	$1, -212(%rbp)
	jmp	.LBB33_7
.LBB33_6:                               # %if.else.4
	movq	-200(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -212(%rbp)
.LBB33_7:                               # %if.end
	jmp	.LBB33_8
.LBB33_8:                               # %if.end.6
	movl	-212(%rbp), %eax
	movl	%eax, -216(%rbp)
	cmpl	$0, -216(%rbp)
	je	.LBB33_10
# BB#9:                                 # %if.then.8
	jmp	.LBB33_11
.LBB33_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_get_iter_at_index, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB33_34
.LBB33_11:                              # %if.end.10
	jmp	.LBB33_12
.LBB33_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-104(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_bounds
	movq	-8(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-104(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_text
	movq	%rax, -192(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB33_33
# BB#13:                                # %if.then.17
	movq	-192(%rbp), %rax
	movq	%rax, -224(%rbp)
	movl	$0, -228(%rbp)
.LBB33_14:                              # %do.body.22
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_15 Depth 2
	leaq	-104(%rbp), %rdi
	callq	gtk_text_iter_get_tags
	movq	%rax, -248(%rbp)
	movq	-224(%rbp), %rax
	movq	-224(%rbp), %rdi
	movzbl	(%rdi), %ecx
	movl	%ecx, %edi
	movq	g_utf8_skip, %rdx
	movsbl	(%rdx,%rdi), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	-224(%rbp), %rdx
	subq	%rdx, %rax
	movslq	-228(%rbp), %rdx
	addq	%rax, %rdx
	movl	%edx, %ecx
	movl	%ecx, -228(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -256(%rbp)
.LBB33_15:                              # %for.cond
                                        #   Parent Loop BB33_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -256(%rbp)
	je	.LBB33_26
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB33_15 Depth=2
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdi
	movq	-264(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	je	.LBB33_21
# BB#17:                                # %if.then.32
                                        #   in Loop: Header=BB33_14 Depth=1
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	subl	$3, %ecx
	cmpl	%ecx, %eax
	jle	.LBB33_19
# BB#18:                                # %cond.true
                                        #   in Loop: Header=BB33_14 Depth=1
	xorl	%eax, %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
	jmp	.LBB33_20
.LBB33_19:                              # %cond.false
                                        #   in Loop: Header=BB33_14 Depth=1
	movl	-20(%rbp), %eax
	subl	$3, %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
.LBB33_20:                              # %cond.end
                                        #   in Loop: Header=BB33_14 Depth=1
	movl	-284(%rbp), %eax        # 4-byte Reload
	movl	%eax, -20(%rbp)
	jmp	.LBB33_26
.LBB33_21:                              # %if.end.36
                                        #   in Loop: Header=BB33_15 Depth=2
	jmp	.LBB33_22
.LBB33_22:                              # %for.inc
                                        #   in Loop: Header=BB33_15 Depth=2
	cmpq	$0, -256(%rbp)
	je	.LBB33_24
# BB#23:                                # %cond.true.38
                                        #   in Loop: Header=BB33_15 Depth=2
	movq	-256(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB33_25
.LBB33_24:                              # %cond.false.39
                                        #   in Loop: Header=BB33_15 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB33_25
.LBB33_25:                              # %cond.end.40
                                        #   in Loop: Header=BB33_15 Depth=2
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, -256(%rbp)
	jmp	.LBB33_15
.LBB33_26:                              # %for.end
                                        #   in Loop: Header=BB33_14 Depth=1
	movq	-248(%rbp), %rdi
	callq	g_slist_free
	leaq	-104(%rbp), %rdi
	callq	gtk_text_iter_forward_char
	leaq	-104(%rbp), %rdi
	leaq	-184(%rbp), %rsi
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	gtk_text_iter_compare
	cmpl	$0, %eax
	jle	.LBB33_28
# BB#27:                                # %if.then.46
                                        #   in Loop: Header=BB33_14 Depth=1
	movl	$80, %eax
	movl	%eax, %edx
	leaq	-184(%rbp), %rcx
	leaq	-104(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
.LBB33_28:                              # %if.end.47
                                        #   in Loop: Header=BB33_14 Depth=1
	jmp	.LBB33_29
.LBB33_29:                              # %do.cond
                                        #   in Loop: Header=BB33_14 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-228(%rbp), %eax
	cmpl	-20(%rbp), %eax
	movb	%cl, -301(%rbp)         # 1-byte Spill
	jge	.LBB33_31
# BB#30:                                # %land.rhs
                                        #   in Loop: Header=BB33_14 Depth=1
	leaq	-104(%rbp), %rdi
	leaq	-184(%rbp), %rsi
	callq	gtk_text_iter_equal
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -301(%rbp)         # 1-byte Spill
.LBB33_31:                              # %land.end
                                        #   in Loop: Header=BB33_14 Depth=1
	movb	-301(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB33_14
# BB#32:                                # %do.end.52
	jmp	.LBB33_33
.LBB33_33:                              # %if.end.53
	movslq	-20(%rbp), %rax
	movq	-192(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	$-1, %rsi
	movq	-16(%rbp), %rcx
	movq	-192(%rbp), %rdi
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	g_utf8_strlen
	movl	%eax, %edx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	-320(%rbp), %rsi        # 8-byte Reload
	callq	gtk_text_buffer_get_iter_at_offset
	movq	-192(%rbp), %rdi
	callq	g_free
.LBB33_34:                              # %return
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_text_buffer_get_iter_at_index, .Lfunc_end33-gimp_text_buffer_get_iter_at_index
	.cfi_endproc

	.globl	gimp_text_buffer_load
	.align	16, 0x90
	.type	gimp_text_buffer_load,@function
gimp_text_buffer_load:                  # @gimp_text_buffer_load
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp105:
	.cfi_def_cfa_register %rbp
	subq	$2320, %rsp             # imm = 0x910
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -2100(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -2192(%rbp)
	callq	gimp_text_buffer_get_type
	movq	%rax, -2200(%rbp)
	cmpq	$0, -2192(%rbp)
	jne	.LBB34_3
# BB#2:                                 # %if.then
	movl	$0, -2204(%rbp)
	jmp	.LBB34_8
.LBB34_3:                               # %if.else
	movq	-2192(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB34_6
# BB#4:                                 # %land.lhs.true
	movq	-2192(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-2200(%rbp), %rax
	jne	.LBB34_6
# BB#5:                                 # %if.then.3
	movl	$1, -2204(%rbp)
	jmp	.LBB34_7
.LBB34_6:                               # %if.else.4
	movq	-2192(%rbp), %rdi
	movq	-2200(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -2204(%rbp)
.LBB34_7:                               # %if.end
	jmp	.LBB34_8
.LBB34_8:                               # %if.end.6
	movl	-2204(%rbp), %eax
	movl	%eax, -2208(%rbp)
	cmpl	$0, -2208(%rbp)
	je	.LBB34_10
# BB#9:                                 # %if.then.8
	jmp	.LBB34_11
.LBB34_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_load, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB34_36
.LBB34_11:                              # %if.end.10
	jmp	.LBB34_12
.LBB34_12:                              # %do.end
	jmp	.LBB34_13
.LBB34_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB34_15
# BB#14:                                # %if.then.13
	jmp	.LBB34_16
.LBB34_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_load, %rsi
	movabsq	$.L.str.26, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB34_36
.LBB34_16:                              # %if.end.15
	jmp	.LBB34_17
.LBB34_17:                              # %do.end.16
	jmp	.LBB34_18
.LBB34_18:                              # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB34_20
# BB#19:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB34_21
.LBB34_20:                              # %if.then.20
	jmp	.LBB34_22
.LBB34_21:                              # %if.else.21
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_load, %rsi
	movabsq	$.L.str.27, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB34_36
.LBB34_22:                              # %if.end.22
	jmp	.LBB34_23
.LBB34_23:                              # %do.end.23
	movabsq	$.L.str.28, %rsi
	movq	-24(%rbp), %rdi
	callq	fopen
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB34_25
# BB#24:                                # %if.then.26
	movq	-32(%rbp), %rdi
	movq	%rdi, -2232(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -2236(%rbp)       # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movl	%eax, -2240(%rbp)       # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-2232(%rbp), %rdi       # 8-byte Reload
	movl	-2236(%rbp), %esi       # 4-byte Reload
	movl	-2240(%rbp), %edx       # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB34_36
.LBB34_25:                              # %if.end.32
	movq	-16(%rbp), %rax
	movq	%rax, -2248(%rbp)       # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-2248(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_buffer_begin_user_action
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_text_buffer_set_text
	movq	-16(%rbp), %rax
	movq	%rax, -2256(%rbp)       # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-2256(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-2184(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_end_iter
.LBB34_26:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rdi
	callq	feof
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB34_27
	jmp	.LBB34_33
.LBB34_27:                              # %while.body
                                        #   in Loop: Header=BB34_26 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	leaq	-2096(%rbp), %rcx
	movl	$2048, %eax             # imm = 0x800
	movl	%eax, %edx
	movslq	-2100(%rbp), %rdi
	subq	%rdi, %rdx
	subq	$1, %rdx
	movl	%edx, %eax
	movl	%eax, -2224(%rbp)
	movslq	-2100(%rbp), %rdx
	addq	%rdx, %rcx
	movslq	-2224(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -2264(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	-2264(%rbp), %rcx       # 8-byte Reload
	callq	fread
	leaq	-2216(%rbp), %rdx
	leaq	-2096(%rbp), %rdi
	movl	%eax, %r8d
	movl	%r8d, -2220(%rbp)
	movl	-2220(%rbp), %r8d
	addl	-2100(%rbp), %r8d
	movslq	%r8d, %rax
	movb	$0, -2096(%rbp,%rax)
	movl	-2220(%rbp), %r8d
	addl	-2100(%rbp), %r8d
	movslq	%r8d, %rsi
	callq	g_utf8_validate
	movq	-16(%rbp), %rcx
	movl	%eax, -2268(%rbp)       # 4-byte Spill
	movq	%rcx, -2280(%rbp)       # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-2280(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-2184(%rbp), %rsi
	leaq	-2096(%rbp), %rcx
	movq	-2216(%rbp), %rdx
	subq	%rcx, %rdx
	movl	%edx, %r8d
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movl	%r8d, %ecx
	callq	gtk_text_buffer_insert
	movq	-16(%rbp), %rax
	movq	%rax, -2288(%rbp)       # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-2288(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-2184(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_end_iter
	leaq	-2096(%rbp), %rax
	movslq	-2100(%rbp), %rdx
	addq	%rdx, %rax
	movslq	-2220(%rbp), %rdx
	addq	%rdx, %rax
	movq	-2216(%rbp), %rdx
	subq	%rdx, %rax
	movl	%eax, %ecx
	movl	%ecx, -2100(%rbp)
# BB#28:                                # %do.body.67
                                        #   in Loop: Header=BB34_26 Depth=1
	leaq	-2096(%rbp), %rax
	movq	-2216(%rbp), %rsi
	movslq	-2100(%rbp), %rdx
	movq	%rax, %rdi
	callq	memmove
# BB#29:                                # %do.end.69
                                        #   in Loop: Header=BB34_26 Depth=1
	cmpl	$6, -2100(%rbp)
	jg	.LBB34_31
# BB#30:                                # %lor.lhs.false.72
                                        #   in Loop: Header=BB34_26 Depth=1
	movl	-2220(%rbp), %eax
	cmpl	-2224(%rbp), %eax
	jge	.LBB34_32
.LBB34_31:                              # %if.then.75
	jmp	.LBB34_33
.LBB34_32:                              # %if.end.76
                                        #   in Loop: Header=BB34_26 Depth=1
	jmp	.LBB34_26
.LBB34_33:                              # %while.end
	cmpl	$0, -2100(%rbp)
	je	.LBB34_35
# BB#34:                                # %if.then.78
	movabsq	$.L.str.29, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -2296(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-2296(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
.LBB34_35:                              # %if.end.81
	movq	-40(%rbp), %rdi
	callq	fclose
	movq	-16(%rbp), %rdi
	movl	%eax, -2300(%rbp)       # 4-byte Spill
	movq	%rdi, -2312(%rbp)       # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-2312(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_buffer_end_user_action
	movl	$1, -4(%rbp)
.LBB34_36:                              # %return
	movl	-4(%rbp), %eax
	addq	$2320, %rsp             # imm = 0x910
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_text_buffer_load, .Lfunc_end34-gimp_text_buffer_load
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp106:
	.cfi_def_cfa_offset 16
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp108:
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
	je	.LBB35_2
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
.LBB35_2:                               # %entry
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
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end35:
	.size	g_message, .Lfunc_end35-g_message
	.cfi_endproc

	.globl	gimp_text_buffer_save
	.align	16, 0x90
	.type	gimp_text_buffer_save,@function
gimp_text_buffer_save:                  # @gimp_text_buffer_save
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
.Ltmp110:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp111:
	.cfi_def_cfa_register %rbp
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -224(%rbp)
	callq	gimp_text_buffer_get_type
	movq	%rax, -232(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB36_3
# BB#2:                                 # %if.then
	movl	$0, -236(%rbp)
	jmp	.LBB36_8
.LBB36_3:                               # %if.else
	movq	-224(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB36_6
# BB#4:                                 # %land.lhs.true
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-232(%rbp), %rax
	jne	.LBB36_6
# BB#5:                                 # %if.then.3
	movl	$1, -236(%rbp)
	jmp	.LBB36_7
.LBB36_6:                               # %if.else.4
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -236(%rbp)
.LBB36_7:                               # %if.end
	jmp	.LBB36_8
.LBB36_8:                               # %if.end.6
	movl	-236(%rbp), %eax
	movl	%eax, -240(%rbp)
	cmpl	$0, -240(%rbp)
	je	.LBB36_10
# BB#9:                                 # %if.then.8
	jmp	.LBB36_11
.LBB36_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_save, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB36_35
.LBB36_11:                              # %if.end.10
	jmp	.LBB36_12
.LBB36_12:                              # %do.end
	jmp	.LBB36_13
.LBB36_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB36_15
# BB#14:                                # %if.then.13
	jmp	.LBB36_16
.LBB36_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_save, %rsi
	movabsq	$.L.str.26, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB36_35
.LBB36_16:                              # %if.end.15
	jmp	.LBB36_17
.LBB36_17:                              # %do.end.16
	jmp	.LBB36_18
.LBB36_18:                              # %do.body.17
	cmpq	$0, -40(%rbp)
	je	.LBB36_20
# BB#19:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB36_21
.LBB36_20:                              # %if.then.20
	jmp	.LBB36_22
.LBB36_21:                              # %if.else.21
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_buffer_save, %rsi
	movabsq	$.L.str.27, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB36_35
.LBB36_22:                              # %if.end.22
	jmp	.LBB36_23
.LBB36_23:                              # %do.end.23
	movl	$1089, %esi             # imm = 0x441
	movl	$438, %edx              # imm = 0x1B6
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	open
	movl	%eax, -204(%rbp)
	cmpl	$-1, -204(%rbp)
	jne	.LBB36_25
# BB#24:                                # %if.then.26
	movq	-40(%rbp), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movl	%eax, -264(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movl	-260(%rbp), %esi        # 4-byte Reload
	movl	-264(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB36_35
.LBB36_25:                              # %if.end.32
	cmpl	$0, -28(%rbp)
	je	.LBB36_27
# BB#26:                                # %if.then.34
	movq	-16(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-120(%rbp), %rsi
	leaq	-200(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_selection_bounds
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jmp	.LBB36_28
.LBB36_27:                              # %if.else.38
	movq	-16(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-120(%rbp), %rsi
	leaq	-200(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_bounds
.LBB36_28:                              # %if.end.41
	movq	-16(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-120(%rbp), %rsi
	leaq	-200(%rbp), %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_text
	movq	%rax, -216(%rbp)
	cmpq	$0, -216(%rbp)
	je	.LBB36_34
# BB#29:                                # %if.then.46
	movq	-216(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -244(%rbp)
	cmpl	$0, -244(%rbp)
	jle	.LBB36_33
# BB#30:                                # %if.then.51
	movl	-204(%rbp), %edi
	movq	-216(%rbp), %rsi
	movslq	-244(%rbp), %rdx
	callq	write
	movl	%eax, %edi
	movl	%edi, -248(%rbp)
	movl	-248(%rbp), %edi
	cmpl	-244(%rbp), %edi
	je	.LBB36_32
# BB#31:                                # %if.then.58
	movq	-216(%rbp), %rdi
	callq	g_free
	movl	-204(%rbp), %edi
	callq	close
	movq	-40(%rbp), %rdi
	movl	%eax, -300(%rbp)        # 4-byte Spill
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -316(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movl	%eax, -320(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movl	-316(%rbp), %esi        # 4-byte Reload
	movl	-320(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB36_35
.LBB36_32:                              # %if.end.65
	jmp	.LBB36_33
.LBB36_33:                              # %if.end.66
	movq	-216(%rbp), %rdi
	callq	g_free
.LBB36_34:                              # %if.end.67
	movl	-204(%rbp), %edi
	callq	close
	movl	$1, -4(%rbp)
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB36_35:                              # %return
	movl	-4(%rbp), %eax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_text_buffer_save, .Lfunc_end36-gimp_text_buffer_save
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_buffer_class_init,@function
gimp_text_buffer_class_init:            # @gimp_text_buffer_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp112:
	.cfi_def_cfa_offset 16
.Ltmp113:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp114:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_text_buffer_mark_set, %rsi
	movabsq	$gimp_text_buffer_finalize, %rdi
	movabsq	$gimp_text_buffer_dispose, %rcx
	movabsq	$gimp_text_buffer_constructed, %rdx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 184(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_text_buffer_class_init, .Lfunc_end37-gimp_text_buffer_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_buffer_constructed,@function
gimp_text_buffer_constructed:           # @gimp_text_buffer_constructed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp117:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_text_buffer_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_text_buffer_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB38_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_text_buffer_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB38_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	callq	gtk_text_buffer_set_text
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.30, %rsi
	movabsq	$.L.str.31, %rdx
	movl	$700, %ecx              # imm = 0x2BC
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_text_buffer_create_tag
	movq	-16(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.32, %rsi
	movabsq	$.L.str.33, %rdx
	movl	$2, %ecx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_text_buffer_create_tag
	movq	-16(%rbp), %rdx
	movq	%rax, 80(%rdx)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.34, %rdx
	movl	$1, %ecx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movb	$0, %al
	callq	gtk_text_buffer_create_tag
	movq	-16(%rbp), %rdx
	movq	%rax, 88(%rdx)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rdx
	movl	$1, %ecx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movb	$0, %al
	callq	gtk_text_buffer_create_tag
	movq	-16(%rbp), %rdx
	movq	%rax, 96(%rdx)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_text_buffer_constructed, .Lfunc_end38-gimp_text_buffer_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_buffer_dispose,@function
gimp_text_buffer_dispose:               # @gimp_text_buffer_dispose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
.Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp120:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	gimp_text_buffer_parent_class, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_text_buffer_dispose, .Lfunc_end39-gimp_text_buffer_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_buffer_finalize,@function
gimp_text_buffer_finalize:              # @gimp_text_buffer_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp123:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_text_buffer_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB40_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	104(%rax), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	$0, 104(%rax)
.LBB40_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB40_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	112(%rax), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	$0, 112(%rax)
.LBB40_4:                               # %if.end.8
	movq	-16(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB40_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	120(%rax), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	$0, 120(%rax)
.LBB40_6:                               # %if.end.13
	movq	-16(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB40_8
# BB#7:                                 # %if.then.15
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	$0, 128(%rax)
.LBB40_8:                               # %if.end.18
	movq	-16(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB40_10
# BB#9:                                 # %if.then.20
	movq	-16(%rbp), %rax
	movq	136(%rax), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	$0, 136(%rax)
.LBB40_10:                              # %if.end.23
	movq	-16(%rbp), %rdi
	callq	gimp_text_buffer_clear_insert_tags
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_text_buffer_parent_class, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_text_buffer_finalize, .Lfunc_end40-gimp_text_buffer_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_buffer_mark_set,@function
gimp_text_buffer_mark_set:              # @gimp_text_buffer_mark_set
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
.Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp126:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	gimp_text_buffer_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_text_buffer_clear_insert_tags
	movq	gimp_text_buffer_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	184(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_text_buffer_mark_set, .Lfunc_end41-gimp_text_buffer_mark_set
	.cfi_endproc

	.type	gimp_text_buffer_get_type.g_define_type_id__volatile,@object # @gimp_text_buffer_get_type.g_define_type_id__volatile
	.local	gimp_text_buffer_get_type.g_define_type_id__volatile
	.comm	gimp_text_buffer_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpTextBuffer"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_text_buffer_set_text,@object # @__func__.gimp_text_buffer_set_text
.L__func__.gimp_text_buffer_set_text:
	.asciz	"gimp_text_buffer_set_text"
	.size	.L__func__.gimp_text_buffer_set_text, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_TEXT_BUFFER (buffer)"
	.size	.L.str.2, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.zero	1
	.size	.L.str.3, 1

	.type	.L__func__.gimp_text_buffer_get_text,@object # @__func__.gimp_text_buffer_get_text
.L__func__.gimp_text_buffer_get_text:
	.asciz	"gimp_text_buffer_get_text"
	.size	.L__func__.gimp_text_buffer_get_text, 26

	.type	.L__func__.gimp_text_buffer_set_markup,@object # @__func__.gimp_text_buffer_set_markup
.L__func__.gimp_text_buffer_set_markup:
	.asciz	"gimp_text_buffer_set_markup"
	.size	.L__func__.gimp_text_buffer_set_markup, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"EEK: %s\n"
	.size	.L.str.4, 9

	.type	.L__func__.gimp_text_buffer_get_markup,@object # @__func__.gimp_text_buffer_get_markup
.L__func__.gimp_text_buffer_get_markup:
	.asciz	"gimp_text_buffer_get_markup"
	.size	.L__func__.gimp_text_buffer_get_markup, 28

	.type	.L__func__.gimp_text_buffer_has_markup,@object # @__func__.gimp_text_buffer_has_markup
.L__func__.gimp_text_buffer_has_markup:
	.asciz	"gimp_text_buffer_has_markup"
	.size	.L__func__.gimp_text_buffer_has_markup, 28

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"size-%d"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"size"
	.size	.L.str.6, 5

	.type	.L__func__.gimp_text_buffer_set_size,@object # @__func__.gimp_text_buffer_set_size
.L__func__.gimp_text_buffer_set_size:
	.asciz	"gimp_text_buffer_set_size"
	.size	.L__func__.gimp_text_buffer_set_size, 26

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"start != NULL"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"end != NULL"
	.size	.L.str.8, 12

	.type	.L__func__.gimp_text_buffer_change_size,@object # @__func__.gimp_text_buffer_change_size
.L__func__.gimp_text_buffer_change_size:
	.asciz	"gimp_text_buffer_change_size"
	.size	.L__func__.gimp_text_buffer_change_size, 29

	.type	.L__func__.gimp_text_buffer_set_baseline,@object # @__func__.gimp_text_buffer_set_baseline
.L__func__.gimp_text_buffer_set_baseline:
	.asciz	"gimp_text_buffer_set_baseline"
	.size	.L__func__.gimp_text_buffer_set_baseline, 30

	.type	.L__func__.gimp_text_buffer_change_baseline,@object # @__func__.gimp_text_buffer_change_baseline
.L__func__.gimp_text_buffer_change_baseline:
	.asciz	"gimp_text_buffer_change_baseline"
	.size	.L__func__.gimp_text_buffer_change_baseline, 33

	.type	.L__func__.gimp_text_buffer_set_kerning,@object # @__func__.gimp_text_buffer_set_kerning
.L__func__.gimp_text_buffer_set_kerning:
	.asciz	"gimp_text_buffer_set_kerning"
	.size	.L__func__.gimp_text_buffer_set_kerning, 29

	.type	.L__func__.gimp_text_buffer_change_kerning,@object # @__func__.gimp_text_buffer_change_kerning
.L__func__.gimp_text_buffer_change_kerning:
	.asciz	"gimp_text_buffer_change_kerning"
	.size	.L__func__.gimp_text_buffer_change_kerning, 32

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"font-%s"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"font"
	.size	.L.str.10, 5

	.type	.L__func__.gimp_text_buffer_set_font,@object # @__func__.gimp_text_buffer_set_font
.L__func__.gimp_text_buffer_set_font:
	.asciz	"gimp_text_buffer_set_font"
	.size	.L__func__.gimp_text_buffer_set_font, 26

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"color-#%02x%02x%02x"
	.size	.L.str.11, 20

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"foreground-gdk"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"foreground-set"
	.size	.L.str.13, 15

	.type	.L__func__.gimp_text_buffer_set_color,@object # @__func__.gimp_text_buffer_set_color
.L__func__.gimp_text_buffer_set_color:
	.asciz	"gimp_text_buffer_set_color"
	.size	.L__func__.gimp_text_buffer_set_color, 27

	.type	.L__func__.gimp_text_buffer_tag_to_name,@object # @__func__.gimp_text_buffer_tag_to_name
.L__func__.gimp_text_buffer_tag_to_name:
	.asciz	"gimp_text_buffer_tag_to_name"
	.size	.L__func__.gimp_text_buffer_tag_to_name, 29

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"GTK_IS_TEXT_TAG (tag)"
	.size	.L.str.14, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"b"
	.size	.L.str.15, 2

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"i"
	.size	.L.str.16, 2

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"u"
	.size	.L.str.17, 2

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"s"
	.size	.L.str.18, 2

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%d"
	.size	.L.str.19, 3

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"span"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"rise"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"letter_spacing"
	.size	.L.str.22, 15

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"foreground"
	.size	.L.str.23, 11

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"#%02x%02x%02x"
	.size	.L.str.24, 14

	.type	.L__func__.gimp_text_buffer_name_to_tag,@object # @__func__.gimp_text_buffer_name_to_tag
.L__func__.gimp_text_buffer_name_to_tag:
	.asciz	"gimp_text_buffer_name_to_tag"
	.size	.L__func__.gimp_text_buffer_name_to_tag, 29

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"name != NULL"
	.size	.L.str.25, 13

	.type	.L__func__.gimp_text_buffer_set_insert_tags,@object # @__func__.gimp_text_buffer_set_insert_tags
.L__func__.gimp_text_buffer_set_insert_tags:
	.asciz	"gimp_text_buffer_set_insert_tags"
	.size	.L__func__.gimp_text_buffer_set_insert_tags, 33

	.type	.L__func__.gimp_text_buffer_clear_insert_tags,@object # @__func__.gimp_text_buffer_clear_insert_tags
.L__func__.gimp_text_buffer_clear_insert_tags:
	.asciz	"gimp_text_buffer_clear_insert_tags"
	.size	.L__func__.gimp_text_buffer_clear_insert_tags, 35

	.type	.L__func__.gimp_text_buffer_insert,@object # @__func__.gimp_text_buffer_insert
.L__func__.gimp_text_buffer_insert:
	.asciz	"gimp_text_buffer_insert"
	.size	.L__func__.gimp_text_buffer_insert, 24

	.type	.L__func__.gimp_text_buffer_get_iter_index,@object # @__func__.gimp_text_buffer_get_iter_index
.L__func__.gimp_text_buffer_get_iter_index:
	.asciz	"gimp_text_buffer_get_iter_index"
	.size	.L__func__.gimp_text_buffer_get_iter_index, 32

	.type	.L__func__.gimp_text_buffer_get_iter_at_index,@object # @__func__.gimp_text_buffer_get_iter_at_index
.L__func__.gimp_text_buffer_get_iter_at_index:
	.asciz	"gimp_text_buffer_get_iter_at_index"
	.size	.L__func__.gimp_text_buffer_get_iter_at_index, 35

	.type	.L__func__.gimp_text_buffer_load,@object # @__func__.gimp_text_buffer_load
.L__func__.gimp_text_buffer_load:
	.asciz	"gimp_text_buffer_load"
	.size	.L__func__.gimp_text_buffer_load, 22

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"filename != NULL"
	.size	.L.str.26, 17

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.27, 32

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"r"
	.size	.L.str.28, 2

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Invalid UTF-8 data in file '%s'."
	.size	.L.str.29, 33

	.type	.L__func__.gimp_text_buffer_save,@object # @__func__.gimp_text_buffer_save
.L__func__.gimp_text_buffer_save:
	.asciz	"gimp_text_buffer_save"
	.size	.L__func__.gimp_text_buffer_save, 22

	.type	gimp_text_buffer_parent_class,@object # @gimp_text_buffer_parent_class
	.local	gimp_text_buffer_parent_class
	.comm	gimp_text_buffer_parent_class,8,8
	.type	GimpTextBuffer_private_offset,@object # @GimpTextBuffer_private_offset
	.local	GimpTextBuffer_private_offset
	.comm	GimpTextBuffer_private_offset,4,4
	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"bold"
	.size	.L.str.30, 5

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"weight"
	.size	.L.str.31, 7

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"italic"
	.size	.L.str.32, 7

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"style"
	.size	.L.str.33, 6

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"underline"
	.size	.L.str.34, 10

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"strikethrough"
	.size	.L.str.35, 14

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"application/x-gimp-pango-markup"
	.size	.L.str.36, 32

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"baseline-%d"
	.size	.L.str.37, 12

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"kerning-%d"
	.size	.L.str.38, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
