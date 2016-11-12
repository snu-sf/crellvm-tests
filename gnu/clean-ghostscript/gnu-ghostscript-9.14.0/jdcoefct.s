	.text
	.file	"jdcoefct.bc"
	.globl	jinit_d_coef_controller
	.align	16, 0x90
	.type	jinit_d_coef_controller,@function
jinit_d_coef_controller:                # @jinit_d_coef_controller
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
	subq	$24, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 80
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
	movl	%esi, %ebp
	movq	%rdi, %r14
	movq	8(%r14), %rax
	movl	$1, %esi
	movl	$648, %edx              # imm = 0x288
	callq	*(%rax)
	movq	%rax, %r15
	movq	%r15, 808(%r14)
	movq	$start_input_pass, (%r15)
	movq	$start_output_pass, 16(%r15)
	testl	%ebp, %ebp
	je	.LBB0_7
# BB#1:                                 # %if.then
	cmpl	$0, 56(%r14)
	jle	.LBB0_2
# BB#3:                                 # %for.body.lr.ph
	movq	304(%r14), %rbp
	movq	%r15, %rax
	addq	$568, %rax              # imm = 0x238
	movq	%rax, 8(%rsp)           # 8-byte Spill
	addq	$32, %rbp
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB0_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r14), %rax
	movq	40(%rax), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	-20(%rbp), %r13d
	movl	-4(%rbp), %edi
	movslq	-24(%rbp), %rsi
	callq	jround_up
	movq	%rax, %rbx
	movl	(%rbp), %edi
	movslq	-20(%rbp), %rsi
	callq	jround_up
	movl	$1, %esi
	movl	$1, %edx
	movq	%r14, %rdi
	movl	%ebx, %ecx
	movl	%eax, %r8d
	movl	%r13d, %r9d
	callq	*16(%rsp)               # 8-byte Folded Reload
	movq	%rax, 568(%r15,%r12,8)
	incq	%r12
	movslq	56(%r14), %rax
	addq	$96, %rbp
	cmpq	%rax, %r12
	jl	.LBB0_4
# BB#5:
	movq	8(%rsp), %rax           # 8-byte Reload
	jmp	.LBB0_6
.LBB0_7:                                # %if.else
	movq	8(%r14), %rax
	movl	$1, %esi
	movl	$8192, %edx             # imm = 0x2000
	movq	%r14, %rdi
	callq	*8(%rax)
	movq	%r15, %rcx
	addq	$72, %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB0_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%rax,%rdx), %rsi
	leaq	128(%rax,%rdx), %rdi
	movd	%rdi, %xmm0
	movd	%rsi, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, -16(%rcx)
	leaq	256(%rax,%rdx), %rsi
	leaq	384(%rax,%rdx), %rdi
	movd	%rdi, %xmm0
	movd	%rsi, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, (%rcx)
	addq	$512, %rdx              # imm = 0x200
	addq	$32, %rcx
	cmpq	$8192, %rdx             # imm = 0x2000
	jne	.LBB0_8
# BB#9:                                 # %for.end.27
	cmpl	$0, 784(%r14)
	jne	.LBB0_11
# BB#10:                                # %if.then.30
	xorl	%esi, %esi
	movl	$8192, %edx             # imm = 0x2000
	movq	%rax, %rdi
	callq	memset
.LBB0_11:                               # %if.end
	movq	$dummy_consume_data, 8(%r15)
	movq	$decompress_onepass, 24(%r15)
	movq	$0, 32(%r15)
	jmp	.LBB0_12
.LBB0_2:                                # %if.then.for.end_crit_edge
	movq	%r15, %rax
	addq	$568, %rax              # imm = 0x238
.LBB0_6:                                # %for.end
	movq	$consume_data, 8(%r15)
	movq	$decompress_data, 24(%r15)
	movq	%rax, 32(%r15)
.LBB0_12:                               # %if.end.38
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	jinit_d_coef_controller, .Lfunc_end0-jinit_d_coef_controller
	.cfi_endproc

	.align	16, 0x90
	.type	start_input_pass,@function
start_input_pass:                       # @start_input_pass
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$0, 176(%rdi)
	movq	808(%rdi), %rax
	cmpl	$2, 448(%rdi)
	jl	.LBB1_2
