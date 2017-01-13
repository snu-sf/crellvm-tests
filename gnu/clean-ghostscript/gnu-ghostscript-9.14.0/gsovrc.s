	.text
	.file	"gsovrc.bc"
	.align	16, 0x90
	.type	c_overprint_create_default_compositor,@function
c_overprint_create_default_compositor:  # @c_overprint_create_default_compositor
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
	subq	$1784, %rsp             # imm = 0x6F8
.Ltmp6:
	.cfi_def_cfa_offset 1840
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
	movq	%r8, %rbp
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r13
	cmpl	$0, 40(%r13)
	je	.LBB0_1
# BB#2:                                 # %if.end
	cmpl	$0, 16(%r13)
	je	.LBB0_3
.LBB0_1:                                # %if.then
	movq	%r14, (%rbx)
	xorl	%eax, %eax
	jmp	.LBB0_5
.LBB0_3:                                # %if.end.4
	movl	$st_overprint_device_t, %esi
	movl	$.L.str.4, %edx
	movq	%rbp, %rdi
	callq	*80(%rbp)
	movq	%rax, %r15
	movq	%r15, (%rbx)
	movl	$-25, %eax
	testq	%r15, %r15
	je	.LBB0_5
# BB#4:                                 # %if.end.6
	leaq	40(%r13), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$gs_overprint_device, %esi
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	movq	%rbp, %rdx
	callq	gx_device_init
	leaq	2352(%r15), %rbp
	movl	$no_overprint_procs, %esi
	movl	$584, %edx              # imm = 0x248
	movq	%rbp, %rdi
	callq	memcpy
	leaq	1768(%r15), %rdi
	movq	%rdi, (%rsp)            # 8-byte Spill
	movl	$generic_overprint_procs, %esi
	movl	$584, %edx              # imm = 0x248
	callq	memcpy
	movq	%r15, %r12
	addq	$2936, %r12             # imm = 0xB78
	movl	$sep_overprint_procs, %esi
	movl	$584, %edx              # imm = 0x248
	movq	%r12, %rdi
	callq	memcpy
	leaq	144(%rsp), %rdi
	movl	$gs_overprint_device+96, %esi
	movl	$720, %edx              # imm = 0x2D0
	callq	memcpy
	movl	$0, 184(%rsp)
	movq	$0, 56(%rsp)
	leaq	1192(%rsp), %rbx
	movl	$584, %edx              # imm = 0x248
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	memcpy
	leaq	48(%rsp), %rdi
	callq	gx_device_forward_fill_in_procs
	movl	$584, %edx              # imm = 0x248
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	leaq	144(%rsp), %rdi
	movl	$gs_overprint_device+96, %esi
	movl	$720, %edx              # imm = 0x2D0
	callq	memcpy
	movl	$0, 184(%rsp)
	movq	$0, 56(%rsp)
	leaq	1192(%rsp), %rbp
	movl	$584, %edx              # imm = 0x248
	movq	%rbp, %rdi
	movq	(%rsp), %rbx            # 8-byte Reload
	movq	%rbx, %rsi
	callq	memcpy
	leaq	48(%rsp), %rdi
	callq	gx_device_forward_fill_in_procs
	movl	$584, %edx              # imm = 0x248
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	memcpy
	leaq	144(%rsp), %rdi
	movl	$gs_overprint_device+96, %esi
	movl	$720, %edx              # imm = 0x2D0
	callq	memcpy
	movl	$0, 184(%rsp)
	movq	$0, 56(%rsp)
	leaq	1192(%rsp), %rbx
	movl	$584, %edx              # imm = 0x248
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	memcpy
	leaq	48(%rsp), %rdi
	callq	gx_device_forward_fill_in_procs
	movl	$584, %edx              # imm = 0x248
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	gx_device_copy_params
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	gx_device_set_target
	movl	840(%r14), %eax
	movl	%eax, 840(%r15)
	movl	844(%r14), %eax
	movl	%eax, 844(%r15)
	movl	848(%r14), %eax
	movl	%eax, 848(%r15)
	movq	8(%rsp), %rax           # 8-byte Reload
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movaps	%xmm1, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	movl	16(%r13), %eax
	movl	%eax, 24(%rsp)
	leaq	16(%rsp), %rsi
	movq	%r15, %rdi
	callq	update_overprint_params
.LBB0_5:                                # %cleanup
	addq	$1784, %rsp             # imm = 0x6F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	c_overprint_create_default_compositor, .Lfunc_end0-c_overprint_create_default_compositor
	.cfi_endproc

	.align	16, 0x90
	.type	c_overprint_equal,@function
c_overprint_equal:                      # @c_overprint_equal
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rcx
	xorl	%eax, %eax
	cmpq	(%rsi), %rcx
	jne	.LBB1_7
# BB#1:                                 # %if.then
	cmpl	$0, 40(%rdi)
	je	.LBB1_2
# BB#3:                                 # %if.else
	cmpl	$0, 44(%rdi)
	je	.LBB1_5
# BB#4:                                 # %if.then.7
	movl	44(%rsi), %eax
	retq
.LBB1_2:                                # %if.then.3
	cmpl	$0, 40(%rsi)
	jmp	.LBB1_6
.LBB1_5:                                # %if.else.9
	movq	56(%rdi), %rax
	cmpq	56(%rsi), %rax
.LBB1_6:                                # %return
	sete	%al
	movzbl	%al, %eax
.LBB1_7:                                # %return
	retq
.Lfunc_end1:
	.size	c_overprint_equal, .Lfunc_end1-c_overprint_equal
	.cfi_endproc

	.align	16, 0x90
	.type	c_overprint_write,@function
c_overprint_write:                      # @c_overprint_write
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
	movq	%rsi, %r14
	movq	%rdi, %r10
	movl	(%r15), %r12d
	movl	$1, %ecx
	cmpl	$0, 40(%r10)
	je	.LBB2_1
# BB#2:                                 # %if.then
	leaq	40(%r10), %rsi
	leaq	28(%rsi), %rax
	cmpl	$0, 28(%rsi)
	movb	$1, %r13b
	je	.LBB2_4
# BB#3:                                 # %if.then
	movb	$5, %r13b
.LBB2_4:                                # %if.then
	setne	%bl
	movb	%r13b, %dl
	orb	$2, %dl
	cmpl	$0, 4(%rsi)
	je	.LBB2_6
# BB#5:                                 # %if.then
	movb	%dl, %r13b
.LBB2_6:                                # %if.then
	je	.LBB2_8
# BB#7:                                 # %if.then
	testb	%bl, %bl
	je	.LBB2_22
.LBB2_8:                                # %if.then.17
	leal	-1(%r12), %esi
	movq	56(%r10), %rcx
	xorl	%ebp, %ebp
	movq	%rcx, %rdi
	.align	16, 0x90
.LBB2_9:                                # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %edx
	shrq	$7, %rdi
	leal	1(%rdx), %ebp
	testq	%rdi, %rdi
	jne	.LBB2_9
# BB#10:                                # %for.end.i
	xorl	%edi, %edi
	testl	%r12d, %r12d
	cmovgl	%esi, %edi
	movl	$-15, %esi
	cmpl	%edi, %ebp
	ja	.LBB2_21
# BB#11:                                # %for.cond.2.preheader.i
	addl	$2, %edx
	leaq	1(%r14), %r9
	cmpl	$2, %ebp
	jl	.LBB2_12
# BB#13:                                # %for.body.4.lr.ph.i
	leal	-2(%rbp), %r8d
	leal	3(%rbp), %ebx
	testb	$3, %bl
	je	.LBB2_14
# BB#15:                                # %for.body.4.i.prol.preheader
	movq	%rax, (%rsp)            # 8-byte Spill
	andl	$3, %ebx
	negl	%ebx
	movl	%ebp, %edi
	movq	%r9, %rsi
	.align	16, 0x90
.LBB2_16:                               # %for.body.4.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	orl	$128, %eax
	movb	%al, (%rsi)
	incq	%rsi
	shrq	$7, %rcx
	decl	%edi
	incl	%ebx
	jne	.LBB2_16
	jmp	.LBB2_17
.LBB2_1:
	xorl	%edx, %edx
	jmp	.LBB2_22
.LBB2_12:
	movq	%rax, (%rsp)            # 8-byte Spill
	jmp	.LBB2_20
.LBB2_14:
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	%ebp, %edi
	movq	%r9, %rsi
.LBB2_17:                               # %for.body.4.lr.ph.i.split
	cmpl	$3, %r8d
	jb	.LBB2_19
	.align	16, 0x90
.LBB2_18:                               # %for.body.4.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	orl	$128, %eax
	movb	%al, (%rsi)
	movl	%ecx, %eax
	shrl	$7, %eax
	orl	$128, %eax
	movb	%al, 1(%rsi)
	movl	%ecx, %eax
	shrl	$14, %eax
	orl	$128, %eax
	movb	%al, 2(%rsi)
	movl	%ecx, %eax
	shrl	$21, %eax
	orl	$128, %eax
	movb	%al, 3(%rsi)
	shrq	$28, %rcx
	addl	$-4, %edi
	addq	$4, %rsi
	cmpl	$1, %edi
	jg	.LBB2_18
.LBB2_19:                               # %for.cond.2.for.end.7_crit_edge.i
	leaq	1(%r8,%r9), %r9
.LBB2_20:                               # %if.then.21
	andb	$127, %cl
	movb	%cl, (%r9)
	movslq	%edx, %rax
	leaq	(%rax,%r14), %rdi
	addq	$64, %r10
	movl	$2, %edx
	movq	%r10, %rsi
	callq	memcpy
	leal	3(%rbp), %eax
	cltq
	leaq	(%rax,%r14), %rdi
	movl	$4, %edx
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	memcpy
	xorl	%esi, %esi
.LBB2_21:                               # %if.end.30.thread
	addl	$7, %ebp
	cmpl	$-15, %esi
	movl	$7, %ecx
	cmovel	%ebp, %ecx
	testl	%esi, %esi
	cmovnsl	%ebp, %ecx
	movb	%r13b, %dl
.LBB2_22:                               # %if.end.46
	movl	%ecx, (%r15)
	movl	$-15, %eax
	cmpl	%r12d, %ecx
	jg	.LBB2_24
# BB#23:                                # %if.end.50
	movb	%dl, (%r14)
	xorl	%eax, %eax
.LBB2_24:                               # %cleanup.52
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	c_overprint_write, .Lfunc_end2-c_overprint_write
	.cfi_endproc

	.align	16, 0x90
	.type	c_overprint_read,@function
c_overprint_read:                       # @c_overprint_read
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
	movq	%rcx, %r15
	movq	%rsi, %r13
	movq	%rdi, %r14
	movl	$-15, %eax
	testl	%edx, %edx
	je	.LBB3_14
