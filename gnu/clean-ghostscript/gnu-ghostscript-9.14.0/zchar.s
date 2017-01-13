	.text
	.file	"zchar.bc"
	.globl	finish_stringwidth
	.align	16, 0x90
	.type	finish_stringwidth,@function
finish_stringwidth:                     # @finish_stringwidth
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp2:
	.cfi_def_cfa_offset 48
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movq	520(%rbx), %rax
	movq	8(%rax), %rdi
	leaq	8(%rsp), %rsi
	callq	gs_text_total_width
	leaq	32(%r14), %rax
	cmpq	640(%rbx), %rax
	jbe	.LBB0_2
# BB#1:                                 # %if.then
	movl	$2, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB0_3
.LBB0_2:                                # %if.else
	movq	%rax, 624(%rbx)
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 24(%r14)
	movw	$4096, 16(%r14)         # imm = 0x1000
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 40(%r14)
	movw	$4096, 32(%r14)         # imm = 0x1000
	xorl	%eax, %eax
.LBB0_3:                                # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	finish_stringwidth, .Lfunc_end0-finish_stringwidth
	.cfi_endproc

	.globl	zsetcachedevice
	.align	16, 0x90
	.type	zsetcachedevice,@function
zsetcachedevice:                        # @zsetcachedevice
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp8:
	.cfi_def_cfa_offset 80
.Ltmp9:
	.cfi_offset %rbx, -32
.Ltmp10:
	.cfi_offset %r14, -24
.Ltmp11:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	callq	op_show_find
	movq	%rax, %r15
	leaq	(%rsp), %rdx
	movl	$6, %esi
	movq	%rbx, %rdi
	callq	num_params
	movl	%eax, %ecx
	movl	$-21, %eax
	testq	%r15, %r15
	je	.LBB1_9
# BB#1:                                 # %if.end
	testl	%ecx, %ecx
	movl	%ecx, %eax
	js	.LBB1_9
# BB#2:                                 # %if.end.4
	movq	%r15, %rdi
	callq	gs_text_is_width_only
	testl	%eax, %eax
	je	.LBB1_6
# BB#3:                                 # %if.end.i
	movq	112(%r15), %rax
	movl	128(%rax), %eax
	cmpq	$42, %rax
	ja	.LBB1_6
# BB#4:                                 # %if.end.i
	movabsq	$4402341480966, %rcx    # imm = 0x40100000A06
	btq	%rax, %rcx
	jae	.LBB1_6
# BB#5:                                 # %if.then.6
	leaq	(%rsp), %rdx
	movl	$6, %esi
	movq	%r14, %rdi
	callq	op_show_return_width
	jmp	.LBB1_9
