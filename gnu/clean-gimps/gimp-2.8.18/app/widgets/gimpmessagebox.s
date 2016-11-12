	.text
	.file	"gimpmessagebox.bc"
	.globl	gimp_message_box_get_type
	.align	16, 0x90
	.type	gimp_message_box_get_type,@function
gimp_message_box_get_type:              # @gimp_message_box_get_type
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
	movq	gimp_message_box_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_message_box_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_box_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$824, %edx              # imm = 0x338
	movabsq	$gimp_message_box_class_intern_init, %rdi
	movl	$176, %r8d
	movabsq	$gimp_message_box_init, %rcx
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
	movabsq	$gimp_message_box_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_message_box_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_message_box_get_type, .Lfunc_end0-gimp_message_box_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_message_box_class_intern_init,@function
gimp_message_box_class_intern_init:     # @gimp_message_box_class_intern_init
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
	movq	%rax, gimp_message_box_parent_class
	cmpl	$0, GimpMessageBox_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpMessageBox_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_message_box_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_message_box_class_intern_init, .Lfunc_end1-gimp_message_box_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4602678819172646912     # double 0.5
.LCPI2_1:
	.quad	4608083138725491507     # double 1.2
	.text
	.align	16, 0x90
	.type	gimp_message_box_init,@function
