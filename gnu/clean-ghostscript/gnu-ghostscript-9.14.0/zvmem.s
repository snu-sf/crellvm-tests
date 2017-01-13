	.text
	.file	"zvmem.bc"
	.globl	ivalidate_clean_spaces
	.align	16, 0x90
	.type	ivalidate_clean_spaces,@function
ivalidate_clean_spaces:                 # @ivalidate_clean_spaces
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$63, %edi
	callq	gs_debug_c
	testl	%eax, %eax
	je	.LBB0_1
# BB#2:                                 # %if.then
	leaq	368(%rbx), %rdi
	callq	ref_stack_cleanup
	leaq	520(%rbx), %rdi
	callq	ref_stack_cleanup
	leaq	624(%rbx), %rdi
	callq	ref_stack_cleanup
	addq	$8, %rbx
	movq	%rbx, %rdi
	popq	%rbx
	jmp	ialloc_validate_spaces  # TAILCALL
.LBB0_1:                                # %if.end
	popq	%rbx
	retq
.Lfunc_end0:
	.size	ivalidate_clean_spaces, .Lfunc_end0-ivalidate_clean_spaces
	.cfi_endproc

	.globl	zsave
	.align	16, 0x90
	.type	zsave,@function
zsave:                                  # @zsave
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp4:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp5:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp7:
	.cfi_def_cfa_offset 64
.Ltmp8:
	.cfi_offset %rbx, -48
.Ltmp9:
	.cfi_offset %r12, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r12
	leaq	8(%rbx), %r14
	movl	56(%rbx), %ebp
	movl	$63, %edi
	callq	gs_debug_c
	testl	%eax, %eax
	je	.LBB1_2
# BB#1:                                 # %if.then.i
	leaq	368(%rbx), %rdi
	callq	ref_stack_cleanup
	leaq	520(%rbx), %rdi
	callq	ref_stack_cleanup
	leaq	624(%rbx), %rdi
	callq	ref_stack_cleanup
	movq	%r14, %rdi
	callq	ialloc_validate_spaces
.LBB1_2:                                # %ivalidate_clean_spaces.exit
	movl	$12, %esi
	movq	%r14, %rdi
	callq	ialloc_set_space
	movq	(%r14), %rdi
	movl	$st_vm_save, %esi
	movl	$.L.str, %edx
	callq	*72(%rdi)
	movq	%rax, %r15
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	ialloc_set_space
	movl	$-25, %ebp
	testq	%r15, %r15
	je	.LBB1_12
