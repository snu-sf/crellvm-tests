	.text
	.file	"zstring.bc"
	.globl	zstring
	.align	16, 0x90
	.type	zstring,@function
zstring:                                # @zstring
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
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	624(%r15), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB0_6
# BB#1:                                 # %if.end
	movq	8(%rbx), %r14
	movl	$-15, %ebp
	testq	%r14, %r14
	js	.LBB0_5
# BB#2:                                 # %if.end.5
	movl	$-13, %ebp
	cmpq	$16777216, %r14         # imm = 0x1000000
	jg	.LBB0_5
# BB#3:                                 # %if.end.11
	movq	8(%r15), %rdi
	movl	$.L.str, %edx
	movl	%r14d, %esi
	callq	*136(%rdi)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB0_5
# BB#4:                                 # %if.end.21
	movq	%rax, 8(%rbx)
	movl	56(%r15), %ecx
	orl	$112, %ecx
	addl	$4608, %ecx             # imm = 0x1200
	movw	%cx, (%rbx)
	movl	%r14d, 4(%rbx)
	movl	%r14d, %edx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
.LBB0_5:                                # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_6:                                # %if.then
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.Lfunc_end0:
	.size	zstring, .Lfunc_end0-zstring
	.cfi_endproc

	.align	16, 0x90
	.type	zbytestring,@function
zbytestring:                            # @zbytestring
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp13:
	.cfi_def_cfa_offset 48
.Ltmp14:
	.cfi_offset %rbx, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	624(%r15), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB1_5
# BB#1:                                 # %if.end
	movq	8(%rbx), %r14
	movl	$-15, %ebp
	cmpq	$2147483647, %r14       # imm = 0x7FFFFFFF
	ja	.LBB1_4
# BB#2:                                 # %do.end
	movq	8(%r15), %rdi
	movl	$.L.str.8, %edx
	movl	%r14d, %esi
	callq	*64(%rdi)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB1_4
# BB#3:                                 # %if.end.15
	movq	%rax, 8(%rbx)
	movl	56(%r15), %ecx
	orl	$112, %ecx
	addl	$2304, %ecx             # imm = 0x900
	movw	%cx, (%rbx)
	movl	%r14d, %edx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
.LBB1_4:                                # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_5:                                # %if.then
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.Lfunc_end1:
	.size	zbytestring, .Lfunc_end1-zbytestring
	.cfi_endproc

	.align	16, 0x90
	.type	zanchorsearch,@function
zanchorsearch:                          # @zanchorsearch
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 48
.Ltmp23:
	.cfi_offset %rbx, -48
.Ltmp24:
	.cfi_offset %r12, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	624(%r15), %rbx
	movl	4(%rbx), %r14d
	movzwl	(%rbx), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB2_1
# BB#4:                                 # %if.end
	leaq	-16(%rbx), %r12
	movzwl	(%r12), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB2_5
# BB#7:                                 # %if.end.26
	movl	-12(%rbx), %ebp
	subl	%r14d, %ebp
	jb	.LBB2_8
# BB#9:                                 # %land.lhs.true
	movq	-8(%rbx), %rdi
	movq	8(%rbx), %rsi
	movq	%r14, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB2_10
.LBB2_8:                                # %if.end.26.if.else.58_crit_edge
	leaq	8(%rbx), %rax
	movw	$0, (%rax)
	movw	$256, (%rbx)            # imm = 0x100
.LBB2_13:                               # %cleanup.64
	xorl	%eax, %eax
	jmp	.LBB2_14
.LBB2_1:                                # %if.then
	movzbl	1(%rbx), %ecx
	movl	$-7, %eax
	cmpl	$18, %ecx
	je	.LBB2_14
# BB#2:                                 # %cond.true
	movq	%rbx, %rdi
	jmp	.LBB2_3
.LBB2_5:                                # %if.then.14
	movzbl	1(%r12), %ecx
	movl	$-7, %eax
	cmpl	$18, %ecx
	je	.LBB2_14
