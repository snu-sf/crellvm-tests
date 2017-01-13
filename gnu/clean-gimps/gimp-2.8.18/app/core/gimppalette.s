	.text
	.file	"gimppalette.bc"
	.globl	gimp_palette_get_type
	.align	16, 0x90
	.type	gimp_palette_get_type,@function
gimp_palette_get_type:                  # @gimp_palette_get_type
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
	movq	gimp_palette_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_palette_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_palette_class_intern_init, %rdi
	movl	$48, %r8d
	movabsq	$gimp_palette_init, %rcx
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
	movabsq	$gimp_palette_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_palette_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_palette_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_palette_get_type, .Lfunc_end0-gimp_palette_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_class_intern_init,@function
gimp_palette_class_intern_init:         # @gimp_palette_class_intern_init
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
	movq	%rax, gimp_palette_parent_class
	cmpl	$0, GimpPalette_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpPalette_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_palette_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_palette_class_intern_init, .Lfunc_end1-gimp_palette_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_init,@function
gimp_palette_init:                      # @gimp_palette_init
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
	movq	-8(%rbp), %rdi
	movl	$0, 40(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 44(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_palette_init, .Lfunc_end2-gimp_palette_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_tagged_iface_init,@function
gimp_palette_tagged_iface_init:         # @gimp_palette_tagged_iface_init
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
	movabsq	$gimp_palette_get_checksum, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, 64(%rdi)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_palette_tagged_iface_init, .Lfunc_end3-gimp_palette_tagged_iface_init
	.cfi_endproc

	.globl	gimp_palette_new
	.align	16, 0x90
	.type	gimp_palette_new,@function
gimp_palette_new:                       # @gimp_palette_new
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_palette_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_11
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.body.1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB4_8
# BB#7:                                 # %if.then.4
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.5
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_palette_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_11
.LBB4_9:                                # %if.end.6
	jmp	.LBB4_10
.LBB4_10:                               # %do.end.7
	callq	gimp_palette_get_type
	movabsq	$.L.str.4, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB4_11:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_palette_new, .Lfunc_end4-gimp_palette_new
	.cfi_endproc

	.globl	gimp_palette_get_standard
	.align	16, 0x90
	.type	gimp_palette_get_standard,@function
gimp_palette_get_standard:              # @gimp_palette_get_standard
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
	cmpq	$0, gimp_palette_get_standard.standard_palette
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.5, %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_palette_new
	movq	%rax, gimp_palette_get_standard.standard_palette
	movq	gimp_palette_get_standard.standard_palette, %rdi
	callq	gimp_data_clean
	movabsq	$.L.str.6, %rsi
	movq	gimp_palette_get_standard.standard_palette, %rdi
	callq	gimp_data_make_internal
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	gimp_palette_get_standard.standard_palette, %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$gimp_palette_get_standard.standard_palette, %rsi
	movq	%rax, %rdi
	callq	g_object_add_weak_pointer
.LBB5_2:                                # %if.end
	movq	gimp_palette_get_standard.standard_palette, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_palette_get_standard, .Lfunc_end5-gimp_palette_get_standard
	.cfi_endproc

	.globl	gimp_palette_get_colors
	.align	16, 0x90
	.type	gimp_palette_get_colors,@function
gimp_palette_get_colors:                # @gimp_palette_get_colors
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
	callq	gimp_palette_get_type
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
	movabsq	$.L__func__.gimp_palette_get_colors, %rsi
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
	.size	gimp_palette_get_colors, .Lfunc_end6-gimp_palette_get_colors
	.cfi_endproc

	.globl	gimp_palette_get_n_colors
	.align	16, 0x90
	.type	gimp_palette_get_n_colors,@function
gimp_palette_get_n_colors:              # @gimp_palette_get_n_colors
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_palette_get_type
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
	movabsq	$.L__func__.gimp_palette_get_n_colors, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB7_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_palette_get_n_colors, .Lfunc_end7-gimp_palette_get_n_colors
	.cfi_endproc

	.globl	gimp_palette_add_entry
	.align	16, 0x90
	.type	gimp_palette_add_entry,@function
gimp_palette_add_entry:                 # @gimp_palette_add_entry
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_palette_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.4
	movl	$1, -68(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.5
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.7
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.9
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_palette_add_entry, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_32
.LBB8_11:                               # %if.end.11
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.12
	cmpq	$0, -40(%rbp)
	je	.LBB8_15
# BB#14:                                # %if.then.14
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_palette_add_entry, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_32
.LBB8_16:                               # %if.end.16
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.17
	movl	$48, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rcx
	movq	%rcx, (%rax)
	movq	8(%rdi), %rcx
	movq	%rcx, 8(%rax)
	movq	16(%rdi), %rcx
	movq	%rcx, 16(%rax)
	movq	24(%rdi), %rcx
	movq	%rcx, 24(%rax)
	cmpq	$0, -32(%rbp)
	je	.LBB8_19
# BB#18:                                # %cond.true
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB8_20
.LBB8_19:                               # %cond.false
	movabsq	$.L.str.9, %rdi
	callq	gettext
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB8_20:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	g_strdup
	movq	-48(%rbp), %rdi
	movq	%rax, 32(%rdi)
	cmpl	$0, -20(%rbp)
	jl	.LBB8_22
# BB#21:                                # %lor.lhs.false
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	40(%rcx), %eax
	jl	.LBB8_23
.LBB8_22:                               # %if.then.26
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	-16(%rbp), %rsi
	movq	%rax, 32(%rsi)
	jmp	.LBB8_31
.LBB8_23:                               # %if.else.31
	movl	-20(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 40(%rcx)
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-48(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	%rcx, %rsi
	callq	g_list_insert
	movq	-16(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %esi
	callq	g_list_nth
	movq	%rax, -80(%rbp)
.LBB8_24:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB8_30
# BB#25:                                # %for.body
                                        #   in Loop: Header=BB8_24 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	40(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 40(%rax)
# BB#26:                                # %for.inc
                                        #   in Loop: Header=BB8_24 Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB8_28
# BB#27:                                # %cond.true.44
                                        #   in Loop: Header=BB8_24 Depth=1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB8_29
.LBB8_28:                               # %cond.false.45
                                        #   in Loop: Header=BB8_24 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB8_29
.LBB8_29:                               # %cond.end.46
                                        #   in Loop: Header=BB8_24 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	jmp	.LBB8_24
.LBB8_30:                               # %for.end
	jmp	.LBB8_31
.LBB8_31:                               # %if.end.48
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_dirty
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB8_32:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_palette_add_entry, .Lfunc_end8-gimp_palette_add_entry
	.cfi_endproc

	.globl	gimp_palette_delete_entry
	.align	16, 0x90
	.type	gimp_palette_delete_entry,@function
gimp_palette_delete_entry:              # @gimp_palette_delete_entry
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_palette_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.4
	movl	$1, -52(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.5
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.7
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.9
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_palette_delete_entry, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_26
.LBB9_11:                               # %if.end.11
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.12
	cmpq	$0, -16(%rbp)
	je	.LBB9_15
# BB#14:                                # %if.then.14
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_palette_delete_entry, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_26
.LBB9_16:                               # %if.end.16
	jmp	.LBB9_17
.LBB9_17:                               # %do.end.17
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	je	.LBB9_26
# BB#18:                                # %if.then.20
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_palette_entry_free
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	-8(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movl	-28(%rbp), %esi
	callq	g_list_nth
	movq	%rax, -24(%rbp)
.LBB9_19:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB9_25
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB9_19 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rax
	movl	%ecx, 40(%rax)
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB9_19 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB9_23
# BB#22:                                # %cond.true
                                        #   in Loop: Header=BB9_19 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB9_24
.LBB9_23:                               # %cond.false
                                        #   in Loop: Header=BB9_19 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB9_24
.LBB9_24:                               # %cond.end
                                        #   in Loop: Header=BB9_19 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB9_19
.LBB9_25:                               # %for.end
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_dirty
.LBB9_26:                               # %if.end.31
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_palette_delete_entry, .Lfunc_end9-gimp_palette_delete_entry
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_entry_free,@function
gimp_palette_entry_free:                # @gimp_palette_entry_free
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB10_3
# BB#2:                                 # %if.then
	jmp	.LBB10_4
.LBB10_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_palette_entry_free, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_7
.LBB10_4:                               # %if.end
	jmp	.LBB10_5
.LBB10_5:                               # %do.end
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free
# BB#6:                                 # %do.body.2
	movl	$48, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
.LBB10_7:                               # %do.end.3
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_palette_entry_free, .Lfunc_end10-gimp_palette_entry_free
	.cfi_endproc

	.globl	gimp_palette_set_entry
	.align	16, 0x90
	.type	gimp_palette_set_entry,@function
gimp_palette_set_entry:                 # @gimp_palette_set_entry
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_palette_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.4
	movl	$1, -68(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.5
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.7
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.9
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_palette_set_entry, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_22
.LBB11_11:                              # %if.end.11
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.12
	cmpq	$0, -40(%rbp)
	je	.LBB11_15
# BB#14:                                # %if.then.14
	jmp	.LBB11_16
.LBB11_15:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_palette_set_entry, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_22
.LBB11_16:                              # %if.end.16
	jmp	.LBB11_17
.LBB11_17:                              # %do.end.17
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_palette_get_entry
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB11_19
# BB#18:                                # %if.then.20
	movl	$0, -4(%rbp)
	jmp	.LBB11_22
.LBB11_19:                              # %if.end.21
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 24(%rax)
	movq	-48(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB11_21
# BB#20:                                # %if.then.25
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free
.LBB11_21:                              # %if.end.27
	movq	-32(%rbp), %rdi
	callq	g_strdup
	movq	-48(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_dirty
	movl	$1, -4(%rbp)
.LBB11_22:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_palette_set_entry, .Lfunc_end11-gimp_palette_set_entry
	.cfi_endproc

	.globl	gimp_palette_get_entry
	.align	16, 0x90
	.type	gimp_palette_get_entry,@function
gimp_palette_get_entry:                 # @gimp_palette_get_entry
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_palette_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_palette_get_entry, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_13
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movl	-20(%rbp), %esi
	callq	g_list_nth_data
	movq	%rax, -8(%rbp)
.LBB12_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_palette_get_entry, .Lfunc_end12-gimp_palette_get_entry
	.cfi_endproc

	.globl	gimp_palette_set_entry_color
	.align	16, 0x90
	.type	gimp_palette_set_entry_color,@function
gimp_palette_set_entry_color:           # @gimp_palette_set_entry_color
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
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_palette_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.4
	movl	$1, -60(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.5
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.7
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.9
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_palette_set_entry_color, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB13_20
.LBB13_11:                              # %if.end.11
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.12
	cmpq	$0, -32(%rbp)
	je	.LBB13_15
# BB#14:                                # %if.then.14
	jmp	.LBB13_16
.LBB13_15:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_palette_set_entry_color, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB13_20
.LBB13_16:                              # %if.end.16
	jmp	.LBB13_17
.LBB13_17:                              # %do.end.17
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_palette_get_entry
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB13_19
# BB#18:                                # %if.then.20
	movl	$0, -4(%rbp)
	jmp	.LBB13_20
.LBB13_19:                              # %if.end.21
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_dirty
	movl	$1, -4(%rbp)
.LBB13_20:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_palette_set_entry_color, .Lfunc_end13-gimp_palette_set_entry_color
	.cfi_endproc

	.globl	gimp_palette_set_entry_name
	.align	16, 0x90
	.type	gimp_palette_set_entry_name,@function
gimp_palette_set_entry_name:            # @gimp_palette_set_entry_name
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_palette_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.4
	movl	$1, -60(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.5
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.7
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.9
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_palette_set_entry_name, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB14_17
.LBB14_11:                              # %if.end.11
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_palette_get_entry
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB14_14
# BB#13:                                # %if.then.14
	movl	$0, -4(%rbp)
	jmp	.LBB14_17
.LBB14_14:                              # %if.end.15
	movq	-40(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB14_16
# BB#15:                                # %if.then.18
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free
.LBB14_16:                              # %if.end.20
	movq	-32(%rbp), %rdi
	callq	g_strdup
	movq	-40(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_dirty
	movl	$1, -4(%rbp)
.LBB14_17:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_palette_set_entry_name, .Lfunc_end14-gimp_palette_set_entry_name
	.cfi_endproc

	.globl	gimp_palette_set_columns
	.align	16, 0x90
	.type	gimp_palette_set_columns,@function
gimp_palette_set_columns:               # @gimp_palette_set_columns
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
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_palette_get_type
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
	movabsq	$.L__func__.gimp_palette_set_columns, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_20
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	cmpl	$64, -12(%rbp)
	jle	.LBB15_14
# BB#13:                                # %cond.true
	movl	$64, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB15_18
.LBB15_14:                              # %cond.false
	cmpl	$0, -12(%rbp)
	jge	.LBB15_16
# BB#15:                                # %cond.true.13
	xorl	%eax, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB15_17
.LBB15_16:                              # %cond.false.14
	movl	-12(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB15_17:                              # %cond.end
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB15_18:                              # %cond.end.15
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %eax
	cmpl	-12(%rbp), %eax
	je	.LBB15_20
# BB#19:                                # %if.then.18
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 44(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_dirty
.LBB15_20:                              # %if.end.22
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_palette_set_columns, .Lfunc_end15-gimp_palette_set_columns
	.cfi_endproc

	.globl	gimp_palette_get_columns
	.align	16, 0x90
	.type	gimp_palette_get_columns,@function
gimp_palette_get_columns:               # @gimp_palette_get_columns
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_palette_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_palette_get_columns, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB16_13
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB16_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_palette_get_columns, .Lfunc_end16-gimp_palette_get_columns
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4457293557087583675     # double 1.0E-10
	.text
	.globl	gimp_palette_find_entry
	.align	16, 0x90
	.type	gimp_palette_find_entry,@function
gimp_palette_find_entry:                # @gimp_palette_find_entry
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_palette_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.4
	movl	$1, -60(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.5
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.7
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.9
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_palette_find_entry, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB17_51
.LBB17_11:                              # %if.end.11
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	jmp	.LBB17_13
.LBB17_13:                              # %do.body.12
	cmpq	$0, -24(%rbp)
	je	.LBB17_15
# BB#14:                                # %if.then.14
	jmp	.LBB17_16
.LBB17_15:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_palette_find_entry, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB17_51
.LBB17_16:                              # %if.end.16
	jmp	.LBB17_17
.LBB17_17:                              # %do.end.17
	cmpq	$0, -32(%rbp)
	jne	.LBB17_28
# BB#18:                                # %if.then.19
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB17_19:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB17_27
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB17_19 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_rgb_distance
	movsd	.LCPI17_0, %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB17_22
# BB#21:                                # %if.then.25
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB17_51
.LBB17_22:                              # %if.end.26
                                        #   in Loop: Header=BB17_19 Depth=1
	jmp	.LBB17_23
.LBB17_23:                              # %for.inc
                                        #   in Loop: Header=BB17_19 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB17_25
# BB#24:                                # %cond.true
                                        #   in Loop: Header=BB17_19 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB17_26
.LBB17_25:                              # %cond.false
                                        #   in Loop: Header=BB17_19 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB17_26
.LBB17_26:                              # %cond.end
                                        #   in Loop: Header=BB17_19 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	jmp	.LBB17_19
.LBB17_27:                              # %for.end
	jmp	.LBB17_50
.LBB17_28:                              # %if.else.28
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_rgb_distance
	movsd	.LCPI17_0, %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB17_30
# BB#29:                                # %if.then.32
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB17_51
.LBB17_30:                              # %if.else.33
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	movq	%rax, -80(%rbp)
# BB#31:                                # %do.body.40
	cmpq	$0, -80(%rbp)
	je	.LBB17_33
# BB#32:                                # %if.then.42
	jmp	.LBB17_34
.LBB17_33:                              # %if.else.43
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_palette_find_entry, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB17_51
.LBB17_34:                              # %if.end.44
	jmp	.LBB17_35
.LBB17_35:                              # %do.end.45
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
.LBB17_36:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movb	$1, %al
	cmpq	$0, -88(%rbp)
	movb	%al, -105(%rbp)         # 1-byte Spill
	jne	.LBB17_38
# BB#37:                                # %lor.rhs
                                        #   in Loop: Header=BB17_36 Depth=1
	cmpq	$0, -96(%rbp)
	setne	%al
	movb	%al, -105(%rbp)         # 1-byte Spill
.LBB17_38:                              # %lor.end
                                        #   in Loop: Header=BB17_36 Depth=1
	movb	-105(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB17_39
	jmp	.LBB17_48
.LBB17_39:                              # %while.body
                                        #   in Loop: Header=BB17_36 Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB17_43
# BB#40:                                # %if.then.51
                                        #   in Loop: Header=BB17_36 Depth=1
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_rgb_distance
	movsd	.LCPI17_0, %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB17_42
# BB#41:                                # %if.then.56
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB17_51
.LBB17_42:                              # %if.end.57
                                        #   in Loop: Header=BB17_36 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
.LBB17_43:                              # %if.end.59
                                        #   in Loop: Header=BB17_36 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB17_47
# BB#44:                                # %if.then.61
                                        #   in Loop: Header=BB17_36 Depth=1
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_rgb_distance
	movsd	.LCPI17_0, %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB17_46
# BB#45:                                # %if.then.66
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB17_51
.LBB17_46:                              # %if.end.67
                                        #   in Loop: Header=BB17_36 Depth=1
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
.LBB17_47:                              # %if.end.69
                                        #   in Loop: Header=BB17_36 Depth=1
	jmp	.LBB17_36
.LBB17_48:                              # %while.end
	jmp	.LBB17_49
.LBB17_49:                              # %if.end.70
	jmp	.LBB17_50
.LBB17_50:                              # %if.end.71
	movq	$0, -8(%rbp)
.LBB17_51:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_palette_find_entry, .Lfunc_end17-gimp_palette_find_entry
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_class_init,@function
gimp_palette_class_init:                # @gimp_palette_class_init
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
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
.Ltmp57:
	.cfi_offset %rbx, -32
.Ltmp58:
	.cfi_offset %r14, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_palette_duplicate, %rsi
	movabsq	$gimp_palette_get_extension, %rdi
	movabsq	$gimp_palette_save, %rcx
	movabsq	$gimp_palette_get_description, %rdx
	movabsq	$gimp_palette_get_new_preview, %r8
	movabsq	$gimp_palette_get_popup_size, %r9
	movabsq	$gimp_palette_get_preview_size, %r10
	movabsq	$.L.str.12, %r11
	movabsq	$gimp_palette_get_memsize, %rbx
	movabsq	$gimp_palette_finalize, %r14
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%r14, 48(%rax)
	movq	-40(%rbp), %rax
	movq	%rbx, 152(%rax)
	movq	-48(%rbp), %rax
	movq	%r11, 160(%rax)
	movq	-48(%rbp), %rax
	movq	%r10, 200(%rax)
	movq	-48(%rbp), %rax
	movq	%r9, 208(%rax)
	movq	-48(%rbp), %rax
	movq	%r8, 224(%rax)
	movq	-48(%rbp), %rax
	movq	%rdx, 248(%rax)
	movq	-56(%rbp), %rax
	movq	%rcx, 288(%rax)
	movq	-56(%rbp), %rax
	movq	%rdi, 296(%rax)
	movq	-56(%rbp), %rax
	movq	%rsi, 304(%rax)
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_palette_class_init, .Lfunc_end18-gimp_palette_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_finalize,@function
gimp_palette_finalize:                  # @gimp_palette_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB19_2
# BB#1:                                 # %if.then
	movabsq	$gimp_palette_entry_free, %rax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	%rax, %rsi
	callq	g_list_free_full
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB19_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_palette_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_palette_finalize, .Lfunc_end19-gimp_palette_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_get_memsize,@function
gimp_palette_get_memsize:               # @gimp_palette_get_memsize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_palette_entry_get_memsize, %rsi
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rdx
	callq	gimp_g_list_get_memsize_foreach
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	gimp_palette_parent_class, %rdx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-48(%rbp), %rdx         # 8-byte Reload
	addq	%rax, %rdx
	movq	%rdx, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_palette_get_memsize, .Lfunc_end20-gimp_palette_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_get_preview_size,@function
gimp_palette_get_preview_size:          # @gimp_palette_get_preview_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rdi
	movl	%ecx, (%rdi)
	movl	-12(%rbp), %ecx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-44(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	addl	$1, %eax
	movq	-40(%rbp), %rdi
	movl	%eax, (%rdi)
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_palette_get_preview_size, .Lfunc_end21-gimp_palette_get_preview_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_get_popup_size,@function
gimp_palette_get_popup_size:            # @gimp_palette_get_popup_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$0, 40(%rax)
	jne	.LBB22_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB22_15
.LBB22_2:                               # %if.end
	movq	-56(%rbp), %rax
	cmpl	$0, 44(%rax)
	je	.LBB22_4
# BB#3:                                 # %if.then.3
	movq	-56(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -60(%rbp)
	jmp	.LBB22_8
.LBB22_4:                               # %if.else
	movq	-56(%rbp), %rax
	cmpl	$16, 40(%rax)
	jge	.LBB22_6
# BB#5:                                 # %cond.true
	movq	-56(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	jmp	.LBB22_7
.LBB22_6:                               # %cond.false
	movl	$16, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB22_7
.LBB22_7:                               # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)
.LBB22_8:                               # %if.end.7
	movl	$1, %eax
	movq	-56(%rbp), %rcx
	movl	40(%rcx), %edx
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	-60(%rbp)
	movl	-80(%rbp), %esi         # 4-byte Reload
	cmpl	%eax, %esi
	jle	.LBB22_10
# BB#9:                                 # %cond.true.10
	movl	$1, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB22_11
.LBB22_10:                              # %cond.false.11
	movq	-56(%rbp), %rax
	movl	40(%rax), %eax
	cltd
	idivl	-60(%rbp)
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB22_11:                              # %cond.end.14
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	shll	$2, %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB22_13
# BB#12:                                # %lor.lhs.false
	movl	-64(%rbp), %eax
	shll	$2, %eax
	cmpl	-24(%rbp), %eax
	jle	.LBB22_14
.LBB22_13:                              # %if.then.19
	movl	-60(%rbp), %eax
	shll	$2, %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-64(%rbp), %eax
	shll	$2, %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$1, -4(%rbp)
	jmp	.LBB22_15
.LBB22_14:                              # %if.end.22
	movl	$0, -4(%rbp)
.LBB22_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_palette_get_popup_size, .Lfunc_end22-gimp_palette_get_popup_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_get_new_preview,@function
gimp_palette_get_new_preview:           # @gimp_palette_get_new_preview
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edx
	xorl	%ecx, %ecx
	leaq	-67(%rbp), %r9
	movq	%rax, -32(%rbp)
	movw	.Lgimp_palette_get_new_preview.white, %r8w
	movw	%r8w, -67(%rbp)
	movb	.Lgimp_palette_get_new_preview.white+2, %r10b
	movb	%r10b, -65(%rbp)
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	-116(%rbp), %r8d        # 4-byte Reload
	callq	temp_buf_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$1, 44(%rax)
	jle	.LBB23_5
# BB#1:                                 # %if.then
	movl	$4, %eax
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	%eax, -120(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	cltd
	movq	-128(%rbp), %rsi        # 8-byte Reload
	idivl	44(%rsi)
	movl	-120(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB23_3
# BB#2:                                 # %cond.true
	movl	$4, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB23_4
.LBB23_3:                               # %cond.false
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	cltd
	idivl	44(%rcx)
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB23_4:                               # %cond.end
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -80(%rbp)
	jmp	.LBB23_6
.LBB23_5:                               # %if.else
	movl	$4, -80(%rbp)
.LBB23_6:                               # %if.end
	movl	-20(%rbp), %eax
	cltd
	idivl	-80(%rbp)
	movl	%eax, -72(%rbp)
	movl	-24(%rbp), %eax
	cltd
	idivl	-80(%rbp)
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rdi
	callq	temp_buf_get_data
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -48(%rbp)
	imull	$3, -20(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -88(%rbp)
.LBB23_7:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_11 Depth 2
                                        #       Child Loop BB23_18 Depth 3
                                        #     Child Loop BB23_24 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-88(%rbp), %eax
	cmpl	-76(%rbp), %eax
	movb	%cl, -133(%rbp)         # 1-byte Spill
	jge	.LBB23_9
# BB#8:                                 # %land.rhs
                                        #   in Loop: Header=BB23_7 Depth=1
	cmpq	$0, -64(%rbp)
	setne	%al
	movb	%al, -133(%rbp)         # 1-byte Spill
.LBB23_9:                               # %land.end
                                        #   in Loop: Header=BB23_7 Depth=1
	movb	-133(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB23_10
	jmp	.LBB23_29
.LBB23_10:                              # %for.body
                                        #   in Loop: Header=BB23_7 Depth=1
	movl	$255, %esi
	movq	-56(%rbp), %rdi
	imull	$3, -20(%rbp), %eax
	movslq	%eax, %rdx
	callq	memset
	movl	$0, -84(%rbp)
.LBB23_11:                              # %for.cond.15
                                        #   Parent Loop BB23_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB23_18 Depth 3
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-84(%rbp), %eax
	cmpl	-72(%rbp), %eax
	movb	%cl, -134(%rbp)         # 1-byte Spill
	jge	.LBB23_13
# BB#12:                                # %land.rhs.18
                                        #   in Loop: Header=BB23_11 Depth=2
	cmpq	$0, -64(%rbp)
	setne	%al
	movb	%al, -134(%rbp)         # 1-byte Spill
.LBB23_13:                              # %land.end.20
                                        #   in Loop: Header=BB23_11 Depth=2
	movb	-134(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB23_14
	jmp	.LBB23_23
.LBB23_14:                              # %for.body.21
                                        #   in Loop: Header=BB23_11 Depth=2
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB23_16
# BB#15:                                # %cond.true.24
                                        #   in Loop: Header=BB23_11 Depth=2
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB23_17
.LBB23_16:                              # %cond.false.25
                                        #   in Loop: Header=BB23_11 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB23_17
.LBB23_17:                              # %cond.end.26
                                        #   in Loop: Header=BB23_11 Depth=2
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rdi
	movl	-84(%rbp), %ecx
	imull	-80(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	$0, %ecx
	movslq	%ecx, %rax
	addq	-56(%rbp), %rax
	movl	-84(%rbp), %ecx
	imull	-80(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	addq	-56(%rbp), %rdx
	movl	-84(%rbp), %ecx
	imull	-80(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	$2, %ecx
	movslq	%ecx, %rsi
	addq	-56(%rbp), %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-152(%rbp), %rcx        # 8-byte Reload
	callq	gimp_rgb_get_uchar
	movl	$1, -92(%rbp)
.LBB23_18:                              # %for.cond.40
                                        #   Parent Loop BB23_7 Depth=1
                                        #     Parent Loop BB23_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-92(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB23_21
# BB#19:                                # %for.body.43
                                        #   in Loop: Header=BB23_18 Depth=3
	movl	-84(%rbp), %eax
	imull	-80(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-84(%rbp), %eax
	imull	-80(%rbp), %eax
	addl	-92(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movl	-84(%rbp), %eax
	imull	-80(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-84(%rbp), %eax
	imull	-80(%rbp), %eax
	addl	-92(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movl	-84(%rbp), %eax
	imull	-80(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-84(%rbp), %eax
	imull	-80(%rbp), %eax
	addl	-92(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB23_18 Depth=3
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB23_18
.LBB23_21:                              # %for.end
                                        #   in Loop: Header=BB23_11 Depth=2
	jmp	.LBB23_22
.LBB23_22:                              # %for.inc.77
                                        #   in Loop: Header=BB23_11 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB23_11
.LBB23_23:                              # %for.end.79
                                        #   in Loop: Header=BB23_7 Depth=1
	movl	$0, -92(%rbp)
.LBB23_24:                              # %for.cond.80
                                        #   Parent Loop BB23_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-92(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB23_27
# BB#25:                                # %for.body.83
                                        #   in Loop: Header=BB23_24 Depth=2
	movq	-48(%rbp), %rax
	movl	-88(%rbp), %ecx
	imull	-80(%rbp), %ecx
	addl	-92(%rbp), %ecx
	imull	-20(%rbp), %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-56(%rbp), %rsi
	imull	$3, -20(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rdi
	callq	memcpy
# BB#26:                                # %for.inc.90
                                        #   in Loop: Header=BB23_24 Depth=2
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB23_24
.LBB23_27:                              # %for.end.92
                                        #   in Loop: Header=BB23_7 Depth=1
	jmp	.LBB23_28
.LBB23_28:                              # %for.inc.93
                                        #   in Loop: Header=BB23_7 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB23_7
.LBB23_29:                              # %for.end.95
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_palette_get_new_preview, .Lfunc_end23-gimp_palette_get_new_preview
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_get_description,@function
gimp_palette_get_description:           # @gimp_palette_get_description
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movabsq	$.L.str.13, %rdi
	movq	-24(%rbp), %rsi
	movl	40(%rsi), %edx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_palette_get_description, .Lfunc_end24-gimp_palette_get_description
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_get_extension,@function
gimp_palette_get_extension:             # @gimp_palette_get_extension
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	movabsq	$.L.str.14, %rax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_palette_get_extension, .Lfunc_end25-gimp_palette_get_extension
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_duplicate,@function
gimp_palette_duplicate:                 # @gimp_palette_duplicate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	callq	gimp_palette_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 44(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB26_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB26_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rcx
	callq	gimp_palette_add_entry
	movq	%rax, -56(%rbp)         # 8-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB26_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB26_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB26_6
.LBB26_5:                               # %cond.false
                                        #   in Loop: Header=BB26_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB26_6
.LBB26_6:                               # %cond.end
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB26_1
.LBB26_7:                               # %for.end
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_palette_duplicate, .Lfunc_end26-gimp_palette_duplicate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_entry_get_memsize,@function
gimp_palette_entry_get_memsize:         # @gimp_palette_entry_get_memsize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$48, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rdi
	callq	gimp_string_get_memsize
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_palette_entry_get_memsize, .Lfunc_end27-gimp_palette_entry_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_get_checksum,@function
gimp_palette_get_checksum:              # @gimp_palette_get_checksum
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 40(%rax)
	jle	.LBB28_10
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	g_checksum_new
	movl	$4, %edi
	movl	%edi, %edx
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rsi
	callq	g_checksum_update
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$44, %rax
	movq	%rax, %rsi
	callq	g_checksum_update
.LBB28_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB28_9
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB28_2 Depth=1
	movl	$32, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_checksum_update
	movq	-48(%rbp), %rcx
	cmpq	$0, 32(%rcx)
	je	.LBB28_5
# BB#4:                                 # %if.then.6
                                        #   in Loop: Header=BB28_2 Depth=1
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_checksum_update
.LBB28_5:                               # %if.end
                                        #   in Loop: Header=BB28_2 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB28_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB28_2 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB28_8
.LBB28_7:                               # %cond.false
                                        #   in Loop: Header=BB28_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB28_8
.LBB28_8:                               # %cond.end
                                        #   in Loop: Header=BB28_2 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB28_2
.LBB28_9:                               # %while.end
	movq	-32(%rbp), %rdi
	callq	g_checksum_get_string
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_checksum_free
.LBB28_10:                              # %if.end.13
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_palette_get_checksum, .Lfunc_end28-gimp_palette_get_checksum
	.cfi_endproc

	.type	gimp_palette_get_type.g_define_type_id__volatile,@object # @gimp_palette_get_type.g_define_type_id__volatile
	.local	gimp_palette_get_type.g_define_type_id__volatile
	.comm	gimp_palette_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpPalette"
	.size	.L.str, 12

	.type	gimp_palette_get_type.g_implement_interface_info,@object # @gimp_palette_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_palette_get_type.g_implement_interface_info:
	.quad	gimp_palette_tagged_iface_init
	.quad	0
	.quad	0
	.size	gimp_palette_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_palette_new,@object # @__func__.gimp_palette_new
.L__func__.gimp_palette_new:
	.asciz	"gimp_palette_new"
	.size	.L__func__.gimp_palette_new, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"name != NULL"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"*name != '\\0'"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"name"
	.size	.L.str.4, 5

	.type	gimp_palette_get_standard.standard_palette,@object # @gimp_palette_get_standard.standard_palette
	.local	gimp_palette_get_standard.standard_palette
	.comm	gimp_palette_get_standard.standard_palette,8,8
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Standard"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-palette-standard"
	.size	.L.str.6, 22

	.type	.L__func__.gimp_palette_get_colors,@object # @__func__.gimp_palette_get_colors
.L__func__.gimp_palette_get_colors:
	.asciz	"gimp_palette_get_colors"
	.size	.L__func__.gimp_palette_get_colors, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_PALETTE (palette)"
	.size	.L.str.7, 26

	.type	.L__func__.gimp_palette_get_n_colors,@object # @__func__.gimp_palette_get_n_colors
.L__func__.gimp_palette_get_n_colors:
	.asciz	"gimp_palette_get_n_colors"
	.size	.L__func__.gimp_palette_get_n_colors, 26

	.type	.L__func__.gimp_palette_add_entry,@object # @__func__.gimp_palette_add_entry
.L__func__.gimp_palette_add_entry:
	.asciz	"gimp_palette_add_entry"
	.size	.L__func__.gimp_palette_add_entry, 23

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"color != NULL"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Untitled"
	.size	.L.str.9, 9

	.type	.L__func__.gimp_palette_delete_entry,@object # @__func__.gimp_palette_delete_entry
.L__func__.gimp_palette_delete_entry:
	.asciz	"gimp_palette_delete_entry"
	.size	.L__func__.gimp_palette_delete_entry, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"entry != NULL"
	.size	.L.str.10, 14

	.type	.L__func__.gimp_palette_set_entry,@object # @__func__.gimp_palette_set_entry
.L__func__.gimp_palette_set_entry:
	.asciz	"gimp_palette_set_entry"
	.size	.L__func__.gimp_palette_set_entry, 23

	.type	.L__func__.gimp_palette_set_entry_color,@object # @__func__.gimp_palette_set_entry_color
.L__func__.gimp_palette_set_entry_color:
	.asciz	"gimp_palette_set_entry_color"
	.size	.L__func__.gimp_palette_set_entry_color, 29

	.type	.L__func__.gimp_palette_set_entry_name,@object # @__func__.gimp_palette_set_entry_name
.L__func__.gimp_palette_set_entry_name:
	.asciz	"gimp_palette_set_entry_name"
	.size	.L__func__.gimp_palette_set_entry_name, 28

	.type	.L__func__.gimp_palette_get_entry,@object # @__func__.gimp_palette_get_entry
.L__func__.gimp_palette_get_entry:
	.asciz	"gimp_palette_get_entry"
	.size	.L__func__.gimp_palette_get_entry, 23

	.type	.L__func__.gimp_palette_set_columns,@object # @__func__.gimp_palette_set_columns
.L__func__.gimp_palette_set_columns:
	.asciz	"gimp_palette_set_columns"
	.size	.L__func__.gimp_palette_set_columns, 25

	.type	.L__func__.gimp_palette_get_columns,@object # @__func__.gimp_palette_get_columns
.L__func__.gimp_palette_get_columns:
	.asciz	"gimp_palette_get_columns"
	.size	.L__func__.gimp_palette_get_columns, 25

	.type	.L__func__.gimp_palette_find_entry,@object # @__func__.gimp_palette_find_entry
.L__func__.gimp_palette_find_entry:
	.asciz	"gimp_palette_find_entry"
	.size	.L__func__.gimp_palette_find_entry, 24

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"old != NULL"
	.size	.L.str.11, 12

	.type	gimp_palette_parent_class,@object # @gimp_palette_parent_class
	.local	gimp_palette_parent_class
	.comm	gimp_palette_parent_class,8,8
	.type	GimpPalette_private_offset,@object # @GimpPalette_private_offset
	.local	GimpPalette_private_offset
	.comm	GimpPalette_private_offset,4,4
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gtk-select-color"
	.size	.L.str.12, 17

	.type	.Lgimp_palette_get_new_preview.white,@object # @gimp_palette_get_new_preview.white
	.section	.rodata,"a",@progbits
.Lgimp_palette_get_new_preview.white:
	.zero	3,255
	.size	.Lgimp_palette_get_new_preview.white, 3

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"%s (%d)"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	".gpl"
	.size	.L.str.14, 5

	.type	.L__func__.gimp_palette_entry_free,@object # @__func__.gimp_palette_entry_free
.L__func__.gimp_palette_entry_free:
	.asciz	"gimp_palette_entry_free"
	.size	.L__func__.gimp_palette_entry_free, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
