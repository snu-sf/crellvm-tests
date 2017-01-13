	.text
	.file	"isave.bc"
	.globl	alloc_save_init
	.align	16, 0x90
	.type	alloc_save_init,@function
alloc_save_init:                        # @alloc_save_init
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	%rax, 64(%rdi)
	movq	16(%rdi), %rax
	testq	%rax, %rax
	je	.LBB0_3
# BB#1:                                 # %if.then.i.i
	movabsq	$-4294967296, %rcx      # imm = 0xFFFFFFFF00000000
	movq	%rcx, 556(%rax)
	movq	(%rax), %rdx
	cmpq	%rax, %rdx
	je	.LBB0_3
# BB#2:                                 # %if.then.10.i.i
	movq	%rcx, 556(%rdx)
.LBB0_3:                                # %for.inc.i.i
	movq	24(%rdi), %rax
	testq	%rax, %rax
	je	.LBB0_6
# BB#4:                                 # %if.then.1.i.i
	movabsq	$-4294967296, %rcx      # imm = 0xFFFFFFFF00000000
	movq	%rcx, 556(%rax)
	movq	(%rax), %rdx
	cmpq	%rax, %rdx
	je	.LBB0_6
# BB#5:                                 # %if.then.10.1.i.i
	movq	%rcx, 556(%rdx)
.LBB0_6:                                # %for.inc.1.i.i
	movq	32(%rdi), %rax
	testq	%rax, %rax
	je	.LBB0_9
# BB#7:                                 # %if.then.2.i.i
	movabsq	$-4294967296, %rcx      # imm = 0xFFFFFFFF00000000
	movq	%rcx, 556(%rax)
	movq	(%rax), %rdx
	cmpq	%rax, %rdx
	je	.LBB0_9
# BB#8:                                 # %if.then.10.2.i.i
	movq	%rcx, 556(%rdx)
.LBB0_9:                                # %for.inc.2.i.i
	movq	40(%rdi), %rax
	testq	%rax, %rax
	je	.LBB0_12
# BB#10:                                # %if.then.3.i.i
	movabsq	$-4294967296, %rcx      # imm = 0xFFFFFFFF00000000
	movq	%rcx, 556(%rax)
	movq	(%rax), %rdx
	cmpq	%rax, %rdx
	je	.LBB0_12
# BB#11:                                # %if.then.10.3.i.i
	movq	%rcx, 556(%rdx)
.LBB0_12:                               # %alloc_set_not_in_save.exit
	retq
.Lfunc_end0:
	.size	alloc_save_init, .Lfunc_end0-alloc_save_init
	.cfi_endproc

	.globl	alloc_set_not_in_save
	.align	16, 0x90
	.type	alloc_set_not_in_save,@function
alloc_set_not_in_save:                  # @alloc_set_not_in_save
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	%rax, 64(%rdi)
	movq	16(%rdi), %rax
	testq	%rax, %rax
	je	.LBB1_3
# BB#1:                                 # %if.then.i
	movabsq	$-4294967296, %rcx      # imm = 0xFFFFFFFF00000000
	movq	%rcx, 556(%rax)
	movq	(%rax), %rdx
	cmpq	%rax, %rdx
	je	.LBB1_3
# BB#2:                                 # %if.then.10.i
	movq	%rcx, 556(%rdx)
.LBB1_3:                                # %for.inc.i
	movq	24(%rdi), %rax
	testq	%rax, %rax
	je	.LBB1_6
# BB#4:                                 # %if.then.1.i
	movabsq	$-4294967296, %rcx      # imm = 0xFFFFFFFF00000000
	movq	%rcx, 556(%rax)
	movq	(%rax), %rdx
	cmpq	%rax, %rdx
	je	.LBB1_6
# BB#5:                                 # %if.then.10.1.i
	movq	%rcx, 556(%rdx)
.LBB1_6:                                # %for.inc.1.i
	movq	32(%rdi), %rax
	testq	%rax, %rax
	je	.LBB1_9
# BB#7:                                 # %if.then.2.i
	movabsq	$-4294967296, %rcx      # imm = 0xFFFFFFFF00000000
	movq	%rcx, 556(%rax)
	movq	(%rax), %rdx
	cmpq	%rax, %rdx
	je	.LBB1_9
# BB#8:                                 # %if.then.10.2.i
	movq	%rcx, 556(%rdx)
.LBB1_9:                                # %for.inc.2.i
	movq	40(%rdi), %rax
	testq	%rax, %rax
	je	.LBB1_12
# BB#10:                                # %if.then.3.i
	movabsq	$-4294967296, %rcx      # imm = 0xFFFFFFFF00000000
	movq	%rcx, 556(%rax)
	movq	(%rax), %rdx
	cmpq	%rax, %rdx
	je	.LBB1_12
# BB#11:                                # %if.then.10.3.i
	movq	%rcx, 556(%rdx)
.LBB1_12:                               # %alloc_set_masks.exit
	retq
.Lfunc_end1:
	.size	alloc_set_not_in_save, .Lfunc_end1-alloc_set_not_in_save
	.cfi_endproc

	.globl	alloc_set_in_save
	.align	16, 0x90
	.type	alloc_set_in_save,@function
alloc_set_in_save:                      # @alloc_set_in_save
	.cfi_startproc
