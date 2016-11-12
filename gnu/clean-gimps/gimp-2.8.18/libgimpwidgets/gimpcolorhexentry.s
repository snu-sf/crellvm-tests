	.text
	.file	"gimpcolorhexentry.bc"
	.globl	gimp_color_hex_entry_get_type
	.align	16, 0x90
	.type	gimp_color_hex_entry_get_type,@function
gimp_color_hex_entry_get_type:          # @gimp_color_hex_entry_get_type
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
	movq	gimp_color_hex_entry_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_color_hex_entry_get_type.g_define_type_id__volatile(%rip), %rax
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
	callq	gtk_entry_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$864, %edx              # imm = 0x360
	leaq	gimp_color_hex_entry_class_intern_init(%rip), %rdi
	movl	$240, %r8d
	leaq	gimp_color_hex_entry_init(%rip), %rcx
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
	callq	g_type_register_static_simple@PLT
	leaq	gimp_color_hex_entry_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_color_hex_entry_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_color_hex_entry_get_type, .Lfunc_end0-gimp_color_hex_entry_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_hex_entry_class_intern_init,@function
gimp_color_hex_entry_class_intern_init: # @gimp_color_hex_entry_class_intern_init
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
	movq	%rax, gimp_color_hex_entry_parent_class(%rip)
	cmpl	$0, GimpColorHexEntry_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpColorHexEntry_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_color_hex_entry_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_color_hex_entry_class_intern_init, .Lfunc_end1-gimp_color_hex_entry_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_color_hex_entry_init,@function