# BB#6:                                 # %cond.true.21
	movq	%r12, %rdi
.LBB2_3:                                # %cond.true
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB2_10:                               # %if.then.35
	leaq	16(%rbx), %rax
	cmpq	640(%r15), %rax
	jbe	.LBB2_12
# BB#11:                                # %if.then.41
	movl	$1, 688(%r15)
	movl	$-16, %eax
.LBB2_14:                               # %cleanup.64
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_12:                               # %if.else
	movq	%rax, 624(%r15)
	movups	(%r12), %xmm0
	movups	%xmm0, (%rbx)
	movl	%r14d, 4(%rbx)
	addq	%r14, -8(%rbx)
	movl	%ebp, -12(%rbx)
	movw	$1, 24(%rbx)
	movw	$256, 16(%rbx)          # imm = 0x100
	jmp	.LBB2_13
.Lfunc_end2:
	.size	zanchorsearch, .Lfunc_end2-zanchorsearch
	.cfi_endproc

	.align	16, 0x90
	.type	znamestring,@function
znamestring:                            # @znamestring
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp28:
	.cfi_def_cfa_offset 16
	movq	624(%rdi), %rax
	movzbl	1(%rax), %ecx
	cmpl	$13, %ecx
	jne	.LBB3_2
# BB#1:                                 # %cleanup
	movq	8(%rdi), %rcx
	movq	192(%rcx), %rcx
	movq	120(%rcx), %rdi
	movq	%rax, %rsi
	movq	%rax, %rdx
	callq	names_string_ref
	xorl	%eax, %eax
	popq	%rdx
	retq
.LBB3_2:                                # %if.then
	movq	%rax, %rdi
	popq	%rax
	jmp	check_type_failed       # TAILCALL
.Lfunc_end3:
	.size	znamestring, .Lfunc_end3-znamestring
	.cfi_endproc

	.align	16, 0x90
	.type	zsearch,@function
zsearch:                                # @zsearch
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp30:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp32:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp33:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp35:
	.cfi_def_cfa_offset 80
.Ltmp36:
	.cfi_offset %rbx, -56
.Ltmp37:
	.cfi_offset %r12, -48
.Ltmp38:
	.cfi_offset %r13, -40
.Ltmp39:
	.cfi_offset %r14, -32
.Ltmp40:
	.cfi_offset %r15, -24
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rdi, %rcx
	movq	624(%rcx), %r13
	leaq	-16(%r13), %rdi
	movl	4(%r13), %r15d
	movzwl	-16(%r13), %r14d
	movl	%r14d, %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB4_1
# BB#3:                                 # %if.end
	movzwl	(%r13), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB4_4
# BB#6:                                 # %if.end.26
	movl	-12(%r13), %ebp
	subl	%r15d, %ebp
	jb	.LBB4_7
# BB#8:                                 # %if.end.34
	movq	-8(%r13), %rbx
	testl	%r15d, %r15d
	je	.LBB4_13
# BB#9:                                 # %if.end.41
	movq	%rcx, (%rsp)            # 8-byte Spill
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	8(%r13), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movzbl	(%rax), %r12d
	.align	16, 0x90
.LBB4_10:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %eax
	cmpl	%r12d, %eax
	jne	.LBB4_16
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_10 Depth=1
	cmpl	$1, %r15d
	je	.LBB4_12
# BB#15:                                # %lor.lhs.false
                                        #   in Loop: Header=BB4_10 Depth=1
	movq	%rbx, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	%r15, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB4_12
.LBB4_16:                               # %if.end.54
                                        #   in Loop: Header=BB4_10 Depth=1
	incq	%rbx
	decl	%ebp
	cmpl	$-1, %ebp
	jne	.LBB4_10
.LBB4_7:                                # %if.then.31
	movw	$0, 8(%r13)
	movw	$256, (%r13)            # imm = 0x100
	jmp	.LBB4_18
