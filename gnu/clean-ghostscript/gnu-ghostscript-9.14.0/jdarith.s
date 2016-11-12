	.text
	.file	"jdarith.bc"
	.globl	jinit_arith_decoder
	.align	16, 0x90
	.type	jinit_arith_decoder,@function
jinit_arith_decoder:                    # @jinit_arith_decoder
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	8(%rbx), %rax
	movl	$1, %esi
	movl	$344, %edx              # imm = 0x158
	callq	*(%rax)
	movq	%rax, 840(%rbx)
	movq	$start_pass, (%rax)
	movq	$finish_pass, 16(%rax)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 80(%rax)
	movdqu	%xmm0, 208(%rax)
	movdqu	%xmm0, 96(%rax)
	movdqu	%xmm0, 224(%rax)
	movdqu	%xmm0, 112(%rax)
	movdqu	%xmm0, 240(%rax)
	movq	$0, 128(%rax)
	movq	$0, 256(%rax)
	movdqu	%xmm0, 136(%rax)
	movdqu	%xmm0, 264(%rax)
	movdqu	%xmm0, 152(%rax)
	movdqu	%xmm0, 280(%rax)
	movdqu	%xmm0, 168(%rax)
	movdqu	%xmm0, 296(%rax)
	movdqu	%xmm0, 184(%rax)
	movdqu	%xmm0, 312(%rax)
	movq	$0, 200(%rax)
	movq	$0, 328(%rax)
	movb	$113, 336(%rax)
	cmpl	$0, 316(%rbx)
	je	.LBB0_4
# BB#1:                                 # %if.then
	movq	8(%rbx), %rax
	movslq	56(%rbx), %rdx
	shlq	$8, %rdx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	*(%rax)
	movq	%rax, 192(%rbx)
	cmpl	$0, 56(%rbx)
	jle	.LBB0_4
# BB#2:                                 # %for.cond.21.preheader.lr.ph
	xorl	%ecx, %ecx
	pcmpeqd	%xmm0, %xmm0
	.align	16, 0x90
.LBB0_3:                                # %for.cond.21.preheader
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%rax)
	movdqu	%xmm0, 16(%rax)
	movdqu	%xmm0, 32(%rax)
	movdqu	%xmm0, 48(%rax)
	movdqu	%xmm0, 64(%rax)
	movdqu	%xmm0, 80(%rax)
	movdqu	%xmm0, 96(%rax)
	movdqu	%xmm0, 112(%rax)
	movdqu	%xmm0, 128(%rax)
	movdqu	%xmm0, 144(%rax)
	movdqu	%xmm0, 160(%rax)
	movdqu	%xmm0, 176(%rax)
	movdqu	%xmm0, 192(%rax)
	movdqu	%xmm0, 208(%rax)
	movdqu	%xmm0, 224(%rax)
	movdqu	%xmm0, 240(%rax)
	incl	%ecx
	addq	$256, %rax              # imm = 0x100
	cmpl	56(%rbx), %ecx
	jl	.LBB0_3
.LBB0_4:                                # %if.end
	popq	%rbx
	retq
.Lfunc_end0:
	.size	jinit_arith_decoder, .Lfunc_end0-jinit_arith_decoder
	.cfi_endproc

	.align	16, 0x90
	.type	start_pass,@function
start_pass:                             # @start_pass
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
	pushq	%r13
.Ltmp5:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp6:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp8:
	.cfi_def_cfa_offset 80
.Ltmp9:
	.cfi_offset %rbx, -56
.Ltmp10:
	.cfi_offset %r12, -48
.Ltmp11:
	.cfi_offset %r13, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	840(%rbx), %r15
	cmpl	$0, 316(%rbx)
	movl	756(%rbx), %eax
	je	.LBB1_29
# BB#1:                                 # %if.then
	movl	760(%rbx), %ecx
	testl	%eax, %eax
	je	.LBB1_2
# BB#3:                                 # %if.else
	movq	%r15, 8(%rsp)           # 8-byte Spill
	cmpl	%eax, %ecx
	jl	.LBB1_10
# BB#4:                                 # %lor.lhs.false
	cmpl	784(%rbx), %ecx
	jg	.LBB1_10
# BB#5:                                 # %if.end.11
	cmpl	$1, 448(%rbx)
	jne	.LBB1_10
	jmp	.LBB1_6
.LBB1_29:                               # %if.else.121
	testl	%eax, %eax
	jne	.LBB1_34
# BB#30:                                # %lor.lhs.false.124
	cmpl	$0, 764(%rbx)
	jne	.LBB1_34
# BB#31:                                # %lor.lhs.false.127
	cmpl	$0, 768(%rbx)
	jne	.LBB1_34
# BB#32:                                # %lor.lhs.false.130
	movl	760(%rbx), %eax
	cmpl	$63, %eax
	jg	.LBB1_35
# BB#33:                                # %land.lhs.true.133
	cmpl	784(%rbx), %eax
	je	.LBB1_35
.LBB1_34:                               # %if.then.137
	movq	(%rbx), %rax
	movl	$125, 40(%rax)
	movl	$-1, %esi
	movq	%rbx, %rdi
	callq	*8(%rax)
.LBB1_35:                               # %if.end.142
	movq	$decode_mcu, 8(%r15)
	leaq	448(%rbx), %r13
	movl	448(%rbx), %eax
	jmp	.LBB1_36
.LBB1_2:                                # %if.then.2
	movq	%r15, 8(%rsp)           # 8-byte Spill
	testl	%ecx, %ecx
	jne	.LBB1_10
.LBB1_6:                                # %if.end.15
	movl	764(%rbx), %ecx
	testl	%ecx, %ecx
	je	.LBB1_7
# BB#8:                                 # %if.then.17
	decl	%ecx
	cmpl	768(%rbx), %ecx
	jne	.LBB1_10
	jmp	.LBB1_9
.LBB1_7:                                # %if.end.15.if.end.22_crit_edge
	movl	768(%rbx), %ecx
.LBB1_9:                                # %if.end.22
	cmpl	$14, %ecx
	jl	.LBB1_11