# BB#1:                                 # %if.then.i
	movl	$1, 48(%rax)
	movq	$0, 40(%rax)
	retq
.LBB1_2:                                # %if.else.i
	cmpl	$1, 432(%rdi)
	movq	456(%rdi), %rcx
	jne	.LBB1_3
# BB#4:                                 # %if.else.5.i
	movl	76(%rcx), %ecx
	jmp	.LBB1_5
.LBB1_3:                                # %if.then.3.i
	movl	12(%rcx), %ecx
.LBB1_5:                                # %start_iMCU_row.exit
	movl	%ecx, 48(%rax)
	movq	$0, 40(%rax)
	retq
.Lfunc_end1:
	.size	start_input_pass, .Lfunc_end1-start_input_pass
	.cfi_endproc

	.align	16, 0x90
	.type	start_output_pass,@function
start_output_pass:                      # @start_output_pass
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$0, 184(%rdi)
	retq
.Lfunc_end2:
	.size	start_output_pass, .Lfunc_end2-start_output_pass
	.cfi_endproc

	.align	16, 0x90
	.type	consume_data,@function
consume_data:                           # @consume_data
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
	subq	$88, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 144
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
	movq	%rdi, %rbp
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	808(%rbp), %rbx
	cmpl	$0, 448(%rbp)
	jle	.LBB3_3
# BB#1:                                 # %for.body.lr.ph
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	456(%rbp,%r14,8), %rax
	movq	8(%rbp), %r9
	movslq	4(%rax), %rcx
	movq	568(%rbx,%rcx,8), %rsi
	movl	12(%rax), %ecx
	movl	176(%rbp), %edx
	imull	%ecx, %edx
	movl	$1, %r8d
	movq	%rbp, %rdi
	callq	*64(%r9)
	movq	%rax, 48(%rsp,%r14,8)
	incq	%r14
	movslq	448(%rbp), %rax
	cmpq	%rax, %r14
	jl	.LBB3_2
.LBB3_3:                                # %for.end
	movslq	44(%rbx), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movl	48(%rbx), %eax
	cmpl	%eax, %ecx
	jge	.LBB3_25
# BB#4:                                 # %for.body.9.lr.ph
	leaq	56(%rbx), %rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	movl	40(%rbx), %edi
	movl	488(%rbp), %ecx
	leaq	80(%rbx), %rdx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
.LBB3_5:                                # %for.body.9
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
                                        #       Child Loop BB3_8 Depth 3
                                        #         Child Loop BB3_11 Depth 4
                                        #           Child Loop BB3_14 Depth 5
                                        #           Child Loop BB3_17 Depth 5
	cmpl	%ecx, %edi
	jae	.LBB3_24
	.align	16, 0x90
.LBB3_6:                                # %for.cond.13.preheader
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_8 Depth 3
                                        #         Child Loop BB3_11 Depth 4
                                        #           Child Loop BB3_14 Depth 5
                                        #           Child Loop BB3_17 Depth 5
	movl	%edi, 12(%rsp)          # 4-byte Spill
	movslq	448(%rbp), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	jle	.LBB3_20
# BB#7:                                 # %for.body.16.preheader
                                        #   in Loop: Header=BB3_6 Depth=2
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	.align	16, 0x90
.LBB3_8:                                # %for.body.16
                                        #   Parent Loop BB3_5 Depth=1
                                        #     Parent Loop BB3_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_11 Depth 4
                                        #           Child Loop BB3_14 Depth 5
                                        #           Child Loop BB3_17 Depth 5
	movq	456(%rbp,%r9,8), %rax
	movslq	60(%rax), %rdx
	testq	%rdx, %rdx
	jle	.LBB3_9
# BB#10:                                # %for.body.23.lr.ph
                                        #   in Loop: Header=BB3_8 Depth=3
	movl	56(%rax), %esi
	movl	%esi, %r12d
	imull	12(%rsp), %r12d         # 4-byte Folded Reload
	movq	48(%rsp,%r9,8), %r10
	leal	-1(%rsi), %r11d
	movl	%esi, %ecx
	andl	$3, %ecx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB3_11:                               # %for.body.23
                                        #   Parent Loop BB3_5 Depth=1
                                        #     Parent Loop BB3_6 Depth=2
                                        #       Parent Loop BB3_8 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB3_14 Depth 5
                                        #           Child Loop BB3_17 Depth 5
	testl	%esi, %esi
	jle	.LBB3_12
