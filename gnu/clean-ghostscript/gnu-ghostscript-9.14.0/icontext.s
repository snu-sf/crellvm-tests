	.text
	.file	"icontext.bc"
	.align	16, 0x90
	.type	context_state_clear_marks,@function
context_state_clear_marks:              # @context_state_clear_marks
	.cfi_startproc
# BB#0:                                 # %entry
	andb	$-2, 208(%rsi)
	andb	$-2, 224(%rsi)
	andb	$-2, 240(%rsi)
	andb	$-2, 152(%rsi)
	andb	$-2, 168(%rsi)
	andb	$-2, 264(%rsi)
	andb	$-2, 304(%rsi)
	retq
.Lfunc_end0:
	.size	context_state_clear_marks, .Lfunc_end0-context_state_clear_marks
	.cfi_endproc

	.align	16, 0x90
	.type	context_state_enum_ptrs,@function
context_state_enum_ptrs:                # @context_state_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%ecx, %eax
	cmpl	$9, %ecx
	jbe	.LBB1_1
# BB#2:                                 # %sw.default
	leal	-10(%rcx), %eax
	cmpl	$9, %ecx
	jg	.LBB1_3
# BB#19:                                # %if.then
	addq	$8, %rsi
	movl	$72, %edx
	movl	$st_gs_dual_memory, %r9d
	movl	%eax, %ecx
	jmpq	*st_gs_dual_memory+32(%rip) # TAILCALL
.LBB1_1:                                # %entry
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_6:                                # %sw.bb
	movq	(%rsi), %rax
	jmp	.LBB1_7
.LBB1_3:                                # %if.end
	cmpl	$1, %eax
	jg	.LBB1_4
# BB#20:                                # %if.then.3
	addq	$368, %rsi              # imm = 0x170
	movl	$152, %edx
	movl	$st_dict_stack, %r9d
	movl	%eax, %ecx
	jmpq	*st_dict_stack+32(%rip) # TAILCALL
.LBB1_4:                                # %if.end.5
	leal	-12(%rcx), %eax
	cmpl	$1, %eax
	jg	.LBB1_5
# BB#21:                                # %if.then.8
	addq	$520, %rsi              # imm = 0x208
	movl	$104, %edx
	movl	$st_exec_stack, %r9d
	movl	%eax, %ecx
	jmpq	*st_exec_stack+32(%rip) # TAILCALL
.LBB1_5:                                # %if.end.10
	addl	$-14, %ecx
	addq	$624, %rsi              # imm = 0x270
	movl	$96, %edx
	movl	$st_op_stack, %r9d
	jmpq	*st_op_stack+32(%rip)   # TAILCALL
.LBB1_8:                                # %sw.bb.13
	addq	$208, %rsi
	jmp	.LBB1_17
.LBB1_9:                                # %sw.bb.15
	addq	$224, %rsi
	jmp	.LBB1_17
.LBB1_10:                               # %sw.bb.19
	addq	$240, %rsi
	jmp	.LBB1_17
.LBB1_11:                               # %sw.bb.23
	addq	$152, %rsi
	jmp	.LBB1_17
.LBB1_12:                               # %sw.bb.25
	addq	$168, %rsi
	jmp	.LBB1_17
.LBB1_13:                               # %sw.bb.27
	movq	280(%rsi), %rax
	jmp	.LBB1_7
.LBB1_14:                               # %sw.bb.29
	movq	320(%rsi), %rax
.LBB1_7:                                # %cleanup
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.LBB1_15:                               # %sw.bb.32
	addq	$264, %rsi              # imm = 0x108
	jmp	.LBB1_17
.LBB1_16:                               # %sw.bb.35
	addq	$304, %rsi              # imm = 0x130
.LBB1_17:                               # %cleanup
	movq	%rsi, (%r8)
	movl	$ptr_ref_procs, %eax
	retq
.Lfunc_end1:
	.size	context_state_enum_ptrs, .Lfunc_end1-context_state_enum_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_6
	.quad	.LBB1_8
	.quad	.LBB1_9
	.quad	.LBB1_10
	.quad	.LBB1_11
	.quad	.LBB1_12
	.quad	.LBB1_13
	.quad	.LBB1_14
	.quad	.LBB1_15
	.quad	.LBB1_16

	.text
	.align	16, 0x90
	.type	context_state_reloc_ptrs,@function