.LBB1_10:                               # %bad
	movq	(%rbx), %rcx
	movl	$17, 40(%rcx)
	movl	%eax, 44(%rcx)
	movl	760(%rbx), %eax
	movl	%eax, 48(%rcx)
	movl	764(%rbx), %eax
	movl	%eax, 52(%rcx)
	movl	768(%rbx), %eax
	movl	%eax, 56(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
.LBB1_11:                               # %for.cond.preheader
	leaq	448(%rbx), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	448(%rbx), %eax
	testl	%eax, %eax
	jle	.LBB1_22
# BB#12:                                # %for.body.lr.ph
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB1_13:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_18 Depth 2
	movq	456(%rbx,%r13,8), %rax
	movl	4(%rax), %ebp
	movslq	%ebp, %rdx
	movq	192(%rbx), %r15
	movl	756(%rbx), %eax
	testl	%eax, %eax
	movl	$0, %r14d
	je	.LBB1_16
# BB#14:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	%rdx, %rcx
	shlq	$8, %rcx
	cmpl	$0, (%r15,%rcx)
	movl	%eax, %r14d
	jns	.LBB1_16
# BB#15:                                # %if.then.55
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	(%rbx), %rax
	movl	$118, 40(%rax)
	movl	%ebp, 44(%rax)
	movl	$0, 48(%rax)
	movl	$-1, %esi
	movq	%rbx, %rdi
	movq	%rdx, %r14
	callq	*8(%rax)
	movq	%r14, %rdx
	movl	756(%rbx), %r14d
.LBB1_16:                               # %if.end.67
                                        #   in Loop: Header=BB1_13 Depth=1
	cmpl	760(%rbx), %r14d
	jg	.LBB1_21
# BB#17:                                # %for.body.72.lr.ph
                                        #   in Loop: Header=BB1_13 Depth=1
	movslq	%r14d, %r12
	decq	%r12
	shlq	$8, %rdx
	addq	%rdx, %r15
	.align	16, 0x90
.LBB1_18:                               # %for.body.72
                                        #   Parent Loop BB1_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	4(%r15,%r12,4), %eax
	testl	%eax, %eax
	movl	$0, %ecx
	cmovsl	%ecx, %eax
	cmpl	%eax, 764(%rbx)
	je	.LBB1_20
# BB#19:                                # %if.then.80
                                        #   in Loop: Header=BB1_18 Depth=2
	movq	(%rbx), %rax
	movl	$118, 40(%rax)
	movl	%ebp, 44(%rax)
	movl	%r14d, 48(%rax)
	movl	$-1, %esi
	movq	%rbx, %rdi
	callq	*8(%rax)
.LBB1_20:                               # %if.end.93
                                        #   in Loop: Header=BB1_18 Depth=2
	movl	768(%rbx), %eax
	movl	%eax, 4(%r15,%r12,4)
	movslq	760(%rbx), %rax
	incq	%r12
	incl	%r14d
	cmpq	%rax, %r12
	jl	.LBB1_18
.LBB1_21:                               # %for.end
                                        #   in Loop: Header=BB1_13 Depth=1
	incq	%r13
	movq	16(%rsp), %rax          # 8-byte Reload
	movslq	(%rax), %rax
	cmpq	%rax, %r13
	jl	.LBB1_13
.LBB1_22:                               # %for.end.99
	movl	756(%rbx), %ecx
	cmpl	$0, 764(%rbx)
	je	.LBB1_23
# BB#26:                                # %if.else.110
	testl	%ecx, %ecx
	movq	8(%rsp), %r15           # 8-byte Reload
	movq	16(%rsp), %r13          # 8-byte Reload
	je	.LBB1_27
# BB#28:                                # %if.else.116
	movq	$decode_mcu_AC_refine, 8(%r15)
	jmp	.LBB1_36
.LBB1_23:                               # %if.then.102
	testl	%ecx, %ecx
	movq	8(%rsp), %r15           # 8-byte Reload
	movq	16(%rsp), %r13          # 8-byte Reload
	je	.LBB1_24
# BB#25:                                # %if.else.106
	movq	$decode_mcu_AC_first, 8(%r15)
	jmp	.LBB1_36
.LBB1_27:                               # %if.then.113
	movq	$decode_mcu_DC_refine, 8(%r15)
	jmp	.LBB1_36
.LBB1_24:                               # %if.then.105
	movq	$decode_mcu_DC_first, 8(%r15)
.LBB1_36:                               # %for.cond.146.preheader
	testl	%eax, %eax
	jle	.LBB1_54
# BB#37:                                # %for.body.149.lr.ph
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB1_38:                               # %for.body.149
                                        # =>This Inner Loop Header: Depth=1
	movq	456(%rbx,%r12,8), %r14
	cmpl	$0, 316(%rbx)
	je	.LBB1_41
# BB#39:                                # %lor.lhs.false.155
                                        #   in Loop: Header=BB1_38 Depth=1
	cmpl	$0, 756(%rbx)
	jne	.LBB1_48
# BB#40:                                # %land.lhs.true.158
                                        #   in Loop: Header=BB1_38 Depth=1
	cmpl	$0, 764(%rbx)
	jne	.LBB1_47
	.align	16, 0x90
.LBB1_41:                               # %if.then.161
                                        #   in Loop: Header=BB1_38 Depth=1
	movslq	20(%r14), %rbp
	cmpq	$16, %rbp
	jb	.LBB1_43
# BB#42:                                # %if.then.165
                                        #   in Loop: Header=BB1_38 Depth=1
	movq	(%rbx), %rax
	movl	$50, 40(%rax)
	movl	%ebp, 44(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB1_43:                               # %if.end.174
                                        #   in Loop: Header=BB1_38 Depth=1
	movq	80(%r15,%rbp,8), %rdi
	testq	%rdi, %rdi
	jne	.LBB1_45
# BB#44:                                # %if.then.178
                                        #   in Loop: Header=BB1_38 Depth=1
	movq	8(%rbx), %rax
	movl	$1, %esi
	movl	$64, %edx
	movq	%rbx, %rdi
	callq	*(%rax)
	movq	%rax, %rdi
	movq	%rdi, 80(%r15,%rbp,8)
.LBB1_45:                               # %if.end.191
                                        #   in Loop: Header=BB1_38 Depth=1
	xorl	%esi, %esi
	movl	$64, %edx
	callq	memset
	movl	$0, 44(%r15,%r12,4)
	movl	$0, 60(%r15,%r12,4)
	cmpl	$0, 316(%rbx)
	je	.LBB1_46
.LBB1_47:                               # %land.lhs.true.200
                                        #   in Loop: Header=BB1_38 Depth=1
	cmpl	$0, 756(%rbx)
	jne	.LBB1_48
	jmp	.LBB1_53
.LBB1_46:                               # %land.lhs.true.194
                                        #   in Loop: Header=BB1_38 Depth=1
	cmpl	$0, 784(%rbx)
	je	.LBB1_53
	.align	16, 0x90
.LBB1_48:                               # %if.then.203
                                        #   in Loop: Header=BB1_38 Depth=1
	movslq	24(%r14), %rbp
	cmpq	$16, %rbp
	jb	.LBB1_50
# BB#49:                                # %if.then.207
                                        #   in Loop: Header=BB1_38 Depth=1
	movq	(%rbx), %rax
	movl	$50, 40(%rax)
	movl	%ebp, 44(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB1_50:                               # %if.end.216
                                        #   in Loop: Header=BB1_38 Depth=1
	movq	208(%r15,%rbp,8), %rdi
	testq	%rdi, %rdi
	jne	.LBB1_52
# BB#51:                                # %if.then.220
                                        #   in Loop: Header=BB1_38 Depth=1
	movq	8(%rbx), %rax
	movl	$1, %esi
	movl	$256, %edx              # imm = 0x100
	movq	%rbx, %rdi
	callq	*(%rax)
	movq	%rax, %rdi
	movq	%rdi, 208(%r15,%rbp,8)
.LBB1_52:                               # %if.end.227
                                        #   in Loop: Header=BB1_38 Depth=1
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
.LBB1_53:                               # %for.inc.233
                                        #   in Loop: Header=BB1_38 Depth=1
	incq	%r12
	movslq	(%r13), %rax
	cmpq	%rax, %r12
	jl	.LBB1_38
.LBB1_54:                               # %for.end.235
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%r15)
	movl	$-16, 40(%r15)
	movl	372(%rbx), %eax
	movl	%eax, 76(%r15)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	start_pass, .Lfunc_end1-start_pass
	.cfi_endproc

	.align	16, 0x90
	.type	finish_pass,@function
finish_pass:                            # @finish_pass
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end2:
	.size	finish_pass, .Lfunc_end2-finish_pass
	.cfi_endproc

	.align	16, 0x90
	.type	decode_mcu_DC_first,@function
decode_mcu_DC_first:                    # @decode_mcu_DC_first
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp18:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp19:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp21:
	.cfi_def_cfa_offset 96
.Ltmp22:
	.cfi_offset %rbx, -56
.Ltmp23:
	.cfi_offset %r12, -48
.Ltmp24:
	.cfi_offset %r13, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r12
	movq	840(%r12), %rbp
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	cmpl	$0, 372(%r12)
	je	.LBB3_4
# BB#1:                                 # %if.then
	movl	76(%rbp), %eax
	testl	%eax, %eax
	jne	.LBB3_3
# BB#2:                                 # %if.then.2
	movq	%r12, %rdi
	callq	process_restart
	movl	76(%rbp), %eax
.LBB3_3:                                # %if.end
	decl	%eax
	movl	%eax, 76(%rbp)
.LBB3_4:                                # %if.end.4
	cmpl	$-1, 40(%rbp)
	je	.LBB3_25
# BB#5:                                 # %for.cond.preheader
	cmpl	$0, 496(%r12)
	jle	.LBB3_25
# BB#6:                                 # %for.body.lr.ph
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB3_7:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_11 Depth 2
                                        #     Child Loop BB3_22 Depth 2
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rax,%r14,8), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movslq	500(%r12,%r14,4), %r15
	movq	456(%r12,%r15,8), %rax
	movslq	20(%rax), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movslq	60(%rbp,%r15,4), %rbx
	addq	80(%rbp,%rax,8), %rbx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	arith_decode
	testl	%eax, %eax
	je	.LBB3_8
# BB#9:                                 # %if.else
                                        #   in Loop: Header=BB3_7 Depth=1
	leaq	1(%rbx), %rsi
	movq	%r12, %rdi
	callq	arith_decode
	movq	%rax, (%rsp)            # 8-byte Spill
	cltq
	leaq	2(%rbx,%rax), %rbx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	arith_decode
	movl	%eax, %ebp
	xorl	%r13d, %r13d
	testl	%ebp, %ebp
	je	.LBB3_14
# BB#10:                                # %if.then.29
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	80(%rax,%rcx,8), %rbx
	addq	$20, %rbx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	arith_decode
	testl	%eax, %eax
	movl	%ebp, %r13d
	je	.LBB3_14
	.align	16, 0x90
.LBB3_11:                               # %while.body
                                        #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	%r13d, %r13d
	cmpl	$32768, %r13d           # imm = 0x8000
	je	.LBB3_12
# BB#13:                                # %if.end.40
                                        #   in Loop: Header=BB3_11 Depth=2
	incq	%rbx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	arith_decode
	testl	%eax, %eax
	jne	.LBB3_11
.LBB3_14:                               # %if.end.42
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	24(%rsp), %rdx          # 8-byte Reload
	movb	324(%r12,%rdx), %cl
	movl	$1, %eax
	shlq	%cl, %rax
	shrq	%rax
	cmpl	%eax, %r13d
	jge	.LBB3_16
# BB#15:                                # %if.then.49
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	$0, 60(%rax,%r15,4)
	jmp	.LBB3_20
	.align	16, 0x90
.LBB3_8:                                # %if.then.18
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	$0, 60(%rbp,%r15,4)
	movl	44(%rbp,%r15,4), %r13d
	jmp	.LBB3_24
	.align	16, 0x90
.LBB3_16:                               # %if.else.53
                                        #   in Loop: Header=BB3_7 Depth=1
	movb	340(%r12,%rdx), %cl
	movl	$1, %edx
	shlq	%cl, %rdx
	shrq	%rdx
	movq	(%rsp), %rax            # 8-byte Reload
	leal	(,%rax,4), %eax
	cmpl	%edx, %r13d
	movq	32(%rsp), %rcx          # 8-byte Reload
	jle	.LBB3_18
# BB#17:                                # %if.then.63
                                        #   in Loop: Header=BB3_7 Depth=1
	addl	$12, %eax
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.67
                                        #   in Loop: Header=BB3_7 Depth=1
	addl	$4, %eax
.LBB3_19:                               # %if.end.74
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	%eax, 60(%rcx,%r15,4)
.LBB3_20:                               # %if.end.74
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	%r13d, %ebp
	sarl	%ebp
	je	.LBB3_23
# BB#21:                                #   in Loop: Header=BB3_7 Depth=1
	addq	$14, %rbx
	.align	16, 0x90
.LBB3_22:                               # %while.body.79
                                        #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	arith_decode
	testl	%eax, %eax
	cmovnel	%ebp, %eax
	orl	%eax, %r13d
	sarl	%ebp
	jne	.LBB3_22
.LBB3_23:                               # %while.end.84
                                        #   in Loop: Header=BB3_7 Depth=1
	leal	1(%r13), %eax
	movq	(%rsp), %rcx            # 8-byte Reload
	testl	%ecx, %ecx
	notl	%r13d
	cmovel	%eax, %r13d
	movq	32(%rsp), %rbp          # 8-byte Reload
	addl	44(%rbp,%r15,4), %r13d
	movl	%r13d, 44(%rbp,%r15,4)
.LBB3_24:                               # %if.end.92
                                        #   in Loop: Header=BB3_7 Depth=1
	movb	768(%r12), %cl
	shll	%cl, %r13d
	movq	16(%rsp), %rax          # 8-byte Reload
	movw	%r13w, (%rax)
	incq	%r14
	movslq	496(%r12), %rax
	cmpq	%rax, %r14
	jl	.LBB3_7
	jmp	.LBB3_25
.LBB3_12:                               # %if.then.37
	movq	(%r12), %rax
	movl	$117, 40(%rax)
	movl	$-1, %esi
	movq	%r12, %rdi
	callq	*8(%rax)
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	$-1, 40(%rax)
.LBB3_25:                               # %cleanup
	movl	$1, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	decode_mcu_DC_first, .Lfunc_end3-decode_mcu_DC_first
	.cfi_endproc

	.align	16, 0x90
	.type	decode_mcu_AC_first,@function
decode_mcu_AC_first:                    # @decode_mcu_AC_first
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp31:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp32:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp34:
	.cfi_def_cfa_offset 112
.Ltmp35:
	.cfi_offset %rbx, -56
.Ltmp36:
	.cfi_offset %r12, -48
.Ltmp37:
	.cfi_offset %r13, -40
.Ltmp38:
	.cfi_offset %r14, -32
.Ltmp39:
	.cfi_offset %r15, -24
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	840(%r15), %rbp
	cmpl	$0, 372(%r15)
	je	.LBB4_4
# BB#1:                                 # %if.then
	movl	76(%rbp), %eax
	testl	%eax, %eax
	jne	.LBB4_3
# BB#2:                                 # %if.then.2
	movq	%r15, %rdi
	callq	process_restart
	movl	76(%rbp), %eax
.LBB4_3:                                # %if.end
	decl	%eax
	movl	%eax, 76(%rbp)
.LBB4_4:                                # %if.end.4
	cmpl	$-1, 40(%rbp)
	je	.LBB4_20
# BB#5:                                 # %if.end.7
	movq	776(%r15), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	(%rbx), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	456(%r15), %rax
	movl	756(%r15), %r13d
	decl	%r13d
	movslq	24(%rax), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	leaq	336(%rbp), %r14
	movq	%r14, 16(%rsp)          # 8-byte Spill
.LBB4_6:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
                                        #     Child Loop BB4_13 Depth 2
                                        #     Child Loop BB4_18 Depth 2
	leal	(%r13,%r13,2), %eax
	movslq	%eax, %rbx
	addq	208(%rbp,%rcx,8), %rbx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	arith_decode
	testl	%eax, %eax
	movl	%r13d, %r12d
	jne	.LBB4_20
	.align	16, 0x90
.LBB4_7:                                # %for.cond
                                        #   Parent Loop BB4_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	1(%r12), %r13d
	leaq	1(%rbx), %rsi
	movq	%r15, %rdi
	callq	arith_decode
	testl	%eax, %eax
	jne	.LBB4_10
# BB#8:                                 # %if.end.18
                                        #   in Loop: Header=BB4_7 Depth=2
	addq	$3, %rbx
	cmpl	760(%r15), %r13d
	movl	%r13d, %r12d
	jl	.LBB4_7
	jmp	.LBB4_9
	.align	16, 0x90
.LBB4_10:                               # %for.end
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	arith_decode
	movl	%eax, 12(%rsp)          # 4-byte Spill
	addq	$2, %rbx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	arith_decode
	movl	%eax, %ebp
	xorl	%r14d, %r14d
	testl	%ebp, %ebp
	je	.LBB4_19
# BB#11:                                # %if.then.29
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	arith_decode
	testl	%eax, %eax
	movl	%ebp, %r14d
	je	.LBB4_16
# BB#12:                                # %if.then.32
                                        #   in Loop: Header=BB4_6 Depth=1
	addl	%ebp, %ebp
	movq	48(%rsp), %rcx          # 8-byte Reload
	movzbl	356(%r15,%rcx), %eax
	cmpl	%eax, %r12d
	movl	$217, %ebx
	movl	$189, %eax
	cmovlq	%rax, %rbx
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	208(%rax,%rcx,8), %rbx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	arith_decode
	testl	%eax, %eax
	movl	%ebp, %r14d
	je	.LBB4_16
	.align	16, 0x90
.LBB4_13:                               # %while.body
                                        #   Parent Loop BB4_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	%r14d, %r14d
	cmpl	$32768, %r14d           # imm = 0x8000
	je	.LBB4_14
# BB#15:                                # %if.end.53
                                        #   in Loop: Header=BB4_13 Depth=2
	incq	%rbx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	arith_decode
	testl	%eax, %eax
	jne	.LBB4_13
.LBB4_16:                               # %if.end.56
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	%r14d, %ebp
	sarl	%ebp
	je	.LBB4_19
# BB#17:                                #   in Loop: Header=BB4_6 Depth=1
	addq	$14, %rbx
	.align	16, 0x90
.LBB4_18:                               # %while.body.60
                                        #   Parent Loop BB4_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	arith_decode
	testl	%eax, %eax
	cmovnel	%ebp, %eax
	orl	%eax, %r14d
	sarl	%ebp
	jne	.LBB4_18
.LBB4_19:                               # %while.end.65
                                        #   in Loop: Header=BB4_6 Depth=1
	leal	1(%r14), %eax
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	notl	%r14d
	cmovel	%eax, %r14d
	movb	768(%r15), %cl
	shll	%cl, %r14d
	movslq	%r13d, %rax
	movq	32(%rsp), %rcx          # 8-byte Reload
	movslq	(%rcx,%rax,4), %rcx
	movq	24(%rsp), %rdx          # 8-byte Reload
	movw	%r14w, (%rdx,%rcx,2)
	cmpl	760(%r15), %eax
	movq	40(%rsp), %rbp          # 8-byte Reload
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	16(%rsp), %r14          # 8-byte Reload
	jl	.LBB4_6
	jmp	.LBB4_20
.LBB4_9:                                # %if.then.21
	movq	(%r15), %rax
	movl	$117, 40(%rax)
	movl	$-1, %esi
	movq	%r15, %rdi
	callq	*8(%rax)
	movl	$-1, 40(%rbp)
.LBB4_20:                               # %cleanup
	movl	$1, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_14:                               # %if.then.47
	movq	(%r15), %rax
	movl	$117, 40(%rax)
	movl	$-1, %esi
	movq	%r15, %rdi
	callq	*8(%rax)
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	$-1, 40(%rax)
	jmp	.LBB4_20
.Lfunc_end4:
	.size	decode_mcu_AC_first, .Lfunc_end4-decode_mcu_AC_first
	.cfi_endproc

	.align	16, 0x90
	.type	decode_mcu_DC_refine,@function
decode_mcu_DC_refine:                   # @decode_mcu_DC_refine
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp44:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 48
.Ltmp46:
	.cfi_offset %rbx, -48
.Ltmp47:
	.cfi_offset %r12, -40
.Ltmp48:
	.cfi_offset %r14, -32
.Ltmp49:
	.cfi_offset %r15, -24
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	840(%rbx), %r15
	cmpl	$0, 372(%rbx)
	je	.LBB5_4
# BB#1:                                 # %if.then
	movl	76(%r15), %eax
	testl	%eax, %eax
	jne	.LBB5_3
# BB#2:                                 # %if.then.2
	movq	%rbx, %rdi
	callq	process_restart
	movl	76(%r15), %eax
.LBB5_3:                                # %if.end
	decl	%eax
	movl	%eax, 76(%r15)
.LBB5_4:                                # %if.end.4
	movb	768(%rbx), %cl
	movl	$1, %r12d
	shll	%cl, %r12d
	xorl	%ebp, %ebp
	cmpl	$0, 496(%rbx)
	jle	.LBB5_9
# BB#5:
	addq	$336, %r15              # imm = 0x150
	.align	16, 0x90
.LBB5_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	arith_decode
	testl	%eax, %eax
	je	.LBB5_8
# BB#7:                                 # %if.then.7
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	(%r14,%rbp,8), %rax
	movzwl	(%rax), %ecx
	orl	%r12d, %ecx
	movw	%cx, (%rax)
.LBB5_8:                                # %for.inc
                                        #   in Loop: Header=BB5_6 Depth=1
	incq	%rbp
	movslq	496(%rbx), %rax
	cmpq	%rax, %rbp
	jl	.LBB5_6
.LBB5_9:                                # %for.end
	movl	$1, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	decode_mcu_DC_refine, .Lfunc_end5-decode_mcu_DC_refine
	.cfi_endproc

	.align	16, 0x90
	.type	decode_mcu_AC_refine,@function
decode_mcu_AC_refine:                   # @decode_mcu_AC_refine
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp52:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp53:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp54:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp55:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp57:
	.cfi_def_cfa_offset 112
.Ltmp58:
	.cfi_offset %rbx, -56
.Ltmp59:
	.cfi_offset %r12, -48
.Ltmp60:
	.cfi_offset %r13, -40
.Ltmp61:
	.cfi_offset %r14, -32
.Ltmp62:
	.cfi_offset %r15, -24
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	840(%r15), %r13
	movq	%r13, 48(%rsp)          # 8-byte Spill
	cmpl	$0, 372(%r15)
	je	.LBB6_4
# BB#1:                                 # %if.then
	movl	76(%r13), %eax
	testl	%eax, %eax
	jne	.LBB6_3
# BB#2:                                 # %if.then.2
	movq	%r15, %rdi
	callq	process_restart
	movl	76(%r13), %eax
.LBB6_3:                                # %if.end
	decl	%eax
	movl	%eax, 76(%r13)
.LBB6_4:                                # %if.end.4
	cmpl	$-1, 40(%r13)
	je	.LBB6_26
# BB#5:                                 # %if.end.7
	movq	776(%r15), %rbp
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movq	(%rbx), %r14
	movq	456(%r15), %rax
	movslq	24(%rax), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movb	768(%r15), %cl
	movl	$1, %eax
	shll	%cl, %eax
	movl	%eax, 8(%rsp)           # 4-byte Spill
	movl	$-1, %eax
	shll	%cl, %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movslq	760(%r15), %rax
	.align	16, 0x90
.LBB6_6:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rbp,%rax,4), %rcx
	cmpw	$0, (%r14,%rcx,2)
	jne	.LBB6_8
