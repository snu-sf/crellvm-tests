	.text
	.file	"zmisc2.bc"
	.align	16, 0x90
	.type	zlanguagelevel,@function
zlanguagelevel:                         # @zlanguagelevel
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	leaq	16(%rax), %rcx
	cmpq	640(%rdi), %rcx
	jbe	.LBB0_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	retq
.LBB0_2:                                # %if.else
	movq	%rcx, 624(%rdi)
	movslq	80(%rdi), %rcx
	movq	%rcx, 24(%rax)
	movw	$2816, 16(%rax)         # imm = 0xB00
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	zlanguagelevel, .Lfunc_end0-zlanguagelevel
	.cfi_endproc

	.align	16, 0x90
	.type	zsetlanguagelevel,@function
zsetlanguagelevel:                      # @zsetlanguagelevel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 112
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB1_30
# BB#1:                                 # %if.end
	movq	8(%rbx), %r12
	movslq	80(%r14), %r13
	xorl	%ebp, %ebp
	cmpq	%r13, %r12
	je	.LBB1_16
# BB#2:                                 # %if.then.5
	leaq	368(%r14), %r15
	movq	%r15, %rdi
	callq	ref_stack_count
	leal	-2(%rax), %esi
	movq	%r15, %rdi
	callq	ref_stack_index
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$-15, %ebp
	testl	%r12d, %r12d
	jle	.LBB1_29
# BB#3:                                 # %lor.lhs.false.i
	leaq	504(%r14), %rdi
	movq	%rdi, (%rsp)            # 8-byte Spill
	leaq	48(%rsp), %rdx
	movl	$.L.str.2, %esi
	callq	dict_find_string
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	orl	$2, %eax
	cmpl	%r12d, %eax
	jl	.LBB1_29
# BB#4:                                 # %if.end.i
	leaq	48(%rsp), %rdx
	movl	$.L.str.3, %esi
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	dict_find_string
	movl	$-21, %ebp
	testl	%eax, %eax
	jle	.LBB1_29
# BB#5:                                 # %while.cond.preheader.i
	xorl	%ebp, %ebp
	cmpl	%r12d, %r13d
	je	.LBB1_14
	.align	16, 0x90
.LBB1_6:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, %r13d
	jne	.LBB1_7
# BB#17:                                # %sw.bb.35.i
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	$.L.str.2, %esi
	jmp	.LBB1_12
.LBB1_7:                                # %while.body.i
                                        #   in Loop: Header=BB1_6 Depth=1
	cmpl	$1, %r13d
	jne	.LBB1_18
