	.text
	.file	"interp.bc"
	.align	16, 0x90
	.type	zcurrentstackprotect,@function
zcurrentstackprotect:                   # @zcurrentstackprotect
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
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 64
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
	movq	%rdi, %r15
	movq	624(%r15), %r12
	leaq	520(%r15), %rbp
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	ref_stack_index
	movl	$-15, %r14d
	movl	$1, %ebx
	testq	%rax, %rax
	je	.LBB0_9
# BB#1:
	movq	%r12, (%rsp)            # 8-byte Spill
	movl	$oparray_cleanup, %r13d
	movl	$oparray_no_cleanup, %r12d
	.align	16, 0x90
.LBB0_2:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rax), %ecx
	andl	$16256, %ecx            # imm = 0x3F80
	cmpl	$3712, %ecx             # imm = 0xE80
	jne	.LBB0_5
# BB#3:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	8(%rax), %rcx
	cmpq	%r13, %rcx
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpq	%r12, %rcx
	je	.LBB0_6
.LBB0_5:                                # %for.inc.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	ref_stack_index
	incq	%rbx
	testq	%rax, %rax
	jne	.LBB0_2
	jmp	.LBB0_9
.LBB0_6:                                # %do.body
	movq	(%rsp), %rdx            # 8-byte Reload
	leaq	16(%rdx), %rcx
	cmpq	640(%r15), %rcx
	jbe	.LBB0_8
# BB#7:                                 # %if.then.4
	movl	$1, 688(%r15)
	movl	$-16, %r14d
	jmp	.LBB0_9
.LBB0_8:                                # %if.else
	movq	%rcx, 624(%r15)
	movl	$oparray_cleanup, %ecx
	cmpq	%rcx, 8(%rax)
	sete	%al
	movzbl	%al, %eax
	movw	%ax, 24(%rdx)
	movw	$256, 16(%rdx)          # imm = 0x100
	xorl	%r14d, %r14d
.LBB0_9:                                # %cleanup
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	zcurrentstackprotect, .Lfunc_end0-zcurrentstackprotect
	.cfi_endproc

	.align	16, 0x90
	.type	zsetstackprotect,@function
zsetstackprotect:                       # @zsetstackprotect
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
	pushq	%rax
.Ltmp19:
	.cfi_def_cfa_offset 64
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
	movq	%rdi, %r15
	movq	624(%r15), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	leaq	520(%r15), %r12
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	ref_stack_index
	movl	$1, %ebx
	testq	%rax, %rax
	je	.LBB1_7
# BB#1:
	movl	$oparray_cleanup, %ebp
	movl	$oparray_no_cleanup, %r14d
	.align	16, 0x90
.LBB1_2:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rax), %ecx
	andl	$16256, %ecx            # imm = 0x3F80
	cmpl	$3712, %ecx             # imm = 0xE80
	jne	.LBB1_6
# BB#3:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	8(%rax), %rcx
	cmpq	%rbp, %rcx
	je	.LBB1_4
# BB#5:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpq	%r14, %rcx
	movq	%rax, %r13
	je	.LBB1_7
.LBB1_6:                                # %for.inc.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	ref_stack_index
	incq	%rbx
	testq	%rax, %rax
	movl	$0, %r13d
	jne	.LBB1_2
	jmp	.LBB1_7
.LBB1_4:
	movq	%rax, %r13
.LBB1_7:                                # %oparray_find.exit
	movq	(%rsp), %rdi            # 8-byte Reload
	movzbl	1(%rdi), %eax
	cmpl	$1, %eax
	jne	.LBB1_13
# BB#8:                                 # %if.end
	movl	$-15, %eax
	testq	%r13, %r13
	je	.LBB1_12
# BB#9:                                 # %if.end.6
	movl	$oparray_cleanup, %eax
	cmpw	$0, 8(%rdi)
	jne	.LBB1_11
# BB#10:                                # %select.mid
	movl	$oparray_no_cleanup, %eax
.LBB1_11:                               # %select.end
	movq	%rax, 8(%r13)
	addq	$-16, 624(%r15)
	xorl	%eax, %eax
.LBB1_12:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_13:                               # %if.then
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.Lfunc_end1:
	.size	zsetstackprotect, .Lfunc_end1-zsetstackprotect
	.cfi_endproc

	.align	16, 0x90
	.type	zerrorexec,@function
zerrorexec:                             # @zerrorexec
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 32
.Ltmp29:
	.cfi_offset %rbx, -32
.Ltmp30:
	.cfi_offset %r14, -24
.Ltmp31:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r15
	movq	632(%rbx), %rcx
	addq	$16, %rcx
	movl	$-17, %eax
	cmpq	%rcx, %r15
	jb	.LBB2_7
# BB#1:                                 # %if.end
	leaq	520(%rbx), %r14
	movq	520(%rbx), %rax
	movq	536(%rbx), %rcx
	addq	$-64, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB2_4
# BB#2:                                 # %if.then.9
	movl	$4, %esi
	movq	%r14, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB2_7
# BB#3:                                 # %if.then.9.if.end.15_crit_edge
	movq	(%r14), %rax
