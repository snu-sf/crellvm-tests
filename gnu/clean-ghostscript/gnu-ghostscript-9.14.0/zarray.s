	.text
	.file	"zarray.bc"
	.globl	zarray
	.align	16, 0x90
	.type	zarray,@function
zarray:                                 # @zarray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB0_6
# BB#1:                                 # %if.end
	movq	8(%rbx), %r15
	movl	$-15, %eax
	testq	%r15, %r15
	js	.LBB0_5
# BB#2:                                 # %if.end.5
	movl	$-13, %eax
	cmpq	$16777216, %r15         # imm = 0x1000000
	jg	.LBB0_5
# BB#3:                                 # %if.end.11
	movq	8(%r14), %rdi
	movl	$112, %edx
	movl	$.L.str, %r8d
	movq	%rbx, %rsi
	movl	%r15d, %ecx
	callq	gs_alloc_ref_array
	testl	%eax, %eax
	js	.LBB0_5
# BB#4:                                 # %if.end.19
	movq	8(%rbx), %rdi
	movl	76(%r14), %edx
	movl	%r15d, %esi
	callq	refset_null_new
	xorl	%eax, %eax
.LBB0_5:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB0_6:                                # %if.then
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.Lfunc_end0:
	.size	zarray, .Lfunc_end0-zarray
	.cfi_endproc

	.align	16, 0x90
	.type	zaload,@function
zaload:                                 # @zaload
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp9:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp10:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp12:
	.cfi_def_cfa_offset 96
.Ltmp13:
	.cfi_offset %rbx, -56
.Ltmp14:
	.cfi_offset %r12, -48
.Ltmp15:
	.cfi_offset %r13, -40
.Ltmp16:
	.cfi_offset %r14, -32
.Ltmp17:
	.cfi_offset %r15, -24
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %r13
	movq	(%r13), %r12
	movl	%r12d, %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB1_24
# BB#1:                                 # %do.body
	movl	$-7, %eax
	testb	$32, %r12b
	je	.LBB1_23
# BB#2:                                 # %do.end
	leaq	624(%r14), %rdi
	movq	8(%r13), %rbx
	movl	%r12d, %ebp
	shrl	$16, %ebp
	movq	%r12, %r15
	shrq	$32, %r15
	movl	%r15d, %ecx
	movq	640(%r14), %rax
	subq	%r13, %rax
	sarq	$4, %rax
	cmpq	%rax, %r15
	jle	.LBB1_11
# BB#3:                                 # %if.then.14
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movl	%ecx, %r13d
	movl	%r13d, %esi
	callq	ref_stack_push
	testl	%eax, %eax
	js	.LBB1_23
# BB#4:                                 # %if.end.22
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	testl	%r13d, %r13d
	movl	%r13d, 28(%rsp)         # 4-byte Spill
	movq	16(%rsp), %rdi          # 8-byte Reload
	je	.LBB1_10
# BB#5:                                 # %for.body.lr.ph
	movq	32(%rsp), %rbx          # 8-byte Reload
	.align	16, 0x90
.LBB1_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r14), %rbp
	movq	%rdi, %r13
	movq	%r15, %rsi
	callq	ref_stack_index
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	packed_get
	movzwl	(%rbx), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB1_8
# BB#7:                                 #   in Loop: Header=BB1_6 Depth=1
	addq	$2, %rbx
	jmp	.LBB1_9
	.align	16, 0x90
.LBB1_8:                                # %select.mid
                                        #   in Loop: Header=BB1_6 Depth=1
	addq	$16, %rbx
.LBB1_9:                                # %select.end
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	%r13, %rdi
	decq	%r15
	testl	%r15d, %r15d
	jne	.LBB1_6
.LBB1_10:                               # %for.end
	movq	(%rdi), %rax
	movw	%r12w, (%rax)
	movl	12(%rsp), %ecx          # 4-byte Reload
	movw	%cx, 2(%rax)
	movl	28(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 4(%rax)
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 8(%rax)
	jmp	.LBB1_22
.LBB1_24:                               # %if.then
	movq	%r13, %rdi
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB1_11:                               # %if.end.38
	movl	%r12d, %eax
	andl	$65280, %eax            # imm = 0xFF00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB1_13
# BB#12:                                # %if.then.44
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	movq	%r12, (%rsp)            # 8-byte Spill
	movq	%r15, %rdx
	shlq	$4, %rdx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	callq	memcpy
	jmp	.LBB1_19
.LBB1_13:                               # %if.else
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movq	%r12, (%rsp)            # 8-byte Spill
	testl	%ecx, %ecx
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	je	.LBB1_19
# BB#14:                                # %for.body.55.lr.ph
	movq	(%rsp), %rbp            # 8-byte Reload
	shrq	$32, %rbp
	movq	%r13, %rbx
	movq	32(%rsp), %r12          # 8-byte Reload
	.align	16, 0x90
.LBB1_15:                               # %for.body.55
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r14), %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	packed_get
	movzwl	(%r12), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB1_17
# BB#16:                                #   in Loop: Header=BB1_15 Depth=1
	addq	$2, %r12
	jmp	.LBB1_18
	.align	16, 0x90
