	.text
	.file	"gdevdgbr.bc"
	.globl	gx_no_get_bits
	.align	16, 0x90
	.type	gx_no_get_bits,@function
gx_no_get_bits:                         # @gx_no_get_bits
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, %eax
	retq
.Lfunc_end0:
	.size	gx_no_get_bits, .Lfunc_end0-gx_no_get_bits
	.cfi_endproc

	.globl	gx_default_get_bits
	.align	16, 0x90
	.type	gx_default_get_bits,@function
gx_default_get_bits:                    # @gx_default_get_bits
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
	subq	$560, %rsp              # imm = 0x230
.Ltmp3:
	.cfi_def_cfa_offset 592
.Ltmp4:
	.cfi_offset %rbx, -32
.Ltmp5:
	.cfi_offset %r14, -24
.Ltmp6:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movq	1240(%rbx), %r15
	movl	$0, 544(%rsp)
	movl	%esi, 548(%rsp)
	movl	832(%rbx), %eax
	movl	%eax, 552(%rsp)
	incl	%esi
	movl	%esi, 556(%rsp)
	testq	%r14, %r14
	movl	$292618257, %ecx        # imm = 0x11710011
	movl	$290521105, %esi        # imm = 0x11510011
	cmovneq	%rcx, %rsi
	movq	%rsi, 8(%rsp)
	movl	$0, 528(%rsp)
	movzwl	108(%rbx), %ecx
	imull	%eax, %ecx
	addl	$63, %ecx
	sarl	$6, %ecx
	shll	$3, %ecx
	movl	%ecx, 536(%rsp)
	movq	%rdx, 16(%rsp)
	movq	$gx_no_get_bits, 1240(%rbx)
	leaq	544(%rsp), %rsi
	leaq	8(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	*1448(%rbx)
	testq	%r14, %r14
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	16(%rsp), %rcx
	movq	%rcx, (%r14)
.LBB1_2:                                # %if.end
	movq	%r15, 1240(%rbx)
	addq	$560, %rsp              # imm = 0x230
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	gx_default_get_bits, .Lfunc_end1-gx_default_get_bits
	.cfi_endproc

	.globl	gx_get_bits_return_pointer
	.align	16, 0x90
	.type	gx_get_bits_return_pointer,@function
gx_get_bits_return_pointer:             # @gx_get_bits_return_pointer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp10:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp11:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp13:
	.cfi_def_cfa_offset 96
.Ltmp14:
	.cfi_offset %rbx, -56
.Ltmp15:
	.cfi_offset %r12, -48
.Ltmp16:
	.cfi_offset %r13, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movq	%rcx, %r15
	movl	%edx, %ebp
	movq	(%r15), %r14
	movl	$-1, %r13d
	testl	$2097152, %r14d         # imm = 0x200000
	je	.LBB2_28
# BB#1:                                 # %lor.lhs.false
	movl	%esi, 16(%rsp)          # 4-byte Spill
	movq	(%r8), %rax
	andq	%r14, %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	%r15, %rsi
	movq	%r8, %rdx
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movq	%rdi, %r12
	callq	requested_includes_stored
	testl	%eax, %eax
	je	.LBB2_28
# BB#2:                                 # %if.end
	movzwl	108(%r12), %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$1, %esi
	movq	%r12, %rdi
	callq	gx_device_raster
	testl	$1342177280, %r14d      # imm = 0x50000000
	jne	.LBB2_5
# BB#3:                                 # %cond.end
	cmpl	$2, %ebp
	jl	.LBB2_5
# BB#4:                                 # %cond.end
	cmpl	%eax, 528(%r15)
	jne	.LBB2_28
.LBB2_5:                                # %if.then.14
	testl	$67108864, %r14d        # imm = 0x4000000
	movq	32(%rsp), %r8           # 8-byte Reload
	movq	24(%rsp), %r10          # 8-byte Reload
	movl	16(%rsp), %eax          # 4-byte Reload
	jne	.LBB2_9
# BB#6:                                 # %cond.false.18
	xorl	%edx, %edx
	testl	$16777216, %r14d        # imm = 0x1000000
	jne	.LBB2_8
# BB#7:                                 # %cond.false.22
	movl	520(%r15), %edx
.LBB2_8:                                # %cond.end.26
	cmpl	%eax, %edx
	jne	.LBB2_10
.LBB2_9:                                # %if.then.30
	movq	(%rbx), %rcx
	movl	%eax, 520(%r15)
.LBB2_15:                               # %if.end.59
	movq	$-275185665, %rdx       # imm = 0xFFFFFFFFEF98FFFF
	andq	(%r8), %rdx
	testl	%eax, %eax
	movl	$16777216, %esi         # imm = 0x1000000
	movl	$33554432, %eax         # imm = 0x2000000
	cmoveq	%rsi, %rax
	orq	%rdx, %rax
	movq	%rax, %rdx
	orq	$274726912, %rdx        # imm = 0x10600000
	movq	%rdx, (%r15)
	testl	$65536, %r10d           # imm = 0x10000
	jne	.LBB2_16
# BB#17:                                # %if.else.74
	testb	$4, 2(%r8)
	jne	.LBB2_18
# BB#19:                                # %cond.false.84
	orq	$274857984, %rax        # imm = 0x10620000
	movq	%rax, (%r15)
	movl	100(%r12), %edx
	jmp	.LBB2_20
.LBB2_16:                               # %if.then.70
	orq	$274792448, %rax        # imm = 0x10610000
	movq	%rax, (%r15)
	movq	%rcx, 8(%r15)
	xorl	%r13d, %r13d
	jmp	.LBB2_28
.LBB2_10:                               # %if.else
	testl	$8388608, %r14d         # imm = 0x800000
	movl	$8, %ecx
	movl	$64, %esi
	cmovnel	%ecx, %esi
	subl	%edx, %eax
	leal	-1(%rsi), %ecx
	testl	%ecx, %eax
	jne	.LBB2_28
# BB#11:                                # %if.end.39
	movl	%eax, %r13d
	movq	8(%rsp), %r14           # 8-byte Reload
	leal	65535(%r14), %eax
	testl	%r14d, %eax
	je	.LBB2_13
# BB#12:                                # %if.then.43
	movq	%r12, 16(%rsp)          # 8-byte Spill
	movl	%r14d, %edi
	movq	%r8, %r12
	movq	%r10, %rbp
	movq	%rsi, (%rsp)            # 8-byte Spill
	callq	igcd
	movq	%rbp, %r10
	movq	%r12, %r8
	movl	%eax, %ecx
	xorl	%edx, %edx
	movl	%r14d, %eax
	idivl	%ecx
	movl	%eax, %ecx
	movq	(%rsp), %rax            # 8-byte Reload
	imull	%eax, %ecx
	movl	%r13d, %ebp
	movl	%ebp, %eax
	cltd
	idivl	%ecx
	movl	%ebp, %esi
	subl	%edx, %esi
	jmp	.LBB2_14
.LBB2_18:                               # %cond.true.78
	orq	$274989056, %rax        # imm = 0x10640000
	movq	%rax, (%r15)
	movzwl	108(%r12), %edx
.LBB2_20:                               # %cond.end.88
	xorl	%r13d, %r13d
	testl	%edx, %edx
	jle	.LBB2_28
# BB#21:                                # %for.body.lr.ph
	andl	$524288, %r10d          # imm = 0x80000
	leal	-1(%rdx), %eax
	cltq
	movl	%edx, %edx
	xorl	%esi, %esi
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB2_22:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testq	%r10, %r10
	je	.LBB2_24
# BB#23:                                # %lor.lhs.false.94
                                        #   in Loop: Header=BB2_22 Depth=1
	cmpq	$0, 8(%r8,%rsi,8)
	je	.LBB2_25
.LBB2_24:                               # %if.then.99
                                        #   in Loop: Header=BB2_22 Depth=1
	movq	%rcx, 8(%r15,%rsi,8)
.LBB2_25:                               # %if.end.103
                                        #   in Loop: Header=BB2_22 Depth=1
	cmpq	%rax, %rsi
	jge	.LBB2_27
# BB#26:                                # %if.then.107
                                        #   in Loop: Header=BB2_22 Depth=1
	movslq	836(%r12), %rdi
	movq	(%rbx,%rdi,8), %rbp
	subq	(%rbx), %rbp
	leaq	(%rbx,%rdi,8), %rbx
	addq	%rbp, %rcx
.LBB2_27:                               # %for.inc
                                        #   in Loop: Header=BB2_22 Depth=1
	incq	%rsi
	cmpl	%esi, %edx
	jne	.LBB2_22
.LBB2_28:                               # %cleanup.119
	movl	%r13d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_13:                               # %if.else.47
	movq	%r12, 16(%rsp)          # 8-byte Spill
	movl	%r14d, %eax
	negl	%eax
	negl	%esi
	andl	%eax, %esi
	movl	%r13d, %ebp
	andl	%ebp, %esi
.LBB2_14:                               # %cleanup.thread
	subl	%esi, %ebp
	sarl	$3, %esi
	movslq	%esi, %rcx
	addq	(%rbx), %rcx
	movl	%ebp, %eax
	cltd
	idivl	%r14d
	movl	%eax, 520(%r15)
	movq	16(%rsp), %r12          # 8-byte Reload
	jmp	.LBB2_15
.Lfunc_end2:
	.size	gx_get_bits_return_pointer, .Lfunc_end2-gx_get_bits_return_pointer
	.cfi_endproc

	.align	16, 0x90
	.type	requested_includes_stored,@function
requested_includes_stored:              # @requested_includes_stored
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbx, -16
	movq	%rdx, %r10
	movq	(%rsi), %rcx
	movq	(%r10), %rbx
	movq	%rbx, %rdx
	andq	%rcx, %rdx
	xorl	%eax, %eax
	testl	$458752, %edx           # imm = 0x70000
	je	.LBB3_15
# BB#1:                                 # %if.end
	testl	$524288, %ebx           # imm = 0x80000
	jne	.LBB3_3
# BB#2:                                 # %if.end.if.end.27_crit_edge
	movl	%edx, %r9d
	andl	$1, %r9d
.LBB3_13:                               # %if.end.27
	movl	$1, %eax
	testq	%r9, %r9
	jne	.LBB3_15
# BB#14:                                # %if.end.31
	testb	$14, %dl
	sete	%al
	testb	$112, %dl
	sete	%cl
	orb	%al, %cl
	testb	$63, %dh
	sete	%al
	orb	%cl, %al
	movzbl	%al, %eax
	xorl	$1, %eax
	jmp	.LBB3_15
.LBB3_3:                                # %if.then.6
	testl	$262144, %ebx           # imm = 0x40000
	jne	.LBB3_4
# BB#5:                                 # %cond.false
	movl	100(%rdi), %r8d
	jmp	.LBB3_6
.LBB3_4:                                # %cond.true
	movzwl	108(%rdi), %r8d
.LBB3_6:                                # %cond.end
	andl	$524288, %ecx           # imm = 0x80000
	movq	%rdx, %r9
	andq	$1, %r9
	je	.LBB3_15
# BB#7:                                 # %cond.end
	testq	%rcx, %rcx
	je	.LBB3_15
# BB#8:                                 # %for.cond.preheader
	testl	%r8d, %r8d
	jle	.LBB3_13
# BB#9:                                 # %for.body.lr.ph
	movslq	%r8d, %rcx
	xorl	%edi, %edi
	.align	16, 0x90
.LBB3_10:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, 8(%rsi,%rdi,8)
	je	.LBB3_12
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_10 Depth=1
	xorl	%eax, %eax
	cmpq	$0, 8(%r10,%rdi,8)
	je	.LBB3_15
.LBB3_12:                               # %for.inc
                                        #   in Loop: Header=BB3_10 Depth=1
	incq	%rdi
	cmpq	%rcx, %rdi
	jl	.LBB3_10
	jmp	.LBB3_13
.LBB3_15:                               # %cleanup.43
	popq	%rbx
	retq
.Lfunc_end3:
	.size	requested_includes_stored, .Lfunc_end3-requested_includes_stored
	.cfi_endproc

	.globl	gx_get_bits_copy
	.align	16, 0x90
	.type	gx_get_bits_copy,@function
gx_get_bits_copy:                       # @gx_get_bits_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp25:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp26:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 56
	subq	$3208, %rsp             # imm = 0xC88
.Ltmp28:
	.cfi_def_cfa_offset 3264
.Ltmp29:
	.cfi_offset %rbx, -56
.Ltmp30:
	.cfi_offset %r12, -48
.Ltmp31:
	.cfi_offset %r13, -40
.Ltmp32:
	.cfi_offset %r14, -32
.Ltmp33:
	.cfi_offset %r15, -24
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, 264(%rsp)         # 8-byte Spill
	movl	%edx, %ebx
	movl	%esi, 240(%rsp)         # 4-byte Spill
	movq	(%r14), %rbp
	movq	(%r9), %rax
	movq	%rax, 232(%rsp)         # 8-byte Spill
	xorl	%r12d, %r12d
	testl	$16777216, %ebp         # imm = 0x1000000
	jne	.LBB4_2
# BB#1:                                 # %cond.false
	movl	520(%r14), %r12d
.LBB4_2:                                # %cond.end
	movzwl	108(%rdi), %r15d
	movq	%rdi, 224(%rsp)         # 8-byte Spill
	movq	%r14, %rsi
	movq	%r9, %rdx
	movq	%r9, 248(%rsp)          # 8-byte Spill
	callq	requested_includes_stored
	movq	%rbp, %rcx
	notq	%rcx
	movl	%ecx, %edx
	andl	$1048576, %edx          # imm = 0x100000
	movl	%ebp, %esi
	andl	$50331648, %esi         # imm = 0x3000000
	testl	$805306368, %ebp        # imm = 0x30000000
	movq	%rbp, %rdi
	movl	$-15, %r13d
	je	.LBB4_218
# BB#3:                                 # %cond.end
	testq	%rdx, %rdx
	movq	%r12, %r10
	jne	.LBB4_218
# BB#4:                                 # %cond.end
	testq	%rsi, %rsi
	je	.LBB4_218
# BB#5:                                 # %if.end
	movq	%rbx, 256(%rsp)         # 8-byte Spill
	movl	3272(%rsp), %ebx
	movq	3264(%rsp), %rdx
	movq	%rdi, %rsi
	testl	$65536, %esi            # imm = 0x10000
	jne	.LBB4_6
# BB#205:                               # %if.else.105
	movq	232(%rsp), %rdi         # 8-byte Reload
	movl	%edi, %eax
	andl	$65536, %eax            # imm = 0x10000
	testl	$4849664, %ecx          # imm = 0x4A0000
	jne	.LBB4_218
# BB#206:                               # %if.else.105
	testq	%rax, %rax
	je	.LBB4_218
# BB#207:                               # %land.lhs.true.112
	andl	%esi, %edi
	testb	$1, %dil
	je	.LBB4_218
# BB#208:                               # %if.then.116
	movq	%rsi, %r9
	movq	%rdx, %rdi
	movq	224(%rsp), %rax         # 8-byte Reload
	movslq	100(%rax), %rbp
	xorl	%edx, %edx
	movl	%r15d, %eax
	idivl	%ebp
	testq	%rbp, %rbp
	movl	$-1, %edx
	movq	264(%rsp), %r8          # 8-byte Reload
	movq	256(%rsp), %rcx         # 8-byte Reload
	jle	.LBB4_214
# BB#209:                               # %for.body.121.lr.ph
	movl	$-1, %edx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB4_210:                              # %for.body.121
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, 8(%r14,%rsi,8)
	je	.LBB4_213
# BB#211:                               # %if.then.126
                                        #   in Loop: Header=BB4_210 Depth=1
	movl	$-15, %r13d
	testl	%edx, %edx
	jns	.LBB4_218
# BB#212:                               # %if.then.126.for.inc.132_crit_edge
                                        #   in Loop: Header=BB4_210 Depth=1
	movl	%esi, %edx
.LBB4_213:                              # %for.inc.132
                                        #   in Loop: Header=BB4_210 Depth=1
	incq	%rsi
	cmpq	%rbp, %rsi
	jl	.LBB4_210
.LBB4_214:                              # %for.end.133
	movq	%rdi, 272(%rsp)
	movl	%ebx, 280(%rsp)
	movl	%r15d, 284(%rsp)
	movl	240(%rsp), %esi         # 4-byte Reload
	movl	%esi, 288(%rsp)
	movslq	%edx, %rsi
	movq	8(%r14,%rsi,8), %rsi
	movq	%rsi, 3072(%rsp)
	testl	$268435456, %r9d        # imm = 0x10000000
	jne	.LBB4_215
# BB#216:                               # %cond.false.150
	movl	528(%r14), %esi
	jmp	.LBB4_217
.LBB4_6:                                # %if.then.14
	movq	%r14, %r11
	movq	8(%r11), %rdi
	movq	256(%rsp), %rcx         # 8-byte Reload
	leal	(%r10,%rcx), %r8d
	movl	%r15d, %r14d
	imull	%r8d, %r14d
	testl	$4194304, %esi          # imm = 0x400000
	movq	%rsi, %rcx
	movq	%r15, %rsi
	jne	.LBB4_7
# BB#8:                                 # %cond.false.21
	addl	$7, %r14d
	sarl	$3, %r14d
	jmp	.LBB4_9
.LBB4_7:                                # %cond.true.19
	addl	$63, %r14d
	sarl	$6, %r14d
	shll	$3, %r14d
.LBB4_9:                                # %cond.end.24
	movq	264(%rsp), %r9          # 8-byte Reload
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	testl	$268435456, %ecx        # imm = 0x10000000
	movl	%r14d, %r12d
	jne	.LBB4_11
# BB#10:                                # %cond.false.29
	movl	528(%r11), %r12d
.LBB4_11:                               # %cond.end.31
	movq	%rsi, 192(%rsp)         # 8-byte Spill
	movl	%esi, %r15d
	imull	240(%rsp), %r15d        # 4-byte Folded Reload
	movl	%esi, %ecx
	imull	%r10d, %ecx
	testl	%eax, %eax
	je	.LBB4_14
# BB#12:                                # %cond.end.31
	movl	%r15d, %esi
	subl	%ecx, %esi
	andl	$7, %esi
	jne	.LBB4_14
# BB#13:                                # %if.then.37
	movq	256(%rsp), %rax         # 8-byte Reload
	movq	192(%rsp), %rsi         # 8-byte Reload
	imull	%eax, %esi
	sarl	$3, %ecx
	movslq	%ecx, %rax
	addq	%rax, %rdi
	movl	%r15d, %eax
	sarl	$3, %eax
	cltq
	addq	%rax, %rdx
	leal	7(%rsi,%r15), %r8d
	sarl	$3, %r8d
	subl	%eax, %r8d
	movl	%r12d, %esi
	movl	%ebx, %ecx
	movq	%r11, %rbp
	movq	%r10, %rbx
	callq	bytes_copy_rectangle
	movq	%rbx, %r10
	movq	%rbp, %r11
	xorl	%r13d, %r13d
	jmp	.LBB4_204
.LBB4_14:                               # %if.else
	testl	%eax, %eax
	je	.LBB4_20
# BB#15:                                # %if.then.49
	movl	%r12d, 180(%rsp)        # 4-byte Spill
	movl	%r14d, 164(%rsp)        # 4-byte Spill
	movq	%r10, 128(%rsp)         # 8-byte Spill
	movq	%r11, 136(%rsp)         # 8-byte Spill
	leaq	2016(%rsp), %rax
	movq	%rax, 2848(%rsp)
	testl	%r9d, %r9d
	movq	%rdx, %r12
	movq	%rdi, %r14
	movq	%r15, %r13
	movq	192(%rsp), %rbp         # 8-byte Reload
	movq	%rcx, %r15
	jle	.LBB4_18
# BB#16:                                # %for.body.lr.ph
	movq	256(%rsp), %rax         # 8-byte Reload
	imull	%eax, %ebp
	movl	180(%rsp), %eax         # 4-byte Reload
	movq	%rax, 256(%rsp)         # 8-byte Spill
	movl	%ebx, %eax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	incl	%r9d
	.align	16, 0x90
.LBB4_17:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r9, 264(%rsp)          # 8-byte Spill
	movl	%r14d, %eax
	andl	$7, %eax
	movq	%r14, %rcx
	subq	%rax, %rcx
	movq	%rcx, 2016(%rsp)
	leal	(%r15,%rax,8), %r9d
	leal	(%r9,%rbp), %eax
	movl	%eax, 1104(%rsp)
	movl	$1, 1108(%rsp)
	movl	%ebp, 8(%rsp)
	movq	$1, 32(%rsp)
	movq	$0, 24(%rsp)
	movl	$1, 16(%rsp)
	movl	$0, (%rsp)
	xorl	%r8d, %r8d
	leaq	272(%rsp), %rdi
	movq	%r12, %rsi
	movl	%r13d, %edx
	movl	%ebx, %ecx
	callq	*mem_mono_device+1216(%rip)
	movq	264(%rsp), %r9          # 8-byte Reload
	addq	256(%rsp), %r14         # 8-byte Folded Reload
	addq	248(%rsp), %r12         # 8-byte Folded Reload
	decl	%r9d
	cmpl	$1, %r9d
	jg	.LBB4_17
.LBB4_18:                               # %for.end
	xorl	%r13d, %r13d
	movq	136(%rsp), %r11         # 8-byte Reload
	movq	128(%rsp), %r10         # 8-byte Reload
	jmp	.LBB4_203
.LBB4_20:                               # %if.else.68
	movl	%r14d, 164(%rsp)        # 4-byte Spill
	movq	%r9, 264(%rsp)          # 8-byte Spill
	movq	232(%rsp), %rsi         # 8-byte Reload
	movl	%esi, %eax
	notl	%eax
	movq	216(%rsp), %rbp         # 8-byte Reload
	andl	%ebp, %eax
	testb	$1, %al
	je	.LBB4_126
# BB#21:                                # %if.then.73
	movq	%rbp, %r14
	movq	%rcx, %r8
	movl	%r12d, 180(%rsp)        # 4-byte Spill
	movq	%rdi, %rbp
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	movq	%r10, 128(%rsp)         # 8-byte Spill
	movl	$3, %edi
	testb	$4, %sil
	movq	%rsi, %rcx
	jne	.LBB4_24
# BB#22:                                # %cond.false.i
	movl	$4, %edi
	testb	$8, %cl
	jne	.LBB4_24
# BB#23:                                # %cond.false.6.i
	movl	%ecx, %eax
	andl	$2, %eax
	decl	%eax
	movq	%rax, %rdi
.LBB4_24:                               # %cond.end.11.i
	testb	$96, %cl
	setne	%al
	movq	%rcx, %rdx
	shrq	$8, %rdx
	andl	$15, %edx
	shrq	$12, %rcx
	andl	$3, %ecx
	movsbq	.L.str.2(%rcx), %rcx
	orq	%rdx, %rcx
	movl	$1, %r9d
	movq	%rcx, %rsi
	shll	%cl, %r9d
	andq	$-15, %r14
	movq	%r14, (%r11)
	movq	%r11, 136(%rsp)         # 8-byte Spill
	xorl	%r13d, %r13d
	movq	264(%rsp), %rcx         # 8-byte Reload
	testl	%ecx, %ecx
	jle	.LBB4_125
# BB#25:                                # %for.body.lr.ph.i
	movq	%r8, %rcx
	movl	%ecx, %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rbp
	movzbl	%al, %eax
	movq	%rdi, 200(%rsp)         # 8-byte Spill
	leal	(%rax,%rdi), %edx
	imull	240(%rsp), %edx         # 4-byte Folded Reload
	movq	%rsi, 232(%rsp)         # 8-byte Spill
	imull	%esi, %edx
	addl	$65535, %r9d            # imm = 0xFFFF
	movl	%r9d, 168(%rsp)         # 4-byte Spill
	movl	%edx, %eax
	sarl	$3, %eax
	cltq
	addq	%rax, 120(%rsp)         # 8-byte Folded Spill
	andl	$7, %edx
	movl	%edx, 76(%rsp)          # 4-byte Spill
	andl	$7, %ecx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movl	$65280, %eax            # imm = 0xFF00
	shrl	%cl, %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	movl	180(%rsp), %eax         # 4-byte Reload
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	%ebx, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	192(%rsp), %rax         # 8-byte Reload
	shrl	$2, %eax
	movl	%eax, 116(%rsp)         # 4-byte Spill
	movl	%esi, %eax
	sarl	$2, %eax
	movl	%eax, 208(%rsp)         # 4-byte Spill
	movl	$8, %eax
	subl	%esi, %eax
	movl	%eax, 152(%rsp)         # 4-byte Spill
	movl	%esi, %eax
	orl	$1, %eax
	movl	%eax, 148(%rsp)         # 4-byte Spill
	movzwl	%r9w, %eax
	movq	%rax, 216(%rsp)         # 8-byte Spill
	movslq	%edi, %rax
	movq	%rax, 240(%rsp)         # 8-byte Spill
	leal	-1(%rax), %eax
	incq	%rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movabsq	$8589934584, %rcx       # imm = 0x1FFFFFFF8
	andq	%rax, %rcx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
.LBB4_26:                               # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_33 Depth 2
                                        #       Child Loop BB4_49 Depth 3
                                        #       Child Loop BB4_78 Depth 3
                                        #       Child Loop BB4_82 Depth 3
                                        #       Child Loop BB4_98 Depth 3
                                        #       Child Loop BB4_102 Depth 3
	movq	80(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movl	$0, %edx
	movl	$0, %ecx
	je	.LBB4_28
# BB#27:                                # %cond.true.38.i
                                        #   in Loop: Header=BB4_26 Depth=1
	movzbl	(%rbp), %ecx
	andl	52(%rsp), %ecx          # 4-byte Folded Reload
	movl	%eax, %edx
.LBB4_28:                               # %for.cond.48.preheader.i
                                        #   in Loop: Header=BB4_26 Depth=1
	movl	%edx, 112(%rsp)         # 4-byte Spill
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	xorl	%r12d, %r12d
	movq	256(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movq	%rbp, 184(%rsp)         # 8-byte Spill
	movl	76(%rsp), %r14d         # 4-byte Reload
	movq	120(%rsp), %r15         # 8-byte Reload
	movq	224(%rsp), %rbx         # 8-byte Reload
	jg	.LBB4_33
	jmp	.LBB4_29
.LBB4_108:                              # %if.else.325.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movl	$8, %ecx
	subl	%edx, %ecx
	movl	%edx, 112(%rsp)         # 4-byte Spill
	shlq	%cl, %rax
	movq	96(%rsp), %rcx          # 8-byte Reload
	orb	%cl, %al
	movb	$1, %cl
	movq	%rax, 96(%rsp)          # 8-byte Spill
	jmp	.LBB4_124
.LBB4_114:                              # %if.then.350.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	%rax, %rcx
	shrq	$4, %rcx
	movq	184(%rsp), %rsi         # 8-byte Reload
	movb	%cl, (%rsi)
	incq	%rsi
	movq	%rsi, 184(%rsp)         # 8-byte Spill
.LBB4_110:                              # %if.then.336.i
                                        #   in Loop: Header=BB4_33 Depth=2
	shlq	$4, %rax
	movb	$1, %cl
	movl	%edx, 112(%rsp)         # 4-byte Spill
	movq	%rax, 96(%rsp)          # 8-byte Spill
	jmp	.LBB4_124
	.align	16, 0x90
.LBB4_33:                               # %for.body.51.i
                                        #   Parent Loop BB4_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_49 Depth 3
                                        #       Child Loop BB4_78 Depth 3
                                        #       Child Loop BB4_82 Depth 3
                                        #       Child Loop BB4_98 Depth 3
                                        #       Child Loop BB4_102 Depth 3
	movq	%rbx, %rdi
	callq	*1536(%rbx)
	movq	%rax, %r10
	movq	248(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %r11
	testb	$32, %r11b
	jne	.LBB4_35
# BB#34:                                #   in Loop: Header=BB4_33 Depth=2
	movl	168(%rsp), %eax         # 4-byte Reload
	movw	%ax, %r8w
	xorl	%r9d, %r9d
	movl	208(%rsp), %esi         # 4-byte Reload
	movq	216(%rsp), %r13         # 8-byte Reload
	jmp	.LBB4_48
	.align	16, 0x90
.LBB4_35:                               # %do.body.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movl	208(%rsp), %esi         # 4-byte Reload
	movl	%esi, %eax
	cmpl	$4, %esi
	jbe	.LBB4_37
# BB#36:                                #   in Loop: Header=BB4_33 Depth=2
	xorl	%ecx, %ecx
	jmp	.LBB4_124
.LBB4_37:                               # %do.body.i
                                        #   in Loop: Header=BB4_33 Depth=2
	jmpq	*.LJTI4_0(,%rax,8)
.LBB4_38:                               # %sw.bb.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movzbl	(%r15), %eax
	movl	152(%rsp), %ecx         # 4-byte Reload
	subl	%r14d, %ecx
	shrl	%cl, %eax
	andl	148(%rsp), %eax         # 4-byte Folded Reload
	jmp	.LBB4_46
.LBB4_39:                               # %sw.bb.63.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movzbl	(%r15), %eax
	movl	$4, %ecx
	subl	%r14d, %ecx
	shrl	%cl, %eax
	andl	$15, %eax
	jmp	.LBB4_46
.LBB4_40:                               # %sw.bb.69.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movzbl	(%r15), %eax
	jmp	.LBB4_46
.LBB4_41:                               # %sw.bb.71.i
                                        #   in Loop: Header=BB4_33 Depth=2
	testl	%r14d, %r14d
	movzbl	(%r15), %eax
	movzbl	1(%r15), %ecx
	je	.LBB4_43
# BB#42:                                # %cond.true.73.i
                                        #   in Loop: Header=BB4_33 Depth=2
	andl	$15, %eax
	shll	$8, %eax
	jmp	.LBB4_44
.LBB4_45:                               # %sw.bb.90.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movzbl	(%r15), %ecx
	shlq	$8, %rcx
	movzbl	1(%r15), %eax
	orq	%rcx, %rax
.LBB4_46:                               # %do.body.97.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	216(%rsp), %r13         # 8-byte Reload
	jmp	.LBB4_47
.LBB4_43:                               # %cond.false.80.i
                                        #   in Loop: Header=BB4_33 Depth=2
	shll	$4, %eax
	shrl	$4, %ecx
.LBB4_44:                               # %cond.end.87.i
                                        #   in Loop: Header=BB4_33 Depth=2
	orl	%ecx, %eax
	movq	216(%rsp), %r13         # 8-byte Reload
	movl	%eax, %eax
.LBB4_47:                               # %do.body.97.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	232(%rsp), %rcx         # 8-byte Reload
	addl	%ecx, %r14d
	movl	%r14d, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r15
	andl	$7, %r14d
	movzwl	%ax, %eax
	imulq	$65535, %rax, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%r13
	movq	%rax, %r8
	movl	$1, %r9d
.LBB4_48:                               # %if.end.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movl	%r14d, %ecx
	negl	%ecx
	movq	200(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movl	$0, %edi
	jle	.LBB4_61
.LBB4_49:                               # %for.body.112.i
                                        #   Parent Loop BB4_26 Depth=1
                                        #     Parent Loop BB4_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%esi, %eax
	cmpl	$4, %esi
	ja	.LBB4_50
# BB#51:                                # %for.body.112.i
                                        #   in Loop: Header=BB4_49 Depth=3
	jmpq	*.LJTI4_1(,%rax,8)
.LBB4_52:                               # %sw.bb.115.i
                                        #   in Loop: Header=BB4_49 Depth=3
	movzbl	(%r15), %eax
	addl	152(%rsp), %ecx         # 4-byte Folded Reload
	shrl	%cl, %eax
	andl	148(%rsp), %eax         # 4-byte Folded Reload
	jmp	.LBB4_60
.LBB4_53:                               # %sw.bb.123.i
                                        #   in Loop: Header=BB4_49 Depth=3
	movzbl	(%r15), %eax
	movl	$4, %ecx
	subl	%r14d, %ecx
	shrl	%cl, %eax
	andl	$15, %eax
	jmp	.LBB4_60
.LBB4_54:                               # %sw.bb.129.i
                                        #   in Loop: Header=BB4_49 Depth=3
	movzbl	(%r15), %eax
	jmp	.LBB4_60
.LBB4_55:                               # %sw.bb.131.i
                                        #   in Loop: Header=BB4_49 Depth=3
	testl	%r14d, %r14d
	movzbl	(%r15), %eax
	movzbl	1(%r15), %ecx
	je	.LBB4_57
# BB#56:                                # %cond.true.133.i
                                        #   in Loop: Header=BB4_49 Depth=3
	andl	$15, %eax
	shll	$8, %eax
	jmp	.LBB4_58
.LBB4_59:                               # %sw.bb.150.i
                                        #   in Loop: Header=BB4_49 Depth=3
	movzbl	(%r15), %ecx
	shlq	$8, %rcx
	movzbl	1(%r15), %eax
	orq	%rcx, %rax
	jmp	.LBB4_60
.LBB4_57:                               # %cond.false.140.i
                                        #   in Loop: Header=BB4_49 Depth=3
	shll	$4, %eax
	shrl	$4, %ecx
.LBB4_58:                               # %cond.end.147.i
                                        #   in Loop: Header=BB4_49 Depth=3
	orl	%ecx, %eax
	movl	%eax, %eax
	.align	16, 0x90
.LBB4_60:                               # %for.inc.i
                                        #   in Loop: Header=BB4_49 Depth=3
	movq	232(%rsp), %rcx         # 8-byte Reload
	addl	%ecx, %r14d
	movl	%r14d, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r15
	andl	$7, %r14d
	movzwl	%ax, %eax
	imulq	$32760, %rax, %rax      # imm = 0x7FF8
	xorl	%edx, %edx
	divq	%r13
	movw	%ax, 3200(%rsp,%rdi,2)
	incq	%rdi
	movl	%r14d, %ecx
	negl	%ecx
	cmpq	240(%rsp), %rdi         # 8-byte Folded Reload
	jl	.LBB4_49
.LBB4_61:                               # %for.end.i
                                        #   in Loop: Header=BB4_33 Depth=2
	testb	$64, %r11b
	jne	.LBB4_62
# BB#74:                                # %if.end.240.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	%r13, 216(%rsp)         # 8-byte Spill
	testl	%r9d, %r9d
	je	.LBB4_87
# BB#75:                                #   in Loop: Header=BB4_33 Depth=2
	movq	%rbx, %r13
	movq	200(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB4_76
.LBB4_62:                               # %do.body.179.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movl	%esi, %eax
	cmpl	$4, %esi
	jbe	.LBB4_63
	.align	16, 0x90
.LBB4_50:                               #   in Loop: Header=BB4_33 Depth=2
	movq	%r13, 216(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	jmp	.LBB4_124
.LBB4_63:                               # %do.body.179.i
                                        #   in Loop: Header=BB4_33 Depth=2
	jmpq	*.LJTI4_2(,%rax,8)
.LBB4_64:                               # %sw.bb.181.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	%r13, 216(%rsp)         # 8-byte Spill
	movl	%esi, 208(%rsp)         # 4-byte Spill
	movzbl	(%r15), %eax
	addl	152(%rsp), %ecx         # 4-byte Folded Reload
	shrl	%cl, %eax
	andl	148(%rsp), %eax         # 4-byte Folded Reload
	jmp	.LBB4_72
.LBB4_87:                               # %if.else.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	200(%rsp), %rax         # 8-byte Reload
	cmpl	$4, %eax
	movq	%rbx, %r13
	je	.LBB4_93
# BB#88:                                # %if.else.i
                                        #   in Loop: Header=BB4_33 Depth=2
	cmpl	$3, %eax
	jne	.LBB4_89
# BB#92:                                # %sw.bb.276.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movswl	3204(%rsp), %r8d
	movswl	3202(%rsp), %ecx
	movswl	3200(%rsp), %edx
	xorl	%esi, %esi
	movq	%r13, %rdi
	leaq	272(%rsp), %r9
	callq	*8(%r10)
	jmp	.LBB4_94
.LBB4_93:                               # %sw.bb.281.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movswl	3206(%rsp), %r8d
	movswl	3204(%rsp), %ecx
	movswl	3202(%rsp), %edx
	movswl	3200(%rsp), %esi
	movq	%r13, %rdi
	leaq	272(%rsp), %r9
	callq	*16(%r10)
	jmp	.LBB4_94
.LBB4_89:                               # %if.else.i
                                        #   in Loop: Header=BB4_33 Depth=2
	cmpl	$1, %eax
	jne	.LBB4_90
# BB#91:                                # %sw.bb.274.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movswl	3200(%rsp), %esi
	movq	%r13, %rdi
	leaq	272(%rsp), %rdx
	callq	*(%r10)
.LBB4_94:                               # %for.cond.289.preheader.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movslq	100(%r13), %rax
	testq	%rax, %rax
	jle	.LBB4_103
# BB#95:                                # %for.body.293.lr.ph.i
                                        #   in Loop: Header=BB4_33 Depth=2
	testl	%eax, %eax
	movl	$0, %edx
	je	.LBB4_101
# BB#96:                                # %overflow.checked
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	%rax, %rcx
	andq	$-8, %rcx
	movl	$0, %edx
	je	.LBB4_100
# BB#97:                                # %vector.body.preheader
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	%rax, %rdx
	andq	$-8, %rdx
	leaq	3080(%rsp), %rsi
	leaq	280(%rsp), %rdi
	.align	16, 0x90
.LBB4_98:                               # %vector.body
                                        #   Parent Loop BB4_26 Depth=1
                                        #     Parent Loop BB4_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-8(%rdi), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movq	(%rdi), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movdqa	%xmm0, %xmm2
	paddd	%xmm2, %xmm2
	movdqa	%xmm1, %xmm3
	paddd	%xmm3, %xmm3
	psrld	$11, %xmm0
	psrld	$11, %xmm1
	paddw	%xmm2, %xmm0
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -8(%rsi)
	paddw	%xmm3, %xmm1
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rsi)
	addq	$16, %rdi
	addq	$16, %rsi
	addq	$-8, %rdx
	jne	.LBB4_98
# BB#99:                                #   in Loop: Header=BB4_33 Depth=2
	movq	%rcx, %rdx
.LBB4_100:                              # %middle.block
                                        #   in Loop: Header=BB4_33 Depth=2
	cmpq	%rdx, %rax
	je	.LBB4_103
.LBB4_101:                              # %for.body.293.i.preheader
                                        #   in Loop: Header=BB4_33 Depth=2
	subq	%rdx, %rax
	leaq	3072(%rsp,%rdx,2), %rcx
	leaq	272(%rsp,%rdx,2), %rdx
	.align	16, 0x90
.LBB4_102:                              # %for.body.293.i
                                        #   Parent Loop BB4_26 Depth=1
                                        #     Parent Loop BB4_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movswl	(%rdx), %esi
	movl	%esi, %edi
	shrl	$11, %edi
	leal	(%rdi,%rsi,2), %esi
	movw	%si, (%rcx)
	addq	$2, %rcx
	addq	$2, %rdx
	decq	%rax
	jne	.LBB4_102
.LBB4_103:                              # %for.end.308.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	%r13, %rdi
	leaq	3072(%rsp), %rsi
	callq	*1552(%r13)
	jmp	.LBB4_104
.LBB4_65:                               # %sw.bb.189.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	%r13, 216(%rsp)         # 8-byte Spill
	movl	%esi, 208(%rsp)         # 4-byte Spill
	movzbl	(%r15), %eax
	movl	$4, %ecx
	subl	%r14d, %ecx
	shrl	%cl, %eax
	andl	$15, %eax
	jmp	.LBB4_72
.LBB4_66:                               # %sw.bb.195.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	%r13, 216(%rsp)         # 8-byte Spill
	movl	%esi, 208(%rsp)         # 4-byte Spill
	movzbl	(%r15), %eax
	jmp	.LBB4_72
.LBB4_67:                               # %sw.bb.197.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	%r13, 216(%rsp)         # 8-byte Spill
	movl	%esi, 208(%rsp)         # 4-byte Spill
	testl	%r14d, %r14d
	movzbl	(%r15), %eax
	movzbl	1(%r15), %ecx
	je	.LBB4_69
# BB#68:                                # %cond.true.199.i
                                        #   in Loop: Header=BB4_33 Depth=2
	andl	$15, %eax
	shll	$8, %eax
	jmp	.LBB4_70
.LBB4_71:                               # %sw.bb.216.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	%r13, 216(%rsp)         # 8-byte Spill
	movl	%esi, 208(%rsp)         # 4-byte Spill
	movzbl	(%r15), %ecx
	shlq	$8, %rcx
	movzbl	1(%r15), %eax
	orq	%rcx, %rax
.LBB4_72:                               # %if.end.240.thread.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	%rbx, %r13
	jmp	.LBB4_73
.LBB4_90:                               #   in Loop: Header=BB4_33 Depth=2
	movq	%r13, %rbx
	xorl	%ecx, %ecx
	jmp	.LBB4_124
.LBB4_69:                               # %cond.false.206.i
                                        #   in Loop: Header=BB4_33 Depth=2
	shll	$4, %eax
	shrl	$4, %ecx
.LBB4_70:                               # %cond.end.213.i
                                        #   in Loop: Header=BB4_33 Depth=2
	orl	%ecx, %eax
	movq	%rbx, %r13
	movl	%eax, %eax
.LBB4_73:                               # %if.end.240.thread.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	200(%rsp), %rbx         # 8-byte Reload
	movq	232(%rsp), %rcx         # 8-byte Reload
	addl	%ecx, %r14d
	movl	%r14d, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r15
	andl	$7, %r14d
	movzwl	%ax, %eax
	imulq	$65535, %rax, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	216(%rsp)               # 8-byte Folded Reload
	movq	%rax, %r8
.LBB4_76:                               # %for.cond.243.preheader.i
                                        #   in Loop: Header=BB4_33 Depth=2
	testl	%ebx, %ebx
	jle	.LBB4_83
# BB#77:                                # %overflow.checked210
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	104(%rsp), %rax         # 8-byte Reload
	testq	%rax, %rax
	leaq	3080(%rsp), %rcx
	leaq	3208(%rsp), %rdx
	movl	$0, %esi
	je	.LBB4_80
	.align	16, 0x90
.LBB4_78:                               # %vector.body206
                                        #   Parent Loop BB4_26 Depth=1
                                        #     Parent Loop BB4_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-8(%rdx), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movq	(%rdx), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movdqa	%xmm0, %xmm2
	paddd	%xmm2, %xmm2
	movdqa	%xmm1, %xmm3
	paddd	%xmm3, %xmm3
	psrld	$11, %xmm0
	psrld	$11, %xmm1
	paddw	%xmm2, %xmm0
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -8(%rcx)
	paddw	%xmm3, %xmm1
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rcx)
	addq	$16, %rdx
	addq	$16, %rcx
	addq	$-8, %rax
	jne	.LBB4_78
# BB#79:                                #   in Loop: Header=BB4_33 Depth=2
	movq	104(%rsp), %rsi         # 8-byte Reload
.LBB4_80:                               # %middle.block207
                                        #   in Loop: Header=BB4_33 Depth=2
	cmpq	%rsi, 88(%rsp)          # 8-byte Folded Reload
	je	.LBB4_83
# BB#81:                                # %for.body.246.i.preheader
                                        #   in Loop: Header=BB4_33 Depth=2
	movl	%ebx, %eax
	subl	%esi, %eax
	leaq	3072(%rsp,%rsi,2), %rcx
	leaq	3200(%rsp,%rsi,2), %rdx
	.align	16, 0x90
.LBB4_82:                               # %for.body.246.i
                                        #   Parent Loop BB4_26 Depth=1
                                        #     Parent Loop BB4_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movswl	(%rdx), %esi
	movl	%esi, %edi
	shrl	$11, %edi
	leal	(%rdi,%rsi,2), %esi
	movw	%si, (%rcx)
	addq	$2, %rcx
	addq	$2, %rdx
	decl	%eax
	jne	.LBB4_82
.LBB4_83:                               # %for.end.261.i
                                        #   in Loop: Header=BB4_33 Depth=2
	cmpl	$1, %ebx
	jne	.LBB4_84
# BB#85:                                # %if.then.264.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movw	3072(%rsp), %ax
	movw	%ax, 3074(%rsp)
	movw	%ax, 3076(%rsp)
	movw	%ax, %dx
	movw	%ax, %cx
	jmp	.LBB4_86
.LBB4_84:                               # %for.end.261.if.end.268_crit_edge.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	3072(%rsp), %rcx
	movl	%ecx, %edx
	shrl	$16, %edx
	movq	%rcx, %rax
	shrq	$32, %rax
.LBB4_86:                               # %if.end.268.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movzwl	%cx, %esi
	movzwl	%dx, %edx
	movzwl	%ax, %ecx
	movzwl	%r8w, %r8d
	movq	%r13, %rdi
	callq	*1288(%r13)
.LBB4_104:                              # %do.body.313.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	%r13, %rbx
	xorl	%ecx, %ecx
	movl	116(%rsp), %esi         # 4-byte Reload
	movl	%esi, %edx
	cmpl	$16, %esi
	ja	.LBB4_124
# BB#105:                               # %do.body.313.i
                                        #   in Loop: Header=BB4_33 Depth=2
	jmpq	*.LJTI4_3(,%rdx,8)
.LBB4_106:                              # %sw.bb.315.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	192(%rsp), %rcx         # 8-byte Reload
	movl	112(%rsp), %edx         # 4-byte Reload
	addl	%ecx, %edx
	cmpl	$8, %edx
	jne	.LBB4_108
# BB#107:                               # %if.then.319.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	96(%rsp), %rcx          # 8-byte Reload
	orb	%cl, %al
	movq	184(%rsp), %rcx         # 8-byte Reload
	movb	%al, (%rcx)
	incq	%rcx
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	movb	$1, %cl
	movl	$0, 112(%rsp)           # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	jmp	.LBB4_124
.LBB4_109:                              # %sw.bb.334.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movl	112(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %edx
	xorl	$4, %edx
	cmpl	$4, %ecx
	jne	.LBB4_110
# BB#111:                               # %if.else.339.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	96(%rsp), %rcx          # 8-byte Reload
	orb	%cl, %al
	movq	184(%rsp), %rcx         # 8-byte Reload
	movb	%al, (%rcx)
	incq	%rcx
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	jmp	.LBB4_112
.LBB4_113:                              # %sw.bb.347.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movl	112(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %edx
	xorl	$4, %edx
	cmpl	$4, %ecx
	jne	.LBB4_114
# BB#115:                               # %if.else.356.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	%rax, %rcx
	shrq	$8, %rcx
	movq	96(%rsp), %rsi          # 8-byte Reload
	orb	%sil, %cl
	movq	184(%rsp), %rsi         # 8-byte Reload
	movb	%cl, (%rsi)
	movb	%al, 1(%rsi)
	addq	$2, %rsi
	movq	%rsi, 184(%rsp)         # 8-byte Spill
.LBB4_112:                              # %cleanup.402.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movb	$1, %cl
	movl	%edx, 112(%rsp)         # 4-byte Spill
	jmp	.LBB4_124
.LBB4_116:                              # %sw.bb.367.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	%rax, %rcx
	shrq	$56, %rcx
	movq	184(%rsp), %rdx         # 8-byte Reload
	movb	%cl, (%rdx)
	incq	%rdx
	movq	%rdx, 184(%rsp)         # 8-byte Spill
.LBB4_117:                              # %sw.bb.371.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	%rax, %rcx
	shrq	$48, %rcx
	movq	184(%rsp), %rdx         # 8-byte Reload
	movb	%cl, (%rdx)
	incq	%rdx
	movq	%rdx, 184(%rsp)         # 8-byte Spill
.LBB4_118:                              # %sw.bb.375.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	%rax, %rcx
	shrq	$40, %rcx
	movq	184(%rsp), %rdx         # 8-byte Reload
	movb	%cl, (%rdx)
	incq	%rdx
	movq	%rdx, 184(%rsp)         # 8-byte Spill
.LBB4_119:                              # %sw.bb.379.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	%rax, %rcx
	shrq	$32, %rcx
	movq	184(%rsp), %rdx         # 8-byte Reload
	movb	%cl, (%rdx)
	incq	%rdx
	movq	%rdx, 184(%rsp)         # 8-byte Spill
.LBB4_120:                              # %sw.bb.383.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	%rax, %rcx
	shrq	$24, %rcx
	movq	184(%rsp), %rdx         # 8-byte Reload
	movb	%cl, (%rdx)
	incq	%rdx
	movq	%rdx, 184(%rsp)         # 8-byte Spill
.LBB4_121:                              # %sw.bb.387.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	%rax, %rcx
	shrq	$16, %rcx
	movq	184(%rsp), %rdx         # 8-byte Reload
	movb	%cl, (%rdx)
	incq	%rdx
	movq	%rdx, 184(%rsp)         # 8-byte Spill
.LBB4_122:                              # %sw.bb.391.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	184(%rsp), %rcx         # 8-byte Reload
	movb	%ah, (%rcx)  # NOREX
	incq	%rcx
	movq	%rcx, 184(%rsp)         # 8-byte Spill
.LBB4_123:                              # %sw.bb.395.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movq	184(%rsp), %rcx         # 8-byte Reload
	movb	%al, (%rcx)
	incq	%rcx
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	movb	$1, %cl
	.align	16, 0x90
.LBB4_124:                              # %cleanup.402.i
                                        #   in Loop: Header=BB4_33 Depth=2
	movl	$-15, %r13d
	testb	%cl, %cl
	je	.LBB4_125
# BB#32:                                # %for.cond.48.i
                                        #   in Loop: Header=BB4_33 Depth=2
	incl	%r12d
	movq	256(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %r12d
	jl	.LBB4_33
.LBB4_29:                               # %for.end.414.i
                                        #   in Loop: Header=BB4_26 Depth=1
	movq	%rbx, 224(%rsp)         # 8-byte Spill
	movl	112(%rsp), %ecx         # 4-byte Reload
	testl	%ecx, %ecx
	je	.LBB4_31
# BB#30:                                # %if.then.417.i
                                        #   in Loop: Header=BB4_26 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	movzbl	%al, %eax
	movq	184(%rsp), %rdi         # 8-byte Reload
	movzbl	(%rdi), %edx
	movl	$255, %esi
	shrl	%cl, %esi
	andl	%edx, %esi
	orl	%eax, %esi
	movb	%sil, (%rdi)
.LBB4_31:                               # %for.inc.433.i
                                        #   in Loop: Header=BB4_26 Depth=1
	addq	64(%rsp), %rbp          # 8-byte Folded Reload
	movq	56(%rsp), %rax          # 8-byte Reload
	addq	%rax, 120(%rsp)         # 8-byte Folded Spill
	xorl	%r13d, %r13d
	movq	264(%rsp), %rax         # 8-byte Reload
	cmpl	$1, %eax
	leal	-1(%rax), %eax
	movq	%rax, 264(%rsp)         # 8-byte Spill
	jg	.LBB4_26
.LBB4_125:                              # %gx_get_bits_std_to_native.exit
	movq	136(%rsp), %r11         # 8-byte Reload
	movq	(%r11), %rax
	movq	%rax, 216(%rsp)         # 8-byte Spill
	movq	128(%rsp), %r10         # 8-byte Reload
	jmp	.LBB4_203
.LBB4_215:                              # %cond.true.144
	leal	(%r10,%rcx), %esi
	imull	%eax, %esi
	addl	$63, %esi
	sarl	$6, %esi
	shll	$3, %esi
.LBB4_217:                              # %cond.end.152
	movl	%esi, 3080(%rsp)
	movl	%eax, 3084(%rsp)
	movl	%r10d, 3088(%rsp)
	decl	%ebp
	subl	%edx, %ebp
	imull	%eax, %ebp
	leaq	3072(%rsp), %rdi
	leaq	272(%rsp), %rsi
	movl	%ebp, %edx
	callq	bits_extract_plane
	movl	%eax, %r13d
	jmp	.LBB4_218
.LBB4_126:                              # %if.else.76
	movq	%rbp, %rcx
	movl	%ecx, %eax
	andl	$96, %eax
	cmpq	$1, %rax
	movl	$3, %eax
	sbbl	$-1, %eax
	movl	$-15, %r13d
	testb	$8, %ch
	jne	.LBB4_128
# BB#127:
	movl	%r12d, 180(%rsp)        # 4-byte Spill
	jmp	.LBB4_202
.LBB4_128:                              # %if.end.i.126
	testb	$4, %cl
	jne	.LBB4_129
# BB#130:                               # %if.else.i.127
	movl	%r12d, 180(%rsp)        # 4-byte Spill
	testb	$8, %cl
	jne	.LBB4_131
# BB#132:                               # %if.else.18.i
	testb	$2, %cl
	je	.LBB4_202
# BB#133:                               # %if.then.21.i
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	andq	$-13, %rcx
	movq	%rcx, (%r11)
	movl	$1, %esi
	jmp	.LBB4_134
.LBB4_129:                              # %if.then.10.i
	movl	%r12d, 180(%rsp)        # 4-byte Spill
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	andq	$-11, %rcx
	movq	%rcx, (%r11)
	movl	$3, %esi
	jmp	.LBB4_134
.LBB4_131:                              # %if.then.15.i
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	andq	$-7, %rcx
	movq	%rcx, (%r11)
	movl	$4, %esi
.LBB4_134:                              # %if.end.27.i
	movl	%r15d, %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	imull	%r10d, %eax
	cltq
	testl	$268435456, %ecx        # imm = 0x10000000
	movl	180(%rsp), %r12d        # 4-byte Reload
	je	.LBB4_138
# BB#135:                               # %if.then.30.i
	imull	%esi, %r8d
	testl	$4194304, %ecx          # imm = 0x400000
	jne	.LBB4_137
# BB#136:
	movl	%r8d, %r12d
	jmp	.LBB4_138
.LBB4_137:                              # %cond.true.i
	leal	63(,%r8,8), %r12d
	shrl	$3, %r12d
	andl	$536870904, %r12d       # imm = 0x1FFFFFF8
.LBB4_138:                              # %if.end.38.i
	addq	%rdx, 120(%rsp)         # 8-byte Folded Spill
	addq	%rax, %rdi
	movq	%rdi, 248(%rsp)         # 8-byte Spill
	movl	%ecx, %eax
	movq	%rcx, %rbp
	andl	$100, %eax
	cmpq	$4, %rax
	jne	.LBB4_152
# BB#139:                               # %land.lhs.true.i
	xorl	%r13d, %r13d
	movl	%esi, 240(%rsp)         # 4-byte Spill
	movl	$8, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	224(%rsp), %rdi         # 8-byte Reload
	movq	%r11, %rbx
	movl	%r12d, %r14d
	movq	%r10, %r12
	callq	*1664(%rdi)
	movl	240(%rsp), %esi         # 4-byte Reload
	movq	%r12, %r10
	movl	%r14d, %r12d
	movq	%rbx, %r11
	testl	%eax, %eax
	jle	.LBB4_152
# BB#140:                               # %if.then.43.i
	movq	264(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB4_202
# BB#141:                               # %for.body.lr.ph.i.i
	movq	%r11, 136(%rsp)         # 8-byte Spill
	shrl	$2, %r15d
	andl	$1, %r15d
	movl	%r12d, %r8d
	movl	3272(%rsp), %r9d
	movq	256(%rsp), %rax         # 8-byte Reload
	leal	1(%rax), %r11d
	movq	120(%rsp), %rdx         # 8-byte Reload
	movq	248(%rsp), %r14         # 8-byte Reload
.LBB4_142:                              # %for.body.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_143 Depth 2
	movq	256(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movl	%r11d, %esi
	movl	%r15d, %edi
	movq	%r14, %rbp
	movq	%rdx, %rbx
	jle	.LBB4_150
	.align	16, 0x90
.LBB4_143:                              # %for.body.5.i.i
                                        #   Parent Loop BB4_142 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%edi, %edi
	je	.LBB4_144
# BB#145:                               # %cond.false.i.i
                                        #   in Loop: Header=BB4_143 Depth=2
	movzbl	(%rbx), %eax
	incq	%rbx
	andl	$15, %eax
	jmp	.LBB4_146
	.align	16, 0x90
.LBB4_144:                              # %cond.true.i.i
                                        #   in Loop: Header=BB4_143 Depth=2
	movzbl	(%rbx), %eax
	shrl	$4, %eax
.LBB4_146:                              # %cond.end.i.i
                                        #   in Loop: Header=BB4_143 Depth=2
	testb	$1, %al
	jne	.LBB4_147
# BB#148:                               # %if.else.i.i
                                        #   in Loop: Header=BB4_143 Depth=2
	movl	%eax, %ecx
	shrl	$3, %ecx
	addl	$255, %ecx
	movb	%cl, (%rbp)
	movl	%eax, %ecx
	shrl	$2, %ecx
	andl	$1, %ecx
	addl	$255, %ecx
	shrl	%eax
	andl	$1, %eax
	addl	$255, %eax
	jmp	.LBB4_149
	.align	16, 0x90
.LBB4_147:                              # %if.then.i.i
                                        #   in Loop: Header=BB4_143 Depth=2
	movb	$0, (%rbp)
	xorl	%ecx, %ecx
	xorl	%eax, %eax
.LBB4_149:                              # %if.end.i.i
                                        #   in Loop: Header=BB4_143 Depth=2
	xorl	$1, %edi
	movb	%cl, 1(%rbp)
	movb	%al, 2(%rbp)
	addq	$3, %rbp
	decl	%esi
	cmpl	$1, %esi
	jg	.LBB4_143
.LBB4_150:                              # %for.end.i.i
                                        #   in Loop: Header=BB4_142 Depth=1
	addq	%r8, %r14
	addq	%r9, %rdx
	movq	264(%rsp), %rax         # 8-byte Reload
	cmpl	$1, %eax
	leal	-1(%rax), %eax
	movq	%rax, 264(%rsp)         # 8-byte Spill
	jg	.LBB4_142
# BB#151:
	movq	136(%rsp), %r11         # 8-byte Reload
	jmp	.LBB4_202
.LBB4_152:                              # %if.end.45.i
	movq	%r10, %r8
	movq	%rbp, 216(%rsp)         # 8-byte Spill
	movl	%ebp, %eax
	andl	$96, %eax
	cmpq	$1, %rax
	sbbl	$-1, %esi
	movl	$1, %eax
	movq	192(%rsp), %rcx         # 8-byte Reload
	shll	%cl, %eax
	cmpl	$4, %ecx
	movq	%rcx, %rbx
	movl	$16, %ebp
	cmovbel	%eax, %ebp
	testl	%ebp, %ebp
	movl	3272(%rsp), %r14d
	jle	.LBB4_167
# BB#153:                               # %for.body.lr.ph.i.133
	movslq	%ebp, %rax
	cmpq	$2, %rax
	movl	$1, %ecx
	cmovlq	%rax, %rcx
	notq	%rcx
	leaq	(%rcx,%rax), %rcx
	cmpq	$-2, %rcx
	je	.LBB4_154
# BB#156:                               # %overflow.checked236
	addq	$2, %rcx
	movq	%rcx, %r10
	andq	$-4, %r10
	xorl	%edx, %edx
	movq	%rcx, %r9
	andq	$-4, %r9
	je	.LBB4_157
# BB#158:                               # %vector.body232.preheader
	movq	%r11, 136(%rsp)         # 8-byte Spill
	movslq	%ebp, %r11
	cmpq	$2, %r11
	movl	$1, %edx
	cmovlq	%r11, %rdx
	notq	%rdx
	leaq	-2(%r11,%rdx), %r13
	movl	%r13d, %edi
	shrl	$2, %edi
	incl	%edi
	xorl	%edx, %edx
	testb	$3, %dil
	je	.LBB4_161
# BB#159:                               # %vector.body232.prol.preheader
	leaq	256(%rsp,%r11,8), %rdi
	movq	%r11, %rdx
	notq	%rdx
	cmpq	$-2, %rdx
	movl	%esi, %r14d
	movl	$-2, %esi
	cmovgl	%edx, %esi
	leal	-2(%rsi,%rbp), %ebp
	movl	%r14d, %esi
	shrl	$2, %ebp
	incl	%ebp
	andl	$3, %ebp
	negq	%rbp
	xorl	%edx, %edx
	pxor	%xmm0, %xmm0
.LBB4_160:                              # %vector.body232.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%rdi)
	movdqu	%xmm0, -16(%rdi)
	addq	$4, %rdx
	addq	$-32, %rdi
	incq	%rbp
	jne	.LBB4_160
.LBB4_161:                              # %vector.body232.preheader.split
	subq	%r10, %rax
	cmpq	$12, %r13
	jae	.LBB4_163
# BB#162:
	movq	%r9, %rdx
	movq	136(%rsp), %r11         # 8-byte Reload
	movl	3272(%rsp), %r14d
	jmp	.LBB4_166
.LBB4_157:
	movl	3272(%rsp), %r14d
	jmp	.LBB4_166
.LBB4_163:                              # %vector.body232.preheader.split.split
	movl	%esi, %ebp
	movq	%r11, %rsi
	notq	%rsi
	cmpq	$-3, %rsi
	movq	$-2, %rdi
	cmovgq	%rsi, %rdi
	leaq	2(%rdi,%r11), %rdi
	andq	$-4, %rdi
	subq	%rdx, %rdi
	addq	$-2, %r11
	subq	%rdx, %r11
	leaq	272(%rsp,%r11,8), %rdx
	pxor	%xmm0, %xmm0
	movl	3272(%rsp), %r14d
.LBB4_164:                              # %vector.body232
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%rdx)
	movdqu	%xmm0, -16(%rdx)
	movdqu	%xmm0, -32(%rdx)
	movdqu	%xmm0, -48(%rdx)
	movdqu	%xmm0, -64(%rdx)
	movdqu	%xmm0, -80(%rdx)
	movdqu	%xmm0, -96(%rdx)
	movdqu	%xmm0, -112(%rdx)
	addq	$-128, %rdx
	addq	$-16, %rdi
	jne	.LBB4_164
# BB#165:
	movq	%r9, %rdx
	movq	136(%rsp), %r11         # 8-byte Reload
	movl	%ebp, %esi
.LBB4_166:                              # %middle.block233
	cmpq	%rdx, %rcx
	je	.LBB4_167
.LBB4_154:                              # %for.body.i.139.preheader
	incq	%rax
.LBB4_155:                              # %for.body.i.139
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, 256(%rsp,%rax,8)
	decq	%rax
	cmpq	$1, %rax
	jg	.LBB4_155
.LBB4_167:                              # %for.cond.60.preheader.i
	xorl	%r13d, %r13d
	movq	264(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movq	%r8, %r10
	jle	.LBB4_202
# BB#168:                               # %for.body.63.lr.ph.i
	andl	$7, %r15d
	movq	%r15, 184(%rsp)         # 8-byte Spill
	movl	%r12d, %eax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movl	%r14d, %eax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movq	%rbx, %r14
	movl	%r14d, %r12d
	shrl	$2, %r12d
	movl	$8, %eax
	subl	%r14d, %eax
	movl	%eax, 148(%rsp)         # 4-byte Spill
	movl	%r14d, %eax
	orl	$1, %eax
	movl	%eax, 116(%rsp)         # 4-byte Spill
	movl	%esi, %eax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	movq	216(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	andl	$32, %ecx
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	movl	%eax, %ecx
	andl	$4, %ecx
	movq	%rcx, 240(%rsp)         # 8-byte Spill
	movl	%eax, %ecx
	andl	$8, %ecx
	movq	%rcx, 200(%rsp)         # 8-byte Spill
	andl	$64, %eax
	movq	%rax, 216(%rsp)         # 8-byte Spill
.LBB4_169:                              # %for.body.63.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_170 Depth 2
	movq	%r11, 136(%rsp)         # 8-byte Spill
	movq	%r10, 128(%rsp)         # 8-byte Spill
	xorl	%ebp, %ebp
	movq	256(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movq	248(%rsp), %rdi         # 8-byte Reload
	movq	120(%rsp), %r13         # 8-byte Reload
	jle	.LBB4_201
.LBB4_170:                              # %for.body.68.i
                                        #   Parent Loop BB4_169 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r12d, %eax
	cmpl	$16, %r12d
	ja	.LBB4_219
# BB#171:                               # %for.body.68.i
                                        #   in Loop: Header=BB4_170 Depth=2
	jmpq	*.LJTI4_4(,%rax,8)
.LBB4_172:                              # %sw.bb.i.141
                                        #   in Loop: Header=BB4_170 Depth=2
	movzbl	(%r13), %esi
	movl	148(%rsp), %ecx         # 4-byte Reload
	subl	%r15d, %ecx
	shrl	%cl, %esi
	andl	116(%rsp), %esi         # 4-byte Folded Reload
	jmp	.LBB4_186
.LBB4_173:                              # %do.body.235.thread.i
                                        #   in Loop: Header=BB4_170 Depth=2
	movzbl	(%r13), %esi
	movl	$4, %ecx
	subl	%r15d, %ecx
	shrl	%cl, %esi
	andl	$15, %esi
	movq	192(%rsp), %rax         # 8-byte Reload
	addl	%eax, %r15d
	movl	%r15d, %eax
	sarl	$3, %eax
	cltq
	addq	%rax, %r13
	andl	$7, %r15d
	jmp	.LBB4_187
.LBB4_174:                              # %sw.bb.81.i
                                        #   in Loop: Header=BB4_170 Depth=2
	movzbl	(%r13), %esi
	jmp	.LBB4_186
.LBB4_175:                              # %sw.bb.83.i
                                        #   in Loop: Header=BB4_170 Depth=2
	testl	%r15d, %r15d
	movzbl	(%r13), %eax
	movzbl	1(%r13), %ecx
	je	.LBB4_177
# BB#176:                               # %cond.true.85.i
                                        #   in Loop: Header=BB4_170 Depth=2
	andl	$15, %eax
	shll	$8, %eax
	orl	%ecx, %eax
	movslq	%eax, %rsi
	jmp	.LBB4_186
.LBB4_179:                              # %sw.bb.102.i
                                        #   in Loop: Header=BB4_170 Depth=2
	movzbl	(%r13), %eax
	shlq	$8, %rax
	movzbl	1(%r13), %esi
	orq	%rax, %rsi
	jmp	.LBB4_186
.LBB4_180:                              # %sw.bb.109.i
                                        #   in Loop: Header=BB4_170 Depth=2
	movzbl	(%r13), %eax
	shlq	$16, %rax
	movzbl	1(%r13), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	2(%r13), %esi
	orq	%rcx, %rsi
	jmp	.LBB4_186
.LBB4_181:                              # %sw.bb.120.i
                                        #   in Loop: Header=BB4_170 Depth=2
	movzbl	(%r13), %eax
	shll	$24, %eax
	movzbl	1(%r13), %ecx
	shll	$16, %ecx
	orl	%eax, %ecx
	movzbl	2(%r13), %eax
	shll	$8, %eax
	orl	%ecx, %eax
	movzbl	3(%r13), %ecx
	jmp	.LBB4_178
.LBB4_182:                              # %sw.bb.135.i
                                        #   in Loop: Header=BB4_170 Depth=2
	movzbl	(%r13), %eax
	shlq	$32, %rax
	movzbl	1(%r13), %ecx
	shlq	$24, %rcx
	orq	%rax, %rcx
	movzbl	2(%r13), %eax
	shlq	$16, %rax
	orq	%rcx, %rax
	movzbl	3(%r13), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	4(%r13), %esi
	orq	%rcx, %rsi
	jmp	.LBB4_186
.LBB4_183:                              # %sw.bb.154.i
                                        #   in Loop: Header=BB4_170 Depth=2
	movzbl	(%r13), %eax
	shlq	$40, %rax
	movzbl	1(%r13), %ecx
	shlq	$32, %rcx
	orq	%rax, %rcx
	movzbl	2(%r13), %eax
	shlq	$24, %rax
	orq	%rcx, %rax
	movzbl	3(%r13), %ecx
	shlq	$16, %rcx
	orq	%rax, %rcx
	movzbl	4(%r13), %eax
	shlq	$8, %rax
	orq	%rcx, %rax
	movzbl	5(%r13), %esi
	orq	%rax, %rsi
	jmp	.LBB4_186
.LBB4_184:                              # %sw.bb.177.i
                                        #   in Loop: Header=BB4_170 Depth=2
	movzbl	(%r13), %eax
	shlq	$48, %rax
	movzbl	1(%r13), %ecx
	shlq	$40, %rcx
	orq	%rax, %rcx
	movzbl	2(%r13), %eax
	shlq	$32, %rax
	orq	%rcx, %rax
	movzbl	3(%r13), %ecx
	shlq	$24, %rcx
	orq	%rax, %rcx
	movzbl	4(%r13), %eax
	shlq	$16, %rax
	orq	%rcx, %rax
	movzbl	5(%r13), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	6(%r13), %esi
	orq	%rcx, %rsi
	jmp	.LBB4_186
.LBB4_185:                              # %sw.bb.204.i
                                        #   in Loop: Header=BB4_170 Depth=2
	movzbl	(%r13), %eax
	shlq	$56, %rax
	movzbl	1(%r13), %ecx
	shlq	$48, %rcx
	orq	%rax, %rcx
	movzbl	2(%r13), %eax
	shlq	$40, %rax
	orq	%rcx, %rax
	movzbl	3(%r13), %ecx
	shlq	$32, %rcx
	orq	%rax, %rcx
	movzbl	4(%r13), %eax
	shlq	$24, %rax
	orq	%rcx, %rax
	movzbl	5(%r13), %ecx
	shlq	$16, %rcx
	orq	%rax, %rcx
	movzbl	6(%r13), %eax
	shlq	$8, %rax
	orq	%rcx, %rax
	movzbl	7(%r13), %esi
	orq	%rax, %rsi
	jmp	.LBB4_186
.LBB4_177:                              # %cond.false.92.i
                                        #   in Loop: Header=BB4_170 Depth=2
	shll	$4, %eax
	shrl	$4, %ecx
.LBB4_178:                              # %do.body.235.i
                                        #   in Loop: Header=BB4_170 Depth=2
	orl	%eax, %ecx
	movslq	%ecx, %rsi
.LBB4_186:                              # %do.body.235.i
                                        #   in Loop: Header=BB4_170 Depth=2
	movq	192(%rsp), %rax         # 8-byte Reload
	addl	%eax, %r15d
	movl	%r15d, %eax
	sarl	$3, %eax
	cltq
	addq	%rax, %r13
	andl	$7, %r15d
	cmpq	$15, %rsi
	ja	.LBB4_190
.LBB4_187:                              # %if.then.245.i
                                        #   in Loop: Header=BB4_170 Depth=2
	movq	272(%rsp,%rsi,8), %rax
	testq	%rax, %rax
	je	.LBB4_189
# BB#188:                               # %if.then.248.i
                                        #   in Loop: Header=BB4_170 Depth=2
	movq	%rdi, %r14
	movq	%rax, %rsi
	movq	208(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	callq	memcpy
	movq	%r14, %rdi
	addq	%rbx, %rdi
	jmp	.LBB4_200
.LBB4_189:                              # %if.end.254.i
                                        #   in Loop: Header=BB4_170 Depth=2
	movq	%rdi, 272(%rsp,%rsi,8)
.LBB4_190:                              # %if.end.256.i
                                        #   in Loop: Header=BB4_170 Depth=2
	movq	%rdi, %rbx
	movq	224(%rsp), %rdi         # 8-byte Reload
	leaq	3200(%rsp), %rdx
	callq	*1456(%rdi)
	cmpq	$0, 232(%rsp)           # 8-byte Folded Reload
	jne	.LBB4_192
# BB#191:                               #   in Loop: Header=BB4_170 Depth=2
	movq	%rbx, %rdi
	jmp	.LBB4_193
.LBB4_192:                              # %if.then.261.i
                                        #   in Loop: Header=BB4_170 Depth=2
	movzwl	3206(%rsp), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movq	%rbx, %rdi
	movb	%al, (%rdi)
	incq	%rdi
.LBB4_193:                              # %if.end.269.i
                                        #   in Loop: Header=BB4_170 Depth=2
	cmpq	$0, 240(%rsp)           # 8-byte Folded Reload
	movzwl	3200(%rsp), %eax
	jne	.LBB4_194
# BB#195:                               # %if.else.298.i
                                        #   in Loop: Header=BB4_170 Depth=2
	cmpq	$0, 200(%rsp)           # 8-byte Folded Reload
	jne	.LBB4_196
# BB#197:                               # %if.else.380.i
                                        #   in Loop: Header=BB4_170 Depth=2
	imull	$30, %eax, %eax
	movzwl	3202(%rsp), %ecx
	imull	$59, %ecx, %ecx
	movzwl	3204(%rsp), %edx
	imull	$11, %edx, %edx
	addl	%eax, %ecx
	leal	50(%rdx,%rcx), %eax
	imulq	$1374389535, %rax, %rax # imm = 0x51EB851F
	shrq	$37, %rax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, (%rdi)
	incq	%rdi
	jmp	.LBB4_198
.LBB4_194:                              # %if.then.272.i
                                        #   in Loop: Header=BB4_170 Depth=2
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, (%rdi)
	movzwl	3202(%rsp), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 1(%rdi)
	movzwl	3204(%rsp), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 2(%rdi)
	addq	$3, %rdi
	jmp	.LBB4_198
.LBB4_196:                              # %if.then.301.i
                                        #   in Loop: Header=BB4_170 Depth=2
	movzwl	3202(%rsp), %ecx
	movzwl	3204(%rsp), %edx
	cmpl	%edx, %ecx
	cmovaw	%cx, %dx
	movzwl	%dx, %ecx
	cmpl	%ecx, %eax
	cmovaw	%ax, %cx
	movzwl	%cx, %ecx
	movl	%ecx, %edx
	subl	%eax, %edx
	imull	$65281, %edx, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, (%rdi)
	movzwl	3202(%rsp), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	imull	$65281, %edx, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 1(%rdi)
	movzwl	3204(%rsp), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	imull	$65281, %edx, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 2(%rdi)
	xorl	$65535, %ecx            # imm = 0xFFFF
	imull	$65281, %ecx, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 3(%rdi)
	addq	$4, %rdi
.LBB4_198:                              # %if.end.401.i
                                        #   in Loop: Header=BB4_170 Depth=2
	cmpq	$0, 216(%rsp)           # 8-byte Folded Reload
	je	.LBB4_200
# BB#199:                               # %if.then.404.i
                                        #   in Loop: Header=BB4_170 Depth=2
	movzwl	3206(%rsp), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, (%rdi)
	incq	%rdi
.LBB4_200:                              # %for.inc.i.165
                                        #   in Loop: Header=BB4_170 Depth=2
	incl	%ebp
	movq	256(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %ebp
	jl	.LBB4_170
.LBB4_201:                              # %for.inc.422.i
                                        #   in Loop: Header=BB4_169 Depth=1
	movq	152(%rsp), %rax         # 8-byte Reload
	addq	%rax, 248(%rsp)         # 8-byte Folded Spill
	movq	168(%rsp), %rax         # 8-byte Reload
	addq	%rax, 120(%rsp)         # 8-byte Folded Spill
	xorl	%r13d, %r13d
	movq	264(%rsp), %rax         # 8-byte Reload
	cmpl	$1, %eax
	leal	-1(%rax), %eax
	movq	%rax, 264(%rsp)         # 8-byte Spill
	movq	136(%rsp), %r11         # 8-byte Reload
	movq	128(%rsp), %r10         # 8-byte Reload
	movq	184(%rsp), %r15         # 8-byte Reload
	jg	.LBB4_169
	jmp	.LBB4_202
.LBB4_219:                              # %cleanup.417.i
	movl	$-15, %r13d
	movq	136(%rsp), %r11         # 8-byte Reload
	movq	128(%rsp), %r10         # 8-byte Reload
.LBB4_202:                              # %gx_get_bits_native_to_std.exit
	movq	(%r11), %rax
	movq	%rax, 216(%rsp)         # 8-byte Spill
.LBB4_203:                              # %if.end.81
	movl	164(%rsp), %r14d        # 4-byte Reload
	movl	180(%rsp), %r12d        # 4-byte Reload
.LBB4_204:                              # %if.end.81
	movq	216(%rsp), %rdi         # 8-byte Reload
	movl	%edi, %ecx
	andl	$127, %ecx
	movl	%edi, %eax
	notl	%eax
	movl	%edi, %edx
	andl	$16128, %edx            # imm = 0x3F00
	xorl	%esi, %esi
	testb	$1, %dil
	cmoveq	%rdx, %rsi
	andl	$4194304, %eax          # imm = 0x400000
	addq	$4194304, %rax          # imm = 0x400000
	cmpl	%r14d, %r12d
	movl	$268435456, %edx        # imm = 0x10000000
	movl	$536870912, %edi        # imm = 0x20000000
	cmoveq	%rdx, %rdi
	testl	%r10d, %r10d
	movl	$17891328, %edx         # imm = 0x1110000
	movl	$34668544, %ebp         # imm = 0x2110000
	cmoveq	%rdx, %rbp
	orq	%rdi, %rbp
	orq	%rcx, %rbp
	orq	%rsi, %rbp
	orq	%rax, %rbp
	movq	%rbp, (%r11)
.LBB4_218:                              # %cleanup.168
	movl	%r13d, %eax
	addq	$3208, %rsp             # imm = 0xC88
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gx_get_bits_copy, .Lfunc_end4-gx_get_bits_copy
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_38
	.quad	.LBB4_39
	.quad	.LBB4_40
	.quad	.LBB4_41
	.quad	.LBB4_45
.LJTI4_1:
	.quad	.LBB4_52
	.quad	.LBB4_53
	.quad	.LBB4_54
	.quad	.LBB4_55
	.quad	.LBB4_59
.LJTI4_2:
	.quad	.LBB4_64
	.quad	.LBB4_65
	.quad	.LBB4_66
	.quad	.LBB4_67
	.quad	.LBB4_71
.LJTI4_3:
	.quad	.LBB4_106
	.quad	.LBB4_109
	.quad	.LBB4_123
	.quad	.LBB4_113
	.quad	.LBB4_122
	.quad	.LBB4_124
	.quad	.LBB4_121
	.quad	.LBB4_124
	.quad	.LBB4_120
	.quad	.LBB4_124
	.quad	.LBB4_119
	.quad	.LBB4_124
	.quad	.LBB4_118
	.quad	.LBB4_124
	.quad	.LBB4_117
	.quad	.LBB4_124
	.quad	.LBB4_116
.LJTI4_4:
	.quad	.LBB4_172
	.quad	.LBB4_173
	.quad	.LBB4_174
	.quad	.LBB4_175
	.quad	.LBB4_179
	.quad	.LBB4_219
	.quad	.LBB4_180
	.quad	.LBB4_219
	.quad	.LBB4_181
	.quad	.LBB4_219
	.quad	.LBB4_182
	.quad	.LBB4_219
	.quad	.LBB4_183
	.quad	.LBB4_219
	.quad	.LBB4_184
	.quad	.LBB4_219
	.quad	.LBB4_185

	.text
	.globl	gx_no_get_bits_rectangle
	.align	16, 0x90
	.type	gx_no_get_bits_rectangle,@function
gx_no_get_bits_rectangle:               # @gx_no_get_bits_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, %eax
	retq
.Lfunc_end5:
	.size	gx_no_get_bits_rectangle, .Lfunc_end5-gx_no_get_bits_rectangle
	.cfi_endproc

	.globl	gx_default_get_bits_rectangle
	.align	16, 0x90
	.type	gx_default_get_bits_rectangle,@function
gx_default_get_bits_rectangle:          # @gx_default_get_bits_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp38:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp39:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 56
	subq	$2920, %rsp             # imm = 0xB68
.Ltmp41:
	.cfi_def_cfa_offset 2976
.Ltmp42:
	.cfi_offset %rbx, -56
.Ltmp43:
	.cfi_offset %r12, -48
.Ltmp44:
	.cfi_offset %r13, -40
.Ltmp45:
	.cfi_offset %r14, -32
.Ltmp46:
	.cfi_offset %r15, -24
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rdx, %r8
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	1448(%rbx), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movzwl	108(%rbx), %edi
	movl	832(%rbx), %eax
	movq	(%r8), %rbp
	movq	$gx_no_get_bits_rectangle, 1448(%rbx)
	movl	%ebp, %edx
	andl	$1114113, %edx          # imm = 0x110001
	testl	$12582912, %ebp         # imm = 0xC00000
	je	.LBB6_10
# BB#1:                                 # %entry
	cmpq	$1114113, %rdx          # imm = 0x110001
	jne	.LBB6_10
# BB#2:                                 # %entry
	movl	4(%r15), %esi
	leal	1(%rsi), %edx
	cmpl	%edx, 12(%r15)
	jne	.LBB6_10
# BB#3:                                 # %land.lhs.true.11
	testl	$83886080, %ebp         # imm = 0x5000000
	jne	.LBB6_6
# BB#4:                                 # %lor.lhs.false
	testl	$33554432, %ebp         # imm = 0x2000000
	je	.LBB6_10
# BB#5:                                 # %land.lhs.true.16
	cmpl	$0, 520(%r8)
	jne	.LBB6_10
.LBB6_6:                                # %land.lhs.true.19
	movl	%eax, %r13d
	imull	%edi, %r13d
	addl	$7, %r13d
	sarl	$3, %r13d
	testl	$1342177280, %ebp       # imm = 0x50000000
	je	.LBB6_7
# BB#17:                                # %land.lhs.true.28
	testq	%rcx, %rcx
	jne	.LBB6_10
	jmp	.LBB6_18
.LBB6_7:                                # %lor.lhs.false.22
	testl	$536870912, %ebp        # imm = 0x20000000
	je	.LBB6_10
# BB#8:                                 # %land.lhs.true.25
	testq	%rcx, %rcx
	jne	.LBB6_10
# BB#9:                                 # %land.lhs.true.25
	cmpl	%r13d, 528(%r8)
	jb	.LBB6_10
.LBB6_18:                               # %if.then
	movl	%edi, 80(%rsp)          # 4-byte Spill
	movq	8(%r8), %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	cmpl	$0, (%r15)
	jne	.LBB6_20
# BB#19:                                # %land.lhs.true.35
	cmpl	%eax, 8(%r15)
	movq	%rbp, %rdx
	movq	88(%rsp), %rax          # 8-byte Reload
	je	.LBB6_22
.LBB6_20:                               # %if.then.41
	movq	%r8, %r12
	movq	24(%rbx), %rdi
	movl	$.L.str, %edx
	movl	%r13d, %esi
	callq	*64(%rdi)
	movl	$-25, %r14d
	testq	%rax, %rax
	je	.LBB6_47
# BB#21:                                # %if.then.41.if.end.47_crit_edge
	movl	4(%r15), %esi
	movq	%r12, %r8
	movq	(%r8), %rdx
.LBB6_22:                               # %if.end.47
	leaq	8(%r8), %rdi
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	xorl	%ecx, %ecx
	testl	$2097152, %edx          # imm = 0x200000
	cmovneq	%rdi, %rcx
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	%r8, %r14
	movq	%rax, %r12
	callq	*1240(%rbx)
	movq	%r14, %r8
	movl	%eax, %r14d
	testl	%r14d, %r14d
	movl	80(%rsp), %edi          # 4-byte Reload
	js	.LBB6_10
# BB#23:                                # %if.then.60
	movq	88(%rsp), %rax          # 8-byte Reload
	cmpq	%rax, %r12
	movq	%r12, %rbp
	je	.LBB6_24
# BB#25:                                # %if.then.63
	movq	%r8, 48(%rsp)           # 8-byte Spill
	movl	(%r15), %edx
	testl	%edx, %edx
	movq	%rax, %r12
	jne	.LBB6_28
# BB#26:                                # %land.lhs.true.68
	movq	72(%rsp), %rax          # 8-byte Reload
	cmpq	%rbp, (%rax)
	je	.LBB6_28
# BB#27:                                # %land.lhs.true.73
	movq	48(%rsp), %rax          # 8-byte Reload
	testb	$32, 2(%rax)
	jne	.LBB6_31
.LBB6_28:                               # %if.else
	movl	8(%r15), %eax
	subl	%edx, %eax
	imull	%edi, %eax
	movl	%eax, 960(%rsp)
	movl	$1, 964(%rsp)
	leaq	1872(%rsp), %rcx
	movq	%rcx, 2704(%rsp)
	movq	%r12, 1872(%rsp)
	leal	63(%rax), %ecx
	sarl	$6, %ecx
	shll	$3, %ecx
	movl	%ecx, 1864(%rsp)
	movq	mem_mono_device+1216(%rip), %r10
	movq	48(%rsp), %rcx          # 8-byte Reload
	testb	$32, 2(%rcx)
	movq	%rbp, %rsi
	movq	72(%rsp), %r15          # 8-byte Reload
	je	.LBB6_30
# BB#29:                                # %cond.true.91
	movq	(%r15), %rsi
.LBB6_30:                               # %cond.end.95
	imull	%edi, %edx
	movl	%eax, 8(%rsp)
	movq	$1, 32(%rsp)
	movq	$0, 24(%rsp)
	movl	$1, 16(%rsp)
	movl	$0, (%rsp)
	leaq	128(%rsp), %rdi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r13d, %ecx
	callq	*%r10
	movl	%eax, %r14d
	movq	%r12, (%r15)
.LBB6_31:                               # %if.end.103
	movq	24(%rbx), %rdi
	movl	$.L.str, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	movq	48(%rsp), %r8           # 8-byte Reload
	jmp	.LBB6_32
.LBB6_10:                               # %if.end.116
	movq	%r8, 48(%rsp)           # 8-byte Spill
	movq	%r15, 104(%rsp)         # 8-byte Spill
	movl	(%r15), %r12d
	movl	8(%r15), %r13d
	movl	%r13d, %eax
	subl	%r12d, %eax
	movl	%eax, 88(%rsp)          # 4-byte Spill
	testb	$14, %bpl
	movl	%edi, %esi
	je	.LBB6_14
# BB#11:                                # %if.then.126
	movq	%rbp, %rax
	shrq	$8, %rax
	andl	$63, %eax
	movsbl	.L.str.1(%rax), %eax
	movl	$4, %ecx
	testb	$8, %bpl
	jne	.LBB6_13
# BB#12:                                # %cond.false.134
	movl	%ebp, %ecx
	shrl	%ecx
	andl	$2, %ecx
	orl	$1, %ecx
.LBB6_13:                               # %cond.end.138
	testb	$96, %bpl
	setne	%dl
	movzbl	%dl, %esi
	addl	%ecx, %esi
	imull	%eax, %esi
	cmpl	%edi, %esi
	cmovll	%edi, %esi
.LBB6_14:                               # %if.end.149
	movl	%edi, %r15d
	movq	24(%rbx), %rdi
	imull	88(%rsp), %esi          # 4-byte Folded Reload
	addl	$7, %esi
	sarl	$3, %esi
	movl	$.L.str, %edx
	callq	*64(%rdi)
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movl	$-25, %r14d
	testq	%rax, %rax
	je	.LBB6_47
# BB#15:                                # %if.else.161
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	gx_device_raster
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movq	%rbp, %rcx
	testl	$536870912, %ecx        # imm = 0x20000000
	jne	.LBB6_16
# BB#35:                                # %cond.false.168
	imull	88(%rsp), %r15d         # 4-byte Folded Reload
	movq	%rbx, %rbp
	testl	$4194304, %ecx          # imm = 0x400000
	jne	.LBB6_36
# BB#37:                                # %cond.false.176
	addl	$7, %r15d
	sarl	$3, %r15d
	jmp	.LBB6_38
.LBB6_16:                               # %cond.true.166
	movq	%rbx, %rbp
	movq	48(%rsp), %rdx          # 8-byte Reload
	movl	528(%rdx), %r15d
	movl	%r12d, %eax
	jmp	.LBB6_39
.LBB6_36:                               # %cond.true.171
	addl	$63, %r15d
	sarl	$6, %r15d
	shll	$3, %r15d
.LBB6_38:                               # %cond.end.182
	movl	%r12d, %eax
	movq	48(%rsp), %rdx          # 8-byte Reload
.LBB6_39:                               # %cond.end.182
	andl	$16142, %ecx            # imm = 0x3F0E
	orq	$1441857649, %rcx       # imm = 0x55F10071
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	8(%rdx), %rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movq	%rdx, %r12
	movl	%eax, 112(%rsp)
	movl	%r13d, 120(%rsp)
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	4(%rax), %ebx
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB6_40:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	104(%rsp), %rax         # 8-byte Reload
	cmpl	12(%rax), %ebx
	jge	.LBB6_46
# BB#41:                                # %for.body
                                        #   in Loop: Header=BB6_40 Depth=1
	movl	%ebx, 116(%rsp)
	leal	1(%rbx), %r13d
	movl	%r13d, 124(%rsp)
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	%rax, 128(%rsp)
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	%rax, 136(%rsp)
	xorl	%ecx, %ecx
	movq	%rbp, %rdi
	leaq	112(%rsp), %rsi
	leaq	128(%rsp), %rdx
	callq	*96(%rsp)               # 8-byte Folded Reload
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB6_46
# BB#42:                                # %if.end.213
                                        #   in Loop: Header=BB6_40 Depth=1
	testb	$1, 131(%rsp)
	jne	.LBB6_44
# BB#43:                                # %if.end.213.if.end.219_crit_edge
                                        #   in Loop: Header=BB6_40 Depth=1
	movl	648(%rsp), %esi
	jmp	.LBB6_45
	.align	16, 0x90
.LBB6_44:                               # %if.then.217
                                        #   in Loop: Header=BB6_40 Depth=1
	movl	$0, 648(%rsp)
	xorl	%esi, %esi
.LBB6_45:                               # %if.end.219
                                        #   in Loop: Header=BB6_40 Depth=1
	movq	104(%rsp), %rax         # 8-byte Reload
	subl	4(%rax), %ebx
	imull	%r15d, %ebx
	movq	72(%rsp), %rax          # 8-byte Reload
	leaq	(%rbx,%rax), %rax
	movq	%rax, 8(%r12)
	movq	136(%rsp), %rax
	movl	60(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 8(%rsp)
	movq	%rax, (%rsp)
	movl	$1, %ecx
	movq	%rbp, %rdi
	movl	88(%rsp), %edx          # 4-byte Reload
	movq	%r12, %r8
	leaq	128(%rsp), %r9
	callq	gx_get_bits_copy
	movl	%eax, %r14d
	testl	%r14d, %r14d
	movl	%r13d, %ebx
	jns	.LBB6_40
.LBB6_46:                               # %for.end
	movq	%rbp, %rbx
	movq	24(%rbx), %rdi
	movl	$.L.str, %edx
	movq	80(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	%rax, 8(%r12)
.LBB6_47:                               # %cleanup.249
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	%rax, 1448(%rbx)
	movl	%r14d, %eax
	sarl	$31, %eax
	andl	%r14d, %eax
	addq	$2920, %rsp             # imm = 0xB68
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_24:
	movq	%rax, %r12
.LBB6_32:                               # %if.end.107
	movl	$290521105, %eax        # imm = 0x11510011
	cmpq	%r12, 8(%r8)
	je	.LBB6_34
# BB#33:                                # %select.mid
	movl	$291569681, %eax        # imm = 0x11610011
.LBB6_34:                               # %select.end
	movq	%rax, (%r8)
	jmp	.LBB6_47
.Lfunc_end6:
	.size	gx_default_get_bits_rectangle, .Lfunc_end6-gx_default_get_bits_rectangle
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_default_get_bits_rectangle"
	.size	.L.str, 30

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata,"a",@progbits
.L.str.1:
	.asciz	"\000\001\002\002\004\004\004\004\b\b\b\b\b\b\b\b\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020"
	.size	.L.str.1, 65

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"\000\000\f\020"
	.size	.L.str.2, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