# BB#1:                                 # %if.end
	movzbl	(%r13), %ecx
	movl	%ecx, %edi
	andl	$1, %edi
	movl	%edi, 8(%rsp)
	movl	%ecx, %esi
	shrl	%esi
	andl	$1, %esi
	movl	%esi, 12(%rsp)
	movl	$0, 16(%rsp)
	shrl	$2, %ecx
	andl	$1, %ecx
	movl	%ecx, 36(%rsp)
	movw	$0, 32(%rsp)
	movl	$1, %ebp
	testl	%edi, %edi
	je	.LBB3_10
# BB#2:                                 # %land.lhs.true
	testl	%esi, %esi
	je	.LBB3_4
# BB#3:                                 # %land.lhs.true
	testl	%ecx, %ecx
	je	.LBB3_10
.LBB3_4:                                # %if.then.16
	xorl	%ecx, %ecx
	decl	%edx
	movl	$1, %ebp
	je	.LBB3_14
# BB#5:
	leaq	36(%rsp), %r12
	leaq	32(%rsp), %rdi
	xorl	%esi, %esi
	.align	16, 0x90
.LBB3_6:                                # %if.else.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, %r8
	movzbl	(%r13,%rbp), %ebx
	movl	%ebx, %esi
	andl	$127, %esi
	shlq	%cl, %rsi
	addq	%r8, %rsi
	testb	$-128, %bl
	je	.LBB3_8
# BB#7:                                 # %for.inc.i
                                        #   in Loop: Header=BB3_6 Depth=1
	addq	$7, %rcx
	incq	%rbp
	cmpl	%edx, %ebp
	jbe	.LBB3_6
	jmp	.LBB3_14
.LBB3_8:                                # %read_color_index.exit
	movq	%rsi, 24(%rsp)
	testl	%ebp, %ebp
	js	.LBB3_13
# BB#9:                                 # %if.end.20
	leal	1(%rbp), %eax
	cltq
	leaq	(%rax,%r13), %rsi
	movl	$2, %edx
	callq	memcpy
	leal	3(%rbp), %eax
	movslq	%eax, %rsi
	addq	%r13, %rsi
	movl	$4, %edx
	movq	%r12, %rdi
	callq	memcpy
	addl	$7, %ebp
.LBB3_10:                               # %if.end.33
	movl	$st_overprint, %esi
	movl	$.L.str, %edx
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %r12
	movl	$-25, %eax
	testq	%r12, %r12
	je	.LBB3_12
# BB#11:                                # %if.end.i
	movq	$gs_composite_overprint_type, (%r12)
	movl	$1, %esi
	movq	%r15, %rdi
	callq	gs_next_ids
	movq	%rax, 8(%r12)
	movups	8(%rsp), %xmm0
	movups	24(%rsp), %xmm1
	movups	%xmm1, 56(%r12)
	movups	%xmm0, 40(%r12)
	movl	$0, 16(%r12)
	movq	%r12, (%r14)
	xorl	%eax, %eax
.LBB3_12:                               # %gs_create_overprint.exit
	testl	%eax, %eax
	cmovsl	%eax, %ebp
.LBB3_13:                               # %cleanup
	movl	%ebp, %eax
.LBB3_14:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	c_overprint_read, .Lfunc_end3-c_overprint_read
	.cfi_endproc

	.align	16, 0x90
	.type	c_overprint_is_closing,@function
c_overprint_is_closing:                 # @c_overprint_is_closing
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	testq	%rax, %rax
	je	.LBB4_2
# BB#1:                                 # %land.lhs.true
	movq	(%rax), %rcx
	xorl	%eax, %eax
	movzbl	(%rcx), %ecx
	cmpl	$2, %ecx
	jne	.LBB4_3
.LBB4_2:                                # %if.end
	movl	$3, %eax
.LBB4_3:                                # %return
	retq
.Lfunc_end4:
	.size	c_overprint_is_closing, .Lfunc_end4-c_overprint_is_closing
	.cfi_endproc

	.globl	gs_create_overprint
	.align	16, 0x90
	.type	gs_create_overprint,@function
gs_create_overprint:                    # @gs_create_overprint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp43:
	.cfi_def_cfa_offset 48
.Ltmp44:
	.cfi_offset %rbx, -40
.Ltmp45:
	.cfi_offset %r12, -32
.Ltmp46:
	.cfi_offset %r14, -24
.Ltmp47:
	.cfi_offset %r15, -16
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$st_overprint, %esi
	movl	$.L.str, %edx
	movq	%r12, %rdi
	callq	*72(%r12)
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB5_2
# BB#1:                                 # %if.end
	movq	$gs_composite_overprint_type, (%rbx)
	movl	$1, %esi
	movq	%r12, %rdi
	callq	gs_next_ids
	movq	%rax, 8(%rbx)
	movups	(%r15), %xmm0
	movups	16(%r15), %xmm1
	movups	%xmm1, 56(%rbx)
	movups	%xmm0, 40(%rbx)
	movl	$0, 16(%rbx)
	movq	%rbx, (%r14)
	xorl	%eax, %eax
.LBB5_2:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	gs_create_overprint, .Lfunc_end5-gs_create_overprint
	.cfi_endproc

	.globl	gs_is_overprint_compositor
	.align	16, 0x90
	.type	gs_is_overprint_compositor,@function
gs_is_overprint_compositor:             # @gs_is_overprint_compositor
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$gs_composite_overprint_type, %eax
	cmpq	%rax, (%rdi)
	sete	%al
	movzbl	%al, %eax
	retq
.Lfunc_end6:
	.size	gs_is_overprint_compositor, .Lfunc_end6-gs_is_overprint_compositor
	.cfi_endproc

	.align	16, 0x90
	.type	update_overprint_params,@function
update_overprint_params:                # @update_overprint_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp49:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp50:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp51:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp52:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 56
	subq	$184, %rsp
.Ltmp54:
	.cfi_def_cfa_offset 240
.Ltmp55:
	.cfi_offset %rbx, -56
.Ltmp56:
	.cfi_offset %r12, -48
.Ltmp57:
	.cfi_offset %r13, -40
.Ltmp58:
	.cfi_offset %r14, -32
.Ltmp59:
	.cfi_offset %r15, -24
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	100(%r15), %r13d
	cmpl	$0, (%r14)
	je	.LBB7_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, 8(%r14)
	je	.LBB7_4
.LBB7_2:                                # %if.then
	movl	$gx_forward_fill_rectangle, %eax
	xorl	%ebp, %ebp
	cmpq	%rax, 1200(%r15)
	je	.LBB7_110
# BB#3:                                 # %if.then.2
	leaq	1144(%r15), %rdi
	addq	$2352, %r15             # imm = 0x930
	movl	$584, %edx              # imm = 0x248
	movq	%r15, %rsi
	callq	memcpy
	jmp	.LBB7_110
.LBB7_4:                                # %if.end.4
	leaq	1144(%r15), %r12
	cmpl	$1, 136(%r15)
	jne	.LBB7_6
# BB#5:                                 # %if.then.7
	leaq	2936(%r15), %rsi
	jmp	.LBB7_7
.LBB7_6:                                # %if.else
	leaq	1768(%r15), %rsi
.LBB7_7:                                # %if.end.12
	movl	$584, %edx              # imm = 0x248
	movq	%r12, %rdi
	callq	memcpy
	movl	28(%r14), %eax
	movl	%eax, 1748(%r15)
	cmpl	$0, 4(%r14)
	je	.LBB7_8
# BB#9:                                 # %if.else.18
	movq	%r15, %rdi
	callq	*1536(%r15)
	testq	%rax, %rax
	je	.LBB7_112
# BB#10:                                # %lor.lhs.false.23
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB7_112
# BB#11:                                # %lor.lhs.false.25
	cmpq	$0, 8(%rax)
	je	.LBB7_112
# BB#12:                                # %lor.lhs.false.27
	cmpq	$0, 16(%rax)
	je	.LBB7_112
# BB#13:                                # %if.end.30
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leaq	48(%rsp), %rbp
	movl	$10920, %esi            # imm = 0x2AA8
	movq	%r15, %rdi
	movq	%rbp, %rdx
	callq	*%rcx
	testl	%r13d, %r13d
	jle	.LBB7_111
# BB#14:                                # %for.body.i.preheader
	movl	$1, %eax
	xorl	%edx, %edx
	testb	$1, %r13b
	movl	$0, %esi
	je	.LBB7_16
# BB#15:                                # %for.body.i.prol
	cmpw	$0, 48(%rsp)
	setne	%al
	movzbl	%al, %esi
	movl	$2, %eax
	movl	$1, %edx
.LBB7_16:                               # %for.body.i.preheader.split
	cmpl	$1, %r13d
	je	.LBB7_23
# BB#17:                                # %for.body.i.preheader.split.split
	movl	%r13d, %ecx
	subl	%edx, %ecx
	leaq	2(%rdx,%rdx), %rdx
	orq	%rdx, %rbp
	.align	16, 0x90
.LBB7_18:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpw	$0, -2(%rbp)
	movl	$0, %edx
	je	.LBB7_20
# BB#19:                                # %select.mid
                                        #   in Loop: Header=BB7_18 Depth=1
	movq	%rax, %rdx
.LBB7_20:                               # %select.end
                                        #   in Loop: Header=BB7_18 Depth=1
	orq	%rsi, %rdx
	cmpw	$0, (%rbp)
	movl	$0, %esi
	je	.LBB7_22
# BB#21:                                # %select.mid359
                                        #   in Loop: Header=BB7_18 Depth=1
	leaq	(%rax,%rax), %rsi
.LBB7_22:                               # %select.end358
                                        #   in Loop: Header=BB7_18 Depth=1
	orq	%rdx, %rsi
	shlq	$2, %rax
	addq	$4, %rbp
	addl	$-2, %ecx
	jne	.LBB7_18
.LBB7_23:                               # %for.body.i.84.preheader
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	xorl	%ebx, %ebx
	leaq	48(%rsp), %rbp
	movl	$0, %esi
	movl	$10920, %edx            # imm = 0x2AA8
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movq	%rbp, %r9
	movq	40(%rsp), %rax          # 8-byte Reload
	callq	*8(%rax)
	movl	$1, %eax
	testb	$1, %r13b
	movl	$0, %esi
	je	.LBB7_25
# BB#24:                                # %for.body.i.84.prol
	cmpw	$0, 48(%rsp)
	setne	%al
	movzbl	%al, %esi
	movl	$2, %eax
	movl	$1, %ebx
.LBB7_25:                               # %for.body.i.84.preheader.split
	movq	%r14, 16(%rsp)          # 8-byte Spill
	cmpl	$1, %r13d
	je	.LBB7_32
# BB#26:                                # %for.body.i.84.preheader.split.split
	movl	%r13d, %ecx
	subl	%ebx, %ecx
	leaq	2(%rbx,%rbx), %rdx
	orq	%rdx, %rbp
	.align	16, 0x90