# BB#0:                                 # %entry
	movabsq	$8589934594, %rax       # imm = 0x200000002
	movq	%rax, 64(%rdi)
	movq	16(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB2_3
# BB#1:                                 # %if.then.i
	movq	%rax, 556(%rcx)
	movq	(%rcx), %rdx
	cmpq	%rcx, %rdx
	je	.LBB2_3
# BB#2:                                 # %if.then.10.i
	movq	%rax, 556(%rdx)
.LBB2_3:                                # %for.inc.i
	movq	24(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB2_6
# BB#4:                                 # %if.then.1.i
	movq	%rax, 556(%rcx)
	movq	(%rcx), %rdx
	cmpq	%rcx, %rdx
	je	.LBB2_6
# BB#5:                                 # %if.then.10.1.i
	movq	%rax, 556(%rdx)
.LBB2_6:                                # %for.inc.1.i
	movq	32(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB2_9
# BB#7:                                 # %if.then.2.i
	movq	%rax, 556(%rcx)
	movq	(%rcx), %rdx
	cmpq	%rcx, %rdx
	je	.LBB2_9
# BB#8:                                 # %if.then.10.2.i
	movq	%rax, 556(%rdx)
.LBB2_9:                                # %for.inc.2.i
	movq	40(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB2_12
# BB#10:                                # %if.then.3.i
	movq	%rax, 556(%rcx)
	movq	(%rcx), %rdx
	cmpq	%rcx, %rdx
	je	.LBB2_12
# BB#11:                                # %if.then.10.3.i
	movq	%rax, 556(%rdx)
.LBB2_12:                               # %alloc_set_masks.exit
	retq
.Lfunc_end2:
	.size	alloc_set_in_save, .Lfunc_end2-alloc_set_in_save
	.cfi_endproc

	.globl	alloc_save_state
	.align	16, 0x90
	.type	alloc_save_state,@function
alloc_save_state:                       # @alloc_save_state
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
	subq	$1528, %rsp             # imm = 0x5F8
.Ltmp6:
	.cfi_def_cfa_offset 1584
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
	movq	%rdx, %r12
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %r13
	movq	32(%r13), %rbp
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movq	40(%r13), %rbx
	movq	(%rbx), %rdi
	movl	$2, %esi
	callq	gs_next_ids
	movq	%rax, %r14
	cmpq	%rbx, %rbp
	movl	$0, %r15d
	je	.LBB3_1
# BB#2:                                 # %entry
	movq	%r12, 8(%rsp)           # 8-byte Spill
	movl	552(%rbx), %eax
	testl	%eax, %eax
	movl	$0, %ebp
	jne	.LBB3_5
# BB#3:                                 # %land.end
	xorl	%r15d, %r15d
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpl	$1, 592(%rax)
	movl	$0, %ebp
	jne	.LBB3_5
# BB#4:                                 # %cond.true
	movq	%r14, %rdx
	incq	%rdx
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rsi
	callq	alloc_save_space
	movq	%rax, %rbp
	movb	$1, %r15b
	jmp	.LBB3_5
.LBB3_1:
	movq	%r12, 8(%rsp)           # 8-byte Spill
	xorl	%ebp, %ebp
.LBB3_5:                                # %cond.end
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	movq	%r14, %r12
	callq	alloc_save_space
	movq	%rax, %r14
	testq	%rbp, %rbp
	sete	%al
	testq	%r14, %r14
	je	.LBB3_7
# BB#6:                                 # %cond.end
	andb	%al, %r15b
	jne	.LBB3_7
# BB#11:                                # %if.end.18
	testq	%rbp, %rbp
	je	.LBB3_13
# BB#12:                                # %if.then.20
	movq	$0, 1552(%rbp)
	movl	1536(%rbp), %eax
	movl	%eax, 1536(%r14)
	movl	$0, 1536(%rbp)
.LBB3_13:                               # %if.end.23
	movq	%r12, 1544(%r14)
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rax, 1552(%r14)
	cmpl	$2, 552(%rbx)
	jl	.LBB3_15
# BB#14:                                # %if.then.28
	leaq	32(%rsp), %rcx
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%r14, %rdi
	callq	save_set_new
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB3_28
.LBB3_15:                               # %if.end.34
	movabsq	$8589934594, %rax       # imm = 0x200000002
	movq	%rax, 64(%r13)
	movq	16(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB3_18
# BB#16:                                # %if.then.i.i
	movq	%rax, 556(%rcx)
	movq	(%rcx), %rdx
	cmpq	%rcx, %rdx
	je	.LBB3_18
# BB#17:                                # %if.then.10.i.i
	movq	%rax, 556(%rdx)
.LBB3_18:                               # %for.inc.i.i
	movq	24(%r13), %rcx
	testq	%rcx, %rcx
	movq	8(%rsp), %rsi           # 8-byte Reload
	je	.LBB3_21
# BB#19:                                # %if.then.1.i.i
	movq	%rax, 556(%rcx)
	movq	(%rcx), %rdx
	cmpq	%rcx, %rdx
	je	.LBB3_21
# BB#20:                                # %if.then.10.1.i.i
	movq	%rax, 556(%rdx)
.LBB3_21:                               # %for.inc.1.i.i
	movq	32(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB3_24
# BB#22:                                # %if.then.2.i.i
	movq	%rax, 556(%rcx)
	movq	(%rcx), %rdx
	cmpq	%rcx, %rdx
	je	.LBB3_24
# BB#23:                                # %if.then.10.2.i.i
	movq	%rax, 556(%rdx)
.LBB3_24:                               # %for.inc.2.i.i
	movq	40(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB3_27
# BB#25:                                # %if.then.3.i.i
	movq	%rax, 556(%rcx)
	movq	(%rcx), %rdx
	cmpq	%rcx, %rdx
	je	.LBB3_27
# BB#26:                                # %if.then.10.3.i.i
	movq	%rax, 556(%rdx)
.LBB3_27:                               # %alloc_set_in_save.exit
	movq	%r12, (%rsi)
	xorl	%r15d, %r15d
	jmp	.LBB3_28
.LBB3_7:                                # %if.then
	testq	%r14, %r14
	je	.LBB3_9
# BB#8:                                 # %if.then.14
	movq	616(%rbx), %rsi
	leaq	32(%rsp), %r15
	movl	$1496, %edx             # imm = 0x5D8
	movq	%r15, %rdi
	callq	memcpy
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*24(%rbx)
	movl	$1, %esi
	movl	$.L.str.13, %edx
	movq	%rbx, %rdi
	callq	*48(%rbx)
	movl	$1496, %edx             # imm = 0x5D8
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	memcpy
.LBB3_9:                                # %if.end
	movl	$-25, %r15d
	testq	%rbp, %rbp
	je	.LBB3_28
# BB#10:                                # %if.then.16
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	616(%rbx), %rsi
	leaq	32(%rsp), %r14
	movl	$1496, %edx             # imm = 0x5D8
	movq	%r14, %rdi
	callq	memcpy
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*24(%rbx)
	movl	$1, %esi
	movl	$.L.str.13, %edx
	movq	%rbx, %rdi
	callq	*48(%rbx)
	movl	$1496, %edx             # imm = 0x5D8
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	memcpy
.LBB3_28:                               # %cleanup.35
	movl	%r15d, %eax
	addq	$1528, %rsp             # imm = 0x5F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	alloc_save_state, .Lfunc_end3-alloc_save_state
	.cfi_endproc

	.align	16, 0x90
	.type	alloc_save_space,@function
alloc_save_space:                       # @alloc_save_space
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
	subq	$1512, %rsp             # imm = 0x5E8
.Ltmp19:
	.cfi_def_cfa_offset 1568
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
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	leaq	1224(%rsp), %rdi
	movl	$288, %edx              # imm = 0x120
	movq	%rbx, %rsi
	callq	memcpy
	movq	288(%rbx), %r13
	leaq	296(%rbx), %rsi
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	leaq	1032(%rsp), %rdi
	movl	$192, %edx
	callq	memcpy
	movq	488(%rbx), %r12
	leaq	496(%rbx), %rsi
	movq	%rsi, (%rsp)            # 8-byte Spill
	leaq	32(%rsp), %rdi
	movl	$1000, %edx             # imm = 0x3E8
	callq	memcpy
	movq	%rbx, %rdi
	callq	alloc_close_chunk
	movq	$0, 488(%rbx)
	leaq	648(%rbx), %rsi
	movq	%rbx, %rdi
	callq	*40(%rbx)
	movq	%rbx, %rdi
	callq	ialloc_reset
	xorl	%r15d, %r15d
	testq	%r13, %r13
	je	.LBB4_6
# BB#1:
	movq	%r13, %rbp
	.align	16, 0x90
.LBB4_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	48(%rbp), %rax
	subq	24(%rbp), %rax
	cmpq	$533, %rax              # imm = 0x215
	jl	.LBB4_5
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	200(%rbx), %rdi
	movl	$st_chunk, %esi
	movl	$.L.str.8, %edx
	callq	gs_raw_alloc_struct_immovable
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB4_6
# BB#4:                                 # %cleanup.thread
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	24(%rbp), %rsi
	movq	48(%rbp), %rdx
	cmpq	$0, 152(%rbp)
	setne	%al
	movzbl	%al, %ecx
	movq	%r14, %rdi
	movq	%rbp, %r8
	callq	alloc_init_chunk
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	alloc_link_chunk
	cmpq	%r12, %rbp
	cmoveq	%r14, %r15
.LBB4_5:                                # %for.inc
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	80(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB4_2
.LBB4_6:                                # %for.end
	movq	%r15, 488(%rbx)
	movq	%rbx, %rdi
	callq	alloc_open_chunk
	movl	$st_alloc_save, %esi
	movl	$.L.str.9, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB4_7
# BB#8:                                 # %if.end.22
	movq	$0, 1552(%rbp)
	leaq	1224(%rsp), %rsi
	movl	$288, %edx              # imm = 0x120
	movq	%rbp, %rdi
	callq	memcpy
	movq	%r13, 288(%rbp)
	leaq	296(%rbp), %rdi
	leaq	1032(%rsp), %rsi
	movl	$192, %edx
	callq	memcpy
	movq	%r12, 488(%rbp)
	movq	%rbp, %rdi
	addq	$496, %rdi              # imm = 0x1F0
	leaq	32(%rsp), %rsi
	movl	$1000, %edx             # imm = 0x3E8
	callq	memcpy
	movq	16(%rsp), %r14          # 8-byte Reload
	movq	40(%r14), %rax
	movq	%rax, 1528(%rbp)
	movups	8(%r14), %xmm0
	movups	24(%r14), %xmm1
	movups	%xmm1, 1512(%rbp)
	movups	%xmm0, 1496(%rbp)
	movq	192(%rbx), %rax
	movq	120(%rax), %rdi
	callq	names_memory
	cmpq	%rbx, %rax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 1536(%rbp)
	cmpq	%rbx, (%r14)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 1540(%rbp)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, 1544(%rbp)
	movq	%rbp, 616(%rbx)
	movq	$0, 568(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 624(%rbx)
	testq	%rax, %rax
	je	.LBB4_10
# BB#9:                                 # %if.then.32
	incl	552(%rbx)
	jmp	.LBB4_10
.LBB4_7:                                # %if.then.21
	movl	$1, %esi
	movl	$.L.str.13, %edx
	movq	%rbx, %rdi
	callq	*48(%rbx)
	leaq	1224(%rsp), %rsi
	movl	$288, %edx              # imm = 0x120
	movq	%rbx, %rdi
	callq	memcpy
	movq	%r13, 288(%rbx)
	leaq	1032(%rsp), %rsi
	movl	$192, %edx
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	memcpy
	movq	%r12, 488(%rbx)
	leaq	32(%rsp), %rsi
	movl	$1000, %edx             # imm = 0x3E8
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	memcpy
	xorl	%ebp, %ebp
.LBB4_10:                               # %cleanup.34
	movq	%rbp, %rax
	addq	$1512, %rsp             # imm = 0x5E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	alloc_save_space, .Lfunc_end4-alloc_save_space
	.cfi_endproc

	.align	16, 0x90
	.type	save_set_new,@function
save_set_new:                           # @save_set_new
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
	pushq	%rax
.Ltmp32:
	.cfi_def_cfa_offset 64
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
	movq	%rcx, (%rsp)            # 8-byte Spill
	movl	%edx, %r15d
	movl	%esi, %r14d
	movq	%rdi, %r13
	testl	%r14d, %r14d
	setne	%r12b
	testl	%r14d, %r14d
	jne	.LBB5_22
# BB#1:                                 # %land.lhs.true.i
	cmpq	$1600001, 632(%r13)     # imm = 0x186A01
	jl	.LBB5_22
# BB#2:                                 # %if.then.i
	movq	$0, 632(%r13)
	movq	600(%r13), %rbp
	movq	%r13, %rdi
	callq	alloc_open_chunk
	xorl	%ebx, %ebx
	testq	%rbp, %rbp
	je	.LBB5_3
	.align	16, 0x90
.LBB5_4:                                # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rax
	movq	%rbp, %rbx
	movq	(%rbx), %rbp
	movzwl	32(%rbx), %ecx
	cmpl	$65533, %ecx            # imm = 0xFFFD
	je	.LBB5_7
# BB#5:                                 # %if.then.i.i
                                        #   in Loop: Header=BB5_4 Depth=1
	movq	8(%rbx), %rcx
	movzwl	(%rcx), %edx
	cmpl	$16383, %edx            # imm = 0x3FFF
	ja	.LBB5_7
# BB#6:                                 # %if.then.5.i.i
                                        #   in Loop: Header=BB5_4 Depth=1
	orl	$2, %edx
	movw	%dx, (%rcx)
.LBB5_7:                                # %if.end.8.i.i
                                        #   in Loop: Header=BB5_4 Depth=1
	movq	%rax, (%rbx)
	testq	%rbp, %rbp
	jne	.LBB5_4
# BB#8:                                 # %for.body.14.lr.ph.lr.ph.i.i
	movq	%rbx, 600(%r13)
	xorl	%esi, %esi
.LBB5_9:                                # %for.body.14.lr.ph.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_10 Depth 2
	movq	%rsi, %rbp
	movq	%rbx, %rsi
	.align	16, 0x90
.LBB5_10:                               # %for.body.14.i.i
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rsi), %rbx
	movzwl	32(%rsi), %eax
	cmpl	$65533, %eax            # imm = 0xFFFD
	je	.LBB5_20
# BB#11:                                # %if.then.20.i.i
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	8(%rsi), %rax
	movzwl	(%rax), %ecx
	cmpl	$16383, %ecx            # imm = 0x3FFF
	ja	.LBB5_20
# BB#12:                                # %if.then.26.i.i
                                        #   in Loop: Header=BB5_10 Depth=2
	testb	$2, %cl
	jne	.LBB5_19
# BB#13:                                # %if.then.33.i.i
                                        #   in Loop: Header=BB5_10 Depth=2
	cmpq	%rsi, 608(%r13)
	jne	.LBB5_15
# BB#14:                                # %if.then.36.i.i
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	%rbp, 608(%r13)
.LBB5_15:                               # %if.end.38.i.i
                                        #   in Loop: Header=BB5_10 Depth=2
	cmpq	%rsi, 600(%r13)
	jne	.LBB5_17
# BB#16:                                # %if.then.42.i.i
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	%rbp, 600(%r13)
.LBB5_17:                               # %cleanup.52.i.i
                                        #   in Loop: Header=BB5_10 Depth=2
	movl	$.L.str.6, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
	testq	%rbx, %rbx
	movq	%rbx, %rsi
	jne	.LBB5_10
	jmp	.LBB5_18
.LBB5_19:                               # %cleanup.thread.i.i
                                        #   in Loop: Header=BB5_9 Depth=1
	andl	$65533, %ecx            # imm = 0xFFFD
	movw	%cx, (%rax)
.LBB5_20:                               # %if.end.55.i.i
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	%rbp, (%rsi)
	testq	%rbx, %rbx
	jne	.LBB5_9
	jmp	.LBB5_21
.LBB5_18:
	movq	%rbp, %rsi
	jmp	.LBB5_21
.LBB5_3:                                # %for.end.thread.i.i
	movq	$0, 600(%r13)
	xorl	%esi, %esi
.LBB5_21:                               # %drop_redundant_changes.exit.i
	movq	%rsi, 600(%r13)
	movq	%r13, %rdi
	callq	alloc_close_chunk
.LBB5_22:                               # %if.end.i
	movq	600(%r13), %r9
	xorl	%edx, %edx
	testq	%r9, %r9
	je	.LBB5_39
# BB#23:                                # %for.body.lr.ph.i
	movzbl	%r12b, %eax
	addl	%eax, %eax
	xorl	%edx, %edx
	movl	$st_refs, %r8d
	movswl	%ax, %edi
	movq	%r9, %rcx
	.align	16, 0x90
.LBB5_25:                               # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_29 Depth 2
                                        #     Child Loop BB5_32 Depth 2
	movq	8(%rcx), %rbp
	movzwl	32(%rcx), %eax
	cmpl	$65533, %eax            # imm = 0xFFFD
	jne	.LBB5_36
# BB#26:                                # %if.then.6.i
                                        #   in Loop: Header=BB5_25 Depth=1
	testq	%rbp, %rbp
	je	.LBB5_38
# BB#27:                                # %if.then.9.i
                                        #   in Loop: Header=BB5_25 Depth=1
	movl	-20(%rbp), %ebx
	movl	$-100, %eax
	cmpq	%r8, -16(%rbp)
	jne	.LBB5_62
# BB#28:                                # %if.end.i.i
                                        #   in Loop: Header=BB5_25 Depth=1
	leaq	(%rbp,%rbx), %rax
	testl	%r14d, %r14d
	jne	.LBB5_29
	jmp	.LBB5_32
	.align	16, 0x90
.LBB5_30:                               # %if.then.9.i.i
                                        #   in Loop: Header=BB5_29 Depth=2
	addq	$2, %rbp
.LBB5_29:                               # %while.body.i.i
                                        #   Parent Loop BB5_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rbp), %esi
	cmpl	$16384, %esi            # imm = 0x4000
	jae	.LBB5_30
# BB#31:                                # %if.else.i.i
                                        #   in Loop: Header=BB5_29 Depth=2
	orl	$2, %esi
	movw	%si, (%rbp)
	addq	$16, %rbp
	cmpq	%rax, %rbp
	jb	.LBB5_29
	jmp	.LBB5_35
	.align	16, 0x90
.LBB5_33:                               # %if.then.24.i.i
                                        #   in Loop: Header=BB5_32 Depth=2
	addq	$2, %rbp
.LBB5_32:                               # %while.body.20.i.i
                                        #   Parent Loop BB5_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rbp), %esi
	cmpl	$16384, %esi            # imm = 0x4000
	jae	.LBB5_33
# BB#34:                                # %if.else.26.i.i
                                        #   in Loop: Header=BB5_32 Depth=2
	andl	$65533, %esi            # imm = 0xFFFD
	movw	%si, (%rbp)
	addq	$16, %rbp
	cmpq	%rax, %rbp
	jb	.LBB5_32
.LBB5_35:                               # %mark_allocated.exit.thread.i
                                        #   in Loop: Header=BB5_25 Depth=1
	addq	%rbx, %rdx
	jmp	.LBB5_38
	.align	16, 0x90
.LBB5_36:                               # %if.else.i
                                        #   in Loop: Header=BB5_25 Depth=1
	movzwl	(%rbp), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	ja	.LBB5_38
# BB#37:                                # %if.then.22.i
                                        #   in Loop: Header=BB5_25 Depth=1
	andl	$-3, %eax
	orl	%edi, %eax
	movw	%ax, (%rbp)
.LBB5_38:                               # %if.end.29.i
                                        #   in Loop: Header=BB5_25 Depth=1
	cmpq	%rcx, 608(%r13)
	je	.LBB5_39
# BB#24:                                # %for.cond.i
                                        #   in Loop: Header=BB5_25 Depth=1
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB5_25
.LBB5_39:                               # %for.end.i
	testl	%r15d, %r15d
	je	.LBB5_43
# BB#40:                                # %if.then.35.i
	addq	%rdx, 632(%r13)
	addq	624(%r13), %rdx
	cmpq	$100000, %rdx           # imm = 0x186A0
	jb	.LBB5_42
# BB#41:                                # %if.then.41.i
	movq	%r9, 608(%r13)
	movq	$0, 624(%r13)
	jmp	.LBB5_43
.LBB5_42:                               # %if.else.45.i
	movq	%rdx, 624(%r13)
.LBB5_43:                               # %if.end
	movq	288(%r13), %r10
	xorl	%eax, %eax
	testq	%r10, %r10
	movl	$0, %edx
	je	.LBB5_61
# BB#44:                                # %for.body.lr.ph
	xorl	%edx, %edx
	movl	$st_refs, %r8d
	movabsq	$8589934584, %r9        # imm = 0x1FFFFFFF8
	.align	16, 0x90
.LBB5_45:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_47 Depth 2
                                        #       Child Loop BB5_51 Depth 3
                                        #       Child Loop BB5_54 Depth 3
	cmpl	$0, 100(%r10)
	je	.LBB5_60
# BB#46:                                # %if.then.2
                                        #   in Loop: Header=BB5_45 Depth=1
	movq	8(%r10), %rbx
	movq	24(%r10), %r11
	jmp	.LBB5_47
	.align	16, 0x90
.LBB5_58:                               # %for.inc
                                        #   in Loop: Header=BB5_47 Depth=2
	addq	%rcx, %rdx
	addq	$31, %rsi
	andq	%r9, %rsi
	addq	%rsi, %rbx
.LBB5_47:                               # %if.then.2
                                        #   Parent Loop BB5_45 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_51 Depth 3
                                        #       Child Loop BB5_54 Depth 3
	cmpq	%r11, %rbx
	jae	.LBB5_59
# BB#48:                                # %for.body.6
                                        #   in Loop: Header=BB5_47 Depth=2
	movl	4(%rbx), %esi
	cmpq	%r8, 8(%rbx)
	je	.LBB5_50
# BB#49:                                # %for.body.6.for.inc_crit_edge
                                        #   in Loop: Header=BB5_47 Depth=2
	movl	$24, %ecx
	jmp	.LBB5_58
	.align	16, 0x90
.LBB5_50:                               # %if.end.i.33
                                        #   in Loop: Header=BB5_47 Depth=2
	leaq	24(%rbx), %rdi
	testl	%r14d, %r14d
	leaq	24(%rbx,%rsi), %rcx
	jne	.LBB5_51
	jmp	.LBB5_54
	.align	16, 0x90
.LBB5_52:                               # %if.then.9.i.35
                                        #   in Loop: Header=BB5_51 Depth=3
	addq	$2, %rdi
.LBB5_51:                               # %while.body.i
                                        #   Parent Loop BB5_45 Depth=1
                                        #     Parent Loop BB5_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	(%rdi), %ebp
	cmpl	$16384, %ebp            # imm = 0x4000
	jae	.LBB5_52
# BB#53:                                # %if.else.i.36
                                        #   in Loop: Header=BB5_51 Depth=3
	orl	$2, %ebp
	movw	%bp, (%rdi)
	addq	$16, %rdi
	cmpq	%rcx, %rdi
	jb	.LBB5_51
	jmp	.LBB5_57
	.align	16, 0x90
.LBB5_55:                               # %if.then.24.i
                                        #   in Loop: Header=BB5_54 Depth=3
	addq	$2, %rdi
.LBB5_54:                               # %while.body.20.i
                                        #   Parent Loop BB5_45 Depth=1
                                        #     Parent Loop BB5_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	(%rdi), %ebp
	cmpl	$16384, %ebp            # imm = 0x4000
	jae	.LBB5_55
# BB#56:                                # %if.else.26.i
                                        #   in Loop: Header=BB5_54 Depth=3
	andl	$65533, %ebp            # imm = 0xFFFD
	movw	%bp, (%rdi)
	addq	$16, %rdi
	cmpq	%rcx, %rdi
	jb	.LBB5_54
.LBB5_57:                               #   in Loop: Header=BB5_47 Depth=2
	movq	%rsi, %rcx
	jmp	.LBB5_58
	.align	16, 0x90
.LBB5_59:                               # %cleanup.30.thread
                                        #   in Loop: Header=BB5_45 Depth=1
	movl	$0, 100(%r10)
.LBB5_60:                               # %for.inc.34
                                        #   in Loop: Header=BB5_45 Depth=1
	movq	80(%r10), %r10
	testq	%r10, %r10
	jne	.LBB5_45
.LBB5_61:                               # %do.end.41
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	%rdx, (%rcx)
.LBB5_62:                               # %cleanup.42
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	save_set_new, .Lfunc_end5-save_set_new
	.cfi_endproc

	.globl	alloc_save_change_in
	.align	16, 0x90
	.type	alloc_save_change_in,@function
alloc_save_change_in:                   # @alloc_save_change_in
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
	pushq	%rax
.Ltmp45:
	.cfi_def_cfa_offset 64
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
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbx
	xorl	%eax, %eax
	cmpl	$0, 556(%rbx)
	je	.LBB6_14
# BB#1:                                 # %if.end
	movl	$st_alloc_change, %esi
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, %r15
	movl	$-1, %eax
	testq	%r15, %r15
	je	.LBB6_14
# BB#2:                                 # %if.end.3
	movq	%r15, %rbp
	movq	600(%rbx), %rax
	movq	%rax, (%rbp)
	movq	%r14, 8(%rbp)
	testq	%r12, %r12
	je	.LBB6_3
# BB#4:                                 # %if.else
	movzwl	(%r12), %eax
	movl	%eax, %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	cmpl	$1024, %ecx             # imm = 0x400
	je	.LBB6_6
# BB#5:                                 # %lor.lhs.false
	movzbl	1(%r12), %ecx
	cmpl	$2, %ecx
	jne	.LBB6_7
.LBB6_6:                                # %if.then.14
	movw	$-1, 32(%rbp)
	jmp	.LBB6_10
.LBB6_3:                                # %if.then.6
	movw	$-2, 32(%rbp)
	jmp	.LBB6_10
.LBB6_7:                                # %if.else.16
	andl	$15872, %eax            # imm = 0x3E00
	cmpl	$2048, %eax             # imm = 0x800
	jne	.LBB6_9
# BB#8:                                 # %if.then.23
	movl	8(%r12), %eax
	movl	%r14d, %ecx
	subl	%eax, %ecx
	movw	%cx, 32(%rbp)
	jmp	.LBB6_10
.LBB6_9:                                # %if.else.26
	callq	gs_program_name
	movq	%rax, %r13
	callq	gs_revision_number
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.4, %edi
	movl	$488, %esi              # imm = 0x1E8
	callq	lprintf_file_and_line
	movzbl	1(%r12), %esi
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	errprintf_nomem
	movq	%rbx, %rdi
	callq	gs_abort
.LBB6_10:                               # %if.end.36
	movzwl	(%r14), %eax
	addq	$16, %r15
	cmpl	$16384, %eax            # imm = 0x4000
	jb	.LBB6_12
# BB#11:                                # %if.then.40
	movw	%ax, (%r15)
	jmp	.LBB6_13
.LBB6_12:                               # %if.else.41
	movups	(%r14), %xmm0
	movups	%xmm0, (%r15)
	orb	$2, (%r14)
.LBB6_13:                               # %if.end.47
	movq	%rbp, 600(%rbx)
	xorl	%eax, %eax
.LBB6_14:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	alloc_save_change_in, .Lfunc_end6-alloc_save_change_in
	.cfi_endproc

	.globl	alloc_save_change
	.align	16, 0x90
	.type	alloc_save_change,@function
alloc_save_change:                      # @alloc_save_change
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rsi, %rsi
	je	.LBB7_1
# BB#2:                                 # %cond.false
	movzwl	(%rsi), %eax
	andl	$12, %eax
	leaq	16(%rdi,%rax,2), %rdi
	movq	(%rdi), %rdi
	jmp	alloc_save_change_in    # TAILCALL
.LBB7_1:                                # %cond.true
	addq	$40, %rdi
	movq	(%rdi), %rdi
	jmp	alloc_save_change_in    # TAILCALL
.Lfunc_end7:
	.size	alloc_save_change, .Lfunc_end7-alloc_save_change
	.cfi_endproc

	.globl	alloc_save_change_alloc
	.align	16, 0x90
	.type	alloc_save_change_alloc,@function
alloc_save_change_alloc:                # @alloc_save_change_alloc
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
	movq	%rdx, %r14
	movq	%rdi, %rbx
	xorl	%eax, %eax
	cmpl	$0, 556(%rbx)
	je	.LBB8_3
# BB#1:                                 # %if.end
	movl	$st_alloc_change, %esi
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB8_3
# BB#2:                                 # %if.end.3
	movq	600(%rbx), %rax
	movq	%rax, (%rcx)
	movq	$0, 8(%rcx)
	movw	$-3, 32(%rcx)
	movw	$3584, 16(%rcx)         # imm = 0xE00
	movq	%rcx, (%r14)
	movl	$1, %eax
.LBB8_3:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end8:
	.size	alloc_save_change_alloc, .Lfunc_end8-alloc_save_change_alloc
	.cfi_endproc

	.globl	alloc_save_remove
	.align	16, 0x90
	.type	alloc_save_remove,@function
alloc_save_remove:                      # @alloc_save_remove
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 32
.Ltmp60:
	.cfi_offset %rbx, -32
.Ltmp61:
	.cfi_offset %r14, -24
.Ltmp62:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	600(%rbx), %rax
	testq	%rax, %rax
	je	.LBB9_9
# BB#1:                                 # %for.body.lr.ph.lr.ph
	leaq	600(%rbx), %r15
.LBB9_2:                                # %for.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_3 Depth 2
	movq	%rax, %rsi
	.align	16, 0x90
.LBB9_3:                                # %for.body
                                        #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	32(%rsi), %eax
	cmpl	$65533, %eax            # imm = 0xFFFD
	jne	.LBB9_8
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB9_3 Depth=2
	cmpq	%r14, 8(%rsi)
	jne	.LBB9_8
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB9_3 Depth=2
	movq	(%rsi), %rax
	cmpq	%rsi, 608(%rbx)
	jne	.LBB9_7
# BB#6:                                 # %if.then.7
                                        #   in Loop: Header=BB9_3 Depth=2
	movq	%rax, 608(%rbx)
.LBB9_7:                                # %if.end
                                        #   in Loop: Header=BB9_3 Depth=2
	movq	%rax, (%r15)
	movl	$.L.str.6, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	(%r15), %rsi
	testq	%rsi, %rsi
	jne	.LBB9_3
	jmp	.LBB9_9
	.align	16, 0x90
.LBB9_8:                                # %if.else
                                        #   in Loop: Header=BB9_2 Depth=1
	movq	(%rsi), %rax
	testq	%rax, %rax
	movq	%rsi, %r15
	jne	.LBB9_2
.LBB9_9:                                # %for.end
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end9:
	.size	alloc_save_remove, .Lfunc_end9-alloc_save_remove
	.cfi_endproc

	.globl	alloc_save__filter_changes
	.align	16, 0x90
	.type	alloc_save__filter_changes,@function
alloc_save__filter_changes:             # @alloc_save__filter_changes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbx, -16
	jmp	.LBB10_1
	.align	16, 0x90
.LBB10_16:                              # %alloc_save__filter_changes_in_space.exit
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	616(%rdi), %rdi
.LBB10_1:                               # %entry
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_4 Depth 2
                                        #       Child Loop BB10_5 Depth 3
                                        #         Child Loop BB10_7 Depth 4
	testq	%rdi, %rdi
	je	.LBB10_17
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	600(%rdi), %rdx
	testq	%rdx, %rdx
	je	.LBB10_16
# BB#3:                                 # %for.body.lr.ph.lr.ph.i
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	600(%rdi), %rax
	.align	16, 0x90
.LBB10_4:                               # %for.body.lr.ph.i
                                        #   Parent Loop BB10_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_5 Depth 3
                                        #         Child Loop BB10_7 Depth 4
	movq	%rdx, %rcx
.LBB10_5:                               # %for.body.i
                                        #   Parent Loop BB10_1 Depth=1
                                        #     Parent Loop BB10_4 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_7 Depth 4
	movzwl	32(%rcx), %edx
	cmpl	$65533, %edx            # imm = 0xFFFD
	jne	.LBB10_15
# BB#6:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB10_5 Depth=3
	movq	8(%rcx), %rdx
	movl	-20(%rdx), %esi
	leaq	(%rsi,%rdx), %rsi
	jmp	.LBB10_7
	.align	16, 0x90
.LBB10_9:                               # %if.end.i.i
                                        #   in Loop: Header=BB10_7 Depth=4
	addq	$2, %rdx
.LBB10_7:                               # %while.body.i.i
                                        #   Parent Loop BB10_1 Depth=1
                                        #     Parent Loop BB10_4 Depth=2
                                        #       Parent Loop BB10_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzwl	(%rdx), %ebx
	cmpl	$16384, %ebx            # imm = 0x4000
	jb	.LBB10_10
# BB#8:                                 # %if.then.i.i
                                        #   in Loop: Header=BB10_7 Depth=4
	testb	$16, %bh
	je	.LBB10_9
	jmp	.LBB10_15
	.align	16, 0x90
.LBB10_10:                              # %if.else.i.i
                                        #   in Loop: Header=BB10_7 Depth=4
	testb	$1, %bl
	jne	.LBB10_15
# BB#11:                                # %if.end.11.i.i
                                        #   in Loop: Header=BB10_7 Depth=4
	addq	$16, %rdx
	cmpq	%rsi, %rdx
	jb	.LBB10_7
# BB#12:                                # %if.then.i
                                        #   in Loop: Header=BB10_5 Depth=3
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	$0, 8(%rcx)
	cmpq	%rcx, 608(%rdi)
	jne	.LBB10_14
# BB#13:                                # %if.then.6.i
                                        #   in Loop: Header=BB10_5 Depth=3
	movq	(%rcx), %rdx
	movq	%rdx, 608(%rdi)
.LBB10_14:                              # %if.end.i
                                        #   in Loop: Header=BB10_5 Depth=3
	orl	$-2, -24(%rcx)
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	jne	.LBB10_5
	jmp	.LBB10_16
	.align	16, 0x90
.LBB10_15:                              # %if.else.i
                                        #   in Loop: Header=BB10_4 Depth=2
	movq	(%rcx), %rdx
	testq	%rdx, %rdx
	movq	%rcx, %rax
	jne	.LBB10_4
	jmp	.LBB10_16
.LBB10_17:                              # %for.end
	popq	%rbx
	retq
.Lfunc_end10:
	.size	alloc_save__filter_changes, .Lfunc_end10-alloc_save__filter_changes
	.cfi_endproc

	.globl	alloc_save_current_id
	.align	16, 0x90
	.type	alloc_save_current_id,@function
alloc_save_current_id:                  # @alloc_save_current_id
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$616, %eax              # imm = 0x268
	addq	40(%rdi), %rax
	.align	16, 0x90
.LBB11_1:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rcx
	leaq	616(%rcx), %rax
	cmpq	$0, 1544(%rcx)
	je	.LBB11_1
# BB#2:                                 # %while.end
	movq	1544(%rcx), %rax
	retq
.Lfunc_end11:
	.size	alloc_save_current_id, .Lfunc_end11-alloc_save_current_id
	.cfi_endproc

	.globl	alloc_save_current
	.align	16, 0x90
	.type	alloc_save_current,@function
alloc_save_current:                     # @alloc_save_current
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$616, %eax              # imm = 0x268
	addq	40(%rdi), %rax
	movq	%rax, %rdx
	.align	16, 0x90
.LBB12_1:                               # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdx), %rdx
	movq	1544(%rdx), %rcx
	addq	$616, %rdx              # imm = 0x268
	testq	%rcx, %rcx
	je	.LBB12_1
# BB#2:                                 # %while.cond.preheader.i
	movq	(%rax), %rdx
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.LBB12_7
# BB#3:
	xorl	%eax, %eax
	.align	16, 0x90
.LBB12_4:                               # %while.body.i.4
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rcx, 1544(%rdx)
	je	.LBB12_5
# BB#6:                                 # %if.end.4.i
                                        #   in Loop: Header=BB12_4 Depth=1
	movq	616(%rdx), %rdx
	testq	%rdx, %rdx
	jne	.LBB12_4
.LBB12_7:                               # %alloc_find_save.exit
	retq
.LBB12_5:
	movq	%rdx, %rax
	retq
.Lfunc_end12:
	.size	alloc_save_current, .Lfunc_end12-alloc_save_current
	.cfi_endproc

	.globl	alloc_find_save
	.align	16, 0x90
	.type	alloc_find_save,@function
alloc_find_save:                        # @alloc_find_save
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.LBB13_6
# BB#1:                                 # %while.cond.preheader
	movq	40(%rdi), %rax
	movq	616(%rax), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB13_6
# BB#2:
	xorl	%eax, %eax
	.align	16, 0x90
.LBB13_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, 1544(%rcx)
	je	.LBB13_4
# BB#5:                                 # %if.end.4
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	616(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB13_3
.LBB13_6:                               # %cleanup
	retq
.LBB13_4:
	movq	%rcx, %rax
	retq
.Lfunc_end13:
	.size	alloc_find_save, .Lfunc_end13-alloc_find_save
	.cfi_endproc

	.globl	alloc_is_since_save
	.align	16, 0x90
	.type	alloc_is_since_save,@function
alloc_is_since_save:                    # @alloc_is_since_save
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1528(%rsi), %r8
	movl	$1, %eax
	cmpq	$0, 616(%r8)
	je	.LBB14_17
# BB#1:
	movq	%r8, %rdx
.LBB14_2:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_3 Depth 2
	movq	288(%rdx), %rcx
	jmp	.LBB14_3
	.align	16, 0x90
.LBB14_6:                               # %for.inc
                                        #   in Loop: Header=BB14_3 Depth=2
	movq	80(%rcx), %rcx
.LBB14_3:                               # %for.cond
                                        #   Parent Loop BB14_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rcx, %rcx
	je	.LBB14_7
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB14_3 Depth=2
	cmpq	%rdi, 8(%rcx)
	ja	.LBB14_6
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB14_3 Depth=2
	cmpq	%rdi, 64(%rcx)
	jbe	.LBB14_6
	jmp	.LBB14_17
	.align	16, 0x90
.LBB14_7:                               # %cleanup
                                        #   in Loop: Header=BB14_2 Depth=1
	movq	616(%rdx), %rdx
	cmpq	%rsi, %rdx
	jne	.LBB14_2
# BB#8:                                 # %for.end.22
	cmpl	$0, 552(%rsi)
	jne	.LBB14_16
# BB#9:                                 # %land.lhs.true.25
	movq	1520(%rsi), %rcx
	cmpq	%r8, %rcx
	je	.LBB14_16
# BB#10:                                # %land.lhs.true.34
	cmpl	$1, 592(%rcx)
	jne	.LBB14_16
# BB#11:                                # %if.then.40
	movq	288(%rcx), %rcx
	jmp	.LBB14_12
.LBB14_15:                              # %for.inc.59
                                        #   in Loop: Header=BB14_12 Depth=1
	movq	80(%rcx), %rcx
.LBB14_12:                              # %if.then.40
                                        # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	je	.LBB14_16
# BB#13:                                # %for.body.48
                                        #   in Loop: Header=BB14_12 Depth=1
	cmpq	%rdi, 8(%rcx)
	ja	.LBB14_15
# BB#14:                                # %land.lhs.true.51
                                        #   in Loop: Header=BB14_12 Depth=1
	cmpq	%rdi, 64(%rcx)
	jbe	.LBB14_15
	jmp	.LBB14_17
.LBB14_16:
	xorl	%eax, %eax
.LBB14_17:                              # %cleanup.66
	retq
.Lfunc_end14:
	.size	alloc_is_since_save, .Lfunc_end14-alloc_is_since_save
	.cfi_endproc

	.globl	alloc_name_is_since_save
	.align	16, 0x90
	.type	alloc_name_is_since_save,@function
alloc_name_is_since_save:               # @alloc_name_is_since_save
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	cmpl	$0, 1536(%rdx)
	je	.LBB15_18
# BB#1:                                 # %if.end
	movq	8(%rsi), %r8
	movl	4(%rsi), %ecx
	movl	%ecx, %esi
	andl	$511, %esi              # imm = 0x1FF
	shlq	$3, %rsi
	subq	%rsi, %r8
	addl	4096(%r8), %ecx
	movl	%ecx, %esi
	shrl	$9, %esi
	movq	192(%rdi), %rdi
	movq	120(%rdi), %rdi
	shlq	$4, %rsi
	movq	16424(%rdi,%rsi), %rsi
	andl	$511, %ecx              # imm = 0x1FF
	shlq	$4, %rcx
	testb	$16, 2(%rsi,%rcx)
	jne	.LBB15_18
# BB#2:                                 # %if.end.21
	movq	1528(%rdx), %r8
	cmpq	$0, 616(%r8)
	je	.LBB15_17
# BB#3:
	movq	8(%rsi,%rcx), %rcx
	movq	%r8, %rdi
.LBB15_4:                               # %for.cond.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_5 Depth 2
	movq	288(%rdi), %rsi
	jmp	.LBB15_5
	.align	16, 0x90
.LBB15_8:                               # %for.inc.i
                                        #   in Loop: Header=BB15_5 Depth=2
	movq	80(%rsi), %rsi
.LBB15_5:                               # %for.cond.i
                                        #   Parent Loop BB15_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rsi, %rsi
	je	.LBB15_9
# BB#6:                                 # %for.body.i
                                        #   in Loop: Header=BB15_5 Depth=2
	cmpq	%rcx, 8(%rsi)
	ja	.LBB15_8
# BB#7:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB15_5 Depth=2
	cmpq	%rcx, 64(%rsi)
	jbe	.LBB15_8
	jmp	.LBB15_17
	.align	16, 0x90
.LBB15_9:                               # %cleanup.i
                                        #   in Loop: Header=BB15_4 Depth=1
	movq	616(%rdi), %rdi
	cmpq	%rdx, %rdi
	jne	.LBB15_4
# BB#10:                                # %for.end.22.i
	cmpl	$0, 552(%rdx)
	jne	.LBB15_18
# BB#11:                                # %land.lhs.true.25.i
	movq	1520(%rdx), %rdx
	cmpq	%r8, %rdx
	je	.LBB15_18
# BB#12:                                # %land.lhs.true.34.i
	cmpl	$1, 592(%rdx)
	jne	.LBB15_18
# BB#13:                                # %if.then.40.i
	movq	288(%rdx), %rdx
	jmp	.LBB15_14
.LBB15_19:                              # %for.inc.59.i
                                        #   in Loop: Header=BB15_14 Depth=1
	movq	80(%rdx), %rdx
.LBB15_14:                              # %if.then.40.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rdx, %rdx
	je	.LBB15_18
# BB#15:                                # %for.body.48.i
                                        #   in Loop: Header=BB15_14 Depth=1
	cmpq	%rcx, 8(%rdx)
	ja	.LBB15_19
# BB#16:                                # %land.lhs.true.51.i
                                        #   in Loop: Header=BB15_14 Depth=1
	cmpq	%rcx, 64(%rdx)
	jbe	.LBB15_19
.LBB15_17:
	movl	$1, %eax
.LBB15_18:                              # %cleanup
	retq
.Lfunc_end15:
	.size	alloc_name_is_since_save, .Lfunc_end15-alloc_name_is_since_save
	.cfi_endproc

	.globl	alloc_name_index_is_since_save
	.align	16, 0x90
	.type	alloc_name_index_is_since_save,@function
alloc_name_index_is_since_save:         # @alloc_name_index_is_since_save
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	cmpl	$0, 1536(%rdx)
	je	.LBB16_18
# BB#1:                                 # %if.end
	movl	%esi, %ecx
	shrl	$9, %ecx
	movq	192(%rdi), %rdi
	movq	120(%rdi), %rdi
	shlq	$4, %rcx
	movq	16424(%rdi,%rcx), %rcx
	andl	$511, %esi              # imm = 0x1FF
	shlq	$4, %rsi
	testb	$16, 2(%rcx,%rsi)
	jne	.LBB16_18
# BB#2:                                 # %if.end.4
	movq	1528(%rdx), %r8
	cmpq	$0, 616(%r8)
	je	.LBB16_17
# BB#3:
	movq	8(%rcx,%rsi), %rcx
	movq	%r8, %rsi
.LBB16_4:                               # %for.cond.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_5 Depth 2
	movq	288(%rsi), %rdi
	jmp	.LBB16_5
	.align	16, 0x90
.LBB16_8:                               # %for.inc.i
                                        #   in Loop: Header=BB16_5 Depth=2
	movq	80(%rdi), %rdi
.LBB16_5:                               # %for.cond.i
                                        #   Parent Loop BB16_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rdi, %rdi
	je	.LBB16_9
# BB#6:                                 # %for.body.i
                                        #   in Loop: Header=BB16_5 Depth=2
	cmpq	%rcx, 8(%rdi)
	ja	.LBB16_8
# BB#7:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB16_5 Depth=2
	cmpq	%rcx, 64(%rdi)
	jbe	.LBB16_8
	jmp	.LBB16_17
	.align	16, 0x90
.LBB16_9:                               # %cleanup.i
                                        #   in Loop: Header=BB16_4 Depth=1
	movq	616(%rsi), %rsi
	cmpq	%rdx, %rsi
	jne	.LBB16_4
# BB#10:                                # %for.end.22.i
	cmpl	$0, 552(%rdx)
	jne	.LBB16_18
# BB#11:                                # %land.lhs.true.25.i
	movq	1520(%rdx), %rdx
	cmpq	%r8, %rdx
	je	.LBB16_18
# BB#12:                                # %land.lhs.true.34.i
	cmpl	$1, 592(%rdx)
	jne	.LBB16_18
# BB#13:                                # %if.then.40.i
	movq	288(%rdx), %rdx
	jmp	.LBB16_14
.LBB16_19:                              # %for.inc.59.i
                                        #   in Loop: Header=BB16_14 Depth=1
	movq	80(%rdx), %rdx
.LBB16_14:                              # %if.then.40.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rdx, %rdx
	je	.LBB16_18
# BB#15:                                # %for.body.48.i
                                        #   in Loop: Header=BB16_14 Depth=1
	cmpq	%rcx, 8(%rdx)
	ja	.LBB16_19
# BB#16:                                # %land.lhs.true.51.i
                                        #   in Loop: Header=BB16_14 Depth=1
	cmpq	%rcx, 64(%rdx)
	jbe	.LBB16_19
.LBB16_17:
	movl	$1, %eax
.LBB16_18:                              # %cleanup
	retq
.Lfunc_end16:
	.size	alloc_name_index_is_since_save, .Lfunc_end16-alloc_name_index_is_since_save
	.cfi_endproc

	.globl	alloc_any_names_since_save
	.align	16, 0x90
	.type	alloc_any_names_since_save,@function
alloc_any_names_since_save:             # @alloc_any_names_since_save
	.cfi_startproc
# BB#0:                                 # %entry
	movl	1536(%rdi), %eax
	retq
.Lfunc_end17:
	.size	alloc_any_names_since_save, .Lfunc_end17-alloc_any_names_since_save
	.cfi_endproc

	.globl	alloc_save_client_data
	.align	16, 0x90
	.type	alloc_save_client_data,@function
alloc_save_client_data:                 # @alloc_save_client_data
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1552(%rdi), %rax
	retq
.Lfunc_end18:
	.size	alloc_save_client_data, .Lfunc_end18-alloc_save_client_data
	.cfi_endproc

	.globl	alloc_restore_step_in
	.align	16, 0x90
	.type	alloc_restore_step_in,@function
alloc_restore_step_in:                  # @alloc_restore_step_in
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp66:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp67:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp68:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp69:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 56
	subq	$1592, %rsp             # imm = 0x638
.Ltmp71:
	.cfi_def_cfa_offset 1648
.Ltmp72:
	.cfi_offset %rbx, -56
.Ltmp73:
	.cfi_offset %r12, -48
.Ltmp74:
	.cfi_offset %r13, -40
.Ltmp75:
	.cfi_offset %r14, -32
.Ltmp76:
	.cfi_offset %r15, -24
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	1520(%rsi), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	1528(%rsi), %rbp
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movabsq	$8589934584, %rbx       # imm = 0x1FFFFFFF8
	.align	16, 0x90
.LBB19_1:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_2 Depth 2
                                        #       Child Loop BB19_4 Depth 3
	movq	248(%rbp), %rax
	movq	616(%rbp), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	1544(%rcx), %rdx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rax, 248(%rcx)
	movq	%rbp, %rdi
	callq	alloc_close_chunk
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	*184(%rbp)
	movq	296(%rbp), %r12
	jmp	.LBB19_2
	.align	16, 0x90
.LBB19_8:                               # %for.end.i
                                        #   in Loop: Header=BB19_2 Depth=2
	movq	72(%r12), %r12
.LBB19_2:                               # %do.body
                                        #   Parent Loop BB19_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB19_4 Depth 3
	testq	%r12, %r12
	je	.LBB19_9
# BB#3:                                 # %for.body.i
                                        #   in Loop: Header=BB19_2 Depth=2
	movq	8(%r12), %r15
	movq	24(%r12), %r13
	jmp	.LBB19_4
	.align	16, 0x90
.LBB19_7:                               # %if.end.i
                                        #   in Loop: Header=BB19_4 Depth=3
	addq	$31, %r14
	andq	%rbx, %r14
	addq	%r14, %r15
.LBB19_4:                               # %for.body.i
                                        #   Parent Loop BB19_1 Depth=1
                                        #     Parent Loop BB19_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	%r13, %r15
	jae	.LBB19_8
# BB#5:                                 # %for.body.3.i
                                        #   in Loop: Header=BB19_4 Depth=3
	movl	4(%r15), %r14d
	movq	8(%r15), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.LBB19_7
# BB#6:                                 # %do.end.i
                                        #   in Loop: Header=BB19_4 Depth=3
	leaq	24(%r15), %rsi
	movq	%rbp, %rdi
	callq	*%rax
	jmp	.LBB19_7
	.align	16, 0x90
.LBB19_9:                               # %restore_finalize.exit
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	$1, %esi
	movq	%rbp, %rdi
	callq	*184(%rbp)
	movq	40(%rsp), %rax          # 8-byte Reload
	cmpq	24(%rsp), %rax          # 8-byte Folded Reload
	je	.LBB19_11
# BB#10:                                # %restore_finalize.exit
                                        #   in Loop: Header=BB19_1 Depth=1
	cmpq	$0, 32(%rsp)            # 8-byte Folded Reload
	movq	%rax, %rbp
	je	.LBB19_1
.LBB19_11:                              # %do.end
	movq	(%rsp), %r13            # 8-byte Reload
	cmpq	8(%rsp), %r13           # 8-byte Folded Reload
	je	.LBB19_23
# BB#12:                                # %do.end
	movl	552(%rax), %eax
	testl	%eax, %eax
	jne	.LBB19_23
# BB#13:                                # %land.lhs.true
	movq	616(%r13), %rax
	testq	%rax, %rax
	je	.LBB19_23
# BB#14:                                # %if.then.13
	movq	248(%r13), %rcx
	movq	%rcx, 248(%rax)
	movq	%r13, %rdi
	callq	alloc_close_chunk
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	*184(%r13)
	movq	296(%r13), %r14
	jmp	.LBB19_15
	.align	16, 0x90
.LBB19_21:                              # %for.end.i.83
                                        #   in Loop: Header=BB19_15 Depth=1
	movq	72(%r14), %r14
.LBB19_15:                              # %if.then.13
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_17 Depth 2
	testq	%r14, %r14
	je	.LBB19_22
# BB#16:                                # %for.body.i.65
                                        #   in Loop: Header=BB19_15 Depth=1
	movq	8(%r14), %rbp
	movq	24(%r14), %r15
	jmp	.LBB19_17
	.align	16, 0x90
.LBB19_20:                              # %if.end.i.79
                                        #   in Loop: Header=BB19_17 Depth=2
	addq	$31, %r12
	andq	%rbx, %r12
	addq	%r12, %rbp
.LBB19_17:                              # %for.body.i.65
                                        #   Parent Loop BB19_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r15, %rbp
	jae	.LBB19_21
# BB#18:                                # %for.body.3.i.71
                                        #   in Loop: Header=BB19_17 Depth=2
	movl	4(%rbp), %r12d
	movq	8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.LBB19_20
# BB#19:                                # %do.end.i.73
                                        #   in Loop: Header=BB19_17 Depth=2
	leaq	24(%rbp), %rsi
	movq	%r13, %rdi
	callq	*%rax
	jmp	.LBB19_20
.LBB19_22:                              # %restore_finalize.exit84
	movl	$1, %esi
	movq	%r13, %rdi
	callq	*184(%r13)
.LBB19_23:                              # %do.body.22.preheader
	leaq	48(%rsp), %r15
	movq	8(%rsp), %rbx           # 8-byte Reload
	.align	16, 0x90
.LBB19_24:                              # %do.body.22
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_28 Depth 2
	movq	248(%rbx), %rax
	movq	616(%rbx), %r13
	movq	1544(%r13), %r12
	movq	%rax, 248(%r13)
	movq	%r13, %rdi
	callq	font_restore
	testl	%eax, %eax
	js	.LBB19_67
# BB#25:                                # %if.end.i.86
                                        #   in Loop: Header=BB19_24 Depth=1
	cmpl	$0, 1536(%r13)
	je	.LBB19_27
# BB#26:                                # %if.then.1.i
                                        #   in Loop: Header=BB19_24 Depth=1
	movq	192(%rbx), %rax
	movq	120(%rax), %rdi
	movq	%r13, %rsi
	callq	names_restore
.LBB19_27:                              # %if.end.33
                                        #   in Loop: Header=BB19_24 Depth=1
	movq	616(%rbx), %r14
	movq	600(%rbx), %rax
	jmp	.LBB19_28
	.align	16, 0x90
.LBB19_33:                              # %if.end.11.i
                                        #   in Loop: Header=BB19_28 Depth=2
	movq	(%rax), %rax
.LBB19_28:                              # %if.end.33
                                        #   Parent Loop BB19_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rax, %rax
	je	.LBB19_34
# BB#29:                                # %while.body.i
                                        #   in Loop: Header=BB19_28 Depth=2
	movzwl	32(%rax), %ecx
	cmpl	$65533, %ecx            # imm = 0xFFFD
	je	.LBB19_33
# BB#30:                                # %if.else.i
                                        #   in Loop: Header=BB19_28 Depth=2
	movzwl	16(%rax), %ecx
	cmpl	$16384, %ecx            # imm = 0x4000
	jb	.LBB19_32
# BB#31:                                # %if.then.6.i
                                        #   in Loop: Header=BB19_28 Depth=2
	movq	8(%rax), %rdx
	movw	%cx, (%rdx)
	movq	(%rax), %rax
	jmp	.LBB19_28
	.align	16, 0x90
.LBB19_32:                              # %if.else.8.i
                                        #   in Loop: Header=BB19_28 Depth=2
	leaq	16(%rax), %rcx
	movq	8(%rax), %rdx
	movups	(%rcx), %xmm0
	movups	%xmm0, (%rdx)
	jmp	.LBB19_33
	.align	16, 0x90
.LBB19_34:                              # %while.end.i
                                        #   in Loop: Header=BB19_24 Depth=1
	movl	$1540, %edx             # imm = 0x604
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movl	1540(%r14), %r14d
	movl	$1, %esi
	movl	$.L.str.13, %edx
	movq	%rbx, %rdi
	callq	*48(%rbx)
	movq	%rbx, %rbp
	movl	592(%rbp), %ebx
	movl	$1496, %edx             # imm = 0x5D8
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movl	%ebx, 592(%rbp)
	movq	%rbp, %rbx
	movq	%rbx, %rdi
	callq	alloc_open_chunk
	cmpl	$0, %r14d
	je	.LBB19_36
# BB#35:                                # %if.then.15.i
                                        #   in Loop: Header=BB19_24 Depth=1
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%rbx, (%rcx)
	movl	224(%rbx), %eax
	movl	%eax, 48(%rcx)
.LBB19_36:                              # %cleanup.37
                                        #   in Loop: Header=BB19_24 Depth=1
	cmpq	24(%rsp), %r13          # 8-byte Folded Reload
	je	.LBB19_38
# BB#37:                                # %cleanup.37
                                        #   in Loop: Header=BB19_24 Depth=1
	testq	%r12, %r12
	je	.LBB19_24
.LBB19_38:                              # %do.end.42
	cmpl	$0, 552(%rbx)
	je	.LBB19_39
# BB#65:                                # %if.else
	leaq	48(%rsp), %rcx
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	save_set_new
	testl	%eax, %eax
	jns	.LBB19_66
	jmp	.LBB19_67
.LBB19_39:                              # %if.then.45
	movq	(%rsp), %rcx            # 8-byte Reload
	cmpq	%rbx, %rcx
	je	.LBB19_53
# BB#40:                                # %land.lhs.true.47
	movq	616(%rcx), %rbx
	testq	%rbx, %rbx
	je	.LBB19_53
# BB#41:                                # %if.then.50
	movq	248(%rcx), %rax
	movq	%rcx, %rbp
	movq	%rax, 248(%rbx)
	movq	%rbx, %rdi
	callq	font_restore
	testl	%eax, %eax
	js	.LBB19_67
# BB#42:                                # %if.end.i.94
	cmpl	$0, 1536(%rbx)
	je	.LBB19_44
# BB#43:                                # %if.then.1.i.97
	movq	192(%rbp), %rax
	movq	120(%rax), %rdi
	movq	%rbx, %rsi
	callq	names_restore
.LBB19_44:                              # %if.end.61
	movq	616(%rbp), %rbx
	movq	600(%rbp), %rax
	jmp	.LBB19_45
	.align	16, 0x90
.LBB19_50:                              # %if.end.11.i.120
                                        #   in Loop: Header=BB19_45 Depth=1
	movq	(%rax), %rax
.LBB19_45:                              # %if.end.61
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB19_51
# BB#46:                                # %while.body.i.110
                                        #   in Loop: Header=BB19_45 Depth=1
	movzwl	32(%rax), %ecx
	cmpl	$65533, %ecx            # imm = 0xFFFD
	je	.LBB19_50
# BB#47:                                # %if.else.i.114
                                        #   in Loop: Header=BB19_45 Depth=1
	movzwl	16(%rax), %ecx
	cmpl	$16384, %ecx            # imm = 0x4000
	jb	.LBB19_49
# BB#48:                                # %if.then.6.i.115
                                        #   in Loop: Header=BB19_45 Depth=1
	movq	8(%rax), %rdx
	movw	%cx, (%rdx)
	movq	(%rax), %rax
	jmp	.LBB19_45
	.align	16, 0x90
.LBB19_49:                              # %if.else.8.i.116
                                        #   in Loop: Header=BB19_45 Depth=1
	leaq	16(%rax), %rcx
	movq	8(%rax), %rdx
	movups	(%rcx), %xmm0
	movups	%xmm0, (%rdx)
	jmp	.LBB19_50
.LBB19_51:                              # %while.end.i.128
	leaq	48(%rsp), %r14
	movl	$1540, %edx             # imm = 0x604
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movl	1540(%rbx), %r15d
	movl	$1, %esi
	movl	$.L.str.13, %edx
	movq	%rbp, %rbx
	movq	%rbx, %rdi
	callq	*48(%rbx)
	movl	592(%rbx), %ebp
	movl	$1496, %edx             # imm = 0x5D8
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movl	%ebp, 592(%rbx)
	movq	%rbx, %rdi
	callq	alloc_open_chunk
	cmpl	$0, %r15d
	je	.LBB19_53
# BB#52:                                # %if.then.15.i.131
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%rbx, (%rcx)
	movl	224(%rbx), %eax
	movl	%eax, 48(%rcx)
.LBB19_53:                              # %if.end.62
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 64(%rcx)
	movq	16(%rcx), %rax
	movq	%rcx, %rsi
	testq	%rax, %rax
	je	.LBB19_56
# BB#54:                                # %if.then.i.i
	movabsq	$-4294967296, %rcx      # imm = 0xFFFFFFFF00000000
	movq	%rcx, 556(%rax)
	movq	(%rax), %rdx
	cmpq	%rax, %rdx
	je	.LBB19_56
# BB#55:                                # %if.then.10.i.i
	movq	%rcx, 556(%rdx)
.LBB19_56:                              # %for.inc.i.i
	movq	24(%rsi), %rax
	testq	%rax, %rax
	je	.LBB19_59
# BB#57:                                # %if.then.1.i.i
	movabsq	$-4294967296, %rcx      # imm = 0xFFFFFFFF00000000
	movq	%rcx, 556(%rax)
	movq	(%rax), %rdx
	cmpq	%rax, %rdx
	je	.LBB19_59
# BB#58:                                # %if.then.10.1.i.i
	movq	%rcx, 556(%rdx)
.LBB19_59:                              # %for.inc.1.i.i
	movq	32(%rsi), %rax
	testq	%rax, %rax
	je	.LBB19_62
# BB#60:                                # %if.then.2.i.i
	movabsq	$-4294967296, %rcx      # imm = 0xFFFFFFFF00000000
	movq	%rcx, 556(%rax)
	movq	(%rax), %rdx
	cmpq	%rax, %rdx
	je	.LBB19_62
# BB#61:                                # %if.then.10.2.i.i
	movq	%rcx, 556(%rdx)
.LBB19_62:                              # %for.inc.2.i.i
	movq	40(%rsi), %rax
	testq	%rax, %rax
	je	.LBB19_66
# BB#63:                                # %if.then.3.i.i
	movabsq	$-4294967296, %rcx      # imm = 0xFFFFFFFF00000000
	movq	%rcx, 556(%rax)
	movq	(%rax), %rdx
	cmpq	%rax, %rdx
	je	.LBB19_66
# BB#64:                                # %if.then.10.3.i.i
	movq	%rcx, 556(%rdx)
.LBB19_66:                              # %if.end.70
	cmpq	24(%rsp), %r13          # 8-byte Folded Reload
	sete	%al
	movzbl	%al, %eax
.LBB19_67:                              # %cleanup.72
	addq	$1592, %rsp             # imm = 0x638
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	alloc_restore_step_in, .Lfunc_end19-alloc_restore_step_in
	.cfi_endproc

	.globl	alloc_restore_all
	.align	16, 0x90
	.type	alloc_restore_all,@function
alloc_restore_all:                      # @alloc_restore_all
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp79:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp80:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp81:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp82:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp83:
	.cfi_def_cfa_offset 56
	subq	$1592, %rsp             # imm = 0x638
.Ltmp84:
	.cfi_def_cfa_offset 1648
.Ltmp85:
	.cfi_offset %rbx, -56
.Ltmp86:
	.cfi_offset %r12, -48
.Ltmp87:
	.cfi_offset %r13, -40
.Ltmp88:
	.cfi_offset %r14, -32
.Ltmp89:
	.cfi_offset %r15, -24
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	8(%rbx), %r15
	movq	40(%rbx), %r12
	movq	24(%rbx), %r14
	movq	32(%rbx), %rbp
	.align	16, 0x90
.LBB20_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 552(%r12)
	je	.LBB20_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	616(%r12), %rsi
	movq	%rbx, %rdi
	callq	alloc_restore_step_in
	testl	%eax, %eax
	jns	.LBB20_1
	jmp	.LBB20_58
.LBB20_3:                               # %while.end
	movq	%r15, (%rsp)            # 8-byte Spill
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movabsq	$8589934584, %r14       # imm = 0x1FFFFFFF8
	movq	%r12, %rdi
	callq	alloc_close_chunk
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	*184(%r12)
	movq	296(%r12), %r13
	jmp	.LBB20_4
	.align	16, 0x90
.LBB20_10:                              # %for.end.i
                                        #   in Loop: Header=BB20_4 Depth=1
	movq	72(%r13), %r13
.LBB20_4:                               # %while.end
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_6 Depth 2
	testq	%r13, %r13
	je	.LBB20_11
# BB#5:                                 # %for.body.i
                                        #   in Loop: Header=BB20_4 Depth=1
	movq	8(%r13), %rbp
	movq	24(%r13), %r15
	jmp	.LBB20_6
	.align	16, 0x90
.LBB20_9:                               # %if.end.i
                                        #   in Loop: Header=BB20_6 Depth=2
	addq	$31, %rbx
	andq	%r14, %rbx
	addq	%rbx, %rbp
.LBB20_6:                               # %for.body.i
                                        #   Parent Loop BB20_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r15, %rbp
	jae	.LBB20_10
# BB#7:                                 # %for.body.3.i
                                        #   in Loop: Header=BB20_6 Depth=2
	movl	4(%rbp), %ebx
	movq	8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.LBB20_9
# BB#8:                                 # %do.end.i
                                        #   in Loop: Header=BB20_6 Depth=2
	leaq	24(%rbp), %rsi
	movq	%r12, %rdi
	callq	*%rax
	jmp	.LBB20_9
.LBB20_11:                              # %restore_finalize.exit
	movl	$1, %esi
	movq	%r12, %rdi
	callq	*184(%r12)
	movq	(%r12), %rbx
	cmpq	%r12, %rbx
	je	.LBB20_21
# BB#12:                                # %if.then.9
	movq	%r12, 24(%rsp)          # 8-byte Spill
	movq	%rbx, %rdi
	callq	alloc_close_chunk
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	*184(%rbx)
	movq	296(%rbx), %r13
	jmp	.LBB20_13
	.align	16, 0x90
.LBB20_19:                              # %for.end.i.61
                                        #   in Loop: Header=BB20_13 Depth=1
	movq	72(%r13), %r13
.LBB20_13:                              # %if.then.9
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_15 Depth 2
	testq	%r13, %r13
	je	.LBB20_20
# BB#14:                                # %for.body.i.43
                                        #   in Loop: Header=BB20_13 Depth=1
	movq	8(%r13), %rbp
	movq	24(%r13), %r15
	jmp	.LBB20_15
	.align	16, 0x90
.LBB20_18:                              # %if.end.i.57
                                        #   in Loop: Header=BB20_15 Depth=2
	addq	$31, %r12
	andq	%r14, %r12
	addq	%r12, %rbp
.LBB20_15:                              # %for.body.i.43
                                        #   Parent Loop BB20_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r15, %rbp
	jae	.LBB20_19
# BB#16:                                # %for.body.3.i.49
                                        #   in Loop: Header=BB20_15 Depth=2
	movl	4(%rbp), %r12d
	movq	8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.LBB20_18
# BB#17:                                # %do.end.i.51
                                        #   in Loop: Header=BB20_15 Depth=2
	leaq	24(%rbp), %rsi
	movq	%rbx, %rdi
	callq	*%rax
	jmp	.LBB20_18
.LBB20_20:                              # %restore_finalize.exit62
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	*184(%rbx)
	movq	24(%rsp), %r12          # 8-byte Reload
.LBB20_21:                              # %if.end.10
	movq	%r12, 24(%rsp)          # 8-byte Spill
	movq	16(%rsp), %rbx          # 8-byte Reload
	cmpq	%r12, %rbx
	je	.LBB20_40
# BB#22:                                # %land.lhs.true
	cmpl	$1, 592(%rbx)
	jne	.LBB20_40
# BB#23:                                # %if.then.13
	movq	%rbx, %rdi
	callq	alloc_close_chunk
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	*184(%rbx)
	movq	296(%rbx), %r15
	testq	%r15, %r15
	movq	%rbx, %r13
	je	.LBB20_30
	.align	16, 0x90
.LBB20_24:                              # %for.body.i.71
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_25 Depth 2
	movq	8(%r15), %rbp
	movq	24(%r15), %r12
	jmp	.LBB20_25
	.align	16, 0x90
.LBB20_28:                              # %if.end.i.85
                                        #   in Loop: Header=BB20_25 Depth=2
	addq	$31, %rbx
	andq	%r14, %rbx
	addq	%rbx, %rbp
.LBB20_25:                              # %for.body.i.71
                                        #   Parent Loop BB20_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r12, %rbp
	jae	.LBB20_29
# BB#26:                                # %for.body.3.i.77
                                        #   in Loop: Header=BB20_25 Depth=2
	movl	4(%rbp), %ebx
	movq	8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.LBB20_28
# BB#27:                                # %do.end.i.79
                                        #   in Loop: Header=BB20_25 Depth=2
	leaq	24(%rbp), %rsi
	movq	%r13, %rdi
	callq	*%rax
	jmp	.LBB20_28
	.align	16, 0x90
.LBB20_29:                              # %for.end.i.89
                                        #   in Loop: Header=BB20_24 Depth=1
	movq	72(%r15), %r15
	testq	%r15, %r15
	jne	.LBB20_24
.LBB20_30:                              # %restore_finalize.exit90
	movl	$1, %esi
	movq	%r13, %rdi
	callq	*184(%r13)
	movq	%r13, %rax
	movq	(%rax), %r13
	cmpq	%rax, %r13
	je	.LBB20_40
# BB#31:                                # %if.then.16
	movq	%r13, %rdi
	callq	alloc_close_chunk
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	*184(%r13)
	movq	296(%r13), %r15
	jmp	.LBB20_32
	.align	16, 0x90
.LBB20_38:                              # %for.end.i.117
                                        #   in Loop: Header=BB20_32 Depth=1
	movq	72(%r15), %r15
.LBB20_32:                              # %if.then.16
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_34 Depth 2
	testq	%r15, %r15
	je	.LBB20_39
# BB#33:                                # %for.body.i.99
                                        #   in Loop: Header=BB20_32 Depth=1
	movq	8(%r15), %rbp
	movq	24(%r15), %r12
	jmp	.LBB20_34
	.align	16, 0x90
.LBB20_37:                              # %if.end.i.113
                                        #   in Loop: Header=BB20_34 Depth=2
	addq	$31, %rbx
	andq	%r14, %rbx
	addq	%rbx, %rbp
.LBB20_34:                              # %for.body.i.99
                                        #   Parent Loop BB20_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r12, %rbp
	jae	.LBB20_38
# BB#35:                                # %for.body.3.i.105
                                        #   in Loop: Header=BB20_34 Depth=2
	movl	4(%rbp), %ebx
	movq	8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.LBB20_37
# BB#36:                                # %do.end.i.107
                                        #   in Loop: Header=BB20_34 Depth=2
	leaq	24(%rbp), %rsi
	movq	%r13, %rdi
	callq	*%rax
	jmp	.LBB20_37
.LBB20_39:                              # %restore_finalize.exit118
	movl	$1, %esi
	movq	%r13, %rdi
	callq	*184(%r13)
.LBB20_40:                              # %if.end.18
	movq	8(%rsp), %r13           # 8-byte Reload
	movq	%r13, %rdi
	callq	alloc_close_chunk
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	*184(%r13)
	movq	296(%r13), %r15
	jmp	.LBB20_41
	.align	16, 0x90
.LBB20_47:                              # %for.end.i.145
                                        #   in Loop: Header=BB20_41 Depth=1
	movq	72(%r15), %r15
.LBB20_41:                              # %if.end.18
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_43 Depth 2
	testq	%r15, %r15
	je	.LBB20_48
# BB#42:                                # %for.body.i.127
                                        #   in Loop: Header=BB20_41 Depth=1
	movq	8(%r15), %rbp
	movq	24(%r15), %r12
	jmp	.LBB20_43
	.align	16, 0x90
.LBB20_46:                              # %if.end.i.141
                                        #   in Loop: Header=BB20_43 Depth=2
	addq	$31, %rbx
	andq	%r14, %rbx
	addq	%rbx, %rbp
.LBB20_43:                              # %for.body.i.127
                                        #   Parent Loop BB20_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r12, %rbp
	jae	.LBB20_47
# BB#44:                                # %for.body.3.i.133
                                        #   in Loop: Header=BB20_43 Depth=2
	movl	4(%rbp), %ebx
	movq	8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.LBB20_46
# BB#45:                                # %do.end.i.135
                                        #   in Loop: Header=BB20_43 Depth=2
	leaq	24(%rbp), %rsi
	movq	%r13, %rdi
	callq	*%rax
	jmp	.LBB20_46
.LBB20_48:                              # %restore_finalize.exit146
	movl	$1, %esi
	movq	%r13, %rdi
	callq	*184(%r13)
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	32(%rcx), %rax
	movq	%rax, 1560(%rsp)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	%xmm1, 1544(%rsp)
	movups	%xmm0, 1528(%rsp)
	movl	$0, 1568(%rsp)
	leaq	32(%rsp), %rdi
	callq	font_restore
	testl	%eax, %eax
	js	.LBB20_58
# BB#49:                                # %if.end.i.148
	cmpl	$0, 1568(%rsp)
	je	.LBB20_51
# BB#50:                                # %if.then.1.i
	movq	192, %rax
	movq	120(%rax), %rdi
	leaq	32(%rsp), %rsi
	callq	names_restore
.LBB20_51:                              # %cleanup.cont
	movl	$1, %esi
	movl	$.L.str.13, %edx
	movq	24(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	callq	*48(%rbp)
	movq	(%rbp), %rdi
	cmpq	%rbp, %rdi
	je	.LBB20_53
# BB#52:                                # %if.then.27
	movl	$1, %esi
	movl	$.L.str.13, %edx
	callq	*48(%rdi)
.LBB20_53:                              # %if.end.28
	movq	16(%rsp), %rbx          # 8-byte Reload
	cmpq	%rbp, %rbx
	je	.LBB20_57
# BB#54:                                # %if.then.30
	decl	592(%rbx)
	jne	.LBB20_57
# BB#55:                                # %if.then.32
	movl	$1, %esi
	movl	$.L.str.13, %edx
	movq	%rbx, %rdi
	callq	*48(%rbx)
	movq	(%rbx), %rdi
	cmpq	%rbx, %rdi
	je	.LBB20_57
# BB#56:                                # %if.then.35
	movl	$1, %esi
	movl	$.L.str.13, %edx
	callq	*48(%rdi)
.LBB20_57:                              # %if.end.38
	movl	$1, %esi
	movl	$.L.str.13, %edx
	movq	%r13, %rdi
	callq	*48(%r13)
	xorl	%eax, %eax
.LBB20_58:                              # %cleanup.39
	addq	$1592, %rsp             # imm = 0x638
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	alloc_restore_all, .Lfunc_end20-alloc_restore_all
	.cfi_endproc

	.globl	alloc_forget_save_in
	.align	16, 0x90
	.type	alloc_forget_save_in,@function
alloc_forget_save_in:                   # @alloc_forget_save_in
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp92:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp93:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp94:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp95:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp96:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp97:
	.cfi_def_cfa_offset 64
.Ltmp98:
	.cfi_offset %rbx, -56
.Ltmp99:
	.cfi_offset %r12, -48
.Ltmp100:
	.cfi_offset %r13, -40
.Ltmp101:
	.cfi_offset %r14, -32
.Ltmp102:
	.cfi_offset %r15, -24
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	1528(%r15), %r13
	leaq	(%rsp), %r12
	.align	16, 0x90
.LBB21_1:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_7 Depth 2
                                        #     Child Loop BB21_12 Depth 2
	movq	616(%r13), %rbx
	cmpq	$0, 1544(%rbx)
	movl	552(%r13), %eax
	je	.LBB21_3
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB21_1 Depth=1
	decl	%eax
	movl	%eax, 552(%r13)
.LBB21_3:                               # %if.end
                                        #   in Loop: Header=BB21_1 Depth=1
	testl	%eax, %eax
	movq	600(%r13), %rbp
	je	.LBB21_15
# BB#4:                                 # %if.then.3
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r12, %rcx
	callq	save_set_new
	testl	%eax, %eax
	js	.LBB21_52
# BB#5:                                 # %if.end.6
                                        #   in Loop: Header=BB21_1 Depth=1
	testq	%rbp, %rbp
	je	.LBB21_6
	.align	16, 0x90
.LBB21_7:                               # %while.cond
                                        #   Parent Loop BB21_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbp, %rax
	movq	(%rax), %rbp
	testq	%rbp, %rbp
	jne	.LBB21_7
# BB#8:                                 # %while.end
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	600(%rbx), %rcx
	movq	%rcx, (%rax)
	jmp	.LBB21_9
	.align	16, 0x90
.LBB21_6:                               # %if.then.8
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	600(%rbx), %rax
	movq	%rax, 600(%r13)
.LBB21_9:                               # %if.end.17
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	568(%r13), %rcx
	movq	616(%r13), %rax
	movq	568(%rax), %rax
	testq	%rcx, %rcx
	je	.LBB21_10
# BB#11:                                # %if.else.i
                                        #   in Loop: Header=BB21_1 Depth=1
	testq	%rax, %rax
	je	.LBB21_14
	.align	16, 0x90
.LBB21_12:                              # %while.cond.i
                                        #   Parent Loop BB21_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rdx
	movq	280(%rdx), %rcx
	testq	%rcx, %rcx
	jne	.LBB21_12
# BB#13:                                # %while.end.i
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	%rax, 280(%rdx)
	movq	%rdx, 272(%rax)
	jmp	.LBB21_14
	.align	16, 0x90
.LBB21_10:                              # %if.then.i
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	%rax, 568(%r13)
.LBB21_14:                              # %do.cond
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	%r13, %rdi
	callq	combine_space
	xorl	%eax, %eax
	cmpq	%r15, %rbx
	jne	.LBB21_1
	jmp	.LBB21_52
.LBB21_15:                              # %if.else.18
	testq	%rbp, %rbp
	je	.LBB21_20
	.align	16, 0x90
.LBB21_16:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	32(%rbp), %eax
	cmpl	$65533, %eax            # imm = 0xFFFD
	je	.LBB21_19
# BB#17:                                # %if.else.i.54
                                        #   in Loop: Header=BB21_16 Depth=1
	movq	8(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$16383, %ecx            # imm = 0x3FFF
	ja	.LBB21_19
# BB#18:                                # %if.then.8.i
                                        #   in Loop: Header=BB21_16 Depth=1
	andl	$65533, %ecx            # imm = 0xFFFD
	movw	%cx, (%rax)
.LBB21_19:                              # %if.end.11.i
                                        #   in Loop: Header=BB21_16 Depth=1
	movq	(%rbp), %rbx
	movl	$.L.str.16, %edx
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	*24(%r13)
	testq	%rbx, %rbx
	movq	%rbx, %rbp
	jne	.LBB21_16
.LBB21_20:                              # %forget_changes.exit
	movq	$0, 600(%r13)
	leaq	(%rsp), %rcx
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	save_set_new
	testl	%eax, %eax
	js	.LBB21_52
# BB#21:                                # %if.end.22
	movq	568(%r13), %rcx
	movq	616(%r13), %rax
	movq	568(%rax), %rax
	testq	%rcx, %rcx
	je	.LBB21_22
# BB#23:                                # %if.else.i.61
	testq	%rax, %rax
	je	.LBB21_26
	.align	16, 0x90
.LBB21_24:                              # %while.cond.i.65
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rdx
	movq	280(%rdx), %rcx
	testq	%rcx, %rcx
	jne	.LBB21_24
# BB#25:                                # %while.end.i.67
	movq	%rax, 280(%rdx)
	movq	%rdx, 272(%rax)
	jmp	.LBB21_26
.LBB21_22:                              # %if.then.i.59
	movq	%rax, 568(%r13)
.LBB21_26:                              # %file_forget_save.exit68
	movq	%r13, %rdi
	callq	combine_space
	movq	1520(%r15), %rbx
	cmpq	1528(%r15), %rbx
	je	.LBB21_40
# BB#27:                                # %land.lhs.true
	cmpq	$0, 616(%rbx)
	je	.LBB21_40
# BB#28:                                # %if.then.33
	movq	600(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB21_33
	.align	16, 0x90
.LBB21_29:                              # %for.body.i.77
                                        # =>This Inner Loop Header: Depth=1
	movzwl	32(%rsi), %eax
	cmpl	$65533, %eax            # imm = 0xFFFD
	je	.LBB21_32
# BB#30:                                # %if.else.i.79
                                        #   in Loop: Header=BB21_29 Depth=1
	movq	8(%rsi), %rax
	movzwl	(%rax), %ecx
	cmpl	$16383, %ecx            # imm = 0x3FFF
	ja	.LBB21_32
# BB#31:                                # %if.then.8.i.81
                                        #   in Loop: Header=BB21_29 Depth=1
	andl	$65533, %ecx            # imm = 0xFFFD
	movw	%cx, (%rax)
.LBB21_32:                              # %if.end.11.i.84
                                        #   in Loop: Header=BB21_29 Depth=1
	movq	(%rsi), %rbp
	movl	$.L.str.16, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	testq	%rbp, %rbp
	movq	%rbp, %rsi
	jne	.LBB21_29
.LBB21_33:                              # %forget_changes.exit85
	movq	$0, 600(%rbx)
	leaq	(%rsp), %rcx
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	save_set_new
	testl	%eax, %eax
	js	.LBB21_52
# BB#34:                                # %if.end.37
	movq	568(%rbx), %rcx
	movq	616(%rbx), %rax
	movq	568(%rax), %rax
	testq	%rcx, %rcx
	je	.LBB21_35
# BB#36:                                # %if.else.i.44
	testq	%rax, %rax
	je	.LBB21_39
	.align	16, 0x90
.LBB21_37:                              # %while.cond.i.48
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rdx
	movq	280(%rdx), %rcx
	testq	%rcx, %rcx
	jne	.LBB21_37
# BB#38:                                # %while.end.i.50
	movq	%rax, 280(%rdx)
	movq	%rdx, 272(%rax)
	jmp	.LBB21_39
.LBB21_35:                              # %if.then.i.42
	movq	%rax, 568(%rbx)
.LBB21_39:                              # %file_forget_save.exit51
	movq	%rbx, %rdi
	callq	combine_space
.LBB21_40:                              # %if.end.38
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	%rax, 64(%r14)
	movq	16(%r14), %rax
	testq	%rax, %rax
	je	.LBB21_43
# BB#41:                                # %if.then.i.i
	movabsq	$-4294967296, %rcx      # imm = 0xFFFFFFFF00000000
	movq	%rcx, 556(%rax)
	movq	(%rax), %rdx
	cmpq	%rax, %rdx
	je	.LBB21_43
# BB#42:                                # %if.then.10.i.i
	movq	%rcx, 556(%rdx)
.LBB21_43:                              # %for.inc.i.i
	movq	24(%r14), %rax
	testq	%rax, %rax
	je	.LBB21_46
# BB#44:                                # %if.then.1.i.i
	movabsq	$-4294967296, %rcx      # imm = 0xFFFFFFFF00000000
	movq	%rcx, 556(%rax)
	movq	(%rax), %rdx
	cmpq	%rax, %rdx
	je	.LBB21_46
# BB#45:                                # %if.then.10.1.i.i
	movq	%rcx, 556(%rdx)
.LBB21_46:                              # %for.inc.1.i.i
	movq	32(%r14), %rax
	testq	%rax, %rax
	je	.LBB21_49
# BB#47:                                # %if.then.2.i.i
	movabsq	$-4294967296, %rcx      # imm = 0xFFFFFFFF00000000
	movq	%rcx, 556(%rax)
	movq	(%rax), %rdx
	cmpq	%rax, %rdx
	je	.LBB21_49
# BB#48:                                # %if.then.10.2.i.i
	movq	%rcx, 556(%rdx)
.LBB21_49:                              # %for.inc.2.i.i
	movq	40(%r14), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB21_52
# BB#50:                                # %if.then.3.i.i
	movabsq	$-4294967296, %rdx      # imm = 0xFFFFFFFF00000000
	movq	%rdx, 556(%rcx)
	movq	(%rcx), %rsi
	cmpq	%rcx, %rsi
	je	.LBB21_52
# BB#51:                                # %if.then.10.3.i.i
	movq	%rdx, 556(%rsi)
.LBB21_52:                              # %cleanup.41
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	alloc_forget_save_in, .Lfunc_end21-alloc_forget_save_in
	.cfi_endproc

	.align	16, 0x90
	.type	combine_space,@function
combine_space:                          # @combine_space
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp104:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp105:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp106:
	.cfi_def_cfa_offset 32
.Ltmp107:
	.cfi_offset %rbx, -32
.Ltmp108:
	.cfi_offset %r14, -24
.Ltmp109:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	616(%r15), %r14
	callq	alloc_close_chunk
	movq	288(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB22_4
	.align	16, 0x90
.LBB22_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	80(%rsi), %rbx
	movq	88(%rsi), %rax
	testq	%rax, %rax
	je	.LBB22_2
# BB#8:                                 # %if.else
                                        #   in Loop: Header=BB22_1 Depth=1
	decl	96(%rax)
	cmpq	%rsi, 488(%r15)
	jne	.LBB22_10
# BB#9:                                 # %if.then.6
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	%rax, 488(%r15)
.LBB22_10:                              # %if.end
                                        #   in Loop: Header=BB22_1 Depth=1
	cmpq	%rsi, 504(%r15)
	jne	.LBB22_12
# BB#11:                                # %if.then.10
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	%rax, 504(%r15)
.LBB22_12:                              # %if.end.13
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	24(%rax), %rcx
	movl	$0, (%rcx)
	movl	(%rsi), %edx
	leal	24(%rcx), %edi
	negl	%edi
	leal	32(%rdx,%rdi), %edx
	movl	%edx, 4(%rcx)
	movq	$st_bytes, 8(%rcx)
	movups	24(%rsi), %xmm0
	movups	%xmm0, 24(%rax)
	movups	40(%rsi), %xmm0
	movups	%xmm0, 40(%rax)
	movl	100(%rsi), %ecx
	orl	%ecx, 100(%rax)
	movq	200(%r15), %rdi
	movl	$.L.str.14, %edx
	callq	*24(%rdi)
	jmp	.LBB22_3
	.align	16, 0x90
.LBB22_2:                               # %if.then
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	%rsi, %rdi
	movq	%r14, %rsi
	callq	alloc_link_chunk
.LBB22_3:                               # %for.cond.backedge
                                        #   in Loop: Header=BB22_1 Depth=1
	testq	%rbx, %rbx
	movq	%rbx, %rsi
	jne	.LBB22_1
.LBB22_4:                               # %for.end
	movups	288(%r14), %xmm0
	movups	%xmm0, 288(%r15)
	movq	512(%r14), %rax
	addq	%rax, 512(%r15)
	movdqu	520(%r15), %xmm0
	movq	528(%r14), %xmm1        # xmm1 = mem[0],zero
	movq	512(%r14), %xmm2        # xmm2 = mem[0],zero
	punpcklqdq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0]
	paddq	%xmm0, %xmm2
	movdqu	%xmm2, 520(%r15)
	movdqu	536(%r14), %xmm0
	movdqu	536(%r15), %xmm1
	paddq	%xmm0, %xmm1
	movdqu	%xmm1, 536(%r15)
	movq	616(%r14), %rax
	movq	%rax, 616(%r15)
	movq	664(%r14), %rax
	movq	%rax, 664(%r15)
	movups	648(%r14), %xmm0
	movups	%xmm0, 648(%r15)
	xorl	%eax, %eax
	.align	16, 0x90
.LBB22_5:                               # %for.body.56
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_13 Depth 2
	movq	680(%r14,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.LBB22_15
# BB#6:                                 # %if.else.63
                                        #   in Loop: Header=BB22_5 Depth=1
	movq	680(%r15,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.LBB22_7
	.align	16, 0x90
.LBB22_13:                              # %while.cond
                                        #   Parent Loop BB22_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %rsi
	movq	(%rsi), %rdx
	testq	%rdx, %rdx
	jne	.LBB22_13
# BB#14:                                # %while.end
                                        #   in Loop: Header=BB22_5 Depth=1
	movq	%rcx, (%rsi)
	jmp	.LBB22_15
	.align	16, 0x90
.LBB22_7:                               # %if.then.66
                                        #   in Loop: Header=BB22_5 Depth=1
	movq	%rcx, 680(%r15,%rax,8)
.LBB22_15:                              # %if.end.74
                                        #   in Loop: Header=BB22_5 Depth=1
	incq	%rax
	cmpq	$102, %rax
	jne	.LBB22_5
# BB#16:                                # %for.end.76
	movl	672(%r14), %eax
	cmpl	672(%r15), %eax
	jbe	.LBB22_18
# BB#17:                                # %if.then.80
	movl	%eax, 672(%r15)
.LBB22_18:                              # %if.end.83
	movl	$.L.str.15, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	*24(%r15)
	movq	%r15, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	alloc_open_chunk        # TAILCALL
.Lfunc_end22:
	.size	combine_space, .Lfunc_end22-combine_space
	.cfi_endproc

	.globl	gs_save_any_memory
	.align	16, 0x90
	.type	gs_save_any_memory,@function
gs_save_any_memory:                     # @gs_save_any_memory
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1528(%rdi), %rax
	retq
.Lfunc_end23:
	.size	gs_save_any_memory, .Lfunc_end23-gs_save_any_memory
	.cfi_endproc

	.align	16, 0x90
	.type	change_clear_marks,@function
change_clear_marks:                     # @change_clear_marks
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	16(%rsi), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	movw	$-4097, %cx             # imm = 0xFFFFFFFFFFFFEFFF
	movw	$-2, %dx
	cmovaw	%cx, %dx
	andl	%eax, %edx
	movw	%dx, 16(%rsi)
	retq
.Lfunc_end24:
	.size	change_clear_marks, .Lfunc_end24-change_clear_marks
	.cfi_endproc

	.align	16, 0x90
	.type	change_enum_ptrs,@function
change_enum_ptrs:                       # @change_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	cmpl	$2, %ecx
	je	.LBB25_9
# BB#1:                                 # %entry
	cmpl	$1, %ecx
	jne	.LBB25_2
# BB#4:                                 # %sw.bb.2
	movswq	32(%rsi), %rax
	testq	%rax, %rax
	js	.LBB25_6
# BB#5:                                 # %if.then
	movq	8(%rsi), %rcx
	subq	%rax, %rcx
	movq	%rcx, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.LBB25_9:                               # %sw.bb.16
	addq	$16, %rsi
	movq	%rsi, (%r8)
	jmp	.LBB25_10
.LBB25_2:                               # %entry
	testl	%ecx, %ecx
	jne	.LBB25_11
# BB#3:                                 # %sw.bb
	movq	(%rsi), %rax
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.LBB25_6:                               # %if.else
	movzwl	%ax, %eax
	cmpl	$65533, %eax            # imm = 0xFFFD
	jne	.LBB25_7
# BB#8:                                 # %if.else.14
	movq	$0, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.LBB25_7:                               # %if.then.11
	movq	8(%rsi), %rax
	movq	%rax, (%r8)
.LBB25_10:                              # %cleanup
	movl	$ptr_ref_procs, %eax
.LBB25_11:                              # %cleanup
	retq
.Lfunc_end25:
	.size	change_enum_ptrs, .Lfunc_end25-change_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	change_reloc_ptrs,@function
change_reloc_ptrs:                      # @change_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp110:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp111:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp112:
	.cfi_def_cfa_offset 32
.Ltmp113:
	.cfi_offset %rbx, -32
.Ltmp114:
	.cfi_offset %r14, -24
.Ltmp115:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movq	(%r14), %rax
	movq	(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, (%rbx)
	movswl	32(%rbx), %eax
	cmpl	$-3, %eax
	je	.LBB26_4
# BB#1:                                 # %entry
	cmpl	$-2, %eax
	je	.LBB26_10
# BB#2:                                 # %entry
	cmpl	$-1, %eax
	jne	.LBB26_9
# BB#3:                                 # %sw.bb
	movq	(%r14), %rax
	movq	8(%rbx), %rdi
	movq	%r14, %rsi
	callq	*32(%rax)
	movq	%rax, 8(%rbx)
	jmp	.LBB26_10
.LBB26_4:                               # %sw.bb.4
	movq	8(%rbx), %rdi
	movl	$st_refs, %eax
	cmpq	%rax, -16(%rdi)
	je	.LBB26_6
# BB#5:                                 # %if.then
	movq	$0, 8
	movq	8(%rbx), %rdi
.LBB26_6:                               # %if.end
	testq	%rdi, %rdi
	je	.LBB26_10
# BB#7:                                 # %land.lhs.true
	cmpl	$0, 68(%r14)
	jne	.LBB26_10
# BB#8:                                 # %if.then.14
	movq	%r14, %rsi
	callq	igc_reloc_ref_ptr_nocheck
	movq	%rax, 8(%rbx)
	jmp	.LBB26_10
.LBB26_9:                               # %sw.default
	cltq
	movq	8(%rbx), %rdi
	subq	%rax, %rdi
	movq	(%r14), %rax
	movq	%r14, %rsi
	callq	*(%rax)
	movswq	32(%rbx), %rcx
	addq	%rax, %rcx
	movq	%rcx, 8(%rbx)
.LBB26_10:                              # %sw.epilog
	leaq	16(%rbx), %r15
	movzwl	16(%rbx), %eax
	cmpl	$16384, %eax            # imm = 0x4000
	jb	.LBB26_12
# BB#11:                                # %if.then.33
	andl	$61439, %eax            # imm = 0xEFFF
	jmp	.LBB26_13
.LBB26_12:                              # %if.else
	addq	$32, %rbx
	movq	(%r14), %rax
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	*40(%rax)
	movzwl	(%r15), %eax
	andl	$65534, %eax            # imm = 0xFFFE
.LBB26_13:                              # %if.end.44
	movw	%ax, (%r15)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end26:
	.size	change_reloc_ptrs, .Lfunc_end26-change_reloc_ptrs
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"alloc_save_state(local save)"
	.size	.L.str, 29

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"alloc_save_state(global save)"
	.size	.L.str.1, 30

	.type	st_alloc_change,@object # @st_alloc_change
	.section	.rodata,"a",@progbits
	.align	8
st_alloc_change:
	.long	40                      # 0x28
	.zero	4
	.quad	.L.str.11
	.quad	0
	.quad	change_clear_marks
	.quad	change_enum_ptrs
	.quad	change_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_alloc_change, 64

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"alloc_save_change"
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"./psi/isave.c"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Bad type %u for save!  pcont = 0x%lx, where = 0x%lx\n"
	.size	.L.str.5, 53

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"alloc_save_remove"
	.size	.L.str.6, 18

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"alloc_save_space(inner)"
	.size	.L.str.8, 24

	.type	st_alloc_save,@object   # @st_alloc_save
	.section	.rodata,"a",@progbits
	.align	8
st_alloc_save:
	.long	1560                    # 0x618
	.zero	4
	.quad	.L.str.10
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	save_reloc_ptrs
	.size	st_alloc_save, 64

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"alloc_save_space(save)"
	.size	.L.str.9, 23

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"alloc_save"
	.size	.L.str.10, 11

	.type	save_reloc_ptrs,@object # @save_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
save_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	st_ref_memory
	.quad	save_enum_ptrs
	.size	save_reloc_ptrs, 24

	.type	save_enum_ptrs,@object  # @save_enum_ptrs
	.align	2
save_enum_ptrs:
	.short	0                       # 0x0
	.short	1552                    # 0x610
	.size	save_enum_ptrs, 4

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"alloc_change"
	.size	.L.str.11, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"(free_all)"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"combine_space(inner)"
	.size	.L.str.14, 21

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"combine_space(saved)"
	.size	.L.str.15, 21

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"forget_changes"
	.size	.L.str.16, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
