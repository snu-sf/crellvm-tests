	.text
	.file	"imap_taglist.bc"
	.globl	taglist_create
	.align	16, 0x90
	.type	taglist_create,@function
taglist_create:                         # @taglist_create
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
	movl	%eax, %edi
	movl	$8, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	taglist_create, .Lfunc_end0-taglist_create
	.cfi_endproc

	.globl	taglist_clone
	.align	16, 0x90
	.type	taglist_clone,@function
taglist_clone:                          # @taglist_clone
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
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	taglist_create
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	taglist_copy
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	taglist_clone, .Lfunc_end1-taglist_clone
	.cfi_endproc

	.globl	taglist_copy
	.align	16, 0x90
	.type	taglist_copy,@function
taglist_copy:                           # @taglist_copy
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
	movq	-16(%rbp), %rdi
	callq	taglist_remove_all
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB2_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	tag_clone
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_append
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	taglist_copy, .Lfunc_end2-taglist_copy
	.cfi_endproc

	.align	16, 0x90
	.type	taglist_remove_all,@function
taglist_remove_all:                     # @taglist_remove_all
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
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB3_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	tag_destruct
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB3_1
.LBB3_4:                                # %for.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_list_free
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	taglist_remove_all, .Lfunc_end3-taglist_remove_all
	.cfi_endproc

	.align	16, 0x90
	.type	tag_clone,@function
tag_clone:                              # @tag_clone
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
	movq	(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	callq	tag_create
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	tag_clone, .Lfunc_end4-tag_clone
	.cfi_endproc

	.globl	taglist_destruct
	.align	16, 0x90
	.type	taglist_destruct,@function
taglist_destruct:                       # @taglist_destruct
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	taglist_remove_all
	movq	-8(%rbp), %rdi
	callq	g_free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	taglist_destruct, .Lfunc_end5-taglist_destruct
	.cfi_endproc

	.globl	taglist_set
	.align	16, 0x90
	.type	taglist_set,@function
taglist_set:                            # @taglist_set
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -32(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB6_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	g_ascii_strcasecmp
	cmpl	$0, %eax
	jne	.LBB6_4
# BB#3:                                 # %if.then
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_strreplace
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB6_7
.LBB6_4:                                # %if.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_5
.LBB6_5:                                # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB6_1
.LBB6_6:                                # %for.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	tag_create
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_append
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
.LBB6_7:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	taglist_set, .Lfunc_end6-taglist_set
	.cfi_endproc

	.align	16, 0x90
	.type	tag_create,@function
tag_create:                             # @tag_create
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
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$16, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	g_malloc_n
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_strdup
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	tag_create, .Lfunc_end7-tag_create
	.cfi_endproc

	.globl	taglist_write
	.align	16, 0x90
	.type	taglist_write,@function
taglist_write:                          # @taglist_write
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
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB8_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	tag_write
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB8_1
.LBB8_4:                                # %for.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	taglist_write, .Lfunc_end8-taglist_write
	.cfi_endproc

	.align	16, 0x90
	.type	tag_write,@function
tag_write:                              # @tag_write
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
	subq	$16, %rsp
	movabsq	$.L.str, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rsi
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -12(%rbp)         # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	tag_write, .Lfunc_end9-tag_write
	.cfi_endproc

	.align	16, 0x90
	.type	tag_destruct,@function
tag_destruct:                           # @tag_destruct
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
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	callq	g_free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	tag_destruct, .Lfunc_end10-tag_destruct
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\"%s\"=\"%s\"\n"
	.size	.L.str, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
