	.text
	.file	"zcontext.bc"
	.align	16, 0x90
	.type	zcondition,@function
zcondition:                             # @zcondition
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movq	8(%rbx), %rdi
	movl	$st_condition, %esi
	movl	$.L.str.17, %edx
	callq	*72(%rdi)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB0_4
# BB#1:                                 # %if.end
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	leaq	16(%r14), %rcx
	cmpq	640(%rbx), %rcx
	jbe	.LBB0_3
# BB#2:                                 # %if.then.7
	movl	$1, 688(%rbx)
	movl	$-16, %ecx
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movq	%rcx, 624(%rbx)
	movq	%rax, 24(%r14)
	movl	56(%rbx), %eax
	orl	$112, %eax
	addl	$2048, %eax             # imm = 0x800
	movw	%ax, 16(%r14)
	xorl	%ecx, %ecx
.LBB0_4:                                # %cleanup
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	zcondition, .Lfunc_end0-zcondition
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentcontext,@function
zcurrentcontext:                        # @zcurrentcontext
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	leaq	16(%rax), %rcx
	cmpq	640(%rdi), %rcx
	jbe	.LBB1_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	retq
.LBB1_2:                                # %if.else
	movq	%rcx, 624(%rdi)
	movq	744(%rdi), %rcx
	movq	%rcx, 24(%rax)
	movw	$2816, 16(%rax)         # imm = 0xB00
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	zcurrentcontext, .Lfunc_end1-zcurrentcontext
	.cfi_endproc

	.align	16, 0x90
	.type	zdetach,@function
zdetach:                                # @zdetach
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 16
.Ltmp6:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$11, %eax
	jne	.LBB2_6
# BB#1:                                 # %if.end.i
	movq	8(%rdi), %rsi
	movl	$-29, %ecx
	testq	%rsi, %rsi
	je	.LBB2_14
# BB#2:                                 # %if.end.i.i
	movq	728(%rbx), %rdi
	movabsq	$970881267037344822, %rdx # imm = 0xD79435E50D79436
	movq	%rsi, %rax
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	imulq	$19, %rax, %rax
	movq	%rsi, %rdx
	subq	%rax, %rdx
	movq	48(%rdi,%rdx,8), %rdi
	jmp	.LBB2_3
	.align	16, 0x90
.LBB2_5:                                # %while.body.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	784(%rdi), %rdi
.LBB2_3:                                # %if.end.i.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rdi, %rdi
	je	.LBB2_14
# BB#4:                                 # %land.rhs.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpq	%rsi, 744(%rdi)
	jne	.LBB2_5
	jmp	.LBB2_7
.LBB2_6:                                # %context_param.exit
	callq	check_type_failed
	movl	%eax, %ecx
	testl	%ecx, %ecx
                                        # implicit-def: RDI
	js	.LBB2_14
.LBB2_7:                                # %do.end
	movl	$-29, %ecx
	cmpq	$0, 776(%rdi)
	jne	.LBB2_14
# BB#8:                                 # %lor.lhs.false
	cmpl	$0, 752(%rdi)
	jne	.LBB2_14
# BB#9:                                 # %if.end.3
	movl	736(%rdi), %eax
	cmpl	$1, %eax
	jne	.LBB2_10
# BB#12:                                # %sw.bb.5
	callq	context_destroy
	jmp	.LBB2_13
.LBB2_10:                               # %if.end.3
	testl	%eax, %eax
	jne	.LBB2_13
# BB#11:                                # %sw.bb
	movl	$1, 752(%rdi)
.LBB2_13:                               # %sw.epilog
	addq	$-16, 624(%rbx)
	xorl	%ecx, %ecx
.LBB2_14:                               # %cleanup
	movl	%ecx, %eax
	popq	%rbx
	retq
.Lfunc_end2:
	.size	zdetach, .Lfunc_end2-zdetach
	.cfi_endproc

	.align	16, 0x90
	.type	zfork,@function
zfork:                                  # @zfork
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp9:
	.cfi_def_cfa_offset 48
.Ltmp10:
	.cfi_offset %rbx, -24
.Ltmp11:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	leaq	624(%rbx), %rdi
	movq	624(%rbx), %r14
	callq	ref_stack_counttomark
	movl	$-24, %ecx
	testl	%eax, %eax
	je	.LBB3_2
# BB#1:                                 # %if.end
	movw	$3584, 8(%rsp)          # imm = 0xE00
	leaq	8(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rdx, %rcx
	movl	%eax, %r8d
	callq	do_fork
	movl	%eax, %ecx
.LBB3_2:                                # %cleanup
	movl	%ecx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	zfork, .Lfunc_end3-zfork
	.cfi_endproc

	.align	16, 0x90
	.type	zjoin,@function
zjoin:                                  # @zjoin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp15:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp16:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp18:
	.cfi_def_cfa_offset 64
.Ltmp19:
	.cfi_offset %rbx, -56
.Ltmp20:
	.cfi_offset %r12, -48
.Ltmp21:
	.cfi_offset %r13, -40
.Ltmp22:
	.cfi_offset %r14, -32
.Ltmp23:
	.cfi_offset %r15, -24
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbp
	movzbl	1(%rbp), %eax
	cmpl	$11, %eax
	jne	.LBB4_6
# BB#1:                                 # %if.end.i
	movq	8(%rbp), %rcx
	movl	$-29, %r15d
	testq	%rcx, %rcx
	je	.LBB4_25
# BB#2:                                 # %if.end.i.i
	movq	728(%r14), %rsi
	movabsq	$970881267037344822, %rdx # imm = 0xD79435E50D79436
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	imulq	$19, %rax, %rax
	movq	%rcx, %rdx
	subq	%rax, %rdx
	movq	48(%rsi,%rdx,8), %rbx
	jmp	.LBB4_3
	.align	16, 0x90
.LBB4_5:                                # %while.body.i.i
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	784(%rbx), %rbx
.LBB4_3:                                # %if.end.i.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB4_25
# BB#4:                                 # %land.rhs.i.i
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpq	%rcx, 744(%rbx)
	jne	.LBB4_5
	jmp	.LBB4_7
.LBB4_6:                                # %context_param.exit
	movq	%rbp, %rdi
	callq	check_type_failed
	movl	%eax, %r15d
	testl	%r15d, %r15d
                                        # implicit-def: RBX
	js	.LBB4_25
.LBB4_7:                                # %do.end
	movl	$-29, %r15d
	cmpq	$0, 776(%rbx)
	jne	.LBB4_25
# BB#8:                                 # %lor.lhs.false
	cmpq	%r14, %rbx
	je	.LBB4_25
# BB#9:                                 # %lor.lhs.false
	movl	752(%rbx), %eax
	testl	%eax, %eax
	jne	.LBB4_25
# BB#10:                                # %lor.lhs.false.4
	movq	40(%rbx), %rax
	cmpq	40(%r14), %rax
	jne	.LBB4_25
# BB#11:                                # %lor.lhs.false.12
	movq	48(%rbx), %rax
	cmpq	48(%r14), %rax
	jne	.LBB4_25
# BB#12:                                # %lor.lhs.false.25
	cmpl	$0, 552(%rax)
	jne	.LBB4_25
# BB#13:                                # %if.end.33
	movl	736(%rbx), %eax
	xorl	%r15d, %r15d
	cmpl	$1, %eax
	jne	.LBB4_14
# BB#19:                                # %sw.bb.80
	leaq	624(%rbx), %r12
	movq	%r12, %rdi
	callq	ref_stack_count
	movl	%eax, %r13d
	movq	%r13, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rbp
	cmpq	640(%r14), %rbp
	jbe	.LBB4_21
# BB#20:                                # %if.then.90
	movl	%eax, 688(%r14)
	movl	$-16, %r15d
	jmp	.LBB4_25
.LBB4_14:                               # %if.end.33
	testl	%eax, %eax
	jne	.LBB4_25
# BB#15:                                # %sw.bb
	movq	520(%r14), %rax
	movq	536(%r14), %rcx
	addq	$-32, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB4_18
# BB#16:                                # %if.then.39
	leaq	520(%r14), %rbp
	movl	$2, %esi
	movq	%rbp, %rdi
	callq	ref_stack_extend
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB4_25
# BB#17:                                # %if.then.39.if.end.46_crit_edge
	movq	(%rbp), %rax
.LBB4_18:                               # %if.end.46
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%r14)
	movq	$finish_join, 24(%rax)
	movq	520(%r14), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%r14)
	movq	$reschedule_now, 24(%rax)
	movq	520(%r14), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movq	744(%r14), %rax
	movq	%rax, 776(%rbx)
	movl	$5, %r15d
	jmp	.LBB4_25
.LBB4_21:                               # %if.else
	addq	$624, %r14              # imm = 0x270
	movq	%rbp, (%r14)
	movq	%r14, %rdi
	movq	%r13, %rsi
	movl	%eax, %ebp
	callq	ref_stack_index
	movw	$3072, (%rax)           # imm = 0xC00
	testl	%ebp, %ebp
	movq	%r12, (%rsp)            # 8-byte Spill
	je	.LBB4_24
# BB#22:                                # %for.body.i.preheader
	incq	%r13
.LBB4_23:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	leaq	-2(%r13), %rbp
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	ref_stack_index
	movq	%rax, %r12
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	%rbp, %rsi
	callq	ref_stack_index
	movups	(%rax), %xmm0
	movups	%xmm0, (%r12)
	decq	%r13
	cmpq	$1, %r13
	jg	.LBB4_23
.LBB4_24:                               # %stack_copy.exit
	movq	%rbx, %rdi
	callq	context_destroy
.LBB4_25:                               # %cleanup.110
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	zjoin, .Lfunc_end4-zjoin
	.cfi_endproc

	.align	16, 0x90
	.type	zlocalfork,@function
zlocalfork:                             # @zlocalfork
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp28:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp29:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp31:
	.cfi_def_cfa_offset 64
.Ltmp32:
	.cfi_offset %rbx, -56
.Ltmp33:
	.cfi_offset %r12, -48
.Ltmp34:
	.cfi_offset %r13, -40
.Ltmp35:
	.cfi_offset %r14, -32
.Ltmp36:
	.cfi_offset %r15, -24
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	leaq	624(%r14), %r13
	movq	624(%r14), %r15
	movq	%r13, %rdi
	callq	ref_stack_counttomark
	movl	%eax, %r12d
	movl	$-24, %eax
	testl	%r12d, %r12d
	je	.LBB5_7
# BB#1:                                 # %if.end
	movl	%r12d, %ebp
	decl	%ebp
	je	.LBB5_5
# BB#2:
	movl	$1, %ebx
	.align	16, 0x90
.LBB5_4:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %esi
	movq	%r13, %rdi
	callq	ref_stack_index
	movzwl	(%rax), %eax
	andl	$12, %eax
	cmpl	$11, %eax
	movl	$-7, %eax
	ja	.LBB5_7
# BB#3:                                 # %for.cond.i
                                        #   in Loop: Header=BB5_4 Depth=1
	incl	%ebx
	cmpl	%ebp, %ebx
	jbe	.LBB5_4
.LBB5_5:                                # %if.end.8
	leaq	-32(%r15), %rsi
	leaq	-16(%r15), %rdx
	addl	$-2, %r12d
	movl	$1, %r9d
	movq	%r14, %rdi
	movq	%r15, %rcx
	movl	%r12d, %r8d
	callq	do_fork
	testl	%eax, %eax
	js	.LBB5_7
# BB#6:                                 # %if.end.14
	movq	(%r13), %rcx
	movups	(%rcx), %xmm0
	movups	%xmm0, -32(%rcx)
	addq	$-32, (%r13)
.LBB5_7:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	zlocalfork, .Lfunc_end5-zlocalfork
	.cfi_endproc

	.align	16, 0x90
	.type	zlock,@function
zlock:                                  # @zlock
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp39:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp40:
	.cfi_def_cfa_offset 32
.Ltmp41:
	.cfi_offset %rbx, -24
.Ltmp42:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movq	8(%rbx), %rdi
	movl	$st_lock, %esi
	movl	$.L.str.29, %edx
	callq	*72(%rdi)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB6_4
