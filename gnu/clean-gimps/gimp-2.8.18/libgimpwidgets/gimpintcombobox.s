	.text
	.file	"gimpintcombobox.bc"
	.globl	gimp_int_combo_box_get_type
	.align	16, 0x90
	.type	gimp_int_combo_box_get_type,@function
gimp_int_combo_box_get_type:            # @gimp_int_combo_box_get_type
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
	movq	gimp_int_combo_box_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_int_combo_box_get_type.g_define_type_id__volatile(%rip), %rax
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
	callq	gtk_combo_box_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$864, %edx              # imm = 0x360
	leaq	gimp_int_combo_box_class_intern_init(%rip), %rdi
	movl	$160, %r8d
	leaq	gimp_int_combo_box_init(%rip), %rcx
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
	leaq	gimp_int_combo_box_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_int_combo_box_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_int_combo_box_get_type, .Lfunc_end0-gimp_int_combo_box_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_int_combo_box_class_intern_init,@function
gimp_int_combo_box_class_intern_init:   # @gimp_int_combo_box_class_intern_init
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
	movq	%rax, gimp_int_combo_box_parent_class(%rip)
	cmpl	$0, GimpIntComboBox_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpIntComboBox_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_int_combo_box_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_int_combo_box_class_intern_init, .Lfunc_end1-gimp_int_combo_box_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_int_combo_box_init,@function