# BB#7:                                 # %do.cond
                                        #   in Loop: Header=BB6_6 Depth=1
	decq	%rax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jne	.LBB6_6
	jmp	.LBB6_9
.LBB6_8:                                # %do.body.do.end_crit_edge
	movl	%eax, %ecx
.LBB6_9:                                # %do.end
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movl	756(%r15), %r12d
	decl	%r12d
	leaq	336(%r13), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
.LBB6_10:                               # %do.body.20
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_13 Depth 2
	leal	(%r12,%r12,2), %eax
	movslq	%eax, %rbx
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	208(%r13,%rax,8), %rbx
	cmpl	36(%rsp), %r12d         # 4-byte Folded Reload
	jl	.LBB6_12
# BB#11:                                # %if.then.24
                                        #   in Loop: Header=BB6_10 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	arith_decode
	testl	%eax, %eax
	jne	.LBB6_26
.LBB6_12:                               # %for.cond.preheader
                                        #   in Loop: Header=BB6_10 Depth=1
	leal	1(%r12), %eax
	cltq
	leaq	(%rbp,%rax,4), %rbp
	.align	16, 0x90
.LBB6_13:                               # %for.cond
                                        #   Parent Loop BB6_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	incl	%r12d
	movslq	(%rbp), %r13
	cmpw	$0, (%r14,%r13,2)
	jne	.LBB6_14