# BB#1:                                 # %if.end
	movq	$0, 16(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	leaq	16(%r14), %rcx
	cmpq	640(%rbx), %rcx
	jbe	.LBB6_3
# BB#2:                                 # %if.then.7
	movl	$1, 688(%rbx)
	movl	$-16, %ecx
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	movq	%rcx, 624(%rbx)
	movq	%rax, 24(%r14)
	movl	56(%rbx), %eax
	orl	$112, %eax
	addl	$2048, %eax             # imm = 0x800
	movw	%ax, 16(%r14)
	xorl	%ecx, %ecx
.LBB6_4:                                # %cleanup
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end6:
	.size	zlock, .Lfunc_end6-zlock
	.cfi_endproc

	.align	16, 0x90
	.type	zmonitor,@function
zmonitor:                               # @zmonitor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp43:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp45:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp47:
	.cfi_def_cfa_offset 48
.Ltmp48:
	.cfi_offset %rbx, -40
.Ltmp49:
	.cfi_offset %r12, -32
.Ltmp50:
	.cfi_offset %r14, -24
.Ltmp51:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	-16(%rbx), %r15
	movzwl	-16(%rbx), %eax
	andl	$15872, %eax            # imm = 0x3E00
	cmpl	$2048, %eax             # imm = 0x800
	jne	.LBB7_23
# BB#1:                                 # %land.lhs.true
	movq	8(%r14), %rdi
	movq	-8(%rbx), %rsi
	callq	*128(%rdi)
	movl	$st_lock, %ecx
	cmpq	%rcx, %rax
	je	.LBB7_2
.LBB7_23:                               # %if.then
	movq	%r15, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.LBB7_2:                                # %do.body
	movzwl	(%rbx), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB7_24
# BB#3:                                 # %do.end
	movq	-8(%rbx), %rsi
	movq	16(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB7_11
# BB#4:                                 # %if.end.i
	movq	728(%r14), %rdi
	movabsq	$970881267037344822, %rdx # imm = 0xD79435E50D79436
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	imulq	$19, %rax, %rax
	movq	%rcx, %rdx
	subq	%rax, %rdx
	movq	48(%rdi,%rdx,8), %rdx
	jmp	.LBB7_5
	.align	16, 0x90
.LBB7_7:                                # %while.body.i
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	784(%rdx), %rdx
.LBB7_5:                                # %if.end.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rdx, %rdx
	je	.LBB7_11
# BB#6:                                 # %land.rhs.i
                                        #   in Loop: Header=BB7_5 Depth=1
	cmpq	%rcx, 744(%rdx)
	jne	.LBB7_7
# BB#8:                                 # %if.then.27
	movl	$-29, %eax
	cmpq	%r14, %rdx
	je	.LBB7_22
# BB#9:                                 # %lor.lhs.false
	movq	48(%r14), %rdi
	cmpl	$0, 552(%rdi)
	je	.LBB7_11
# BB#10:                                # %land.lhs.true.33
	cmpq	%rdi, 48(%rdx)
	je	.LBB7_22
.LBB7_11:                               # %if.end.49
	leaq	520(%r14), %r12
	movq	536(%r14), %rax
	addq	$-64, %rax
	cmpq	%rax, 520(%r14)
	jbe	.LBB7_14
# BB#12:                                # %if.then.57
	movl	$4, %esi
	movq	%r12, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB7_22
# BB#13:                                # %if.then.57.if.end.65_crit_edge
	movq	-8(%rbx), %rsi
	movq	16(%rsi), %rcx
.LBB7_14:                               # %if.end.65
	testq	%rcx, %rcx
	je	.LBB7_21
# BB#15:                                # %if.end.i.43
	movq	728(%r14), %rbx
	movq	$0, 768(%r14)
	movq	744(%r14), %rdi
	cmpq	$0, (%rsi)
	je	.LBB7_16
# BB#17:                                # %if.else.i.i
	movq	8(%rsi), %rcx
	addq	$8, %rsi
	movabsq	$970881267037344822, %rdx # imm = 0xD79435E50D79436
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	imulq	$19, %rax, %rax
	movq	%rcx, %rdx
	subq	%rax, %rdx
	leaq	48(%rbx,%rdx,8), %rax
	.align	16, 0x90
.LBB7_18:                               # %land.rhs.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rdx
	leaq	784(%rdx), %rax
	cmpq	%rcx, 744(%rdx)
	jne	.LBB7_18
# BB#19:                                # %index_context.exit.i.i
	movq	%rdi, 768(%rdx)
	jmp	.LBB7_20
.LBB7_24:                               # %if.then.16
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	check_proc_failed       # TAILCALL
.LBB7_21:                               # %if.end.87
	movq	744(%r14), %rax
	movq	%rax, 16(%rsi)
	movq	728(%r14), %rax
	movq	%rax, 24(%rsi)
	movq	520(%r14), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%r14)
	movups	(%r15), %xmm0
	movups	%xmm0, 16(%rax)
	movq	520(%r14), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%r14)
	movq	$monitor_cleanup, 24(%rax)
	movq	520(%r14), %rax
	movw	$3712, (%rax)           # imm = 0xE80
	movl	$0, 4(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%r14)
	movq	$monitor_release, 24(%rax)
	movq	520(%r14), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%r14)
	movups	(%rbx), %xmm0
	movups	%xmm0, 16(%rax)
	addq	$-32, 624(%r14)
	movl	$5, %eax
	jmp	.LBB7_22
.LBB7_16:                               # %if.then.i.i
	movq	%rdi, (%rsi)
	addq	$8, %rsi
.LBB7_20:                               # %if.then.70
	movq	%rdi, (%rsi)
	movq	(%r12), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, (%r12)
	movq	$zmonitor, 24(%rax)
	movq	(%r12), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movl	$22, %eax
.LBB7_22:                               # %cleanup.139
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end7:
	.size	zmonitor, .Lfunc_end7-zmonitor
	.cfi_endproc

	.align	16, 0x90
	.type	znotify,@function
znotify:                                # @znotify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp54:
	.cfi_def_cfa_offset 32
.Ltmp55:
	.cfi_offset %rbx, -24
.Ltmp56:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzwl	(%rbx), %eax
	andl	$15872, %eax            # imm = 0x3E00
	cmpl	$2048, %eax             # imm = 0x800
	jne	.LBB8_23
# BB#1:                                 # %land.lhs.true
	movq	8(%r14), %rdi
	movq	8(%rbx), %rsi
	callq	*128(%rdi)
	movl	$st_condition, %ecx
	cmpq	%rcx, %rax
	je	.LBB8_2
.LBB8_23:                               # %if.then
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	check_type_failed       # TAILCALL
.LBB8_2:                                # %if.end
	movq	8(%rbx), %r9
	addq	$-16, 624(%r14)
	movq	(%r9), %rsi
	xorl	%r8d, %r8d
	testq	%rsi, %rsi
	je	.LBB8_22
# BB#3:                                 # %if.end.i.i
	movq	728(%r14), %rdi
	movabsq	$970881267037344822, %r10 # imm = 0xD79435E50D79436
	movq	%rsi, %rax
	imulq	%r10
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	imulq	$19, %rax, %rax
	movq	%rsi, %rcx
	subq	%rax, %rcx
	movq	48(%rdi,%rcx,8), %rbx
	jmp	.LBB8_4
	.align	16, 0x90
.LBB8_6:                                # %while.body.i.i
                                        #   in Loop: Header=BB8_4 Depth=1
	movq	784(%rbx), %rbx
.LBB8_4:                                # %if.end.i.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB8_18
# BB#5:                                 # %land.rhs.i.i
                                        #   in Loop: Header=BB8_4 Depth=1
	cmpq	%rsi, 744(%rbx)
	jne	.LBB8_6
	.align	16, 0x90
.LBB8_7:                                # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_9 Depth 2
                                        #     Child Loop BB8_15 Depth 2
	movq	768(%rbx), %rsi
	testq	%rsi, %rsi
	movl	$0, %ecx
	je	.LBB8_12
# BB#8:                                 # %if.end.i
                                        #   in Loop: Header=BB8_7 Depth=1
	movq	%rsi, %rax
	imulq	%r10
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	imulq	$19, %rax, %rax
	movq	%rsi, %rcx
	subq	%rax, %rcx
	movq	48(%rdi,%rcx,8), %rax
	jmp	.LBB8_9
	.align	16, 0x90
.LBB8_24:                               # %while.body.i
                                        #   in Loop: Header=BB8_9 Depth=2
	movq	784(%rax), %rax
.LBB8_9:                                # %if.end.i
                                        #   Parent Loop BB8_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rax, %rax
	movl	$0, %ecx
	je	.LBB8_12
# BB#10:                                # %land.rhs.i
                                        #   in Loop: Header=BB8_9 Depth=2
	cmpq	%rsi, 744(%rax)
	jne	.LBB8_24
# BB#11:                                #   in Loop: Header=BB8_7 Depth=1
	movq	%rax, %rcx
	.align	16, 0x90
.LBB8_12:                               # %index_context.exit
                                        #   in Loop: Header=BB8_7 Depth=1
	movq	$0, 768(%rbx)
	movq	744(%rbx), %rbx
	cmpq	$0, 16(%rdi)
	je	.LBB8_13
# BB#14:                                # %if.else.i.i
                                        #   in Loop: Header=BB8_7 Depth=1
	movq	24(%rdi), %rsi
	movq	%rsi, %rax
	imulq	%r10
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	imulq	$19, %rax, %rax
	movq	%rsi, %rdx
	subq	%rax, %rdx
	leaq	48(%rdi,%rdx,8), %rax
	.align	16, 0x90
.LBB8_15:                               # %land.rhs.i.i.i
                                        #   Parent Loop BB8_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rdx
	leaq	784(%rdx), %rax
	cmpq	%rsi, 744(%rdx)
	jne	.LBB8_15
# BB#16:                                # %index_context.exit.i.i
                                        #   in Loop: Header=BB8_7 Depth=1
	movq	%rbx, 768(%rdx)
	jmp	.LBB8_17
	.align	16, 0x90
.LBB8_13:                               # %if.then.i.i
                                        #   in Loop: Header=BB8_7 Depth=1
	movq	%rbx, 16(%rdi)
.LBB8_17:                               # %add_last.exit.i
                                        #   in Loop: Header=BB8_7 Depth=1
	movq	%rbx, 24(%rdi)
	testq	%rcx, %rcx
	movq	%rcx, %rbx
	jne	.LBB8_7
.LBB8_18:                               # %activate_waiting.exit
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%r9)
	cmpq	$0, 16(%rdi)
	je	.LBB8_22
# BB#19:                                # %if.else.i.i.20
	movq	$0, 768(%r14)
	movq	744(%r14), %rsi
	movq	24(%rdi), %rcx
	movq	%rcx, %rax
	imulq	%r10
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	imulq	$19, %rax, %rax
	movq	%rcx, %rdx
	subq	%rax, %rdx
	leaq	48(%rdi,%rdx,8), %rax
	.align	16, 0x90
.LBB8_20:                               # %land.rhs.i.i.i.26
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rdx
	leaq	784(%rdx), %rax
	cmpq	%rcx, 744(%rdx)
	jne	.LBB8_20
# BB#21:                                # %add_last.exit.i.28
	movq	%rsi, 768(%rdx)
	movq	%rsi, 24(%rdi)
	movl	$22, %r8d
.LBB8_22:                               # %cleanup
	movl	%r8d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end8:
	.size	znotify, .Lfunc_end8-znotify
	.cfi_endproc

	.align	16, 0x90
	.type	zwait,@function
zwait:                                  # @zwait
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp60:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp61:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp63:
	.cfi_def_cfa_offset 64
.Ltmp64:
	.cfi_offset %rbx, -56
.Ltmp65:
	.cfi_offset %r12, -48
.Ltmp66:
	.cfi_offset %r13, -40
.Ltmp67:
	.cfi_offset %r14, -32
.Ltmp68:
	.cfi_offset %r15, -24
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	624(%r15), %rbx
	leaq	-16(%rbx), %r14
	movzwl	-16(%rbx), %eax
	andl	$15872, %eax            # imm = 0x3E00
	cmpl	$2048, %eax             # imm = 0x800
	jne	.LBB9_2
# BB#1:                                 # %land.lhs.true
	movq	728(%r15), %r12
	movq	8(%r15), %rdi
	movq	-8(%rbx), %rsi
	callq	*128(%rdi)
	movl	$st_lock, %ecx
	cmpq	%rcx, %rax
	je	.LBB9_4
.LBB9_2:                                # %if.then
	movq	%r14, %rdi
