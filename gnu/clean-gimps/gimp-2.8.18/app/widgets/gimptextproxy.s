	.text
	.file	"gimptextproxy.bc"
	.globl	gimp_text_proxy_get_type
	.align	16, 0x90
	.type	gimp_text_proxy_get_type,@function
gimp_text_proxy_get_type:               # @gimp_text_proxy_get_type
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
	movq	gimp_text_proxy_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_text_proxy_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_text_view_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$1008, %edx             # imm = 0x3F0
	movabsq	$gimp_text_proxy_class_intern_init, %rdi
	movl	$352, %r8d              # imm = 0x160
	movabsq	$gimp_text_proxy_init, %rcx
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
	movabsq	$gimp_text_proxy_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_text_proxy_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_text_proxy_get_type, .Lfunc_end0-gimp_text_proxy_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_proxy_class_intern_init,@function
gimp_text_proxy_class_intern_init:      # @gimp_text_proxy_class_intern_init
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
	movq	%rax, gimp_text_proxy_parent_class
	cmpl	$0, GimpTextProxy_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpTextProxy_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_text_proxy_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_text_proxy_class_intern_init, .Lfunc_end1-gimp_text_proxy_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_proxy_init,@function
gimp_text_proxy_init:                   # @gimp_text_proxy_init
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
	.size	gimp_text_proxy_init, .Lfunc_end2-gimp_text_proxy_init
	.cfi_endproc

	.globl	gimp_text_proxy_new
	.align	16, 0x90
	.type	gimp_text_proxy_new,@function
gimp_text_proxy_new:                    # @gimp_text_proxy_new
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
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	gtk_text_buffer_new
	movq	%rax, -8(%rbp)
	callq	gimp_text_proxy_get_type
	movabsq	$.L.str.1, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_text_proxy_new, .Lfunc_end3-gimp_text_proxy_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
.LCPI4_1:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	gimp_text_proxy_class_init,@function
gimp_text_proxy_class_init:             # @gimp_text_proxy_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$216, %rsp
.Ltmp15:
	.cfi_offset %rbx, -56
.Ltmp16:
	.cfi_offset %r12, -48