gimp_color_hex_entry_init:              # @gimp_color_hex_entry_init
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$8, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_width_chars@PLT
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_0(%rip), %xmm3   # xmm3 = mem[0],zero
	movq	-8(%rbp), %rax
	addq	$208, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set@PLT
	callq	gimp_rgb_get_type@PLT
	movl	$2, %edi
	movl	$64, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, %rdx
	movb	$0, %al
	callq	gtk_list_store_new@PLT
	leaq	-48(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	movq	%rax, -32(%rbp)
	callq	gimp_rgb_list_names@PLT
	movl	%eax, -52(%rbp)
	movl	$0, -56(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB2_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	leaq	-88(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gtk_list_store_append@PLT
	leaq	-88(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdi
	movslq	-56(%rbp), %rcx
	movq	-48(%rbp), %r9
	movq	(%r9,%rcx,8), %rcx
	movq	-40(%rbp), %r9
	movslq	-56(%rbp), %r10
	shlq	$5, %r10
	addq	%r10, %r9
	movl	$-1, (%rsp)
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_list_store_set@PLT
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	callq	gtk_entry_completion_get_type@PLT
	leaq	.L.str.6(%rip), %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	callq	gimp_cell_renderer_color_new@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_cell_layout_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%edx, %edx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_cell_layout_pack_start@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_cell_layout_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.7(%rip), %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_cell_layout_set_attributes@PLT
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	gtk_entry_completion_set_text_column@PLT
	movq	-8(%rbp), %rdx
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_completion@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.8(%rip), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text@PLT
	leaq	.L.str.9(%rip), %rsi
	leaq	gimp_color_hex_entry_events(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	-152(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	.L.str.10(%rip), %rsi
	leaq	gimp_color_hex_entry_events(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %r8         # 8-byte Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	leaq	.L.str.11(%rip), %rsi
	leaq	gimp_color_hex_entry_matched(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	movq	%rax, -192(%rbp)        # 8-byte Spill
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_color_hex_entry_init, .Lfunc_end2-gimp_color_hex_entry_init
	.cfi_endproc

	.globl	gimp_color_hex_entry_new
	.align	16, 0x90
	.type	gimp_color_hex_entry_new,@function
gimp_color_hex_entry_new:               # @gimp_color_hex_entry_new
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
	callq	gimp_color_hex_entry_get_type@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_color_hex_entry_new, .Lfunc_end3-gimp_color_hex_entry_new
	.cfi_endproc

	.globl	gimp_color_hex_entry_set_color
	.align	16, 0x90
	.type	gimp_color_hex_entry_set_color,@function
gimp_color_hex_entry_set_color:         # @gimp_color_hex_entry_set_color
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
	movq	%rax, -24(%rbp)
	callq	gimp_color_hex_entry_get_type@PLT
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
# BB#5:                                 # %if.then.4
	movl	$1, -36(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.5
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.7
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.9
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.10
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_hex_entry_set_color(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_19
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_hex_entry_set_color(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_19
.LBB4_16:                               # %if.end.16
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.17
	movq	-8(%rbp), %rax
	addq	$208, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_rgb_distance@PLT
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_19
# BB#18:                                # %if.then.21
	movq	-8(%rbp), %rax
	addq	$208, %rax
	movq	-16(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	movq	-16(%rbp), %rcx
	movsd	16(%rcx), %xmm2         # xmm2 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_rgb_set@PLT
	movq	-8(%rbp), %rax
	addq	$208, %rax
	movq	%rax, %rdi
	callq	gimp_rgb_clamp@PLT
	leaq	-49(%rbp), %rsi
	leaq	-50(%rbp), %rdx
	leaq	-51(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	$208, %rax
	movq	%rax, %rdi
	callq	gimp_rgb_get_uchar@PLT
	movl	$8, %r8d
	movl	%r8d, %esi
	leaq	.L.str.4(%rip), %rdx
	leaq	-48(%rbp), %rdi
	movzbl	-49(%rbp), %ecx
	movzbl	-50(%rbp), %r8d
	movzbl	-51(%rbp), %r9d
	movb	$0, %al
	callq	g_snprintf@PLT
	movq	-8(%rbp), %rdx
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	callq	gtk_editable_set_position@PLT
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	entry_signals(%rip), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
.LBB4_19:                               # %if.end.40
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_color_hex_entry_set_color, .Lfunc_end4-gimp_color_hex_entry_set_color
	.cfi_endproc

	.globl	gimp_color_hex_entry_get_color
	.align	16, 0x90
	.type	gimp_color_hex_entry_get_color,@function
gimp_color_hex_entry_get_color:         # @gimp_color_hex_entry_get_color
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_hex_entry_get_type@PLT
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
# BB#5:                                 # %if.then.4
	movl	$1, -36(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.5
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.7
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.9
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.10
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_hex_entry_get_color(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_18
.LBB5_11:                               # %if.end.11
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.12
	cmpq	$0, -16(%rbp)
	je	.LBB5_15
# BB#14:                                # %if.then.14
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.15
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_hex_entry_get_color(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_18
.LBB5_16:                               # %if.end.16
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.17
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	216(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	224(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	232(%rcx), %rcx
	movq	%rcx, 24(%rax)
.LBB5_18:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_color_hex_entry_get_color, .Lfunc_end5-gimp_color_hex_entry_get_color
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_hex_entry_class_init,@function
gimp_color_hex_entry_class_init:        # @gimp_color_hex_entry_class_init
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
	pushq	%rbx
	subq	$72, %rsp
.Ltmp21:
	.cfi_offset %rbx, -24
	leaq	.L.str.5(%rip), %rax
	movl	$1, %edx
	movl	$824, %ecx              # imm = 0x338
	xorl	%esi, %esi
	movl	%esi, %r8d
	movq	g_cclosure_marshal_VOID__VOID@GOTPCREL(%rip), %r9
	movl	$4, %esi
	movl	%esi, %r10d
	xorl	%esi, %esi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-24(%rbp), %rax         # 8-byte Reload
	movl	%esi, -28(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%r8, -40(%rbp)          # 8-byte Spill
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r11, %r9
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -56(%rbp)         # 8-byte Spill
	callq	g_signal_new@PLT
	movl	%eax, entry_signals(%rip)
	movq	-16(%rbp), %rsi
	movq	$0, 824(%rsi)
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_color_hex_entry_class_init, .Lfunc_end6-gimp_color_hex_entry_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_hex_entry_events,@function
gimp_color_hex_entry_events:            # @gimp_color_hex_entry_events
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_color_hex_entry_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$8, %edx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	%edx, -112(%rbp)        # 4-byte Spill
	je	.LBB7_1
	jmp	.LBB7_16
.LBB7_16:                               # %entry
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$12, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB7_6
	jmp	.LBB7_14
.LBB7_1:                                # %sw.bb
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$65293, 28(%rax)        # imm = 0xFF0D
	je	.LBB7_5
# BB#2:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpl	$65421, 28(%rax)        # imm = 0xFF8D
	je	.LBB7_5
# BB#3:                                 # %land.lhs.true.5
	movq	-32(%rbp), %rax
	cmpl	$65076, 28(%rax)        # imm = 0xFE34
	je	.LBB7_5
# BB#4:                                 # %if.then
	jmp	.LBB7_15
.LBB7_5:                                # %if.end
	jmp	.LBB7_6
.LBB7_6:                                # %sw.bb.8
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_entry_get_text@PLT
	leaq	-49(%rbp), %rsi
	leaq	-50(%rbp), %rdx
	leaq	-51(%rbp), %rcx
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	addq	$208, %rax
	movq	%rax, %rdi
	callq	gimp_rgb_get_uchar@PLT
	movl	$8, %r8d
	movl	%r8d, %esi
	leaq	.L.str.4(%rip), %rdx
	leaq	-48(%rbp), %rdi
	movzbl	-49(%rbp), %ecx
	movzbl	-50(%rbp), %r8d
	movzbl	-51(%rbp), %r9d
	movb	$0, %al
	callq	g_snprintf@PLT
	leaq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	g_ascii_strcasecmp@PLT
	cmpl	$0, %eax
	je	.LBB7_13
# BB#7:                                 # %if.then.19
	movq	-40(%rbp), %rdi
	callq	strlen@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jbe	.LBB7_11
# BB#8:                                 # %land.lhs.true.24
	leaq	-88(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, %edx
	callq	gimp_rgb_parse_hex@PLT
	cmpl	$0, %eax
	jne	.LBB7_10
# BB#9:                                 # %lor.lhs.false
	leaq	-88(%rbp), %rdi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-40(%rbp), %rsi
	callq	gimp_rgb_parse_name@PLT
	cmpl	$0, %eax
	je	.LBB7_11
.LBB7_10:                               # %if.then.29
	leaq	-88(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_color_hex_entry_set_color@PLT
	jmp	.LBB7_12
.LBB7_11:                               # %if.else
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text@PLT
.LBB7_12:                               # %if.end.33
	jmp	.LBB7_13
.LBB7_13:                               # %if.end.34
	jmp	.LBB7_15
.LBB7_14:                               # %sw.default
	jmp	.LBB7_15
.LBB7_15:                               # %sw.epilog
	xorl	%eax, %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_color_hex_entry_events, .Lfunc_end7-gimp_color_hex_entry_events
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_hex_entry_matched,@function
gimp_color_hex_entry_matched:           # @gimp_color_hex_entry_matched
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
	subq	$80, %rsp
	xorl	%eax, %eax
	leaq	-40(%rbp), %r8
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	%eax, %edx
	movq	%r8, %rcx
	movl	%r9d, %r8d
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	leaq	-72(%rbp), %rdi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-40(%rbp), %rsi
	callq	gimp_rgb_parse_name@PLT
	cmpl	$0, %eax
	je	.LBB8_2
# BB#1:                                 # %if.then
	leaq	-72(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_color_hex_entry_set_color@PLT
.LBB8_2:                                # %if.end
	movq	-40(%rbp), %rdi
	callq	g_free@PLT
	movl	$1, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_color_hex_entry_matched, .Lfunc_end8-gimp_color_hex_entry_matched
	.cfi_endproc

	.type	gimp_color_hex_entry_get_type.g_define_type_id__volatile,@object # @gimp_color_hex_entry_get_type.g_define_type_id__volatile
	.local	gimp_color_hex_entry_get_type.g_define_type_id__volatile
	.comm	gimp_color_hex_entry_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpColorHexEntry"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpWidgets"
	.size	.L.str.1, 15

	.type	.L__func__.gimp_color_hex_entry_set_color,@object # @__func__.gimp_color_hex_entry_set_color
.L__func__.gimp_color_hex_entry_set_color:
	.asciz	"gimp_color_hex_entry_set_color"
	.size	.L__func__.gimp_color_hex_entry_set_color, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_COLOR_HEX_ENTRY (entry)"
	.size	.L.str.2, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"color != NULL"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%.2x%.2x%.2x"
	.size	.L.str.4, 13

	.type	entry_signals,@object   # @entry_signals
	.local	entry_signals
	.comm	entry_signals,4,4
	.type	.L__func__.gimp_color_hex_entry_get_color,@object # @__func__.gimp_color_hex_entry_get_color
.L__func__.gimp_color_hex_entry_get_color:
	.asciz	"gimp_color_hex_entry_get_color"
	.size	.L__func__.gimp_color_hex_entry_get_color, 31

	.type	gimp_color_hex_entry_parent_class,@object # @gimp_color_hex_entry_parent_class
	.local	gimp_color_hex_entry_parent_class
	.comm	gimp_color_hex_entry_parent_class,8,8
	.type	GimpColorHexEntry_private_offset,@object # @GimpColorHexEntry_private_offset
	.local	GimpColorHexEntry_private_offset
	.comm	GimpColorHexEntry_private_offset,4,4
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"color-changed"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"model"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"color"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"000000"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"focus-out-event"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"key-press-event"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"match-selected"
	.size	.L.str.11, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
