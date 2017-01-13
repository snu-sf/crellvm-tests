	.text
	.file	"zcharout.bc"
	.globl	zchar_exec_char_proc
	.align	16, 0x90
	.type	zchar_exec_char_proc,@function
zchar_exec_char_proc:                   # @zchar_exec_char_proc
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
	subq	$16, %rsp
.Ltmp3:
	.cfi_def_cfa_offset 48
.Ltmp4:
	.cfi_offset %rbx, -32
.Ltmp5:
	.cfi_offset %r14, -24
.Ltmp6:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r15
	movq	520(%rbx), %rax
	movq	536(%rbx), %rcx
	addq	$-80, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB0_3
# BB#1:                                 # %if.then
	leaq	520(%rbx), %r14
	movl	$5, %esi
	movq	%r14, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB0_4
# BB#2:                                 # %if.then.if.end.9_crit_edge
	movq	(%r14), %rax
.LBB0_3:                                # %if.end.9
	leaq	80(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$zend, 24(%rax)
	movw	$3968, 16(%rax)         # imm = 0xF80
	movl	$0, 20(%rax)
	movq	$zend, 40(%rax)
	movw	$3968, 32(%rax)         # imm = 0xF80
	movl	$0, 36(%rax)
	movups	(%r15), %xmm0
	movups	%xmm0, 48(%rax)
	movq	$zbegin, 72(%rax)
	movw	$3968, 64(%rax)         # imm = 0xF80
	movl	$0, 68(%rax)
	movq	$zbegin, 88(%rax)
	movw	$3968, 80(%rax)         # imm = 0xF80
	movl	$0, 84(%rax)
	movups	504(%rbx), %xmm0
	movups	%xmm0, -16(%r15)
	movups	-48(%r15), %xmm0
	movaps	%xmm0, (%rsp)
	movups	-32(%r15), %xmm0
	movups	%xmm0, -48(%r15)
	movaps	(%rsp), %xmm0
	movups	%xmm0, -32(%r15)
	addq	$-16, 624(%rbx)
	movl	$5, %eax
.LBB0_4:                                # %cleanup.52
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	zchar_exec_char_proc, .Lfunc_end0-zchar_exec_char_proc
	.cfi_endproc

	.globl	zchar_get_metrics
	.align	16, 0x90
	.type	zchar_get_metrics,@function
zchar_get_metrics:                      # @zchar_get_metrics
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
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp11:
	.cfi_def_cfa_offset 64
.Ltmp12:
	.cfi_offset %rbx, -40
.Ltmp13:
	.cfi_offset %r14, -32
.Ltmp14:
	.cfi_offset %r15, -24
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	callq	gs_font_parent
	movq	72(%rax), %rdi
	leaq	16(%rsp), %rdx
	movl	$.L.str, %esi
	callq	dict_find_string
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jle	.LBB1_15
# BB#1:                                 # %if.then
	movq	16(%rsp), %rdi
	movl	$-20, %ebx
	movzbl	1(%rdi), %eax
	cmpl	$2, %eax
	jne	.LBB1_14
# BB#2:                                 # %do.body.5
	movq	8(%rdi), %rax
	movl	$-7, %ebx
	testb	$32, (%rax)
	je	.LBB1_14
# BB#3:                                 # %do.end.12
	leaq	8(%rsp), %rdx
	movq	%r15, %rsi
	callq	dict_find
	testl	%eax, %eax
	jle	.LBB1_15
# BB#4:                                 # %if.then.16
	movq	8(%rsp), %rdi
	leaq	16(%r14), %rdx
	movl	$1, %ebx
	movl	$1, %esi
	callq	num_params
	testl	%eax, %eax
	js	.LBB1_6
# BB#5:                                 # %if.then.20
	movq	$0, 24(%r14)
	jmp	.LBB1_14
.LBB1_6:                                # %if.else
	movq	8(%rsp), %rax
	movzwl	(%rax), %ecx
	andl	$16160, %ecx            # imm = 0x3F20
	cmpl	$1056, %ecx             # imm = 0x420
	jne	.LBB1_7
# BB#9:                                 # %do.end.38
	movl	4(%rax), %ecx
	cmpl	$4, %ecx
	jne	.LBB1_10
# BB#12:                                # %sw.bb.47
	movq	8(%rax), %rdi
	addq	$48, %rdi
	movl	$4, %esi
	movq	%r14, %rdx
	callq	num_params
	jmp	.LBB1_13
.LBB1_7:                                # %if.then.29
	movzbl	1(%rax), %eax
	movl	$-20, %ebx
	cmpl	$4, %eax
	jne	.LBB1_14
# BB#8:                                 # %select.mid
	movl	$-7, %ebx
	jmp	.LBB1_14
.LBB1_10:                               # %do.end.38
	movl	$-15, %ebx
	cmpl	$2, %ecx
	jne	.LBB1_14
# BB#11:                                # %sw.bb
	movq	8(%rax), %rdi
	addq	$16, %rdi
	movl	$2, %esi
	movq	%r14, %rdx
	callq	num_params
	movq	8(%r14), %rcx
	movq	%rcx, 16(%r14)
	movq	$0, 24(%r14)
	movq	$0, 8(%r14)
.LBB1_13:                               # %sw.epilog
	testl	%eax, %eax
	movl	$2, %ebx
	cmovsl	%eax, %ebx
.LBB1_14:                               # %cleanup.57.thread
	movl	%ebx, %ebp
.LBB1_15:                               # %cleanup.59
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	zchar_get_metrics, .Lfunc_end1-zchar_get_metrics
	.cfi_endproc

	.globl	zchar_get_metrics2
	.align	16, 0x90
	.type	zchar_get_metrics2,@function
zchar_get_metrics2:                     # @zchar_get_metrics2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 48
.Ltmp20:
	.cfi_offset %rbx, -32
.Ltmp21:
	.cfi_offset %r14, -24
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	callq	gs_font_parent
	movq	72(%rax), %rdi
	leaq	8(%rsp), %rdx
	movl	$.L.str.1, %esi
	callq	dict_find_string
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jle	.LBB2_10
# BB#1:                                 # %if.then
	movq	8(%rsp), %rdi
	movl	$-20, %ecx
	movzbl	1(%rdi), %eax
	cmpl	$2, %eax
	jne	.LBB2_9
# BB#2:                                 # %do.body.5
	movq	8(%rdi), %rax
	movl	$-7, %ecx
	testb	$32, (%rax)
	je	.LBB2_9
# BB#3:                                 # %do.end.12
	leaq	(%rsp), %rdx
	movq	%rbx, %rsi
	callq	dict_find
	testl	%eax, %eax
	jle	.LBB2_10
# BB#4:                                 # %do.body.17
	movq	(%rsp), %rax
	movzwl	(%rax), %ecx
	andl	$16160, %ecx            # imm = 0x3F20
	cmpl	$1056, %ecx             # imm = 0x420
	jne	.LBB2_5
# BB#7:                                 # %do.end.33
	cmpl	$4, 4(%rax)
	jne	.LBB2_10
# BB#8:                                 # %if.then.37
	movq	8(%rax), %rdi
	addq	$48, %rdi
	movl	$4, %esi
	movq	%r14, %rdx
	callq	num_params
	testl	%eax, %eax
	movl	$2, %ecx
	cmovsl	%eax, %ecx
	jmp	.LBB2_9
.LBB2_5:                                # %if.then.24
	movzbl	1(%rax), %eax
	movl	$-20, %ecx
	cmpl	$4, %eax
	jne	.LBB2_9
# BB#6:                                 # %select.mid
	movl	$-7, %ecx
.LBB2_9:                                # %cleanup.thread
	movl	%ecx, %ebp
.LBB2_10:                               # %cleanup.46
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	zchar_get_metrics2, .Lfunc_end2-zchar_get_metrics2
	.cfi_endproc

	.globl	zchar_get_CDevProc
	.align	16, 0x90
	.type	zchar_get_CDevProc,@function
zchar_get_CDevProc:                     # @zchar_get_CDevProc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	callq	gs_font_parent
	movq	72(%rax), %rdi
	movl	$.L.str.2, %esi
	movq	%rbx, %rdx
	callq	dict_find_string
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	popq	%rbx
	retq
.Lfunc_end3:
	.size	zchar_get_CDevProc, .Lfunc_end3-zchar_get_CDevProc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4609051412645376164     # double 1.415
.LCPI4_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	zchar_set_cache
	.align	16, 0x90
	.type	zchar_set_cache,@function
zchar_set_cache:                        # @zchar_set_cache
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
	subq	$200, %rsp
.Ltmp31:
	.cfi_def_cfa_offset 256
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
	movq	%r9, %rbp
	movq	%r8, %r14
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movq	624(%r13), %r15
	callq	op_show_find
	movq	%rax, %r12
	movups	(%r14), %xmm0
	movaps	%xmm0, 64(%rsp)
	movupd	(%rbp), %xmm1
	movapd	%xmm1, 80(%rsp)
	movupd	16(%rbp), %xmm0
	movapd	%xmm0, 96(%rsp)
	cmpl	$0, 152(%rbx)
	je	.LBB4_4
# BB#1:                                 # %if.then
	movapd	%xmm1, 16(%rsp)         # 16-byte Spill
	movapd	%xmm0, 32(%rsp)         # 16-byte Spill
	movq	(%r13), %rdi
	callq	gs_currentmiterlimit
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI4_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB4_3
# BB#2:                                 # %cond.false
	movq	(%r13), %rdi
	callq	gs_currentmiterlimit
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
.LBB4_3:                                # %cond.end
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	movq	(%r13), %rdi
	callq	gs_currentlinewidth
	cvtss2sd	%xmm0, %xmm0
	mulsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	mulsd	.LCPI4_1(%rip), %xmm0
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	movapd	16(%rsp), %xmm1         # 16-byte Reload
	subpd	%xmm0, %xmm1
	movapd	%xmm1, 80(%rsp)
	addpd	32(%rsp), %xmm0         # 16-byte Folded Reload
	movapd	%xmm0, 96(%rsp)
.LBB4_4:                                # %if.end
	leaq	112(%rsp), %rdx
	movq	%rbx, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	zchar_get_metrics2
	testl	%eax, %eax
	js	.LBB4_45
# BB#5:                                 # %cleanup.cont
	movq	%r15, 32(%rsp)          # 8-byte Spill
	movq	272(%rsp), %rax
	setg	%cl
	movzbl	%cl, %r14d
	setle	%cl
	xorl	%r15d, %r15d
	testq	%rax, %rax
	je	.LBB4_8
# BB#6:                                 # %cleanup.cont
	testb	%cl, %cl
	je	.LBB4_8
# BB#7:                                 # %if.then.37
	movups	16(%rax), %xmm0
	movaps	%xmm0, 112(%rsp)
	movupd	(%rax), %xmm0
	movapd	%xmm0, 128(%rsp)
	movl	$1, %r15d
	movl	$1, %r14d
.LBB4_8:                                # %if.end.46
	movq	%rbx, %rdi
	callq	gs_font_parent
	movq	72(%rax), %rdi
	leaq	192(%rsp), %rdx
	movl	$.L.str.2, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	cmpl	$11, 128(%rbx)
	jne	.LBB4_15
# BB#9:                                 # %land.lhs.true.50
	movq	%rbx, %rdi
	callq	gs_font_parent
	movq	72(%rax), %rdi
	leaq	184(%rsp), %rdx
	movl	$.L.str.3, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB4_15
# BB#10:                                # %if.then.55
	movl	320(%rbx), %edx
	cmpl	372(%rbx), %edx
	jne	.LBB4_12
# BB#11:                                # %cond.false.78
	leaq	272(%rbx), %rdi
	addq	$324, %rbx              # imm = 0x144
	movq	%rbx, %rsi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB4_15
.LBB4_12:                               # %if.then.90
	movq	424(%r12), %rax
	testq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	je	.LBB4_14
# BB#13:                                # %if.then.93
	addq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
.LBB4_14:                               # %if.else
	movq	%rax, 160(%rsp)
	movw	$2816, 152(%rsp)        # imm = 0xB00
	leaq	152(%rsp), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
.LBB4_15:                               # %if.end.105
	movq	256(%rsp), %rbx
	testl	%ebp, %ebp
	jle	.LBB4_16
# BB#18:                                # %do.body
	movq	192(%rsp), %rdi
	movzwl	(%rdi), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB4_19
# BB#20:                                # %do.end
	testl	%r14d, %r14d
	je	.LBB4_24
# BB#21:                                # %lor.lhs.false.125
	movl	$10, %ebp
	testl	%r15d, %r15d
	je	.LBB4_22
# BB#23:                                # %lor.lhs.false.125
	movq	192(%r12), %rax
	cmpl	$9, 128(%rax)
	movl	$zsetcachedevice2, %r15d
	jne	.LBB4_25
.LBB4_24:                               # %if.then.131
	movapd	64(%rsp), %xmm0
	movapd	%xmm0, 112(%rsp)
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 128(%rsp)
	movl	$zsetcachedevice2, %r15d
	movl	$10, %ebp
	jmp	.LBB4_25
.LBB4_16:                               # %lor.lhs.false.107
	movq	%r12, %rdi
	callq	zchar_show_width_only
	testl	%eax, %eax
	je	.LBB4_36
# BB#17:                                # %if.else.139
	movq	$zpop, 176(%rsp)
	movw	$3968, 168(%rsp)        # imm = 0xF80
	movl	$0, 172(%rsp)
	leaq	168(%rsp), %rax
	movq	%rax, 192(%rsp)
	testl	%r14d, %r14d
	movl	$zsetcachedevice, %eax
	movl	$zsetcachedevice2, %r15d
	cmoveq	%rax, %r15
	leal	6(,%r14,4), %ebp
	jmp	.LBB4_25
.LBB4_19:                               # %if.then.121
	callq	check_proc_failed
	jmp	.LBB4_45
.LBB4_36:                               # %if.end.305
	leaq	64(%rsp), %rsi
	movq	%r12, %rdi
	testl	%r14d, %r14d
	je	.LBB4_38
# BB#37:                                # %cond.true.309
	callq	gs_text_setcachedevice2
	jmp	.LBB4_39
.LBB4_38:                               # %cond.false.312
	callq	gs_text_setcachedevice
.LBB4_39:                               # %cond.end.315
	movq	32(%rsp), %rcx          # 8-byte Reload
	testl	%eax, %eax
	js	.LBB4_45
# BB#40:                                # %cleanup.cont.323
	movq	48(%rsp), %rdx          # 8-byte Reload
	testq	%rdx, %rdx
	je	.LBB4_44
# BB#41:                                # %do.body.327
	leaq	32(%rcx), %rax
	cmpq	640(%r13), %rax
	jbe	.LBB4_43
# BB#42:                                # %if.then.334
	movl	$2, 688(%r13)
	movl	$-16, %eax
	jmp	.LBB4_45
.LBB4_22:
	movl	$zsetcachedevice2, %r15d
.LBB4_25:                               # %if.end.148
	leaq	520(%r13), %rbx
	movq	536(%r13), %rax
	addq	$-48, %rax
	cmpq	%rax, 520(%r13)
	movq	32(%rsp), %r14          # 8-byte Reload
	jbe	.LBB4_27
# BB#26:                                # %if.then.156
	movl	$3, %esi
	movq	%rbx, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB4_45
.LBB4_27:                               # %if.end.168
	movq	48(%rsp), %rdi          # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB4_31
# BB#28:                                # %do.body.172
	leal	3(%rbp), %ecx
	movq	%rcx, %rax
	shlq	$4, %rax
	leaq	(%rax,%r14), %rax
	cmpq	640(%r13), %rax
	ja	.LBB4_29
# BB#30:                                # %if.else.184
	movq	%rax, 624(%r13)
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	leal	2(%rbp), %edx
	shlq	$4, %rdx
	movq	%rax, %rsi
	subq	%rdx, %rsi
	negq	%rdx
	movss	%xmm0, 8(%rsi)
	movw	$4096, (%rax,%rdx)      # imm = 0x1000
	movsd	8(%rdi), %xmm0          # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movl	%ebp, %edx
	orl	$1, %edx
	shlq	$4, %rdx
	movq	%rax, %rsi
	subq	%rdx, %rsi
	negq	%rdx
	movss	%xmm0, 8(%rsi)
	movw	$4096, (%rax,%rdx)      # imm = 0x1000
	jmp	.LBB4_33
.LBB4_31:                               # %do.body.218
	movl	%ebp, %ecx
	orl	$1, %ecx
	movq	%rcx, %rax
	shlq	$4, %rax
	leaq	(%rax,%r14), %rax
	cmpq	640(%r13), %rax
	jbe	.LBB4_32
.LBB4_29:                               # %if.then.180
	movl	%ecx, 688(%r13)
	movl	$-16, %eax
	jmp	.LBB4_45
.LBB4_32:                               # %if.else.232
	movq	%rax, 624(%r13)
.LBB4_33:                               # %if.end.239
	movl	%ebp, %edx
	subq	%rdx, %rcx
	shlq	$4, %rcx
	leaq	8(%r14,%rcx), %rcx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB4_34:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movsd	64(%rsp,%rsi,8), %xmm0  # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rcx)
	movw	$4096, -8(%rcx)         # imm = 0x1000
	incq	%rsi
	addq	$16, %rcx
	cmpq	%rdx, %rsi
	jl	.LBB4_34
# BB#35:                                # %for.end
	movq	56(%rsp), %rcx          # 8-byte Reload
	movups	(%rcx), %xmm0
	movups	%xmm0, (%rax)
	movq	(%rbx), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, (%rbx)
	movq	256(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, (%rbx)
	movq	%r15, 24(%rax)
	movq	(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, (%rbx)
	movq	192(%rsp), %rcx
	movupd	(%rcx), %xmm0
	movupd	%xmm0, 16(%rax)
	movl	$5, %eax
	jmp	.LBB4_45
.LBB4_43:                               # %if.else.338
	movq	%rax, 624(%r13)
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 24(%rcx)
	movw	$4096, 16(%rcx)         # imm = 0x1000
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 40(%rcx)
	movw	$4096, 32(%rcx)         # imm = 0x1000
.LBB4_44:                               # %if.end.359
	movq	264(%rsp), %rax
	movq	%rbx, (%rax)
	xorl	%eax, %eax
.LBB4_45:                               # %cleanup.360
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	zchar_set_cache, .Lfunc_end4-zchar_set_cache
	.cfi_endproc

	.globl	zchar_charstring_data
	.align	16, 0x90
	.type	zchar_charstring_data,@function
zchar_charstring_data:                  # @zchar_charstring_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp40:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 48
	subq	$96, %rsp
.Ltmp43:
	.cfi_def_cfa_offset 144
.Ltmp44:
	.cfi_offset %rbx, -48
.Ltmp45:
	.cfi_offset %r12, -40
.Ltmp46:
	.cfi_offset %r13, -32
.Ltmp47:
	.cfi_offset %r14, -24
.Ltmp48:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rdi, %r15
	movq	72(%r15), %rdi
	addq	$64, %rdi
	leaq	8(%rsp), %rdx
	callq	dict_find
	movl	$-21, %r13d
	testl	%eax, %eax
	jle	.LBB5_18
# BB#1:                                 # %if.end
	movq	8(%rsp), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$18, %eax
	jne	.LBB5_2
# BB#17:                                # %if.end.9
	movq	8(%rbx), %rsi
	movl	4(%rbx), %edx
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	gs_glyph_data_from_string
	jmp	.LBB5_18
.LBB5_2:                                # %if.then.3
	movl	$-20, %r13d
	cmpl	$1, 128(%r15)
	jne	.LBB5_18
# BB#3:                                 # %land.lhs.true
	movzwl	(%rbx), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB5_18
# BB#4:                                 # %land.lhs.true.i
	cmpl	$4, 4(%rbx)
	jne	.LBB5_18
# BB#5:                                 # %if.then.i
	movq	16(%r15), %r12
	leaq	32(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	array_get
	leaq	48(%rsp), %rcx
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	array_get
	leaq	64(%rsp), %rcx
	movl	$2, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	array_get
	leaq	80(%rsp), %rcx
	movl	$3, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	array_get
	movzbl	33(%rsp), %eax
	cmpl	$13, %eax
	jne	.LBB5_18
# BB#6:                                 # %land.lhs.true.14.i
	movzbl	49(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB5_18
# BB#7:                                 # %land.lhs.true.22.i
	cmpq	$0, 56(%rsp)
	jne	.LBB5_18
# BB#8:                                 # %land.lhs.true.26.i
	movzbl	65(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB5_18
# BB#9:                                 # %land.lhs.true.34.i
	cmpq	$0, 72(%rsp)
	jne	.LBB5_18
# BB#10:                                # %land.lhs.true.40.i
	movzbl	81(%rsp), %eax
	cmpl	$13, %eax
	jne	.LBB5_18
# BB#11:                                # %if.then.48.i
	movq	192(%r12), %rax
	movq	120(%rax), %rdi
	leaq	16(%rsp), %rdx
	movl	$.L.str.4, %esi
	callq	names_enter_string
	movq	40(%rsp), %rax
	cmpq	24(%rsp), %rax
	jne	.LBB5_18
# BB#12:                                # %if.then.56.i
	movq	192(%r12), %rax
	movq	120(%rax), %rdi
	leaq	16(%rsp), %rdx
	movl	$.L.str.5, %esi
	callq	names_enter_string
	movq	88(%rsp), %rax
	cmpq	24(%rsp), %rax
	jne	.LBB5_18
# BB#13:                                # %if.then.7
	movl	512(%r15), %eax
	leal	4(%rax), %ecx
	testl	%eax, %eax
	movl	$4, %ebx
	cmovgl	%ecx, %ebx
	movq	16(%r15), %rdi
	movl	$.L.str.6, %edx
	movl	%ebx, %esi
	callq	*136(%rdi)
	movq	%rax, %r12
	movl	$-25, %r13d
	testq	%r12, %r12
	je	.LBB5_18
# BB#14:                                # %if.end.i
	movq	%r14, %rdi
	movq	%r12, %rsi
	movl	%ebx, %edx
	movq	%r15, %rcx
	callq	gs_glyph_data_from_string
	movslq	512(%r15), %rax
	testq	%rax, %rax
	js	.LBB5_15
# BB#16:                                # %if.else.i
	movw	$4330, 32(%rsp)         # imm = 0x10EA
	movq	%r12, %rdi
	addq	%rax, %rdi
	movl	$charstring_make_notdef.char_data, %esi
	movl	$4, %edx
	callq	memcpy
	leaq	32(%rsp), %rcx
	movq	%r12, %rdi
	movq	%r12, %rsi
	movl	%ebx, %edx
	callq	gs_type1_encrypt
	xorl	%r13d, %r13d
	jmp	.LBB5_18
.LBB5_15:                               # %if.then.11.i
	movl	$charstring_make_notdef.char_data, %esi
	movl	$4, %edx
	movq	%r12, %rdi
	callq	memcpy
	xorl	%r13d, %r13d
.LBB5_18:                               # %cleanup
	movl	%r13d, %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	zchar_charstring_data, .Lfunc_end5-zchar_charstring_data
	.cfi_endproc

	.globl	zchar_enumerate_glyph
	.align	16, 0x90
	.type	zchar_enumerate_glyph,@function
zchar_enumerate_glyph:                  # @zchar_enumerate_glyph
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp51:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp52:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp54:
	.cfi_def_cfa_offset 80
.Ltmp55:
	.cfi_offset %rbx, -48
.Ltmp56:
	.cfi_offset %r12, -40
.Ltmp57:
	.cfi_offset %r13, -32
.Ltmp58:
	.cfi_offset %r14, -24
.Ltmp59:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB6_11
# BB#1:                                 # %if.end
	movl	(%r12), %eax
	testl	%eax, %eax
	jle	.LBB6_3
# BB#2:
	decl	%eax
	jmp	.LBB6_4
.LBB6_3:                                # %if.then.4
	movq	%rbx, %rdi
	callq	dict_first
.LBB6_4:                                # %next.preheader
	leaq	(%rsp), %r13
.LBB6_5:                                # %next
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movl	%eax, %esi
	movq	%r13, %rdx
	callq	dict_next
	leal	1(%rax), %ecx
	movl	%ecx, (%r12)
	testl	%eax, %eax
	js	.LBB6_11
# BB#6:                                 # %if.then.9
                                        #   in Loop: Header=BB6_5 Depth=1
	movzbl	1(%rsp), %ecx
	cmpl	$13, %ecx
	je	.LBB6_9
# BB#7:                                 # %if.then.9
                                        #   in Loop: Header=BB6_5 Depth=1
	cmpl	$11, %ecx
	jne	.LBB6_5
# BB#8:                                 # %sw.bb
	movl	$2147483648, %eax       # imm = 0x80000000
	addq	8(%rsp), %rax
	jmp	.LBB6_10
.LBB6_9:                                # %sw.bb.17
	movq	192(%r15), %rax
	movq	120(%rax), %rdi
	leaq	(%rsp), %rsi
	callq	names_index
	movl	%eax, %eax
.LBB6_10:                               # %cleanup
	movq	%rax, (%r14)
.LBB6_11:                               # %cleanup
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end6:
	.size	zchar_enumerate_glyph, .Lfunc_end6-zchar_enumerate_glyph
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Metrics"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Metrics2"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"CDevProc"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"File"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"pop"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"setcharwidth"
	.size	.L.str.5, 13

	.type	charstring_make_notdef.char_data,@object # @charstring_make_notdef.char_data
	.section	.rodata,"a",@progbits
charstring_make_notdef.char_data:
	.ascii	"\213\213\r\016"
	.size	charstring_make_notdef.char_data, 4

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"charstring_make_notdef"
	.size	.L.str.6, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