.LBB9_3:                                # %if.then
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB9_4:                                # %if.end
	movzwl	(%rbx), %eax
	andl	$15872, %eax            # imm = 0x3E00
	cmpl	$2048, %eax             # imm = 0x800
	jne	.LBB9_6
# BB#5:                                 # %land.lhs.true.18
	movq	-8(%rbx), %rbp
	movq	8(%r15), %rdi
	movq	8(%rbx), %rsi
	callq	*128(%rdi)
	movl	$st_condition, %ecx
	cmpq	%rcx, %rax
	je	.LBB9_7
.LBB9_6:                                # %if.then.30
	movq	%rbx, %rdi
	jmp	.LBB9_3
.LBB9_7:                                # %if.end.32
	movq	16(%rbp), %rsi
	movl	$-29, %ecx
	testq	%rsi, %rsi
	je	.LBB9_24
# BB#8:                                 # %if.end.i
	movabsq	$970881267037344822, %rbp # imm = 0xD79435E50D79436
	movq	%rsi, %rax
	imulq	%rbp
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	imulq	$19, %rax, %rax
	movq	%rsi, %rdx
	subq	%rax, %rdx
	movq	48(%r12,%rdx,8), %r13
	testq	%r13, %r13
	je	.LBB9_24
# BB#9:
	movq	8(%rbx), %rax
	.align	16, 0x90
.LBB9_10:                               # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, 744(%r13)
	je	.LBB9_12
# BB#11:                                # %while.body.i
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	784(%r13), %r13
	testq	%r13, %r13
	jne	.LBB9_10
	jmp	.LBB9_24
.LBB9_12:                               # %lor.lhs.false
	cmpq	(%r12), %r13
	jne	.LBB9_24
# BB#13:                                # %lor.lhs.false.41
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	48(%r15), %rax
	cmpl	$0, 552(%rax)
	je	.LBB9_16
# BB#14:                                # %land.lhs.true.45
	movzwl	(%r14), %eax
	andl	$12, %eax
	cmpl	$12, %eax
	je	.LBB9_24
# BB#15:                                # %lor.lhs.false.53
	movzwl	(%rbx), %eax
	andl	$12, %eax
	cmpl	$12, %eax
	je	.LBB9_24
.LBB9_16:                               # %if.end.61
	movq	536(%r15), %rax
	addq	$-16, %rax
	cmpq	%rax, 520(%r15)
	leaq	520(%r15), %rbx
	jbe	.LBB9_18
# BB#17:                                # %if.then.69
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	ref_stack_extend
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB9_24
.LBB9_18:                               # %if.end.77
	movq	%r14, %rdi
	callq	lock_release
	movq	$0, 768(%r13)
	movq	744(%r13), %rsi
	movq	(%rsp), %rdi            # 8-byte Reload
	cmpq	$0, (%rdi)
	je	.LBB9_19
# BB#20:                                # %if.else.i
	movq	8(%rdi), %rcx
	addq	$8, %rdi
	movq	%rcx, %rax
	imulq	%rbp
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	imulq	$19, %rax, %rax
	movq	%rcx, %rdx
	subq	%rax, %rdx
	leaq	48(%r12,%rdx,8), %rax
.LBB9_21:                               # %land.rhs.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rdx
	leaq	784(%rdx), %rax
	cmpq	%rcx, 744(%rdx)
	jne	.LBB9_21
# BB#22:                                # %index_context.exit.i
	movq	%rsi, 768(%rdx)
	jmp	.LBB9_23
.LBB9_19:                               # %if.then.i
	movq	%rsi, (%rdi)
	addq	$8, %rdi
