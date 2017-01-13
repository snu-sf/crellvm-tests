	.text
	.file	"zdps1.bc"
	.globl	zgstate
	.align	16, 0x90
	.type	zgstate,@function
zgstate:                                # @zgstate
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
	movq	%rdi, %r12
	movq	624(%r12), %r13
	movq	(%r12), %rdi
	callq	gs_state_client_data
	movq	%rax, %rbx
	movl	56(%r12), %ebp
	xorl	%ecx, %ecx
	cmpl	$12, %ebp
	je	.LBB0_2
# BB#1:                                 # %land.lhs.true.i
	movq	8(%r12), %rdi
	callq	imemory_save_level
	movl	$-7, %r15d
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jg	.LBB0_15
	.align	16, 0x90
.LBB0_2:                                # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rbx,%rcx), %eax
	andl	$12, %eax
	movl	$-7, %r15d
	cmpl	%ebp, %eax
	ja	.LBB0_15
# BB#3:                                 # %if.end.5.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movzwl	16(%rbx,%rcx), %eax
	andl	$12, %eax
	cmpl	%ebp, %eax
	ja	.LBB0_15
# BB#4:                                 # %if.end.5.i.1
                                        #   in Loop: Header=BB0_2 Depth=1
	movzwl	32(%rbx,%rcx), %eax
	andl	$12, %eax
	cmpl	%ebp, %eax
	ja	.LBB0_15
# BB#5:                                 # %if.end.5.i.2
                                        #   in Loop: Header=BB0_2 Depth=1
	movzwl	48(%rbx,%rcx), %eax
	andl	$12, %eax
	cmpl	%ebp, %eax
	ja	.LBB0_15
# BB#6:                                 # %if.end.5.i.3
                                        #   in Loop: Header=BB0_2 Depth=1
	addq	$64, %rcx
	cmpl	$576, %ecx              # imm = 0x240
	jne	.LBB0_2
# BB#7:                                 # %if.end
	movq	8(%r12), %rdi
	movl	$st_igstate_obj, %esi
	movl	$.L.str.1, %edx
	callq	*72(%rdi)
	movq	%rax, %r14
	movl	$-25, %r15d
	testq	%r14, %r14
	je	.LBB0_15
# BB#8:                                 # %if.end.8
	movq	(%r12), %rdi
	movq	8(%r12), %rsi
	callq	gs_state_copy
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_9
# BB#10:                                # %if.end.20
	movq	%rbx, %rdi
	callq	gs_state_client_data
	movl	76(%r12), %ecx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB0_11:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rax,%rdx), %esi
	orl	%ecx, %esi
	movw	%si, (%rax,%rdx)
	movzwl	16(%rax,%rdx), %esi
	orl	%ecx, %esi
	movw	%si, 16(%rax,%rdx)
	movzwl	32(%rax,%rdx), %esi
	orl	%ecx, %esi
	movw	%si, 32(%rax,%rdx)
	movzwl	48(%rax,%rdx), %esi
	orl	%ecx, %esi
	movw	%si, 48(%rax,%rdx)
	addq	$64, %rdx
	cmpl	$576, %edx              # imm = 0x240
	jne	.LBB0_11
# BB#12:                                # %do.end
	leaq	16(%r13), %rax
	cmpq	640(%r12), %rax
	jbe	.LBB0_14
# BB#13:                                # %if.then.29
	movl	$1, 688(%r12)
	movl	$-16, %r15d
	jmp	.LBB0_15
.LBB0_9:                                # %if.then.14
	movq	8(%r12), %rdi
	movl	$.L.str.1, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	jmp	.LBB0_15
.LBB0_14:                               # %if.else
	movq	%rax, 624(%r12)
	movq	%r14, 24(%r13)
	movl	56(%r12), %eax
	movl	%eax, %ecx
	orl	$112, %ecx
	addl	$2304, %ecx             # imm = 0x900
	movw	%cx, 16(%r13)
	movq	%rbx, 8(%r14)
	addl	$2048, %eax             # imm = 0x800
	movw	%ax, (%r14)
	xorl	%r15d, %r15d
.LBB0_15:                               # %cleanup
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	zgstate, .Lfunc_end0-zgstate
	.cfi_endproc

	.globl	zcopy_gstate
	.align	16, 0x90
	.type	zcopy_gstate,@function
zcopy_gstate:                           # @zcopy_gstate
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
	subq	$24, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 80
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
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzwl	(%rbx), %eax
	andl	$15872, %eax            # imm = 0x3E00
	cmpl	$2048, %eax             # imm = 0x800
	jne	.LBB1_2
# BB#1:                                 # %land.lhs.true
	movq	8(%r14), %rdi
	movq	8(%rbx), %rsi
	callq	*128(%rdi)
	movl	$st_igstate_obj, %ecx
	cmpq	%rcx, %rax
	je	.LBB1_4
