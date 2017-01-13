	.text
	.file	"gstext.bc"
	.align	16, 0x90
	.type	text_params_enum_ptrs,@function
text_params_enum_ptrs:                  # @text_params_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	cmpl	$2, %ecx
	je	.LBB0_12
# BB#1:                                 # %entry
	cmpl	$1, %ecx
	jne	.LBB0_2
# BB#10:                                # %sw.bb.26
	xorl	%eax, %eax
	testb	$1, 1(%rsi)
	je	.LBB0_14
# BB#11:                                # %cond.true
	movq	64(%rsi), %rax
	jmp	.LBB0_14
.LBB0_12:                               # %sw.bb.31
	xorl	%eax, %eax
	testb	$1, 1(%rsi)
	je	.LBB0_14
# BB#13:                                # %cond.true.35
	movq	72(%rsi), %rax
	jmp	.LBB0_14
.LBB0_2:                                # %entry
	testl	%ecx, %ecx
	jne	.LBB0_16
# BB#3:                                 # %sw.bb
	movl	(%rsi), %eax
	testb	$1, %al
	jne	.LBB0_4
# BB#5:                                 # %if.end
	testb	$2, %al
	jne	.LBB0_6
# BB#7:                                 # %if.end.10
	testb	$4, %al
	jne	.LBB0_6
# BB#8:                                 # %if.end.17
	testb	$8, %al
	jne	.LBB0_6
# BB#9:                                 # %if.end.24
	movq	$0, (%r8)
	jmp	.LBB0_15
.LBB0_4:                                # %if.then
	movq	8(%rsi), %rax
	movq	%rax, (%r8)
	movl	16(%rsi), %eax
	movl	%eax, 8(%r8)
	movl	$ptr_const_string_procs, %eax
	retq
.LBB0_6:                                # %if.then.6
	movq	8(%rsi), %rax
.LBB0_14:                               # %cond.end.37
	movq	%rax, (%r8)
.LBB0_15:                               # %cleanup
	movl	$ptr_struct_procs, %eax
.LBB0_16:                               # %cleanup
	retq
.Lfunc_end0:
	.size	text_params_enum_ptrs, .Lfunc_end0-text_params_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	text_params_reloc_ptrs,@function
text_params_reloc_ptrs:                 # @text_params_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp2:
	.cfi_def_cfa_offset 48
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movl	(%rbx), %eax
	testb	$1, %al
	jne	.LBB1_1
# BB#2:                                 # %if.else
	testb	$2, %al
	jne	.LBB1_5
# BB#3:                                 # %if.else.15
	testb	$4, %al
	jne	.LBB1_5
# BB#4:                                 # %if.else.25
	testb	$8, %al
	je	.LBB1_7
