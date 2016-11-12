	.text
	.file	"idict.bc"
	.globl	dict_round_size_small
	.align	16, 0x90
	.type	dict_round_size_small,@function
dict_round_size_small:                  # @dict_round_size_small
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	cmpl	$16777215, %edi         # imm = 0xFFFFFF
	cmovbel	%edi, %eax
	retq
.Lfunc_end0:
	.size	dict_round_size_small, .Lfunc_end0-dict_round_size_small
	.cfi_endproc

	.globl	dict_round_size_large
	.align	16, 0x90
	.type	dict_round_size_large,@function
dict_round_size_large:                  # @dict_round_size_large
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$8388609, %edi          # imm = 0x800001
	jbe	.LBB1_1
# BB#6:                                 # %if.then
	xorl	%eax, %eax
	cmpl	$16777215, %edi         # imm = 0xFFFFFF
	cmovbel	%edi, %eax
	retq
.LBB1_1:                                # %while.cond.preheader
	leal	-1(%rdi), %eax
	jmp	.LBB1_3
	.align	16, 0x90
.LBB1_2:                                # %while.body
                                        #   in Loop: Header=BB1_3 Depth=1
	orl	%edi, %eax
	leal	1(%rax), %edi
.LBB1_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%edi, %eax
	jne	.LBB1_2
# BB#4:                                 # %while.end
	cmpl	$16777216, %edi         # imm = 0x1000000
	movl	$8388609, %eax          # imm = 0x800001
	cmovbl	%edi, %eax
	retq
.Lfunc_end1:
	.size	dict_round_size_large, .Lfunc_end1-dict_round_size_large
	.cfi_endproc

	.globl	dict_alloc
	.align	16, 0x90
	.type	dict_alloc,@function
dict_alloc:                             # @dict_alloc
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
	pushq	%r12
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp5:
	.cfi_def_cfa_offset 80
.Ltmp6:
	.cfi_offset %rbx, -48
.Ltmp7:
	.cfi_offset %r12, -40
.Ltmp8:
	.cfi_offset %r14, -32
.Ltmp9:
	.cfi_offset %r15, -24
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %r12
	leaq	16(%rsp), %rsi
	movl	$112, %edx
	movl	$5, %ecx
	movl	$.L.str, %r8d
	callq	gs_alloc_ref_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_4
# BB#1:                                 # %if.end
	movq	24(%rsp), %rbp
	movq	%rbp, 8(%rsp)
	movzwl	16(%rsp), %ebx
	andl	$12, %ebx
	movq	%r12, %rdi
	callq	imemory_new_mask
	orl	%ebx, %eax
	orl	$112, %eax
	addl	$512, %eax              # imm = 0x200
	movw	%ax, (%rsp)
	movq	%r12, 72(%rbp)
	movw	$2048, 64(%rbp)         # imm = 0x800
	leaq	(%rsp), %rsi
	movl	$1, %edx
	movl	%r15d, %edi
	callq	dict_create_contents
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_2
# BB#3:                                 # %if.end.16
	movups	(%rsp), %xmm0
	movups	%xmm0, (%r14)
	xorl	%ebp, %ebp
	jmp	.LBB2_4
.LBB2_2:                                # %if.then.15
	leaq	16(%rsp), %rsi
	movl	$.L.str, %edx
	movq	%r12, %rdi
	callq	gs_free_ref_array
.LBB2_4:                                # %cleanup
	movl	%ebp, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	dict_alloc, .Lfunc_end2-dict_alloc
	.cfi_endproc

	.align	16, 0x90
	.type	dict_create_contents,@function
dict_create_contents:                   # @dict_create_contents
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp14:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp15:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp17:
	.cfi_def_cfa_offset 80
.Ltmp18:
	.cfi_offset %rbx, -56
.Ltmp19:
	.cfi_offset %r12, -48
.Ltmp20:
	.cfi_offset %r13, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
.Ltmp23:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %r13
	movl	%edi, %r15d
	movq	8(%r13), %rbx
	movq	72(%rbx), %r12
	movq	%r12, %rdi
	callq	imemory_new_mask
	movl	%eax, 4(%rsp)           # 4-byte Spill
	testl	%r15d, %r15d
	movl	$1, %eax
	cmovnel	%r15d, %eax
	cmpl	$8388609, %eax          # imm = 0x800001
	jbe	.LBB3_1
# BB#16:                                # %if.then.i
	xorl	%ebp, %ebp
	cmpl	$16777215, %eax         # imm = 0xFFFFFF
	cmovbel	%eax, %ebp
	jmp	.LBB3_4
.LBB3_1:                                # %while.cond.preheader.i
	leal	-1(%rax), %ecx
	testl	%eax, %ecx
	je	.LBB3_3
	.align	16, 0x90
.LBB3_2:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	orl	%eax, %ecx
	leal	1(%rcx), %eax
	testl	%ecx, %eax
	jne	.LBB3_2
.LBB3_3:                                # %while.end.i
	cmpl	$16777216, %eax         # imm = 0x1000000
	movl	$8388609, %ebp          # imm = 0x800001
	cmovbl	%eax, %ebp
.LBB3_4:                                # %dict_round_size_large.exit
	leal	-1(%rbp), %ecx
	movl	$-13, %eax
	cmpl	$16777214, %ecx         # imm = 0xFFFFFE
	ja	.LBB3_15
# BB#5:                                 # %if.end
	incl	%ebp
	movl	$112, %edx
	movl	$.L.str.15, %r8d
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	%ebp, %ecx
	callq	gs_alloc_ref_array
	testl	%eax, %eax
	js	.LBB3_15
# BB#6:                                 # %if.end.9
	movzwl	(%rbx), %eax
	movl	4(%rsp), %edx           # 4-byte Reload
	orl	%edx, %eax
	movw	%ax, (%rbx)
	movq	8(%rbx), %rdi
	movl	%ebp, %esi
	callq	refset_null_new
	testl	%r14d, %r14d
	je	.LBB3_12
# BB#7:                                 # %if.then.14
	movl	%ebp, %ecx
	addq	$7, %rcx
	shrq	$3, %rcx
	leaq	8(%rsp), %rsi
	movl	$112, %edx
	movl	$.L.str.16, %r8d
	movq	%r12, %rdi
	callq	gs_alloc_ref_array
	testl	%eax, %eax
	js	.LBB3_15
# BB#8:                                 # %if.end.21
	movq	16(%rsp), %rax
	movq	%rax, 24(%rbx)
	movzwl	8(%rsp), %ecx
	andl	$12, %ecx
	orl	4(%rsp), %ecx           # 4-byte Folded Reload
	orl	$112, %ecx
	addl	$1536, %ecx             # imm = 0x600
	movw	%cx, 16(%rbx)
	movl	%ebp, 20(%rbx)
	xorl	%ecx, %ecx
	testl	%ebp, %ebp
	je	.LBB3_11
	.align	16, 0x90
.LBB3_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$24576, (%rax,%rcx,2)   # imm = 0x6000
	incq	%rcx
	movl	%ecx, %edx
	andl	$7, %edx
	cmpl	%ebp, %ecx
	jb	.LBB3_9
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB3_9 Depth=1
	testl	%edx, %edx
	jne	.LBB3_9
.LBB3_11:                               # %for.end
	movw	$24577, (%rax)          # imm = 0x6001
	jmp	.LBB3_14
.LBB3_12:                               # %if.else
	movq	8(%r13), %r13
	movq	72(%r13), %r12
	leaq	16(%r13), %rsi
	movl	$112, %edx
	movl	$.L.str.17, %r8d
	movq	%r12, %rdi
	movl	%ebp, %ecx
	callq	gs_alloc_ref_array
	testl	%eax, %eax
	js	.LBB3_15
# BB#13:                                # %dict_create_unpacked_keys.exit.thread
	movq	%r12, %rdi
	callq	imemory_new_mask
	movq	24(%r13), %r12
	movzwl	16(%r13), %ecx
	orl	%eax, %ecx
	movw	%cx, 16(%r13)
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%eax, %edx
	callq	refset_null_new
	orb	$-128, (%r12)
.LBB3_14:                               # %if.end.54
	movq	$0, 40(%rbx)
	movl	4(%rsp), %ecx           # 4-byte Reload
	addl	$2816, %ecx             # imm = 0xB00
	movw	%cx, 32(%rbx)
	movl	%r15d, %eax
	movq	%rax, 56(%rbx)
	movw	%cx, 48(%rbx)
	xorl	%eax, %eax