.LBB1_2:                                # %if.then
	movq	%rbx, %rdi
.LBB1_3:                                # %if.then
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB1_4:                                # %if.end
	leaq	-16(%rbx), %r15
	movzwl	(%r15), %eax
	andl	$15872, %eax            # imm = 0x3E00
	cmpl	$2048, %eax             # imm = 0x800
	jne	.LBB1_6
# BB#5:                                 # %land.lhs.true.13
	leaq	8(%r14), %rbp
	movq	(%rbp), %rdi
	movq	-8(%rbx), %rsi
	callq	*128(%rdi)
	movl	$st_igstate_obj, %ecx
	cmpq	%rcx, %rax
	je	.LBB1_7
.LBB1_6:                                # %if.then.25
	movq	%r15, %rdi
	jmp	.LBB1_3
.LBB1_7:                                # %do.body
	testb	$16, (%rbx)
	jne	.LBB1_9
# BB#8:
	movl	$-7, %ebp
	jmp	.LBB1_26
.LBB1_9:                                # %do.end
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	%r14, %rdi
	callq	gstate_unshare
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_26
# BB#10:                                # %if.end.38
	movq	-8(%rbx), %rax
	movq	8(%rbx), %rcx
	movq	8(%rcx), %rdi
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	8(%rax), %rbp
	movq	%rbp, (%rsp)            # 8-byte Spill
	callq	gs_state_client_data
	movq	%rax, %r12
	movq	%rbp, %rdi
	callq	gs_state_client_data
	movq	%rax, %rbp
	movzwl	(%rbx), %r13d
	andl	$12, %r13d
	xorl	%ecx, %ecx
	cmpl	$12, %r13d
	je	.LBB1_13
# BB#11:                                # %land.lhs.true.i
	movq	8(%r14), %rdi
	callq	imemory_save_level
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jle	.LBB1_13
# BB#12:
	movl	$-7, %ebp
	jmp	.LBB1_26
.LBB1_13:                               # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rbp,%rcx), %eax
	andl	$12, %eax
	cmpl	%r13d, %eax
	ja	.LBB1_14
# BB#15:                                # %if.end.5.i
                                        #   in Loop: Header=BB1_13 Depth=1
	movzwl	16(%rbp,%rcx), %eax
	andl	$12, %eax
	cmpl	%r13d, %eax
	ja	.LBB1_16
# BB#27:                                # %if.end.5.i.1
                                        #   in Loop: Header=BB1_13 Depth=1
	movzwl	32(%rbp,%rcx), %eax
	andl	$12, %eax
	cmpl	%r13d, %eax
	ja	.LBB1_28
# BB#29:                                # %if.end.5.i.2
                                        #   in Loop: Header=BB1_13 Depth=1
	movzwl	48(%rbp,%rcx), %eax
	andl	$12, %eax
	cmpl	%r13d, %eax
	ja	.LBB1_30
# BB#17:                                # %if.end.5.i.3
                                        #   in Loop: Header=BB1_13 Depth=1
	addq	$64, %rcx
	cmpl	$576, %ecx              # imm = 0x240
	jne	.LBB1_13
# BB#18:                                # %if.end.58
	xorl	%ebp, %ebp
	movq	16(%rsp), %r13          # 8-byte Reload
.LBB1_19:                               # %do.body.59
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r12,%rbp), %eax
	testl	72(%r14), %eax
	jne	.LBB1_21
# BB#20:                                # %cond.true
                                        #   in Loop: Header=BB1_19 Depth=1
	leaq	(%r12,%rbp), %rdx
	movl	$.L.str.2, %ecx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	alloc_save_change
.LBB1_21:                               # %cond.end
                                        #   in Loop: Header=BB1_19 Depth=1
	addq	$16, %rbp
	cmpl	$576, %ebp              # imm = 0x240
	jne	.LBB1_19
# BB#22:                                # %do.end.71
	movq	(%r13), %rsi
	movq	8(%rsp), %r13           # 8-byte Reload
	movq	%r13, %rdi
	callq	gs_state_swap_memory
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	%r13, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	gs_copygstate
	movl	%eax, %ebp
	movq	%r13, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	gs_state_swap_memory
	testl	%ebp, %ebp
	js	.LBB1_26
# BB#23:                                # %do.body.83.preheader
	movl	76(%r14), %eax
	xorl	%ecx, %ecx
