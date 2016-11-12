	.text
	.file	"tile-rowhints.bc"
	.globl	tile_allocate_rowhints
	.align	16, 0x90
	.type	tile_allocate_rowhints,@function
tile_allocate_rowhints:                 # @tile_allocate_rowhints
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 24(%rdi)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	$64, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	-8(%rbp), %rdi
	movq	%rax, 24(%rdi)
.LBB0_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tile_allocate_rowhints, .Lfunc_end0-tile_allocate_rowhints
	.cfi_endproc

	.globl	tile_get_rowhint
	.align	16, 0x90
	.type	tile_get_rowhint,@function
tile_get_rowhint:                       # @tile_get_rowhint
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 24(%rdi)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB1_3
.LBB1_2:                                # %if.end
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -1(%rbp)
.LBB1_3:                                # %return
	movzbl	-1(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	tile_get_rowhint, .Lfunc_end1-tile_get_rowhint
	.cfi_endproc

	.globl	tile_set_rowhint
	.align	16, 0x90
	.type	tile_set_rowhint,@function
tile_set_rowhint:                       # @tile_set_rowhint
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
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movb	%al, -13(%rbp)
	movb	-13(%rbp), %al
	movslq	-12(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movb	%al, (%rcx,%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	tile_set_rowhint, .Lfunc_end2-tile_set_rowhint
	.cfi_endproc

	.globl	tile_update_rowhints
	.align	16, 0x90
	.type	tile_update_rowhints,@function
tile_update_rowhints:                   # @tile_update_rowhints
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	tile_allocate_rowhints
	movq	-8(%rbp), %rdi
	callq	tile_bpp
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	callq	tile_ewidth
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	decl	%eax
	movl	%eax, %edi
	subl	$3, %eax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	%eax, -60(%rbp)         # 4-byte Spill
	ja	.LBB3_46
# BB#49:                                # %entry
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI3_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB3_1:                                # %sw.bb
	movl	-12(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB3_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movl	-12(%rbp), %ecx
	addl	-16(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movl	-40(%rbp), %esi
	callq	tile_set_rowhint
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB3_2
.LBB3_5:                                # %for.end
	jmp	.LBB3_48
.LBB3_6:                                # %sw.bb.2
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	callq	tile_data_pointer
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %edx
	movl	%edx, -40(%rbp)
.LBB3_7:                                # %for.cond.4
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_13 Depth 2
	movl	-40(%rbp), %eax
	movl	-12(%rbp), %ecx
	addl	-16(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_25
# BB#8:                                 # %for.body.7
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	-8(%rbp), %rdi
	movl	-40(%rbp), %esi
	callq	tile_get_rowhint
	movb	%al, -41(%rbp)
	movzbl	-41(%rbp), %esi
	cmpl	$0, %esi
	jne	.LBB3_22
# BB#9:                                 # %if.then
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	-24(%rbp), %rax
	movb	3(%rax), %cl
	movb	%cl, -42(%rbp)
	movzbl	-42(%rbp), %edx
	cmpl	$0, %edx
	je	.LBB3_11
# BB#10:                                # %lor.lhs.false
                                        #   in Loop: Header=BB3_7 Depth=1
	movzbl	-42(%rbp), %eax
	cmpl	$255, %eax
	jne	.LBB3_20
.LBB3_11:                               # %if.then.17
                                        #   in Loop: Header=BB3_7 Depth=1
	cmpl	$1, -32(%rbp)
	jle	.LBB3_19
# BB#12:                                # %if.then.20
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	$1, -36(%rbp)
.LBB3_13:                               # %for.cond.21
                                        #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB3_18
# BB#14:                                # %for.body.24
                                        #   in Loop: Header=BB3_13 Depth=2
	movl	-36(%rbp), %eax
	shll	$2, %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movzbl	-42(%rbp), %esi
	cmpl	%esi, %eax
	je	.LBB3_16
# BB#15:                                # %if.then.31
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	$3, %edx
	movq	-8(%rbp), %rdi
	movl	-40(%rbp), %esi
	callq	tile_set_rowhint
	jmp	.LBB3_23
.LBB3_16:                               # %if.end
                                        #   in Loop: Header=BB3_13 Depth=2
	jmp	.LBB3_17
.LBB3_17:                               # %for.inc.32
                                        #   in Loop: Header=BB3_13 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB3_13
.LBB3_18:                               # %for.end.34
                                        #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_19
.LBB3_19:                               # %if.end.35
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	$1, %eax
	movl	$2, %ecx
	movq	-8(%rbp), %rdi
	movl	-40(%rbp), %esi
	movzbl	-42(%rbp), %edx
	cmpl	$0, %edx
	cmovel	%ecx, %eax
	movb	%al, %r8b
	movzbl	%r8b, %edx
	callq	tile_set_rowhint
	jmp	.LBB3_21
.LBB3_20:                               # %if.else
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	$3, %edx
	movq	-8(%rbp), %rdi
	movl	-40(%rbp), %esi
	callq	tile_set_rowhint
.LBB3_21:                               # %if.end.40
                                        #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_22
.LBB3_22:                               # %if.end.41
                                        #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_23
.LBB3_23:                               # %next_row4
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	-32(%rbp), %eax
	shll	$2, %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
# BB#24:                                # %for.inc.43
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB3_7
.LBB3_25:                               # %for.end.45
	jmp	.LBB3_48
.LBB3_26:                               # %sw.bb.46
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	callq	tile_data_pointer
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %edx
	movl	%edx, -40(%rbp)
.LBB3_27:                               # %for.cond.48
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_33 Depth 2
	movl	-40(%rbp), %eax
	movl	-12(%rbp), %ecx
	addl	-16(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_45
# BB#28:                                # %for.body.52
                                        #   in Loop: Header=BB3_27 Depth=1
	movq	-8(%rbp), %rdi
	movl	-40(%rbp), %esi
	callq	tile_get_rowhint
	movb	%al, -43(%rbp)
	movzbl	-43(%rbp), %esi
	cmpl	$0, %esi
	jne	.LBB3_42
# BB#29:                                # %if.then.58
                                        #   in Loop: Header=BB3_27 Depth=1
	movq	-24(%rbp), %rax
	movb	1(%rax), %cl
	movb	%cl, -44(%rbp)
	movzbl	-44(%rbp), %edx
	cmpl	$0, %edx
	je	.LBB3_31
# BB#30:                                # %lor.lhs.false.64
                                        #   in Loop: Header=BB3_27 Depth=1
	movzbl	-44(%rbp), %eax
	cmpl	$255, %eax
	jne	.LBB3_40
.LBB3_31:                               # %if.then.68
                                        #   in Loop: Header=BB3_27 Depth=1
	cmpl	$1, -32(%rbp)
	jle	.LBB3_39
# BB#32:                                # %if.then.71
                                        #   in Loop: Header=BB3_27 Depth=1
	movl	$1, -36(%rbp)
.LBB3_33:                               # %for.cond.72
                                        #   Parent Loop BB3_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB3_38
# BB#34:                                # %for.body.75
                                        #   in Loop: Header=BB3_33 Depth=2
	movl	-36(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movzbl	-44(%rbp), %esi
	cmpl	%esi, %eax
	je	.LBB3_36
# BB#35:                                # %if.then.84
                                        #   in Loop: Header=BB3_27 Depth=1
	movl	$3, %edx
	movq	-8(%rbp), %rdi
	movl	-40(%rbp), %esi
	callq	tile_set_rowhint
	jmp	.LBB3_43
.LBB3_36:                               # %if.end.85
                                        #   in Loop: Header=BB3_33 Depth=2
	jmp	.LBB3_37
.LBB3_37:                               # %for.inc.86
                                        #   in Loop: Header=BB3_33 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB3_33
.LBB3_38:                               # %for.end.88
                                        #   in Loop: Header=BB3_27 Depth=1
	jmp	.LBB3_39
.LBB3_39:                               # %if.end.89
                                        #   in Loop: Header=BB3_27 Depth=1
	movl	$1, %eax
	movl	$2, %ecx
	movq	-8(%rbp), %rdi
	movl	-40(%rbp), %esi
	movzbl	-44(%rbp), %edx
	cmpl	$0, %edx
	cmovel	%ecx, %eax
	movb	%al, %r8b
	movzbl	%r8b, %edx
	callq	tile_set_rowhint
	jmp	.LBB3_41
.LBB3_40:                               # %if.else.95
                                        #   in Loop: Header=BB3_27 Depth=1
	movl	$3, %edx
	movq	-8(%rbp), %rdi
	movl	-40(%rbp), %esi
	callq	tile_set_rowhint
.LBB3_41:                               # %if.end.96
                                        #   in Loop: Header=BB3_27 Depth=1
	jmp	.LBB3_42
.LBB3_42:                               # %if.end.97
                                        #   in Loop: Header=BB3_27 Depth=1
	jmp	.LBB3_43
.LBB3_43:                               # %next_row2
                                        #   in Loop: Header=BB3_27 Depth=1
	movl	-32(%rbp), %eax
	shll	$1, %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
# BB#44:                                # %for.inc.101
                                        #   in Loop: Header=BB3_27 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB3_27
.LBB3_45:                               # %for.end.103
	jmp	.LBB3_48
.LBB3_46:                               # %sw.default
	jmp	.LBB3_47
.LBB3_47:                               # %do.body
	movabsq	$.L.str, %rdi
	movl	$8, %esi
	movabsq	$.L.str.1, %rdx
	movabsq	$.L.str.2, %rcx
	movl	$260, %r8d              # imm = 0x104
	movabsq	$.L__func__.tile_update_rowhints, %r9
	movb	$0, %al
	callq	g_log
.LBB3_48:                               # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	tile_update_rowhints, .Lfunc_end3-tile_update_rowhints
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_1
	.quad	.LBB3_26
	.quad	.LBB3_1
	.quad	.LBB3_6

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Base"
	.size	.L.str, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.1, 45

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"tile-rowhints.c"
	.size	.L.str.2, 16

	.type	.L__func__.tile_update_rowhints,@object # @__func__.tile_update_rowhints
.L__func__.tile_update_rowhints:
	.asciz	"tile_update_rowhints"
	.size	.L__func__.tile_update_rowhints, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