gimp_int_combo_box_init:                # @gimp_int_combo_box_init
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	-8(%rbp), %rsi
	movq	%rax, 128(%rsi)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_int_store_new@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_combo_box_set_model@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	callq	gtk_cell_renderer_pixbuf_new@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_cell_layout_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%edx, %edx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_cell_layout_pack_start@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_cell_layout_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.11(%rip), %rdx
	movl	$2, %ecx
	leaq	.L.str.12(%rip), %r8
	movl	$3, %r9d
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movq	-32(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gtk_cell_layout_set_attributes@PLT
	callq	gtk_cell_renderer_text_new@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_cell_layout_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %edx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_cell_layout_pack_start@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_cell_layout_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.13(%rip), %rdx
	movl	$1, %ecx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_cell_layout_set_attributes@PLT
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_int_combo_box_init, .Lfunc_end2-gimp_int_combo_box_init
	.cfi_endproc

	.globl	gimp_int_combo_box_new
	.align	16, 0x90
	.type	gimp_int_combo_box_new,@function
gimp_int_combo_box_new:                 # @gimp_int_combo_box_new
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
	subq	$400, %rsp              # imm = 0x190
	testb	%al, %al
	movaps	%xmm7, -240(%rbp)       # 16-byte Spill
	movaps	%xmm6, -256(%rbp)       # 16-byte Spill
	movaps	%xmm5, -272(%rbp)       # 16-byte Spill
	movaps	%xmm4, -288(%rbp)       # 16-byte Spill
	movaps	%xmm3, -304(%rbp)       # 16-byte Spill
	movaps	%xmm2, -320(%rbp)       # 16-byte Spill
	movaps	%xmm1, -336(%rbp)       # 16-byte Spill
	movaps	%xmm0, -352(%rbp)       # 16-byte Spill
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%r9, -368(%rbp)         # 8-byte Spill
	movq	%r8, -376(%rbp)         # 8-byte Spill
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	movl	%esi, -396(%rbp)        # 4-byte Spill
	je	.LBB3_2
# BB#1:                                 # %entry
	movaps	-352(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -176(%rbp)
	movaps	-336(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -160(%rbp)
	movaps	-320(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -144(%rbp)
	movaps	-304(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -128(%rbp)
	movaps	-288(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -112(%rbp)
	movaps	-272(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -96(%rbp)
	movaps	-256(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -80(%rbp)
	movaps	-240(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -64(%rbp)
.LBB3_2:                                # %entry
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)
	movq	-376(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -192(%rbp)
	movq	-384(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -200(%rbp)
	movq	-392(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -208(%rbp)
	movl	-396(%rbp), %edi        # 4-byte Reload
	movq	-360(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movl	%edi, -12(%rbp)
	leaq	-224(%rbp), %r8
	movq	%r8, -32(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -40(%rbp)
	movl	$48, -44(%rbp)
	movl	$16, -48(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	leaq	-48(%rbp), %rdx
	callq	gimp_int_combo_box_new_valist@PLT
	movq	%rax, -24(%rbp)
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_int_combo_box_new, .Lfunc_end3-gimp_int_combo_box_new
	.cfi_endproc

	.globl	gimp_int_combo_box_new_valist
	.align	16, 0x90
	.type	gimp_int_combo_box_new_valist,@function
gimp_int_combo_box_new_valist:          # @gimp_int_combo_box_new_valist
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	callq	gimp_int_combo_box_get_type@PLT
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model@PLT
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -52(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB4_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	leaq	-88(%rbp), %rax
	xorl	%esi, %esi
	movl	$32, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	memset@PLT
	movq	-40(%rbp), %rdi
	movq	-112(%rbp), %rsi        # 8-byte Reload
	callq	gtk_list_store_append@PLT
	leaq	-88(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-40(%rbp), %rdi
	movl	-52(%rbp), %r9d
	movq	-48(%rbp), %rax
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movq	%rax, %r9
	movl	$-1, (%rsp)
	movb	$0, %al
	callq	gtk_list_store_set@PLT
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	ja	.LBB4_5
# BB#4:                                 # %vaarg.in_reg
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-128(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB4_6
.LBB4_5:                                # %vaarg.in_mem
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -144(%rbp)        # 8-byte Spill
.LBB4_6:                                # %vaarg.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	ja	.LBB4_8
# BB#7:                                 # %vaarg.in_reg.10
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-156(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB4_9
.LBB4_8:                                # %vaarg.in_mem.12
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -168(%rbp)        # 8-byte Spill
.LBB4_9:                                # %vaarg.end.16
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB4_1
.LBB4_10:                               # %for.end
	movq	-32(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_int_combo_box_new_valist, .Lfunc_end4-gimp_int_combo_box_new_valist
	.cfi_endproc

	.globl	gimp_int_combo_box_new_array
	.align	16, 0x90
	.type	gimp_int_combo_box_new_array,@function
gimp_int_combo_box_new_array:           # @gimp_int_combo_box_new_array
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
	subq	$128, %rsp
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -12(%rbp)
	jl	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_int_combo_box_new_array(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB5_18
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	jmp	.LBB5_6
.LBB5_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	jne	.LBB5_8
# BB#7:                                 # %lor.lhs.false
	cmpl	$0, -12(%rbp)
	jne	.LBB5_9
.LBB5_8:                                # %if.then.4
	jmp	.LBB5_10
.LBB5_9:                                # %if.else.5
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_int_combo_box_new_array(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB5_18
.LBB5_10:                               # %if.end.6
	jmp	.LBB5_11
.LBB5_11:                               # %do.end.7
	callq	gimp_int_combo_box_get_type@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model@PLT
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB5_12:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB5_17
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB5_12 Depth=1
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB5_15
# BB#14:                                # %if.then.15
                                        #   in Loop: Header=BB5_12 Depth=1
	leaq	-80(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gtk_list_store_append@PLT
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %ecx
	movslq	-44(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax,%rsi,8), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	callq	gettext@PLT
	leaq	-80(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %r9d        # 4-byte Reload
	movl	%ecx, -112(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movq	%rax, %r9
	movl	$-1, (%rsp)
	movb	$0, %al
	callq	gtk_list_store_set@PLT
.LBB5_15:                               # %if.end.19
                                        #   in Loop: Header=BB5_12 Depth=1
	jmp	.LBB5_16
.LBB5_16:                               # %for.inc
                                        #   in Loop: Header=BB5_12 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB5_12
.LBB5_17:                               # %for.end
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB5_18:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_int_combo_box_new_array, .Lfunc_end5-gimp_int_combo_box_new_array
	.cfi_endproc

	.globl	gimp_int_combo_box_prepend
	.align	16, 0x90
	.type	gimp_int_combo_box_prepend,@function
gimp_int_combo_box_prepend:             # @gimp_int_combo_box_prepend
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
	subq	$496, %rsp              # imm = 0x1F0
	testb	%al, %al
	movaps	%xmm7, -304(%rbp)       # 16-byte Spill
	movaps	%xmm6, -320(%rbp)       # 16-byte Spill
	movaps	%xmm5, -336(%rbp)       # 16-byte Spill
	movaps	%xmm4, -352(%rbp)       # 16-byte Spill
	movaps	%xmm3, -368(%rbp)       # 16-byte Spill
	movaps	%xmm2, -384(%rbp)       # 16-byte Spill
	movaps	%xmm1, -400(%rbp)       # 16-byte Spill
	movaps	%xmm0, -416(%rbp)       # 16-byte Spill
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%r9, -432(%rbp)         # 8-byte Spill
	movq	%r8, -440(%rbp)         # 8-byte Spill
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	movq	%rsi, -464(%rbp)        # 8-byte Spill
	je	.LBB6_15
# BB#14:                                # %entry
	movaps	-416(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -240(%rbp)
	movaps	-400(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -224(%rbp)
	movaps	-384(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -208(%rbp)
	movaps	-368(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -192(%rbp)
	movaps	-352(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -176(%rbp)
	movaps	-336(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -160(%rbp)
	movaps	-320(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -144(%rbp)
	movaps	-304(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -128(%rbp)
.LBB6_15:                               # %entry
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	%rax, -248(%rbp)
	movq	-440(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -256(%rbp)
	movq	-448(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -264(%rbp)
	movq	-456(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -272(%rbp)
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -280(%rbp)
	movq	-424(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_int_combo_box_get_type@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -100(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_int_combo_box_prepend(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model@PLT
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type@PLT
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-48(%rbp), %rsi
	leaq	-80(%rbp), %rdi
	movq	%rax, -16(%rbp)
	leaq	-288(%rbp), %rax
	movq	%rax, 16(%rdi)
	leaq	16(%rbp), %rax
	movq	%rax, 8(%rdi)
	movl	$48, 4(%rdi)
	movl	$8, (%rdi)
	movq	-16(%rbp), %rdi
	callq	gtk_list_store_prepend@PLT
	leaq	-48(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gtk_list_store_set_valist@PLT
	leaq	-80(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
.LBB6_13:                               # %return
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_int_combo_box_prepend, .Lfunc_end6-gimp_int_combo_box_prepend
	.cfi_endproc

	.globl	gimp_int_combo_box_append
	.align	16, 0x90
	.type	gimp_int_combo_box_append,@function
gimp_int_combo_box_append:              # @gimp_int_combo_box_append
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
	subq	$496, %rsp              # imm = 0x1F0
	testb	%al, %al
	movaps	%xmm7, -304(%rbp)       # 16-byte Spill
	movaps	%xmm6, -320(%rbp)       # 16-byte Spill
	movaps	%xmm5, -336(%rbp)       # 16-byte Spill
	movaps	%xmm4, -352(%rbp)       # 16-byte Spill
	movaps	%xmm3, -368(%rbp)       # 16-byte Spill
	movaps	%xmm2, -384(%rbp)       # 16-byte Spill
	movaps	%xmm1, -400(%rbp)       # 16-byte Spill
	movaps	%xmm0, -416(%rbp)       # 16-byte Spill
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%r9, -432(%rbp)         # 8-byte Spill
	movq	%r8, -440(%rbp)         # 8-byte Spill
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	movq	%rsi, -464(%rbp)        # 8-byte Spill
	je	.LBB7_15
# BB#14:                                # %entry
	movaps	-416(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -240(%rbp)
	movaps	-400(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -224(%rbp)
	movaps	-384(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -208(%rbp)
	movaps	-368(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -192(%rbp)
	movaps	-352(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -176(%rbp)
	movaps	-336(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -160(%rbp)
	movaps	-320(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -144(%rbp)
	movaps	-304(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -128(%rbp)
.LBB7_15:                               # %entry
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	%rax, -248(%rbp)
	movq	-440(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -256(%rbp)
	movq	-448(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -264(%rbp)
	movq	-456(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -272(%rbp)
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -280(%rbp)
	movq	-424(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_int_combo_box_get_type@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -100(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_int_combo_box_append(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model@PLT
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type@PLT
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-48(%rbp), %rsi
	leaq	-80(%rbp), %rdi
	movq	%rax, -16(%rbp)
	leaq	-288(%rbp), %rax
	movq	%rax, 16(%rdi)
	leaq	16(%rbp), %rax
	movq	%rax, 8(%rdi)
	movl	$48, 4(%rdi)
	movl	$8, (%rdi)
	movq	-16(%rbp), %rdi
	callq	gtk_list_store_append@PLT
	leaq	-48(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gtk_list_store_set_valist@PLT
	leaq	-80(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
.LBB7_13:                               # %return
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_int_combo_box_append, .Lfunc_end7-gimp_int_combo_box_append
	.cfi_endproc

	.globl	gimp_int_combo_box_set_active
	.align	16, 0x90
	.type	gimp_int_combo_box_set_active,@function
gimp_int_combo_box_set_active:          # @gimp_int_combo_box_set_active
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_int_combo_box_get_type@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -84(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_int_combo_box_set_active(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB8_15
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model@PLT
	leaq	-64(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_int_store_lookup_by_value@PLT
	cmpl	$0, %eax
	je	.LBB8_14
# BB#13:                                # %if.then.16
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_combo_box_set_active_iter@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB8_15
.LBB8_14:                               # %if.end.19
	movl	$0, -4(%rbp)
.LBB8_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_int_combo_box_set_active, .Lfunc_end8-gimp_int_combo_box_set_active
	.cfi_endproc

	.globl	gimp_int_combo_box_get_active
	.align	16, 0x90
	.type	gimp_int_combo_box_get_active,@function
gimp_int_combo_box_get_active:          # @gimp_int_combo_box_get_active
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_int_combo_box_get_type@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -76(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_int_combo_box_get_active(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB9_20
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB9_15
# BB#14:                                # %if.then.13
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_int_combo_box_get_active(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB9_20
.LBB9_16:                               # %if.end.15
	jmp	.LBB9_17
.LBB9_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_combo_box_get_active_iter@PLT
	cmpl	$0, %eax
	je	.LBB9_19
# BB#18:                                # %if.then.21
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model@PLT
	leaq	-56(%rbp), %rsi
	xorl	%edx, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB9_20
.LBB9_19:                               # %if.end.25
	movl	$0, -4(%rbp)
.LBB9_20:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_int_combo_box_get_active, .Lfunc_end9-gimp_int_combo_box_get_active
	.cfi_endproc

	.globl	gimp_int_combo_box_connect
	.align	16, 0x90
	.type	gimp_int_combo_box_connect,@function
gimp_int_combo_box_connect:             # @gimp_int_combo_box_connect
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
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	$0, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_int_combo_box_get_type@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -68(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_int_combo_box_connect(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB10_17
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	cmpq	$0, -32(%rbp)
	je	.LBB10_14
# BB#13:                                # %if.then.12
	leaq	.L.str.6(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	%rax, -48(%rbp)
.LBB10_14:                              # %if.end.14
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_int_combo_box_set_active@PLT
	cmpl	$0, %eax
	jne	.LBB10_16
# BB#15:                                # %if.then.17
	leaq	.L.str.6(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movb	$0, %al
	callq	g_signal_emit_by_name@PLT
.LBB10_16:                              # %if.end.18
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_17:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_int_combo_box_connect, .Lfunc_end10-gimp_int_combo_box_connect
	.cfi_endproc

	.globl	gimp_int_combo_box_set_sensitivity
	.align	16, 0x90
	.type	gimp_int_combo_box_set_sensitivity,@function
gimp_int_combo_box_set_sensitivity:     # @gimp_int_combo_box_set_sensitivity
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_int_combo_box_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_int_combo_box_set_sensitivity(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_15
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB11_14
# BB#13:                                # %if.then.13
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-72(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	24(%rcx), %rdi
	callq	*%rax
.LBB11_14:                              # %if.end.17
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_cell_layout_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%edx, %edx
	movl	%edx, %ecx
	leaq	gimp_int_combo_box_data_func(%rip), %rsi
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	cmpq	$0, -16(%rbp)
	movq	%rcx, %r8
	cmovneq	%rsi, %r8
	movq	-40(%rbp), %rsi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	%r8, %rdx
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-104(%rbp), %r8         # 8-byte Reload
	callq	gtk_cell_layout_set_cell_data_func@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_cell_layout_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	leaq	gimp_int_combo_box_data_func(%rip), %rdx
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rsi
	cmpq	$0, -16(%rbp)
	movq	%rcx, %rdi
	cmovneq	%rdx, %rdi
	movq	-40(%rbp), %rdx
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-128(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-136(%rbp), %r8         # 8-byte Reload
	callq	gtk_cell_layout_set_cell_data_func@PLT
.LBB11_15:                              # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_int_combo_box_set_sensitivity, .Lfunc_end11-gimp_int_combo_box_set_sensitivity
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_int_combo_box_data_func,@function
gimp_int_combo_box_data_func:           # @gimp_int_combo_box_data_func
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rcx
	cmpq	$0, 16(%rcx)
	je	.LBB12_2
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	leaq	-52(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	movq	-48(%rbp), %rcx
	movq	16(%rcx), %rcx
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rsi
	movq	24(%rsi), %rsi
	callq	*%rcx
	leaq	.L.str.14(%rip), %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movl	%eax, -56(%rbp)
	movq	-16(%rbp), %r9
	movl	-56(%rbp), %edx
	movq	%r9, %rdi
	movb	$0, %al
	callq	g_object_set@PLT
.LBB12_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_int_combo_box_data_func, .Lfunc_end12-gimp_int_combo_box_data_func
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_int_combo_box_class_init,@function
gimp_int_combo_box_class_init:          # @gimp_int_combo_box_class_init
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
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	leaq	gimp_int_combo_box_finalize(%rip), %rsi
	leaq	gimp_int_combo_box_get_property(%rip), %rdi
	leaq	gimp_int_combo_box_set_property(%rip), %rcx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 48(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	pango_ellipsize_mode_get_type@PLT
	leaq	.L.str.7(%rip), %rdi
	xorl	%edx, %edx
	movl	%edx, %ecx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum@PLT
	movl	$1, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	movl	$40, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_int_combo_box_class_init, .Lfunc_end13-gimp_int_combo_box_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_int_combo_box_set_property,@function
gimp_int_combo_box_set_property:        # @gimp_int_combo_box_set_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movl	-12(%rbp), %esi
	subl	$1, %esi
	movl	%esi, -64(%rbp)         # 4-byte Spill
	jne	.LBB14_2
	jmp	.LBB14_1
.LBB14_1:                               # %sw.bb
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_property@PLT
	jmp	.LBB14_5
.LBB14_2:                               # %sw.default
	jmp	.LBB14_3
.LBB14_3:                               # %do.body
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
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	movq	%r9, -80(%rbp)          # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.8(%rip), %rdi
	leaq	.L.str.9(%rip), %rsi
	movl	$178, %edx
	leaq	.L.str.10(%rip), %rcx
	movl	-68(%rbp), %r8d         # 4-byte Reload
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB14_5
.LBB14_5:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_int_combo_box_set_property, .Lfunc_end14-gimp_int_combo_box_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_int_combo_box_get_property,@function
gimp_int_combo_box_get_property:        # @gimp_int_combo_box_get_property
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movl	-12(%rbp), %esi
	subl	$1, %esi
	movl	%esi, -64(%rbp)         # 4-byte Spill
	jne	.LBB15_2
	jmp	.LBB15_1
.LBB15_1:                               # %sw.bb
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_get_property@PLT
	jmp	.LBB15_5
.LBB15_2:                               # %sw.default
	jmp	.LBB15_3
.LBB15_3:                               # %do.body
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
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	movq	%r9, -80(%rbp)          # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.8(%rip), %rdi
	leaq	.L.str.9(%rip), %rsi
	movl	$198, %edx
	leaq	.L.str.10(%rip), %rcx
	movl	-68(%rbp), %r8d         # 4-byte Reload
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB15_5
.LBB15_5:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_int_combo_box_get_property, .Lfunc_end15-gimp_int_combo_box_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_int_combo_box_finalize,@function
gimp_int_combo_box_finalize:            # @gimp_int_combo_box_finalize
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
	movq	-8(%rbp), %rdi
	movq	128(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 32(%rdi)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rdi
	callq	*%rax
.LBB16_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_int_combo_box_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_int_combo_box_finalize, .Lfunc_end16-gimp_int_combo_box_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB17_2
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
.LBB17_2:                               # %entry
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
	leaq	.L.str.1(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end17:
	.size	g_warning, .Lfunc_end17-g_warning
	.cfi_endproc

	.type	gimp_int_combo_box_get_type.g_define_type_id__volatile,@object # @gimp_int_combo_box_get_type.g_define_type_id__volatile
	.local	gimp_int_combo_box_get_type.g_define_type_id__volatile
	.comm	gimp_int_combo_box_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpIntComboBox"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpWidgets"
	.size	.L.str.1, 15

	.type	.L__func__.gimp_int_combo_box_new_array,@object # @__func__.gimp_int_combo_box_new_array
.L__func__.gimp_int_combo_box_new_array:
	.asciz	"gimp_int_combo_box_new_array"
	.size	.L__func__.gimp_int_combo_box_new_array, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"n_values >= 0"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"labels != NULL || n_values == 0"
	.size	.L.str.3, 32

	.type	.L__func__.gimp_int_combo_box_prepend,@object # @__func__.gimp_int_combo_box_prepend
.L__func__.gimp_int_combo_box_prepend:
	.asciz	"gimp_int_combo_box_prepend"
	.size	.L__func__.gimp_int_combo_box_prepend, 27

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_INT_COMBO_BOX (combo_box)"
	.size	.L.str.4, 34

	.type	.L__func__.gimp_int_combo_box_append,@object # @__func__.gimp_int_combo_box_append
.L__func__.gimp_int_combo_box_append:
	.asciz	"gimp_int_combo_box_append"
	.size	.L__func__.gimp_int_combo_box_append, 26

	.type	.L__func__.gimp_int_combo_box_set_active,@object # @__func__.gimp_int_combo_box_set_active
.L__func__.gimp_int_combo_box_set_active:
	.asciz	"gimp_int_combo_box_set_active"
	.size	.L__func__.gimp_int_combo_box_set_active, 30

	.type	.L__func__.gimp_int_combo_box_get_active,@object # @__func__.gimp_int_combo_box_get_active
.L__func__.gimp_int_combo_box_get_active:
	.asciz	"gimp_int_combo_box_get_active"
	.size	.L__func__.gimp_int_combo_box_get_active, 30

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"value != NULL"
	.size	.L.str.5, 14

	.type	.L__func__.gimp_int_combo_box_connect,@object # @__func__.gimp_int_combo_box_connect
.L__func__.gimp_int_combo_box_connect:
	.asciz	"gimp_int_combo_box_connect"
	.size	.L__func__.gimp_int_combo_box_connect, 27

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"changed"
	.size	.L.str.6, 8

	.type	.L__func__.gimp_int_combo_box_set_sensitivity,@object # @__func__.gimp_int_combo_box_set_sensitivity
.L__func__.gimp_int_combo_box_set_sensitivity:
	.asciz	"gimp_int_combo_box_set_sensitivity"
	.size	.L__func__.gimp_int_combo_box_set_sensitivity, 35

	.type	gimp_int_combo_box_parent_class,@object # @gimp_int_combo_box_parent_class
	.local	gimp_int_combo_box_parent_class
	.comm	gimp_int_combo_box_parent_class,8,8
	.type	GimpIntComboBox_private_offset,@object # @GimpIntComboBox_private_offset
	.local	GimpIntComboBox_private_offset
	.comm	GimpIntComboBox_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"ellipsize"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.8, 54

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimpintcombobox.c"
	.size	.L.str.9, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"property"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"stock-id"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"pixbuf"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"text"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"sensitive"
	.size	.L.str.14, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