.LBB1_24:                               # %do.body.83
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r12,%rcx), %edx
	orl	%eax, %edx
	movw	%dx, (%r12,%rcx)
	movzwl	16(%r12,%rcx), %edx
	orl	%eax, %edx
	movw	%dx, 16(%r12,%rcx)
	movzwl	32(%r12,%rcx), %edx
	orl	%eax, %edx
	movw	%dx, 32(%r12,%rcx)
	movzwl	48(%r12,%rcx), %edx
	orl	%eax, %edx
	movw	%dx, 48(%r12,%rcx)
	addq	$64, %rcx
	cmpl	$576, %ecx              # imm = 0x240
	jne	.LBB1_24
# BB#25:                                # %do.end.93
	movups	(%rbx), %xmm0
	movups	%xmm0, (%r15)
	addq	$-16, 624(%r14)
	xorl	%ebp, %ebp
	jmp	.LBB1_26
.LBB1_14:
	movl	$-7, %ebp
	jmp	.LBB1_26
.LBB1_16:
	movl	$-7, %ebp
	jmp	.LBB1_26
.LBB1_28:
	movl	$-7, %ebp
	jmp	.LBB1_26
.LBB1_30:
	movl	$-7, %ebp
.LBB1_26:                               # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	zcopy_gstate, .Lfunc_end1-zcopy_gstate
	.cfi_endproc

	.align	16, 0x90
	.type	gstate_unshare,@function
gstate_unshare:                         # @gstate_unshare
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 48
.Ltmp31:
	.cfi_offset %rbx, -48
.Ltmp32:
	.cfi_offset %r12, -40
.Ltmp33:
	.cfi_offset %r13, -32
.Ltmp34:
	.cfi_offset %r14, -24
.Ltmp35:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r15
	movq	8(%r15), %r14
	movzwl	(%r14), %ecx
	xorl	%eax, %eax
	testl	72(%rbx), %ecx
	jne	.LBB2_5
# BB#1:                                 # %if.end
	movq	8(%r14), %rdi
	callq	gs_gstate
	movq	%rax, %r12
	movl	$-25, %eax
	testq	%r12, %r12
	je	.LBB2_5
# BB#2:                                 # %if.end.7
	leaq	8(%rbx), %r13
	movq	%r12, %rdi
	callq	gs_state_client_data
	movl	76(%rbx), %ecx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB2_3:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rax,%rdx), %esi
	orl	%ecx, %esi
	movw	%si, (%rax,%rdx)
	movzwl	16(%rax,%rdx), %esi
	orl	%ecx, %esi
	movw	%si, 16(%rax,%rdx)
	movzwl	32(%rax,%rdx), %esi
	orl	%ecx, %esi
	movw	%si, 32(%rax,%rdx)
	movzwl	48(%rax,%rdx), %esi
	orl	%ecx, %esi
	movw	%si, 48(%rax,%rdx)
	addq	$64, %rdx
	cmpl	$576, %edx              # imm = 0x240
	jne	.LBB2_3
# BB#4:                                 # %do.end
	movl	$.L.str.18, %ecx
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	alloc_save_change
	movq	%r12, 8(%r14)
	movl	76(%rbx), %eax
	orl	56(%rbx), %eax
	addl	$2048, %eax             # imm = 0x800
	movw	%ax, (%r14)
	xorl	%eax, %eax
.LBB2_5:                                # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	gstate_unshare, .Lfunc_end2-gstate_unshare
	.cfi_endproc

	.globl	zcurrentgstate
	.align	16, 0x90
	.type	zcurrentgstate,@function
zcurrentgstate:                         # @zcurrentgstate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp39:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp40:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp42:
	.cfi_def_cfa_offset 64
.Ltmp43:
	.cfi_offset %rbx, -56
.Ltmp44:
	.cfi_offset %r12, -48
.Ltmp45:
	.cfi_offset %r13, -40
.Ltmp46:
	.cfi_offset %r14, -32
.Ltmp47:
	.cfi_offset %r15, -24
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	624(%r15), %rbx
	movzwl	(%rbx), %eax
	andl	$15872, %eax            # imm = 0x3E00
	cmpl	$2048, %eax             # imm = 0x800
	jne	.LBB3_25
# BB#1:                                 # %land.lhs.true
	movq	8(%r15), %rdi
	movq	8(%rbx), %rsi
	callq	*128(%rdi)
	movl	$st_igstate_obj, %ecx
	cmpq	%rcx, %rax
	je	.LBB3_2
.LBB3_25:                               # %if.then
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB3_2:                                # %do.body
	testb	$16, (%rbx)
	jne	.LBB3_4
# BB#3:
	movl	$-7, %r13d
	jmp	.LBB3_20
.LBB3_4:                                # %do.end
	movq	%r15, %rdi
	callq	gstate_unshare
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB3_20
# BB#5:                                 # %if.end.17
	leaq	8(%r15), %r13
	movq	8(%rbx), %rax
	movq	8(%rax), %rdi
	movq	%rdi, (%rsp)            # 8-byte Spill
	callq	gs_state_client_data
	movq	%rax, %r14
	movq	(%r15), %rdi
	callq	gs_state_client_data
	movq	%rax, %rbp
	movzwl	(%rbx), %r12d
	andl	$12, %r12d
	xorl	%ecx, %ecx
	cmpl	$12, %r12d
	je	.LBB3_8
