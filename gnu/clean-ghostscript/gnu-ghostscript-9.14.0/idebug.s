	.text
	.file	"idebug.bc"
	.globl	debug_print_name
	.align	16, 0x90
	.type	debug_print_name,@function
debug_print_name:                       # @debug_print_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp1:
	.cfi_def_cfa_offset 32
.Ltmp2:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	192(%rbx), %rax
	movq	120(%rax), %rdi
	leaq	(%rsp), %rdx
	callq	names_string_ref
	movq	8(%rsp), %rsi
	movl	4(%rsp), %edx
	movq	%rbx, %rdi
	callq	debug_print_string
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end0:
	.size	debug_print_name, .Lfunc_end0-debug_print_name
	.cfi_endproc

	.globl	debug_print_name_index
	.align	16, 0x90
	.type	debug_print_name_index,@function
debug_print_name_index:                 # @debug_print_name_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp3:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp5:
	.cfi_def_cfa_offset 64
.Ltmp6:
	.cfi_offset %rbx, -24
.Ltmp7:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	192(%rbx), %rax
	movq	120(%rax), %rdi
	leaq	8(%rsp), %r14
	movq	%r14, %rdx
	callq	names_index_ref
	movq	192(%rbx), %rax
	movq	120(%rax), %rdi
	leaq	24(%rsp), %rdx
	movq	%r14, %rsi
	callq	names_string_ref
	movq	32(%rsp), %rsi
	movl	28(%rsp), %edx
	movq	%rbx, %rdi
	callq	debug_print_string
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	debug_print_name_index, .Lfunc_end1-debug_print_name_index
	.cfi_endproc

	.globl	debug_print_ref_packed
	.align	16, 0x90
	.type	debug_print_ref_packed,@function
debug_print_ref_packed:                 # @debug_print_ref_packed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp9:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp12:
	.cfi_def_cfa_offset 80
.Ltmp13:
	.cfi_offset %rbx, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movzwl	(%rbx), %edx
	cmpl	$16384, %edx            # imm = 0x4000
	jb	.LBB2_9
# BB#1:                                 # %if.then
	movl	%edx, %ebx
	andl	$4095, %ebx             # imm = 0xFFF
	shrl	$13, %edx
	leal	-2(%rdx), %eax
	cmpl	$5, %eax
	ja	.LBB2_8
# BB#2:                                 # %if.then
	jmpq	*.LJTI2_1(,%rax,8)
.LBB2_3:                                # %sw.bb.i.7
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	errprintf
	movzwl	%bx, %esi
	leaq	8(%rsp), %rbx
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	op_index_ref
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	debug_print_ref_packed
	jmp	.LBB2_40
.LBB2_9:                                # %if.else
	movl	4(%rbx), %r15d
	movl	$.L.str.17, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	errprintf
	movzbl	1(%rbx), %edx
	leal	-1(%rdx), %eax
	cmpl	$19, %eax
	ja	.LBB2_38
# BB#10:                                # %if.else
	jmpq	*.LJTI2_0(,%rax,8)
.LBB2_35:                               # %strct.i
	movq	8(%rbx), %r15
	xorl	%edi, %edi
	movq	%r15, %rsi
	callq	*gs_ref_memory_procs+120(%rip)
	movl	$.L.str.37, %edx
	testb	$12, (%rbx)
	je	.LBB2_37
# BB#36:                                # %cond.false.i
	movq	%rax, %rdi
	callq	gs_struct_type_name
	movq	%rax, %rdx
.LBB2_37:                               # %cond.end.i
	movl	$.L.str.36, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%r15, %rcx
	callq	errprintf
	jmp	.LBB2_40
.LBB2_8:                                # %sw.default.i.17
	movzwl	%bx, %ecx
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	errprintf
	jmp	.LBB2_40
.LBB2_38:                               # %sw.default.i
	movl	$.L.str.38, %esi
.LBB2_39:                               # %debug_print_full_ref.exit
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	errprintf
	jmp	.LBB2_40
.LBB2_4:                                # %sw.bb.4.i
	movzwl	%bx, %edx
	addl	$-2048, %edx            # imm = 0xFFFFFFFFFFFFF800
	movl	$.L.str.12, %esi
	jmp	.LBB2_39
.LBB2_5:                                # %sw.bb.7.i.8
	movl	$.L.str.13, %esi
	jmp	.LBB2_7
.LBB2_6:                                # %sw.bb.9.i
	movl	$.L.str.14, %esi