# BB#20:                                # %if.end.49
                                        #   in Loop: Header=BB6_13 Depth=2
	leaq	1(%rbx), %rsi
	movq	%r15, %rdi
	callq	arith_decode
	testl	%eax, %eax
	jne	.LBB6_21
# BB#24:                                # %if.end.62
                                        #   in Loop: Header=BB6_13 Depth=2
	addq	$3, %rbx
	addq	$4, %rbp
	cmpl	760(%r15), %r12d
	jl	.LBB6_13
	jmp	.LBB6_25
	.align	16, 0x90
.LBB6_14:                               # %if.then.34
                                        #   in Loop: Header=BB6_10 Depth=1
	addq	$2, %rbx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	arith_decode
	testl	%eax, %eax
	je	.LBB6_15
# BB#16:                                # %if.then.38
                                        #   in Loop: Header=BB6_10 Depth=1
	movswl	(%r14,%r13,2), %eax
	testl	%eax, %eax
	js	.LBB6_17
# BB#19:                                # %if.else
                                        #   in Loop: Header=BB6_10 Depth=1
	addl	8(%rsp), %eax           # 4-byte Folded Reload
	movw	%ax, (%r14,%r13,2)
	jmp	.LBB6_15
	.align	16, 0x90
.LBB6_21:                               # %if.then.53
                                        #   in Loop: Header=BB6_10 Depth=1
	movq	%r15, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	arith_decode
	testl	%eax, %eax
	je	.LBB6_23
