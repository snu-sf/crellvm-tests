	.text
	.file	"gxdhtserial.bc"
	.globl	gx_ht_write
	.align	16, 0x90
	.type	gx_ht_write,@function
gx_ht_write:                            # @gx_ht_write
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
	movq	%rdx, %rbx
	movq	%rdi, %r15
	movl	$-28, %edx
	testq	%r15, %r15
	je	.LBB0_21
# BB#1:                                 # %lor.lhs.false
	movq	200(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB0_21
# BB#2:                                 # %if.end
	movslq	212(%r15), %r12
	testq	%r12, %r12
	movl	$2, %r14d
	jle	.LBB0_11
# BB#3:                                 # %for.body.lr.ph
	movq	%rcx, (%rsp)            # 8-byte Spill
	movl	$0, 20(%rsp)
	xorl	%ebp, %ebp
	cmpl	$0, 160(%rdi)
	jne	.LBB0_8
# BB#4:
	movl	$2, %r14d
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB0_5:                                # %for.inc
                                        # =>This Inner Loop Header: Depth=1
	addq	%rbp, %rdi
	movq	%rbx, %rsi
	leaq	20(%rsp), %rdx
	callq	gx_ht_write_component
	addl	20(%rsp), %r14d
	incq	%r13
	cmpq	%r12, %r13
	jge	.LBB0_9
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB0_5 Depth=1
	cmpl	$-15, %eax
	jne	.LBB0_9
# BB#7:                                 # %for.inc.for.body_crit_edge
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	200(%r15), %rdi
	movl	$0, 20(%rsp)
	cmpl	328(%rdi,%rbp), %r13d
	leaq	168(%rbp), %rbp
	je	.LBB0_5
.LBB0_8:                                # %cleanup
	movl	$-28, %edx
	jmp	.LBB0_21
.LBB0_9:                                # %for.end
	testl	%eax, %eax
	movq	(%rsp), %rcx            # 8-byte Reload
	jns	.LBB0_11
# BB#10:                                # %for.end
	cmpl	$-15, %eax
	movl	%eax, %edx
	jne	.LBB0_21
.LBB0_11:                               # %if.else
	movl	(%rcx), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	cmpl	%r14d, %eax
	jae	.LBB0_13
# BB#12:                                # %if.then.15
	movl	%r14d, (%rcx)
	jmp	.LBB0_20
.LBB0_13:                               # %if.end.17
	movb	192(%r15), %al
	movb	%al, (%rbx)
	movb	%r12b, 1(%rbx)
	movl	$2, %ebp
	testl	%r12d, %r12d
	jle	.LBB0_19
# BB#14:                                # %for.body.27.lr.ph
	movq	%rcx, (%rsp)            # 8-byte Spill
	addq	$2, %rbx
	movl	$2, %ebp
	xorl	%r14d, %r14d
	movl	$1, %r13d
	.align	16, 0x90
.LBB0_15:                               # %for.body.27
                                        # =>This Inner Loop Header: Depth=1
	movl	12(%rsp), %eax          # 4-byte Reload
	subl	%ebp, %eax
	movl	%eax, 16(%rsp)
	movq	200(%r15), %rdi
	addq	%r14, %rdi
	movq	%rbx, %rsi
	leaq	16(%rsp), %rdx
	callq	gx_ht_write_component
	movl	16(%rsp), %ecx
	leal	(%rbp,%rcx), %ebp
	cmpq	%r12, %r13
	jge	.LBB0_17
# BB#16:                                # %for.body.27
                                        #   in Loop: Header=BB0_15 Depth=1
	addq	%rcx, %rbx
	addq	$168, %r14
	incq	%r13
	testl	%eax, %eax
	je	.LBB0_15
.LBB0_17:                               # %for.end.36
	testl	%eax, %eax
	movq	(%rsp), %rcx            # 8-byte Reload
	js	.LBB0_18
.LBB0_19:                               # %if.end.44
	movl	%ebp, (%rcx)
.LBB0_20:                               # %cleanup.45
	xorl	%edx, %edx
.LBB0_21:                               # %cleanup.45
	movl	%edx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_18:                               # %if.then.39
	cmpl	$-15, %eax
	movl	$-1, %edx
	cmovnel	%eax, %edx
	jmp	.LBB0_21
.Lfunc_end0:
	.size	gx_ht_write, .Lfunc_end0-gx_ht_write
	.cfi_endproc

	.align	16, 0x90
	.type	gx_ht_write_component,@function
gx_ht_write_component:                  # @gx_ht_write_component
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
	movq	%rdx, %rbx
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r12
	movl	56(%r12), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movq	64(%r12), %rax
	movl	(%rax), %eax
	imull	60(%r12), %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movzwl	40(%r12), %edi
	cmpl	$128, %edi
	movl	$1, %r13d
	movl	$1, %ebp
	jb	.LBB1_3
# BB#1:                                 # %cond.false
	movl	$2, %ebp
	cmpl	$16384, %edi            # imm = 0x4000
	jb	.LBB1_3
# BB#2:                                 # %cond.false.10
	callq	enc_u_size_uint
	movl	%eax, %ebp
.LBB1_3:                                # %cond.end.13
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movzwl	42(%r12), %edi
	cmpl	$128, %edi
	jb	.LBB1_6
# BB#4:                                 # %cond.false.19
	movl	$2, %r13d
	cmpl	$16384, %edi            # imm = 0x4000
	jb	.LBB1_6
# BB#5:                                 # %cond.false.25
	callq	enc_u_size_uint
	movl	%eax, %r13d
.LBB1_6:                                # %cond.end.31
	movzwl	46(%r12), %edi
	cmpl	$128, %edi
	movl	$1, %ebx
	movl	$1, %r15d
	jb	.LBB1_9
# BB#7:                                 # %cond.false.37
	movl	$2, %r15d
	cmpl	$16384, %edi            # imm = 0x4000
	jb	.LBB1_9
# BB#8:                                 # %cond.false.43
	callq	enc_u_size_uint
	movl	%eax, %r15d
.LBB1_9:                                # %cond.end.49
	movl	56(%r12), %edi
	cmpl	$128, %edi
	jb	.LBB1_12
# BB#10:                                # %cond.false.56
	movl	$2, %ebx
	cmpl	$16384, %edi            # imm = 0x4000
	jb	.LBB1_12
# BB#11:                                # %cond.false.61
	callq	enc_u_size_uint
	movl	%eax, %ebx
.LBB1_12:                               # %cond.end.66
	movl	60(%r12), %edi
	movl	$1, %r14d
	cmpl	$128, %edi
	movl	$1, %eax
	jb	.LBB1_15
# BB#13:                                # %cond.false.73
	movl	$2, %eax
	cmpl	$16384, %edi            # imm = 0x4000
	jb	.LBB1_15
# BB#14:                                # %cond.false.78
	callq	enc_u_size_uint
.LBB1_15:                               # %cond.end.83
	movl	20(%rsp), %esi          # 4-byte Reload
	shll	$2, %esi
	movq	104(%r12), %rcx
	testq	%rcx, %rcx
	je	.LBB1_18
# BB#16:                                # %land.lhs.true.i
	movl	$gs_identity_transfer, %edx
	movl	$1, %r14d
	cmpq	%rdx, 24(%rcx)
	je	.LBB1_18
# BB#17:                                # %select.mid
	movl	$513, %r14d             # imm = 0x201
.LBB1_18:                               # %if.end
	movl	%esi, %ecx
	orl	$1, %ecx
	addl	36(%rsp), %ecx          # 4-byte Folded Reload
	addl	%ebp, %ecx
	addl	%r13d, %ecx
	addl	%r15d, %ecx
	addl	%ebx, %ecx
	addl	%eax, %ecx
	addl	%r14d, %ecx
	movq	24(%rsp), %r15          # 8-byte Reload
	cmpl	(%r15), %ecx
	jbe	.LBB1_20
# BB#19:                                # %if.then.97
	movl	%ecx, (%r15)
	movl	$-15, %eax
	jmp	.LBB1_53
.LBB1_20:                               # %do.body
	movl	%esi, %ebp
	movzwl	40(%r12), %edi
	cmpl	$127, %edi
	ja	.LBB1_22
# BB#21:                                # %if.then.103
	movq	8(%rsp), %r13           # 8-byte Reload
	leaq	1(%r13), %rbx
	movb	%dil, (%r13)
	jmp	.LBB1_25
.LBB1_22:                               # %if.else
	cmpl	$16383, %edi            # imm = 0x3FFF
	movq	8(%rsp), %r13           # 8-byte Reload
	ja	.LBB1_24
# BB#23:                                # %if.then.110
	orl	$128, %edi
	movb	%dil, (%r13)
	movzwl	40(%r12), %eax
	shrl	$7, %eax
	leaq	2(%r13), %rbx
	movb	%al, 1(%r13)
	jmp	.LBB1_25
.LBB1_24:                               # %if.else.119
	movq	%r13, %rsi
	callq	enc_u_put_uint
	movq	%rax, %rbx
.LBB1_25:                               # %do.body.125
	movzwl	42(%r12), %edi
	cmpl	$127, %edi
	ja	.LBB1_27
# BB#26:                                # %if.then.130
	movb	%dil, (%rbx)
	incq	%rbx
	jmp	.LBB1_30
.LBB1_27:                               # %if.else.134
	cmpl	$16383, %edi            # imm = 0x3FFF
	ja	.LBB1_29
# BB#28:                                # %if.then.139
	orl	$128, %edi
	movb	%dil, (%rbx)
	movzwl	42(%r12), %eax
	shrl	$7, %eax
	movb	%al, 1(%rbx)
	addq	$2, %rbx
	jmp	.LBB1_30
.LBB1_29:                               # %if.else.151
	movq	%rbx, %rsi
	callq	enc_u_put_uint
	movq	%rax, %rbx
.LBB1_30:                               # %do.body.159
	movzwl	46(%r12), %edi
	cmpl	$127, %edi
	ja	.LBB1_32
# BB#31:                                # %if.then.164
	movb	%dil, (%rbx)
	incq	%rbx
	jmp	.LBB1_35
.LBB1_32:                               # %if.else.168
	cmpl	$16383, %edi            # imm = 0x3FFF
	ja	.LBB1_34
# BB#33:                                # %if.then.173
	orl	$128, %edi
	movb	%dil, (%rbx)
	movzwl	46(%r12), %eax
	shrl	$7, %eax
	movb	%al, 1(%rbx)
	addq	$2, %rbx
	jmp	.LBB1_35
.LBB1_34:                               # %if.else.185
	movq	%rbx, %rsi
	callq	enc_u_put_uint
	movq	%rax, %rbx
.LBB1_35:                               # %do.body.193
	movl	56(%r12), %edi
	cmpl	$127, %edi
	ja	.LBB1_37
# BB#36:                                # %if.then.197
	movb	%dil, (%rbx)
	incq	%rbx
	jmp	.LBB1_40
.LBB1_37:                               # %if.else.201
	cmpl	$16383, %edi            # imm = 0x3FFF
	ja	.LBB1_39
# BB#38:                                # %if.then.205
	orl	$128, %edi
	movb	%dil, (%rbx)
	movl	56(%r12), %eax
	shrl	$7, %eax
	movb	%al, 1(%rbx)
	addq	$2, %rbx
	jmp	.LBB1_40
.LBB1_39:                               # %if.else.215
	movq	%rbx, %rsi
	callq	enc_u_put_uint
	movq	%rax, %rbx
.LBB1_40:                               # %do.body.222
	movl	60(%r12), %edi
	cmpl	$127, %edi
	ja	.LBB1_42
# BB#41:                                # %if.then.226
	movb	%dil, (%rbx)
	incq	%rbx
	jmp	.LBB1_45
.LBB1_42:                               # %if.else.230
	cmpl	$16383, %edi            # imm = 0x3FFF
	ja	.LBB1_44
# BB#43:                                # %if.then.234
	orl	$128, %edi
	movb	%dil, (%rbx)
	movl	60(%r12), %eax
	shrl	$7, %eax
	movb	%al, 1(%rbx)
	addq	$2, %rbx
	jmp	.LBB1_45
.LBB1_44:                               # %if.else.244
	movq	%rbx, %rsi
	callq	enc_u_put_uint
	movq	%rax, %rbx
.LBB1_45:                               # %do.end.250
	movl	64(%r12), %eax
	movl	$ht_order_procs_table, %ecx
	subl	%ecx, %eax
	shrl	$3, %eax
	imull	$-858993459, %eax, %eax # imm = 0xFFFFFFFFCCCCCCCD
	leaq	1(%rbx), %rdi
	movb	%al, (%rbx)
	movq	80(%r12), %rsi
	movslq	%ebp, %rbp
	movq	%rbp, %rdx
	callq	memcpy
	leaq	1(%rbx,%rbp), %rbx
	movq	88(%r12), %rsi
	movslq	36(%rsp), %rbp          # 4-byte Folded Reload
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	memcpy
	addq	%rbp, %rbx
	movl	(%r15), %ecx
	movq	%rbx, %r14
	subq	%r13, %r14
	subl	%r14d, %ecx
	movq	104(%r12), %rsi
	movl	$1, %ebp
	testq	%rsi, %rsi
	je	.LBB1_48
# BB#46:                                # %land.lhs.true.i.98
	movl	$gs_identity_transfer, %eax
	movl	$1, %ebp
	cmpq	%rax, 24(%rsi)
	je	.LBB1_48
# BB#47:                                # %select.mid168
	movl	$513, %ebp              # imm = 0x201
.LBB1_48:                               # %if.end.i.101
	movl	$-15, %eax
	cmpl	%ecx, %ebp
	ja	.LBB1_53
# BB#49:                                # %if.end.6.i.103
	cmpl	$1, %ebp
	jne	.LBB1_51
# BB#50:                                # %if.then.9.i.106
	testq	%rsi, %rsi
	setne	(%rbx)
	jmp	.LBB1_52
.LBB1_51:                               # %if.else.i.110
	movb	$2, (%rbx)
	incq	%rbx
	addq	$56, %rsi
	movl	$512, %edx              # imm = 0x200
	movq	%rbx, %rdi
	callq	memcpy
.LBB1_52:                               # %if.then.268
	addl	%r14d, %ebp
	movl	%ebp, (%r15)
	xorl	%eax, %eax
.LBB1_53:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gx_ht_write_component, .Lfunc_end1-gx_ht_write_component
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_0:
	.zero	16
	.text
	.globl	gx_ht_read_and_install
	.align	16, 0x90
	.type	gx_ht_read_and_install,@function
gx_ht_read_and_install:                 # @gx_ht_read_and_install
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
	subq	$22024, %rsp            # imm = 0x5608
.Ltmp32:
	.cfi_def_cfa_offset 22080
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
	movq	%r8, 96(%rsp)           # 8-byte Spill
	movl	%ecx, %ebx
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r15
	leaq	128(%rsp), %rdi
	xorl	%esi, %esi
	movl	$160, %edx
	callq	memset
	leaq	288(%rsp), %rdi
	xorl	%esi, %esi
	movl	$24, %edx
	callq	memset
	movq	$0, 312(%rsp)
	leaq	11104(%rsp), %rdi
	movq	%rdi, 328(%rsp)
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, 344(%rsp)
	xorl	%esi, %esi
	movl	$10752, %edx            # imm = 0x2A00
	callq	memset
	movl	$-15, %r13d
	cmpl	$2, %ebx
	jb	.LBB2_72
# BB#1:                                 # %if.end
	movq	%r15, 32(%rsp)          # 8-byte Spill
	movq	%r14, 40(%rsp)          # 8-byte Spill
	movzbl	(%r12), %eax
	movl	%eax, 320(%rsp)
	leaq	2(%r12), %r13
	movzbl	1(%r12), %r15d
	movq	%r15, 48(%rsp)          # 8-byte Spill
	testq	%r15, %r15
	movl	%r15d, 336(%rsp)
	movl	%r15d, 340(%rsp)
	je	.LBB2_54
# BB#2:                                 # %for.body.lr.ph
	movq	%r12, 24(%rsp)          # 8-byte Spill
	addl	$-2, %ebx
	xorl	%ecx, %ecx
	leaq	21864(%rsp), %r12
.LBB2_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_35 Depth 2
                                        #       Child Loop BB2_37 Depth 3
	imulq	$168, %rcx, %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	%ecx, 11264(%rsp,%rax)
	movl	%ebx, %r14d
	movl	$-15, %eax
	cmpl	$7, %ebx
	jb	.LBB2_4
# BB#5:                                 # %do.body.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movzbl	(%r13), %eax
	movw	%ax, 21904(%rsp)
	testb	%al, %al
	js	.LBB2_6
# BB#7:                                 # %if.else.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	leaq	1(%r13), %rbp
	jmp	.LBB2_8
	.align	16, 0x90
.LBB2_6:                                # %if.then.7.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	leaq	21860(%rsp), %rdi
	movq	%r13, %rsi
	callq	enc_u_get_uint
	movq	%rax, %rbp
	movw	21860(%rsp), %ax
	movw	%ax, 21904(%rsp)
.LBB2_8:                                # %do.body.11.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movzbl	(%rbp), %eax
	movw	%ax, 21906(%rsp)
	testb	%al, %al
	js	.LBB2_9
# BB#10:                                # %if.else.21.i
                                        #   in Loop: Header=BB2_3 Depth=1
	incq	%rbp
	jmp	.LBB2_11
	.align	16, 0x90
.LBB2_9:                                # %if.then.16.i
                                        #   in Loop: Header=BB2_3 Depth=1
	leaq	21860(%rsp), %rdi
	movq	%rbp, %rsi
	callq	enc_u_get_uint
	movq	%rax, %rbp
	movw	21860(%rsp), %ax
	movw	%ax, 21906(%rsp)
.LBB2_11:                               # %do.body.26.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movzbl	(%rbp), %eax
	movw	%ax, 21910(%rsp)
	testb	%al, %al
	js	.LBB2_12
# BB#13:                                # %if.else.36.i
                                        #   in Loop: Header=BB2_3 Depth=1
	incq	%rbp
	jmp	.LBB2_14
	.align	16, 0x90
.LBB2_12:                               # %if.then.31.i
                                        #   in Loop: Header=BB2_3 Depth=1
	leaq	21860(%rsp), %rdi
	movq	%rbp, %rsi
	callq	enc_u_get_uint
	movq	%rax, %rbp
	movw	21860(%rsp), %ax
	movw	%ax, 21910(%rsp)
.LBB2_14:                               # %do.body.41.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movzbl	(%rbp), %eax
	movl	%eax, 21920(%rsp)
	testb	%al, %al
	js	.LBB2_15
# BB#16:                                # %if.else.49.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	%ebx, 76(%rsp)          # 4-byte Spill
	incq	%rbp
	jmp	.LBB2_17
	.align	16, 0x90
.LBB2_15:                               # %if.then.45.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	%ebx, 76(%rsp)          # 4-byte Spill
	leaq	21860(%rsp), %rdi
	movq	%rbp, %rsi
	callq	enc_u_get_uint
	movq	%rax, %rbp
	movl	21860(%rsp), %eax
	movl	%eax, 21920(%rsp)
.LBB2_17:                               # %do.body.54.i
                                        #   in Loop: Header=BB2_3 Depth=1
	leaq	(%r14,%r13), %rbx
	movzbl	(%rbp), %eax
	movl	%eax, 21924(%rsp)
	testb	%al, %al
	js	.LBB2_18
# BB#19:                                # %if.else.62.i
                                        #   in Loop: Header=BB2_3 Depth=1
	incq	%rbp
	jmp	.LBB2_20
	.align	16, 0x90
.LBB2_18:                               # %if.then.58.i
                                        #   in Loop: Header=BB2_3 Depth=1
	leaq	21860(%rsp), %rdi
	movq	%rbp, %rsi
	callq	enc_u_get_uint
	movq	%rax, %rbp
	movl	21860(%rsp), %eax
	movl	%eax, 21924(%rsp)
.LBB2_20:                               # %do.end.66.i
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpq	%rbx, %rbp
	jae	.LBB2_21
# BB#22:                                # %if.end.70.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	%r13, 80(%rsp)          # 8-byte Spill
	movzbl	(%rbp), %eax
	leaq	(%rax,%rax,4), %rdx
	leaq	ht_order_procs_table(,%rdx,8), %rdi
	movq	%rdi, 21928(%rsp)
	movq	21920(%rsp), %rcx
	leal	(,%rcx,4), %esi
	movq	%rcx, %r8
	shrq	$32, %r8
	movl	ht_order_procs_table(,%rdx,8), %r14d
	imull	%r8d, %r14d
	movslq	%r14d, %rdx
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	leaq	1(%rbp,%rdx), %rdx
	movq	%rbp, 104(%rsp)         # 8-byte Spill
	movslq	%esi, %rbp
	leaq	1(%rbp,%rdx), %rdx
	cmpq	%rbx, %rdx
	movq	%rbx, %r13
	movq	96(%rsp), %rbx          # 8-byte Reload
	movl	$-15, %eax
	ja	.LBB2_47
# BB#23:                                # %if.end.86.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	21904(%rsp), %r9
	movzwl	%r9w, %esi
	movl	%r9d, %edx
	shrl	$16, %edx
	shrq	$48, %r9
	movq	%rbx, 8(%rsp)
	movq	%rdi, (%rsp)
	movq	%r12, %rdi
	callq	gx_ht_alloc_ht_order
	testl	%eax, %eax
	js	.LBB2_47
# BB#24:                                # %if.end.100.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	104(%rsp), %rbx         # 8-byte Reload
	incq	%rbx
	xorl	%esi, %esi
	movl	$40, %edx
	movq	%r12, %rdi
	callq	memset
	xorl	%esi, %esi
	movl	$32, %edx
	leaq	21976(%rsp), %rdi
	callq	memset
	movq	21944(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	addq	%rbp, %rbx
	movq	21952(%rsp), %rdi
	movq	%rbx, %rsi
	movq	112(%rsp), %r12         # 8-byte Reload
	movq	%r12, %rdx
	callq	memcpy
	addq	%r12, %rbx
	subl	%ebx, %r13d
	je	.LBB2_25
# BB#26:                                # %if.end.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movb	(%rbx), %r12b
	testb	%r12b, %r12b
	je	.LBB2_27
# BB#28:                                # %do.body.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	%rbx, 104(%rsp)         # 8-byte Spill
	movl	$st_transfer_map, %esi
	movl	$.L.str.1, %edx
	movq	96(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, %r15
	movl	$-25, %eax
	testq	%r15, %r15
	je	.LBB2_46
# BB#29:                                # %do.body.8.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	$1, (%r15)
	movq	%rbx, 8(%r15)
	movq	$rc_free_struct_only, 16(%r15)
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	gs_next_ids
	movq	%rax, 48(%r15)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%r15)
	movzbl	%r12b, %eax
	cmpl	$2, %eax
	jne	.LBB2_30
# BB#32:                                # %land.lhs.true.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	decl	%r13d
	cmpl	$512, %r13d             # imm = 0x200
	movq	104(%rsp), %rax         # 8-byte Reload
	jb	.LBB2_43
# BB#33:                                # %if.then.29.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	leaq	1(%rax), %rsi
	movq	%r15, %rdi
	addq	$56, %rdi
	movl	$512, %edx              # imm = 0x200
	movq	%rax, %rbx
	callq	memcpy
	movq	$gs_mapped_transfer, 24(%r15)
	movq	%r15, 21968(%rsp)
	movl	$513, %eax              # imm = 0x201
	jmp	.LBB2_34
	.align	16, 0x90
.LBB2_27:                               # %if.then.3.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	$0, 21968(%rsp)
	movl	$1, %eax
	jmp	.LBB2_34
	.align	16, 0x90
.LBB2_30:                               # %do.body.8.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpl	$1, %eax
	movq	104(%rsp), %rax         # 8-byte Reload
	jne	.LBB2_43
# BB#31:                                # %if.then.22.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	%r15, %rdi
	movq	%rax, %rbx
	callq	gx_set_identity_transfer
	movl	$1, %eax
.LBB2_34:                               # %if.end.116.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	88(%rsp), %rcx          # 8-byte Reload
	leaq	11104(%rsp,%rcx), %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	addq	%rax, %rbx
	movq	%rbx, 104(%rsp)         # 8-byte Spill
	movq	gx_device_halftone_list(%rip), %rcx
	testq	%rcx, %rcx
	movl	$0, %r13d
	je	.LBB2_49
	.align	16, 0x90
.LBB2_35:                               # %for.body.i
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_37 Depth 3
	callq	*%rcx
	movq	%rax, %r15
	movq	(%r15), %rbx
	testq	%rbx, %rbx
	je	.LBB2_42
# BB#36:                                # %while.body.lr.ph.i
                                        #   in Loop: Header=BB2_35 Depth=2
	movq	21944(%rsp), %r12
	movq	21952(%rsp), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	addq	$8, %r15
	.align	16, 0x90
.LBB2_37:                               # %while.body.i
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	20(%rbx), %rax
	shlq	$2, %rax
	cmpq	%rbp, %rax
	jb	.LBB2_41
# BB#38:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB2_37 Depth=3
	movl	16(%rbx), %eax
	imull	12(%rbx), %eax
	imull	40(%rbx), %eax
	cmpl	%r14d, %eax
	jl	.LBB2_41
# BB#39:                                # %land.lhs.true.139.i
                                        #   in Loop: Header=BB2_37 Depth=3
	movq	24(%rbx), %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB2_41
# BB#40:                                # %land.lhs.true.146.i
                                        #   in Loop: Header=BB2_37 Depth=3
	movq	32(%rbx), %rdi
	movq	120(%rsp), %rsi         # 8-byte Reload
	movq	112(%rsp), %rdx         # 8-byte Reload
	callq	memcmp
	testl	%eax, %eax
	je	.LBB2_48
	.align	16, 0x90
.LBB2_41:                               # %while.cond.backedge.i
                                        #   in Loop: Header=BB2_37 Depth=3
	movq	(%r15), %rbx
	addq	$8, %r15
	testq	%rbx, %rbx
	jne	.LBB2_37
.LBB2_42:                               # %for.inc.i
                                        #   in Loop: Header=BB2_35 Depth=2
	movq	gx_device_halftone_list+8(,%r13,8), %rcx
	incq	%r13
	testq	%rcx, %rcx
	jne	.LBB2_35
	jmp	.LBB2_49
	.align	16, 0x90
.LBB2_48:                               # %cleanup.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	$.L.str, %edx
	movq	96(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	120(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rbp)
	movq	32(%rbx), %rax
	movq	%rax, 21952(%rsp)
	movq	21944(%rsp), %rsi
	movl	$.L.str, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	movq	24(%rbx), %rax
	movq	%rax, 21944(%rsp)
.LBB2_49:                               # %gx_ht_read_component.exit
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	$160, %edx
	movq	56(%rsp), %rdi          # 8-byte Reload
	leaq	21864(%rsp), %r12
	movq	%r12, %rsi
	callq	memcpy
	movq	88(%rsp), %rax          # 8-byte Reload
	movl	$0, 11268(%rsp,%rax)
	movq	80(%rsp), %r13          # 8-byte Reload
	movq	104(%rsp), %rax         # 8-byte Reload
	subq	%r13, %rax
	testl	%eax, %eax
	js	.LBB2_50
# BB#51:                                # %for.inc
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	76(%rsp), %ebx          # 4-byte Reload
	subl	%eax, %ebx
	cltq
	addq	%rax, %r13
	movq	64(%rsp), %rcx          # 8-byte Reload
	incq	%rcx
	movq	48(%rsp), %r15          # 8-byte Reload
	cmpq	%r15, %rcx
	jl	.LBB2_3
# BB#52:                                # %for.cond.22.preheader
	testb	%r15b, %r15b
	je	.LBB2_53
# BB#55:                                # %for.body.25.preheader
	movq	%r13, 80(%rsp)          # 8-byte Spill
	leal	-1(%r15), %r14d
	xorl	%ebp, %ebp
	testb	$3, %r15b
	leaq	11104(%rsp), %r12
	je	.LBB2_58
# BB#56:                                # %for.body.25.prol.preheader
	movq	48(%rsp), %r15          # 8-byte Reload
	andl	$3, %r15d
	leaq	352(%rsp), %rbx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB2_57:                               # %for.body.25.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	$168, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	memcpy
	incq	%rbp
	addq	$168, %r12
	addq	$168, %rbx
	cmpl	%ebp, %r15d
	jne	.LBB2_57
.LBB2_58:                               # %for.body.25.preheader.split
	cmpl	$3, %r14d
	jb	.LBB2_61
# BB#59:                                # %for.body.25.preheader.split.split
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r14d
	subl	%ebp, %r14d
	imulq	$168, %rbp, %r15
	leaq	11104(%rsp), %rbx
	leaq	352(%rsp), %rbp
	.align	16, 0x90
.LBB2_60:                               # %for.body.25
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%rbp,%r15), %rdi
	leaq	(%rbx,%r15), %rsi
	movl	$168, %edx
	callq	memcpy
	leaq	168(%rbx,%r15), %rsi
	leaq	168(%rbp,%r15), %rdi
	movl	$168, %edx
	callq	memcpy
	leaq	336(%rbx,%r15), %rsi
	leaq	336(%rbp,%r15), %rdi
	movl	$168, %edx
	callq	memcpy
	leaq	504(%rbx,%r15), %rsi
	leaq	504(%rbp,%r15), %rdi
	movl	$168, %edx
	callq	memcpy
	addq	$672, %rbx              # imm = 0x2A0
	addq	$672, %rbp              # imm = 0x2A0
	addl	$-4, %r14d
	jne	.LBB2_60
.LBB2_61:                               # %for.end.32
	movl	320(%rsp), %edx
	leaq	128(%rsp), %rsi
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	40(%rsp), %rcx          # 8-byte Reload
	callq	gx_imager_dev_ht_install
	movq	48(%rsp), %r15          # 8-byte Reload
	testb	%r15b, %r15b
	je	.LBB2_62
# BB#63:                                # %for.body.38.preheader
	movq	%rax, 104(%rsp)         # 8-byte Spill
	leaq	352(%rsp), %rbx
	movl	%r15d, %r14d
	movq	80(%rsp), %r13          # 8-byte Reload
	movq	96(%rsp), %rbp          # 8-byte Reload
	.align	16, 0x90
.LBB2_64:                               # %for.body.38
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	gx_ht_order_release
	addq	$168, %rbx
	decl	%r14d
	jne	.LBB2_64
# BB#65:
	movq	24(%rsp), %r12          # 8-byte Reload
	movq	104(%rsp), %rax         # 8-byte Reload
	jmp	.LBB2_66
.LBB2_4:
	movq	96(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	jmp	.LBB2_67
.LBB2_21:
	movq	96(%rsp), %rbx          # 8-byte Reload
	movl	$-15, %eax
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	jmp	.LBB2_67
.LBB2_25:
	movq	%r15, 48(%rsp)          # 8-byte Spill
	jmp	.LBB2_45
.LBB2_50:
	movq	48(%rsp), %r15          # 8-byte Reload
	jmp	.LBB2_67
.LBB2_43:                               # %do.end.38.i.i
	decq	(%r15)
	jne	.LBB2_45
# BB#44:                                # %do.end.50.i.i
	movq	8(%r15), %rdi
	movl	$.L.str.1, %edx
	movq	%r15, %rsi
	callq	*16(%r15)
.LBB2_45:                               # %if.then.115.i
	movl	$-15, %eax
	movq	96(%rsp), %rbx          # 8-byte Reload
.LBB2_46:                               # %if.then.115.i
	leaq	21864(%rsp), %rdi
	movl	%eax, %ebp
	xorl	%edx, %edx
	movq	%rbx, %rsi
	callq	gx_ht_order_release
	movl	%ebp, %eax
	movq	48(%rsp), %r15          # 8-byte Reload
.LBB2_47:                               # %gx_ht_read_component.exit.thread
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	jmp	.LBB2_67
.LBB2_53:
	movq	24(%rsp), %r12          # 8-byte Reload
.LBB2_54:                               # %for.end.32.thread
	movl	320(%rsp), %edx
	leaq	128(%rsp), %rsi
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	40(%rsp), %rcx          # 8-byte Reload
	callq	gx_imager_dev_ht_install
.LBB2_66:                               # %if.end.44
	testl	%eax, %eax
	js	.LBB2_67
# BB#71:                                # %cond.false
	subq	%r12, %r13
	jmp	.LBB2_72
.LBB2_67:                               # %for.cond.48.preheader
	movq	%rax, %r14
	testb	%r15b, %r15b
	movq	96(%rsp), %rbp          # 8-byte Reload
	je	.LBB2_70
# BB#68:                                # %for.body.51.preheader
	leaq	11104(%rsp), %rbx
	.align	16, 0x90
.LBB2_69:                               # %for.body.51
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	gx_ht_order_release
	addq	$168, %rbx
	decl	%r15d
	jne	.LBB2_69
.LBB2_70:                               # %cond.true
	movslq	%r14d, %r13
.LBB2_72:                               # %cleanup
	movl	%r13d, %eax
	addq	$22024, %rsp            # imm = 0x5608
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_62:
	movq	24(%rsp), %r12          # 8-byte Reload
	movq	80(%rsp), %r13          # 8-byte Reload
	jmp	.LBB2_66
.Lfunc_end2:
	.size	gx_ht_read_and_install, .Lfunc_end2-gx_ht_read_and_install
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_ht_read_component"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gx_ht_read_tf"
	.size	.L.str.1, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