# BB#13:                                # %for.body.31.lr.ph
                                        #   in Loop: Header=BB3_11 Depth=4
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	(%rbp,%rax), %rax
	movq	%r12, %r14
	shlq	$7, %r14
	addq	(%r10,%rax,8), %r14
	xorl	%r15d, %r15d
	testl	%ecx, %ecx
	movslq	%r8d, %rax
	je	.LBB3_15
	.align	16, 0x90
.LBB3_14:                               # %for.body.31.prol
                                        #   Parent Loop BB3_5 Depth=1
                                        #     Parent Loop BB3_6 Depth=2
                                        #       Parent Loop BB3_8 Depth=3
                                        #         Parent Loop BB3_11 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	%r14, 56(%rbx,%rax,8)
	subq	$-128, %r14
	incl	%r15d
	incq	%rax
	cmpl	%r15d, %ecx
	movl	%eax, %r8d
	jne	.LBB3_14
.LBB3_15:                               # %for.body.31.lr.ph.split
                                        #   in Loop: Header=BB3_11 Depth=4
	cmpl	$3, %r11d
	jb	.LBB3_18
# BB#16:                                # %for.body.31.lr.ph.split.split
                                        #   in Loop: Header=BB3_11 Depth=4
	movq	32(%rsp), %rdi          # 8-byte Reload
	leaq	(%rdi,%rax,8), %r13
	movl	%r8d, %eax
	.align	16, 0x90
.LBB3_17:                               # %for.body.31
                                        #   Parent Loop BB3_5 Depth=1
                                        #     Parent Loop BB3_6 Depth=2
                                        #       Parent Loop BB3_8 Depth=3
                                        #         Parent Loop BB3_11 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	%r14, -24(%r13)
	movq	%r14, %rdi
	subq	$-128, %rdi
	movq	%rdi, -16(%r13)
	leaq	256(%r14), %rdi
	movq	%rdi, -8(%r13)
	addl	$4, %eax
	leaq	384(%r14), %rdi
	movq	%rdi, (%r13)
	addl	$4, %r15d
	addq	$32, %r13
	addq	$512, %r14              # imm = 0x200
	cmpl	%esi, %r15d
	jl	.LBB3_17
	jmp	.LBB3_18
	.align	16, 0x90
.LBB3_12:                               #   in Loop: Header=BB3_11 Depth=4
	movl	%r8d, %eax
.LBB3_18:                               # %for.inc.38
                                        #   in Loop: Header=BB3_11 Depth=4
	incq	%rbp
	cmpq	%rdx, %rbp
	movl	%eax, %r8d
	jl	.LBB3_11
	jmp	.LBB3_19
	.align	16, 0x90
.LBB3_9:                                #   in Loop: Header=BB3_8 Depth=3
	movl	%r8d, %eax
.LBB3_19:                               # %for.inc.41
                                        #   in Loop: Header=BB3_8 Depth=3
	incq	%r9
	cmpq	24(%rsp), %r9           # 8-byte Folded Reload
	movl	%eax, %r8d
	movq	16(%rsp), %rbp          # 8-byte Reload
	jl	.LBB3_8
.LBB3_20:                               # %for.end.43
                                        #   in Loop: Header=BB3_6 Depth=2
	movq	840(%rbp), %rax
	movq	%rbp, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	*8(%rax)
	testl	%eax, %eax
	je	.LBB3_21
# BB#22:                                # %for.inc.48
                                        #   in Loop: Header=BB3_6 Depth=2
	movl	12(%rsp), %edi          # 4-byte Reload
	incl	%edi
	movl	488(%rbp), %ecx
	cmpl	%ecx, %edi
	jb	.LBB3_6
# BB#23:                                # %for.cond.10.for.end.50_crit_edge
                                        #   in Loop: Header=BB3_5 Depth=1
	movl	48(%rbx), %eax
.LBB3_24:                               # %for.end.50
                                        #   in Loop: Header=BB3_5 Depth=1
	movl	$0, 40(%rbx)
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movslq	%eax, %rdx
	xorl	%edi, %edi
	cmpq	%rdx, %rsi
	jl	.LBB3_5