# BB#22:                                # %if.then.57
                                        #   in Loop: Header=BB6_10 Depth=1
	movl	12(%rsp), %eax          # 4-byte Reload
	movw	%ax, (%r14,%r13,2)
	jmp	.LBB6_15
.LBB6_23:                               # %if.else.59
                                        #   in Loop: Header=BB6_10 Depth=1
	movl	8(%rsp), %eax           # 4-byte Reload
	movw	%ax, (%r14,%r13,2)
	jmp	.LBB6_15
.LBB6_17:                               # %if.then.41
                                        #   in Loop: Header=BB6_10 Depth=1
	addl	12(%rsp), %eax          # 4-byte Folded Reload
	movw	%ax, (%r14,%r13,2)
	.align	16, 0x90
.LBB6_15:                               #   in Loop: Header=BB6_10 Depth=1
	movq	48(%rsp), %r13          # 8-byte Reload
	movq	24(%rsp), %rbp          # 8-byte Reload
	cmpl	760(%r15), %r12d
	jl	.LBB6_10
	jmp	.LBB6_26
.LBB6_25:                               # %if.then.67
	movq	(%r15), %rax
	movl	$117, 40(%rax)
	movl	$-1, %esi
	movq	%r15, %rdi
	callq	*8(%rax)
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	$-1, 40(%rax)
.LBB6_26:                               # %cleanup
	movl	$1, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	decode_mcu_AC_refine, .Lfunc_end6-decode_mcu_AC_refine
	.cfi_endproc

	.align	16, 0x90
	.type	decode_mcu,@function
