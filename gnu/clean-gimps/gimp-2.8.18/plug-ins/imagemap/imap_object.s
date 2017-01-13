	.text
	.file	"imap_object.bc"
	.globl	object_list_add_changed_cb
	.align	16, 0x90
	.type	object_list_add_changed_cb,@function
object_list_add_changed_cb:             # @object_list_add_changed_cb
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	addq	$16, %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	object_list_callback_add
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	object_list_add_changed_cb, .Lfunc_end0-object_list_add_changed_cb
	.cfi_endproc

	.align	16, 0x90
	.type	object_list_callback_add,@function
object_list_callback_add:               # @object_list_callback_add
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
	subq	$32, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$16, %eax
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	g_malloc_n
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	object_list_callback_add, .Lfunc_end1-object_list_callback_add
	.cfi_endproc

	.globl	object_list_add_update_cb
	.align	16, 0x90
	.type	object_list_add_update_cb,@function
object_list_add_update_cb:              # @object_list_add_update_cb
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	addq	$24, %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	object_list_callback_add
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	object_list_add_update_cb, .Lfunc_end2-object_list_add_update_cb
	.cfi_endproc

	.globl	object_list_add_add_cb
	.align	16, 0x90
	.type	object_list_add_add_cb,@function
object_list_add_add_cb:                 # @object_list_add_add_cb
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	addq	$32, %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	object_list_callback_add
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	object_list_add_add_cb, .Lfunc_end3-object_list_add_add_cb
	.cfi_endproc

	.globl	object_list_add_remove_cb
	.align	16, 0x90
	.type	object_list_add_remove_cb,@function
object_list_add_remove_cb:              # @object_list_add_remove_cb
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	addq	$40, %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	object_list_callback_add
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	object_list_add_remove_cb, .Lfunc_end4-object_list_add_remove_cb
	.cfi_endproc

	.globl	object_list_add_select_cb
	.align	16, 0x90
	.type	object_list_add_select_cb,@function
object_list_add_select_cb:              # @object_list_add_select_cb
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
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	addq	$48, %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	object_list_callback_add
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	object_list_add_select_cb, .Lfunc_end5-object_list_add_select_cb
	.cfi_endproc

	.globl	object_list_add_move_cb
	.align	16, 0x90
	.type	object_list_add_move_cb,@function
object_list_add_move_cb:                # @object_list_add_move_cb
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
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	addq	$56, %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	object_list_callback_add
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	object_list_add_move_cb, .Lfunc_end6-object_list_add_move_cb
	.cfi_endproc

	.globl	object_list_add_geometry_cb
	.align	16, 0x90
	.type	object_list_add_geometry_cb,@function
object_list_add_geometry_cb:            # @object_list_add_geometry_cb
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	addq	$64, %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	object_list_callback_add
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	object_list_add_geometry_cb, .Lfunc_end7-object_list_add_geometry_cb
	.cfi_endproc

	.globl	paste_buffer_add_add_cb
	.align	16, 0x90
	.type	paste_buffer_add_add_cb,@function
paste_buffer_add_add_cb:                # @paste_buffer_add_add_cb
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
	movq	%rsi, -16(%rbp)
	cmpq	$0, _paste_buffer
	jne	.LBB8_2
# BB#1:                                 # %if.then
	callq	make_object_list
	movq	%rax, _paste_buffer
.LBB8_2:                                # %if.end
	movq	_paste_buffer, %rax
	addq	$32, %rax
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	object_list_callback_add
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	paste_buffer_add_add_cb, .Lfunc_end8-paste_buffer_add_add_cb
	.cfi_endproc

	.globl	make_object_list
	.align	16, 0x90
	.type	make_object_list,@function
make_object_list:                       # @make_object_list
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
	movl	$1, %eax
	movl	%eax, %edi
	movl	$72, %eax
	movl	%eax, %esi
	callq	g_malloc0_n
	popq	%rbp
	retq
.Lfunc_end9:
	.size	make_object_list, .Lfunc_end9-make_object_list
	.cfi_endproc

	.globl	paste_buffer_add_remove_cb
	.align	16, 0x90
	.type	paste_buffer_add_remove_cb,@function
paste_buffer_add_remove_cb:             # @paste_buffer_add_remove_cb
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
	movq	%rsi, -16(%rbp)
	cmpq	$0, _paste_buffer
	jne	.LBB10_2
# BB#1:                                 # %if.then
	callq	make_object_list
	movq	%rax, _paste_buffer
.LBB10_2:                               # %if.end
	movq	_paste_buffer, %rax
	addq	$40, %rax
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	object_list_callback_add
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	paste_buffer_add_remove_cb, .Lfunc_end10-paste_buffer_add_remove_cb
	.cfi_endproc

	.globl	object_list_remove_add_cb
	.align	16, 0x90
	.type	object_list_remove_add_cb,@function
object_list_remove_add_cb:              # @object_list_remove_add_cb
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
	addq	$32, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	object_list_callback_remove
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	object_list_remove_add_cb, .Lfunc_end11-object_list_remove_add_cb
	.cfi_endproc

	.align	16, 0x90
	.type	object_list_callback_remove,@function
object_list_callback_remove:            # @object_list_callback_remove
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	g_list_remove
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	object_list_callback_remove, .Lfunc_end12-object_list_callback_remove
	.cfi_endproc

	.globl	object_list_remove_select_cb
	.align	16, 0x90
	.type	object_list_remove_select_cb,@function
object_list_remove_select_cb:           # @object_list_remove_select_cb
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	addq	$48, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	object_list_callback_remove
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	object_list_remove_select_cb, .Lfunc_end13-object_list_remove_select_cb
	.cfi_endproc

	.globl	object_list_remove_remove_cb
	.align	16, 0x90
	.type	object_list_remove_remove_cb,@function
object_list_remove_remove_cb:           # @object_list_remove_remove_cb
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
	movq	-8(%rbp), %rsi
	addq	$40, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	object_list_callback_remove
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	object_list_remove_remove_cb, .Lfunc_end14-object_list_remove_remove_cb
	.cfi_endproc

	.globl	object_list_remove_move_cb
	.align	16, 0x90
	.type	object_list_remove_move_cb,@function
object_list_remove_move_cb:             # @object_list_remove_move_cb
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	addq	$56, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	object_list_callback_remove
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	object_list_remove_move_cb, .Lfunc_end15-object_list_remove_move_cb
	.cfi_endproc

	.globl	object_list_remove_geometry_cb
	.align	16, 0x90
	.type	object_list_remove_geometry_cb,@function
object_list_remove_geometry_cb:         # @object_list_remove_geometry_cb
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	addq	$64, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	object_list_callback_remove
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	object_list_remove_geometry_cb, .Lfunc_end16-object_list_remove_geometry_cb
	.cfi_endproc

	.globl	object_init
	.align	16, 0x90
	.type	object_init,@function
