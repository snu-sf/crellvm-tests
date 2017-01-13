	.text
	.file	"xstrtol.bc"
	.globl	xstrtol
	.align	16, 0x90
	.type	xstrtol,@function
xstrtol:                                # @xstrtol
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	cmpl	-28(%rbp), %eax
	jg	.LBB0_3
# BB#1:                                 # %land.lhs.true
	cmpl	$36, -28(%rbp)
	jg	.LBB0_3
# BB#2:                                 # %cond.true
	jmp	.LBB0_4
.LBB0_3:                                # %cond.false
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.1, %rsi
	movl	$123, %edx
	movabsq	$.L__PRETTY_FUNCTION__.xstrtol, %rcx
	callq	__assert_fail
.LBB0_4:                                # %cond.end
	cmpq	$0, -24(%rbp)
	je	.LBB0_6
# BB#5:                                 # %cond.true.2
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB0_7
.LBB0_6:                                # %cond.false.3
	leaq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB0_7
.LBB0_7:                                # %cond.end.4
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
	callq	__errno_location
	movl	$0, (%rax)
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	strtol
	movq	%rax, -72(%rbp)
	callq	__errno_location
	cmpl	$0, (%rax)
	je	.LBB0_9
# BB#8:                                 # %if.then
	movl	$3, -4(%rbp)
	jmp	.LBB0_39
.LBB0_9:                                # %if.end
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB0_11
# BB#10:                                # %if.then.9
	movl	$1, -4(%rbp)
	jmp	.LBB0_39
.LBB0_11:                               # %if.end.10
	cmpq	$0, -48(%rbp)
	jne	.LBB0_13