.LBB4_1:                                # %if.then
	movzbl	1(%rdi), %ecx
	movl	$-7, %eax
	cmpl	$18, %ecx
	je	.LBB4_19
	jmp	.LBB4_2
.LBB4_4:                                # %if.then.14
	movzbl	1(%r13), %ecx
	movl	$-7, %eax
	cmpl	$18, %ecx
	je	.LBB4_19
# BB#5:                                 # %cond.true.21
	movq	%r13, %rdi
.LBB4_2:                                # %cond.true
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB4_12:
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	(%rsp), %rcx            # 8-byte Reload
.LBB4_13:                               # %found
	movw	%r14w, (%r13)
	movq	%rbx, 8(%r13)
	movl	%r15d, 4(%r13)
	leaq	32(%r13), %rax
	cmpq	640(%rcx), %rax
	jbe	.LBB4_17
# BB#14:                                # %if.then.74
	movl	$2, 688(%rcx)
	movl	$-16, %eax
	jmp	.LBB4_19
.LBB4_17:                               # %if.else
	movq	%rax, 624(%rcx)
	movups	(%rdi), %xmm0
	movups	%xmm0, 16(%r13)
	movl	24(%r13), %eax
	movl	%ebx, %ecx
	subl	%eax, %ecx
	movl	%ecx, 20(%r13)
	addq	%rbx, %r15
	movq	%r15, -8(%r13)
	movl	%ebp, -12(%r13)
	movw	$1, 40(%r13)
	movw	$256, 32(%r13)          # imm = 0x100
.LBB4_18:                               # %cleanup
	xorl	%eax, %eax
.LBB4_19:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	zsearch, .Lfunc_end4-zsearch
	.cfi_endproc

	.align	16, 0x90
	.type	zstringbreak,@function
zstringbreak:                           # @zstringbreak
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 40
.Ltmp46:
	.cfi_offset %rbx, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rdi, %r11
	movq	624(%r11), %r15
	leaq	-16(%r15), %rdi
	movzwl	-16(%r15), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB5_1
# BB#3:                                 # %if.end
	movzwl	(%r15), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB5_8
# BB#4:                                 # %for.cond.preheader
	movl	-12(%r15), %r9d
	movw	$3584, %r8w             # imm = 0xE00
	testl	%r9d, %r9d
	je	.LBB5_14
# BB#5:                                 # %for.cond.32.preheader.lr.ph
	movl	4(%r15), %edx
	xorl	%r14d, %r14d
.LBB5_6:                                # %for.cond.32.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_11 Depth 2
	testl	%edx, %edx
	je	.LBB5_13
# BB#7:                                 # %for.body.37.lr.ph
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	%r14d, %r10d
	movq	-8(%r15), %rsi
	movq	8(%r15), %rax
	movb	(%rsi,%r10), %bl
	xorl	%esi, %esi
	.align	16, 0x90
.LBB5_11:                               # %for.body.37
                                        #   Parent Loop BB5_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax,%rsi), %ebp
	movzbl	%bl, %ecx
	cmpl	%ebp, %ecx
	je	.LBB5_12
# BB#10:                                # %for.cond.32
                                        #   in Loop: Header=BB5_11 Depth=2
	incq	%rsi
	cmpl	%edx, %esi
	jb	.LBB5_11
.LBB5_13:                               # %for.inc.56
                                        #   in Loop: Header=BB5_6 Depth=1
	incl	%r14d
	cmpl	%r9d, %r14d
	jb	.LBB5_6
	jmp	.LBB5_14
.LBB5_1:                                # %if.then
	movzbl	1(%rdi), %ecx
	movl	$-7, %eax
	cmpl	$18, %ecx
	je	.LBB5_15
	jmp	.LBB5_2