object_init:                            # @object_init
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
	subq	$16, %rsp
	movabsq	$.L.str, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, (%rdi)
	movq	-8(%rbp), %rsi
	movl	$1, 16(%rsi)
	movq	-8(%rbp), %rsi
	movl	$0, 20(%rsi)
	movq	-8(%rbp), %rsi
	movl	$0, 24(%rsi)
	movq	%rax, %rdi
	callq	g_strdup
	movabsq	$.L.str, %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, 32(%rsi)
	callq	g_strdup
	movabsq	$.L.str, %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, 40(%rsi)
	callq	g_strdup
	movabsq	$.L.str, %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, 48(%rsi)
	callq	g_strdup
	movabsq	$.L.str, %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, 56(%rsi)
	callq	g_strdup
	movabsq	$.L.str, %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, 64(%rsi)
	callq	g_strdup
	movabsq	$.L.str, %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, 72(%rsi)
	callq	g_strdup
	movq	-8(%rbp), %rsi
	movq	%rax, 80(%rsi)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	object_init, .Lfunc_end17-object_init
	.cfi_endproc

	.globl	object_ref
	.align	16, 0x90
	.type	object_ref,@function
object_ref:                             # @object_ref
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	16(%rdi), %eax
	addl	$1, %eax
	movl	%eax, 16(%rdi)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end18:
	.size	object_ref, .Lfunc_end18-object_ref
	.cfi_endproc

	.globl	object_unref
	.align	16, 0x90
	.type	object_unref,@function
object_unref:                           # @object_unref
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	16(%rdi), %eax
	addl	$-1, %eax
	movl	%eax, 16(%rdi)
	cmpl	$0, %eax
	jne	.LBB19_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	object_destruct
.LBB19_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	object_unref, .Lfunc_end19-object_unref
	.cfi_endproc

	.align	16, 0x90
	.type	object_destruct,@function
object_destruct:                        # @object_destruct
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	cmpq	$0, 40(%rdi)
	je	.LBB20_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB20_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	object_destruct, .Lfunc_end20-object_destruct
	.cfi_endproc

	.globl	object_clone
	.align	16, 0x90
	.type	object_clone,@function