.LBB3_15:                               # %cleanup.69
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	dict_create_contents, .Lfunc_end3-dict_create_contents
	.cfi_endproc

	.globl	dict_unpack
	.align	16, 0x90
	.type	dict_unpack,@function
dict_unpack:                            # @dict_unpack
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp27:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp28:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp30:
	.cfi_def_cfa_offset 96
.Ltmp31:
	.cfi_offset %rbx, -56
.Ltmp32:
	.cfi_offset %r12, -48
.Ltmp33:
	.cfi_offset %r13, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbp
	movq	8(%rbp), %r14
	movzbl	17(%r14), %eax
	cmpl	$6, %eax
	jne	.LBB4_17
# BB#1:                                 # %if.end
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	leaq	16(%r14), %rdx
	movq	72(%r14), %r15
	movl	4(%r14), %r12d
	movq	24(%r14), %rbx
	movups	(%rdx), %xmm0
	movaps	%xmm0, 16(%rsp)
	movzwl	16(%rsp), %eax
	testl	560(%r15), %eax
	movq	%r14, %r13
	jne	.LBB4_3
# BB#2:                                 # %if.then.13
	movl	$.L.str.1, %ecx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	alloc_save_change_in
	movq	8(%rbp), %r13
.LBB4_3:                                # %if.end.15
	movq	72(%r13), %rdi
	movq	%rdi, (%rsp)            # 8-byte Spill
	leaq	16(%r13), %rsi
	movl	$112, %edx
	movl	$.L.str.17, %r8d
	movl	%r12d, %ecx
	callq	gs_alloc_ref_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB4_15
# BB#4:                                 # %if.end.20
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	imemory_new_mask
	movq	24(%r13), %rbp
	movzwl	16(%r13), %ecx
	orl	%eax, %ecx
	movw	%cx, 16(%r13)
	movq	%rbp, %rdi
	movl	%r12d, %esi
	movl	%eax, %edx
	callq	refset_null_new
	orb	$-128, (%rbp)
	testl	%r12d, %r12d
	je	.LBB4_11
# BB#5:                                 # %for.body.lr.ph
	movq	24(%r14), %rbp
	.align	16, 0x90
.LBB4_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	decl	%r12d
	movzwl	(%rbx), %eax
	cmpl	$49152, %eax            # imm = 0xC000
	jb	.LBB4_8
# BB#7:                                 # %if.then.26
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	packed_get
	movzwl	(%rbp), %eax
	orl	556(%r15), %eax
	movw	%ax, (%rbp)
	jmp	.LBB4_10
	.align	16, 0x90
.LBB4_8:                                # %if.else
                                        #   in Loop: Header=BB4_6 Depth=1
	movzwl	%ax, %eax
	cmpl	$24577, %eax            # imm = 0x6001
	jne	.LBB4_10
# BB#9:                                 # %if.then.34
                                        #   in Loop: Header=BB4_6 Depth=1
	orb	$-128, (%rbp)
.LBB4_10:                               # %for.inc
                                        #   in Loop: Header=BB4_6 Depth=1
	addq	$2, %rbx
	addq	$16, %rbp
	testl	%r12d, %r12d
	jne	.LBB4_6
.LBB4_11:                               # %for.end
	movzwl	16(%rsp), %eax
	testl	560(%r15), %eax
	je	.LBB4_13
# BB#12:                                # %if.then.50
	leaq	16(%rsp), %rsi
	movl	$.L.str.2, %edx
	movq	%r15, %rdi
	callq	gs_free_ref_array
.LBB4_13:                               # %if.end.51
	xorl	%ebp, %ebp
	movq	8(%rsp), %rdi           # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB4_15
# BB#14:                                # %if.then.53
	callq	dstack_set_top
.LBB4_15:                               # %cleanup
	movl	%ebp, %eax
	jmp	.LBB4_16
.LBB4_17:                               # %cleanup.60
	xorl	%eax, %eax
.LBB4_16:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	dict_unpack, .Lfunc_end4-dict_unpack
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_0:
	.long	3741319168              # float -9.22337203E+18
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_1:
	.quad	-4332462841530417152    # double -9.2233720368547758E+18
	.text
	.globl	dict_find
	.align	16, 0x90
	.type	dict_find,@function
dict_find:                              # @dict_find
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp40:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp43:
	.cfi_def_cfa_offset 112
.Ltmp44:
	.cfi_offset %rbx, -56
.Ltmp45:
	.cfi_offset %r12, -48
.Ltmp46:
	.cfi_offset %r13, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rdx, %r8
	movq	%rsi, %r12
	movq	8(%rdi), %r9
	movl	4(%r9), %ebp
	movq	72(%r9), %r15
	movzbl	1(%r12), %ecx
	leal	-11(%rcx), %edx
	cmpl	$7, %edx
	ja	.LBB5_14
# BB#1:                                 # %entry
	movl	$-20, %eax
	jmpq	*.LJTI5_0(,%rdx,8)
.LBB5_12:                               # %sw.bb.55
	movl	8(%r12), %eax
	imull	$30503, %eax, %eax      # imm = 0x7727
	jmp	.LBB5_16
.LBB5_14:                               # %sw.default
	movzwl	(%r12), %eax
	cmpl	$5375, %eax             # imm = 0x14FF
	movl	$1485, %eax             # imm = 0x5CD
	ja	.LBB5_16
# BB#15:                                # %select.mid
	imull	$99, %ecx, %eax
.LBB5_16:                               # %select.end
	xorl	%ecx, %ecx
	movl	$-1, %r14d
	xorl	%r13d, %r13d
.LBB5_17:                               # %sw.epilog
	leal	-1(%rbp), %edi
	movzbl	17(%r9), %edx
	cmpl	$6, %edx
	jne	.LBB5_37
# BB#18:                                # %if.then.80
	movq	24(%r9), %rsi
	cmpl	$8388610, %edi          # imm = 0x800002
	jb	.LBB5_20
# BB#19:                                # %cond.true.85
	xorl	%edx, %edx
	divl	%edi
	movl	%edx, %eax
	jmp	.LBB5_21
.LBB5_37:                               # %if.else.178
	movq	24(%r9), %rsi
	cmpl	$8388610, %edi          # imm = 0x800002
	jb	.LBB5_39
# BB#38:                                # %cond.true.188
	movq	%r9, 24(%rsp)           # 8-byte Spill
	movq	%r8, 32(%rsp)           # 8-byte Spill
	xorl	%edx, %edx
	divl	%edi
	movl	%edx, %eax
	jmp	.LBB5_40
.LBB5_20:                               # %cond.false.86
	addl	$-2, %ebp
	andl	%ebp, %eax
.LBB5_21:                               # %cond.end.89
	incl	%eax
	cltq
	leaq	(%rsi,%rax,2), %rdx
	movzwl	(%rsi,%rax,2), %ebx
	cmpl	%ecx, %ebx
	je	.LBB5_31
# BB#22:                                # %if.else.102.lr.ph.lr.ph
	movl	%edi, %eax
	leaq	(%rsi,%rax,2), %rax
	xorl	%ebp, %ebp
	xorl	%edi, %edi
	.align	16, 0x90
.LBB5_23:                               # %if.else.102
                                        # =>This Inner Loop Header: Depth=1
	movzwl	%bx, %ebx
	cmpl	$49151, %ebx            # imm = 0xBFFF
	ja	.LBB5_30
# BB#24:                                # %if.then.106
                                        #   in Loop: Header=BB5_23 Depth=1
	cmpl	$24576, %ebx            # imm = 0x6000
	je	.LBB5_35
# BB#25:                                # %if.end.111
                                        #   in Loop: Header=BB5_23 Depth=1
	cmpq	%rsi, %rdx
	jne	.LBB5_29
# BB#26:                                # %if.then.114
                                        #   in Loop: Header=BB5_23 Depth=1
	testl	%ebp, %ebp
	jne	.LBB5_32
# BB#27:                                # %if.else.117
                                        #   in Loop: Header=BB5_23 Depth=1
	movzwl	(%rax), %ebx
	movl	$1, %ebp
	cmpl	%ecx, %ebx
	movq	%rax, %rdx
	jne	.LBB5_23
	jmp	.LBB5_28
.LBB5_29:                               # %if.else.120
                                        #   in Loop: Header=BB5_23 Depth=1
	testq	%rdi, %rdi
	cmoveq	%rdx, %rdi