# BB#12:                                # %if.then.12
	movq	-72(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$0, -4(%rbp)
	jmp	.LBB0_39
.LBB0_13:                               # %if.end.13
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB0_38
# BB#14:                                # %if.then.16
	movl	$1024, -76(%rbp)        # imm = 0x400
	movl	$1, -80(%rbp)
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %esi
	callq	strchr
	cmpq	$0, %rax
	jne	.LBB0_16
# BB#15:                                # %if.then.23
	movq	-72(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$2, -4(%rbp)
	jmp	.LBB0_39
.LBB0_16:                               # %if.end.24
	movl	$48, %esi
	movq	-48(%rbp), %rdi
	callq	strchr
	cmpq	$0, %rax
	je	.LBB0_21
# BB#17:                                # %if.then.27
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movsbl	1(%rax), %ecx
	movl	%ecx, %edx
	subl	$66, %edx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movl	%edx, -104(%rbp)        # 4-byte Spill
	je	.LBB0_18
	jmp	.LBB0_40
.LBB0_40:                               # %if.then.27
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$68, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB0_19
	jmp	.LBB0_20
.LBB0_18:                               # %sw.bb
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB0_20
.LBB0_19:                               # %sw.bb.30
	movl	$1000, -76(%rbp)        # imm = 0x3E8
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
.LBB0_20:                               # %sw.epilog
	jmp	.LBB0_21
.LBB0_21:                               # %if.end.32
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$66, %edx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
	movl	%edx, -116(%rbp)        # 4-byte Spill
	je	.LBB0_23
	jmp	.LBB0_41
.LBB0_41:                               # %if.end.32
	movl	-112(%rbp), %eax        # 4-byte Reload
	subl	$69, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB0_25
	jmp	.LBB0_42
.LBB0_42:                               # %if.end.32
	movl	-112(%rbp), %eax        # 4-byte Reload
	subl	$71, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB0_26
	jmp	.LBB0_43
.LBB0_43:                               # %if.end.32
	movl	-112(%rbp), %eax        # 4-byte Reload
	subl	$77, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB0_28
	jmp	.LBB0_44
.LBB0_44:                               # %if.end.32
	movl	-112(%rbp), %eax        # 4-byte Reload
	subl	$80, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB0_29
	jmp	.LBB0_45
.LBB0_45:                               # %if.end.32
	movl	-112(%rbp), %eax        # 4-byte Reload
	subl	$84, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB0_30
	jmp	.LBB0_46
.LBB0_46:                               # %if.end.32
	movl	-112(%rbp), %eax        # 4-byte Reload
	subl	$89, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	je	.LBB0_32
	jmp	.LBB0_47
.LBB0_47:                               # %if.end.32
	movl	-112(%rbp), %eax        # 4-byte Reload
	subl	$90, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	je	.LBB0_33
	jmp	.LBB0_48
.LBB0_48:                               # %if.end.32
	movl	-112(%rbp), %eax        # 4-byte Reload
	subl	$98, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	je	.LBB0_22
	jmp	.LBB0_49
.LBB0_49:                               # %if.end.32
	movl	-112(%rbp), %eax        # 4-byte Reload
	subl	$99, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	je	.LBB0_24
	jmp	.LBB0_50
.LBB0_50:                               # %if.end.32
	movl	-112(%rbp), %eax        # 4-byte Reload
	subl	$107, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	je	.LBB0_27
	jmp	.LBB0_51
.LBB0_51:                               # %if.end.32
	movl	-112(%rbp), %eax        # 4-byte Reload
	subl	$109, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	je	.LBB0_28
	jmp	.LBB0_52
.LBB0_52:                               # %if.end.32
	movl	-112(%rbp), %eax        # 4-byte Reload
	subl	$119, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	je	.LBB0_31
	jmp	.LBB0_34
.LBB0_22:                               # %sw.bb.34
	leaq	-72(%rbp), %rdi
	movl	$512, %esi              # imm = 0x200
	callq	bkm_scale
	movl	%eax, -84(%rbp)
	jmp	.LBB0_35
.LBB0_23:                               # %sw.bb.36
	leaq	-72(%rbp), %rdi
	movl	$1024, %esi             # imm = 0x400
	callq	bkm_scale
	movl	%eax, -84(%rbp)
	jmp	.LBB0_35
.LBB0_24:                               # %sw.bb.38
	movl	$0, -84(%rbp)
	jmp	.LBB0_35
.LBB0_25:                               # %sw.bb.39
	leaq	-72(%rbp), %rdi
	movl	$6, %edx
	movl	-76(%rbp), %esi
	callq	bkm_scale_by_power
	movl	%eax, -84(%rbp)
	jmp	.LBB0_35
.LBB0_26:                               # %sw.bb.41
	leaq	-72(%rbp), %rdi
	movl	$3, %edx
	movl	-76(%rbp), %esi
	callq	bkm_scale_by_power
	movl	%eax, -84(%rbp)
	jmp	.LBB0_35
.LBB0_27:                               # %sw.bb.43
	leaq	-72(%rbp), %rdi
	movl	$1, %edx
	movl	-76(%rbp), %esi
	callq	bkm_scale_by_power
	movl	%eax, -84(%rbp)
	jmp	.LBB0_35
.LBB0_28:                               # %sw.bb.45
	leaq	-72(%rbp), %rdi
	movl	$2, %edx
	movl	-76(%rbp), %esi
	callq	bkm_scale_by_power
	movl	%eax, -84(%rbp)
	jmp	.LBB0_35
.LBB0_29:                               # %sw.bb.47
	leaq	-72(%rbp), %rdi
	movl	$5, %edx
	movl	-76(%rbp), %esi
	callq	bkm_scale_by_power
	movl	%eax, -84(%rbp)
	jmp	.LBB0_35
.LBB0_30:                               # %sw.bb.49
	leaq	-72(%rbp), %rdi
	movl	$4, %edx
	movl	-76(%rbp), %esi
	callq	bkm_scale_by_power
	movl	%eax, -84(%rbp)
	jmp	.LBB0_35
.LBB0_31:                               # %sw.bb.51
	leaq	-72(%rbp), %rdi
	movl	$2, %esi
	callq	bkm_scale
	movl	%eax, -84(%rbp)
	jmp	.LBB0_35
.LBB0_32:                               # %sw.bb.53
	leaq	-72(%rbp), %rdi
	movl	$8, %edx
	movl	-76(%rbp), %esi
	callq	bkm_scale_by_power
	movl	%eax, -84(%rbp)
	jmp	.LBB0_35
.LBB0_33:                               # %sw.bb.55
	leaq	-72(%rbp), %rdi
	movl	$7, %edx
	movl	-76(%rbp), %esi
	callq	bkm_scale_by_power
	movl	%eax, -84(%rbp)
	jmp	.LBB0_35
.LBB0_34:                               # %sw.default
	movq	-72(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$2, -4(%rbp)
	jmp	.LBB0_39
.LBB0_35:                               # %sw.epilog.57
	cmpl	$0, -84(%rbp)
	je	.LBB0_37
# BB#36:                                # %if.then.59
	movl	$3, -4(%rbp)
	jmp	.LBB0_39
.LBB0_37:                               # %if.end.60
	movl	-80(%rbp), %eax
	movq	-64(%rbp), %rcx
	movq	(%rcx), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, (%rcx)
.LBB0_38:                               # %if.end.61
	movq	-72(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$0, -4(%rbp)
.LBB0_39:                               # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	xstrtol, .Lfunc_end0-xstrtol
	.cfi_endproc

	.align	16, 0x90
	.type	bkm_scale,@function
bkm_scale:                              # @bkm_scale
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movslq	-20(%rbp), %rax
	imulq	%rax, %rdi
	movq	%rdi, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdi
	movslq	-20(%rbp), %rcx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rdi, %rax
	cqto
	idivq	%rcx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB1_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB1_3
.LBB1_2:                                # %if.end
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$0, -4(%rbp)
.LBB1_3:                                # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	bkm_scale, .Lfunc_end1-bkm_scale
	.cfi_endproc

	.align	16, 0x90
	.type	bkm_scale_by_power,@function
bkm_scale_by_power:                     # @bkm_scale_by_power
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
.LBB2_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$0, %eax
	je	.LBB2_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	bkm_scale
	cmpl	$0, %eax
	je	.LBB2_4
# BB#3:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB2_6
.LBB2_4:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_1
.LBB2_5:                                # %while.end
	movl	$0, -4(%rbp)
.LBB2_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	bkm_scale_by_power, .Lfunc_end2-bkm_scale_by_power
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"0 <= strtol_base && strtol_base <= 36"
	.size	.L.str, 38

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"xstrtol.c"
	.size	.L.str.1, 10

	.type	.L__PRETTY_FUNCTION__.xstrtol,@object # @__PRETTY_FUNCTION__.xstrtol
.L__PRETTY_FUNCTION__.xstrtol:
	.asciz	"strtol_error xstrtol(const char *, char **, int, long *, const char *)"
	.size	.L__PRETTY_FUNCTION__.xstrtol, 71


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