.LBB2_4:                                # %if.end.15
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$errorexec_cleanup, 24(%rax)
	movq	520(%rbx), %rax
	movw	$3712, (%rax)           # imm = 0xE80
	movl	$0, 4(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movups	-16(%r15), %xmm0
	movups	%xmm0, 16(%rax)
	movq	520(%rbx), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$errorexec_pop, 24(%rax)
	movq	520(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movq	%rbx, %rdi
	callq	zexec
	testl	%eax, %eax
	js	.LBB2_6
# BB#5:                                 # %if.then.54
	addq	$-16, 624(%rbx)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else
	addq	$-48, (%r14)
.LBB2_7:                                # %cleanup.64
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	zerrorexec, .Lfunc_end2-zerrorexec
	.cfi_endproc

	.align	16, 0x90
	.type	zfinderrorobject,@function
zfinderrorobject:                       # @zfinderrorobject
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp32:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp34:
	.cfi_def_cfa_offset 48
.Ltmp35:
	.cfi_offset %rbx, -24
.Ltmp36:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	leaq	8(%rsp), %rsi
	callq	errorexec_find
	testl	%eax, %eax
	je	.LBB3_4
# BB#1:                                 # %do.body
	leaq	32(%r14), %rax
	cmpq	640(%rbx), %rax
	jbe	.LBB3_3
# BB#2:                                 # %if.then.3
	movl	$2, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB3_8
.LBB3_4:                                # %do.body.10
	leaq	16(%r14), %rax
	cmpq	640(%rbx), %rax
	jbe	.LBB3_6
# BB#5:                                 # %if.then.16
	movl	$1, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	%rax, 624(%rbx)
	movups	8(%rsp), %xmm0
	movups	%xmm0, 16(%r14)
	movw	$1, 40(%r14)
	movw	$256, 32(%r14)          # imm = 0x100
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.20
	movq	%rax, 624(%rbx)
	movw	$0, 24(%r14)
	movw	$256, 16(%r14)          # imm = 0x100
.LBB3_7:                                # %cleanup
	xorl	%eax, %eax
.LBB3_8:                                # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	zfinderrorobject, .Lfunc_end3-zfinderrorobject
	.cfi_endproc

	.align	16, 0x90
	.type	interp_exit,@function
interp_exit:                            # @interp_exit
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-102, %eax
	retq
.Lfunc_end4:
	.size	interp_exit, .Lfunc_end4-interp_exit
	.cfi_endproc

	.align	16, 0x90
	.type	oparray_pop,@function
oparray_pop:                            # @oparray_pop
	.cfi_startproc
# BB#0:                                 # %entry
	addq	$-64, 520(%rdi)
	movl	$14, %eax
	retq
.Lfunc_end5:
	.size	oparray_pop, .Lfunc_end5-oparray_pop
	.cfi_endproc

	.align	16, 0x90
	.type	errorexec_pop,@function
errorexec_pop:                          # @errorexec_pop
	.cfi_startproc
# BB#0:                                 # %entry
	addq	$-32, 520(%rdi)
	movl	$14, %eax
	retq
.Lfunc_end6:
	.size	errorexec_pop, .Lfunc_end6-errorexec_pop
	.cfi_endproc

	.globl	gs_interp_init
	.align	16, 0x90
	.type	gs_interp_init,@function
gs_interp_init:                         # @gs_interp_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp39:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp40:
	.cfi_def_cfa_offset 48
.Ltmp41:
	.cfi_offset %rbx, -32
.Ltmp42:
	.cfi_offset %r14, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	$0, 8(%rsp)
	leaq	8(%rsp), %rdi
	callq	context_state_alloc
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_2
# BB#1:                                 # %if.end
	movq	8(%rsp), %rdi
	callq	context_state_load
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB7_3
.LBB7_2:                                # %if.then.3
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.21, %edi
	movl	$303, %esi              # imm = 0x12F
	callq	lprintf_file_and_line
	movl	$.L.str.22, %edi
	xorl	%eax, %eax
	movl	%ebp, %esi
	callq	errprintf_nomem
.LBB7_3:                                # %if.end.7
	movq	8(%rsp), %rax
	movq	%rax, (%r14)
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gs_interp_init, .Lfunc_end7-gs_interp_init
	.cfi_endproc

	.globl	gs_interp_alloc_stacks
	.align	16, 0x90
	.type	gs_interp_alloc_stacks,@function
gs_interp_alloc_stacks:                 # @gs_interp_alloc_stacks
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp46:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp48:
	.cfi_def_cfa_offset 80
.Ltmp49:
	.cfi_offset %rbx, -40
.Ltmp50:
	.cfi_offset %r12, -32
.Ltmp51:
	.cfi_offset %r14, -24
.Ltmp52:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	callq	*32(%rdi)
	movq	%rax, %r12
	leaq	24(%rsp), %rsi
	xorl	%edx, %edx
	movl	$5857, %ecx             # imm = 0x16E1
	movl	$.L.str.23, %r8d
	movq	%r12, %rdi
	callq	gs_alloc_ref_array
	testl	%eax, %eax
	js	.LBB8_5
# BB#1:                                 # %if.end
	leaq	624(%r14), %rbx
	movl	$822, 28(%rsp)          # imm = 0x336
	movq	$0, (%rsp)
	leaq	24(%rsp), %rsi
	movl	$10, %edx
	movl	$10, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movq	%r12, %r9
	callq	ref_stack_init
	testl	%eax, %eax
	js	.LBB8_5
# BB#2:                                 # %if.end.5
	movl	$-17, %esi
	movl	$-16, %edx
	movq	%rbx, %rdi
	callq	ref_stack_set_error_codes
	movl	$800, %esi              # imm = 0x320
	movq	%rbx, %rdi
	callq	ref_stack_set_max_count
	addq	$13152, 32(%rsp)        # imm = 0x3360
	leaq	520(%r14), %r15
	movl	$5013, 28(%rsp)         # imm = 0x1395
	movq	$estack_underflow, 16(%rsp)
	movw	$3968, 8(%rsp)          # imm = 0xF80
	movl	$0, 12(%rsp)
	movq	$0, (%rsp)
	leaq	24(%rsp), %rsi
	leaq	8(%rsp), %r8
	movl	$1, %edx
	movl	$10, %ecx
	movq	%r15, %rdi
	movq	%r12, %r9
	callq	ref_stack_init
	testl	%eax, %eax
	js	.LBB8_5
# BB#3:                                 # %cleanup.cont.25
	movl	$-104, %esi
	movl	$-5, %edx
	movq	%r15, %rdi
	callq	ref_stack_set_error_codes
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	ref_stack_allow_expansion
	movl	$5000, %esi             # imm = 0x1388
	movq	%r15, %rdi
	callq	ref_stack_set_max_count
	addq	$80208, 32(%rsp)        # imm = 0x13950
	addq	$368, %r14              # imm = 0x170
	movl	$22, 28(%rsp)
	movq	$0, (%rsp)
	leaq	24(%rsp), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	movq	%r12, %r9
	callq	ref_stack_init
	testl	%eax, %eax
	js	.LBB8_5
# BB#4:                                 # %if.end.32
	movl	$-4, %esi
	movl	$-3, %edx
	movq	%r14, %rdi
	callq	ref_stack_set_error_codes
	movl	$20, %esi
	movq	%r14, %rdi
	callq	ref_stack_set_max_count
	xorl	%eax, %eax
.LBB8_5:                                # %cleanup.37
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end8:
	.size	gs_interp_alloc_stacks, .Lfunc_end8-gs_interp_alloc_stacks
	.cfi_endproc

	.align	16, 0x90
	.type	estack_underflow,@function
estack_underflow:                       # @estack_underflow
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-104, %eax
	retq
.Lfunc_end9:
	.size	estack_underflow, .Lfunc_end9-estack_underflow
	.cfi_endproc

	.globl	gs_interp_free_stacks
	.align	16, 0x90
	.type	gs_interp_free_stacks,@function
gs_interp_free_stacks:                  # @gs_interp_free_stacks
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	leaq	368(%rbx), %rdi
	callq	ref_stack_release
	leaq	520(%rbx), %rdi
	callq	ref_stack_release
	leaq	624(%rbx), %rdi
	popq	%rbx
	jmp	ref_stack_release       # TAILCALL
.Lfunc_end10:
	.size	gs_interp_free_stacks, .Lfunc_end10-gs_interp_free_stacks
	.cfi_endproc

	.globl	gs_interp_reset
	.align	16, 0x90
	.type	gs_interp_reset,@function
gs_interp_reset:                        # @gs_interp_reset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp55:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp57:
	.cfi_def_cfa_offset 32
.Ltmp58:
	.cfi_offset %rbx, -24
.Ltmp59:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	leaq	624(%rbx), %r14
	movq	%r14, %rdi
	callq	ref_stack_count
	movq	%r14, %rdi
	movl	%eax, %esi
	callq	ref_stack_pop
	leaq	520(%rbx), %r14
	movq	%r14, %rdi
	callq	ref_stack_count
	movq	%r14, %rdi
	movl	%eax, %esi
	callq	ref_stack_pop
	movq	520(%rbx), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$interp_exit, 24(%rax)
	movq	520(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	leaq	368(%rbx), %r14
	movq	%r14, %rdi
	callq	ref_stack_count
	subl	464(%rbx), %eax
	movq	%r14, %rdi
	movl	%eax, %esi
	callq	ref_stack_pop
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	dstack_set_top          # TAILCALL
.Lfunc_end11:
	.size	gs_interp_reset, .Lfunc_end11-gs_interp_reset
	.cfi_endproc

	.globl	gs_interp_make_oper
	.align	16, 0x90
	.type	gs_interp_make_oper,@function
gs_interp_make_oper:                    # @gs_interp_make_oper
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$zsub, %ecx
	movl	$10, %eax
	cmpq	%rcx, %rsi
	je	.LBB12_2
# BB#1:                                 # %for.inc
	movl	$zroll, %ecx
	movl	$9, %eax
	cmpq	%rcx, %rsi
	je	.LBB12_2
# BB#4:                                 # %for.inc.1
	movl	$zpop, %ecx
	movl	$8, %eax
	cmpq	%rcx, %rsi
	je	.LBB12_2
# BB#5:                                 # %for.inc.2
	movl	$zindex, %ecx
	movl	$7, %eax
	cmpq	%rcx, %rsi
	je	.LBB12_2
# BB#6:                                 # %for.inc.3
	movl	$zifelse, %ecx
	movl	$6, %eax
	cmpq	%rcx, %rsi
	je	.LBB12_2
# BB#7:                                 # %for.inc.4
	movl	$zif, %ecx
	movl	$5, %eax
	cmpq	%rcx, %rsi
	je	.LBB12_2
# BB#8:                                 # %for.inc.5
	movl	$zexch, %ecx
	movl	$4, %eax
	cmpq	%rcx, %rsi
	je	.LBB12_2
# BB#9:                                 # %for.inc.6
	movl	$zdup, %ecx
	movl	$3, %eax
	cmpq	%rcx, %rsi
	je	.LBB12_2
# BB#10:                                # %for.inc.7
	movl	$zdef, %ecx
	movl	$2, %eax
	cmpq	%rcx, %rsi
	je	.LBB12_2
# BB#11:                                # %for.inc.8
	movl	$zadd, %ecx
	movl	$1, %eax
	cmpq	%rcx, %rsi
	je	.LBB12_2
# BB#12:                                # %for.inc.9
	movq	%rsi, 8(%rdi)
	movw	$3968, (%rdi)           # imm = 0xF80
	movl	%edx, 4(%rdi)
	retq
.LBB12_2:                               # %if.then
	movq	%rsi, 8(%rdi)
	movl	%eax, %ecx
	shll	$8, %ecx
	addl	$5248, %ecx             # imm = 0x1480
	movw	%cx, (%rdi)
	movl	%eax, 4(%rdi)
	retq
.Lfunc_end12:
	.size	gs_interp_make_oper, .Lfunc_end12-gs_interp_make_oper
	.cfi_endproc

	.globl	interp_reclaim
	.align	16, 0x90
	.type	interp_reclaim,@function
interp_reclaim:                         # @interp_reclaim
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp61:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp62:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp63:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp64:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp65:
	.cfi_def_cfa_offset 80
.Ltmp66:
	.cfi_offset %rbx, -48
.Ltmp67:
	.cfi_offset %r12, -40
.Ltmp68:
	.cfi_offset %r14, -32
.Ltmp69:
	.cfi_offset %r15, -24
.Ltmp70:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	(%rbx), %rbp
	leaq	8(%rbp), %r12
	movq	32(%rbp), %rdi
	leaq	(%rsp), %r15
	movl	$.L.str.24, %ecx
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	gs_register_struct_root
	movq	%r12, %rdi
	movl	%r14d, %esi
	callq	*64(%rbp)
	movl	%eax, %ebp
	movq	(%rbx), %rax
	movq	32(%rax), %rdi
	movl	$.L.str.24, %edx
	movq	%r15, %rsi
	callq	*176(%rdi)
	movl	%ebp, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	interp_reclaim, .Lfunc_end13-interp_reclaim
	.cfi_endproc

	.globl	gs_interpret
	.align	16, 0x90
	.type	gs_interpret,@function
gs_interpret:                           # @gs_interpret
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp72:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp73:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp74:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp75:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp76:
	.cfi_def_cfa_offset 56
	subq	$2040, %rsp             # imm = 0x7F8
.Ltmp77:
	.cfi_def_cfa_offset 2096
.Ltmp78:
	.cfi_offset %rbx, -56
.Ltmp79:
	.cfi_offset %r12, -48
.Ltmp80:
	.cfi_offset %r13, -40
.Ltmp81:
	.cfi_offset %r14, -32
.Ltmp82:
	.cfi_offset %r15, -24
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movl	%edx, 76(%rsp)          # 4-byte Spill
	movq	%rsi, %rbp
	movq	%rdi, %r12
	movq	%r8, 168(%rsp)
	movq	(%r12), %rax
	movq	32(%rax), %rdi
	leaq	136(%rsp), %rsi
	leaq	168(%rsp), %rdx
	movl	$.L.str.25, %ecx
	callq	gs_register_ref_root
	movq	168(%rsp), %r14
	movq	%r14, 112(%rsp)         # 8-byte Spill
	movq	%rbp, 248(%rsp)
	movl	$0, 180(%rsp)
	movq	(%r12), %rbp
	movl	$0, (%rbx)
	leaq	8(%rbp), %rdi
	callq	ialloc_reset_requested
	leaq	608(%rsp), %r13
	jmp	.LBB14_1
.LBB14_415:                             # %if.end.233.i
                                        #   in Loop: Header=BB14_1 Depth=1
	leaq	224(%rsp), %rax
	movq	%rax, 248(%rsp)
	.align	16, 0x90
.LBB14_1:                               # %again.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_2 Depth 2
                                        #     Child Loop BB14_368 Depth 2
                                        #       Child Loop BB14_8 Depth 3
                                        #         Child Loop BB14_247 Depth 4
                                        #           Child Loop BB14_248 Depth 5
                                        #     Child Loop BB14_437 Depth 2
	movw	$3584, (%r14)           # imm = 0xE00
	movl	$0, 432(%rbp)
	movl	$0, 584(%rbp)
	movl	$0, 688(%rbp)
	.align	16, 0x90
.LBB14_2:                               # %while.cond.i
                                        #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, 180(%rsp)
	je	.LBB14_4
# BB#3:                                 # %while.body.i
                                        #   in Loop: Header=BB14_2 Depth=2
	movl	$0, 180(%rsp)
	movq	32(%rbp), %rdi
	movl	$.L.str.31, %ecx
	leaq	256(%rsp), %r15
	movq	%r15, %rsi
	leaq	248(%rsp), %rdx
	callq	gs_register_ref_root
	movq	(%r12), %rbp
	leaq	8(%rbp), %r14
	movq	32(%rbp), %rdi
	movl	$.L.str.24, %ecx
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	gs_register_struct_root
	movl	$-1, %esi
	movq	%r14, %rdi
	callq	*64(%rbp)
	movl	%eax, %r14d
	movq	(%r12), %rax
	movq	32(%rax), %rdi
	movl	$.L.str.24, %edx
	movq	%r13, %rsi
	callq	*176(%rdi)
	movq	(%r12), %rbp
	movq	32(%rbp), %rdi
	movl	$.L.str.31, %edx
	movq	%r15, %rsi
	callq	*176(%rdi)
	testl	%r14d, %r14d
	jns	.LBB14_2
	jmp	.LBB14_460
	.align	16, 0x90
.LBB14_4:                               # %while.end.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	248(%rsp), %rbp
	movq	(%r12), %rbx
	movq	520(%rbx), %r14
	movq	624(%rbx), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %r15
	movq	%r15, 56(%rsp)          # 8-byte Spill
	movl	352(%rbx), %eax
	movl	%eax, 1980(%rsp)
	movl	$-100, %edx
	movq	%rbx, %rdi
	leaq	1980(%rsp), %rsi
	callq	set_gc_signal
	movq	%rbx, %r10
	movq	$0, 616(%r10)
	cmpq	536(%r10), %r14
	jae	.LBB14_5
# BB#6:                                 # %if.end.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rbp, %r9
	movups	(%rbp), %xmm0
	movups	%xmm0, 16(%r14)
	addq	$16, %r14
	xorl	%eax, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	xorl	%r11d, %r11d
	movq	128(%rsp), %r8          # 8-byte Reload
	jmp	.LBB14_368
	.align	16, 0x90
.LBB14_367:                             # %if.end.1856.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movups	(%r9), %xmm0
	movups	%xmm0, 16(%r8)
	addq	$16, %r8
.LBB14_368:                             # %bot.1858.i.i
                                        #   Parent Loop BB14_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_8 Depth 3
                                        #         Child Loop BB14_247 Depth 4
                                        #           Child Loop BB14_248 Depth 5
	leal	-1(%r11), %eax
	cmpl	$2, %r11d
	jl	.LBB14_182
# BB#369:                               # %if.then.1862.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	addq	$16, %r9
	movq	%r9, %rcx
	jmp	.LBB14_377
.LBB14_326:                             # %do.end.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movl	%r11d, %eax
	movq	%r9, %rcx
	jmp	.LBB14_8
.LBB14_7:                               # %if.then.853.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	addq	$16, %r9
	movq	%r9, %rcx
	movq	104(%rsp), %r14         # 8-byte Reload
	.align	16, 0x90
.LBB14_8:                               # %do.end.i.i
                                        #   Parent Loop BB14_1 Depth=1
                                        #     Parent Loop BB14_368 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB14_247 Depth 4
                                        #           Child Loop BB14_248 Depth 5
	movq	%rcx, %r9
	movl	%eax, %r11d
	movzwl	(%r9), %ecx
	movl	%ecx, %eax
	shrl	$6, %eax
	cmpl	$122, %eax
	ja	.LBB14_298
# BB#9:                                 # %do.end.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	jmpq	*.LJTI14_0(,%rax,8)
	.align	16, 0x90
.LBB14_298:                             # %sw.default.1434.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movl	%ecx, %eax
	shrl	$13, %eax
	cmpl	$7, %eax
	ja	.LBB14_365
# BB#299:                               # %sw.default.1434.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	jmpq	*.LJTI14_3(,%rax,8)
.LBB14_300:                             # %do.end.1440.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	cmpq	640(%r10), %r8
	jae	.LBB14_301
# BB#364:                               # %cleanup.1841.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movups	(%r9), %xmm0
	movups	%xmm0, 16(%r8)
	addq	$16, %r8
	leal	-1(%r11), %eax
	leaq	16(%r9), %rcx
	cmpl	$1, %r11d
	jg	.LBB14_8
	jmp	.LBB14_182
.LBB14_302:                             # %sw.bb.1460.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movl	%ecx, %eax
	andl	$4095, %eax             # imm = 0xFFF
	decl	1980(%rsp)
	movl	%eax, %esi
	subl	op_def_count(%rip), %esi
	jae	.LBB14_303
# BB#308:                               # %do.end.1513.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	leal	-1(%rax), %edx
	cmpl	$9, %edx
	jbe	.LBB14_309
# BB#310:                               # %do.end.1529.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%r11, %rbx
	movq	%r9, %rbp
	movq	%r14, 520(%r10)
	movq	%r14, 104(%rsp)         # 8-byte Spill
	movq	%r8, 624(%r10)
	movq	%r8, 128(%rsp)          # 8-byte Spill
	andl	$15, %ecx
	shrl	$4, %eax
	movq	op_defs_all(,%rax,8), %rax
	shlq	$4, %rcx
	movq	%r10, %rdi
	movq	%r10, %r14
	callq	*8(%rax,%rcx)
	cmpl	$4, %eax
	jg	.LBB14_315
# BB#311:                               # %do.end.1529.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	cmpl	$2, %eax
	movq	%rbp, %r9
	movq	%rbx, %r11
	jae	.LBB14_312
# BB#320:                               # %sw.bb.1544.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%r14, %r10
	movq	624(%r10), %r8
	cmpl	$1, %r11d
	jg	.LBB14_321
# BB#322:                               # %if.then.1551.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	testl	%r11d, %r11d
	movq	104(%rsp), %r14         # 8-byte Reload
	jg	.LBB14_324
	jmp	.LBB14_323
.LBB14_336:                             # %do.end.1631.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	cmpq	640(%r10), %r8
	jae	.LBB14_337
# BB#338:                               # %if.end.1643.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	leaq	16(%r8), %rax
	andl	$4095, %ecx             # imm = 0xFFF
	addl	$-2048, %ecx            # imm = 0xFFFFFFFFFFFFF800
	movslq	%ecx, %rcx
	movq	%rcx, 24(%r8)
	movw	$2816, 16(%r8)          # imm = 0xB00
	jmp	.LBB14_339
.LBB14_343:                             # %do.end.1667.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	cmpq	640(%r10), %r8
	jae	.LBB14_344
# BB#345:                               # %if.end.1682.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movl	%ecx, %edx
	andl	$4095, %edx             # imm = 0xFFF
	leaq	16(%r8), %rax
	movl	%edx, %esi
	shrl	$9, %esi
	shlq	$4, %rsi
	andl	$511, %ecx              # imm = 0x1FF
	shlq	$3, %rcx
	addq	16416(%r15,%rsi), %rcx
	movq	%rcx, 24(%r8)
	movw	$3332, 16(%r8)          # imm = 0xD04
	movl	%edx, 20(%r8)
.LBB14_339:                             # %if.end.1643.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	cmpl	$1, %r11d
	jg	.LBB14_342
# BB#340:                               # %if.then.1656.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	testl	%r11d, %r11d
	jle	.LBB14_346
# BB#341:                               # %if.end.1660.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	addq	$-16, %r14
.LBB14_342:                             # %if.end.1662.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	decl	%r11d
	addq	$2, %r9
	movq	%rax, %r8
	jmp	.LBB14_326
.LBB14_347:                             # %do.end.1715.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%r11, %rbx
	movl	%ecx, %ebp
	andl	$4095, %ebp             # imm = 0xFFF
	movl	%ebp, %eax
	shrl	$9, %eax
	shlq	$4, %rax
	movq	16416(%r15,%rax), %rax
	andl	$511, %ecx              # imm = 0x1FF
	movq	(%rax,%rcx,8), %rdx
	cmpq	$1, %rdx
	ja	.LBB14_350
# BB#348:                               # %if.then.1732.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movl	488(%r10), %edx
	movl	$4095, %eax             # imm = 0xFFF
	addl	%eax, %edx
	andl	%ebp, %edx
	incl	%edx
	movq	480(%r10), %rax
	movzwl	(%rax,%rdx,2), %eax
	movl	%ebp, %ecx
	orl	$49152, %ecx            # imm = 0xC000
	cmpl	%ecx, %eax
	jne	.LBB14_353
# BB#349:                               # %cond.end.1758.thread.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	shlq	$4, %rdx
	addq	496(%r10), %rdx
	jmp	.LBB14_350
.LBB14_303:                             # %do.end.1473.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	testl	%r11d, %r11d
	jle	.LBB14_305
# BB#304:                               # %cond.true.1476.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	leaq	2(%r9), %rcx
	movq	%rcx, 8(%r14)
	movl	%r11d, 4(%r14)
.LBB14_305:                             # %cond.end.1483.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movl	%esi, %edx
	subl	268(%r10), %edx
	jae	.LBB14_307
# BB#306:                               # %cond.true.1490.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movl	%esi, %edx
	shlq	$4, %rdx
	addq	272(%r10), %rdx
	jmp	.LBB14_157
.LBB14_241:                             # %sw.bb.1152.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	8(%r9), %rax
	movzwl	264(%rax), %edx
	testl	%edx, %edx
	jne	.LBB14_245
# BB#242:                               # %sw.bb.1152.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movl	4(%r9), %ecx
	cmpl	%ecx, %edx
	je	.LBB14_245
# BB#243:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movzwl	266(%rax), %eax
	cmpl	%ecx, %eax
	jne	.LBB14_245
# BB#244:                               # %if.then.1170.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%r9, %rdi
	movq	%r15, 56(%rsp)          # 8-byte Spill
	movq	%r14, %r15
	movq	%r10, %r14
	movq	%r8, %rbp
	movq	%r9, 64(%rsp)           # 8-byte Spill
	movq	%r11, %rbx
	callq	file_switch_to_read
	movq	%rbx, %r11
	movq	64(%rsp), %r9           # 8-byte Reload
	movq	%rbp, %r8
	movq	%r14, %r10
	movq	%r15, %r14
	movq	56(%rsp), %r15          # 8-byte Reload
	testl	%eax, %eax
	js	.LBB14_251
.LBB14_245:                             # %rt.preheader.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	cmpq	640(%r10), %r8
	jae	.LBB14_252
# BB#246:                               # %if.end.1197.lr.ph.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	leaq	16(%r9), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
.LBB14_247:                             # %if.end.1197.i.i
                                        #   Parent Loop BB14_1 Depth=1
                                        #     Parent Loop BB14_368 Depth=2
                                        #       Parent Loop BB14_8 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB14_248 Depth 5
	movq	%r11, 80(%rsp)          # 8-byte Spill
	movq	%r8, 624(%r10)
	movl	184(%r10), %edx
	movq	%r13, %rdi
	movq	%r9, %rsi
	movq	%r9, 64(%rsp)           # 8-byte Spill
	movq	%r10, %rbx
	callq	gs_scanner_init_options
	movq	%rbx, %r10
	jmp	.LBB14_248
.LBB14_461:                             # %sw.bb.1310.i.i
                                        #   in Loop: Header=BB14_248 Depth=5
	movq	%r11, 80(%rsp)          # 8-byte Spill
	addq	$-16, %r14
.LBB14_248:                             # %again.i.i
                                        #   Parent Loop BB14_1 Depth=1
                                        #     Parent Loop BB14_368 Depth=2
                                        #       Parent Loop BB14_8 Depth=3
                                        #         Parent Loop BB14_247 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	%r10, %rdi
	leaq	2016(%rsp), %rsi
	movq	%r13, %rdx
	movq	%r10, %rbx
	callq	gs_scan_token
	movq	%rbx, %r10
	movq	624(%r10), %r8
	movl	%eax, %edx
	cmpl	$5, %eax
	ja	.LBB14_249
# BB#254:                               # %again.i.i
                                        #   in Loop: Header=BB14_248 Depth=5
	movq	%rax, %rcx
	movq	64(%rsp), %r9           # 8-byte Reload
	jmpq	*.LJTI14_1(,%rdx,8)
.LBB14_277:                             # %sw.bb.1323.i.i
                                        #   in Loop: Header=BB14_248 Depth=5
	movq	80(%rsp), %r11          # 8-byte Reload
	testl	%r11d, %r11d
	jle	.LBB14_279
# BB#278:                               # %cond.true.1326.i.i
                                        #   in Loop: Header=BB14_248 Depth=5
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rax, 8(%r14)
	movl	%r11d, 4(%r14)
.LBB14_279:                             # %cond.end.1333.i.i
                                        #   in Loop: Header=BB14_248 Depth=5
	movups	(%r9), %xmm0
	movaps	%xmm0, 256(%rsp)
	cmpq	536(%r10), %r14
	leaq	2016(%rsp), %rdx
	jae	.LBB14_281
# BB#280:                               # %cleanup.1352.thread.i.i
                                        #   in Loop: Header=BB14_248 Depth=5
	movq	%r11, %rbp
	movaps	256(%rsp), %xmm0
	movups	%xmm0, 16(%r14)
	addq	$16, %r14
	movq	%r14, 520(%r10)
	movq	%r8, 624(%r10)
	movq	$ztokenexec_continue, (%rsp)
	movl	$1, %r8d
	movl	$1, %r9d
	movq	%r10, %rdi
	movq	%r13, %rsi
	movq	%r10, %rbx
	callq	ztoken_handle_comment
	jmp	.LBB14_274
.LBB14_269:                             # %sw.bb.1275.i.i
                                        #   in Loop: Header=BB14_248 Depth=5
	movq	80(%rsp), %r11          # 8-byte Reload
	testl	%r11d, %r11d
	jle	.LBB14_271
# BB#270:                               # %cond.true.1278.i.i
                                        #   in Loop: Header=BB14_248 Depth=5
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rax, 8(%r14)
	movl	%r11d, 4(%r14)
.LBB14_271:                             # %cond.end.1285.i.i
                                        #   in Loop: Header=BB14_248 Depth=5
	movups	(%r9), %xmm0
	movaps	%xmm0, 2016(%rsp)
	cmpq	536(%r10), %r14
	jae	.LBB14_272
# BB#273:                               # %if.end.1295.i.i
                                        #   in Loop: Header=BB14_248 Depth=5
	movq	%r11, %rbp
	movaps	2016(%rsp), %xmm0
	movups	%xmm0, 16(%r14)
	addq	$16, %r14
	movq	%r14, 520(%r10)
	movq	%r8, 624(%r10)
	movl	$1, %edx
	movl	$ztokenexec_continue, %ecx
	movq	%r10, %rdi
	movq	%r13, %rsi
	movq	%r10, %rbx
	callq	gs_scan_handle_refill
.LBB14_274:                             # %scan_cont.i.i
                                        #   in Loop: Header=BB14_248 Depth=5
	movq	520(%rbx), %r14
	testl	%eax, %eax
	movq	%rbx, %r10
	movq	%rbp, %r11
	je	.LBB14_461
	jmp	.LBB14_275
.LBB14_255:                             # %sw.bb.1205.i.i
                                        #   in Loop: Header=BB14_247 Depth=4
	movzwl	2016(%rsp), %eax
	testb	$-128, %al
	movq	80(%rsp), %r11          # 8-byte Reload
	je	.LBB14_257
# BB#256:                               # %sw.bb.1205.i.i
                                        #   in Loop: Header=BB14_247 Depth=4
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB14_258
.LBB14_257:                             # %if.then.1217.i.i
                                        #   in Loop: Header=BB14_247 Depth=4
	movaps	2016(%rsp), %xmm0
	movups	%xmm0, 16(%r8)
	addq	$16, %r8
	cmpq	640(%r10), %r8
	jb	.LBB14_247
	jmp	.LBB14_252
.LBB14_204:                             # %do.end.965.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	8(%r9), %rsi
	movq	(%rsi), %rax
	cmpq	$1, %rax
	ja	.LBB14_210
# BB#205:                               # %if.then.970.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movl	4(%r9), %ecx
	movl	%ecx, %edx
	andl	$511, %edx              # imm = 0x1FF
	shlq	$3, %rdx
	subq	%rdx, %rsi
	movl	4096(%rsi), %edi
	leal	(%rdi,%rcx), %esi
	movl	488(%r10), %eax
	decl	%eax
	andl	%esi, %eax
	incl	%eax
	movq	480(%r10), %rdx
	movzwl	(%rdx,%rax,2), %edx
	leal	49152(%rdi,%rcx), %ecx
	cmpl	%ecx, %edx
	jne	.LBB14_207
# BB#206:                               # %cond.true.993.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	shlq	$4, %rax
	addq	496(%r10), %rax
	jmp	.LBB14_208
.LBB14_172:                             # %do.end.831.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%r11, %rbx
	decl	1980(%rsp)
	movq	%r14, 520(%r10)
	movq	%r14, 104(%rsp)         # 8-byte Spill
	movq	%r8, 624(%r10)
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r10, %rdi
	movq	%r10, %r14
	movq	%r9, %rbp
	callq	*8(%rbp)
	movq	%rbp, %rcx
	cmpl	$4, %eax
	jg	.LBB14_177
# BB#173:                               # %do.end.831.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	cmpl	$2, %eax
	movq	%rbx, %r11
	jae	.LBB14_174
# BB#180:                               # %sw.bb.846.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%r14, %r10
	movq	624(%r10), %r8
	leal	-1(%r11), %eax
	cmpl	$2, %r11d
	movq	%rcx, %r9
	jge	.LBB14_7
	jmp	.LBB14_181
.LBB14_285:                             # %sw.bb.1363.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%r11, 80(%rsp)          # 8-byte Spill
	movq	%r14, 104(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	leaq	256(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r10, %r14
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r9, %rbp
	movq	%rbp, 64(%rsp)          # 8-byte Spill
	callq	s_init
	movq	8(%rbp), %rsi
	movl	4(%rbp), %edx
	movq	%rbx, %rdi
	callq	sread_string
	movl	$1, %edx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	gs_scanner_init_stream_options
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	%rax, 624(%r14)
	movq	%r14, %rdi
	leaq	2016(%rsp), %rsi
	movq	%r13, %rdx
	callq	gs_scan_token
	movq	%r14, %r10
	movl	%eax, %ebx
	movq	624(%r10), %r8
	cmpl	$2, %ebx
	jae	.LBB14_286
# BB#289:                               # %sw.bb.1375.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	80(%rsp), %r11          # 8-byte Reload
	testl	%r11d, %r11d
	movq	104(%rsp), %r14         # 8-byte Reload
	movq	64(%rsp), %r9           # 8-byte Reload
	jle	.LBB14_291
# BB#290:                               # %cond.true.1378.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	leaq	16(%r9), %rax
	movq	%rax, 8(%r14)
	movl	%r11d, 4(%r14)
.LBB14_291:                             # %cond.end.1385.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movl	376(%rsp), %eax
	movq	368(%rsp), %rcx
	subl	%ecx, %eax
	je	.LBB14_294
# BB#292:                               # %if.then.1394.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	cmpq	536(%r10), %r14
	jae	.LBB14_295
# BB#293:                               # %if.end.1403.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movw	(%r9), %dx
	movw	%dx, 16(%r14)
	incq	%rcx
	movq	%rcx, 24(%r14)
	movl	%eax, 20(%r14)
	leaq	16(%r14), %r14
.LBB14_294:                             # %cleanup.1431.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	xorl	%eax, %eax
	testl	%ebx, %ebx
	leaq	2016(%rsp), %rcx
	movq	%rcx, %rdx
	je	.LBB14_8
	jmp	.LBB14_164
.LBB14_152:                             # %do.end.682.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movl	4(%r9), %eax
	testl	%eax, %eax
	jne	.LBB14_154
# BB#153:                               # %cond.true.687.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%r9, %rdi
	movq	%r14, %r15
	movq	%r10, %r14
	movq	%r8, %rbp
	movq	%r9, 64(%rsp)           # 8-byte Spill
	movq	%r11, %rbx
	callq	op_find_index
	movq	%rbx, %r11
	movq	64(%rsp), %r9           # 8-byte Reload
	movq	%rbp, %r8
	movq	%r14, %r10
	movq	%r15, %r14
	movq	56(%rsp), %r15          # 8-byte Reload
	movzwl	%ax, %eax
.LBB14_154:                             # %cond.end.693.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	leaq	8(%r9), %rdi
.LBB14_155:                             # %opst.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	(%rdi), %rdx
	testl	%r11d, %r11d
	jle	.LBB14_157
# BB#156:                               # %cond.true.698.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	leaq	16(%r9), %rcx
	movq	%rcx, 8(%r14)
	movl	%r11d, 4(%r14)
	jmp	.LBB14_157
.LBB14_309:                             # %do.end.1513.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	jmpq	*.LJTI14_4(,%rdx,8)
.LBB14_353:                             # %cond.end.1758.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	96(%rsp), %rdi          # 8-byte Reload
	movl	%ebp, %esi
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r9, 64(%rsp)           # 8-byte Spill
	callq	dstack_find_name_by_index
	movq	64(%rsp), %r9           # 8-byte Reload
	movq	128(%rsp), %r8          # 8-byte Reload
	movq	120(%rsp), %r10         # 8-byte Reload
	movq	%rax, %rdx
	testq	%rdx, %rdx
	je	.LBB14_354
.LBB14_350:                             # %if.end.1770.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movzwl	(%rdx), %eax
	movl	%eax, %ecx
	andl	$192, %ecx
	cmpl	$64, %ecx
	movq	%rbx, %r11
	jne	.LBB14_359
# BB#351:                               # %do.end.1780.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	cmpq	640(%r10), %r8
	jae	.LBB14_352
# BB#355:                               # %if.end.1792.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movups	(%rdx), %xmm0
	movups	%xmm0, 16(%r8)
	addq	$16, %r8
	cmpl	$1, %r11d
	jg	.LBB14_356
# BB#357:                               # %if.then.1797.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	testl	%r11d, %r11d
	jle	.LBB14_358
.LBB14_324:                             # %if.end.1555.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	addq	$-16, %r14
	jmp	.LBB14_325
.LBB14_359:                             # %if.end.1805.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB14_362
# BB#360:                               # %do.end.1815.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	testl	%r11d, %r11d
	jle	.LBB14_164
# BB#361:                               # %cond.true.1818.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	leaq	2(%r9), %rax
	movq	%rax, 8(%r14)
	movl	%r11d, 4(%r14)
	jmp	.LBB14_164
.LBB14_307:                             # %cond.false.1497.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	shlq	$4, %rdx
	addq	312(%r10), %rdx
.LBB14_157:                             # %oppr.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	536(%r10), %rcx
	addq	$-64, %rcx
	cmpq	%rcx, %r14
	jae	.LBB14_158
# BB#160:                               # %if.end.716.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%r8, 624(%r10)
	movq	$oparray_cleanup, 24(%r14)
	movw	$3712, 16(%r14)         # imm = 0xE80
	movl	$0, 20(%r14)
	movl	%eax, %eax
	movq	%rax, 40(%r14)
	movw	$2816, 32(%r14)         # imm = 0xB00
	movq	624(%r10), %rax
	addq	$16, %rax
	subq	632(%r10), %rax
	sarq	$4, %rax
	movl	668(%r10), %ecx
	addq	%rax, %rcx
	movq	%rcx, 56(%r14)
	movw	$2816, 48(%r14)         # imm = 0xB00
	movq	368(%r10), %rax
	addq	$16, %rax
	subq	376(%r10), %rax
	sarq	$4, %rax
	movl	412(%r10), %ecx
	addq	%rax, %rcx
	movq	%rcx, 72(%r14)
	movw	$2816, 64(%r14)         # imm = 0xB00
	movq	$oparray_pop, 88(%r14)
	movw	$3968, 80(%r14)         # imm = 0xF80
	movl	$0, 84(%r14)
	leaq	80(%r14), %r14
.LBB14_164:                             # %pr.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movl	4(%rdx), %r11d
	decl	%r11d
	testl	%r11d, %r11d
	jg	.LBB14_168
# BB#165:                               # %if.then.794.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	js	.LBB14_166
# BB#167:                               # %if.end.798.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	8(%rdx), %rcx
	movl	1980(%rsp), %esi
	leal	-1(%rsi), %eax
	movl	%eax, 1980(%rsp)
	xorl	%eax, %eax
	cmpl	$1, %esi
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movq	%rcx, %r9
	jg	.LBB14_8
.LBB14_168:                             # %if.end.806.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	cmpq	536(%r10), %r14
	jae	.LBB14_169
# BB#170:                               # %if.end.815.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	(%rdx), %rax
	movq	%rax, 16(%r14)
	movq	8(%rdx), %rcx
	movq	%rcx, 24(%r14)
	leaq	16(%r14), %r14
	movl	1980(%rsp), %eax
	leal	-1(%rax), %esi
	movl	%esi, 1980(%rsp)
	cmpl	$1, %eax
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movl	%r11d, %eax
	jg	.LBB14_8
	jmp	.LBB14_171
.LBB14_362:                             # %if.end.1827.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	xorl	%eax, %eax
	testl	%r11d, %r11d
	movq	%rdx, %rcx
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	jle	.LBB14_8
# BB#363:                               # %cond.true.1830.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	addq	$2, %r9
	jmp	.LBB14_240
.LBB14_356:                             #   in Loop: Header=BB14_8 Depth=3
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	jmp	.LBB14_325
.LBB14_207:                             # %cond.false.997.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	96(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %r15
	movq	%r10, %r14
	movq	%r8, %rbp
	movq	%r9, 64(%rsp)           # 8-byte Spill
	movq	%r11, %rbx
	callq	dstack_find_name_by_index
	movq	%rbx, %r11
	movq	64(%rsp), %r9           # 8-byte Reload
	movq	%rbp, %r8
	movq	%r14, %r10
	movq	%r15, %r14
	movq	56(%rsp), %r15          # 8-byte Reload
.LBB14_208:                             # %cond.end.1000.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	testq	%rax, %rax
	je	.LBB14_209
.LBB14_210:                             # %if.end.1009.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movzwl	(%rax), %eax
	shrl	$6, %eax
	cmpl	$122, %eax
	ja	.LBB14_238
# BB#211:                               # %if.end.1009.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	jmpq	*.LJTI14_2(,%rax,8)
.LBB14_214:                             # %do.end.1022.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	cmpq	640(%r10), %r8
	jae	.LBB14_215
# BB#216:                               # %if.end.1035.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	88(%rsp), %rax          # 8-byte Reload
	movups	(%rax), %xmm0
	movups	%xmm0, 16(%r8)
	addq	$16, %r8
	leal	-1(%r11), %eax
	cmpl	$2, %r11d
	jl	.LBB14_182
.LBB14_217:                             # %if.then.1040.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	addq	$16, %r9
	movq	%r9, %rcx
	jmp	.LBB14_8
.LBB14_14:                              # %do.end.24.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%r11, 80(%rsp)          # 8-byte Spill
	movq	%r9, %rbx
	movq	%r8, 624(%r10)
	movq	%r10, %rdi
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movq	%r8, %rbp
	callq	zop_add
	testl	%eax, %eax
	js	.LBB14_15
# BB#17:                                # %if.end.41.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	addq	$-16, %rbp
	movq	80(%rsp), %rdx          # 8-byte Reload
	cmpl	$1, %edx
	movq	%rbp, %r8
	jg	.LBB14_18
# BB#19:                                # %if.then.45.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	testl	%edx, %edx
	movq	120(%rsp), %r10         # 8-byte Reload
	jle	.LBB14_20
# BB#21:                                # %if.end.49.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	addq	$-16, %r14
	jmp	.LBB14_22
.LBB14_26:                              # %do.end.59.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%r11, 80(%rsp)          # 8-byte Spill
	movq	%r9, %rbx
	movq	%r8, 624(%r10)
	movq	%r10, %rdi
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movq	%r8, %rbp
	callq	zop_def
	testl	%eax, %eax
	js	.LBB14_27
# BB#29:                                # %if.end.80.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	addq	$-32, %rbp
	movq	80(%rsp), %rdx          # 8-byte Reload
	cmpl	$1, %edx
	movq	%rbp, %r8
	jg	.LBB14_30
# BB#31:                                # %if.then.85.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	testl	%edx, %edx
	movq	120(%rsp), %r10         # 8-byte Reload
	jle	.LBB14_32
# BB#33:                                # %if.end.89.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	addq	$-16, %r14
	jmp	.LBB14_34
.LBB14_36:                              # %do.end.104.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	cmpq	632(%r10), %r8
	jb	.LBB14_37
# BB#40:                                # %if.end.123.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	cmpq	640(%r10), %r8
	jae	.LBB14_41
# BB#43:                                # %if.end.145.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	leaq	16(%r8), %rax
	movups	(%r8), %xmm0
	movups	%xmm0, 16(%r8)
	cmpl	$1, %r11d
	jg	.LBB14_46
# BB#44:                                # %if.then.151.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	testl	%r11d, %r11d
	jle	.LBB14_346
# BB#45:                                # %if.end.155.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	addq	$-16, %r14
.LBB14_46:                              # %if.end.157.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movzwl	(%r9), %ecx
	cmpl	$16383, %ecx            # imm = 0x3FFF
	jbe	.LBB14_48
# BB#47:                                #   in Loop: Header=BB14_8 Depth=3
	addq	$2, %r9
	jmp	.LBB14_49
.LBB14_50:                              # %do.end.170.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	cmpq	632(%r10), %r8
	jbe	.LBB14_51
# BB#52:                                # %if.end.190.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movups	(%r8), %xmm0
	movaps	%xmm0, 2016(%rsp)
	movups	-16(%r8), %xmm0
	movups	%xmm0, (%r8)
	movaps	2016(%rsp), %xmm0
	movups	%xmm0, -16(%r8)
	cmpl	$1, %r11d
	jg	.LBB14_56
# BB#53:                                # %if.then.196.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	testl	%r11d, %r11d
	jle	.LBB14_54
# BB#55:                                # %if.end.200.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	addq	$-16, %r14
.LBB14_56:                              # %if.end.202.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movzwl	(%r9), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB14_58
# BB#57:                                #   in Loop: Header=BB14_8 Depth=3
	addq	$2, %r9
	jmp	.LBB14_59
.LBB14_60:                              # %do.end.215.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movzwl	(%r8), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB14_61
# BB#64:                                # %if.end.237.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movzbl	-15(%r8), %eax
	cmpl	$1, %eax
	jne	.LBB14_65
# BB#69:                                # %if.end.271.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	cmpw	$0, -8(%r8)
	movq	88(%rsp), %rbp          # 8-byte Reload
	je	.LBB14_70
# BB#76:                                # %if.end.294.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	cmpq	536(%r10), %r14
	jae	.LBB14_77
# BB#80:                                # %if.end.314.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	testl	%r11d, %r11d
	jle	.LBB14_85
# BB#81:                                # %cond.true.317.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movzwl	(%r9), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB14_83
# BB#82:                                #   in Loop: Header=BB14_8 Depth=3
	addq	$2, %r9
	jmp	.LBB14_84
.LBB14_86:                              # %do.end.336.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movzwl	(%r8), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB14_87
# BB#89:                                # %if.end.359.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	leaq	-16(%r8), %rdi
	movzwl	-16(%r8), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB14_90
# BB#91:                                # %if.end.385.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movzbl	-31(%r8), %eax
	cmpl	$1, %eax
	movq	88(%rsp), %rbp          # 8-byte Reload
	jne	.LBB14_92
# BB#94:                                # %if.end.421.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	cmpq	536(%r10), %r14
	jae	.LBB14_95
# BB#96:                                # %if.end.441.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	testl	%r11d, %r11d
	jle	.LBB14_101
# BB#97:                                # %cond.true.444.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movzwl	(%r9), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB14_99
# BB#98:                                #   in Loop: Header=BB14_8 Depth=3
	addq	$2, %r9
	jmp	.LBB14_100
.LBB14_111:                             # %do.end.503.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%r14, 104(%rsp)         # 8-byte Spill
	movq	%r11, %r14
	movq	%r9, %rbx
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r8, 624(%r10)
	movq	%r10, %rdi
	movq	%r10, 120(%rsp)         # 8-byte Spill
	callq	zindex
	testl	%eax, %eax
	js	.LBB14_112
# BB#116:                               # %if.end.524.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%r14, %rdx
	cmpl	$1, %edx
	jg	.LBB14_117
# BB#118:                               # %if.then.528.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	testl	%edx, %edx
	movq	120(%rsp), %r10         # 8-byte Reload
	movq	128(%rsp), %r8          # 8-byte Reload
	movq	104(%rsp), %r14         # 8-byte Reload
	jle	.LBB14_119
# BB#120:                               # %if.end.532.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	addq	$-16, %r14
	jmp	.LBB14_121
.LBB14_123:                             # %do.end.547.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	cmpq	632(%r10), %r8
	jb	.LBB14_124
# BB#125:                               # %if.end.567.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	addq	$-16, %r8
	cmpl	$1, %r11d
	jg	.LBB14_129
# BB#126:                               # %if.then.572.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	testl	%r11d, %r11d
	jle	.LBB14_127
# BB#128:                               # %if.end.576.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	addq	$-16, %r14
.LBB14_129:                             # %if.end.578.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movzwl	(%r9), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB14_58
# BB#130:                               #   in Loop: Header=BB14_8 Depth=3
	addq	$2, %r9
	jmp	.LBB14_59
.LBB14_131:                             # %do.end.591.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%r11, 80(%rsp)          # 8-byte Spill
	movq	%r9, %rbx
	movq	%r8, 624(%r10)
	movq	%r10, %rdi
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movq	%r8, %rbp
	callq	zroll
	testl	%eax, %eax
	js	.LBB14_132
# BB#134:                               # %if.end.612.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	addq	$-32, %rbp
	movq	80(%rsp), %rdx          # 8-byte Reload
	cmpl	$1, %edx
	movq	%rbp, %r8
	jg	.LBB14_135
# BB#136:                               # %if.then.617.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	testl	%edx, %edx
	movq	120(%rsp), %r10         # 8-byte Reload
	jle	.LBB14_137
# BB#138:                               # %if.end.621.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	addq	$-16, %r14
	jmp	.LBB14_139
.LBB14_141:                             # %do.end.636.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%r11, 80(%rsp)          # 8-byte Spill
	movq	%r9, %rbx
	movq	%r8, 624(%r10)
	movq	%r10, %rdi
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movq	%r8, %rbp
	callq	zop_sub
	testl	%eax, %eax
	js	.LBB14_142
# BB#145:                               # %if.end.657.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	addq	$-16, %rbp
	movq	80(%rsp), %rdx          # 8-byte Reload
	cmpl	$1, %edx
	movq	%rbp, %r8
	jg	.LBB14_146
# BB#147:                               # %if.then.662.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	testl	%edx, %edx
	movq	120(%rsp), %r10         # 8-byte Reload
	jle	.LBB14_148
# BB#149:                               # %if.end.666.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	addq	$-16, %r14
	jmp	.LBB14_150
.LBB14_18:                              #   in Loop: Header=BB14_8 Depth=3
	movq	120(%rsp), %r10         # 8-byte Reload
.LBB14_22:                              # %if.end.51.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movzwl	(%rbx), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB14_24
# BB#23:                                #   in Loop: Header=BB14_8 Depth=3
	addq	$2, %rbx
	jmp	.LBB14_25
.LBB14_30:                              #   in Loop: Header=BB14_8 Depth=3
	movq	120(%rsp), %r10         # 8-byte Reload
.LBB14_34:                              # %if.end.91.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movzwl	(%rbx), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB14_24
# BB#35:                                #   in Loop: Header=BB14_8 Depth=3
	addq	$2, %rbx
	jmp	.LBB14_25
.LBB14_117:                             #   in Loop: Header=BB14_8 Depth=3
	movq	120(%rsp), %r10         # 8-byte Reload
	movq	128(%rsp), %r8          # 8-byte Reload
	movq	104(%rsp), %r14         # 8-byte Reload
.LBB14_121:                             # %if.end.534.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movzwl	(%rbx), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB14_24
# BB#122:                               #   in Loop: Header=BB14_8 Depth=3
	addq	$2, %rbx
	jmp	.LBB14_25
.LBB14_135:                             #   in Loop: Header=BB14_8 Depth=3
	movq	120(%rsp), %r10         # 8-byte Reload
.LBB14_139:                             # %if.end.623.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movzwl	(%rbx), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB14_24
# BB#140:                               #   in Loop: Header=BB14_8 Depth=3
	addq	$2, %rbx
	jmp	.LBB14_25
.LBB14_146:                             #   in Loop: Header=BB14_8 Depth=3
	movq	120(%rsp), %r10         # 8-byte Reload
.LBB14_150:                             # %if.end.668.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movzwl	(%rbx), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB14_24
# BB#151:                               #   in Loop: Header=BB14_8 Depth=3
	addq	$2, %rbx
	jmp	.LBB14_25
.LBB14_24:                              # %select.mid
                                        #   in Loop: Header=BB14_8 Depth=3
	addq	$16, %rbx
.LBB14_25:                              # %select.end
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%rbx, %rcx
	decl	%edx
	movl	%edx, %eax
	jmp	.LBB14_8
.LBB14_238:                             # %sw.default.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	xorl	%eax, %eax
	testl	%r11d, %r11d
	movq	88(%rsp), %rcx          # 8-byte Reload
	jle	.LBB14_8
# BB#239:                               # %cond.true.1143.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	addq	$16, %r9
.LBB14_240:                             # %do.end.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%r9, 8(%r14)
	movl	%r11d, 4(%r14)
	movq	88(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB14_8
.LBB14_48:                              # %select.mid3672
                                        #   in Loop: Header=BB14_8 Depth=3
	addq	$16, %r9
.LBB14_49:                              # %select.end3671
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%r9, %rcx
	decl	%r11d
	movq	%rax, %r8
	movl	%r11d, %eax
	jmp	.LBB14_8
.LBB14_70:                              # %if.then.273.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	addq	$-32, %r8
	cmpl	$1, %r11d
	jg	.LBB14_74
# BB#71:                                # %if.then.278.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	testl	%r11d, %r11d
	jle	.LBB14_72
# BB#73:                                # %if.end.282.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	addq	$-16, %r14
.LBB14_74:                              # %if.end.284.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movzwl	(%r9), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB14_58
# BB#75:                                #   in Loop: Header=BB14_8 Depth=3
	addq	$2, %r9
	jmp	.LBB14_59
.LBB14_58:                              # %select.mid3680
                                        #   in Loop: Header=BB14_8 Depth=3
	addq	$16, %r9
.LBB14_59:                              # %select.end3679
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%r9, %rcx
	decl	%r11d
	movl	%r11d, %eax
	jmp	.LBB14_8
.LBB14_99:                              # %select.mid3739
                                        #   in Loop: Header=BB14_8 Depth=3
	addq	$16, %r9
.LBB14_100:                             # %select.end3738
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%r9, 8(%r14)
	movl	%r11d, 4(%r14)
.LBB14_101:                             # %cond.end.459.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	cmpw	$0, -24(%r8)
	jne	.LBB14_103
# BB#102:                               # %select.mid3741
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%r8, %rdi
.LBB14_103:                             # %select.end3740
                                        #   in Loop: Header=BB14_8 Depth=3
	addq	$-48, %r8
	jmp	.LBB14_104
.LBB14_315:                             # %do.end.1529.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	cmpl	$14, %eax
	movq	%rbp, %r9
	movq	%rbx, %r11
	jne	.LBB14_316
# BB#330:                               # %sw.bb.1571.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%r14, %r10
	movq	520(%r10), %rdx
	movq	624(%r10), %r8
	movq	104(%rsp), %r14         # 8-byte Reload
	cmpq	%r14, %rdx
	jne	.LBB14_372
# BB#331:                               # %if.then.1580.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	cmpl	$1, %r11d
	jg	.LBB14_325
# BB#332:                               # %if.then.1584.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	testl	%r11d, %r11d
	jg	.LBB14_324
	jmp	.LBB14_333
.LBB14_321:                             #   in Loop: Header=BB14_8 Depth=3
	movq	104(%rsp), %r14         # 8-byte Reload
.LBB14_325:                             # %if.end.1557.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	decl	%r11d
	addq	$2, %r9
	jmp	.LBB14_326
.LBB14_83:                              # %select.mid3705
                                        #   in Loop: Header=BB14_8 Depth=3
	addq	$16, %r9
.LBB14_84:                              # %select.end3704
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%r9, 8(%r14)
	movl	%r11d, 4(%r14)
.LBB14_85:                              # %cond.end.330.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%r8, %rdi
	leaq	-32(%r8), %rax
	movq	%rax, %r8
.LBB14_104:                             # %ifup.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%rbp, 88(%rsp)          # 8-byte Spill
	movl	4(%rdi), %edx
	decl	%edx
	testl	%edx, %edx
	jle	.LBB14_106
# BB#105:                               # %ifup.if.end.487_crit_edge.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movl	1980(%rsp), %ebp
	leaq	8(%rdi), %rsi
	jmp	.LBB14_109
.LBB14_106:                             # %if.then.476.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	js	.LBB14_107
# BB#108:                               # %if.end.480.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	leaq	8(%rdi), %rsi
	movq	8(%rdi), %rcx
	movl	1980(%rsp), %ebx
	leal	-1(%rbx), %ebp
	movl	%ebp, 1980(%rsp)
	xorl	%eax, %eax
	cmpl	$1, %ebx
	jg	.LBB14_8
.LBB14_109:                             # %if.end.487.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	leaq	16(%r14), %rbx
	movq	(%rdi), %rax
	movq	%rax, 16(%r14)
	movq	(%rsi), %rcx
	movq	%rcx, 24(%r14)
	leal	-1(%rbp), %esi
	movl	%esi, 1980(%rsp)
	cmpl	$1, %ebp
	movq	%rbx, %r14
	movl	%edx, %eax
	jg	.LBB14_8
	jmp	.LBB14_110
.LBB14_161:                             # %do.end.1046.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	testl	%r11d, %r11d
	jle	.LBB14_163
# BB#162:                               # %cond.true.780.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	leaq	16(%r9), %rax
	movq	%rax, 8(%r14)
	movl	%r11d, 4(%r14)
.LBB14_163:                             # %pr.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	88(%rsp), %rdx          # 8-byte Reload
	jmp	.LBB14_164
.LBB14_221:                             # %do.end.1079.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%r11, 80(%rsp)          # 8-byte Spill
	movq	%r9, 64(%rsp)           # 8-byte Spill
	decl	1980(%rsp)
	movq	%r14, 520(%r10)
	movq	%r8, 624(%r10)
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r10, %rdi
	movq	%r10, %rbp
	movq	88(%rsp), %rax          # 8-byte Reload
	callq	*8(%rax)
	cmpl	$4, %eax
	jg	.LBB14_225
# BB#222:                               # %do.end.1079.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	cmpl	$2, %eax
	movq	64(%rsp), %r9           # 8-byte Reload
	movq	80(%rsp), %rcx          # 8-byte Reload
	jae	.LBB14_223
# BB#229:                               # %sw.bb.1094.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%rbp, %r10
	movq	624(%r10), %r8
	leal	-1(%rcx), %eax
	cmpl	$2, %ecx
	jge	.LBB14_217
	jmp	.LBB14_182
.LBB14_218:                             # %do.end.1061.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	88(%rsp), %rdi          # 8-byte Reload
	movl	4(%rdi), %eax
	testl	%eax, %eax
	jne	.LBB14_220
# BB#219:                               # %cond.true.1066.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movq	%r8, %rbp
	movq	%r9, %rbx
	movq	%r14, %r15
	movq	%r11, %r14
	callq	op_find_index
	movq	%r14, %r11
	movq	%r15, %r14
	movq	56(%rsp), %r15          # 8-byte Reload
	movq	%rbx, %r9
	movq	%rbp, %r8
	movq	88(%rsp), %rdi          # 8-byte Reload
	movq	120(%rsp), %r10         # 8-byte Reload
	movzwl	%ax, %eax
.LBB14_220:                             # %cond.end.1072.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	addq	$8, %rdi
	jmp	.LBB14_155
.LBB14_264:                             # %sw.bb.1251.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	80(%rsp), %r11          # 8-byte Reload
	testl	%r11d, %r11d
	jle	.LBB14_266
# BB#265:                               # %cond.true.1254.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rax, 8(%r14)
	movl	%r11d, 4(%r14)
.LBB14_266:                             # %cond.end.1261.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	cmpq	536(%r10), %r14
	jae	.LBB14_267
# BB#268:                               # %cleanup.1360.thread649.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	leaq	16(%r14), %rax
	movq	%rax, 616(%r10)
	movups	(%r9), %xmm0
	movups	%xmm0, 16(%r14)
	leaq	2016(%rsp), %rdx
	movq	%rax, %r14
	jmp	.LBB14_164
.LBB14_258:                             # %if.end.1219.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r14, %rcx
	movq	%r10, 120(%rsp)         # 8-byte Spill
	testl	%r11d, %r11d
	jle	.LBB14_260
# BB#259:                               # %cond.true.1222.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rax, 8(%rcx)
	movl	%r11d, 4(%rcx)
.LBB14_260:                             # %cond.end.1229.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	120(%rsp), %rax         # 8-byte Reload
	cmpq	536(%rax), %rcx
	jae	.LBB14_261
# BB#262:                               # %cleanup.1360.thread648.i.i
                                        #   in Loop: Header=BB14_8 Depth=3
	movq	%rcx, %rax
	leaq	16(%rax), %r14
	movq	120(%rsp), %r10         # 8-byte Reload
	movq	%r14, 616(%r10)
	movups	(%r9), %xmm0
	movups	%xmm0, 16(%rax)
	xorl	%eax, %eax
	leaq	2016(%rsp), %rcx
	movq	128(%rsp), %r8          # 8-byte Reload
	jmp	.LBB14_8
	.align	16, 0x90
.LBB14_365:                             # %sw.epilog.1844.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	cmpq	640(%r10), %r8
	jb	.LBB14_367
	jmp	.LBB14_366
.LBB14_346:                             #   in Loop: Header=BB14_368 Depth=2
	movq	%r14, %rdx
	movq	%rax, %r8
	jmp	.LBB14_372
.LBB14_171:                             #   in Loop: Header=BB14_368 Depth=2
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	jmp	.LBB14_187
.LBB14_166:                             #   in Loop: Header=BB14_368 Depth=2
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movq	%r14, %rdx
	jmp	.LBB14_372
.LBB14_110:                             #   in Loop: Header=BB14_368 Depth=2
	movq	%rbx, %r14
	jmp	.LBB14_187
.LBB14_181:                             #   in Loop: Header=BB14_368 Depth=2
	movq	104(%rsp), %r14         # 8-byte Reload
.LBB14_182:                             # %out.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	testl	%eax, %eax
	je	.LBB14_370
	.align	16, 0x90
# BB#183:                               #   in Loop: Header=BB14_368 Depth=2
	movq	%r14, %rdx
	jmp	.LBB14_372
	.align	16, 0x90
.LBB14_370:                             # %if.then.1866.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	addq	$-16, %r14
	addq	$16, %r9
	xorl	%eax, %eax
	movq	%r9, %rcx
	jmp	.LBB14_377
.LBB14_177:                             # %do.end.831.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	cmpl	$5, %eax
	movq	%rbx, %r11
	je	.LBB14_184
# BB#178:                               # %do.end.831.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	cmpl	$14, %eax
	movq	%r14, %r10
	jne	.LBB14_189
# BB#179:                               #   in Loop: Header=BB14_368 Depth=2
	movq	%rcx, %r9
.LBB14_228:                             # %opop.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movq	520(%r10), %rdx
	movq	624(%r10), %r8
	movq	104(%rsp), %r14         # 8-byte Reload
	cmpq	%r14, %rdx
	je	.LBB14_368
	jmp	.LBB14_372
.LBB14_358:                             #   in Loop: Header=BB14_368 Depth=2
	movq	%r14, %rdx
	jmp	.LBB14_372
.LBB14_107:                             #   in Loop: Header=BB14_368 Depth=2
	movq	%r14, %rdx
	jmp	.LBB14_372
.LBB14_20:                              #   in Loop: Header=BB14_368 Depth=2
	movq	%r14, %rdx
	jmp	.LBB14_372
.LBB14_32:                              #   in Loop: Header=BB14_368 Depth=2
	movq	%r14, %rdx
	jmp	.LBB14_372
.LBB14_54:                              #   in Loop: Header=BB14_368 Depth=2
	movq	%r14, %rdx
	jmp	.LBB14_372
.LBB14_119:                             #   in Loop: Header=BB14_368 Depth=2
	movq	%r14, %rdx
	jmp	.LBB14_372
.LBB14_127:                             #   in Loop: Header=BB14_368 Depth=2
	movq	%r14, %rdx
	jmp	.LBB14_372
.LBB14_137:                             #   in Loop: Header=BB14_368 Depth=2
	movq	%r14, %rdx
	jmp	.LBB14_372
.LBB14_148:                             #   in Loop: Header=BB14_368 Depth=2
	movq	%r14, %rdx
	jmp	.LBB14_372
.LBB14_286:                             # %sw.bb.1363.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	cmpl	$3, %ebx
	je	.LBB14_296
# BB#287:                               # %sw.bb.1363.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	cmpl	$2, %ebx
	leaq	2016(%rsp), %rdx
	movq	104(%rsp), %r14         # 8-byte Reload
	movq	64(%rsp), %r9           # 8-byte Reload
	jne	.LBB14_297
# BB#288:                               # %cleanup.1431.thread.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movq	80(%rsp), %r11          # 8-byte Reload
	jmp	.LBB14_368
.LBB14_275:                             # %scan_cont.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movq	624(%r10), %r8
	cmpl	$5, %eax
	movq	%rax, %rdx
	jne	.LBB14_276
# BB#371:                               # %cleanup.1360.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movq	$0, 616(%r10)
	movl	1980(%rsp), %eax
	leal	-1(%rax), %esi
	movl	%esi, 1980(%rsp)
	cmpl	$1, %eax
	movq	%r14, %rdx
	jle	.LBB14_187
	jmp	.LBB14_372
.LBB14_316:                             # %do.end.1529.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	cmpl	$5, %eax
	jne	.LBB14_317
# BB#327:                               # %sw.bb.1559.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	testl	%r11d, %r11d
	jle	.LBB14_328
# BB#329:                               # %cond.true.1562.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	addq	$2, %r9
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	%r9, 8(%rax)
	movl	%r11d, 4(%rax)
	movq	%r14, %r10
	jmp	.LBB14_186
.LBB14_174:                             # %do.end.831.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	cmpl	$-103, %eax
	movq	%rax, %rdx
	movq	%r14, %r10
	movq	%rcx, %r9
	jne	.LBB14_385
	jmp	.LBB14_175
.LBB14_184:                             # %sw.bb.856.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	testl	%r11d, %r11d
	movq	%r14, %r10
	jle	.LBB14_186
# BB#185:                               # %cond.true.859.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	addq	$16, %rcx
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	%rcx, 8(%rax)
	movl	%r11d, 4(%rax)
	jmp	.LBB14_186
.LBB14_189:                             # %do.end.831.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	cmpl	$22, %eax
	movq	%rax, %rdx
	movq	%rcx, %r9
	jne	.LBB14_385
# BB#190:                               # %sw.bb.893.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	testl	%r11d, %r11d
	jle	.LBB14_191
# BB#195:                               # %cond.true.896.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	addq	$16, %r9
	jmp	.LBB14_196
.LBB14_263:                             # %cleanup.1360.thread650.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movq	$0, 616(%r10)
	movq	80(%rsp), %r11          # 8-byte Reload
	jmp	.LBB14_368
.LBB14_323:                             #   in Loop: Header=BB14_368 Depth=2
	movq	%r14, %rdx
	jmp	.LBB14_372
.LBB14_72:                              #   in Loop: Header=BB14_368 Depth=2
	movq	%r14, %rdx
	jmp	.LBB14_372
.LBB14_312:                             # %do.end.1529.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	cmpl	$-103, %eax
	movq	%rax, %rdx
	jne	.LBB14_335
# BB#313:                               # %sw.bb.1608.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	testl	%r11d, %r11d
	movq	%r14, %r10
	jle	.LBB14_314
# BB#334:                               # %cond.true.1611.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	leaq	2(%r9), %rax
	jmp	.LBB14_198
.LBB14_317:                             # %do.end.1529.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	cmpl	$22, %eax
	movq	%rax, %rdx
	jne	.LBB14_335
# BB#318:                               # %sw.bb.1596.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	testl	%r11d, %r11d
	movq	%r14, %r10
	jle	.LBB14_191
# BB#319:                               # %cond.true.1599.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	addq	$2, %r9
.LBB14_196:                             # %res.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movq	104(%rsp), %r14         # 8-byte Reload
	movq	%r9, 8(%r14)
	movl	%r11d, 4(%r14)
	jmp	.LBB14_192
.LBB14_333:                             #   in Loop: Header=BB14_368 Depth=2
	movq	%r14, %rdx
	jmp	.LBB14_372
.LBB14_191:                             #   in Loop: Header=BB14_368 Depth=2
	movq	104(%rsp), %r14         # 8-byte Reload
.LBB14_192:                             # %res.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movq	%r10, (%r12)
	movq	%r12, %rdi
	callq	*360(%r10)
	movl	%eax, %ebp
	movq	(%r12), %r10
	jmp	.LBB14_193
.LBB14_328:                             #   in Loop: Header=BB14_368 Depth=2
	movq	%r14, %r10
.LBB14_186:                             # %opush.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movq	520(%r10), %r14
	movq	624(%r10), %r8
	movl	1980(%rsp), %eax
	leal	-1(%rax), %esi
	movl	%esi, 1980(%rsp)
	cmpl	$1, %eax
	jg	.LBB14_373
	jmp	.LBB14_187
.LBB14_314:                             #   in Loop: Header=BB14_368 Depth=2
	movq	104(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB14_199
.LBB14_225:                             # %do.end.1079.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	cmpl	$5, %eax
	movq	%rax, %rcx
	je	.LBB14_230
# BB#226:                               # %do.end.1079.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	cmpl	$14, %ecx
	jne	.LBB14_233
# BB#227:                               #   in Loop: Header=BB14_368 Depth=2
	movq	%rbp, %r10
	movq	%r14, 104(%rsp)         # 8-byte Spill
	movq	64(%rsp), %r9           # 8-byte Reload
	movq	80(%rsp), %r11          # 8-byte Reload
	jmp	.LBB14_228
.LBB14_223:                             # %do.end.1079.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	cmpl	$-103, %eax
	movq	%rax, %rcx
	jne	.LBB14_237
# BB#224:                               #   in Loop: Header=BB14_368 Depth=2
	movq	%rbp, %r10
	movq	%r14, 104(%rsp)         # 8-byte Spill
	movq	64(%rsp), %r9           # 8-byte Reload
	movq	80(%rsp), %r11          # 8-byte Reload
.LBB14_175:                             # %oe_remap.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	testl	%r11d, %r11d
	jle	.LBB14_176
# BB#197:                               # %cond.true.908.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	leaq	16(%r9), %rax
.LBB14_198:                             # %remap.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movq	104(%rsp), %rbp         # 8-byte Reload
	movq	%rax, 8(%rbp)
	movl	%r11d, 4(%rbp)
	jmp	.LBB14_199
.LBB14_176:                             #   in Loop: Header=BB14_368 Depth=2
	movq	104(%rsp), %rbp         # 8-byte Reload
.LBB14_199:                             # %remap.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	leaq	32(%rbp), %rax
	cmpq	536(%r10), %rax
	jb	.LBB14_203
# BB#200:                               # %if.then.923.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movq	%rbp, %rbx
	movq	%r11, 80(%rsp)          # 8-byte Spill
	movq	%r9, %r14
	leaq	520(%r10), %rbp
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movq	%rbx, (%rbp)
	movl	$2, %esi
	movq	%rbp, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB14_201
# BB#202:                               # %if.end.935.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movq	(%rbp), %rbp
	movq	120(%rsp), %r10         # 8-byte Reload
	movq	%r14, %r9
.LBB14_203:                             # %if.end.939.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movq	8(%r10), %rdi
	leaq	16(%rbp), %rdx
	movq	%r9, %rsi
	movq	%r10, %rbx
	callq	packed_get
	movq	(%rbx), %rdi
	callq	gs_state_client_data
	movq	%rbx, %r10
	movq	536(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, 40(%rbp)
	movw	$3968, 32(%rbp)         # imm = 0xF80
	movl	$0, 36(%rbp)
	leaq	32(%rbp), %rdx
	movq	128(%rsp), %r8          # 8-byte Reload
	jmp	.LBB14_372
.LBB14_230:                             # %sw.bb.1104.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movq	80(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB14_231
# BB#232:                               # %cond.true.1107.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movq	64(%rsp), %rax          # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 8(%r14)
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	%eax, 4(%r14)
	movq	%rbp, %r10
	jmp	.LBB14_186
.LBB14_233:                             # %do.end.1079.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	cmpl	$22, %ecx
	jne	.LBB14_237
# BB#234:                               # %sw.bb.1117.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movq	80(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB14_236
# BB#235:                               # %cond.true.1120.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movq	64(%rsp), %rax          # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 8(%r14)
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	%eax, 4(%r14)
.LBB14_236:                             # %res.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movq	%rbp, %r10
	jmp	.LBB14_192
.LBB14_231:                             #   in Loop: Header=BB14_368 Depth=2
	movq	%rbp, %r10
	jmp	.LBB14_186
	.align	16, 0x90
.LBB14_187:                             # %slice.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movq	%r8, 624(%r10)
	movq	%r14, 520(%r10)
	cmpl	$-100, %esi
	jg	.LBB14_380
# BB#188:                               # %if.then.1929.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r14, 104(%rsp)         # 8-byte Spill
	movq	%r10, (%r12)
	leaq	8(%r10), %r14
	movq	32(%r10), %rdi
	movl	$.L.str.24, %ecx
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%r10, %rbp
	callq	gs_register_struct_root
	movl	$-1, %esi
	movq	%r14, %rdi
	callq	*64(%rbp)
	movl	%eax, %ebp
	movq	(%r12), %rax
	movq	32(%rax), %rdi
	movl	$.L.str.24, %edx
	movq	%r13, %rsi
	callq	*176(%rdi)
	jmp	.LBB14_383
	.align	16, 0x90
.LBB14_380:                             # %if.else.1931.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	cmpq	$0, 344(%r10)
	je	.LBB14_381
# BB#382:                               # %if.then.1934.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r14, 104(%rsp)         # 8-byte Spill
	movq	%r10, (%r12)
	movq	%r12, %rdi
	callq	*344(%r10)
	movl	%eax, %ebp
.LBB14_383:                             # %if.end.1939.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movq	(%r12), %r10
	jmp	.LBB14_384
.LBB14_381:                             #   in Loop: Header=BB14_368 Depth=2
	xorl	%ebp, %ebp
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r14, 104(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB14_384:                             # %if.end.1939.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movl	352(%r10), %eax
	movl	%eax, 1980(%rsp)
	movq	104(%rsp), %r14         # 8-byte Reload
.LBB14_193:                             # %sched.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movq	128(%rsp), %rcx         # 8-byte Reload
	testl	%ebp, %ebp
	js	.LBB14_194
# BB#379:                               # %if.end.1914.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movq	520(%r10), %rdx
	movq	624(%r10), %r8
.LBB14_372:                             # %upthread-pre-split.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movl	1980(%rsp), %esi
	movq	%rdx, %r14
.LBB14_373:                             # %up.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movl	%esi, %eax
	testl	%eax, %eax
	leal	-1(%rax), %esi
	movl	%esi, 1980(%rsp)
	jle	.LBB14_187
# BB#374:                               # %if.end.1874.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movzwl	(%r14), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB14_375
# BB#376:                               # %if.end.1883.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movq	8(%r14), %rcx
	movl	4(%r14), %eax
	decl	%eax
	testl	%eax, %eax
	jg	.LBB14_377
# BB#378:                               # %if.then.1891.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	addq	$-16, %r14
	testl	%eax, %eax
	movq	%r14, %rdx
	movl	$0, %eax
	jns	.LBB14_377
	jmp	.LBB14_372
	.align	16, 0x90
.LBB14_375:                             # %if.then.1881.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	movq	%r14, %rcx
	addq	$-16, %r14
	xorl	%eax, %eax
.LBB14_377:                             # %do.end.preheader.i.i
                                        #   in Loop: Header=BB14_368 Depth=2
	leaq	368(%r10), %rdx
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	jmp	.LBB14_8
	.align	16, 0x90
.LBB14_5:                               # %if.then.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movl	$-5, 1984(%rsp)
	movl	$902, 1988(%rsp)        # imm = 0x386
	movq	%rbp, 1992(%rsp)
	xorl	%r11d, %r11d
	movl	$-5, %r15d
	movq	%rbp, %r9
	jmp	.LBB14_388
.LBB14_249:                             # %again.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r8, 128(%rsp)          # 8-byte Spill
	cmpl	$-21, %eax
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	%rax, %r15
	je	.LBB14_250
# BB#282:                               # %sw.default.1355.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movups	(%rcx), %xmm0
	movaps	%xmm0, 2016(%rsp)
	movq	%r10, %rdi
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movq	%r13, %rsi
	leaq	2016(%rsp), %rbp
	movq	%rbp, %rdx
	callq	gs_scanner_error_object
	movl	$1439, %eax             # imm = 0x59F
.LBB14_283:                             # %cleanup.1360.thread647.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	%r15d, 1984(%rsp)
	movl	%eax, 1988(%rsp)
.LBB14_284:                             # %rwe.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rbp, 1992(%rsp)
	movq	64(%rsp), %r9           # 8-byte Reload
	movq	80(%rsp), %r11          # 8-byte Reload
	jmp	.LBB14_388
.LBB14_12:                              # %sw.bb.10.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movabsq	$4183298146297, %rax    # imm = 0x3CDFFFFFFF9
.LBB14_13:                              # %rwei.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rax, 1984(%rsp)
	movl	$-7, %r15d
	jmp	.LBB14_387
.LBB14_366:                             # %if.then.1850.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movl	$1, 688(%r10)
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movabsq	$7078106103792, %rax    # imm = 0x66FFFFFFFF0
	jmp	.LBB14_253
.LBB14_301:                             # %if.then.1446.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movl	$1, 688(%r10)
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movabsq	$6446745911280, %rax    # imm = 0x5DCFFFFFFF0
	jmp	.LBB14_253
.LBB14_10:                              # %sw.bb.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movabsq	$4157528342428, %rax    # imm = 0x3C7FFFFFF9C
.LBB14_11:                              # %rwei.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rax, 1984(%rsp)
	movl	$-100, %r15d
	jmp	.LBB14_387
.LBB14_194:                             # %if.then.1901.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	%ebp, 1984(%rsp)
	movl	$1684, 1988(%rsp)       # imm = 0x694
	movq	$0, 2008(%rsp)
	movw	$1248, 2000(%rsp)       # imm = 0x4E0
	movl	$0, 2004(%rsp)
	leaq	2000(%rsp), %rax
	movq	%rax, 1992(%rsp)
	movq	%rax, %r9
	movq	%rbp, %r15
	jmp	.LBB14_397
.LBB14_169:                             # %if.then.812.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movabsq	$4964982194171, %rax    # imm = 0x483FFFFFFFB
	jmp	.LBB14_159
.LBB14_337:                             # %if.then.1637.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movl	$1, 688(%r10)
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movabsq	$6828998000624, %rax    # imm = 0x635FFFFFFF0
	jmp	.LBB14_253
.LBB14_344:                             # %if.then.1676.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movl	$1, 688(%r10)
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movabsq	$6880537608176, %rax    # imm = 0x641FFFFFFF0
	jmp	.LBB14_253
.LBB14_158:                             # %if.then.713.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movabsq	$4879082848251, %rax    # imm = 0x46FFFFFFFFB
	jmp	.LBB14_159
.LBB14_352:                             # %if.then.1786.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movl	$1, 688(%r10)
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movabsq	$6979321855984, %rax    # imm = 0x658FFFFFFF0
	jmp	.LBB14_253
.LBB14_15:                              # %if.then.30.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rbp, 128(%rsp)         # 8-byte Spill
	movq	%rbx, %r9
	movzbl	1(%r9), %ecx
	movl	%eax, 1984(%rsp)
	movl	$1022, 1988(%rsp)       # imm = 0x3FE
	cmpl	$13, %ecx
	movq	%rax, %r15
	je	.LBB14_144
# BB#16:                                #   in Loop: Header=BB14_1 Depth=1
	movq	80(%rsp), %r11          # 8-byte Reload
	jmp	.LBB14_387
.LBB14_27:                              # %if.then.66.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rbp, 128(%rsp)         # 8-byte Spill
	movq	%rbx, %r9
	movzbl	1(%r9), %ecx
	movl	%eax, 1984(%rsp)
	movl	$1029, 1988(%rsp)       # imm = 0x405
	cmpl	$13, %ecx
	movq	%rax, %r15
	je	.LBB14_144
# BB#28:                                #   in Loop: Header=BB14_1 Depth=1
	movq	80(%rsp), %r11          # 8-byte Reload
	jmp	.LBB14_387
.LBB14_37:                              # %if.then.109.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movzbl	1(%r9), %eax
	movl	$-17, 1984(%rsp)
	movl	$1035, 1988(%rsp)       # imm = 0x40B
	jmp	.LBB14_38
.LBB14_51:                              # %if.then.176.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movzbl	1(%r9), %eax
	movl	$-17, 1984(%rsp)
	movl	$1046, 1988(%rsp)       # imm = 0x416
	jmp	.LBB14_38
.LBB14_61:                              # %if.then.221.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r14, 104(%rsp)         # 8-byte Spill
	movq	%r11, %r14
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movzbl	1(%r9), %ebp
	movq	%r9, %rbx
	movq	%r8, %rdi
	movq	%r8, 128(%rsp)          # 8-byte Spill
	callq	check_proc_failed
	movl	%eax, %r15d
	movl	%r15d, 1984(%rsp)
	movl	$1054, 1988(%rsp)       # imm = 0x41E
	jmp	.LBB14_62
.LBB14_87:                              # %if.then.343.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r14, 104(%rsp)         # 8-byte Spill
	movq	%r11, %r14
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movzbl	1(%r9), %ebp
	movq	%r9, %rbx
	movq	%r8, %rdi
	movq	%r8, 128(%rsp)          # 8-byte Spill
	callq	check_proc_failed
	movl	%eax, %r15d
	movl	%r15d, 1984(%rsp)
	movl	$1071, 1988(%rsp)       # imm = 0x42F
	jmp	.LBB14_62
.LBB14_112:                             # %if.then.510.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rbx, %r9
	movzbl	1(%r9), %ecx
	movl	%eax, 1984(%rsp)
	movl	$1101, 1988(%rsp)       # imm = 0x44D
	cmpl	$13, %ecx
	movq	%rax, %r15
	jne	.LBB14_113
# BB#114:                               # %if.then.517.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	88(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, 1992(%rsp)
	jmp	.LBB14_115
.LBB14_124:                             # %if.then.553.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movzbl	1(%r9), %eax
	movl	$-17, 1984(%rsp)
	movl	$1106, 1988(%rsp)       # imm = 0x452
.LBB14_38:                              # %if.then.109.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$-17, %r15d
	cmpl	$13, %eax
	jne	.LBB14_387
# BB#39:                                # %if.then.116.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	88(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, 1992(%rsp)
	movl	$-17, %r15d
	jmp	.LBB14_388
.LBB14_132:                             # %if.then.598.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rbp, 128(%rsp)         # 8-byte Spill
	movq	%rbx, %r9
	movzbl	1(%r9), %ecx
	movl	%eax, 1984(%rsp)
	movl	$1113, 1988(%rsp)       # imm = 0x459
	cmpl	$13, %ecx
	movq	%rax, %r15
	je	.LBB14_144
# BB#133:                               #   in Loop: Header=BB14_1 Depth=1
	movq	80(%rsp), %r11          # 8-byte Reload
	jmp	.LBB14_387
.LBB14_142:                             # %if.then.643.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rbp, 128(%rsp)         # 8-byte Spill
	movq	%rbx, %r9
	movzbl	1(%r9), %ecx
	movl	%eax, 1984(%rsp)
	movl	$1120, 1988(%rsp)       # imm = 0x460
	cmpl	$13, %ecx
	movq	%rax, %r15
	jne	.LBB14_143
.LBB14_144:                             # %if.then.35.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	88(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, 1992(%rsp)
	movq	80(%rsp), %r11          # 8-byte Reload
	jmp	.LBB14_388
.LBB14_41:                              # %if.then.129.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movl	$1, 688(%r10)
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movzbl	1(%r9), %eax
	movl	$-16, 1984(%rsp)
	movl	$1038, 1988(%rsp)       # imm = 0x40E
	movl	$-16, %r15d
	cmpl	$13, %eax
	jne	.LBB14_387
	jmp	.LBB14_42
.LBB14_65:                              # %if.then.245.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movb	1(%r9), %al
	movl	$-17, %r15d
	cmpq	632(%r10), %r8
	movq	88(%rsp), %rbp          # 8-byte Reload
	jbe	.LBB14_67
# BB#66:                                # %select.mid3689
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$-20, %r15d
.LBB14_67:                              # %select.end3688
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movl	%r15d, 1984(%rsp)
	movl	$1057, 1988(%rsp)       # imm = 0x421
	movzbl	%al, %eax
	cmpl	$13, %eax
	jne	.LBB14_387
# BB#68:                                # %if.then.252.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rbp, 1992(%rsp)
	jmp	.LBB14_388
.LBB14_90:                              # %if.then.367.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r14, 104(%rsp)         # 8-byte Spill
	movq	%r11, %r14
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movzbl	1(%r9), %ebp
	movq	%r9, %rbx
	callq	check_proc_failed
	movl	%eax, %r15d
	movl	%r15d, 1984(%rsp)
	movl	$1073, 1988(%rsp)       # imm = 0x431
.LBB14_62:                              # %if.then.221.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpl	$13, %ebp
	jne	.LBB14_88
# BB#63:                                # %if.then.228.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	88(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, 1992(%rsp)
	movq	%rbx, %r9
.LBB14_115:                             # %rwe.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r14, %r11
	movq	104(%rsp), %r14         # 8-byte Reload
	jmp	.LBB14_388
.LBB14_88:                              #   in Loop: Header=BB14_1 Depth=1
	movq	%rbx, %r9
.LBB14_113:                             #   in Loop: Header=BB14_1 Depth=1
	movq	%r14, %r11
	movq	104(%rsp), %r14         # 8-byte Reload
	jmp	.LBB14_387
.LBB14_92:                              # %if.then.393.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	632(%r10), %rax
	movq	%r10, 120(%rsp)         # 8-byte Spill
	addq	$32, %rax
	cmpq	%rax, %r8
	movq	%r8, 128(%rsp)          # 8-byte Spill
	sbbl	%eax, %eax
	andl	$1, %eax
	leal	-20(%rax,%rax,2), %r15d
	movzbl	1(%r9), %eax
	movl	%r15d, 1984(%rsp)
	movl	$1076, 1988(%rsp)       # imm = 0x434
	cmpl	$13, %eax
	jne	.LBB14_387
# BB#93:                                # %if.then.400.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rbp, 1992(%rsp)
	jmp	.LBB14_388
.LBB14_252:                             # %if.then.1191.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movl	$1, 688(%r10)
	movabsq	$5750961209328, %rax    # imm = 0x53AFFFFFFF0
.LBB14_253:                             # %rwei.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rax, 1984(%rsp)
	movl	$-16, %r15d
	jmp	.LBB14_387
.LBB14_95:                              # %if.then.427.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movzbl	1(%r9), %eax
	movl	$-5, 1984(%rsp)
	movl	$1078, 1988(%rsp)       # imm = 0x436
	jmp	.LBB14_78
.LBB14_354:                             # %cleanup.1841.thread692.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r15, %rdi
	movl	%ebp, %esi
	leaq	2016(%rsp), %rbp
	movq	%rbp, %rdx
	callq	names_index_ref
	movq	64(%rsp), %r9           # 8-byte Reload
	movl	$-21, 1984(%rsp)
	movl	$1618, 1988(%rsp)       # imm = 0x652
	movq	%rbp, 1992(%rsp)
	movl	$-21, %r15d
	movq	%rbx, %r11
	jmp	.LBB14_388
.LBB14_77:                              # %if.then.300.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movzbl	1(%r9), %eax
	movl	$-5, 1984(%rsp)
	movl	$1063, 1988(%rsp)       # imm = 0x427
.LBB14_78:                              # %if.then.300.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$-5, %r15d
	cmpl	$13, %eax
	jne	.LBB14_387
# BB#79:                                # %if.then.307.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rbp, 1992(%rsp)
	movl	$-5, %r15d
	jmp	.LBB14_388
.LBB14_295:                             # %cleanup.1431.thread654.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movabsq	$6292127088635, %rax    # imm = 0x5B8FFFFFFFB
	jmp	.LBB14_159
.LBB14_281:                             # %cleanup.1352.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movabsq	$6124623364091, %rax    # imm = 0x591FFFFFFFB
	jmp	.LBB14_159
.LBB14_143:                             #   in Loop: Header=BB14_1 Depth=1
	movq	80(%rsp), %r11          # 8-byte Reload
	jmp	.LBB14_387
.LBB14_209:                             # %cleanup.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movabsq	$5304284610539, %rax    # imm = 0x4D2FFFFFFEB
	movq	%rax, 1984(%rsp)
	movl	$-21, %r15d
	jmp	.LBB14_387
.LBB14_215:                             # %if.then.1028.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movl	$1, 688(%r10)
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movl	$-16, 1984(%rsp)
	movl	$1251, 1988(%rsp)       # imm = 0x4E3
.LBB14_42:                              # %if.then.138.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	88(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, 1992(%rsp)
	movl	$-16, %r15d
	jmp	.LBB14_388
.LBB14_272:                             # %if.then.1292.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movabsq	$5991479377915, %rax    # imm = 0x572FFFFFFFB
.LBB14_159:                             # %rwei.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rax, 1984(%rsp)
	movl	$-5, %r15d
.LBB14_387:                             # %rwei.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r9, 1992(%rsp)
	movq	%r9, %rbp
.LBB14_388:                             # %rwe.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movzwl	(%r9), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB14_389
# BB#392:                               # %if.else.1961.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rdi
	movq	%rbp, %rsi
	leaq	2000(%rsp), %rbp
	movq	%rbp, %rdx
	movq	%r9, %r15
	movq	%r11, %rbx
	callq	packed_get
	movq	%rbx, %rcx
	testl	%ecx, %ecx
	jle	.LBB14_394
# BB#393:                               # %cond.true.1968.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	leaq	2(%r15), %rax
	movq	%rax, 8(%r14)
	movl	%ecx, 4(%r14)
.LBB14_394:                             # %cond.end.1975.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpq	1992(%rsp), %r15
	movq	%rbp, %rax
	movq	128(%rsp), %rcx         # 8-byte Reload
	je	.LBB14_396
# BB#395:                               # %select.mid4067
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r15, %rax
.LBB14_396:                             # %select.end4066
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rbp, 1992(%rsp)
	movl	1984(%rsp), %r15d
	movq	%rax, %r9
	movq	120(%rsp), %r10         # 8-byte Reload
	jmp	.LBB14_397
	.align	16, 0x90
.LBB14_389:                             # %if.then.1949.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	testl	%r11d, %r11d
	jle	.LBB14_390
# BB#391:                               # %cond.true.1952.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	leaq	16(%r9), %rax
	movq	%rax, 8(%r14)
	movl	%r11d, 4(%r14)
.LBB14_390:                             #   in Loop: Header=BB14_1 Depth=1
	movq	120(%rsp), %r10         # 8-byte Reload
	movq	128(%rsp), %rcx         # 8-byte Reload
.LBB14_397:                             # %error_exit.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpl	$-6, %r15d
	je	.LBB14_399
# BB#398:                               # %error_exit.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpl	$-19, %r15d
	jne	.LBB14_401
.LBB14_399:                             # %if.then.1993.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpq	536(%r10), %r14
	jae	.LBB14_401
# BB#400:                               # %if.else.2000.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movups	(%r9), %xmm0
	movups	%xmm0, 16(%r14)
	addq	$16, %r14
	movl	1984(%rsp), %r15d
.LBB14_401:                             # %interp.exit.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r14, 520(%r10)
	movq	%rcx, 624(%r10)
	movq	1992(%rsp), %rax
	movups	(%rax), %xmm0
	movq	112(%rsp), %rcx         # 8-byte Reload
	movups	%xmm0, (%rcx)
	movq	(%r12), %rbp
	cmpb	$0, 153(%rbp)
	je	.LBB14_403
# BB#402:                               # %if.then.22.i
                                        #   in Loop: Header=BB14_1 Depth=1
	leaq	152(%rbp), %rax
	movups	(%rax), %xmm0
	movups	%xmm0, (%rcx)
	movw	$0, (%rax)
.LBB14_403:                             # %if.end.27.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$1, %edx
	movq	%rbp, %rdi
	leaq	180(%rsp), %rsi
	callq	set_gc_signal
	leaq	520(%rbp), %rsi
	movq	528(%rbp), %rax
	cmpq	%rax, 520(%rbp)
	jae	.LBB14_405
# BB#404:                               # %if.then.34.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rax, (%rsi)
.LBB14_405:                             # %if.end.41.i
                                        #   in Loop: Header=BB14_1 Depth=1
	leal	106(%r15), %eax
	cmpl	$6, %eax
	jbe	.LBB14_416
# BB#406:                               # %if.end.41.i
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpl	$-6, %r15d
	jne	.LBB14_407
	jmp	.LBB14_459
	.align	16, 0x90
.LBB14_416:                             # %if.end.41.i
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%r14d, %r14d
	jmpq	*.LJTI14_5(,%rax,8)
.LBB14_420:                             # %sw.bb.69.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	624(%rbp), %rax
	movl	$8, %r15d
	cmpq	$2, 8(%rax)
	je	.LBB14_422
# BB#421:                               # %select.mid4074
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$12, %r15d
.LBB14_422:                             # %select.end4073
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	(%r12), %rbx
	leaq	8(%rbx), %r14
	movq	32(%rbx), %rdi
	movl	$.L.str.24, %ecx
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	gs_register_struct_root
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	*64(%rbx)
	movq	(%r12), %rax
	movq	32(%rax), %rdi
	movl	$.L.str.24, %edx
	movq	%r13, %rsi
	callq	*176(%rdi)
	movq	(%r12), %rbp
	movq	$zpop, 232(%rsp)
	movw	$3968, 224(%rsp)        # imm = 0xF80
	movl	$0, 228(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 248(%rsp)
	movq	112(%rsp), %r14         # 8-byte Reload
	jmp	.LBB14_1
	.align	16, 0x90
.LBB14_407:                             # %sw.epilog.i
                                        #   in Loop: Header=BB14_1 Depth=1
	leaq	624(%rbp), %rbx
	movq	624(%rbp), %rax
	movq	632(%rbp), %rcx
	addq	$-16, %rcx
	cmpq	%rcx, %rax
	jae	.LBB14_409
# BB#408:                               # %if.then.93.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rcx, (%rbx)
	movq	%rcx, %rax
.LBB14_409:                             # %if.end.101.i
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpl	$-6, %r15d
	jle	.LBB14_410
# BB#423:                               # %if.end.101.i
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpl	$-5, %r15d
	je	.LBB14_432
# BB#424:                               # %if.end.101.i
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpl	$-4, %r15d
	jne	.LBB14_425
# BB#430:                               # %sw.bb.138.i
                                        #   in Loop: Header=BB14_1 Depth=1
	leaq	368(%rbp), %rbx
	movq	%rbx, %rdi
	callq	ref_stack_pop_block
	testl	%eax, %eax
	movq	112(%rsp), %r14         # 8-byte Reload
	js	.LBB14_443
# BB#431:                               # %if.then.144.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rbx, %rdi
	callq	dstack_set_top
	jmp	.LBB14_458
.LBB14_410:                             # %if.end.101.i
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpl	$-17, %r15d
	jne	.LBB14_411
# BB#457:                               # %sw.bb.251.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rbx, %rdi
	callq	ref_stack_pop_block
	testl	%eax, %eax
	movq	112(%rsp), %r14         # 8-byte Reload
	jns	.LBB14_458
	jmp	.LBB14_443
.LBB14_419:                             # %sw.bb.65.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rsi, %rdi
	callq	ref_stack_pop_block
	movq	112(%rsp), %r14         # 8-byte Reload
.LBB14_458:                             # %if.then.257.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movups	(%r14), %xmm0
	movaps	%xmm0, 224(%rsp)
	jmp	.LBB14_415
.LBB14_432:                             # %sw.bb.147.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	cmpq	640(%rbp), %rax
	jb	.LBB14_434
# BB#433:                               # %if.then.156.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rsi, %rbx
	movl	$1, %esi
	movq	128(%rsp), %rdi         # 8-byte Reload
	callq	ref_stack_extend
	movq	%rbx, %rsi
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB14_460
.LBB14_434:                             # %if.end.164.i
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%edx, %edx
	movq	%rbp, %rdi
	movq	%rsi, %rbx
	leaq	184(%rsp), %rcx
	callq	copy_stack
	movq	%rbx, %rdi
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB14_460
# BB#435:                               # %if.end.171.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r15, 120(%rsp)         # 8-byte Spill
	movq	%rdi, %r15
	callq	ref_stack_count
	movl	576(%rbp), %ecx
	leal	-20(%rcx), %edx
	movl	%eax, %esi
	subl	%edx, %esi
	jbe	.LBB14_442
# BB#436:                               # %if.then.183.i
                                        #   in Loop: Header=BB14_1 Depth=1
	addl	$20, %eax
	subl	%ecx, %eax
	movslq	%eax, %rbx
	leal	8(%rsi), %eax
	movq	%rsi, 104(%rsp)         # 8-byte Spill
	movslq	%eax, %r14
	.align	16, 0x90
.LBB14_437:                             # %for.cond.i
                                        #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r14, %rbx
	jge	.LBB14_438
# BB#439:                               # %for.body.i
                                        #   in Loop: Header=BB14_437 Depth=2
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ref_stack_index
	movzwl	(%rax), %eax
	andl	$16256, %eax            # imm = 0x3F80
	incq	%rbx
	cmpl	$3712, %eax             # imm = 0xE80
	jne	.LBB14_437
# BB#440:                               # %for.body.i.for.end.i_crit_edge
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	%ebx, %esi
	jmp	.LBB14_441
.LBB14_425:                             # %if.end.101.i
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpl	$-3, %r15d
	movq	112(%rsp), %r14         # 8-byte Reload
	jne	.LBB14_443
# BB#426:                               # %sw.bb.102.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rbx, %rdi
	cmpq	640(%rbp), %rax
	jb	.LBB14_428
# BB#427:                               # %if.then.110.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$1, %esi
	callq	ref_stack_extend
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB14_460
.LBB14_428:                             # %if.end.118.i
                                        #   in Loop: Header=BB14_1 Depth=1
	leaq	368(%rbp), %rbx
	movl	464(%rbp), %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	leaq	184(%rsp), %rcx
	callq	copy_stack
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB14_460
# BB#429:                               # %if.end.126.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rbx, %rdi
	callq	ref_stack_count
	subl	464(%rbp), %eax
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	ref_stack_pop
	movq	%rbx, %rdi
	callq	dstack_set_top
	movq	624(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 624(%rbp)
	jmp	.LBB14_456
.LBB14_411:                             # %if.end.101.i
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpl	$-16, %r15d
	movq	112(%rsp), %r14         # 8-byte Reload
	jne	.LBB14_443
# BB#412:                               # %sw.bb.207.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	688(%rbp), %esi
	movq	%rbx, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB14_454
# BB#413:                               # %if.then.216.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movups	(%r14), %xmm0
	movaps	%xmm0, 224(%rsp)
	movzwl	224(%rsp), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB14_415
# BB#414:                               # %if.then.223.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	(%rbx), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, (%rbx)
	movaps	224(%rsp), %xmm0
	movups	%xmm0, 16(%rax)
	movq	$0, 232(%rsp)
	movw	$1248, 224(%rsp)        # imm = 0x4E0
	movl	$0, 228(%rsp)
	jmp	.LBB14_415
.LBB14_438:                             #   in Loop: Header=BB14_1 Depth=1
	movq	104(%rsp), %rsi         # 8-byte Reload
.LBB14_441:                             # %for.end.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rbp, %rdi
	callq	pop_estack
.LBB14_442:                             # %if.end.202.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	128(%rsp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, (%rdx)
	movups	184(%rsp), %xmm0
	movups	%xmm0, 16(%rax)
	movq	112(%rsp), %r14         # 8-byte Reload
	movq	120(%rsp), %r15         # 8-byte Reload
	jmp	.LBB14_443
.LBB14_454:                             # %if.end.234.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movq	%rbp, %rdi
	leaq	184(%rsp), %rcx
	callq	copy_stack
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB14_460
# BB#455:                               # %if.end.241.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rbx, %rdi
	callq	ref_stack_count
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	ref_stack_pop
	movq	(%rbx), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, (%rbx)
.LBB14_456:                             # %sw.epilog.259.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movups	184(%rsp), %xmm0
	movups	%xmm0, 16(%rax)
	movq	112(%rsp), %r14         # 8-byte Reload
	.align	16, 0x90
.LBB14_443:                             # %sw.epilog.259.i
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpl	$0, 76(%rsp)            # 4-byte Folded Reload
	js	.LBB14_459
# BB#444:                               # %if.end.263.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r14, 112(%rsp)         # 8-byte Spill
	leaq	504(%rbp), %r14
	movl	$.L.str.26, %esi
	movq	%r14, %rdi
	movq	%r13, %rdx
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB14_459
# BB#445:                               # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$.L.str.27, %esi
	movq	%r14, %rdi
	leaq	256(%rsp), %rdx
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB14_459
# BB#446:                               # %gs_errorname.exit.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	8(%rbp), %rdi
	movq	256(%rsp), %rsi
	movl	%r15d, %eax
	notl	%eax
	movslq	%eax, %rdx
	leaq	200(%rsp), %rbx
	movq	%rbx, %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB14_459
# BB#447:                               # %if.end.268.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$.L.str.26, %esi
	movq	%r14, %rdi
	leaq	216(%rsp), %rdx
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB14_459
# BB#448:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	216(%rsp), %rdi
	movq	%rbx, %rsi
	leaq	248(%rsp), %rdx
	callq	dict_find
	testl	%eax, %eax
	jg	.LBB14_451
# BB#449:                               # %land.lhs.true.276.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$.L.str.32, %esi
	movq	%r14, %rdi
	leaq	216(%rsp), %rdx
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB14_459
# BB#450:                               # %lor.lhs.false.282.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	216(%rsp), %rdi
	movq	%rbx, %rsi
	leaq	248(%rsp), %rdx
	callq	dict_find
	testl	%eax, %eax
	jle	.LBB14_459
.LBB14_451:                             # %if.end.287.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	248(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 224(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 248(%rsp)
	cmpl	$-19, %r15d
	movq	112(%rsp), %r14         # 8-byte Reload
	je	.LBB14_1
# BB#452:                               # %if.end.287.i
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpl	$-6, %r15d
	je	.LBB14_1
# BB#453:                               # %if.then.293.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	624(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 624(%rbp)
	movups	(%r14), %xmm0
	movups	%xmm0, 16(%rax)
	movq	624(%rbp), %rsi
	movq	%rbp, %rdi
	callq	errorexec_find
	jmp	.LBB14_1
.LBB14_296:                             # %cleanup.1431.thread655.i.i.loopexit2417
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$-18, %ebx
	leaq	2016(%rsp), %rdx
	movq	104(%rsp), %r14         # 8-byte Reload
	movq	64(%rsp), %r9           # 8-byte Reload
.LBB14_297:                             # %cleanup.1431.thread655.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movups	(%r9), %xmm0
	movaps	%xmm0, 2016(%rsp)
	movq	%r10, %rdi
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movq	%r13, %rsi
	movq	%rdx, %rbp
	movq	%r9, %r15
	callq	gs_scanner_error_object
	movq	%r15, %r9
	movl	%ebx, 1984(%rsp)
	movl	$1486, 1988(%rsp)       # imm = 0x5CE
	movq	%rbp, 1992(%rsp)
	movq	80(%rsp), %r11          # 8-byte Reload
	movq	%rbx, %r15
	jmp	.LBB14_388
.LBB14_251:                             # %cleanup.1178.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movl	%eax, 1984(%rsp)
	movl	$1335, 1988(%rsp)       # imm = 0x537
	movq	%rax, %r15
	jmp	.LBB14_387
.LBB14_385:                             # %sw.epilog.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movq	520(%r10), %r14
	movq	624(%r10), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movl	$1224, 1988(%rsp)       # imm = 0x4C8
	jmp	.LBB14_386
.LBB14_250:                             # %sw.bb.1243.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r10, %rdi
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movq	%r13, %rsi
	leaq	2016(%rsp), %rbp
	movq	%rbp, %rdx
	callq	gs_scanner_error_object
	movl	$1372, %eax             # imm = 0x55C
	movl	$-21, %r15d
	jmp	.LBB14_283
.LBB14_276:                             # %cleanup.1360.thread651.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r10, 120(%rsp)         # 8-byte Spill
	addq	$-16, %r14
	movl	$1416, 1988(%rsp)       # imm = 0x588
	movq	64(%rsp), %r9           # 8-byte Reload
	jmp	.LBB14_386
.LBB14_335:                             # %cleanup.1841.thread691.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r14, %rbx
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	movq	520(%rbx), %r14
	movq	624(%rbx), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movl	$1585, 1988(%rsp)       # imm = 0x631
.LBB14_386:                             # %rweci.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rdx, %r15
	movl	%r15d, 1984(%rsp)
	jmp	.LBB14_387
.LBB14_213:                             # %sw.bb.1016.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movabsq	$5338644348921, %rax    # imm = 0x4DAFFFFFFF9
	jmp	.LBB14_13
.LBB14_212:                             # %sw.bb.1013.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movabsq	$5330054414236, %rax    # imm = 0x4D8FFFFFF9C
	jmp	.LBB14_11
.LBB14_267:                             # %if.then.1268.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movabsq	$5939939770363, %rax    # imm = 0x566FFFFFFFB
	jmp	.LBB14_159
.LBB14_201:                             # %if.then.932.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	%eax, 1984(%rsp)
	movl	$1212, 1988(%rsp)       # imm = 0x4BC
	movq	%r14, %r9
	movq	80(%rsp), %r11          # 8-byte Reload
	movq	%rbx, %r14
	movq	%rax, %r15
	jmp	.LBB14_387
.LBB14_237:                             # %sw.epilog.1130.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rbp, %rbx
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	movq	520(%rbx), %r14
	movq	624(%rbx), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movq	%rcx, %r15
	movl	%r15d, 1984(%rsp)
	movl	$1318, 1988(%rsp)       # imm = 0x526
	movq	88(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB14_284
.LBB14_261:                             # %if.then.1236.i.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movabsq	$5862630359035, %rax    # imm = 0x554FFFFFFFB
	movq	%rax, 1984(%rsp)
	movl	$-5, %r15d
	movq	%rcx, %r14
	jmp	.LBB14_387
.LBB14_459:                             # %gs_call_interp.exit.loopexit2419
	movl	%r15d, %r14d
.LBB14_460:                             # %gs_call_interp.exit
	movq	(%r12), %rbx
	movq	32(%rbx), %rdi
	leaq	136(%rsp), %rsi
	movl	$.L.str.25, %edx
	callq	*176(%rdi)
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	set_gc_signal
	movl	%r14d, %eax
	addq	$2040, %rsp             # imm = 0x7F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB14_418:                             # %sw.bb.42.i
	movq	624(%rbp), %rax
	movups	-16(%rax), %xmm0
	movq	112(%rsp), %rax         # 8-byte Reload
	movups	%xmm0, (%rax)
	movq	624(%rbp), %rax
	movl	8(%rax), %ecx
	movq	48(%rsp), %rdx          # 8-byte Reload
	movl	%ecx, (%rdx)
	addq	$-32, %rax
	movq	%rax, 624(%rbp)
	cmpl	$-100, %ecx
	movl	$-100, %eax
	cmoval	%ecx, %eax
	testl	%ecx, %ecx
	movl	$-101, %r14d
	cmovnel	%eax, %r14d
	jmp	.LBB14_460
.LBB14_417:                             # %sw.bb.i
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	$255, (%rax)
	movl	$-100, %r14d
	jmp	.LBB14_460
.Lfunc_end14:
	.size	gs_interpret, .Lfunc_end14-gs_interpret
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI14_0:
	.quad	.LBB14_10
	.quad	.LBB14_298
	.quad	.LBB14_10
	.quad	.LBB14_298
	.quad	.LBB14_365
	.quad	.LBB14_298
	.quad	.LBB14_365
	.quad	.LBB14_298
	.quad	.LBB14_365
	.quad	.LBB14_365
	.quad	.LBB14_12
	.quad	.LBB14_298
	.quad	.LBB14_365
	.quad	.LBB14_365
	.quad	.LBB14_12
	.quad	.LBB14_241
	.quad	.LBB14_365
	.quad	.LBB14_365
	.quad	.LBB14_12
	.quad	.LBB14_365
	.quad	.LBB14_365
	.quad	.LBB14_365
	.quad	.LBB14_12
	.quad	.LBB14_365
	.quad	.LBB14_365
	.quad	.LBB14_365
	.quad	.LBB14_12
	.quad	.LBB14_365
	.quad	.LBB14_298
	.quad	.LBB14_298
	.quad	.LBB14_298
	.quad	.LBB14_298
	.quad	.LBB14_365
	.quad	.LBB14_298
	.quad	.LBB14_365
	.quad	.LBB14_298
	.quad	.LBB14_365
	.quad	.LBB14_298
	.quad	.LBB14_365
	.quad	.LBB14_298
	.quad	.LBB14_365
	.quad	.LBB14_298
	.quad	.LBB14_365
	.quad	.LBB14_298
	.quad	.LBB14_365
	.quad	.LBB14_298
	.quad	.LBB14_365
	.quad	.LBB14_298
	.quad	.LBB14_365
	.quad	.LBB14_298
	.quad	.LBB14_365
	.quad	.LBB14_298
	.quad	.LBB14_365
	.quad	.LBB14_298
	.quad	.LBB14_204
	.quad	.LBB14_298
	.quad	.LBB14_365
	.quad	.LBB14_298
	.quad	.LBB14_368
	.quad	.LBB14_298
	.quad	.LBB14_365
	.quad	.LBB14_298
	.quad	.LBB14_172
	.quad	.LBB14_298
	.quad	.LBB14_365
	.quad	.LBB14_298
	.quad	.LBB14_365
	.quad	.LBB14_298
	.quad	.LBB14_365
	.quad	.LBB14_298
	.quad	.LBB14_365
	.quad	.LBB14_298
	.quad	.LBB14_365
	.quad	.LBB14_365
	.quad	.LBB14_12
	.quad	.LBB14_285
	.quad	.LBB14_365
	.quad	.LBB14_298
	.quad	.LBB14_365
	.quad	.LBB14_298
	.quad	.LBB14_365
	.quad	.LBB14_298
	.quad	.LBB14_152
	.quad	.LBB14_298
	.quad	.LBB14_298
	.quad	.LBB14_298
	.quad	.LBB14_14
	.quad	.LBB14_298
	.quad	.LBB14_298
	.quad	.LBB14_298
	.quad	.LBB14_26
	.quad	.LBB14_298
	.quad	.LBB14_298
	.quad	.LBB14_298
	.quad	.LBB14_36
	.quad	.LBB14_298
	.quad	.LBB14_298
	.quad	.LBB14_298
	.quad	.LBB14_50
	.quad	.LBB14_298
	.quad	.LBB14_298
	.quad	.LBB14_298
	.quad	.LBB14_60
	.quad	.LBB14_298
	.quad	.LBB14_298
	.quad	.LBB14_298
	.quad	.LBB14_86
	.quad	.LBB14_298
	.quad	.LBB14_298
	.quad	.LBB14_298
	.quad	.LBB14_111
	.quad	.LBB14_298
	.quad	.LBB14_298
	.quad	.LBB14_298
	.quad	.LBB14_123
	.quad	.LBB14_298
	.quad	.LBB14_298
	.quad	.LBB14_298
	.quad	.LBB14_131
	.quad	.LBB14_298
	.quad	.LBB14_298
	.quad	.LBB14_298
	.quad	.LBB14_141
.LJTI14_1:
	.quad	.LBB14_255
	.quad	.LBB14_264
	.quad	.LBB14_263
	.quad	.LBB14_269
	.quad	.LBB14_277
	.quad	.LBB14_277
.LJTI14_2:
	.quad	.LBB14_212
	.quad	.LBB14_238
	.quad	.LBB14_212
	.quad	.LBB14_238
	.quad	.LBB14_214
	.quad	.LBB14_238
	.quad	.LBB14_214
	.quad	.LBB14_238
	.quad	.LBB14_214
	.quad	.LBB14_214
	.quad	.LBB14_213
	.quad	.LBB14_238
	.quad	.LBB14_214
	.quad	.LBB14_214
	.quad	.LBB14_213
	.quad	.LBB14_238
	.quad	.LBB14_214
	.quad	.LBB14_214
	.quad	.LBB14_213
	.quad	.LBB14_161
	.quad	.LBB14_214
	.quad	.LBB14_214
	.quad	.LBB14_213
	.quad	.LBB14_161
	.quad	.LBB14_214
	.quad	.LBB14_214
	.quad	.LBB14_213
	.quad	.LBB14_161
	.quad	.LBB14_238
	.quad	.LBB14_238
	.quad	.LBB14_238
	.quad	.LBB14_238
	.quad	.LBB14_214
	.quad	.LBB14_238
	.quad	.LBB14_214
	.quad	.LBB14_238
	.quad	.LBB14_214
	.quad	.LBB14_238
	.quad	.LBB14_214
	.quad	.LBB14_238
	.quad	.LBB14_214
	.quad	.LBB14_238
	.quad	.LBB14_214
	.quad	.LBB14_238
	.quad	.LBB14_214
	.quad	.LBB14_238
	.quad	.LBB14_214
	.quad	.LBB14_238
	.quad	.LBB14_214
	.quad	.LBB14_238
	.quad	.LBB14_214
	.quad	.LBB14_238
	.quad	.LBB14_214
	.quad	.LBB14_238
	.quad	.LBB14_238
	.quad	.LBB14_238
	.quad	.LBB14_214
	.quad	.LBB14_238
	.quad	.LBB14_368
	.quad	.LBB14_238
	.quad	.LBB14_214
	.quad	.LBB14_238
	.quad	.LBB14_221
	.quad	.LBB14_238
	.quad	.LBB14_214
	.quad	.LBB14_238
	.quad	.LBB14_214
	.quad	.LBB14_238
	.quad	.LBB14_214
	.quad	.LBB14_238
	.quad	.LBB14_214
	.quad	.LBB14_238
	.quad	.LBB14_214
	.quad	.LBB14_214
	.quad	.LBB14_213
	.quad	.LBB14_238
	.quad	.LBB14_214
	.quad	.LBB14_238
	.quad	.LBB14_214
	.quad	.LBB14_238
	.quad	.LBB14_214
	.quad	.LBB14_238
	.quad	.LBB14_218
	.quad	.LBB14_238
	.quad	.LBB14_238
	.quad	.LBB14_238
	.quad	.LBB14_14
	.quad	.LBB14_238
	.quad	.LBB14_238
	.quad	.LBB14_238
	.quad	.LBB14_26
	.quad	.LBB14_238
	.quad	.LBB14_238
	.quad	.LBB14_238
	.quad	.LBB14_36
	.quad	.LBB14_238
	.quad	.LBB14_238
	.quad	.LBB14_238
	.quad	.LBB14_50
	.quad	.LBB14_238
	.quad	.LBB14_238
	.quad	.LBB14_238
	.quad	.LBB14_60
	.quad	.LBB14_238
	.quad	.LBB14_238
	.quad	.LBB14_238
	.quad	.LBB14_86
	.quad	.LBB14_238
	.quad	.LBB14_238
	.quad	.LBB14_238
	.quad	.LBB14_111
	.quad	.LBB14_238
	.quad	.LBB14_238
	.quad	.LBB14_238
	.quad	.LBB14_123
	.quad	.LBB14_238
	.quad	.LBB14_238
	.quad	.LBB14_238
	.quad	.LBB14_131
	.quad	.LBB14_238
	.quad	.LBB14_238
	.quad	.LBB14_238
	.quad	.LBB14_141
.LJTI14_3:
	.quad	.LBB14_300
	.quad	.LBB14_300
	.quad	.LBB14_302
	.quad	.LBB14_336
	.quad	.LBB14_365
	.quad	.LBB14_365
	.quad	.LBB14_343
	.quad	.LBB14_347
.LJTI14_4:
	.quad	.LBB14_14
	.quad	.LBB14_26
	.quad	.LBB14_36
	.quad	.LBB14_50
	.quad	.LBB14_60
	.quad	.LBB14_86
	.quad	.LBB14_111
	.quad	.LBB14_123
	.quad	.LBB14_131
	.quad	.LBB14_141
.LJTI14_5:
	.quad	.LBB14_459
	.quad	.LBB14_420
	.quad	.LBB14_419
	.quad	.LBB14_407
	.quad	.LBB14_460
	.quad	.LBB14_418
	.quad	.LBB14_417

	.text
	.align	16, 0x90
	.type	set_gc_signal,@function
set_gc_signal:                          # @set_gc_signal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp85:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp86:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp87:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp88:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp89:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp90:
	.cfi_def_cfa_offset 96
.Ltmp91:
	.cfi_offset %rbx, -56
.Ltmp92:
	.cfi_offset %r12, -48
.Ltmp93:
	.cfi_offset %r13, -40
.Ltmp94:
	.cfi_offset %r14, -32
.Ltmp95:
	.cfi_offset %r15, -24
.Ltmp96:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %r13
	movq	%rdi, %r14
	movq	24(%r14), %rbp
	testq	%rbp, %rbp
	je	.LBB15_3
# BB#1:
	leaq	(%rsp), %r12
	.align	16, 0x90
.LBB15_2:                               # %for.cond.4
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	callq	*32(%rbp)
	movq	%rax, %rbx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	gs_memory_gc_status
	movq	%r13, 16(%rsp)
	movl	%r15d, 24(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	gs_memory_set_gc_status
	cmpq	%rbp, %rbx
	movq	%rbx, %rbp
	jne	.LBB15_2
.LBB15_3:                               # %cleanup
	movq	32(%r14), %rbp
	testq	%rbp, %rbp
	je	.LBB15_6
# BB#4:
	leaq	(%rsp), %r12
	.align	16, 0x90
.LBB15_5:                               # %for.cond.4.1
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	callq	*32(%rbp)
	movq	%rax, %rbx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	gs_memory_gc_status
	movq	%r13, 16(%rsp)
	movl	%r15d, 24(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	gs_memory_set_gc_status
	cmpq	%rbp, %rbx
	movq	%rbx, %rbp
	jne	.LBB15_5
.LBB15_6:                               # %cleanup.1
	movq	40(%r14), %rbp
	testq	%rbp, %rbp
	je	.LBB15_9
# BB#7:
	leaq	(%rsp), %r12
	.align	16, 0x90
.LBB15_8:                               # %for.cond.4.2
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	callq	*32(%rbp)
	movq	%rax, %rbx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	gs_memory_gc_status
	movq	%r13, 16(%rsp)
	movl	%r15d, 24(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	gs_memory_set_gc_status
	cmpq	%rbp, %rbx
	movq	%rbx, %rbp
	jne	.LBB15_8
.LBB15_9:                               # %cleanup.2
	movq	48(%r14), %rbp
	testq	%rbp, %rbp
	je	.LBB15_12
# BB#10:
	leaq	(%rsp), %r14
	.align	16, 0x90
.LBB15_11:                              # %for.cond.4.3
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	callq	*32(%rbp)
	movq	%rax, %rbx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	gs_memory_gc_status
	movq	%r13, 16(%rsp)
	movl	%r15d, 24(%rsp)
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	gs_memory_set_gc_status
	cmpq	%rbp, %rbx
	movq	%rbx, %rbp
	jne	.LBB15_11
.LBB15_12:                              # %cleanup.3
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	set_gc_signal, .Lfunc_end15-set_gc_signal
	.cfi_endproc

	.globl	gs_errorname
	.align	16, 0x90
	.type	gs_errorname,@function
gs_errorname:                           # @gs_errorname
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp98:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp99:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp100:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp101:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp102:
	.cfi_def_cfa_offset 64
.Ltmp103:
	.cfi_offset %rbx, -48
.Ltmp104:
	.cfi_offset %r12, -40
.Ltmp105:
	.cfi_offset %r14, -32
.Ltmp106:
	.cfi_offset %r15, -24
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %r12
	leaq	504(%r12), %rbx
	leaq	8(%rsp), %rdx
	movl	$.L.str.26, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	movl	$-21, %ebp
	testl	%eax, %eax
	jle	.LBB16_3
# BB#1:                                 # %lor.lhs.false
	leaq	(%rsp), %rdx
	movl	$.L.str.27, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB16_3
# BB#2:                                 # %if.end
	movq	8(%r12), %rdi
	movq	(%rsp), %rsi
	notl	%r15d
	movslq	%r15d, %rdx
	movq	%r14, %rcx
	callq	array_get
	movl	%eax, %ebp
.LBB16_3:                               # %cleanup
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gs_errorname, .Lfunc_end16-gs_errorname
	.cfi_endproc

	.globl	gs_errorinfo_put_string
	.align	16, 0x90
	.type	gs_errorinfo_put_string,@function
gs_errorinfo_put_string:                # @gs_errorinfo_put_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp108:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp109:
	.cfi_def_cfa_offset 48
.Ltmp110:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	8(%rbx), %rdx
	leaq	16(%rsp), %rax
	movl	$.L.str.28, %ecx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	string_to_ref
	testl	%eax, %eax
	js	.LBB17_4
# BB#1:                                 # %if.end
	leaq	504(%rbx), %rdi
	leaq	8(%rsp), %rdx
	movl	$.L.str.29, %esi
	callq	dict_find_string
	movl	%eax, %ecx
	movl	$-100, %eax
	testl	%ecx, %ecx
	jle	.LBB17_4
# BB#2:                                 # %lor.lhs.false
	movq	8(%rsp), %rdi
	movzbl	1(%rdi), %ecx
	cmpl	$2, %ecx
	jne	.LBB17_4
# BB#3:                                 # %lor.lhs.false.5
	addq	$368, %rbx              # imm = 0x170
	leaq	16(%rsp), %rdx
	movl	$.L.str.30, %esi
	movq	%rbx, %rcx
	callq	dict_put_string
	sarl	$31, %eax
	andl	$-100, %eax
.LBB17_4:                               # %cleanup
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end17:
	.size	gs_errorinfo_put_string, .Lfunc_end17-gs_errorinfo_put_string
	.cfi_endproc

	.align	16, 0x90
	.type	copy_stack,@function
copy_stack:                             # @copy_stack
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp112:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp113:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp114:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp115:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp116:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp117:
	.cfi_def_cfa_offset 80
.Ltmp118:
	.cfi_offset %rbx, -56
.Ltmp119:
	.cfi_offset %r12, -48
.Ltmp120:
	.cfi_offset %r13, -40
.Ltmp121:
	.cfi_offset %r14, -32
.Ltmp122:
	.cfi_offset %r15, -24
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %ebx
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	%r15, %rdi
	callq	ref_stack_count
	subl	%ebx, %eax
	leaq	8(%r12), %r13
	movl	56(%r12), %ecx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	cmpl	$65535, %eax            # imm = 0xFFFF
	movl	$65535, %ebp            # imm = 0xFFFF
	cmovbel	%eax, %ebp
	movl	$12, %esi
	movq	%r13, %rdi
	callq	ialloc_set_space
	movq	8(%r12), %rdi
	movl	$112, %edx
	movl	$.L.str.33, %r8d
	movq	%r14, %rsi
	movl	%ebp, %ecx
	callq	gs_alloc_ref_array
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB18_2
# BB#1:                                 # %if.then.5
	movq	%r13, (%rsp)
	movq	$.L.str.33, 8(%rsp)
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movl	$1, %r9d
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	%ebp, %edx
	callq	ref_stack_store
	movl	%eax, %ebx
.LBB18_2:                               # %if.end.8
	movq	%r13, %rdi
	movl	20(%rsp), %esi          # 4-byte Reload
	callq	ialloc_set_space
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	copy_stack, .Lfunc_end18-copy_stack
	.cfi_endproc

	.align	16, 0x90
	.type	errorexec_find,@function
errorexec_find:                         # @errorexec_find
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp125:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp126:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp127:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp128:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp129:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp130:
	.cfi_def_cfa_offset 64
.Ltmp131:
	.cfi_offset %rbx, -56
.Ltmp132:
	.cfi_offset %r12, -48
.Ltmp133:
	.cfi_offset %r13, -40
.Ltmp134:
	.cfi_offset %r14, -32
.Ltmp135:
	.cfi_offset %r15, -24
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r12
	leaq	520(%r12), %r13
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	ref_stack_index
	movl	$1, %ebx
	testq	%rax, %rax
	je	.LBB19_12
# BB#1:
	movq	%r14, (%rsp)            # 8-byte Spill
	movl	$oparray_cleanup, %ebp
	movl	$oparray_no_cleanup, %r14d
	movl	$errorexec_cleanup, %r15d
	.align	16, 0x90
.LBB19_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rax), %ecx
	andl	$16256, %ecx            # imm = 0x3F80
	cmpl	$3712, %ecx             # imm = 0xE80
	jne	.LBB19_10
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB19_2 Depth=1
	movq	8(%rax), %rcx
	cmpq	%rbp, %rcx
	je	.LBB19_4
# BB#6:                                 # %if.end.11
                                        #   in Loop: Header=BB19_2 Depth=1
	cmpq	%r14, %rcx
	je	.LBB19_11
# BB#7:                                 # %if.end.17
                                        #   in Loop: Header=BB19_2 Depth=1
	cmpq	%r15, %rcx
	jne	.LBB19_10
	jmp	.LBB19_8
.LBB19_4:                               # %if.then.5
                                        #   in Loop: Header=BB19_2 Depth=1
	movl	24(%rax), %esi
	testl	%esi, %esi
	jne	.LBB19_5
	.align	16, 0x90
.LBB19_10:                              # %for.inc
                                        #   in Loop: Header=BB19_2 Depth=1
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	ref_stack_index
	incq	%rbx
	testq	%rax, %rax
	jne	.LBB19_2
.LBB19_11:
	xorl	%ebp, %ebp
.LBB19_12:                              # %cleanup.34
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB19_8:                               # %if.then.22
	movzbl	17(%rax), %ecx
	cmpl	$14, %ecx
	movl	$0, %ebp
	je	.LBB19_12
# BB#9:                                 # %if.end.30
	addq	$16, %rax
	movups	(%rax), %xmm0
	movq	(%rsp), %rax            # 8-byte Reload
	movups	%xmm0, (%rax)
	movl	$1, %ebp
	jmp	.LBB19_12
.LBB19_5:                               # %if.end
	movq	8(%r12), %rdi
	movq	(%rsp), %rdx            # 8-byte Reload
	callq	op_index_ref
	movl	$1, %ebp
	jmp	.LBB19_12
.Lfunc_end19:
	.size	errorexec_find, .Lfunc_end19-errorexec_find
	.cfi_endproc

	.align	16, 0x90
	.type	oparray_cleanup,@function
oparray_cleanup:                        # @oparray_cleanup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp137:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp138:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp139:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp140:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp141:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp142:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp143:
	.cfi_def_cfa_offset 64
.Ltmp144:
	.cfi_offset %rbx, -56
.Ltmp145:
	.cfi_offset %r12, -48
.Ltmp146:
	.cfi_offset %r13, -40
.Ltmp147:
	.cfi_offset %r14, -32
.Ltmp148:
	.cfi_offset %r15, -24
.Ltmp149:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	520(%rbx), %rax
	movl	56(%rax), %r13d
	movl	72(%rax), %r12d
	leaq	624(%rbx), %r14
	movq	%r14, %rdi
	callq	ref_stack_count
	movl	%eax, %ebp
	addq	$368, %rbx              # imm = 0x170
	movq	%rbx, %rdi
	callq	ref_stack_count
	movl	%eax, %r15d
	subl	%r13d, %ebp
	jbe	.LBB20_2
# BB#1:                                 # %if.then
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	ref_stack_pop
.LBB20_2:                               # %if.end
	subl	%r12d, %r15d
	jbe	.LBB20_4
# BB#3:                                 # %if.then.13
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	ref_stack_pop
	movq	%rbx, %rdi
	callq	dstack_set_top
.LBB20_4:                               # %if.end.18
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	oparray_cleanup, .Lfunc_end20-oparray_cleanup
	.cfi_endproc

	.align	16, 0x90
	.type	oparray_no_cleanup,@function
oparray_no_cleanup:                     # @oparray_no_cleanup
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end21:
	.size	oparray_no_cleanup, .Lfunc_end21-oparray_no_cleanup
	.cfi_endproc

	.align	16, 0x90
	.type	errorexec_cleanup,@function
errorexec_cleanup:                      # @errorexec_cleanup
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end22:
	.size	errorexec_cleanup, .Lfunc_end22-errorexec_cleanup
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"dict_stack_t"
	.size	.L.str, 13

	.type	dict_stack_reloc_ptrs,@object # @dict_stack_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
dict_stack_reloc_ptrs:
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	st_ref_stack
	.quad	0
	.size	dict_stack_reloc_ptrs, 24

	.type	st_dict_stack,@object   # @st_dict_stack
	.globl	st_dict_stack
	.align	8
st_dict_stack:
	.long	152                     # 0x98
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	dict_stack_reloc_ptrs
	.size	st_dict_stack, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"exec_stack_t"
	.size	.L.str.1, 13

	.type	exec_stack_reloc_ptrs,@object # @exec_stack_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
exec_stack_reloc_ptrs:
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	st_ref_stack
	.quad	0
	.size	exec_stack_reloc_ptrs, 24

	.type	st_exec_stack,@object   # @st_exec_stack
	.globl	st_exec_stack
	.align	8
st_exec_stack:
	.long	104                     # 0x68
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	exec_stack_reloc_ptrs
	.size	st_exec_stack, 64

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"op_stack_t"
	.size	.L.str.2, 11

	.type	op_stack_reloc_ptrs,@object # @op_stack_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
op_stack_reloc_ptrs:
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	st_ref_stack
	.quad	0
	.size	op_stack_reloc_ptrs, 24

	.type	st_op_stack,@object     # @st_op_stack
	.globl	st_op_stack
	.align	8
st_op_stack:
	.long	96                      # 0x60
	.zero	4
	.quad	.L.str.2
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	op_stack_reloc_ptrs
	.size	st_op_stack, 64

	.type	gs_interp_max_op_num_args,@object # @gs_interp_max_op_num_args
	.globl	gs_interp_max_op_num_args
	.align	4
gs_interp_max_op_num_args:
	.long	16                      # 0x10
	.size	gs_interp_max_op_num_args, 4

	.type	gs_interp_num_special_ops,@object # @gs_interp_num_special_ops
	.globl	gs_interp_num_special_ops
	.align	4
gs_interp_num_special_ops:
	.long	10                      # 0xa
	.size	gs_interp_num_special_ops, 4

	.type	tx_next_index,@object   # @tx_next_index
	.globl	tx_next_index
	.align	4
tx_next_index:
	.long	31                      # 0x1f
	.size	tx_next_index, 4

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"systemdict"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"2add"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"2def"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"1dup"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"2exch"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"2if"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"3ifelse"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"1index"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"1pop"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"2roll"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"2sub"
	.size	.L.str.13, 5

	.type	interp1_op_defs,@object # @interp1_op_defs
	.section	.rodata,"a",@progbits
	.globl	interp1_op_defs
	.align	16
interp1_op_defs:
	.quad	.L.str.3
	.quad	0
	.quad	.L.str.4
	.quad	zadd
	.quad	.L.str.5
	.quad	zdef
	.quad	.L.str.6
	.quad	zdup
	.quad	.L.str.7
	.quad	zexch
	.quad	.L.str.8
	.quad	zif
	.quad	.L.str.9
	.quad	zifelse
	.quad	.L.str.10
	.quad	zindex
	.quad	.L.str.11
	.quad	zpop
	.quad	.L.str.12
	.quad	zroll
	.quad	.L.str.13
	.quad	zsub
	.zero	16
	.size	interp1_op_defs, 192

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"0.currentstackprotect"
	.size	.L.str.14, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"1.setstackprotect"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"2.errorexec"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"0.finderrorobject"
	.size	.L.str.17, 18

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"0%interp_exit"
	.size	.L.str.18, 14

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"0%oparray_pop"
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"0%errorexec_pop"
	.size	.L.str.20, 16

	.type	interp2_op_defs,@object # @interp2_op_defs
	.section	.rodata,"a",@progbits
	.globl	interp2_op_defs
	.align	16
interp2_op_defs:
	.quad	.L.str.14
	.quad	zcurrentstackprotect
	.quad	.L.str.15
	.quad	zsetstackprotect
	.quad	.L.str.16
	.quad	zerrorexec
	.quad	.L.str.17
	.quad	zfinderrorobject
	.quad	.L.str.18
	.quad	interp_exit
	.quad	.L.str.19
	.quad	oparray_pop
	.quad	.L.str.20
	.quad	errorexec_pop
	.zero	16
	.size	interp2_op_defs, 128

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"./psi/interp.c"
	.size	.L.str.21, 15

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Fatal error %d in gs_interp_init!"
	.size	.L.str.22, 34

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gs_interp_alloc_stacks"
	.size	.L.str.23, 23

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"interp_reclaim(pi_ctx_p)"
	.size	.L.str.24, 25

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gs_interpret"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"errordict"
	.size	.L.str.26, 10

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"ErrorNames"
	.size	.L.str.27, 11

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gs_errorinfo_put_string"
	.size	.L.str.28, 24

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"$error"
	.size	.L.str.29, 7

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"errorinfo"
	.size	.L.str.30, 10

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gs_call_interp(epref)"
	.size	.L.str.31, 22

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gserrordict"
	.size	.L.str.32, 12

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"copy_stack"
	.size	.L.str.33, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