.LBB5_30:                               # %for.inc
                                        #   in Loop: Header=BB5_23 Depth=1
	movzwl	-2(%rdx), %ebx
	addq	$-2, %rdx
	cmpl	%ecx, %ebx
	jne	.LBB5_23
	jmp	.LBB5_31
.LBB5_39:                               # %cond.false.190
	movq	%r9, 24(%rsp)           # 8-byte Spill
	movq	%r8, 32(%rsp)           # 8-byte Spill
	leal	-2(%rbp), %ecx
	andl	%ecx, %eax
.LBB5_40:                               # %cond.end.193
	movl	%eax, %eax
	shlq	$4, %rax
	leaq	32(%rsi,%rax), %rbx
	shlq	$4, %rbp
	leaq	(%rbp,%rsi), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	$0, 20(%rsp)            # 4-byte Folded Spill
	jmp	.LBB5_41
.LBB5_2:                                # %sw.bb
	movq	8(%r12), %rcx
	movl	4(%r12), %eax
	movl	%eax, %edx
	andl	$511, %edx              # imm = 0x1FF
	shlq	$3, %rdx
	subq	%rdx, %rcx
	addl	4096(%rcx), %eax
	jmp	.LBB5_3
.LBB5_7:                                # %sw.bb.37
	movq	%r9, %r14
	movq	%r8, %rbx
	movss	8(%r12), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	leaq	40(%rsp), %rdi
	callq	frexp
	cmpl	$64, 40(%rsp)
	movss	8(%r12), %xmm1          # xmm1 = mem[0],zero,zero,zero
	jae	.LBB5_9
# BB#8:
	movq	%rbx, %r8
	movq	%r14, %r9
	cvttss2si	%xmm1, %eax
	imull	$30503, %eax, %eax      # imm = 0x7727
	jmp	.LBB5_16
.LBB5_4:                                # %sw.bb.12
	movl	$-7, %eax
	testb	$32, (%r12)
	je	.LBB5_46
# BB#5:                                 # %if.end
	movq	192(%r15), %rax
	movq	120(%rax), %rdi
	movq	8(%r12), %rsi
	movl	4(%r12), %edx
	leaq	40(%rsp), %rcx
	movq	%r8, %r14
	movl	$1, %r8d
	movq	%r9, %rbx
	callq	names_ref
	movq	%rbx, %r9
	movq	%r14, %r8
	testl	%eax, %eax
	js	.LBB5_46
# BB#6:                                 # %cleanup
	movq	48(%rsp), %rcx
	movl	44(%rsp), %eax
	movl	%eax, %edx
	andl	$511, %edx              # imm = 0x1FF
	shlq	$3, %rdx
	negq	%rdx
	addl	4096(%rcx,%rdx), %eax
.LBB5_3:                                # %nh
	leal	49152(%rax), %ecx
	xorl	%edx, %edx
	cmpl	$4096, %eax             # imm = 0x1000
	movzwl	%cx, %ecx
	cmovael	%edx, %ecx
	movl	$13, %r14d
	movl	%eax, %r13d
	jmp	.LBB5_17
.LBB5_35:                               # %miss
	movl	40(%r9), %ecx
	movl	$-2, %eax
	cmpl	56(%r9), %ecx
	je	.LBB5_46
# BB#36:                                # %if.end.160
	testq	%rdi, %rdi
	cmovneq	%rdi, %rdx
	subq	%rsi, %rdx
	shlq	$3, %rdx
	addq	8(%r9), %rdx
	movq	%rdx, (%r8)
	xorl	%eax, %eax
	jmp	.LBB5_46
.LBB5_32:                               # %for.end
	movl	$-2, %eax
	testq	%rdi, %rdi
	je	.LBB5_46
# BB#33:                                # %lor.lhs.false.130
	movl	40(%r9), %ecx
	cmpl	56(%r9), %ecx
	je	.LBB5_46
# BB#34:                                # %if.end.140
	subq	%rsi, %rdi
	shlq	$3, %rdi
	addq	8(%r9), %rdi
	movq	%rdi, (%r8)
	xorl	%eax, %eax
	jmp	.LBB5_46
.LBB5_28:
	movq	%rax, %rdx
.LBB5_31:                               # %if.then.98
	subq	%rsi, %rdx
	shlq	$3, %rdx
	addq	8(%r9), %rdx
	movq	%rdx, (%r8)
	jmp	.LBB5_45