gimp_message_box_init:                  # @gimp_message_box_init
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
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_orientable_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_orientable_set_orientation
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_spacing
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_focus_chain
	movl	$0, -12(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -12(%rbp)
	jge	.LBB2_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	callq	gtk_label_get_type
	movabsq	$.L.str.9, %rsi
	movl	$1, %ecx
	movabsq	$.L.str.10, %rdx
	movabsq	$.L.str.11, %r9
	xorps	%xmm0, %xmm0
	movabsq	$.L.str.12, %rdi
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	-76(%rbp), %r8d         # 4-byte Reload
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$0, 8(%rsp)
	movb	$2, %al
	movq	%r10, -88(%rbp)         # 8-byte Spill
	callq	g_object_new
	movq	%rax, -24(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB2_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$15, %esi
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	movl	$4, %edx
	movl	$700, %ecx              # imm = 0x2BC
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$1, %al
	callq	gimp_label_set_attributes
.LBB2_4:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	-108(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movslq	-12(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rax, 144(%rdi,%rsi,8)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB2_1
.LBB2_6:                                # %for.end
	movq	-8(%rbp), %rax
	movl	$0, 136(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 160(%rax)
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_message_box_init, .Lfunc_end2-gimp_message_box_init
	.cfi_endproc

	.globl	gimp_message_box_new
	.align	16, 0x90
	.type	gimp_message_box_new,@function
gimp_message_box_new:                   # @gimp_message_box_new
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
	movq	%rdi, -8(%rbp)
	callq	gimp_message_box_get_type
	movabsq	$.L.str.1, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_message_box_new, .Lfunc_end3-gimp_message_box_new
	.cfi_endproc

	.globl	gimp_message_box_set_primary_text
	.align	16, 0x90
	.type	gimp_message_box_set_primary_text,@function
gimp_message_box_set_primary_text:      # @gimp_message_box_set_primary_text
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
	subq	$448, %rsp              # imm = 0x1C0
	testb	%al, %al
	movaps	%xmm7, -272(%rbp)       # 16-byte Spill
	movaps	%xmm6, -288(%rbp)       # 16-byte Spill
	movaps	%xmm5, -304(%rbp)       # 16-byte Spill
	movaps	%xmm4, -320(%rbp)       # 16-byte Spill
	movaps	%xmm3, -336(%rbp)       # 16-byte Spill
	movaps	%xmm2, -352(%rbp)       # 16-byte Spill
	movaps	%xmm1, -368(%rbp)       # 16-byte Spill
	movaps	%xmm0, -384(%rbp)       # 16-byte Spill
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%r9, -400(%rbp)         # 8-byte Spill
	movq	%r8, -408(%rbp)         # 8-byte Spill
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	movq	%rdx, -424(%rbp)        # 8-byte Spill
	movq	%rsi, -432(%rbp)        # 8-byte Spill
	je	.LBB4_15
# BB#14:                                # %entry
	movaps	-384(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -208(%rbp)
	movaps	-368(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -192(%rbp)
	movaps	-352(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -176(%rbp)
	movaps	-336(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -160(%rbp)
	movaps	-320(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -144(%rbp)
	movaps	-304(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -128(%rbp)
	movaps	-288(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -112(%rbp)
	movaps	-272(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -96(%rbp)
.LBB4_15:                               # %entry
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-408(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -224(%rbp)
	movq	-416(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -232(%rbp)
	movq	-424(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -240(%rbp)
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	-392(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_message_box_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_message_box_set_primary_text, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	xorl	%esi, %esi
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	leaq	-256(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$16, (%rcx)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rax, %rcx
	callq	gimp_message_box_set_label_text
	leaq	-48(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
.LBB4_13:                               # %return
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_message_box_set_primary_text, .Lfunc_end4-gimp_message_box_set_primary_text
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_message_box_set_label_text,@function
gimp_message_box_set_label_text:        # @gimp_message_box_set_label_text
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	144(%rdx,%rcx,8), %rcx
	movq	%rcx, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_strdup_vprintf
	movq	$-1, %rsi
	movabsq	$.L.str.13, %rdx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movb	$0, %al
	callq	gimp_any_to_utf8
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	g_free
	jmp	.LBB5_3
.LBB5_2:                                # %if.else
	movq	-40(%rbp), %rdi
	callq	gtk_widget_hide
	movq	-40(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_text
.LBB5_3:                                # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_message_box_set_label_text, .Lfunc_end5-gimp_message_box_set_label_text
	.cfi_endproc

	.globl	gimp_message_box_set_text
	.align	16, 0x90
	.type	gimp_message_box_set_text,@function
gimp_message_box_set_text:              # @gimp_message_box_set_text
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
	subq	$448, %rsp              # imm = 0x1C0
	testb	%al, %al
	movaps	%xmm7, -272(%rbp)       # 16-byte Spill
	movaps	%xmm6, -288(%rbp)       # 16-byte Spill
	movaps	%xmm5, -304(%rbp)       # 16-byte Spill
	movaps	%xmm4, -320(%rbp)       # 16-byte Spill
	movaps	%xmm3, -336(%rbp)       # 16-byte Spill
	movaps	%xmm2, -352(%rbp)       # 16-byte Spill
	movaps	%xmm1, -368(%rbp)       # 16-byte Spill
	movaps	%xmm0, -384(%rbp)       # 16-byte Spill
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%r9, -400(%rbp)         # 8-byte Spill
	movq	%r8, -408(%rbp)         # 8-byte Spill
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	movq	%rdx, -424(%rbp)        # 8-byte Spill
	movq	%rsi, -432(%rbp)        # 8-byte Spill
	je	.LBB6_15
# BB#14:                                # %entry
	movaps	-384(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -208(%rbp)
	movaps	-368(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -192(%rbp)
	movaps	-352(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -176(%rbp)
	movaps	-336(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -160(%rbp)
	movaps	-320(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -144(%rbp)
	movaps	-304(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -128(%rbp)
	movaps	-288(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -112(%rbp)
	movaps	-272(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -96(%rbp)
.LBB6_15:                               # %entry
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-408(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -224(%rbp)
	movq	-416(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -232(%rbp)
	movq	-424(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -240(%rbp)
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	-392(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_message_box_get_type
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
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_message_box_set_text, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movl	$1, %esi
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	leaq	-256(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$16, (%rcx)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rax, %rcx
	callq	gimp_message_box_set_label_text
	leaq	-48(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
.LBB6_13:                               # %return
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_message_box_set_text, .Lfunc_end6-gimp_message_box_set_text
	.cfi_endproc

	.globl	gimp_message_box_set_markup
	.align	16, 0x90
	.type	gimp_message_box_set_markup,@function
gimp_message_box_set_markup:            # @gimp_message_box_set_markup
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
	subq	$448, %rsp              # imm = 0x1C0
	testb	%al, %al
	movaps	%xmm7, -272(%rbp)       # 16-byte Spill
	movaps	%xmm6, -288(%rbp)       # 16-byte Spill
	movaps	%xmm5, -304(%rbp)       # 16-byte Spill
	movaps	%xmm4, -320(%rbp)       # 16-byte Spill
	movaps	%xmm3, -336(%rbp)       # 16-byte Spill
	movaps	%xmm2, -352(%rbp)       # 16-byte Spill
	movaps	%xmm1, -368(%rbp)       # 16-byte Spill
	movaps	%xmm0, -384(%rbp)       # 16-byte Spill
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%r9, -400(%rbp)         # 8-byte Spill
	movq	%r8, -408(%rbp)         # 8-byte Spill
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	movq	%rdx, -424(%rbp)        # 8-byte Spill
	movq	%rsi, -432(%rbp)        # 8-byte Spill
	je	.LBB7_15
# BB#14:                                # %entry
	movaps	-384(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -208(%rbp)
	movaps	-368(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -192(%rbp)
	movaps	-352(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -176(%rbp)
	movaps	-336(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -160(%rbp)
	movaps	-320(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -144(%rbp)
	movaps	-304(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -128(%rbp)
	movaps	-288(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -112(%rbp)
	movaps	-272(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -96(%rbp)
.LBB7_15:                               # %entry
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-408(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -224(%rbp)
	movq	-416(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -232(%rbp)
	movq	-424(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -240(%rbp)
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	-392(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_message_box_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_message_box_set_markup, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movl	$1, %esi
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	leaq	-256(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$16, (%rcx)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rax, %rcx
	callq	gimp_message_box_set_label_markup
	leaq	-48(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
.LBB7_13:                               # %return
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_message_box_set_markup, .Lfunc_end7-gimp_message_box_set_markup
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_message_box_set_label_markup,@function
gimp_message_box_set_label_markup:      # @gimp_message_box_set_label_markup
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	144(%rdx,%rcx,8), %rcx
	movq	%rcx, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_markup_vprintf_escaped
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_markup
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rdi
	callq	g_free
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movq	-40(%rbp), %rdi
	callq	gtk_widget_hide
	movq	-40(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_text
.LBB8_3:                                # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_message_box_set_label_markup, .Lfunc_end8-gimp_message_box_set_label_markup
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI9_0:
	.long	1065353216              # float 1
	.text
	.globl	gimp_message_box_repeat
	.align	16, 0x90
	.type	gimp_message_box_repeat,@function
gimp_message_box_repeat:                # @gimp_message_box_repeat
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_message_box_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_message_box_repeat, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB9_16
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movabsq	$.L.str.4, %rdi
	movabsq	$.L.str.5, %rsi
	movq	-16(%rbp), %rax
	movl	136(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 136(%rax)
	movq	-16(%rbp), %rax
	movslq	136(%rax), %rdx
	callq	ngettext
	movq	-16(%rbp), %rdx
	movl	136(%rdx), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB9_14
# BB#13:                                # %if.then.16
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	jmp	.LBB9_15
.LBB9_14:                               # %if.else.21
	movq	-24(%rbp), %rdi
	callq	gtk_label_new
	movq	-16(%rbp), %rdi
	movq	%rax, 160(%rdi)
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movl	$1, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_label_set_attributes
	movq	-16(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	-92(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
.LBB9_15:                               # %if.end.33
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	movl	136(%rdi), %eax
	movl	%eax, -4(%rbp)
.LBB9_16:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_message_box_repeat, .Lfunc_end9-gimp_message_box_repeat
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_message_box_class_init,@function
gimp_message_box_class_init:            # @gimp_message_box_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
.Ltmp33:
	.cfi_offset %rbx, -48
.Ltmp34:
	.cfi_offset %r12, -40
.Ltmp35:
	.cfi_offset %r14, -32
.Ltmp36:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.1, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$235, %r8d
	movabsq	$gimp_message_box_forall, %rdx
	movabsq	$gimp_message_box_size_allocate, %r9
	movabsq	$gimp_message_box_size_request, %r10
	movabsq	$gimp_message_box_get_property, %r11
	movabsq	$gimp_message_box_set_property, %rbx
	movabsq	$gimp_message_box_finalize, %r14
	movabsq	$gimp_message_box_dispose, %r15
	movabsq	$gimp_message_box_constructed, %r12
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%r12, 72(%rax)
	movq	-48(%rbp), %rax
	movq	%r15, 40(%rax)
	movq	-48(%rbp), %rax
	movq	%r14, 48(%rax)
	movq	-48(%rbp), %rax
	movq	%rbx, 24(%rax)
	movq	-48(%rbp), %rax
	movq	%r11, 32(%rax)
	movq	-56(%rbp), %rax
	movq	%r10, 240(%rax)
	movq	-56(%rbp), %rax
	movq	%r9, 248(%rax)
	movq	-64(%rbp), %rax
	movq	%rdx, 744(%rax)
	movq	-48(%rbp), %rax
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_param_spec_string
	movl	$1, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_message_box_class_init, .Lfunc_end10-gimp_message_box_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_message_box_constructed,@function
gimp_message_box_constructed:           # @gimp_message_box_constructed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_message_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_message_box_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_message_box_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB11_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB11_4
# BB#3:                                 # %if.then.6
	callq	gtk_widget_push_composite_child
	movl	$6, %esi
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gtk_image_new_from_stock
	movq	-16(%rbp), %rdi
	movq	%rax, 168(%rdi)
	callq	gtk_widget_pop_composite_child
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movss	%xmm0, -36(%rbp)        # 4-byte Spill
	movss	-36(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment
	movq	-16(%rbp), %rax
	movq	168(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_set_parent
	movq	-16(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gtk_widget_show
.LBB11_4:                               # %if.end.16
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_message_box_constructed, .Lfunc_end11-gimp_message_box_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_message_box_dispose,@function
gimp_message_box_dispose:               # @gimp_message_box_dispose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_message_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gtk_widget_unparent
	movq	-16(%rbp), %rax
	movq	$0, 168(%rax)
.LBB12_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_message_box_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_message_box_dispose, .Lfunc_end12-gimp_message_box_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_message_box_finalize,@function
gimp_message_box_finalize:              # @gimp_message_box_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_message_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 128(%rax)
.LBB13_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_message_box_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_message_box_finalize, .Lfunc_end13-gimp_message_box_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_message_box_set_property,@function
gimp_message_box_set_property:          # @gimp_message_box_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_message_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB14_2
	jmp	.LBB14_1
.LBB14_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 128(%rdi)
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
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.7, %rsi
	movl	$202, %edx
	movabsq	$.L.str.8, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
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
	.size	gimp_message_box_set_property, .Lfunc_end14-gimp_message_box_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_message_box_get_property,@function
gimp_message_box_get_property:          # @gimp_message_box_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_message_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB15_2
	jmp	.LBB15_1
.LBB15_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	128(%rax), %rsi
	callq	g_value_set_string
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
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.7, %rsi
	movl	$221, %edx
	movabsq	$.L.str.8, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
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
	.size	gimp_message_box_get_property, .Lfunc_end15-gimp_message_box_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_message_box_size_request,@function
gimp_message_box_size_request:          # @gimp_message_box_size_request
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_message_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	gimp_message_box_parent_class, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	240(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-24(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB16_6
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gtk_widget_get_visible
	cmpl	$0, %eax
	je	.LBB16_6
# BB#2:                                 # %if.then
	leaq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gtk_widget_size_request
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_border_width
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	addl	$12, %eax
	movq	-16(%rbp), %rsi
	addl	(%rsi), %eax
	movl	%eax, (%rsi)
	movq	-16(%rbp), %rsi
	movl	4(%rsi), %eax
	movl	-28(%rbp), %ecx
	movl	-36(%rbp), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB16_4
# BB#3:                                 # %cond.true
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB16_5
.LBB16_4:                               # %cond.false
	movl	-28(%rbp), %eax
	movl	-36(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB16_5:                               # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, 4(%rcx)
.LBB16_6:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_message_box_size_request, .Lfunc_end16-gimp_message_box_size_request
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_message_box_size_allocate,@function
gimp_message_box_size_allocate:         # @gimp_message_box_size_allocate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_message_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_direction
	cmpl	$2, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -40(%rbp)
	movq	-24(%rbp), %rsi
	cmpq	$0, 168(%rsi)
	je	.LBB17_15
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gtk_widget_get_visible
	cmpl	$0, %eax
	je	.LBB17_15
# BB#2:                                 # %if.then
	leaq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gtk_widget_size_request
	movq	-32(%rbp), %rdi
	callq	gtk_container_get_border_width
	movl	%eax, -68(%rbp)
	movq	-16(%rbp), %rsi
	movl	8(%rsi), %eax
	movl	-68(%rbp), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	movl	-48(%rbp), %ecx
	addl	$12, %ecx
	cmpl	%ecx, %eax
	jge	.LBB17_4
# BB#3:                                 # %cond.true
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	-68(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	jmp	.LBB17_5
.LBB17_4:                               # %cond.false
	movl	-48(%rbp), %eax
	addl	$12, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB17_5:                               # %cond.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	$1, %ecx
	movl	%eax, -36(%rbp)
	cmpl	-36(%rbp), %ecx
	jle	.LBB17_7
# BB#6:                                 # %cond.true.21
	movl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB17_8
.LBB17_7:                               # %cond.false.22
	movl	-36(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB17_8:                               # %cond.end.23
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	$1, %ecx
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rdx
	movl	12(%rdx), %eax
	movl	-68(%rbp), %esi
	shll	$1, %esi
	subl	%esi, %eax
	movl	%eax, -72(%rbp)
	cmpl	-72(%rbp), %ecx
	jle	.LBB17_10
# BB#9:                                 # %cond.true.30
	movl	$1, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB17_11
.LBB17_10:                              # %cond.false.31
	movl	-72(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB17_11:                              # %cond.end.32
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -72(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB17_13
# BB#12:                                # %if.then.35
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	subl	-68(%rbp), %ecx
	subl	-48(%rbp), %ecx
	movl	%ecx, -64(%rbp)
	jmp	.LBB17_14
.LBB17_13:                              # %if.else
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -64(%rbp)
.LBB17_14:                              # %if.end
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-36(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movl	-72(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-24(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gtk_widget_size_allocate
.LBB17_15:                              # %if.end.48
	cmpl	$0, -40(%rbp)
	je	.LBB17_17
# BB#16:                                # %cond.true.50
	xorl	%eax, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB17_18
.LBB17_17:                              # %cond.false.51
	movl	-36(%rbp), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB17_18:                              # %cond.end.52
	movl	-104(%rbp), %eax        # 4-byte Reload
	movq	-16(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, 8(%rcx)
	movq	gimp_message_box_parent_class, %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	cmpl	$0, -40(%rbp)
	je	.LBB17_20
# BB#19:                                # %cond.true.61
	xorl	%eax, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB17_21
.LBB17_20:                              # %cond.false.62
	movl	-36(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB17_21:                              # %cond.end.63
	movl	-116(%rbp), %eax        # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, (%rcx)
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	addl	8(%rcx), %eax
	movl	%eax, 8(%rcx)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gtk_widget_set_allocation
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_message_box_size_allocate, .Lfunc_end17-gimp_message_box_size_allocate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_message_box_forall,@function
gimp_message_box_forall:                # @gimp_message_box_forall
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB18_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_message_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB18_3
# BB#2:                                 # %if.then.3
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	168(%rcx), %rdi
	movq	-32(%rbp), %rsi
	callq	*%rax
.LBB18_3:                               # %if.end
	jmp	.LBB18_4
.LBB18_4:                               # %if.end.5
	movq	gimp_message_box_parent_class, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	744(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	*%rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_message_box_forall, .Lfunc_end18-gimp_message_box_forall
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
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
	je	.LBB19_2
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
.LBB19_2:                               # %entry
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
	movl	$.L.str.2, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end19:
	.size	g_warning, .Lfunc_end19-g_warning
	.cfi_endproc

	.type	gimp_message_box_get_type.g_define_type_id__volatile,@object # @gimp_message_box_get_type.g_define_type_id__volatile
	.local	gimp_message_box_get_type.g_define_type_id__volatile
	.comm	gimp_message_box_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpMessageBox"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"stock-id"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Gimp-Widgets"
	.size	.L.str.2, 13

	.type	.L__func__.gimp_message_box_set_primary_text,@object # @__func__.gimp_message_box_set_primary_text
.L__func__.gimp_message_box_set_primary_text:
	.asciz	"gimp_message_box_set_primary_text"
	.size	.L__func__.gimp_message_box_set_primary_text, 34

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_MESSAGE_BOX (box)"
	.size	.L.str.3, 26

	.type	.L__func__.gimp_message_box_set_text,@object # @__func__.gimp_message_box_set_text
.L__func__.gimp_message_box_set_text:
	.asciz	"gimp_message_box_set_text"
	.size	.L__func__.gimp_message_box_set_text, 26

	.type	.L__func__.gimp_message_box_set_markup,@object # @__func__.gimp_message_box_set_markup
.L__func__.gimp_message_box_set_markup:
	.asciz	"gimp_message_box_set_markup"
	.size	.L__func__.gimp_message_box_set_markup, 28

	.type	.L__func__.gimp_message_box_repeat,@object # @__func__.gimp_message_box_repeat
.L__func__.gimp_message_box_repeat:
	.asciz	"gimp_message_box_repeat"
	.size	.L__func__.gimp_message_box_repeat, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Message repeated once."
	.size	.L.str.4, 23

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Message repeated %d times."
	.size	.L.str.5, 27

	.type	gimp_message_box_parent_class,@object # @gimp_message_box_parent_class
	.local	gimp_message_box_parent_class
	.comm	gimp_message_box_parent_class,8,8
	.type	GimpMessageBox_private_offset,@object # @GimpMessageBox_private_offset
	.local	GimpMessageBox_private_offset
	.comm	GimpMessageBox_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.6, 54

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimpmessagebox.c"
	.size	.L.str.7, 17

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"property"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"wrap"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"selectable"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"xalign"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"yalign"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Cannot convert text to utf8."
	.size	.L.str.13, 29


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