decode_mcu:                             # @decode_mcu
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
	pushq	%r13
.Ltmp67:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp68:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp69:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp70:
	.cfi_def_cfa_offset 128
.Ltmp71:
	.cfi_offset %rbx, -56
.Ltmp72:
	.cfi_offset %r12, -48
.Ltmp73:
	.cfi_offset %r13, -40
.Ltmp74:
	.cfi_offset %r14, -32
.Ltmp75:
	.cfi_offset %r15, -24
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	840(%r12), %r15
	cmpl	$0, 372(%r12)
	je	.LBB7_4
# BB#1:                                 # %if.then
	movl	76(%r15), %eax
	testl	%eax, %eax
	jne	.LBB7_3
# BB#2:                                 # %if.then.2
	movq	%r12, %rdi
	callq	process_restart
	movl	76(%r15), %eax
.LBB7_3:                                # %if.end
	decl	%eax
	movl	%eax, 76(%r15)
.LBB7_4:                                # %if.end.4
	cmpl	$-1, 40(%r15)
	je	.LBB7_40
# BB#5:                                 # %if.end.7
	cmpl	$0, 496(%r12)
	jle	.LBB7_40
# BB#6:                                 # %for.body.lr.ph
	movq	776(%r12), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	336(%r15), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%ecx, %ecx
.LBB7_7:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_11 Depth 2
                                        #     Child Loop BB7_22 Depth 2
                                        #     Child Loop BB7_26 Depth 2
                                        #       Child Loop BB7_27 Depth 3
                                        #       Child Loop BB7_33 Depth 3
                                        #       Child Loop BB7_37 Depth 3
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movq	(%rbx,%rcx,8), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movslq	500(%r12,%rcx,4), %r13
	movq	456(%r12,%r13,8), %rbp
	movslq	20(%rbp), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movslq	60(%r15,%r13,4), %rbx
	addq	80(%r15,%rax,8), %rbx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	arith_decode
	testl	%eax, %eax
	je	.LBB7_8
# BB#9:                                 # %if.else
                                        #   in Loop: Header=BB7_7 Depth=1
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	leaq	1(%rbx), %rsi
	movq	%r12, %rdi
	callq	arith_decode
	movq	%rax, 48(%rsp)          # 8-byte Spill
	cltq
	leaq	2(%rbx,%rax), %rbx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	arith_decode
	movl	%eax, %ebp
	xorl	%r14d, %r14d
	testl	%ebp, %ebp
	je	.LBB7_14
# BB#10:                                # %if.then.30
                                        #   in Loop: Header=BB7_7 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	80(%r15,%rax,8), %rbx
	addq	$20, %rbx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	arith_decode
	testl	%eax, %eax
	movl	%ebp, %r14d
	je	.LBB7_14
	.align	16, 0x90
.LBB7_11:                               # %while.body
                                        #   Parent Loop BB7_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	%r14d, %r14d
	cmpl	$32768, %r14d           # imm = 0x8000
	je	.LBB7_12
# BB#13:                                # %if.end.41
                                        #   in Loop: Header=BB7_11 Depth=2
	incq	%rbx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	arith_decode
	testl	%eax, %eax
	jne	.LBB7_11
.LBB7_14:                               # %if.end.43
                                        #   in Loop: Header=BB7_7 Depth=1
	movq	64(%rsp), %rdx          # 8-byte Reload
	movb	324(%r12,%rdx), %cl
	movl	$1, %eax
	shlq	%cl, %rax
	shrq	%rax
	cmpl	%eax, %r14d
	jge	.LBB7_16
# BB#15:                                # %if.then.50
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	$0, 60(%r15,%r13,4)
	jmp	.LBB7_20
	.align	16, 0x90
.LBB7_8:                                # %if.then.19
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	$0, 60(%r15,%r13,4)
	movl	44(%r15,%r13,4), %r14d
	movq	%r15, 64(%rsp)          # 8-byte Spill
	jmp	.LBB7_24
.LBB7_16:                               # %if.else.54
                                        #   in Loop: Header=BB7_7 Depth=1
	movb	340(%r12,%rdx), %cl
	movl	$1, %edx
	shlq	%cl, %rdx
	shrq	%rdx
	movq	48(%rsp), %rax          # 8-byte Reload
	leal	(,%rax,4), %eax
	cmpl	%edx, %r14d
	jle	.LBB7_18
# BB#17:                                # %if.then.64
                                        #   in Loop: Header=BB7_7 Depth=1
	addl	$12, %eax
	jmp	.LBB7_19
.LBB7_18:                               # %if.else.68
                                        #   in Loop: Header=BB7_7 Depth=1
	addl	$4, %eax
.LBB7_19:                               # %if.end.75
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	%eax, 60(%r15,%r13,4)
.LBB7_20:                               # %if.end.75
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	%r14d, %ebp
	sarl	%ebp
	je	.LBB7_23
# BB#21:                                #   in Loop: Header=BB7_7 Depth=1
	addq	$14, %rbx
	.align	16, 0x90
.LBB7_22:                               # %while.body.80
                                        #   Parent Loop BB7_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	arith_decode
	testl	%eax, %eax
	cmovnel	%ebp, %eax
	orl	%eax, %r14d
	sarl	%ebp
	jne	.LBB7_22
.LBB7_23:                               # %while.end.85
                                        #   in Loop: Header=BB7_7 Depth=1
	leal	1(%r14), %eax
	movq	48(%rsp), %rcx          # 8-byte Reload
	testl	%ecx, %ecx
	notl	%r14d
	cmovel	%eax, %r14d
	addl	44(%r15,%r13,4), %r14d
	movl	%r14d, 44(%r15,%r13,4)
	movq	%r15, 64(%rsp)          # 8-byte Spill
	movq	24(%rsp), %rbp          # 8-byte Reload
.LBB7_24:                               # %if.end.93
                                        #   in Loop: Header=BB7_7 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	movw	%r14w, (%rax)
	cmpl	$0, 784(%r12)
	je	.LBB7_39
# BB#25:                                # %if.end.102
                                        #   in Loop: Header=BB7_7 Depth=1
	movslq	24(%rbp), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