.LBB9_23:                               # %add_last.exit
	movq	%rsi, (%rdi)
	movq	(%rbx), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, (%rbx)
	movq	$await_lock, 24(%rax)
	movq	(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movl	$22, %ecx
.LBB9_24:                               # %cleanup.96
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	zwait, .Lfunc_end9-zwait
	.cfi_endproc

	.align	16, 0x90
	.type	zyield,@function
zyield:                                 # @zyield
	.cfi_startproc
# BB#0:                                 # %entry
	movq	728(%rdi), %rsi
	xorl	%eax, %eax
	cmpq	$0, 16(%rsi)
	je	.LBB10_4
# BB#1:                                 # %if.else.i
	movq	$0, 768(%rdi)
	movq	744(%rdi), %rdi
	movq	24(%rsi), %rcx
	movabsq	$970881267037344822, %rdx # imm = 0xD79435E50D79436
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	imulq	$19, %rax, %rax
	movq	%rcx, %rdx
	subq	%rax, %rdx
	leaq	48(%rsi,%rdx,8), %rax
	.align	16, 0x90
.LBB10_2:                               # %land.rhs.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rdx
	leaq	784(%rdx), %rax
	cmpq	%rcx, 744(%rdx)
	jne	.LBB10_2
# BB#3:                                 # %add_last.exit
	movq	%rdi, 768(%rdx)
	movq	%rdi, 24(%rsi)
	movl	$22, %eax
.LBB10_4:                               # %cleanup
	retq
.Lfunc_end10:
	.size	zyield, .Lfunc_end10-zyield
	.cfi_endproc

	.align	16, 0x90
	.type	zusertime_context,@function
zusertime_context:                      # @zusertime_context
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp70:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp71:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp72:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp73:
	.cfi_def_cfa_offset 48
.Ltmp74:
	.cfi_offset %rbx, -32
.Ltmp75:
	.cfi_offset %r14, -24
.Ltmp76:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movq	728(%rbx), %r15
	leaq	(%rsp), %rdi
	callq	gp_get_usertime
	imulq	$1000, (%rsp), %rcx     # imm = 0x3E8
	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
	imulq	8(%rsp)
	leaq	16(%r14), %rax
	cmpq	640(%rbx), %rax
	jbe	.LBB11_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB11_6
.LBB11_2:                               # %if.else
	movq	%rdx, %rsi
	shrq	$63, %rsi
	sarq	$18, %rdx
	addq	%rsi, %rdx
	addq	%rcx, %rdx
	movq	%rax, 624(%rbx)
	cmpl	$0, 144(%rbx)
	je	.LBB11_4
# BB#3:                                 # %if.else.if.end.11_crit_edge
	movq	8(%r15), %rax
	jmp	.LBB11_5
.LBB11_4:                               # %if.then.8
	movq	%rdx, 8(%r15)
	movl	$1, 144(%rbx)
	movq	%rdx, %rax
.LBB11_5:                               # %if.end.11
	addq	136(%rbx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 24(%r14)
	movw	$2816, 16(%r14)         # imm = 0xB00
	xorl	%eax, %eax
.LBB11_6:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end11:
	.size	zusertime_context, .Lfunc_end11-zusertime_context
	.cfi_endproc

	.align	16, 0x90
	.type	fork_done,@function
fork_done:                              # @fork_done
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp78:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp79:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp80:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp81:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp82:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp83:
	.cfi_def_cfa_offset 80
.Ltmp84:
	.cfi_offset %rbx, -56
.Ltmp85:
	.cfi_offset %r12, -48
.Ltmp86:
	.cfi_offset %r13, -40
.Ltmp87:
	.cfi_offset %r14, -32
.Ltmp88:
	.cfi_offset %r15, -24
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rdi, %r12
	leaq	624(%r12), %r14
	movq	624(%r12), %rbp
	movq	728(%r12), %r13
	leaq	368(%r12), %rbx
	movq	%rbx, %rdi
	callq	ref_stack_count
	subl	464(%r12), %eax
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	ref_stack_pop
	leaq	520(%r12), %r15
	movq	%r15, %rdi
	callq	ref_stack_count
	leal	-1(%rax), %esi
	movq	%r12, %rdi
	callq	pop_estack
	movq	(%r12), %rdi
	callq	gs_grestoreall
	movq	48(%r12), %rax
	cmpl	$0, 552(%rax)
	je	.LBB12_8
# BB#1:                                 # %if.then
	leaq	504(%r12), %rdi
	leaq	(%rsp), %rdx
	movl	$.L.str.31, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB12_2
# BB#3:                                 # %if.end
	cmpl	$0, 752(%r12)
	je	.LBB12_5
# BB#4:                                 # %if.then.16
	movq	%r14, %rdi
	callq	ref_stack_count
	movq	%r14, %rdi
	movl	%eax, %esi
	callq	ref_stack_pop
	movq	(%r14), %rbp
.LBB12_5:                               # %do.body.26
	leaq	16(%rbp), %rax
	cmpq	640(%r12), %rax
	jbe	.LBB12_7
# BB#6:                                 # %if.then.30
	movl	$1, 688(%r12)
	movl	$-16, %eax
	jmp	.LBB12_25
.LBB12_8:                               # %if.end.64
	cmpl	$0, 752(%r12)
	je	.LBB12_12
# BB#9:                                 # %if.then.67
	movq	%r14, %rdi
	callq	ref_stack_count
	movq	%r14, %rdi
	movl	%eax, %esi
	callq	ref_stack_pop
	movq	%r12, %rdi
	callq	context_state_store
	cmpl	$0, 144(%r12)
	je	.LBB12_11
# BB#10:                                # %if.then.i
	leaq	(%rsp), %rdi
	callq	gp_get_usertime
	imulq	$1000, (%rsp), %rcx     # imm = 0x3E8
	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
	imulq	8(%rsp)
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$18, %rdx
	addq	%rax, %rdx
	addq	%rcx, %rdx
	subq	8(%r13), %rdx
	addq	%rdx, 136(%r12)
.LBB12_11:                              # %context_store.exit
	movq	40(%r13), %rax
	movq	%rax, 768(%r12)
	movq	744(%r12), %rax
	movq	%rax, 40(%r13)
	movq	$0, (%r13)
	jmp	.LBB12_24
.LBB12_2:                               # %if.then.11
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.19, %edi
	movl	$796, %esi              # imm = 0x31C
	callq	lprintf_file_and_line
	movl	$.L.str.32, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	movl	$-100, %eax
	jmp	.LBB12_25
.LBB12_7:                               # %if.else
	addq	$8, %r12
	movq	%rax, (%r14)
	movq	%r12, %rdi
	callq	alloc_save_current_id
	movq	%rax, 24(%rbp)
	movw	$4352, 16(%rbp)         # imm = 0x1100
	movq	(%r15), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$fork_done, 24(%rax)
	movq	(%r15), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, (%r15)
	movq	(%rsp), %rcx
	movups	(%rcx), %xmm0
	movups	%xmm0, 16(%rax)
	movl	$5, %eax
	jmp	.LBB12_25
.LBB12_12:                              # %if.else.74
	movq	776(%r12), %rcx
	testq	%rcx, %rcx
	je	.LBB12_17
# BB#13:                                # %if.end.i
	movabsq	$970881267037344822, %rdi # imm = 0xD79435E50D79436
	movq	%rcx, %rax
	imulq	%rdi
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	imulq	$19, %rax, %rax
	movq	%rcx, %rdx
	subq	%rax, %rdx
	movq	48(%r13,%rdx,8), %rax
	jmp	.LBB12_14
	.align	16, 0x90
.LBB12_16:                              # %while.body.i
                                        #   in Loop: Header=BB12_14 Depth=1
	movq	784(%rax), %rax
.LBB12_14:                              # %if.end.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB12_17
# BB#15:                                # %land.rhs.i
                                        #   in Loop: Header=BB12_14 Depth=1
	cmpq	%rcx, 744(%rax)
	jne	.LBB12_16
# BB#18:                                # %if.then.77
	movl	$1, 736(%r12)
	movq	$0, 768(%rax)
	cmpq	$0, 16(%r13)
	je	.LBB12_19
# BB#20:                                # %if.else.i
	leaq	24(%r13), %rbp
	movq	24(%r13), %rsi
	movq	%rsi, %rax
	imulq	%rdi
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	imulq	$19, %rax, %rax
	movq	%rsi, %rdx
	subq	%rax, %rdx
	leaq	48(%r13,%rdx,8), %rax
	.align	16, 0x90
.LBB12_21:                              # %land.rhs.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rdx
	leaq	784(%rdx), %rax
	cmpq	%rsi, 744(%rdx)
	jne	.LBB12_21
# BB#22:                                # %index_context.exit.i
	movq	%rcx, 768(%rdx)
	jmp	.LBB12_23
.LBB12_17:                              # %index_context.exit.thread
	movl	$1, 736(%r12)
	jmp	.LBB12_24
.LBB12_19:                              # %if.then.i.47
	movq	%rcx, 16(%r13)
	addq	$24, %r13
	movq	%r13, %rbp
.LBB12_23:                              # %add_last.exit
	movq	%rcx, (%rbp)
.LBB12_24:                              # %cleanup.80
	movl	$22, %eax
.LBB12_25:                              # %cleanup.80
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	fork_done, .Lfunc_end12-fork_done
	.cfi_endproc

	.align	16, 0x90
	.type	finish_join,@function
finish_join:                            # @finish_join
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$11, %eax
	jne	.LBB13_6
# BB#1:                                 # %if.end.i
	movq	8(%rdi), %rsi
	movl	$-29, %ecx
	testq	%rsi, %rsi
	je	.LBB13_8
# BB#2:                                 # %if.end.i.i
	movq	728(%rbx), %rdi
	movabsq	$970881267037344822, %rdx # imm = 0xD79435E50D79436
	movq	%rsi, %rax
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	imulq	$19, %rax, %rax
	movq	%rsi, %rdx
	subq	%rax, %rdx
	movq	48(%rdi,%rdx,8), %rax
	jmp	.LBB13_3
	.align	16, 0x90
.LBB13_5:                               # %while.body.i.i
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	784(%rax), %rax
.LBB13_3:                               # %if.end.i.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB13_8
# BB#4:                                 # %land.rhs.i.i
                                        #   in Loop: Header=BB13_3 Depth=1
	cmpq	%rsi, 744(%rax)
	jne	.LBB13_5
	jmp	.LBB13_7
.LBB13_6:                               # %context_param.exit
	callq	check_type_failed
	movl	%eax, %ecx
	testl	%ecx, %ecx
                                        # implicit-def: RAX
	js	.LBB13_8
.LBB13_7:                               # %do.end
	movq	776(%rax), %rdx
	movl	$-29, %ecx
	cmpq	744(%rbx), %rdx
	jne	.LBB13_8
# BB#9:                                 # %if.end.3
	movq	$0, 776(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	jmp	zjoin                   # TAILCALL
.LBB13_8:                               # %cleanup
	movl	%ecx, %eax
	popq	%rbx
	retq
.Lfunc_end13:
	.size	finish_join, .Lfunc_end13-finish_join
	.cfi_endproc

	.align	16, 0x90
	.type	monitor_cleanup,@function
monitor_cleanup:                        # @monitor_cleanup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	520(%rbx), %rdi
	callq	lock_release
	testl	%eax, %eax
	js	.LBB14_2
# BB#1:                                 # %if.end
	addq	$-16, 520(%rbx)
	movl	$14, %eax
.LBB14_2:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end14:
	.size	monitor_cleanup, .Lfunc_end14-monitor_cleanup
	.cfi_endproc

	.align	16, 0x90
	.type	monitor_release,@function
monitor_release:                        # @monitor_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	520(%rbx), %rdi
	addq	$-16, %rdi
	callq	lock_release
	testl	%eax, %eax
	js	.LBB15_2
# BB#1:                                 # %if.end
	addq	$-32, 520(%rbx)
	movl	$14, %eax
.LBB15_2:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end15:
	.size	monitor_release, .Lfunc_end15-monitor_release
	.cfi_endproc

	.align	16, 0x90
	.type	await_lock,@function
await_lock:                             # @await_lock
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	movq	-8(%rax), %rsi
	cmpq	$0, 16(%rsi)
	je	.LBB16_8
# BB#1:                                 # %if.end.i
	movq	728(%rdi), %r9
	movq	$0, 768(%rdi)
	movq	744(%rdi), %r8
	cmpq	$0, (%rsi)
	je	.LBB16_2
# BB#3:                                 # %if.else.i.i
	movq	8(%rsi), %rcx
	addq	$8, %rsi
	movabsq	$970881267037344822, %rdx # imm = 0xD79435E50D79436
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	imulq	$19, %rax, %rax
	movq	%rcx, %rdx
	subq	%rax, %rdx
	leaq	48(%r9,%rdx,8), %rax
	.align	16, 0x90
.LBB16_4:                               # %land.rhs.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rdx
	leaq	784(%rdx), %rax
	cmpq	%rcx, 744(%rdx)
	jne	.LBB16_4
# BB#5:                                 # %index_context.exit.i.i
	movq	%r8, 768(%rdx)
	jmp	.LBB16_6
.LBB16_8:                               # %if.then
	movq	744(%rdi), %rcx
	movq	%rcx, 16(%rsi)
	movq	728(%rdi), %rcx
	movq	%rcx, 24(%rsi)
	addq	$-32, %rax
	movq	%rax, 624(%rdi)
	xorl	%eax, %eax
	retq
.LBB16_2:                               # %if.then.i.i
	movq	%r8, (%rsi)
	addq	$8, %rsi
.LBB16_6:                               # %if.end
	movq	%r8, (%rsi)
	movq	520(%rdi), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rdi)
	movq	$await_lock, 24(%rax)
	movq	520(%rdi), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movl	$22, %eax
	retq
.Lfunc_end16:
	.size	await_lock, .Lfunc_end16-await_lock
	.cfi_endproc

	.align	16, 0x90
	.type	zcontext_init,@function
zcontext_init:                          # @zcontext_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$ctx_initialize, 360(%rdi)
	movq	$ctx_initialize, 344(%rdi)
	movl	$0, 352(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end17:
	.size	zcontext_init, .Lfunc_end17-zcontext_init
	.cfi_endproc

	.align	16, 0x90
	.type	context_destroy,@function
context_destroy:                        # @context_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp97:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp98:
	.cfi_def_cfa_offset 32
.Ltmp99:
	.cfi_offset %rbx, -32
.Ltmp100:
	.cfi_offset %r14, -24
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	48(%rbx), %r14
	movq	728(%rbx), %rsi
	movq	744(%rbx), %rcx
	movabsq	$970881267037344822, %rdx # imm = 0xD79435E50D79436
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	imulq	$19, %rax, %rax
	subq	%rax, %rcx
	leaq	48(%rsi,%rcx,8), %rcx
	.align	16, 0x90
.LBB18_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	movq	(%rax), %rcx
	cmpq	%rbx, %rcx
	leaq	784(%rcx), %rcx
	jne	.LBB18_1
# BB#2:                                 # %while.end
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movl	$39, %edi
	callq	gs_debug_c
	movl	%eax, %ebp
	movl	$34, %edi
	callq	gs_debug_c
	orl	%ebp, %eax
	je	.LBB18_4
# BB#3:                                 # %if.then
	movl	$.L.str.19, %esi
	movl	$1253, %edx             # imm = 0x4E5
	movq	%r14, %rdi
	callq	dmprintf_file_and_line
	movq	744(%rbx), %rdx
	movl	736(%rbx), %r8d
	movl	$.L.str.20, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rcx
	callq	errprintf
.LBB18_4:                               # %if.end
	movq	%rbx, %rdi
	callq	context_state_free
	testl	%eax, %eax
	je	.LBB18_6
# BB#5:                                 # %if.end.9
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB18_6:                               # %if.then.8
	movq	24(%r14), %rax
	movl	$.L.str.21, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end18:
	.size	context_destroy, .Lfunc_end18-context_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	do_fork,@function
do_fork:                                # @do_fork
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp103:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp104:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp105:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp106:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp107:
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
.Ltmp108:
	.cfi_def_cfa_offset 256
.Ltmp109:
	.cfi_offset %rbx, -56
.Ltmp110:
	.cfi_offset %r12, -48
.Ltmp111:
	.cfi_offset %r13, -40
.Ltmp112:
	.cfi_offset %r14, -32
.Ltmp113:
	.cfi_offset %r15, -24
.Ltmp114:
	.cfi_offset %rbp, -16
	movl	%r8d, %r14d
	movq	%rdx, %rbx
	movq	%rsi, %r13
	movq	%rdi, %r12
	movzwl	(%r13), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB19_1
# BB#2:                                 # %do.end
	movq	48(%r12), %rax
	movl	$-29, %r15d
	cmpl	$0, 552(%rax)
	jne	.LBB19_76
# BB#3:                                 # %if.end.4
	movq	728(%r12), %rdi
	movzbl	1(%rcx), %eax
	cmpl	$14, %eax
	jne	.LBB19_6
# BB#4:                                 # %if.then.10
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	leaq	192(%rsp), %rsi
	movq	%r12, %rdi
	movl	%r9d, %ebp
	callq	zget_stdout
	movl	%ebp, %r9d
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB19_76
# BB#5:                                 # %if.end.15
	leaq	224(%r12), %rcx
	jmp	.LBB19_16
.LBB19_1:                               # %if.then
	movq	%r13, %rdi
	callq	check_proc_failed
	movl	%eax, %r15d
.LBB19_76:                              # %cleanup.376
	movl	%r15d, %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB19_6:                               # %do.body.17
	movzwl	(%rcx), %edx
	andl	$16160, %edx            # imm = 0x3F20
	cmpl	$800, %edx              # imm = 0x320
	jne	.LBB19_7
# BB#10:                                # %do.body.33
	movq	8(%rcx), %rax
	movq	%rax, 192(%rsp)
	movzwl	264(%rax), %edx
	movl	4(%rcx), %esi
	cmpl	%esi, %edx
	jne	.LBB19_12
# BB#11:
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	jmp	.LBB19_16
.LBB19_7:                               # %if.then.24
	movzbl	%al, %eax
	movl	$-7, %r15d
	cmpl	$3, %eax
	je	.LBB19_76
# BB#8:                                 # %cond.true
	movq	%rcx, %rdi
	jmp	.LBB19_9
.LBB19_12:                              # %if.then.38
	testw	%dx, %dx
	jne	.LBB19_15
# BB#13:                                # %land.lhs.true
	movzwl	266(%rax), %eax
	cmpl	%esi, %eax
	jne	.LBB19_15
# BB#14:                                # %if.then.48
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movq	%rcx, %rdi
	movl	%r9d, %r15d
	movq	%rcx, %rbp
	callq	file_switch_to_read
	movq	%rbp, %rcx
	movl	%r15d, %r9d
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jns	.LBB19_16
	jmp	.LBB19_76
.LBB19_15:                              # %if.else.54
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movq	256(%r12), %rax
	movq	%rax, 192(%rsp)
.LBB19_16:                              # %if.end.61
	movzbl	1(%rbx), %eax
	cmpl	$14, %eax
	jne	.LBB19_19
# BB#17:                                # %if.then.68
	leaq	192(%rsp), %rsi
	movq	%r12, %rdi
	movl	%r9d, %ebp
	movq	%rcx, %rbx
	callq	zget_stdin
	movq	%rbx, %rcx
	movl	%ebp, %r9d
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB19_76
# BB#18:                                # %if.end.73
	leaq	208(%r12), %rbx
	jmp	.LBB19_27
.LBB19_19:                              # %do.body.77
	movzwl	(%rbx), %edx
	andl	$16160, %edx            # imm = 0x3F20
	cmpl	$800, %edx              # imm = 0x320
	jne	.LBB19_20
# BB#22:                                # %do.body.97
	movq	8(%rbx), %rax
	movq	%rax, 192(%rsp)
	movzwl	264(%rax), %edx
	movl	4(%rbx), %esi
	cmpl	%esi, %edx
	je	.LBB19_27
# BB#23:                                # %if.then.106
	testw	%dx, %dx
	jne	.LBB19_26
# BB#24:                                # %land.lhs.true.111
	movzwl	266(%rax), %eax
	cmpl	%esi, %eax
	jne	.LBB19_26
# BB#25:                                # %if.then.118
	movq	%rbx, %rdi
	movl	%r9d, %ebp
	movq	%rbx, %r15
	movq	%rcx, %rbx
	callq	file_switch_to_read
	movq	%rbx, %rcx
	movq	%r15, %rbx
	movl	%ebp, %r9d
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jns	.LBB19_27
	jmp	.LBB19_76
.LBB19_20:                              # %if.then.84
	movzbl	%al, %eax
	movl	$-7, %r15d
	cmpl	$3, %eax
	je	.LBB19_76
# BB#21:                                # %cond.true.91
	movq	%rbx, %rdi
.LBB19_9:                               # %cleanup.376
	callq	check_type_failed
	movl	%eax, %r15d
	jmp	.LBB19_76
.LBB19_26:                              # %if.else.128
	movq	256(%r12), %rax
	movq	%rax, 192(%rsp)
.LBB19_27:                              # %if.end.136
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movl	%r9d, 28(%rsp)          # 4-byte Spill
	leaq	8(%r12), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	64(%rcx), %rax
	movq	%rax, 176(%rsp)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	32(%rcx), %xmm2
	movups	48(%rcx), %xmm3
	movaps	%xmm3, 160(%rsp)
	movaps	%xmm2, 144(%rsp)
	movaps	%xmm1, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	testl	%r9d, %r9d
	je	.LBB19_37
# BB#28:                                # %if.then.139
	movq	48(%r12), %rax
	movq	200(%rax), %rbp
	leaq	504(%r12), %rdi
	leaq	56(%rsp), %rdx
	movl	$.L.str.22, %esi
	callq	dict_find_string
	movl	$-100, %r15d
	testl	%eax, %eax
	jle	.LBB19_76
# BB#29:                                # %lor.lhs.false
	movq	56(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$2, %ecx
	jne	.LBB19_76
# BB#30:                                # %if.end.155
	movups	(%rax), %xmm0
	movaps	%xmm0, 80(%rsp)
	leaq	80(%rsp), %rdi
	callq	dict_maxlength
	movl	%eax, 8(%rsp)           # 4-byte Spill
	movq	48(%r12), %rax
	movl	216(%rax), %esi
	movq	%rbp, %rdi
	callq	ialloc_alloc_state
	movq	%rbp, %rdi
	movq	%rax, %rbp
	movq	48(%r12), %rax
	movl	216(%rax), %esi
	movq	%rdi, %r15
	callq	ialloc_alloc_state
	testq	%rbp, %rbp
	je	.LBB19_32
# BB#31:                                # %if.end.155
	testq	%rax, %rax
	je	.LBB19_32
# BB#33:                                # %if.end.178
	movl	$12, 224(%rbp)
	movl	$12, 224(%rax)
	movq	%rax, (%rbp)
	movq	%rbp, 152(%rsp)
	leaq	104(%rsp), %rsi
	leaq	112(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %rcx
	callq	context_create
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB19_76
# BB#34:                                # %if.end.188
	leaq	64(%rsp), %rdx
	movq	%rbp, %rdi
	movl	8(%rsp), %esi           # 4-byte Reload
	callq	dict_alloc
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB19_35
# BB#36:                                # %cleanup.194
	movl	28(%rsp), %edx          # 4-byte Reload
	movq	40(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB19_54
.LBB19_37:                              # %if.else.201
	leaq	104(%rsp), %rsi
	leaq	112(%rsp), %rdx
	xorl	%ebp, %ebp
	xorl	%r8d, %r8d
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %rcx
	callq	context_create
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB19_76
# BB#38:                                # %if.end.207
	movq	(%r12), %rax
	jmp	.LBB19_40
	.align	16, 0x90
.LBB19_39:                              # %for.body
                                        #   in Loop: Header=BB19_40 Depth=1
	incl	%ebp
	movq	%rax, %rdi
	callq	gs_state_saved
.LBB19_40:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	jne	.LBB19_39
# BB#41:                                # %for.end
	movq	104(%rsp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB19_42
# BB#70:
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB19_71:                              # %for.body.216
                                        # =>This Inner Loop Header: Depth=1
	decl	%ebp
	movq	%rax, %rdi
	callq	gs_state_saved
	testq	%rax, %rax
	jne	.LBB19_71
	jmp	.LBB19_43
.LBB19_32:                              # %if.then.175
	movl	$.L.str.23, %edx
	movq	%r15, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	*24(%rbx)
	movl	$.L.str.23, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*24(%rbx)
	movl	$-25, %r15d
	jmp	.LBB19_76
.LBB19_42:
	movq	%rbx, 16(%rsp)          # 8-byte Spill
.LBB19_43:                              # %for.cond.220.preheader
	testl	%ebp, %ebp
	jle	.LBB19_48
# BB#44:                                # %for.cond.220.preheader
	testl	%r15d, %r15d
	js	.LBB19_48
# BB#45:                                # %for.body.225.preheader
	movq	104(%rsp), %rbx
	.align	16, 0x90
.LBB19_46:                              # %for.body.225
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	callq	gs_gsave
	movl	%eax, %r15d
	cmpl	$2, %ebp
	jl	.LBB19_48
# BB#47:                                # %for.body.225
                                        #   in Loop: Header=BB19_46 Depth=1
	decl	%ebp
	testl	%r15d, %r15d
	jns	.LBB19_46
.LBB19_48:                              # %for.end.231
	testl	%r15d, %r15d
	movl	28(%rsp), %edx          # 4-byte Reload
	movq	40(%rsp), %rsi          # 8-byte Reload
	movq	16(%rsp), %rbx          # 8-byte Reload
	js	.LBB19_76
# BB#49:                                # %if.end.235
	movq	(%r12), %rbp
	testq	%rbp, %rbp
	je	.LBB19_54
# BB#50:                                # %for.body.246.lr.ph
	movq	%r14, %rbx
	movq	104(%rsp), %rax
	movq	(%rax), %r14
.LBB19_51:                              # %for.body.246
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	gs_setgstate
	movl	%eax, %r15d
	movq	%rbp, %rdi
	callq	gs_state_saved
	movq	%rax, %rbp
	movq	%r14, %rdi
	callq	gs_state_saved
	movq	%rax, %r14
	testq	%rbp, %rbp
	je	.LBB19_53
# BB#52:                                # %for.body.246
                                        #   in Loop: Header=BB19_51 Depth=1
	testl	%r15d, %r15d
	jns	.LBB19_51
.LBB19_53:                              # %cleanup.256
	testl	%r15d, %r15d
	movq	%rbx, %r14
	movl	28(%rsp), %edx          # 4-byte Reload
	movq	40(%rsp), %rsi          # 8-byte Reload
	movq	16(%rsp), %rbx          # 8-byte Reload
	js	.LBB19_76
.LBB19_54:                              # %if.end.261
	movq	%r14, (%rsp)            # 8-byte Spill
	movq	104(%rsp), %rax
	movq	$ctx_initialize, 360(%rax)
	movq	$ctx_initialize, 344(%rax)
	movl	$0, 352(%rax)
	movl	reschedule_interval(%rip), %eax
	cmpl	$100, %eax
	movl	$250, %ecx
	cmovgel	%eax, %ecx
	movq	104(%rsp), %rbp
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movq	$ctx_reschedule, 360(%rbp)
	movq	$ctx_time_slice, 344(%rbp)
	movl	%ecx, 352(%rbp)
	movq	296(%r12), %rax
	movq	%rax, 296(%rbp)
	movups	264(%r12), %xmm0
	movups	280(%r12), %xmm1
	movups	%xmm1, 280(%rbp)
	movups	%xmm0, 264(%rbp)
	movq	336(%r12), %rax
	movq	%rax, 336(%rbp)
	movups	304(%r12), %xmm0
	movups	320(%r12), %xmm1
	movups	%xmm1, 320(%rbp)
	movups	%xmm0, 304(%rbp)
	movl	80(%r12), %eax
	movl	%eax, 80(%rbp)
	leaq	368(%r12), %rdi
	movl	464(%r12), %eax
	leaq	368(%rbp), %r15
	movl	%eax, 464(%rbp)
	movl	468(%r12), %eax
	movl	%eax, 468(%rbp)
	movups	(%rbx), %xmm0
	movups	%xmm0, 208(%rbp)
	movups	(%rsi), %xmm0
	movups	%xmm0, 224(%rbp)
	movups	240(%r12), %xmm0
	movups	%xmm0, 240(%rbp)
	movq	%rdi, %r14
	movl	%edx, %ebp
	callq	ref_stack_count
	testl	%ebp, %ebp
	movl	%eax, %ebx
	movq	%rax, %rbp
	je	.LBB19_56
# BB#55:                                # %cond.true.302
	movl	464(%r12), %ebx
.LBB19_56:                              # %cond.end.306
	movl	%ebx, 16(%rsp)          # 4-byte Spill
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	ref_stack_push
	testl	%ebx, %ebx
	movq	%r14, 40(%rsp)          # 8-byte Spill
	movq	%rbp, %rbx
	je	.LBB19_59
# BB#57:                                # %for.body.lr.ph.i.152
	movl	16(%rsp), %eax          # 4-byte Reload
	subl	%eax, %ebx
	movl	%eax, %ebp
	decq	%rbp
.LBB19_58:                              # %for.body.i.159
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	ref_stack_index
	movq	%rax, %r14
	leaq	(%rbx,%rbp), %rsi
	movq	40(%rsp), %rdi          # 8-byte Reload
	callq	ref_stack_index
	movups	(%rax), %xmm0
	movups	%xmm0, (%r14)
	leaq	-1(%rbp), %rax
	incq	%rbp
	cmpq	$1, %rbp
	movq	%rax, %rbp
	jg	.LBB19_58
.LBB19_59:                              # %stack_copy.exit160
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	sete	%al
	movl	16(%rsp), %ecx          # 4-byte Reload
	testl	%ecx, %ecx
	je	.LBB19_65
# BB#60:                                # %stack_copy.exit160
	testb	%al, %al
	jne	.LBB19_65
# BB#61:                                # %for.body.317.lr.ph
	movl	%ecx, %r14d
	xorl	%ebp, %ebp
.LBB19_62:                              # %for.body.317
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	ref_stack_index
	movq	%rax, %rbx
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rdi
	movq	%rbx, %rsi
	leaq	80(%rsp), %rdx
	callq	obj_eq
	testl	%eax, %eax
	je	.LBB19_64
# BB#63:                                # %if.then.322
                                        #   in Loop: Header=BB19_62 Depth=1
	movups	64(%rsp), %xmm0
	movups	%xmm0, (%rbx)
.LBB19_64:                              # %if.end.323
                                        #   in Loop: Header=BB19_62 Depth=1
	incq	%rbp
	cmpq	%rbp, %r14
	jne	.LBB19_62
.LBB19_65:                              # %if.end.327
	movq	8(%rsp), %rbx           # 8-byte Reload
	leaq	520(%rbx), %rdi
	movl	$3, %esi
	callq	ref_stack_push
	movq	520(%rbx), %rax
	movq	$fork_done_with_error, -24(%rax)
	movq	520(%rbx), %rax
	movw	$3712, -32(%rax)        # imm = 0xE80
	movl	$0, -28(%rax)
	movq	$fork_done, -8(%rax)
	movq	520(%rbx), %rax
	movw	$3968, -16(%rax)        # imm = 0xF80
	movl	$0, -12(%rax)
	movups	(%r13), %xmm0
	movups	%xmm0, (%rax)
	leaq	624(%rbx), %rdi
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movq	(%rsp), %rbx            # 8-byte Reload
	leal	-2(%rbx), %esi
	callq	ref_stack_push
	leaq	624(%r12), %r15
	movl	%ebx, %ebp
	addl	$-2, %ebp
	je	.LBB19_68
# BB#66:                                # %for.body.lr.ph.i
	movq	(%r15), %r14
	decq	%rbp
	subq	%r13, %r14
	shrq	$4, %r14
	incl	%r14d
.LBB19_67:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%rbp, %rsi
	callq	ref_stack_index
	movq	%rax, %rbx
	leaq	(%r14,%rbp), %rsi
	movq	%r15, %rdi
	callq	ref_stack_index
	movups	(%rax), %xmm0
	movups	%xmm0, (%rbx)
	leaq	-1(%rbp), %rax
	incq	%rbp
	cmpq	$1, %rbp
	movq	%rax, %rbp
	jg	.LBB19_67
.LBB19_68:                              # %stack_copy.exit
	movups	104(%r12), %xmm0
	movq	8(%rsp), %rax           # 8-byte Reload
	movups	%xmm0, 104(%rax)
	movq	$0, 768(%rax)
	movq	744(%rax), %rsi
	movq	32(%rsp), %rdi          # 8-byte Reload
	cmpq	$0, 16(%rdi)
	je	.LBB19_69
# BB#72:                                # %if.else.i
	movq	24(%rdi), %rcx
	movabsq	$970881267037344822, %rdx # imm = 0xD79435E50D79436
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	imulq	$19, %rax, %rax
	movq	%rcx, %rdx
	subq	%rax, %rdx
	leaq	48(%rdi,%rdx,8), %rax
	leaq	24(%rdi), %rdi
.LBB19_73:                              # %land.rhs.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rdx
	leaq	784(%rdx), %rax
	cmpq	%rcx, 744(%rdx)
	jne	.LBB19_73
# BB#74:                                # %index_context.exit.i
	movq	%rsi, 768(%rdx)
	jmp	.LBB19_75
.LBB19_69:                              # %if.then.i
	movq	%rsi, 16(%rdi)
	addq	$24, %rdi
.LBB19_75:                              # %add_last.exit
	movq	(%rsp), %rdx            # 8-byte Reload
	movq	%rsi, (%rdi)
	decl	%edx
	movq	(%r15), %rax
	shlq	$4, %rdx
	movq	%rax, %rcx
	subq	%rdx, %rcx
	negq	%rdx
	movq	%rcx, (%r15)
	movq	%rsi, 8(%rcx)
	movw	$2816, (%rax,%rdx)      # imm = 0xB00
	xorl	%r15d, %r15d
	jmp	.LBB19_76
.LBB19_35:                              # %if.then.192
	movq	104(%rsp), %rdi
	callq	context_destroy
	jmp	.LBB19_76
.Lfunc_end19:
	.size	do_fork, .Lfunc_end19-do_fork
	.cfi_endproc

	.align	16, 0x90
	.type	context_create,@function
context_create:                         # @context_create
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp116:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp117:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp118:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp119:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp120:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp121:
	.cfi_def_cfa_offset 96
.Ltmp122:
	.cfi_offset %rbx, -56
.Ltmp123:
	.cfi_offset %r12, -48
.Ltmp124:
	.cfi_offset %r13, -40
.Ltmp125:
	.cfi_offset %r14, -32
.Ltmp126:
	.cfi_offset %r15, -24
.Ltmp127:
	.cfi_offset %rbp, -16
	movl	%r8d, %r14d
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%rdx, %r15
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r12
	movq	40(%r15), %rdi
	callq	*32(%rdi)
	movq	%rax, %r13
	movl	$st_context, %esi
	movl	$.L.str.24, %edx
	movq	%r13, %rdi
	callq	*72(%r13)
	movq	%rax, %rbx
	movl	$-25, %ebp
	testq	%rbx, %rbx
	je	.LBB20_9
# BB#1:                                 # %if.end
	testl	%r14d, %r14d
	je	.LBB20_7
# BB#2:                                 # %if.then.7
	movl	$728, %edx              # imm = 0x2D8
	movq	%rbx, %rdi
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rsi
	callq	memcpy
	leaq	504(%rbp), %r14
	jmp	.LBB20_3
.LBB20_7:                               # %if.else
	movq	%rbx, 24(%rsp)
	movq	16(%rsp), %rax          # 8-byte Reload
	leaq	504(%rax), %r14
	leaq	24(%rsp), %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	context_state_alloc
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB20_8
.LBB20_3:                               # %if.end.14
	leaq	32(%rsp), %rdx
	movl	$.L.str.25, %esi
	movq	%r14, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB20_5
# BB#4:                                 # %if.then.19
	movq	32(%rsp), %rax
	movl	8(%rax), %eax
	movl	%eax, reschedule_interval(%rip)
.LBB20_5:                               # %if.end.20
	movl	$1, %esi
	movq	%r13, %rdi
	callq	gs_next_ids
	movq	%rax, %r13
	movq	%r12, 728(%rbx)
	movl	$0, 736(%rbx)
	movq	%r13, 744(%rbx)
	movl	$0, 752(%rbx)
	movl	$0, 756(%rbx)
	movl	$1, 760(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 768(%rbx)
	movabsq	$970881267037344822, %rcx # imm = 0xD79435E50D79436
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	imulq	$19, %rax, %rax
	movq	%r13, %rcx
	subq	%rax, %rcx
	movq	48(%r12,%rcx,8), %rax
	movq	%rax, 784(%rbx)
	movq	%rbx, 48(%r12,%rcx,8)
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rbx, (%rax)
	movl	$39, %edi
	callq	gs_debug_c
	movl	%eax, %r14d
	movl	$34, %edi
	callq	gs_debug_c
	xorl	%ebp, %ebp
	orl	%r14d, %eax
	je	.LBB20_9
# BB#6:                                 # %if.then.25
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	8(%rbp), %rdi
	movl	$.L.str.19, %esi
	movl	$1211, %edx             # imm = 0x4BB
	callq	dmprintf_file_and_line
	movq	8(%rbp), %rdi
	xorl	%ebp, %ebp
	movl	$.L.str.26, %esi
	xorl	%eax, %eax
	movq	%r13, %rdx
	movq	%rbx, %rcx
	callq	errprintf
	jmp	.LBB20_9
.LBB20_8:                               # %if.then.11
	movl	$.L.str.24, %edx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	*24(%r13)
.LBB20_9:                               # %cleanup.30
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	context_create, .Lfunc_end20-context_create
	.cfi_endproc

	.align	16, 0x90
	.type	ctx_reschedule,@function
ctx_reschedule:                         # @ctx_reschedule
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp129:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp130:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp131:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp132:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp133:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp134:
	.cfi_def_cfa_offset 80
.Ltmp135:
	.cfi_offset %rbx, -56
.Ltmp136:
	.cfi_offset %r12, -48
.Ltmp137:
	.cfi_offset %r13, -40
.Ltmp138:
	.cfi_offset %r14, -32
.Ltmp139:
	.cfi_offset %r15, -24
.Ltmp140:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	(%r14), %r15
	movq	728(%r15), %r12
	movq	40(%r12), %rbx
	testq	%rbx, %rbx
	je	.LBB21_9
# BB#1:
	movabsq	$970881267037344822, %r13 # imm = 0xD79435E50D79436
	.align	16, 0x90
.LBB21_2:                               # %if.end.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_3 Depth 2
	movq	%rbx, %rax
	imulq	%r13
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	imulq	$19, %rax, %rax
	movq	%rbx, %rcx
	subq	%rax, %rcx
	movq	48(%r12,%rcx,8), %rax
	jmp	.LBB21_3
	.align	16, 0x90
.LBB21_44:                              # %while.body.i
                                        #   in Loop: Header=BB21_3 Depth=2
	movq	784(%rax), %rax
.LBB21_3:                               # %if.end.i
                                        #   Parent Loop BB21_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rax, %rax
	movl	$0, %ebp
	je	.LBB21_6
# BB#4:                                 # %land.rhs.i
                                        #   in Loop: Header=BB21_3 Depth=2
	cmpq	%rbx, 744(%rax)
	jne	.LBB21_44
# BB#5:                                 #   in Loop: Header=BB21_2 Depth=1
	movq	%rax, %rbp
.LBB21_6:                               # %index_context.exit
                                        #   in Loop: Header=BB21_2 Depth=1
	movq	768(%rbp), %rbx
	cmpq	%rbp, %r15
	jne	.LBB21_8
# BB#7:                                 # %do.end
                                        #   in Loop: Header=BB21_2 Depth=1
	movq	%r15, %rdi
	callq	context_state_store
	xorl	%r15d, %r15d
.LBB21_8:                               # %if.end
                                        #   in Loop: Header=BB21_2 Depth=1
	movq	%rbp, %rdi
	callq	context_destroy
	movq	%rbx, 40(%r12)
	testq	%rbx, %rbx
	jne	.LBB21_2
.LBB21_9:                               # %while.end
	testq	%r15, %r15
	je	.LBB21_11
# BB#10:                                # %if.then.7
	movq	48(%r15), %rax
	cmpq	$0, 616(%rax)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 756(%r15)
.LBB21_11:                              # %if.end.10
	movq	16(%r12), %rcx
	testq	%rcx, %rcx
	je	.LBB21_17
# BB#12:                                # %if.end.i.53
	movabsq	$970881267037344822, %rsi # imm = 0xD79435E50D79436
	movq	%rcx, %rax
	imulq	%rsi
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	imulq	$19, %rax, %rax
	movq	%rcx, %rdx
	subq	%rax, %rdx
	movq	48(%r12,%rdx,8), %rbx
	jmp	.LBB21_13
	.align	16, 0x90
.LBB21_16:                              # %while.body.i.61
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	784(%rbx), %rbx
.LBB21_13:                              # %if.end.i.53
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB21_17
# BB#14:                                # %land.rhs.i.57
                                        #   in Loop: Header=BB21_13 Depth=1
	cmpq	%rcx, 744(%rbx)
	jne	.LBB21_16
# BB#15:                                # %if.end.22.preheader
	movq	48(%rbx), %rcx
	xorl	%eax, %eax
	cmpq	$0, 616(%rcx)
	je	.LBB21_24
.LBB21_22:                              # %land.lhs.true
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_43 Depth 2
	movq	%rbx, %rdi
	cmpl	$0, 756(%rdi)
	jne	.LBB21_23
# BB#39:                                # %for.inc
                                        #   in Loop: Header=BB21_22 Depth=1
	movq	768(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB21_17
# BB#40:                                # %if.end.i.81
                                        #   in Loop: Header=BB21_22 Depth=1
	movq	%rcx, %rax
	imulq	%rsi
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	imulq	$19, %rax, %rax
	movq	%rcx, %rdx
	subq	%rax, %rdx
	movq	48(%r12,%rdx,8), %rbx
	jmp	.LBB21_43
	.align	16, 0x90
.LBB21_42:                              # %while.body.i.89
                                        #   in Loop: Header=BB21_43 Depth=2
	movq	784(%rbx), %rbx
.LBB21_43:                              # %while.body.i.89
                                        #   Parent Loop BB21_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rbx, %rbx
	je	.LBB21_17
# BB#41:                                # %land.rhs.i.85
                                        #   in Loop: Header=BB21_43 Depth=2
	cmpq	%rcx, 744(%rbx)
	jne	.LBB21_42
# BB#21:                                # %if.end.22.loopexit
                                        #   in Loop: Header=BB21_22 Depth=1
	movq	48(%rbx), %rax
	cmpq	$0, 616(%rax)
	movq	%rdi, %rax
	jne	.LBB21_22
	jmp	.LBB21_24
.LBB21_17:                              # %if.then.14
	testq	%r15, %r15
	je	.LBB21_20
# BB#18:                                # %if.then.17
	movq	%r15, %rdi
	callq	context_state_store
	cmpl	$0, 144(%r15)
	je	.LBB21_20
# BB#19:                                # %if.then.i.74
	leaq	(%rsp), %rdi
	callq	gp_get_usertime
	imulq	$1000, (%rsp), %rcx     # imm = 0x3E8
	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
	imulq	8(%rsp)
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$18, %rdx
	addq	%rax, %rdx
	addq	%rcx, %rdx
	subq	8(%r12), %rdx
	addq	%rdx, 136(%r15)
.LBB21_20:                              # %if.end.18
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.19, %edi
	movl	$440, %esi              # imm = 0x1B8
	callq	lprintf_file_and_line
	movl	$.L.str.28, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	movl	$-100, %ebp
.LBB21_38:                              # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB21_23:
	movq	%rdi, %rbx
.LBB21_24:                              # %if.end.34
	movq	768(%rbx), %rcx
	testq	%rax, %rax
	je	.LBB21_26
# BB#25:                                # %if.then.38
	movq	%rcx, 768(%rax)
	jmp	.LBB21_27
.LBB21_26:                              # %if.else
	movq	%rcx, 16(%r12)
.LBB21_27:                              # %if.end.42
	testq	%rcx, %rcx
	jne	.LBB21_31
# BB#28:                                # %if.then.44
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB21_30
# BB#29:                                # %cond.true
	movq	744(%rax), %rcx
.LBB21_30:                              # %cond.end
	movq	%rcx, 24(%r12)
.LBB21_31:                              # %if.end.47
	xorl	%ebp, %ebp
	cmpq	%r15, %rbx
	je	.LBB21_38
# BB#32:                                # %if.end.53
	testq	%r15, %r15
	je	.LBB21_35
# BB#33:                                # %if.then.56
	movq	%r15, %rdi
	callq	context_state_store
	cmpl	$0, 144(%r15)
	je	.LBB21_35
# BB#34:                                # %if.then.i.106
	leaq	(%rsp), %rdi
	callq	gp_get_usertime
	imulq	$1000, (%rsp), %rcx     # imm = 0x3E8
	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
	imulq	8(%rsp)
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$18, %rdx
	addq	%rax, %rdx
	addq	%rcx, %rdx
	subq	8(%r12), %rdx
	addq	%rdx, 136(%r15)
.LBB21_35:                              # %if.end.57
	movq	%rbx, (%r12)
	cmpl	$0, 144(%rbx)
	je	.LBB21_37
# BB#36:                                # %if.then.i
	leaq	(%rsp), %rdi
	callq	gp_get_usertime
	imulq	$1000, (%rsp), %rcx     # imm = 0x3E8
	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
	imulq	8(%rsp)
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$18, %rdx
	addq	%rax, %rdx
	addq	%rcx, %rdx
	movq	%rdx, 8(%r12)
.LBB21_37:                              # %context_load.exit
	movq	%rbx, %rdi
	callq	context_state_load
	movq	%rbx, (%r14)
	jmp	.LBB21_38
.Lfunc_end21:
	.size	ctx_reschedule, .Lfunc_end21-ctx_reschedule
	.cfi_endproc

	.align	16, 0x90
	.type	ctx_time_slice,@function
ctx_time_slice:                         # @ctx_time_slice
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movq	728(%rax), %rsi
	cmpq	$0, 16(%rsi)
	je	.LBB22_5
# BB#1:                                 # %entry
	cmpl	$100, reschedule_interval(%rip)
	jl	.LBB22_5
# BB#2:                                 # %if.else.i
	movq	(%rsi), %rax
	movq	$0, 768(%rax)
	movq	744(%rax), %r8
	movq	24(%rsi), %rcx
	movabsq	$970881267037344822, %rdx # imm = 0xD79435E50D79436
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	imulq	$19, %rax, %rax
	movq	%rcx, %rdx
	subq	%rax, %rdx
	leaq	48(%rsi,%rdx,8), %rax
	.align	16, 0x90
.LBB22_3:                               # %land.rhs.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rdx
	leaq	784(%rdx), %rax
	cmpq	%rcx, 744(%rdx)
	jne	.LBB22_3
# BB#4:                                 # %add_last.exit
	movq	%r8, 768(%rdx)
	movq	%r8, 24(%rsi)
	jmp	ctx_reschedule          # TAILCALL
.LBB22_5:                               # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end22:
	.size	ctx_time_slice, .Lfunc_end22-ctx_time_slice
	.cfi_endproc

	.align	16, 0x90
	.type	fork_done_with_error,@function
fork_done_with_error:                   # @fork_done_with_error
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	fork_done               # TAILCALL
.Lfunc_end23:
	.size	fork_done_with_error, .Lfunc_end23-fork_done_with_error
	.cfi_endproc

	.align	16, 0x90
	.type	context_clear_marks,@function
context_clear_marks:                    # @context_clear_marks
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$728, %edx              # imm = 0x2D8
	movl	$st_context_state, %ecx
	jmpq	*st_context_state+24(%rip) # TAILCALL
.Lfunc_end24:
	.size	context_clear_marks, .Lfunc_end24-context_clear_marks
	.cfi_endproc

	.align	16, 0x90
	.type	context_enum_ptrs,@function
context_enum_ptrs:                      # @context_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%ecx, %ecx
	jne	.LBB25_1
# BB#3:                                 # %sw.bb
	movq	728(%rsi), %rax
.LBB25_9:                               # %while.end
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.LBB25_1:                               # %entry
	cmpl	$1, %ecx
	jne	.LBB25_2
# BB#4:                                 # %sw.bb.1
	movq	784(%rsi), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB25_9
# BB#5:
	xorl	%eax, %eax
	.align	16, 0x90
.LBB25_6:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 760(%rcx)
	jne	.LBB25_7
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB25_6 Depth=1
	movq	784(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB25_6
	jmp	.LBB25_9
.LBB25_2:                               # %sw.default
	addl	$-2, %ecx
	movl	$st_context_state, %r9d
	jmpq	*st_context_state+32(%rip) # TAILCALL
.LBB25_7:
	movq	%rcx, %rax
	jmp	.LBB25_9
.Lfunc_end25:
	.size	context_enum_ptrs, .Lfunc_end25-context_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	context_reloc_ptrs,@function
context_reloc_ptrs:                     # @context_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp141:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp142:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp143:
	.cfi_def_cfa_offset 32
.Ltmp144:
	.cfi_offset %rbx, -24
.Ltmp145:
	.cfi_offset %r14, -16
	movq	%rcx, %rbx
	movq	%rdi, %r14
	movl	$st_context_state, %edx
	callq	*st_context_state+40(%rip)
	movq	(%rbx), %rax
	movq	728(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 728(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end26:
	.size	context_reloc_ptrs, .Lfunc_end26-context_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	reschedule_now,@function
reschedule_now:                         # @reschedule_now
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$22, %eax
	retq
.Lfunc_end27:
	.size	reschedule_now, .Lfunc_end27-reschedule_now
	.cfi_endproc

	.align	16, 0x90
	.type	lock_release,@function
lock_release:                           # @lock_release
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %r8
	movq	16(%r8), %rsi
	movl	$-29, %ecx
	testq	%rsi, %rsi
	je	.LBB28_23
# BB#1:                                 # %if.end.i
	movq	24(%r8), %r10
	movabsq	$970881267037344822, %r9 # imm = 0xD79435E50D79436
	movq	%rsi, %rax
	imulq	%r9
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	imulq	$19, %rax, %rax
	movq	%rsi, %rdx
	subq	%rax, %rdx
	movq	48(%r10,%rdx,8), %rax
	jmp	.LBB28_2
	.align	16, 0x90
.LBB28_4:                               # %while.body.i
                                        #   in Loop: Header=BB28_2 Depth=1
	movq	784(%rax), %rax
.LBB28_2:                               # %if.end.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB28_23
# BB#3:                                 # %land.rhs.i
                                        #   in Loop: Header=BB28_2 Depth=1
	cmpq	%rsi, 744(%rax)
	jne	.LBB28_4
# BB#5:                                 # %land.lhs.true
	cmpq	(%r10), %rax
	jne	.LBB28_23
# BB#6:                                 # %if.then
	movq	$0, 16(%r8)
	movq	(%r8), %rcx
	testq	%rcx, %rcx
	je	.LBB28_22
# BB#7:                                 # %if.end.i.i
	movq	%rcx, %rax
	imulq	%r9
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	imulq	$19, %rax, %rax
	movq	%rcx, %rdx
	subq	%rax, %rdx
	movq	48(%r10,%rdx,8), %rdi
	jmp	.LBB28_8
	.align	16, 0x90
.LBB28_10:                              # %while.body.i.i
                                        #   in Loop: Header=BB28_8 Depth=1
	movq	784(%rdi), %rdi
.LBB28_8:                               # %if.end.i.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rdi, %rdi
	je	.LBB28_22
# BB#9:                                 # %land.rhs.i.i
                                        #   in Loop: Header=BB28_8 Depth=1
	cmpq	%rcx, 744(%rdi)
	jne	.LBB28_10
	.align	16, 0x90
.LBB28_11:                              # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_13 Depth 2
                                        #     Child Loop BB28_19 Depth 2
	movq	768(%rdi), %rcx
	testq	%rcx, %rcx
	movl	$0, %esi
	je	.LBB28_16
# BB#12:                                # %if.end.i.16
                                        #   in Loop: Header=BB28_11 Depth=1
	movq	%rcx, %rax
	imulq	%r9
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	imulq	$19, %rax, %rax
	movq	%rcx, %rdx
	subq	%rax, %rdx
	movq	48(%r10,%rdx,8), %rax
	jmp	.LBB28_13
	.align	16, 0x90
.LBB28_24:                              # %while.body.i.24
                                        #   in Loop: Header=BB28_13 Depth=2
	movq	784(%rax), %rax
.LBB28_13:                              # %if.end.i.16
                                        #   Parent Loop BB28_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rax, %rax
	movl	$0, %esi
	je	.LBB28_16
# BB#14:                                # %land.rhs.i.20
                                        #   in Loop: Header=BB28_13 Depth=2
	cmpq	%rcx, 744(%rax)
	jne	.LBB28_24
# BB#15:                                #   in Loop: Header=BB28_11 Depth=1
	movq	%rax, %rsi
	.align	16, 0x90
.LBB28_16:                              # %index_context.exit26
                                        #   in Loop: Header=BB28_11 Depth=1
	movq	$0, 768(%rdi)
	movq	744(%rdi), %rdi
	cmpq	$0, 16(%r10)
	je	.LBB28_17
# BB#18:                                # %if.else.i.i
                                        #   in Loop: Header=BB28_11 Depth=1
	movq	24(%r10), %rcx
	movq	%rcx, %rax
	imulq	%r9
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	imulq	$19, %rax, %rax
	movq	%rcx, %rdx
	subq	%rax, %rdx
	leaq	48(%r10,%rdx,8), %rax
	.align	16, 0x90
.LBB28_19:                              # %land.rhs.i.i.i
                                        #   Parent Loop BB28_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rdx
	leaq	784(%rdx), %rax
	cmpq	%rcx, 744(%rdx)
	jne	.LBB28_19
# BB#20:                                # %index_context.exit.i.i
                                        #   in Loop: Header=BB28_11 Depth=1
	movq	%rdi, 768(%rdx)
	jmp	.LBB28_21
.LBB28_17:                              # %if.then.i.i
                                        #   in Loop: Header=BB28_11 Depth=1
	movq	%rdi, 16(%r10)
.LBB28_21:                              # %add_last.exit.i
                                        #   in Loop: Header=BB28_11 Depth=1
	movq	%rdi, 24(%r10)
	testq	%rsi, %rsi
	movq	%rsi, %rdi
	jne	.LBB28_11
.LBB28_22:                              # %activate_waiting.exit
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%r8)
	xorl	%ecx, %ecx
.LBB28_23:                              # %cleanup
	movl	%ecx, %eax
	retq
.Lfunc_end28:
	.size	lock_release, .Lfunc_end28-lock_release
	.cfi_endproc

	.align	16, 0x90
	.type	ctx_initialize,@function
ctx_initialize:                         # @ctx_initialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp146:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp147:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp148:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp149:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp150:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp151:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp152:
	.cfi_def_cfa_offset 64
.Ltmp153:
	.cfi_offset %rbx, -56
.Ltmp154:
	.cfi_offset %r12, -48
.Ltmp155:
	.cfi_offset %r13, -40
.Ltmp156:
	.cfi_offset %r14, -32
.Ltmp157:
	.cfi_offset %r15, -24
.Ltmp158:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movl	reschedule_interval(%rip), %r13d
	movq	(%r14), %rbp
	movq	32(%rbp), %rdi
	movl	$st_scheduler, %esi
	movl	$.L.str.33, %edx
	callq	*80(%rdi)
	movq	%rax, %rbx
	movl	$-25, %r12d
	testq	%rbx, %rbx
	je	.LBB29_4
# BB#1:                                 # %if.end
	movq	$0, (%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rbx)
	movq	16(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	$context_reclaim, 16(%rbp)
	leaq	8(%rbp), %r15
	movq	$0, 40(%rbx)
	movq	%rbx, %rdi
	addq	$48, %rdi
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movl	$152, %edx
	callq	memset
	movq	(%r14), %rcx
	movl	$1, %r8d
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	context_create
	testl	%eax, %eax
	jns	.LBB29_3
# BB#2:                                 # %if.then.12
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.19, %edi
	movl	$379, %esi              # imm = 0x17B
	callq	lprintf_file_and_line
	movl	$.L.str.34, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	movq	(%r15), %rdi
	callq	gs_abort
.LBB29_3:                               # %if.end.18
	movq	(%rbx), %rax
	movq	%rbx, 728(%rax)
	movq	%rax, (%r14)
	cmpl	$100, %r13d
	movl	$100, %eax
	cmovgel	%r13d, %eax
	movq	(%rbx), %rcx
	movq	$ctx_reschedule, 360(%rcx)
	movq	$ctx_time_slice, 344(%rcx)
	movl	%eax, 352(%rcx)
.LBB29_4:                               # %cleanup
	movl	%r12d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	ctx_initialize, .Lfunc_end29-ctx_initialize
	.cfi_endproc

	.align	16, 0x90
	.type	context_reclaim,@function
context_reclaim:                        # @context_reclaim
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp160:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp161:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp162:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp163:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp164:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp165:
	.cfi_def_cfa_offset 96
.Ltmp166:
	.cfi_offset %rbx, -56
.Ltmp167:
	.cfi_offset %r12, -48
.Ltmp168:
	.cfi_offset %r13, -40
.Ltmp169:
	.cfi_offset %r14, -32
.Ltmp170:
	.cfi_offset %r15, -24
.Ltmp171:
	.cfi_offset %rbp, -16
	movl	%esi, 12(%rsp)          # 4-byte Spill
	movq	%rdi, %r12
	xorl	%eax, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	$3, %r15d
	movl	$st_context, %r14d
	.align	16, 0x90
.LBB30_1:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_5 Depth 2
	movq	8(%r12,%r15,8), %rbp
	movq	584(%rbp), %rbx
	testq	%rbx, %rbx
	je	.LBB30_2
	.align	16, 0x90
.LBB30_5:                               # %for.body.3
                                        #   Parent Loop BB30_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rbx), %rax
	movq	(%rax), %rsi
	movq	%rbp, %rdi
	callq	*128(%rbp)
	cmpq	%r14, %rax
	je	.LBB30_6
# BB#3:                                 # %for.cond.2
                                        #   in Loop: Header=BB30_5 Depth=2
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB30_5
# BB#4:                                 #   in Loop: Header=BB30_1 Depth=1
	xorl	%r13d, %r13d
	jmp	.LBB30_7
	.align	16, 0x90
.LBB30_2:                               #   in Loop: Header=BB30_1 Depth=1
	xorl	%r13d, %r13d
	jmp	.LBB30_7
	.align	16, 0x90
.LBB30_6:                               # %if.then
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	16(%rbx), %rax
	movq	(%rax), %rax
	movq	728(%rax), %r13
	movq	%rbp, 16(%rsp)          # 8-byte Spill
.LBB30_7:                               # %for.end
                                        #   in Loop: Header=BB30_1 Depth=1
	testq	%r13, %r13
	jne	.LBB30_9
# BB#8:                                 # %for.end
                                        #   in Loop: Header=BB30_1 Depth=1
	cmpq	$1, %r15
	leaq	-1(%r15), %r15
	jg	.LBB30_1
.LBB30_9:                               # %for.end.7
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	*32(%rdi)
	movq	%rax, 24(%rsp)
	movq	$0, 32(%rsp)
	xorl	%r14d, %r14d
	leaq	24(%rsp), %rbp
	.align	16, 0x90
.LBB30_10:                              # %for.body.12
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_12 Depth 2
	movq	48(%r13,%r14,8), %rbx
	jmp	.LBB30_12
	.align	16, 0x90
.LBB30_11:                              # %for.body.17
                                        #   in Loop: Header=BB30_12 Depth=2
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	chunk_locate_ptr
	movl	%eax, 760(%rbx)
	movq	784(%rbx), %rbx
.LBB30_12:                              # %for.body.17
                                        #   Parent Loop BB30_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rbx, %rbx
	jne	.LBB30_11
# BB#13:                                # %for.inc.21
                                        #   in Loop: Header=BB30_10 Depth=1
	incq	%r14
	cmpq	$19, %r14
	jne	.LBB30_10
# BB#14:                                # %for.end.22
	movq	%r12, %rdi
	movl	12(%rsp), %esi          # 4-byte Reload
	callq	*32(%r13)
	xorl	%eax, %eax
	.align	16, 0x90
.LBB30_15:                              # %for.body.25
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_17 Depth 2
	movq	48(%r13,%rax,8), %rcx
	jmp	.LBB30_17
	.align	16, 0x90
.LBB30_16:                              # %for.body.31
                                        #   in Loop: Header=BB30_17 Depth=2
	movl	$1, 760(%rcx)
	movq	784(%rcx), %rcx
.LBB30_17:                              # %for.body.31
                                        #   Parent Loop BB30_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rcx, %rcx
	jne	.LBB30_16
# BB#18:                                # %for.inc.36
                                        #   in Loop: Header=BB30_15 Depth=1
	incq	%rax
	cmpq	$19, %rax
	jne	.LBB30_15
# BB#19:                                # %for.end.38
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	context_reclaim, .Lfunc_end30-context_reclaim
	.cfi_endproc

	.align	16, 0x90
	.type	scheduler_enum_ptrs,@function
scheduler_enum_ptrs:                    # @scheduler_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%ecx, %ecx
	je	.LBB31_8
# BB#1:                                 # %sw.default
	xorl	%eax, %eax
	cmpl	$19, %ecx
	jg	.LBB31_14
# BB#2:                                 # %if.then
	decl	%ecx
	movslq	%ecx, %rax
	movq	48(%rsi,%rax,8), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB31_7
# BB#3:
	xorl	%eax, %eax
	.align	16, 0x90
.LBB31_4:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 760(%rcx)
	jne	.LBB31_5
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB31_4 Depth=1
	movq	784(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB31_4
.LBB31_7:                               # %while.end
	movq	%rax, (%r8)
	jmp	.LBB31_13
.LBB31_8:                               # %sw.bb
	movq	(%rsi), %rax
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB31_12
# BB#9:                                 # %land.lhs.true.i
	cmpl	$0, 760(%rax)
	jne	.LBB31_11
# BB#10:                                # %select.mid
	xorl	%eax, %eax
.LBB31_11:                              # %select.end
	movq	%rax, %rcx
.LBB31_12:                              # %visible_context.exit
	movq	%rcx, (%r8)
	jmp	.LBB31_13
.LBB31_5:
	movq	%rcx, %rax
	movq	%rax, (%r8)
.LBB31_13:                              # %cleanup
	movl	$ptr_struct_procs, %eax
.LBB31_14:                              # %cleanup
	retq
.Lfunc_end31:
	.size	scheduler_enum_ptrs, .Lfunc_end31-scheduler_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	scheduler_reloc_ptrs,@function
scheduler_reloc_ptrs:                   # @scheduler_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp172:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp173:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp174:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp175:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp176:
	.cfi_def_cfa_offset 48
.Ltmp177:
	.cfi_offset %rbx, -48
.Ltmp178:
	.cfi_offset %r12, -40
.Ltmp179:
	.cfi_offset %r13, -32
.Ltmp180:
	.cfi_offset %r14, -24
.Ltmp181:
	.cfi_offset %r15, -16
	movq	%rcx, %r12
	movq	%rdi, %r14
	movq	(%r14), %rdi
	cmpl	$0, 760(%rdi)
	je	.LBB32_2
# BB#1:                                 # %if.then
	movq	(%r12), %rax
	movq	%r12, %rsi
	callq	*(%rax)
	movq	%rax, (%r14)
.LBB32_2:                               # %for.cond.preheader
	addq	$48, %r14
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB32_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_5 Depth 2
	movq	(%r14,%r15,8), %rdi
	testq	%rdi, %rdi
	je	.LBB32_7
# BB#4:                                 #   in Loop: Header=BB32_3 Depth=1
	leaq	(%r14,%r15,8), %rbx
	.align	16, 0x90
.LBB32_5:                               # %for.body.5
                                        #   Parent Loop BB32_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	784(%rdi), %r13
	cmpl	$0, 760(%rdi)
	je	.LBB32_6
# BB#9:                                 # %if.then.8
                                        #   in Loop: Header=BB32_5 Depth=2
	movq	(%r12), %rax
	movq	%r12, %rsi
	callq	*(%rax)
	movq	%rax, (%rbx)
.LBB32_6:                               # %for.cond.3.backedge
                                        #   in Loop: Header=BB32_5 Depth=2
	movq	(%r13), %rdi
	testq	%rdi, %rdi
	movq	%r13, %rbx
	jne	.LBB32_5
.LBB32_7:                               # %for.end
                                        #   in Loop: Header=BB32_3 Depth=1
	incq	%r15
	cmpq	$19, %r15
	jne	.LBB32_3
# BB#8:                                 # %for.end.13
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end32:
	.size	scheduler_reloc_ptrs, .Lfunc_end32-scheduler_reloc_ptrs
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"0condition"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"0currentcontext"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"1detach"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"2.fork"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"1join"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"4.localfork"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"0lock"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"2monitor"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"1notify"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"2wait"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"0yield"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"0usertime"
	.size	.L.str.11, 10

	.type	zcontext1_op_defs,@object # @zcontext1_op_defs
	.section	.rodata,"a",@progbits
	.globl	zcontext1_op_defs
	.align	16
zcontext1_op_defs:
	.quad	.L.str
	.quad	zcondition
	.quad	.L.str.1
	.quad	zcurrentcontext
	.quad	.L.str.2
	.quad	zdetach
	.quad	.L.str.3
	.quad	zfork
	.quad	.L.str.4
	.quad	zjoin
	.quad	.L.str.5
	.quad	zlocalfork
	.quad	.L.str.6
	.quad	zlock
	.quad	.L.str.7
	.quad	zmonitor
	.quad	.L.str.8
	.quad	znotify
	.quad	.L.str.9
	.quad	zwait
	.quad	.L.str.10
	.quad	zyield
	.quad	.L.str.11
	.quad	zusertime_context
	.zero	16
	.size	zcontext1_op_defs, 208

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"0%fork_done"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"1%finish_join"
	.size	.L.str.13, 14

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"0%monitor_cleanup"
	.size	.L.str.14, 18

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"0%monitor_release"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"2%await_lock"
	.size	.L.str.16, 13

	.type	zcontext2_op_defs,@object # @zcontext2_op_defs
	.section	.rodata,"a",@progbits
	.globl	zcontext2_op_defs
	.align	16
zcontext2_op_defs:
	.quad	.L.str.12
	.quad	fork_done
	.quad	.L.str.13
	.quad	finish_join
	.quad	.L.str.14
	.quad	monitor_cleanup
	.quad	.L.str.15
	.quad	monitor_release
	.quad	.L.str.16
	.quad	await_lock
	.quad	0
	.quad	zcontext_init
	.size	zcontext2_op_defs, 96

	.type	st_condition,@object    # @st_condition
	.align	8
st_condition:
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.18
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_condition, 64

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"zcondition"
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"conditiontype"
	.size	.L.str.18, 14

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"./psi/zcontext.c"
	.size	.L.str.19, 17

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"[']destroy %ld at 0x%lx, status = %d\n"
	.size	.L.str.20, 38

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"context_destroy"
	.size	.L.str.21, 16

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"userdict"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"do_fork"
	.size	.L.str.23, 8

	.type	reschedule_interval,@object # @reschedule_interval
	.data
	.align	4
reschedule_interval:
	.long	250                     # 0xfa
	.size	reschedule_interval, 4

	.type	st_context,@object      # @st_context
	.section	.rodata,"a",@progbits
	.align	8
st_context:
	.long	792                     # 0x318
	.zero	4
	.quad	.L.str.27
	.quad	0
	.quad	context_clear_marks
	.quad	context_enum_ptrs
	.quad	context_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_context, 64

	.type	.L.str.24,@object       # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"context_create"
	.size	.L.str.24, 15

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"TIME_SLICE_INTERVAL"
	.size	.L.str.25, 20

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"[']create %ld at 0x%lx\n"
	.size	.L.str.26, 24

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gs_context_t"
	.size	.L.str.27, 13

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"No context to run!"
	.size	.L.str.28, 19

	.type	st_lock,@object         # @st_lock
	.section	.rodata,"a",@progbits
	.align	8
st_lock:
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.30
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	lock_reloc_ptrs
	.size	st_lock, 64

	.type	.L.str.29,@object       # @.str.29
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.29:
	.asciz	"zlock"
	.size	.L.str.29, 6

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"locktype"
	.size	.L.str.30, 9

	.type	lock_reloc_ptrs,@object # @lock_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
lock_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	lock_enum_ptrs
	.size	lock_reloc_ptrs, 24

	.type	lock_enum_ptrs,@object  # @lock_enum_ptrs
	.align	2
lock_enum_ptrs:
	.short	0                       # 0x0
	.short	24                      # 0x18
	.size	lock_enum_ptrs, 4

	.type	.L.str.31,@object       # @.str.31
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.31:
	.asciz	"restore"
	.size	.L.str.31, 8

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"restore not found in systemdict!"
	.size	.L.str.32, 33

	.type	st_scheduler,@object    # @st_scheduler
	.section	.rodata,"a",@progbits
	.align	8
st_scheduler:
	.long	200                     # 0xc8
	.zero	4
	.quad	.L.str.33
	.quad	0
	.quad	0
	.quad	scheduler_enum_ptrs
	.quad	scheduler_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_scheduler, 64

	.type	.L.str.33,@object       # @.str.33
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.33:
	.asciz	"gs_scheduler"
	.size	.L.str.33, 13

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Can't create initial context!"
	.size	.L.str.34, 30


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
