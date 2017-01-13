	.text
	.file	"zht1.bc"
	.align	16, 0x90
	.type	zsetcolorscreen,@function
zsetcolorscreen:                        # @zsetcolorscreen
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
	subq	$216, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 272
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
	movq	%rdi, %r15
	movq	624(%r15), %r12
	leaq	-144(%r12), %rbx
	leaq	120(%rsp), %rsi
	movq	%rbx, %rdi
	callq	zscreen_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_18
# BB#1:                                 # %for.inc
	movq	$spot_dummy, 128(%rsp)
	movups	(%rbx), %xmm0
	movaps	%xmm0, 48(%rsp)
	movzwl	-144(%r12), %r13d
	leaq	-96(%r12), %r14
	leaq	144(%rsp), %rsi
	movq	%r14, %rdi
	callq	zscreen_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_18
# BB#2:                                 # %for.inc.1
	shrl	$2, %r13d
	andl	$3, %r13d
	movq	$spot_dummy, 152(%rsp)
	movups	(%r14), %xmm0
	movaps	%xmm0, 64(%rsp)
	movzwl	-96(%r12), %ebx
	shrl	$2, %ebx
	andl	$3, %ebx
	cmpl	%ebx, %r13d
	cmoval	%r13d, %ebx
	leaq	-48(%r12), %r14
	leaq	168(%rsp), %rsi
	movq	%r14, %rdi
	callq	zscreen_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_18
# BB#3:                                 # %for.inc.2
	movq	$spot_dummy, 176(%rsp)
	movups	(%r14), %xmm0
	movaps	%xmm0, 80(%rsp)
	movzwl	-48(%r12), %r13d
	shrl	$2, %r13d
	andl	$3, %r13d
	cmpl	%r13d, %ebx
	cmovgel	%ebx, %r13d
	leaq	192(%rsp), %rsi
	movq	%r12, %rdi
	callq	zscreen_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_18
# BB#4:                                 # %for.inc.3
	movq	$spot_dummy, 200(%rsp)
	movups	(%r12), %xmm0
	movaps	%xmm0, 96(%rsp)
	movzwl	(%r12), %r14d
	shrl	$2, %r14d
	andl	$3, %r14d
	cmpl	%r14d, %r13d
	cmovgel	%r13d, %r14d
	movl	%r14d, %eax
	movq	24(%r15,%rax,8), %rbx
	leaq	520(%r15), %r12
	movq	536(%r15), %rax
	addq	$-128, %rax
	cmpq	%rax, 520(%r15)
	jbe	.LBB0_6
# BB#5:                                 # %if.then.28
	movl	$8, %esi
	movq	%r12, %rdi
	callq	ref_stack_extend
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_18
.LBB0_6:                                # %do.body
	movl	$st_halftone, %esi
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	xorl	%r13d, %r13d
	testq	%rax, %rax
	je	.LBB0_8
# BB#7:                                 # %do.body.44
	movq	$0, 8(%rax)
	movq	%rbx, 16(%rax)
	movq	$rc_free_struct_only, 24(%rax)
	movq	%rax, %r13
.LBB0_8:                                # %do.body.54
	movl	$st_device_halftone, %esi
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movl	$-25, %ebp
	xorl	%esi, %esi
	testq	%rax, %rax
	je	.LBB0_16
# BB#9:                                 # %do.end.76
	movq	$0, 160(%rax)
	movq	%rbx, 168(%rax)
	movq	$rc_free_struct_only, 176(%rax)
	testq	%r13, %r13
	movq	%rax, %rsi
	je	.LBB0_16
# BB#10:                                # %if.end.84
	movq	%r12, 32(%rsp)          # 8-byte Spill
	movl	$2, (%r13)
	movups	200(%rsp), %xmm0
	movups	%xmm0, 112(%r13)
	movups	184(%rsp), %xmm0
	movups	%xmm0, 96(%r13)
	movups	120(%rsp), %xmm0
	movups	136(%rsp), %xmm1
	movups	152(%rsp), %xmm2
	movups	168(%rsp), %xmm3
	movups	%xmm3, 80(%r13)
	movups	%xmm2, 64(%r13)
	movups	%xmm1, 48(%r13)
	movups	%xmm0, 32(%r13)
	movq	(%r15), %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	movq	%rax, %r12
	callq	gs_sethalftone_prepare
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_11
# BB#12:                                # %if.then.87
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	520(%r15), %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	%rcx, %rax
	subq	$-128, %rax
	movq	%rax, 520(%r15)
	movq	$setcolorscreen_cleanup, 24(%rcx)
	movq	520(%r15), %rdi
	movw	$3712, -112(%rdi)       # imm = 0xE80
	movl	$0, -108(%rdi)
	addq	$-96, %rdi
	leaq	48(%rsp), %rbx
	movl	$64, %edx
	movq	%rbx, %rsi
	callq	memcpy
	movq	520(%r15), %rax
	movq	%r13, -24(%rax)
	movl	$2048, %eax             # imm = 0x800
	addl	56(%r15), %eax
	movq	520(%r15), %rcx
	movw	%ax, -32(%rcx)
	movq	%r12, -8(%rcx)
	movq	%r12, 40(%rsp)          # 8-byte Spill
	movq	520(%r15), %rcx
	movw	%ax, -16(%rcx)
	movq	$setcolorscreen_finish, 8(%rcx)
	movq	520(%r15), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	leaq	32(%r13), %r12
	movq	%r13, 16(%rsp)          # 8-byte Spill
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB0_13:                               # %for.cond.160
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$3, %r13
	jg	.LBB0_17
