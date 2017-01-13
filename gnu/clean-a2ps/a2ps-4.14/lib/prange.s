	.text
	.file	"prange.bc"
	.globl	page_range_new
	.align	16, 0x90
	.type	page_range_new,@function
page_range_new:                         # @page_range_new
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
	movl	$16, %eax
	movl	%eax, %edi
	callq	xmalloc
	movabsq	$.L.str, %rdi
	movl	$5, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movl	$10, %ecx
                                        # kill: RCX<def> ECX<kill>
	movabsq	$interval_self_print, %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	%rax, -8(%rbp)
	callq	da_new
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movb	$0, 8(%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	page_range_new, .Lfunc_end0-page_range_new
	.cfi_endproc

	.align	16, 0x90
	.type	interval_self_print,@function
interval_self_print:                    # @interval_self_print
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpl	$0, (%rsi)
	je	.LBB1_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$0, 4(%rax)
	je	.LBB1_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.4, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jmp	.LBB1_7
.LBB1_3:                                # %if.else
	movq	-8(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB1_5
# BB#4:                                 # %if.then.6
	movabsq	$.L.str.5, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB1_6
.LBB1_5:                                # %if.else.9
	movabsq	$.L.str.6, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB1_6:                                # %if.end
	jmp	.LBB1_7
.LBB1_7:                                # %if.end.12
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	interval_self_print, .Lfunc_end1-interval_self_print
	.cfi_endproc

	.globl	page_range_free
	.align	16, 0x90
	.type	page_range_free,@function
page_range_free:                        # @page_range_free
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
	movabsq	$free, %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	da_free
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	page_range_free, .Lfunc_end2-page_range_free
	.cfi_endproc

	.globl	page_range_to_buffer
	.align	16, 0x90
	.type	page_range_to_buffer,@function
page_range_to_buffer:                   # @page_range_to_buffer
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -36(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	48(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movq	$0, -32(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB3_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	-20(%rbp), %esi
	callq	interval_applies_above
	cmpl	$0, %eax
	je	.LBB3_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpl	$0, -36(%rbp)
	je	.LBB3_5
# BB#4:                                 # %if.then.4
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$44, (%rax)
.LBB3_5:                                # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	interval_to_buffer
	movq	%rax, -16(%rbp)
	movl	$1, -36(%rbp)
.LBB3_6:                                # %if.end.7
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_7
.LBB3_7:                                # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB3_1
.LBB3_8:                                # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	page_range_to_buffer, .Lfunc_end3-page_range_to_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	interval_applies_above,@function
interval_applies_above:                 # @interval_applies_above
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	(%rdi), %esi
	cmpl	-20(%rbp), %esi
	jg	.LBB4_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$0, 4(%rax)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB4_4
.LBB4_3:                                # %if.end
	movl	$1, -4(%rbp)
.LBB4_4:                                # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	interval_applies_above, .Lfunc_end4-interval_applies_above
	.cfi_endproc

	.align	16, 0x90
	.type	interval_to_buffer,@function
interval_to_buffer:                     # @interval_to_buffer
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 4(%rsi)
	je	.LBB5_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jge	.LBB5_3
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_18
.LBB5_3:                                # %if.end
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true.4
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jg	.LBB5_6
# BB#5:                                 # %if.then.7
	movl	$1, -32(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	subl	-28(%rbp), %ecx
	movl	%ecx, -32(%rbp)
.LBB5_7:                                # %if.end.9
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jne	.LBB5_9
# BB#8:                                 # %if.then.12
	movabsq	$.L.str.7, %rsi
	movq	-24(%rbp), %rdi
	movl	-32(%rbp), %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB5_17
.LBB5_9:                                # %if.else.13
	cmpl	$0, -32(%rbp)
	je	.LBB5_12
# BB#10:                                # %land.lhs.true.15
	movq	-16(%rbp), %rax
	cmpl	$0, 4(%rax)
	je	.LBB5_12
# BB#11:                                # %if.then.18
	movabsq	$.L.str.4, %rsi
	movq	-24(%rbp), %rdi
	movl	-32(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	subl	-28(%rbp), %ecx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB5_16
.LBB5_12:                               # %if.else.22
	cmpl	$0, -32(%rbp)
	je	.LBB5_14
# BB#13:                                # %if.then.24
	movabsq	$.L.str.5, %rsi
	movq	-24(%rbp), %rdi
	movl	-32(%rbp), %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB5_15
.LBB5_14:                               # %if.else.26
	movabsq	$.L.str.8, %rsi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	subl	-28(%rbp), %ecx
	movl	%ecx, %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB5_15:                               # %if.end.30
	jmp	.LBB5_16
.LBB5_16:                               # %if.end.31
	jmp	.LBB5_17
.LBB5_17:                               # %if.end.32
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-56(%rbp), %rdi         # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -8(%rbp)
.LBB5_18:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	interval_to_buffer, .Lfunc_end5-interval_to_buffer
	.cfi_endproc

	.globl	page_range_applies_above
	.align	16, 0x90
	.type	page_range_applies_above,@function
page_range_applies_above:               # @page_range_applies_above
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	48(%rdi), %rdi
	movq	%rdi, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	cmpq	$0, 40(%rdi)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB6_10
.LBB6_2:                                # %if.end
	movq	$0, -32(%rbp)
.LBB6_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB6_9
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	(%rax), %edx
	cmpl	-20(%rbp), %edx
	jge	.LBB6_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$0, 4(%rax)
	jne	.LBB6_7
# BB#6:                                 # %if.then.9
	movl	$0, -4(%rbp)
	jmp	.LBB6_10
.LBB6_7:                                # %if.end.10
                                        #   in Loop: Header=BB6_3 Depth=1
	jmp	.LBB6_8
.LBB6_8:                                # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB6_3
.LBB6_9:                                # %for.end
	movl	$1, -4(%rbp)
.LBB6_10:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	page_range_applies_above, .Lfunc_end6-page_range_applies_above
	.cfi_endproc

	.globl	a2ps_page_range_set_string
	.align	16, 0x90
	.type	a2ps_page_range_set_string,@function
a2ps_page_range_set_string:             # @a2ps_page_range_set_string
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	1624(%rsi), %rdi
	callq	page_range_reset
	cmpq	$0, -16(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_30
.LBB7_2:                                # %if.end
	jmp	.LBB7_3
.LBB7_3:                                # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	%rax, %rdi
	callq	strlen
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	strcpy
	movq	%rax, -56(%rbp)         # 8-byte Spill
# BB#4:                                 # %do.end
	movabsq	$.L.str.1, %rsi
	movq	-32(%rbp), %rdi
	callq	strtok
	movq	%rax, -24(%rbp)
.LBB7_5:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_8 Depth 2
                                        #     Child Loop BB7_14 Depth 2
	cmpq	$0, -24(%rbp)
	je	.LBB7_30
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB7_5 Depth=1
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	movslq	%ecx, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movzwl	(%rax,%rdx,2), %ecx
	andl	$2048, %ecx             # imm = 0x800
	cmpl	$0, %ecx
	je	.LBB7_11
# BB#7:                                 # %if.then.7
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	-24(%rbp), %rdi
	callq	atoi
	movl	%eax, -36(%rbp)
.LBB7_8:                                # %while.cond.9
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	movslq	%ecx, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movzwl	(%rax,%rdx,2), %ecx
	andl	$2048, %ecx             # imm = 0x800
	cmpl	$0, %ecx
	je	.LBB7_10
# BB#9:                                 # %while.body.17
                                        #   in Loop: Header=BB7_8 Depth=2
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB7_8
.LBB7_10:                               # %while.end
                                        #   in Loop: Header=BB7_5 Depth=1
	jmp	.LBB7_11
.LBB7_11:                               # %if.end.18
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -24(%rbp)
	movsbl	(%rax), %edx
	testl	%edx, %edx
	movl	%edx, -76(%rbp)         # 4-byte Spill
	je	.LBB7_12
	jmp	.LBB7_31
.LBB7_31:                               # %if.end.18
                                        #   in Loop: Header=BB7_5 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$45, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB7_13
	jmp	.LBB7_32
.LBB7_32:                               # %if.end.18
                                        #   in Loop: Header=BB7_5 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$58, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB7_13
	jmp	.LBB7_33
.LBB7_33:                               # %if.end.18
                                        #   in Loop: Header=BB7_5 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$116, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB7_21
	jmp	.LBB7_28
.LBB7_12:                               # %sw.bb
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-36(%rbp), %edx
	callq	add_pages_interval
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB7_29
.LBB7_13:                               # %sw.bb.22
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	-24(%rbp), %rdi
	callq	atoi
	movl	%eax, -40(%rbp)
.LBB7_14:                               # %while.cond.24
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	movslq	%ecx, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movzwl	(%rax,%rdx,2), %ecx
	andl	$2048, %ecx             # imm = 0x800
	cmpl	$0, %ecx
	je	.LBB7_16
# BB#15:                                # %while.body.32
                                        #   in Loop: Header=BB7_14 Depth=2
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB7_14
.LBB7_16:                               # %while.end.34
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB7_18
# BB#17:                                # %if.then.37
                                        #   in Loop: Header=BB7_5 Depth=1
	jmp	.LBB7_27
.LBB7_18:                               # %if.end.38
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	add_pages_interval
	cmpl	$0, %eax
	jne	.LBB7_20
# BB#19:                                # %if.then.41
                                        #   in Loop: Header=BB7_5 Depth=1
	movabsq	$.L.str.2, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
.LBB7_20:                               # %if.end.44
                                        #   in Loop: Header=BB7_5 Depth=1
	jmp	.LBB7_29
.LBB7_21:                               # %sw.bb.45
                                        #   in Loop: Header=BB7_5 Depth=1
	movabsq	$.L.str.3, %rdi
	movl	$3, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	addq	$-1, %rcx
	movq	%rcx, %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB7_25
# BB#22:                                # %if.then.48
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	-8(%rbp), %rax
	movq	1624(%rax), %rax
	movb	$1, 8(%rax)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB7_24
# BB#23:                                # %if.then.54
                                        #   in Loop: Header=BB7_5 Depth=1
	jmp	.LBB7_27
.LBB7_24:                               # %if.end.55
                                        #   in Loop: Header=BB7_5 Depth=1
	jmp	.LBB7_26
.LBB7_25:                               # %if.else
                                        #   in Loop: Header=BB7_5 Depth=1
	jmp	.LBB7_27
.LBB7_26:                               # %if.end.56
                                        #   in Loop: Header=BB7_5 Depth=1
	jmp	.LBB7_29
.LBB7_27:                               # %failed
                                        #   in Loop: Header=BB7_5 Depth=1
	jmp	.LBB7_28
.LBB7_28:                               # %sw.default
                                        #   in Loop: Header=BB7_5 Depth=1
	movabsq	$.L.str.2, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
.LBB7_29:                               # %sw.epilog
                                        #   in Loop: Header=BB7_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.1, %rsi
	callq	strtok
	movq	%rax, -24(%rbp)
	jmp	.LBB7_5
.LBB7_30:                               # %while.end.60
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	a2ps_page_range_set_string, .Lfunc_end7-a2ps_page_range_set_string
	.cfi_endproc

	.align	16, 0x90
	.type	page_range_reset,@function
page_range_reset:                       # @page_range_reset
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
	movabsq	$free, %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	da_free_content
	movq	-8(%rbp), %rsi
	movb	$0, 8(%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	page_range_reset, .Lfunc_end8-page_range_reset
	.cfi_endproc

	.align	16, 0x90
	.type	add_pages_interval,@function
add_pages_interval:                     # @add_pages_interval
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB9_3
# BB#1:                                 # %land.lhs.true
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB9_4
.LBB9_3:                                # %if.end
	movq	-16(%rbp), %rax
	movq	1624(%rax), %rax
	movq	(%rax), %rdi
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %esi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%ecx, %edi
	callq	interval_new
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	da_append
	movl	$1, -4(%rbp)
.LBB9_4:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	add_pages_interval, .Lfunc_end9-add_pages_interval
	.cfi_endproc

	.globl	report_pages_to_print
	.align	16, 0x90
	.type	report_pages_to_print,@function
report_pages_to_print:                  # @report_pages_to_print
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
	movq	-8(%rbp), %rsi
	movq	1624(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	page_range_self_print
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	report_pages_to_print, .Lfunc_end10-report_pages_to_print
	.cfi_endproc

	.align	16, 0x90
	.type	page_range_self_print,@function
page_range_self_print:                  # @page_range_self_print
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	da_self_print
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	page_range_self_print, .Lfunc_end11-page_range_self_print
	.cfi_endproc

	.globl	print_page
	.align	16, 0x90
	.type	print_page,@function
print_page:                             # @print_page
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	1624(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	48(%rdi), %rdi
	movq	%rdi, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	1624(%rdi), %rdi
	testb	$1, 8(%rdi)
	je	.LBB12_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	1632(%rax), %rax
	movq	40(%rax), %rax
	subq	$1, %rax
	movq	-16(%rbp), %rcx
	movq	1632(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	testb	$1, 32(%rax)
	je	.LBB12_3
# BB#2:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB12_13
.LBB12_3:                               # %if.end
	movq	-16(%rbp), %rax
	movq	1624(%rax), %rax
	movq	(%rax), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB12_6
# BB#4:                                 # %land.lhs.true.9
	movq	-16(%rbp), %rax
	movq	1624(%rax), %rax
	testb	$1, 8(%rax)
	jne	.LBB12_6
# BB#5:                                 # %if.then.13
	movl	$1, -4(%rbp)
	jmp	.LBB12_13
.LBB12_6:                               # %if.end.14
	movq	$0, -32(%rbp)
.LBB12_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	1624(%rcx), %rcx
	movq	(%rcx), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB12_12
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB12_7 Depth=1
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	-20(%rbp), %esi
	callq	interval_is_in
	cmpl	$0, %eax
	je	.LBB12_10
# BB#9:                                 # %if.then.21
	movl	$1, -4(%rbp)
	jmp	.LBB12_13
.LBB12_10:                              # %if.end.22
                                        #   in Loop: Header=BB12_7 Depth=1
	jmp	.LBB12_11
.LBB12_11:                              # %for.inc
                                        #   in Loop: Header=BB12_7 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB12_7
.LBB12_12:                              # %for.end
	movl	$0, -4(%rbp)
.LBB12_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	print_page, .Lfunc_end12-print_page
	.cfi_endproc

	.align	16, 0x90
	.type	interval_is_in,@function
interval_is_in:                         # @interval_is_in
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	cmpl	$0, (%rdi)
	je	.LBB13_5
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$0, 4(%rax)
	je	.LBB13_5
# BB#2:                                 # %if.then
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movl	(%rdx), %eax
	cmpl	-20(%rbp), %eax
	movb	%cl, -21(%rbp)          # 1-byte Spill
	jg	.LBB13_4
# BB#3:                                 # %land.rhs
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	setle	%dl
	movb	%dl, -21(%rbp)          # 1-byte Spill
.LBB13_4:                               # %land.end
	movb	-21(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB13_8
.LBB13_5:                               # %if.else
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB13_7
# BB#6:                                 # %if.then.7
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB13_8
.LBB13_7:                               # %if.else.10
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movl	%eax, -4(%rbp)
.LBB13_8:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end13:
	.size	interval_is_in, .Lfunc_end13-interval_is_in
	.cfi_endproc

	.align	16, 0x90
	.type	interval_new,@function
interval_new:                           # @interval_new
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
	subq	$16, %rsp
	movl	$8, %eax
	movl	%eax, %ecx
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rcx, %rdi
	callq	xmalloc
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	%esi, (%rax)
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	%esi, 4(%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	interval_new, .Lfunc_end14-interval_new
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Page Range Interval"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	", \t"
	.size	.L.str.1, 4

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"invalid interval `%s'"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"toc"
	.size	.L.str.3, 4

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%d-%d"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%d-"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"-%d"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%d"
	.size	.L.str.7, 3

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"1-%d"
	.size	.L.str.8, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