# BB#3:                                 # %if.end
	movq	$0, (%r15)
	leaq	8(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	alloc_save_state
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_12
# BB#4:                                 # %if.end.10
	cmpq	$0, 8(%rsp)
	je	.LBB1_5
# BB#6:                                 # %do.end
	movq	(%rbx), %rdi
	leaq	(%rsp), %rsi
	callq	gs_gsave_for_save
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_12
# BB#7:                                 # %if.end.22
	movq	(%rbx), %rdi
	callq	gs_gsave
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_12
# BB#8:                                 # %if.end.27
	movq	(%rsp), %rax
	movq	%rax, (%r15)
	leaq	16(%r12), %rax
	cmpq	640(%rbx), %rax
	jbe	.LBB1_10
# BB#9:                                 # %if.then.33
	movl	$1, 688(%rbx)
	movl	$-16, %ebp
	jmp	.LBB1_12
.LBB1_5:                                # %if.then.12
	movq	(%r14), %rdi
	movl	$.L.str, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	movl	$-25, %ebp
	jmp	.LBB1_12
.LBB1_10:                               # %if.else
	movq	%rax, 624(%rbx)
	movq	8(%rsp), %rax
	movq	%rax, 24(%r12)
	movw	$4352, 16(%r12)         # imm = 0x1100
	movl	$63, %edi
	callq	gs_debug_c
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB1_12
# BB#11:                                # %if.then.i.37
	leaq	368(%rbx), %rdi
	callq	ref_stack_cleanup
	leaq	520(%rbx), %rdi
	callq	ref_stack_cleanup
	addq	$624, %rbx              # imm = 0x270
	movq	%rbx, %rdi
	callq	ref_stack_cleanup
	movq	%r14, %rdi
	callq	ialloc_validate_spaces
.LBB1_12:                               # %cleanup
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	zsave, .Lfunc_end1-zsave
	.cfi_endproc

	.globl	zrestore
	.align	16, 0x90
	.type	zrestore,@function
zrestore:                               # @zrestore
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
	subq	$40, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 96
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
	movq	624(%rbx), %rdi
	leaq	8(%rbx), %r14
	movzbl	1(%rdi), %eax
	cmpl	$17, %eax
	jne	.LBB2_3
# BB#1:                                 # %if.end.i
	movq	8(%rdi), %rsi
	movl	$-11, %ebp
	testq	%rsi, %rsi
	je	.LBB2_32
# BB#2:                                 # %if.end.5.i
	movq	%r14, %rdi
	callq	alloc_find_save
	movq	%rax, %r12
	testq	%r12, %r12
	jne	.LBB2_4
	jmp	.LBB2_32
.LBB2_3:                                # %restore_check_operand.exit
	callq	check_type_failed
	movl	%eax, %ebp
	testl	%ebp, %ebp
                                        # implicit-def: R12
	js	.LBB2_32
.LBB2_4:                                # %do.end
	leaq	624(%rbx), %r15
	movl	$63, %edi
	callq	gs_debug_c
	testl	%eax, %eax
	je	.LBB2_6
# BB#5:                                 # %if.then.i.40
	leaq	368(%rbx), %rdi
	callq	ref_stack_cleanup
	leaq	520(%rbx), %rdi
	callq	ref_stack_cleanup
	movq	%r15, %rdi
	callq	ref_stack_cleanup
	movq	%r14, %rdi
	callq	ialloc_validate_spaces
.LBB2_6:                                # %ivalidate_clean_spaces.exit
	addq	$-16, 624(%rbx)
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	restore_check_stack
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_9
# BB#7:                                 # %lor.lhs.false
	leaq	520(%rbx), %r13
	movl	$1, %ecx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	restore_check_stack
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_9
# BB#8:                                 # %lor.lhs.false.12
	leaq	368(%rbx), %rsi
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	restore_check_stack
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_9
# BB#10:                                # %cleanup.cont
	leaq	16(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	ref_stack_enum_begin
	.align	16, 0x90
.LBB2_11:                               # %do.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_14 Depth 2
                                        #     Child Loop BB2_16 Depth 2
	movl	32(%rsp), %eax
	testl	%eax, %eax
	je	.LBB2_17
# BB#12:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB2_11 Depth=1
	movq	24(%rsp), %rcx
	leal	-1(%rax), %edx
	testb	$3, %al
	je	.LBB2_15
# BB#13:                                # %for.body.i.prol.preheader
                                        #   in Loop: Header=BB2_11 Depth=1
	movl	%eax, %esi
	andl	$3, %esi
	negl	%esi
	.align	16, 0x90
.LBB2_14:                               # %for.body.i.prol
                                        #   Parent Loop BB2_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andb	$-3, (%rcx)
	addq	$16, %rcx
	decl	%eax
	incl	%esi
	jne	.LBB2_14
.LBB2_15:                               # %for.body.lr.ph.i.split
                                        #   in Loop: Header=BB2_11 Depth=1
	cmpl	$3, %edx
	jb	.LBB2_17
	.align	16, 0x90
.LBB2_16:                               # %for.body.i
                                        #   Parent Loop BB2_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andb	$-3, (%rcx)
	andb	$-3, 16(%rcx)
	andb	$-3, 32(%rcx)
	andb	$-3, 48(%rcx)
	addq	$64, %rcx
	addl	$-4, %eax
	jne	.LBB2_16
.LBB2_17:                               # %for.end.i
                                        #   in Loop: Header=BB2_11 Depth=1
	movq	%rbp, %rdi
	callq	ref_stack_enum_next
	testl	%eax, %eax
	jne	.LBB2_11
# BB#18:                                # %restore_fix_stack.exit
	movl	$1, %ecx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	restore_fix_stack
	leaq	16(%rsp), %rbp
	movq	%rbp, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	ref_stack_enum_begin
	.align	16, 0x90
.LBB2_19:                               # %do.body.i.47
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_22 Depth 2
                                        #     Child Loop BB2_24 Depth 2
	movl	32(%rsp), %eax
	testl	%eax, %eax
	je	.LBB2_25
# BB#20:                                # %for.body.lr.ph.i.48
                                        #   in Loop: Header=BB2_19 Depth=1
	movq	24(%rsp), %rcx
	leal	-1(%rax), %edx
	testb	$3, %al
	je	.LBB2_23
# BB#21:                                # %for.body.i.53.prol.preheader
                                        #   in Loop: Header=BB2_19 Depth=1
	movl	%eax, %esi
	andl	$3, %esi
	negl	%esi
	.align	16, 0x90
.LBB2_22:                               # %for.body.i.53.prol
                                        #   Parent Loop BB2_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andb	$-3, (%rcx)
	addq	$16, %rcx
	decl	%eax
	incl	%esi
	jne	.LBB2_22
.LBB2_23:                               # %for.body.lr.ph.i.48.split
                                        #   in Loop: Header=BB2_19 Depth=1
	cmpl	$3, %edx
	jb	.LBB2_25
	.align	16, 0x90
.LBB2_24:                               # %for.body.i.53
                                        #   Parent Loop BB2_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andb	$-3, (%rcx)
	andb	$-3, 16(%rcx)
	andb	$-3, 32(%rcx)
	andb	$-3, 48(%rcx)
	addq	$64, %rcx
	addl	$-4, %eax
	jne	.LBB2_24
.LBB2_25:                               # %for.end.i.59
                                        #   in Loop: Header=BB2_19 Depth=1
	movq	%rbp, %rdi
	callq	ref_stack_enum_next
	testl	%eax, %eax
	jne	.LBB2_19
# BB#26:                                # %restore_fix_stack.exit60
	movq	%r13, (%rsp)            # 8-byte Spill
	.align	16, 0x90
.LBB2_27:                               # %do.body.28
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	callq	alloc_save_current
	movq	%rax, %rdi
	callq	alloc_save_client_data
	movq	%rax, %r13
	movq	(%rbx), %rdi
	movq	(%r13), %rsi
	callq	gs_grestoreall_for_restore
	movq	$0, (%r13)
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	alloc_restore_step_in
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_32
# BB#28:                                # %if.end.38
                                        #   in Loop: Header=BB2_27 Depth=1
	je	.LBB2_27
# BB#29:                                # %do.end.40
	movl	56(%rbx), %ebp
	movl	$12, %esi
	movq	%r14, %rdi
	callq	ialloc_set_space
	movq	8(%rbx), %rdi
	movl	$.L.str.1, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	ialloc_set_space
	movq	8(%rsp), %rbp           # 8-byte Reload
	movq	%rbp, %rdi
	callq	dstack_set_top
	movl	$63, %edi
	callq	gs_debug_c
	testl	%eax, %eax
	je	.LBB2_31
# BB#30:                                # %if.then.i.67
	movq	%rbp, %rdi
	callq	ref_stack_cleanup
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	ref_stack_cleanup
	movq	%r15, %rdi
	callq	ref_stack_cleanup
	movq	%r14, %rdi
	callq	ialloc_validate_spaces
.LBB2_31:                               # %ivalidate_clean_spaces.exit69
	movl	$0, 188(%rbx)
	xorl	%ebp, %ebp
	jmp	.LBB2_32
.LBB2_9:                                # %cleanup
	addq	$16, (%r15)
.LBB2_32:                               # %cleanup.48
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	zrestore, .Lfunc_end2-zrestore
	.cfi_endproc

	.align	16, 0x90
	.type	restore_check_stack,@function
restore_check_stack:                    # @restore_check_stack
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
	subq	$40, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 96
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
	movl	%ecx, %ebp
	movq	%rdx, %rbx
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r15
	leaq	16(%rsp), %r14
	movq	%r14, %rdi
	callq	ref_stack_enum_begin
	leaq	8(%r15), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	.align	16, 0x90
.LBB3_1:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	movl	32(%rsp), %r12d
	testl	%r12d, %r12d
	je	.LBB3_25
# BB#2:                                 # %for.body.lr.ph
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	24(%rsp), %r13
	.align	16, 0x90
.LBB3_3:                                # %for.body
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%r13), %eax
	addl	$-2, %eax
	cmpl	$17, %eax
	ja	.LBB3_24
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB3_3 Depth=2
	jmpq	*.LJTI3_0(,%rax,8)
.LBB3_16:                               # %sw.bb.44
                                        #   in Loop: Header=BB3_3 Depth=2
	cmpl	$0, 4(%r13)
	je	.LBB3_24
.LBB3_17:                               # %sw.bb.54
                                        #   in Loop: Header=BB3_3 Depth=2
	movq	8(%r13), %rdi
	jmp	.LBB3_21
.LBB3_7:                                # %sw.bb.7
                                        #   in Loop: Header=BB3_3 Depth=2
	testl	%ebp, %ebp
	je	.LBB3_8
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB3_3 Depth=2
	testb	$-128, (%r13)
	jne	.LBB3_24
# BB#10:                                # %lor.lhs.false
                                        #   in Loop: Header=BB3_3 Depth=2
	movq	8(%r13), %rdi
	movw	266(%rdi), %ax
	orw	264(%rdi), %ax
	movzwl	%ax, %eax
	cmpl	4(%r13), %eax
	je	.LBB3_21
	jmp	.LBB3_24
.LBB3_5:                                # %sw.bb
                                        #   in Loop: Header=BB3_3 Depth=2
	cmpl	$0, 4(%r13)
	je	.LBB3_24
.LBB3_6:                                # %sw.bb.5
                                        #   in Loop: Header=BB3_3 Depth=2
	movq	8(%r13), %rdi
	jmp	.LBB3_21
.LBB3_11:                               # %sw.bb.24
                                        #   in Loop: Header=BB3_3 Depth=2
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	88(%rax), %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	alloc_name_is_since_save
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leal	1(%rax,%rax,4), %ecx
	jmp	.LBB3_22
.LBB3_18:                               # %sw.bb.56
                                        #   in Loop: Header=BB3_3 Depth=2
	cmpl	$3, 80(%r15)
	jl	.LBB3_24
# BB#19:                                # %if.end.60
                                        #   in Loop: Header=BB3_3 Depth=2
	movq	8(%r13), %rsi
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	alloc_find_save
	movq	%rax, %rdi
	movl	$-11, %eax
	testq	%rdi, %rdi
	je	.LBB3_26
# BB#20:                                # %if.end.67
                                        #   in Loop: Header=BB3_3 Depth=2
	cmpq	%rbx, %rdi
	jne	.LBB3_21
	jmp	.LBB3_24
.LBB3_12:                               # %sw.bb.28
                                        #   in Loop: Header=BB3_3 Depth=2
	cmpl	$0, 4(%r13)
	jne	.LBB3_15
# BB#13:                                # %land.lhs.true.33
                                        #   in Loop: Header=BB3_3 Depth=2
	testl	%ebp, %ebp
	je	.LBB3_15
# BB#14:                                # %land.lhs.true.33
                                        #   in Loop: Header=BB3_3 Depth=2
	movzwl	(%r13), %eax
	andl	$128, %eax
	testw	%ax, %ax
	jne	.LBB3_24
.LBB3_15:                               # %if.end.42
                                        #   in Loop: Header=BB3_3 Depth=2
	movq	8(%r13), %rdi
	jmp	.LBB3_21
.LBB3_8:                                # %sw.bb.7.cleanup.cont_crit_edge
                                        #   in Loop: Header=BB3_3 Depth=2
	movq	8(%r13), %rdi
	.align	16, 0x90
.LBB3_21:                               # %sw.epilog
                                        #   in Loop: Header=BB3_3 Depth=2
	movq	%rbx, %rsi
	callq	alloc_is_since_save
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ecx
.LBB3_22:                               # %cleanup.76
                                        #   in Loop: Header=BB3_3 Depth=2
	cmpl	$6, %ecx
	je	.LBB3_24
# BB#23:                                # %cleanup.76
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	$-11, %eax
	testl	%ecx, %ecx
	jne	.LBB3_26
	.align	16, 0x90
.LBB3_24:                               # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=2
	addq	$16, %r13
	decl	%r12d
	jne	.LBB3_3
.LBB3_25:                               # %do.cond
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	%r14, %rdi
	callq	ref_stack_enum_next
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB3_1
.LBB3_26:                               # %cleanup.85
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	restore_check_stack, .Lfunc_end3-restore_check_stack
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_6
	.quad	.LBB3_7
	.quad	.LBB3_5
	.quad	.LBB3_16
	.quad	.LBB3_16
	.quad	.LBB3_24
	.quad	.LBB3_17
	.quad	.LBB3_17
	.quad	.LBB3_17
	.quad	.LBB3_24
	.quad	.LBB3_24
	.quad	.LBB3_11
	.quad	.LBB3_24
	.quad	.LBB3_24
	.quad	.LBB3_24
	.quad	.LBB3_18
	.quad	.LBB3_12
	.quad	.LBB3_17

	.text
	.align	16, 0x90
	.type	restore_fix_stack,@function
restore_fix_stack:                      # @restore_fix_stack
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp42:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp43:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp45:
	.cfi_def_cfa_offset 80
.Ltmp46:
	.cfi_offset %rbx, -56
.Ltmp47:
	.cfi_offset %r12, -48
.Ltmp48:
	.cfi_offset %r13, -40
.Ltmp49:
	.cfi_offset %r14, -32
.Ltmp50:
	.cfi_offset %r15, -24
.Ltmp51:
	.cfi_offset %rbp, -16
	movl	%ecx, %r13d
	movq	%rdx, %r14
	movq	%rdi, %r15
	leaq	(%rsp), %rdi
	callq	ref_stack_enum_begin
	.align	16, 0x90
.LBB4_1:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_3 Depth 2
	movl	16(%rsp), %ebp
	testl	%ebp, %ebp
	je	.LBB4_13
# BB#2:                                 # %for.body.lr.ph
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	8(%rsp), %rbx
	.align	16, 0x90
.LBB4_3:                                # %for.body
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rbx), %ecx
	movl	%ecx, %eax
	andl	$65533, %eax            # imm = 0xFFFD
	testl	%r13d, %r13d
	movw	%ax, (%rbx)
	je	.LBB4_12
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB4_3 Depth=2
	movzbl	%ch, %eax  # NOREX
	cmpl	$3, %eax
	jne	.LBB4_5