.LBB3_25:                               # %for.end.54
	movl	176(%rbp), %ecx
	incl	%ecx
	movl	%ecx, 176(%rbp)
	movl	432(%rbp), %edx
	cmpl	%edx, %ecx
	jae	.LBB3_33
# BB#26:                                # %if.then.58
	movq	808(%rbp), %rax
	cmpl	$2, 448(%rbp)
	jl	.LBB3_28
# BB#27:                                # %if.then.i
	movl	$1, 48(%rax)
	jmp	.LBB3_32
.LBB3_21:                               # %if.then
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	%eax, 44(%rbx)
	movl	12(%rsp), %eax          # 4-byte Reload
	movl	%eax, 40(%rbx)
	xorl	%eax, %eax
	jmp	.LBB3_34
.LBB3_33:                               # %if.end.59
	movq	824(%rbp), %rax
	movq	%rbp, %rdi
	callq	*24(%rax)
	movl	$4, %eax
	jmp	.LBB3_34
.LBB3_28:                               # %if.else.i
	decl	%edx
	movq	456(%rbp), %rsi
	cmpl	%edx, %ecx
	jae	.LBB3_30
# BB#29:                                # %if.then.3.i
	movl	12(%rsi), %ecx
	jmp	.LBB3_31
.LBB3_30:                               # %if.else.5.i
	movl	76(%rsi), %ecx
.LBB3_31:                               # %start_iMCU_row.exit
	movl	%ecx, 48(%rax)
.LBB3_32:                               # %start_iMCU_row.exit
	movq	$0, 40(%rax)
	movl	$3, %eax
.LBB3_34:                               # %cleanup
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	consume_data, .Lfunc_end3-consume_data
	.cfi_endproc

	.align	16, 0x90
	.type	decompress_data,@function
decompress_data:                        # @decompress_data
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
	subq	$72, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 128
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
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r14
	movq	808(%r14), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	432(%r14), %eax
	decl	%eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	.align	16, 0x90
.LBB4_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	180(%r14), %eax
	cmpl	%eax, 172(%r14)
	jl	.LBB4_4
# BB#2:                                 # %lor.rhs
                                        #   in Loop: Header=BB4_1 Depth=1
	jne	.LBB4_5
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	176(%r14), %eax
	cmpl	184(%r14), %eax
	ja	.LBB4_5
.LBB4_4:                                # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	824(%r14), %rax
	movq	%r14, %rdi
	callq	*(%rax)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB4_1
	jmp	.LBB4_21
.LBB4_5:                                # %while.end
	movl	56(%r14), %eax
	testl	%eax, %eax
	jle	.LBB4_19
# BB#6:                                 # %for.body.lr.ph
	movq	304(%r14), %r8
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB4_7:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_13 Depth 2
                                        #       Child Loop BB4_15 Depth 3
	cmpl	$0, 52(%r8)
	je	.LBB4_18
# BB#8:                                 # %if.end.9
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	8(%r14), %rax
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	568(%rcx,%rbp,8), %rsi
	movl	12(%r8), %ecx
	movl	184(%r14), %edx
	imull	%ecx, %edx
	movq	%r8, %rbx
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	callq	*64(%rax)
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	20(%rsp), %eax          # 4-byte Reload
	cmpl	%eax, 184(%r14)
	jae	.LBB4_10
# BB#9:                                 # %if.then.15
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	%r14, %r13
	movl	12(%rbx), %edx
	jmp	.LBB4_11
	.align	16, 0x90
.LBB4_10:                               # %if.else
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	%r14, %r13
	movl	12(%rbx), %ecx
	movl	32(%rbx), %eax
	xorl	%edx, %edx
	divl	%ecx
	testl	%edx, %edx
	cmovel	%ecx, %edx
.LBB4_11:                               # %if.end.22
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	%rbx, %r8
	movl	%edx, 52(%rsp)          # 4-byte Spill
	testl	%edx, %edx
	jle	.LBB4_17
