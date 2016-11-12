	.text
	.file	"gimptag.bc"
	.globl	gimp_tag_get_type
	.align	16, 0x90
	.type	gimp_tag_get_type,@function
gimp_tag_get_type:                      # @gimp_tag_get_type
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
	movq	gimp_tag_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_tag_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$.L.str, %rdi
	callq	g_intern_static_string
	movl	$80, %ecx
	movl	%ecx, %edi
	movl	$136, %edx
	movabsq	$gimp_tag_class_intern_init, %rsi
	movl	$40, %r8d
	movabsq	$gimp_tag_init, %r9
	xorl	%ecx, %ecx
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movabsq	$gimp_tag_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_tag_get_type.g_define_type_id__volatile, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_tag_get_type, .Lfunc_end0-gimp_tag_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_class_intern_init,@function
gimp_tag_class_intern_init:             # @gimp_tag_class_intern_init
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
	movq	%rax, gimp_tag_parent_class
	cmpl	$0, GimpTag_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpTag_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_tag_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_tag_class_intern_init, .Lfunc_end1-gimp_tag_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_init,@function
gimp_tag_init:                          # @gimp_tag_init
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
	movl	$0, 24(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 28(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 32(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_tag_init, .Lfunc_end2-gimp_tag_init
	.cfi_endproc

	.globl	gimp_tag_new
	.align	16, 0x90
	.type	gimp_tag_new,@function
gimp_tag_new:                           # @gimp_tag_new
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tag_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_8
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_tag_string_make_valid
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_7
# BB#6:                                 # %if.then.1
	movq	$0, -8(%rbp)
	jmp	.LBB3_8
.LBB3_7:                                # %if.end.2
	callq	gimp_tag_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_quark_from_string
	movq	$-1, %rsi
	movq	-24(%rbp), %rdi
	movl	%eax, 24(%rdi)
	movq	-32(%rbp), %rdi
	callq	g_utf8_casefold
	movq	$-1, %rsi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_utf8_collate_key
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_quark_from_string
	movq	-24(%rbp), %rsi
	movl	%eax, 28(%rsi)
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-24(%rbp), %rsi
	movq	%rsi, -8(%rbp)
.LBB3_8:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_tag_new, .Lfunc_end3-gimp_tag_new
	.cfi_endproc

	.globl	gimp_tag_string_make_valid
	.align	16, 0x90
	.type	gimp_tag_string_make_valid,@function
gimp_tag_string_make_valid:             # @gimp_tag_string_make_valid
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tag_string_make_valid, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_20
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	movq	$-1, %rsi
	movl	$2, %edx
	movq	-16(%rbp), %rdi
	callq	g_utf8_normalize
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_7
# BB#6:                                 # %if.then.2
	movq	$0, -8(%rbp)
	jmp	.LBB4_20
.LBB4_7:                                # %if.end.3
	movq	-24(%rbp), %rdi
	callq	g_strchug
	movq	%rax, %rdi
	callq	g_strchomp
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB4_9
# BB#8:                                 # %if.then.7
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	$0, -8(%rbp)
	jmp	.LBB4_20
.LBB4_9:                                # %if.end.8
	movabsq	$.L.str.8, %rdi
	callq	g_string_new
	movabsq	$.L.str.9, %rsi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB4_11
# BB#10:                                # %if.then.12
	movq	-40(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -40(%rbp)
.LBB4_11:                               # %if.end.13
	jmp	.LBB4_12
.LBB4_12:                               # %do.body.14
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rdi
	callq	g_utf8_get_char
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movzbl	(%rcx), %eax
	movl	%eax, %ecx
	movq	g_utf8_skip, %rdx
	movsbl	(%rdx,%rcx), %eax
	movslq	%eax, %rcx
	addq	%rcx, %rdi
	movq	%rdi, -40(%rbp)
	movl	-44(%rbp), %edi
	callq	g_unichar_isprint
	cmpl	$0, %eax
	je	.LBB4_15
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_12 Depth=1
	movl	-44(%rbp), %edi
	callq	gimp_tag_is_tag_separator
	cmpl	$0, %eax
	jne	.LBB4_15
# BB#14:                                # %if.then.21
                                        #   in Loop: Header=BB4_12 Depth=1
	movq	-32(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	g_string_append_unichar
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB4_15:                               # %if.end.23
                                        #   in Loop: Header=BB4_12 Depth=1
	jmp	.LBB4_16
.LBB4_16:                               # %do.cond
                                        #   in Loop: Header=BB4_12 Depth=1
	cmpl	$0, -44(%rbp)
	jne	.LBB4_12
# BB#17:                                # %do.end.25
	movq	-24(%rbp), %rdi
	callq	g_free
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	callq	g_string_free
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_strchug
	movq	%rax, %rdi
	callq	g_strchomp
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB4_19
# BB#18:                                # %if.then.30
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	$0, -8(%rbp)
	jmp	.LBB4_20
.LBB4_19:                               # %if.end.31
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_20:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_tag_string_make_valid, .Lfunc_end4-gimp_tag_string_make_valid
	.cfi_endproc

	.globl	gimp_tag_try_new
	.align	16, 0x90
	.type	gimp_tag_try_new,@function
gimp_tag_try_new:                       # @gimp_tag_try_new
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
	movq	-16(%rbp), %rdi
	callq	gimp_tag_string_make_valid
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB5_7
.LBB5_2:                                # %if.end
	movq	$-1, %rsi
	movq	-32(%rbp), %rdi
	callq	g_utf8_casefold
	movq	$-1, %rsi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_utf8_collate_key
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_quark_try_string
	movl	%eax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
	cmpl	$0, -56(%rbp)
	jne	.LBB5_4
# BB#3:                                 # %if.then.5
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	$0, -8(%rbp)
	jmp	.LBB5_7
.LBB5_4:                                # %if.end.6
	movq	-32(%rbp), %rdi
	callq	g_quark_from_string
	movl	%eax, -52(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	cmpl	$0, -52(%rbp)
	jne	.LBB5_6
# BB#5:                                 # %if.then.9
	movq	$0, -8(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.end.10
	callq	gimp_tag_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -24(%rbp)
	movl	-52(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 24(%rax)
	movl	-56(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 28(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB5_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_tag_try_new, .Lfunc_end5-gimp_tag_try_new
	.cfi_endproc

	.globl	gimp_tag_get_internal
	.align	16, 0x90
	.type	gimp_tag_get_internal,@function
gimp_tag_get_internal:                  # @gimp_tag_get_internal
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
	callq	gimp_tag_get_type
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
	movabsq	$.L__func__.gimp_tag_get_internal, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB6_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_tag_get_internal, .Lfunc_end6-gimp_tag_get_internal
	.cfi_endproc

	.globl	gimp_tag_set_internal
	.align	16, 0x90
	.type	gimp_tag_set_internal,@function
gimp_tag_set_internal:                  # @gimp_tag_set_internal
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
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tag_get_type
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
	movabsq	$.L__func__.gimp_tag_set_internal, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
.LBB7_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_tag_set_internal, .Lfunc_end7-gimp_tag_set_internal
	.cfi_endproc

	.globl	gimp_tag_get_name
	.align	16, 0x90
	.type	gimp_tag_get_name,@function
gimp_tag_get_name:                      # @gimp_tag_get_name
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
	callq	gimp_tag_get_type
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
	movabsq	$.L__func__.gimp_tag_get_name, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	24(%rax), %edi
	callq	g_quark_to_string
	movq	%rax, -8(%rbp)
.LBB8_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_tag_get_name, .Lfunc_end8-gimp_tag_get_name
	.cfi_endproc

	.globl	gimp_tag_get_hash
	.align	16, 0x90
	.type	gimp_tag_get_hash,@function
gimp_tag_get_hash:                      # @gimp_tag_get_hash
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tag_get_type
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
	movabsq	$.L__func__.gimp_tag_get_hash, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB9_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_tag_get_hash, .Lfunc_end9-gimp_tag_get_hash
	.cfi_endproc

	.globl	gimp_tag_equals
	.align	16, 0x90
	.type	gimp_tag_equals,@function
gimp_tag_equals:                        # @gimp_tag_equals
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_tag_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tag_equals, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_25
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_tag_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB10_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB10_20
.LBB10_15:                              # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB10_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB10_19
.LBB10_18:                              # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB10_19:                              # %if.end.31
	jmp	.LBB10_20
.LBB10_20:                              # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB10_22
# BB#21:                                # %if.then.35
	jmp	.LBB10_23
.LBB10_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tag_equals, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_25
.LBB10_23:                              # %if.end.37
	jmp	.LBB10_24
.LBB10_24:                              # %do.end.38
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	28(%rax), %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -4(%rbp)
.LBB10_25:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_tag_equals, .Lfunc_end10-gimp_tag_equals
	.cfi_endproc

	.globl	gimp_tag_compare_func
	.align	16, 0x90
	.type	gimp_tag_compare_func,@function
gimp_tag_compare_func:                  # @gimp_tag_compare_func
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_tag_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_tag_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	28(%rax), %edi
	callq	g_quark_to_string
	movq	-32(%rbp), %rsi
	movl	28(%rsi), %edi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	g_quark_to_string
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_strcmp0
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_tag_compare_func, .Lfunc_end11-gimp_tag_compare_func
	.cfi_endproc

	.globl	gimp_tag_compare_with_string
	.align	16, 0x90
	.type	gimp_tag_compare_with_string,@function
gimp_tag_compare_with_string:           # @gimp_tag_compare_with_string
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_tag_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tag_compare_with_string, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB12_18
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB12_15
# BB#14:                                # %if.then.13
	jmp	.LBB12_16
.LBB12_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tag_compare_with_string, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB12_18
.LBB12_16:                              # %if.end.15
	jmp	.LBB12_17
.LBB12_17:                              # %do.end.16
	movq	-16(%rbp), %rax
	movl	28(%rax), %edi
	callq	g_quark_to_string
	movq	$-1, %rsi
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_utf8_casefold
	movq	$-1, %rsi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_utf8_collate_key
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_strcmp0
	movl	%eax, -52(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	g_free
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB12_18:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_tag_compare_with_string, .Lfunc_end12-gimp_tag_compare_with_string
	.cfi_endproc

	.globl	gimp_tag_has_prefix
	.align	16, 0x90
	.type	gimp_tag_has_prefix,@function
gimp_tag_has_prefix:                    # @gimp_tag_has_prefix
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_tag_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tag_has_prefix, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB13_18
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB13_15
# BB#14:                                # %if.then.13
	jmp	.LBB13_16
.LBB13_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tag_has_prefix, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB13_18
.LBB13_16:                              # %if.end.15
	jmp	.LBB13_17
.LBB13_17:                              # %do.end.16
	movq	-16(%rbp), %rax
	movl	24(%rax), %edi
	callq	g_quark_to_string
	movq	$-1, %rsi
	movq	%rax, %rdi
	callq	g_utf8_casefold
	movq	$-1, %rsi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_utf8_casefold
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_str_has_prefix
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rsi
	movl	24(%rsi), %edi
	callq	g_quark_to_string
	movabsq	$.L.str.6, %rdi
	movq	-24(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_printerr
	movl	-44(%rbp), %ecx
	movl	%ecx, -4(%rbp)
.LBB13_18:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_tag_has_prefix, .Lfunc_end13-gimp_tag_has_prefix
	.cfi_endproc

	.globl	gimp_tag_is_tag_separator
	.align	16, 0x90
	.type	gimp_tag_is_tag_separator,@function
gimp_tag_is_tag_separator:              # @gimp_tag_is_tag_separator
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
	movl	%edi, -8(%rbp)
	movl	%edi, %eax
	subl	$44, %edi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	movl	%edi, -16(%rbp)         # 4-byte Spill
	je	.LBB14_1
	jmp	.LBB14_4
.LBB14_4:                               # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$1548, %eax             # imm = 0x60C
	movl	%eax, -20(%rbp)         # 4-byte Spill
	je	.LBB14_1
	jmp	.LBB14_5
.LBB14_5:                               # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$2040, %eax             # imm = 0x7F8
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB14_1
	jmp	.LBB14_6
.LBB14_6:                               # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$4963, %eax             # imm = 0x1363
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB14_1
	jmp	.LBB14_7
.LBB14_7:                               # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$6146, %eax             # imm = 0x1802
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB14_1
	jmp	.LBB14_8
.LBB14_8:                               # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$6152, %eax             # imm = 0x1808
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB14_1
	jmp	.LBB14_9
.LBB14_9:                               # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$12289, %eax            # imm = 0x3001
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB14_1
	jmp	.LBB14_10
.LBB14_10:                              # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$42509, %eax            # imm = 0xA60D
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB14_1
	jmp	.LBB14_11
.LBB14_11:                              # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$65104, %eax            # imm = 0xFE50
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB14_1
	jmp	.LBB14_12
.LBB14_12:                              # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$65292, %eax            # imm = 0xFF0C
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB14_1
	jmp	.LBB14_13
.LBB14_13:                              # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$65380, %eax            # imm = 0xFF64
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jne	.LBB14_2
	jmp	.LBB14_1
.LBB14_1:                               # %sw.bb
	movl	$1, -4(%rbp)
	jmp	.LBB14_3
.LBB14_2:                               # %sw.default
	movl	$0, -4(%rbp)
.LBB14_3:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_tag_is_tag_separator, .Lfunc_end14-gimp_tag_is_tag_separator
	.cfi_endproc

	.globl	gimp_tag_or_null_ref
	.align	16, 0x90
	.type	gimp_tag_or_null_ref,@function
gimp_tag_or_null_ref:                   # @gimp_tag_or_null_ref
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
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB15_14
# BB#1:                                 # %if.then
	jmp	.LBB15_2
.LBB15_2:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_tag_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB15_4
# BB#3:                                 # %if.then.2
	movl	$0, -28(%rbp)
	jmp	.LBB15_9
.LBB15_4:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_7
# BB#5:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB15_7
# BB#6:                                 # %if.then.5
	movl	$1, -28(%rbp)
	jmp	.LBB15_8
.LBB15_7:                               # %if.else.6
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB15_8:                               # %if.end
	jmp	.LBB15_9
.LBB15_9:                               # %if.end.8
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB15_11
# BB#10:                                # %if.then.10
	jmp	.LBB15_12
.LBB15_11:                              # %if.else.11
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tag_or_null_ref, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_14
.LBB15_12:                              # %if.end.12
	jmp	.LBB15_13
.LBB15_13:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB15_14:                              # %if.end.14
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_tag_or_null_ref, .Lfunc_end15-gimp_tag_or_null_ref
	.cfi_endproc

	.globl	gimp_tag_or_null_unref
	.align	16, 0x90
	.type	gimp_tag_or_null_unref,@function
gimp_tag_or_null_unref:                 # @gimp_tag_or_null_unref
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB16_14
# BB#1:                                 # %if.then
	jmp	.LBB16_2
.LBB16_2:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_tag_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB16_4
# BB#3:                                 # %if.then.2
	movl	$0, -28(%rbp)
	jmp	.LBB16_9
.LBB16_4:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_7
# BB#5:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB16_7
# BB#6:                                 # %if.then.5
	movl	$1, -28(%rbp)
	jmp	.LBB16_8
.LBB16_7:                               # %if.else.6
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB16_8:                               # %if.end
	jmp	.LBB16_9
.LBB16_9:                               # %if.end.8
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB16_11
# BB#10:                                # %if.then.10
	jmp	.LBB16_12
.LBB16_11:                              # %if.else.11
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tag_or_null_unref, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_14
.LBB16_12:                              # %if.end.12
	jmp	.LBB16_13
.LBB16_13:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB16_14:                              # %if.end.13
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_tag_or_null_unref, .Lfunc_end16-gimp_tag_or_null_unref
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_class_init,@function
gimp_tag_class_init:                    # @gimp_tag_class_init
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_tag_class_init, .Lfunc_end17-gimp_tag_class_init
	.cfi_endproc

	.type	gimp_tag_get_type.g_define_type_id__volatile,@object # @gimp_tag_get_type.g_define_type_id__volatile
	.local	gimp_tag_get_type.g_define_type_id__volatile
	.comm	gimp_tag_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpTag"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_tag_new,@object # @__func__.gimp_tag_new
.L__func__.gimp_tag_new:
	.asciz	"gimp_tag_new"
	.size	.L__func__.gimp_tag_new, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"tag_string != NULL"
	.size	.L.str.2, 19

	.type	.L__func__.gimp_tag_get_internal,@object # @__func__.gimp_tag_get_internal
.L__func__.gimp_tag_get_internal:
	.asciz	"gimp_tag_get_internal"
	.size	.L__func__.gimp_tag_get_internal, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_TAG (tag)"
	.size	.L.str.3, 18

	.type	.L__func__.gimp_tag_set_internal,@object # @__func__.gimp_tag_set_internal
.L__func__.gimp_tag_set_internal:
	.asciz	"gimp_tag_set_internal"
	.size	.L__func__.gimp_tag_set_internal, 22

	.type	.L__func__.gimp_tag_get_name,@object # @__func__.gimp_tag_get_name
.L__func__.gimp_tag_get_name:
	.asciz	"gimp_tag_get_name"
	.size	.L__func__.gimp_tag_get_name, 18

	.type	.L__func__.gimp_tag_get_hash,@object # @__func__.gimp_tag_get_hash
.L__func__.gimp_tag_get_hash:
	.asciz	"gimp_tag_get_hash"
	.size	.L__func__.gimp_tag_get_hash, 18

	.type	.L__func__.gimp_tag_equals,@object # @__func__.gimp_tag_equals
.L__func__.gimp_tag_equals:
	.asciz	"gimp_tag_equals"
	.size	.L__func__.gimp_tag_equals, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_TAG (other)"
	.size	.L.str.4, 20

	.type	.L__func__.gimp_tag_compare_with_string,@object # @__func__.gimp_tag_compare_with_string
.L__func__.gimp_tag_compare_with_string:
	.asciz	"gimp_tag_compare_with_string"
	.size	.L__func__.gimp_tag_compare_with_string, 29

	.type	.L__func__.gimp_tag_has_prefix,@object # @__func__.gimp_tag_has_prefix
.L__func__.gimp_tag_has_prefix:
	.asciz	"gimp_tag_has_prefix"
	.size	.L__func__.gimp_tag_has_prefix, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"prefix_string != NULL"
	.size	.L.str.5, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"'%s' has prefix '%s': %d\n"
	.size	.L.str.6, 26

	.type	.L__func__.gimp_tag_string_make_valid,@object # @__func__.gimp_tag_string_make_valid
.L__func__.gimp_tag_string_make_valid:
	.asciz	"gimp_tag_string_make_valid"
	.size	.L__func__.gimp_tag_string_make_valid, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"tag_string"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.zero	1
	.size	.L.str.8, 1

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp:"
	.size	.L.str.9, 6

	.type	.L__func__.gimp_tag_or_null_ref,@object # @__func__.gimp_tag_or_null_ref
.L__func__.gimp_tag_or_null_ref:
	.asciz	"gimp_tag_or_null_ref"
	.size	.L__func__.gimp_tag_or_null_ref, 21

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_IS_TAG (tag_or_null)"
	.size	.L.str.10, 26

	.type	.L__func__.gimp_tag_or_null_unref,@object # @__func__.gimp_tag_or_null_unref
.L__func__.gimp_tag_or_null_unref:
	.asciz	"gimp_tag_or_null_unref"
	.size	.L__func__.gimp_tag_or_null_unref, 23

	.type	gimp_tag_parent_class,@object # @gimp_tag_parent_class
	.local	gimp_tag_parent_class
	.comm	gimp_tag_parent_class,8,8
	.type	GimpTag_private_offset,@object # @GimpTag_private_offset
	.local	GimpTag_private_offset
	.comm	GimpTag_private_offset,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
