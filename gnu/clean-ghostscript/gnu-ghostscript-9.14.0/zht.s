	.text
	.file	"zht.bc"
	.globl	zscreen_enum_init
	.align	16, 0x90
	.type	zscreen_enum_init,@function
zscreen_enum_init:                      # @zscreen_enum_init
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
	movq	%r9, (%rsp)             # 8-byte Spill
	movl	%r8d, 20(%rsp)          # 4-byte Spill
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	%rdx, %r13
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movslq	80(%rsp), %r12
	movq	24(%rbx,%r12,8), %rbp
	movq	536(%rbx), %rax
	addq	$-80, %rax
	cmpq	%rax, 520(%rbx)
	jbe	.LBB0_2
# BB#1:                                 # %if.then
	leaq	520(%rbx), %rdi
	movl	$5, %esi
	callq	ref_stack_extend
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_6
.LBB0_2:                                # %if.end.7
	movl	$.L.str, %esi
	movq	%rbp, %rdi
	callq	gs_screen_enum_alloc
	movl	$-25, %r15d
	testq	%rax, %rax
	je	.LBB0_6
# BB#3:                                 # %if.end.11
	movq	520(%rbx), %rcx
	movq	%rax, 72(%rcx)
	leal	2048(,%r12,4), %ecx
	movq	520(%rbx), %rdx
	movw	%cx, 64(%rdx)
	movq	(%rbx), %rdx
	movq	%rax, %rdi
	movq	%r14, %rsi
	movq	%r13, %rcx
	movq	%rbp, %r8
	callq	gs_screen_enum_init_memory
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_4
# BB#5:                                 # %if.end.25
	movq	520(%rbx), %rax
	movq	$screen_cleanup, 24(%rax)
	movq	520(%rbx), %rax
	movw	$3712, 16(%rax)         # imm = 0xE80
	movl	$0, 20(%rax)
	leaq	64(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	%rcx, 40(%rax)
	movq	520(%rbx), %rax
	movw	$3968, -32(%rax)        # imm = 0xF80
	movl	$0, -28(%rax)
	movq	8(%rsp), %rcx           # 8-byte Reload
	movups	(%rcx), %xmm0
	movups	%xmm0, -16(%rax)
	movq	520(%rbx), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$screen_sample, 24(%rax)
	movq	520(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movslq	20(%rsp), %rax          # 4-byte Folded Reload
	shlq	$4, %rax
	subq	%rax, 624(%rbx)
	movl	$5, %r15d
	jmp	.LBB0_6
.LBB0_4:                                # %if.then.23
	movq	520(%rbx), %rax
	movq	72(%rax), %rsi
	movq	16(%rsi), %rdi
	movl	$.L.str.7, %edx
	callq	*24(%rdi)
.LBB0_6:                                # %cleanup.89
	movl	%r15d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	zscreen_enum_init, .Lfunc_end0-zscreen_enum_init
	.cfi_endproc

	.align	16, 0x90
	.type	screen_cleanup,@function
screen_cleanup:                         # @screen_cleanup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp13:
	.cfi_def_cfa_offset 16
	movq	520(%rdi), %rax
	movq	72(%rax), %rsi
	movq	16(%rsi), %rdi
	movl	$.L.str.7, %edx
	callq	*24(%rdi)
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end1:
	.size	screen_cleanup, .Lfunc_end1-screen_cleanup
	.cfi_endproc

	.align	16, 0x90
	.type	screen_sample,@function
screen_sample:                          # @screen_sample
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp16:
	.cfi_def_cfa_offset 64
.Ltmp17:
	.cfi_offset %rbx, -24
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	520(%rbx), %rax
	movq	624(%rbx), %rbp
	movq	8(%rax), %rdi
	leaq	24(%rsp), %rsi
	callq	gs_screen_currentpoint
	testl	%eax, %eax
	jne	.LBB2_1
# BB#5:                                 # %do.body
	leaq	32(%rbp), %rax
	cmpq	640(%rbx), %rax
	jbe	.LBB2_7
# BB#6:                                 # %if.then.25
	movl	$2, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB2_8
.LBB2_1:                                # %entry
	cmpl	$1, %eax
	jne	.LBB2_8
# BB#2:                                 # %sw.bb
	movq	520(%rbx), %rax
	movq	-24(%rax), %rcx
	movl	$1, %ebp
	testq	%rcx, %rcx
	je	.LBB2_4
# BB#3:                                 # %if.then
	movq	%rbx, %rdi
	callq	*%rcx
	movl	%eax, %ebp
	movq	520(%rbx), %rax
.LBB2_4:                                # %if.end
	leaq	-64(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	8(%rax), %rsi
	movq	16(%rsi), %rdi
	movl	$.L.str.7, %edx
	callq	*24(%rdi)
	testl	%ebp, %ebp
	movl	$14, %eax
	cmovsl	%ebp, %eax
	jmp	.LBB2_8
.LBB2_7:                                # %if.else
	movq	%rax, 624(%rbx)
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 24(%rbp)
	movw	$4096, 16(%rbp)         # imm = 0x1000
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 40(%rbp)
	movw	$4096, 32(%rbp)         # imm = 0x1000
	movq	520(%rbx), %rax
	movups	-16(%rax), %xmm0
	movaps	%xmm0, (%rsp)
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$set_screen_continue, 24(%rax)
	movq	520(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movaps	(%rsp), %xmm0
	movups	%xmm0, 16(%rax)
	movl	$5, %eax
.LBB2_8:                                # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	screen_sample, .Lfunc_end2-screen_sample
	.cfi_endproc

	.globl	zscreen_params
	.align	16, 0x90
	.type	zscreen_params,@function
zscreen_params:                         # @zscreen_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp21:
	.cfi_def_cfa_offset 48
.Ltmp22:
	.cfi_offset %rbx, -24
.Ltmp23:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	-16(%rbx), %rdi
	leaq	(%rsp), %rdx
	movl	$2, %esi
	callq	num_params
	testl	%eax, %eax
	js	.LBB3_4
# BB#1:                                 # %do.body
	movzwl	(%rbx), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB3_2
# BB#3:                                 # %do.end
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%r14)
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 4(%r14)
	xorl	%eax, %eax
	jmp	.LBB3_4
.LBB3_2:                                # %if.then.3
	movq	%rbx, %rdi
	callq	check_proc_failed
.LBB3_4:                                # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	zscreen_params, .Lfunc_end3-zscreen_params
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrenthalftone,@function
zcurrenthalftone:                       # @zcurrenthalftone
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 24
	subq	$136, %rsp
.Ltmp26:
	.cfi_def_cfa_offset 160
.Ltmp27:
	.cfi_offset %rbx, -24
.Ltmp28:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movq	(%r14), %rdi
	leaq	8(%rsp), %rsi
	callq	gs_currenthalftone
	movl	8(%rsp), %eax
	cmpl	$2, %eax
	jne	.LBB4_1
# BB#5:                                 # %do.body.24
	leaq	208(%rbx), %rax
	cmpq	640(%r14), %rax
	jbe	.LBB4_7
# BB#6:                                 # %if.then.30
	movl	$13, 688(%r14)
	movl	$-16, %eax
	jmp	.LBB4_12
.LBB4_1:                                # %entry
	cmpl	$1, %eax
	jne	.LBB4_8
# BB#2:                                 # %do.body
	leaq	64(%rbx), %rax
	cmpq	640(%r14), %rax
	jbe	.LBB4_4
# BB#3:                                 # %if.then
	movl	$4, 688(%r14)
	movl	$-16, %eax
	jmp	.LBB4_12
.LBB4_7:                                # %if.else.34
	movq	%rax, 624(%r14)
	movl	40(%rsp), %eax
	movl	%eax, 24(%rbx)
	movw	$4096, 16(%rbx)         # imm = 0x1000
	movl	44(%rsp), %eax
	movl	%eax, 40(%rbx)
	movw	$4096, 32(%rbx)         # imm = 0x1000
	movq	(%r14), %rdi
	callq	gs_state_client_data
	movups	16(%rax), %xmm0
	movups	%xmm0, 48(%rbx)
	movl	64(%rsp), %eax
	movl	%eax, 72(%rbx)
	movw	$4096, 64(%rbx)         # imm = 0x1000
	movl	68(%rsp), %eax
	movl	%eax, 88(%rbx)
	movw	$4096, 80(%rbx)         # imm = 0x1000
	movq	(%r14), %rdi
	callq	gs_state_client_data
	movups	32(%rax), %xmm0
	movups	%xmm0, 96(%rbx)
	movl	88(%rsp), %eax
	movl	%eax, 120(%rbx)
	movw	$4096, 112(%rbx)        # imm = 0x1000
	movl	92(%rsp), %eax
	movl	%eax, 136(%rbx)
	movw	$4096, 128(%rbx)        # imm = 0x1000
	movq	(%r14), %rdi
	callq	gs_state_client_data
	movups	48(%rax), %xmm0
	movups	%xmm0, 144(%rbx)
	movl	112(%rsp), %eax
	movl	%eax, 168(%rbx)
	movw	$4096, 160(%rbx)        # imm = 0x1000
	movl	116(%rsp), %eax
	movl	%eax, 184(%rbx)
	movw	$4096, 176(%rbx)        # imm = 0x1000
	movq	(%r14), %rdi
	callq	gs_state_client_data
	movups	64(%rax), %xmm0
	movups	%xmm0, 192(%rbx)
	movq	$2, 216(%rbx)
	movw	$2816, 208(%rbx)        # imm = 0xB00
	jmp	.LBB4_11
.LBB4_8:                                # %do.body.131
	leaq	32(%rbx), %rax
	cmpq	640(%r14), %rax
	jbe	.LBB4_10
# BB#9:                                 # %if.then.137
	movl	$2, 688(%r14)
	movl	$-16, %eax
	jmp	.LBB4_12
.LBB4_4:                                # %if.else
	movq	%rax, 624(%r14)
	movl	40(%rsp), %eax
	movl	%eax, 24(%rbx)
	movw	$4096, 16(%rbx)         # imm = 0x1000
	movl	44(%rsp), %eax
	movl	%eax, 40(%rbx)
	movw	$4096, 32(%rbx)         # imm = 0x1000
	movq	(%r14), %rdi
	callq	gs_state_client_data
	movups	64(%rax), %xmm0
	movups	%xmm0, 48(%rbx)
	movq	$1, 72(%rbx)
	movw	$2816, 64(%rbx)         # imm = 0xB00
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.141
	movq	%rax, 624(%r14)
	movq	(%r14), %rdi
	callq	gs_state_client_data
	movups	496(%rax), %xmm0
	movups	%xmm0, 16(%rbx)
	movq	$0, 40(%rbx)
	movw	$2816, 32(%rbx)         # imm = 0xB00
.LBB4_11:                               # %cleanup
	xorl	%eax, %eax
.LBB4_12:                               # %cleanup
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end4:
	.size	zcurrenthalftone, .Lfunc_end4-zcurrenthalftone
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentscreenlevels,@function
zcurrentscreenlevels:                   # @zcurrentscreenlevels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	16(%rbx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB5_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB5_2:                                # %if.else
	movq	%rax, 624(%rdi)
	movq	(%rdi), %rdi
	callq	gs_currentscreenlevels
	cltq
	movq	%rax, 24(%rbx)
	movw	$2816, 16(%rbx)         # imm = 0xB00
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end5:
	.size	zcurrentscreenlevels, .Lfunc_end5-zcurrentscreenlevels
	.cfi_endproc

	.align	16, 0x90
	.type	zsetscreen,@function
zsetscreen:                             # @zsetscreen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp34:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 48
	subq	$208, %rsp
.Ltmp36:
	.cfi_def_cfa_offset 256
.Ltmp37:
	.cfi_offset %rbx, -48
.Ltmp38:
	.cfi_offset %r12, -40
.Ltmp39:
	.cfi_offset %r14, -32
.Ltmp40:
	.cfi_offset %r15, -24
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %r15
	leaq	-16(%r15), %rdi
	leaq	192(%rsp), %rdx
	movl	$2, %esi
	callq	num_params
	testl	%eax, %eax
	js	.LBB6_4
# BB#1:                                 # %do.body.i
	movzwl	(%r15), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB6_2
# BB#3:                                 # %do.end.i
	movsd	192(%rsp), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 168(%rsp)
	movsd	200(%rsp), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 172(%rsp)
	xorl	%eax, %eax
	jmp	.LBB6_4
.LBB6_2:                                # %if.then.3.i
	movq	%r15, %rdi
	callq	check_proc_failed
.LBB6_4:                                # %zscreen_params.exit
	testl	%eax, %eax
	js	.LBB6_7
# BB#5:                                 # %if.end
	movzwl	(%r15), %ebp
	shrl	$2, %ebp
	andl	$3, %ebp
	movl	%ebp, %eax
	movq	24(%r14,%rax,8), %rbx
	movq	(%r14), %r12
	movq	%rbx, %rdi
	callq	gs_currentaccuratescreens
	leaq	8(%rsp), %rdi
	leaq	168(%rsp), %rdx
	movq	%r12, %rsi
	movl	%eax, %ecx
	movq	%rbx, %r8
	callq	gs_screen_order_init_memory
	testl	%eax, %eax
	js	.LBB6_7
# BB#6:                                 # %if.end.7
	movl	%ebp, (%rsp)
	leaq	8(%rsp), %rsi
	leaq	168(%rsp), %rdx
	movl	$3, %r8d
	movl	$setscreen_finish, %r9d
	movq	%r14, %rdi
	movq	%r15, %rcx
	callq	zscreen_enum_init
.LBB6_7:                                # %cleanup
	addq	$208, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	zsetscreen, .Lfunc_end6-zsetscreen
	.cfi_endproc

	.align	16, 0x90
	.type	set_screen_continue,@function
set_screen_continue:                    # @set_screen_continue
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp43:
	.cfi_def_cfa_offset 32
.Ltmp44:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	8(%rsp), %rsi
	callq	real_param
	testl	%eax, %eax
	js	.LBB7_3
# BB#1:                                 # %if.end
	movq	520(%rbx), %rax
	movq	8(%rax), %rdi
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	callq	gs_screen_next
	testl	%eax, %eax
	js	.LBB7_3
# BB#2:                                 # %if.end.7
	addq	$-16, 624(%rbx)
	movq	%rbx, %rdi
	callq	screen_sample
.LBB7_3:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end7:
	.size	set_screen_continue, .Lfunc_end7-set_screen_continue
	.cfi_endproc

	.align	16, 0x90
	.type	setscreen_finish,@function
setscreen_finish:                       # @setscreen_finish
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	520(%rbx), %rax
	movq	8(%rax), %rdi
	callq	gs_screen_install
	movq	(%rbx), %rdi
	callq	gs_state_client_data
	movq	520(%rbx), %rcx
	movups	-16(%rcx), %xmm0
	movups	%xmm0, 16(%rax)
	movq	(%rbx), %rdi
	callq	gs_state_client_data
	movq	520(%rbx), %rcx
	movups	-16(%rcx), %xmm0
	movups	%xmm0, 32(%rax)
	movq	(%rbx), %rdi
	callq	gs_state_client_data
	movq	520(%rbx), %rcx
	movups	-16(%rcx), %xmm0
	movups	%xmm0, 48(%rax)
	movq	(%rbx), %rdi
	callq	gs_state_client_data
	movq	520(%rbx), %rcx
	movups	-16(%rcx), %xmm0
	movups	%xmm0, 64(%rax)
	movq	(%rbx), %rdi
	callq	gs_state_client_data
	movw	$3584, 496(%rax)        # imm = 0xE00
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end8:
	.size	setscreen_finish, .Lfunc_end8-setscreen_finish
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"setscreen"
	.size	.L.str, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"0.currenthalftone"
	.size	.L.str.1, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"0.currentscreenlevels"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"3setscreen"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"0%screen_sample"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"1%set_screen_continue"
	.size	.L.str.5, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"0%setscreen_finish"
	.size	.L.str.6, 19

	.type	zht_op_defs,@object     # @zht_op_defs
	.section	.rodata,"a",@progbits
	.globl	zht_op_defs
	.align	16
zht_op_defs:
	.quad	.L.str.1
	.quad	zcurrenthalftone
	.quad	.L.str.2
	.quad	zcurrentscreenlevels
	.quad	.L.str.3
	.quad	zsetscreen
	.quad	.L.str.4
	.quad	screen_sample
	.quad	.L.str.5
	.quad	set_screen_continue
	.quad	.L.str.6
	.quad	setscreen_finish
	.zero	16
	.size	zht_op_defs, 112

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"screen_cleanup"
	.size	.L.str.7, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