# BB#6:                                 # %land.lhs.true.i
	movq	8(%r15), %rdi
	callq	imemory_save_level
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jle	.LBB3_8
# BB#7:
	movl	$-7, %r13d
	jmp	.LBB3_20
	.align	16, 0x90
.LBB3_8:                                # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rbp,%rcx), %eax
	andl	$12, %eax
	cmpl	%r12d, %eax
	ja	.LBB3_9
# BB#10:                                # %if.end.5.i
                                        #   in Loop: Header=BB3_8 Depth=1
	movzwl	16(%rbp,%rcx), %eax
	andl	$12, %eax
	cmpl	%r12d, %eax
	ja	.LBB3_11
# BB#21:                                # %if.end.5.i.1
                                        #   in Loop: Header=BB3_8 Depth=1
	movzwl	32(%rbp,%rcx), %eax
	andl	$12, %eax
	cmpl	%r12d, %eax
	ja	.LBB3_22
# BB#23:                                # %if.end.5.i.2
                                        #   in Loop: Header=BB3_8 Depth=1
	movzwl	48(%rbp,%rcx), %eax
	andl	$12, %eax
	cmpl	%r12d, %eax
	ja	.LBB3_24
# BB#12:                                # %if.end.5.i.3
                                        #   in Loop: Header=BB3_8 Depth=1
	addq	$64, %rcx
	cmpl	$576, %ecx              # imm = 0x240
	jne	.LBB3_8
# BB#13:                                # %if.end.33
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB3_14:                               # %do.body.34
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r14,%rbp), %eax
	testl	72(%r15), %eax
	jne	.LBB3_16
# BB#15:                                # %cond.true
                                        #   in Loop: Header=BB3_14 Depth=1
	leaq	(%r14,%rbp), %rdx
	movl	$.L.str.3, %ecx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	alloc_save_change
.LBB3_16:                               # %cond.end
                                        #   in Loop: Header=BB3_14 Depth=1
	addq	$16, %rbp
	cmpl	$576, %ebp              # imm = 0x240
	jne	.LBB3_14
# BB#17:                                # %do.end.46
	movq	8(%r15), %rsi
	movq	(%rsp), %rbp            # 8-byte Reload
	movq	%rbp, %rdi
	callq	gs_state_swap_memory
	movq	%rax, %rbx
	movq	(%r15), %rsi
	movq	%rbp, %rdi
	callq	gs_currentgstate
	movl	%eax, %r13d
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	gs_state_swap_memory
	testl	%r13d, %r13d
	js	.LBB3_20
# BB#18:                                # %do.body.59.preheader
	movl	76(%r15), %eax
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
.LBB3_19:                               # %do.body.59
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r14,%rcx), %edx
	orl	%eax, %edx
	movw	%dx, (%r14,%rcx)
	movzwl	16(%r14,%rcx), %edx
	orl	%eax, %edx
	movw	%dx, 16(%r14,%rcx)
	movzwl	32(%r14,%rcx), %edx
	orl	%eax, %edx
	movw	%dx, 32(%r14,%rcx)
	movzwl	48(%r14,%rcx), %edx
	orl	%eax, %edx
	movw	%dx, 48(%r14,%rcx)
	addq	$64, %rcx
	cmpl	$576, %ecx              # imm = 0x240
	jne	.LBB3_19
	jmp	.LBB3_20
.LBB3_9:
	movl	$-7, %r13d
	jmp	.LBB3_20
.LBB3_11:
	movl	$-7, %r13d
	jmp	.LBB3_20
.LBB3_22:
	movl	$-7, %r13d
	jmp	.LBB3_20
.LBB3_24:
	movl	$-7, %r13d
.LBB3_20:                               # %cleanup
	movl	%r13d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	zcurrentgstate, .Lfunc_end3-zcurrentgstate
	.cfi_endproc

	.globl	zsetgstate
	.align	16, 0x90
	.type	zsetgstate,@function
zsetgstate:                             # @zsetgstate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp51:
	.cfi_def_cfa_offset 32
.Ltmp52:
	.cfi_offset %rbx, -24
.Ltmp53:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzwl	(%rbx), %eax
	andl	$15872, %eax            # imm = 0x3E00
	cmpl	$2048, %eax             # imm = 0x800
	jne	.LBB4_6
# BB#1:                                 # %land.lhs.true
	movq	8(%r14), %rdi
	movq	8(%rbx), %rsi
	callq	*128(%rdi)
	movl	$st_igstate_obj, %ecx
	cmpq	%rcx, %rax
	je	.LBB4_2
