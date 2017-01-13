	.text
	.file	"gimppattern.bc"
	.globl	gimp_pattern_get_type
	.align	16, 0x90
	.type	gimp_pattern_get_type,@function
gimp_pattern_get_type:                  # @gimp_pattern_get_type
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
	movq	gimp_pattern_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_pattern_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_data_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$312, %edx              # imm = 0x138
	movabsq	$gimp_pattern_class_intern_init, %rdi
	movl	$40, %r8d
	movabsq	$gimp_pattern_init, %rcx
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
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_tagged_interface_get_type
	movabsq	$gimp_pattern_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_pattern_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_pattern_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_pattern_get_type, .Lfunc_end0-gimp_pattern_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pattern_class_intern_init,@function
gimp_pattern_class_intern_init:         # @gimp_pattern_class_intern_init
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
	movq	%rax, gimp_pattern_parent_class
	cmpl	$0, GimpPattern_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpPattern_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_pattern_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_pattern_class_intern_init, .Lfunc_end1-gimp_pattern_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pattern_init,@function
gimp_pattern_init:                      # @gimp_pattern_init
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
	movq	$0, 32(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_pattern_init, .Lfunc_end2-gimp_pattern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pattern_tagged_iface_init,@function
gimp_pattern_tagged_iface_init:         # @gimp_pattern_tagged_iface_init
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
	movabsq	$gimp_pattern_get_checksum, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, 64(%rdi)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_pattern_tagged_iface_init, .Lfunc_end3-gimp_pattern_tagged_iface_init
	.cfi_endproc

	.globl	gimp_pattern_new
	.align	16, 0x90
	.type	gimp_pattern_new,@function
gimp_pattern_new:                       # @gimp_pattern_new
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pattern_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_21
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.body.1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$10, %ecx
	je	.LBB4_8
# BB#7:                                 # %if.then.4
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.5
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pattern_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_21
.LBB4_9:                                # %if.end.6
	jmp	.LBB4_10
.LBB4_10:                               # %do.end.7
	callq	gimp_pattern_get_type
	movabsq	$.L.str.4, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movl	$32, %r8d
	movl	$3, %edx
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	%rax, -32(%rbp)
	movl	%r8d, %edi
	movl	%r8d, %esi
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	movq	-56(%rbp), %r9          # 8-byte Reload
	callq	temp_buf_new
	movq	-32(%rbp), %r9
	movq	%rax, 32(%r9)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	callq	temp_buf_get_data
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB4_11:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_13 Depth 2
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB4_20
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB4_11 Depth=1
	movl	$0, -48(%rbp)
.LBB4_13:                               # %for.cond.15
                                        #   Parent Loop BB4_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB4_18
# BB#14:                                # %for.body.19
                                        #   in Loop: Header=BB4_13 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	$2, %eax
	movq	-40(%rbp), %rdi
	movl	-48(%rbp), %edx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-60(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movb	%cl, -73(%rbp)          # 1-byte Spill
	je	.LBB4_16
# BB#15:                                # %land.rhs
                                        #   in Loop: Header=BB4_13 Depth=2
	movl	$2, %eax
	movl	-44(%rbp), %ecx
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-80(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	setne	%sil
	movb	%sil, -73(%rbp)         # 1-byte Spill
.LBB4_16:                               # %land.end
                                        #   in Loop: Header=BB4_13 Depth=2
	movb	-73(%rbp), %al          # 1-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movl	$255, %esi
	testb	$1, %al
	cmovnel	%esi, %ecx
	movb	%cl, %al
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movzbl	%al, %esi
	callq	memset
	movq	-40(%rbp), %rdx
	addq	$3, %rdx
	movq	%rdx, -40(%rbp)
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB4_13 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB4_13
.LBB4_18:                               # %for.end
                                        #   in Loop: Header=BB4_11 Depth=1
	jmp	.LBB4_19
.LBB4_19:                               # %for.inc.22
                                        #   in Loop: Header=BB4_11 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB4_11
.LBB4_20:                               # %for.end.24
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB4_21:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_pattern_new, .Lfunc_end4-gimp_pattern_new
	.cfi_endproc

	.globl	gimp_pattern_get_standard
	.align	16, 0x90
	.type	gimp_pattern_get_standard,@function
gimp_pattern_get_standard:              # @gimp_pattern_get_standard
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, gimp_pattern_get_standard.standard_pattern
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.5, %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_pattern_new
	movq	%rax, gimp_pattern_get_standard.standard_pattern
	movq	gimp_pattern_get_standard.standard_pattern, %rdi
	callq	gimp_data_clean
	movabsq	$.L.str.6, %rsi
	movq	gimp_pattern_get_standard.standard_pattern, %rdi
	callq	gimp_data_make_internal
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	gimp_pattern_get_standard.standard_pattern, %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$gimp_pattern_get_standard.standard_pattern, %rsi
	movq	%rax, %rdi
	callq	g_object_add_weak_pointer
.LBB5_2:                                # %if.end
	movq	gimp_pattern_get_standard.standard_pattern, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_pattern_get_standard, .Lfunc_end5-gimp_pattern_get_standard
	.cfi_endproc

	.globl	gimp_pattern_get_mask
	.align	16, 0x90
	.type	gimp_pattern_get_mask,@function
gimp_pattern_get_mask:                  # @gimp_pattern_get_mask
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
	callq	gimp_pattern_get_type
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
	movabsq	$.L__func__.gimp_pattern_get_mask, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
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
	.size	gimp_pattern_get_mask, .Lfunc_end6-gimp_pattern_get_mask
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pattern_class_init,@function
gimp_pattern_class_init:                # @gimp_pattern_class_init
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
	subq	$64, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_pattern_duplicate, %rsi
	movabsq	$gimp_pattern_get_extension, %rdi
	movabsq	$gimp_pattern_get_description, %rcx
	movabsq	$gimp_pattern_get_new_preview, %rdx
	movabsq	$gimp_pattern_get_size, %r8
	movabsq	$.L.str.8, %r9
	movabsq	$gimp_pattern_get_memsize, %r10
	movabsq	$gimp_pattern_finalize, %r11
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%r11, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%r10, 152(%rax)
	movq	-32(%rbp), %rax
	movq	%r9, 160(%rax)
	movq	-32(%rbp), %rax
	movq	%r8, 192(%rax)
	movq	-32(%rbp), %rax
	movq	%rdx, 224(%rax)
	movq	-32(%rbp), %rax
	movq	%rcx, 248(%rax)
	movq	-40(%rbp), %rax
	movq	%rdi, 296(%rax)
	movq	-40(%rbp), %rax
	movq	%rsi, 304(%rax)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_pattern_class_init, .Lfunc_end7-gimp_pattern_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pattern_finalize,@function
gimp_pattern_finalize:                  # @gimp_pattern_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_pattern_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	temp_buf_free
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB8_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_pattern_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_pattern_finalize, .Lfunc_end8-gimp_pattern_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pattern_get_memsize,@function
gimp_pattern_get_memsize:               # @gimp_pattern_get_memsize
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_pattern_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	temp_buf_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	gimp_pattern_parent_class, %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-48(%rbp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	movq	%rsi, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_pattern_get_memsize, .Lfunc_end9-gimp_pattern_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pattern_get_size,@function
gimp_pattern_get_size:                  # @gimp_pattern_get_size
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_pattern_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	4(%rax), %r8d
	movq	-16(%rbp), %rax
	movl	%r8d, (%rax)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %r8d
	movq	-24(%rbp), %rax
	movl	%r8d, (%rax)
	movl	%ecx, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_pattern_get_size, .Lfunc_end10-gimp_pattern_get_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pattern_get_new_preview,@function
gimp_pattern_get_new_preview:           # @gimp_pattern_get_new_preview
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_pattern_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	4(%rax), %ecx
	jge	.LBB11_2
# BB#1:                                 # %cond.true
	movl	-20(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB11_3
.LBB11_2:                               # %cond.false
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
.LBB11_3:                               # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-24(%rbp), %eax
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB11_5
# BB#4:                                 # %cond.true.8
	movl	-24(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB11_6
.LBB11_5:                               # %cond.false.9
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
.LBB11_6:                               # %cond.end.12
	movl	-64(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %edi
	movl	-48(%rbp), %esi
	movq	-32(%rbp), %r8
	movq	32(%r8), %r8
	movl	(%r8), %edx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	-68(%rbp), %r8d         # 4-byte Reload
	callq	temp_buf_new
	xorl	%ecx, %ecx
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-40(%rbp), %rsi
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	temp_buf_copy_area
	movq	-40(%rbp), %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rsi, %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_pattern_get_new_preview, .Lfunc_end11-gimp_pattern_get_new_preview
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pattern_get_description,@function
gimp_pattern_get_description:           # @gimp_pattern_get_description
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_pattern_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movabsq	$.L.str.9, %rdi
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rsi
	movl	4(%rsi), %edx
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rsi
	movl	8(%rsi), %ecx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_pattern_get_description, .Lfunc_end12-gimp_pattern_get_description
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pattern_get_extension,@function
gimp_pattern_get_extension:             # @gimp_pattern_get_extension
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
	movabsq	$.L.str.10, %rax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_pattern_get_extension, .Lfunc_end13-gimp_pattern_get_extension
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pattern_duplicate,@function
gimp_pattern_duplicate:                 # @gimp_pattern_duplicate
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
	callq	gimp_pattern_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_pattern_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	32(%rax), %rdi
	callq	temp_buf_copy
	movq	-16(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_pattern_duplicate, .Lfunc_end14-gimp_pattern_duplicate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pattern_get_checksum,@function
gimp_pattern_get_checksum:              # @gimp_pattern_get_checksum
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_pattern_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB15_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	g_checksum_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	temp_buf_get_data
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	temp_buf_get_data_size
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_checksum_update
	movq	-32(%rbp), %rdi
	callq	g_checksum_get_string
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_checksum_free
.LBB15_2:                               # %if.end
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_pattern_get_checksum, .Lfunc_end15-gimp_pattern_get_checksum
	.cfi_endproc

	.type	gimp_pattern_get_type.g_define_type_id__volatile,@object # @gimp_pattern_get_type.g_define_type_id__volatile
	.local	gimp_pattern_get_type.g_define_type_id__volatile
	.comm	gimp_pattern_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpPattern"
	.size	.L.str, 12

	.type	gimp_pattern_get_type.g_implement_interface_info,@object # @gimp_pattern_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_pattern_get_type.g_implement_interface_info:
	.quad	gimp_pattern_tagged_iface_init
	.quad	0
	.quad	0
	.size	gimp_pattern_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_pattern_new,@object # @__func__.gimp_pattern_new
.L__func__.gimp_pattern_new:
	.asciz	"gimp_pattern_new"
	.size	.L__func__.gimp_pattern_new, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"name != NULL"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"name[0] != '\\n'"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"name"
	.size	.L.str.4, 5

	.type	gimp_pattern_get_standard.standard_pattern,@object # @gimp_pattern_get_standard.standard_pattern
	.local	gimp_pattern_get_standard.standard_pattern
	.comm	gimp_pattern_get_standard.standard_pattern,8,8
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Standard"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-pattern-standard"
	.size	.L.str.6, 22

	.type	.L__func__.gimp_pattern_get_mask,@object # @__func__.gimp_pattern_get_mask
.L__func__.gimp_pattern_get_mask:
	.asciz	"gimp_pattern_get_mask"
	.size	.L__func__.gimp_pattern_get_mask, 22

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_PATTERN (pattern)"
	.size	.L.str.7, 26

	.type	gimp_pattern_parent_class,@object # @gimp_pattern_parent_class
	.local	gimp_pattern_parent_class
	.comm	gimp_pattern_parent_class,8,8
	.type	GimpPattern_private_offset,@object # @GimpPattern_private_offset
	.local	GimpPattern_private_offset
	.comm	GimpPattern_private_offset,4,4
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-tool-bucket-fill"
	.size	.L.str.8, 22

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s (%d \303\227 %d)"
	.size	.L.str.9, 14

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	".pat"
	.size	.L.str.10, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