.LBB2_7:                                # %ptn.i
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	errprintf
	movq	192(%r14), %rax
	movq	120(%rax), %rdi
	movzwl	%bx, %ebx
	leaq	8(%rsp), %r15
	movl	%ebx, %esi
	movq	%r15, %rdx
	callq	names_index_ref
	movq	16(%rsp), %rdx
	movl	$.L.str.15, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebx, %ecx
	callq	errprintf
	movq	192(%r14), %rax
	movq	120(%rax), %rdi
	leaq	24(%rsp), %rdx
	movq	%r15, %rsi
	jmp	.LBB2_24
.LBB2_13:                               # %sw.bb.7.i
	movzwl	8(%rbx), %edx
	movl	$.L.str.19, %esi
	jmp	.LBB2_39
.LBB2_16:                               # %sw.bb.14.i
	movq	%rbx, %rdi
	callq	dict_length
	movl	%eax, %ebp
	movq	%rbx, %rdi
	callq	dict_maxlength
	movl	%eax, %ecx
	movq	8(%rbx), %r8
	movl	$.L.str.21, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebp, %edx
	callq	errprintf
	jmp	.LBB2_40
.LBB2_17:                               # %sw.bb.19.i
	movq	8(%rbx), %rdx
	movl	$.L.str.22, %esi
	jmp	.LBB2_15
.LBB2_11:                               # %sw.bb.i
	movq	8(%rbx), %rcx
	movl	$.L.str.18, %esi
	jmp	.LBB2_12
.LBB2_21:                               # %sw.bb.28.i
	movq	8(%rbx), %rcx
	movl	$.L.str.25, %esi
	jmp	.LBB2_12
.LBB2_33:                               # %sw.bb.64.i
	movq	8(%rbx), %rcx
	movl	$.L.str.34, %esi
	jmp	.LBB2_12
.LBB2_18:                               # %sw.bb.23.i
	movq	8(%rbx), %rdx
	movl	$.L.str.23, %esi
	jmp	.LBB2_15
.LBB2_19:                               # %sw.bb.26.i
	movl	$.L.str.24, %esi
	jmp	.LBB2_20
.LBB2_22:                               # %sw.bb.31.i
	movq	8(%rbx), %rbp
	movq	192(%r14), %rax
	movq	120(%rax), %rdi
	movq	%rbx, %rsi
	callq	names_index
	movl	%eax, %ecx
	movl	$.L.str.26, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbp, %rdx
	callq	errprintf
	jmp	.LBB2_23
.LBB2_25:                               # %sw.bb.35.i
	movl	$.L.str.27, %esi
.LBB2_20:                               # %debug_print_full_ref.exit
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	errprintf
	jmp	.LBB2_40
.LBB2_27:                               # %sw.bb.45.i
	movl	$.L.str.29, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%r15d, %edx
	callq	errprintf
	testl	%r15d, %r15d
	je	.LBB2_30
# BB#28:                                # %sw.bb.45.i
	cmpl	op_def_count(%rip), %r15d
	jae	.LBB2_30
# BB#29:                                # %if.then.i
	movl	%r15d, %eax
	andl	$15, %eax
	shrl	$4, %r15d
	movq	op_defs_all(,%r15,8), %rcx
	shlq	$4, %rax
	movq	(%rcx,%rax), %rdx
	incq	%rdx
	movl	$.L.str.30, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	errprintf
.LBB2_30:                               # %if.end.i
	movq	8(%rbx), %rdx
	movl	$.L.str.31, %esi
	jmp	.LBB2_15