.LBB4_6:                                # %if.then
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	check_type_failed       # TAILCALL
.LBB4_2:                                # %do.body
	movl	$-7, %eax
	testb	$32, (%rbx)
	je	.LBB4_5
# BB#3:                                 # %do.end
	movq	(%r14), %rdi
	movq	8(%rbx), %rax
	movq	8(%rax), %rsi
	callq	gs_setgstate
	testl	%eax, %eax
	js	.LBB4_5
# BB#4:                                 # %if.end.21
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
.LBB4_5:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end4:
	.size	zsetgstate, .Lfunc_end4-zsetgstate
	.cfi_endproc

	.globl	zsetbbox
	.align	16, 0x90
	.type	zsetbbox,@function
zsetbbox:                               # @zsetbbox
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp55:
	.cfi_def_cfa_offset 48
.Ltmp56:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	(%rsp), %rdx
	movl	$4, %esi
	callq	num_params
	testl	%eax, %eax
	js	.LBB5_3
# BB#1:                                 # %if.end
	movq	(%rbx), %rdi
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%rsp), %xmm2         # xmm2 = mem[0],zero
	movsd	24(%rsp), %xmm3         # xmm3 = mem[0],zero
	callq	gs_setbbox
	testl	%eax, %eax
	js	.LBB5_3
# BB#2:                                 # %if.end.7
	addq	$-64, 624(%rbx)
	xorl	%eax, %eax