# BB#9:                                 # %sw.bb.16
                                        #   in Loop: Header=BB4_3 Depth=2
	movq	8(%rbx), %rdi
	movq	%r14, %rsi
	movl	%ecx, %r12d
	callq	alloc_is_since_save
	testl	%eax, %eax
	je	.LBB4_12
# BB#10:                                # %if.then.20
                                        #   in Loop: Header=BB4_3 Depth=2
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	make_invalid_file
	movzwl	(%rbx), %eax
.LBB4_11:                               # %sw.epilog
                                        #   in Loop: Header=BB4_3 Depth=2
	andl	$-241, %eax
	andl	$240, %r12d
	orl	%eax, %r12d
	movw	%r12w, (%rbx)
	jmp	.LBB4_12
	.align	16, 0x90
.LBB4_5:                                # %if.then
                                        #   in Loop: Header=BB4_3 Depth=2
	cmpl	$18, %eax
	jne	.LBB4_12
# BB#6:                                 # %sw.bb
                                        #   in Loop: Header=BB4_3 Depth=2
	cmpl	$0, 4(%rbx)
	jne	.LBB4_12
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB4_3 Depth=2
	movq	8(%rbx), %rdi
	movq	%r14, %rsi
	movl	%ecx, %r12d
	callq	alloc_is_since_save
	testl	%eax, %eax
	je	.LBB4_12
