	.text
	.file	"gimppixbuf.bc"
	.globl	gimp_pixbuf_get_formats
	.align	16, 0x90
	.type	gimp_pixbuf_get_formats,@function
gimp_pixbuf_get_formats:                # @gimp_pixbuf_get_formats
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
	callq	gdk_pixbuf_get_formats
	movabsq	$gimp_pixbuf_format_compare, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_slist_sort
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_pixbuf_get_formats, .Lfunc_end0-gimp_pixbuf_get_formats
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pixbuf_format_compare,@function
gimp_pixbuf_format_compare:             # @gimp_pixbuf_format_compare
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gdk_pixbuf_format_get_name
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gdk_pixbuf_format_get_name
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-24(%rbp), %rdi
	movl	$.L.str.3, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movl	$-1, -36(%rbp)
	jmp	.LBB1_17
.LBB1_2:                                # %if.else
	movq	-32(%rbp), %rdi
	movl	$.L.str.3, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %if.then.6
	movl	$1, -36(%rbp)
	jmp	.LBB1_16
.LBB1_4:                                # %if.else.7
	movq	-24(%rbp), %rdi
	movl	$.L.str.4, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_6
# BB#5:                                 # %if.then.10
	movl	$1, -36(%rbp)
	jmp	.LBB1_15
.LBB1_6:                                # %if.else.11
	movq	-32(%rbp), %rdi
	movl	$.L.str.4, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_8
# BB#7:                                 # %if.then.14
	movl	$-1, -36(%rbp)
	jmp	.LBB1_14
.LBB1_8:                                # %if.else.15
	movq	-24(%rbp), %rdi
	movl	$.L.str.5, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_10
# BB#9:                                 # %if.then.18
	movl	$1, -36(%rbp)
	jmp	.LBB1_13
.LBB1_10:                               # %if.else.19
	movq	-32(%rbp), %rdi
	movl	$.L.str.5, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_12
# BB#11:                                # %if.then.22
	movl	$-1, -36(%rbp)
.LBB1_12:                               # %if.end
	jmp	.LBB1_13
.LBB1_13:                               # %if.end.23
	jmp	.LBB1_14
.LBB1_14:                               # %if.end.24
	jmp	.LBB1_15
.LBB1_15:                               # %if.end.25
	jmp	.LBB1_16
.LBB1_16:                               # %if.end.26
	jmp	.LBB1_17
.LBB1_17:                               # %if.end.27
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	g_free
	movl	-36(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_pixbuf_format_compare, .Lfunc_end1-gimp_pixbuf_format_compare
	.cfi_endproc

	.globl	gimp_pixbuf_targets_add
	.align	16, 0x90
	.type	gimp_pixbuf_targets_add,@function
gimp_pixbuf_targets_add:                # @gimp_pixbuf_targets_add
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pixbuf_targets_add, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_23
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	callq	gimp_pixbuf_get_formats
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB2_6:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_11 Depth 2
	cmpq	$0, -32(%rbp)
	je	.LBB2_22
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB2_10
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	-40(%rbp), %rdi
	callq	gdk_pixbuf_format_is_writable
	cmpl	$0, %eax
	jne	.LBB2_10
# BB#9:                                 # %if.then.4
                                        #   in Loop: Header=BB2_6 Depth=1
	jmp	.LBB2_18
.LBB2_10:                               # %if.end.5
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	-40(%rbp), %rdi
	callq	gdk_pixbuf_format_get_mime_types
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB2_11:                               # %for.cond.7
                                        #   Parent Loop BB2_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_17
# BB#12:                                # %for.body.9
                                        #   in Loop: Header=BB2_11 Depth=2
	cmpl	$0, -16(%rbp)
	je	.LBB2_15
# BB#13:                                # %land.lhs.true.11
                                        #   in Loop: Header=BB2_11 Depth=2
	movq	-56(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.2, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_15
# BB#14:                                # %if.then.14
                                        #   in Loop: Header=BB2_11 Depth=2
	jmp	.LBB2_16
.LBB2_15:                               # %if.end.15
                                        #   in Loop: Header=BB2_11 Depth=2
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gdk_atom_intern
	xorl	%edx, %edx
	movl	-12(%rbp), %ecx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_target_list_add
.LBB2_16:                               # %for.inc
                                        #   in Loop: Header=BB2_11 Depth=2
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB2_11
.LBB2_17:                               # %for.end
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_strfreev
.LBB2_18:                               # %for.inc.17
                                        #   in Loop: Header=BB2_6 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB2_20
# BB#19:                                # %cond.true
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB2_21
.LBB2_20:                               # %cond.false
                                        #   in Loop: Header=BB2_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB2_21
.LBB2_21:                               # %cond.end
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB2_6
.LBB2_22:                               # %for.end.19
	movq	-24(%rbp), %rdi
	callq	g_slist_free
.LBB2_23:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_pixbuf_targets_add, .Lfunc_end2-gimp_pixbuf_targets_add
	.cfi_endproc

	.globl	gimp_pixbuf_targets_remove
	.align	16, 0x90
	.type	gimp_pixbuf_targets_remove,@function
gimp_pixbuf_targets_remove:             # @gimp_pixbuf_targets_remove
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pixbuf_targets_remove, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_17
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	callq	gimp_pixbuf_get_formats
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB3_6:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_8 Depth 2
	cmpq	$0, -24(%rbp)
	je	.LBB3_16
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gdk_pixbuf_format_get_mime_types
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB3_8:                                # %for.cond.2
                                        #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_11
# BB#9:                                 # %for.body.4
                                        #   in Loop: Header=BB3_8 Depth=2
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gdk_atom_intern
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_target_list_remove
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB3_8 Depth=2
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB3_8
.LBB3_11:                               # %for.end
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-40(%rbp), %rdi
	callq	g_strfreev
# BB#12:                                # %for.inc.6
                                        #   in Loop: Header=BB3_6 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB3_14
# BB#13:                                # %cond.true
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB3_15
.LBB3_14:                               # %cond.false
                                        #   in Loop: Header=BB3_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB3_15
.LBB3_15:                               # %cond.end
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB3_6
.LBB3_16:                               # %for.end.8
	movq	-16(%rbp), %rdi
	callq	g_slist_free
.LBB3_17:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_pixbuf_targets_remove, .Lfunc_end3-gimp_pixbuf_targets_remove
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Widgets"
	.size	.L.str, 13

	.type	.L__func__.gimp_pixbuf_targets_add,@object # @__func__.gimp_pixbuf_targets_add
.L__func__.gimp_pixbuf_targets_add:
	.asciz	"gimp_pixbuf_targets_add"
	.size	.L__func__.gimp_pixbuf_targets_add, 24

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"target_list != NULL"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"image/x-icon"
	.size	.L.str.2, 13

	.type	.L__func__.gimp_pixbuf_targets_remove,@object # @__func__.gimp_pixbuf_targets_remove
.L__func__.gimp_pixbuf_targets_remove:
	.asciz	"gimp_pixbuf_targets_remove"
	.size	.L__func__.gimp_pixbuf_targets_remove, 27

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"png"
	.size	.L.str.3, 4

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"jpeg"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gif"
	.size	.L.str.5, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
