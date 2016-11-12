	.text
	.file	"gimpbrushmenu.bc"
	.globl	gimp_brush_select_widget_new
	.align	16, 0x90
	.type	gimp_brush_select_widget_new,@function
gimp_brush_select_widget_new:           # @gimp_brush_select_widget_new
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -48(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_brush_select_widget_new(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_6
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	callq	gimp_brush_select_button_new@PLT
	movl	$16, %ecx
	movl	%ecx, %edi
	movq	%rax, -64(%rbp)
	callq	g_slice_alloc@PLT
	leaq	.L.str.2(%rip), %rsi
	leaq	compat_callback(%rip), %rdi
	leaq	compat_callback_data_free(%rip), %r8
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %r10
	movq	%rax, (%r10)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %r10
	movq	%rax, 8(%r10)
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %r10
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	movq	-64(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB0_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_brush_select_widget_new, .Lfunc_end0-gimp_brush_select_widget_new
	.cfi_endproc

	.align	16, 0x90
	.type	compat_callback,@function
compat_callback:                        # @compat_callback
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
	subq	$80, %rsp
	movq	32(%rbp), %rax
	movl	24(%rbp), %r10d
	movq	16(%rbp), %r11
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movq	%r11, -48(%rbp)
	movl	%r10d, -52(%rbp)
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movq	-48(%rbp), %r9
	movl	-52(%rbp), %r10d
	movq	-64(%rbp), %r11
	movq	8(%r11), %r11
	movl	%r10d, (%rsp)
	movq	%r11, 8(%rsp)
	callq	*%rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	compat_callback, .Lfunc_end1-compat_callback
	.cfi_endproc

	.align	16, 0x90
	.type	compat_callback_data_free,@function
compat_callback_data_free:              # @compat_callback_data_free
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
# BB#1:                                 # %do.body
	movl	$16, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1@PLT
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	compat_callback_data_free, .Lfunc_end2-compat_callback_data_free
	.cfi_endproc

	.globl	gimp_brush_select_widget_close
	.align	16, 0x90
	.type	gimp_brush_select_widget_close,@function
gimp_brush_select_widget_close:         # @gimp_brush_select_widget_close
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
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_brush_select_widget_close(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB3_6
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gimp_select_button_get_type@PLT
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_select_button_close_popup@PLT
.LBB3_6:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_brush_select_widget_close, .Lfunc_end3-gimp_brush_select_widget_close
	.cfi_endproc

	.globl	gimp_brush_select_widget_set
	.align	16, 0x90
	.type	gimp_brush_select_widget_set,@function
gimp_brush_select_widget_set:           # @gimp_brush_select_widget_set
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
	movsd	%xmm0, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_brush_select_widget_set(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_6
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_brush_select_button_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rsi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_brush_select_button_set_brush@PLT
.LBB4_6:                                # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_brush_select_widget_set, .Lfunc_end4-gimp_brush_select_widget_set
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimp"
	.size	.L.str, 8

	.type	.L__func__.gimp_brush_select_widget_new,@object # @__func__.gimp_brush_select_widget_new
.L__func__.gimp_brush_select_widget_new:
	.asciz	"gimp_brush_select_widget_new"
	.size	.L__func__.gimp_brush_select_widget_new, 29

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"callback != NULL"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"brush-set"
	.size	.L.str.2, 10

	.type	.L__func__.gimp_brush_select_widget_close,@object # @__func__.gimp_brush_select_widget_close
.L__func__.gimp_brush_select_widget_close:
	.asciz	"gimp_brush_select_widget_close"
	.size	.L__func__.gimp_brush_select_widget_close, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"widget != NULL"
	.size	.L.str.3, 15

	.type	.L__func__.gimp_brush_select_widget_set,@object # @__func__.gimp_brush_select_widget_set
.L__func__.gimp_brush_select_widget_set:
	.asciz	"gimp_brush_select_widget_set"
	.size	.L__func__.gimp_brush_select_widget_set, 29


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