object_clone:                           # @object_clone
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
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	48(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-24(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-16(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-8(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 20(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_strdup
	movq	-16(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_strdup
	movq	-16(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup
	movq	-16(%rbp), %rdi
	movq	%rax, 48(%rdi)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	g_strdup
	movq	-16(%rbp), %rdi
	movq	%rax, 56(%rdi)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	callq	g_strdup
	movq	-16(%rbp), %rdi
	movq	%rax, 64(%rdi)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	callq	g_strdup
	movq	-16(%rbp), %rdi
	movq	%rax, 72(%rdi)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	g_strdup
	movq	-16(%rbp), %rdi
	movq	%rax, 80(%rdi)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	object_clone, .Lfunc_end21-object_clone
	.cfi_endproc

	.globl	object_assign
	.align	16, 0x90
	.type	object_assign,@function
object_assign:                          # @object_assign
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	56(%rsi), %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-24(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	object_copy
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	object_assign, .Lfunc_end22-object_assign
	.cfi_endproc

	.align	16, 0x90
	.type	object_copy,@function
object_copy:                            # @object_copy
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, (%rdi)
	movq	-8(%rbp), %rsi
	movl	20(%rsi), %eax
	movq	-16(%rbp), %rsi
	movl	%eax, 20(%rsi)
	movq	-16(%rbp), %rsi
	movl	$0, 24(%rsi)
	movq	-16(%rbp), %rsi
	addq	$32, %rsi
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	g_strreplace
	movq	-16(%rbp), %rsi
	addq	$40, %rsi
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_strreplace
	movq	-16(%rbp), %rsi
	addq	$48, %rsi
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	g_strreplace
	movq	-16(%rbp), %rsi
	addq	$56, %rsi
	movq	-8(%rbp), %rdi
	movq	56(%rdi), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_strreplace
	movq	-16(%rbp), %rsi
	addq	$64, %rsi
	movq	-8(%rbp), %rdi
	movq	64(%rdi), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_strreplace
	movq	-16(%rbp), %rsi
	addq	$72, %rsi
	movq	-8(%rbp), %rdi
	movq	72(%rdi), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_strreplace
	movq	-16(%rbp), %rsi
	addq	$80, %rsi
	movq	-8(%rbp), %rdi
	movq	80(%rdi), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_strreplace
	movq	-16(%rbp), %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rsi, %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	object_copy, .Lfunc_end23-object_copy
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_0:
	.quad	4616189618054758400     # double 4
	.text
	.globl	object_draw
	.align	16, 0x90
	.type	object_draw,@function
object_draw:                            # @object_draw
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	get_preferences
	movsd	.LCPI24_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -32(%rbp)
	movsd	%xmm0, -56(%rbp)
	movq	-8(%rbp), %rax
	movl	20(%rax), %ecx
	andl	$4, %ecx
	cmpl	$0, %ecx
	je	.LBB24_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	addq	$60, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movl	20(%rax), %ecx
	andl	$-5, %ecx
	movl	%ecx, 20(%rax)
	jmp	.LBB24_6
.LBB24_2:                               # %if.else
	movq	-8(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB24_4
# BB#3:                                 # %if.then.6
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	addq	$36, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB24_5
.LBB24_4:                               # %if.else.7
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	addq	$12, %rax
	movq	%rax, -48(%rbp)
.LBB24_5:                               # %if.end
	jmp	.LBB24_6
.LBB24_6:                               # %if.end.8
	movq	-16(%rbp), %rdi
	callq	cairo_save
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gdk_cairo_set_source_color
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	72(%rsi), %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-64(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gdk_cairo_set_source_color
	leaq	-56(%rbp), %rsi
	movl	$1, %edx
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rdi
	callq	cairo_set_dash
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-8(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB24_9
# BB#7:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB24_9
# BB#8:                                 # %if.then.14
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	80(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB24_9:                               # %if.end.16
	movq	-16(%rbp), %rdi
	callq	cairo_restore
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	object_draw, .Lfunc_end24-object_draw
	.cfi_endproc

	.globl	object_edit
	.align	16, 0x90
	.type	object_edit,@function
object_edit:                            # @object_edit
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	cmpq	$0, 8(%rdi)
	jne	.LBB25_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	create_edit_area_info_dialog
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, 8(%rdi)
.LBB25_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %edx
	callq	edit_area_info_dialog_show
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	object_edit, .Lfunc_end25-object_edit
	.cfi_endproc

	.globl	object_select
	.align	16, 0x90
	.type	object_select,@function
object_select:                          # @object_select
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, 20(%rdi)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	addq	$48, %rdi
	movq	-8(%rbp), %rsi
	callq	object_list_callback_call
	movq	-8(%rbp), %rdi
	callq	object_emit_geometry_signal
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	object_select, .Lfunc_end26-object_select
	.cfi_endproc

	.align	16, 0x90
	.type	object_list_callback_call,@function
object_list_callback_call:              # @object_list_callback_call
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
.LBB27_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB27_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rsi
	callq	*%rax
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB27_1
.LBB27_4:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	object_list_callback_call, .Lfunc_end27-object_list_callback_call
	.cfi_endproc

	.globl	object_emit_geometry_signal
	.align	16, 0x90
	.type	object_emit_geometry_signal,@function
object_emit_geometry_signal:            # @object_emit_geometry_signal
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	addq	$64, %rdi
	movq	-8(%rbp), %rsi
	callq	object_list_callback_call
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	object_emit_geometry_signal, .Lfunc_end28-object_emit_geometry_signal
	.cfi_endproc

	.globl	object_unselect
	.align	16, 0x90
	.type	object_unselect,@function
object_unselect:                        # @object_unselect
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$0, 20(%rdi)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	addq	$48, %rdi
	movq	-8(%rbp), %rsi
	callq	object_list_callback_call
	movq	-8(%rbp), %rdi
	callq	object_emit_geometry_signal
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	object_unselect, .Lfunc_end29-object_unselect
	.cfi_endproc

	.globl	object_move
	.align	16, 0x90
	.type	object_move,@function
object_move:                            # @object_move
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	120(%rdi), %rdi
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-24(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rdi
	callq	object_emit_geometry_signal
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	object_move, .Lfunc_end30-object_move
	.cfi_endproc

	.globl	object_move_sash
	.align	16, 0x90
	.type	object_move_sash,@function
object_move_sash:                       # @object_move_sash
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
	subq	$64, %rsp
	leaq	-20(%rbp), %rax
	leaq	-24(%rbp), %rcx
	leaq	-28(%rbp), %r8
	leaq	-32(%rbp), %r9
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	104(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	movq	%r8, %rcx
	movq	%r9, %r8
	movq	-48(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	cmpl	$0, -12(%rbp)
	jne	.LBB31_2
# BB#1:                                 # %if.then
	movl	$2, %eax
	movl	-28(%rbp), %ecx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-52(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB31_3
.LBB31_2:                               # %if.else
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB31_3:                               # %if.end
	cmpl	$0, -16(%rbp)
	jne	.LBB31_5
# BB#4:                                 # %if.then.3
	movl	$2, %eax
	movl	-32(%rbp), %ecx
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-56(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB31_6
.LBB31_5:                               # %if.else.6
	movl	-32(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB31_6:                               # %if.end.8
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	88(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	*%rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB31_8
# BB#7:                                 # %if.then.10
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	*%rax
	movq	-8(%rbp), %rdi
	callq	object_emit_geometry_signal
.LBB31_8:                               # %if.end.11
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	object_move_sash, .Lfunc_end31-object_move_sash
	.cfi_endproc

	.globl	object_remove
	.align	16, 0x90
	.type	object_remove,@function
object_remove:                          # @object_remove
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	-8(%rbp), %rsi
	callq	object_list_remove
	movq	-8(%rbp), %rdi
	callq	object_emit_geometry_signal
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	object_remove, .Lfunc_end32-object_remove
	.cfi_endproc

	.globl	object_list_remove
	.align	16, 0x90
	.type	object_list_remove,@function
object_list_remove:                     # @object_list_remove
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	g_list_remove
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	object_list_callback_call
	movq	-16(%rbp), %rdi
	callq	object_unref
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	object_list_remove, .Lfunc_end33-object_list_remove
	.cfi_endproc

	.globl	object_lock
	.align	16, 0x90
	.type	object_lock,@function
object_lock:                            # @object_lock
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, 24(%rdi)
	popq	%rbp
	retq
.Lfunc_end34:
	.size	object_lock, .Lfunc_end34-object_lock
	.cfi_endproc

	.globl	object_unlock
	.align	16, 0x90
	.type	object_unlock,@function
object_unlock:                          # @object_unlock
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$0, 24(%rdi)
	popq	%rbp
	retq
.Lfunc_end35:
	.size	object_unlock, .Lfunc_end35-object_unlock
	.cfi_endproc

	.globl	object_set_url
	.align	16, 0x90
	.type	object_set_url,@function
object_set_url:                         # @object_set_url
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	addq	$32, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	g_strreplace
	movq	%rax, -32(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	object_set_url, .Lfunc_end36-object_set_url
	.cfi_endproc

	.globl	object_set_target
	.align	16, 0x90
	.type	object_set_target,@function
object_set_target:                      # @object_set_target
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	addq	$40, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	g_strreplace
	movq	%rax, -32(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	object_set_target, .Lfunc_end37-object_set_target
	.cfi_endproc

	.globl	object_set_comment
	.align	16, 0x90
	.type	object_set_comment,@function
object_set_comment:                     # @object_set_comment
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	addq	$48, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	g_strreplace
	movq	%rax, -32(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	object_set_comment, .Lfunc_end38-object_set_comment
	.cfi_endproc

	.globl	object_set_mouse_over
	.align	16, 0x90
	.type	object_set_mouse_over,@function
object_set_mouse_over:                  # @object_set_mouse_over
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	addq	$56, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	g_strreplace
	movq	%rax, -32(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	object_set_mouse_over, .Lfunc_end39-object_set_mouse_over
	.cfi_endproc

	.globl	object_set_mouse_out
	.align	16, 0x90
	.type	object_set_mouse_out,@function
object_set_mouse_out:                   # @object_set_mouse_out
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	addq	$64, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	g_strreplace
	movq	%rax, -32(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	object_set_mouse_out, .Lfunc_end40-object_set_mouse_out
	.cfi_endproc

	.globl	object_set_focus
	.align	16, 0x90
	.type	object_set_focus,@function
object_set_focus:                       # @object_set_focus
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	addq	$72, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	g_strreplace
	movq	%rax, -32(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	object_set_focus, .Lfunc_end41-object_set_focus
	.cfi_endproc

	.globl	object_set_blur
	.align	16, 0x90
	.type	object_set_blur,@function
object_set_blur:                        # @object_set_blur
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	addq	$80, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	g_strreplace
	movq	%rax, -32(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	object_set_blur, .Lfunc_end42-object_set_blur
	.cfi_endproc

	.globl	object_get_position_in_list
	.align	16, 0x90
	.type	object_get_position_in_list,@function
object_get_position_in_list:            # @object_get_position_in_list
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_index
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	object_get_position_in_list, .Lfunc_end43-object_get_position_in_list
	.cfi_endproc

	.globl	object_emit_changed_signal
	.align	16, 0x90
	.type	object_emit_changed_signal,@function
object_emit_changed_signal:             # @object_emit_changed_signal
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	addq	$16, %rdi
	movq	-8(%rbp), %rsi
	callq	object_list_callback_call
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	object_emit_changed_signal, .Lfunc_end44-object_emit_changed_signal
	.cfi_endproc

	.globl	object_emit_update_signal
	.align	16, 0x90
	.type	object_emit_update_signal,@function
object_emit_update_signal:              # @object_emit_update_signal
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	addq	$24, %rdi
	movq	-8(%rbp), %rsi
	callq	object_list_callback_call
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	object_emit_update_signal, .Lfunc_end45-object_emit_update_signal
	.cfi_endproc

	.globl	do_object_locked_dialog
	.align	16, 0x90
	.type	do_object_locked_dialog,@function
do_object_locked_dialog:                # @do_object_locked_dialog
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
	cmpq	$0, do_object_locked_dialog.dialog
	jne	.LBB46_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.1, %rdi
	callq	make_default_dialog
	movq	%rax, do_object_locked_dialog.dialog
	movq	do_object_locked_dialog.dialog, %rdi
	callq	default_dialog_hide_cancel_button
	movq	do_object_locked_dialog.dialog, %rdi
	callq	default_dialog_hide_apply_button
	movabsq	$.L.str.2, %rsi
	movq	do_object_locked_dialog.dialog, %rdi
	callq	default_dialog_set_label
.LBB46_2:                               # %if.end
	movq	do_object_locked_dialog.dialog, %rdi
	callq	default_dialog_show
	popq	%rbp
	retq
.Lfunc_end46:
	.size	do_object_locked_dialog, .Lfunc_end46-do_object_locked_dialog
	.cfi_endproc

	.globl	object_on_button_press
	.align	16, 0x90
	.type	object_on_button_press,@function
object_on_button_press:                 # @object_on_button_press
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	callq	get_preferences
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	cvttsd2si	24(%rax), %edi
	callq	get_real_coord
	movl	%eax, -44(%rbp)
	movq	-24(%rbp), %rdx
	cvttsd2si	32(%rdx), %edi
	callq	get_real_coord
	movl	%eax, -48(%rbp)
	movq	-24(%rbp), %rdx
	cmpl	$5, (%rdx)
	jne	.LBB47_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB47_24
.LBB47_2:                               # %if.end
	leaq	-44(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	callq	round_to_grid
	cmpq	$0, object_on_button_press.obj
	je	.LBB47_20
# BB#3:                                 # %if.then.7
	movq	-24(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB47_13
# BB#4:                                 # %if.then.10
	movq	object_on_button_press.factory, %rax
	cmpq	$0, 8(%rax)
	je	.LBB47_6
# BB#5:                                 # %lor.lhs.false
	movq	object_on_button_press.factory, %rax
	movq	8(%rax), %rax
	movq	object_on_button_press.obj, %rdi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB47_12
.LBB47_6:                               # %if.then.15
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$button_motion, %rdx
	movq	-16(%rbp), %rdi
	movq	object_on_button_press.factory, %r9
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	object_on_button_press.obj, %rdi
	movq	(%rdi), %rdi
	movq	32(%rdi), %rdi
	movq	object_on_button_press.obj, %r8
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	-80(%rbp), %r8          # 8-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	*%r8
	cmpl	$0, %eax
	je	.LBB47_10
# BB#7:                                 # %if.then.19
	callq	get_shapes
	movq	object_on_button_press.obj, %rsi
	movq	%rax, %rdi
	callq	create_command_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	command_execute
	movq	-40(%rbp), %rax
	cmpl	$0, 4(%rax)
	je	.LBB47_9
# BB#8:                                 # %if.then.23
	xorl	%esi, %esi
	movq	object_on_button_press.obj, %rdi
	callq	object_edit
.LBB47_9:                               # %if.end.24
	jmp	.LBB47_11
.LBB47_10:                              # %if.else
	movq	object_on_button_press.obj, %rdi
	callq	object_unref
.LBB47_11:                              # %if.end.25
	movq	object_on_button_press.obj, %rdi
	callq	preview_unset_tmp_obj
	callq	preview_redraw
	movq	$0, object_on_button_press.obj
	callq	main_clear_dimension
.LBB47_12:                              # %if.end.26
	jmp	.LBB47_19
.LBB47_13:                              # %if.else.27
	movq	-24(%rbp), %rax
	cmpl	$3, 52(%rax)
	jne	.LBB47_18
# BB#14:                                # %if.then.31
	movq	object_on_button_press.factory, %rax
	cmpq	$0, 16(%rax)
	je	.LBB47_16
# BB#15:                                # %lor.lhs.false.33
	movq	object_on_button_press.factory, %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	object_on_button_press.obj, %rsi
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB47_17
.LBB47_16:                              # %if.then.37
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$button_motion, %rdx
	movq	-16(%rbp), %rdi
	movq	object_on_button_press.factory, %r9
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	object_on_button_press.obj, %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	object_unref
	movq	object_on_button_press.obj, %rdi
	callq	preview_unset_tmp_obj
	callq	preview_redraw
	movq	$0, object_on_button_press.obj
	callq	main_clear_dimension
.LBB47_17:                              # %if.end.39
	movl	$1, -4(%rbp)
	jmp	.LBB47_24
.LBB47_18:                              # %if.end.40
	jmp	.LBB47_19
.LBB47_19:                              # %if.end.41
	jmp	.LBB47_23
.LBB47_20:                              # %if.else.42
	movq	-24(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB47_22
# BB#21:                                # %if.then.46
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	48(%rcx), %edi
	callq	*%rax
	movq	%rax, object_on_button_press.factory
	movq	object_on_button_press.factory, %rdi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	callq	object_factory_create_object
	movq	%rax, object_on_button_press.obj
	movq	object_on_button_press.obj, %rdi
	callq	preview_set_tmp_obj
	movabsq	$.L.str.3, %rsi
	movabsq	$button_motion, %rax
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rcx
	movq	object_on_button_press.factory, %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB47_22:                              # %if.end.50
	jmp	.LBB47_23
.LBB47_23:                              # %if.end.51
	movl	$0, -4(%rbp)
.LBB47_24:                              # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	object_on_button_press, .Lfunc_end47-object_on_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	button_motion,@function
button_motion:                          # @button_motion
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	cvttsd2si	24(%rdx), %edi
	callq	get_real_coord
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdx
	cvttsd2si	32(%rdx), %edi
	callq	get_real_coord
	leaq	-28(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	movl	%eax, -32(%rbp)
	callq	round_to_grid
	movq	-24(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movl	48(%rsi), %esi
	movl	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movq	-40(%rbp), %r8          # 8-byte Reload
	callq	*%r8
	callq	preview_redraw
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	button_motion, .Lfunc_end48-button_motion
	.cfi_endproc

	.align	16, 0x90
	.type	object_factory_create_object,@function
object_factory_create_object:           # @object_factory_create_object
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp147:
	.cfi_def_cfa_offset 16
.Ltmp148:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp149:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %esi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%edx, %edi
	movq	-24(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	object_factory_create_object, .Lfunc_end49-object_factory_create_object
	.cfi_endproc

	.globl	object_list_destruct
	.align	16, 0x90
	.type	object_list_destruct,@function
object_list_destruct:                   # @object_list_destruct
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp150:
	.cfi_def_cfa_offset 16
.Ltmp151:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp152:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	object_list_remove_all
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	g_free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	object_list_destruct, .Lfunc_end50-object_list_destruct
	.cfi_endproc

	.globl	object_list_remove_all
	.align	16, 0x90
	.type	object_list_remove_all,@function
object_list_remove_all:                 # @object_list_remove_all
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp153:
	.cfi_def_cfa_offset 16
.Ltmp154:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp155:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB51_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB51_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB51_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	object_list_callback_call
	movq	-24(%rbp), %rdi
	callq	object_unref
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB51_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB51_1
.LBB51_4:                               # %for.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_list_free
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	object_list_remove_all, .Lfunc_end51-object_list_remove_all
	.cfi_endproc

	.globl	object_list_append_list
	.align	16, 0x90
	.type	object_list_append_list,@function
object_list_append_list:                # @object_list_append_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp156:
	.cfi_def_cfa_offset 16
.Ltmp157:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp158:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
.LBB52_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB52_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB52_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	object_clone
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	object_list_append
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB52_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB52_1
.LBB52_4:                               # %for.end
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpq	$0, -16(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 8(%rdx)
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	object_list_append_list, .Lfunc_end52-object_list_append_list
	.cfi_endproc

	.globl	object_list_append
	.align	16, 0x90
	.type	object_list_append,@function
object_list_append:                     # @object_list_append
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
.Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp161:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, 8(%rdi)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	g_list_append
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	object_list_callback_call
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	object_list_append, .Lfunc_end53-object_list_append
	.cfi_endproc

	.globl	object_list_copy
	.align	16, 0x90
	.type	object_list_copy,@function
object_list_copy:                       # @object_list_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp162:
	.cfi_def_cfa_offset 16
.Ltmp163:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp164:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB54_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	object_list_remove_all
	jmp	.LBB54_3
.LBB54_2:                               # %if.else
	callq	make_object_list
	movq	%rax, -8(%rbp)
.LBB54_3:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	object_list_append_list
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	object_list_copy, .Lfunc_end54-object_list_copy
	.cfi_endproc

	.globl	object_list_prepend
	.align	16, 0x90
	.type	object_list_prepend,@function
object_list_prepend:                    # @object_list_prepend
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp165:
	.cfi_def_cfa_offset 16
.Ltmp166:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp167:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, 8(%rdi)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	g_list_prepend
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	object_list_callback_call
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	object_list_prepend, .Lfunc_end55-object_list_prepend
	.cfi_endproc

	.globl	object_list_insert
	.align	16, 0x90
	.type	object_list_insert,@function
object_list_insert:                     # @object_list_insert
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp168:
	.cfi_def_cfa_offset 16
.Ltmp169:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp170:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdx, 8(%rdi)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdi
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movl	%esi, -28(%rbp)         # 4-byte Spill
	movq	%rdx, %rsi
	movl	-28(%rbp), %edx         # 4-byte Reload
	callq	g_list_insert
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	object_list_callback_call
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	object_list_insert, .Lfunc_end56-object_list_insert
	.cfi_endproc

	.globl	object_list_remove_link
	.align	16, 0x90
	.type	object_list_remove_link,@function
object_list_remove_link:                # @object_list_remove_link
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp171:
	.cfi_def_cfa_offset 16
.Ltmp172:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp173:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	g_list_remove_link
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	object_list_callback_call
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	object_list_remove_link, .Lfunc_end57-object_list_remove_link
	.cfi_endproc

	.globl	object_list_update
	.align	16, 0x90
	.type	object_list_update,@function
object_list_update:                     # @object_list_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp174:
	.cfi_def_cfa_offset 16
.Ltmp175:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp176:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	addq	$24, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	object_list_callback_call
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	object_list_update, .Lfunc_end58-object_list_update
	.cfi_endproc

	.globl	object_list_draw
	.align	16, 0x90
	.type	object_list_draw,@function
object_list_draw:                       # @object_list_draw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp177:
	.cfi_def_cfa_offset 16
.Ltmp178:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp179:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
.LBB59_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB59_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB59_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	object_draw
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB59_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB59_1
.LBB59_4:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	object_list_draw, .Lfunc_end59-object_list_draw
	.cfi_endproc

	.globl	object_list_draw_selected
	.align	16, 0x90
	.type	object_list_draw_selected,@function
object_list_draw_selected:              # @object_list_draw_selected
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp180:
	.cfi_def_cfa_offset 16
.Ltmp181:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp182:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
.LBB60_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB60_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB60_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB60_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB60_1 Depth=1
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	object_draw
.LBB60_4:                               # %if.end
                                        #   in Loop: Header=BB60_1 Depth=1
	jmp	.LBB60_5
.LBB60_5:                               # %for.inc
                                        #   in Loop: Header=BB60_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB60_1
.LBB60_6:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	object_list_draw_selected, .Lfunc_end60-object_list_draw_selected
	.cfi_endproc

	.globl	object_list_find
	.align	16, 0x90
	.type	object_list_find,@function
object_list_find:                       # @object_list_find
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp183:
	.cfi_def_cfa_offset 16
.Ltmp184:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp185:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -32(%rbp)
.LBB61_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB61_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB61_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	96(%rax), %rax
	movq	-40(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB61_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB61_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB61_4:                               # %if.end
                                        #   in Loop: Header=BB61_1 Depth=1
	jmp	.LBB61_5
.LBB61_5:                               # %for.inc
                                        #   in Loop: Header=BB61_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB61_1
.LBB61_6:                               # %for.end
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	object_list_find, .Lfunc_end61-object_list_find
	.cfi_endproc

	.globl	object_list_near_sash
	.align	16, 0x90
	.type	object_list_near_sash,@function
object_list_near_sash:                  # @object_list_near_sash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp186:
	.cfi_def_cfa_offset 16
.Ltmp187:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp188:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
.LBB62_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB62_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB62_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB62_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB62_1 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	88(%rax), %rax
	movq	-48(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	*%rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB62_5
# BB#4:                                 # %if.then.4
                                        #   in Loop: Header=BB62_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB62_5:                               # %if.end
                                        #   in Loop: Header=BB62_1 Depth=1
	jmp	.LBB62_6
.LBB62_6:                               # %if.end.5
                                        #   in Loop: Header=BB62_1 Depth=1
	jmp	.LBB62_7
.LBB62_7:                               # %for.inc
                                        #   in Loop: Header=BB62_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB62_1
.LBB62_8:                               # %for.end
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	object_list_near_sash, .Lfunc_end62-object_list_near_sash
	.cfi_endproc

	.globl	clear_paste_buffer
	.align	16, 0x90
	.type	clear_paste_buffer,@function
clear_paste_buffer:                     # @clear_paste_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp189:
	.cfi_def_cfa_offset 16
.Ltmp190:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp191:
	.cfi_def_cfa_register %rbp
	cmpq	$0, _paste_buffer
	je	.LBB63_2
# BB#1:                                 # %if.then
	movq	_paste_buffer, %rdi
	callq	object_list_remove_all
	jmp	.LBB63_3
.LBB63_2:                               # %if.else
	callq	make_object_list
	movq	%rax, _paste_buffer
.LBB63_3:                               # %if.end
	popq	%rbp
	retq
.Lfunc_end63:
	.size	clear_paste_buffer, .Lfunc_end63-clear_paste_buffer
	.cfi_endproc

	.globl	get_paste_buffer
	.align	16, 0x90
	.type	get_paste_buffer,@function
get_paste_buffer:                       # @get_paste_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp192:
	.cfi_def_cfa_offset 16
.Ltmp193:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp194:
	.cfi_def_cfa_register %rbp
	movq	_paste_buffer, %rax
	popq	%rbp
	retq
.Lfunc_end64:
	.size	get_paste_buffer, .Lfunc_end64-get_paste_buffer
	.cfi_endproc

	.globl	object_list_cut
	.align	16, 0x90
	.type	object_list_cut,@function
object_list_cut:                        # @object_list_cut
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp195:
	.cfi_def_cfa_offset 16
.Ltmp196:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp197:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -28(%rbp)
	callq	clear_paste_buffer
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB65_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB65_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB65_7
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$0, 24(%rax)
	je	.LBB65_5
# BB#4:                                 # %if.then.4
                                        #   in Loop: Header=BB65_1 Depth=1
	callq	do_object_locked_dialog
	jmp	.LBB65_6
.LBB65_5:                               # %if.else
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	_paste_buffer, %rdi
	movq	-40(%rbp), %rsi
	callq	object_list_append
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	object_list_remove_link
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.LBB65_6:                               # %if.end
                                        #   in Loop: Header=BB65_1 Depth=1
	jmp	.LBB65_7
.LBB65_7:                               # %if.end.5
                                        #   in Loop: Header=BB65_1 Depth=1
	jmp	.LBB65_8
.LBB65_8:                               # %for.inc
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB65_1
.LBB65_9:                               # %for.end
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -28(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 8(%rdx)
	movl	-28(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	object_list_cut, .Lfunc_end65-object_list_cut
	.cfi_endproc

	.globl	object_list_copy_to_paste_buffer
	.align	16, 0x90
	.type	object_list_copy_to_paste_buffer,@function
object_list_copy_to_paste_buffer:       # @object_list_copy_to_paste_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp198:
	.cfi_def_cfa_offset 16
.Ltmp199:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp200:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	callq	clear_paste_buffer
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB66_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB66_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB66_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB66_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB66_1 Depth=1
	movq	_paste_buffer, %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	object_clone
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	object_list_append
.LBB66_4:                               # %if.end
                                        #   in Loop: Header=BB66_1 Depth=1
	jmp	.LBB66_5
.LBB66_5:                               # %for.inc
                                        #   in Loop: Header=BB66_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB66_1
.LBB66_6:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	object_list_copy_to_paste_buffer, .Lfunc_end66-object_list_copy_to_paste_buffer
	.cfi_endproc

	.globl	object_list_paste
	.align	16, 0x90
	.type	object_list_paste,@function
object_list_paste:                      # @object_list_paste
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp201:
	.cfi_def_cfa_offset 16
.Ltmp202:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp203:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	_paste_buffer, %rsi
	callq	object_list_append_list
	movq	%rax, -16(%rbp)         # 8-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	object_list_paste, .Lfunc_end67-object_list_paste
	.cfi_endproc

	.globl	object_list_delete_selected
	.align	16, 0x90
	.type	object_list_delete_selected,@function
object_list_delete_selected:            # @object_list_delete_selected
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp204:
	.cfi_def_cfa_offset 16
.Ltmp205:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp206:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB68_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB68_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB68_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB68_7
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB68_1 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$0, 24(%rax)
	je	.LBB68_5
# BB#4:                                 # %if.then.4
                                        #   in Loop: Header=BB68_1 Depth=1
	callq	do_object_locked_dialog
	jmp	.LBB68_6
.LBB68_5:                               # %if.else
                                        #   in Loop: Header=BB68_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	object_list_remove_link
	movq	-32(%rbp), %rdi
	callq	object_unref
.LBB68_6:                               # %if.end
                                        #   in Loop: Header=BB68_1 Depth=1
	jmp	.LBB68_7
.LBB68_7:                               # %if.end.5
                                        #   in Loop: Header=BB68_1 Depth=1
	jmp	.LBB68_8
.LBB68_8:                               # %for.inc
                                        #   in Loop: Header=BB68_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB68_1
.LBB68_9:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	object_list_delete_selected, .Lfunc_end68-object_list_delete_selected
	.cfi_endproc

	.globl	object_list_edit_selected
	.align	16, 0x90
	.type	object_list_edit_selected,@function
object_list_edit_selected:              # @object_list_edit_selected
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp207:
	.cfi_def_cfa_offset 16
.Ltmp208:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp209:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB69_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB69_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB69_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB69_4
# BB#3:                                 # %if.then
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	callq	object_edit
	jmp	.LBB69_6
.LBB69_4:                               # %if.end
                                        #   in Loop: Header=BB69_1 Depth=1
	jmp	.LBB69_5
.LBB69_5:                               # %for.inc
                                        #   in Loop: Header=BB69_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB69_1
.LBB69_6:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	object_list_edit_selected, .Lfunc_end69-object_list_edit_selected
	.cfi_endproc

	.globl	object_list_select_all
	.align	16, 0x90
	.type	object_list_select_all,@function
object_list_select_all:                 # @object_list_select_all
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp210:
	.cfi_def_cfa_offset 16
.Ltmp211:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp212:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB70_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB70_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB70_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 20(%rax)
	jne	.LBB70_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB70_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	object_select
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB70_4:                               # %if.end
                                        #   in Loop: Header=BB70_1 Depth=1
	jmp	.LBB70_5
.LBB70_5:                               # %for.inc
                                        #   in Loop: Header=BB70_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB70_1
.LBB70_6:                               # %for.end
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	object_list_select_all, .Lfunc_end70-object_list_select_all
	.cfi_endproc

	.globl	object_list_select_next
	.align	16, 0x90
	.type	object_list_select_next,@function
object_list_select_next:                # @object_list_select_next
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp213:
	.cfi_def_cfa_offset 16
.Ltmp214:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp215:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB71_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB71_15
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB71_13
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	object_unselect
	movq	-16(%rbp), %rdi
	cmpq	$0, 8(%rdi)
	je	.LBB71_5
# BB#4:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB71_6
.LBB71_5:                               # %cond.false
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB71_6:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	object_select
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB71_7:                               # %for.cond.8
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB71_12
# BB#8:                                 # %for.body.10
                                        #   in Loop: Header=BB71_7 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB71_10
# BB#9:                                 # %if.then.14
                                        #   in Loop: Header=BB71_7 Depth=1
	movq	-24(%rbp), %rdi
	callq	object_unselect
.LBB71_10:                              # %if.end
                                        #   in Loop: Header=BB71_7 Depth=1
	jmp	.LBB71_11
.LBB71_11:                              # %for.inc
                                        #   in Loop: Header=BB71_7 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB71_7
.LBB71_12:                              # %for.end
	jmp	.LBB71_15
.LBB71_13:                              # %if.end.16
                                        #   in Loop: Header=BB71_1 Depth=1
	jmp	.LBB71_14
.LBB71_14:                              # %for.inc.17
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB71_1
.LBB71_15:                              # %for.end.19
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	object_list_select_next, .Lfunc_end71-object_list_select_next
	.cfi_endproc

	.globl	object_list_select_prev
	.align	16, 0x90
	.type	object_list_select_prev,@function
object_list_select_prev:                # @object_list_select_prev
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp216:
	.cfi_def_cfa_offset 16
.Ltmp217:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp218:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB72_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB72_15
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB72_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB72_13
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB72_5
# BB#4:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB72_6
.LBB72_5:                               # %cond.false
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_list_last
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB72_6:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
.LBB72_7:                               # %for.cond.6
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB72_12
# BB#8:                                 # %for.body.8
                                        #   in Loop: Header=BB72_7 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB72_10
# BB#9:                                 # %if.then.12
                                        #   in Loop: Header=BB72_7 Depth=1
	movq	-24(%rbp), %rdi
	callq	object_unselect
.LBB72_10:                              # %if.end
                                        #   in Loop: Header=BB72_7 Depth=1
	jmp	.LBB72_11
.LBB72_11:                              # %for.inc
                                        #   in Loop: Header=BB72_7 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB72_7
.LBB72_12:                              # %for.end
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	object_select
	jmp	.LBB72_15
.LBB72_13:                              # %if.end.14
                                        #   in Loop: Header=BB72_1 Depth=1
	jmp	.LBB72_14
.LBB72_14:                              # %for.inc.15
                                        #   in Loop: Header=BB72_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB72_1
.LBB72_15:                              # %for.end.17
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	object_list_select_prev, .Lfunc_end72-object_list_select_prev
	.cfi_endproc

	.globl	object_list_select_region
	.align	16, 0x90
	.type	object_list_select_region,@function
object_list_select_region:              # @object_list_select_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp219:
	.cfi_def_cfa_offset 16
.Ltmp220:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp221:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	$0, -36(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -32(%rbp)
.LBB73_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB73_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB73_1 Depth=1
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	leaq	-60(%rbp), %rcx
	leaq	-64(%rbp), %r8
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	104(%rax), %rax
	movq	-48(%rbp), %rdi
	callq	*%rax
	movl	-52(%rbp), %r9d
	cmpl	-12(%rbp), %r9d
	jl	.LBB73_7
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB73_1 Depth=1
	movl	-52(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	-12(%rbp), %ecx
	addl	-20(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB73_7
# BB#4:                                 # %land.lhs.true.4
                                        #   in Loop: Header=BB73_1 Depth=1
	movl	-56(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.LBB73_7
# BB#5:                                 # %land.lhs.true.6
                                        #   in Loop: Header=BB73_1 Depth=1
	movl	-56(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	-16(%rbp), %ecx
	addl	-24(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB73_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB73_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	object_select
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.LBB73_7:                               # %if.end
                                        #   in Loop: Header=BB73_1 Depth=1
	jmp	.LBB73_8
.LBB73_8:                               # %for.inc
                                        #   in Loop: Header=BB73_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB73_1
.LBB73_9:                               # %for.end
	movl	-36(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	object_list_select_region, .Lfunc_end73-object_list_select_region
	.cfi_endproc

	.globl	object_list_deselect_all
	.align	16, 0x90
	.type	object_list_deselect_all,@function
object_list_deselect_all:               # @object_list_deselect_all
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp222:
	.cfi_def_cfa_offset 16
.Ltmp223:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp224:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -28(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
.LBB74_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB74_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB74_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB74_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB74_1 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB74_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB74_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	object_unselect
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.LBB74_5:                               # %if.end
                                        #   in Loop: Header=BB74_1 Depth=1
	jmp	.LBB74_6
.LBB74_6:                               # %for.inc
                                        #   in Loop: Header=BB74_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB74_1
.LBB74_7:                               # %for.end
	movl	-28(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	object_list_deselect_all, .Lfunc_end74-object_list_deselect_all
	.cfi_endproc

	.globl	object_list_nr_selected
	.align	16, 0x90
	.type	object_list_nr_selected,@function
object_list_nr_selected:                # @object_list_nr_selected
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp225:
	.cfi_def_cfa_offset 16
.Ltmp226:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp227:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	$0, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB75_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB75_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB75_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB75_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB75_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB75_4:                               # %if.end
                                        #   in Loop: Header=BB75_1 Depth=1
	jmp	.LBB75_5
.LBB75_5:                               # %for.inc
                                        #   in Loop: Header=BB75_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB75_1
.LBB75_6:                               # %for.end
	movl	-20(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end75:
	.size	object_list_nr_selected, .Lfunc_end75-object_list_nr_selected
	.cfi_endproc

	.globl	object_list_resize
	.align	16, 0x90
	.type	object_list_resize,@function
object_list_resize:                     # @object_list_resize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp228:
	.cfi_def_cfa_offset 16
.Ltmp229:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp230:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
.LBB76_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB76_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB76_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	112(%rax), %rax
	movq	-32(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	*%rax
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB76_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB76_1
.LBB76_4:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end76:
	.size	object_list_resize, .Lfunc_end76-object_list_resize
	.cfi_endproc

	.globl	object_list_move_selected
	.align	16, 0x90
	.type	object_list_move_selected,@function
object_list_move_selected:              # @object_list_move_selected
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp231:
	.cfi_def_cfa_offset 16
.Ltmp232:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp233:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
.LBB77_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB77_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB77_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB77_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB77_1 Depth=1
	movq	-32(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	object_move
.LBB77_4:                               # %if.end
                                        #   in Loop: Header=BB77_1 Depth=1
	jmp	.LBB77_5
.LBB77_5:                               # %for.inc
                                        #   in Loop: Header=BB77_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB77_1
.LBB77_6:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	object_list_move_selected, .Lfunc_end77-object_list_move_selected
	.cfi_endproc

	.globl	object_list_move_up
	.align	16, 0x90
	.type	object_list_move_up,@function
object_list_move_up:                    # @object_list_move_up
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp234:
	.cfi_def_cfa_offset 16
.Ltmp235:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp236:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	g_list_find
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	object_list_swap_prev
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end78:
	.size	object_list_move_up, .Lfunc_end78-object_list_move_up
	.cfi_endproc

	.align	16, 0x90
	.type	object_list_swap_prev,@function
object_list_swap_prev:                  # @object_list_swap_prev
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp237:
	.cfi_def_cfa_offset 16
.Ltmp238:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp239:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, (%rdi)
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rsi, (%rdi)
	movq	-8(%rbp), %rsi
	addq	$56, %rsi
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	callq	object_list_callback_call
	movq	-8(%rbp), %rsi
	addq	$56, %rsi
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	callq	object_list_callback_call
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	object_list_swap_prev, .Lfunc_end79-object_list_swap_prev
	.cfi_endproc

	.globl	object_list_move_down
	.align	16, 0x90
	.type	object_list_move_down,@function
object_list_move_down:                  # @object_list_move_down
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp240:
	.cfi_def_cfa_offset 16
.Ltmp241:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp242:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	g_list_find
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	object_list_swap_next
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end80:
	.size	object_list_move_down, .Lfunc_end80-object_list_move_down
	.cfi_endproc

	.align	16, 0x90
	.type	object_list_swap_next,@function
object_list_swap_next:                  # @object_list_swap_next
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp243:
	.cfi_def_cfa_offset 16
.Ltmp244:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp245:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, (%rdi)
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rsi, (%rdi)
	movq	-8(%rbp), %rsi
	addq	$56, %rsi
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	callq	object_list_callback_call
	movq	-8(%rbp), %rsi
	addq	$56, %rsi
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	callq	object_list_callback_call
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end81:
	.size	object_list_swap_next, .Lfunc_end81-object_list_swap_next
	.cfi_endproc

	.globl	object_list_move_selected_up
	.align	16, 0x90
	.type	object_list_move_selected_up,@function
object_list_move_selected_up:           # @object_list_move_selected_up
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp246:
	.cfi_def_cfa_offset 16
.Ltmp247:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp248:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB82_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB82_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB82_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB82_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB82_1 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB82_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB82_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	object_list_swap_prev
.LBB82_5:                               # %if.end
                                        #   in Loop: Header=BB82_1 Depth=1
	jmp	.LBB82_6
.LBB82_6:                               # %for.inc
                                        #   in Loop: Header=BB82_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB82_1
.LBB82_7:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end82:
	.size	object_list_move_selected_up, .Lfunc_end82-object_list_move_selected_up
	.cfi_endproc

	.globl	object_list_move_selected_down
	.align	16, 0x90
	.type	object_list_move_selected_down,@function
object_list_move_selected_down:         # @object_list_move_selected_down
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp249:
	.cfi_def_cfa_offset 16
.Ltmp250:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp251:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	g_list_last
	movq	%rax, -16(%rbp)
.LBB83_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB83_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB83_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB83_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB83_1 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB83_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB83_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	object_list_swap_next
.LBB83_5:                               # %if.end
                                        #   in Loop: Header=BB83_1 Depth=1
	jmp	.LBB83_6
.LBB83_6:                               # %for.inc
                                        #   in Loop: Header=BB83_1 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB83_1
.LBB83_7:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end83:
	.size	object_list_move_selected_down, .Lfunc_end83-object_list_move_selected_down
	.cfi_endproc

	.globl	object_list_move_to_front
	.align	16, 0x90
	.type	object_list_move_to_front,@function
object_list_move_to_front:              # @object_list_move_to_front
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp252:
	.cfi_def_cfa_offset 16
.Ltmp253:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp254:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	g_list_length
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB84_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB84_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB84_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	object_list_remove_link
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	object_list_append
.LBB84_4:                               # %if.end
                                        #   in Loop: Header=BB84_1 Depth=1
	jmp	.LBB84_5
.LBB84_5:                               # %for.inc
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-28(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB84_1
.LBB84_6:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end84:
	.size	object_list_move_to_front, .Lfunc_end84-object_list_move_to_front
	.cfi_endproc

	.globl	object_list_send_to_back
	.align	16, 0x90
	.type	object_list_send_to_back,@function
object_list_send_to_back:               # @object_list_send_to_back
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp255:
	.cfi_def_cfa_offset 16
.Ltmp256:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp257:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	g_list_length
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB85_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB85_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB85_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB85_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB85_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	object_list_remove_link
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	object_list_prepend
.LBB85_4:                               # %if.end
                                        #   in Loop: Header=BB85_1 Depth=1
	jmp	.LBB85_5
.LBB85_5:                               # %for.inc
                                        #   in Loop: Header=BB85_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-28(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB85_1
.LBB85_6:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end85:
	.size	object_list_send_to_back, .Lfunc_end85-object_list_send_to_back
	.cfi_endproc

	.globl	object_list_move_sash_selected
	.align	16, 0x90
	.type	object_list_move_sash_selected,@function
object_list_move_sash_selected:         # @object_list_move_sash_selected
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp258:
	.cfi_def_cfa_offset 16
.Ltmp259:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp260:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
.LBB86_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB86_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB86_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB86_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB86_1 Depth=1
	movq	-32(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	object_move_sash
.LBB86_4:                               # %if.end
                                        #   in Loop: Header=BB86_1 Depth=1
	jmp	.LBB86_5
.LBB86_5:                               # %for.inc
                                        #   in Loop: Header=BB86_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB86_1
.LBB86_6:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end86:
	.size	object_list_move_sash_selected, .Lfunc_end86-object_list_move_sash_selected
	.cfi_endproc

	.globl	object_list_write_csim
	.align	16, 0x90
	.type	object_list_write_csim,@function
object_list_write_csim:                 # @object_list_write_csim
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp261:
	.cfi_def_cfa_offset 16
.Ltmp262:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp263:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -32(%rbp)
.LBB87_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB87_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB87_1 Depth=1
	movabsq	$.L.str.4, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$0, %al
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	*%rcx
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	168(%rcx), %rcx
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rcx
	movabsq	$.L.str.5, %rdi
	movabsq	$.L.str, %rdx
	movq	-40(%rbp), %rcx
	movq	48(%rcx), %rsi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %r8
	callq	write_xml_attrib
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str, %rdx
	movq	-40(%rbp), %rcx
	movq	40(%rcx), %rsi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %r8
	callq	write_xml_attrib
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str, %rdx
	movq	-40(%rbp), %rcx
	movq	56(%rcx), %rsi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %r8
	callq	write_xml_attrib
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str, %rdx
	movq	-40(%rbp), %rcx
	movq	64(%rcx), %rsi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %r8
	callq	write_xml_attrib
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str, %rdx
	movq	-40(%rbp), %rcx
	movq	72(%rcx), %rsi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %r8
	callq	write_xml_attrib
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str, %rdx
	movq	-40(%rbp), %rcx
	movq	80(%rcx), %rsi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %r8
	callq	write_xml_attrib
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.12, %rdx
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rsi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %r8
	callq	write_xml_attrib
	movabsq	$.L.str.13, %rsi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	*%rcx
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB87_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB87_1
.LBB87_4:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end87:
	.size	object_list_write_csim, .Lfunc_end87-object_list_write_csim
	.cfi_endproc

	.align	16, 0x90
	.type	write_xml_attrib,@function
write_xml_attrib:                       # @write_xml_attrib
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp264:
	.cfi_def_cfa_offset 16
.Ltmp265:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp266:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-16(%rbp), %rcx
	cmpb	$0, (%rcx)
	je	.LBB88_2
# BB#1:                                 # %if.then
	movq	$-1, %rsi
	movq	-16(%rbp), %rdi
	callq	g_markup_escape_text
	movabsq	$.L.str.17, %rsi
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movb	$0, %al
	movq	-56(%rbp), %r8          # 8-byte Reload
	callq	*%r8
	movq	-48(%rbp), %rdi
	callq	g_free
	jmp	.LBB88_5
.LBB88_2:                               # %if.else
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB88_4
# BB#3:                                 # %if.then.2
	movabsq	$.L.str.18, %rsi
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movb	$0, %al
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	*%rcx
.LBB88_4:                               # %if.end
	jmp	.LBB88_5
.LBB88_5:                               # %if.end.3
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end88:
	.size	write_xml_attrib, .Lfunc_end88-write_xml_attrib
	.cfi_endproc

	.globl	object_list_write_cern
	.align	16, 0x90
	.type	object_list_write_cern,@function
object_list_write_cern:                 # @object_list_write_cern
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp267:
	.cfi_def_cfa_offset 16
.Ltmp268:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp269:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -32(%rbp)
.LBB89_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB89_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB89_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	176(%rax), %rax
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
	movabsq	$.L.str.14, %rsi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$0, %al
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	*%rcx
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB89_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB89_1
.LBB89_4:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end89:
	.size	object_list_write_cern, .Lfunc_end89-object_list_write_cern
	.cfi_endproc

	.globl	object_list_write_ncsa
	.align	16, 0x90
	.type	object_list_write_ncsa,@function
object_list_write_ncsa:                 # @object_list_write_ncsa
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp270:
	.cfi_def_cfa_offset 16
.Ltmp271:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp272:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -32(%rbp)
.LBB90_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB90_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB90_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB90_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB90_1 Depth=1
	movabsq	$.L.str.15, %rsi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	48(%rcx), %rdx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$0, %al
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	*%rcx
.LBB90_4:                               # %if.end
                                        #   in Loop: Header=BB90_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	184(%rax), %rax
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
	movabsq	$.L.str.16, %rsi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movb	$0, %al
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	*%rdx
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB90_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB90_1
.LBB90_6:                               # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end90:
	.size	object_list_write_ncsa, .Lfunc_end90-object_list_write_ncsa
	.cfi_endproc

	.type	_paste_buffer,@object   # @_paste_buffer
	.local	_paste_buffer
	.comm	_paste_buffer,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1

	.type	do_object_locked_dialog.dialog,@object # @do_object_locked_dialog.dialog
	.local	do_object_locked_dialog.dialog
	.comm	do_object_locked_dialog.dialog,8,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Object locked"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"\n  You cannot delete the selected object  \nsince it is currently being edited.\n"
	.size	.L.str.2, 80

	.type	object_on_button_press.factory,@object # @object_on_button_press.factory
	.local	object_on_button_press.factory
	.comm	object_on_button_press.factory,8,8
	.type	object_on_button_press.obj,@object # @object_on_button_press.obj
	.local	object_on_button_press.obj
	.comm	object_on_button_press.obj,8,8
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"motion-notify-event"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"<area shape="
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"alt"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"target"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"onmouseover"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"onmouseout"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"onfocus"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"onblur"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"href"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	" nohref=\"nohref\""
	.size	.L.str.12, 17

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	" />\n"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	" %s\n"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"# %s\n"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"\n"
	.size	.L.str.16, 2

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	" %s=\"%s\""
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	" %s"
	.size	.L.str.18, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