.LBB7_27:                               # %for.body.i.84
                                        # =>This Inner Loop Header: Depth=1
	cmpw	$0, -2(%rbp)
	movl	$0, %edx
	je	.LBB7_29
# BB#28:                                # %select.mid306
                                        #   in Loop: Header=BB7_27 Depth=1
	movq	%rax, %rdx
.LBB7_29:                               # %select.end305
                                        #   in Loop: Header=BB7_27 Depth=1
	orq	%rsi, %rdx
	cmpw	$0, (%rbp)
	movl	$0, %esi
	je	.LBB7_31
# BB#30:                                # %select.mid361
                                        #   in Loop: Header=BB7_27 Depth=1
	leaq	(%rax,%rax), %rsi
.LBB7_31:                               # %select.end360
                                        #   in Loop: Header=BB7_27 Depth=1
	orq	%rdx, %rsi
	shlq	$2, %rax
	addq	$4, %rbp
	addl	$-2, %ecx
	jne	.LBB7_27
.LBB7_32:                               # %for.body.i.116.preheader
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	leaq	48(%rsp), %rbp
	movl	$0, %esi
	xorl	%edx, %edx
	movl	$10920, %ecx            # imm = 0x2AA8
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movq	%rbp, %r9
	movq	40(%rsp), %rax          # 8-byte Reload
	callq	*8(%rax)
	movl	$1, %eax
	testb	$1, %r13b
	movl	$0, %ebx
	je	.LBB7_34
# BB#33:                                # %for.body.i.116.prol
	cmpw	$0, 48(%rsp)
	setne	%al
	movzbl	%al, %ebx
	movl	$2, %eax
	movl	$1, %r14d
.LBB7_34:                               # %for.body.i.116.preheader.split
	movq	%r12, (%rsp)            # 8-byte Spill
	cmpl	$1, %r13d
	je	.LBB7_41
# BB#35:                                # %for.body.i.116.preheader.split.split
	movl	%r13d, %ecx
	subl	%r14d, %ecx
	leaq	2(%r14,%r14), %rdx
	orq	%rdx, %rbp
	.align	16, 0x90
.LBB7_36:                               # %for.body.i.116
                                        # =>This Inner Loop Header: Depth=1
	cmpw	$0, -2(%rbp)
	movl	$0, %edx
	je	.LBB7_38
# BB#37:                                # %select.mid312
                                        #   in Loop: Header=BB7_36 Depth=1
	movq	%rax, %rdx
.LBB7_38:                               # %select.end311
                                        #   in Loop: Header=BB7_36 Depth=1
	orq	%rbx, %rdx
	cmpw	$0, (%rbp)
	movl	$0, %ebx
	je	.LBB7_40
# BB#39:                                # %select.mid363
                                        #   in Loop: Header=BB7_36 Depth=1
	leaq	(%rax,%rax), %rbx
.LBB7_40:                               # %select.end362
                                        #   in Loop: Header=BB7_36 Depth=1
	orq	%rdx, %rbx
	shlq	$2, %rax
	addq	$4, %rbp
	addl	$-2, %ecx
	jne	.LBB7_36
.LBB7_41:                               # %for.body.i.148.preheader
	xorl	%r14d, %r14d
	leaq	48(%rsp), %rbp
	movl	$0, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$10920, %r8d            # imm = 0x2AA8
	movq	%r15, %rdi
	movq	%rbp, %r9
	movq	40(%rsp), %rax          # 8-byte Reload
	callq	*8(%rax)
	movl	$1, %eax
	testb	$1, %r13b
	movl	$0, %r12d
	je	.LBB7_43
# BB#42:                                # %for.body.i.148.prol
	cmpw	$0, 48(%rsp)
	setne	%al
	movzbl	%al, %r12d
	movl	$2, %eax
	movl	$1, %r14d
.LBB7_43:                               # %for.body.i.148.preheader.split
	cmpl	$1, %r13d
	je	.LBB7_50
# BB#44:                                # %for.body.i.148.preheader.split.split
	movl	%r13d, %ecx
	subl	%r14d, %ecx
	leaq	2(%r14,%r14), %rdx
	orq	%rdx, %rbp
	.align	16, 0x90
.LBB7_45:                               # %for.body.i.148
                                        # =>This Inner Loop Header: Depth=1
	cmpw	$0, -2(%rbp)
	movl	$0, %edx
	je	.LBB7_47
# BB#46:                                # %select.mid318
                                        #   in Loop: Header=BB7_45 Depth=1
	movq	%rax, %rdx
.LBB7_47:                               # %select.end317
                                        #   in Loop: Header=BB7_45 Depth=1
	orq	%r12, %rdx
	cmpw	$0, (%rbp)
	movl	$0, %r12d
	je	.LBB7_49
# BB#48:                                # %select.mid365
                                        #   in Loop: Header=BB7_45 Depth=1
	leaq	(%rax,%rax), %r12
.LBB7_49:                               # %select.end364
                                        #   in Loop: Header=BB7_45 Depth=1
	orq	%rdx, %r12
	shlq	$2, %rax
	addq	$4, %rbp
	addl	$-2, %ecx
	jne	.LBB7_45
.LBB7_50:                               # %for.body.i.180.preheader
	movq	%r13, %r14
	movq	%r14, 32(%rsp)          # 8-byte Spill
	xorl	%r13d, %r13d
	leaq	48(%rsp), %rbp
	movl	$10920, %esi            # imm = 0x2AA8
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movq	%rbp, %r9
	movq	40(%rsp), %rax          # 8-byte Reload
	callq	*16(%rax)
	movl	$1, %eax
	testb	$1, %r14b
	movl	$0, %r14d
	je	.LBB7_52
# BB#51:                                # %for.body.i.180.prol
	cmpw	$0, 48(%rsp)
	setne	%al
	movzbl	%al, %r14d
	movl	$2, %eax
	movl	$1, %r13d
.LBB7_52:                               # %for.body.i.180.preheader.split
	movq	32(%rsp), %rcx          # 8-byte Reload
	cmpl	$1, %ecx
	movq	8(%rsp), %rsi           # 8-byte Reload
	je	.LBB7_59
# BB#53:                                # %for.body.i.180.preheader.split.split
	movq	32(%rsp), %rcx          # 8-byte Reload
	subl	%r13d, %ecx
	leaq	2(%r13,%r13), %rdx
	orq	%rdx, %rbp
	.align	16, 0x90
.LBB7_54:                               # %for.body.i.180
                                        # =>This Inner Loop Header: Depth=1
	cmpw	$0, -2(%rbp)
	movl	$0, %edx
	je	.LBB7_56
# BB#55:                                # %select.mid324
                                        #   in Loop: Header=BB7_54 Depth=1
	movq	%rax, %rdx
.LBB7_56:                               # %select.end323
                                        #   in Loop: Header=BB7_54 Depth=1
	orq	%r14, %rdx
	cmpw	$0, (%rbp)
	movl	$0, %r14d
	je	.LBB7_58
# BB#57:                                # %select.mid367
                                        #   in Loop: Header=BB7_54 Depth=1
	leaq	(%rax,%rax), %r14
.LBB7_58:                               # %select.end366
                                        #   in Loop: Header=BB7_54 Depth=1
	orq	%rdx, %r14
	shlq	$2, %rax
	addq	$4, %rbp
	addl	$-2, %ecx
	jne	.LBB7_54
.LBB7_59:                               # %for.body.i.164.preheader
	orq	%rsi, 24(%rsp)          # 8-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	48(%rsp), %rbp
	xorl	%esi, %esi
	movl	$10920, %edx            # imm = 0x2AA8
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movq	%rbp, %r9
	movq	40(%rsp), %rax          # 8-byte Reload
	callq	*16(%rax)
	movl	$1, %eax
	movq	32(%rsp), %rcx          # 8-byte Reload
	testb	$1, %cl
	movl	$0, %r13d
	je	.LBB7_61
# BB#60:                                # %for.body.i.164.prol
	cmpw	$0, 48(%rsp)
	setne	%al
	movzbl	%al, %r13d
	movl	$2, %eax
	movl	$1, %ecx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
.LBB7_61:                               # %for.body.i.164.preheader.split
	orq	24(%rsp), %rbx          # 8-byte Folded Reload
	movq	32(%rsp), %rcx          # 8-byte Reload
	cmpl	$1, %ecx
	je	.LBB7_68
# BB#62:                                # %for.body.i.164.preheader.split.split
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	8(%rsp), %rdx           # 8-byte Reload
	subl	%edx, %ecx
	leaq	2(%rdx,%rdx), %rdx
	orq	%rdx, %rbp
	.align	16, 0x90
.LBB7_63:                               # %for.body.i.164
                                        # =>This Inner Loop Header: Depth=1
	cmpw	$0, -2(%rbp)
	movl	$0, %edx
	je	.LBB7_65
# BB#64:                                # %select.mid330
                                        #   in Loop: Header=BB7_63 Depth=1
	movq	%rax, %rdx
.LBB7_65:                               # %select.end329
                                        #   in Loop: Header=BB7_63 Depth=1
	orq	%r13, %rdx
	cmpw	$0, (%rbp)
	movl	$0, %r13d
	je	.LBB7_67
# BB#66:                                # %select.mid369
                                        #   in Loop: Header=BB7_63 Depth=1
	leaq	(%rax,%rax), %r13
.LBB7_67:                               # %select.end368
                                        #   in Loop: Header=BB7_63 Depth=1
	orq	%rdx, %r13
	shlq	$2, %rax
	addq	$4, %rbp
	addl	$-2, %ecx
	jne	.LBB7_63
.LBB7_68:                               # %for.body.i.132.preheader
	orq	%rbx, %r12
	xorl	%eax, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leaq	48(%rsp), %rbp
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$10920, %ecx            # imm = 0x2AA8
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movq	%rbp, %r9
	movq	40(%rsp), %rax          # 8-byte Reload
	callq	*16(%rax)
	movl	$1, %eax
	movq	32(%rsp), %rcx          # 8-byte Reload
	testb	$1, %cl
	movl	$0, %ebx
	je	.LBB7_70
# BB#69:                                # %for.body.i.132.prol
	cmpw	$0, 48(%rsp)
	setne	%al
	movzbl	%al, %ebx
	movl	$2, %eax
	movl	$1, %ecx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
.LBB7_70:                               # %for.body.i.132.preheader.split
	orq	%r12, %r14
	movq	32(%rsp), %rcx          # 8-byte Reload
	cmpl	$1, %ecx
	je	.LBB7_77
# BB#71:                                # %for.body.i.132.preheader.split.split
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	subl	%edx, %ecx
	leaq	2(%rdx,%rdx), %rdx
	orq	%rdx, %rbp
	.align	16, 0x90