# BB#8:                                 # %if.then.10
                                        #   in Loop: Header=BB4_3 Depth=2
	movq	$0, 8(%rbx)
	movw	$4608, (%rbx)           # imm = 0x1200
	movl	$0, 4(%rbx)
	movw	$4608, %ax              # imm = 0x1200
	jmp	.LBB4_11
	.align	16, 0x90
.LBB4_12:                               # %for.inc
                                        #   in Loop: Header=BB4_3 Depth=2
	addq	$16, %rbx
	decl	%ebp
	jne	.LBB4_3
.LBB4_13:                               # %for.end
                                        #   in Loop: Header=BB4_1 Depth=1
	leaq	(%rsp), %rdi
	callq	ref_stack_enum_next
	testl	%eax, %eax
	jne	.LBB4_1
# BB#14:                                # %do.end
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	restore_fix_stack, .Lfunc_end4-restore_fix_stack
	.cfi_endproc

	.align	16, 0x90
	.type	zforgetsave,@function
zforgetsave:                            # @zforgetsave
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp54:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp55:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp56:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp58:
	.cfi_def_cfa_offset 80
.Ltmp59:
	.cfi_offset %rbx, -56
.Ltmp60:
	.cfi_offset %r12, -48
.Ltmp61:
	.cfi_offset %r13, -40