.LBB2_31:                               # %sw.bb.57.i
	movss	8(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.32, %esi
	movb	$1, %al
	movq	%r14, %rdi
	callq	errprintf
	jmp	.LBB2_40
.LBB2_32:                               # %sw.bb.61.i
	movq	8(%rbx), %rdx
	movl	$.L.str.33, %esi
	jmp	.LBB2_15
.LBB2_34:                               # %sw.bb.68.i
	movq	8(%rbx), %rcx
	movl	$.L.str.35, %esi
.LBB2_12:                               # %debug_print_full_ref.exit
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%r15d, %edx
	callq	errprintf
	jmp	.LBB2_40
.LBB2_14:                               # %sw.bb.11.i
	movq	8(%rbx), %rdx
	movl	$.L.str.20, %esi
.LBB2_15:                               # %debug_print_full_ref.exit
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	errprintf
	jmp	.LBB2_40
.LBB2_26:                               # %sw.bb.37.i
	movq	8(%rbx), %rcx
	movl	$.L.str.28, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%r15d, %edx
	callq	errprintf
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	get_op_array
	movq	192(%r14), %rcx
	movq	120(%rcx), %rdi
	subl	28(%rax), %r15d
	movq	16(%rax), %rax
	movzwl	(%rax,%r15,2), %esi
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdx
	callq	names_index_ref
.LBB2_23:                               # %debug_print_full_ref.exit
	movq	192(%r14), %rax
	movq	120(%rax), %rdi
	leaq	24(%rsp), %rdx
	movq	%rbx, %rsi
.LBB2_24:                               # %if.end
	callq	names_string_ref
	movq	32(%rsp), %rsi
	movl	28(%rsp), %edx
	movq	%r14, %rdi
	callq	debug_print_string
.LBB2_40:                               # %if.end
	movq	%r14, %rdi
	callq	errflush
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	debug_print_ref_packed, .Lfunc_end2-debug_print_ref_packed
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_13
	.quad	.LBB2_16
	.quad	.LBB2_17
	.quad	.LBB2_11
	.quad	.LBB2_21
	.quad	.LBB2_33
	.quad	.LBB2_38
	.quad	.LBB2_35
	.quad	.LBB2_35
	.quad	.LBB2_35
	.quad	.LBB2_18
	.quad	.LBB2_19
	.quad	.LBB2_22
	.quad	.LBB2_25
	.quad	.LBB2_27
	.quad	.LBB2_31
	.quad	.LBB2_32
	.quad	.LBB2_34
	.quad	.LBB2_14
	.quad	.LBB2_26
.LJTI2_1:
	.quad	.LBB2_3
	.quad	.LBB2_4
	.quad	.LBB2_8
	.quad	.LBB2_8
	.quad	.LBB2_5
	.quad	.LBB2_6

	.text
	.globl	debug_print_ref
	.align	16, 0x90
	.type	debug_print_ref,@function
debug_print_ref:                        # @debug_print_ref
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	debug_print_ref_packed  # TAILCALL
.Lfunc_end3:
	.size	debug_print_ref, .Lfunc_end3-debug_print_ref
	.cfi_endproc

	.globl	debug_dump_one_ref
	.align	16, 0x90
	.type	debug_dump_one_ref,@function
debug_dump_one_ref:                     # @debug_dump_one_ref
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp18:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp21:
	.cfi_def_cfa_offset 48
.Ltmp22:
	.cfi_offset %rbx, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movzwl	(%r14), %ebp
	movzbl	1(%r14), %edx
	cmpl	tx_next_index(%rip), %edx
	jae	.LBB4_1
# BB#2:                                 # %if.else
	cmpl	$21, %edx
	jb	.LBB4_4
# BB#3:                                 # %if.then.7
	movl	$.L.str.1, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	errprintf
	jmp	.LBB4_5
.LBB4_1:                                # %if.then
	movl	$.L.str, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	errprintf
	jmp	.LBB4_5
.LBB4_4:                                # %if.else.9
	movq	type_strings(,%rdx,8), %rdx
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	errprintf
.LBB4_5:                                # %for.body
	movw	$1, %ax
	movl	$debug_dump_one_ref.apm+6, %ebx
	.align	16, 0x90
.LBB4_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	andl	%ebp, %eax
	movzwl	%ax, %eax
	movzwl	-4(%rbx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB4_8
# BB#7:                                 # %if.then.18
                                        #   in Loop: Header=BB4_6 Depth=1
	movsbl	-2(%rbx), %edx
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	errprintf
.LBB4_8:                                # %for.inc
                                        #   in Loop: Header=BB4_6 Depth=1
	movw	(%rbx), %ax
	addq	$6, %rbx
	testw	%ax, %ax
	jne	.LBB4_6
# BB#9:                                 # %for.end
	movl	4(%r14), %edx
	movq	8(%r14), %rcx
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	errprintf
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	print_ref_data
	movq	%r15, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	errflush                # TAILCALL
.Lfunc_end4:
	.size	debug_dump_one_ref, .Lfunc_end4-debug_dump_one_ref
	.cfi_endproc

	.align	16, 0x90
	.type	print_ref_data,@function
print_ref_data:                         # @print_ref_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
.Ltmp28:
	.cfi_def_cfa_offset 80
.Ltmp29:
	.cfi_offset %rbx, -24
.Ltmp30:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	leaq	16(%rsp), %rbx
	leaq	4(%rsp), %r8
	leaq	8(%rsp), %r9
	movl	$30, %ecx
	movq	%rbx, %rdx
	callq	obj_cvs
	testl	%eax, %eax
	js	.LBB5_11
# BB#1:                                 # %entry
	cmpq	%rbx, 8(%rsp)
	jne	.LBB5_11
# BB#2:                                 # %land.lhs.true.3
	movl	4(%rsp), %eax
	movb	$0, 16(%rsp,%rax)
	movl	$.L.str.58, %edi
	callq	strlen
	cmpq	$3, %rax
	ja	.LBB5_8
# BB#3:                                 # %cond.true
	movl	16(%rsp), %edx
	movzbl	%dl, %ecx
	addl	$-45, %ecx
	testq	%rax, %rax
	je	.LBB5_9
# BB#4:                                 # %cond.true
	testl	%ecx, %ecx
	jne	.LBB5_9
# BB#5:                                 # %if.then
	movzbl	%dh, %ecx  # NOREX
	addl	$-45, %ecx
	cmpq	$2, %rax
	jb	.LBB5_9
# BB#6:                                 # %if.then
	testl	%ecx, %ecx
	jne	.LBB5_9
# BB#7:                                 # %if.then.26
	movl	%edx, %ecx
	shrl	$16, %ecx
	shrl	$24, %edx
	movzbl	%cl, %ecx
	addl	$-110, %ecx
	addl	$-111, %edx
	testl	%ecx, %ecx
	cmovnel	%ecx, %edx
	cmpq	$2, %rax
	cmovbel	%ecx, %edx
	movl	%edx, %ecx
	jmp	.LBB5_9
.LBB5_8:                                # %cond.false
	leaq	16(%rsp), %rdi
	movl	$.L.str.58, %esi
	callq	strcmp
	movl	%eax, %ecx
.LBB5_9:                                # %cond.end
	testl	%ecx, %ecx
	je	.LBB5_11
# BB#10:                                # %if.then.46
	leaq	16(%rsp), %rdx
	movl	$.L.str.59, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	errprintf
.LBB5_11:                               # %if.end.49
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end5:
	.size	print_ref_data, .Lfunc_end5-print_ref_data
	.cfi_endproc

	.globl	debug_dump_refs
	.align	16, 0x90
	.type	debug_dump_refs,@function
debug_dump_refs:                        # @debug_dump_refs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 32
.Ltmp34:
	.cfi_offset %rbx, -32
.Ltmp35:
	.cfi_offset %r14, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testl	%ebp, %ebp
	je	.LBB6_3
# BB#1:                                 # %entry
	testq	%rcx, %rcx
	je	.LBB6_3
# BB#2:                                 # %if.then
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	callq	errprintf
.LBB6_3:                                # %while.cond.preheader
	testl	%ebp, %ebp
	je	.LBB6_5
	.align	16, 0x90
.LBB6_4:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rbx), %ecx
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	errprintf
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	debug_dump_one_ref
	movl	$.L.str.3, %esi
	movl	$10, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	errprintf
	addq	$16, %rbx
	decl	%ebp
	jne	.LBB6_4
.LBB6_5:                                # %while.end
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	debug_dump_refs, .Lfunc_end6-debug_dump_refs
	.cfi_endproc

	.globl	debug_dump_stack
	.align	16, 0x90
	.type	debug_dump_stack,@function
debug_dump_stack:                       # @debug_dump_stack
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
	pushq	%rax
.Ltmp43:
	.cfi_def_cfa_offset 64
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
	movq	%rdx, %r13
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	%r14, %rdi
	callq	ref_stack_count
	movl	%eax, %r12d
	testl	%r12d, %r12d
	je	.LBB7_5
# BB#1:                                 # %for.body.lr.ph
	movl	%r12d, %ebx
	decl	%ebx
	.align	16, 0x90
.LBB7_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	ref_stack_index
	movq	%rax, %rbp
	testq	%r13, %r13
	je	.LBB7_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB7_2 Depth=1
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%r13, %rdx
	movq	%r14, %rcx
	callq	errprintf
.LBB7_4:                                # %if.end
                                        #   in Loop: Header=BB7_2 Depth=1
	movzbl	1(%rbp), %ecx
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%rbp, %rdx
	callq	errprintf
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	debug_dump_one_ref
	movl	$.L.str.3, %esi
	movl	$10, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	errprintf
	decq	%rbx
	decl	%r12d
	movl	$0, %r13d
	jne	.LBB7_2
.LBB7_5:                                # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	debug_dump_stack, .Lfunc_end7-debug_dump_stack
	.cfi_endproc

	.globl	debug_dump_array
	.align	16, 0x90
	.type	debug_dump_array,@function
debug_dump_array:                       # @debug_dump_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%r14
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
	.cfi_offset %r14, -32
.Ltmp57:
	.cfi_offset %r15, -24
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsi, %rcx
	movq	%rdi, %r14
	movzbl	1(%rcx), %eax
	leal	-4(%rax), %edx
	cmpl	$3, %edx
	jae	.LBB8_1
# BB#6:                                 # %sw.epilog
	movl	4(%rcx), %ebp
	testl	%ebp, %ebp
	je	.LBB8_15
# BB#7:                                 # %for.body.lr.ph
	movq	8(%rcx), %rbx
	leaq	8(%rsp), %r15
	.align	16, 0x90
.LBB8_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	packed_get
	movzwl	(%rbx), %ecx
	cmpl	$16384, %ecx            # imm = 0x4000
	jb	.LBB8_10
# BB#9:                                 # %if.then
                                        #   in Loop: Header=BB8_8 Depth=1
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	errprintf
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	print_ref_data
	jmp	.LBB8_11
	.align	16, 0x90
.LBB8_10:                               # %if.else
                                        #   in Loop: Header=BB8_8 Depth=1
	movzbl	9(%rsp), %ecx
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	errprintf
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	debug_dump_one_ref
.LBB8_11:                               # %if.end
                                        #   in Loop: Header=BB8_8 Depth=1
	movl	$.L.str.3, %esi
	movl	$10, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	errprintf
	decl	%ebp
	movzwl	(%rbx), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB8_13
# BB#12:                                #   in Loop: Header=BB8_8 Depth=1
	addq	$2, %rbx
	jmp	.LBB8_14
	.align	16, 0x90
.LBB8_13:                               # %select.mid
                                        #   in Loop: Header=BB8_8 Depth=1
	addq	$16, %rbx
.LBB8_14:                               # %select.end
                                        #   in Loop: Header=BB8_8 Depth=1
	testl	%ebp, %ebp
	jne	.LBB8_8
.LBB8_15:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_1:                                # %entry
	cmpl	$20, %eax
	jne	.LBB8_2
# BB#5:                                 # %sw.bb
	movq	8(%rcx), %rsi
	movq	%r14, %rdi
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	debug_dump_array        # TAILCALL
.LBB8_2:                                # %sw.default
	movl	$.L.str.9, %edx
	cmpl	$20, %eax
	ja	.LBB8_4
# BB#3:                                 # %cond.true
	movq	type_strings(,%rax,8), %rdx
.LBB8_4:                                # %cond.end
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	errprintf               # TAILCALL
.Lfunc_end8:
	.size	debug_dump_array, .Lfunc_end8-debug_dump_array
	.cfi_endproc

	.type	debug_dump_one_ref.apm,@object # @debug_dump_one_ref.apm
	.section	.rodata,"a",@progbits
	.align	16
debug_dump_one_ref.apm:
	.short	1                       # 0x1
	.short	1                       # 0x1
	.byte	109                     # 0x6d
	.zero	1
	.short	1                       # 0x1
	.short	0                       # 0x0
	.byte	45                      # 0x2d
	.zero	1
	.short	2                       # 0x2
	.short	2                       # 0x2
	.byte	110                     # 0x6e
	.zero	1
	.short	2                       # 0x2
	.short	0                       # 0x0
	.byte	45                      # 0x2d
	.zero	1
	.short	12                      # 0xc
	.short	0                       # 0x0
	.byte	70                      # 0x46
	.zero	1
	.short	12                      # 0xc
	.short	4                       # 0x4
	.byte	83                      # 0x53
	.zero	1
	.short	12                      # 0xc
	.short	8                       # 0x8
	.byte	71                      # 0x47
	.zero	1
	.short	12                      # 0xc
	.short	12                      # 0xc
	.byte	76                      # 0x4c
	.zero	1
	.short	16                      # 0x10
	.short	16                      # 0x10
	.byte	119                     # 0x77
	.zero	1
	.short	16                      # 0x10
	.short	0                       # 0x0
	.byte	45                      # 0x2d
	.zero	1
	.short	32                      # 0x20
	.short	32                      # 0x20
	.byte	114                     # 0x72
	.zero	1
	.short	32                      # 0x20
	.short	0                       # 0x0
	.byte	45                      # 0x2d
	.zero	1
	.short	64                      # 0x40
	.short	64                      # 0x40
	.byte	120                     # 0x78
	.zero	1
	.short	64                      # 0x40
	.short	0                       # 0x0
	.byte	45                      # 0x2d
	.zero	1
	.short	128                     # 0x80
	.short	128                     # 0x80
	.byte	101                     # 0x65
	.zero	1
	.short	128                     # 0x80
	.short	0                       # 0x0
	.byte	45                      # 0x2d
	.zero	1
	.short	16384                   # 0x4000
	.short	16384                   # 0x4000
	.byte	63                      # 0x3f
	.zero	1
	.short	16384                   # 0x4000
	.short	0                       # 0x0
	.byte	45                      # 0x2d
	.zero	1
	.short	32768                   # 0x8000
	.short	32768                   # 0x8000
	.byte	63                      # 0x3f
	.zero	1
	.short	32768                   # 0x8000
	.short	0                       # 0x0
	.byte	45                      # 0x2d
	.zero	1
	.zero	6
	.size	debug_dump_one_ref.apm, 126

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"0x%02x?? "
	.size	.L.str, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"opr* "
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s "
	.size	.L.str.2, 4

	.type	type_strings,@object    # @type_strings
	.section	.rodata,"a",@progbits
	.align	16
type_strings:
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.41
	.quad	.L.str.42
	.quad	.L.str.43
	.quad	.L.str.44
	.quad	.L.str.45
	.quad	.L.str.46
	.quad	.L.str.47
	.quad	.L.str.48
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	.L.str.24
	.quad	.L.str.51
	.quad	.L.str.27
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.57
	.size	type_strings, 168

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"%c"
	.size	.L.str.3, 3

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	" 0x%04x 0x%08lx"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%s at 0x%lx:\n"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"0x%lx: 0x%04x "
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"0x%lx: 0x%02x "
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s at 0x%lx isn't an array.\n"
	.size	.L.str.8, 29

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"????"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"0x%lx* 0x%04x "
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"<op_name>"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"<int> %d"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"<lit_name>"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"<exec_name>"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"(0x%lx#%u)"
	.size	.L.str.15, 11

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"<packed_%d?>0x%x"
	.size	.L.str.16, 17

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"(%x)"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"array(%u)0x%lx"
	.size	.L.str.18, 15

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"boolean %x"
	.size	.L.str.19, 11

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"device 0x%lx"
	.size	.L.str.20, 13

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"dict(%u/%u)0x%lx"
	.size	.L.str.21, 17

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"file 0x%lx"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"int %ld"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"mark"
	.size	.L.str.24, 5

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"mixed packedarray(%u)0x%lx"
	.size	.L.str.25, 27

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"name(0x%lx#%u)"
	.size	.L.str.26, 15

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"null"
	.size	.L.str.27, 5

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"op_array(%u)0x%lx:"
	.size	.L.str.28, 19

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"op(%u"
	.size	.L.str.29, 6

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	":%s"
	.size	.L.str.30, 4

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	")0x%lx"
	.size	.L.str.31, 7

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"real %f"
	.size	.L.str.32, 8

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"save %lu"
	.size	.L.str.33, 9

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"short packedarray(%u)0x%lx"
	.size	.L.str.34, 27

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"string(%u)0x%lx"
	.size	.L.str.35, 16

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"struct %s 0x%lx"
	.size	.L.str.36, 16

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"-foreign-"
	.size	.L.str.37, 10

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"type 0x%x"
	.size	.L.str.38, 10

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"INVL"
	.size	.L.str.39, 5

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"bool"
	.size	.L.str.40, 5

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"dict"
	.size	.L.str.41, 5

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"file"
	.size	.L.str.42, 5

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"arry"
	.size	.L.str.43, 5

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"mpry"
	.size	.L.str.44, 5

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"spry"
	.size	.L.str.45, 5

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"u?ry"
	.size	.L.str.46, 5

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"STRC"
	.size	.L.str.47, 5

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"ASTR"
	.size	.L.str.48, 5

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"font"
	.size	.L.str.49, 5

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"int "
	.size	.L.str.50, 5

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"name"
	.size	.L.str.51, 5

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"oper"
	.size	.L.str.52, 5

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"real"
	.size	.L.str.53, 5

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"save"
	.size	.L.str.54, 5

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"str "
	.size	.L.str.55, 5

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"devc"
	.size	.L.str.56, 5

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"opry"
	.size	.L.str.57, 5

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"--nostringval--"
	.size	.L.str.58, 16

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	" = %s"
	.size	.L.str.59, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