# BB#14:                                # %for.body.163
                                        #   in Loop: Header=BB0_13 Depth=1
	incq	%r13
	movl	%r13d, %eax
	andl	$3, %eax
	imulq	$168, %rax, %rsi
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	200(%rax), %rsi
	movl	%r14d, (%rsp)
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	movq	%r12, %rdx
	movq	%rbx, %rcx
	callq	zscreen_enum_init
	movl	%eax, %ebp
	addq	$16, %rbx
	addq	$24, %r12
	testl	%ebp, %ebp
	jns	.LBB0_13
# BB#15:                                # %if.then.179
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	%rcx, (%rax)
	movq	40(%rsp), %rsi          # 8-byte Reload
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	16(%rsp), %r13          # 8-byte Reload
	jmp	.LBB0_16
.LBB0_11:
	movq	%r12, %rsi
.LBB0_16:                               # %if.then.190
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	*24(%rbx)
.LBB0_18:                               # %cleanup.199
	movl	%ebp, %eax
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_17:                               # %if.end.194
	addq	$-192, 624(%r15)
	movl	$5, %ebp
	jmp	.LBB0_18
.Lfunc_end0:
	.size	zsetcolorscreen, .Lfunc_end0-zsetcolorscreen
	.cfi_endproc

	.align	16, 0x90
	.type	setcolorscreen_finish,@function
setcolorscreen_finish:                  # @setcolorscreen_finish
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp15:
	.cfi_def_cfa_offset 32
.Ltmp16:
	.cfi_offset %rbx, -24
.Ltmp17:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	520(%rbx), %rax
	movq	8(%rax), %r14
	movq	200(%r14), %rsi
	movl	$160, %edx
	movq	%r14, %rdi
	callq	memcpy
	movq	(%rbx), %rdi
	movq	520(%rbx), %rax
	movq	-8(%rax), %rsi
	movq	%r14, %rdx
	callq	gx_ht_install
	testl	%eax, %eax
	js	.LBB1_2
# BB#1:                                 # %if.end
	movq	(%rbx), %rdi
	callq	gs_state_client_data
	movq	520(%rbx), %rcx
	movups	-80(%rcx), %xmm0
	movups	%xmm0, 16(%rax)
	movq	(%rbx), %rdi
	callq	gs_state_client_data
	movq	520(%rbx), %rcx
	movups	-64(%rcx), %xmm0
	movups	%xmm0, 32(%rax)
	movq	(%rbx), %rdi
	callq	gs_state_client_data
	movq	520(%rbx), %rcx
	movups	-48(%rcx), %xmm0
	movups	%xmm0, 48(%rax)
	movq	(%rbx), %rdi
	callq	gs_state_client_data
	movq	520(%rbx), %rcx
	movups	-32(%rcx), %xmm0
	movups	%xmm0, 64(%rax)
	movq	(%rbx), %rdi
	callq	gs_state_client_data
	movw	$3584, 496(%rax)        # imm = 0xE00
	movq	520(%rbx), %rax
	leaq	-112(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	-8(%rax), %rbx
	movq	8(%rax), %rsi
	movq	168(%rsi), %rdi
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
	movq	16(%rbx), %rdi
	movl	$.L.str.5, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movl	$14, %eax
.LBB1_2:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	setcolorscreen_finish, .Lfunc_end1-setcolorscreen_finish
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	spot_dummy,@function
spot_dummy:                             # @spot_dummy
	.cfi_startproc
# BB#0:                                 # %entry
	addsd	%xmm1, %xmm0
	mulsd	.LCPI2_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	retq
.Lfunc_end2:
	.size	spot_dummy, .Lfunc_end2-spot_dummy
	.cfi_endproc

	.align	16, 0x90
	.type	setcolorscreen_cleanup,@function
setcolorscreen_cleanup:                 # @setcolorscreen_cleanup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbx, -16
	movq	520(%rdi), %rax
	movq	104(%rax), %rbx
	movq	120(%rax), %rsi
	movq	168(%rsi), %rdi
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
	movq	16(%rbx), %rdi
	movl	$.L.str.5, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end3:
	.size	setcolorscreen_cleanup, .Lfunc_end3-setcolorscreen_cleanup
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"<setcolorscreen"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"0%setcolorscreen_finish"
	.size	.L.str.1, 24

	.type	zht1_op_defs,@object    # @zht1_op_defs
	.section	.rodata,"a",@progbits
	.globl	zht1_op_defs
	.align	16
zht1_op_defs:
	.quad	.L.str
	.quad	zsetcolorscreen
	.quad	.L.str.1
	.quad	setcolorscreen_finish
	.zero	16
	.size	zht1_op_defs, 48

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"setcolorscreen(halftone)"
	.size	.L.str.2, 25

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"setcolorscreen(device halftone)"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"setcolorscreen_cleanup(device halftone)"
	.size	.L.str.4, 40

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"setcolorscreen_cleanup(halftone)"
	.size	.L.str.5, 33


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