# BB#12:                                # %for.body.30.lr.ph
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	848(%r13), %rax
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	8(%rax,%rcx,8), %rbp
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rax,%rcx,8), %rcx
	movl	28(%r8), %edx
	xorl	%eax, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB4_13:                               # %for.body.30
                                        #   Parent Loop BB4_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_15 Depth 3
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	testl	%edx, %edx
	movq	%r13, %rbx
	je	.LBB4_16
# BB#14:                                # %for.body.35.lr.ph
                                        #   in Loop: Header=BB4_13 Depth=2
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	56(%rsp), %rdx          # 8-byte Reload
	movq	(%rax,%rdx,8), %r14
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB4_15:                               # %for.body.35
                                        #   Parent Loop BB4_7 Depth=1
                                        #     Parent Loop BB4_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbx, %rdi
	movq	%r8, %rsi
	movq	%r14, %rdx
	movq	%r8, %r13
	movl	%r12d, %r8d
	callq	*%rbp
	movq	%r13, %r8
	movq	64(%rsp), %rcx          # 8-byte Reload
	subq	$-128, %r14
	addl	36(%r8), %r12d
	incl	%r15d
	movl	28(%r8), %eax
	cmpl	%eax, %r15d
	jb	.LBB4_15
.LBB4_16:                               # %for.end
                                        #   in Loop: Header=BB4_13 Depth=2
	movq	%rbx, %r13
	movslq	40(%r8), %rdx
	leaq	(%rcx,%rdx,8), %rcx
	movq	56(%rsp), %rdx          # 8-byte Reload
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movl	52(%rsp), %edx          # 4-byte Reload
	cmpl	%edx, %esi
	movl	%eax, %edx
	jne	.LBB4_13
.LBB4_17:                               # %for.inc.39.loopexit
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	%r13, %r14
	movl	56(%r14), %eax
	movq	32(%rsp), %rbp          # 8-byte Reload
.LBB4_18:                               # %for.inc.39
                                        #   in Loop: Header=BB4_7 Depth=1
	incq	%rbp
	addq	$96, %r8
	movslq	%eax, %rcx
	cmpq	%rcx, %rbp
	jl	.LBB4_7
.LBB4_19:                               # %for.end.42
	movl	184(%r14), %ecx
	incl	%ecx
	movl	%ecx, 184(%r14)
	movl	$3, %eax
	cmpl	432(%r14), %ecx
	jb	.LBB4_21
# BB#20:                                # %select.mid
	movl	$4, %eax
.LBB4_21:                               # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	decompress_data, .Lfunc_end4-decompress_data
	.cfi_endproc

	.align	16, 0x90
	.type	dummy_consume_data,@function
dummy_consume_data:                     # @dummy_consume_data
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end5:
	.size	dummy_consume_data, .Lfunc_end5-dummy_consume_data
	.cfi_endproc

	.align	16, 0x90
	.type	decompress_onepass,@function
decompress_onepass:                     # @decompress_onepass
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
	subq	$104, %rsp
.Ltmp45:
	.cfi_def_cfa_offset 160
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
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %rbx
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	808(%rbx), %rbp
	movq	%rbp, (%rsp)            # 8-byte Spill
	movl	432(%rbx), %r14d
	movl	44(%rbp), %ecx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movl	48(%rbp), %eax
	cmpl	%eax, %ecx
	jge	.LBB6_25
# BB#1:                                 # %for.body.lr.ph
	movl	488(%rbx), %ecx
	decl	%ecx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	decl	%r14d
	movl	%r14d, 56(%rsp)         # 4-byte Spill
	leaq	56(%rbp), %r12
	movq	%r12, 48(%rsp)          # 8-byte Spill
	movl	40(%rbp), %r13d
.LBB6_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
                                        #       Child Loop BB6_8 Depth 3
                                        #         Child Loop BB6_12 Depth 4
                                        #           Child Loop BB6_16 Depth 5
	cmpl	20(%rsp), %r13d         # 4-byte Folded Reload
	ja	.LBB6_23
	.align	16, 0x90
.LBB6_3:                                # %for.body.5
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_8 Depth 3
                                        #         Child Loop BB6_12 Depth 4
                                        #           Child Loop BB6_16 Depth 5
	movl	%r13d, 16(%rsp)         # 4-byte Spill
	cmpl	$0, 784(%rbx)
	je	.LBB6_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB6_3 Depth=2
	movq	(%r12), %rdi
	movslq	496(%rbx), %rdx
	shlq	$7, %rdx
	xorl	%esi, %esi
	callq	memset
