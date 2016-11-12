	.text
	.file	"imap_polygon.bc"
	.globl	create_polygon
	.align	16, 0x90
	.type	create_polygon,@function
create_polygon:                         # @create_polygon
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
	subq	$16, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$96, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	g_malloc_n
	movabsq	$polygon_class, %rsi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 88(%rcx)
	movq	-16(%rbp), %rdi
	callq	object_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	create_polygon, .Lfunc_end0-create_polygon
	.cfi_endproc

	.globl	polygon_insert_point
	.align	16, 0x90
	.type	polygon_insert_point,@function
polygon_insert_point:                   # @polygon_insert_point
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
	movq	_current_obj, %rdi
	movl	_insert_x, %esi
	movl	_insert_y, %edx
	movl	_insert_edge, %ecx
	callq	insert_point_command_new
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	command_execute
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	polygon_insert_point, .Lfunc_end1-polygon_insert_point
	.cfi_endproc

	.globl	polygon_delete_point
	.align	16, 0x90
	.type	polygon_delete_point,@function
polygon_delete_point:                   # @polygon_delete_point
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
	movq	_current_obj, %rdi
	movq	_sash_point, %rsi
	callq	delete_point_command_new
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	command_execute
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	polygon_delete_point, .Lfunc_end2-polygon_delete_point
	.cfi_endproc

	.globl	get_polygon_factory
	.align	16, 0x90
	.type	get_polygon_factory,@function
get_polygon_factory:                    # @get_polygon_factory
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
	movabsq	$polygon_factory, %rax
	movl	%edi, -4(%rbp)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	get_polygon_factory, .Lfunc_end3-get_polygon_factory
	.cfi_endproc

	.globl	polygon_remove_last_point
	.align	16, 0x90
	.type	polygon_remove_last_point,@function
