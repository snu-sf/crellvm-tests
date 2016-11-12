	.text
	.file	"zcolor1.bc"
	.align	16, 0x90
	.type	zcurrentblackgeneration,@function
zcurrentblackgeneration:                # @zcurrentblackgeneration
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	addq	$16, %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB0_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	retq
.LBB0_2:                                # %if.else
	movq	%rax, 624(%rdi)
	movq	(%rdi), %rcx
	movq	16(%rcx), %rcx
	movups	144(%rcx), %xmm0
	movups	%xmm0, (%rax)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	zcurrentblackgeneration, .Lfunc_end0-zcurrentblackgeneration
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentcolortransfer,@function
zcurrentcolortransfer:                  # @zcurrentcolortransfer
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rcx
	leaq	64(%rcx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB1_2
# BB#1:                                 # %if.then
	movl	$4, 688(%rdi)
	movl	$-16, %eax
	retq
.LBB1_2:                                # %if.else
	movq	%rax, 624(%rdi)
	movq	(%rdi), %rdx
	movq	16(%rdx), %rdx
	movups	80(%rdx), %xmm0
	movups	%xmm0, 16(%rcx)
	movq	(%rdi), %rdx
	movq	16(%rdx), %rdx
	movups	96(%rdx), %xmm0
	movups	%xmm0, 32(%rcx)
	movq	(%rdi), %rdx
	movq	16(%rdx), %rdx
	movups	112(%rdx), %xmm0
	movups	%xmm0, 48(%rcx)
	movq	(%rdi), %rcx
	movq	16(%rcx), %rcx
	movups	128(%rcx), %xmm0
	movups	%xmm0, (%rax)
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	zcurrentcolortransfer, .Lfunc_end1-zcurrentcolortransfer
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentundercolorremoval,@function
zcurrentundercolorremoval:              # @zcurrentundercolorremoval
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	addq	$16, %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB2_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	retq
.LBB2_2:                                # %if.else
	movq	%rax, 624(%rdi)
	movq	(%rdi), %rcx
	movq	16(%rcx), %rcx
	movups	160(%rcx), %xmm0
	movups	%xmm0, (%rax)
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	zcurrentundercolorremoval, .Lfunc_end2-zcurrentundercolorremoval
	.cfi_endproc

	.align	16, 0x90
	.type	zsetblackgeneration,@function
zsetblackgeneration:                    # @zsetblackgeneration
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movzwl	(%r14), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB3_7
# BB#1:                                 # %do.end
	movq	640(%rbx), %rcx
	subq	%r14, %rcx
	sarq	$4, %rcx
	movslq	zcolor_remap_one_ostack(%rip), %rax
	decq	%rax
	cmpq	%rax, %rcx
	jge	.LBB3_3
# BB#2:                                 # %if.then.10
	movl	%eax, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB3_6
.LBB3_7:                                # %if.then
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	check_proc_failed       # TAILCALL
.LBB3_3:                                # %if.end.14
	movq	536(%rbx), %rax
	movslq	zcolor_remap_one_estack(%rip), %rsi
	incq	%rsi
	movq	%rsi, %rcx
	shlq	$4, %rcx
	subq	%rcx, %rax
	cmpq	%rax, 520(%rbx)
	jbe	.LBB3_5
# BB#4:                                 # %if.then.22
	leaq	520(%rbx), %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB3_6
.LBB3_5:                                # %if.end.31
	movq	(%rbx), %rdi
	movl	$gs_mapped_transfer, %esi
	xorl	%edx, %edx
	callq	gs_setblackgeneration_remap
	testl	%eax, %eax
	js	.LBB3_6
# BB#8:                                 # %if.end.36
	movq	(%rbx), %rax
	movq	16(%rax), %rax
	movups	(%r14), %xmm0
	movups	%xmm0, 144(%rax)
	addq	$-16, 624(%rbx)
	movq	520(%rbx), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$zcolor_remap_color, 24(%rax)
	movq	520(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movq	(%rbx), %rcx
	movl	$144, %esi
	addq	16(%rcx), %rsi
	movq	416(%rcx), %rdx
	movl	$zcolor_remap_one_finish, %r8d
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	zcolor_remap_one        # TAILCALL
.LBB3_6:                                # %cleanup.64
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	zsetblackgeneration, .Lfunc_end3-zsetblackgeneration
	.cfi_endproc

	.align	16, 0x90
	.type	zsetcolortransfer,@function
zsetcolortransfer:                      # @zsetcolortransfer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 48
.Ltmp10:
	.cfi_offset %rbx, -48
.Ltmp11:
	.cfi_offset %r12, -40
.Ltmp12:
	.cfi_offset %r13, -32
.Ltmp13:
	.cfi_offset %r14, -24
.Ltmp14:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	-48(%rbx), %r15
	movzwl	-48(%rbx), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB4_1
# BB#3:                                 # %do.body.3
	leaq	-32(%rbx), %r12
	movzwl	-32(%rbx), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB4_4
# BB#5:                                 # %do.body.17
	leaq	-16(%rbx), %r13
	movzwl	-16(%rbx), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB4_6
# BB#7:                                 # %do.body.31
	movzwl	(%rbx), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB4_8
# BB#9:                                 # %do.end.42
	movq	640(%r14), %rcx
	subq	%rbx, %rcx
	sarq	$4, %rcx
	movslq	zcolor_remap_one_ostack(%rip), %rax
	leaq	-4(,%rax,4), %rax
	cmpq	%rax, %rcx
	jge	.LBB4_11
# BB#10:                                # %if.then.51
	movl	%eax, 688(%r14)
	movl	$-16, %eax
	jmp	.LBB4_18
.LBB4_1:                                # %if.then
	movq	%r15, %rdi
	jmp	.LBB4_2
.LBB4_4:                                # %if.then.11
	movq	%r12, %rdi
	jmp	.LBB4_2
.LBB4_6:                                # %if.then.25
	movq	%r13, %rdi
	jmp	.LBB4_2
.LBB4_8:                                # %if.then.38
	movq	%rbx, %rdi
.LBB4_2:                                # %if.then
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	check_proc_failed       # TAILCALL
.LBB4_11:                               # %if.end.56
	movq	536(%r14), %rax
	movl	zcolor_remap_one_estack(%rip), %ecx
	leal	1(,%rcx,4), %esi
	movslq	%esi, %rcx
	shlq	$4, %rcx
	subq	%rcx, %rax
	cmpq	%rax, 520(%r14)
	jbe	.LBB4_13
# BB#12:                                # %if.then.65
	leaq	520(%r14), %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB4_18
.LBB4_13:                               # %if.end.75
	movq	(%r14), %rax
	movq	16(%rax), %rax
	movups	(%r15), %xmm0
	movups	%xmm0, 80(%rax)
	movq	(%r14), %rax
	movq	16(%rax), %rax
	movups	(%r12), %xmm0
	movups	%xmm0, 96(%rax)
	movq	(%r14), %rax
	movq	16(%rax), %rax
	movups	(%r13), %xmm0
	movups	%xmm0, 112(%rax)
	movq	(%r14), %rax
	movq	16(%rax), %rax
	movups	(%rbx), %xmm0
	movups	%xmm0, 128(%rax)
	movq	(%r14), %rdi
	movl	$gs_mapped_transfer, %esi
	movl	$gs_mapped_transfer, %edx
	movl	$gs_mapped_transfer, %ecx
	movl	$gs_mapped_transfer, %r8d
	xorl	%r9d, %r9d
	callq	gs_setcolortransfer_remap
	testl	%eax, %eax
	js	.LBB4_18
# BB#14:                                # %if.end.93
	addq	$-64, 624(%r14)
	movq	520(%r14), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%r14)
	movq	$zcolor_reset_transfer, 24(%rax)
	movq	520(%r14), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movq	(%r14), %rcx
	movq	16(%rcx), %rsi
	movq	440(%rcx), %rdx
	addq	$80, %rsi
	movl	$zcolor_remap_one_finish, %r8d
	movq	%r14, %rdi
	callq	zcolor_remap_one
	testl	%eax, %eax
	js	.LBB4_18
# BB#15:                                # %lor.lhs.false
	movq	(%r14), %rcx
	movq	16(%rcx), %rsi
	movq	456(%rcx), %rdx
	addq	$96, %rsi
	movl	$zcolor_remap_one_finish, %r8d
	movq	%r14, %rdi
	callq	zcolor_remap_one
	testl	%eax, %eax
	js	.LBB4_18
# BB#16:                                # %lor.lhs.false.134
	movq	(%r14), %rcx
	movq	16(%rcx), %rsi
	movq	472(%rcx), %rdx
	addq	$112, %rsi
	movl	$zcolor_remap_one_finish, %r8d
	movq	%r14, %rdi
	callq	zcolor_remap_one
	testl	%eax, %eax
	js	.LBB4_18
# BB#17:                                # %lor.lhs.false.146
	movq	(%r14), %rcx
	movl	$128, %esi
	addq	16(%rcx), %rsi
	movq	488(%rcx), %rdx
	movl	$zcolor_remap_one_finish, %r8d
	movq	%r14, %rdi
	callq	zcolor_remap_one
	testl	%eax, %eax
	movl	$5, %ecx
	cmovnsl	%ecx, %eax
.LBB4_18:                               # %cleanup.160
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	zsetcolortransfer, .Lfunc_end4-zsetcolortransfer
	.cfi_endproc

	.align	16, 0x90
	.type	zsetundercolorremoval,@function
zsetundercolorremoval:                  # @zsetundercolorremoval
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp17:
	.cfi_def_cfa_offset 32
.Ltmp18:
	.cfi_offset %rbx, -24
.Ltmp19:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movzwl	(%r14), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB5_7
# BB#1:                                 # %do.end
	movq	640(%rbx), %rcx
	subq	%r14, %rcx
	sarq	$4, %rcx
	movslq	zcolor_remap_one_ostack(%rip), %rax
	decq	%rax
	cmpq	%rax, %rcx
	jge	.LBB5_3
# BB#2:                                 # %if.then.10
	movl	%eax, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB5_6
.LBB5_7:                                # %if.then
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	check_proc_failed       # TAILCALL
.LBB5_3:                                # %if.end.14
	movq	536(%rbx), %rax
	movslq	zcolor_remap_one_estack(%rip), %rsi
	incq	%rsi
	movq	%rsi, %rcx
	shlq	$4, %rcx
	subq	%rcx, %rax
	cmpq	%rax, 520(%rbx)
	jbe	.LBB5_5
# BB#4:                                 # %if.then.22
	leaq	520(%rbx), %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB5_6
.LBB5_5:                                # %if.end.31
	movq	(%rbx), %rdi
	movl	$gs_mapped_transfer, %esi
	xorl	%edx, %edx
	callq	gs_setundercolorremoval_remap
	testl	%eax, %eax
	js	.LBB5_6
# BB#8:                                 # %if.end.36
	movq	(%rbx), %rax
	movq	16(%rax), %rax
	movups	(%r14), %xmm0
	movups	%xmm0, 160(%rax)
	addq	$-16, 624(%rbx)
	movq	520(%rbx), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$zcolor_remap_color, 24(%rax)
	movq	520(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movq	(%rbx), %rcx
	movl	$160, %esi
	addq	16(%rcx), %rsi
	movq	424(%rcx), %rdx
	movl	$zcolor_remap_one_signed_finish, %r8d
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	zcolor_remap_one        # TAILCALL
.LBB5_6:                                # %cleanup.64
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end5:
	.size	zsetundercolorremoval, .Lfunc_end5-zsetundercolorremoval
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"0currentblackgeneration"
	.size	.L.str, 24

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"0currentcolortransfer"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"0currentundercolorremoval"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"1setblackgeneration"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"4setcolortransfer"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"1setundercolorremoval"
	.size	.L.str.5, 22

	.type	zcolor1_op_defs,@object # @zcolor1_op_defs
	.section	.rodata,"a",@progbits
	.globl	zcolor1_op_defs
	.align	16
zcolor1_op_defs:
	.quad	.L.str
	.quad	zcurrentblackgeneration
	.quad	.L.str.1
	.quad	zcurrentcolortransfer
	.quad	.L.str.2
	.quad	zcurrentundercolorremoval
	.quad	.L.str.3
	.quad	zsetblackgeneration
	.quad	.L.str.4
	.quad	zsetcolortransfer
	.quad	.L.str.5
	.quad	zsetundercolorremoval
	.zero	16
	.size	zcolor1_op_defs, 112


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