.LBB7_26:                               # %do.body
                                        #   Parent Loop BB7_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_27 Depth 3
                                        #       Child Loop BB7_33 Depth 3
                                        #       Child Loop BB7_37 Depth 3
	leal	(%r15,%r15,2), %eax
	movslq	%eax, %rbx
	movq	64(%rsp), %rax          # 8-byte Reload
	addq	208(%rax,%rcx,8), %rbx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	arith_decode
	testl	%eax, %eax
	movl	%r15d, %r13d
	jne	.LBB7_39
	.align	16, 0x90
.LBB7_27:                               # %for.cond.112
                                        #   Parent Loop BB7_7 Depth=1
                                        #     Parent Loop BB7_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	1(%r13), %r15d
	leaq	1(%rbx), %rsi
	movq	%r12, %rdi
	callq	arith_decode
	testl	%eax, %eax
	jne	.LBB7_30
# BB#28:                                # %if.end.117
                                        #   in Loop: Header=BB7_27 Depth=3
	addq	$3, %rbx
	cmpl	784(%r12), %r15d
	movl	%r15d, %r13d
	jl	.LBB7_27
	jmp	.LBB7_29
	.align	16, 0x90
.LBB7_30:                               # %for.end
                                        #   in Loop: Header=BB7_26 Depth=2
	movq	%r12, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	arith_decode
	movl	%eax, 24(%rsp)          # 4-byte Spill
	addq	$2, %rbx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	arith_decode
	movl	%eax, %ebp
	xorl	%r14d, %r14d
	testl	%ebp, %ebp
	je	.LBB7_38
# BB#31:                                # %if.then.134
                                        #   in Loop: Header=BB7_26 Depth=2
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	arith_decode
	testl	%eax, %eax
	movl	%ebp, %r14d
	je	.LBB7_35
# BB#32:                                # %if.then.137
                                        #   in Loop: Header=BB7_26 Depth=2
	addl	%ebp, %ebp
	movq	48(%rsp), %rcx          # 8-byte Reload
	movzbl	356(%r12,%rcx), %eax
	cmpl	%eax, %r13d
	movl	$217, %ebx
	movl	$189, %eax
	cmovlq	%rax, %rbx
	movq	64(%rsp), %rax          # 8-byte Reload
	addq	208(%rax,%rcx,8), %rbx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	arith_decode
	testl	%eax, %eax
	movl	%ebp, %r14d
	je	.LBB7_35
	.align	16, 0x90
.LBB7_33:                               # %while.body.152
                                        #   Parent Loop BB7_7 Depth=1
                                        #     Parent Loop BB7_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addl	%r14d, %r14d
	cmpl	$32768, %r14d           # imm = 0x8000
	je	.LBB7_29
# BB#34:                                # %if.end.162
                                        #   in Loop: Header=BB7_33 Depth=3
	incq	%rbx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	arith_decode
	testl	%eax, %eax
	jne	.LBB7_33
.LBB7_35:                               # %if.end.166
                                        #   in Loop: Header=BB7_26 Depth=2
	movl	%r14d, %ebp
	sarl	%ebp
	je	.LBB7_38
# BB#36:                                #   in Loop: Header=BB7_26 Depth=2
	addq	$14, %rbx
	.align	16, 0x90
.LBB7_37:                               # %while.body.171
                                        #   Parent Loop BB7_7 Depth=1
                                        #     Parent Loop BB7_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	arith_decode
	testl	%eax, %eax
	cmovnel	%ebp, %eax
	orl	%eax, %r14d
	sarl	%ebp
	jne	.LBB7_37
.LBB7_38:                               # %while.end.177
                                        #   in Loop: Header=BB7_26 Depth=2
	leal	1(%r14), %eax
	cmpl	$0, 24(%rsp)            # 4-byte Folded Reload
	notl	%r14d
	cmovew	%ax, %r14w
	movslq	%r15d, %rax
	movq	8(%rsp), %rcx           # 8-byte Reload
	movslq	(%rcx,%rax,4), %rcx
	movq	56(%rsp), %rdx          # 8-byte Reload
	movw	%r14w, (%rdx,%rcx,2)
	cmpl	784(%r12), %eax
	movq	48(%rsp), %rcx          # 8-byte Reload
	jl	.LBB7_26
	.align	16, 0x90
.LBB7_39:                               # %for.inc
                                        #   in Loop: Header=BB7_7 Depth=1
	movq	32(%rsp), %rcx          # 8-byte Reload
	incq	%rcx
	movslq	496(%r12), %rax
	cmpq	%rax, %rcx
	movq	64(%rsp), %r15          # 8-byte Reload
	movq	40(%rsp), %rbx          # 8-byte Reload
	jl	.LBB7_7
	jmp	.LBB7_40
.LBB7_29:                               # %if.then.122
	movq	(%r12), %rax
	movl	$117, 40(%rax)
	movl	$-1, %esi
	movq	%r12, %rdi
	callq	*8(%rax)
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	$-1, 40(%rax)
	jmp	.LBB7_40
.LBB7_12:                               # %if.then.38
	movq	(%r12), %rax
	movl	$117, 40(%rax)
	movl	$-1, %esi
	movq	%r12, %rdi
	callq	*8(%rax)
	movl	$-1, 40(%r15)
.LBB7_40:                               # %cleanup
	movl	$1, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	decode_mcu, .Lfunc_end7-decode_mcu
	.cfi_endproc

	.align	16, 0x90
	.type	process_restart,@function
process_restart:                        # @process_restart
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp77:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp78:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp79:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp80:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp81:
	.cfi_def_cfa_offset 48
.Ltmp82:
	.cfi_offset %rbx, -40
.Ltmp83:
	.cfi_offset %r12, -32
.Ltmp84:
	.cfi_offset %r14, -24