.LBB7_72:                               # %for.body.i.132
                                        # =>This Inner Loop Header: Depth=1
	cmpw	$0, -2(%rbp)
	movl	$0, %edx
	je	.LBB7_74
# BB#73:                                # %select.mid336
                                        #   in Loop: Header=BB7_72 Depth=1
	movq	%rax, %rdx
.LBB7_74:                               # %select.end335
                                        #   in Loop: Header=BB7_72 Depth=1
	orq	%rbx, %rdx
	cmpw	$0, (%rbp)
	movl	$0, %ebx
	je	.LBB7_76
# BB#75:                                # %select.mid371
                                        #   in Loop: Header=BB7_72 Depth=1
	leaq	(%rax,%rax), %rbx
.LBB7_76:                               # %select.end370
                                        #   in Loop: Header=BB7_72 Depth=1
	orq	%rdx, %rbx
	shlq	$2, %rax
	addq	$4, %rbp
	addl	$-2, %ecx
	jne	.LBB7_72
.LBB7_77:                               # %for.body.i.100.preheader
	orq	%r14, %r13
	xorl	%r14d, %r14d
	leaq	48(%rsp), %rbp
	movl	$0, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$10920, %r8d            # imm = 0x2AA8
	movq	%r15, %rdi
	movq	%rbp, %r9
	movq	40(%rsp), %rax          # 8-byte Reload
	callq	*16(%rax)
	movl	$1, %ecx
	movq	32(%rsp), %rax          # 8-byte Reload
	testb	$1, %al
	movl	$0, %eax
	movq	(%rsp), %r12            # 8-byte Reload
	je	.LBB7_79
# BB#78:                                # %for.body.i.100.prol
	cmpw	$0, 48(%rsp)
	setne	%al
	movzbl	%al, %eax
	movl	$2, %ecx
	movl	$1, %r14d
.LBB7_79:                               # %for.body.i.100.preheader.split
	orq	%r13, %rbx
	movq	32(%rsp), %r13          # 8-byte Reload
	cmpl	$1, %r13d
	je	.LBB7_86
# BB#80:                                # %for.body.i.100.preheader.split.split
	movl	%r13d, %edx
	subl	%r14d, %edx
	leaq	2(%r14,%r14), %rsi
	orq	%rsi, %rbp
	.align	16, 0x90
.LBB7_81:                               # %for.body.i.100
                                        # =>This Inner Loop Header: Depth=1
	cmpw	$0, -2(%rbp)
	movl	$0, %esi
	je	.LBB7_83
# BB#82:                                # %select.mid348
                                        #   in Loop: Header=BB7_81 Depth=1
	movq	%rcx, %rsi
.LBB7_83:                               # %select.end347
                                        #   in Loop: Header=BB7_81 Depth=1
	orq	%rax, %rsi
	cmpw	$0, (%rbp)
	movl	$0, %eax
	je	.LBB7_85
# BB#84:                                # %select.mid373
                                        #   in Loop: Header=BB7_81 Depth=1
	leaq	(%rcx,%rcx), %rax
.LBB7_85:                               # %select.end372
                                        #   in Loop: Header=BB7_81 Depth=1
	orq	%rsi, %rax
	shlq	$2, %rcx
	addq	$4, %rbp
	addl	$-2, %edx
	jne	.LBB7_81
.LBB7_86:
	movq	16(%rsp), %r14          # 8-byte Reload
	jmp	.LBB7_87
.LBB7_112:                              # %cleanup
	movl	$-1, %ebp
	jmp	.LBB7_110
.LBB7_8:                                # %if.then.15
	movq	16(%r14), %rbx
	movq	%rbx, 1736(%r15)
	movw	24(%r14), %ax
	movw	%ax, 1744(%r15)
	jmp	.LBB7_88
