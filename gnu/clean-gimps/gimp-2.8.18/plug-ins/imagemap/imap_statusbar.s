	.text
	.file	"imap_statusbar.bc"
	.globl	make_statusbar
	.align	16, 0x90
	.type	make_statusbar,@function
make_statusbar:                         # @make_statusbar
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
	subq	$144, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$48, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	g_malloc_n
	xorl	%edi, %edi
	movl	$1, %esi
	movq	%rax, -24(%rbp)
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	callq	gtk_statusbar_new
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_statusbar_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str, %rsi
	movq	%rax, %rdi
	callq	gtk_statusbar_get_context_id
	movq	-24(%rbp), %rsi
	movl	%eax, 32(%rsi)
	movq	-32(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.1, %rdi
	movl	$2, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$10, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_entry_new
	movl	$96, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_set_size_request
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_editable_set_editable
	xorl	%esi, %esi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_set_can_focus
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	-92(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.2, %rdi
	movl	$2, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$10, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_entry_new
	movl	$96, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_set_size_request
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_editable_set_editable
	xorl	%esi, %esi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_set_can_focus
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	callq	gtk_statusbar_new
	movl	$48, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_set_size_request
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_statusbar_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	gtk_statusbar_get_context_id
	movq	-24(%rbp), %rsi
	movl	%eax, 40(%rsi)
	movq	-32(%rbp), %rsi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$5, %r8d
	movq	-24(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	make_statusbar, .Lfunc_end0-make_statusbar
	.cfi_endproc

	.globl	statusbar_set_status
	.align	16, 0x90
	.type	statusbar_set_status,@function
statusbar_set_status:                   # @statusbar_set_status
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
	subq	$432, %rsp              # imm = 0x1B0
	testb	%al, %al
	movaps	%xmm7, -256(%rbp)       # 16-byte Spill
	movaps	%xmm6, -272(%rbp)       # 16-byte Spill
	movaps	%xmm5, -288(%rbp)       # 16-byte Spill
	movaps	%xmm4, -304(%rbp)       # 16-byte Spill
	movaps	%xmm3, -320(%rbp)       # 16-byte Spill
	movaps	%xmm2, -336(%rbp)       # 16-byte Spill
	movaps	%xmm1, -352(%rbp)       # 16-byte Spill
	movaps	%xmm0, -368(%rbp)       # 16-byte Spill
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%r9, -384(%rbp)         # 8-byte Spill
	movq	%r8, -392(%rbp)         # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	je	.LBB1_2
# BB#1:                                 # %entry
	movaps	-368(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -192(%rbp)
	movaps	-352(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -176(%rbp)
	movaps	-336(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -160(%rbp)
	movaps	-320(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -144(%rbp)
	movaps	-304(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -128(%rbp)
	movaps	-288(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -112(%rbp)
	movaps	-272(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -96(%rbp)
	movaps	-256(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -80(%rbp)
.LBB1_2:                                # %entry
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -208(%rbp)
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -216(%rbp)
	movq	-408(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -224(%rbp)
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	-376(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
	leaq	-240(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	leaq	16(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movl	$48, -44(%rbp)
	movl	$16, -48(%rbp)
	movq	-16(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	callq	g_strdup_vprintf
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	statusbar_clear_status
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	callq	gtk_statusbar_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %esi
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_statusbar_push
	movq	-8(%rbp), %rcx
	movl	%eax, 36(%rcx)
	movq	-56(%rbp), %rdi
	callq	g_free
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end1:
	.size	statusbar_set_status, .Lfunc_end1-statusbar_set_status
	.cfi_endproc

	.globl	statusbar_clear_status
	.align	16, 0x90
	.type	statusbar_clear_status,@function
statusbar_clear_status:                 # @statusbar_clear_status
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
	movq	-8(%rbp), %rdi
	cmpl	$0, 36(%rdi)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_statusbar_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movl	32(%rsi), %esi
	movq	-8(%rbp), %rdi
	movl	36(%rdi), %edx
	movq	%rax, %rdi
	callq	gtk_statusbar_remove
.LBB2_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	statusbar_clear_status, .Lfunc_end2-statusbar_clear_status
	.cfi_endproc

	.globl	statusbar_set_xy
	.align	16, 0x90
	.type	statusbar_set_xy,@function
statusbar_set_xy:                       # @statusbar_set_xy
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
	movabsq	$.L.str.4, %rax
	leaq	-32(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %esi
	movq	%rcx, %rdi
	movl	%esi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movl	-36(%rbp), %ecx         # 4-byte Reload
	movb	$0, %al
	callq	sprintf
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	statusbar_set_xy, .Lfunc_end3-statusbar_set_xy
	.cfi_endproc

	.globl	statusbar_clear_xy
	.align	16, 0x90
	.type	statusbar_clear_xy,@function
statusbar_clear_xy:                     # @statusbar_clear_xy
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	statusbar_clear_xy, .Lfunc_end4-statusbar_clear_xy
	.cfi_endproc

	.globl	statusbar_set_dimension
	.align	16, 0x90
	.type	statusbar_set_dimension,@function
statusbar_set_dimension:                # @statusbar_set_dimension
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
	movl	$16, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.6, %r8
	leaq	-32(%rbp), %r9
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	-16(%rbp), %edx
	movq	%r9, %rdi
	movq	%rcx, %rsi
	movl	%edx, -36(%rbp)         # 4-byte Spill
	movq	%r8, %rdx
	movl	%eax, %ecx
	movl	-36(%rbp), %r8d         # 4-byte Reload
	movb	$0, %al
	callq	g_snprintf
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	statusbar_set_dimension, .Lfunc_end5-statusbar_set_dimension
	.cfi_endproc

	.globl	statusbar_clear_dimension
	.align	16, 0x90
	.type	statusbar_clear_dimension,@function
statusbar_clear_dimension:              # @statusbar_clear_dimension
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	statusbar_clear_dimension, .Lfunc_end6-statusbar_clear_dimension
	.cfi_endproc

	.globl	statusbar_set_zoom
	.align	16, 0x90
	.type	statusbar_set_zoom,@function
statusbar_set_zoom:                     # @statusbar_set_zoom
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
	movabsq	$.L.str.7, %rax
	leaq	-32(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	sprintf
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gtk_statusbar_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-32(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movl	40(%rcx), %esi
	movq	%rax, %rdi
	callq	gtk_statusbar_push
	movl	%eax, -52(%rbp)         # 4-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	statusbar_set_zoom, .Lfunc_end7-statusbar_set_zoom
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"general_status"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"imap-coord"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"imap-dimension"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"zoom_status"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%d, %d"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.zero	1
	.size	.L.str.5, 1

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%d \303\227 %d"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"1:%d"
	.size	.L.str.7, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