.LBB1_17:                               # %select.mid104
                                        #   in Loop: Header=BB1_15 Depth=1
	addq	$16, %r12
.LBB1_18:                               # %select.end103
                                        #   in Loop: Header=BB1_15 Depth=1
	addq	$16, %rbx
	decl	%ebp
	jne	.LBB1_15
.LBB1_19:                               # %do.body.70
	shlq	$4, %r15
	leaq	(%r13,%r15), %rax
	cmpq	640(%r14), %rax
	jbe	.LBB1_21
# BB#20:                                # %if.then.77
	movl	28(%rsp), %eax          # 4-byte Reload
	movl	%eax, 688(%r14)
	movl	$-16, %eax
	jmp	.LBB1_23
.LBB1_21:                               # %if.else.80
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%rax, (%rcx)
	movq	(%rsp), %rcx            # 8-byte Reload
	movw	%cx, (%rax)
	movl	12(%rsp), %eax          # 4-byte Reload
	movw	%ax, 2(%r13,%r15)
	movl	28(%rsp), %eax          # 4-byte Reload
	movl	%eax, 4(%r13,%r15)
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rax, 8(%r13,%r15)
.LBB1_22:                               # %cleanup.87
	xorl	%eax, %eax
.LBB1_23:                               # %cleanup.87
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	zaload, .Lfunc_end1-zaload
	.cfi_endproc

	.align	16, 0x90
	.type	zastore,@function
zastore:                                # @zastore
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp21:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp22:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp24:
	.cfi_def_cfa_offset 80
.Ltmp25:
	.cfi_offset %rbx, -48
.Ltmp26:
	.cfi_offset %r12, -40
.Ltmp27:
	.cfi_offset %r13, -32
.Ltmp28:
	.cfi_offset %r14, -24
.Ltmp29:
	.cfi_offset %r15, -16
	movq	%rdi, %r12
	movq	624(%r12), %rbx
	movzwl	(%rbx), %eax
	movl	%eax, %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB2_11
# BB#1:                                 # %if.end
	movl	4(%rbx), %r15d
	xorl	%r13d, %r13d
	testq	%r15, %r15
	je	.LBB2_10
# BB#2:                                 # %if.end.6
	andl	$16144, %eax            # imm = 0x3F10
	movl	$-7, %r13d
	cmpl	$1040, %eax             # imm = 0x410
	jne	.LBB2_10
# BB#3:                                 # %if.end.14
	leaq	624(%r12), %r14
	movq	%rbx, %rax
	subq	632(%r12), %rax
	sarq	$4, %rax
	cmpq	%rax, %r15
	jle	.LBB2_8
# BB#4:                                 # %if.then.20
	movq	%r14, %rdi
	callq	ref_stack_count
	movl	%eax, %ecx
	movl	$-17, %eax
	cmpl	%ecx, %r15d
	jae	.LBB2_6
# BB#5:                                 # %if.end.27
	movups	(%rbx), %xmm0
	movaps	%xmm0, 16(%rsp)
	addq	$8, %r12
	movq	%r12, (%rsp)
	movq	$.L.str.4, 8(%rsp)
	leaq	16(%rsp), %rsi
	xorl	%r13d, %r13d
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	%r14, %rdi
	movl	%r15d, %edx
	callq	ref_stack_store
	testl	%eax, %eax
	js	.LBB2_6
# BB#7:                                 # %cleanup
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	ref_stack_pop
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	ref_stack_index
	movaps	16(%rsp), %xmm0
	movups	%xmm0, (%rax)
	jmp	.LBB2_10
.LBB2_11:                               # %if.then
	movq	%rbx, %rdi
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.LBB2_8:                                # %if.else
	movq	%r15, %rax
	shlq	$4, %rax
	movq	%rbx, %rdx
	subq	%rax, %rdx
	addq	$8, %r12
	xorl	%esi, %esi
	movl	$.L.str.4, %r9d
	movq	%rbx, %rdi
	movl	%r15d, %ecx
	movq	%r12, %r8
	callq	refcpy_to_old
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB2_10
# BB#9:                                 # %if.end.45
	movslq	%r15d, %rax
	negq	%r15
	shlq	$4, %rax
	negq	%rax
	movups	(%rbx), %xmm0
	movups	%xmm0, (%rbx,%rax)
	shlq	$4, %r15
	addq	%r15, (%r14)
	xorl	%r13d, %r13d
	jmp	.LBB2_10
.LBB2_6:                                # %cleanup.thread
	movl	%eax, %r13d
.LBB2_10:                               # %cleanup.53
	movl	%r13d, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	zastore, .Lfunc_end2-zastore
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"array"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"1aload"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"1array"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"1astore"
	.size	.L.str.3, 8

	.type	zarray_op_defs,@object  # @zarray_op_defs
	.section	.rodata,"a",@progbits
	.globl	zarray_op_defs
	.align	16
zarray_op_defs:
	.quad	.L.str.1
	.quad	zaload
	.quad	.L.str.2
	.quad	zarray
	.quad	.L.str.3
	.quad	zastore
	.zero	16
	.size	zarray_op_defs, 64

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"astore"
	.size	.L.str.4, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