.LBB1_6:                                # %if.end.8
	leaq	(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_text_setcachedevice
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB1_9
# BB#7:                                 # %if.end.13
	addq	$-96, 624(%r14)
	xorl	%eax, %eax
	cmpl	$1, %ecx
	jne	.LBB1_9
# BB#8:                                 # %if.then.18
	movq	(%r14), %rcx
	movq	16(%rcx), %rcx
	movw	$3584, 512(%rcx)        # imm = 0xE00
.LBB1_9:                                # %cleanup
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	zsetcachedevice, .Lfunc_end1-zsetcachedevice
	.cfi_endproc

	.globl	op_show_find
	.align	16, 0x90
	.type	op_show_find,@function
op_show_find:                           # @op_show_find
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 64
.Ltmp16:
	.cfi_offset %rbx, -32
.Ltmp17:
	.cfi_offset %r14, -24
.Ltmp18:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	addq	$520, %r14              # imm = 0x208
	leaq	8(%rsp), %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	ref_stack_enum_begin
	xorl	%ebx, %ebx
.LBB2_1:                                # %do.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	movl	24(%rsp), %eax
	testl	%eax, %eax
	je	.LBB2_6
# BB#2:                                 # %for.body.lr.ph.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	16(%rsp), %rcx
	leal	-1(%rax), %edx
	shlq	$4, %rdx
	leaq	4(%rcx,%rdx), %rcx
	.align	16, 0x90
.LBB2_3:                                # %for.body.i
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	-4(%rcx), %edx
	andl	$16256, %edx            # imm = 0x3F80
	cmpl	$3712, %edx             # imm = 0xE80
	jne	.LBB2_5
# BB#4:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB2_3 Depth=2
	cmpl	$1, (%rcx)
	je	.LBB2_8
.LBB2_5:                                # %for.inc.i
                                        #   in Loop: Header=BB2_3 Depth=2
	incl	%ebx
	addq	$-16, %rcx
	decl	%eax
	jne	.LBB2_3
.LBB2_6:                                # %do.cond.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	%r15, %rdi
	callq	ref_stack_enum_next
	testl	%eax, %eax
	jne	.LBB2_1
# BB#7:                                 # %op_show_find_index.exit.thread
	xorl	%eax, %eax
	jmp	.LBB2_10
.LBB2_8:                                # %op_show_find_index.exit
	xorl	%eax, %eax
	testl	%ebx, %ebx
	je	.LBB2_10
# BB#9:                                 # %if.end
	addl	$-8, %ebx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	ref_stack_index
	movq	8(%rax), %rax
.LBB2_10:                               # %cleanup
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	op_show_find, .Lfunc_end2-op_show_find
	.cfi_endproc

	.globl	zchar_show_width_only
	.align	16, 0x90
	.type	zchar_show_width_only,@function
zchar_show_width_only:                  # @zchar_show_width_only
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	gs_text_is_width_only
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB3_4
# BB#1:                                 # %if.end
	movq	112(%rbx), %rax
	movl	128(%rax), %ecx
	cmpq	$42, %rcx
	ja	.LBB3_3
# BB#2:                                 # %if.end
	movl	$1, %eax
	movabsq	$4402341480966, %rdx    # imm = 0x40100000A06
	btq	%rcx, %rdx
	jb	.LBB3_4
.LBB3_3:                                # %sw.default
	xorl	%eax, %eax
.LBB3_4:                                # %return
	popq	%rbx
	retq
.Lfunc_end3:
	.size	zchar_show_width_only, .Lfunc_end3-zchar_show_width_only
	.cfi_endproc

	.align	16, 0x90
	.type	op_show_return_width,@function
op_show_return_width:                   # @op_show_return_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp24:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp25:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp27:
	.cfi_def_cfa_offset 96
.Ltmp28:
	.cfi_offset %rbx, -56
.Ltmp29:
	.cfi_offset %r12, -48
.Ltmp30:
	.cfi_offset %r13, -40
.Ltmp31:
	.cfi_offset %r14, -32
.Ltmp32:
	.cfi_offset %r15, -24
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movl	%esi, 12(%rsp)          # 4-byte Spill
	movq	%rdi, %r12
	leaq	520(%r12), %r13
	leaq	16(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	ref_stack_enum_begin
	xorl	%r14d, %r14d
.LBB4_1:                                # %do.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_3 Depth 2
	movl	32(%rsp), %eax
	testl	%eax, %eax
	je	.LBB4_7
# BB#2:                                 # %for.body.lr.ph.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	24(%rsp), %rcx
	leal	-1(%rax), %edx
	shlq	$4, %rdx
	leaq	4(%rcx,%rdx), %rcx
	.align	16, 0x90
.LBB4_3:                                # %for.body.i
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	-4(%rcx), %edx
	andl	$16256, %edx            # imm = 0x3F80
	cmpl	$3712, %edx             # imm = 0xE80
	jne	.LBB4_6
# BB#4:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB4_3 Depth=2
	cmpl	$1, (%rcx)
	je	.LBB4_5
.LBB4_6:                                # %for.inc.i
                                        #   in Loop: Header=BB4_3 Depth=2
	incl	%r14d
	addq	$-16, %rcx
	decl	%eax
	jne	.LBB4_3
.LBB4_7:                                # %do.cond.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%rbx, %rdi
	callq	ref_stack_enum_next
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jne	.LBB4_1
	jmp	.LBB4_8
.LBB4_5:
	movl	%r14d, %ebp
.LBB4_8:                                # %op_show_find_index.exit
	leal	-8(%rbp), %esi
	movq	%r13, %rdi
	callq	ref_stack_index
	movq	%rax, %rbx
	movq	8(%rbx), %rdi
	movq	%r15, %rsi
	callq	gs_text_setcharwidth
	testl	%eax, %eax
	js	.LBB4_15
# BB#9:                                 # %if.end
	leaq	624(%r12), %r15
	movq	%r15, %rdi
	callq	ref_stack_count
	movl	%eax, %r13d
	subl	-24(%rbx), %r13d
	movl	$-17, %eax
	cmpl	12(%rsp), %r13d         # 4-byte Folded Reload
	jb	.LBB4_15
# BB#10:                                # %if.end.12
	movl	-40(%rbx), %r14d
	leaq	368(%r12), %rdi
	callq	ref_stack_count
	movl	%eax, %ebx
	movl	$-4, %eax
	cmpl	%r14d, %ebx
	jb	.LBB4_15
# BB#11:                                # %while.cond.preheader
	jbe	.LBB4_12
	.align	16, 0x90
.LBB4_14:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	callq	zend
	testl	%eax, %eax
	js	.LBB4_15
# BB#13:                                # %while.cond
                                        #   in Loop: Header=BB4_14 Depth=1
	decl	%ebx
	cmpl	%r14d, %ebx
	ja	.LBB4_14
.LBB4_12:                               # %while.end
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	ref_stack_pop
	addl	$-9, %ebp
	movq	%r12, %rdi
	movl	%ebp, %esi
	callq	pop_estack
	movl	$14, %eax
.LBB4_15:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	op_show_return_width, .Lfunc_end4-op_show_return_width
	.cfi_endproc

	.globl	zsetcachedevice2
	.align	16, 0x90
	.type	zsetcachedevice2,@function
zsetcachedevice2:                       # @zsetcachedevice2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp36:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 40
	subq	$88, %rsp
.Ltmp38:
	.cfi_def_cfa_offset 128
.Ltmp39:
	.cfi_offset %rbx, -40
.Ltmp40:
	.cfi_offset %r12, -32
.Ltmp41:
	.cfi_offset %r14, -24
.Ltmp42:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	624(%r15), %rbx
	callq	op_show_find
	movq	%rax, %r12
	leaq	(%rsp), %r14
	movl	$10, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	num_params
	movl	%eax, %ecx
	movl	$-21, %eax
	testq	%r12, %r12
	je	.LBB5_11
# BB#1:                                 # %if.end
	testl	%ecx, %ecx
	movl	%ecx, %eax
	js	.LBB5_11
# BB#2:                                 # %if.end.4
	movq	%r12, %rdi
	callq	gs_text_is_width_only
	testl	%eax, %eax
	je	.LBB5_8
# BB#3:                                 # %if.end.i
	movq	112(%r12), %rax
	movl	128(%rax), %eax
	cmpq	$42, %rax
	ja	.LBB5_8
# BB#4:                                 # %if.end.i
	movabsq	$4402341480966, %rcx    # imm = 0x40100000A06
	btq	%rax, %rcx
	jae	.LBB5_8
# BB#5:                                 # %if.then.6
	movq	(%r15), %rdi
	callq	gs_rootfont
	cmpl	$0, 148(%rax)
	je	.LBB5_7
# BB#6:
	leaq	48(%rsp), %r14
.LBB5_7:                                # %select.end
	movl	$10, %esi
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	op_show_return_width
	jmp	.LBB5_11
.LBB5_8:                                # %if.end.11
	leaq	(%rsp), %rsi
	movq	%r12, %rdi
	callq	gs_text_setcachedevice2
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB5_11
# BB#9:                                 # %if.end.16
	addq	$-160, 624(%r15)
	xorl	%eax, %eax
	cmpl	$1, %ecx
	jne	.LBB5_11
# BB#10:                                # %if.then.21
	movq	(%r15), %rcx
	movq	16(%rcx), %rcx
	movw	$3584, 512(%rcx)        # imm = 0xE00
.LBB5_11:                               # %cleanup
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	zsetcachedevice2, .Lfunc_end5-zsetcachedevice2
	.cfi_endproc

	.align	16, 0x90
	.type	zashow,@function
zashow:                                 # @zashow
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp46:
	.cfi_def_cfa_offset 64
.Ltmp47:
	.cfi_offset %rbx, -32
.Ltmp48:
	.cfi_offset %r14, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	-16(%rbx), %rdi
	leaq	(%rsp), %rdx
	movl	$2, %esi
	callq	num_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_10
# BB#1:                                 # %lor.lhs.false
	movzwl	(%rbx), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB6_2
# BB#4:                                 # %if.end.i
	movq	$-176, %rax
	addq	536(%r14), %rax
	cmpq	%rax, 520(%r14)
	jbe	.LBB6_6
# BB#5:                                 # %if.then.i.i
	leaq	520(%r14), %rdi
	movl	$11, %esi
	callq	ref_stack_extend
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB6_6
	jmp	.LBB6_10
.LBB6_2:                                # %if.then.i
	movzbl	1(%rbx), %eax
	movl	$-7, %ebp
	cmpl	$18, %eax
	je	.LBB6_10
# BB#3:                                 # %op_show_setup.exit
	movq	%rbx, %rdi
	callq	check_type_failed
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB6_10
.LBB6_6:                                # %lor.lhs.false.3
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # xmm1 = mem[0],zero
	movq	8(%rbx), %rsi
	movl	4(%rbx), %edx
	movq	(%r14), %rdi
	movq	48(%r14), %rcx
	leaq	24(%rsp), %r8
	callq	gs_ashow_begin
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_10
# BB#7:                                 # %if.end
	movq	24(%rsp), %rax
	movq	$zashow, 184(%rax)
	movq	24(%rsp), %rsi
	movl	$3, %edx
	movl	$finish_show, %ecx
	movq	%r14, %rdi
	callq	op_show_finish_setup
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_8
# BB#9:                                 # %if.end.13
	movq	520(%r14), %rax
	movq	8(%rax), %rdi
	callq	gs_text_process
	movl	$3, %esi
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	op_show_continue_dispatch
	movl	%eax, %ebp
	jmp	.LBB6_10
.LBB6_8:                                # %if.then.9
	movq	8(%r14), %rdi
	movq	24(%rsp), %rsi
	movl	$.L.str.20, %edx
	callq	*24(%rdi)
.LBB6_10:                               # %cleanup
	movl	%ebp, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	zashow, .Lfunc_end6-zashow
	.cfi_endproc

	.align	16, 0x90
	.type	zawidthshow,@function
zawidthshow:                            # @zawidthshow
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%esi, %esi
	jmp	awidthshow_aux          # TAILCALL
.Lfunc_end7:
	.size	zawidthshow, .Lfunc_end7-zawidthshow
	.cfi_endproc

	.align	16, 0x90
	.type	zcharpath,@function
zcharpath:                              # @zcharpath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp53:
	.cfi_def_cfa_offset 48
.Ltmp54:
	.cfi_offset %rbx, -32
.Ltmp55:
	.cfi_offset %r14, -24
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB8_1
# BB#2:                                 # %if.end.i
	movzwl	-16(%rbx), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB8_3
# BB#5:                                 # %if.end.i.8
	movq	$-176, %rax
	addq	536(%r14), %rax
	cmpq	%rax, 520(%r14)
	jbe	.LBB8_7
# BB#6:                                 # %if.then.i.i
	leaq	520(%r14), %rdi
	movl	$11, %esi
	callq	ref_stack_extend
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB8_7
	jmp	.LBB8_12
.LBB8_1:                                # %if.then.i
	movq	%rbx, %rdi
	callq	check_type_failed
	jmp	.LBB8_11
.LBB8_3:                                # %if.then.i.6
	leaq	-16(%rbx), %rdi
	movzbl	1(%rdi), %eax
	movl	$-7, %ebp
	cmpl	$18, %eax
	je	.LBB8_12
# BB#4:                                 # %op_show_setup.exit
	callq	check_type_failed
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB8_12
.LBB8_7:                                # %lor.lhs.false.i
	movq	-8(%rbx), %rsi
	movl	-12(%rbx), %edx
	movzwl	8(%rbx), %ecx
	movq	(%r14), %rdi
	movq	8(%r14), %r8
	leaq	8(%rsp), %r9
	callq	gs_charpath_begin
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_12
# BB#8:                                 # %if.end.14.i
	movq	8(%rsp), %rax
	movq	$zcharpath, 184(%rax)
	movq	8(%rsp), %rsi
	movl	$2, %edx
	movl	$finish_show, %ecx
	movq	%r14, %rdi
	callq	op_show_finish_setup
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_9
# BB#10:                                # %if.end.23.i
	movq	520(%r14), %rax
	movq	8(%rax), %rdi
	callq	gs_text_process
	movl	$2, %esi
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	op_show_continue_dispatch
.LBB8_11:                               # %zchar_path.exit
	movl	%eax, %ebp
.LBB8_12:                               # %zchar_path.exit
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB8_9:                                # %if.then.18.i
	movq	8(%r14), %rdi
	movq	8(%rsp), %rsi
	movl	$.L.str.20, %edx
	callq	*24(%rdi)
	jmp	.LBB8_12
.Lfunc_end8:
	.size	zcharpath, .Lfunc_end8-zcharpath
	.cfi_endproc

	.align	16, 0x90
	.type	zcharboxpath,@function
zcharboxpath:                           # @zcharboxpath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp60:
	.cfi_def_cfa_offset 48
.Ltmp61:
	.cfi_offset %rbx, -32
.Ltmp62:
	.cfi_offset %r14, -24
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB9_1
# BB#2:                                 # %if.end.i
	movzwl	-16(%rbx), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB9_3
# BB#5:                                 # %if.end.i.8
	movq	$-176, %rax
	addq	536(%r14), %rax
	cmpq	%rax, 520(%r14)
	jbe	.LBB9_7
# BB#6:                                 # %if.then.i.i
	leaq	520(%r14), %rdi
	movl	$11, %esi
	callq	ref_stack_extend
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB9_7
	jmp	.LBB9_12
.LBB9_1:                                # %if.then.i
	movq	%rbx, %rdi
	callq	check_type_failed
	jmp	.LBB9_11
.LBB9_3:                                # %if.then.i.6
	leaq	-16(%rbx), %rdi
	movzbl	1(%rdi), %eax
	movl	$-7, %ebp
	cmpl	$18, %eax
	je	.LBB9_12
# BB#4:                                 # %op_show_setup.exit
	callq	check_type_failed
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB9_12
.LBB9_7:                                # %lor.lhs.false.i
	movq	-8(%rbx), %rsi
	movl	-12(%rbx), %edx
	movzwl	8(%rbx), %ecx
	movq	(%r14), %rdi
	movq	8(%r14), %r8
	leaq	8(%rsp), %r9
	callq	gs_charboxpath_begin
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB9_12
# BB#8:                                 # %if.end.14.i
	movq	8(%rsp), %rax
	movq	$zcharboxpath, 184(%rax)
	movq	8(%rsp), %rsi
	movl	$2, %edx
	movl	$finish_show, %ecx
	movq	%r14, %rdi
	callq	op_show_finish_setup
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB9_9
# BB#10:                                # %if.end.23.i
	movq	520(%r14), %rax
	movq	8(%rax), %rdi
	callq	gs_text_process
	movl	$2, %esi
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	op_show_continue_dispatch
.LBB9_11:                               # %zchar_path.exit
	movl	%eax, %ebp
.LBB9_12:                               # %zchar_path.exit
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB9_9:                                # %if.then.18.i
	movq	8(%r14), %rdi
	movq	8(%rsp), %rsi
	movl	$.L.str.20, %edx
	callq	*24(%rdi)
	jmp	.LBB9_12
.Lfunc_end9:
	.size	zcharboxpath, .Lfunc_end9-zcharboxpath
	.cfi_endproc

	.align	16, 0x90
	.type	zkshow,@function
zkshow:                                 # @zkshow
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp65:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp66:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp67:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp68:
	.cfi_def_cfa_offset 48
.Ltmp69:
	.cfi_offset %rbx, -40
.Ltmp70:
	.cfi_offset %r14, -32
.Ltmp71:
	.cfi_offset %r15, -24
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	624(%r15), %rbx
	movzwl	(%rbx), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB10_1
# BB#3:                                 # %do.body
	leaq	-16(%rbx), %r14
	movzwl	-16(%rbx), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB10_4
# BB#5:                                 # %do.end
	movq	(%r15), %rdi
	callq	gs_currentfont
	movl	$-10, %ebp
	cmpl	$0, 128(%rax)
	je	.LBB10_16
# BB#6:                                 # %if.end.22
	movzwl	(%rbx), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB10_7
# BB#9:                                 # %if.end.i
	movq	$-176, %rax
	addq	536(%r15), %rax
	cmpq	%rax, 520(%r15)
	jbe	.LBB10_11
# BB#10:                                # %if.then.i.i
	leaq	520(%r15), %rdi
	movl	$11, %esi
	callq	ref_stack_extend
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB10_11
	jmp	.LBB10_16
.LBB10_1:                               # %if.then
	movzbl	1(%rbx), %eax
	movl	$-7, %ebp
	cmpl	$18, %eax
	je	.LBB10_16
# BB#2:                                 # %cond.true
	movq	%rbx, %rdi
	callq	check_type_failed
	jmp	.LBB10_15
.LBB10_4:                               # %if.then.14
	movq	%r14, %rdi
	callq	check_proc_failed
.LBB10_15:                              # %cleanup
	movl	%eax, %ebp
.LBB10_16:                              # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_7:                               # %if.then.i
	movzbl	1(%rbx), %eax
	movl	$-7, %ebp
	cmpl	$18, %eax
	je	.LBB10_16
# BB#8:                                 # %op_show_setup.exit
	movq	%rbx, %rdi
	callq	check_type_failed
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB10_16
.LBB10_11:                              # %lor.lhs.false
	movq	8(%rbx), %rsi
	movl	4(%rbx), %edx
	movq	(%r15), %rdi
	movq	48(%r15), %rcx
	leaq	(%rsp), %r8
	callq	gs_kshow_begin
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_16
# BB#12:                                # %if.end.32
	movq	(%rsp), %rax
	movq	$zkshow, 184(%rax)
	movq	(%rsp), %rsi
	movl	$2, %edx
	movl	$finish_show, %ecx
	movq	%r15, %rdi
	callq	op_show_finish_setup
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_13
# BB#14:                                # %if.end.40
	movq	520(%r15), %rax
	movups	(%r14), %xmm0
	movups	%xmm0, -16(%rax)
	movq	520(%r15), %rax
	movq	8(%rax), %rdi
	callq	gs_text_process
	movl	$2, %esi
	movq	%r15, %rdi
	movl	%eax, %edx
	callq	op_show_continue_dispatch
	jmp	.LBB10_15
.LBB10_13:                              # %if.then.36
	movq	8(%r15), %rdi
	movq	(%rsp), %rsi
	movl	$.L.str.20, %edx
	callq	*24(%rdi)
	jmp	.LBB10_16
.Lfunc_end10:
	.size	zkshow, .Lfunc_end10-zkshow
	.cfi_endproc

	.align	16, 0x90
	.type	zsetcharwidth,@function
zsetcharwidth:                          # @zsetcharwidth
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp73:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp74:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp76:
	.cfi_def_cfa_offset 48
.Ltmp77:
	.cfi_offset %rbx, -32
.Ltmp78:
	.cfi_offset %r14, -24
.Ltmp79:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	callq	op_show_find
	movq	%rax, %r15
	leaq	(%rsp), %rdx
	movl	$2, %esi
	movq	%rbx, %rdi
	callq	num_params
	movl	%eax, %ecx
	movl	$-21, %eax
	testq	%r15, %r15
	je	.LBB11_8
# BB#1:                                 # %if.end
	testl	%ecx, %ecx
	movl	%ecx, %eax
	js	.LBB11_8
# BB#2:                                 # %if.end.4
	movq	%r15, %rdi
	callq	gs_text_is_width_only
	testl	%eax, %eax
	je	.LBB11_6
# BB#3:                                 # %if.end.i
	movq	112(%r15), %rax
	movl	128(%rax), %eax
	cmpq	$42, %rax
	ja	.LBB11_6
# BB#4:                                 # %if.end.i
	movabsq	$4402341480966, %rcx    # imm = 0x40100000A06
	btq	%rax, %rcx
	jae	.LBB11_6
# BB#5:                                 # %if.then.6
	leaq	(%rsp), %rdx
	movl	$2, %esi
	movq	%r14, %rdi
	callq	op_show_return_width
	jmp	.LBB11_8
.LBB11_6:                               # %if.end.8
	leaq	(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_text_setcharwidth
	testl	%eax, %eax
	js	.LBB11_8
# BB#7:                                 # %if.end.13
	addq	$-32, 624(%r14)
	xorl	%eax, %eax
.LBB11_8:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end11:
	.size	zsetcharwidth, .Lfunc_end11-zsetcharwidth
	.cfi_endproc

	.align	16, 0x90
	.type	zshow,@function
zshow:                                  # @zshow
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp81:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp82:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp83:
	.cfi_def_cfa_offset 48
.Ltmp84:
	.cfi_offset %rbx, -32
.Ltmp85:
	.cfi_offset %r14, -24
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzwl	(%rbx), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB12_1
# BB#3:                                 # %if.end.i
	movq	$-176, %rax
	addq	536(%r14), %rax
	cmpq	%rax, 520(%r14)
	jbe	.LBB12_5
# BB#4:                                 # %if.then.i.i
	leaq	520(%r14), %rdi
	movl	$11, %esi
	callq	ref_stack_extend
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB12_5
	jmp	.LBB12_9
.LBB12_1:                               # %if.then.i
	movzbl	1(%rbx), %eax
	movl	$-7, %ebp
	cmpl	$18, %eax
	je	.LBB12_9
# BB#2:                                 # %op_show_setup.exit
	movq	%rbx, %rdi
	callq	check_type_failed
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB12_9
.LBB12_5:                               # %lor.lhs.false
	movq	8(%rbx), %rsi
	movl	4(%rbx), %edx
	movq	(%r14), %rdi
	movq	48(%r14), %rcx
	leaq	8(%rsp), %r8
	callq	gs_show_begin
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB12_9
# BB#6:                                 # %if.end
	movq	8(%rsp), %rax
	movq	$zshow, 184(%rax)
	movq	8(%rsp), %rsi
	movl	$1, %edx
	movl	$finish_show, %ecx
	movq	%r14, %rdi
	callq	op_show_finish_setup
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB12_7
# BB#8:                                 # %if.end.9
	movq	520(%r14), %rax
	movq	8(%rax), %rdi
	callq	gs_text_process
	movl	$1, %esi
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	op_show_continue_dispatch
	movl	%eax, %ebp
	jmp	.LBB12_9
.LBB12_7:                               # %if.then.5
	movq	8(%r14), %rdi
	movq	8(%rsp), %rsi
	movl	$.L.str.20, %edx
	callq	*24(%rdi)
.LBB12_9:                               # %cleanup
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end12:
	.size	zshow, .Lfunc_end12-zshow
	.cfi_endproc

	.align	16, 0x90
	.type	zstringwidth,@function
zstringwidth:                           # @zstringwidth
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp88:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp89:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp90:
	.cfi_def_cfa_offset 48
.Ltmp91:
	.cfi_offset %rbx, -32
.Ltmp92:
	.cfi_offset %r14, -24
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzwl	(%rbx), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB13_1
# BB#3:                                 # %if.end.i
	movq	$-176, %rax
	addq	536(%r14), %rax
	cmpq	%rax, 520(%r14)
	jbe	.LBB13_5
# BB#4:                                 # %if.then.i.i
	leaq	520(%r14), %rdi
	movl	$11, %esi
	callq	ref_stack_extend
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB13_5
	jmp	.LBB13_9
.LBB13_1:                               # %if.then.i
	movzbl	1(%rbx), %eax
	movl	$-7, %ebp
	cmpl	$18, %eax
	je	.LBB13_9
# BB#2:                                 # %op_show_setup.exit
	movq	%rbx, %rdi
	callq	check_type_failed
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB13_9
.LBB13_5:                               # %lor.lhs.false
	movq	8(%rbx), %rsi
	movl	4(%rbx), %edx
	movq	(%r14), %rdi
	movq	8(%r14), %rcx
	leaq	8(%rsp), %r8
	callq	gs_stringwidth_begin
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB13_9
# BB#6:                                 # %if.end
	movq	8(%rsp), %rax
	movq	$zstringwidth, 184(%rax)
	movq	8(%rsp), %rsi
	movl	$1, %edx
	movl	$finish_stringwidth, %ecx
	movq	%r14, %rdi
	callq	op_show_finish_setup
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB13_7
# BB#8:                                 # %if.end.10
	movq	520(%r14), %rax
	movq	8(%rax), %rdi
	callq	gs_text_process
	movl	$1, %esi
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	op_show_continue_dispatch
	movl	%eax, %ebp
	jmp	.LBB13_9
.LBB13_7:                               # %if.then.5
	movq	8(%r14), %rdi
	movq	8(%rsp), %rsi
	movl	$.L.str.20, %edx
	callq	*24(%rdi)
.LBB13_9:                               # %cleanup
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	zstringwidth, .Lfunc_end13-zstringwidth
	.cfi_endproc

	.align	16, 0x90
	.type	zwidthshow,@function
zwidthshow:                             # @zwidthshow
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%esi, %esi
	jmp	widthshow_aux           # TAILCALL
.Lfunc_end14:
	.size	zwidthshow, .Lfunc_end14-zwidthshow
	.cfi_endproc

	.align	16, 0x90
	.type	zfontbbox,@function
zfontbbox:                              # @zfontbbox
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp94:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp95:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp96:
	.cfi_def_cfa_offset 64
.Ltmp97:
	.cfi_offset %rbx, -24
.Ltmp98:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB15_1
# BB#2:                                 # %do.body
	movq	8(%rbx), %rcx
	movl	$-7, %eax
	testb	$32, (%rcx)
	je	.LBB15_11
# BB#3:                                 # %do.end
	movq	8(%r14), %rdi
	leaq	(%rsp), %rdx
	movq	%rbx, %rsi
	callq	font_bbox_param
	testl	%eax, %eax
	js	.LBB15_11
# BB#4:                                 # %if.end.11
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	(%rsp), %xmm0
	jbe	.LBB15_9
# BB#5:                                 # %land.lhs.true
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	8(%rsp), %xmm0
	jbe	.LBB15_9
# BB#6:                                 # %do.body.21
	leaq	64(%rbx), %rax
	cmpq	640(%r14), %rax
	jbe	.LBB15_8
# BB#7:                                 # %if.then.26
	movl	$4, 688(%r14)
	movl	$-16, %eax
	jmp	.LBB15_11
.LBB15_1:                               # %if.then
	movq	%rbx, %rdi
	callq	check_type_failed
	jmp	.LBB15_11
.LBB15_9:                               # %if.else.41
	movw	$0, 8(%rbx)
	movw	$256, (%rbx)            # imm = 0x100
.LBB15_10:                              # %cleanup
	xorl	%eax, %eax
.LBB15_11:                              # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB15_8:                               # %if.else
	movq	%rax, 624(%r14)
	leaq	(%rsp), %rsi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	make_reals
	movw	$1, 72(%rbx)
	movw	$256, 64(%rbx)          # imm = 0x100
	jmp	.LBB15_10
.Lfunc_end15:
	.size	zfontbbox, .Lfunc_end15-zfontbbox
	.cfi_endproc

	.align	16, 0x90
	.type	zpdfawidthshow,@function
zpdfawidthshow:                         # @zpdfawidthshow
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %esi
	jmp	awidthshow_aux          # TAILCALL
.Lfunc_end16:
	.size	zpdfawidthshow, .Lfunc_end16-zpdfawidthshow
	.cfi_endproc

	.align	16, 0x90
	.type	zpdfwidthshow,@function
zpdfwidthshow:                          # @zpdfwidthshow
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %esi
	jmp	widthshow_aux           # TAILCALL
.Lfunc_end17:
	.size	zpdfwidthshow, .Lfunc_end17-zpdfwidthshow
	.cfi_endproc

	.align	16, 0x90
	.type	finish_show,@function
finish_show:                            # @finish_show
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end18:
	.size	finish_show, .Lfunc_end18-finish_show
	.cfi_endproc

	.globl	op_show_continue
	.align	16, 0x90
	.type	op_show_continue,@function
op_show_continue:                       # @op_show_continue
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	movq	520(%rbx), %rax
	movq	8(%rax), %rsi
	callq	gs_text_update_dev_color
	testl	%eax, %eax
	js	.LBB19_1
# BB#2:                                 # %if.then
	movq	520(%rbx), %rax
	movq	8(%rax), %rdi
	callq	gs_text_process
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	popq	%rbx
	jmp	op_show_continue_dispatch # TAILCALL
.LBB19_1:                               # %if.end
	popq	%rbx
	retq
.Lfunc_end19:
	.size	op_show_continue, .Lfunc_end19-op_show_continue
	.cfi_endproc

	.align	16, 0x90
	.type	zincachedevice,@function
zincachedevice:                         # @zincachedevice
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	leaq	16(%rax), %rcx
	cmpq	640(%rdi), %rcx
	jbe	.LBB20_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	retq
.LBB20_2:                               # %if.else
	movq	%rcx, 624(%rdi)
	movq	(%rdi), %rcx
	cmpl	$0, 1848(%rcx)
	setne	%cl
	movzbl	%cl, %ecx
	movw	%cx, 24(%rax)
	movw	$256, 16(%rax)          # imm = 0x100
	xorl	%eax, %eax
	retq
.Lfunc_end20:
	.size	zincachedevice, .Lfunc_end20-zincachedevice
	.cfi_endproc

	.globl	glyph_ref
	.align	16, 0x90
	.type	glyph_ref,@function
glyph_ref:                              # @glyph_ref
	.cfi_startproc
# BB#0:                                 # %entry
	cmpq	$2147483647, %rsi       # imm = 0x7FFFFFFF
	ja	.LBB21_1
# BB#2:                                 # %if.then
	movq	192(%rdi), %rax
	movq	120(%rax), %rdi
	jmp	names_index_ref         # TAILCALL
.LBB21_1:                               # %if.end
	addq	$-2147483648, %rsi      # imm = 0xFFFFFFFF80000000
	movq	%rsi, 8(%rdx)
	movw	$2816, (%rdx)           # imm = 0xB00
	retq
.Lfunc_end21:
	.size	glyph_ref, .Lfunc_end21-glyph_ref
	.cfi_endproc

	.globl	op_show_setup
	.align	16, 0x90
	.type	op_show_setup,@function
op_show_setup:                          # @op_show_setup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp101:
	.cfi_def_cfa_offset 16
	movzwl	(%rsi), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB22_1
# BB#3:                                 # %if.end
	movq	$-176, %rax
	addq	536(%rdi), %rax
	cmpq	%rax, 520(%rdi)
	jbe	.LBB22_5
# BB#4:                                 # %if.then.i
	addq	$520, %rdi              # imm = 0x208
	movl	$11, %esi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB22_6
.LBB22_5:                               # %if.end.7.i
	xorl	%eax, %eax
	jmp	.LBB22_6
.LBB22_1:                               # %if.then
	movzbl	1(%rsi), %ecx
	movl	$-7, %eax
	cmpl	$18, %ecx
	jne	.LBB22_2
.LBB22_6:                               # %return
	popq	%rdx
	retq
.LBB22_2:                               # %cond.true
	movq	%rsi, %rdi
	popq	%rax
	jmp	check_type_failed       # TAILCALL
.Lfunc_end22:
	.size	op_show_setup, .Lfunc_end22-op_show_setup
	.cfi_endproc

	.globl	op_show_enum_setup
	.align	16, 0x90
	.type	op_show_enum_setup,@function
op_show_enum_setup:                     # @op_show_enum_setup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp102:
	.cfi_def_cfa_offset 16
	movq	$-176, %rax
	addq	536(%rdi), %rax
	cmpq	%rax, 520(%rdi)
	jbe	.LBB23_2
# BB#1:                                 # %if.then
	addq	$520, %rdi              # imm = 0x208
	movl	$11, %esi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB23_3
.LBB23_2:                               # %if.end.7
	xorl	%eax, %eax
.LBB23_3:                               # %return
	popq	%rdx
	retq
.Lfunc_end23:
	.size	op_show_enum_setup, .Lfunc_end23-op_show_enum_setup
	.cfi_endproc

	.globl	op_show_finish_setup
	.align	16, 0x90
	.type	op_show_finish_setup,@function
op_show_finish_setup:                   # @op_show_finish_setup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp104:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp105:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp106:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp107:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp108:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp109:
	.cfi_def_cfa_offset 160
.Ltmp110:
	.cfi_offset %rbx, -56
.Ltmp111:
	.cfi_offset %r12, -48
.Ltmp112:
	.cfi_offset %r13, -40
.Ltmp113:
	.cfi_offset %r14, -32
.Ltmp114:
	.cfi_offset %r15, -24
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %r12d
	movq	%rsi, %r13
	movq	%rdi, %rbx
	callq	op_show_find
	movq	%rax, %rbp
	movq	520(%rbx), %r15
	movq	(%rbx), %rax
	movq	8(%rax), %rdi
	callq	gs_currentcpsimode
	testl	%eax, %eax
	je	.LBB24_2
# BB#1:                                 # %if.then
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movq	(%rbx), %rbp
	movq	%r13, %rdi
	callq	gs_get_text_params
	movq	8(%rbx), %rdx
	movq	%rbp, %rdi
	movq	8(%rsp), %rbp           # 8-byte Reload
	movq	%rax, %rsi
	callq	gs_text_count_chars
	testl	%eax, %eax
	js	.LBB24_19
.LBB24_2:                               # %if.end.7
	testq	%rbp, %rbp
	je	.LBB24_15
# BB#3:                                 # %land.lhs.true
	movl	$66049, %eax            # imm = 0x10201
	andl	(%rbp), %eax
	cmpl	$66049, %eax            # imm = 0x10201
	jne	.LBB24_11
# BB#4:                                 # %land.lhs.true.10
	movl	$131073, %eax           # imm = 0x20001
	andl	(%r13), %eax
	cmpl	$131073, %eax           # imm = 0x20001
	jne	.LBB24_11
# BB#5:                                 # %land.lhs.true.15
	movq	%rbp, %rdi
	callq	gs_text_current_glyph
	movq	%rax, 8(%rsp)           # 8-byte Spill
	testq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	je	.LBB24_11
# BB#6:                                 # %land.lhs.true.20
	movq	%rbp, %rdi
	callq	gs_text_current_font
	movl	%r12d, 4(%rsp)          # 4-byte Spill
	movq	%rax, %r12
	movq	%r13, %rdi
	callq	gs_text_current_font
	movl	$1, %edx
	movq	%r12, %rdi
	movl	4(%rsp), %r12d          # 4-byte Reload
	movq	%rax, %rsi
	callq	gs_default_same_font
	testl	%eax, %eax
	je	.LBB24_11
# BB#7:                                 # %if.then.25
	cmpl	$1, 16(%r13)
	jne	.LBB24_9
# BB#8:                                 # %land.lhs.true.29
	movq	8(%r13), %rax
	movq	%r13, %r12
	movzbl	(%rax), %r13d
	movq	%rbp, %rdi
	callq	gs_text_current_char
	movzbl	%al, %eax
	cmpl	%eax, %r13d
	movq	%r12, %r13
	movl	4(%rsp), %r12d          # 4-byte Reload
	jne	.LBB24_9
# BB#10:                                # %cleanup.44
	movq	80(%r13), %rax
	movq	%rax, 96(%rsp)
	movups	64(%r13), %xmm0
	movaps	%xmm0, 80(%rsp)
	movups	(%r13), %xmm0
	movups	16(%r13), %xmm1
	movups	32(%r13), %xmm2
	movups	48(%r13), %xmm3
	movaps	%xmm3, 64(%rsp)
	movaps	%xmm2, 48(%rsp)
	movaps	%xmm1, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	movl	16(%rsp), %eax
	andl	$-64, %eax
	orl	$32, %eax
	movl	%eax, 16(%rsp)
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rax, 24(%rsp)
	movl	$1, 32(%rsp)
	leaq	16(%rsp), %rsi
	movq	%r13, %rdi
	callq	gs_text_restart
.LBB24_11:                              # %land.lhs.true.49
	movq	192(%rbp), %rax
	cmpl	$3, 128(%rax)
	jne	.LBB24_18
# BB#12:                                # %land.lhs.true.52
	movq	112(%rbp), %rax
	cmpl	$0, 128(%rax)
	jne	.LBB24_18
# BB#13:                                # %land.lhs.true.56
	cmpl	$9, 376(%rax)
	jne	.LBB24_18
# BB#14:                                # %if.then.61
	movq	424(%rbp), %rax
	movq	%rax, 200(%r13)
	jmp	.LBB24_18
.LBB24_15:                              # %land.lhs.true.65
	testb	$40, (%r13)
	jne	.LBB24_18
# BB#16:                                # %if.then.70
	movq	(%rbx), %rax
	movq	1800(%rax), %rax
	movl	128(%rax), %ecx
	cmpq	$32, %rcx
	ja	.LBB24_18
# BB#17:                                # %if.then.70
	movl	$-20, %eax
	movabsq	$4294970880, %rdx       # imm = 0x100000E00
	btq	%rcx, %rdx
	jb	.LBB24_19
.LBB24_18:                              # %if.end.85
	leaq	144(%r15), %rax
	movq	$op_show_cleanup, 24(%r15)
	movw	$3712, 16(%r15)         # imm = 0xE80
	movl	$1, 20(%r15)
	testq	%r14, %r14
	movl	$finish_show, %ecx
	cmovneq	%r14, %rcx
	movw	$3584, 128(%r15)        # imm = 0xE00
	movq	624(%rbx), %rdx
	addq	$16, %rdx
	subq	632(%rbx), %rdx
	sarq	$4, %rdx
	movl	668(%rbx), %esi
	movslq	%r12d, %rdi
	subq	%rdi, %rsi
	addq	%rdx, %rsi
	movq	%rsi, 120(%r15)
	movw	$2816, 112(%r15)        # imm = 0xB00
	movq	368(%rbx), %rdx
	addq	$16, %rdx
	subq	376(%rbx), %rdx
	sarq	$4, %rdx
	movl	412(%rbx), %esi
	addq	%rdx, %rsi
	movq	%rsi, 104(%r15)
	movw	$2816, 96(%r15)         # imm = 0xB00
	movq	(%rbx), %rdx
	movslq	1864(%rdx), %rdx
	movq	%rdx, 88(%r15)
	movw	$2816, 80(%r15)         # imm = 0xB00
	movw	$3584, 64(%r15)         # imm = 0xE00
	movw	$3584, 48(%r15)         # imm = 0xE00
	movq	%rcx, 40(%r15)
	movw	$3968, 32(%r15)         # imm = 0xF80
	movl	$0, 36(%r15)
	movq	%r13, 152(%r15)
	movl	$2048, %ecx             # imm = 0x800
	addl	56(%rbx), %ecx
	movw	%cx, 144(%r15)
	movq	%rax, 520(%rbx)
	xorl	%eax, %eax
.LBB24_19:                              # %cleanup.165
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB24_9:                               # %cleanup.44.thread
	movl	$-15, %eax
	jmp	.LBB24_19
.Lfunc_end24:
	.size	op_show_finish_setup, .Lfunc_end24-op_show_finish_setup
	.cfi_endproc

	.align	16, 0x90
	.type	op_show_cleanup,@function
op_show_cleanup:                        # @op_show_cleanup
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %esi
	jmp	op_show_restore         # TAILCALL
.Lfunc_end25:
	.size	op_show_cleanup, .Lfunc_end25-op_show_cleanup
	.cfi_endproc

	.globl	op_show_continue_dispatch
	.align	16, 0x90
	.type	op_show_continue_dispatch,@function
op_show_continue_dispatch:              # @op_show_continue_dispatch
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp117:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp118:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp119:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp120:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp121:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp122:
	.cfi_def_cfa_offset 128
.Ltmp123:
	.cfi_offset %rbx, -56
.Ltmp124:
	.cfi_offset %r12, -48
.Ltmp125:
	.cfi_offset %r13, -40
.Ltmp126:
	.cfi_offset %r14, -32
.Ltmp127:
	.cfi_offset %r15, -24
.Ltmp128:
	.cfi_offset %rbp, -16
	movl	%edx, %r13d
	movq	%rdi, %r12
	movl	$2147483648, %edi       # imm = 0x80000000
	movl	%r13d, %eax
	cmpl	$3, %r13d
	ja	.LBB26_64
# BB#1:                                 # %entry
	leaq	624(%r12), %rdx
	movq	520(%r12), %r14
	movq	624(%r12), %rbp
	movslq	%esi, %rcx
	shlq	$4, %rcx
	movq	%rbp, %r15
	subq	%rcx, %r15
	movq	8(%r14), %rbx
	jmpq	*.LJTI26_0(,%rax,8)
.LBB26_2:                               # %sw.bb
	movq	%rdx, %r13
	movq	%r15, 624(%r12)
	movq	%r12, %rdi
	callq	*-104(%r14)
	movl	%eax, %r14d
	addq	$-144, 520(%r12)
	movl	%r14d, %esi
	shrl	$31, %esi
	movq	%r12, %rdi
	callq	op_show_restore
	movl	$14, %ebx
	testl	%r14d, %r14d
	jns	.LBB26_65
# BB#3:                                 # %if.then
	movq	%rbp, (%r13)
	movl	%r14d, %ebx
	jmp	.LBB26_65
.LBB26_7:                               # %sw.bb.64
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	(%r12), %rdi
	callq	gs_currentfont
	movq	%rax, %r14
	movq	72(%r14), %rbp
	movq	%rbx, %rdi
	callq	gs_text_current_char
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	%rbx, %rdi
	callq	gs_text_current_glyph
	movq	%rax, %rbx
	addq	$32, %r15
	cmpq	640(%r12), %r15
	ja	.LBB26_5
# BB#8:                                 # %if.else.78
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	%r15, (%rdi)
	movups	(%rbp), %xmm0
	movups	%xmm0, -16(%r15)
	cmpl	$3, 128(%r14)
	movq	%rbp, %rcx
	movl	$2147483648, %edx       # imm = 0x80000000
	jne	.LBB26_36
# BB#9:                                 # %if.then.87
	cmpl	$2, 80(%r12)
	jl	.LBB26_17
# BB#10:                                # %land.lhs.true
	cmpq	$2147483647, %rbx       # imm = 0x7FFFFFFF
	je	.LBB26_17
# BB#11:                                # %land.lhs.true
	movzbl	33(%rcx), %eax
	cmpl	$14, %eax
	je	.LBB26_17
# BB#12:                                # %if.then.97
	addq	$32, %rcx
	cmpq	%rdx, %rbx
	jae	.LBB26_14
# BB#13:                                # %if.then.i
	movq	8(%r12), %rax
	movq	192(%rax), %rax
	movq	%rdi, %rbp
	movq	120(%rax), %rdi
	movl	%ebx, %esi
	movq	%r15, %rdx
	movq	%rcx, %rbx
	callq	names_index_ref
	movq	%rbx, %rcx
	movq	%rbp, %rdi
	jmp	.LBB26_16
.LBB26_4:                               # %sw.bb.17
	addq	$32, %r15
	cmpq	640(%r12), %r15
	jbe	.LBB26_6
.LBB26_5:                               # %if.then.26
	movl	$2, 688(%r12)
	movl	$-16, %ebx
	jmp	.LBB26_65
.LBB26_55:                              # %sw.bb.264
	movq	192(%rbx), %r13
	movq	$0, 40(%rsp)
	movq	424(%rbx), %rbp
	movq	%r15, (%rdx)
	cmpq	%rdi, %rbp
	jae	.LBB26_57
# BB#56:                                # %if.then.i.185
	movq	8(%r12), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	56(%rsp), %rdx
	movl	%ebp, %esi
	callq	names_index_ref
	jmp	.LBB26_58
.LBB26_6:                               # %if.else
	movq	%r15, 624(%r12)
	movq	%rbx, %rdi
	callq	gs_text_current_char
	movq	%rax, -8(%r15)
	movw	$2816, -16(%r15)        # imm = 0xB00
	movq	%rbx, %rdi
	callq	gs_text_next_char
	movq	%rax, 8(%r15)
	movw	$2816, (%r15)           # imm = 0xB00
	movq	520(%r12), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%r12)
	movq	$op_show_continue, 24(%rax)
	movq	520(%r12), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%r12)
	movups	-16(%r14), %xmm0
	movups	%xmm0, 16(%rax)
	movl	$5, %ebx
	jmp	.LBB26_65
.LBB26_57:                              # %if.else.i.189
	leaq	-2147483648(%rbp), %rax
	movq	%rax, 64(%rsp)
	movw	$2816, 56(%rsp)         # imm = 0xB00
.LBB26_58:                              # %glyph_ref.exit190
	movl	128(%r13), %eax
	cmpl	$9, %eax
	jne	.LBB26_59
# BB#61:                                # %if.then.289
	leaq	56(%rsp), %rdx
	leaq	40(%rsp), %r9
	movl	$op_show_continue, %r8d
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rcx
	callq	z1_set_cache
	jmp	.LBB26_62
.LBB26_59:                              # %glyph_ref.exit190
	movl	$-28, %ebx
	cmpl	$11, %eax
	jne	.LBB26_65
# BB#60:                                # %if.then.282
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	*464(%r13)
	leaq	56(%rsp), %rdx
	leaq	40(%rsp), %r9
	movl	$op_show_continue, %r8d
	movq	%r12, %rdi
	movq	%r13, %rsi
	movl	%eax, %ecx
	callq	zchar42_set_cache
.LBB26_62:                              # %if.end.293
	movl	%eax, %ebx
	cmpq	$0, 40(%rsp)
	je	.LBB26_65
# BB#63:                                # %select.mid
	movl	$-28, %ebx
	jmp	.LBB26_65
.LBB26_36:                              # %if.else.151
	movq	24(%rsp), %rbp          # 8-byte Reload
	cmpq	$-1, %rbp
	je	.LBB26_47
# BB#37:                                # %land.lhs.true.155
	movzbl	17(%rcx), %eax
	cmpl	$14, %eax
	jne	.LBB26_38
.LBB26_47:                              # %if.else.199
	cmpq	$2147483647, %rbx       # imm = 0x7FFFFFFF
	jne	.LBB26_49
# BB#48:                                # %if.then.202
	movq	$0, 8(%r15)
	movw	$2816, (%r15)           # imm = 0xB00
	jmp	.LBB26_53
.LBB26_17:                              # %if.else.103
	movzbl	17(%rcx), %eax
	cmpl	$14, %eax
	movq	24(%rsp), %rax          # 8-byte Reload
	je	.LBB26_64
# BB#18:                                # %if.else.111
	leaq	16(%rcx), %rsi
	cmpq	$-1, %rax
	je	.LBB26_19
# BB#35:                                # %if.else.138
	movzbl	%al, %eax
	movq	%rax, 8(%r15)
	movw	$2816, (%r15)           # imm = 0xB00
	movq	520(%r12), %rax
	movups	(%rsi), %xmm0
	jmp	.LBB26_54
.LBB26_38:                              # %land.lhs.true.163
	cmpq	$2147483647, %rbx       # imm = 0x7FFFFFFF
	jne	.LBB26_40
# BB#39:                                # %land.lhs.true.163.if.then.188_crit_edge
	movzbl	%bpl, %ebp
.LBB26_46:                              # %if.then.188
	addq	$16, %rcx
	movq	%rbp, 8(%r15)
	jmp	.LBB26_15
.LBB26_40:                              # %lor.lhs.false
	movzbl	49(%rcx), %eax
	cmpl	$14, %eax
	je	.LBB26_49
# BB#41:                                # %land.lhs.true.173
	leaq	48(%rcx), %rsi
	movq	%rdi, %r14
	movq	8(%r12), %rdi
	movzbl	%bpl, %ebp
	movq	%rcx, %r13
	leaq	56(%rsp), %rcx
	movq	%rbp, %rdx
	callq	array_get
	movl	$2147483648, %edx       # imm = 0x80000000
	movq	%r13, %rcx
	movq	%r14, %rdi
	testl	%eax, %eax
	js	.LBB26_49
# BB#42:                                # %land.lhs.true.181
	movq	%rcx, %r13
	movq	%rdi, %r14
	cmpq	%rdx, %rbx
	jae	.LBB26_44
# BB#43:                                # %if.then.i.165
	movq	8(%r12), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	40(%rsp), %rdx
	movl	%ebx, %esi
	callq	names_index_ref
	jmp	.LBB26_45
.LBB26_19:                              # %if.then.114
	cmpq	%rdx, %rbx
	jae	.LBB26_21
# BB#20:                                # %if.then.i.133
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	8(%r12), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	40(%rsp), %rdx
	movl	%ebx, %esi
	movq	%rcx, %rbx
	callq	names_index_ref
	movq	%rbx, %rcx
	jmp	.LBB26_22
.LBB26_14:                              # %if.else.i
	addq	$-2147483648, %rbx      # imm = 0xFFFFFFFF80000000
	movq	%rbx, 8(%r15)
.LBB26_15:                              # %glyph_ref.exit
	movw	$2816, (%r15)           # imm = 0xB00
	jmp	.LBB26_16
.LBB26_21:                              # %if.else.i.137
	movq	%rsi, (%rsp)            # 8-byte Spill
	addq	$-2147483648, %rbx      # imm = 0xFFFFFFFF80000000
	movq	%rbx, 48(%rsp)
	movw	$2816, 40(%rsp)         # imm = 0xB00
.LBB26_22:                              # %glyph_ref.exit138
	leaq	48(%rcx), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	8(%r12), %rbx
	movl	52(%rcx), %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB26_23
# BB#24:                                # %for.body.lr.ph.i
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	xorl	%ebp, %ebp
	leaq	56(%rsp), %r14
.LBB26_26:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	%rbp, %rdx
	movq	%r14, %rcx
	callq	array_get
	movq	%rbx, %rdi
	leaq	40(%rsp), %rsi
	movq	%r14, %rdx
	callq	obj_eq
	testl	%eax, %eax
	jne	.LBB26_27
# BB#25:                                # %for.cond.i
                                        #   in Loop: Header=BB26_26 Depth=1
	incq	%rbp
	cmpq	16(%rsp), %rbp          # 8-byte Folded Reload
	jb	.LBB26_26
# BB#28:                                # %if.then.120.loopexit
	movq	8(%r12), %rbx
	jmp	.LBB26_29
.LBB26_23:
	movq	%rcx, 8(%rsp)           # 8-byte Spill
.LBB26_29:                              # %if.then.120
	movq	192(%rbx), %rax
	movq	120(%rax), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.18, %esi
	callq	names_enter_string
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	52(%rax), %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB26_64
# BB#30:                                # %for.body.lr.ph.i.147
	movq	8(%r12), %rbp
	xorl	%ebx, %ebx
	leaq	56(%rsp), %r14
.LBB26_32:                              # %for.body.i.155
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	%rbx, %rdx
	movq	%r14, %rcx
	callq	array_get
	movq	%rbp, %rdi
	leaq	40(%rsp), %rsi
	movq	%r14, %rdx
	callq	obj_eq
	testl	%eax, %eax
	jne	.LBB26_33
# BB#31:                                # %for.cond.i.149
                                        #   in Loop: Header=BB26_32 Depth=1
	incq	%rbx
	cmpq	16(%rsp), %rbx          # 8-byte Folded Reload
	jb	.LBB26_32
.LBB26_64:                              # %err
	testl	%r13d, %r13d
	movl	$-10, %ebx
	cmovsl	%r13d, %ebx
	addq	$-144, 520(%r12)
	movl	%ebx, %esi
	shrl	$31, %esi
	movq	%r12, %rdi
	callq	op_show_restore
	testl	%eax, %eax
	cmovsl	%eax, %ebx
.LBB26_65:                              # %cleanup.310
	movl	%ebx, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB26_27:                              # %map_glyph_to_char.exit
	movq	%rbp, 8(%r15)
	jmp	.LBB26_34
.LBB26_33:                              # %map_glyph_to_char.exit160
	movq	%rbx, 8(%r15)
.LBB26_34:                              # %cleanup.136.thread
	movw	$2816, (%r15)           # imm = 0xB00
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	(%rsp), %rcx            # 8-byte Reload
.LBB26_16:                              # %glyph_ref.exit
	movq	520(%r12), %rax
	movups	(%rcx), %xmm0
	jmp	.LBB26_54
.LBB26_44:                              # %if.else.i.169
	leaq	-2147483648(%rbx), %rax
	movq	%rax, 48(%rsp)
	movw	$2816, 40(%rsp)         # imm = 0xB00
.LBB26_45:                              # %glyph_ref.exit170
	movq	8(%r12), %rdi
	leaq	40(%rsp), %rsi
	leaq	56(%rsp), %rdx
	callq	obj_eq
	testl	%eax, %eax
	movq	%r14, %rdi
	movq	%r13, %rcx
	movl	$2147483648, %edx       # imm = 0x80000000
	jne	.LBB26_46
.LBB26_49:                              # %if.else.207
	movq	%rcx, %rbp
	cmpq	%rdx, %rbx
	jae	.LBB26_51
# BB#50:                                # %if.then.i.175
	movq	8(%r12), %rax
	movq	192(%rax), %rax
	movq	%rdi, %r14
	movq	120(%rax), %rdi
	movl	%ebx, %esi
	movq	%r15, %rdx
	callq	names_index_ref
	movq	%r14, %rdi
	jmp	.LBB26_52
.LBB26_51:                              # %if.else.i.179
	addq	$-2147483648, %rbx      # imm = 0xFFFFFFFF80000000
	movq	%rbx, 8(%r15)
	movw	$2816, (%r15)           # imm = 0xB00
.LBB26_52:                              # %if.end.210
	movq	%rbp, %rcx
.LBB26_53:                              # %if.end.210
	movq	520(%r12), %rax
	movups	32(%rcx), %xmm0
.LBB26_54:                              # %if.end.216
	movups	%xmm0, 32(%rax)
	callq	ref_stack_count
	addl	$-2, %eax
	movq	520(%r12), %rcx
	movq	%rax, -24(%rcx)
	leaq	368(%r12), %rdi
	callq	ref_stack_count
	movl	%eax, %eax
	movq	520(%r12), %rcx
	movq	%rax, -40(%rcx)
	leaq	16(%rcx), %rax
	movq	%rax, 520(%r12)
	movq	$op_show_continue, 24(%rcx)
	movq	520(%r12), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	addq	$16, %rax
	movq	%rax, 520(%r12)
	movl	$5, %ebx
	jmp	.LBB26_65
.Lfunc_end26:
	.size	op_show_continue_dispatch, .Lfunc_end26-op_show_continue_dispatch
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI26_0:
	.quad	.LBB26_2
	.quad	.LBB26_7
	.quad	.LBB26_4
	.quad	.LBB26_55

	.text
	.globl	op_show_continue_pop
	.align	16, 0x90
	.type	op_show_continue_pop,@function
op_show_continue_pop:                   # @op_show_continue_pop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp130:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp131:
	.cfi_def_cfa_offset 32
.Ltmp132:
	.cfi_offset %rbx, -24
.Ltmp133:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	520(%rbx), %rax
	movq	8(%rax), %rdi
	callq	gs_text_process
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movl	%eax, %edx
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	op_show_continue_dispatch # TAILCALL
.Lfunc_end27:
	.size	op_show_continue_pop, .Lfunc_end27-op_show_continue_pop
	.cfi_endproc

	.globl	op_show_free
	.align	16, 0x90
	.type	op_show_free,@function
op_show_free:                           # @op_show_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp134:
	.cfi_def_cfa_offset 16
.Ltmp135:
	.cfi_offset %rbx, -16
	movl	%esi, %ebx
	addq	$-144, 520(%rdi)
	shrl	$31, %esi
	callq	op_show_restore
	testl	%eax, %eax
	cmovnsl	%ebx, %eax
	popq	%rbx
	retq
.Lfunc_end28:
	.size	op_show_free, .Lfunc_end28-op_show_free
	.cfi_endproc

	.align	16, 0x90
	.type	op_show_restore,@function
op_show_restore:                        # @op_show_restore
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp136:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp137:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp138:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp139:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp140:
	.cfi_def_cfa_offset 48
.Ltmp141:
	.cfi_offset %rbx, -40
.Ltmp142:
	.cfi_offset %r14, -32
.Ltmp143:
	.cfi_offset %r15, -24
.Ltmp144:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	520(%rbx), %rax
	movq	152(%rax), %r14
	movl	88(%rax), %r15d
	testl	%esi, %esi
	je	.LBB29_4
# BB#1:                                 # %if.then
	movl	$op_show_continue, %ecx
	cmpq	%rcx, 168(%rax)
	jne	.LBB29_4
# BB#2:                                 # %land.lhs.true
	movq	184(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB29_4
# BB#3:                                 # %if.then.7
	movq	%rcx, 168(%rax)
	movw	$3968, 160(%rax)        # imm = 0xF80
	movl	$0, 164(%rax)
.LBB29_4:                               # %if.end.15
	movl	(%r14), %eax
	movl	%eax, %ecx
	andl	$131584, %ecx           # imm = 0x20200
	cmpl	$131584, %ecx           # imm = 0x20200
	jne	.LBB29_6
# BB#5:                                 # %land.lhs.true.18
	movq	(%rbx), %rcx
	cmpl	$3, 252(%rcx)
	setne	%cl
	movzbl	%cl, %ecx
	subl	%ecx, %r15d
.LBB29_6:                               # %if.end.22
	testb	$1, %ah
	je	.LBB29_9
# BB#7:                                 # %if.then.27
	movq	72(%r14), %rsi
	movq	144(%r14), %rdi
	movl	$.L.str.21, %edx
	callq	gs_free_const_object
	movq	64(%r14), %rsi
	cmpq	72(%r14), %rsi
	je	.LBB29_9
# BB#8:                                 # %if.then.34
	movq	144(%r14), %rdi
	movl	$.L.str.22, %edx
	callq	gs_free_const_object
.LBB29_9:                               # %if.end.39
	movq	(%rbx), %rdi
	movq	112(%r14), %rsi
	callq	gs_set_currentfont
	movq	(%rbx), %rdi
	xorl	%ebp, %ebp
	jmp	.LBB29_10
	.align	16, 0x90
.LBB29_14:                              # %while.cond.backedge
                                        #   in Loop: Header=BB29_10 Depth=1
	movq	(%rbx), %rdi
.LBB29_10:                              # %if.end.39
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%r15d, 1864(%rdi)
	jle	.LBB29_15
# BB#11:                                # %while.body
                                        #   in Loop: Header=BB29_10 Depth=1
	movq	1616(%rdi), %rax
	movl	$-100, %ebp
	testq	%rax, %rax
	je	.LBB29_15
# BB#12:                                # %lor.lhs.false
                                        #   in Loop: Header=BB29_10 Depth=1
	cmpq	$0, 1616(%rax)
	je	.LBB29_15
# BB#13:                                # %while.cond.backedge
                                        #   in Loop: Header=BB29_10 Depth=1
	callq	gs_grestore
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB29_14
.LBB29_15:                              # %while.end
	movl	$.L.str.23, %esi
	movq	%r14, %rdi
	callq	gs_text_release
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	op_show_restore, .Lfunc_end29-op_show_restore
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI30_0:
	.long	1034594987              # float 0.0833333358
.LCPI30_1:
	.long	1094713344              # float 12
	.text
	.globl	font_bbox_param
	.align	16, 0x90
	.type	font_bbox_param,@function
font_bbox_param:                        # @font_bbox_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp145:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp146:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp147:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp148:
	.cfi_def_cfa_offset 40
	subq	$72, %rsp
.Ltmp149:
	.cfi_def_cfa_offset 112
.Ltmp150:
	.cfi_offset %rbx, -40
.Ltmp151:
	.cfi_offset %r12, -32
.Ltmp152:
	.cfi_offset %r14, -24
.Ltmp153:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %rax
	movq	%rdi, %r14
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%r15)
	movups	%xmm0, (%r15)
	leaq	64(%rsp), %rdx
	movl	$.L.str.19, %esi
	movq	%rax, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB30_18
# BB#1:                                 # %if.then
	movq	64(%rsp), %rcx
	movzwl	(%rcx), %edx
	andl	$15360, %edx            # imm = 0x3C00
	movl	$-20, %eax
	cmpl	$1024, %edx             # imm = 0x400
	jne	.LBB30_20
# BB#2:                                 # %if.end
	cmpl	$4, 4(%rcx)
	jne	.LBB30_19
# BB#3:                                 # %if.then.10
	movq	8(%rcx), %rbx
	leaq	(%rsp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	packed_get
	movzwl	(%rbx), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB30_5
# BB#4:
	addq	$2, %rbx
	jmp	.LBB30_6
.LBB30_18:                              # %if.else
	movq	%r14, %rdi
	callq	gs_currentcpsimode
	movl	%eax, %ecx
	movl	$-10, %eax
	testl	%ecx, %ecx
	jne	.LBB30_20
	jmp	.LBB30_19
.LBB30_5:                               # %select.mid
	addq	$16, %rbx
.LBB30_6:                               # %select.end
	leaq	16(%rsp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	packed_get
	movzwl	(%rbx), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB30_8
# BB#7:
	addq	$2, %rbx
	jmp	.LBB30_9
.LBB30_8:                               # %select.mid39
	addq	$16, %rbx
.LBB30_9:                               # %select.end38
	leaq	32(%rsp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	packed_get
	movzwl	(%rbx), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB30_11
# BB#10:
	addq	$2, %rbx
	jmp	.LBB30_12
.LBB30_11:                              # %select.mid41
	addq	$16, %rbx
.LBB30_12:                              # %select.end40
	leaq	48(%rsp), %r12
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	packed_get
	movl	$4, %esi
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	num_params
	testl	%eax, %eax
	js	.LBB30_20
# BB#13:                                # %if.end.24
	movupd	16(%r15), %xmm0
	movupd	(%r15), %xmm1
	subpd	%xmm1, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	ucomiss	%xmm0, %xmm2
	jae	.LBB30_17
# BB#14:                                # %if.end.24
	movapd	%xmm0, %xmm1
	shufps	$229, %xmm1, %xmm1      # xmm1 = xmm1[1,1,2,3]
	ucomiss	%xmm1, %xmm2
	jae	.LBB30_17
# BB#15:                                # %lor.lhs.false.36
	divss	%xmm0, %xmm1
	movss	.LCPI30_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	ja	.LBB30_17
# BB#16:                                # %lor.lhs.false.36
	ucomiss	.LCPI30_1(%rip), %xmm1
	jbe	.LBB30_19
.LBB30_17:                              # %if.then.42
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%r15)
	movups	%xmm0, (%r15)
.LBB30_19:                              # %if.end.59
	xorl	%eax, %eax
.LBB30_20:                              # %cleanup.60
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end30:
	.size	font_bbox_param, .Lfunc_end30-font_bbox_param
	.cfi_endproc

	.align	16, 0x90
	.type	awidthshow_aux,@function
awidthshow_aux:                         # @awidthshow_aux
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp154:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp155:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp156:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp157:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp158:
	.cfi_def_cfa_offset 80
.Ltmp159:
	.cfi_offset %rbx, -40
.Ltmp160:
	.cfi_offset %r14, -32
.Ltmp161:
	.cfi_offset %r15, -24
.Ltmp162:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %r15
	movq	624(%r15), %rbp
	movzwl	(%rbp), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB31_1
# BB#3:                                 # %if.end.i
	movq	$-176, %rax
	addq	536(%r15), %rax
	cmpq	%rax, 520(%r15)
	jbe	.LBB31_5
# BB#4:                                 # %if.then.i.i
	leaq	520(%r15), %rdi
	movl	$11, %esi
	callq	ref_stack_extend
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB31_5
	jmp	.LBB31_16
.LBB31_1:                               # %if.then.i
	movzbl	1(%rbp), %eax
	movl	$-7, %ebx
	cmpl	$18, %eax
	je	.LBB31_16
# BB#2:                                 # %op_show_setup.exit
	movq	%rbp, %rdi
	callq	check_type_failed
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jne	.LBB31_16
.LBB31_5:                               # %if.end
	leaq	-16(%rbp), %rdi
	leaq	(%rsp), %rdx
	movl	$2, %esi
	callq	num_params
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB31_16
# BB#6:                                 # %if.end.4
	movzbl	-47(%rbp), %eax
	cmpl	$11, %eax
	jne	.LBB31_7
# BB#8:                                 # %if.end.11
	movq	(%r15), %rdi
	callq	gs_currentfont
	cmpl	$0, 128(%rax)
	je	.LBB31_10
# BB#9:                                 # %if.else
	movl	$-15, %ebx
	cmpq	$255, -40(%rbp)
	ja	.LBB31_16
.LBB31_10:                              # %if.end.36
	leaq	-64(%rbp), %rdi
	leaq	16(%rsp), %rdx
	movl	$2, %esi
	callq	num_params
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB31_16
# BB#11:                                # %if.end.43
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	24(%rsp), %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rsi
	movsd	(%rsp), %xmm2           # xmm2 = mem[0],zero
	movsd	8(%rsp), %xmm3          # xmm3 = mem[0],zero
	movq	8(%rbp), %rdx
	movl	4(%rbp), %ecx
	movq	(%r15), %rdi
	movq	48(%r15), %r8
	leaq	32(%rsp), %r9
	callq	gs_awidthshow_begin
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB31_16
# BB#12:                                # %if.end.58
	movq	32(%rsp), %rax
	movq	$zawidthshow, 184(%rax)
	movq	32(%rsp), %rsi
	movl	%r14d, 348(%rsi)
	movl	$6, %edx
	movl	$finish_show, %ecx
	movq	%r15, %rdi
	callq	op_show_finish_setup
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB31_13
# BB#14:                                # %if.end.67
	movq	520(%r15), %rax
	movq	8(%rax), %rdi
	callq	gs_text_process
	movl	$6, %esi
	movq	%r15, %rdi
	movl	%eax, %edx
	callq	op_show_continue_dispatch
	jmp	.LBB31_15
.LBB31_7:                               # %if.then.8
	addq	$-48, %rbp
	movq	%rbp, %rdi
	callq	check_type_failed
.LBB31_15:                              # %cleanup
	movl	%eax, %ebx
.LBB31_16:                              # %cleanup
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB31_13:                              # %if.then.63
	movq	8(%r15), %rdi
	movq	32(%rsp), %rsi
	movl	$.L.str.20, %edx
	callq	*24(%rdi)
	jmp	.LBB31_16
.Lfunc_end31:
	.size	awidthshow_aux, .Lfunc_end31-awidthshow_aux
	.cfi_endproc

	.align	16, 0x90
	.type	widthshow_aux,@function
widthshow_aux:                          # @widthshow_aux
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp163:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp164:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp165:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp166:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp167:
	.cfi_def_cfa_offset 64
.Ltmp168:
	.cfi_offset %rbx, -40
.Ltmp169:
	.cfi_offset %r14, -32
.Ltmp170:
	.cfi_offset %r15, -24
.Ltmp171:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %r15
	movq	624(%r15), %rbp
	movzwl	(%rbp), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB32_1
# BB#3:                                 # %if.end.i
	movq	$-176, %rax
	addq	536(%r15), %rax
	cmpq	%rax, 520(%r15)
	jbe	.LBB32_5
# BB#4:                                 # %if.then.i.i
	leaq	520(%r15), %rdi
	movl	$11, %esi
	callq	ref_stack_extend
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB32_5
	jmp	.LBB32_15
.LBB32_1:                               # %if.then.i
	movzbl	1(%rbp), %eax
	movl	$-7, %ebx
	cmpl	$18, %eax
	je	.LBB32_15
# BB#2:                                 # %op_show_setup.exit
	movq	%rbp, %rdi
	callq	check_type_failed
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jne	.LBB32_15
.LBB32_5:                               # %if.end
	movzbl	-15(%rbp), %eax
	cmpl	$11, %eax
	jne	.LBB32_6
# BB#7:                                 # %if.end.7
	movq	(%r15), %rdi
	callq	gs_currentfont
	cmpl	$0, 128(%rax)
	je	.LBB32_9
# BB#8:                                 # %if.else
	movl	$-15, %ebx
	cmpq	$255, -8(%rbp)
	ja	.LBB32_15
.LBB32_9:                               # %if.end.32
	leaq	-32(%rbp), %rdi
	leaq	(%rsp), %rdx
	movl	$2, %esi
	callq	num_params
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB32_15
# BB#10:                                # %if.end.37
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # xmm1 = mem[0],zero
	movq	-8(%rbp), %rsi
	movq	8(%rbp), %rdx
	movl	4(%rbp), %ecx
	movq	(%r15), %rdi
	movq	48(%r15), %r8
	leaq	16(%rsp), %r9
	callq	gs_widthshow_begin
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB32_15
# BB#11:                                # %if.end.50
	movq	16(%rsp), %rax
	movq	$zwidthshow, 184(%rax)
	movq	16(%rsp), %rsi
	movl	%r14d, 348(%rsi)
	movl	$4, %edx
	movl	$finish_show, %ecx
	movq	%r15, %rdi
	callq	op_show_finish_setup
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB32_12
# BB#13:                                # %if.end.59
	movq	520(%r15), %rax
	movq	8(%rax), %rdi
	callq	gs_text_process
	movl	$4, %esi
	movq	%r15, %rdi
	movl	%eax, %edx
	callq	op_show_continue_dispatch
	jmp	.LBB32_14
.LBB32_6:                               # %if.then.4
	addq	$-16, %rbp
	movq	%rbp, %rdi
	callq	check_type_failed
.LBB32_14:                              # %cleanup
	movl	%eax, %ebx
.LBB32_15:                              # %cleanup
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB32_12:                              # %if.then.55
	movq	8(%r15), %rdi
	movq	16(%rsp), %rsi
	movl	$.L.str.20, %edx
	callq	*24(%rdi)
	jmp	.LBB32_15
.Lfunc_end32:
	.size	widthshow_aux, .Lfunc_end32-widthshow_aux
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"3ashow"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"6awidthshow"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"2charpath"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"2.charboxpath"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"2kshow"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"6setcachedevice"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	":setcachedevice2"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"2setcharwidth"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"1show"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"1stringwidth"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"4widthshow"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"1.fontbbox"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"6.pdfawidthshow"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"4.pdfwidthshow"
	.size	.L.str.13, 15

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"0%finish_show"
	.size	.L.str.14, 14

	.type	zchar_a_op_defs,@object # @zchar_a_op_defs
	.section	.rodata,"a",@progbits
	.globl	zchar_a_op_defs
	.align	16
zchar_a_op_defs:
	.quad	.L.str
	.quad	zashow
	.quad	.L.str.1
	.quad	zawidthshow
	.quad	.L.str.2
	.quad	zcharpath
	.quad	.L.str.3
	.quad	zcharboxpath
	.quad	.L.str.4
	.quad	zkshow
	.quad	.L.str.5
	.quad	zsetcachedevice
	.quad	.L.str.6
	.quad	zsetcachedevice2
	.quad	.L.str.7
	.quad	zsetcharwidth
	.quad	.L.str.8
	.quad	zshow
	.quad	.L.str.9
	.quad	zstringwidth
	.quad	.L.str.10
	.quad	zwidthshow
	.quad	.L.str.11
	.quad	zfontbbox
	.quad	.L.str.12
	.quad	zpdfawidthshow
	.quad	.L.str.13
	.quad	zpdfwidthshow
	.quad	.L.str.14
	.quad	finish_show
	.zero	16
	.size	zchar_a_op_defs, 256

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"0%finish_stringwidth"
	.size	.L.str.15, 21

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"0%op_show_continue"
	.size	.L.str.16, 19

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"0.incachedevice"
	.size	.L.str.17, 16

	.type	zchar_b_op_defs,@object # @zchar_b_op_defs
	.section	.rodata,"a",@progbits
	.globl	zchar_b_op_defs
	.align	16
zchar_b_op_defs:
	.quad	.L.str.15
	.quad	finish_stringwidth
	.quad	.L.str.16
	.quad	op_show_continue
	.quad	.L.str.17
	.quad	zincachedevice
	.zero	16
	.size	zchar_b_op_defs, 64

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	".notdef"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"FontBBox"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"op_show_enum_setup"
	.size	.L.str.20, 19

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"y_widths"
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"x_widths"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"op_show_restore"
	.size	.L.str.23, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