polygon_remove_last_point:              # @polygon_remove_last_point
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
	movq	88(%rdi), %rdi
	callq	g_list_last
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	g_list_remove_link
	movq	-8(%rbp), %rsi
	movq	%rax, 88(%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	polygon_remove_last_point, .Lfunc_end4-polygon_remove_last_point
	.cfi_endproc

	.globl	new_point
	.align	16, 0x90
	.type	new_point,@function
new_point:                              # @new_point
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
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$8, %eax
	movl	%eax, %edx
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	g_malloc_n
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %r8d
	movq	-16(%rbp), %rax
	movl	%r8d, (%rax)
	movl	-8(%rbp), %r8d
	movq	-16(%rbp), %rax
	movl	%r8d, 4(%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	new_point, .Lfunc_end5-new_point
	.cfi_endproc

	.globl	polygon_append_point
	.align	16, 0x90
	.type	polygon_append_point,@function
polygon_append_point:                   # @polygon_append_point
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	88(%rdi), %rdi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %esi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%edx, %edi
	callq	new_point
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_append
	movq	-8(%rbp), %rsi
	movq	%rax, 88(%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	polygon_append_point, .Lfunc_end6-polygon_append_point
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_is_valid,@function
polygon_is_valid:                       # @polygon_is_valid
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	88(%rdi), %rdi
	callq	g_list_length
	cmpl	$2, %eax
	seta	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	polygon_is_valid, .Lfunc_end7-polygon_is_valid
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_destruct,@function
polygon_destruct:                       # @polygon_destruct
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	polygon_free_list
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	polygon_destruct, .Lfunc_end8-polygon_destruct
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_clone,@function
polygon_clone:                          # @polygon_clone
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
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$96, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	%rcx, %rdi
	callq	g_malloc_n
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB9_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	(%rax), %esi
	movq	-40(%rbp), %rax
	movl	4(%rax), %edx
	callq	polygon_append_point
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB9_1
.LBB9_4:                                # %for.end
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	polygon_clone, .Lfunc_end9-polygon_clone
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_assign,@function
polygon_assign:                         # @polygon_assign
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
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	polygon_free_list
	movq	-24(%rbp), %rsi
	movq	88(%rsi), %rsi
	movq	%rsi, -40(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB10_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	(%rax), %esi
	movq	-48(%rbp), %rax
	movl	4(%rax), %edx
	callq	polygon_append_point
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB10_1
.LBB10_4:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	polygon_assign, .Lfunc_end10-polygon_assign
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_draw,@function
polygon_draw:                           # @polygon_draw
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	88(%rsi), %rsi
	callq	draw_polygon
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	polygon_draw, .Lfunc_end11-polygon_draw
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_draw_sashes,@function
polygon_draw_sashes:                    # @polygon_draw_sashes
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	88(%rsi), %rsi
	movq	%rsi, -32(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB12_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	(%rax), %esi
	movq	-40(%rbp), %rax
	movl	4(%rax), %edx
	callq	draw_sash
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB12_1
.LBB12_4:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	polygon_draw_sashes, .Lfunc_end12-polygon_draw_sashes
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_near_sash,@function
polygon_near_sash:                      # @polygon_near_sash
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	movl	$0, _sash_index
	movq	-32(%rbp), %rdi
	movq	88(%rdi), %rdi
	movq	%rdi, -40(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB13_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	movq	-48(%rbp), %rax
	movl	4(%rax), %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	near_sash
	cmpl	$0, %eax
	je	.LBB13_4
# BB#3:                                 # %if.then
	movabsq	$move_sash, %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, _sash_point
	movq	%rax, -8(%rbp)
	jmp	.LBB13_7
.LBB13_4:                               # %if.end
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_5
.LBB13_5:                               # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	_sash_index, %ecx
	addl	$1, %ecx
	movl	%ecx, _sash_index
	jmp	.LBB13_1
.LBB13_6:                               # %for.end
	movq	$0, -8(%rbp)
.LBB13_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	polygon_near_sash, .Lfunc_end13-polygon_near_sash
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_point_is_on,@function
polygon_point_is_on:                    # @polygon_point_is_on
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movl	$0, -36(%rbp)
	movq	-24(%rbp), %rdi
	movq	88(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -56(%rbp)
	movq	%rdi, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -32(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB14_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	callq	right_intersect
	cmpl	$0, %eax
	je	.LBB14_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.LBB14_4:                               # %if.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB14_1
.LBB14_6:                               # %for.end
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	callq	right_intersect
	cmpl	$0, %eax
	je	.LBB14_8
# BB#7:                                 # %if.then.6
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.LBB14_8:                               # %if.end.8
	movl	$2, %eax
	movl	-36(%rbp), %ecx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-68(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%edx, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	polygon_point_is_on, .Lfunc_end14-polygon_point_is_on
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_get_dimensions,@function
polygon_get_dimensions:                 # @polygon_get_dimensions
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movl	$2147483647, -52(%rbp)  # imm = 0x7FFFFFFF
	movl	$2147483647, -56(%rbp)  # imm = 0x7FFFFFFF
	movl	$-2147483648, -60(%rbp) # imm = 0xFFFFFFFF80000000
	movl	$-2147483648, -64(%rbp) # imm = 0xFFFFFFFF80000000
	movq	-48(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	%rcx, -72(%rbp)
.LBB15_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB15_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-52(%rbp), %ecx
	jge	.LBB15_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-80(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -52(%rbp)
.LBB15_4:                               # %if.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-80(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-60(%rbp), %ecx
	jle	.LBB15_6
# BB#5:                                 # %if.then.5
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-80(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
.LBB15_6:                               # %if.end.7
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-80(%rbp), %rax
	movl	4(%rax), %ecx
	cmpl	-56(%rbp), %ecx
	jge	.LBB15_8
# BB#7:                                 # %if.then.10
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-80(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -56(%rbp)
.LBB15_8:                               # %if.end.12
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-80(%rbp), %rax
	movl	4(%rax), %ecx
	cmpl	-64(%rbp), %ecx
	jle	.LBB15_10
# BB#9:                                 # %if.then.15
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-80(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -64(%rbp)
.LBB15_10:                              # %if.end.17
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_11
.LBB15_11:                              # %for.inc
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB15_1
.LBB15_12:                              # %for.end
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-56(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-60(%rbp), %eax
	subl	-52(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-64(%rbp), %eax
	subl	-56(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	popq	%rbp
	retq
.Lfunc_end15:
	.size	polygon_get_dimensions, .Lfunc_end15-polygon_get_dimensions
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_resize,@function
polygon_resize:                         # @polygon_resize
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	88(%rdi), %rdi
	movq	%rdi, -32(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB16_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	$100, %eax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movl	(%rcx), %edx
	imull	-12(%rbp), %edx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-44(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-40(%rbp), %rcx
	movl	4(%rcx), %eax
	imull	-16(%rbp), %eax
	cltd
	idivl	%esi
	movq	-40(%rbp), %rcx
	movl	%eax, 4(%rcx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB16_1
.LBB16_4:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end16:
	.size	polygon_resize, .Lfunc_end16-polygon_resize
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_move,@function
polygon_move:                           # @polygon_move
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	88(%rdi), %rdi
	movq	%rdi, -32(%rbp)
.LBB17_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB17_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %ecx
	movq	-40(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	-16(%rbp), %ecx
	movq	-40(%rbp), %rax
	addl	4(%rax), %ecx
	movl	%ecx, 4(%rax)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB17_1
.LBB17_4:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end17:
	.size	polygon_move, .Lfunc_end17-polygon_move
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI18_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	polygon_create_info_widget,@function
polygon_create_info_widget:             # @polygon_create_info_widget
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
	subq	$416, %rsp              # imm = 0x1A0
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	g_malloc_n
	movq	%rax, -16(%rbp)
	callq	get_image_width
	movl	%eax, -60(%rbp)
	callq	get_image_height
	xorl	%edi, %edi
	movl	$12, %esi
	movl	%eax, -64(%rbp)
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edx, %edx
	movl	%edx, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gtk_scrolled_window_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_policy
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movl	-116(%rbp), %ecx        # 4-byte Reload
	movl	-116(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$68, %ecx
	movl	%ecx, %esi
	movb	$0, %al
	callq	gtk_list_store_new
	movq	-16(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_new_with_model
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_tree_view_set_rules_hint
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_cell_renderer_text_new
	movabsq	$.L.str.1, %rdi
	movq	%rax, -72(%rbp)
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_view_column_new_with_attributes
	movabsq	$render_x, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	callq	gtk_tree_view_column_set_cell_data_func
	movss	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rdi
	callq	gtk_tree_view_column_set_alignment
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_view_append_column
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gtk_cell_renderer_text_new
	movabsq	$.L.str.2, %rdi
	movq	%rax, -72(%rbp)
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_view_column_new_with_attributes
	movabsq	$render_y, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	callq	gtk_tree_view_column_set_cell_data_func
	movss	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rdi
	callq	gtk_tree_view_column_set_alignment
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_view_append_column
	movq	-32(%rbp), %rcx
	movl	%eax, -164(%rbp)        # 4-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movl	$6, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-24(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -204(%rbp)        # 4-byte Spill
	movl	-204(%rbp), %ecx        # 4-byte Reload
	movl	-204(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movabsq	$.L.str.3, %rax
	movq	-40(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	callq	create_label_in_table
	xorl	%edx, %edx
	movl	$1, %esi
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	-60(%rbp), %r8d
	subl	$1, %r8d
	movl	%esi, -208(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	%edx, -212(%rbp)        # 4-byte Spill
	movl	-208(%rbp), %ecx        # 4-byte Reload
	movl	-208(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -216(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-212(%rbp), %r9d        # 4-byte Reload
	movl	-216(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	create_spin_button_in_table
	movabsq	$.L.str.4, %rsi
	movabsq	$x_changed_cb, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %r11
	movq	%rax, 24(%r11)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %r11
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-224(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movl	$64, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_widget_set_size_request
	movabsq	$.L.str.5, %rdi
	movq	-40(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movl	$1, %esi
	xorl	%edx, %edx
	movabsq	$.L.str.6, %rcx
	movq	-40(%rbp), %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	create_label_in_table
	movl	$1, %edx
	xorl	%r9d, %r9d
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-64(%rbp), %r10d
	subl	$1, %r10d
	movl	%edx, -252(%rbp)        # 4-byte Spill
	movl	-252(%rbp), %ecx        # 4-byte Reload
	movl	-252(%rbp), %r8d        # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	create_spin_button_in_table
	movabsq	$.L.str.4, %rsi
	movabsq	$y_changed_cb, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %r11
	movq	%rax, 32(%r11)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %r11
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-264(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movl	$64, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_widget_set_size_request
	movabsq	$.L.str.5, %rdi
	movq	-40(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	movl	$2, %edx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movabsq	$.L.str.7, %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic
	movabsq	$.L.str.8, %rsi
	movabsq	$update_button_clicked, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-296(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	%rax, -304(%rbp)        # 8-byte Spill
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %r9d
	movl	$3, %r10d
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	callq	gtk_table_attach_defaults
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.9, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic
	movabsq	$.L.str.8, %rsi
	movabsq	$insert_button_clicked, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %r11
	movq	%rax, 48(%r11)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %r11
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-320(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %ecx
	movl	$3, %r8d
	movl	$4, %r9d
	movq	-16(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.10, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic
	movabsq	$.L.str.8, %rsi
	movabsq	$append_button_clicked, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %r11
	movq	%rax, 56(%r11)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %r11
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-344(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	%rax, -352(%rbp)        # 8-byte Spill
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %ecx
	movl	$4, %r8d
	movl	$5, %r9d
	movq	-16(%rbp), %rsi
	movq	56(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.11, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic
	movabsq	$.L.str.8, %rsi
	movabsq	$remove_button_clicked, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %r11
	movq	%rax, 64(%r11)
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	-16(%rbp), %r11
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	%rax, -376(%rbp)        # 8-byte Spill
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %ecx
	movl	$5, %r8d
	movl	$6, %r9d
	movq	-16(%rbp), %rsi
	movq	64(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	movl	$0, 76(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_tree_selection_set_mode
	movabsq	$.L.str.4, %rsi
	movabsq	$select_row_cb, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	-16(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movq	%rax, -400(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end18:
	.size	polygon_create_info_widget, .Lfunc_end18-polygon_create_info_widget
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_update_info_widget,@function
polygon_update_info_widget:             # @polygon_update_info_widget
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	_sash_point, %rsi
	cvtsi2sdl	(%rsi), %xmm0
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	_sash_point, %rsi
	cvtsi2sdl	4(%rsi), %xmm0
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	_sash_index, %ecx
	movq	%rax, %rdi
	callq	gtk_tree_model_iter_nth_child
	cmpl	$0, %eax
	je	.LBB19_2
# BB#1:                                 # %if.then
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_tree_selection_select_iter
.LBB19_2:                               # %if.end
	movq	-24(%rbp), %rax
	cmpl	$0, 76(%rax)
	je	.LBB19_4
# BB#3:                                 # %if.then.11
	movq	-24(%rbp), %rax
	movl	76(%rax), %edi
	callq	g_source_remove
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB19_4:                               # %if.end.14
	movl	$1000, %edi             # imm = 0x3E8
	movabsq	$update_timeout, %rsi
	movq	-16(%rbp), %rdx
	callq	g_timeout_add
	movq	-24(%rbp), %rdx
	movl	%eax, 76(%rdx)
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	polygon_update_info_widget, .Lfunc_end19-polygon_update_info_widget
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_fill_info_tab,@function
polygon_fill_info_tab:                  # @polygon_fill_info_tab
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
	subq	$80, %rsp
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
	movq	8(%rsi), %rdi
	callq	gtk_list_store_clear
	movq	-24(%rbp), %rsi
	movq	88(%rsi), %rsi
	movq	%rsi, -72(%rbp)
.LBB20_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB20_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB20_1 Depth=1
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_list_store_append
	leaq	-64(%rbp), %rsi
	xorl	%edx, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-72(%rbp), %rax
	movq	(%rax), %rcx
	movb	$0, %al
	callq	gtk_list_store_set
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB20_1
.LBB20_4:                               # %for.end
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	_sash_index, %ecx
	movq	%rax, %rdi
	callq	gtk_tree_model_iter_nth_child
	cmpl	$0, %eax
	je	.LBB20_6
# BB#5:                                 # %if.then
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_tree_selection_select_iter
.LBB20_6:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	set_buttons_sensitivity
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	polygon_fill_info_tab, .Lfunc_end20-polygon_fill_info_tab
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_set_initial_focus,@function
polygon_set_initial_focus:              # @polygon_set_initial_focus
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	24(%rsi), %rdi
	callq	gtk_widget_grab_focus
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	polygon_set_initial_focus, .Lfunc_end21-polygon_set_initial_focus
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_update,@function
polygon_update:                         # @polygon_update
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end22:
	.size	polygon_update, .Lfunc_end22-polygon_update
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_write_csim,@function
polygon_write_csim:                     # @polygon_write_csim
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
	subq	$64, %rsp
	movabsq	$.L.str.15, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	*%rdx
	movq	-32(%rbp), %rdx
	movq	88(%rdx), %rdx
	movq	%rdx, -40(%rbp)
.LBB23_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB23_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB23_1 Depth=1
	movabsq	$.L.str.16, %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-48(%rbp), %rcx
	movl	4(%rcx), %ecx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movb	$0, %al
	movq	-56(%rbp), %r8          # 8-byte Reload
	callq	*%r8
	movabsq	$.L.str.17, %rsi
	movl	$34, %ecx
	movl	$44, %edx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	-40(%rbp), %r9
	cmpq	$0, 8(%r9)
	cmovnel	%edx, %ecx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movl	%ecx, %edx
	movb	$0, %al
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	*%r8
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB23_1
.LBB23_4:                               # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	polygon_write_csim, .Lfunc_end23-polygon_write_csim
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_write_cern,@function
polygon_write_cern:                     # @polygon_write_cern
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
	subq	$80, %rsp
	movabsq	$.L.str.18, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	88(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	*%rdx
	movq	-32(%rbp), %rdx
	movq	88(%rdx), %rdx
	movq	%rdx, -40(%rbp)
.LBB24_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB24_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB24_1 Depth=1
	movabsq	$.L.str.19, %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-56(%rbp), %rcx
	movl	4(%rcx), %ecx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movb	$0, %al
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	*%r8
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB24_1
.LBB24_4:                               # %for.end
	movabsq	$.L.str.20, %rsi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-48(%rbp), %rcx
	movl	4(%rcx), %ecx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movb	$0, %al
	movq	-72(%rbp), %r8          # 8-byte Reload
	callq	*%r8
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	polygon_write_cern, .Lfunc_end24-polygon_write_cern
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_write_ncsa,@function
polygon_write_ncsa:                     # @polygon_write_ncsa
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
	subq	$96, %rsp
	movabsq	$.L.str.21, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	88(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movb	$0, %al
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	*%rcx
	movq	-32(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	%rcx, -40(%rbp)
.LBB25_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB25_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB25_1 Depth=1
	movabsq	$.L.str.22, %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-56(%rbp), %rcx
	movl	4(%rcx), %ecx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movb	$0, %al
	movq	-80(%rbp), %r8          # 8-byte Reload
	callq	*%r8
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB25_1
.LBB25_4:                               # %for.end
	movabsq	$.L.str.22, %rsi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-48(%rbp), %rcx
	movl	4(%rcx), %ecx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movb	$0, %al
	movq	-88(%rbp), %r8          # 8-byte Reload
	callq	*%r8
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	polygon_write_ncsa, .Lfunc_end25-polygon_write_ncsa
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_do_popup,@function
polygon_do_popup:                       # @polygon_do_popup
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cvttsd2si	24(%rsi), %edi
	callq	get_real_coord
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rsi
	cvttsd2si	32(%rsi), %edi
	callq	get_real_coord
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, _current_obj
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	polygon_near_sash
	cmpq	$0, %rax
	je	.LBB26_2
# BB#1:                                 # %if.then
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	callq	polygon_handle_popup
	jmp	.LBB26_6
.LBB26_2:                               # %if.else
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	polygon_near_edge
	movl	%eax, _insert_edge
	cmpl	$0, _insert_edge
	je	.LBB26_4
# BB#3:                                 # %if.then.8
	xorl	%esi, %esi
	movl	$1, %edx
	movl	-20(%rbp), %eax
	movl	%eax, _insert_x
	movl	-24(%rbp), %eax
	movl	%eax, _insert_y
	movq	-16(%rbp), %rdi
	callq	polygon_handle_popup
	jmp	.LBB26_5
.LBB26_4:                               # %if.else.9
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	object_do_popup
.LBB26_5:                               # %if.end
	jmp	.LBB26_6
.LBB26_6:                               # %if.end.10
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	polygon_do_popup, .Lfunc_end26-polygon_do_popup
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_get_stock_icon_name,@function
polygon_get_stock_icon_name:            # @polygon_get_stock_icon_name
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
	movabsq	$.L.str.26, %rax
	popq	%rbp
	retq
.Lfunc_end27:
	.size	polygon_get_stock_icon_name, .Lfunc_end27-polygon_get_stock_icon_name
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_free_list,@function
polygon_free_list:                      # @polygon_free_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$g_free, %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	88(%rdi), %rdi
	callq	g_list_free_full
	movq	-8(%rbp), %rsi
	movq	$0, 88(%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	polygon_free_list, .Lfunc_end28-polygon_free_list
	.cfi_endproc

	.align	16, 0x90
	.type	move_sash,@function
move_sash:                              # @move_sash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %edx
	movq	_sash_point, %rdi
	addl	(%rdi), %edx
	movl	%edx, (%rdi)
	movl	-16(%rbp), %edx
	movq	_sash_point, %rdi
	addl	4(%rdi), %edx
	movl	%edx, 4(%rdi)
	popq	%rbp
	retq
.Lfunc_end29:
	.size	move_sash, .Lfunc_end29-move_sash
	.cfi_endproc

	.align	16, 0x90
	.type	right_intersect,@function
right_intersect:                        # @right_intersect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	-24(%rbp), %rsi
	movl	(%rsi), %ecx
	movq	-16(%rbp), %rsi
	subl	(%rsi), %ecx
	movl	%ecx, -36(%rbp)
	movq	-24(%rbp), %rsi
	movl	4(%rsi), %ecx
	movq	-16(%rbp), %rsi
	subl	4(%rsi), %ecx
	movl	%ecx, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jle	.LBB30_3
# BB#1:                                 # %land.lhs.true
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jle	.LBB30_3
# BB#2:                                 # %land.lhs.true.8
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jl	.LBB30_6
.LBB30_3:                               # %lor.lhs.false
	movl	-40(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB30_7
# BB#4:                                 # %land.lhs.true.12
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jle	.LBB30_7
# BB#5:                                 # %land.lhs.true.15
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB30_7
.LBB30_6:                               # %if.then
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	-32(%rbp), %edx
	movq	-16(%rbp), %rax
	subl	4(%rax), %edx
	imull	-36(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	-40(%rbp)
	addl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	setg	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB30_8
.LBB30_7:                               # %if.end
	movl	$0, -4(%rbp)
.LBB30_8:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end30:
	.size	right_intersect, .Lfunc_end30-right_intersect
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI31_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	render_x,@function
render_x:                               # @render_x
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorl	%eax, %eax
	leaq	-48(%rbp), %r9
	movl	$4294967295, %r10d      # imm = 0xFFFFFFFF
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	%eax, %edx
	movq	%r9, %rcx
	movl	%r10d, %r8d
	movb	$0, %al
	callq	gtk_tree_model_get
	movabsq	$.L.str.12, %rsi
	leaq	-64(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edx
	movb	$0, %al
	callq	sprintf
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.14, %rcx
	movsd	.LCPI31_0, %xmm0        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movb	$1, %al
	callq	g_object_set
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	render_x, .Lfunc_end31-render_x
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI32_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	render_y,@function
render_y:                               # @render_y
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorl	%eax, %eax
	leaq	-48(%rbp), %r9
	movl	$4294967295, %r10d      # imm = 0xFFFFFFFF
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	%eax, %edx
	movq	%r9, %rcx
	movl	%r10d, %r8d
	movb	$0, %al
	callq	gtk_tree_model_get
	movabsq	$.L.str.12, %rsi
	leaq	-64(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movl	4(%rcx), %edx
	movb	$0, %al
	callq	sprintf
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.14, %rcx
	movsd	.LCPI32_0, %xmm0        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movb	$1, %al
	callq	g_object_set
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	render_y, .Lfunc_end32-render_y
	.cfi_endproc

	.align	16, 0x90
	.type	x_changed_cb,@function
x_changed_cb:                           # @x_changed_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
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
	movq	_sash_point, %rsi
	movl	%eax, (%rsi)
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	8(%rsi), %rdi
	callq	edit_area_info_dialog_emit_geometry_signal
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	x_changed_cb, .Lfunc_end33-x_changed_cb
	.cfi_endproc

	.align	16, 0x90
	.type	y_changed_cb,@function
y_changed_cb:                           # @y_changed_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
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
	movq	_sash_point, %rsi
	movl	%eax, 4(%rsi)
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	8(%rsi), %rdi
	callq	edit_area_info_dialog_emit_geometry_signal
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	y_changed_cb, .Lfunc_end34-y_changed_cb
	.cfi_endproc

	.align	16, 0x90
	.type	update_button_clicked,@function
update_button_clicked:                  # @update_button_clicked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB35_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, -68(%rbp)
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	leaq	-48(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-64(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movl	%eax, -72(%rbp)
	movq	-56(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	leaq	-48(%rbp), %rsi
	xorl	%edx, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movl	-68(%rbp), %r9d
	movq	-64(%rbp), %rcx
	movl	%r9d, (%rcx)
	movl	-72(%rbp), %r9d
	movq	-64(%rbp), %rcx
	movl	%r9d, 4(%rcx)
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-64(%rbp), %rcx
	movb	$0, %al
	callq	gtk_list_store_set
.LBB35_2:                               # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	update_button_clicked, .Lfunc_end35-update_button_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	insert_button_clicked,@function
insert_button_clicked:                  # @insert_button_clicked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB36_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, -84(%rbp)
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	leaq	-48(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-72(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movl	%eax, -88(%rbp)
	movq	-56(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-64(%rbp), %rcx
	movq	88(%rcx), %rdi
	movq	-72(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_list_find
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-80(%rbp), %rsi
	movl	-84(%rbp), %edx
	movl	-88(%rbp), %r8d
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	%edx, %edi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movl	%r8d, %esi
	callq	new_point
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_list_insert_before
	movq	-64(%rbp), %rcx
	movq	%rax, 88(%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	polygon_fill_info_tab
.LBB36_2:                               # %if.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	insert_button_clicked, .Lfunc_end36-insert_button_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	append_button_clicked,@function
append_button_clicked:                  # @append_button_clicked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %edx
	movq	%rsi, %rdi
	movl	%eax, %esi
	callq	polygon_append_point
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	callq	polygon_fill_info_tab
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	append_button_clicked, .Lfunc_end37-append_button_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	remove_button_clicked,@function
remove_button_clicked:                  # @remove_button_clicked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB38_2
# BB#1:                                 # %if.then
	leaq	-48(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-72(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-64(%rbp), %rcx
	movq	88(%rcx), %rdi
	movq	-72(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_list_remove
	movq	-64(%rbp), %rcx
	movq	%rax, 88(%rcx)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	polygon_fill_info_tab
.LBB38_2:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	remove_button_clicked, .Lfunc_end38-remove_button_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	select_row_cb,@function
select_row_cb:                          # @select_row_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	-56(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB39_2
# BB#1:                                 # %if.then
	leaq	-48(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-64(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-56(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-64(%rbp), %rcx
	movq	%rcx, _sash_point
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rcx
	cvtsi2sdl	(%rcx), %xmm0
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rcx
	cvtsi2sdl	4(%rcx), %xmm0
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
.LBB39_2:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	select_row_cb, .Lfunc_end39-select_row_cb
	.cfi_endproc

	.align	16, 0x90
	.type	update_timeout,@function
update_timeout:                         # @update_timeout
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-8(%rbp), %rsi
	callq	polygon_fill_info_tab
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	update_timeout, .Lfunc_end40-update_timeout
	.cfi_endproc

	.align	16, 0x90
	.type	set_buttons_sensitivity,@function
set_buttons_sensitivity:                # @set_buttons_sensitivity
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_tree_model_iter_n_children
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rdi
	cmpl	$99, -12(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	callq	gtk_widget_set_sensitive
	movq	-8(%rbp), %rdi
	movq	56(%rdi), %rdi
	cmpl	$99, -12(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	callq	gtk_widget_set_sensitive
	movq	-8(%rbp), %rdi
	movq	64(%rdi), %rdi
	cmpl	$2, -12(%rbp)
	setg	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	callq	gtk_widget_set_sensitive
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	set_buttons_sensitivity, .Lfunc_end41-set_buttons_sensitivity
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_handle_popup,@function
polygon_handle_popup:                   # @polygon_handle_popup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movabsq	$.L.str.23, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rax, %rdi
	callq	menu_get_widget
	movabsq	$.L.str.24, %rdi
	movq	%rax, -24(%rbp)
	callq	menu_get_widget
	movabsq	$.L.str.25, %rdi
	movq	%rax, -32(%rbp)
	callq	menu_get_widget
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movq	-40(%rbp), %rdi
	movl	-16(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_menu_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rdi
	movl	52(%rdi), %r9d
	movq	-8(%rbp), %rdi
	movl	20(%rdi), %edx
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	%rax, %r8
	movl	-60(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	gtk_menu_popup
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	polygon_handle_popup, .Lfunc_end42-polygon_handle_popup
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_near_edge,@function
polygon_near_edge:                      # @polygon_near_edge
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	88(%rdi), %rdi
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -56(%rbp)
	movl	$1, -60(%rbp)
	movq	-40(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -40(%rbp)
.LBB43_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB43_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	point_near_edge
	cmpl	$0, %eax
	je	.LBB43_4
# BB#3:                                 # %if.then
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB43_10
.LBB43_4:                               # %if.end
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -56(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -60(%rbp)
	jmp	.LBB43_1
.LBB43_6:                               # %for.end
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	point_near_edge
	cmpl	$0, %eax
	je	.LBB43_8
# BB#7:                                 # %cond.true
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB43_9
.LBB43_8:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB43_9
.LBB43_9:                               # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
.LBB43_10:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	polygon_near_edge, .Lfunc_end43-polygon_near_edge
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI44_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	point_near_edge,@function
point_near_edge:                        # @point_near_edge
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	xorps	%xmm0, %xmm0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %ecx
	subl	-28(%rbp), %ecx
	movq	-16(%rbp), %rsi
	movl	(%rsi), %edx
	movq	-24(%rbp), %rsi
	subl	(%rsi), %edx
	imull	%edx, %ecx
	movq	-16(%rbp), %rsi
	movl	4(%rsi), %edx
	subl	-32(%rbp), %edx
	movq	-16(%rbp), %rsi
	movl	4(%rsi), %eax
	movq	-24(%rbp), %rsi
	subl	4(%rsi), %eax
	imull	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -36(%rbp)
	movq	-24(%rbp), %rsi
	movl	(%rsi), %eax
	movq	-16(%rbp), %rsi
	subl	(%rsi), %eax
	movq	-24(%rbp), %rsi
	movl	(%rsi), %ecx
	movq	-16(%rbp), %rsi
	subl	(%rsi), %ecx
	imull	%ecx, %eax
	movq	-24(%rbp), %rsi
	movl	4(%rsi), %ecx
	movq	-16(%rbp), %rsi
	subl	4(%rsi), %ecx
	movq	-24(%rbp), %rsi
	movl	4(%rsi), %edx
	movq	-16(%rbp), %rsi
	subl	4(%rsi), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -40(%rbp)
	cvtsi2sdl	-36(%rbp), %xmm1
	cvtsi2sdl	-40(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB44_3
# BB#1:                                 # %land.lhs.true
	movsd	.LCPI44_0, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0
	jb	.LBB44_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	subl	(%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	addl	%edx, %ecx
	subl	-28(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	4(%rax), %edx
	movq	-16(%rbp), %rax
	subl	4(%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	addl	%edx, %ecx
	subl	-32(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movl	-52(%rbp), %ecx
	imull	-52(%rbp), %ecx
	movl	-56(%rbp), %edx
	imull	-56(%rbp), %edx
	addl	%edx, %ecx
	cmpl	$25, %ecx
	setle	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB44_4
.LBB44_3:                               # %if.end
	movl	$0, -4(%rbp)
.LBB44_4:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end44:
	.size	point_near_edge, .Lfunc_end44-point_near_edge
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_factory_finish,@function
polygon_factory_finish:                 # @polygon_factory_finish
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp137:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	movq	_prev_link, %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -40(%rbp)
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rdi
	cmpl	(%rdi), %edx
	jne	.LBB45_3
# BB#1:                                 # %land.lhs.true
	movl	-24(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jne	.LBB45_3
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	polygon_remove_last_point
	movl	$1, -4(%rbp)
	jmp	.LBB45_5
.LBB45_3:                               # %if.else
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	polygon_append_point
	movq	_prev_link, %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, _prev_link
# BB#4:                                 # %if.end
	movl	$0, -4(%rbp)
.LBB45_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	polygon_factory_finish, .Lfunc_end45-polygon_factory_finish
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_factory_cancel,@function
polygon_factory_cancel:                 # @polygon_factory_cancel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
.Ltmp139:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp140:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movl	48(%rsi), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB46_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB46_4
.LBB46_2:                               # %if.else
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	_prev_link, %rax
	movq	%rax, -40(%rbp)
	movq	_prev_link, %rax
	movq	16(%rax), %rax
	movq	%rax, _prev_link
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-32(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	g_list_remove_link
	movq	-32(%rbp), %rsi
	movq	%rax, 88(%rsi)
# BB#3:                                 # %if.end
	cmpq	$0, _prev_link
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB46_4:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	polygon_factory_cancel, .Lfunc_end46-polygon_factory_cancel
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_factory_create_object,@function
polygon_factory_create_object:          # @polygon_factory_create_object
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
.Ltmp142:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp143:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	new_point
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	%rax, %rsi
	callq	g_list_append
	movq	%rax, _prev_link
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %ecx
	movl	-8(%rbp), %esi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%ecx, %edi
	callq	new_point
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_append
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	create_polygon
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	polygon_factory_create_object, .Lfunc_end47-polygon_factory_create_object
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_factory_set_xy,@function
polygon_factory_set_xy:                 # @polygon_factory_set_xy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
.Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp146:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	88(%rdi), %rdi
	callq	g_list_last
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	-16(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 4(%rax)
	movl	-16(%rbp), %ecx
	movq	-56(%rbp), %rax
	subl	(%rax), %ecx
	movl	-20(%rbp), %edx
	movq	-56(%rbp), %rax
	subl	4(%rax), %edx
	movl	%ecx, %edi
	movl	%edx, %esi
	callq	main_set_dimension
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	polygon_factory_set_xy, .Lfunc_end48-polygon_factory_set_xy
	.cfi_endproc

	.type	polygon_class,@object   # @polygon_class
	.data
	.align	8
polygon_class:
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	0
	.quad	polygon_is_valid
	.quad	polygon_destruct
	.quad	polygon_clone
	.quad	polygon_assign
	.quad	0
	.quad	polygon_draw
	.quad	polygon_draw_sashes
	.quad	polygon_near_sash
	.quad	polygon_point_is_on
	.quad	polygon_get_dimensions
	.quad	polygon_resize
	.quad	polygon_move
	.quad	polygon_create_info_widget
	.quad	polygon_update_info_widget
	.quad	polygon_fill_info_tab
	.quad	polygon_set_initial_focus
	.quad	polygon_update
	.quad	polygon_write_csim
	.quad	polygon_write_cern
	.quad	polygon_write_ncsa
	.quad	polygon_do_popup
	.quad	polygon_get_stock_icon_name
	.size	polygon_class, 208

	.type	_current_obj,@object    # @_current_obj
	.local	_current_obj
	.comm	_current_obj,8,8
	.type	_insert_x,@object       # @_insert_x
	.local	_insert_x
	.comm	_insert_x,4,4
	.type	_insert_y,@object       # @_insert_y
	.local	_insert_y
	.comm	_insert_y,4,4
	.type	_insert_edge,@object    # @_insert_edge
	.local	_insert_edge
	.comm	_insert_edge,4,4
	.type	_sash_point,@object     # @_sash_point
	.local	_sash_point
	.comm	_sash_point,8,8
	.type	polygon_factory,@object # @polygon_factory
	.align	8
polygon_factory:
	.quad	0
	.quad	polygon_factory_finish
	.quad	polygon_factory_cancel
	.quad	polygon_factory_create_object
	.quad	polygon_factory_set_xy
	.size	polygon_factory, 40

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"_Polygon"
	.size	.L.str, 9

	.type	_sash_index,@object     # @_sash_index
	.local	_sash_index
	.comm	_sash_index,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"x (pixels)"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"y (pixels)"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"_x:"
	.size	.L.str.3, 4

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"changed"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"pixels"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"_y:"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"_Update"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"clicked"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"_Insert"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"A_ppend"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_Remove"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%d"
	.size	.L.str.12, 3

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"text"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"xalign"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"\"poly\" coords=\""
	.size	.L.str.15, 16

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%d,%d"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%c"
	.size	.L.str.17, 3

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"poly "
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"(%d,%d) "
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"(%d,%d)"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"poly %s"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	" %d,%d"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"/PolygonPopupMenu"
	.size	.L.str.23, 18

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"/PolygonPopupMenu/DeletePoint"
	.size	.L.str.24, 30

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"/PolygonPopupMenu/InsertPoint"
	.size	.L.str.25, 30

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"imap-polygon"
	.size	.L.str.26, 13

	.type	_prev_link,@object      # @_prev_link
	.local	_prev_link
	.comm	_prev_link,8,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