.LBB7_111:                              # %check_drawn_comps.exit135.thread
	xorl	%ebx, %ebx
	leaq	48(%rsp), %rbp
	movl	$0, %esi
	movl	$10920, %edx            # imm = 0x2AA8
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movq	%rbp, %r9
	movq	40(%rsp), %rax          # 8-byte Reload
	callq	*8(%rax)
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$10920, %ecx            # imm = 0x2AA8
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movq	%rbp, %r9
	movq	40(%rsp), %rax          # 8-byte Reload
	callq	*8(%rax)
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$10920, %r8d            # imm = 0x2AA8
	movq	%r15, %rdi
	movq	%rbp, %r9
	movq	40(%rsp), %rax          # 8-byte Reload
	callq	*8(%rax)
	movl	$10920, %esi            # imm = 0x2AA8
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movq	%rbp, %r9
	movq	40(%rsp), %rax          # 8-byte Reload
	callq	*16(%rax)
	xorl	%esi, %esi
	movl	$10920, %edx            # imm = 0x2AA8
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movq	%rbp, %r9
	movq	40(%rsp), %rax          # 8-byte Reload
	callq	*16(%rax)
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$10920, %ecx            # imm = 0x2AA8
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movq	%rbp, %r9
	movq	40(%rsp), %rbp          # 8-byte Reload
	callq	*16(%rbp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$10920, %r8d            # imm = 0x2AA8
	movq	%r15, %rdi
	leaq	48(%rsp), %r9
	callq	*16(%rbp)
	xorl	%eax, %eax
.LBB7_87:                               # %check_drawn_comps.exit103
	orq	%rax, %rbx
	movq	%rbx, 1736(%r15)
.LBB7_88:                               # %if.end.73
	cmpl	$3, %r13d
	jne	.LBB7_90
# BB#89:                                # %land.lhs.true
	cmpw	$0, 24(%r14)
	jne	.LBB7_93
.LBB7_90:                               # %land.lhs.true.81
	cmpl	$0, 1748(%r15)
	jne	.LBB7_93
# BB#91:                                # %land.lhs.true.84
	movl	$1, %eax
	movb	%r13b, %cl
	shlq	%cl, %rax
	decq	%rax
	cmpq	%rax, %rbx
	jne	.LBB7_93
# BB#92:                                # %if.then.88
	addq	$2352, %r15             # imm = 0x930
	movl	$584, %edx              # imm = 0x248
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	memcpy
	jmp	.LBB7_109
.LBB7_93:                               # %if.end.92
	xorl	%ebp, %ebp
	cmpl	$1, 136(%r15)
	jne	.LBB7_110
# BB#94:                                # %if.then.97
	movl	100(%r15), %ecx
	movzwl	108(%r15), %edi
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jle	.LBB7_106
# BB#95:                                # %for.body.i.66.preheader
	xorl	%edx, %edx
	xorl	%eax, %eax
	testb	$1, %cl
	je	.LBB7_99
# BB#96:                                # %for.body.i.66.prol
	testb	$1, %bl
	jne	.LBB7_98
# BB#97:                                # %if.then.i.prol
	movq	272(%r15), %rax
.LBB7_98:                               # %for.inc.i.prol
	shrq	%rbx
	movl	$1, %edx
.LBB7_99:                               # %for.body.i.66.preheader.split
	cmpl	$1, %ecx
	je	.LBB7_106
# BB#100:                               # %for.body.i.66.preheader.split.split
	subl	%edx, %ecx
	leaq	280(%r15,%rdx,8), %rdx
	.align	16, 0x90
.LBB7_101:                              # %for.body.i.66
                                        # =>This Inner Loop Header: Depth=1
	testb	$1, %bl
	jne	.LBB7_103
# BB#102:                               # %if.then.i
                                        #   in Loop: Header=BB7_101 Depth=1
	orq	-8(%rdx), %rax
.LBB7_103:                              # %for.inc.i
                                        #   in Loop: Header=BB7_101 Depth=1
	testb	$2, %bl
	jne	.LBB7_105
# BB#104:                               # %if.then.i.1
                                        #   in Loop: Header=BB7_101 Depth=1
	orq	(%rdx), %rax
.LBB7_105:                              # %for.inc.i.1
                                        #   in Loop: Header=BB7_101 Depth=1
	shrq	$2, %rbx
	addq	$16, %rdx
	addl	$-2, %ecx
	jne	.LBB7_101
.LBB7_106:                              # %for.end.i
	cmpl	$9, %edi
	jb	.LBB7_108
# BB#107:                               # %if.then.10.i
	movq	%rax, %rsi
	callq	swap_color_index
.LBB7_108:                              # %set_retain_mask.exit
	movq	%rax, 1752(%r15)
.LBB7_109:                              # %cleanup.99
	xorl	%ebp, %ebp
.LBB7_110:                              # %cleanup.99
	movl	%ebp, %eax
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	update_overprint_params, .Lfunc_end7-update_overprint_params
	.cfi_endproc

	.align	16, 0x90
	.type	overprint_device_t_enum_ptrs,@function
overprint_device_t_enum_ptrs:           # @overprint_device_t_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$st_device_forward, %r9d
	jmpq	*st_device_forward+32(%rip) # TAILCALL
.Lfunc_end8:
	.size	overprint_device_t_enum_ptrs, .Lfunc_end8-overprint_device_t_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	overprint_device_t_reloc_ptrs,@function
overprint_device_t_reloc_ptrs:          # @overprint_device_t_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$st_device_forward, %edx
	jmpq	*st_device_forward+40(%rip) # TAILCALL
.Lfunc_end9:
	.size	overprint_device_t_reloc_ptrs, .Lfunc_end9-overprint_device_t_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	overprint_open_device,@function
overprint_open_device:                  # @overprint_open_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 32
.Ltmp64:
	.cfi_offset %rbx, -32
.Ltmp65:
	.cfi_offset %r14, -24
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	1728(%r14), %rbx
	movl	$-1, %ebp
	testq	%rbx, %rbx
	je	.LBB10_3
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	callq	gs_opendevice
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_3
# BB#2:                                 # %if.then.2
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gx_device_copy_params
	movl	$0, 1760(%r14)
.LBB10_3:                               # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end10:
	.size	overprint_open_device, .Lfunc_end10-overprint_open_device
	.cfi_endproc

	.align	16, 0x90
	.type	overprint_put_params,@function
overprint_put_params:                   # @overprint_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp68:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp69:
	.cfi_def_cfa_offset 32
.Ltmp70:
	.cfi_offset %rbx, -32
.Ltmp71:
	.cfi_offset %r14, -24
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	1728(%r14), %rbx
	xorl	%ebp, %ebp
	testq	%rbx, %rbx
	je	.LBB11_3
# BB#1:                                 # %land.lhs.true
	movq	%rbx, %rdi
	callq	*1256(%rbx)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB11_3
# BB#2:                                 # %if.then
	movq	%r14, %rdi
	callq	gx_device_decache_colors
	cmpl	$0, 84(%rbx)
	je	.LBB11_4
.LBB11_3:                               # %if.end.4
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB11_4:                               # %if.then.2
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	gs_closedevice          # TAILCALL
.Lfunc_end11:
	.size	overprint_put_params, .Lfunc_end11-overprint_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	overprint_get_page_device,@function
overprint_get_page_device:              # @overprint_get_page_device
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB12_1
# BB#2:                                 # %cond.false
	jmpq	*1296(%rdi)             # TAILCALL
.LBB12_1:                               # %cond.end
	xorl	%eax, %eax
	retq
.Lfunc_end12:
	.size	overprint_get_page_device, .Lfunc_end12-overprint_get_page_device
	.cfi_endproc

	.align	16, 0x90
	.type	overprint_create_compositor,@function
overprint_create_compositor:            # @overprint_create_compositor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp73:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp74:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp75:
	.cfi_def_cfa_offset 64
.Ltmp76:
	.cfi_offset %rbx, -24
.Ltmp77:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$gs_composite_overprint_type, %eax
	cmpq	%rax, (%rdx)
	je	.LBB13_1
# BB#4:                                 # %if.then
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	jmp	gx_default_create_compositor # TAILCALL
.LBB13_1:                               # %if.else
	movups	40(%rdx), %xmm0
	movups	56(%rdx), %xmm1
	movaps	%xmm1, 16(%rsp)
	movaps	%xmm0, (%rsp)
	movl	16(%rdx), %eax
	movl	%eax, 8(%rsp)
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	update_overprint_params
	testl	%eax, %eax
	js	.LBB13_3
# BB#2:                                 # %if.then.5
	movq	%rbx, (%r14)
.LBB13_3:                               # %return
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end13:
	.size	overprint_create_compositor, .Lfunc_end13-overprint_create_compositor
	.cfi_endproc

	.align	16, 0x90
	.type	overprint_get_color_comp_index,@function
overprint_get_color_comp_index:         # @overprint_get_color_comp_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp79:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp80:
	.cfi_def_cfa_offset 32
.Ltmp81:
	.cfi_offset %rbx, -32
.Ltmp82:
	.cfi_offset %r14, -24
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	1728(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB14_2
# BB#1:                                 # %if.else
	movq	%rbx, %rdi
	callq	*1544(%rbx)
	movl	%eax, %ebp
	addq	$96, %r14
	addq	$96, %rbx
	movl	$720, %edx              # imm = 0x2D0
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB14_2:                               # %if.then
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	gx_error_get_color_comp_index # TAILCALL
.Lfunc_end14:
	.size	overprint_get_color_comp_index, .Lfunc_end14-overprint_get_color_comp_index
	.cfi_endproc

	.align	16, 0x90
	.type	overprint_generic_fill_rectangle,@function
overprint_generic_fill_rectangle:       # @overprint_generic_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp84:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp85:
	.cfi_def_cfa_offset 48
.Ltmp86:
	.cfi_offset %rbx, -16
	movl	%edx, %r10d
	movl	%esi, %r11d
	movq	%rdi, %rax
	movq	1728(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB15_2
# BB#1:                                 # %if.else
	movl	1748(%rax), %esi
	movq	1736(%rax), %rdx
	movq	24(%rax), %rbx
	movzwl	1744(%rax), %eax
	movq	%rbx, 24(%rsp)
	movq	%r9, 16(%rsp)
	movl	%r8d, 8(%rsp)
	movl	%ecx, (%rsp)
	movl	%eax, %ecx
	movl	%r11d, %r8d
	movl	%r10d, %r9d
	callq	gx_overprint_generic_fill_rectangle
	jmp	.LBB15_3
.LBB15_2:                               # %cleanup
	xorl	%eax, %eax
.LBB15_3:                               # %cleanup
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end15:
	.size	overprint_generic_fill_rectangle, .Lfunc_end15-overprint_generic_fill_rectangle
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI16_0:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.text
	.align	16, 0x90
	.type	overprint_fill_rectangle_hl_color,@function
overprint_fill_rectangle_hl_color:      # @overprint_fill_rectangle_hl_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp88:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp89:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp90:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp91:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp92:
	.cfi_def_cfa_offset 56
	subq	$712, %rsp              # imm = 0x2C8
.Ltmp93:
	.cfi_def_cfa_offset 768
.Ltmp94:
	.cfi_offset %rbx, -56
.Ltmp95:
	.cfi_offset %r12, -48
.Ltmp96:
	.cfi_offset %r13, -40
.Ltmp97:
	.cfi_offset %r14, -32
.Ltmp98:
	.cfi_offset %r15, -24
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rdi, %r10
	movq	1728(%r10), %r12
	xorl	%r15d, %r15d
	testq	%r12, %r12
	je	.LBB16_39
# BB#1:                                 # %if.end
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movq	24(%r10), %rdi
	movl	1748(%r10), %eax
	movl	%eax, 148(%rsp)         # 4-byte Spill
	movzwl	108(%r12), %eax
	movl	100(%r12), %esi
	movl	(%rbp), %ecx
	movl	4(%rbp), %edx
	movl	%edx, %ebx
	orl	%ecx, %ebx
	sarl	$8, %ecx
	sarl	$8, %edx
	movl	8(%rbp), %r8d
	sarl	$8, %r8d
	movl	%r8d, %r11d
	subl	%ecx, %r11d
	movl	12(%rbp), %ebp
	sarl	$8, %ebp
	movl	%ebp, %r9d
	subl	%edx, %r9d
	sarl	$8, %ebx
	js	.LBB16_3
# BB#2:
	movq	%r10, 88(%rsp)          # 8-byte Spill
	jmp	.LBB16_4
.LBB16_3:                               # %if.then.18
	movq	%r10, 88(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	testl	%ecx, %ecx
	cmovsl	%r8d, %r11d
	cmovsl	%ebx, %ecx
	testl	%edx, %edx
	cmovsl	%ebp, %r9d
	cmovsl	%ebx, %edx
.LBB16_4:                               # %do.body.29
	movl	832(%r12), %ebx
	movl	836(%r12), %ebp
	movl	%ebx, %r13d
	subl	%ecx, %r13d
	cmpl	%r13d, %r11d
	cmovlel	%r11d, %r13d
	subl	%edx, %ebp
	cmpl	%ebp, %r9d
	cmovlel	%r9d, %ebp
	testl	%r13d, %r13d
	jle	.LBB16_39
# BB#5:                                 # %do.body.29
	movl	%ebx, 80(%rsp)          # 4-byte Spill
	movl	%r11d, 96(%rsp)         # 4-byte Spill
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	testl	%ebp, %ebp
	jle	.LBB16_39
# BB#6:                                 # %do.end.58
	movq	%rcx, %r15
	xorl	%edx, %edx
	idivl	%esi
	movl	%eax, %r14d
	movl	%r14d, 136(%rsp)        # 4-byte Spill
	movl	$1, %edx
	movb	%r14b, %cl
	shlq	%cl, %rdx
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	imull	%r13d, %r14d
	addl	$63, %r14d
	sarl	$6, %r14d
	shll	$3, %r14d
	imull	%r14d, %esi
	movl	$.L.str.6, %edx
	movq	%rdi, %rbx
	callq	*64(%rbx)
	movl	%ebp, %esi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movl	$-25, %r15d
	testq	%rax, %rax
	je	.LBB16_39
# BB#7:                                 # %if.end.68
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	$291127057, 176(%rsp)   # imm = 0x115A3F11
	movl	$0, 696(%rsp)
	movl	%r14d, 704(%rsp)
	movl	%edx, 160(%rsp)
	leal	(%r13,%rdx), %eax
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movl	%eax, 168(%rsp)
	testl	%esi, %esi
	movq	104(%rsp), %rdx         # 8-byte Reload
	movl	%r14d, 52(%rsp)         # 4-byte Spill
	movl	$0, %r15d
	jle	.LBB16_38
# BB#8:                                 # %while.body.lr.ph
	decq	120(%rsp)               # 8-byte Folded Spill
	movl	$16, %eax
	subl	136(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, 116(%rsp)         # 4-byte Spill
	movslq	%r13d, %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movslq	%r14d, %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movq	56(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax), %eax
	subl	80(%rsp), %eax          # 4-byte Folded Reload
	movl	96(%rsp), %edi          # 4-byte Reload
	notl	%edi
	cmpl	%edi, %eax
	cmovgel	%eax, %edi
	movl	$-2, %ecx
	subl	%edi, %ecx
	leaq	1(%rcx), %r14
	movq	%r14, 96(%rsp)          # 8-byte Spill
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %r14
	incq	%rcx
	andq	%rax, %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	xorps	%xmm5, %xmm5
.LBB16_9:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_10 Depth 2
                                        #       Child Loop BB16_15 Depth 3
                                        #       Child Loop BB16_18 Depth 3
                                        #       Child Loop BB16_21 Depth 3
                                        #       Child Loop BB16_29 Depth 3
                                        #       Child Loop BB16_32 Depth 3
	movl	%esi, 68(%rsp)          # 4-byte Spill
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	1736(%rax), %rbp
	leal	1(%rdx), %eax
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movl	%edx, 164(%rsp)
	movl	%eax, 172(%rsp)
	movl	100(%r12), %edx
	testl	%edx, %edx
	movl	$0, %ebx
	jle	.LBB16_36
	.align	16, 0x90
.LBB16_10:                              # %for.cond.88.preheader
                                        #   Parent Loop BB16_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_15 Depth 3
                                        #       Child Loop BB16_18 Depth 3
                                        #       Child Loop BB16_21 Depth 3
                                        #       Child Loop BB16_29 Depth 3
                                        #       Child Loop BB16_32 Depth 3
	testl	%edx, %edx
	jle	.LBB16_22
# BB#11:                                # %for.body.93.lr.ph
                                        #   in Loop: Header=BB16_10 Depth=2
	movslq	%edx, %rax
	testl	%edx, %edx
	movl	$0, %esi
	je	.LBB16_21
# BB#12:                                # %overflow.checked153
                                        #   in Loop: Header=BB16_10 Depth=2
	movq	%rax, %rcx
	andq	$-4, %rcx
	movl	$0, %esi
	je	.LBB16_20
# BB#13:                                # %vector.body149.preheader
                                        #   in Loop: Header=BB16_10 Depth=2
	leaq	-4(%rax), %rsi
	movl	%esi, %edi
	shrl	$2, %edi
	incl	%edi
	testb	$3, %dil
	movl	$0, %edi
	je	.LBB16_16
# BB#14:                                # %vector.body149.prol.preheader
                                        #   in Loop: Header=BB16_10 Depth=2
	addl	$-4, %edx
	shrl	$2, %edx
	incl	%edx
	andl	$3, %edx
	negq	%rdx
	xorl	%edi, %edi
	.align	16, 0x90
.LBB16_15:                              # %vector.body149.prol
                                        #   Parent Loop BB16_9 Depth=1
                                        #     Parent Loop BB16_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	%xmm5, 184(%rsp,%rdi,8)
	movups	%xmm5, 200(%rsp,%rdi,8)
	addq	$4, %rdi
	incq	%rdx
	jne	.LBB16_15
.LBB16_16:                              # %vector.body149.preheader.split
                                        #   in Loop: Header=BB16_10 Depth=2
	cmpq	$12, %rsi
	jb	.LBB16_19
# BB#17:                                # %vector.body149.preheader.split.split
                                        #   in Loop: Header=BB16_10 Depth=2
	movq	%rax, %rdx
	andq	$-4, %rdx
	subq	%rdi, %rdx
	leaq	296(%rsp), %rsi
	leaq	(%rsi,%rdi,8), %rsi
	.align	16, 0x90
.LBB16_18:                              # %vector.body149
                                        #   Parent Loop BB16_9 Depth=1
                                        #     Parent Loop BB16_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	%xmm5, -112(%rsi)
	movups	%xmm5, -96(%rsi)
	movups	%xmm5, -80(%rsi)
	movups	%xmm5, -64(%rsi)
	movups	%xmm5, -48(%rsi)
	movups	%xmm5, -32(%rsi)
	movups	%xmm5, -16(%rsi)
	movups	%xmm5, (%rsi)
	subq	$-128, %rsi
	addq	$-16, %rdx
	jne	.LBB16_18
.LBB16_19:                              #   in Loop: Header=BB16_10 Depth=2
	movq	%rcx, %rsi
.LBB16_20:                              # %middle.block150
                                        #   in Loop: Header=BB16_10 Depth=2
	cmpq	%rsi, %rax
	je	.LBB16_22
	.align	16, 0x90
.LBB16_21:                              # %for.body.93
                                        #   Parent Loop BB16_9 Depth=1
                                        #     Parent Loop BB16_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	$0, 184(%rsp,%rsi,8)
	incq	%rsi
	cmpq	%rax, %rsi
	jl	.LBB16_21
.LBB16_22:                              # %for.end
                                        #   in Loop: Header=BB16_10 Depth=2
	movq	%rbx, %rax
	imulq	136(%rsp), %rax         # 8-byte Folded Reload
	movq	152(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, 184(%rsp,%rbx,8)
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	leaq	160(%rsp), %rsi
	leaq	176(%rsp), %rdx
	callq	*1448(%r12)
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB16_38
# BB#23:                                # %if.end.105
                                        #   in Loop: Header=BB16_10 Depth=2
	movl	%ebp, %eax
	andl	$1, %eax
	cmpl	$0, 148(%rsp)           # 4-byte Folded Reload
	xorps	%xmm5, %xmm5
	movdqa	.LCPI16_0(%rip), %xmm0  # xmm0 = [255,255,255,255]
	movdqa	%xmm0, %xmm6
	je	.LBB16_33
# BB#24:                                # %if.then.106
                                        #   in Loop: Header=BB16_10 Depth=2
	testq	%rax, %rax
	sete	%al
	testl	%r13d, %r13d
	jle	.LBB16_35
# BB#25:                                # %if.then.106
                                        #   in Loop: Header=BB16_10 Depth=2
	testb	%al, %al
	jne	.LBB16_35
# BB#26:                                # %for.body.123.lr.ph
                                        #   in Loop: Header=BB16_10 Depth=2
	movq	128(%rsp), %rax         # 8-byte Reload
	movzwl	8(%rax,%rbx,2), %eax
	movl	116(%rsp), %ecx         # 4-byte Reload
	shrl	%cl, %eax
	movq	120(%rsp), %rcx         # 8-byte Reload
	andl	%eax, %ecx
	movq	184(%rsp,%rbx,8), %rax
	xorl	%esi, %esi
	testq	%r14, %r14
	notl	%ecx
	movzbl	%cl, %ecx
	je	.LBB16_27
# BB#28:                                # %vector.ph
                                        #   in Loop: Header=BB16_10 Depth=2
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	leaq	(%rax,%r14), %rdx
	addq	$4, %rax
	movq	80(%rsp), %rsi          # 8-byte Reload
	.align	16, 0x90
.LBB16_29:                              # %vector.body
                                        #   Parent Loop BB16_9 Depth=1
                                        #     Parent Loop BB16_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movd	-4(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	movd	(%rax), %xmm2           # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	pandn	%xmm6, %xmm1
	pandn	%xmm6, %xmm2
	pshufd	$245, %xmm1, %xmm3      # xmm3 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm0, %xmm4      # xmm4 = xmm0[1,1,3,3]
	pmuludq	%xmm4, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	pshufd	$245, %xmm2, %xmm3      # xmm3 = xmm2[1,1,3,3]
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pmuludq	%xmm4, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	psrld	$8, %xmm1
	psrld	$8, %xmm2
	pxor	%xmm6, %xmm1
	pxor	%xmm6, %xmm2
	pand	%xmm6, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, -4(%rax)
	pand	%xmm6, %xmm2
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, (%rax)
	addq	$8, %rax
	addq	$-8, %rsi
	jne	.LBB16_29
# BB#30:                                #   in Loop: Header=BB16_10 Depth=2
	movq	%rdx, %rax
	movq	%r14, %rsi
	movl	%r14d, %edx
	jmp	.LBB16_31
	.align	16, 0x90
.LBB16_33:                              # %if.else
                                        #   in Loop: Header=BB16_10 Depth=2
	testq	%rax, %rax
	je	.LBB16_35
# BB#34:                                # %if.then.140
                                        #   in Loop: Header=BB16_10 Depth=2
	movq	184(%rsp,%rbx,8), %rdi
	movq	128(%rsp), %rax         # 8-byte Reload
	movzwl	8(%rax,%rbx,2), %eax
	movl	116(%rsp), %ecx         # 4-byte Reload
	shrl	%cl, %eax
	movq	120(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %esi
	andl	%eax, %esi
	movq	72(%rsp), %rdx          # 8-byte Reload
	callq	memset
	xorps	%xmm5, %xmm5
	jmp	.LBB16_35
.LBB16_27:                              #   in Loop: Header=BB16_10 Depth=2
	xorl	%edx, %edx
.LBB16_31:                              # %middle.block
                                        #   in Loop: Header=BB16_10 Depth=2
	cmpq	%rsi, 96(%rsp)          # 8-byte Folded Reload
	je	.LBB16_35
	.align	16, 0x90
.LBB16_32:                              # %for.body.123
                                        #   Parent Loop BB16_9 Depth=1
                                        #     Parent Loop BB16_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rax), %esi
	xorl	$255, %esi
	imull	%ecx, %esi
	shrl	$8, %esi
	notl	%esi
	movb	%sil, (%rax)
	incl	%edx
	incq	%rax
	cmpl	%r13d, %edx
	jl	.LBB16_32
	.align	16, 0x90
.LBB16_35:                              # %for.inc.159
                                        #   in Loop: Header=BB16_10 Depth=2
	shrq	%rbp
	incq	%rbx
	movslq	100(%r12), %rdx
	cmpq	%rdx, %rbx
	jl	.LBB16_10
.LBB16_36:                              # %for.end.161
                                        #   in Loop: Header=BB16_9 Depth=1
	movl	%r13d, 8(%rsp)
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	%eax, (%rsp)
	movl	$1, 24(%rsp)
	movl	$1, 16(%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%r12, %rdi
	movq	152(%rsp), %rsi         # 8-byte Reload
	movl	52(%rsp), %ecx          # 4-byte Reload
	movq	56(%rsp), %r9           # 8-byte Reload
	callq	*1672(%r12)
	movl	%eax, %r15d
	movl	68(%rsp), %esi          # 4-byte Reload
	cmpl	$2, %esi
	jl	.LBB16_38
# BB#37:                                # %for.end.161
                                        #   in Loop: Header=BB16_9 Depth=1
	decl	%esi
	testl	%r15d, %r15d
	movl	64(%rsp), %eax          # 4-byte Reload
	movl	%eax, %edx
	xorps	%xmm5, %xmm5
	jns	.LBB16_9
.LBB16_38:                              # %while.end
	movl	$.L.str.6, %edx
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	152(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
.LBB16_39:                              # %cleanup
	movl	%r15d, %eax
	addq	$712, %rsp              # imm = 0x2C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	overprint_fill_rectangle_hl_color, .Lfunc_end16-overprint_fill_rectangle_hl_color
	.cfi_endproc

	.align	16, 0x90
	.type	overprint_sep_fill_rectangle,@function
overprint_sep_fill_rectangle:           # @overprint_sep_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp101:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp102:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp103:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp104:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp105:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp106:
	.cfi_def_cfa_offset 96
.Ltmp107:
	.cfi_offset %rbx, -56
.Ltmp108:
	.cfi_offset %r12, -48
.Ltmp109:
	.cfi_offset %r13, -40
.Ltmp110:
	.cfi_offset %r14, -32
.Ltmp111:
	.cfi_offset %r15, -24
.Ltmp112:
	.cfi_offset %rbp, -16
	movl	%r8d, %r12d
	movl	%edx, %r15d
	movl	%esi, %r13d
	movq	%rdi, %rbp
	movq	1728(%rbp), %rbx
	testq	%rbx, %rbx
	je	.LBB17_8
# BB#1:                                 # %if.else
	movzwl	108(%rbx), %r14d
	cmpl	$9, %r14d
	jb	.LBB17_2
# BB#3:                                 # %if.end
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movl	%r14d, %edi
	movq	%r9, %rsi
	callq	swap_color_index
	movq	%rax, %r9
	cmpl	$32, %r14d
	ja	.LBB17_7
	jmp	.LBB17_4
.LBB17_8:                               # %cleanup.18
	xorl	%eax, %eax
	jmp	.LBB17_9
.LBB17_2:
	movl	%ecx, 36(%rsp)          # 4-byte Spill
.LBB17_4:                               # %land.lhs.true
	leal	65535(%r14), %eax
	testl	%r14d, %eax
	jne	.LBB17_7
# BB#5:                                 # %land.lhs.true.10
	cmpl	$0, 1748(%rbp)
	je	.LBB17_6
.LBB17_7:                               # %if.else.13
	movl	1748(%rbp), %esi
	movq	1752(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r9, 8(%rsp)
	movl	%r12d, (%rsp)
	movq	%rbx, %rdi
	movl	%r13d, %ecx
	movl	%r15d, %r8d
	movl	36(%rsp), %r9d          # 4-byte Reload
	callq	gx_overprint_sep_fill_rectangle_2
.LBB17_9:                               # %cleanup.18
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_6:                               # %if.then.11
	movq	1752(%rbp), %rsi
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r9, (%rsp)
	movq	%rbx, %rdi
	movl	%r13d, %edx
	movl	%r15d, %ecx
	movl	36(%rsp), %r8d          # 4-byte Reload
	movl	%r12d, %r9d
	callq	gx_overprint_sep_fill_rectangle_1
	jmp	.LBB17_9
.Lfunc_end17:
	.size	overprint_sep_fill_rectangle, .Lfunc_end17-overprint_sep_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	overprint_copy_planes,@function
overprint_copy_planes:                  # @overprint_copy_planes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp114:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp115:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp116:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp117:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp118:
	.cfi_def_cfa_offset 56
	subq	$712, %rsp              # imm = 0x2C8
.Ltmp119:
	.cfi_def_cfa_offset 768
.Ltmp120:
	.cfi_offset %rbx, -56
.Ltmp121:
	.cfi_offset %r12, -48
.Ltmp122:
	.cfi_offset %r13, -40
.Ltmp123:
	.cfi_offset %r14, -32
.Ltmp124:
	.cfi_offset %r15, -24
.Ltmp125:
	.cfi_offset %rbp, -16
	movl	%r9d, %r12d
	movq	%rsi, %r9
	movq	%rdi, %r13
	movq	1728(%r13), %rbx
	xorl	%r14d, %r14d
	testq	%rbx, %rbx
	je	.LBB18_31
# BB#1:                                 # %if.end
	movl	792(%rsp), %eax
	movl	784(%rsp), %r10d
	movl	776(%rsp), %r11d
	movl	768(%rsp), %r15d
	cmpl	$0, 1760(%r13)
	je	.LBB18_30
# BB#2:                                 # %if.then.1
	movq	24(%r13), %rdi
	movzwl	108(%rbx), %eax
	movl	100(%rbx), %esi
	movl	%r15d, %ebp
	orl	%r12d, %ebp
	jns	.LBB18_4
# BB#3:                                 # %if.then.8
	movl	%r12d, %ebp
	sarl	$31, %ebp
	andl	%r12d, %ebp
	addl	%ebp, %r11d
	xorl	%r8d, %r8d
	testl	%r12d, %r12d
	cmovsl	%r8d, %r12d
	movl	%r15d, %ebp
	sarl	$31, %ebp
	andl	%r15d, %ebp
	addl	%ebp, %r10d
	testl	%r15d, %r15d
	cmovsl	%r8d, %r15d
.LBB18_4:                               # %do.body.19
	movl	832(%rbx), %ebp
	movq	%rbx, 112(%rsp)         # 8-byte Spill
	movl	836(%rbx), %ebx
	subl	%r12d, %ebp
	cmpl	%ebp, %r11d
	cmovlel	%r11d, %ebp
	subl	%r15d, %ebx
	cmpl	%ebx, %r10d
	cmovlel	%r10d, %ebx
	testl	%ebp, %ebp
	jle	.LBB18_31
# BB#5:                                 # %do.body.19
	movl	%edx, 80(%rsp)          # 4-byte Spill
	movl	%ecx, 88(%rsp)          # 4-byte Spill
	movq	%r13, 120(%rsp)         # 8-byte Spill
	movq	%r9, 104(%rsp)          # 8-byte Spill
	testl	%ebx, %ebx
	jle	.LBB18_31
# BB#6:                                 # %do.end.47
	xorl	%edx, %edx
	idivl	%esi
	movl	%eax, %r13d
	imull	%ebp, %r13d
	addl	$63, %r13d
	sarl	$6, %r13d
	shll	$3, %r13d
	imull	%r13d, %esi
	movl	$.L.str.7, %edx
	movq	%rbp, %r14
	movq	%r14, 56(%rsp)          # 8-byte Spill
	movq	%rdi, %rbp
	callq	*64(%rbp)
	movq	%rbx, %rsi
	movq	%rbp, %rcx
	movq	%r14, %rdx
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movl	$-25, %r14d
	testq	%rax, %rax
	je	.LBB18_31
# BB#7:                                 # %if.end.56
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	$291127057, 176(%rsp)   # imm = 0x115A3F11
	movl	$0, 696(%rsp)
	movl	%r13d, 704(%rsp)
	movl	%r12d, 160(%rsp)
	leal	(%rdx,%r12), %eax
	movl	%eax, 168(%rsp)
	testl	%esi, %esi
	movq	112(%rsp), %rbx         # 8-byte Reload
	movl	$0, %r14d
	jle	.LBB18_24
# BB#8:                                 # %while.body.lr.ph
	movl	88(%rsp), %ecx          # 4-byte Reload
	movl	792(%rsp), %eax
	imull	%ecx, %eax
	cltq
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movslq	%edx, %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movslq	%r13d, %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movslq	%ecx, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movslq	80(%rsp), %rax          # 4-byte Folded Reload
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	xorps	%xmm0, %xmm0
.LBB18_9:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_11 Depth 2
                                        #       Child Loop BB18_16 Depth 3
                                        #       Child Loop BB18_19 Depth 3
                                        #       Child Loop BB18_22 Depth 3
	movq	%rsi, 80(%rsp)          # 8-byte Spill
	movq	%r15, 88(%rsp)          # 8-byte Spill
	movq	%r12, 96(%rsp)          # 8-byte Spill
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	1736(%rax), %r12
	leal	1(%r15), %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movl	%r15d, 164(%rsp)
	movl	%eax, 172(%rsp)
	movl	100(%rbx), %ecx
	testl	%ecx, %ecx
	jle	.LBB18_28
# BB#10:                                # %for.cond.79.preheader.lr.ph
                                        #   in Loop: Header=BB18_9 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	imulq	40(%rsp), %rax          # 8-byte Folded Reload
	addq	32(%rsp), %rax          # 8-byte Folded Reload
	movq	104(%rsp), %rdx         # 8-byte Reload
	leaq	(%rax,%rdx), %r15
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB18_11:                              # %for.cond.79.preheader
                                        #   Parent Loop BB18_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_16 Depth 3
                                        #       Child Loop BB18_19 Depth 3
                                        #       Child Loop BB18_22 Depth 3
	testl	%ecx, %ecx
	jle	.LBB18_23
# BB#12:                                # %for.body.84.lr.ph
                                        #   in Loop: Header=BB18_11 Depth=2
	movslq	%ecx, %rax
	testl	%ecx, %ecx
	movl	$0, %esi
	je	.LBB18_22
# BB#13:                                # %overflow.checked
                                        #   in Loop: Header=BB18_11 Depth=2
	movq	%rax, %rdx
	andq	$-4, %rdx
	movl	$0, %esi
	je	.LBB18_21
# BB#14:                                # %vector.body.preheader
                                        #   in Loop: Header=BB18_11 Depth=2
	leaq	-4(%rax), %rsi
	movl	%esi, %edi
	shrl	$2, %edi
	incl	%edi
	testb	$3, %dil
	movl	$0, %edi
	je	.LBB18_17
# BB#15:                                # %vector.body.prol.preheader
                                        #   in Loop: Header=BB18_11 Depth=2
	addl	$-4, %ecx
	shrl	$2, %ecx
	incl	%ecx
	andl	$3, %ecx
	negq	%rcx
	xorl	%edi, %edi
	.align	16, 0x90
.LBB18_16:                              # %vector.body.prol
                                        #   Parent Loop BB18_9 Depth=1
                                        #     Parent Loop BB18_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	%xmm0, 184(%rsp,%rdi,8)
	movups	%xmm0, 200(%rsp,%rdi,8)
	addq	$4, %rdi
	incq	%rcx
	jne	.LBB18_16
.LBB18_17:                              # %vector.body.preheader.split
                                        #   in Loop: Header=BB18_11 Depth=2
	cmpq	$12, %rsi
	jb	.LBB18_20
# BB#18:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB18_11 Depth=2
	movq	%rax, %rcx
	andq	$-4, %rcx
	subq	%rdi, %rcx
	leaq	296(%rsp), %rsi
	leaq	(%rsi,%rdi,8), %rsi
	.align	16, 0x90
.LBB18_19:                              # %vector.body
                                        #   Parent Loop BB18_9 Depth=1
                                        #     Parent Loop BB18_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	%xmm0, -112(%rsi)
	movups	%xmm0, -96(%rsi)
	movups	%xmm0, -80(%rsi)
	movups	%xmm0, -64(%rsi)
	movups	%xmm0, -48(%rsi)
	movups	%xmm0, -32(%rsi)
	movups	%xmm0, -16(%rsi)
	movups	%xmm0, (%rsi)
	subq	$-128, %rsi
	addq	$-16, %rcx
	jne	.LBB18_19
.LBB18_20:                              #   in Loop: Header=BB18_11 Depth=2
	movq	%rdx, %rsi
.LBB18_21:                              # %middle.block
                                        #   in Loop: Header=BB18_11 Depth=2
	cmpq	%rsi, %rax
	je	.LBB18_23
	.align	16, 0x90
.LBB18_22:                              # %for.body.84
                                        #   Parent Loop BB18_9 Depth=1
                                        #     Parent Loop BB18_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	$0, 184(%rsp,%rsi,8)
	incq	%rsi
	cmpq	%rax, %rsi
	jl	.LBB18_22
.LBB18_23:                              # %for.end
                                        #   in Loop: Header=BB18_11 Depth=2
	movq	%rbp, %rax
	imulq	144(%rsp), %rax         # 8-byte Folded Reload
	movq	152(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, 184(%rsp,%rbp,8)
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	leaq	160(%rsp), %rsi
	leaq	176(%rsp), %rdx
	callq	*1448(%rbx)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB18_24
# BB#25:                                # %if.end.99
                                        #   in Loop: Header=BB18_11 Depth=2
	testb	$1, %r12b
	je	.LBB18_27
# BB#26:                                # %if.then.102
                                        #   in Loop: Header=BB18_11 Depth=2
	movq	184(%rsp,%rbp,8), %rdi
	movq	%r15, %rsi
	movq	128(%rsp), %rdx         # 8-byte Reload
	callq	memcpy
.LBB18_27:                              # %if.end.108
                                        #   in Loop: Header=BB18_11 Depth=2
	addq	136(%rsp), %r15         # 8-byte Folded Reload
	shrq	%r12
	incq	%rbp
	movslq	100(%rbx), %rcx
	cmpq	%rcx, %rbp
	xorps	%xmm0, %xmm0
	jl	.LBB18_11
.LBB18_28:                              # %for.end.115
                                        #   in Loop: Header=BB18_9 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	%eax, 8(%rsp)
	movq	88(%rsp), %rax          # 8-byte Reload
	movl	%eax, (%rsp)
	movl	$1, 24(%rsp)
	movl	$1, 16(%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movq	152(%rsp), %rsi         # 8-byte Reload
	movl	%r13d, %ecx
	movq	96(%rsp), %r12          # 8-byte Reload
	movl	%r12d, %r9d
	callq	*1672(%rbx)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB18_24
# BB#29:                                # %for.end.115
                                        #   in Loop: Header=BB18_9 Depth=1
	incq	64(%rsp)                # 8-byte Folded Spill
	movq	80(%rsp), %rax          # 8-byte Reload
	cmpl	$1, %eax
	leal	-1(%rax), %eax
	movl	%eax, %esi
	movl	76(%rsp), %eax          # 4-byte Reload
	movl	%eax, %r15d
	xorps	%xmm0, %xmm0
	jg	.LBB18_9
.LBB18_24:                              # %if.then.97
	movl	$.L.str.7, %edx
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	152(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
	jmp	.LBB18_31
.LBB18_30:                              # %if.else
	movl	%eax, 24(%rsp)
	movl	%r10d, 16(%rsp)
	movl	%r11d, 8(%rsp)
	movl	%r15d, (%rsp)
	movq	%rbx, %rdi
	movq	%r9, %rsi
	movl	%r12d, %r9d
	callq	*1672(%rbx)
	movl	%eax, %r14d
.LBB18_31:                              # %cleanup
	movl	%r14d, %eax
	addq	$712, %rsp              # imm = 0x2C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	overprint_copy_planes, .Lfunc_end18-overprint_copy_planes
	.cfi_endproc

	.align	16, 0x90
	.type	overprint_copy_alpha_hl_color,@function
overprint_copy_alpha_hl_color:          # @overprint_copy_alpha_hl_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp127:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp128:
	.cfi_def_cfa_offset 64
.Ltmp129:
	.cfi_offset %rbx, -24
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	64(%rsp), %r10d
	movl	72(%rsp), %r11d
	movl	80(%rsp), %eax
	movq	88(%rsp), %rdi
	movl	96(%rsp), %ebp
	movl	$1, 1760(%rbx)
	movl	%ebp, 32(%rsp)
	movq	%rdi, 24(%rsp)
	movl	%eax, 16(%rsp)
	movl	%r11d, 8(%rsp)
	movl	%r10d, (%rsp)
	movq	%rbx, %rdi
	callq	gx_default_copy_alpha_hl_color
	movl	$0, 1760(%rbx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end19:
	.size	overprint_copy_alpha_hl_color, .Lfunc_end19-overprint_copy_alpha_hl_color
	.cfi_endproc

	.align	16, 0x90
	.type	swap_color_index,@function
swap_color_index:                       # @swap_color_index
	.cfi_startproc
# BB#0:                                 # %entry
	leal	-8(%rdi), %ecx
	movq	%rsi, %rax
	shrq	%cl, %rax
	movzbl	%al, %eax
	movzbl	%sil, %edx
	shlq	%cl, %rdx
	orq	%rax, %rdx
	movl	$255, %eax
	shlq	%cl, %rax
	notq	%rax
	andq	%rsi, %rax
	andq	$-256, %rax
	orq	%rdx, %rax
	cmpl	$25, %edi
	jl	.LBB20_4
# BB#1:                                 # %if.then
	leal	-24(%rdi), %ecx
	movl	$65280, %esi            # imm = 0xFF00
	shlq	%cl, %rsi
	notq	%rsi
	andq	%rax, %rsi
	movq	%rax, %rdx
	shrq	%cl, %rdx
	andl	$65280, %edx            # imm = 0xFF00
	andl	$65280, %eax            # imm = 0xFF00
	shlq	%cl, %rax
	andq	$-65281, %rsi           # imm = 0xFFFFFFFFFFFF00FF
	orq	%rax, %rsi
	movq	%rdx, %rax
	orq	%rsi, %rax
	cmpl	$41, %edi
	jl	.LBB20_4
# BB#2:                                 # %if.then.24
	leal	-40(%rdi), %ecx
	movl	$16711680, %edx         # imm = 0xFF0000
	shlq	%cl, %rdx
	notq	%rdx
	andq	%rax, %rdx
	shrq	%cl, %rax
	andl	$16711680, %eax         # imm = 0xFF0000
	andl	$16711680, %esi         # imm = 0xFF0000
	shlq	%cl, %rsi
	andq	$-16711681, %rdx        # imm = 0xFFFFFFFFFF00FFFF
	orq	%rsi, %rdx
	orq	%rdx, %rax
	cmpl	$57, %edi
	jl	.LBB20_4
# BB#3:                                 # %if.then.41
	addl	$-56, %edi
	movl	$4278190080, %esi       # imm = 0xFF000000
	movb	%dil, %cl
	shlq	%cl, %rsi
	notq	%rsi
	andq	%rax, %rsi
	movb	%dil, %cl
	shrq	%cl, %rax
	andl	$-16777216, %eax        # imm = 0xFFFFFFFFFF000000
	andl	$-16777216, %edx        # imm = 0xFFFFFFFFFF000000
	movb	%dil, %cl
	shlq	%cl, %rdx
	movabsq	$-4278190081, %rcx      # imm = 0xFFFFFFFF00FFFFFF
	andq	%rsi, %rcx
	orq	%rdx, %rcx
	orq	%rcx, %rax
.LBB20_4:                               # %if.end.58
	retq
.Lfunc_end20:
	.size	swap_color_index, .Lfunc_end20-swap_color_index
	.cfi_endproc

	.type	gs_composite_overprint_type,@object # @gs_composite_overprint_type
	.section	.rodata,"a",@progbits
	.globl	gs_composite_overprint_type
	.align	8
gs_composite_overprint_type:
	.byte	2                       # 0x2
	.zero	7
	.quad	c_overprint_create_default_compositor
	.quad	c_overprint_equal
	.quad	c_overprint_write
	.quad	c_overprint_read
	.quad	gx_default_composite_adjust_ctm
	.quad	c_overprint_is_closing
	.quad	gx_default_composite_is_friendly
	.quad	gx_default_composite_clist_write_update
	.quad	gx_default_composite_clist_read_update
	.quad	gx_default_composite_get_cropping
	.size	gs_composite_overprint_type, 88

	.type	st_overprint,@object    # @st_overprint
	.align	8
st_overprint:
	.long	72                      # 0x48
	.zero	4
	.quad	.L.str.3
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_overprint, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_create_overprint"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"overprint_device"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"DeviceGray"
	.size	.L.str.2, 11

	.type	gs_overprint_device,@object # @gs_overprint_device
	.section	.rodata,"a",@progbits
	.globl	gs_overprint_device
	.align	8
gs_overprint_device:
	.long	3520                    # 0xdc0
	.zero	4
	.quad	0
	.quad	.L.str.1
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.zero	16
	.long	0                       # 0x0
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.quad	0
	.quad	0                       # 0x0
	.short	0                       # 0x0
	.zero	2
	.long	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	584
	.zero	584
	.zero	584
	.size	gs_overprint_device, 3520

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"gs_overprint_t"
	.size	.L.str.3, 15

	.type	st_overprint_device_t,@object # @st_overprint_device_t
	.section	.rodata,"a",@progbits
	.align	8
st_overprint_device_t:
	.long	3520                    # 0xdc0
	.zero	4
	.quad	.L.str.5
	.quad	0
	.quad	0
	.quad	overprint_device_t_enum_ptrs
	.quad	overprint_device_t_reloc_ptrs
	.quad	gx_device_finalize
	.quad	0
	.size	st_overprint_device_t, 64

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"create overprint compositor"
	.size	.L.str.4, 28

	.type	no_overprint_procs,@object # @no_overprint_procs
	.section	.rodata,"a",@progbits
	.align	8
no_overprint_procs:
	.quad	overprint_open_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_fill_rectangle
	.quad	gx_forward_tile_rectangle
	.quad	gx_forward_copy_mono
	.quad	gx_forward_copy_color
	.quad	0
	.quad	0
	.quad	0
	.quad	overprint_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	overprint_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_strip_tile_rectangle
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	overprint_create_compositor
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	overprint_get_color_comp_index
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_fillpage
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_copy_planes
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	no_overprint_procs, 584

	.type	generic_overprint_procs,@object # @generic_overprint_procs
	.align	8
generic_overprint_procs:
	.quad	overprint_open_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	overprint_generic_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	gx_default_copy_mono
	.quad	gx_default_copy_color
	.quad	gx_default_draw_line
	.quad	0
	.quad	0
	.quad	overprint_put_params
	.quad	0
	.quad	0
	.quad	gx_default_get_xfont_device
	.quad	0
	.quad	overprint_get_page_device
	.quad	0
	.quad	gx_default_copy_alpha
	.quad	0
	.quad	gx_default_copy_rop
	.quad	gx_default_fill_path
	.quad	gx_default_stroke_path
	.quad	gx_default_fill_mask
	.quad	gx_default_fill_trapezoid
	.quad	gx_default_fill_parallelogram
	.quad	gx_default_fill_triangle
	.quad	gx_default_draw_thin_line
	.quad	gx_default_begin_image
	.quad	0
	.quad	0
	.quad	gx_default_strip_tile_rectangle
	.quad	gx_default_strip_copy_rop
	.quad	0
	.quad	gx_default_begin_typed_image
	.quad	0
	.quad	0
	.quad	overprint_create_compositor
	.quad	0
	.quad	gx_default_text_begin
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	overprint_get_color_comp_index
	.quad	0
	.quad	0
	.quad	0
	.quad	overprint_fill_rectangle_hl_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_copy_planes
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	generic_overprint_procs, 584

	.type	sep_overprint_procs,@object # @sep_overprint_procs
	.align	8
sep_overprint_procs:
	.quad	overprint_open_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	overprint_sep_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	gx_default_copy_mono
	.quad	gx_default_copy_color
	.quad	gx_default_draw_line
	.quad	0
	.quad	0
	.quad	overprint_put_params
	.quad	0
	.quad	0
	.quad	gx_default_get_xfont_device
	.quad	0
	.quad	overprint_get_page_device
	.quad	0
	.quad	gx_default_copy_alpha
	.quad	0
	.quad	gx_default_copy_rop
	.quad	gx_default_fill_path
	.quad	gx_default_stroke_path
	.quad	gx_default_fill_mask
	.quad	gx_default_fill_trapezoid
	.quad	gx_default_fill_parallelogram
	.quad	gx_default_fill_triangle
	.quad	gx_default_draw_thin_line
	.quad	gx_default_begin_image
	.quad	0
	.quad	0
	.quad	gx_default_strip_tile_rectangle
	.quad	gx_default_strip_copy_rop
	.quad	0
	.quad	gx_default_begin_typed_image
	.quad	0
	.quad	0
	.quad	overprint_create_compositor
	.quad	0
	.quad	gx_default_text_begin
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	overprint_get_color_comp_index
	.quad	0
	.quad	0
	.quad	0
	.quad	overprint_fill_rectangle_hl_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	overprint_copy_planes
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	overprint_copy_alpha_hl_color
	.quad	0
	.size	sep_overprint_procs, 584

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"overprint_device_t"
	.size	.L.str.5, 19

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"overprint_fill_rectangle_hl_color"
	.size	.L.str.6, 34

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"overprint_copy_planes"
	.size	.L.str.7, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