# BB#8:                                 # %sw.bb.i
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	48(%rsp), %rdi
	movl	$.L.str.4, %esi
	leaq	16(%rsp), %rdx
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB1_11
# BB#9:                                 # %if.then.23.i
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	16(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$2, %ecx
	jne	.LBB1_28
# BB#10:                                # %if.end.28.i
                                        #   in Loop: Header=BB1_6 Depth=1
	movups	(%rax), %xmm0
	movq	8(%rsp), %rax           # 8-byte Reload
	movups	%xmm0, (%rax)
.LBB1_11:                               # %if.end.29.i
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	8(%r14), %rax
	movq	192(%rax), %rax
	movl	$1, 128(%rax)
	movl	$.L.str.3, %esi
.LBB1_12:                               # %if.end.29.i
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	%r14, %rdi
	callq	swap_level_dict
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_29
# BB#13:                                # %while.cond.backedge.i
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	$2, %r13d
	cmpl	$2, %r12d
	jne	.LBB1_6
	jmp	.LBB1_14
.LBB1_30:                               # %if.then
	movq	%rbx, %rdi
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB1_18:                               # %sw.epilog.i
	cmpl	$3, %r12d
	jne	.LBB1_19
# BB#26:                                # %sw.bb.69.i
	movl	$.L.str.2, %esi
	jmp	.LBB1_27
.LBB1_19:                               # %sw.epilog.i
	movl	$-100, %ebp
	cmpl	$1, %r12d
	jne	.LBB1_29
# BB#20:                                # %sw.bb.41.i
	movq	8(%rsp), %rbp           # 8-byte Reload
	movq	%rbp, %rdi
	callq	dict_first
	leaq	16(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%rbp, %r12
	movl	%eax, %esi
	callq	dict_next
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_25
# BB#21:                                # %while.body.48.lr.ph.i
	leaq	16(%rsp), %r13
.LBB1_22:                               # %while.body.48.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	17(%rsp), %eax
	cmpl	$13, %eax
	jne	.LBB1_24
# BB#23:                                # %if.then.56.i
                                        #   in Loop: Header=BB1_22 Depth=1
	movq	8(%r14), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	%r13, %rsi
	callq	names_invalidate_value_cache
.LBB1_24:                               # %while.cond.43.backedge.i
                                        #   in Loop: Header=BB1_22 Depth=1
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r13, %rdx
	callq	dict_next
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB1_22
.LBB1_25:                               # %while.end.i
	movq	(%rsp), %rax            # 8-byte Reload
	movups	(%rax), %xmm0
	movups	%xmm0, (%r12)
	movq	8(%r14), %rax
	movq	192(%rax), %rax
	movl	$0, 128(%rax)
	movl	$.L.str.3, %esi
.LBB1_27:                               # %set_language_level.exit
	movq	%r14, %rdi
	callq	swap_level_dict
	movl	%eax, %ebp
.LBB1_14:                               # %set_language_level.exit
	movq	%r15, %rdi
	callq	dstack_set_top
	testl	%ebp, %ebp
	js	.LBB1_29
# BB#15:                                # %set_language_level.exit.if.end.14_crit_edge
	movq	8(%rbx), %r12
	movq	624(%r14), %rbx
.LBB1_16:                               # %if.end.14
	movl	%r12d, 80(%r14)
	addq	$-16, %rbx
	movq	%rbx, 624(%r14)
.LBB1_29:                               # %cleanup
	movl	%ebp, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_28:                               # %cleanup.i
	movl	$-20, %ebp
	jmp	.LBB1_29
.Lfunc_end1:
	.size	zsetlanguagelevel, .Lfunc_end1-zsetlanguagelevel
	.cfi_endproc

	.align	16, 0x90
	.type	swap_level_dict,@function
swap_level_dict:                        # @swap_level_dict
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 192
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	504(%rbx), %rdi
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	leaq	128(%rsp), %rdx
	callq	dict_find_string
	movl	%eax, %ecx
	movl	$-21, %eax
	testl	%ecx, %ecx
	jle	.LBB2_17
# BB#1:                                 # %if.end
	movq	128(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 112(%rsp)
	leaq	112(%rsp), %rbp
	movq	%rbp, %rdi
	callq	dict_first
	leaq	80(%rsp), %rdx
	movq	%rbp, %rdi
	movl	%eax, %esi
	callq	dict_next
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_2
# BB#3:                                 # %while.body.lr.ph
	leaq	80(%rsp), %r12
	leaq	32(%rsp), %r13
	leaq	112(%rsp), %r15
                                        # implicit-def: EAX
	movl	%eax, 4(%rsp)           # 4-byte Spill
	.align	16, 0x90
.LBB2_4:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_9 Depth 2
	movzbl	97(%rsp), %eax
	cmpl	$2, %eax
	jne	.LBB2_16
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB2_4 Depth=1
	leaq	96(%rsp), %rdi
	movq	%r12, %rsi
	leaq	72(%rsp), %rdx
	callq	dict_find
	testl	%eax, %eax
	jle	.LBB2_16
# BB#6:                                 # %land.lhs.true.13
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	8(%rbx), %rdi
	movq	72(%rsp), %rdx
	leaq	96(%rsp), %rsi
	callq	obj_eq
	testl	%eax, %eax
	je	.LBB2_16
# BB#7:                                 # %if.then.16
                                        #   in Loop: Header=BB2_4 Depth=1
	leaq	96(%rsp), %rdi
	callq	dict_first
	movl	%eax, %r14d
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%r12, %rsi
	leaq	72(%rsp), %rdx
	callq	dict_find
	testl	%eax, %eax
	jle	.LBB2_13
# BB#8:                                 # %if.end.26
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	72(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 16(%rsp)
	.align	16, 0x90
.LBB2_9:                                # %while.cond.27
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	96(%rsp), %rdi
	movl	%r14d, %esi
	movq	%r13, %rdx
	callq	dict_next
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_13
# BB#10:                                # %while.body.33
                                        #   in Loop: Header=BB2_9 Depth=2
	movq	8(%rbx), %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	obj_eq
	testl	%eax, %eax
	jne	.LBB2_9
# BB#11:                                # %if.then.40
                                        #   in Loop: Header=BB2_9 Depth=2
	movq	%rbx, %rdi
	movq	%r13, %rsi
	leaq	16(%rsp), %rdx
	leaq	96(%rsp), %rcx
	callq	swap_entry
	testl	%eax, %eax
	movl	4(%rsp), %ecx           # 4-byte Reload
	cmovsl	%eax, %ecx
	movl	%ecx, 4(%rsp)           # 4-byte Spill
	jns	.LBB2_9
	jmp	.LBB2_12
	.align	16, 0x90
.LBB2_16:                               # %if.else
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	8(%rsp), %rdx           # 8-byte Reload
	movq	%r15, %rcx
	callq	swap_entry
	movq	%r15, %r14
	testl	%eax, %eax
	jns	.LBB2_14
	jmp	.LBB2_17
.LBB2_13:                               # %cleanup.48.thread
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	%r15, %r14
	.align	16, 0x90
.LBB2_14:                               # %while.cond.backedge
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	%r14, %r15
	movq	%r15, %rdi
	movl	%ebp, %esi
	movq	%r12, %rdx
	callq	dict_next
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB2_4
# BB#15:
	xorl	%eax, %eax
	jmp	.LBB2_17
.LBB2_2:
	xorl	%eax, %eax
.LBB2_17:                               # %cleanup.68
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_12:                               # %cleanup.48
	movl	4(%rsp), %eax           # 4-byte Reload
	jmp	.LBB2_17
.Lfunc_end2:
	.size	swap_level_dict, .Lfunc_end2-swap_level_dict
	.cfi_endproc

	.align	16, 0x90
	.type	swap_entry,@function
swap_entry:                             # @swap_entry
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 80
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r12
	leaq	16(%rsp), %rdx
	movq	%r15, %rdi
	callq	dict_find
	cmpl	$1, %eax
	jne	.LBB3_1
# BB#2:                                 # %sw.bb.1
	movq	16(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, (%rsp)
	jmp	.LBB3_3
.LBB3_1:                                # %sw.bb
	movw	$3584, (%rsp)           # imm = 0xE00
.LBB3_3:                                # %sw.epilog
	movzwl	(%r14), %eax
	movl	%eax, %r13d
	andl	$12, %r13d
	orl	$12, %eax
	movw	%ax, (%r14)
	addq	$368, %r12              # imm = 0x170
	leaq	(%rsp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rcx
	callq	dict_put
	movzbl	17(%rbx), %eax
	cmpl	$14, %eax
	jne	.LBB3_7
# BB#4:                                 # %if.then
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	dict_undef
	cmpl	$-21, %eax
	jne	.LBB3_8
# BB#5:                                 # %land.lhs.true
	xorl	%eax, %eax
	movzbl	1(%rsp), %ecx
	cmpl	$14, %ecx
	je	.LBB3_8
# BB#6:                                 # %select.mid
	movl	$-21, %eax
	jmp	.LBB3_8
.LBB3_7:                                # %if.else
	movzwl	(%r15), %eax
	movl	%eax, %ebp
	andl	$12, %ebp
	orl	$12, %eax
	movw	%ax, (%r15)
	leaq	16(%rbx), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rcx
	callq	dict_put
	movzwl	(%r15), %ecx
	andl	$65523, %ecx            # imm = 0xFFF3
	orl	%ebp, %ecx
	movw	%cx, (%r15)
.LBB3_8:                                # %if.end.55
	movzwl	(%r14), %ecx
	andl	$65523, %ecx            # imm = 0xFFF3
	movswl	%r13w, %edx
	orl	%ecx, %edx
	movw	%dx, (%r14)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	swap_entry, .Lfunc_end3-swap_entry
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"0.languagelevel"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"1.setlanguagelevel"
	.size	.L.str.1, 19

	.type	zmisc2_op_defs,@object  # @zmisc2_op_defs
	.section	.rodata,"a",@progbits
	.globl	zmisc2_op_defs
	.align	16
zmisc2_op_defs:
	.quad	.L.str
	.quad	zlanguagelevel
	.quad	.L.str.1
	.quad	zsetlanguagelevel
	.zero	16
	.size	zmisc2_op_defs, 48

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"ll3dict"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"level2dict"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"globaldict"
	.size	.L.str.4, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