.Ltmp17:
	.cfi_offset %r13, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.2, %rdi
	movl	$34, %edx
	movl	$984, %ecx              # imm = 0x3D8
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__DOUBLE, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movl	$1, %r8d
	movl	$60, %r11d
	movl	%r11d, %ebx
	movabsq	$gimp_text_proxy_toggle_overwrite, %r14
	movabsq	$gimp_text_proxy_paste_clipboard, %r15
	movabsq	$gimp_text_proxy_copy_clipboard, %r12
	movabsq	$gimp_text_proxy_cut_clipboard, %r13
	movabsq	$gimp_text_proxy_backspace, %r11
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movabsq	$gimp_text_proxy_delete_from_cursor, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movabsq	$gimp_text_proxy_insert_at_cursor, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movabsq	$gimp_text_proxy_move_cursor, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, 840(%rax)
	movq	-56(%rbp), %rax
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, 864(%rax)
	movq	-56(%rbp), %rax
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, 872(%rax)
	movq	-56(%rbp), %rax
	movq	%r11, 880(%rax)
	movq	-56(%rbp), %rax
	movq	%r13, 888(%rax)
	movq	-56(%rbp), %rax
	movq	%r12, 896(%rax)
	movq	-56(%rbp), %rax
	movq	%r15, 904(%rax)
	movq	-56(%rbp), %rax
	movq	%r14, 912(%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -128(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-128(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$60, 24(%rsp)
	movb	$0, %al
	movq	%rbx, -136(%rbp)        # 8-byte Spill
	movq	%r10, -144(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.3, %rdi
	movl	$34, %edx
	movl	$992, %ecx              # imm = 0x3E0
	xorl	%esi, %esi
	movl	%esi, %r8d
	movabsq	$g_cclosure_marshal_VOID__DOUBLE, %r9
	movl	$4, %esi
	movl	%esi, %r10d
	movl	$1, %esi
	movl	$60, %r11d
	movl	%r11d, %ebx
	movl	%eax, proxy_signals
	movq	-48(%rbp), %r14
	movq	(%r14), %r14
	movl	%esi, -148(%rbp)        # 4-byte Spill
	movq	%r14, %rsi
	movq	%r8, -160(%rbp)         # 8-byte Spill
	movq	-160(%rbp), %r14        # 8-byte Reload
	movq	%r9, -168(%rbp)         # 8-byte Spill
	movq	%r14, %r9
	movq	-168(%rbp), %r15        # 8-byte Reload
	movq	%r15, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$60, 24(%rsp)
	movb	$0, %al
	movq	%rbx, -176(%rbp)        # 8-byte Spill
	movq	%r10, -184(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.4, %rdi
	movl	$34, %edx
	movl	$1000, %ecx             # imm = 0x3E8
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movabsq	$g_cclosure_marshal_VOID__DOUBLE, %r8
	movl	$4, %r11d
	movl	%r11d, %r9d
	movl	$1, %r11d
	movl	$60, %r10d
	movl	%r10d, %ebx
	movl	%eax, proxy_signals+4
	movq	-48(%rbp), %r14
	movq	(%r14), %r14
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%r14, %rsi
	movq	-192(%rbp), %r14        # 8-byte Reload
	movq	%r8, -200(%rbp)         # 8-byte Spill
	movq	%r14, %r8
	movq	%r9, -208(%rbp)         # 8-byte Spill
	movq	%r14, %r9
	movq	-200(%rbp), %r15        # 8-byte Reload
	movq	%r15, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$60, 24(%rsp)
	movb	$0, %al
	movq	%rbx, -216(%rbp)        # 8-byte Spill
	movl	%r11d, -220(%rbp)       # 4-byte Spill
	callq	g_signal_new
	movl	%eax, proxy_signals+8
	movq	-48(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gtk_binding_set_by_class
	movl	$43, %esi
	movl	$8, %edx
	movabsq	$.L.str.2, %rcx
	movl	$1, %r8d
	movl	$60, %r10d
	movl	%r10d, %r9d
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movb	$1, %al
	callq	gtk_binding_entry_add_signal
	movl	$45, %esi
	movl	$8, %edx
	movabsq	$.L.str.2, %rcx
	movl	$1, %r8d
	movl	$60, %r10d
	movl	%r10d, %r9d
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movq	-64(%rbp), %rdi
	movb	$1, %al
	callq	gtk_binding_entry_add_signal
	movl	$65362, %esi            # imm = 0xFF52
	movl	$8, %edx
	movabsq	$.L.str.3, %rcx
	movl	$1, %r8d
	movl	$60, %r10d
	movl	%r10d, %r9d
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	-64(%rbp), %rdi
	movb	$1, %al
	callq	gtk_binding_entry_add_signal
	movl	$65364, %esi            # imm = 0xFF54
	movl	$8, %edx
	movabsq	$.L.str.3, %rcx
	movl	$1, %r8d
	movl	$60, %r10d
	movl	%r10d, %r9d
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movq	-64(%rbp), %rdi
	movb	$1, %al
	callq	gtk_binding_entry_add_signal
	movl	$65361, %esi            # imm = 0xFF51
	movl	$8, %edx
	movabsq	$.L.str.4, %rcx
	movl	$1, %r8d
	movl	$60, %r10d
	movl	%r10d, %r9d
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movq	-64(%rbp), %rdi
	movb	$1, %al
	callq	gtk_binding_entry_add_signal
	movl	$65363, %esi            # imm = 0xFF53
	movl	$8, %edx
	movabsq	$.L.str.4, %rcx
	movl	$1, %r8d
	movl	$60, %r10d
	movl	%r10d, %r9d
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	-64(%rbp), %rdi
	movb	$1, %al
	callq	gtk_binding_entry_add_signal
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_text_proxy_class_init, .Lfunc_end4-gimp_text_proxy_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_proxy_move_cursor,@function
gimp_text_proxy_move_cursor:            # @gimp_text_proxy_move_cursor
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_text_proxy_move_cursor, .Lfunc_end5-gimp_text_proxy_move_cursor
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_proxy_insert_at_cursor,@function
gimp_text_proxy_insert_at_cursor:       # @gimp_text_proxy_insert_at_cursor
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_text_proxy_insert_at_cursor, .Lfunc_end6-gimp_text_proxy_insert_at_cursor
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_proxy_delete_from_cursor,@function
gimp_text_proxy_delete_from_cursor:     # @gimp_text_proxy_delete_from_cursor
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_text_proxy_delete_from_cursor, .Lfunc_end7-gimp_text_proxy_delete_from_cursor
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_proxy_backspace,@function
gimp_text_proxy_backspace:              # @gimp_text_proxy_backspace
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_text_proxy_backspace, .Lfunc_end8-gimp_text_proxy_backspace
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_proxy_cut_clipboard,@function
gimp_text_proxy_cut_clipboard:          # @gimp_text_proxy_cut_clipboard
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_text_proxy_cut_clipboard, .Lfunc_end9-gimp_text_proxy_cut_clipboard
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_proxy_copy_clipboard,@function
gimp_text_proxy_copy_clipboard:         # @gimp_text_proxy_copy_clipboard
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_text_proxy_copy_clipboard, .Lfunc_end10-gimp_text_proxy_copy_clipboard
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_proxy_paste_clipboard,@function
gimp_text_proxy_paste_clipboard:        # @gimp_text_proxy_paste_clipboard
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_text_proxy_paste_clipboard, .Lfunc_end11-gimp_text_proxy_paste_clipboard
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_proxy_toggle_overwrite,@function
gimp_text_proxy_toggle_overwrite:       # @gimp_text_proxy_toggle_overwrite
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_text_proxy_toggle_overwrite, .Lfunc_end12-gimp_text_proxy_toggle_overwrite
	.cfi_endproc

	.type	gimp_text_proxy_get_type.g_define_type_id__volatile,@object # @gimp_text_proxy_get_type.g_define_type_id__volatile
	.local	gimp_text_proxy_get_type.g_define_type_id__volatile
	.comm	gimp_text_proxy_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpTextProxy"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"buffer"
	.size	.L.str.1, 7

	.type	gimp_text_proxy_parent_class,@object # @gimp_text_proxy_parent_class
	.local	gimp_text_proxy_parent_class
	.comm	gimp_text_proxy_parent_class,8,8
	.type	GimpTextProxy_private_offset,@object # @GimpTextProxy_private_offset
	.local	GimpTextProxy_private_offset
	.comm	GimpTextProxy_private_offset,4,4
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"change-size"
	.size	.L.str.2, 12

	.type	proxy_signals,@object   # @proxy_signals
	.local	proxy_signals
	.comm	proxy_signals,12,4
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"change-baseline"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"change-kerning"
	.size	.L.str.4, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
