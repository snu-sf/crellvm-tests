	.text
	.file	"imap_circle.bc"
	.globl	create_circle
	.align	16, 0x90
	.type	create_circle,@function
create_circle:                          # @create_circle
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
	subq	$32, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$104, %eax
	movl	%eax, %r8d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	g_malloc_n
	movabsq	$circle_class, %rsi
	movq	%rax, -24(%rbp)
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 88(%rax)
	movl	-8(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 92(%rax)
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 96(%rax)
	movq	-24(%rbp), %rdi
	callq	object_init
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	create_circle, .Lfunc_end0-create_circle
	.cfi_endproc

	.globl	get_circle_factory
	.align	16, 0x90
	.type	get_circle_factory,@function
get_circle_factory:                     # @get_circle_factory
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
	movabsq	$circle_factory2, %rax
	movabsq	$circle_factory1, %rcx
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	andl	$1, %edi
	cmpl	$0, %edi
	cmovneq	%rcx, %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	get_circle_factory, .Lfunc_end1-get_circle_factory
	.cfi_endproc

	.align	16, 0x90
	.type	circle_is_valid,@function
circle_is_valid:                        # @circle_is_valid
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
	cmpl	$0, 96(%rdi)
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	circle_is_valid, .Lfunc_end2-circle_is_valid
	.cfi_endproc

	.align	16, 0x90
	.type	circle_clone,@function
circle_clone:                           # @circle_clone
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
	subq	$32, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$104, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	%rcx, %rdi
	callq	g_malloc_n
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	88(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 88(%rax)
	movq	-16(%rbp), %rax
	movl	92(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 92(%rax)
	movq	-16(%rbp), %rax
	movl	96(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 96(%rax)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	circle_clone, .Lfunc_end3-circle_clone
	.cfi_endproc

	.align	16, 0x90
	.type	circle_assign,@function
circle_assign:                          # @circle_assign
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movl	88(%rsi), %eax
	movq	-32(%rbp), %rsi
	movl	%eax, 88(%rsi)
	movq	-24(%rbp), %rsi
	movl	92(%rsi), %eax
	movq	-32(%rbp), %rsi
	movl	%eax, 92(%rsi)
	movq	-24(%rbp), %rsi
	movl	96(%rsi), %eax
	movq	-32(%rbp), %rsi
	movl	%eax, 96(%rsi)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	circle_assign, .Lfunc_end4-circle_assign
	.cfi_endproc

	.align	16, 0x90
	.type	circle_draw,@function
circle_draw:                            # @circle_draw
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	88(%rsi), %esi
	movq	-24(%rbp), %rax
	movl	92(%rax), %edx
	movq	-24(%rbp), %rax
	movl	96(%rax), %ecx
	callq	draw_circle
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	circle_draw, .Lfunc_end5-circle_draw
	.cfi_endproc

	.align	16, 0x90
	.type	circle_draw_sashes,@function
circle_draw_sashes:                     # @circle_draw_sashes
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	88(%rsi), %eax
	movq	-24(%rbp), %rsi
	subl	96(%rsi), %eax
	movq	-24(%rbp), %rsi
	movl	92(%rsi), %ecx
	movq	-24(%rbp), %rsi
	subl	96(%rsi), %ecx
	movl	%eax, %esi
	movl	%ecx, %edx
	callq	draw_sash
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r8
	movl	88(%r8), %eax
	movq	-24(%rbp), %r8
	addl	96(%r8), %eax
	movq	-24(%rbp), %r8
	movl	92(%r8), %ecx
	movq	-24(%rbp), %r8
	subl	96(%r8), %ecx
	movl	%eax, %esi
	movl	%ecx, %edx
	callq	draw_sash
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r8
	movl	88(%r8), %eax
	movq	-24(%rbp), %r8
	subl	96(%r8), %eax
	movq	-24(%rbp), %r8
	movl	92(%r8), %ecx
	movq	-24(%rbp), %r8
	addl	96(%r8), %ecx
	movl	%eax, %esi
	movl	%ecx, %edx
	callq	draw_sash
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r8
	movl	88(%r8), %eax
	movq	-24(%rbp), %r8
	addl	96(%r8), %eax
	movq	-24(%rbp), %r8
	movl	92(%r8), %ecx
	movq	-24(%rbp), %r8
	addl	96(%r8), %ecx
	movl	%eax, %esi
	movl	%ecx, %edx
	callq	draw_sash
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	circle_draw_sashes, .Lfunc_end6-circle_draw_sashes
	.cfi_endproc

	.align	16, 0x90
	.type	circle_near_sash,@function
circle_near_sash:                       # @circle_near_sash
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, sash_x
	movl	-24(%rbp), %edx
	movl	%edx, sash_y
	movq	-32(%rbp), %rdi
	movl	88(%rdi), %edx
	movq	-32(%rbp), %rdi
	subl	96(%rdi), %edx
	movq	-32(%rbp), %rdi
	movl	92(%rdi), %esi
	movq	-32(%rbp), %rdi
	subl	96(%rdi), %esi
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	movl	%edx, %edi
	movl	%eax, %edx
	callq	near_sash
	cmpl	$0, %eax
	jne	.LBB7_4
# BB#1:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-32(%rbp), %rax
	addl	96(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	92(%rax), %edx
	movq	-32(%rbp), %rax
	subl	96(%rax), %edx
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edi
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movl	%ecx, %edi
	movl	%esi, -40(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-40(%rbp), %edx         # 4-byte Reload
	movl	-36(%rbp), %ecx         # 4-byte Reload
	callq	near_sash
	cmpl	$0, %eax
	jne	.LBB7_4
# BB#2:                                 # %lor.lhs.false.12
	movq	-32(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-32(%rbp), %rax
	subl	96(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	92(%rax), %edx
	movq	-32(%rbp), %rax
	addl	96(%rax), %edx
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edi
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movl	%ecx, %edi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-48(%rbp), %edx         # 4-byte Reload
	movl	-44(%rbp), %ecx         # 4-byte Reload
	callq	near_sash
	cmpl	$0, %eax
	jne	.LBB7_4
# BB#3:                                 # %lor.lhs.false.21
	movq	-32(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-32(%rbp), %rax
	addl	96(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	92(%rax), %edx
	movq	-32(%rbp), %rax
	addl	96(%rax), %edx
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edi
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movl	%ecx, %edi
	movl	%esi, -56(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-56(%rbp), %edx         # 4-byte Reload
	movl	-52(%rbp), %ecx         # 4-byte Reload
	callq	near_sash
	cmpl	$0, %eax
	je	.LBB7_5
.LBB7_4:                                # %if.then
	movabsq	$move_sash, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_6
.LBB7_5:                                # %if.end
	movq	$0, -8(%rbp)
.LBB7_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	circle_near_sash, .Lfunc_end7-circle_near_sash
	.cfi_endproc

	.align	16, 0x90
	.type	circle_point_is_on,@function
circle_point_is_on:                     # @circle_point_is_on
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	88(%rdi), %edx
	movl	-12(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -12(%rbp)
	movq	-24(%rbp), %rdi
	movl	92(%rdi), %edx
	movl	-16(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -16(%rbp)
	movl	-12(%rbp), %edx
	imull	-12(%rbp), %edx
	movl	-16(%rbp), %esi
	imull	-16(%rbp), %esi
	addl	%esi, %edx
	movq	-24(%rbp), %rdi
	movl	96(%rdi), %esi
	movq	-24(%rbp), %rdi
	imull	96(%rdi), %esi
	cmpl	%esi, %edx
	setle	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end8:
	.size	circle_point_is_on, .Lfunc_end8-circle_point_is_on
	.cfi_endproc

	.align	16, 0x90
	.type	circle_get_dimensions,@function
circle_get_dimensions:                  # @circle_get_dimensions
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rcx
	movl	88(%rcx), %eax
	movq	-48(%rbp), %rcx
	subl	96(%rcx), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-48(%rbp), %rcx
	movl	92(%rcx), %eax
	movq	-48(%rbp), %rcx
	subl	96(%rcx), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-48(%rbp), %rcx
	movl	96(%rcx), %eax
	shll	$1, %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	popq	%rbp
	retq
.Lfunc_end9:
	.size	circle_get_dimensions, .Lfunc_end9-circle_get_dimensions
	.cfi_endproc

	.align	16, 0x90
	.type	circle_resize,@function
circle_resize:                          # @circle_resize
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
	movl	$100, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	88(%rdi), %edx
	imull	-12(%rbp), %edx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-28(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movq	-24(%rbp), %rdi
	movl	%eax, 88(%rdi)
	movq	-24(%rbp), %rdi
	movl	92(%rdi), %eax
	imull	-16(%rbp), %eax
	cltd
	idivl	%esi
	movq	-24(%rbp), %rdi
	movl	%eax, 92(%rdi)
	movq	-24(%rbp), %rdi
	movl	96(%rdi), %eax
	movl	-12(%rbp), %ecx
	cmpl	-16(%rbp), %ecx
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jge	.LBB10_2
# BB#1:                                 # %cond.true
	movl	-12(%rbp), %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB10_3
.LBB10_2:                               # %cond.false
	movl	-16(%rbp), %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB10_3:                               # %cond.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	$100, %ecx
	movl	-32(%rbp), %edx         # 4-byte Reload
	imull	%eax, %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movq	-24(%rbp), %rsi
	movl	%eax, 96(%rsi)
	popq	%rbp
	retq
.Lfunc_end10:
	.size	circle_resize, .Lfunc_end10-circle_resize
	.cfi_endproc

	.align	16, 0x90
	.type	circle_move,@function
circle_move:                            # @circle_move
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rdi
	addl	88(%rdi), %edx
	movl	%edx, 88(%rdi)
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rdi
	addl	92(%rdi), %edx
	movl	%edx, 92(%rdi)
	popq	%rbp
	retq
.Lfunc_end11:
	.size	circle_move, .Lfunc_end11-circle_move
	.cfi_endproc

	.align	16, 0x90
	.type	circle_create_info_widget,@function
circle_create_info_widget:              # @circle_create_info_widget
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
	subq	$224, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$32, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	g_malloc_n
	movq	%rax, -16(%rbp)
	callq	get_image_width
	movl	%eax, -36(%rbp)
	callq	get_image_height
	movl	$3, %edx
	xorl	%r8d, %r8d
	movl	%eax, -40(%rbp)
	movl	%edx, %edi
	movl	%edx, %esi
	movl	%r8d, %edx
	callq	gtk_table_new
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.1, %rdi
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	%edx, %esi
	movq	%rax, %rcx
	callq	create_label_in_table
	xorl	%edx, %edx
	movl	$1, %esi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %r8d
	subl	$1, %r8d
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movl	%edx, -80(%rbp)         # 4-byte Spill
	movl	-76(%rbp), %ecx         # 4-byte Reload
	movl	-76(%rbp), %r9d         # 4-byte Reload
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	movl	%r9d, %r8d
	movl	-80(%rbp), %r9d         # 4-byte Reload
	movl	-84(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	create_spin_button_in_table
	movabsq	$.L.str.2, %rsi
	movabsq	$x_changed_cb, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %r11
	movq	%rax, 8(%r11)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %r11
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.3, %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movabsq	$.L.str.4, %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movl	$1, %edx
	xorl	%r9d, %r9d
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-40(%rbp), %r10d
	subl	$1, %r10d
	movl	%edx, -132(%rbp)        # 4-byte Spill
	movl	-132(%rbp), %ecx        # 4-byte Reload
	movl	-132(%rbp), %r8d        # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	create_spin_button_in_table
	movabsq	$.L.str.2, %rsi
	movabsq	$y_changed_cb, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %r11
	movq	%rax, 16(%r11)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %r11
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.3, %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	movl	$2, %edx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movabsq	$.L.str.5, %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %esi
	xorl	%edx, %edx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movl	$2, %edx
	movl	$1, %esi
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	%esi, -180(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-180(%rbp), %ecx        # 4-byte Reload
	movl	-180(%rbp), %r8d        # 4-byte Reload
	movl	-180(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -184(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$2147483647, (%rsp)     # imm = 0x7FFFFFFF
	callq	create_spin_button_in_table
	movabsq	$.L.str.2, %rsi
	movabsq	$r_changed_cb, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %r11
	movq	%rax, 24(%r11)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %r11
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.3, %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %r9d
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movl	%r9d, %edx
	movq	%rax, %rcx
	callq	create_label_in_table
	movq	-16(%rbp), %rcx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	circle_create_info_widget, .Lfunc_end12-circle_create_info_widget
	.cfi_endproc

	.align	16, 0x90
	.type	circle_fill_info_tab,@function
circle_fill_info_tab:                   # @circle_fill_info_tab
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	%rsi, (%rdi)
	movq	-32(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	cvtsi2sdl	88(%rsi), %xmm0
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	cvtsi2sdl	92(%rsi), %xmm0
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	cvtsi2sdl	96(%rsi), %xmm0
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	circle_fill_info_tab, .Lfunc_end13-circle_fill_info_tab
	.cfi_endproc

	.align	16, 0x90
	.type	circle_set_initial_focus,@function
circle_set_initial_focus:               # @circle_set_initial_focus
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rdi
	callq	gtk_widget_grab_focus
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	circle_set_initial_focus, .Lfunc_end14-circle_set_initial_focus
	.cfi_endproc

	.align	16, 0x90
	.type	circle_update,@function
circle_update:                          # @circle_update
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movq	-24(%rbp), %rsi
	movl	%eax, 88(%rsi)
	movq	-32(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movq	-24(%rbp), %rsi
	movl	%eax, 92(%rsi)
	movq	-32(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movq	-24(%rbp), %rsi
	movl	%eax, 96(%rsi)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	circle_update, .Lfunc_end15-circle_update
	.cfi_endproc

	.align	16, 0x90
	.type	circle_write_csim,@function
circle_write_csim:                      # @circle_write_csim
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
	movabsq	$.L.str.6, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	88(%rsi), %ecx
	movq	-32(%rbp), %rsi
	movl	92(%rsi), %r8d
	movq	-32(%rbp), %rsi
	movl	96(%rsi), %r9d
	movq	%rax, %rsi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movb	$0, %al
	movq	-40(%rbp), %r10         # 8-byte Reload
	callq	*%r10
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	circle_write_csim, .Lfunc_end16-circle_write_csim
	.cfi_endproc

	.align	16, 0x90
	.type	circle_write_cern,@function
circle_write_cern:                      # @circle_write_cern
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
	subq	$48, %rsp
	movabsq	$.L.str.7, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	88(%rsi), %ecx
	movq	-32(%rbp), %rsi
	movl	92(%rsi), %r8d
	movq	-32(%rbp), %rsi
	movl	96(%rsi), %r9d
	movq	%rax, %rsi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movb	$0, %al
	movq	-40(%rbp), %r10         # 8-byte Reload
	callq	*%r10
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	circle_write_cern, .Lfunc_end17-circle_write_cern
	.cfi_endproc

	.align	16, 0x90
	.type	circle_write_ncsa,@function
circle_write_ncsa:                      # @circle_write_ncsa
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
	movabsq	$.L.str.8, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	-32(%rbp), %rcx
	movl	88(%rcx), %ecx
	movq	-32(%rbp), %r8
	movl	92(%r8), %r8d
	movq	-32(%rbp), %r9
	movl	88(%r9), %r9d
	movq	-32(%rbp), %r10
	movl	92(%r10), %r11d
	movq	-32(%rbp), %r10
	addl	96(%r10), %r11d
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	%r11d, (%rsp)
	movb	$0, %al
	movq	-48(%rbp), %r10         # 8-byte Reload
	callq	*%r10
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	circle_write_ncsa, .Lfunc_end18-circle_write_ncsa
	.cfi_endproc

	.align	16, 0x90
	.type	circle_get_stock_icon_name,@function
circle_get_stock_icon_name:             # @circle_get_stock_icon_name
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
	movabsq	$.L.str.9, %rax
	popq	%rbp
	retq
.Lfunc_end19:
	.size	circle_get_stock_icon_name, .Lfunc_end19-circle_get_stock_icon_name
	.cfi_endproc

	.align	16, 0x90
	.type	move_sash,@function
move_sash:                              # @move_sash
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movl	-12(%rbp), %edx
	addl	sash_x, %edx
	movl	%edx, sash_x
	movl	-16(%rbp), %edx
	addl	sash_y, %edx
	movl	%edx, sash_y
	movq	-24(%rbp), %rdi
	movl	88(%rdi), %edx
	subl	sash_x, %edx
	movl	%edx, %edi
	callq	abs
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rcx
	movl	92(%rcx), %eax
	subl	sash_y, %eax
	movl	%eax, %edi
	callq	abs
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jle	.LBB20_2
# BB#1:                                 # %cond.true
	movl	-28(%rbp), %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB20_3
.LBB20_2:                               # %cond.false
	movl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB20_3:                               # %cond.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, 96(%rcx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	move_sash, .Lfunc_end20-move_sash
	.cfi_endproc

	.align	16, 0x90
	.type	x_changed_cb,@function
x_changed_cb:                           # @x_changed_cb
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rsi
	movl	%eax, 88(%rsi)
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	8(%rsi), %rdi
	callq	edit_area_info_dialog_emit_geometry_signal
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	x_changed_cb, .Lfunc_end21-x_changed_cb
	.cfi_endproc

	.align	16, 0x90
	.type	y_changed_cb,@function
y_changed_cb:                           # @y_changed_cb
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rsi
	movl	%eax, 92(%rsi)
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	8(%rsi), %rdi
	callq	edit_area_info_dialog_emit_geometry_signal
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	y_changed_cb, .Lfunc_end22-y_changed_cb
	.cfi_endproc

	.align	16, 0x90
	.type	r_changed_cb,@function
r_changed_cb:                           # @r_changed_cb
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rsi
	movl	%eax, 96(%rsi)
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	8(%rsi), %rdi
	callq	edit_area_info_dialog_emit_geometry_signal
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	r_changed_cb, .Lfunc_end23-r_changed_cb
	.cfi_endproc

	.align	16, 0x90
	.type	circle_factory_create_object1,@function
circle_factory_create_object1:          # @circle_factory_create_object1
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
	subq	$16, %rsp
	xorl	%edx, %edx
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %esi
	movl	%esi, _start_x
	movl	-8(%rbp), %esi
	movl	%esi, _start_y
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	create_circle
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	circle_factory_create_object1, .Lfunc_end24-circle_factory_create_object1
	.cfi_endproc

	.align	16, 0x90
	.type	circle_factory_set_xy1,@function
circle_factory_set_xy1:                 # @circle_factory_set_xy1
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
	subq	$48, %rsp
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	movl	_start_x, %ecx
	addl	-16(%rbp), %ecx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-36(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movq	-32(%rbp), %rdi
	movl	%eax, 88(%rdi)
	movl	_start_y, %eax
	addl	-20(%rbp), %eax
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rdi
	movl	%eax, 92(%rdi)
	movl	_start_x, %eax
	movl	-16(%rbp), %esi
	subl	%eax, %esi
	movl	%esi, -16(%rbp)
	movl	_start_y, %eax
	movl	-20(%rbp), %esi
	subl	%eax, %esi
	movl	%esi, -20(%rbp)
	movl	-16(%rbp), %eax
	imull	-16(%rbp), %eax
	movl	-20(%rbp), %esi
	imull	-20(%rbp), %esi
	addl	%esi, %eax
	cvtsi2sdl	%eax, %xmm0
	callq	sqrt
	cvttsd2si	%xmm0, %eax
	cltd
	movl	-36(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movq	-32(%rbp), %rdi
	movl	%eax, 96(%rdi)
	movq	-32(%rbp), %rdi
	movl	96(%rdi), %edi
	movq	-32(%rbp), %r8
	movl	96(%r8), %esi
	callq	main_set_dimension
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	circle_factory_set_xy1, .Lfunc_end25-circle_factory_set_xy1
	.cfi_endproc

	.align	16, 0x90
	.type	circle_factory_create_object2,@function
circle_factory_create_object2:          # @circle_factory_create_object2
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
	subq	$16, %rsp
	xorl	%edx, %edx
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	create_circle
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	circle_factory_create_object2, .Lfunc_end26-circle_factory_create_object2
	.cfi_endproc

	.align	16, 0x90
	.type	circle_factory_set_xy2,@function
circle_factory_set_xy2:                 # @circle_factory_set_xy2
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	88(%rdi), %ecx
	movl	-16(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -16(%rbp)
	movq	-32(%rbp), %rdi
	movl	92(%rdi), %ecx
	movl	-20(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -20(%rbp)
	movl	-16(%rbp), %ecx
	imull	-16(%rbp), %ecx
	movl	-20(%rbp), %edx
	imull	-20(%rbp), %edx
	addl	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm0
	callq	sqrt
	cvttsd2si	%xmm0, %ecx
	movq	-32(%rbp), %rdi
	movl	%ecx, 96(%rdi)
	movq	-32(%rbp), %rdi
	movl	96(%rdi), %edi
	movq	-32(%rbp), %rax
	movl	96(%rax), %esi
	callq	main_set_dimension
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	circle_factory_set_xy2, .Lfunc_end27-circle_factory_set_xy2
	.cfi_endproc

	.type	circle_class,@object    # @circle_class
	.data
	.align	8
circle_class:
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	0
	.quad	circle_is_valid
	.quad	0
	.quad	circle_clone
	.quad	circle_assign
	.quad	0
	.quad	circle_draw
	.quad	circle_draw_sashes
	.quad	circle_near_sash
	.quad	circle_point_is_on
	.quad	circle_get_dimensions
	.quad	circle_resize
	.quad	circle_move
	.quad	circle_create_info_widget
	.quad	circle_fill_info_tab
	.quad	circle_fill_info_tab
	.quad	circle_set_initial_focus
	.quad	circle_update
	.quad	circle_write_csim
	.quad	circle_write_cern
	.quad	circle_write_ncsa
	.quad	object_do_popup
	.quad	circle_get_stock_icon_name
	.size	circle_class, 208

	.type	circle_factory1,@object # @circle_factory1
	.align	8
circle_factory1:
	.quad	0
	.quad	0
	.quad	0
	.quad	circle_factory_create_object1
	.quad	circle_factory_set_xy1
	.size	circle_factory1, 40

	.type	circle_factory2,@object # @circle_factory2
	.align	8
circle_factory2:
	.quad	0
	.quad	0
	.quad	0
	.quad	circle_factory_create_object2
	.quad	circle_factory_set_xy2
	.size	circle_factory2, 40

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"C_ircle"
	.size	.L.str, 8

	.type	sash_x,@object          # @sash_x
	.local	sash_x
	.comm	sash_x,4,4
	.type	sash_y,@object          # @sash_y
	.local	sash_y
	.comm	sash_y,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Center _x:"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"value-changed"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"pixels"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Center _y:"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"_Radius:"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\"circle\" coords=\"%d,%d,%d\""
	.size	.L.str.6, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"circ (%d,%d) %d"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"circle %s %d,%d %d,%d"
	.size	.L.str.8, 22

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"imap-circle"
	.size	.L.str.9, 12

	.type	_start_x,@object        # @_start_x
	.local	_start_x
	.comm	_start_x,4,4
	.type	_start_y,@object        # @_start_y
	.local	_start_y
	.comm	_start_y,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