.Ltmp62:
	.cfi_offset %r14, -32
.Ltmp63:
	.cfi_offset %r15, -24
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movq	624(%r13), %rdi
	leaq	8(%r13), %r14
	movzbl	1(%rdi), %eax
	cmpl	$17, %eax
	jne	.LBB5_3
# BB#1:                                 # %if.end.i
	movq	8(%rdi), %rsi
	xorl	%ebx, %ebx
	testq	%rsi, %rsi
	je	.LBB5_32
# BB#2:                                 # %if.end.5.i
	movq	%r14, %rdi
	callq	alloc_find_save
	movq	%rax, %r12
	testq	%r12, %r12
	jne	.LBB5_4
	jmp	.LBB5_32
.LBB5_3:                                # %restore_check_operand.exit
	callq	check_type_failed
	xorl	%ebx, %ebx
	testl	%eax, %eax
                                        # implicit-def: R12
	js	.LBB5_32
.LBB5_4:                                # %if.end
	leaq	624(%r13), %rbp
	movq	%r12, %rdi
	callq	alloc_save_client_data
	movq	%rax, %r15
	leaq	(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	ref_stack_enum_begin
	.align	16, 0x90
.LBB5_5:                                # %do.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_8 Depth 2
                                        #     Child Loop BB5_10 Depth 2
	movl	16(%rsp), %eax
	testl	%eax, %eax
	je	.LBB5_11
# BB#6:                                 # %for.body.lr.ph.i
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	8(%rsp), %rcx
	leal	-1(%rax), %edx
	testb	$3, %al
	je	.LBB5_9
# BB#7:                                 # %for.body.i.prol.preheader
                                        #   in Loop: Header=BB5_5 Depth=1
	movl	%eax, %esi
	andl	$3, %esi
	negl	%esi
	.align	16, 0x90
.LBB5_8:                                # %for.body.i.prol
                                        #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andb	$-3, (%rcx)
	addq	$16, %rcx
	decl	%eax
	incl	%esi
	jne	.LBB5_8
.LBB5_9:                                # %for.body.lr.ph.i.split
                                        #   in Loop: Header=BB5_5 Depth=1
	cmpl	$3, %edx
	jb	.LBB5_11
	.align	16, 0x90
.LBB5_10:                               # %for.body.i
                                        #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andb	$-3, (%rcx)
	andb	$-3, 16(%rcx)
	andb	$-3, 32(%rcx)
	andb	$-3, 48(%rcx)
	addq	$64, %rcx
	addl	$-4, %eax
	jne	.LBB5_10
.LBB5_11:                               # %for.end.i
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	%rbx, %rdi
	callq	ref_stack_enum_next
	testl	%eax, %eax
	jne	.LBB5_5
# BB#12:                                # %restore_fix_stack.exit
	leaq	520(%r13), %rsi
	leaq	(%rsp), %rbx
	movq	%rbx, %rdi
	callq	ref_stack_enum_begin
	.align	16, 0x90
.LBB5_13:                               # %do.body.i.32
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_16 Depth 2
                                        #     Child Loop BB5_18 Depth 2
	movl	16(%rsp), %eax
	testl	%eax, %eax
	je	.LBB5_19
# BB#14:                                # %for.body.lr.ph.i.33
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	8(%rsp), %rcx
	leal	-1(%rax), %edx
	testb	$3, %al
	je	.LBB5_17
# BB#15:                                # %for.body.i.38.prol.preheader
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	%eax, %esi
	andl	$3, %esi
	negl	%esi
	.align	16, 0x90
.LBB5_16:                               # %for.body.i.38.prol
                                        #   Parent Loop BB5_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andb	$-3, (%rcx)
	addq	$16, %rcx
	decl	%eax
	incl	%esi
	jne	.LBB5_16
.LBB5_17:                               # %for.body.lr.ph.i.33.split
                                        #   in Loop: Header=BB5_13 Depth=1
	cmpl	$3, %edx
	jb	.LBB5_19
	.align	16, 0x90
.LBB5_18:                               # %for.body.i.38
                                        #   Parent Loop BB5_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andb	$-3, (%rcx)
	andb	$-3, 16(%rcx)
	andb	$-3, 32(%rcx)
	andb	$-3, 48(%rcx)
	addq	$64, %rcx
	addl	$-4, %eax
	jne	.LBB5_18
.LBB5_19:                               # %for.end.i.44
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	%rbx, %rdi
	callq	ref_stack_enum_next
	testl	%eax, %eax
	jne	.LBB5_13
# BB#20:                                # %restore_fix_stack.exit45
	leaq	368(%r13), %rsi
	leaq	(%rsp), %rbx
	movq	%rbx, %rdi
	callq	ref_stack_enum_begin
	.align	16, 0x90
.LBB5_21:                               # %do.body.i.50
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_24 Depth 2
                                        #     Child Loop BB5_26 Depth 2
	movl	16(%rsp), %eax
	testl	%eax, %eax
	je	.LBB5_27
# BB#22:                                # %for.body.lr.ph.i.51
                                        #   in Loop: Header=BB5_21 Depth=1
	movq	8(%rsp), %rcx
	leal	-1(%rax), %edx
	testb	$3, %al
	je	.LBB5_25
# BB#23:                                # %for.body.i.56.prol.preheader
                                        #   in Loop: Header=BB5_21 Depth=1
	movl	%eax, %esi
	andl	$3, %esi
	negl	%esi
	.align	16, 0x90
.LBB5_24:                               # %for.body.i.56.prol
                                        #   Parent Loop BB5_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andb	$-3, (%rcx)
	addq	$16, %rcx
	decl	%eax
	incl	%esi
	jne	.LBB5_24
.LBB5_25:                               # %for.body.lr.ph.i.51.split
                                        #   in Loop: Header=BB5_21 Depth=1
	cmpl	$3, %edx
	jb	.LBB5_27
	.align	16, 0x90
.LBB5_26:                               # %for.body.i.56
                                        #   Parent Loop BB5_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andb	$-3, (%rcx)
	andb	$-3, 16(%rcx)
	andb	$-3, 32(%rcx)
	andb	$-3, 48(%rcx)
	addq	$64, %rcx
	addl	$-4, %eax
	jne	.LBB5_26
.LBB5_27:                               # %for.end.i.62
                                        #   in Loop: Header=BB5_21 Depth=1
	movq	%rbx, %rdi
	callq	ref_stack_enum_next
	testl	%eax, %eax
	jne	.LBB5_21
# BB#28:                                # %restore_fix_stack.exit63
	movq	(%r13), %rbx
	.align	16, 0x90
.LBB5_29:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	gs_state_saved
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	gs_state_saved
	testq	%rax, %rax
	jne	.LBB5_29
# BB#30:                                # %while.end
	movq	(%r15), %rsi
	movq	%rbx, %rdi
	callq	gs_state_swap_saved
	movq	%rbx, %rdi
	callq	gs_grestore
	movq	%rbx, %rdi
	callq	gs_grestore
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	alloc_forget_save_in
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB5_32
# BB#31:                                # %if.end.17
	movl	56(%r13), %ebx
	movl	$12, %esi
	movq	%r14, %rdi
	callq	ialloc_set_space
	movq	$0, (%r15)
	movq	8(%r13), %rdi
	movl	$.L.str.1, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	ialloc_set_space
	addq	$-16, 624(%r13)
	xorl	%ebx, %ebx
.LBB5_32:                               # %cleanup
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	zforgetsave, .Lfunc_end5-zforgetsave
	.cfi_endproc

	.align	16, 0x90
	.type	zvmstatus,@function
zvmstatus:                              # @zvmstatus
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp65:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 24
	subq	$72, %rsp
.Ltmp67:
	.cfi_def_cfa_offset 96
.Ltmp68:
	.cfi_offset %rbx, -24
.Ltmp69:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movq	8(%rbx), %rdi
	leaq	48(%rsp), %rsi
	callq	*40(%rdi)
	movq	8(%rbx), %rax
	cmpq	40(%rbx), %rax
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	32(%rbx), %rdi
	leaq	(%rsp), %rsi
	callq	*40(%rdi)
	movdqa	48(%rsp), %xmm0
	paddq	(%rsp), %xmm0
	movdqa	%xmm0, 48(%rsp)
	movq	8(%rbx), %rax
.LBB6_2:                                # %if.end
	movq	200(%rax), %rdi
	leaq	24(%rsp), %rsi
	callq	*40(%rdi)
	leaq	48(%r14), %rax
	cmpq	640(%rbx), %rax
	jbe	.LBB6_4
# BB#3:                                 # %if.then.30
	movl	$3, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB6_5
.LBB6_4:                                # %if.else
	movq	%rax, 624(%rbx)
	movq	48(%rbx), %rdi
	callq	imemory_save_level
	cltq
	movq	%rax, 24(%r14)
	movw	$2816, 16(%r14)         # imm = 0xB00
	movq	56(%rsp), %rax
	movq	%rax, 40(%r14)
	movw	$2816, 32(%r14)         # imm = 0xB00
	movq	24(%rsp), %rax
	addq	48(%rsp), %rax
	subq	32(%rsp), %rax
	movq	%rax, 56(%r14)
	movw	$2816, 48(%r14)         # imm = 0xB00
	xorl	%eax, %eax
.LBB6_5:                                # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end6:
	.size	zvmstatus, .Lfunc_end6-zvmstatus
	.cfi_endproc

	.type	st_vm_save,@object      # @st_vm_save
	.section	.rodata,"a",@progbits
	.align	8
st_vm_save:
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.6
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	vm_save_reloc_ptrs
	.size	st_vm_save, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"zsave"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"zrestore"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"1.forgetsave"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"1restore"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"0save"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"0vmstatus"
	.size	.L.str.5, 10

	.type	zvmem_op_defs,@object   # @zvmem_op_defs
	.section	.rodata,"a",@progbits
	.globl	zvmem_op_defs
	.align	16
zvmem_op_defs:
	.quad	.L.str.2
	.quad	zforgetsave
	.quad	.L.str.3
	.quad	zrestore
	.quad	.L.str.4
	.quad	zsave
	.quad	.L.str.5
	.quad	zvmstatus
	.zero	16
	.size	zvmem_op_defs, 80

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"savetype"
	.size	.L.str.6, 9

	.type	vm_save_reloc_ptrs,@object # @vm_save_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
vm_save_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	vm_save_enum_ptrs
	.size	vm_save_reloc_ptrs, 24

	.type	vm_save_enum_ptrs,@object # @vm_save_enum_ptrs
	.align	2
vm_save_enum_ptrs:
	.zero	4
	.size	vm_save_enum_ptrs, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