.LBB6_5:                                # %if.end
                                        #   in Loop: Header=BB6_3 Depth=2
	movq	840(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*8(%rax)
	testl	%eax, %eax
	je	.LBB6_35
# BB#6:                                 # %for.cond.13.preheader
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	448(%rbx), %ecx
	testl	%ecx, %ecx
	jle	.LBB6_21
# BB#7:                                 # %for.body.16.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=2
	xorl	%edi, %edi
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB6_8:                                # %for.body.16
                                        #   Parent Loop BB6_2 Depth=1
                                        #     Parent Loop BB6_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_12 Depth 4
                                        #           Child Loop BB6_16 Depth 5
	movq	456(%rbx,%rdi,8), %rsi
	cmpl	$0, 52(%rsi)
	je	.LBB6_9
# BB#10:                                # %if.end.20
                                        #   in Loop: Header=BB6_8 Depth=3
	leaq	56(%rsi), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leaq	72(%rsi), %rdx
	cmpl	20(%rsp), %r13d         # 4-byte Folded Reload
	cmovbq	%rax, %rdx
	movl	60(%rsi), %r11d
	testl	%r11d, %r11d
	jle	.LBB6_20
# BB#11:                                # %for.body.34.lr.ph
                                        #   in Loop: Header=BB6_8 Depth=3
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movslq	4(%rsi), %r8
	movq	848(%rbx), %rcx
	movq	8(%rcx,%r8,8), %r9
	movl	(%rdx), %r10d
	movl	%r10d, 76(%rsp)         # 4-byte Spill
	movl	68(%rsi), %ecx
	imull	%r13d, %ecx
	movl	%ecx, 60(%rsp)          # 4-byte Spill
	movl	40(%rsi), %eax
	movl	%eax, %edx
	movq	40(%rsp), %rdi          # 8-byte Reload
	imull	%edi, %edx
	movslq	%edx, %r15
	shlq	$3, %r15
	movq	8(%rsp), %rdx           # 8-byte Reload
	addq	(%rdx,%r8,8), %r15
	testl	%r10d, %r10d
	setle	39(%rsp)                # 1-byte Folded Spill
	xorl	%edi, %edi
	.align	16, 0x90
.LBB6_12:                               # %for.body.34
                                        #   Parent Loop BB6_2 Depth=1
                                        #     Parent Loop BB6_3 Depth=2
                                        #       Parent Loop BB6_8 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB6_16 Depth 5
	cmpl	%r14d, 176(%rbx)
	jae	.LBB6_13
# BB#14:                                # %for.cond.41.preheader
                                        #   in Loop: Header=BB6_12 Depth=4
	cmpl	$0, 76(%rsp)            # 4-byte Folded Reload
	jg	.LBB6_15
	jmp	.LBB6_18
	.align	16, 0x90
.LBB6_13:                               # %lor.lhs.false
                                        #   in Loop: Header=BB6_12 Depth=4
	movq	40(%rsp), %rdx          # 8-byte Reload
	leal	(%rdi,%rdx), %edx
	cmpl	76(%rsi), %edx
	setge	%dl
	orb	39(%rsp), %dl           # 1-byte Folded Reload
	jne	.LBB6_18
.LBB6_15:                               # %for.body.44.lr.ph
                                        #   in Loop: Header=BB6_12 Depth=4
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	movslq	%ebp, %rax
	movl	%ebp, 92(%rsp)          # 4-byte Spill
	leaq	(%r12,%rax,8), %r12
	movl	76(%rsp), %r14d         # 4-byte Reload
	movl	60(%rsp), %ebp          # 4-byte Reload
	.align	16, 0x90
.LBB6_16:                               # %for.body.44
                                        #   Parent Loop BB6_2 Depth=1
                                        #     Parent Loop BB6_3 Depth=2
                                        #       Parent Loop BB6_8 Depth=3
                                        #         Parent Loop BB6_12 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	(%r12), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rcx
	movl	%ebp, %r8d
	movq	%r9, %r13
	movq	%rsi, %rbx
	callq	*%r13
	movq	%rbx, %rsi
	movq	%r13, %r9
	movq	96(%rsp), %rbx          # 8-byte Reload
	addl	36(%rsi), %ebp
	addq	$8, %r12
	decl	%r14d
	jne	.LBB6_16
# BB#17:                                # %for.cond.41.if.end.50.loopexit_crit_edge
                                        #   in Loop: Header=BB6_12 Depth=4
	movl	40(%rsi), %eax
	movl	60(%rsi), %r11d
	movl	56(%rsp), %r14d         # 4-byte Reload
	movq	48(%rsp), %r12          # 8-byte Reload
	movl	92(%rsp), %ebp          # 4-byte Reload
	movq	80(%rsp), %rdi          # 8-byte Reload
.LBB6_18:                               # %if.end.50
                                        #   in Loop: Header=BB6_12 Depth=4
	movq	64(%rsp), %rdx          # 8-byte Reload
	addl	(%rdx), %ebp
	movslq	%eax, %rdx
	leaq	(%r15,%rdx,8), %r15
	incl	%edi
	cmpl	%r11d, %edi
	jl	.LBB6_12
# BB#19:                                # %for.cond.31.for.inc.59.loopexit_crit_edge
                                        #   in Loop: Header=BB6_8 Depth=3
	movl	448(%rbx), %ecx
	movl	16(%rsp), %r13d         # 4-byte Reload
	movq	24(%rsp), %rdi          # 8-byte Reload
	jmp	.LBB6_20
	.align	16, 0x90
.LBB6_9:                                # %if.then.19
                                        #   in Loop: Header=BB6_8 Depth=3
	addl	64(%rsi), %ebp
.LBB6_20:                               # %for.inc.59
                                        #   in Loop: Header=BB6_8 Depth=3
	incq	%rdi
	movslq	%ecx, %rax
	cmpq	%rax, %rdi
	jl	.LBB6_8
.LBB6_21:                               # %for.inc.62
                                        #   in Loop: Header=BB6_3 Depth=2
	incl	%r13d
	cmpl	20(%rsp), %r13d         # 4-byte Folded Reload
	movq	(%rsp), %rbp            # 8-byte Reload
	jbe	.LBB6_3
# BB#22:                                # %for.cond.3.for.end.64_crit_edge
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	48(%rbp), %eax
.LBB6_23:                               # %for.end.64
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	$0, 40(%rbp)
	movq	40(%rsp), %rcx          # 8-byte Reload
	incl	%ecx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	xorl	%r13d, %r13d
	cmpl	%eax, %ecx
	jl	.LBB6_2
# BB#24:                                # %for.cond.for.end.68_crit_edge
	movl	432(%rbx), %r14d
.LBB6_25:                               # %for.end.68
	incl	184(%rbx)
	movl	176(%rbx), %ecx
	incl	%ecx
	movl	%ecx, 176(%rbx)
	cmpl	%r14d, %ecx
	jae	.LBB6_33
# BB#26:                                # %if.then.75
	movq	808(%rbx), %rax
	cmpl	$2, 448(%rbx)
	jl	.LBB6_28
# BB#27:                                # %if.then.i
	movl	$1, 48(%rax)
	jmp	.LBB6_32
.LBB6_35:                               # %if.then.9
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	%eax, 44(%rbp)
	movl	%r13d, 40(%rbp)
	xorl	%eax, %eax
	jmp	.LBB6_34
.LBB6_33:                               # %if.end.76
	movq	824(%rbx), %rax
	movq	%rbx, %rdi
	callq	*24(%rax)
	movl	$4, %eax
	jmp	.LBB6_34
.LBB6_28:                               # %if.else.i
	decl	%r14d
	movq	456(%rbx), %rdx
	cmpl	%r14d, %ecx
	jae	.LBB6_30
# BB#29:                                # %if.then.3.i
	movl	12(%rdx), %ecx
	jmp	.LBB6_31
.LBB6_30:                               # %if.else.5.i
	movl	76(%rdx), %ecx
.LBB6_31:                               # %start_iMCU_row.exit
	movl	%ecx, 48(%rax)
.LBB6_32:                               # %start_iMCU_row.exit
	movq	$0, 40(%rax)
	movl	$3, %eax
.LBB6_34:                               # %cleanup
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	decompress_onepass, .Lfunc_end6-decompress_onepass
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