.LBB1_5:                                # %if.then.29
	movq	(%r14), %rax
	movq	8(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	jmp	.LBB1_6
.LBB1_1:                                # %if.then
	movq	8(%rbx), %rax
	movq	%rax, 8(%rsp)
	movl	16(%rbx), %eax
	movl	%eax, 16(%rsp)
	movq	(%r14), %rax
	leaq	8(%rsp), %rdi
	movq	%r14, %rsi
	callq	*16(%rax)
	movq	8(%rsp), %rax
.LBB1_6:                                # %if.end.37
	movq	%rax, 8(%rbx)
.LBB1_7:                                # %if.end.37
	testb	$1, 1(%rbx)
	je	.LBB1_9
# BB#8:                                 # %if.then.41
	movq	(%r14), %rax
	movq	64(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 64(%rbx)
	movq	(%r14), %rax
	movq	72(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 72(%rbx)
.LBB1_9:                                # %if.end.48
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	text_params_reloc_ptrs, .Lfunc_end1-text_params_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	text_enum_enum_ptrs,@function
text_enum_enum_ptrs:                    # @text_enum_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 16
.Ltmp6:
	.cfi_offset %rbx, -16
	movq	%r8, %rbx
	movl	%ecx, %eax
	cmpl	$8, %ecx
	jbe	.LBB2_1
# BB#4:                                 # %if.end
	leal	-9(%rcx), %edx
	movl	240(%rsi), %eax
	cmpl	%eax, %edx
	jle	.LBB2_5
# BB#6:                                 # %if.end.11
	addl	$-10, %ecx
	subl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$2, %ecx
	je	.LBB2_18
# BB#7:                                 # %if.end.11
	cmpl	$1, %ecx
	jne	.LBB2_8
# BB#16:                                # %sw.bb.26.i
	xorl	%eax, %eax
	testb	$1, 1(%rsi)
	je	.LBB2_29
# BB#17:                                # %cond.true.i
	movq	64(%rsi), %rax
	jmp	.LBB2_29
.LBB2_1:                                # %entry
	jmpq	*.LJTI2_0(,%rax,8)
.LBB2_20:                               # %sw.bb
	movq	88(%rsi), %rdi
	callq	gx_device_enum_ptr
	jmp	.LBB2_29
.LBB2_5:                                # %if.then.8
	movslq	%edx, %rax
	shlq	$4, %rax
	movq	248(%rsi,%rax), %rax
	jmp	.LBB2_29
.LBB2_18:                               # %sw.bb.31.i
	xorl	%eax, %eax
	testb	$1, 1(%rsi)
	je	.LBB2_29
# BB#19:                                # %cond.true.35.i
	movq	72(%rsi), %rax
	jmp	.LBB2_29
.LBB2_8:                                # %if.end.11
	testl	%ecx, %ecx
	jne	.LBB2_31
# BB#9:                                 # %sw.bb.i
	movl	(%rsi), %eax
	testb	$1, %al
	jne	.LBB2_10
# BB#11:                                # %if.end.i
	testb	$2, %al
	jne	.LBB2_12
# BB#13:                                # %if.end.10.i
	testb	$4, %al
	jne	.LBB2_12
# BB#14:                                # %if.end.17.i
	testb	$8, %al
	je	.LBB2_15
.LBB2_12:                               # %if.then.6.i
	movq	8(%rsi), %rax
	jmp	.LBB2_29
.LBB2_22:                               # %sw.bb.17
	movq	96(%rsi), %rdi
	callq	gx_device_enum_ptr
	jmp	.LBB2_29
.LBB2_23:                               # %sw.bb.20
	movq	104(%rsi), %rax
	jmp	.LBB2_29
.LBB2_24:                               # %sw.bb.22
	movq	112(%rsi), %rax
	jmp	.LBB2_29
.LBB2_25:                               # %sw.bb.24
	movq	120(%rsi), %rax
	jmp	.LBB2_29
.LBB2_26:                               # %sw.bb.26
	movq	128(%rsi), %rax
	jmp	.LBB2_29
.LBB2_27:                               # %sw.bb.28
	movq	136(%rsi), %rax
	jmp	.LBB2_29
.LBB2_28:                               # %sw.bb.30
	movq	192(%rsi), %rax
.LBB2_29:                               # %cleanup
	movq	%rax, (%rbx)
.LBB2_30:                               # %cleanup
	movl	$ptr_struct_procs, %eax
.LBB2_31:                               # %cleanup
	popq	%rbx
	retq
.LBB2_2:                                # %if.then
	movq	224(%rsi), %rax
	testq	%rax, %rax
	je	.LBB2_15
# BB#3:                                 # %if.then.2
	movl	72(%rax), %ecx
	negq	%rcx
	imulq	$112, %rcx, %rcx
	addq	%rax, %rcx
	movq	%rcx, (%rbx)
	jmp	.LBB2_30
.LBB2_15:                               # %if.else
	movq	$0, (%rbx)
	jmp	.LBB2_30
.LBB2_10:                               # %if.then.i
	movq	8(%rsi), %rax
	movq	%rax, (%rbx)
	movl	16(%rsi), %eax
	movl	%eax, 8(%rbx)
	movl	$ptr_const_string_procs, %eax
	popq	%rbx
	retq
.Lfunc_end2:
	.size	text_enum_enum_ptrs, .Lfunc_end2-text_enum_enum_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_20
	.quad	.LBB2_22
	.quad	.LBB2_23
	.quad	.LBB2_24
	.quad	.LBB2_25
	.quad	.LBB2_26
	.quad	.LBB2_27
	.quad	.LBB2_28
	.quad	.LBB2_2

	.text
	.align	16, 0x90
	.type	text_enum_reloc_ptrs,@function
text_enum_reloc_ptrs:                   # @text_enum_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp9:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp11:
	.cfi_def_cfa_offset 48
.Ltmp12:
	.cfi_offset %rbx, -40
.Ltmp13:
	.cfi_offset %r12, -32
.Ltmp14:
	.cfi_offset %r14, -24
.Ltmp15:
	.cfi_offset %r15, -16
	movq	%rcx, %r15
	movq	%rdi, %r14
	movl	$88, %esi
	movl	$st_gs_text_params, %edx
	callq	text_params_reloc_ptrs
	movq	88(%r14), %rdi
	movq	%r15, %rsi
	callq	gx_device_reloc_ptr
	movq	%rax, 88(%r14)
	movq	96(%r14), %rdi
	movq	%r15, %rsi
	callq	gx_device_reloc_ptr
	movq	%rax, 96(%r14)
	movq	(%r15), %rax
	movq	104(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 104(%r14)
	movq	(%r15), %rax
	movq	112(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 112(%r14)
	movq	(%r15), %rax
	movq	120(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 120(%r14)
	movq	(%r15), %rax
	movq	128(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 128(%r14)
	movq	(%r15), %rax
	movq	136(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 136(%r14)
	movq	(%r15), %rax
	movq	192(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 192(%r14)
	movq	224(%r14), %rax
	testq	%rax, %rax
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	(%r15), %rcx
	movl	72(%rax), %edx
	negq	%rdx
	imulq	$112, %rdx, %rdi
	addq	%rax, %rdi
	movq	%r15, %rsi
	callq	*(%rcx)
	movq	224(%r14), %rcx
	movl	72(%rcx), %ecx
	imulq	$112, %rcx, %rcx
	addq	%rax, %rcx
	movq	%rcx, 224(%r14)
.LBB3_2:                                # %for.cond.preheader
	cmpl	$0, 240(%r14)
	js	.LBB3_5
# BB#3:                                 # %for.body.lr.ph
	leaq	248(%r14), %rbx
	movq	$-1, %r12
	.align	16, 0x90
.LBB3_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rax
	movq	(%rbx), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, (%rbx)
	movslq	240(%r14), %rax
	incq	%r12
	addq	$16, %rbx
	cmpq	%rax, %r12
	jl	.LBB3_4
.LBB3_5:                                # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	text_enum_reloc_ptrs, .Lfunc_end3-text_enum_reloc_ptrs
	.cfi_endproc

	.globl	gx_device_text_begin
	.align	16, 0x90
	.type	gx_device_text_begin,@function
gx_device_text_begin:                   # @gx_device_text_begin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp18:
	.cfi_def_cfa_offset 48
.Ltmp19:
	.cfi_offset %rbx, -24
.Ltmp20:
	.cfi_offset %r14, -16
	movq	%rcx, %r10
	movq	%rdx, %r11
	movl	(%r11), %edx
	movl	%edx, %ebx
	andl	$63, %ebx
	je	.LBB4_9
# BB#1:                                 # %lor.lhs.false
	movl	%edx, %eax
	andl	$65024, %eax            # imm = 0xFE00
	je	.LBB4_9
# BB#2:                                 # %lor.lhs.false.4
	leal	63(%rdx), %ecx
	testl	%ebx, %ecx
	jne	.LBB4_9
# BB#3:                                 # %lor.lhs.false.11
	leal	65535(%rax), %ecx
	testl	%eax, %ecx
	jne	.LBB4_9
# BB#4:                                 # %lor.lhs.false.19
	testb	$-64, %dl
	je	.LBB4_6
# BB#5:                                 # %lor.lhs.false.19
	movl	%edx, %eax
	andl	$256, %eax              # imm = 0x100
	jne	.LBB4_9
.LBB4_6:                                # %lor.lhs.false.26
	testb	$48, %dl
	je	.LBB4_8
# BB#7:                                 # %land.lhs.true.30
	cmpl	$1, 16(%r11)
	jne	.LBB4_9
.LBB4_8:                                # %if.end
	movq	64(%rsp), %r14
	movq	56(%rsp), %rcx
	movl	%edx, %ebx
	andl	$131584, %ebx           # imm = 0x20200
	xorl	%eax, %eax
	cmpl	$512, %ebx              # imm = 0x200
	cmoveq	%rax, %r8
	testb	$4, %dh
	cmovneq	48(%rsp), %rax
	movq	%r14, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%r11, %rdx
	movq	%r10, %rcx
	callq	*1480(%rdi)
	jmp	.LBB4_10
.LBB4_9:                                # %return
	movl	$-15, %eax
.LBB4_10:                               # %return
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end4:
	.size	gx_device_text_begin, .Lfunc_end4-gx_device_text_begin
	.cfi_endproc

	.globl	gs_text_enum_init
	.align	16, 0x90
	.type	gs_text_enum_init,@function
gs_text_enum_init:                      # @gs_text_enum_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp23:
	.cfi_def_cfa_offset 32
.Ltmp24:
	.cfi_offset %rbx, -24
.Ltmp25:
	.cfi_offset %r14, -16
	movq	%rdx, %rbx
	movq	56(%rsp), %r10
	movq	48(%rsp), %r11
	movq	40(%rsp), %r14
	movq	32(%rsp), %rdx
	movq	80(%r8), %rax
	movq	%rax, 80(%rdi)
	movups	64(%r8), %xmm0
	movups	%xmm0, 64(%rdi)
	movups	(%r8), %xmm0
	movups	16(%r8), %xmm1
	movups	32(%r8), %xmm2
	movups	48(%r8), %xmm3
	movups	%xmm3, 48(%rdi)
	movups	%xmm2, 32(%rdi)
	movups	%xmm1, 16(%rdi)
	movups	%xmm0, (%rdi)
	movq	%rbx, 88(%rdi)
	movq	$0, 96(%rdi)
	movq	%rcx, 104(%rdi)
	movq	%r9, 112(%rdi)
	movq	%rdx, 120(%rdi)
	movq	%r14, 128(%rdi)
	movq	%r11, 136(%rdi)
	movq	%r10, 144(%rdi)
	movq	%rsi, 152(%rdi)
	movq	$0, 376(%rdi)
	movq	$0, 184(%rdi)
	movl	$0, 216(%rdi)
	movl	$0, 212(%rdi)
	movq	%r9, 192(%rdi)
	movl	$0, 232(%rdi)
	movl	$0, 236(%rdi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 360(%rdi)
	movq	$0, 224(%rdi)
	movl	$0, 384(%rdi)
	movq	$2147483647, 200(%rdi)  # imm = 0x7FFFFFFF
	movl	$0, 348(%rdi)
	movq	%r9, %rsi
	callq	*248(%r9)
	testq	%rbx, %rbx
	je	.LBB5_3
# BB#1:                                 # %entry
	testl	%eax, %eax
	js	.LBB5_3
# BB#2:                                 # %do.body.10
	incq	56(%rbx)
.LBB5_3:                                # %if.end.16
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end5:
	.size	gs_text_enum_init, .Lfunc_end5-gs_text_enum_init
	.cfi_endproc

	.globl	gs_text_enum_copy_dynamic
	.align	16, 0x90
	.type	gs_text_enum_copy_dynamic,@function
gs_text_enum_copy_dynamic:              # @gs_text_enum_copy_dynamic
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
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
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movslq	240(%rbx), %rdx
	testq	%rdx, %rdx
	movq	192(%rbx), %rax
	movq	%rax, 192(%r14)
	movl	232(%rbx), %eax
	movl	%eax, 232(%r14)
	movl	236(%rbx), %eax
	movl	%eax, 236(%r14)
	movl	%edx, 240(%r14)
	movups	360(%rbx), %xmm0
	movups	%xmm0, 360(%r14)
	movq	224(%rbx), %rax
	movq	%rax, 224(%r14)
	movl	384(%rbx), %eax
	movl	%eax, 384(%r14)
	movq	200(%rbx), %rax
	movq	%rax, 200(%r14)
	js	.LBB6_2
# BB#1:                                 # %if.then
	leaq	248(%r14), %rdi
	leaq	248(%rbx), %rsi
	shlq	$4, %rdx
	addq	$16, %rdx
	callq	memcpy
.LBB6_2:                                # %if.end
	testl	%ebp, %ebp
	je	.LBB6_4
# BB#3:                                 # %if.then.15
	movl	344(%rbx), %eax
	movl	%eax, 344(%r14)
	movups	416(%rbx), %xmm0
	movups	432(%rbx), %xmm1
	movups	%xmm1, 432(%r14)
	movups	%xmm0, 416(%r14)
.LBB6_4:                                # %if.end.18
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gs_text_enum_copy_dynamic, .Lfunc_end6-gs_text_enum_copy_dynamic
	.cfi_endproc

	.globl	gs_text_begin
	.align	16, 0x90
	.type	gs_text_begin,@function
gs_text_begin:                          # @gs_text_begin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp34:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp35:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp37:
	.cfi_def_cfa_offset 80
.Ltmp38:
	.cfi_offset %rbx, -48
.Ltmp39:
	.cfi_offset %r12, -40
.Ltmp40:
	.cfi_offset %r13, -32
.Ltmp41:
	.cfi_offset %r14, -24
.Ltmp42:
	.cfi_offset %r15, -16
	movq	%rcx, %r12
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %r13
	movq	$0, 24(%rsp)
	movl	(%r14), %ecx
	testb	$-4, %ch
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$-14, %eax
	cmpl	$0, 168(%r13)
	je	.LBB7_23
.LBB7_2:                                # %if.end.3
	movq	1792(%r13), %rax
	movl	128(%rax), %edx
	cmpq	$53, %rdx
	ja	.LBB7_4
# BB#3:                                 # %if.end.3
	movabsq	$13510798882111496, %rsi # imm = 0x30000000000008
	btq	%rdx, %rsi
	jb	.LBB7_8
.LBB7_4:                                # %land.lhs.true.11
	movss	80(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB7_8
	jp	.LBB7_8
# BB#5:                                 # %land.lhs.true.14
	movss	84(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB7_8
	jp	.LBB7_8
# BB#6:                                 # %land.lhs.true.18
	movss	88(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB7_8
	jp	.LBB7_8
# BB#7:                                 # %land.lhs.true.22
	movss	92(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$-23, %eax
	ucomiss	%xmm0, %xmm1
	jne	.LBB7_8
	jnp	.LBB7_23
.LBB7_8:                                # %if.end.27
	testb	$4, %ch
	je	.LBB7_10
# BB#9:                                 # %if.then.31
	leaq	24(%rsp), %rsi
	movq	%r13, %rdi
	callq	gx_effective_clip_path
	testl	%eax, %eax
	js	.LBB7_23
.LBB7_10:                               # %if.end.35
	movq	1872(%r13), %rdi
	movl	$1, %esi
	callq	*1688(%rdi)
	movq	1760(%r13), %rdi
	movq	(%rdi), %rbx
	movl	$gx_dc_type_data_none, %eax
	cmpq	%rax, %rbx
	jne	.LBB7_13
# BB#11:                                # %cond.end
	movq	%r13, %rdi
	callq	gx_remap_color
	testl	%eax, %eax
	jne	.LBB7_23
# BB#12:                                # %cond.end.if.end.41_crit_edge
	movq	1760(%r13), %rdi
	movq	(%rdi), %rbx
.LBB7_13:                               # %if.end.41
	movq	1872(%r13), %rdx
	xorl	%ecx, %ecx
	movq	%r13, %rsi
	callq	*32(%rbx)
	testl	%eax, %eax
	js	.LBB7_23
# BB#14:                                # %if.end.53
	movq	1872(%r13), %rdi
	movl	$0, 984(%rdi)
	movl	(%r14), %edx
	movl	%edx, %ecx
	andl	$63, %ecx
	movl	$-15, %eax
	je	.LBB7_23
# BB#15:                                # %lor.lhs.false.i
	movl	%edx, %esi
	andl	$65024, %esi            # imm = 0xFE00
	je	.LBB7_23
# BB#16:                                # %lor.lhs.false.4.i
	leal	63(%rdx), %ebx
	testl	%ecx, %ebx
	jne	.LBB7_23
# BB#17:                                # %lor.lhs.false.11.i
	leal	65535(%rsi), %ecx
	testl	%esi, %ecx
	jne	.LBB7_23
# BB#18:                                # %lor.lhs.false.19.i
	movq	1792(%r13), %rcx
	movq	1680(%r13), %r8
	movq	1760(%r13), %r9
	movq	24(%rsp), %rsi
	testb	$-64, %dl
	je	.LBB7_20
# BB#19:                                # %lor.lhs.false.19.i
	movl	%edx, %ebx
	andl	$256, %ebx              # imm = 0x100
	jne	.LBB7_23
.LBB7_20:                               # %lor.lhs.false.26.i
	testb	$48, %dl
	je	.LBB7_22
# BB#21:                                # %land.lhs.true.30.i
	cmpl	$1, 16(%r14)
	jne	.LBB7_23
.LBB7_22:                               # %if.end.i
	movl	%edx, %eax
	andl	$131584, %eax           # imm = 0x20200
	xorl	%ebx, %ebx
	cmpl	$512, %eax              # imm = 0x200
	cmoveq	%rbx, %r8
	testb	$4, %dh
	cmoveq	%rbx, %rsi
	movq	%r12, 16(%rsp)
	movq	%r15, 8(%rsp)
	movq	%rsi, (%rsp)
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	*1480(%rdi)
.LBB7_23:                               # %cleanup
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end7:
	.size	gs_text_begin, .Lfunc_end7-gs_text_begin
	.cfi_endproc

	.globl	gs_text_update_dev_color
	.align	16, 0x90
	.type	gs_text_update_dev_color,@function
gs_text_update_dev_color:               # @gs_text_update_dev_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp45:
	.cfi_def_cfa_offset 32
.Ltmp46:
	.cfi_offset %rbx, -24
.Ltmp47:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	1872(%rbx), %rdi
	movl	$1, %esi
	callq	*1688(%rdi)
	cmpq	$0, 128(%r14)
	je	.LBB8_3
# BB#1:                                 # %if.then
	movq	1760(%rbx), %rax
	movl	$gx_dc_type_data_none, %ecx
	cmpq	%rcx, (%rax)
	jne	.LBB8_3
# BB#2:                                 # %cond.end
	movq	%rbx, %rdi
	callq	gx_remap_color
	testl	%eax, %eax
	jne	.LBB8_4
.LBB8_3:                                # %if.end.5
	xorl	%eax, %eax
.LBB8_4:                                # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end8:
	.size	gs_text_update_dev_color, .Lfunc_end8-gs_text_update_dev_color
	.cfi_endproc

	.globl	gs_show_begin
	.align	16, 0x90
	.type	gs_show_begin,@function
gs_show_begin:                          # @gs_show_begin
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$88, %rsp
.Ltmp48:
	.cfi_def_cfa_offset 96
	movl	$393729, %eax           # imm = 0x60201
	cmpl	$3, 252(%rdi)
	je	.LBB9_2
# BB#1:                                 # %select.mid
	movl	$132097, %eax           # imm = 0x20401
.LBB9_2:                                # %select.end
	movl	%eax, (%rsp)
	movq	%rsi, 8(%rsp)
	movl	%edx, 16(%rsp)
	leaq	(%rsp), %rsi
	movq	%rcx, %rdx
	movq	%r8, %rcx
	callq	gs_text_begin
	addq	$88, %rsp
	retq
.Lfunc_end9:
	.size	gs_show_begin, .Lfunc_end9-gs_show_begin
	.cfi_endproc

	.globl	gs_ashow_begin
	.align	16, 0x90
	.type	gs_ashow_begin,@function
gs_ashow_begin:                         # @gs_ashow_begin
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$88, %rsp
.Ltmp49:
	.cfi_def_cfa_offset 96
	movl	$393793, %eax           # imm = 0x60241
	cmpl	$3, 252(%rdi)
	je	.LBB10_2
# BB#1:                                 # %select.mid
	movl	$132161, %eax           # imm = 0x20441
.LBB10_2:                               # %select.end
	movl	%eax, (%rsp)
	movq	%rsi, 8(%rsp)
	movl	%edx, 16(%rsp)
	movsd	%xmm0, 24(%rsp)
	movsd	%xmm1, 32(%rsp)
	leaq	(%rsp), %rsi
	movq	%rcx, %rdx
	movq	%r8, %rcx
	callq	gs_text_begin
	addq	$88, %rsp
	retq
.Lfunc_end10:
	.size	gs_ashow_begin, .Lfunc_end10-gs_ashow_begin
	.cfi_endproc

	.globl	gs_widthshow_begin
	.align	16, 0x90
	.type	gs_widthshow_begin,@function
gs_widthshow_begin:                     # @gs_widthshow_begin
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$88, %rsp
.Ltmp50:
	.cfi_def_cfa_offset 96
	movl	$393857, %eax           # imm = 0x60281
	cmpl	$3, 252(%rdi)
	je	.LBB11_2
# BB#1:                                 # %select.mid
	movl	$132225, %eax           # imm = 0x20481
.LBB11_2:                               # %select.end
	movl	%eax, (%rsp)
	movq	%rdx, 8(%rsp)
	movl	%ecx, 16(%rsp)
	movsd	%xmm0, 40(%rsp)
	movsd	%xmm1, 48(%rsp)
	movq	%rsi, 56(%rsp)
	leaq	(%rsp), %rsi
	movq	%r8, %rdx
	movq	%r9, %rcx
	callq	gs_text_begin
	addq	$88, %rsp
	retq
.Lfunc_end11:
	.size	gs_widthshow_begin, .Lfunc_end11-gs_widthshow_begin
	.cfi_endproc

	.globl	gs_awidthshow_begin
	.align	16, 0x90
	.type	gs_awidthshow_begin,@function
gs_awidthshow_begin:                    # @gs_awidthshow_begin
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$88, %rsp
.Ltmp51:
	.cfi_def_cfa_offset 96
	movl	$393921, %eax           # imm = 0x602C1
	cmpl	$3, 252(%rdi)
	je	.LBB12_2
# BB#1:                                 # %select.mid
	movl	$132289, %eax           # imm = 0x204C1
.LBB12_2:                               # %select.end
	movl	%eax, (%rsp)
	movq	%rdx, 8(%rsp)
	movl	%ecx, 16(%rsp)
	movsd	%xmm0, 40(%rsp)
	movsd	%xmm1, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movsd	%xmm2, 24(%rsp)
	movsd	%xmm3, 32(%rsp)
	leaq	(%rsp), %rsi
	movq	%r8, %rdx
	movq	%r9, %rcx
	callq	gs_text_begin
	addq	$88, %rsp
	retq
.Lfunc_end12:
	.size	gs_awidthshow_begin, .Lfunc_end12-gs_awidthshow_begin
	.cfi_endproc

	.globl	gs_kshow_begin
	.align	16, 0x90
	.type	gs_kshow_begin,@function
gs_kshow_begin:                         # @gs_kshow_begin
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$88, %rsp
.Ltmp52:
	.cfi_def_cfa_offset 96
	movq	132(%rdi), %xmm0        # xmm0 = mem[0],zero
	movss	140(%rdi), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	144(%rdi), %xmm2        # xmm2 = mem[0],zero,zero,zero
	unpcklps	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	mulps	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	subss	%xmm0, %xmm2
	movl	$-23, %eax
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm2
	jne	.LBB13_1
	jnp	.LBB13_4
.LBB13_1:                               # %if.end
	movl	$459265, %eax           # imm = 0x70201
	cmpl	$3, 252(%rdi)
	je	.LBB13_3
# BB#2:                                 # %select.mid
	movl	$197633, %eax           # imm = 0x30401
.LBB13_3:                               # %select.end
	movl	%eax, (%rsp)
	movq	%rsi, 8(%rsp)
	movl	%edx, 16(%rsp)
	leaq	(%rsp), %rsi
	movq	%rcx, %rdx
	movq	%r8, %rcx
	callq	gs_text_begin
.LBB13_4:                               # %cleanup
	addq	$88, %rsp
	retq
.Lfunc_end13:
	.size	gs_kshow_begin, .Lfunc_end13-gs_kshow_begin
	.cfi_endproc

	.globl	gs_get_text_params
	.align	16, 0x90
	.type	gs_get_text_params,@function
gs_get_text_params:                     # @gs_get_text_params
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	retq
.Lfunc_end14:
	.size	gs_get_text_params, .Lfunc_end14-gs_get_text_params
	.cfi_endproc

	.globl	gs_xyshow_begin
	.align	16, 0x90
	.type	gs_xyshow_begin,@function
gs_xyshow_begin:                        # @gs_xyshow_begin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp54:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp55:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp56:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 48
	subq	$96, %rsp
.Ltmp58:
	.cfi_def_cfa_offset 144
.Ltmp59:
	.cfi_offset %rbx, -48
.Ltmp60:
	.cfi_offset %r12, -40
.Ltmp61:
	.cfi_offset %r14, -32
.Ltmp62:
	.cfi_offset %r15, -24
.Ltmp63:
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movq	%r8, %r12
	movq	%rcx, %rbp
	movq	%rdi, %rbx
	movq	144(%rsp), %r14
	movl	$393985, %eax           # imm = 0x60301
	cmpl	$3, 252(%rbx)
	je	.LBB15_2
# BB#1:                                 # %select.mid
	movl	$132353, %eax           # imm = 0x20501
.LBB15_2:                               # %select.end
	movl	%eax, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movl	%edx, 24(%rsp)
	movq	%rbp, 72(%rsp)
	movq	%r12, 80(%rsp)
	movl	%r15d, 88(%rsp)
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	gs_text_count_chars
	testl	%eax, %eax
	js	.LBB15_5
# BB#3:                                 # %if.end
	testq	%rbp, %rbp
	setne	%dl
	testq	%r12, %r12
	setne	%cl
	andb	%dl, %cl
	shll	%cl, %eax
	cmpl	%r15d, %eax
	movl	$-15, %eax
	ja	.LBB15_5
# BB#4:                                 # %if.end.12
	movq	152(%rsp), %rcx
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	gs_text_begin
.LBB15_5:                               # %cleanup
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gs_xyshow_begin, .Lfunc_end15-gs_xyshow_begin
	.cfi_endproc

	.globl	gs_glyphshow_begin
	.align	16, 0x90
	.type	gs_glyphshow_begin,@function
gs_glyphshow_begin:                     # @gs_glyphshow_begin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp64:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp65:
	.cfi_def_cfa_offset 24
	subq	$88, %rsp
.Ltmp66:
	.cfi_def_cfa_offset 112
.Ltmp67:
	.cfi_offset %rbx, -24
.Ltmp68:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movl	$393760, %eax           # imm = 0x60220
	cmpl	$3, 252(%rbx)
	je	.LBB16_2
# BB#1:                                 # %select.mid
	movl	$132128, %eax           # imm = 0x20420
.LBB16_2:                               # %select.end
	movl	%eax, (%rsp)
	movq	%rsi, 8(%rsp)
	movl	$1, 16(%rsp)
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	gs_text_begin
	testl	%eax, %eax
	jne	.LBB16_5
# BB#3:                                 # %if.then
	movq	1792(%rbx), %rcx
	movl	128(%rcx), %edx
	orl	$2, %edx
	cmpl	$11, %edx
	jne	.LBB16_5
# BB#4:                                 # %if.then.i
	movq	(%r14), %rdx
	movups	392(%rcx), %xmm0
	movups	%xmm0, 360(%rdx)
.LBB16_5:                               # %if.end
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end16:
	.size	gs_glyphshow_begin, .Lfunc_end16-gs_glyphshow_begin
	.cfi_endproc

	.globl	gs_cshow_begin
	.align	16, 0x90
	.type	gs_cshow_begin,@function
gs_cshow_begin:                         # @gs_cshow_begin
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$88, %rsp
.Ltmp69:
	.cfi_def_cfa_offset 96
	movl	$66049, (%rsp)          # imm = 0x10201
	movq	%rsi, 8(%rsp)
	movl	%edx, 16(%rsp)
	leaq	(%rsp), %rsi
	movq	%rcx, %rdx
	movq	%r8, %rcx
	callq	gs_text_begin
	addq	$88, %rsp
	retq
.Lfunc_end17:
	.size	gs_cshow_begin, .Lfunc_end17-gs_cshow_begin
	.cfi_endproc

	.globl	gs_stringwidth_begin
	.align	16, 0x90
	.type	gs_stringwidth_begin,@function
gs_stringwidth_begin:                   # @gs_stringwidth_begin
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$88, %rsp
.Ltmp70:
	.cfi_def_cfa_offset 96
	movl	$131585, (%rsp)         # imm = 0x20201
	movq	%rsi, 8(%rsp)
	movl	%edx, 16(%rsp)
	leaq	(%rsp), %rsi
	movq	%rcx, %rdx
	movq	%r8, %rcx
	callq	gs_text_begin
	addq	$88, %rsp
	retq
.Lfunc_end18:
	.size	gs_stringwidth_begin, .Lfunc_end18-gs_stringwidth_begin
	.cfi_endproc

	.globl	gs_charpath_begin
	.align	16, 0x90
	.type	gs_charpath_begin,@function
gs_charpath_begin:                      # @gs_charpath_begin
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$88, %rsp
.Ltmp71:
	.cfi_def_cfa_offset 96
	testl	%ecx, %ecx
	movl	$139265, %eax           # imm = 0x22001
	movl	$135169, %ecx           # imm = 0x21001
	cmovnel	%eax, %ecx
	movl	%ecx, (%rsp)
	movq	%rsi, 8(%rsp)
	movl	%edx, 16(%rsp)
	leaq	(%rsp), %rsi
	movq	%r8, %rdx
	movq	%r9, %rcx
	callq	gs_text_begin
	addq	$88, %rsp
	retq
.Lfunc_end19:
	.size	gs_charpath_begin, .Lfunc_end19-gs_charpath_begin
	.cfi_endproc

	.globl	gs_charboxpath_begin
	.align	16, 0x90
	.type	gs_charboxpath_begin,@function
gs_charboxpath_begin:                   # @gs_charboxpath_begin
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$88, %rsp
.Ltmp72:
	.cfi_def_cfa_offset 96
	testl	%ecx, %ecx
	movl	$163841, %eax           # imm = 0x28001
	movl	$147457, %ecx           # imm = 0x24001
	cmovnel	%eax, %ecx
	movl	%ecx, (%rsp)
	movq	%rsi, 8(%rsp)
	movl	%edx, 16(%rsp)
	leaq	(%rsp), %rsi
	movq	%r8, %rdx
	movq	%r9, %rcx
	callq	gs_text_begin
	addq	$88, %rsp
	retq
.Lfunc_end20:
	.size	gs_charboxpath_begin, .Lfunc_end20-gs_charboxpath_begin
	.cfi_endproc

	.globl	gs_glyphpath_begin
	.align	16, 0x90
	.type	gs_glyphpath_begin,@function
gs_glyphpath_begin:                     # @gs_glyphpath_begin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp73:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp74:
	.cfi_def_cfa_offset 24
	subq	$88, %rsp
.Ltmp75:
	.cfi_def_cfa_offset 112
.Ltmp76:
	.cfi_offset %rbx, -24
.Ltmp77:
	.cfi_offset %r14, -16
	movq	%r8, %r14
	movq	%rdi, %rbx
	testl	%edx, %edx
	movl	$139296, %eax           # imm = 0x22020
	movl	$135200, %edx           # imm = 0x21020
	cmovnel	%eax, %edx
	movl	%edx, (%rsp)
	movq	%rsi, 8(%rsp)
	movl	$1, 16(%rsp)
	leaq	(%rsp), %rsi
	movq	%rcx, %rdx
	movq	%r14, %rcx
	callq	gs_text_begin
	testl	%eax, %eax
	jne	.LBB21_3
# BB#1:                                 # %if.then
	movq	1792(%rbx), %rcx
	movl	128(%rcx), %edx
	orl	$2, %edx
	cmpl	$11, %edx
	jne	.LBB21_3
# BB#2:                                 # %if.then.i
	movq	(%r14), %rdx
	movups	392(%rcx), %xmm0
	movups	%xmm0, 360(%rdx)
.LBB21_3:                               # %if.end
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end21:
	.size	gs_glyphpath_begin, .Lfunc_end21-gs_glyphpath_begin
	.cfi_endproc

	.globl	gs_glyphwidth_begin
	.align	16, 0x90
	.type	gs_glyphwidth_begin,@function
gs_glyphwidth_begin:                    # @gs_glyphwidth_begin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp78:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp79:
	.cfi_def_cfa_offset 24
	subq	$88, %rsp
.Ltmp80:
	.cfi_def_cfa_offset 112
.Ltmp81:
	.cfi_offset %rbx, -24
.Ltmp82:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movl	$131616, (%rsp)         # imm = 0x20220
	movq	%rsi, 8(%rsp)
	movl	$1, 16(%rsp)
	leaq	(%rsp), %rsi
	callq	gs_text_begin
	testl	%eax, %eax
	jne	.LBB22_3
# BB#1:                                 # %if.then
	movq	1792(%rbx), %rcx
	movl	128(%rcx), %edx
	orl	$2, %edx
	cmpl	$11, %edx
	jne	.LBB22_3
# BB#2:                                 # %if.then.i
	movq	(%r14), %rdx
	movups	392(%rcx), %xmm0
	movups	%xmm0, 360(%rdx)
.LBB22_3:                               # %if.end
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end22:
	.size	gs_glyphwidth_begin, .Lfunc_end22-gs_glyphwidth_begin
	.cfi_endproc

	.globl	gs_text_restart
	.align	16, 0x90
	.type	gs_text_restart,@function
gs_text_restart:                        # @gs_text_restart
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp83:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp84:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp85:
	.cfi_def_cfa_offset 32
	subq	$448, %rsp              # imm = 0x1C0
.Ltmp86:
	.cfi_def_cfa_offset 480
.Ltmp87:
	.cfi_offset %rbx, -32
.Ltmp88:
	.cfi_offset %r14, -24
.Ltmp89:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	(%rsp), %r15
	movl	$448, %edx              # imm = 0x1C0
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movq	80(%rbx), %rax
	movq	%rax, 80(%rsp)
	movups	64(%rbx), %xmm0
	movaps	%xmm0, 64(%rsp)
	movups	(%rbx), %xmm0
	movups	16(%rbx), %xmm1
	movups	32(%rbx), %xmm2
	movups	48(%rbx), %xmm3
	movaps	%xmm3, 48(%rsp)
	movaps	%xmm2, 32(%rsp)
	movaps	%xmm1, 16(%rsp)
	movaps	%xmm0, (%rsp)
	movq	112(%r14), %rsi
	movq	%rsi, 192(%rsp)
	movl	$0, 232(%rsp)
	movl	$0, 236(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 360(%rsp)
	movq	$0, 224(%rsp)
	movl	$0, 384(%rsp)
	movq	$2147483647, 200(%rsp)  # imm = 0x7FFFFFFF
	movl	$0, 348(%rsp)
	movq	%r15, %rdi
	callq	*248(%rsi)
	movq	112(%r14), %rax
	movl	128(%rax), %ecx
	orl	$2, %ecx
	cmpl	$11, %ecx
	jne	.LBB23_2
# BB#1:                                 # %if.then.i
	movups	392(%rax), %xmm0
	movups	%xmm0, 360(%r14)
.LBB23_2:                               # %setup_FontBBox_as_Metrics2.exit
	movq	152(%r14), %rax
	leaq	(%rsp), %rsi
	movq	%r14, %rdi
	callq	*(%rax)
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end23:
	.size	gs_text_restart, .Lfunc_end23-gs_text_restart
	.cfi_endproc

	.globl	gs_text_resync
	.align	16, 0x90
	.type	gs_text_resync,@function
gs_text_resync:                         # @gs_text_resync
	.cfi_startproc
# BB#0:                                 # %entry
	movq	152(%rdi), %rax
	movq	(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end24:
	.size	gs_text_resync, .Lfunc_end24-gs_text_resync
	.cfi_endproc

	.globl	gs_text_process
	.align	16, 0x90
	.type	gs_text_process,@function
gs_text_process:                        # @gs_text_process
	.cfi_startproc
# BB#0:                                 # %entry
	movq	152(%rdi), %rax
	jmpq	*8(%rax)                # TAILCALL
.Lfunc_end25:
	.size	gs_text_process, .Lfunc_end25-gs_text_process
	.cfi_endproc

	.globl	gs_text_current_font
	.align	16, 0x90
	.type	gs_text_current_font,@function
gs_text_current_font:                   # @gs_text_current_font
	.cfi_startproc
# BB#0:                                 # %entry
	movq	192(%rdi), %rax
	retq
.Lfunc_end26:
	.size	gs_text_current_font, .Lfunc_end26-gs_text_current_font
	.cfi_endproc

	.globl	gs_text_current_char
	.align	16, 0x90
	.type	gs_text_current_char,@function
gs_text_current_char:                   # @gs_text_current_char
	.cfi_startproc
# BB#0:                                 # %entry
	movq	416(%rdi), %rax
	retq
.Lfunc_end27:
	.size	gs_text_current_char, .Lfunc_end27-gs_text_current_char
	.cfi_endproc

	.globl	gs_text_next_char
	.align	16, 0x90
	.type	gs_text_next_char,@function
gs_text_next_char:                      # @gs_text_next_char
	.cfi_startproc
# BB#0:                                 # %entry
	movl	232(%rdi), %ecx
	movq	$-1, %rax
	cmpl	16(%rdi), %ecx
	jae	.LBB28_5
# BB#1:                                 # %if.end
	movl	(%rdi), %edx
	testb	$3, %dl
	je	.LBB28_3
# BB#2:                                 # %if.then.3
	movq	8(%rdi), %rax
	movzbl	(%rax,%rcx), %eax
	retq
.LBB28_3:                               # %if.end.6
	testb	$4, %dl
	je	.LBB28_5
# BB#4:                                 # %if.then.9
	movq	8(%rdi), %rax
	movq	(%rax,%rcx,8), %rax
.LBB28_5:                               # %cleanup
	retq
.Lfunc_end28:
	.size	gs_text_next_char, .Lfunc_end28-gs_text_next_char
	.cfi_endproc

	.globl	gs_text_current_glyph
	.align	16, 0x90
	.type	gs_text_current_glyph,@function
gs_text_current_glyph:                  # @gs_text_current_glyph
	.cfi_startproc
# BB#0:                                 # %entry
	movq	424(%rdi), %rax
	retq
.Lfunc_end29:
	.size	gs_text_current_glyph, .Lfunc_end29-gs_text_current_glyph
	.cfi_endproc

	.globl	gs_text_total_width
	.align	16, 0x90
	.type	gs_text_total_width,@function
gs_text_total_width:                    # @gs_text_total_width
	.cfi_startproc
# BB#0:                                 # %entry
	movups	432(%rdi), %xmm0
	movups	%xmm0, (%rsi)
	xorl	%eax, %eax
	retq
.Lfunc_end30:
	.size	gs_text_total_width, .Lfunc_end30-gs_text_total_width
	.cfi_endproc

	.globl	gs_text_replaced_width
	.align	16, 0x90
	.type	gs_text_replaced_width,@function
gs_text_replaced_width:                 # @gs_text_replaced_width
	.cfi_startproc
# BB#0:                                 # %entry
	movq	64(%rdi), %rcx
	movq	72(%rdi), %r8
	cmpq	%r8, %rcx
	je	.LBB31_1
# BB#6:                                 # %if.else.13
	movl	$-15, %eax
	cmpl	%esi, 80(%rdi)
	jbe	.LBB31_13
# BB#7:                                 # %if.end.18
	xorpd	%xmm0, %xmm0
	testq	%rcx, %rcx
	xorpd	%xmm1, %xmm1
	je	.LBB31_9
# BB#8:                                 # %cond.true
	movl	%esi, %eax
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
.LBB31_9:                               # %cond.end
	movsd	%xmm1, (%rdx)
	testq	%r8, %r8
	je	.LBB31_11
# BB#10:                                # %cond.true.25
	movl	%esi, %eax
	movss	(%r8,%rax,4), %xmm0     # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
.LBB31_11:                              # %cond.end.30
	movsd	%xmm0, 8(%rdx)
	jmp	.LBB31_12
.LBB31_1:                               # %if.then
	testq	%rcx, %rcx
	je	.LBB31_4
# BB#2:                                 # %if.then.3
	leal	1(%rsi,%rsi), %r8d
	movl	$-15, %eax
	cmpl	80(%rdi), %r8d
	jae	.LBB31_13
# BB#3:                                 # %if.end
	addl	%esi, %esi
	movl	%esi, %eax
	movl	%r8d, %esi
	movss	(%rcx,%rsi,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	unpcklps	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	cvtps2pd	%xmm1, %xmm0
	movupd	%xmm0, (%rdx)
	jmp	.LBB31_12
.LBB31_4:                               # %if.else
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, (%rdx)
.LBB31_12:                              # %cleanup
	xorl	%eax, %eax
.LBB31_13:                              # %cleanup
	retq
.Lfunc_end31:
	.size	gs_text_replaced_width, .Lfunc_end31-gs_text_replaced_width
	.cfi_endproc

	.globl	gs_text_is_width_only
	.align	16, 0x90
	.type	gs_text_is_width_only,@function
gs_text_is_width_only:                  # @gs_text_is_width_only
	.cfi_startproc
# BB#0:                                 # %entry
	movq	152(%rdi), %rax
	jmpq	*16(%rax)               # TAILCALL
.Lfunc_end32:
	.size	gs_text_is_width_only, .Lfunc_end32-gs_text_is_width_only
	.cfi_endproc

	.globl	gs_text_current_width
	.align	16, 0x90
	.type	gs_text_current_width,@function
gs_text_current_width:                  # @gs_text_current_width
	.cfi_startproc
# BB#0:                                 # %entry
	movq	152(%rdi), %rax
	movq	24(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end33:
	.size	gs_text_current_width, .Lfunc_end33-gs_text_current_width
	.cfi_endproc

	.globl	gs_text_set_cache
	.align	16, 0x90
	.type	gs_text_set_cache,@function
gs_text_set_cache:                      # @gs_text_set_cache
	.cfi_startproc
# BB#0:                                 # %entry
	movq	152(%rdi), %rax
	movq	32(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end34:
	.size	gs_text_set_cache, .Lfunc_end34-gs_text_set_cache
	.cfi_endproc

	.globl	gs_text_setcharwidth
	.align	16, 0x90
	.type	gs_text_setcharwidth,@function
gs_text_setcharwidth:                   # @gs_text_setcharwidth
	.cfi_startproc
# BB#0:                                 # %entry
	movq	152(%rdi), %rax
	movq	32(%rax), %rax
	xorl	%edx, %edx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end35:
	.size	gs_text_setcharwidth, .Lfunc_end35-gs_text_setcharwidth
	.cfi_endproc

	.globl	gs_text_setcachedevice
	.align	16, 0x90
	.type	gs_text_setcachedevice,@function
gs_text_setcachedevice:                 # @gs_text_setcachedevice
	.cfi_startproc
# BB#0:                                 # %entry
	movq	152(%rdi), %rax
	movq	32(%rax), %rax
	movl	$1, %edx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end36:
	.size	gs_text_setcachedevice, .Lfunc_end36-gs_text_setcachedevice
	.cfi_endproc

	.globl	gs_text_setcachedevice2
	.align	16, 0x90
	.type	gs_text_setcachedevice2,@function
gs_text_setcachedevice2:                # @gs_text_setcachedevice2
	.cfi_startproc
# BB#0:                                 # %entry
	movq	152(%rdi), %rax
	movq	32(%rax), %rax
	movl	$2, %edx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end37:
	.size	gs_text_setcachedevice2, .Lfunc_end37-gs_text_setcachedevice2
	.cfi_endproc

	.globl	gs_text_retry
	.align	16, 0x90
	.type	gs_text_retry,@function
gs_text_retry:                          # @gs_text_retry
	.cfi_startproc
# BB#0:                                 # %entry
	movq	152(%rdi), %rax
	jmpq	*40(%rax)               # TAILCALL
.Lfunc_end38:
	.size	gs_text_retry, .Lfunc_end38-gs_text_retry
	.cfi_endproc

	.globl	gx_default_text_release
	.align	16, 0x90
	.type	gx_default_text_release,@function
gx_default_text_release:                # @gx_default_text_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp90:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp91:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp92:
	.cfi_def_cfa_offset 32
.Ltmp93:
	.cfi_offset %rbx, -24
.Ltmp94:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	88(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB39_3
# BB#1:                                 # %do.end
	decq	56(%rsi)
	jne	.LBB39_3
# BB#2:                                 # %do.end.12
	movq	64(%rsi), %rdi
	movq	%r14, %rdx
	callq	*72(%rsi)
.LBB39_3:                               # %do.body.25
	movq	96(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB39_5
# BB#4:                                 # %do.end.30
	decq	56(%rsi)
	je	.LBB39_6
.LBB39_5:                               # %do.end.59
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB39_6:                               # %do.end.43
	movq	64(%rsi), %rdi
	movq	72(%rsi), %rax
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.Lfunc_end39:
	.size	gx_default_text_release, .Lfunc_end39-gx_default_text_release
	.cfi_endproc

	.globl	rc_free_text_enum
	.align	16, 0x90
	.type	rc_free_text_enum,@function
rc_free_text_enum:                      # @rc_free_text_enum
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp95:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp96:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp97:
	.cfi_def_cfa_offset 32
.Ltmp98:
	.cfi_offset %rbx, -32
.Ltmp99:
	.cfi_offset %r14, -24
.Ltmp100:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	152(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*48(%rax)
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	rc_free_struct_only     # TAILCALL
.Lfunc_end40:
	.size	rc_free_text_enum, .Lfunc_end40-rc_free_text_enum
	.cfi_endproc

	.globl	gs_text_release
	.align	16, 0x90
	.type	gs_text_release,@function
gs_text_release:                        # @gs_text_release
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movq	%rdi, %rcx
	testq	%rcx, %rcx
	je	.LBB41_2
# BB#1:                                 # %do.end
	decq	160(%rcx)
	je	.LBB41_3
.LBB41_2:                               # %do.end.19
	retq
.LBB41_3:                               # %do.end.10
	movq	168(%rcx), %rdi
	movq	176(%rcx), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdx
	jmpq	*%r8                    # TAILCALL
.Lfunc_end41:
	.size	gs_text_release, .Lfunc_end41-gs_text_release
	.cfi_endproc

	.globl	gs_default_init_fstack
	.align	16, 0x90
	.type	gs_default_init_fstack,@function
gs_default_init_fstack:                 # @gs_default_init_fstack
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, 240(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end42:
	.size	gs_default_init_fstack, .Lfunc_end42-gs_default_init_fstack
	.cfi_endproc

	.globl	gs_default_next_char_glyph
	.align	16, 0x90
	.type	gs_default_next_char_glyph,@function
gs_default_next_char_glyph:             # @gs_default_next_char_glyph
	.cfi_startproc
# BB#0:                                 # %entry
	movl	232(%rdi), %ecx
	movl	$2, %eax
	cmpl	16(%rdi), %ecx
	jae	.LBB43_15
# BB#1:                                 # %if.end
	movl	(%rdi), %r8d
	testb	$3, %r8b
	je	.LBB43_4
# BB#2:                                 # %if.then.2
	movq	8(%rdi), %rax
	movzbl	(%rax,%rcx), %eax
	movq	%rax, (%rsi)
	movq	200(%rdi), %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	je	.LBB43_13
# BB#3:                                 # %if.then.7
	movq	%rax, (%rdx)
	jmp	.LBB43_14
.LBB43_4:                               # %if.else.10
	testb	$32, %r8b
	jne	.LBB43_5
# BB#6:                                 # %if.else.18
	testb	$8, %r8b
	jne	.LBB43_7
# BB#8:                                 # %if.else.29
	testb	$16, %r8b
	jne	.LBB43_9
# BB#10:                                # %if.else.37
	movl	$-15, %eax
	testb	$4, %r8b
	je	.LBB43_15
# BB#11:                                # %if.then.42
	movq	8(%rdi), %rax
	movq	(%rax,%rcx,8), %rax
	jmp	.LBB43_12
.LBB43_5:                               # %if.then.15
	movq	$-1, (%rsi)
	movq	8(%rdi), %rax
	movq	%rax, (%rdx)
	jmp	.LBB43_14
.LBB43_7:                               # %if.then.23
	movq	$-1, (%rsi)
	movq	8(%rdi), %rax
	movq	(%rax,%rcx,8), %rax
	movq	%rax, (%rdx)
	jmp	.LBB43_14
.LBB43_9:                               # %if.then.34
	movq	8(%rdi), %rax
.LBB43_12:                              # %if.end.53
	movq	%rax, (%rsi)
.LBB43_13:                              # %if.end.53
	movq	$2147483647, (%rdx)     # imm = 0x7FFFFFFF
.LBB43_14:                              # %if.end.53
	leal	1(%rcx), %eax
	movl	%eax, 232(%rdi)
	xorl	%eax, %eax
.LBB43_15:                              # %return
	retq
.Lfunc_end43:
	.size	gs_default_next_char_glyph, .Lfunc_end43-gs_default_next_char_glyph
	.cfi_endproc

	.globl	gs_no_build_char
	.align	16, 0x90
	.type	gs_no_build_char,@function
gs_no_build_char:                       # @gs_no_build_char
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %eax
	retq
.Lfunc_end44:
	.size	gs_no_build_char, .Lfunc_end44-gs_no_build_char
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_text_params"
	.size	.L.str, 15

	.type	st_gs_text_params,@object # @st_gs_text_params
	.section	.rodata,"a",@progbits
	.globl	st_gs_text_params
	.align	8
st_gs_text_params:
	.long	88                      # 0x58
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	text_params_enum_ptrs
	.quad	text_params_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_gs_text_params, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gs_text_enum_t"
	.size	.L.str.1, 15

	.type	st_gs_text_enum,@object # @st_gs_text_enum
	.section	.rodata,"a",@progbits
	.globl	st_gs_text_enum
	.align	8
st_gs_text_enum:
	.long	448                     # 0x1c0
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	text_enum_enum_ptrs
	.quad	text_enum_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_gs_text_enum, 64


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