.LBB5_3:                                # %cleanup
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end5:
	.size	zsetbbox, .Lfunc_end5-zsetbbox
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentstrokeadjust,@function
zcurrentstrokeadjust:                   # @zcurrentstrokeadjust
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	16(%rbx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB6_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB6_2:                                # %if.else
	movq	%rax, 624(%rdi)
	movq	(%rdi), %rdi
	callq	gs_currentstrokeadjust
	movw	%ax, 24(%rbx)
	movw	$256, 16(%rbx)          # imm = 0x100
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end6:
	.size	zcurrentstrokeadjust, .Lfunc_end6-zcurrentstrokeadjust
	.cfi_endproc

	.align	16, 0x90
	.type	zsetstrokeadjust,@function
zsetstrokeadjust:                       # @zsetstrokeadjust
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$1, %eax
	jne	.LBB7_2
# BB#1:                                 # %cleanup
	movq	(%rbx), %rax
	movzwl	8(%rdi), %esi
	movq	%rax, %rdi
	callq	gs_setstrokeadjust
	addq	$-16, 624(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.LBB7_2:                                # %if.then
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end7:
	.size	zsetstrokeadjust, .Lfunc_end7-zsetstrokeadjust
	.cfi_endproc

	.align	16, 0x90
	.type	z1copy,@function
z1copy:                                 # @z1copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp63:
	.cfi_def_cfa_offset 32
.Ltmp64:
	.cfi_offset %rbx, -24
.Ltmp65:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	callq	zcopy
	testl	%eax, %eax
	jns	.LBB8_2
# BB#1:                                 # %if.end
	movzbl	1(%r14), %ecx
	cmpl	$9, %ecx
	jne	.LBB8_2
# BB#3:                                 # %if.end.4
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	zcopy_gstate            # TAILCALL
.LBB8_2:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end8:
	.size	z1copy, .Lfunc_end8-z1copy
	.cfi_endproc

	.align	16, 0x90
	.type	zrectappend,@function
zrectappend:                            # @zrectappend
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp67:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 32
	subq	$176, %rsp
.Ltmp69:
	.cfi_def_cfa_offset 208
.Ltmp70:
	.cfi_offset %rbx, -32
.Ltmp71:
	.cfi_offset %r14, -24
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rsi
	movq	8(%rbx), %rdx
	leaq	(%rsp), %rdi
	callq	rect_get
	movl	%eax, %r14d
	testl	%r14d, %r14d
	movl	%r14d, %ebp
	js	.LBB9_5
# BB#1:                                 # %if.end
	movq	(%rbx), %rdi
	movq	(%rsp), %rsi
	movl	8(%rsp), %edx
	callq	gs_rectappend
	movl	%eax, %ebp
	movq	(%rsp), %rsi
	leaq	16(%rsp), %rax
	cmpq	%rax, %rsi
	je	.LBB9_3
# BB#2:                                 # %if.then.i
	movq	8(%rbx), %rdi
	movl	$.L.str.17, %edx
	callq	*24(%rdi)
.LBB9_3:                                # %rect_release.exit
	testl	%ebp, %ebp
	js	.LBB9_5
# BB#4:                                 # %if.end.6
	movslq	%r14d, %rax
	shlq	$4, %rax
	subq	%rax, 624(%rbx)
	xorl	%ebp, %ebp
.LBB9_5:                                # %cleanup
	movl	%ebp, %eax
	addq	$176, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	zrectappend, .Lfunc_end9-zrectappend
	.cfi_endproc

	.align	16, 0x90
	.type	zrectclip,@function
zrectclip:                              # @zrectclip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp74:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 32
	subq	$176, %rsp
.Ltmp76:
	.cfi_def_cfa_offset 208
.Ltmp77:
	.cfi_offset %rbx, -32
.Ltmp78:
	.cfi_offset %r14, -24
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rsi
	movq	8(%rbx), %rdx
	leaq	(%rsp), %rdi
	callq	rect_get
	movl	%eax, %r14d
	testl	%r14d, %r14d
	movl	%r14d, %ebp
	js	.LBB10_5
# BB#1:                                 # %if.end
	movq	(%rbx), %rdi
	movq	(%rsp), %rsi
	movl	8(%rsp), %edx
	callq	gs_rectclip
	movl	%eax, %ebp
	movq	(%rsp), %rsi
	leaq	16(%rsp), %rax
	cmpq	%rax, %rsi
	je	.LBB10_3
# BB#2:                                 # %if.then.i
	movq	8(%rbx), %rdi
	movl	$.L.str.17, %edx
	callq	*24(%rdi)
.LBB10_3:                               # %rect_release.exit
	testl	%ebp, %ebp
	js	.LBB10_5
# BB#4:                                 # %if.end.6
	movslq	%r14d, %rax
	shlq	$4, %rax
	subq	%rax, 624(%rbx)
	xorl	%ebp, %ebp
.LBB10_5:                               # %cleanup
	movl	%ebp, %eax
	addq	$176, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end10:
	.size	zrectclip, .Lfunc_end10-zrectclip
	.cfi_endproc

	.align	16, 0x90
	.type	zrectfill,@function
zrectfill:                              # @zrectfill
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
	subq	$176, %rsp
.Ltmp83:
	.cfi_def_cfa_offset 208
.Ltmp84:
	.cfi_offset %rbx, -32
.Ltmp85:
	.cfi_offset %r14, -24
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rsi
	movq	8(%rbx), %rdx
	leaq	(%rsp), %rdi
	callq	rect_get
	movl	%eax, %r14d
	testl	%r14d, %r14d
	movl	%r14d, %ebp
	js	.LBB11_5
# BB#1:                                 # %if.end
	movq	(%rbx), %rdi
	movq	(%rsp), %rsi
	movl	8(%rsp), %edx
	callq	gs_rectfill
	movl	%eax, %ebp
	movq	(%rsp), %rsi
	leaq	16(%rsp), %rax
	cmpq	%rax, %rsi
	je	.LBB11_3
# BB#2:                                 # %if.then.i
	movq	8(%rbx), %rdi
	movl	$.L.str.17, %edx
	callq	*24(%rdi)
.LBB11_3:                               # %rect_release.exit
	testl	%ebp, %ebp
	js	.LBB11_5
# BB#4:                                 # %if.end.6
	movslq	%r14d, %rax
	shlq	$4, %rax
	subq	%rax, 624(%rbx)
	xorl	%ebp, %ebp
.LBB11_5:                               # %cleanup
	movl	%ebp, %eax
	addq	$176, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	zrectfill, .Lfunc_end11-zrectfill
	.cfi_endproc

	.align	16, 0x90
	.type	zrectstroke,@function
zrectstroke:                            # @zrectstroke
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
	subq	$208, %rsp
.Ltmp90:
	.cfi_def_cfa_offset 240
.Ltmp91:
	.cfi_offset %rbx, -32
.Ltmp92:
	.cfi_offset %r14, -24
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rbp
	movq	8(%rbx), %rdi
	leaq	184(%rsp), %rdx
	movq	%rbp, %rsi
	callq	read_matrix
	testl	%eax, %eax
	js	.LBB12_3
# BB#1:                                 # %if.then
	addq	$-16, %rbp
	movq	8(%rbx), %rdx
	leaq	8(%rsp), %rdi
	movq	%rbp, %rsi
	callq	rect_get
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB12_10
# BB#2:                                 # %if.end
	movq	(%rbx), %rdi
	movq	8(%rsp), %rsi
	movl	16(%rsp), %edx
	leaq	184(%rsp), %rcx
	callq	gs_rectstroke
	incl	%ebp
	movl	%ebp, %r14d
	jmp	.LBB12_6
.LBB12_3:                               # %if.else
	movq	8(%rbx), %rdx
	leaq	8(%rsp), %rdi
	movq	%rbp, %rsi
	callq	rect_get
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB12_4
# BB#5:                                 # %if.end.12
	movq	(%rbx), %rdi
	movq	8(%rsp), %rsi
	movl	16(%rsp), %edx
	xorl	%ecx, %ecx
	callq	gs_rectstroke
.LBB12_6:                               # %if.end.17
	movl	%eax, %ebp
	movq	8(%rsp), %rsi
	leaq	24(%rsp), %rax
	cmpq	%rax, %rsi
	je	.LBB12_8
# BB#7:                                 # %if.then.i
	movq	8(%rbx), %rdi
	movl	$.L.str.17, %edx
	callq	*24(%rdi)
.LBB12_8:                               # %rect_release.exit
	testl	%ebp, %ebp
	js	.LBB12_10
# BB#9:                                 # %if.end.22
	movslq	%r14d, %rax
	shlq	$4, %rax
	subq	%rax, 624(%rbx)
	xorl	%ebp, %ebp
	jmp	.LBB12_10
.LBB12_4:
	movl	%r14d, %ebp
.LBB12_10:                              # %cleanup
	movl	%ebp, %eax
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end12:
	.size	zrectstroke, .Lfunc_end12-zrectstroke
	.cfi_endproc

	.align	16, 0x90
	.type	rect_get,@function
rect_get:                               # @rect_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp95:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp96:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp97:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp98:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp99:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp100:
	.cfi_def_cfa_offset 128
.Ltmp101:
	.cfi_offset %rbx, -56
.Ltmp102:
	.cfi_offset %r12, -48
.Ltmp103:
	.cfi_offset %r13, -40
.Ltmp104:
	.cfi_offset %r14, -32
.Ltmp105:
	.cfi_offset %r15, -24
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movzbl	1(%rbx), %eax
	cmpl	$18, %eax
	ja	.LBB13_7
# BB#1:                                 # %entry
	movl	$262256, %ecx           # imm = 0x40070
	btl	%eax, %ecx
	jae	.LBB13_7
# BB#2:                                 # %sw.bb
	movq	%rbx, %rdi
	callq	num_array_format
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB13_3
# BB#4:                                 # %if.end
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	num_array_size
	movl	$-20, %r13d
	testb	$3, %al
	jne	.LBB13_19
# BB#5:                                 # %if.end.4
	movl	%eax, %r15d
	shrl	$2, %r15d
	movl	%r15d, 8(%rbp)
	cmpl	$24, %eax
	jae	.LBB13_9
# BB#6:                                 # %if.then.33
	leaq	16(%rbp), %rax
	jmp	.LBB13_10
.LBB13_7:                               # %sw.default
	leaq	32(%rsp), %rdx
	movl	$4, %esi
	movq	%rbx, %rdi
	callq	num_params
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB13_19
# BB#8:                                 # %if.end.9
	leaq	16(%rbp), %rax
	movq	%rax, (%rbp)
	movl	$1, 8(%rbp)
	movapd	32(%rsp), %xmm0
	movupd	%xmm0, 16(%rbp)
	addpd	48(%rsp), %xmm0
	movupd	%xmm0, 32(%rbp)
	movl	$4, %r13d
	jmp	.LBB13_19
.LBB13_3:
	movl	%r12d, %r13d
	jmp	.LBB13_19
.LBB13_9:                               # %if.else
	movl	$32, %edx
	movl	$.L.str.16, %ecx
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	*88(%r14)
	movl	$-25, %r13d
	testq	%rax, %rax
	je	.LBB13_19
.LBB13_10:                              # %if.end.41
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%rax, (%rbp)
	movl	$1, %r13d
	testl	%r15d, %r15d
	je	.LBB13_19
# BB#11:                                # %for.body.lr.ph
	movl	%r15d, 4(%rsp)          # 4-byte Spill
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB13_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%r12d, %edx
	movl	%r15d, %ecx
	leaq	16(%rsp), %r8
	callq	num_array_get
	cmpl	$16, %eax
	jne	.LBB13_13
# BB#15:                                # %sw.bb.54
                                        #   in Loop: Header=BB13_12 Depth=1
	movss	24(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	jmp	.LBB13_16
.LBB13_13:                              # %for.body
                                        #   in Loop: Header=BB13_12 Depth=1
	cmpl	$11, %eax
	jne	.LBB13_18
# BB#14:                                # %sw.bb.51
                                        #   in Loop: Header=BB13_12 Depth=1
	cvtsi2sdq	24(%rsp), %xmm0
.LBB13_16:                              # %for.inc
                                        #   in Loop: Header=BB13_12 Depth=1
	movsd	%xmm0, 32(%rsp)
	leal	1(%r15), %ecx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%r12d, %edx
	leaq	16(%rsp), %r8
	callq	num_array_get
	cmpl	$11, %eax
	jne	.LBB13_17
# BB#21:                                # %sw.bb.51.1
                                        #   in Loop: Header=BB13_12 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdq	24(%rsp), %xmm0
	jmp	.LBB13_22
.LBB13_17:                              # %for.inc
                                        #   in Loop: Header=BB13_12 Depth=1
	cmpl	$16, %eax
	jne	.LBB13_18
# BB#20:                                # %sw.bb.54.1
                                        #   in Loop: Header=BB13_12 Depth=1
	movss	24(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
.LBB13_22:                              # %for.inc.1
                                        #   in Loop: Header=BB13_12 Depth=1
	movsd	%xmm0, 40(%rsp)
	leal	2(%r15), %ecx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%r12d, %edx
	leaq	16(%rsp), %r8
	callq	num_array_get
	cmpl	$11, %eax
	jne	.LBB13_23
# BB#25:                                # %sw.bb.51.2
                                        #   in Loop: Header=BB13_12 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdq	24(%rsp), %xmm0
	jmp	.LBB13_26
.LBB13_23:                              # %for.inc.1
                                        #   in Loop: Header=BB13_12 Depth=1
	cmpl	$16, %eax
	jne	.LBB13_18
# BB#24:                                # %sw.bb.54.2
                                        #   in Loop: Header=BB13_12 Depth=1
	movss	24(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
.LBB13_26:                              # %for.inc.2
                                        #   in Loop: Header=BB13_12 Depth=1
	movsd	%xmm0, 48(%rsp)
	leal	3(%r15), %ecx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%r12d, %edx
	leaq	16(%rsp), %r8
	callq	num_array_get
	cmpl	$11, %eax
	jne	.LBB13_27
# BB#29:                                # %sw.bb.51.3
                                        #   in Loop: Header=BB13_12 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdq	24(%rsp), %xmm0
	jmp	.LBB13_30
.LBB13_27:                              # %for.inc.2
                                        #   in Loop: Header=BB13_12 Depth=1
	cmpl	$16, %eax
	jne	.LBB13_18
# BB#28:                                # %sw.bb.54.3
                                        #   in Loop: Header=BB13_12 Depth=1
	movss	24(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
.LBB13_30:                              # %for.inc.3
                                        #   in Loop: Header=BB13_12 Depth=1
	movsd	%xmm0, 56(%rsp)
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	8(%rsp), %rax           # 8-byte Reload
	movsd	%xmm0, (%rax,%r15,8)
	addsd	48(%rsp), %xmm0
	movsd	%xmm0, 16(%rax,%r15,8)
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%rax,%r15,8)
	addsd	56(%rsp), %xmm0
	movsd	%xmm0, 24(%rax,%r15,8)
	addq	$4, %r15
	incl	%ebp
	cmpl	4(%rsp), %ebp           # 4-byte Folded Reload
	jb	.LBB13_12
	jmp	.LBB13_19
.LBB13_18:                              # %cleanup
	movl	%eax, %r13d
.LBB13_19:                              # %cleanup.79
	movl	%r13d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	rect_get, .Lfunc_end13-rect_get
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gstatetype"
	.size	.L.str, 11

	.type	st_igstate_obj,@object  # @st_igstate_obj
	.section	.rodata,"a",@progbits
	.globl	st_igstate_obj
	.align	8
st_igstate_obj:
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	ref_struct_clear_marks
	.quad	ref_struct_enum_ptrs
	.quad	ref_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_igstate_obj, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gstate"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"copygstate"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"currentgstate"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"level2dict"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"0currentstrokeadjust"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"1setstrokeadjust"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"1copy"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"1currentgstate"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"0gstate"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"1setgstate"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"1.rectappend"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"1rectclip"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"1rectfill"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"1rectstroke"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"4setbbox"
	.size	.L.str.15, 9

	.type	zdps1_l2_op_defs,@object # @zdps1_l2_op_defs
	.section	.rodata,"a",@progbits
	.globl	zdps1_l2_op_defs
	.align	16
zdps1_l2_op_defs:
	.quad	.L.str.4
	.quad	0
	.quad	.L.str.5
	.quad	zcurrentstrokeadjust
	.quad	.L.str.6
	.quad	zsetstrokeadjust
	.quad	.L.str.7
	.quad	z1copy
	.quad	.L.str.8
	.quad	zcurrentgstate
	.quad	.L.str.9
	.quad	zgstate
	.quad	.L.str.10
	.quad	zsetgstate
	.quad	.L.str.11
	.quad	zrectappend
	.quad	.L.str.12
	.quad	zrectclip
	.quad	.L.str.13
	.quad	zrectfill
	.quad	.L.str.14
	.quad	zrectstroke
	.quad	.L.str.15
	.quad	zsetbbox
	.zero	16
	.size	zdps1_l2_op_defs, 208

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"rect_get"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"rect_release"
	.size	.L.str.17, 13

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gstate_unshare"
	.size	.L.str.18, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