context_state_reloc_ptrs:               # @context_state_reloc_ptrs
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
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movq	(%r14), %rax
	movq	(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, (%rbx)
	leaq	8(%rbx), %rdi
	movl	$72, %esi
	movl	$st_gs_dual_memory, %edx
	movq	%r14, %rcx
	callq	*st_gs_dual_memory+40(%rip)
	movq	(%r14), %rax
	leaq	208(%rbx), %rdi
	leaq	224(%rbx), %r15
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	*40(%rax)
	movq	(%r14), %rax
	leaq	240(%rbx), %r12
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	*40(%rax)
	movq	(%r14), %rax
	leaq	256(%rbx), %rsi
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	*40(%rax)
	movq	(%r14), %rax
	leaq	152(%rbx), %rdi
	leaq	168(%rbx), %r15
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	*40(%rax)
	andb	$-2, 152(%rbx)
	movq	(%r14), %rax
	leaq	184(%rbx), %rsi
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	*40(%rax)
	andb	$-2, 168(%rbx)
	movq	(%r14), %rax
	leaq	264(%rbx), %r15
	leaq	280(%rbx), %r12
	movq	280(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 280(%rbx)
	movq	(%r14), %rax
	leaq	304(%rbx), %r13
	leaq	320(%rbx), %rbp
	movq	320(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 320(%rbx)
	movq	(%r14), %rax
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	*40(%rax)
	andb	$-2, 264(%rbx)
	movq	(%r14), %rax
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%r14, %rdx
	callq	*40(%rax)
	andb	$-2, 304(%rbx)
	leaq	368(%rbx), %rdi
	movl	$152, %esi
	movl	$st_dict_stack, %edx
	movq	%r14, %rcx
	callq	*st_dict_stack+40(%rip)
	leaq	520(%rbx), %rdi
	movl	$104, %esi
	movl	$st_exec_stack, %edx
	movq	%r14, %rcx
	callq	*st_exec_stack+40(%rip)
	addq	$624, %rbx              # imm = 0x270
	movl	$96, %esi
	movl	$st_op_stack, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*st_op_stack+40(%rip)   # TAILCALL
.Lfunc_end2:
	.size	context_state_reloc_ptrs, .Lfunc_end2-context_state_reloc_ptrs
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI3_0:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.text
	.globl	context_state_alloc
	.align	16, 0x90
	.type	context_state_alloc,@function
context_state_alloc:                    # @context_state_alloc
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
	movq	%rdx, %r15
	movq	%rsi, %r13
	movq	%rdi, %r14
	movq	40(%r15), %r12
	movq	(%r14), %rbx
	testq	%rbx, %rbx
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$st_context_state, %esi
	movl	$.L.str.1, %edx
	movq	%r12, %rdi
	callq	*72(%r12)
	movq	%rax, %rbx
	movl	$-25, %ebp
	testq	%rbx, %rbx
	je	.LBB3_21
.LBB3_2:                                # %if.end.3
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	gs_interp_alloc_stacks
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB3_19
# BB#3:                                 # %if.end.7
	movups	(%r13), %xmm0
	movups	%xmm0, 504(%rbx)
	movq	$0, 464(%rbx)
	movq	%r15, %rdi
	callq	int_gstate_alloc
	movq	%rax, (%rbx)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB3_18
# BB#4:                                 # %if.end.14
	leaq	504(%rbx), %rdi
	movq	64(%r15), %rax
	movq	%rax, 72(%rbx)
	movups	(%r15), %xmm0
	movups	16(%r15), %xmm1
	movups	32(%r15), %xmm2
	movups	48(%r15), %xmm3
	movups	%xmm3, 56(%rbx)
	movups	%xmm2, 40(%rbx)
	movups	%xmm1, 24(%rbx)
	movups	%xmm0, 8(%rbx)
	movl	$1, 80(%rbx)
	movw	$0, 96(%rbx)
	movw	$256, 88(%rbx)          # imm = 0x100
	movw	$2816, 104(%rbx)        # imm = 0xB00
	xorps	%xmm0, %xmm0
	movups	%xmm0, 112(%rbx)
	movq	rand_state_initial(%rip), %rax
	movq	%rax, 128(%rbx)
	movq	$0, 136(%rbx)
	movl	$0, 144(%rbx)
	movl	$0, 148(%rbx)
	movq	$0, 720(%rbx)
	movw	$0, 152(%rbx)
	leaq	(%rsp), %rdx
	movl	$.L.str.2, %esi
	callq	dict_find_string
	movl	$300, %esi              # imm = 0x12C
	testl	%eax, %eax
	js	.LBB3_6
# BB#5:                                 # %if.then.27
	movq	(%rsp), %rdi
	callq	dict_length
	movl	%eax, %esi
.LBB3_6:                                # %if.end.29
	movq	48(%rbx), %rdi
	leaq	168(%rbx), %rdx
	callq	dict_alloc
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB3_17
# BB#7:                                 # %cleanup.cont
	movaps	.LCPI3_0(%rip), %xmm0   # xmm0 = [0,0,0,1]
	movups	%xmm0, 184(%rbx)
	movq	200(%r12), %rax
	movq	(%rax), %rdi
	movl	$352, %esi              # imm = 0x160
	movl	$.L.str.1, %edx
	callq	*8(%rdi)
	movq	%rax, %r13
	movl	$-25, %ebp
	testq	%r13, %r13
	je	.LBB3_17
# BB#8:                                 # %cleanup.cont.50
	movq	%r13, 256(%rbx)
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	s_init
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	sread_string
	xorps	%xmm0, %xmm0
	movups	%xmm0, 272(%r13)
	movl	$0, 264(%r13)
	movq	256(%rbx), %rax
	movq	%rax, 216(%rbx)
	movw	$864, 208(%rbx)         # imm = 0x360
	movl	$1, 212(%rbx)
	movq	%rax, 232(%rbx)
	movw	$880, 224(%rbx)         # imm = 0x370
	movl	$1, 228(%rbx)
	movq	%rax, 248(%rbx)
	movw	$880, 240(%rbx)         # imm = 0x370
	movl	$1, 244(%rbx)
	movq	40(%r15), %rax
	testq	%rax, %rax
	je	.LBB3_10
# BB#9:                                 # %if.then.91
	incl	592(%rax)
.LBB3_10:                               # %for.cond.backedge
	movq	32(%r15), %rax
	testq	%rax, %rax
	je	.LBB3_12
# BB#11:                                # %if.then.91.1
	incl	592(%rax)
.LBB3_12:                               # %for.cond.backedge.1
	movq	24(%r15), %rax
	testq	%rax, %rax
	je	.LBB3_14
# BB#13:                                # %if.then.91.2
	incl	592(%rax)
.LBB3_14:                               # %for.cond.backedge.2
	movq	16(%r15), %rax
	testq	%rax, %rax
	je	.LBB3_16
# BB#15:                                # %if.then.91.3
	incl	592(%rax)
.LBB3_16:                               # %for.cond.backedge.3
	movl	$32767, 352(%rbx)       # imm = 0x7FFF
	movq	$no_reschedule, 360(%rbx)
	movq	$no_reschedule, 344(%rbx)
	movq	%rbx, (%r14)
	xorl	%ebp, %ebp
	jmp	.LBB3_21
.LBB3_17:                               # %x2
	movq	(%rbx), %rdi
	callq	gs_state_free
.LBB3_18:                               # %x1
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	gs_interp_free_stacks
.LBB3_19:                               # %x0
	cmpq	$0, (%r14)
	jne	.LBB3_21
# BB#20:                                # %if.then.101
	movl	$.L.str.1, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*24(%r12)
.LBB3_21:                               # %cleanup.104
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	context_state_alloc, .Lfunc_end3-context_state_alloc
	.cfi_endproc

	.align	16, 0x90
	.type	no_reschedule,@function
no_reschedule:                          # @no_reschedule
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-29, %eax
	retq
.Lfunc_end4:
	.size	no_reschedule, .Lfunc_end4-no_reschedule
	.cfi_endproc

	.globl	context_state_load
	.align	16, 0x90
	.type	context_state_load,@function
context_state_load:                     # @context_state_load
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
	movq	%rdi, %rbx
	leaq	8(%rbx), %rdi
	movq	%rdi, (%rsp)            # 8-byte Spill
	movq	48(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	368(%rbx), %r14
	leaq	504(%rbx), %r12
	movzwl	504(%rbx), %r15d
	andl	$12, %r15d
	callq	alloc_set_not_in_save
	orb	$12, 504(%rbx)
	movq	%r14, %rdi
	callq	ref_stack_count
	leal	-1(%rax), %esi
	subl	468(%rbx), %esi
	movq	%r14, %rdi
	callq	ref_stack_index
	leaq	16(%rsp), %rdx
	movl	$.L.str.3, %esi
	movq	%rax, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB5_3
# BB#1:                                 # %land.lhs.true
	movq	16(%rsp), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$2, %eax
	jne	.LBB5_3
# BB#2:                                 # %if.then
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	%r14, %rcx
	callq	dict_copy_entries
.LBB5_3:                                # %if.end
	leaq	168(%rbx), %r13
	movl	$.L.str.2, %esi
	movq	%r12, %rdi
	movq	%r13, %rdx
	movq	%r14, %rcx
	callq	dict_put_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_5
# BB#4:                                 # %if.then.25
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	set_user_params
	movl	%eax, %ebp
.LBB5_5:                                # %if.end.28
	movzwl	(%r12), %eax
	andl	$65523, %eax            # imm = 0xFFF3
	movswl	%r15w, %ecx
	orl	%eax, %ecx
	movw	%cx, (%r12)
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	$0, 552(%rax)
	jle	.LBB5_7
# BB#6:                                 # %if.then.39
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	alloc_set_in_save
.LBB5_7:                                # %if.end.41
	movq	$0, 616(%rbx)
	movq	%r14, %rdi
	callq	dstack_set_top
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	context_state_load, .Lfunc_end5-context_state_load
	.cfi_endproc

	.globl	context_state_store
	.align	16, 0x90
	.type	context_state_store,@function
context_state_store:                    # @context_state_store
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp39:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp40:
	.cfi_def_cfa_offset 32
.Ltmp41:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	368(%rbx), %rdi
	callq	ref_stack_cleanup
	leaq	520(%rbx), %rdi
	callq	ref_stack_cleanup
	leaq	624(%rbx), %rdi
	callq	ref_stack_cleanup
	leaq	504(%rbx), %rdi
	leaq	8(%rsp), %rdx
	movl	$.L.str.2, %esi
	callq	dict_find_string
	movl	%eax, %ecx
	movl	$-100, %eax
	testl	%ecx, %ecx
	js	.LBB6_2
# BB#1:                                 # %if.end
	movq	8(%rsp), %rax
	movups	(%rax), %xmm0
	movups	%xmm0, 168(%rbx)
	xorl	%eax, %eax
.LBB6_2:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end6:
	.size	context_state_store, .Lfunc_end6-context_state_store
	.cfi_endproc

	.globl	context_state_free
	.align	16, 0x90
	.type	context_state_free,@function
context_state_free:                     # @context_state_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp44:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp46:
	.cfi_def_cfa_offset 48
.Ltmp47:
	.cfi_offset %rbx, -40
.Ltmp48:
	.cfi_offset %r12, -32
.Ltmp49:
	.cfi_offset %r14, -24
.Ltmp50:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	48(%rbx), %r14
	movq	256(%rbx), %rsi
	movq	200(%r14), %rax
	movq	(%rax), %rdi
	movl	$.L.str.1, %edx
	callq	*24(%rdi)
	xorl	%r15d, %r15d
	movl	$3, %eax
.LBB7_1:                                # %for.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_2 Depth 2
	movslq	%eax, %rcx
	.align	16, 0x90
.LBB7_2:                                # %for.body
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	24(%rbx,%rcx,8), %rax
	testq	%rax, %rax
	je	.LBB7_3
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB7_2 Depth=2
	decl	592(%rax)
	je	.LBB7_7
.LBB7_3:                                # %for.cond.backedge
                                        #   in Loop: Header=BB7_2 Depth=2
	testq	%rcx, %rcx
	leaq	-1(%rcx), %rcx
	jg	.LBB7_2
	jmp	.LBB7_4
	.align	16, 0x90
.LBB7_7:                                # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$1, %eax
	shll	%cl, %eax
	orl	%eax, %r15d
	movq	%rcx, %rax
	decq	%rax
	testl	%ecx, %ecx
	jg	.LBB7_1
	jmp	.LBB7_8
.LBB7_4:                                # %for.end
	testl	%r15d, %r15d
	jne	.LBB7_8
# BB#5:                                 # %if.end.16
	movq	(%rbx), %r12
	movq	%r12, %rdi
	callq	gs_grestoreall
	movq	%r12, %rdi
	callq	gs_state_saved
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gs_state_swap_saved
	movq	%r12, %rdi
	callq	gs_grestore
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	gs_state_swap_saved
	movq	%r12, %rdi
	callq	gs_state_free
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gs_interp_free_stacks
.LBB7_8:                                # %cleanup
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end7:
	.size	context_state_free, .Lfunc_end7-context_state_free
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_context_state_t"
	.size	.L.str, 19

	.type	st_context_state,@object # @st_context_state
	.section	.rodata,"a",@progbits
	.globl	st_context_state
	.align	8
st_context_state:
	.long	728                     # 0x2d8
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	context_state_clear_marks
	.quad	context_state_enum_ptrs
	.quad	context_state_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_context_state, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"context_state_alloc"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"userparams"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"localdicts"
	.size	.L.str.3, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