.LBB5_8:                                # %if.then.16
	movzbl	1(%r15), %edx
	movl	$-7, %eax
	cmpl	$18, %edx
	je	.LBB5_15
# BB#9:                                 # %cond.true.23
	movq	%r15, %rdi
.LBB5_2:                                # %cond.true
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB5_12:                               # %if.then.48
	movq	%r10, -8(%r15)
	movw	$2816, %r8w             # imm = 0xB00
.LBB5_14:                               # %done
	movw	%r8w, (%rdi)
	movq	%rdi, 624(%r11)
	xorl	%eax, %eax
.LBB5_15:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	zstringbreak, .Lfunc_end5-zstringbreak
	.cfi_endproc

	.align	16, 0x90
	.type	zstringmatch,@function
zstringmatch:                           # @zstringmatch
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 32
.Ltmp53:
	.cfi_offset %rbx, -32
.Ltmp54:
	.cfi_offset %r14, -24
.Ltmp55:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzwl	(%rbx), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB6_1
# BB#3:                                 # %if.end
	leaq	-16(%rbx), %rsi
	movzbl	1(%rsi), %eax
	cmpl	$13, %eax
	jne	.LBB6_4
# BB#6:                                 # %sw.bb.17
	movq	8(%r14), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	%rsi, %rdx
	callq	names_string_ref
	jmp	.LBB6_7
.LBB6_1:                                # %if.then
	movzbl	1(%rbx), %ecx
	movl	$-7, %eax
	cmpl	$18, %ecx
	je	.LBB6_13
# BB#2:                                 # %cond.true
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.LBB6_4:                                # %if.end
	cmpl	$18, %eax
	jne	.LBB6_8
# BB#5:                                 # %do.body
	movl	$-7, %eax
	testb	$32, (%rsi)
	je	.LBB6_13
.LBB6_7:                                # %cmp.18
	leaq	-8(%rbx), %r15
	movq	-8(%rbx), %rdi
	movl	-12(%rbx), %esi
	movq	8(%rbx), %rdx
	movl	4(%rbx), %ecx
	xorl	%r8d, %r8d
	callq	string_match
	movq	624(%r14), %rcx
	jmp	.LBB6_12
.LBB6_8:                                # %sw.default
	cmpl	$1, 4(%rbx)
	jne	.LBB6_9
# BB#10:                                # %land.rhs
	movq	8(%rbx), %rax
	movzbl	(%rax), %eax
	cmpl	$42, %eax
	sete	%al
	jmp	.LBB6_11
.LBB6_9:
	xorl	%eax, %eax
.LBB6_11:                               # %land.end
	movzbl	%al, %eax
	leaq	-8(%rbx), %r15
	movq	%rbx, %rcx
.LBB6_12:                               # %sw.epilog
	movw	%ax, (%r15)
	movw	$256, -16(%rbx)         # imm = 0x100
	addq	$-16, %rcx
	movq	%rcx, 624(%r14)
	xorl	%eax, %eax
.LBB6_13:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end6:
	.size	zstringmatch, .Lfunc_end6-zstringmatch
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"string"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"1.bytestring"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"2anchorsearch"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"1.namestring"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"2search"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"1string"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"2.stringbreak"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"2.stringmatch"
	.size	.L.str.7, 14

	.type	zstring_op_defs,@object # @zstring_op_defs
	.section	.rodata,"a",@progbits
	.globl	zstring_op_defs
	.align	16
zstring_op_defs:
	.quad	.L.str.1
	.quad	zbytestring
	.quad	.L.str.2
	.quad	zanchorsearch
	.quad	.L.str.3
	.quad	znamestring
	.quad	.L.str.4
	.quad	zsearch
	.quad	.L.str.5
	.quad	zstring
	.quad	.L.str.6
	.quad	zstringbreak
	.quad	.L.str.7
	.quad	zstringmatch
	.zero	16
	.size	zstring_op_defs, 128

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	".bytestring"
	.size	.L.str.8, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