.Ltmp85:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	832(%r15), %rax
	movq	840(%r15), %r14
	callq	*16(%rax)
	testl	%eax, %eax
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	(%r15), %rax
	movl	$25, 40(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB8_2:                                # %for.cond.preheader
	cmpl	$0, 448(%r15)
	jle	.LBB8_12
# BB#3:                                 # %for.body.lr.ph
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB8_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	456(%r15,%rbx,8), %r12
	cmpl	$0, 316(%r15)
	je	.LBB8_7
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB8_4 Depth=1
	cmpl	$0, 756(%r15)
	jne	.LBB8_10
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB8_4 Depth=1
	cmpl	$0, 764(%r15)
	jne	.LBB8_9
	.align	16, 0x90
.LBB8_7:                                # %if.end.14
                                        #   in Loop: Header=BB8_4 Depth=1
	movslq	20(%r12), %rax
	movq	80(%r14,%rax,8), %rdi
	xorl	%esi, %esi
	movl	$64, %edx
	callq	memset
	movl	$0, 44(%r14,%rbx,4)
	movl	$0, 60(%r14,%rbx,4)
	cmpl	$0, 316(%r15)
	je	.LBB8_8
.LBB8_9:                                # %land.lhs.true.22
                                        #   in Loop: Header=BB8_4 Depth=1
	cmpl	$0, 756(%r15)
	jne	.LBB8_10
	jmp	.LBB8_11
.LBB8_8:                                # %land.lhs.true.17
                                        #   in Loop: Header=BB8_4 Depth=1
	cmpl	$0, 784(%r15)
	je	.LBB8_11
	.align	16, 0x90
.LBB8_10:                               # %if.then.25
                                        #   in Loop: Header=BB8_4 Depth=1
	movslq	24(%r12), %rax
	movq	208(%r14,%rax,8), %rdi
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
.LBB8_11:                               # %for.inc
                                        #   in Loop: Header=BB8_4 Depth=1
	incq	%rbx
	movslq	448(%r15), %rax
	cmpq	%rax, %rbx
	jl	.LBB8_4
.LBB8_12:                               # %for.end
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%r14)
	movl	$-16, 40(%r14)
	movl	372(%r15), %eax
	movl	%eax, 76(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end8:
	.size	process_restart, .Lfunc_end8-process_restart
	.cfi_endproc

	.align	16, 0x90
	.type	arith_decode,@function
arith_decode:                           # @arith_decode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp86:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp87:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp88:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp89:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp90:
	.cfi_def_cfa_offset 48
.Ltmp91:
	.cfi_offset %rbx, -48
.Ltmp92:
	.cfi_offset %r12, -40
.Ltmp93:
	.cfi_offset %r13, -32
.Ltmp94:
	.cfi_offset %r14, -24
.Ltmp95:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r13
	movq	840(%r13), %r15
	movq	32(%r15), %rdx
	cmpq	$32768, %rdx            # imm = 0x8000
	jge	.LBB9_1
# BB#2:                                 # %while.body.lr.ph
	movl	40(%r15), %ecx
	.align	16, 0x90
.LBB9_3:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_9 Depth 2
	testl	%ecx, %ecx
	leal	-1(%rcx), %eax
	movl	%eax, 40(%r15)
	movl	%eax, %ecx
	jg	.LBB9_18
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB9_3 Depth=1
	cmpl	$0, 788(%r13)
	movl	$0, %eax
	jne	.LBB9_15
# BB#5:                                 # %if.else
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	40(%r13), %r12
	cmpq	$0, 8(%r12)
	jne	.LBB9_8
# BB#6:                                 # %if.then.i
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	%r13, %rdi
	callq	*24(%r12)
	testl	%eax, %eax
	jne	.LBB9_8
# BB#7:                                 # %if.then.2.i
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	(%r13), %rax
	movl	$25, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
.LBB9_8:                                # %get_byte.exit
                                        #   in Loop: Header=BB9_3 Depth=1
	decq	8(%r12)
	movq	(%r12), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movzbl	(%rax), %eax
	cmpq	$255, %rax
	jne	.LBB9_15
	.align	16, 0x90
.LBB9_9:                                # %do.body
                                        #   Parent Loop BB9_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	40(%r13), %rbx
	cmpq	$0, 8(%rbx)
	jne	.LBB9_12
# BB#10:                                # %if.then.i.58
                                        #   in Loop: Header=BB9_9 Depth=2
	movq	%r13, %rdi
	callq	*24(%rbx)
	testl	%eax, %eax
	jne	.LBB9_12
# BB#11:                                # %if.then.2.i.62
                                        #   in Loop: Header=BB9_9 Depth=2
	movq	(%r13), %rax
	movl	$25, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
	.align	16, 0x90
.LBB9_12:                               # %get_byte.exit67
                                        #   in Loop: Header=BB9_9 Depth=2
	decq	8(%rbx)
	movq	(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rbx)
	movzbl	(%rax), %ecx
	cmpl	$255, %ecx
	je	.LBB9_9
# BB#13:                                # %get_byte.exit67
                                        #   in Loop: Header=BB9_3 Depth=1
	testl	%ecx, %ecx
	movl	$255, %eax
	je	.LBB9_15
# BB#14:                                # %if.else.9
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	%ecx, 788(%r13)
	xorl	%eax, %eax
	.align	16, 0x90
.LBB9_15:                               # %if.end.12
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	24(%r15), %rcx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movq	%rcx, 24(%r15)
	movl	40(%r15), %eax
	leal	8(%rax), %ecx
	movl	%ecx, 40(%r15)
	cmpl	$-9, %eax
	jg	.LBB9_18
# BB#16:                                # %if.then.17
                                        #   in Loop: Header=BB9_3 Depth=1
	addl	$9, %eax
	movl	%eax, 40(%r15)
	movl	%eax, %ecx
	jne	.LBB9_18
# BB#17:                                # %if.then.21
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	$32768, 32(%r15)        # imm = 0x8000
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB9_18:                               # %if.end.25
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	32(%r15), %rdx
	addq	%rdx, %rdx
	movq	%rdx, 32(%r15)
	cmpq	$32768, %rdx            # imm = 0x8000
	jl	.LBB9_3
	jmp	.LBB9_19
.LBB9_1:                                # %entry.while.end_crit_edge
	movl	40(%r15), %ecx
.LBB9_19:                               # %while.end
	movzbl	(%r14), %eax
	movl	%eax, %esi
	andl	$127, %esi
	movq	jpeg_aritab(,%rsi,8), %r8
	movq	%r8, %rsi
	shrq	$8, %rsi
	movq	%r8, %rdi
	sarq	$16, %rdi
	subq	%rdi, %rdx
	movq	%rdx, 32(%r15)
	movq	%rdx, %rbx
	shlq	%cl, %rbx
	movq	24(%r15), %rcx
	subq	%rbx, %rcx
	jge	.LBB9_20
# BB#22:                                # %if.else.60
	cmpq	$32767, %rdx            # imm = 0x7FFF
	jg	.LBB9_25
# BB#23:                                # %if.then.64
	movl	%eax, %ecx
	andl	$128, %ecx
	cmpq	%rdi, %rdx
	jl	.LBB9_21
	jmp	.LBB9_24
.LBB9_20:                               # %if.then.41
	movq	%rcx, 24(%r15)
	movq	%rdi, 32(%r15)
	movl	%eax, %ecx
	andl	$128, %ecx
	cmpq	%rdi, %rdx
	jge	.LBB9_21
.LBB9_24:                               # %if.else.74
	xorl	%ecx, %esi
	movb	%sil, (%r14)
	jmp	.LBB9_25
.LBB9_21:                               # %if.else.52
	xorl	%r8d, %ecx
	movb	%cl, (%r14)
	xorl	$128, %eax
.LBB9_25:                               # %if.end.81
	shrl	$7, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end9:
	.size	arith_decode, .Lfunc_end9-arith_decode
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