.LBB5_9:                                # %lor.lhs.false
	movss	.LCPI5_0(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm1
	movaps	%xmm2, %xmm1
	movq	%rbx, %r8
	movq	%r14, %r9
	jne	.LBB5_11
	jp	.LBB5_11
# BB#10:                                # %if.then.48
	cvttss2si	%xmm1, %eax
	imull	$30503, %eax, %eax      # imm = 0x7727
	jmp	.LBB5_16
.LBB5_11:                               # %if.else
	mulsd	.LCPI5_1(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	imull	$30503, %eax, %eax      # imm = 0x7727
	jmp	.LBB5_16
.LBB5_56:                               # %if.then.255
                                        #   in Loop: Header=BB5_41 Depth=1
	movq	(%rsp), %rax            # 8-byte Reload
	testq	%rax, %rax
	cmoveq	%rbx, %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	.align	16, 0x90
.LBB5_41:                               # %for.cond.198.outer104
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_42 Depth 2
	movq	%rsi, %rbp
	.align	16, 0x90
.LBB5_42:                               # %for.cond.198
                                        #   Parent Loop BB5_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$-16, %rbx
	movzbl	1(%rbx), %eax
	cmpl	%r14d, %eax
	jne	.LBB5_47
# BB#43:                                # %if.then.206
                                        #   in Loop: Header=BB5_42 Depth=2
	movq	8(%rbx), %rax
	movl	4(%rbx), %ecx
	movl	%ecx, %edx
	andl	$511, %edx              # imm = 0x1FF
	shlq	$3, %rdx
	subq	%rdx, %rax
	addl	4096(%rax), %ecx
	cmpl	%r13d, %ecx
	jne	.LBB5_42
	jmp	.LBB5_44
	.align	16, 0x90
.LBB5_47:                               # %if.else.231
                                        #   in Loop: Header=BB5_42 Depth=2
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB5_48
# BB#57:                                # %if.else.263
                                        #   in Loop: Header=BB5_42 Depth=2
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	obj_eq
	testl	%eax, %eax
	je	.LBB5_42
	jmp	.LBB5_44
	.align	16, 0x90
.LBB5_48:                               # %if.then.234
                                        #   in Loop: Header=BB5_41 Depth=1
	movq	%rbp, %rsi
	cmpq	%rsi, %rbx
	jne	.LBB5_54
# BB#49:                                # %if.then.237
                                        #   in Loop: Header=BB5_41 Depth=1
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	movq	8(%rsp), %rbx           # 8-byte Reload
	movl	$1, 20(%rsp)            # 4-byte Folded Spill
	je	.LBB5_41
	jmp	.LBB5_50
.LBB5_54:                               # %if.else.249
                                        #   in Loop: Header=BB5_41 Depth=1
	testb	$-128, (%rbx)
	jne	.LBB5_56
# BB#55:
	movq	32(%rsp), %rdx          # 8-byte Reload
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	(%rsp), %rbp            # 8-byte Reload
	jmp	.LBB5_51
.LBB5_44:                               # %if.then.221
	subq	%rbp, %rbx
	movq	24(%rsp), %rax          # 8-byte Reload
	addq	8(%rax), %rbx
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rbx, (%rax)
.LBB5_45:                               # %cleanup.309
	movl	$1, %eax
.LBB5_46:                               # %cleanup.309
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_50:                               # %if.then.240
	movl	$-2, %eax
	movq	(%rsp), %rbp            # 8-byte Reload
	testq	%rbp, %rbp
	movq	%rsi, %rbx
	movq	32(%rsp), %rdx          # 8-byte Reload
	movq	24(%rsp), %rdi          # 8-byte Reload
	je	.LBB5_46
.LBB5_51:                               # %for.end.278
	movl	40(%rdi), %ecx
	movl	$-2, %eax
	cmpl	56(%rdi), %ecx
	je	.LBB5_46
# BB#52:                                # %if.end.290
	testq	%rbp, %rbp
	cmovneq	%rbp, %rbx
	subq	%rsi, %rbx
	addq	8(%rdi), %rbx
	movq	%rbx, (%rdx)
	xorl	%eax, %eax
	jmp	.LBB5_46
.Lfunc_end5:
	.size	dict_find, .Lfunc_end5-dict_find
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_12
	.quad	.LBB5_14
	.quad	.LBB5_2
	.quad	.LBB5_46
	.quad	.LBB5_14
	.quad	.LBB5_7
	.quad	.LBB5_14
	.quad	.LBB5_4

	.text
	.globl	dict_find_string
	.align	16, 0x90
	.type	dict_find_string,@function
dict_find_string:                       # @dict_find_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp52:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp54:
	.cfi_def_cfa_offset 64
.Ltmp55:
	.cfi_offset %rbx, -40
.Ltmp56:
	.cfi_offset %r12, -32
.Ltmp57:
	.cfi_offset %r14, -24
.Ltmp58:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB6_3
# BB#1:                                 # %if.then
	movq	8(%rbx), %rax
	movq	72(%rax), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %r12
	movq	%r15, %rdi
	callq	strlen
	leaq	8(%rsp), %rcx
	movl	$-1, %r8d
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	%eax, %edx
	callq	names_ref
	testl	%eax, %eax
	js	.LBB6_3
# BB#2:                                 # %if.end
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	dict_find
	movl	%eax, %ecx
	cmpl	$-2, %ecx
	movl	$-21, %eax
	cmovnel	%ecx, %eax
.LBB6_3:                                # %cleanup.13
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end6:
	.size	dict_find_string, .Lfunc_end6-dict_find_string
	.cfi_endproc

	.globl	dict_put
	.align	16, 0x90
	.type	dict_put,@function
dict_put:                               # @dict_put
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp61:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp62:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp63:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp64:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp65:
	.cfi_def_cfa_offset 128
.Ltmp66:
	.cfi_offset %rbx, -56
.Ltmp67:
	.cfi_offset %r12, -48
.Ltmp68:
	.cfi_offset %r13, -40
.Ltmp69:
	.cfi_offset %r14, -32
.Ltmp70:
	.cfi_offset %r15, -24
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movzwl	(%rdx), %eax
	andl	$12, %eax
	movzwl	(%rbx), %ecx
	andl	$12, %ecx
	cmpl	%ecx, %eax
	jbe	.LBB7_2
# BB#1:
	movl	$-7, %r13d
	jmp	.LBB7_14
.LBB7_2:                                # %top.preheader
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	8(%rbx), %r12
	movq	72(%r12), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	16(%r12), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leaq	48(%rsp), %r15
                                        # implicit-def: R14D
	.align	16, 0x90
.LBB7_3:                                # %top
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	leaq	64(%rsp), %rdx
	callq	dict_find
	movl	%eax, %r13d
	testl	%r13d, %r13d
	jg	.LBB7_10
# BB#4:                                 # %if.then.13
                                        #   in Loop: Header=BB7_3 Depth=1
	jne	.LBB7_5
# BB#15:                                # %sw.epilog
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	64(%rsp), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	8(%r12), %rdi
	movzbl	1(%rbp), %eax
	cmpl	$18, %eax
	jne	.LBB7_19
# BB#16:                                # %if.then.28
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	%rbp, %rsi
	movq	%rbx, %rbp
	movq	%rdi, %rbx
	testb	$32, (%rsi)
	je	.LBB7_17
# BB#18:                                # %if.end.36
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	%r15, %rdx
	callq	names_from_string
	movl	%eax, %r13d
	testl	%r13d, %r13d
	movq	%r15, %rax
	movq	%rbx, %rdi
	movq	%rbp, %rbx
	movq	%rax, %rbp
	js	.LBB7_14
.LBB7_19:                               # %if.end.43
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	movzbl	1(%rax), %eax
	cmpl	$6, %eax
	jne	.LBB7_38
# BB#20:                                # %if.then.50
                                        #   in Loop: Header=BB7_3 Depth=1
	movzbl	1(%rbp), %eax
	cmpl	$13, %eax
	jne	.LBB7_26
# BB#21:                                # %lor.lhs.false
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	8(%rbp), %rcx
	movl	4(%rbp), %eax
	movl	%eax, %edx
	andl	$511, %edx              # imm = 0x1FF
	shlq	$3, %rdx
	negq	%rdx
	movl	4096(%rcx,%rdx), %edx
	addl	%eax, %edx
	cmpl	$4095, %edx             # imm = 0xFFF
	jbe	.LBB7_22
.LBB7_26:                               # %cleanup.102
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	%rbx, %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	dict_unpack
	movl	%eax, %ecx
	sarl	$31, %ecx
	testl	%eax, %eax
	cmovsl	%eax, %r14d
	addl	$2, %ecx
	jne	.LBB7_8
	jmp	.LBB7_27
	.align	16, 0x90
.LBB7_5:                                # %if.then.13
                                        #   in Loop: Header=BB7_3 Depth=1
	cmpl	$-2, %r13d
	jne	.LBB7_14
# BB#6:                                 # %sw.bb
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	192(%rax), %rax
	movl	$-2, %r13d
	cmpl	$0, 128(%rax)
	je	.LBB7_14
# BB#7:                                 # %if.end.15
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	%rbx, %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	dict_grow
	movl	%eax, %ecx
	sarl	$31, %ecx
	addl	$2, %ecx
	testl	%eax, %eax
	cmovsl	%eax, %r14d
.LBB7_8:                                # %cleanup.188
                                        #   in Loop: Header=BB7_3 Depth=1
	cmpl	$2, %ecx
	je	.LBB7_3
# BB#9:                                 # %cleanup.188
	testl	%ecx, %ecx
	movl	%r14d, %r13d
	jne	.LBB7_14
.LBB7_10:                               # %do.end.194.loopexit
	movq	64(%rsp), %rbp
	movq	32(%rsp), %r15          # 8-byte Reload
	leaq	560(%r15), %rsi
	xorl	%r13d, %r13d
	movq	8(%rsp), %r14           # 8-byte Reload
	jmp	.LBB7_11
.LBB7_38:                               # %if.else
	movzwl	(%rbp), %eax
	andl	$12, %eax
	movzwl	(%rbx), %ecx
	andl	$12, %ecx
	cmpl	%ecx, %eax
	movl	$-7, %r13d
	ja	.LBB7_14
# BB#39:                                # %if.end.122
	movq	16(%rsp), %r14          # 8-byte Reload
	subq	%rdi, %r14
	shrq	$4, %r14
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %r14
	shlq	$4, %r14
	addq	24(%r12), %r14
	movzwl	(%r14), %eax
	movq	32(%rsp), %r15          # 8-byte Reload
	leaq	560(%r15), %rsi
	testl	560(%r15), %eax
	jne	.LBB7_41
# BB#40:                                # %cond.true
	movl	$.L.str.3, %ecx
	movq	%r15, %rdi
	movq	%rsi, %r13
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	%r14, %rdx
	callq	alloc_save_change_in
	movq	%r13, %rsi
.LBB7_41:                               # %cleanup.136.thread
	movups	(%rbp), %xmm0
	movups	%xmm0, (%r14)
	movzwl	(%r14), %eax
	orl	556(%r15), %eax
	movw	%ax, (%r14)
	jmp	.LBB7_28
.LBB7_27:                               # %if.end.139.loopexit
	movq	32(%rsp), %r15          # 8-byte Reload
	leaq	560(%r15), %rsi
	jmp	.LBB7_28
.LBB7_17:
	movl	$-7, %r13d
	jmp	.LBB7_14
.LBB7_22:                               # %if.end.72
	movq	16(%rsp), %r14          # 8-byte Reload
	subq	%rdi, %r14
	shrq	$4, %r14
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	andq	%rdx, %r14
	addq	%r14, %r14
	addq	24(%r12), %r14
	movzwl	16(%r12), %edx
	movq	32(%rsp), %r15          # 8-byte Reload
	leaq	560(%r15), %rsi
	testl	560(%r15), %edx
	jne	.LBB7_24
# BB#23:                                # %if.then.84
	movl	$.L.str.3, %ecx
	movq	%r15, %rdi
	movq	%rsi, %r13
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	%r14, %rdx
	callq	alloc_save_change_in
	movq	%r13, %rsi
	movq	8(%rbp), %rcx
	movl	4(%rbp), %eax
.LBB7_24:                               # %cleanup.102.thread
	movl	%eax, %edx
	andl	$511, %edx              # imm = 0x1FF
	shlq	$3, %rdx
	subq	%rdx, %rcx
	movl	4096(%rcx), %ecx
	leal	49152(%rax,%rcx), %eax
	movw	%ax, (%r14)
.LBB7_28:                               # %if.end.139
	movq	8(%rsp), %r14           # 8-byte Reload
	movzwl	32(%r12), %eax
	testl	(%rsi), %eax
	jne	.LBB7_30
# BB#29:                                # %cond.true.147
	leaq	32(%r12), %rdx
	movl	$.L.str.4, %ecx
	movq	%r15, %rdi
	movq	%rsi, %r13
	movq	%rbx, %rsi
	callq	alloc_save_change_in
	movq	%r13, %rsi
.LBB7_30:                               # %cond.end.151
	incq	40(%r12)
	movl	$1, %r13d
	movzbl	1(%rbp), %eax
	cmpl	$13, %eax
	jne	.LBB7_37
# BB#31:                                # %if.then.161
	movq	8(%rbp), %rbp
	movl	$1, %ecx
	cmpq	$0, 40(%rsp)            # 8-byte Folded Reload
	je	.LBB7_36
# BB#32:                                # %if.then.161
	movq	(%rbp), %rax
	testq	%rax, %rax
	jne	.LBB7_36
# BB#33:                                # %land.lhs.true.169
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	%rsi, %r12
	movq	%rbx, %rsi
	callq	dstack_dict_is_permanent
	movq	%r12, %rsi
	movl	$1, %ecx
	testl	%eax, %eax
	je	.LBB7_36
# BB#34:                                # %land.lhs.true.172
	cmpl	$0, 556(%r15)
	movq	16(%rsp), %rcx          # 8-byte Reload
	je	.LBB7_36
# BB#35:                                # %select.mid
	movl	$1, %ecx
.LBB7_36:                               # %if.end.186
	movq	%rcx, (%rbp)
.LBB7_37:                               # %do.end.194
	movq	16(%rsp), %rbp          # 8-byte Reload
.LBB7_11:                               # %do.end.194
	movzwl	(%rbp), %eax
	testl	(%rsi), %eax
	jne	.LBB7_13
# BB#12:                                # %cond.true.202
	movq	8(%rbx), %rsi
	movl	$.L.str.5, %ecx
	movq	%r15, %rdi
	movq	%rbp, %rdx
	callq	alloc_save_change_in
.LBB7_13:                               # %cond.end.208
	movups	(%r14), %xmm0
	movups	%xmm0, (%rbp)
	movzwl	(%rbp), %eax
	orl	556(%r15), %eax
	movw	%ax, (%rbp)
.LBB7_14:                               # %cleanup.216
	movl	%r13d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	dict_put, .Lfunc_end7-dict_put
	.cfi_endproc

	.globl	dict_grow
	.align	16, 0x90
	.type	dict_grow,@function
dict_grow:                              # @dict_grow
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp72:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp73:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp74:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp76:
	.cfi_def_cfa_offset 48
.Ltmp77:
	.cfi_offset %rbx, -40
.Ltmp78:
	.cfi_offset %r12, -32
.Ltmp79:
	.cfi_offset %r14, -24
.Ltmp80:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	8(%r14), %r12
	movl	56(%r12), %ebx
	cmpq	$19, %rbx
	ja	.LBB8_2
# BB#1:                                 # %if.then
	addq	$10, %rbx
	jmp	.LBB8_5
.LBB8_2:                                # %if.else
	cmpq	$199, %rbx
	ja	.LBB8_4
# BB#3:                                 # %if.then.7
	addq	%rbx, %rbx
	jmp	.LBB8_5
.LBB8_4:                                # %if.else.8
	movq	%rbx, %rcx
	shrq	%rcx
	addq	%rcx, %rbx
.LBB8_5:                                # %if.end.10
	cmpq	%rax, %rbx
	cmovaq	%rax, %rbx
	movl	4(%r12), %eax
	decl	%eax
	cmpq	%rax, %rbx
	jbe	.LBB8_11
# BB#6:                                 # %if.then.18
	movq	%r14, %rdi
	movl	%ebx, %esi
	movq	%r15, %rdx
	callq	dict_resize
	testl	%eax, %eax
	jns	.LBB8_14
# BB#7:                                 # %if.end.23
	movl	4(%r12), %ebx
	leal	-1(%rbx), %ecx
	cmpl	$16777214, %ecx         # imm = 0xFFFFFE
	ja	.LBB8_10
# BB#8:                                 # %if.then.30
	movl	$16777215, %esi         # imm = 0xFFFFFF
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	dict_resize
	testl	%eax, %eax
	jns	.LBB8_14
# BB#9:                                 # %if.then.30.cleanup_crit_edge
	movl	4(%r12), %ebx
.LBB8_10:                               # %cleanup
	decl	%ebx
	cmpl	56(%r12), %ebx
	je	.LBB8_14
.LBB8_11:                               # %if.end.54
	movzwl	48(%r12), %eax
	movq	72(%r12), %rdi
	testl	560(%rdi), %eax
	jne	.LBB8_13
# BB#12:                                # %cond.true
	leaq	48(%r12), %rdx
	movl	$.L.str.14, %ecx
	movq	%r14, %rsi
	callq	alloc_save_change_in
.LBB8_13:                               # %cond.end
	movq	%rbx, 56(%r12)
	xorl	%eax, %eax
.LBB8_14:                               # %cleanup.69
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end8:
	.size	dict_grow, .Lfunc_end8-dict_grow
	.cfi_endproc

	.globl	dict_put_string
	.align	16, 0x90
	.type	dict_put_string,@function
dict_put_string:                        # @dict_put_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp81:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp82:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp83:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp84:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp85:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp86:
	.cfi_def_cfa_offset 64
.Ltmp87:
	.cfi_offset %rbx, -48
.Ltmp88:
	.cfi_offset %r12, -40
.Ltmp89:
	.cfi_offset %r13, -32
.Ltmp90:
	.cfi_offset %r14, -24
.Ltmp91:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	8(%r12), %rax
	movq	72(%rax), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %r13
	movq	%rbx, %rdi
	callq	strlen
	leaq	(%rsp), %rcx
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	names_ref
	testl	%eax, %eax
	js	.LBB9_2
# BB#1:                                 # %if.end
	leaq	(%rsp), %rsi
	movq	%r12, %rdi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	dict_put
.LBB9_2:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end9:
	.size	dict_put_string, .Lfunc_end9-dict_put_string
	.cfi_endproc

	.globl	dict_undef
	.align	16, 0x90
	.type	dict_undef,@function
dict_undef:                             # @dict_undef
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp93:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp94:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp95:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp96:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp97:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp98:
	.cfi_def_cfa_offset 112
.Ltmp99:
	.cfi_offset %rbx, -56
.Ltmp100:
	.cfi_offset %r12, -48
.Ltmp101:
	.cfi_offset %r13, -40
.Ltmp102:
	.cfi_offset %r14, -32
.Ltmp103:
	.cfi_offset %r15, -24
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsi, %r13
	movq	%rdi, %rbx
	leaq	48(%rsp), %rdx
	callq	dict_find
	movl	%eax, %ecx
	movl	$-21, %eax
	cmpl	$-2, %ecx
	je	.LBB10_34
# BB#1:                                 # %entry
	testl	%ecx, %ecx
	je	.LBB10_34
# BB#2:                                 # %entry
	cmpl	$1, %ecx
	movl	%ecx, %eax
	jne	.LBB10_34
# BB#3:                                 # %sw.epilog
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	8(%rbx), %r12
	movq	48(%rsp), %rdx
	movq	72(%r12), %rdi
	movq	%rdx, %r14
	subq	8(%r12), %r14
	movq	%r14, %r15
	shrq	$4, %r15
	leaq	16(%r12), %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movzbl	17(%r12), %ecx
	cmpl	$6, %ecx
	jne	.LBB10_21
# BB#4:                                 # %if.then
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	24(%r12), %rcx
	andq	%r15, %rax
	leaq	(%rcx,%rax,2), %rdx
	movzwl	16(%r12), %ebp
	andl	560(%rdi), %ebp
	jne	.LBB10_6
# BB#5:                                 # %if.then.14
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	$.L.str.6, %ecx
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	callq	alloc_save_change_in
	movq	8(%rsp), %rdx           # 8-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	40(%rsp), %rdi          # 8-byte Reload
.LBB10_6:                               # %if.end
	leaq	560(%rdi), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movzwl	-2(%rdx), %eax
	cmpl	$24576, %eax            # imm = 0x6000
	jne	.LBB10_20
# BB#7:                                 # %if.then.21
	incl	%r15d
	testl	%ebp, %ebp
	movl	4(%r12), %esi
	movw	$24576, (%rdx)          # imm = 0x6000
	je	.LBB10_10
# BB#8:                                 # %while.cond.33.preheader
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	cmpl	%esi, %r15d
	movq	24(%rsp), %rbp          # 8-byte Reload
	jae	.LBB10_9
# BB#15:                                # %land.rhs.37.preheader
	shrq	$3, %r14
	movabsq	$8589934590, %rax       # imm = 0x1FFFFFFFE
	andq	%r14, %rax
	leaq	2(%rax,%rcx), %rax
	.align	16, 0x90
.LBB10_16:                              # %land.rhs.37
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rax), %ecx
	cmpl	$24577, %ecx            # imm = 0x6001
	jne	.LBB10_17
# BB#18:                                # %while.body.43
                                        #   in Loop: Header=BB10_16 Depth=1
	movw	$24576, (%rax)          # imm = 0x6000
	incl	%r15d
	addq	$2, %rax
	cmpl	%esi, %r15d
	jb	.LBB10_16
# BB#19:
	movq	16(%rsp), %r15          # 8-byte Reload
	jmp	.LBB10_26
.LBB10_21:                              # %if.else.48
	movq	%rdx, %rbp
	movq	24(%r12), %rcx
	andq	%rax, %r15
	shlq	$4, %r15
	leaq	(%rcx,%r15), %r14
	movzwl	(%rcx,%r15), %eax
	testl	560(%rdi), %eax
	jne	.LBB10_23
# BB#22:                                # %cond.true
	movl	$.L.str.6, %ecx
	movq	%rdi, %r15
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%r14, %rdx
	callq	alloc_save_change_in
	movq	%r15, %rdi
.LBB10_23:                              # %cond.end
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	leaq	560(%rdi), %r15
	callq	imemory_new_mask
	addl	$3584, %eax             # imm = 0xE00
	movw	%ax, (%r14)
	movzbl	-15(%r14), %ecx
	cmpl	$14, %ecx
	jne	.LBB10_25
# BB#24:                                # %lor.lhs.false
	testb	$-128, -16(%r14)
	je	.LBB10_26
.LBB10_25:                              # %if.then.83
	orl	$128, %eax
	movw	%ax, (%r14)
	jmp	.LBB10_26
.LBB10_20:                              # %if.else.46
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movw	$24577, (%rdx)          # imm = 0x6001
.LBB10_11:
	movq	24(%rsp), %rbp          # 8-byte Reload
	movq	16(%rsp), %r15          # 8-byte Reload
	jmp	.LBB10_26
.LBB10_10:                              # %while.cond.preheader
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	cmpl	%esi, %r15d
	jae	.LBB10_11
# BB#12:                                # %land.rhs.preheader
	shrq	$3, %r14
	movabsq	$8589934590, %rax       # imm = 0x1FFFFFFFE
	andq	%r14, %rax
	leaq	2(%rax,%rcx), %rbp
.LBB10_13:                              # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %r14d
	movzwl	(%rbp), %eax
	cmpl	$24577, %eax            # imm = 0x6001
	jne	.LBB10_11
# BB#14:                                # %while.body
                                        #   in Loop: Header=BB10_13 Depth=1
	movl	$.L.str.6, %ecx
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%rbp, %rdx
	callq	alloc_save_change_in
	movw	$24576, (%rbp)          # imm = 0x6000
	incl	%r15d
	addq	$2, %rbp
	movl	%r14d, %esi
	cmpl	%esi, %r15d
	jb	.LBB10_13
	jmp	.LBB10_11
.LBB10_9:
	movq	16(%rsp), %r15          # 8-byte Reload
	jmp	.LBB10_26
.LBB10_17:
	movq	16(%rsp), %r15          # 8-byte Reload
.LBB10_26:                              # %if.end.89
	movzwl	32(%r12), %eax
	testl	(%r15), %eax
	jne	.LBB10_28
# BB#27:                                # %cond.true.97
	leaq	32(%r12), %rdx
	movl	$.L.str.7, %ecx
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	callq	alloc_save_change_in
.LBB10_28:                              # %cond.end.101
	decq	40(%r12)
	movzbl	1(%r13), %eax
	cmpl	$13, %eax
	movq	40(%rsp), %rdi          # 8-byte Reload
	jne	.LBB10_31
# BB#29:                                # %if.then.111
	movq	8(%r13), %rax
	cmpq	$2, (%rax)
	jb	.LBB10_31
# BB#30:                                # %if.then.116
	movq	$0, (%rax)
.LBB10_31:                              # %if.end.119
	movzwl	(%rbp), %eax
	testl	(%r15), %eax
	jne	.LBB10_33
# BB#32:                                # %cond.true.127
	movl	$.L.str.8, %ecx
	movq	%rdi, %rbx
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	alloc_save_change_in
	movq	%rbx, %rdi
.LBB10_33:                              # %cond.end.131
	callq	imemory_new_mask
	addl	$3584, %eax             # imm = 0xE00
	movw	%ax, (%rbp)
	xorl	%eax, %eax
.LBB10_34:                              # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	dict_undef, .Lfunc_end10-dict_undef
	.cfi_endproc

	.globl	dict_length
	.align	16, 0x90
	.type	dict_length,@function
dict_length:                            # @dict_length
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	movl	40(%rax), %eax
	retq
.Lfunc_end11:
	.size	dict_length, .Lfunc_end11-dict_length
	.cfi_endproc

	.globl	dict_maxlength
	.align	16, 0x90
	.type	dict_maxlength,@function
dict_maxlength:                         # @dict_maxlength
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	movl	56(%rax), %eax
	retq
.Lfunc_end12:
	.size	dict_maxlength, .Lfunc_end12-dict_maxlength
	.cfi_endproc

	.globl	dict_max_index
	.align	16, 0x90
	.type	dict_max_index,@function
dict_max_index:                         # @dict_max_index
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	movl	4(%rax), %eax
	addl	$-2, %eax
	retq
.Lfunc_end13:
	.size	dict_max_index, .Lfunc_end13-dict_max_index
	.cfi_endproc

	.globl	dict_copy_entries
	.align	16, 0x90
	.type	dict_copy_entries,@function
dict_copy_entries:                      # @dict_copy_entries
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%edx, %edx
	setne	%al
	movzbl	%al, %edx
	jmp	dict_copy_elements      # TAILCALL
.Lfunc_end14:
	.size	dict_copy_entries, .Lfunc_end14-dict_copy_entries
	.cfi_endproc

	.align	16, 0x90
	.type	dict_copy_elements,@function
dict_copy_elements:                     # @dict_copy_elements
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp106:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp107:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp108:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp109:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp110:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp111:
	.cfi_def_cfa_offset 176
.Ltmp112:
	.cfi_offset %rbx, -56
.Ltmp113:
	.cfi_offset %r12, -48
.Ltmp114:
	.cfi_offset %r13, -40
.Ltmp115:
	.cfi_offset %r14, -32
.Ltmp116:
	.cfi_offset %r15, -24
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movzwl	(%rsi), %r12d
	andl	$12, %r12d
	cmpl	$12, %r12d
	jne	.LBB15_12
# BB#1:                                 # %entry.if.end.28_crit_edge
	leaq	80(%rsp), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leaq	81(%rsp), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	leaq	96(%rsp), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	jmp	.LBB15_2
.LBB15_12:                              # %if.then
	movq	8(%rdi), %r14
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movl	4(%r14), %ebx
	leaq	81(%rsp), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	leaq	96(%rsp), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	%edx, %eax
	movl	%edx, 20(%rsp)          # 4-byte Spill
	andl	$1, %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	leaq	80(%rsp), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	jmp	.LBB15_13
	.align	16, 0x90
.LBB15_24:                              # %while.cond.backedge
                                        #   in Loop: Header=BB15_13 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %r14
.LBB15_13:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_14 Depth 2
	movq	8(%r14), %rcx
	movslq	%ebx, %rax
	leaq	16(%r14), %r13
	leal	-1(%rax), %edx
	movslq	%edx, %rbx
	movq	%rax, %rdx
	shlq	$4, %rdx
	leaq	-16(%rcx,%rdx), %rcx
	.align	16, 0x90
.LBB15_14:                              # %while.cond.i
                                        #   Parent Loop BB15_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %r15
	movq	%rcx, %rbp
	testq	%r15, %r15
	jle	.LBB15_15
# BB#16:                                # %while.body.i
                                        #   in Loop: Header=BB15_14 Depth=2
	movq	72(%r14), %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	leaq	80(%rsp), %rcx
	callq	array_get
	movzbl	81(%rsp), %eax
	cmpl	$13, %eax
	je	.LBB15_19
# BB#17:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB15_14 Depth=2
	movzbl	%al, %edx
	leaq	-1(%r15), %rax
	decq	%rbx
	leaq	-16(%rbp), %rcx
	cmpl	$14, %edx
	je	.LBB15_14
# BB#18:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB15_14 Depth=2
	movzbl	1(%r13), %edx
	cmpl	$6, %edx
	je	.LBB15_14
.LBB15_19:                              # %while.body.i.dict_next.exit_crit_edge
                                        #   in Loop: Header=BB15_13 Depth=1
	leal	-1(%r15), %ebx
	movups	(%rbp), %xmm0
	leaq	96(%rsp), %rax
	movups	%xmm0, (%rax)
	testl	%r15d, %r15d
	jle	.LBB15_15
# BB#20:                                # %while.body
                                        #   in Loop: Header=BB15_13 Depth=1
	cmpl	$0, 36(%rsp)            # 4-byte Folded Reload
	je	.LBB15_22
# BB#21:                                # %lor.lhs.false
                                        #   in Loop: Header=BB15_13 Depth=1
	movq	24(%rsp), %rdi          # 8-byte Reload
	leaq	80(%rsp), %rsi
	leaq	72(%rsp), %rdx
	callq	dict_find
	testl	%eax, %eax
	jg	.LBB15_24
.LBB15_22:                              # %if.then.9
                                        #   in Loop: Header=BB15_13 Depth=1
	movzwl	80(%rsp), %eax
	andl	$12, %eax
	movl	$-7, %r14d
	cmpl	%r12d, %eax
	ja	.LBB15_32
# BB#23:                                # %if.end
                                        #   in Loop: Header=BB15_13 Depth=1
	movzwl	96(%rsp), %eax
	andl	$12, %eax
	cmpl	%r12d, %eax
	jbe	.LBB15_24
	jmp	.LBB15_32
.LBB15_15:
	movl	20(%rsp), %edx          # 4-byte Reload
	movq	48(%rsp), %rdi          # 8-byte Reload
.LBB15_2:                               # %if.end.28
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movq	8(%rdi), %r15
	movl	4(%r15), %ebx
	andl	$2, %edx
	movl	%edx, 20(%rsp)          # 4-byte Spill
	jmp	.LBB15_3
	.align	16, 0x90
.LBB15_11:                              # %while.cond.30.backedge
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %r15
.LBB15_3:                               # %while.cond.30
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_4 Depth 2
	movq	8(%r15), %rcx
	movslq	%ebx, %rax
	leaq	16(%r15), %rbp
	leal	-1(%rax), %edx
	movslq	%edx, %rbx
	movq	%rax, %rdx
	shlq	$4, %rdx
	leaq	-16(%rcx,%rdx), %rcx
	.align	16, 0x90
.LBB15_4:                               # %while.cond.i.38
                                        #   Parent Loop BB15_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %r13
	movq	%rcx, %r12
	xorl	%r14d, %r14d
	testq	%r13, %r13
	jle	.LBB15_32
# BB#5:                                 # %while.body.i.42
                                        #   in Loop: Header=BB15_4 Depth=2
	movq	72(%r15), %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	movq	64(%rsp), %rcx          # 8-byte Reload
	callq	array_get
	movq	56(%rsp), %rax          # 8-byte Reload
	movzbl	(%rax), %eax
	cmpl	$13, %eax
	je	.LBB15_8
# BB#6:                                 # %lor.lhs.false.i.47
                                        #   in Loop: Header=BB15_4 Depth=2
	movzbl	%al, %edx
	leaq	-1(%r13), %rax
	decq	%rbx
	leaq	-16(%r12), %rcx
	cmpl	$14, %edx
	je	.LBB15_4
# BB#7:                                 # %lor.lhs.false.i.47
                                        #   in Loop: Header=BB15_4 Depth=2
	movzbl	1(%rbp), %edx
	cmpl	$6, %edx
	je	.LBB15_4
.LBB15_8:                               # %while.body.i.42.dict_next.exit51_crit_edge
                                        #   in Loop: Header=BB15_3 Depth=1
	leal	-1(%r13), %ebx
	movups	(%r12), %xmm0
	movq	40(%rsp), %rax          # 8-byte Reload
	movups	%xmm0, (%rax)
	testl	%r13d, %r13d
	jle	.LBB15_32
# BB#9:                                 # %while.body.35
                                        #   in Loop: Header=BB15_3 Depth=1
	cmpl	$0, 36(%rsp)            # 4-byte Folded Reload
	je	.LBB15_25
# BB#10:                                # %land.lhs.true
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	64(%rsp), %rsi          # 8-byte Reload
	leaq	72(%rsp), %rdx
	callq	dict_find
	testl	%eax, %eax
	jg	.LBB15_11
.LBB15_25:                              # %if.end.43
                                        #   in Loop: Header=BB15_3 Depth=1
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	movl	$0, %ebp
	je	.LBB15_29
# BB#26:                                # %land.lhs.true.46
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	movzbl	(%rax), %eax
	cmpl	$13, %eax
	movl	$0, %ebp
	jne	.LBB15_29
# BB#27:                                # %land.lhs.true.54
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	88(%rsp), %rax
	movq	(%rax), %rbp
	cmpq	$2, %rbp
	jb	.LBB15_29
# BB#28:                                # %if.then.59
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	$0, (%rax)
	.align	16, 0x90
.LBB15_29:                              # %if.end.64
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	64(%rsp), %rsi          # 8-byte Reload
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
	callq	dict_put
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jns	.LBB15_11
# BB#30:                                # %if.then.70
	testq	%rbp, %rbp
	je	.LBB15_32
# BB#31:                                # %if.then.73
	movq	88(%rsp), %rax
	movq	%rbp, (%rax)
.LBB15_32:                              # %cleanup.81
	movl	%r14d, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	dict_copy_elements, .Lfunc_end15-dict_copy_elements
	.cfi_endproc

	.globl	dict_resize
	.align	16, 0x90
	.type	dict_resize,@function
dict_resize:                            # @dict_resize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp119:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp120:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp121:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp122:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp123:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp124:
	.cfi_def_cfa_offset 192
.Ltmp125:
	.cfi_offset %rbx, -56
.Ltmp126:
	.cfi_offset %r12, -48
.Ltmp127:
	.cfi_offset %r13, -40
.Ltmp128:
	.cfi_offset %r14, -32
.Ltmp129:
	.cfi_offset %r15, -24
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movl	%esi, %r12d
	movq	%rdi, %r15
	movq	8(%r15), %rbx
	movq	72(%rbx), %r13
	movq	%r13, %rdi
	callq	imemory_new_mask
	movl	%eax, %ebp
	movzwl	(%rbx), %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	movl	40(%rbx), %eax
	cmpl	%r12d, %eax
	jbe	.LBB16_2
# BB#1:                                 # %if.then
	movq	192(%r13), %rcx
	movl	$-2, %r14d
	cmpl	$0, 128(%rcx)
	movl	%eax, %r12d
	je	.LBB16_18
.LBB16_2:                               # %if.end.12
	leaq	64(%rbx), %rax
	leaq	56(%rsp), %rcx
	movq	%rcx, 48(%rsp)
	movzwl	(%r15), %ecx
	andl	$12, %ecx
	orl	%ecx, %ebp
	orl	$112, %ebp
	addl	$512, %ebp              # imm = 0x200
	movw	%bp, 40(%rsp)
	movups	(%rax), %xmm0
	movups	%xmm0, 120(%rsp)
	movzbl	17(%rbx), %eax
	cmpl	$6, %eax
	sete	%al
	movzbl	%al, %edx
	leaq	40(%rsp), %rsi
	movl	%r12d, %edi
	callq	dict_create_contents
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB16_18
# BB#3:                                 # %if.end.34
	orl	$12, %ebp
	movw	%bp, 40(%rsp)
	movq	8(%rsp), %rbp           # 8-byte Reload
	testq	%rbp, %rbp
	je	.LBB16_7
# BB#4:                                 # %land.lhs.true
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	dstack_dict_is_permanent
	testl	%eax, %eax
	je	.LBB16_7
# BB#5:                                 # %land.lhs.true.46
	cmpl	$0, 556(%r13)
	je	.LBB16_6
.LBB16_7:                               # %if.else
	leaq	40(%rsp), %rsi
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%rbp, %rcx
	callq	dict_copy_elements
.LBB16_8:                               # %if.end.53
	movl	4(%rsp), %r14d          # 4-byte Reload
	andl	$240, %r14d
	leaq	16(%rbx), %rbp
	movzwl	(%rbx), %eax
	testl	560(%r13), %eax
	je	.LBB16_9
# BB#10:                                # %if.else.64
	movl	$.L.str.10, %edx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	gs_free_ref_array
	jmp	.LBB16_11
.LBB16_9:                               # %if.then.61
	movl	$.L.str.9, %ecx
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	alloc_save_change_in
.LBB16_11:                              # %if.end.66
	movzwl	(%rbp), %eax
	testl	560(%r13), %eax
	je	.LBB16_12
# BB#13:                                # %if.else.78
	movl	$.L.str.12, %edx
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	gs_free_ref_array
	jmp	.LBB16_14
.LBB16_12:                              # %if.then.75
	movl	$.L.str.11, %ecx
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	alloc_save_change_in
.LBB16_14:                              # %if.end.80
	movups	72(%rsp), %xmm0
	movups	%xmm0, (%rbp)
	movups	56(%rsp), %xmm0
	movups	%xmm0, (%rbx)
	movzwl	(%rbx), %eax
	andl	$65295, %eax            # imm = 0xFF0F
	movzwl	%r14w, %ecx
	orl	%eax, %ecx
	movw	%cx, (%rbx)
	movzwl	48(%rbx), %eax
	movq	72(%rbx), %rdi
	testl	560(%rdi), %eax
	jne	.LBB16_16
# BB#15:                                # %cond.true
	leaq	48(%rbx), %rdx
	movl	$.L.str.13, %ecx
	movq	%r15, %rsi
	callq	alloc_save_change_in
.LBB16_16:                              # %cond.end
	movl	%r12d, %eax
	movq	%rax, 56(%rbx)
	xorl	%r14d, %r14d
	movq	8(%rsp), %rdi           # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB16_18
# BB#17:                                # %if.then.116
	callq	dstack_set_top
.LBB16_18:                              # %cleanup
	movl	%r14d, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_6:                               # %if.then.50
	movups	(%r15), %xmm0
	movaps	%xmm0, 16(%rsp)
	movups	40(%rsp), %xmm0
	movups	%xmm0, (%r15)
	leaq	16(%rsp), %rdi
	movl	$2, %edx
	movq	%r15, %rsi
	movq	%rbp, %rcx
	callq	dict_copy_elements
	movaps	16(%rsp), %xmm0
	movups	%xmm0, (%r15)
	jmp	.LBB16_8
.Lfunc_end16:
	.size	dict_resize, .Lfunc_end16-dict_resize
	.cfi_endproc

	.globl	dict_first
	.align	16, 0x90
	.type	dict_first,@function
dict_first:                             # @dict_first
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	movl	4(%rax), %eax
	retq
.Lfunc_end17:
	.size	dict_first, .Lfunc_end17-dict_first
	.cfi_endproc

	.globl	dict_next
	.align	16, 0x90
	.type	dict_next,@function
dict_next:                              # @dict_next
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp131:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp132:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp133:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp134:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp135:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp136:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp137:
	.cfi_def_cfa_offset 64
.Ltmp138:
	.cfi_offset %rbx, -56
.Ltmp139:
	.cfi_offset %r12, -48
.Ltmp140:
	.cfi_offset %r13, -40
.Ltmp141:
	.cfi_offset %r14, -32
.Ltmp142:
	.cfi_offset %r15, -24
.Ltmp143:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	8(%rdi), %r12
	movq	8(%r12), %rcx
	movslq	%esi, %rax
	leaq	16(%r12), %r14
	leal	-1(%rax), %edx
	movslq	%edx, %r13
	movq	%rax, %rdx
	shlq	$4, %rdx
	leaq	-16(%rdx,%rcx), %rcx
	.align	16, 0x90
.LBB18_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbp
	movq	%rcx, %rbx
	movl	$-1, %eax
	testq	%rbp, %rbp
	jle	.LBB18_6
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	72(%r12), %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	movq	%r15, %rcx
	callq	array_get
	movzbl	1(%r15), %eax
	cmpl	$13, %eax
	je	.LBB18_5
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB18_1 Depth=1
	movzbl	%al, %edx
	leaq	-1(%rbp), %rax
	decq	%r13
	leaq	-16(%rbx), %rcx
	cmpl	$14, %edx
	je	.LBB18_1
# BB#4:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB18_1 Depth=1
	movzbl	1(%r14), %edx
	cmpl	$6, %edx
	je	.LBB18_1
.LBB18_5:                               # %lor.lhs.false.if.then_crit_edge
	decl	%ebp
	movl	%ebp, %eax
	movups	(%rbx), %xmm0
	movups	%xmm0, 16(%r15)
.LBB18_6:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	dict_next, .Lfunc_end18-dict_next
	.cfi_endproc

	.globl	dict_value_index
	.align	16, 0x90
	.type	dict_value_index,@function
dict_value_index:                       # @dict_value_index
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	subq	8(%rax), %rsi
	shrq	$4, %rsi
	leal	-1(%rsi), %eax
	retq
.Lfunc_end19:
	.size	dict_value_index, .Lfunc_end19-dict_value_index
	.cfi_endproc

	.globl	dict_index_entry
	.align	16, 0x90
	.type	dict_index_entry,@function
dict_index_entry:                       # @dict_index_entry
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp144:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp145:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp146:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp147:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp148:
	.cfi_def_cfa_offset 48
.Ltmp149:
	.cfi_offset %rbx, -40
.Ltmp150:
	.cfi_offset %r12, -32
.Ltmp151:
	.cfi_offset %r14, -24
.Ltmp152:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	8(%rdi), %r12
	movq	72(%r12), %rdi
	leaq	16(%r12), %r15
	incl	%esi
	movslq	%esi, %rbx
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	callq	array_get
	movzbl	1(%r14), %eax
	cmpl	$13, %eax
	je	.LBB20_3
# BB#1:                                 # %lor.lhs.false
	movzbl	%al, %eax
	cmpl	$14, %eax
	movl	$-21, %eax
	je	.LBB20_4
# BB#2:                                 # %lor.lhs.false
	movzbl	1(%r15), %ecx
	cmpl	$6, %ecx
	je	.LBB20_4
.LBB20_3:                               # %if.then
	movq	8(%r12), %rax
	shlq	$4, %rbx
	movups	(%rax,%rbx), %xmm0
	movups	%xmm0, 16(%r14)
	xorl	%eax, %eax
.LBB20_4:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end20:
	.size	dict_index_entry, .Lfunc_end20-dict_index_entry
	.cfi_endproc

	.type	dict_max_size,@object   # @dict_max_size
	.section	.rodata,"a",@progbits
	.globl	dict_max_size
	.align	4
dict_max_size:
	.long	16777215                # 0xffffff
	.size	dict_max_size, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"dict_alloc"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"dict_unpack(keys)"
	.size	.L.str.1, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"dict_unpack(old keys)"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"dict_put(key)"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"dict_put(count)"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"dict_put(value)"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"dict_undef(key)"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"dict_undef(count)"
	.size	.L.str.7, 18

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"dict_undef(value)"
	.size	.L.str.8, 18

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"dict_resize(values)"
	.size	.L.str.9, 20

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"dict_resize(old values)"
	.size	.L.str.10, 24

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"dict_resize(keys)"
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"dict_resize(old keys)"
	.size	.L.str.12, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"dict_resize(maxlength)"
	.size	.L.str.13, 23

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"dict_put(maxlength)"
	.size	.L.str.14, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"dict_create_contents(values)"
	.size	.L.str.15, 29

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"dict_create_contents(packed keys)"
	.size	.L.str.16, 34

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"dict_create_unpacked_keys"
	.size	.L.str.17, 26


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
