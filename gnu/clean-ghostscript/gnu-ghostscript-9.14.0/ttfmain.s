	.text
	.file	"ttfmain.bc"
	.globl	TT_Set_Instance_CharSizes
	.align	16, 0x90
	.type	TT_Set_Instance_CharSizes,@function
TT_Set_Instance_CharSizes:              # @TT_Set_Instance_CharSizes
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rdi, %rdi
	je	.LBB0_4
# BB#1:                                 # %if.end
	cmpl	$64, %esi
	movl	$64, %eax
	cmovll	%eax, %esi
	cmpl	$64, %edx
	cmovll	%eax, %edx
	movslq	%esi, %rcx
	movq	%rcx, 40(%rdi)
	movslq	%edx, %r8
	movq	%r8, 56(%rdi)
	movq	(%rdi), %rax
	movq	8(%rax), %r9
	movzwl	96(%r9), %eax
	movq	%rax, 48(%rdi)
	movq	%rax, 64(%rdi)
	testb	$8, 100(%r9)
	je	.LBB0_3
# BB#2:                                 # %if.then.18
	addq	$32, %rcx
	andq	$-64, %rcx
	movq	%rcx, 40(%rdi)
	addq	$32, %r8
	andq	$-64, %r8
	movq	%r8, 56(%rdi)
.LBB0_3:                                # %if.end.30
	movq	%rcx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rcx, %rax
	shrq	$6, %rax
	movl	%eax, 28(%rdi)
	movq	%r8, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%r8, %rax
	shrq	$6, %rax
	movl	%eax, 32(%rdi)
	cmpl	%edx, %esi
	cmovgel	%esi, %edx
	movl	%edx, 16(%rdi)
	movl	$0, 8(%rdi)
	xorl	%esi, %esi
	jmp	Instance_Reset          # TAILCALL
.LBB0_4:                                # %cleanup
	movl	$2, %eax
	retq
.Lfunc_end0:
	.size	TT_Set_Instance_CharSizes, .Lfunc_end0-TT_Set_Instance_CharSizes
	.cfi_endproc

	.globl	ttfInterpreter__obtain
	.align	16, 0x90
	.type	ttfInterpreter__obtain,@function
ttfInterpreter__obtain:                 # @ttfInterpreter__obtain
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
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.LBB1_2
# BB#1:                                 # %if.then
	incl	24(%rax)
	xorl	%r15d, %r15d
	jmp	.LBB1_6
.LBB1_2:                                # %if.end
	movl	$st_ttfInterpreter, %esi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*8(%rbx)
	movq	%rax, %rbp
	movl	$3, %r15d
	testq	%rbp, %rbp
	je	.LBB1_6
# BB#3:                                 # %if.end.3
	movq	$0, 8(%rbp)
	movl	$0, 16(%rbp)
	movq	%rbx, 32(%rbp)
	movl	$1, 24(%rbp)
	movl	$st_TExecution_Context, %esi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*8(%rbx)
	movq	%rax, (%rbp)
	testq	%rax, %rax
	je	.LBB1_4
# BB#5:                                 # %if.end.10
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	movl	$1416, %edx             # imm = 0x588
	movq	%rax, %rdi
	callq	memset
	movq	%rbp, (%r14)
	jmp	.LBB1_6
.LBB1_4:                                # %if.then.9
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*16(%rbx)
.LBB1_6:                                # %cleanup
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ttfInterpreter__obtain, .Lfunc_end1-ttfInterpreter__obtain
	.cfi_endproc

	.globl	ttfInterpreter__release
	.align	16, 0x90
	.type	ttfInterpreter__release,@function
ttfInterpreter__release:                # @ttfInterpreter__release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 32
.Ltmp12:
	.cfi_offset %rbx, -32
.Ltmp13:
	.cfi_offset %r14, -24
.Ltmp14:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	(%r14), %rbx
	movq	32(%rbx), %r15
	movl	24(%rbx), %eax
	decl	%eax
	movl	%eax, 24(%rbx)
	jne	.LBB2_2
# BB#1:                                 # %if.end
	movq	8(%rbx), %rsi
	movl	$.L.str.1, %edx
	movq	%r15, %rdi
	callq	*16(%r15)
	movq	(%rbx), %rsi
	movl	$.L.str.1, %edx
	movq	%r15, %rdi
	callq	*16(%r15)
	movq	(%r14), %rsi
	movl	$.L.str.1, %edx
	movq	%r15, %rdi
	callq	*16(%r15)
	movq	$0, (%r14)
.LBB2_2:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	ttfInterpreter__release, .Lfunc_end2-ttfInterpreter__release
	.cfi_endproc

	.globl	ttfFont__init
	.align	16, 0x90
	.type	ttfFont__init,@function
ttfFont__init:                          # @ttfFont__init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp19:
	.cfi_def_cfa_offset 48
.Ltmp20:
	.cfi_offset %rbx, -40
.Ltmp21:
	.cfi_offset %r12, -32
.Ltmp22:
	.cfi_offset %r14, -24
.Ltmp23:
	.cfi_offset %r15, -16
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rdi, %rbx
	xorl	%esi, %esi
	movl	$192, %edx
	callq	memset
	movq	%r12, 168(%rbx)
	movq	%r15, 176(%rbx)
	movq	%r14, 184(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	ttfFont__init, .Lfunc_end3-ttfFont__init
	.cfi_endproc

	.globl	ttfFont__finit
	.align	16, 0x90
	.type	ttfFont__finit,@function
ttfFont__finit:                         # @ttfFont__finit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp26:
	.cfi_def_cfa_offset 32
.Ltmp27:
	.cfi_offset %rbx, -24
.Ltmp28:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	152(%rbx), %rdi
	movq	160(%rbx), %rax
	movq	32(%rax), %r14
	testq	%rdi, %rdi
	je	.LBB4_3
# BB#1:                                 # %if.then
	cmpq	$0, 144(%rbx)
	je	.LBB4_3
# BB#2:                                 # %if.then.2
	callq	Context_Destroy
.LBB4_3:                                # %if.end.4
	movq	$0, 152(%rbx)
	movq	144(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB4_5
# BB#4:                                 # %if.then.8
	movq	%rsi, %rdi
	callq	Instance_Destroy
	movq	144(%rbx), %rsi
.LBB4_5:                                # %if.end.11
	movl	$.L.str.2, %edx
	movq	%r14, %rdi
	callq	*16(%r14)
	movq	$0, 144(%rbx)
	movq	136(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB4_7
# BB#6:                                 # %if.then.15
	movq	%rsi, %rdi
	callq	Face_Destroy
	movq	136(%rbx), %rsi
.LBB4_7:                                # %if.end.18
	movl	$.L.str.2, %edx
	movq	%r14, %rdi
	callq	*16(%r14)
	movq	$0, 136(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end4:
	.size	ttfFont__finit, .Lfunc_end4-ttfFont__finit
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_0:
	.long	1115684864              # float 64
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	ttfFont__Open
	.align	16, 0x90
	.type	ttfFont__Open,@function
ttfFont__Open:                          # @ttfFont__Open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp30:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp32:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp33:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp35:
	.cfi_def_cfa_offset 208
.Ltmp36:
	.cfi_offset %rbx, -56
.Ltmp37:
	.cfi_offset %r12, -48
.Ltmp38:
	.cfi_offset %r13, -40
.Ltmp39:
	.cfi_offset %r14, -32
.Ltmp40:
	.cfi_offset %r15, -24
.Ltmp41:
	.cfi_offset %rbp, -16
	movl	%r8d, %r12d
	movss	%xmm1, 68(%rsp)         # 4-byte Spill
	movss	%xmm0, 64(%rsp)         # 4-byte Spill
	movl	%ecx, %r15d
	movq	%rdx, %rbp
	movq	%rsi, %r14
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	movl	$256, 144(%rsp)         # imm = 0x100
	movl	$512, 140(%rsp)         # imm = 0x200
	movq	32(%rdi), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	%rdi, 160(%r14)
	movl	%r12d, 128(%r14)
	leaq	148(%rsp), %rbx
	movl	$4, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*8(%rbp)
	movl	$.L.str.3, %esi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB5_8
# BB#1:                                 # %if.then
	leaq	148(%rsp), %rbx
	movl	$4, %r13d
	movl	$4, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*8(%rbp)
	leaq	144(%rsp), %rsi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB5_3
# BB#2:                                 # %land.lhs.true
	leaq	148(%rsp), %rdi
	leaq	140(%rsp), %rsi
	movl	$4, %edx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB5_71
.LBB5_3:                                # %if.end
	movq	%rbp, %rdi
	callq	ttfReader__UInt
	movl	$7, %r13d
	testl	%eax, %eax
	je	.LBB5_71
# BB#4:                                 # %if.end.17
	movl	$1, %r13d
	cmpl	%r15d, %eax
	jbe	.LBB5_71
# BB#5:
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB5_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	callq	ttfReader__UInt
	incl	%ebx
	cmpl	%r15d, %ebx
	jbe	.LBB5_6
# BB#7:                                 # %cleanup
	movq	%rbp, %rdi
	movl	%eax, %esi
	callq	*16(%rbp)
	leaq	148(%rsp), %rsi
	movl	$4, %edx
	movq	%rbp, %rdi
	callq	*8(%rbp)
.LBB5_8:                                # %if.end.26
	leaq	148(%rsp), %rdi
	leaq	144(%rsp), %rsi
	movl	$4, %edx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB5_10
# BB#9:                                 # %land.lhs.true.31
	leaq	148(%rsp), %rdi
	movl	$.L.str.4, %esi
	movl	$4, %edx
	callq	memcmp
	movl	$4, %r13d
	testl	%eax, %eax
	jne	.LBB5_71
.LBB5_10:                               # %if.end.36
	movl	%r12d, 60(%rsp)         # 4-byte Spill
	movq	%r14, %r12
	movq	%rbp, %rdi
	callq	ttfReader__UShort
	movw	%ax, %bx
	movq	%rbp, %rdi
	callq	ttfReader__UShort
	movq	%rbp, %rdi
	callq	ttfReader__UShort
	movq	%rbp, %rdi
	callq	ttfReader__UShort
	testw	%bx, %bx
	je	.LBB5_27
# BB#11:                                # %for.body.44.lr.ph
	leaq	8(%r12), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	leaq	16(%r12), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	leaq	24(%r12), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	leaq	32(%r12), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	leaq	40(%r12), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leaq	48(%r12), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	leaq	56(%r12), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leaq	64(%r12), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	72(%r12), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leaq	80(%r12), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leaq	88(%r12), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movzwl	%bx, %r14d
	leaq	135(%rsp), %r13
	.align	16, 0x90
.LBB5_12:                               # %for.body.44
                                        # =>This Inner Loop Header: Depth=1
	movb	$0, 139(%rsp)
	movl	$4, %edx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	*8(%rbp)
	movq	%rbp, %rdi
	callq	ttfReader__UInt
	movq	%rbp, %rdi
	callq	ttfReader__UInt
	movl	%eax, %ebx
	movq	%rbp, %rdi
	callq	ttfReader__UInt
	movl	%eax, %r15d
	movl	$.L.str.6, %esi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB5_24
# BB#13:                                # %if.end.i
                                        #   in Loop: Header=BB5_12 Depth=1
	movl	$.L.str.7, %esi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	memcmp
	testl	%eax, %eax
	movq	120(%rsp), %rax         # 8-byte Reload
	je	.LBB5_25
# BB#14:                                # %if.end.4.i
                                        #   in Loop: Header=BB5_12 Depth=1
	movl	$.L.str.8, %esi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	memcmp
	testl	%eax, %eax
	movq	112(%rsp), %rax         # 8-byte Reload
	je	.LBB5_25
# BB#15:                                # %if.end.8.i
                                        #   in Loop: Header=BB5_12 Depth=1
	movl	$.L.str.9, %esi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	memcmp
	testl	%eax, %eax
	movq	104(%rsp), %rax         # 8-byte Reload
	je	.LBB5_25
# BB#16:                                # %if.end.12.i
                                        #   in Loop: Header=BB5_12 Depth=1
	movl	$.L.str.10, %esi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	memcmp
	testl	%eax, %eax
	movq	96(%rsp), %rax          # 8-byte Reload
	je	.LBB5_25
# BB#17:                                # %if.end.16.i
                                        #   in Loop: Header=BB5_12 Depth=1
	movl	$.L.str.11, %esi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	memcmp
	testl	%eax, %eax
	movq	72(%rsp), %rax          # 8-byte Reload
	je	.LBB5_25
# BB#18:                                # %if.end.20.i
                                        #   in Loop: Header=BB5_12 Depth=1
	movl	$.L.str.12, %esi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	memcmp
	testl	%eax, %eax
	movq	48(%rsp), %rax          # 8-byte Reload
	je	.LBB5_25
# BB#19:                                # %if.end.24.i
                                        #   in Loop: Header=BB5_12 Depth=1
	movl	$.L.str.13, %esi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	memcmp
	testl	%eax, %eax
	movq	40(%rsp), %rax          # 8-byte Reload
	je	.LBB5_25
# BB#20:                                # %if.end.28.i
                                        #   in Loop: Header=BB5_12 Depth=1
	movl	$.L.str.14, %esi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	memcmp
	testl	%eax, %eax
	movq	32(%rsp), %rax          # 8-byte Reload
	je	.LBB5_25
# BB#21:                                # %if.end.32.i
                                        #   in Loop: Header=BB5_12 Depth=1
	movl	$.L.str.15, %esi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	memcmp
	testl	%eax, %eax
	movq	24(%rsp), %rax          # 8-byte Reload
	je	.LBB5_25
# BB#22:                                # %if.end.36.i
                                        #   in Loop: Header=BB5_12 Depth=1
	movl	$.L.str.16, %esi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	memcmp
	testl	%eax, %eax
	movq	16(%rsp), %rax          # 8-byte Reload
	je	.LBB5_25
# BB#23:                                # %if.end.40.i
                                        #   in Loop: Header=BB5_12 Depth=1
	movl	$.L.str.17, %esi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	memcmp
	testl	%eax, %eax
	movq	8(%rsp), %rax           # 8-byte Reload
	jne	.LBB5_26
	jmp	.LBB5_25
	.align	16, 0x90
.LBB5_24:                               # %ttfFont__get_table_ptr.exit
                                        #   in Loop: Header=BB5_12 Depth=1
	testq	%r12, %r12
	movq	%r12, %rax
	je	.LBB5_26
.LBB5_25:                               # %if.then.54
                                        #   in Loop: Header=BB5_12 Depth=1
	movl	%ebx, (%rax)
	movl	%r15d, 4(%rax)
.LBB5_26:                               # %if.end.56
                                        #   in Loop: Header=BB5_12 Depth=1
	decl	%r14d
	jne	.LBB5_12
.LBB5_27:                               # %for.end.59
	movl	24(%r12), %esi
	addl	$16, %esi
	movq	%rbp, %rdi
	callq	*16(%rbp)
	movq	%rbp, %rdi
	callq	ttfReader__UShort
	movzwl	%ax, %eax
	movl	%eax, 100(%r12)
	movl	24(%r12), %esi
	addl	$18, %esi
	movq	%rbp, %rdi
	callq	*16(%rbp)
	movq	%rbp, %rdi
	callq	ttfReader__UShort
	movw	%ax, 96(%r12)
	movl	24(%r12), %esi
	addl	$50, %esi
	movq	%rbp, %rdi
	callq	*16(%rbp)
	movq	%rbp, %rdi
	callq	ttfReader__UShort
	movzwl	%ax, %eax
	movl	%eax, 120(%r12)
	movl	72(%r12), %esi
	addl	$4, %esi
	movq	%rbp, %rdi
	callq	*16(%rbp)
	movq	%rbp, %rdi
	callq	ttfReader__UShort
	movzwl	%ax, %eax
	movl	%eax, 104(%r12)
	movl	72(%r12), %esi
	addl	$28, %esi
	movq	%rbp, %rdi
	callq	*16(%rbp)
	movq	%rbp, %rdi
	callq	ttfReader__UShort
	movzwl	%ax, %eax
	cmpl	$10, %eax
	movw	$10, %cx
	cmovbew	%cx, %ax
	movzwl	%ax, %eax
	movl	%eax, 108(%r12)
	movl	32(%r12), %esi
	addl	$34, %esi
	movq	%rbp, %rdi
	callq	*16(%rbp)
	movq	%rbp, %rdi
	callq	ttfReader__UShort
	movzwl	%ax, %eax
	movl	%eax, 116(%r12)
	movl	48(%r12), %esi
	xorl	%eax, %eax
	testl	%esi, %esi
	movq	80(%rsp), %r14          # 8-byte Reload
	je	.LBB5_29
# BB#28:                                # %if.then.100
	addl	$34, %esi
	movq	%rbp, %rdi
	callq	*16(%rbp)
	movq	%rbp, %rdi
	callq	ttfReader__UShort
	movzwl	%ax, %eax
.LBB5_29:                               # %if.end.108
	movl	%eax, 112(%r12)
	imull	$3, 108(%r12), %eax
	cmpl	%eax, 16(%r14)
	movl	60(%rsp), %r15d         # 4-byte Reload
	jae	.LBB5_32
# BB#30:                                # %if.then.112
	movq	8(%r14), %rsi
	movq	32(%r14), %rdi
	movl	$.L.str.5, %edx
	callq	*16(%rdi)
	movl	$0, 16(%r14)
	imull	$108, 108(%r12), %esi
	movl	$.L.str.5, %edx
	movq	88(%rsp), %rdi          # 8-byte Reload
	callq	*(%rdi)
	movq	%rax, 8(%r14)
	movl	$3, %r13d
	testq	%rax, %rax
	je	.LBB5_71
# BB#31:                                # %if.end.127
	imull	$3, 108(%r12), %eax
	movl	%eax, 16(%r14)
.LBB5_32:                               # %if.end.131
	movl	$st_TFace, %esi
	movl	$.L.str.5, %edx
	movq	88(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	*8(%rbx)
	movq	%rax, 136(%r12)
	testq	%rax, %rax
	je	.LBB5_33
# BB#34:                                # %if.end.137
	xorl	%esi, %esi
	movl	$112, %edx
	movq	%rax, %rdi
	callq	memset
	movq	136(%r12), %rdi
	movq	%rbp, (%rdi)
	movq	%r12, 8(%rdi)
	movq	(%r14), %rax
	movq	%rax, 152(%r12)
	callq	Face_Create
	testl	%eax, %eax
	je	.LBB5_36
# BB#35:
	movl	$3, %r13d
	jmp	.LBB5_71
.LBB5_33:
	movl	$3, %r13d
	jmp	.LBB5_71
.LBB5_36:                               # %if.end.148
	movq	%rbp, %rdi
	callq	*32(%rbp)
	movl	$7, %r13d
	testl	%eax, %eax
	js	.LBB5_71
# BB#37:                                # %if.end.153
	movl	$st_TInstance, %esi
	movl	$.L.str.5, %edx
	movq	%rbx, %rdi
	callq	*8(%rdi)
	movq	%rax, 144(%r12)
	testq	%rax, %rax
	je	.LBB5_38
# BB#39:                                # %if.end.160
	xorl	%esi, %esi
	movl	$696, %edx              # imm = 0x2B8
	movq	%rax, %rdi
	callq	memset
	movq	136(%r12), %rsi
	movq	152(%r12), %rdi
	callq	Context_Create
	cmpl	$256, %eax              # imm = 0x100
	jne	.LBB5_41
# BB#40:
	movl	$3, %r13d
	jmp	.LBB5_71
.LBB5_38:
	movl	$3, %r13d
	jmp	.LBB5_71
.LBB5_41:                               # %if.end.169
	movq	136(%r12), %rsi
	movq	144(%r12), %rdi
	callq	Instance_Create
	cmpl	$256, %eax              # imm = 0x100
	jne	.LBB5_43
# BB#42:
	movl	$3, %r13d
	jmp	.LBB5_71
.LBB5_43:                               # %if.end.169
	testl	%eax, %eax
	jne	.LBB5_71
# BB#44:                                # %for.cond.180.preheader
	movq	136(%r12), %rax
	movq	144(%r12), %rdi
	movslq	80(%rax), %rsi
	testq	%rsi, %rsi
	jle	.LBB5_55
# BB#45:                                # %for.body.184.lr.ph
	movq	672(%rdi), %r10
	movq	88(%rax), %rdx
	xorl	%eax, %eax
	testl	%esi, %esi
	je	.LBB5_54
# BB#46:                                # %overflow.checked
	xorl	%eax, %eax
	movq	%rsi, %r8
	andq	$-4, %r8
	je	.LBB5_53
# BB#47:                                # %vector.body.preheader
	leaq	-4(%rsi), %rax
	movq	%rax, %r9
	shrq	$2, %r9
	xorl	%ebp, %ebp
	btq	$2, %rax
	jb	.LBB5_49
# BB#48:                                # %vector.body.prol
	movd	(%rdx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movd	4(%rdx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	pshufd	$212, %xmm0, %xmm0      # xmm0 = xmm0[0,1,1,3]
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	pshufd	$212, %xmm1, %xmm1      # xmm1 = xmm1[0,1,1,3]
	psllq	$6, %xmm0
	psllq	$6, %xmm1
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movdqa	%xmm0, %xmm2
	psrad	$31, %xmm2
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movdqa	%xmm1, %xmm2
	psrad	$31, %xmm2
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	%xmm0, (%r10)
	movdqu	%xmm1, 16(%r10)
	movl	$4, %ebp
.LBB5_49:                               # %vector.body.preheader.split
	testq	%r9, %r9
	je	.LBB5_52
# BB#50:                                # %vector.body.preheader.split.split
	movq	%rsi, %rax
	andq	$-4, %rax
	subq	%rbp, %rax
	leaq	12(%rdx,%rbp,2), %rcx
	leaq	48(%r10,%rbp,8), %rbp
.LBB5_51:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	-12(%rcx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movd	-8(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	pshufd	$212, %xmm0, %xmm0      # xmm0 = xmm0[0,1,1,3]
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	pshufd	$212, %xmm1, %xmm1      # xmm1 = xmm1[0,1,1,3]
	psllq	$6, %xmm0
	psllq	$6, %xmm1
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movdqa	%xmm0, %xmm2
	psrad	$31, %xmm2
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movdqa	%xmm1, %xmm2
	psrad	$31, %xmm2
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	%xmm0, -48(%rbp)
	movdqu	%xmm1, -32(%rbp)
	movd	-4(%rcx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movd	(%rcx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	pshufd	$212, %xmm0, %xmm0      # xmm0 = xmm0[0,1,1,3]
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	pshufd	$212, %xmm1, %xmm1      # xmm1 = xmm1[0,1,1,3]
	psllq	$6, %xmm0
	psllq	$6, %xmm1
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movdqa	%xmm0, %xmm2
	psrad	$31, %xmm2
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movdqa	%xmm1, %xmm2
	psrad	$31, %xmm2
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	%xmm0, -16(%rbp)
	movdqu	%xmm1, (%rbp)
	addq	$16, %rcx
	addq	$64, %rbp
	addq	$-8, %rax
	jne	.LBB5_51
.LBB5_52:
	movq	%r8, %rax
.LBB5_53:                               # %middle.block
	cmpq	%rax, %rsi
	je	.LBB5_55
.LBB5_54:                               # %for.body.184
                                        # =>This Inner Loop Header: Depth=1
	movswq	(%rdx,%rax,2), %rbp
	shlq	$6, %rbp
	movq	%rbp, (%r10,%rax,8)
	incq	%rax
	cmpq	%rsi, %rax
	jl	.LBB5_54
.LBB5_55:                               # %for.end.195
	callq	Instance_Init
	cmpl	$256, %eax              # imm = 0x100
	jne	.LBB5_57
# BB#56:
	movl	$3, %r13d
	jmp	.LBB5_71
.LBB5_57:                               # %if.end.201
	leal	-1024(%rax), %ecx
	movl	$9, %r14d
	cmpl	$17, %ecx
	jb	.LBB5_59
# BB#58:                                # %if.else.208
	xorl	%r14d, %r14d
	testl	%eax, %eax
	jne	.LBB5_71
.LBB5_59:                               # %if.end.212
	movq	144(%r12), %rdi
	testl	%r15d, %r15d
	je	.LBB5_61
# BB#60:                                # %if.then.215
	movswl	96(%r12), %eax
	shll	$6, %eax
	movl	%eax, %ecx
	jmp	.LBB5_62
.LBB5_61:                               # %if.else.218
	movss	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	64(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	.LCPI5_1(%rip), %xmm2   # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %eax
	movss	68(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
.LBB5_62:                               # %if.end.221
	testq	%rdi, %rdi
	je	.LBB5_63
# BB#64:                                # %if.end.i.155
	cmpl	$64, %eax
	movl	$64, %edx
	cmovll	%edx, %eax
	cmpl	$64, %ecx
	cmovll	%edx, %ecx
	movslq	%eax, %rdx
	movq	%rdx, 40(%rdi)
	movslq	%ecx, %r8
	movq	%r8, 56(%rdi)
	movq	(%rdi), %rbp
	movq	8(%rbp), %rbp
	movzwl	96(%rbp), %ebx
	movq	%rbx, 48(%rdi)
	movq	%rbx, 64(%rdi)
	testb	$8, 100(%rbp)
	je	.LBB5_66
# BB#65:                                # %if.then.18.i
	addq	$32, %rdx
	andq	$-64, %rdx
	movq	%rdx, 40(%rdi)
	addq	$32, %r8
	andq	$-64, %r8
	movq	%r8, 56(%rdi)
.LBB5_66:                               # %TT_Set_Instance_CharSizes.exit
	movq	%rdx, %rsi
	sarq	$63, %rsi
	shrq	$58, %rsi
	addq	%rdx, %rsi
	shrq	$6, %rsi
	movl	%esi, 28(%rdi)
	movq	%r8, %rdx
	sarq	$63, %rdx
	shrq	$58, %rdx
	addq	%r8, %rdx
	shrq	$6, %rdx
	movl	%edx, 32(%rdi)
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movl	%ecx, 16(%rdi)
	movl	$0, 8(%rdi)
	xorl	%esi, %esi
	callq	Instance_Reset
	movq	144(%r12), %rcx
	movq	152(%r12), %rdx
	movups	584(%rdx), %xmm0
	movups	%xmm0, 128(%rcx)
	movups	568(%rdx), %xmm0
	movups	%xmm0, 112(%rcx)
	movups	552(%rdx), %xmm0
	movups	%xmm0, 96(%rcx)
	movups	536(%rdx), %xmm0
	movups	%xmm0, 80(%rcx)
	movups	472(%rdx), %xmm0
	movups	488(%rdx), %xmm1
	movdqu	504(%rdx), %xmm2
	movups	520(%rdx), %xmm3
	movups	%xmm3, 64(%rcx)
	movdqu	%xmm2, 48(%rcx)
	movups	%xmm1, 32(%rcx)
	movups	%xmm0, 16(%rcx)
	movl	$8, %r13d
	cmpl	$32, %eax
	je	.LBB5_71
# BB#67:                                # %TT_Set_Instance_CharSizes.exit
	cmpl	$256, %eax              # imm = 0x100
	jne	.LBB5_69
# BB#68:                                # %if.then.232
	movl	$3, %r13d
	jmp	.LBB5_71
.LBB5_63:                               # %if.end.240.thread
	movq	152(%r12), %rax
	movups	584(%rax), %xmm0
	movups	%xmm0, 128(%rdi)
	movups	568(%rax), %xmm0
	movups	%xmm0, 112(%rdi)
	movups	552(%rax), %xmm0
	movups	%xmm0, 96(%rdi)
	movups	536(%rax), %xmm0
	movups	%xmm0, 80(%rdi)
	movups	472(%rax), %xmm0
	movups	488(%rax), %xmm1
	movdqu	504(%rax), %xmm2
	movups	520(%rax), %xmm3
	movups	%xmm3, 64(%rdi)
	movdqu	%xmm2, 48(%rdi)
	movups	%xmm1, 32(%rdi)
	movups	%xmm0, 16(%rdi)
	jmp	.LBB5_71
.LBB5_69:                               # %if.end.233
	leal	-1024(%rax), %ecx
	movl	$9, %r13d
	cmpl	$17, %ecx
	jb	.LBB5_71
# BB#70:                                # %if.end.240
	testl	%eax, %eax
	movl	$7, %r13d
	cmovel	%r14d, %r13d
.LBB5_71:                               # %cleanup.247
	movl	%r13d, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	ttfFont__Open, .Lfunc_end5-ttfFont__Open
	.cfi_endproc

	.globl	ttfOutliner__init
	.align	16, 0x90
	.type	ttfOutliner__init,@function
ttfOutliner__init:                      # @ttfOutliner__init
	.cfi_startproc
# BB#0:                                 # %entry
	movl	8(%rsp), %eax
	movq	%rdx, 32(%rdi)
	movl	%r8d, (%rdi)
	movl	%r9d, 4(%rdi)
	movq	%rsi, 48(%rdi)
	movl	%eax, 8(%rdi)
	movq	%rcx, 40(%rdi)
	retq
.Lfunc_end6:
	.size	ttfOutliner__init, .Lfunc_end6-ttfOutliner__init
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI7_0:
	.quad	4580160821035794432     # double 1.562500e-02
	.quad	4580160821035794432     # double 1.562500e-02
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_1:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
	.text
	.globl	ttfOutliner__DrawGlyphOutline
	.align	16, 0x90
	.type	ttfOutliner__DrawGlyphOutline,@function
ttfOutliner__DrawGlyphOutline:          # @ttfOutliner__DrawGlyphOutline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp45:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp46:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 56
	subq	$280, %rsp              # imm = 0x118
.Ltmp48:
	.cfi_def_cfa_offset 336
.Ltmp49:
	.cfi_offset %rbx, -56
.Ltmp50:
	.cfi_offset %r12, -48
.Ltmp51:
	.cfi_offset %r13, -40
.Ltmp52:
	.cfi_offset %r14, -32
.Ltmp53:
	.cfi_offset %r15, -24
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rdi, %r12
	movq	40(%r12), %r13
	movq	%r13, 56(%rsp)          # 8-byte Spill
	movq	48(%r12), %rbp
	movq	152(%rbp), %r14
	movq	848(%r14), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	840(%r14), %r15
	movq	808(%r14), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	816(%r14), %rbx
	addq	$472, %r14              # imm = 0x1D8
	movzwl	96(%rbp), %esi
	addl	%esi, %esi
	movq	%r14, %rdi
	callq	Scale_X
	movzwl	96(%rbp), %esi
	movl	%eax, %ebp
	addl	%esi, %esi
	movq	%r14, %rdi
	callq	Scale_Y
	movl	%eax, %ecx
	movl	%ecx, 200(%rsp)         # 4-byte Spill
	movl	80(%r12), %eax
	movl	%eax, 192(%rsp)         # 4-byte Spill
	movl	84(%r12), %eax
	movl	%eax, 184(%rsp)         # 4-byte Spill
	movl	88(%r12), %eax
	addl	%ebp, %eax
	movl	%eax, 188(%rsp)         # 4-byte Spill
	movl	92(%r12), %eax
	addl	%ecx, %eax
	movl	%eax, 196(%rsp)         # 4-byte Spill
	cvtsi2sdl	68(%r12), %xmm0
	cvtsi2sdl	72(%r12), %xmm1
	movupd	96(%r12), %xmm2
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	mulpd	%xmm2, %xmm0
	movapd	.LCPI7_0(%rip), %xmm3   # xmm3 = [1.562500e-02,1.562500e-02]
	mulpd	%xmm3, %xmm0
	movupd	112(%r12), %xmm2
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	mulpd	%xmm2, %xmm1
	mulpd	%xmm3, %xmm1
	addpd	%xmm0, %xmm1
	movupd	128(%r12), %xmm0
	addpd	%xmm0, %xmm1
	subpd	%xmm0, %xmm1
	movapd	%xmm1, 240(%rsp)
	leaq	240(%rsp), %rsi
	movq	%r13, %rdi
	callq	*48(%r13)
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	104(%rsp), %r8          # 8-byte Reload
	movw	60(%r12), %dx
	movq	%r12, %r14
	testw	%dx, %dx
	je	.LBB7_47
# BB#1:                                 # %for.body.lr.ph
	subl	%ebp, 192(%rsp)         # 4-byte Folded Spill
	movl	200(%rsp), %eax         # 4-byte Reload
	subl	%eax, 184(%rsp)         # 4-byte Folded Spill
	movw	$-1, %cx
	.align	16, 0x90
.LBB7_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_6 Depth 2
                                        #     Child Loop BB7_20 Depth 2
	movq	%r15, 200(%rsp)         # 8-byte Spill
	movzwl	(%rdi), %eax
	movl	%eax, %esi
	subl	%ecx, %esi
	movswl	%si, %ecx
	cmpl	$3, %ecx
	jl	.LBB7_46
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	%r15, 200(%rsp)         # 8-byte Spill
	movw	%dx, 22(%rsp)           # 2-byte Spill
	movl	%esi, %ebp
	movl	%esi, 16(%rsp)          # 4-byte Spill
	decl	%ebp
	cmpl	$0, (%r13)
	je	.LBB7_13
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB7_2 Depth=1
	testw	%bp, %bp
	js	.LBB7_13
# BB#5:                                 #   in Loop: Header=BB7_2 Depth=1
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB7_6:                                # %for.body.49
                                        #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movswq	%r12w, %rax
	movl	(%rbx,%rax,4), %edx
	cmpl	%edx, 196(%rsp)         # 4-byte Folded Reload
	jl	.LBB7_11
# BB#7:                                 # %for.body.49
                                        #   in Loop: Header=BB7_6 Depth=2
	movl	(%r8,%rax,4), %ecx
	cmpl	192(%rsp), %ecx         # 4-byte Folded Reload
	jl	.LBB7_11
# BB#8:                                 # %for.body.49
                                        #   in Loop: Header=BB7_6 Depth=2
	cmpl	%ecx, 188(%rsp)         # 4-byte Folded Reload
	jl	.LBB7_11
# BB#9:                                 # %for.body.49
                                        #   in Loop: Header=BB7_6 Depth=2
	cmpl	184(%rsp), %edx         # 4-byte Folded Reload
	jl	.LBB7_11
# BB#10:                                # %for.body.49.if.end.105_crit_edge
                                        #   in Loop: Header=BB7_6 Depth=2
	movq	%r8, %r15
	leal	1(%rax), %r12d
	jmp	.LBB7_12
	.align	16, 0x90
.LBB7_11:                               # %if.then.70
                                        #   in Loop: Header=BB7_6 Depth=2
	leal	-1(%rax), %ecx
	testw	%ax, %ax
	cmovew	%bp, %cx
	movzwl	%bp, %edx
	movzwl	%ax, %esi
	leal	1(%rax), %r12d
	cmpl	%edx, %esi
	movl	$0, %edx
	cmovnew	%r12w, %dx
	movswl	%dx, %edx
	movswl	%bp, %esi
	cmpl	%esi, %edx
	movswq	%cx, %rsi
	movswq	%dx, %rcx
	movl	$0, %edx
	cmovleq	%rcx, %rdx
	movl	(%r8,%rdx,4), %edi
	addl	(%r8,%rsi,4), %edi
	movq	%r8, %r15
	movl	%edi, %ecx
	shrl	$31, %ecx
	addl	%edi, %ecx
	sarl	%ecx
	movl	(%rbx,%rdx,4), %edi
	addl	(%rbx,%rsi,4), %edi
	movl	%edi, %edx
	shrl	$31, %edx
	addl	%edi, %edx
	sarl	%edx
.LBB7_12:                               # %if.end.105
                                        #   in Loop: Header=BB7_6 Depth=2
	cvtsi2sdl	%ecx, %xmm0
	cvtsi2sdl	%edx, %xmm1
	movupd	96(%r14), %xmm2
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	mulpd	%xmm2, %xmm0
	movapd	.LCPI7_0(%rip), %xmm2   # xmm2 = [1.562500e-02,1.562500e-02]
	movapd	%xmm2, %xmm3
	mulpd	%xmm3, %xmm0
	movupd	112(%r14), %xmm2
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	mulpd	%xmm2, %xmm1
	mulpd	%xmm3, %xmm1
	addpd	%xmm0, %xmm1
	movupd	128(%r14), %xmm0
	addpd	%xmm1, %xmm0
	movapd	%xmm0, 256(%rsp)
	movq	200(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rcx,%rax), %edx
	testw	%ax, %ax
	sete	%al
	movzbl	%al, %ecx
	movq	%r13, %rdi
	leaq	256(%rsp), %rsi
	callq	*40(%r13)
	movswl	%bp, %eax
	movswl	%r12w, %ecx
	cmpl	%eax, %ecx
	movq	%r15, %r8
	jle	.LBB7_6
.LBB7_13:                               # %if.end.110
                                        #   in Loop: Header=BB7_2 Depth=1
	cmpl	$0, 4(%r13)
	movq	200(%rsp), %r15         # 8-byte Reload
	movq	24(%rsp), %rdi          # 8-byte Reload
	je	.LBB7_45
# BB#14:                                # %if.then.112
                                        #   in Loop: Header=BB7_2 Depth=1
	movswq	%bp, %rcx
	testb	$1, (%r15,%rcx)
	jne	.LBB7_15
# BB#16:                                # %if.else
                                        #   in Loop: Header=BB7_2 Depth=1
	testb	$1, (%r15)
	movl	(%r8), %eax
	jne	.LBB7_17
# BB#18:                                # %if.else.129
                                        #   in Loop: Header=BB7_2 Depth=1
	addl	(%r8,%rcx,4), %eax
	movq	%r8, 104(%rsp)          # 8-byte Spill
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	movl	(%rbx,%rcx,4), %eax
	addl	(%rbx), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	xorl	%r12d, %r12d
	movl	%edx, %eax
	jmp	.LBB7_19
.LBB7_15:                               # %if.then.117
                                        #   in Loop: Header=BB7_2 Depth=1
	movl	(%r8,%rcx,4), %eax
	movq	%r8, 104(%rsp)          # 8-byte Spill
	movl	(%rbx,%rcx,4), %ecx
	xorl	%r12d, %r12d
	jmp	.LBB7_19
.LBB7_17:                               # %if.then.126
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	%r8, 104(%rsp)          # 8-byte Spill
	movl	(%rbx), %ecx
	movw	$1, %r12w
.LBB7_19:                               # %if.end.139
                                        #   in Loop: Header=BB7_2 Depth=1
	movl	%ebp, 36(%rsp)          # 4-byte Spill
	movl	%eax, 20(%r14)
	movl	%ecx, 24(%r14)
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	%ecx, %xmm1
	movupd	96(%r14), %xmm2
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	mulpd	%xmm2, %xmm0
	movapd	.LCPI7_0(%rip), %xmm2   # xmm2 = [1.562500e-02,1.562500e-02]
	movapd	%xmm2, %xmm3
	mulpd	%xmm3, %xmm0
	movupd	112(%r14), %xmm2
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	mulpd	%xmm2, %xmm1
	mulpd	%xmm3, %xmm1
	addpd	%xmm0, %xmm1
	movupd	128(%r14), %xmm0
	addpd	%xmm1, %xmm0
	movapd	%xmm0, 256(%rsp)
	movq	%r13, %rdi
	leaq	256(%rsp), %rsi
	callq	*8(%r13)
	movl	%ebp, %r10d
	movswl	%r10w, %ecx
	movl	%ecx, 140(%rsp)         # 4-byte Spill
	movzwl	%r12w, %eax
	cmpl	%ecx, %eax
	movq	%rbx, %r9
	jg	.LBB7_44
	.align	16, 0x90
.LBB7_20:                               # %for.body.145
                                        #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-1(%r12), %ecx
	testw	%r12w, %r12w
	cmovew	%r10w, %cx
	movzwl	%r10w, %eax
	movzwl	%r12w, %edx
	leal	1(%r12), %r12d
	cmpl	%eax, %edx
	movw	%r12w, %di
	movl	$0, %eax
	cmovew	%ax, %di
	movswq	%dx, %rsi
	testb	$1, (%r15,%rsi)
	jne	.LBB7_21
# BB#25:                                # %if.else.198
                                        #   in Loop: Header=BB7_20 Depth=2
	movl	(%r9,%rsi,4), %eax
	cmpl	%eax, 196(%rsp)         # 4-byte Folded Reload
	movswq	%cx, %rbp
	movq	104(%rsp), %rdx         # 8-byte Reload
	movl	(%rdx,%rbp,4), %r8d
	jl	.LBB7_30
# BB#26:                                # %if.else.198
                                        #   in Loop: Header=BB7_20 Depth=2
	movl	(%rdx,%rsi,4), %ecx
	cmpl	192(%rsp), %ecx         # 4-byte Folded Reload
	jl	.LBB7_30
# BB#27:                                # %if.else.198
                                        #   in Loop: Header=BB7_20 Depth=2
	cmpl	%ecx, 188(%rsp)         # 4-byte Folded Reload
	jl	.LBB7_30
# BB#28:                                # %if.else.198
                                        #   in Loop: Header=BB7_20 Depth=2
	cmpl	184(%rsp), %eax         # 4-byte Folded Reload
	jl	.LBB7_30
# BB#29:                                # %if.else.198.if.end.233_crit_edge
                                        #   in Loop: Header=BB7_20 Depth=2
	movl	(%r9,%rbp,4), %esi
	jmp	.LBB7_31
	.align	16, 0x90
.LBB7_21:                               # %if.then.175
                                        #   in Loop: Header=BB7_20 Depth=2
	movswq	%cx, %rax
	testb	$1, (%r15,%rax)
	je	.LBB7_43
# BB#22:                                # %if.then.181
                                        #   in Loop: Header=BB7_20 Depth=2
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	(%rax,%rsi,4), %r13d
	movl	(%r9,%rsi,4), %r15d
	cmpl	%r13d, 20(%r14)
	jne	.LBB7_24
# BB#23:                                # %lor.lhs.false.189
                                        #   in Loop: Header=BB7_20 Depth=2
	cmpl	%r15d, 24(%r14)
	je	.LBB7_43
.LBB7_24:                               # %if.then.193
                                        #   in Loop: Header=BB7_20 Depth=2
	cvtsi2sdl	%r13d, %xmm0
	cvtsi2sdl	%r15d, %xmm1
	movupd	96(%r14), %xmm2
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	mulpd	%xmm2, %xmm0
	movapd	.LCPI7_0(%rip), %xmm2   # xmm2 = [1.562500e-02,1.562500e-02]
	movapd	%xmm2, %xmm3
	mulpd	%xmm3, %xmm0
	movupd	112(%r14), %xmm2
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	mulpd	%xmm2, %xmm1
	mulpd	%xmm3, %xmm1
	addpd	%xmm0, %xmm1
	movupd	128(%r14), %xmm0
	addpd	%xmm1, %xmm0
	movapd	%xmm0, 240(%rsp)
	movq	56(%rsp), %rdi          # 8-byte Reload
	leaq	240(%rsp), %rsi
	movq	%r9, %rbx
	movl	%r10d, %ebp
	callq	*16(%rdi)
	movl	%ebp, %r10d
	movq	%rbx, %r9
	movl	%r13d, 20(%r14)
	movl	%r15d, 24(%r14)
	movapd	240(%rsp), %xmm0
	jmp	.LBB7_42
	.align	16, 0x90
.LBB7_30:                               # %if.then.222
                                        #   in Loop: Header=BB7_20 Depth=2
	movswq	%di, %rax
	movl	(%rdx,%rax,4), %esi
	addl	%r8d, %esi
	movl	%esi, %ecx
	shrl	$31, %ecx
	addl	%esi, %ecx
	sarl	%ecx
	movl	(%r9,%rbp,4), %esi
	movl	(%r9,%rax,4), %ebx
	addl	%esi, %ebx
	movl	%ebx, %eax
	shrl	$31, %eax
	addl	%ebx, %eax
	sarl	%eax
.LBB7_31:                               # %if.end.233
                                        #   in Loop: Header=BB7_20 Depth=2
	testb	$1, (%r15,%rbp)
	jne	.LBB7_33
# BB#32:                                # %if.else.244
                                        #   in Loop: Header=BB7_20 Depth=2
	addl	%ecx, %r8d
	movl	%r8d, %ebp
	shrl	$31, %ebp
	addl	%r8d, %ebp
	sarl	%ebp
	addl	%eax, %esi
	movl	%esi, %ebx
	shrl	$31, %ebx
	addl	%esi, %ebx
	sarl	%ebx
	movl	%ebp, %r8d
	movl	%ebx, %esi
.LBB7_33:                               # %if.end.251
                                        #   in Loop: Header=BB7_20 Depth=2
	movswq	%di, %rdi
	movl	(%rdx,%rdi,4), %r15d
	movl	(%r9,%rdi,4), %ebx
	movq	200(%rsp), %rbp         # 8-byte Reload
	testb	$1, (%rbp,%rdi)
	jne	.LBB7_35
# BB#34:                                # %if.else.262
                                        #   in Loop: Header=BB7_20 Depth=2
	addl	%ecx, %r15d
	movl	%r15d, %edi
	shrl	$31, %edi
	addl	%r15d, %edi
	sarl	%edi
	addl	%eax, %ebx
	movl	%ebx, %ebp
	shrl	$31, %ebp
	addl	%ebx, %ebp
	sarl	%ebp
	movl	%edi, %r15d
	movl	%ebp, %ebx
.LBB7_35:                               # %if.end.269
                                        #   in Loop: Header=BB7_20 Depth=2
	cmpl	%r15d, 20(%r14)
	jne	.LBB7_37
# BB#36:                                # %lor.lhs.false.273
                                        #   in Loop: Header=BB7_20 Depth=2
	cmpl	%ebx, 24(%r14)
	je	.LBB7_43
.LBB7_37:                               # %if.then.277
                                        #   in Loop: Header=BB7_20 Depth=2
	movq	%r9, %r13
	leal	(%r8,%rcx,2), %edx
	movslq	%edx, %rdx
	imulq	$1431655766, %rdx, %rdx # imm = 0x55555556
	movq	%rdx, %rdi
	shrq	$63, %rdi
	shrq	$32, %rdx
	addl	%edi, %edx
	leal	(%rsi,%rax,2), %esi
	movslq	%esi, %rsi
	imulq	$1431655766, %rsi, %rsi # imm = 0x55555556
	movq	%rsi, %rdi
	shrq	$63, %rdi
	shrq	$32, %rsi
	addl	%edi, %esi
	cvtsi2sdl	%edx, %xmm2
	cvtsi2sdl	%esi, %xmm3
	movupd	96(%r14), %xmm0
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	mulpd	%xmm0, %xmm2
	movapd	.LCPI7_0(%rip), %xmm4   # xmm4 = [1.562500e-02,1.562500e-02]
	mulpd	%xmm4, %xmm2
	movupd	112(%r14), %xmm1
	movlhps	%xmm3, %xmm3            # xmm3 = xmm3[0,0]
	mulpd	%xmm1, %xmm3
	mulpd	%xmm4, %xmm3
	addpd	%xmm2, %xmm3
	movupd	128(%r14), %xmm2
	addpd	%xmm2, %xmm3
	movapd	%xmm3, 240(%rsp)
	movapd	%xmm3, %xmm6
	leal	(%r15,%rcx,2), %ecx
	movslq	%ecx, %rcx
	imulq	$1431655766, %rcx, %rcx # imm = 0x55555556
	movq	%rcx, %rdx
	shrq	$63, %rdx
	shrq	$32, %rcx
	addl	%edx, %ecx
	leal	(%rbx,%rax,2), %eax
	cltq
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rdx
	shrq	$63, %rdx
	shrq	$32, %rax
	addl	%edx, %eax
	cvtsi2sdl	%ecx, %xmm3
	cvtsi2sdl	%eax, %xmm5
	movlhps	%xmm3, %xmm3            # xmm3 = xmm3[0,0]
	mulpd	%xmm0, %xmm3
	mulpd	%xmm4, %xmm3
	movlhps	%xmm5, %xmm5            # xmm5 = xmm5[0,0]
	mulpd	%xmm1, %xmm5
	mulpd	%xmm4, %xmm5
	addpd	%xmm3, %xmm5
	addpd	%xmm2, %xmm5
	movapd	%xmm5, 112(%rsp)        # 16-byte Spill
	movapd	%xmm5, 224(%rsp)
	xorps	%xmm3, %xmm3
	cvtsi2sdl	%r15d, %xmm3
	xorps	%xmm5, %xmm5
	cvtsi2sdl	%ebx, %xmm5
	movlhps	%xmm3, %xmm3            # xmm3 = xmm3[0,0]
	mulpd	%xmm0, %xmm3
	mulpd	%xmm4, %xmm3
	movlhps	%xmm5, %xmm5            # xmm5 = xmm5[0,0]
	mulpd	%xmm1, %xmm5
	mulpd	%xmm4, %xmm5
	addpd	%xmm3, %xmm5
	addpd	%xmm2, %xmm5
	movapd	%xmm5, 208(%rsp)
	movsd	256(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, 40(%rsp)         # 8-byte Spill
	movsd	264(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movapd	%xmm6, %xmm2
	subsd	%xmm1, %xmm2
	movapd	%xmm2, 80(%rsp)         # 16-byte Spill
	shufpd	$1, %xmm6, %xmm6        # xmm6 = xmm6[1,0]
	subsd	%xmm0, %xmm6
	movapd	%xmm6, 64(%rsp)         # 16-byte Spill
	movapd	%xmm5, %xmm3
	subsd	%xmm1, %xmm3
	movapd	%xmm3, 144(%rsp)        # 16-byte Spill
	shufpd	$1, %xmm5, %xmm5        # xmm5 = xmm5[1,0]
	subsd	%xmm0, %xmm5
	movapd	%xmm5, 160(%rsp)        # 16-byte Spill
	movapd	%xmm2, %xmm0
	mulsd	%xmm5, %xmm0
	movapd	%xmm6, %xmm1
	mulsd	%xmm3, %xmm1
	subsd	%xmm1, %xmm0
	callq	fabs
	movsd	%xmm0, 96(%rsp)         # 8-byte Spill
	movapd	80(%rsp), %xmm0         # 16-byte Reload
	mulsd	144(%rsp), %xmm0        # 16-byte Folded Reload
	movapd	64(%rsp), %xmm1         # 16-byte Reload
	mulsd	160(%rsp), %xmm1        # 16-byte Folded Reload
	subsd	%xmm1, %xmm0
	callq	fabs
	movsd	.LCPI7_1(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	96(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB7_39
# BB#38:                                # %lor.lhs.false.317
                                        #   in Loop: Header=BB7_20 Depth=2
	movapd	112(%rsp), %xmm2        # 16-byte Reload
	movapd	%xmm2, %xmm1
	subsd	40(%rsp), %xmm1         # 8-byte Folded Reload
	movapd	%xmm1, 80(%rsp)         # 16-byte Spill
	shufpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
	subsd	48(%rsp), %xmm2         # 8-byte Folded Reload
	movapd	%xmm2, 112(%rsp)        # 16-byte Spill
	movapd	160(%rsp), %xmm0        # 16-byte Reload
	mulsd	%xmm1, %xmm0
	movapd	%xmm2, %xmm1
	mulsd	144(%rsp), %xmm1        # 16-byte Folded Reload
	subsd	%xmm1, %xmm0
	callq	fabs
	movsd	%xmm0, 96(%rsp)         # 8-byte Spill
	movapd	80(%rsp), %xmm0         # 16-byte Reload
	mulsd	144(%rsp), %xmm0        # 16-byte Folded Reload
	movapd	112(%rsp), %xmm1        # 16-byte Reload
	mulsd	160(%rsp), %xmm1        # 16-byte Folded Reload
	subsd	%xmm1, %xmm0
	callq	fabs
	mulsd	.LCPI7_1(%rip), %xmm0
	movsd	96(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_40
.LBB7_39:                               # %if.then.329
                                        #   in Loop: Header=BB7_20 Depth=2
	movq	56(%rsp), %rdi          # 8-byte Reload
	leaq	240(%rsp), %rsi
	leaq	224(%rsp), %rdx
	leaq	208(%rsp), %rcx
	callq	*24(%rdi)
	jmp	.LBB7_41
.LBB7_40:                               # %if.else.330
                                        #   in Loop: Header=BB7_20 Depth=2
	movq	56(%rsp), %rdi          # 8-byte Reload
	leaq	208(%rsp), %rsi
	callq	*16(%rdi)
.LBB7_41:                               # %if.end.332
                                        #   in Loop: Header=BB7_20 Depth=2
	movq	%r13, %r9
	movl	36(%rsp), %r10d         # 4-byte Reload
	movl	%r15d, 20(%r14)
	movl	%ebx, 24(%r14)
	movapd	208(%rsp), %xmm0
.LBB7_42:                               # %for.cond.140.backedge
                                        #   in Loop: Header=BB7_20 Depth=2
	movapd	%xmm0, 256(%rsp)
.LBB7_43:                               # %for.cond.140.backedge
                                        #   in Loop: Header=BB7_20 Depth=2
	movswl	%r12w, %eax
	cmpl	140(%rsp), %eax         # 4-byte Folded Reload
	movq	200(%rsp), %r15         # 8-byte Reload
	jle	.LBB7_20
.LBB7_44:                               # %for.end.339
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	56(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rdi
	movq	%r9, %rbx
	callq	*32(%r13)
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	104(%rsp), %r8          # 8-byte Reload
.LBB7_45:                               # %if.end.340
                                        #   in Loop: Header=BB7_2 Depth=1
	movzwl	(%rdi), %eax
	movw	22(%rsp), %dx           # 2-byte Reload
	movl	16(%rsp), %esi          # 4-byte Reload
.LBB7_46:                               # %cleanup
                                        #   in Loop: Header=BB7_2 Depth=1
	movswq	%si, %rcx
	addq	$2, %rdi
	addq	%rcx, %r15
	leaq	(%r8,%rcx,4), %r8
	leaq	(%rbx,%rcx,4), %rbx
	decw	%dx
	movw	%ax, %cx
	jne	.LBB7_2
.LBB7_47:                               # %for.end.354
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	ttfOutliner__DrawGlyphOutline, .Lfunc_end7-ttfOutliner__DrawGlyphOutline
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI8_0:
	.long	1199570944              # float 65536
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	ttfOutliner__Outline
	.align	16, 0x90
	.type	ttfOutliner__Outline,@function
ttfOutliner__Outline:                   # @ttfOutliner__Outline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp56:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp57:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp59:
	.cfi_def_cfa_offset 80
.Ltmp60:
	.cfi_offset %rbx, -40
.Ltmp61:
	.cfi_offset %r14, -32
.Ltmp62:
	.cfi_offset %r15, -24
.Ltmp63:
	.cfi_offset %rbp, -16
	movss	%xmm1, 12(%rsp)         # 4-byte Spill
	movss	%xmm0, 8(%rsp)          # 4-byte Spill
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	48(%rbx), %rbp
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movups	32(%rdx), %xmm2
	movups	%xmm2, 128(%rbx)
	movups	%xmm1, 112(%rbx)
	movups	%xmm0, 96(%rbx)
	leaq	56(%rbx), %r15
	movl	$0, 12(%rbx)
	movl	$0, 16(%rbx)
	movl	$0, 72(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 56(%rbx)
	movq	144(%rbp), %rsi
	movq	152(%rbp), %rdi
	callq	Context_Load
	movq	144(%rbp), %rcx
	movl	$920, %eax              # imm = 0x398
	addq	152(%rbp), %rax
	testb	$2, 552(%rcx)
	jne	.LBB8_1
# BB#2:                                 # %if.else.i
	movq	568(%rcx), %rdx
	movq	%rdx, 80(%rax)
	movups	552(%rcx), %xmm0
	movups	%xmm0, 64(%rax)
	movups	488(%rcx), %xmm0
	movups	504(%rcx), %xmm1
	movups	520(%rcx), %xmm2
	movups	536(%rcx), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	jmp	.LBB8_3
.LBB8_1:                                # %if.then.i
	movq	Default_GraphicsState+80(%rip), %rcx
	movq	%rcx, 80(%rax)
	movups	Default_GraphicsState+64(%rip), %xmm0
	movups	%xmm0, 64(%rax)
	movups	Default_GraphicsState+48(%rip), %xmm0
	movups	%xmm0, 48(%rax)
	movups	Default_GraphicsState+32(%rip), %xmm0
	movups	%xmm0, 32(%rax)
	movups	Default_GraphicsState+16(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movups	Default_GraphicsState(%rip), %xmm0
.LBB8_3:                                # %ttfFont__StartGlyph.exit
	movups	%xmm0, (%rax)
	movss	12(%rsp), %xmm3         # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	movss	8(%rsp), %xmm1          # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movq	160(%rbp), %rax
	movl	$0, 20(%rax)
	movups	.LttfOutliner__BuildGlyphOutline.m_orig(%rip), %xmm0
	movaps	%xmm0, 16(%rsp)
	movss	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	.LCPI8_1(%rip), %xmm2   # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 32(%rsp)
	mulss	%xmm0, %xmm3
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm3, %xmm0
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 36(%rsp)
	leaq	16(%rsp), %rdx
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movq	%r15, %rcx
	callq	ttfOutliner__BuildGlyphOutlineAux
	movl	%eax, %r14d
	movq	144(%rbp), %rsi
	movq	152(%rbp), %rdi
	callq	Context_Save
	movw	96(%rbp), %ax
	testw	%ax, %ax
	jne	.LBB8_5
# BB#4:                                 # %if.then
	movw	$1024, 96(%rbp)         # imm = 0x400
	movw	$1024, %ax              # imm = 0x400
.LBB8_5:                                # %if.end
	cmpl	$0, 128(%rbp)
	je	.LBB8_7
# BB#6:                                 # %if.then.10
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	movupd	96(%rbx), %xmm1
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	divpd	%xmm0, %xmm1
	movupd	%xmm1, 96(%rbx)
	movupd	112(%rbx), %xmm1
	divpd	%xmm0, %xmm1
	movupd	%xmm1, 112(%rbx)
.LBB8_7:                                # %if.end.30
	movl	%r14d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	ttfOutliner__Outline, .Lfunc_end8-ttfOutliner__Outline
	.cfi_endproc

	.align	16, 0x90
	.type	ttfOutliner__BuildGlyphOutlineAux,@function
ttfOutliner__BuildGlyphOutlineAux:      # @ttfOutliner__BuildGlyphOutlineAux
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
	subq	$344, %rsp              # imm = 0x158
.Ltmp70:
	.cfi_def_cfa_offset 400
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
	movq	%rcx, 200(%rsp)         # 8-byte Spill
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movl	%esi, 76(%rsp)          # 4-byte Spill
	movq	%rdi, %rbp
	movq	%rbp, 128(%rsp)         # 8-byte Spill
	movq	32(%rbp), %r13
	movq	%r13, 104(%rsp)         # 8-byte Spill
	movq	48(%rbp), %r14
	movq	%r14, 120(%rsp)         # 8-byte Spill
	movq	160(%r14), %rcx
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	movq	152(%r14), %r15
	movq	8(%rcx), %rax
	movslq	20(%rcx), %rcx
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rax,%rcx,4), %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movq	$0, 280(%rsp)
	movl	$1, 156(%rsp)           # 4-byte Folded Spill
                                        # implicit-def: EAX
	movl	%eax, 140(%rsp)         # 4-byte Spill
	jmp	.LBB9_1
	.align	16, 0x90
.LBB9_293:                              # %if.then.865
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	152(%r14), %r15
	movq	144(%rsp), %rdx         # 8-byte Reload
	movq	8(%rdx), %rax
	movl	$-2, %ecx
	subl	160(%rsp), %ecx         # 4-byte Folded Reload
	movslq	20(%rdx), %rdx
	leaq	(%rdx,%rdx,8), %rdx
	movq	$0, 280(%rsp)
	movq	128(%rsp), %rbp         # 8-byte Reload
	addl	%ecx, 12(%rbp)
	leaq	(%rax,%rdx,4), %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movq	200(%rsp), %rax         # 8-byte Reload
	movl	4(%rax), %eax
	subl	%eax, 16(%rbp)
	movq	%r13, %rdi
	movl	140(%rsp), %esi         # 4-byte Reload
	callq	*16(%r13)
	movl	$0, 156(%rsp)           # 4-byte Folded Spill
	movl	%ebx, %esi
.LBB9_1:                                # %retry
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_162 Depth 2
                                        #     Child Loop BB9_166 Depth 2
                                        #     Child Loop BB9_175 Depth 2
                                        #       Child Loop BB9_183 Depth 3
                                        #     Child Loop BB9_188 Depth 2
                                        #     Child Loop BB9_198 Depth 2
                                        #     Child Loop BB9_219 Depth 2
                                        #     Child Loop BB9_222 Depth 2
                                        #     Child Loop BB9_228 Depth 2
                                        #     Child Loop BB9_233 Depth 2
                                        #     Child Loop BB9_236 Depth 2
                                        #     Child Loop BB9_241 Depth 2
                                        #     Child Loop BB9_246 Depth 2
                                        #     Child Loop BB9_249 Depth 2
                                        #     Child Loop BB9_253 Depth 2
                                        #     Child Loop BB9_262 Depth 2
                                        #     Child Loop BB9_267 Depth 2
                                        #     Child Loop BB9_270 Depth 2
                                        #     Child Loop BB9_275 Depth 2
                                        #     Child Loop BB9_281 Depth 2
                                        #     Child Loop BB9_285 Depth 2
                                        #     Child Loop BB9_16 Depth 2
                                        #     Child Loop BB9_37 Depth 2
                                        #       Child Loop BB9_49 Depth 3
                                        #       Child Loop BB9_53 Depth 3
                                        #     Child Loop BB9_74 Depth 2
                                        #     Child Loop BB9_78 Depth 2
                                        #     Child Loop BB9_82 Depth 2
                                        #     Child Loop BB9_85 Depth 2
                                        #     Child Loop BB9_94 Depth 2
                                        #     Child Loop BB9_99 Depth 2
                                        #     Child Loop BB9_102 Depth 2
                                        #     Child Loop BB9_110 Depth 2
                                        #     Child Loop BB9_115 Depth 2
                                        #     Child Loop BB9_118 Depth 2
                                        #     Child Loop BB9_131 Depth 2
                                        #     Child Loop BB9_136 Depth 2
                                        #     Child Loop BB9_139 Depth 2
                                        #     Child Loop BB9_147 Depth 2
                                        #     Child Loop BB9_152 Depth 2
                                        #     Child Loop BB9_155 Depth 2
	movl	8(%rbp), %edx
	movq	%r13, %rdi
	movl	%esi, %r12d
	leaq	342(%rsp), %rcx
	leaq	340(%rsp), %r8
	callq	*56(%r13)
	testl	%eax, %eax
	js	.LBB9_2
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movswl	342(%rsp), %eax
	shll	$6, %eax
	movq	200(%rsp), %rcx         # 8-byte Reload
	movl	%eax, 20(%rcx)
	movswl	340(%rsp), %eax
	shll	$6, %eax
	movl	%eax, 12(%rcx)
	movl	$0, 16(%rcx)
	movl	$0, 4(%rbp)
	xorl	%esi, %esi
	cmpl	$0, (%rbp)
	je	.LBB9_7
# BB#4:                                 # %if.end.12
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%r13, %rdi
	movl	%r12d, %esi
	leaq	280(%rsp), %rdx
	leaq	276(%rsp), %rcx
	callq	*40(%r13)
	movl	$6, %esi
	testl	%eax, %eax
	je	.LBB9_7
# BB#5:                                 # %if.end.16
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%r13, %rdi
	callq	*(%r13)
	movq	%r13, %rdi
	testl	%eax, %eax
	jne	.LBB9_6
# BB#8:                                 # %if.end.20
                                        #   in Loop: Header=BB9_1 Depth=1
	callq	*32(%r13)
	movl	$0, 160(%rsp)           # 4-byte Folded Spill
	testl	%eax, %eax
	jne	.LBB9_9
# BB#10:                                # %if.end.24
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%r15, %rbx
	movq	%rbx, 112(%rsp)         # 8-byte Spill
	leaq	800(%rbx), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	%r13, %rdi
	callq	*24(%r13)
	movl	%eax, 140(%rsp)         # 4-byte Spill
	movq	%r13, %rdi
	callq	ttfReader__Short
	cwtl
	movq	200(%rsp), %r15         # 8-byte Reload
	movl	%eax, 4(%r15)
	movq	%r13, %rdi
	callq	ttfReader__Short
	movw	%ax, 208(%rsp)          # 2-byte Spill
	movswl	%ax, %r12d
	movq	%r13, %rdi
	callq	ttfReader__Short
	cwtl
	movl	%eax, 216(%rsp)         # 4-byte Spill
	movq	%r13, %rdi
	callq	ttfReader__Short
	cwtl
	movl	%eax, 224(%rsp)         # 4-byte Spill
	movq	%r13, %rdi
	callq	ttfReader__Short
	movswl	%ax, %r13d
	leaq	472(%rbx), %rbp
	movq	%rbp, 88(%rsp)          # 8-byte Spill
	movq	%rbp, %rdi
	movl	%r12d, %esi
	callq	Scale_X
	movl	%eax, 24(%r15)
	movq	%rbp, %rdi
	movl	216(%rsp), %esi         # 4-byte Reload
	callq	Scale_Y
	movl	%eax, 28(%r15)
	movq	%rbp, %rdi
	movl	224(%rsp), %esi         # 4-byte Reload
	callq	Scale_X
	movl	%eax, 32(%r15)
	movq	%rbp, %rdi
	movl	%r13d, %esi
	callq	Scale_Y
	movl	%eax, 36(%r15)
	movq	152(%r14), %rax
	movdqu	808(%rax), %xmm0
	movdqu	824(%rax), %xmm1
	movdqu	840(%rax), %xmm2
	movdqa	%xmm2, 320(%rsp)
	movdqa	%xmm1, 304(%rsp)
	movdqa	%xmm0, 288(%rsp)
	movswl	342(%rsp), %edx
	subl	%edx, %r12d
	movq	%r12, 48(%rsp)          # 8-byte Spill
	movzwl	340(%rsp), %esi
	leal	(%r12,%rsi), %edi
	movl	4(%r15), %eax
	cmpl	$-1, %eax
	jne	.LBB9_11
# BB#13:                                # %if.then.79
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$1, (%r15)
	movl	108(%r14), %eax
	movq	144(%rsp), %rdx         # 8-byte Reload
	movl	20(%rdx), %ecx
	addl	%eax, %ecx
	movl	$7, %esi
	cmpl	16(%rdx), %ecx
	movq	104(%rsp), %r13         # 8-byte Reload
	ja	.LBB9_7
# BB#14:                                # %if.end.85
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	%edi, 36(%rsp)          # 4-byte Spill
	movq	$0, 4(%r15)
	movl	$3, 208(%rsp)           # 4-byte Folded Spill
	movl	$0, 160(%rsp)           # 4-byte Folded Spill
	testl	%eax, %eax
	movl	$0, %edx
	movl	$0, %r15d
	je	.LBB9_15
	.align	16, 0x90
.LBB9_16:                               # %if.end.92
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, 224(%rsp)         # 4-byte Spill
	movw	%r15w, %bp
	movq	%r13, %rdi
	callq	ttfReader__UShort
	movw	%ax, %r15w
	movq	%r13, %rdi
	callq	ttfReader__UShort
	movzwl	%r15w, %ebx
	andl	$256, %r15d             # imm = 0x100
	testb	$1, %bl
	movq	168(%rsp), %r12         # 8-byte Reload
	jne	.LBB9_17
# BB#18:                                # %if.else.104
                                        #   in Loop: Header=BB9_16 Depth=2
	movw	%ax, 184(%rsp)          # 2-byte Spill
	movq	%r13, %rdi
	testb	$2, %bl
	jne	.LBB9_19
# BB#20:                                # %if.else.113
                                        #   in Loop: Header=BB9_16 Depth=2
	callq	ttfReader__Byte
	movzbl	%al, %eax
	movl	%eax, 176(%rsp)         # 4-byte Spill
	movq	%r13, %rdi
	callq	ttfReader__Byte
	movzbl	%al, %eax
	jmp	.LBB9_21
	.align	16, 0x90
.LBB9_17:                               # %if.then.101
                                        #   in Loop: Header=BB9_16 Depth=2
	movw	%ax, 184(%rsp)          # 2-byte Spill
	movq	%r13, %rdi
	callq	ttfReader__Short
	movl	%eax, 176(%rsp)         # 4-byte Spill
	movq	%r13, %rdi
	callq	ttfReader__Short
	jmp	.LBB9_21
	.align	16, 0x90
.LBB9_19:                               # %if.then.108
                                        #   in Loop: Header=BB9_16 Depth=2
	callq	ttfReader__SignedByte
	movsbl	%al, %eax
	movl	%eax, 176(%rsp)         # 4-byte Spill
	movq	%r13, %rdi
	callq	ttfReader__SignedByte
	movsbl	%al, %eax
.LBB9_21:                               # %if.end.119
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	%eax, 192(%rsp)         # 4-byte Spill
	orl	%ebp, %r15d
	testb	$8, %bl
	jne	.LBB9_22
# BB#23:                                # %if.else.126
                                        #   in Loop: Header=BB9_16 Depth=2
	testb	$64, %bl
	jne	.LBB9_24
# BB#25:                                # %if.else.139
                                        #   in Loop: Header=BB9_16 Depth=2
	testb	$-128, %bl
	movl	%ebx, 216(%rsp)         # 4-byte Spill
	jne	.LBB9_27
# BB#26:                                #   in Loop: Header=BB9_16 Depth=2
	xorl	%r14d, %r14d
	movl	$65536, %eax            # imm = 0x10000
	xorl	%ebx, %ebx
	movl	$65536, %ebp            # imm = 0x10000
	jmp	.LBB9_28
	.align	16, 0x90
.LBB9_22:                               # %if.then.123
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	%ebx, 216(%rsp)         # 4-byte Spill
	movq	%r13, %rdi
	callq	ttfReader__Short
	cwtl
	shll	$2, %eax
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	movl	%eax, %ebp
	jmp	.LBB9_28
	.align	16, 0x90
.LBB9_24:                               # %if.then.130
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	%ebx, 216(%rsp)         # 4-byte Spill
	movq	%r13, %rdi
	callq	ttfReader__Short
	movswl	%ax, %ebp
	shll	$2, %ebp
	movq	%r13, %rdi
	callq	ttfReader__Short
	cwtl
	shll	$2, %eax
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	jmp	.LBB9_28
.LBB9_27:                               # %if.then.143
                                        #   in Loop: Header=BB9_16 Depth=2
	movq	%r13, %rdi
	callq	ttfReader__Short
	movswl	%ax, %ebp
	shll	$2, %ebp
	movq	%r13, %rdi
	callq	ttfReader__Short
	movswl	%ax, %ebx
	shll	$2, %ebx
	movq	%r13, %rdi
	callq	ttfReader__Short
	movswl	%ax, %r14d
	shll	$2, %r14d
	movq	%r13, %rdi
	callq	ttfReader__Short
	cwtl
	shll	$2, %eax
	.align	16, 0x90
.LBB9_28:                               # %do.cond
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	224(%rsp), %edx         # 4-byte Reload
	movw	184(%rsp), %si          # 2-byte Reload
	movl	176(%rsp), %edi         # 4-byte Reload
	movl	%edx, %ecx
	leaq	(%rcx,%rcx,8), %rcx
	movl	%ebp, (%r12,%rcx,4)
	movl	%ebx, 4(%r12,%rcx,4)
	movl	%r14d, 8(%r12,%rcx,4)
	movl	%eax, 12(%r12,%rcx,4)
	movl	$0, 16(%r12,%rcx,4)
	movl	$0, 20(%r12,%rcx,4)
	movzwl	%si, %eax
	movl	%eax, 24(%r12,%rcx,4)
	movw	%di, 32(%r12,%rcx,4)
	movl	192(%rsp), %eax         # 4-byte Reload
	movw	%ax, 34(%r12,%rcx,4)
	movl	216(%rsp), %eax         # 4-byte Reload
	movl	%eax, 28(%r12,%rcx,4)
	incl	%edx
	testb	$32, %al
	je	.LBB9_30
# BB#29:                                # %do.cond.do.body_crit_edge
                                        #   in Loop: Header=BB9_16 Depth=2
	movq	120(%rsp), %r14         # 8-byte Reload
	cmpl	108(%r14), %edx
	jb	.LBB9_16
.LBB9_15:                               #   in Loop: Header=BB9_1 Depth=1
	movl	76(%rsp), %esi          # 4-byte Reload
	movl	156(%rsp), %ebp         # 4-byte Reload
	jmp	.LBB9_290
	.align	16, 0x90
.LBB9_2:                                #   in Loop: Header=BB9_1 Depth=1
	movl	$0, 160(%rsp)           # 4-byte Folded Spill
.LBB9_9:                                #   in Loop: Header=BB9_1 Depth=1
	movl	$7, 208(%rsp)           # 4-byte Folded Spill
	movl	156(%rsp), %ebp         # 4-byte Reload
	movl	%r12d, %esi
.LBB9_290:                              # %ex
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%r13, %rdi
	movl	%esi, %ebx
	callq	*48(%r13)
	testl	%ebp, %ebp
	je	.LBB9_291
# BB#292:                               # %ex
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	208(%rsp), %esi         # 4-byte Reload
	cmpl	$9, %esi
	je	.LBB9_293
	jmp	.LBB9_7
.LBB9_11:                               # %if.end.24
                                        #   in Loop: Header=BB9_1 Depth=1
	testl	%eax, %eax
	movl	156(%rsp), %ebp         # 4-byte Reload
	jne	.LBB9_159
# BB#12:                                # %if.then.75
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$0, 8(%r15)
	movl	$0, 160(%rsp)           # 4-byte Folded Spill
	movl	$0, 208(%rsp)           # 4-byte Folded Spill
.LBB9_60:                               #   in Loop: Header=BB9_1 Depth=1
	movl	76(%rsp), %esi          # 4-byte Reload
	movq	104(%rsp), %r13         # 8-byte Reload
	jmp	.LBB9_290
.LBB9_159:                              # %if.else.502
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	104(%rsp), %r13         # 8-byte Reload
	jle	.LBB9_63
# BB#160:                               # %if.then.506
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	128(%rsp), %r12         # 8-byte Reload
	addl	16(%r12), %eax
	movq	112(%rsp), %rcx         # 8-byte Reload
	cmpl	1392(%rcx), %eax
	jg	.LBB9_63
# BB#161:                               # %for.body.523.lr.ph
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	%ebp, %r15d
	movl	%edi, 36(%rsp)          # 4-byte Spill
	movq	%rsi, 216(%rsp)         # 8-byte Spill
	movl	%edx, 224(%rsp)         # 4-byte Spill
	movq	848(%rcx), %r14
	movq	%r13, %rbx
	xorl	%ebp, %ebp
	movq	200(%rsp), %r13         # 8-byte Reload
	.align	16, 0x90
.LBB9_162:                              # %for.body.523
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	callq	ttfReader__Short
	movzwl	%bp, %ecx
	movw	%ax, (%r14,%rcx,2)
	leal	1(%rbp), %ebp
	movzwl	%bp, %ecx
	movslq	4(%r13), %rax
	cmpl	%eax, %ecx
	jl	.LBB9_162
# BB#163:                               # %for.cond.530.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	$1, %eax
	movq	%rbx, %r13
	movl	%r15d, %ebp
	jle	.LBB9_168
# BB#164:                               #   in Loop: Header=BB9_1 Depth=1
	movw	$1, %cx
	movl	$1, %edx
	.align	16, 0x90
.LBB9_166:                              # %for.body.535
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decl	%edx
	movslq	%edx, %rdx
	movzwl	%cx, %esi
	movswl	(%r14,%rsi,2), %esi
	movswl	(%r14,%rdx,2), %edx
	cmpl	%esi, %edx
	jge	.LBB9_167
# BB#165:                               # %for.cond.530
                                        #   in Loop: Header=BB9_166 Depth=2
	leal	1(%rcx), %ecx
	movzwl	%cx, %edx
	cmpl	%eax, %edx
	jl	.LBB9_166
.LBB9_168:                              # %for.end.550
                                        #   in Loop: Header=BB9_1 Depth=1
	movswl	-2(%r14,%rax,2), %r15d
	leal	1(%r15), %eax
	movl	%eax, 160(%rsp)         # 4-byte Spill
	movq	200(%rsp), %rcx         # 8-byte Reload
	movl	%eax, 8(%rcx)
	movl	12(%r12), %eax
	leal	3(%rax,%r15), %eax
	movq	112(%rsp), %rcx         # 8-byte Reload
	cmpl	1396(%rcx), %eax
	jg	.LBB9_169
# BB#170:                               # %if.end.564
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%r13, %rdi
	callq	ttfReader__Short
	movw	%ax, %r12w
	movswl	%r12w, %r14d
	movq	%r13, %rdi
	callq	*24(%r13)
	movl	%eax, %ebp
	leal	(%rbp,%r14), %esi
	movq	%r13, %rdi
	callq	*16(%r13)
	movq	%r13, %rdi
	callq	*32(%r13)
	testl	%eax, %eax
	je	.LBB9_174
# BB#171:                               #   in Loop: Header=BB9_1 Depth=1
	movl	$7, 208(%rsp)           # 4-byte Folded Spill
	jmp	.LBB9_172
.LBB9_30:                               # %do.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	%edx, %ebx
	movq	%r13, %rdi
	callq	*32(%r13)
	testl	%eax, %eax
	je	.LBB9_32
# BB#31:                                #   in Loop: Header=BB9_1 Depth=1
	movl	$7, 208(%rsp)           # 4-byte Folded Spill
	movl	76(%rsp), %esi          # 4-byte Reload
	jmp	.LBB9_173
.LBB9_32:                               # %if.end.181
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%r13, %rdi
	callq	*24(%r13)
	movq	%r13, %rdi
	callq	*(%r13)
	testw	%r15w, %r15w
	movl	$0, %ecx
	je	.LBB9_35
# BB#33:                                # %if.end.181
                                        #   in Loop: Header=BB9_1 Depth=1
	testl	%eax, %eax
	movl	$0, %ecx
	jne	.LBB9_35
# BB#34:                                # %cond.true
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%r13, %rdi
	callq	ttfReader__UShort
	movzwl	%ax, %ecx
.LBB9_35:                               # %cond.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%r13, %rdi
	callq	*24(%r13)
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	%r13, %rdi
	movl	76(%rsp), %esi          # 4-byte Reload
	callq	*48(%r13)
	movq	$0, 280(%rsp)
	movl	%ebx, %r15d
	movl	%r15d, 224(%rsp)        # 4-byte Spill
	testl	%r15d, %r15d
	movl	$0, %r14d
	je	.LBB9_57
# BB#36:                                # %for.body.lr.ph
                                        #   in Loop: Header=BB9_1 Depth=1
	andl	$2, 216(%rsp)           # 4-byte Folded Spill
	movl	%r15d, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	200(%rsp), %rax         # 8-byte Reload
	movl	4(%rax), %ebp
	movl	8(%rax), %eax
	xorl	%edx, %edx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB9_37:                               # %for.body
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_49 Depth 3
                                        #       Child Loop BB9_53 Depth 3
	movl	%esi, 60(%rsp)          # 4-byte Spill
	movl	%eax, 176(%rsp)         # 4-byte Spill
	movq	%rdx, 184(%rsp)         # 8-byte Spill
	movl	$0, 240(%rsp)
	movq	$0, 232(%rsp)
	cltq
	movq	%rax, 208(%rsp)         # 8-byte Spill
	leaq	(,%rax,4), %r14
	movq	112(%rsp), %rbx         # 8-byte Reload
	addq	%r14, 808(%rbx)
	addq	%r14, 816(%rbx)
	addq	%r14, 824(%rbx)
	addq	%r14, 832(%rbx)
	addq	%rax, 840(%rbx)
	movslq	%ebp, %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	leaq	(%rax,%rax), %rax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	addq	%rax, 848(%rbx)
	movq	144(%rsp), %r13         # 8-byte Reload
	addl	%r15d, 20(%r13)
	leaq	(%rdx,%rdx,8), %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movl	24(%r12,%rax,4), %esi
	movq	128(%rsp), %rdi         # 8-byte Reload
	movq	64(%rsp), %rdx          # 8-byte Reload
	leaq	232(%rsp), %rcx
	callq	ttfOutliner__BuildGlyphOutlineAux
	movq	808(%rbx), %rdx
	subq	%r14, %rdx
	movq	%rdx, 808(%rbx)
	movq	816(%rbx), %rcx
	subq	%r14, %rcx
	movq	%rcx, 816(%rbx)
	subq	%r14, 824(%rbx)
	subq	%r14, 832(%rbx)
	movq	208(%rsp), %rsi         # 8-byte Reload
	subq	%rsi, 840(%rbx)
	subl	%r15d, 20(%r13)
	movq	192(%rsp), %rsi         # 8-byte Reload
	subq	%rsi, 848(%rbx)
	movl	$8, %esi
	cmpl	$8, %eax
	je	.LBB9_40
# BB#38:                                # %if.else.250
                                        #   in Loop: Header=BB9_37 Depth=2
	testl	%eax, %eax
	movl	60(%rsp), %esi          # 4-byte Reload
	jne	.LBB9_39
.LBB9_40:                               # %if.end.255
                                        #   in Loop: Header=BB9_37 Depth=2
	movl	%esi, 208(%rsp)         # 4-byte Spill
	movl	216(%rsp), %eax         # 4-byte Reload
	testl	%eax, %eax
	movq	160(%rsp), %r14         # 8-byte Reload
	movswl	32(%r12,%r14,4), %esi
	jne	.LBB9_41
# BB#42:                                # %if.else.274
                                        #   in Loop: Header=BB9_37 Depth=2
	movslq	%esi, %rax
	movl	(%rdx,%rax,4), %esi
	movswl	34(%r12,%r14,4), %edi
	movq	200(%rsp), %rbx         # 8-byte Reload
	addl	8(%rbx), %edi
	subl	(%rdx,%rdi,4), %esi
	shll	$10, %esi
	movl	%esi, 16(%r12,%r14,4)
	movl	(%rcx,%rax,4), %eax
	subl	(%rcx,%rdi,4), %eax
	jmp	.LBB9_43
	.align	16, 0x90
.LBB9_41:                               # %if.then.259
                                        #   in Loop: Header=BB9_37 Depth=2
	movq	88(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	Scale_X
	shll	$10, %eax
	movl	%eax, 16(%r12,%r14,4)
	movswl	34(%r12,%r14,4), %esi
	movq	%rbx, %rdi
	callq	Scale_Y
.LBB9_43:                               # %if.end.305
                                        #   in Loop: Header=BB9_37 Depth=2
	movl	176(%rsp), %ebx         # 4-byte Reload
	shll	$10, %eax
	leaq	(%r12,%r14,4), %rcx
	movl	%eax, 20(%r12,%r14,4)
	movq	96(%rsp), %rdi          # 8-byte Reload
	movl	%ebx, %esi
	leaq	232(%rsp), %rdx
	callq	MoveGlyphOutline
	movl	236(%rsp), %r13d
	testl	%r13d, %r13d
	pxor	%xmm3, %xmm3
	movq	80(%rsp), %rax          # 8-byte Reload
	jle	.LBB9_54
# BB#44:                                # %for.body.312.lr.ph
                                        #   in Loop: Header=BB9_37 Depth=2
	leal	(%r13,%rbp), %ecx
	leal	1(%rax), %edi
	cmpl	%edi, %ecx
	movl	%edi, %edx
	cmovgel	%ecx, %edx
	decl	%edx
	subl	%eax, %edx
	leaq	1(%rdx), %rsi
	movq	%rsi, %r15
	movabsq	$8589934584, %r11       # imm = 0x1FFFFFFF8
	andq	%r11, %r15
	andq	%r11, %rsi
	movq	112(%rsp), %rsi         # 8-byte Reload
	movq	848(%rsi), %r9
	leaq	1(%rdx,%rax), %r8
	je	.LBB9_51
# BB#45:                                # %vector.ph1000
                                        #   in Loop: Header=BB9_37 Depth=2
	movd	%ebx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	cmpl	%edi, %ecx
	movl	%edi, %esi
	cmovgel	%ecx, %esi
	decl	%esi
	subl	%ebp, %esi
	incq	%rsi
	andq	%r11, %rsi
	addq	$-8, %rsi
	movq	%rsi, %rdx
	shrq	$3, %rdx
	btq	$3, %rsi
	movq	%rax, %r10
	jb	.LBB9_47
# BB#46:                                # %vector.body990.prol
                                        #   in Loop: Header=BB9_37 Depth=2
	movq	(%r9,%rax,2), %xmm1     # xmm1 = mem[0],zero
	movq	8(%r9,%rax,2), %xmm2    # xmm2 = mem[0],zero
	punpcklwd	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3]
	punpcklwd	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3]
	paddw	%xmm0, %xmm1
	pshuflw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, (%r9,%rax,2)
	paddw	%xmm0, %xmm2
	pshuflw	$232, %xmm2, %xmm1      # xmm1 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, 8(%r9,%rax,2)
	leaq	8(%rax), %r10
.LBB9_47:                               # %vector.ph1000.split
                                        #   in Loop: Header=BB9_37 Depth=2
	addq	%r15, %rax
	leal	(%rbp,%r15), %esi
	testq	%rdx, %rdx
	je	.LBB9_50
# BB#48:                                # %vector.ph1000.split.split
                                        #   in Loop: Header=BB9_37 Depth=2
	cmpl	%edi, %ecx
	cmovgel	%ecx, %edi
	decl	%edi
	subl	%ebp, %edi
	incq	%rdi
	andq	%r11, %rdi
	movslq	%ebp, %rbp
	addq	%rdi, %rbp
	subq	%r10, %rbp
	leaq	24(%r9,%r10,2), %rdi
	.align	16, 0x90
.LBB9_49:                               # %vector.body990
                                        #   Parent Loop BB9_1 Depth=1
                                        #     Parent Loop BB9_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-24(%rdi), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rdi), %xmm2        # xmm2 = mem[0],zero
	punpcklwd	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3]
	punpcklwd	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3]
	paddw	%xmm0, %xmm1
	pshuflw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, -24(%rdi)
	paddw	%xmm0, %xmm2
	pshuflw	$232, %xmm2, %xmm1      # xmm1 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, -16(%rdi)
	movq	-8(%rdi), %xmm1         # xmm1 = mem[0],zero
	movq	(%rdi), %xmm2           # xmm2 = mem[0],zero
	punpcklwd	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3]
	punpcklwd	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3]
	paddw	%xmm0, %xmm1
	pshuflw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, -8(%rdi)
	paddw	%xmm0, %xmm2
	pshuflw	$232, %xmm2, %xmm1      # xmm1 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, (%rdi)
	addq	$32, %rdi
	addq	$-16, %rbp
	jne	.LBB9_49
.LBB9_50:                               #   in Loop: Header=BB9_37 Depth=2
	movl	%esi, %ebp
.LBB9_51:                               # %middle.block991
                                        #   in Loop: Header=BB9_37 Depth=2
	cmpq	%rax, %r8
	je	.LBB9_54
# BB#52:                                # %for.body.312.preheader
                                        #   in Loop: Header=BB9_37 Depth=2
	leaq	(%r9,%rax,2), %rdx
	.align	16, 0x90
.LBB9_53:                               # %for.body.312
                                        #   Parent Loop BB9_1 Depth=1
                                        #     Parent Loop BB9_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	(%rdx), %esi
	addl	%ebx, %esi
	movw	%si, (%rdx)
	incl	%ebp
	addq	$2, %rdx
	cmpl	%ecx, %ebp
	jl	.LBB9_53
.LBB9_54:                               # %for.end
                                        #   in Loop: Header=BB9_37 Depth=2
	movq	200(%rsp), %rcx         # 8-byte Reload
	addl	4(%rcx), %r13d
	movl	%r13d, 4(%rcx)
	movl	8(%rcx), %eax
	addl	240(%rsp), %eax
	movl	%eax, 8(%rcx)
	testb	$2, 29(%r12,%r14,4)
	je	.LBB9_56
# BB#55:                                # %if.then.329
                                        #   in Loop: Header=BB9_37 Depth=2
	movl	244(%rsp), %ecx
	movq	200(%rsp), %rdx         # 8-byte Reload
	movl	%ecx, 12(%rdx)
	movl	252(%rsp), %ecx
	movl	%ecx, 20(%rdx)
.LBB9_56:                               # %for.inc.345
                                        #   in Loop: Header=BB9_37 Depth=2
	movq	184(%rsp), %rdx         # 8-byte Reload
	incq	%rdx
	cmpq	40(%rsp), %rdx          # 8-byte Folded Reload
	movl	%r13d, %ebp
	movl	208(%rsp), %r14d        # 4-byte Reload
	movl	%r14d, %esi
	movl	224(%rsp), %r15d        # 4-byte Reload
	jb	.LBB9_37
.LBB9_57:                               # %for.end.347
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	%r14d, 208(%rsp)        # 4-byte Spill
	movl	156(%rsp), %ebp         # 4-byte Reload
	testl	%ebp, %ebp
	je	.LBB9_58
# BB#59:                                # %for.end.347
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$0, 160(%rsp)           # 4-byte Folded Spill
	movq	24(%rsp), %rbx          # 8-byte Reload
	testl	%ebx, %ebx
	movq	120(%rsp), %r14         # 8-byte Reload
	je	.LBB9_60
# BB#61:                                # %land.lhs.true.351
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	144(%r14), %rax
	testb	$1, 552(%rax)
	movl	76(%rsp), %esi          # 4-byte Reload
	movq	104(%rsp), %r13         # 8-byte Reload
	jne	.LBB9_290
# BB#62:                                # %if.then.355
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%r13, %rdi
	leaq	280(%rsp), %rdx
	leaq	276(%rsp), %rcx
	callq	*40(%r13)
	movq	%r13, %rdi
	callq	*32(%r13)
	testl	%eax, %eax
	jne	.LBB9_63
# BB#64:                                # %if.end.363
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	16(%rsp), %rcx          # 8-byte Reload
	leal	(%rcx,%rbx), %eax
	cmpl	276(%rsp), %eax
	jbe	.LBB9_65
.LBB9_63:                               #   in Loop: Header=BB9_1 Depth=1
	movl	$7, 208(%rsp)           # 4-byte Folded Spill
	movl	76(%rsp), %esi          # 4-byte Reload
	jmp	.LBB9_290
.LBB9_167:                              #   in Loop: Header=BB9_1 Depth=1
	movl	$0, 160(%rsp)           # 4-byte Folded Spill
.LBB9_169:                              #   in Loop: Header=BB9_1 Depth=1
	movl	$7, 208(%rsp)           # 4-byte Folded Spill
	movl	76(%rsp), %esi          # 4-byte Reload
	movq	120(%rsp), %r14         # 8-byte Reload
	jmp	.LBB9_290
.LBB9_39:                               # %cleanup.337.thread567
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$0, 160(%rsp)           # 4-byte Folded Spill
	movl	%eax, 208(%rsp)         # 4-byte Spill
.LBB9_172:                              # %ex
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	76(%rsp), %esi          # 4-byte Reload
	movq	104(%rsp), %r13         # 8-byte Reload
.LBB9_173:                              # %ex
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	120(%rsp), %r14         # 8-byte Reload
	movl	156(%rsp), %ebp         # 4-byte Reload
	jmp	.LBB9_290
.LBB9_58:                               #   in Loop: Header=BB9_1 Depth=1
	movl	$0, 160(%rsp)           # 4-byte Folded Spill
	movl	76(%rsp), %esi          # 4-byte Reload
	movq	104(%rsp), %r13         # 8-byte Reload
	movq	120(%rsp), %r14         # 8-byte Reload
	jmp	.LBB9_290
.LBB9_174:                              # %if.end.574
                                        #   in Loop: Header=BB9_1 Depth=1
	movw	%r12w, 192(%rsp)        # 2-byte Spill
	movl	%ebp, %edx
	addq	280(%rsp), %rdx
	movl	$3, %esi
	movq	112(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movl	%r14d, %ecx
	callq	Set_CodeRange
	movl	%eax, 184(%rsp)         # 4-byte Spill
	movq	840(%rbx), %rbp
	movq	200(%rsp), %rax         # 8-byte Reload
	movl	8(%rax), %eax
	leaq	(%rbp,%rax), %r12
	testq	%rax, %rax
	je	.LBB9_178
	.align	16, 0x90
.LBB9_175:                              # %while.body
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_183 Depth 3
	movq	104(%rsp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	callq	ttfReader__Byte
	movb	%al, %bl
	movb	%bl, (%rbp)
	incq	%rbp
	testb	$8, %bl
	je	.LBB9_176
# BB#180:                               # %if.then.589
                                        #   in Loop: Header=BB9_175 Depth=2
	movq	%r14, %rdi
	callq	ttfReader__Byte
	cmpq	%r12, %rbp
	jae	.LBB9_176
# BB#181:                               # %if.then.589
                                        #   in Loop: Header=BB9_175 Depth=2
	testb	%al, %al
	je	.LBB9_176
# BB#182:                               # %for.body.598.lr.ph
                                        #   in Loop: Header=BB9_175 Depth=2
	movzbl	%al, %eax
	addl	$-2, %eax
	.align	16, 0x90
.LBB9_183:                              # %for.body.598
                                        #   Parent Loop BB9_1 Depth=1
                                        #     Parent Loop BB9_175 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	%bl, (%rbp)
	incq	%rbp
	cmpq	%r12, %rbp
	jae	.LBB9_176
# BB#184:                               # %for.body.598
                                        #   in Loop: Header=BB9_183 Depth=3
	testw	%ax, %ax
	leal	-1(%rax), %eax
	jns	.LBB9_183
	.align	16, 0x90
.LBB9_176:                              # %while.cond.backedge
                                        #   in Loop: Header=BB9_175 Depth=2
	cmpq	%r12, %rbp
	jb	.LBB9_175
# BB#177:                               # %while.cond.while.end_crit_edge
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	840(%rax), %rbp
.LBB9_178:                              # %while.end
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpq	%r12, %rbp
	jae	.LBB9_179
# BB#185:                               # %while.body.621.lr.ph
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%r15, 176(%rsp)         # 8-byte Spill
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	808(%rax), %r14
	movq	128(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 8(%rax)
	je	.LBB9_186
# BB#187:                               # %select.mid
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%r13d, %r13d
	jmp	.LBB9_188
.LBB9_179:                              #   in Loop: Header=BB9_1 Depth=1
	movq	%r15, 176(%rsp)         # 8-byte Spill
	jmp	.LBB9_196
.LBB9_65:                               # %if.end.368
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	%ecx, %edx
	addq	280(%rsp), %rdx
	movl	$3, %esi
	movq	112(%rsp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movl	%ebx, %ecx
	callq	Set_CodeRange
	testl	%eax, %eax
	je	.LBB9_67
# BB#66:                                #   in Loop: Header=BB9_1 Depth=1
	movl	$0, 160(%rsp)           # 4-byte Folded Spill
	movl	208(%rsp), %ebx         # 4-byte Reload
	jmp	.LBB9_158
.LBB9_186:                              #   in Loop: Header=BB9_1 Depth=1
	movw	342(%rsp), %r13w
	subw	208(%rsp), %r13w        # 2-byte Folded Reload
	.align	16, 0x90
.LBB9_188:                              # %while.body.621
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbp), %eax
	incq	%rbp
	movl	%eax, %ebx
	andl	$16, %ebx
	testb	$2, %al
	jne	.LBB9_189
# BB#192:                               # %if.else.643
                                        #   in Loop: Header=BB9_188 Depth=2
	testl	%ebx, %ebx
	jne	.LBB9_194
# BB#193:                               # %if.then.647
                                        #   in Loop: Header=BB9_188 Depth=2
	movq	104(%rsp), %rdi         # 8-byte Reload
	callq	ttfReader__Short
	addl	%eax, %r13d
	jmp	.LBB9_194
	.align	16, 0x90
.LBB9_189:                              # %if.then.626
                                        #   in Loop: Header=BB9_188 Depth=2
	movq	104(%rsp), %rdi         # 8-byte Reload
	callq	ttfReader__Byte
	movzbl	%al, %eax
	movswl	%r13w, %r13d
	testl	%ebx, %ebx
	je	.LBB9_191
# BB#190:                               # %if.then.630
                                        #   in Loop: Header=BB9_188 Depth=2
	addl	%r13d, %eax
	movw	%ax, %r13w
	jmp	.LBB9_194
.LBB9_191:                              # %if.else.636
                                        #   in Loop: Header=BB9_188 Depth=2
	subl	%eax, %r13d
.LBB9_194:                              # %if.end.654
                                        #   in Loop: Header=BB9_188 Depth=2
	movswl	%r13w, %esi
	movq	88(%rsp), %rdi          # 8-byte Reload
	callq	Scale_X
	movl	%eax, (%r14)
	addq	$4, %r14
	cmpq	%rbp, %r12
	jne	.LBB9_188
# BB#195:                               # %while.cond.618.while.end.659_crit_edge
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	840(%rax), %rbp
.LBB9_196:                              # %while.end.659
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpq	%r12, %rbp
	jae	.LBB9_205
# BB#197:                               # %while.body.667.lr.ph
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	816(%rax), %r13
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB9_198:                              # %while.body.667
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbp), %r14d
	movl	%r14d, %ebx
	andl	$32, %ebx
	testb	$4, %r14b
	jne	.LBB9_199
# BB#202:                               # %if.else.688
                                        #   in Loop: Header=BB9_198 Depth=2
	testl	%ebx, %ebx
	jne	.LBB9_204
# BB#203:                               # %if.then.692
                                        #   in Loop: Header=BB9_198 Depth=2
	movq	104(%rsp), %rdi         # 8-byte Reload
	callq	ttfReader__Short
	addl	%eax, %r15d
	jmp	.LBB9_204
	.align	16, 0x90
.LBB9_199:                              # %if.then.671
                                        #   in Loop: Header=BB9_198 Depth=2
	movq	104(%rsp), %rdi         # 8-byte Reload
	callq	ttfReader__Byte
	movzbl	%al, %eax
	movswl	%r15w, %r15d
	testl	%ebx, %ebx
	je	.LBB9_201
# BB#200:                               # %if.then.675
                                        #   in Loop: Header=BB9_198 Depth=2
	addl	%r15d, %eax
	movw	%ax, %r15w
	jmp	.LBB9_204
.LBB9_201:                              # %if.else.681
                                        #   in Loop: Header=BB9_198 Depth=2
	subl	%eax, %r15d
.LBB9_204:                              # %if.end.699
                                        #   in Loop: Header=BB9_198 Depth=2
	movswl	%r15w, %esi
	movq	88(%rsp), %rdi          # 8-byte Reload
	callq	Scale_Y
	movl	%eax, (%r13)
	addq	$4, %r13
	andb	$1, %r14b
	movb	%r14b, (%rbp)
	incq	%rbp
	cmpq	%rbp, %r12
	jne	.LBB9_198
.LBB9_205:                              # %while.end.708
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$0, 208(%rsp)           # 4-byte Folded Spill
	xorl	%esi, %esi
	movq	96(%rsp), %rdi          # 8-byte Reload
	movq	200(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	movq	64(%rsp), %rcx          # 8-byte Reload
	callq	MoveGlyphOutline
	movl	4(%rbx), %eax
	movq	128(%rsp), %rcx         # 8-byte Reload
	addl	%eax, 16(%rcx)
	movl	160(%rsp), %eax         # 4-byte Reload
	addl	%eax, 12(%rcx)
	movl	156(%rsp), %ebp         # 4-byte Reload
	testl	%ebp, %ebp
	je	.LBB9_206
# BB#207:                               # %land.lhs.true.715
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	104(%rsp), %r13         # 8-byte Reload
	movq	%r13, %rdi
	callq	*32(%r13)
	cmpw	$0, 192(%rsp)           # 2-byte Folded Reload
	movl	76(%rsp), %ebx          # 4-byte Reload
	movq	120(%rsp), %r14         # 8-byte Reload
	movl	%ebx, %r15d
	je	.LBB9_289
# BB#208:                               # %land.lhs.true.715
                                        #   in Loop: Header=BB9_1 Depth=1
	orl	184(%rsp), %eax         # 4-byte Folded Reload
	jne	.LBB9_289
# BB#209:                               # %land.lhs.true.723
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	144(%r14), %rax
	testb	$1, 552(%rax)
	jne	.LBB9_289
# BB#210:                               # %if.then.730
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%r14, %r12
	movq	176(%rsp), %r14         # 8-byte Reload
	movslq	%r14d, %r15
	movq	112(%rsp), %rbx         # 8-byte Reload
	movl	$0, 1096(%rbx)
	movq	88(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	callq	Scale_X
	movq	808(%rbx), %rcx
	movl	%eax, 4(%rcx,%r15,4)
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	Scale_Y
	movq	816(%rbx), %rcx
	movl	%eax, 4(%rcx,%r15,4)
	movq	%rbp, %rdi
	movl	36(%rsp), %esi          # 4-byte Reload
	callq	Scale_X
	movq	808(%rbx), %rcx
	movl	%eax, 8(%rcx,%r15,4)
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	Scale_Y
	movq	816(%rbx), %rcx
	movl	%eax, 8(%rcx,%r15,4)
	movq	840(%rbx), %rax
	movb	$0, 1(%rax,%r15)
	movq	840(%rbx), %rax
	movb	$0, 2(%rax,%r15)
	leaq	3(%r15), %r9
	movl	%r9d, 800(%rbx)
	movq	200(%rsp), %rax         # 8-byte Reload
	movl	4(%rax), %ecx
	movl	%ecx, 804(%rbx)
	movq	808(%rbx), %rcx
	movq	%rbx, %rax
	movl	4(%rcx,%r15,4), %esi
	leal	32(%rsi), %edx
	andl	$-64, %edx
	subl	%esi, %edx
	je	.LBB9_223
# BB#211:                               # %for.cond.786.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	$-3, %r14d
	jle	.LBB9_212
# BB#213:                               # %for.body.790.lr.ph
                                        #   in Loop: Header=BB9_1 Depth=1
	testq	%r9, %r9
	movl	$1, %esi
	cmovgq	%r9, %rsi
	testq	%rsi, %rsi
	movl	$0, %edi
	je	.LBB9_222
# BB#214:                               # %overflow.checked793
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%rsi, %r8
	andq	$-8, %r8
	movl	$0, %edi
	je	.LBB9_221
# BB#215:                               # %vector.ph799
                                        #   in Loop: Header=BB9_1 Depth=1
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	testq	%r9, %r9
	movl	$1, %edi
	cmovgq	%r9, %rdi
	addq	$-8, %rdi
	movq	%rdi, %rbp
	shrq	$3, %rbp
	btq	$3, %rdi
	movl	$0, %ebx
	jb	.LBB9_217
# BB#216:                               # %vector.body789.prol
                                        #   in Loop: Header=BB9_1 Depth=1
	movdqu	(%rcx), %xmm1
	movdqu	16(%rcx), %xmm2
	paddd	%xmm0, %xmm1
	paddd	%xmm0, %xmm2
	movdqu	%xmm1, (%rcx)
	movdqu	%xmm2, 16(%rcx)
	movl	$8, %ebx
.LBB9_217:                              # %vector.ph799.split
                                        #   in Loop: Header=BB9_1 Depth=1
	testq	%rbp, %rbp
	je	.LBB9_220
# BB#218:                               # %vector.ph799.split.split
                                        #   in Loop: Header=BB9_1 Depth=1
	testq	%r9, %r9
	movl	$1, %ebp
	cmovgq	%r9, %rbp
	andq	$-8, %rbp
	subq	%rbx, %rbp
	leaq	48(%rcx,%rbx,4), %rbx
.LBB9_219:                              # %vector.body789
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	-48(%rbx), %xmm1
	movdqu	-32(%rbx), %xmm2
	paddd	%xmm0, %xmm1
	paddd	%xmm0, %xmm2
	movdqu	%xmm1, -48(%rbx)
	movdqu	%xmm2, -32(%rbx)
	movdqu	-16(%rbx), %xmm1
	movdqu	(%rbx), %xmm2
	paddd	%xmm0, %xmm1
	paddd	%xmm0, %xmm2
	movdqu	%xmm1, -16(%rbx)
	movdqu	%xmm2, (%rbx)
	addq	$64, %rbx
	addq	$-16, %rbp
	jne	.LBB9_219
.LBB9_220:                              #   in Loop: Header=BB9_1 Depth=1
	movq	%r8, %rdi
.LBB9_221:                              # %middle.block790
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpq	%rdi, %rsi
	je	.LBB9_223
.LBB9_222:                              # %for.body.790
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	%edx, (%rcx,%rdi,4)
	incq	%rdi
	cmpq	%r9, %rdi
	jl	.LBB9_222
.LBB9_223:                              # %if.end.798
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	$-3, %r14d
	jle	.LBB9_212
# BB#224:                               # %for.body.lr.ph.i.443
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%rax, %rbp
	movq	824(%rbp), %rdx
	leal	2(%r15), %esi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rsi
	incq	%rsi
	leal	3(%r15), %edi
	andl	$7, %edi
	movq	%rsi, %r8
	subq	%rdi, %r8
	movl	$0, %edi
	je	.LBB9_230
# BB#225:                               # %vector.memcheck772
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	2(%r15), %edi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rdi
	movq	%rbp, %rax
	leaq	(%rcx,%rdi,4), %rbp
	cmpq	%rbp, %rdx
	movq	%rax, %rbp
	ja	.LBB9_227
# BB#226:                               # %vector.memcheck772
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	(%rdx,%rdi,4), %rdi
	cmpq	%rdi, %rcx
	movl	$0, %edi
	jbe	.LBB9_230
.LBB9_227:                              # %vector.body753.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%rbp, %r10
	leaq	16(%rcx), %rdi
	leaq	16(%rdx), %rbx
	leal	2(%r14), %ebp
	incq	%rbp
	movb	%r15b, %al
	addb	$3, %al
	movzbl	%al, %eax
	andl	$7, %eax
	subq	%rax, %rbp
.LBB9_228:                              # %vector.body753
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	-16(%rdi), %xmm0
	movdqu	(%rdi), %xmm1
	movdqu	%xmm0, -16(%rbx)
	movdqu	%xmm1, (%rbx)
	addq	$32, %rdi
	addq	$32, %rbx
	addq	$-8, %rbp
	jne	.LBB9_228
# BB#229:                               #   in Loop: Header=BB9_1 Depth=1
	movq	%r8, %rdi
	movq	%r10, %rbp
.LBB9_230:                              # %middle.block754
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpq	%rdi, %rsi
	je	.LBB9_237
# BB#231:                               # %for.body.i.454.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%rbp, %r8
	leal	1(%rdi), %eax
	movl	%r14d, %ebx
	subl	%eax, %ebx
	leal	3(%r14), %esi
	movl	%esi, %ebp
	subl	%eax, %ebp
	testb	$3, %bl
	je	.LBB9_234
# BB#232:                               # %for.body.i.454.prol.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	1(%rdi), %eax
	movb	%r14b, %bl
	subb	%al, %bl
	movzbl	%bl, %ebx
	andl	$3, %ebx
	negl	%ebx
.LBB9_233:                              # %for.body.i.454.prol
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx,%rdi,4), %eax
	movl	%eax, (%rdx,%rdi,4)
	incq	%rdi
	incl	%ebx
	jne	.LBB9_233
.LBB9_234:                              # %for.body.i.454.preheader.split
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	$3, %ebp
	movq	%r8, %rbp
	jb	.LBB9_237
# BB#235:                               # %for.body.i.454.preheader.split.split
                                        #   in Loop: Header=BB9_1 Depth=1
	subl	%edi, %esi
	leaq	12(%rdx,%rdi,4), %rdx
	leaq	12(%rcx,%rdi,4), %rcx
.LBB9_236:                              # %for.body.i.454
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rcx), %eax
	movl	%eax, -12(%rdx)
	movl	-8(%rcx), %eax
	movl	%eax, -8(%rdx)
	movl	-4(%rcx), %eax
	movl	%eax, -4(%rdx)
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	addq	$16, %rdx
	addq	$16, %rcx
	addl	$-4, %esi
	jne	.LBB9_236
.LBB9_237:                              # %for.body.5.lr.ph.i.447
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	816(%rbp), %rcx
	movq	832(%rbp), %rdx
	leal	2(%r15), %esi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rsi
	incq	%rsi
	leal	3(%r15), %eax
	andl	$7, %eax
	movq	%rsi, %r8
	subq	%rax, %r8
	movl	$0, %edi
	je	.LBB9_243
# BB#238:                               # %vector.memcheck736
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	2(%r15), %edi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rdi
	leaq	(%rcx,%rdi,4), %rax
	cmpq	%rax, %rdx
	ja	.LBB9_240
# BB#239:                               # %vector.memcheck736
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	(%rdx,%rdi,4), %rax
	cmpq	%rax, %rcx
	movl	$0, %edi
	jbe	.LBB9_243
.LBB9_240:                              # %vector.body717.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%rbp, %r10
	leaq	16(%rcx), %rdi
	leaq	16(%rdx), %rbx
	leal	2(%r15), %ebp
	incq	%rbp
	movb	%r15b, %al
	addb	$3, %al
	movzbl	%al, %eax
	andl	$7, %eax
	subq	%rax, %rbp
.LBB9_241:                              # %vector.body717
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	-16(%rdi), %xmm0
	movdqu	(%rdi), %xmm1
	movdqu	%xmm0, -16(%rbx)
	movdqu	%xmm1, (%rbx)
	addq	$32, %rdi
	addq	$32, %rbx
	addq	$-8, %rbp
	jne	.LBB9_241
# BB#242:                               #   in Loop: Header=BB9_1 Depth=1
	movq	%r8, %rdi
	movq	%r10, %rbp
.LBB9_243:                              # %middle.block718
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpq	%rdi, %rsi
	je	.LBB9_250
# BB#244:                               # %for.body.5.i.461.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%rbp, %r8
	leal	1(%rdi), %eax
	movl	%r14d, %ebx
	subl	%eax, %ebx
	leal	3(%r14), %esi
	movl	%esi, %ebp
	subl	%eax, %ebp
	testb	$3, %bl
	je	.LBB9_247
# BB#245:                               # %for.body.5.i.461.prol.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	1(%rdi), %eax
	movb	%r14b, %bl
	subb	%al, %bl
	movzbl	%bl, %ebx
	andl	$3, %ebx
	negl	%ebx
.LBB9_246:                              # %for.body.5.i.461.prol
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx,%rdi,4), %eax
	movl	%eax, (%rdx,%rdi,4)
	incq	%rdi
	incl	%ebx
	jne	.LBB9_246
.LBB9_247:                              # %for.body.5.i.461.preheader.split
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	$3, %ebp
	movq	%r8, %rbp
	jb	.LBB9_250
# BB#248:                               # %for.body.5.i.461.preheader.split.split
                                        #   in Loop: Header=BB9_1 Depth=1
	subl	%edi, %esi
	leaq	12(%rdx,%rdi,4), %rdx
	leaq	12(%rcx,%rdi,4), %rcx
.LBB9_249:                              # %for.body.5.i.461
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rcx), %eax
	movl	%eax, -12(%rdx)
	movl	-8(%rcx), %eax
	movl	%eax, -8(%rdx)
	movl	-4(%rcx), %eax
	movl	%eax, -4(%rdx)
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	addq	$16, %rdx
	addq	$16, %rcx
	addl	$-4, %esi
	jne	.LBB9_249
.LBB9_250:                              # %org_to_cur.exit
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$0, 1096(%rbp)
	movq	%rbp, %rdx
	cmpl	$-2, %r15d
	jl	.LBB9_251
# BB#252:                               # %for.body.805.lr.ph
                                        #   in Loop: Header=BB9_1 Depth=1
	movslq	%r9d, %rax
	xorl	%ecx, %ecx
	movq	%rdx, %rsi
.LBB9_253:                              # %for.body.805
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	840(%rsi), %rdx
	andb	$1, (%rdx,%rcx)
	incq	%rcx
	movb	$1, %bpl
	cmpq	%rax, %rcx
	jl	.LBB9_253
	jmp	.LBB9_254
.LBB9_206:                              #   in Loop: Header=BB9_1 Depth=1
	movl	76(%rsp), %r15d         # 4-byte Reload
	movq	104(%rsp), %r13         # 8-byte Reload
	movq	120(%rsp), %r14         # 8-byte Reload
	jmp	.LBB9_289
.LBB9_212:                              # %if.end.798.thread
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%rax, %rsi
	movl	$0, 1096(%rsi)
	xorl	%ebp, %ebp
	jmp	.LBB9_254
.LBB9_67:                               # %if.then.373
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	200(%rsp), %rax         # 8-byte Reload
	movslq	8(%rax), %rbp
	movl	%ebp, %r13d
	leal	2(%rbp), %r14d
	movdqa	288(%rsp), %xmm0
	movdqa	304(%rsp), %xmm1
	movdqa	320(%rsp), %xmm2
	movdqu	%xmm2, 840(%r12)
	movdqu	%xmm1, 824(%r12)
	movdqu	%xmm0, 808(%r12)
	movl	%r14d, 800(%r12)
	movl	4(%rax), %eax
	movl	%eax, 804(%r12)
	movq	88(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	callq	Scale_X
	movq	808(%r12), %rcx
	movl	%eax, (%rcx,%rbp,4)
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	Scale_Y
	movq	816(%r12), %rcx
	movl	%eax, (%rcx,%rbp,4)
	movq	%rbx, %rdi
	movl	36(%rsp), %esi          # 4-byte Reload
	callq	Scale_X
	leal	1(%rbp), %ecx
	movslq	%ecx, %r15
	movq	808(%r12), %rcx
	movl	%eax, (%rcx,%r15,4)
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	Scale_Y
	movl	%r14d, %r10d
	movq	816(%r12), %rcx
	movl	%eax, (%rcx,%r15,4)
	movq	840(%r12), %rax
	movb	$0, (%rax,%r15)
	movq	840(%r12), %rax
	movb	$0, (%rax,%rbp)
	movq	808(%r12), %rcx
	movq	%r12, %r9
	movq	%r13, %r12
	movl	(%rcx,%rbp,4), %edx
	leal	32(%rdx), %eax
	andl	$-64, %eax
	subl	%edx, %eax
	movabsq	$8589934584, %rbx       # imm = 0x1FFFFFFF8
	je	.LBB9_79
# BB#68:                                # %if.then.373
                                        #   in Loop: Header=BB9_1 Depth=1
	testl	%r10d, %r10d
	jle	.LBB9_79
# BB#69:                                # %for.body.431.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	1(%r12), %edx
	incq	%rdx
	movq	%rdx, %r8
	andq	%rbx, %r8
	movl	$0, %edi
	je	.LBB9_76
# BB#70:                                # %vector.ph971
                                        #   in Loop: Header=BB9_1 Depth=1
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	leal	1(%r12), %edi
	incq	%rdi
	andq	%rbx, %rdi
	addq	$-8, %rdi
	movq	%rdi, %rsi
	shrq	$3, %rsi
	btq	$3, %rdi
	movl	$0, %ebp
	jb	.LBB9_72
# BB#71:                                # %vector.body961.prol
                                        #   in Loop: Header=BB9_1 Depth=1
	movdqu	(%rcx), %xmm1
	movdqu	16(%rcx), %xmm2
	paddd	%xmm0, %xmm1
	paddd	%xmm0, %xmm2
	movdqu	%xmm1, (%rcx)
	movdqu	%xmm2, 16(%rcx)
	movl	$8, %ebp
.LBB9_72:                               # %vector.ph971.split
                                        #   in Loop: Header=BB9_1 Depth=1
	testq	%rsi, %rsi
	je	.LBB9_75
# BB#73:                                # %vector.ph971.split.split
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	1(%r12), %edi
	incq	%rdi
	andq	%rbx, %rdi
	subq	%rbp, %rdi
	leaq	48(%rcx,%rbp,4), %rsi
.LBB9_74:                               # %vector.body961
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	-48(%rsi), %xmm1
	movdqu	-32(%rsi), %xmm2
	paddd	%xmm0, %xmm1
	paddd	%xmm0, %xmm2
	movdqu	%xmm1, -48(%rsi)
	movdqu	%xmm2, -32(%rsi)
	movdqu	-16(%rsi), %xmm1
	movdqu	(%rsi), %xmm2
	paddd	%xmm0, %xmm1
	paddd	%xmm0, %xmm2
	movdqu	%xmm1, -16(%rsi)
	movdqu	%xmm2, (%rsi)
	addq	$64, %rsi
	addq	$-16, %rdi
	jne	.LBB9_74
.LBB9_75:                               #   in Loop: Header=BB9_1 Depth=1
	movq	%r8, %rdi
.LBB9_76:                               # %middle.block962
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpq	%rdi, %rdx
	je	.LBB9_79
# BB#77:                                # %for.body.431.preheader1026
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	(%rcx,%rdi,4), %rcx
	leal	2(%r12), %edx
	subl	%edi, %edx
.LBB9_78:                               # %for.body.431
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	%eax, (%rcx)
	addq	$4, %rcx
	decl	%edx
	jne	.LBB9_78
.LBB9_79:                               # %if.end.439
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%r9, %rbp
	movq	824(%rbp), %rax
	movl	(%rax,%r15,4), %ecx
	addl	$32, %ecx
	andl	$-64, %ecx
	movl	%ecx, (%rax,%r15,4)
	testl	%r10d, %r10d
	jle	.LBB9_119
# BB#80:                                # %for.body.453.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	2(%r12), %eax
	leal	1(%r12), %ecx
	testb	$3, %al
	movl	$0, %eax
	je	.LBB9_83
# BB#81:                                # %for.body.453.prol.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	2(%r12), %edx
	andl	$3, %edx
	xorl	%eax, %eax
.LBB9_82:                               # %for.body.453.prol
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	840(%rbp), %rsi
	andb	$1, (%rsi,%rax)
	incq	%rax
	cmpl	%eax, %edx
	jne	.LBB9_82
.LBB9_83:                               # %for.body.453.preheader.split
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	$3, %ecx
	jb	.LBB9_86
# BB#84:                                # %for.body.453.preheader.split.split
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	2(%r12), %rcx
.LBB9_85:                               # %for.body.453
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	840(%rbp), %rdx
	andb	$1, (%rdx,%rax)
	movq	840(%rbp), %rdx
	andb	$1, 1(%rdx,%rax)
	movq	840(%rbp), %rdx
	andb	$1, 2(%rdx,%rax)
	movq	840(%rbp), %rdx
	andb	$1, 3(%rdx,%rax)
	addq	$4, %rax
	cmpl	%eax, %ecx
	jne	.LBB9_85
.LBB9_86:                               # %for.end.465
                                        #   in Loop: Header=BB9_1 Depth=1
	testl	%r10d, %r10d
	jle	.LBB9_119
# BB#87:                                # %for.body.lr.ph.i.465
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	808(%rbp), %rax
	movq	824(%rbp), %rcx
	leal	1(%r12), %edx
	incq	%rdx
	movq	%rdx, %r8
	andq	%rbx, %r8
	movl	$0, %edi
	je	.LBB9_96
# BB#88:                                # %vector.memcheck944
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	1(%r12), %edi
	movq	%rbp, %rsi
	leaq	(%rax,%rdi,4), %rbp
	cmpq	%rbp, %rcx
	movq	%rsi, %rbp
	ja	.LBB9_90
# BB#89:                                # %vector.memcheck944
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	(%rcx,%rdi,4), %rdi
	cmpq	%rdi, %rax
	movl	$0, %edi
	jbe	.LBB9_96
.LBB9_90:                               # %vector.body925.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%rbp, %r9
	leal	1(%r12), %edi
	incq	%rdi
	andq	%rbx, %rdi
	addq	$-8, %rdi
	movq	%rdi, %rbp
	shrq	$3, %rbp
	btq	$3, %rdi
	movl	$0, %esi
	jb	.LBB9_92
# BB#91:                                # %vector.body925.prol
                                        #   in Loop: Header=BB9_1 Depth=1
	movdqu	(%rax), %xmm0
	movdqu	16(%rax), %xmm1
	movdqu	%xmm0, (%rcx)
	movdqu	%xmm1, 16(%rcx)
	movl	$8, %esi
.LBB9_92:                               # %vector.body925.preheader.split
                                        #   in Loop: Header=BB9_1 Depth=1
	testq	%rbp, %rbp
	je	.LBB9_95
# BB#93:                                # %vector.body925.preheader.split.split
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	1(%r12), %edi
	incq	%rdi
	andq	%rbx, %rdi
	subq	%rsi, %rdi
	leaq	48(%rax,%rsi,4), %rbp
	leaq	48(%rcx,%rsi,4), %rsi
.LBB9_94:                               # %vector.body925
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-48(%rbp), %xmm0
	movups	-32(%rbp), %xmm1
	movups	%xmm0, -48(%rsi)
	movups	%xmm1, -32(%rsi)
	movdqu	-16(%rbp), %xmm0
	movdqu	(%rbp), %xmm1
	movdqu	%xmm0, -16(%rsi)
	movdqu	%xmm1, (%rsi)
	addq	$64, %rbp
	addq	$64, %rsi
	addq	$-16, %rdi
	jne	.LBB9_94
.LBB9_95:                               #   in Loop: Header=BB9_1 Depth=1
	movq	%r8, %rdi
	movq	%r9, %rbp
.LBB9_96:                               # %middle.block926
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpq	%rdi, %rdx
	je	.LBB9_103
# BB#97:                                # %for.body.i.476.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%rbp, %r8
	leal	3(%r12), %esi
	movl	%edi, %ebp
	orl	$1, %ebp
	subl	%ebp, %esi
	leal	2(%r12), %edx
	subl	%ebp, %edx
	testb	$3, %sil
	je	.LBB9_100
# BB#98:                                # %for.body.i.476.prol.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	3(%r12), %esi
	leal	1(%rdi), %ebp
	subl	%ebp, %esi
	andl	$3, %esi
	negl	%esi
.LBB9_99:                               # %for.body.i.476.prol
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax,%rdi,4), %ebp
	movl	%ebp, (%rcx,%rdi,4)
	incq	%rdi
	incl	%esi
	jne	.LBB9_99
.LBB9_100:                              # %for.body.i.476.preheader.split
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	$3, %edx
	movq	%r8, %rbp
	jb	.LBB9_103
# BB#101:                               # %for.body.i.476.preheader.split.split
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	2(%r12), %edx
	subl	%edi, %edx
	leaq	12(%rcx,%rdi,4), %rcx
	leaq	12(%rax,%rdi,4), %rax
.LBB9_102:                              # %for.body.i.476
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rax), %esi
	movl	%esi, -12(%rcx)
	movl	-8(%rax), %esi
	movl	%esi, -8(%rcx)
	movl	-4(%rax), %esi
	movl	%esi, -4(%rcx)
	movl	(%rax), %esi
	movl	%esi, (%rcx)
	addq	$16, %rcx
	addq	$16, %rax
	addl	$-4, %edx
	jne	.LBB9_102
.LBB9_103:                              # %for.body.5.lr.ph.i.469
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	816(%rbp), %rax
	movq	832(%rbp), %rcx
	leal	1(%r12), %edx
	incq	%rdx
	movq	%rdx, %r8
	andq	%rbx, %r8
	movl	$0, %edi
	je	.LBB9_112
# BB#104:                               # %vector.memcheck908
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	1(%r12), %edi
	movq	%rbp, %rsi
	leaq	(%rax,%rdi,4), %rbp
	cmpq	%rbp, %rcx
	movq	%rsi, %rbp
	ja	.LBB9_106
# BB#105:                               # %vector.memcheck908
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	(%rcx,%rdi,4), %rdi
	cmpq	%rdi, %rax
	movl	$0, %edi
	jbe	.LBB9_112
.LBB9_106:                              # %vector.body889.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%rbp, %r9
	leal	1(%r12), %edi
	incq	%rdi
	andq	%rbx, %rdi
	addq	$-8, %rdi
	movq	%rdi, %rbp
	shrq	$3, %rbp
	btq	$3, %rdi
	movl	$0, %esi
	jb	.LBB9_108
# BB#107:                               # %vector.body889.prol
                                        #   in Loop: Header=BB9_1 Depth=1
	movdqu	(%rax), %xmm0
	movdqu	16(%rax), %xmm1
	movdqu	%xmm0, (%rcx)
	movdqu	%xmm1, 16(%rcx)
	movl	$8, %esi
.LBB9_108:                              # %vector.body889.preheader.split
                                        #   in Loop: Header=BB9_1 Depth=1
	testq	%rbp, %rbp
	je	.LBB9_111
# BB#109:                               # %vector.body889.preheader.split.split
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	1(%r12), %edi
	incq	%rdi
	andq	%rbx, %rdi
	subq	%rsi, %rdi
	leaq	48(%rax,%rsi,4), %rbp
	leaq	48(%rcx,%rsi,4), %rsi
.LBB9_110:                              # %vector.body889
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-48(%rbp), %xmm0
	movups	-32(%rbp), %xmm1
	movups	%xmm0, -48(%rsi)
	movups	%xmm1, -32(%rsi)
	movdqu	-16(%rbp), %xmm0
	movdqu	(%rbp), %xmm1
	movdqu	%xmm0, -16(%rsi)
	movdqu	%xmm1, (%rsi)
	addq	$64, %rbp
	addq	$64, %rsi
	addq	$-16, %rdi
	jne	.LBB9_110
.LBB9_111:                              #   in Loop: Header=BB9_1 Depth=1
	movq	%r8, %rdi
	movq	%r9, %rbp
.LBB9_112:                              # %middle.block890
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpq	%rdi, %rdx
	je	.LBB9_119
# BB#113:                               # %for.body.5.i.483.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%rbp, %rbx
	leal	3(%r12), %esi
	movl	%edi, %ebp
	orl	$1, %ebp
	subl	%ebp, %esi
	leal	2(%r12), %edx
	subl	%ebp, %edx
	testb	$3, %sil
	je	.LBB9_116
# BB#114:                               # %for.body.5.i.483.prol.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	3(%r12), %esi
	leal	1(%rdi), %ebp
	subl	%ebp, %esi
	andl	$3, %esi
	negl	%esi
.LBB9_115:                              # %for.body.5.i.483.prol
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax,%rdi,4), %ebp
	movl	%ebp, (%rcx,%rdi,4)
	incq	%rdi
	incl	%esi
	jne	.LBB9_115
.LBB9_116:                              # %for.body.5.i.483.preheader.split
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	$3, %edx
	movq	%rbx, %rbp
	jb	.LBB9_119
# BB#117:                               # %for.body.5.i.483.preheader.split.split
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	2(%r12), %edx
	subl	%edi, %edx
	leaq	12(%rcx,%rdi,4), %rcx
	leaq	12(%rax,%rdi,4), %rax
.LBB9_118:                              # %for.body.5.i.483
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rax), %esi
	movl	%esi, -12(%rcx)
	movl	-8(%rax), %esi
	movl	%esi, -8(%rcx)
	movl	-4(%rax), %esi
	movl	%esi, -4(%rcx)
	movl	(%rax), %esi
	movl	%esi, (%rcx)
	addq	$16, %rcx
	addq	$16, %rax
	addl	$-4, %edx
	jne	.LBB9_118
.LBB9_119:                              # %org_to_cur.exit484
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	%r10d, 160(%rsp)        # 4-byte Spill
	movl	$1, 1096(%rbp)
	movq	%rbp, %rdi
	movl	$8, %ebx
	movq	120(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 124(%rax)
	jne	.LBB9_157
# BB#120:                               # %if.end.470
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%esi, %esi
	callq	Context_Run
	cmpl	$32, %eax
	je	.LBB9_157
# BB#121:                               # %if.end.470
                                        #   in Loop: Header=BB9_1 Depth=1
	testl	%eax, %eax
	jne	.LBB9_156
# BB#122:                               # %if.then.472
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	$0, 160(%rsp)           # 4-byte Folded Reload
	jle	.LBB9_123
# BB#124:                               # %for.body.lr.ph.i.488
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	112(%rsp), %r13         # 8-byte Reload
	movq	808(%r13), %rcx
	movq	824(%r13), %rax
	movq	%r13, %r11
	leal	1(%r12), %edx
	incq	%rdx
	movq	%rdx, %rsi
	movabsq	$8589934584, %rbx       # imm = 0x1FFFFFFF8
	andq	%rbx, %rsi
	movl	$0, %edi
	je	.LBB9_133
# BB#125:                               # %vector.memcheck872
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	1(%r12), %edi
	leaq	(%rax,%rdi,4), %rbp
	cmpq	%rbp, %rcx
	ja	.LBB9_127
# BB#126:                               # %vector.memcheck872
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	(%rcx,%rdi,4), %rdi
	cmpq	%rdi, %rax
	movl	$0, %edi
	jbe	.LBB9_133
.LBB9_127:                              # %vector.body853.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	1(%r12), %edi
	incq	%rdi
	andq	%rbx, %rdi
	movq	%rbx, %r10
	addq	$-8, %rdi
	movq	%rdi, %rbp
	shrq	$3, %rbp
	btq	$3, %rdi
	movl	$0, %ebx
	jb	.LBB9_129
# BB#128:                               # %vector.body853.prol
                                        #   in Loop: Header=BB9_1 Depth=1
	movdqu	(%rax), %xmm0
	movdqu	16(%rax), %xmm1
	movdqu	%xmm0, (%rcx)
	movdqu	%xmm1, 16(%rcx)
	movl	$8, %ebx
.LBB9_129:                              # %vector.body853.preheader.split
                                        #   in Loop: Header=BB9_1 Depth=1
	testq	%rbp, %rbp
	je	.LBB9_132
# BB#130:                               # %vector.body853.preheader.split.split
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	1(%r12), %edi
	incq	%rdi
	andq	%r10, %rdi
	subq	%rbx, %rdi
	leaq	48(%rax,%rbx,4), %rbp
	leaq	48(%rcx,%rbx,4), %rbx
.LBB9_131:                              # %vector.body853
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-48(%rbp), %xmm0
	movups	-32(%rbp), %xmm1
	movups	%xmm0, -48(%rbx)
	movups	%xmm1, -32(%rbx)
	movdqu	-16(%rbp), %xmm0
	movdqu	(%rbp), %xmm1
	movdqu	%xmm0, -16(%rbx)
	movdqu	%xmm1, (%rbx)
	addq	$64, %rbp
	addq	$64, %rbx
	addq	$-16, %rdi
	jne	.LBB9_131
.LBB9_132:                              #   in Loop: Header=BB9_1 Depth=1
	movq	%rsi, %rdi
	movq	%r10, %rbx
.LBB9_133:                              # %middle.block854
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpq	%rdi, %rdx
	je	.LBB9_140
# BB#134:                               # %for.body.i.499.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	3(%r12), %esi
	movl	%edi, %ebp
	orl	$1, %ebp
	subl	%ebp, %esi
	leal	2(%r12), %edx
	subl	%ebp, %edx
	testb	$3, %sil
	je	.LBB9_137
# BB#135:                               # %for.body.i.499.prol.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	3(%r12), %esi
	leal	1(%rdi), %ebp
	subl	%ebp, %esi
	andl	$3, %esi
	negl	%esi
.LBB9_136:                              # %for.body.i.499.prol
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax,%rdi,4), %ebp
	movl	%ebp, (%rcx,%rdi,4)
	incq	%rdi
	incl	%esi
	jne	.LBB9_136
.LBB9_137:                              # %for.body.i.499.preheader.split
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	$3, %edx
	jb	.LBB9_140
# BB#138:                               # %for.body.i.499.preheader.split.split
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	2(%r12), %edx
	subl	%edi, %edx
	leaq	12(%rcx,%rdi,4), %rcx
	leaq	12(%rax,%rdi,4), %rax
.LBB9_139:                              # %for.body.i.499
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rax), %esi
	movl	%esi, -12(%rcx)
	movl	-8(%rax), %esi
	movl	%esi, -8(%rcx)
	movl	-4(%rax), %esi
	movl	%esi, -4(%rcx)
	movl	(%rax), %esi
	movl	%esi, (%rcx)
	addq	$16, %rcx
	addq	$16, %rax
	addl	$-4, %edx
	jne	.LBB9_139
.LBB9_140:                              # %for.body.5.lr.ph.i.492
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	816(%r11), %rcx
	movq	832(%r11), %rax
	leal	1(%r12), %edx
	incq	%rdx
	movq	%rdx, %rsi
	andq	%rbx, %rsi
	movl	$0, %edi
	je	.LBB9_149
# BB#141:                               # %vector.memcheck836
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	1(%r12), %edi
	leaq	(%rax,%rdi,4), %rbp
	cmpq	%rbp, %rcx
	ja	.LBB9_143
# BB#142:                               # %vector.memcheck836
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	(%rcx,%rdi,4), %rdi
	cmpq	%rdi, %rax
	movl	$0, %edi
	jbe	.LBB9_149
.LBB9_143:                              # %vector.body817.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	1(%r12), %edi
	incq	%rdi
	andq	%rbx, %rdi
	movq	%rbx, %r10
	addq	$-8, %rdi
	movq	%rdi, %rbp
	shrq	$3, %rbp
	btq	$3, %rdi
	movl	$0, %ebx
	jb	.LBB9_145
# BB#144:                               # %vector.body817.prol
                                        #   in Loop: Header=BB9_1 Depth=1
	movdqu	(%rax), %xmm0
	movdqu	16(%rax), %xmm1
	movdqu	%xmm0, (%rcx)
	movdqu	%xmm1, 16(%rcx)
	movl	$8, %ebx
.LBB9_145:                              # %vector.body817.preheader.split
                                        #   in Loop: Header=BB9_1 Depth=1
	testq	%rbp, %rbp
	je	.LBB9_148
# BB#146:                               # %vector.body817.preheader.split.split
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	1(%r12), %edi
	incq	%rdi
	andq	%r10, %rdi
	subq	%rbx, %rdi
	leaq	48(%rax,%rbx,4), %rbp
	leaq	48(%rcx,%rbx,4), %rbx
.LBB9_147:                              # %vector.body817
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-48(%rbp), %xmm0
	movups	-32(%rbp), %xmm1
	movups	%xmm0, -48(%rbx)
	movups	%xmm1, -32(%rbx)
	movdqu	-16(%rbp), %xmm0
	movdqu	(%rbp), %xmm1
	movdqu	%xmm0, -16(%rbx)
	movdqu	%xmm1, (%rbx)
	addq	$64, %rbp
	addq	$64, %rbx
	addq	$-16, %rdi
	jne	.LBB9_147
.LBB9_148:                              #   in Loop: Header=BB9_1 Depth=1
	movq	%rsi, %rdi
.LBB9_149:                              # %middle.block818
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpq	%rdi, %rdx
	je	.LBB9_123
# BB#150:                               # %for.body.5.i.506.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	3(%r12), %esi
	movl	%edi, %ebp
	orl	$1, %ebp
	subl	%ebp, %esi
	leal	2(%r12), %edx
	subl	%ebp, %edx
	testb	$3, %sil
	je	.LBB9_153
# BB#151:                               # %for.body.5.i.506.prol.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	3(%r12), %esi
	leal	1(%rdi), %ebp
	subl	%ebp, %esi
	andl	$3, %esi
	negl	%esi
.LBB9_152:                              # %for.body.5.i.506.prol
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax,%rdi,4), %ebp
	movl	%ebp, (%rcx,%rdi,4)
	incq	%rdi
	incl	%esi
	jne	.LBB9_152
.LBB9_153:                              # %for.body.5.i.506.preheader.split
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	$3, %edx
	jb	.LBB9_123
# BB#154:                               # %for.body.5.i.506.preheader.split.split
                                        #   in Loop: Header=BB9_1 Depth=1
	addl	$2, %r12d
	subl	%edi, %r12d
	leaq	12(%rcx,%rdi,4), %rcx
	leaq	12(%rax,%rdi,4), %rax
.LBB9_155:                              # %for.body.5.i.506
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rax), %edx
	movl	%edx, -12(%rcx)
	movl	-8(%rax), %edx
	movl	%edx, -8(%rcx)
	movl	-4(%rax), %edx
	movl	%edx, -4(%rcx)
	movl	(%rax), %edx
	movl	%edx, (%rcx)
	addq	$16, %rcx
	addq	$16, %rax
	addl	$-4, %r12d
	jne	.LBB9_155
.LBB9_123:                              #   in Loop: Header=BB9_1 Depth=1
	movl	208(%rsp), %ebx         # 4-byte Reload
	jmp	.LBB9_157
.LBB9_251:                              #   in Loop: Header=BB9_1 Depth=1
	xorl	%ebp, %ebp
	movq	%rdx, %rsi
.LBB9_254:                              # %for.end.814
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%rsi, 112(%rsp)         # 8-byte Spill
	movl	$8, %ecx
	cmpl	$0, 124(%r12)
	jne	.LBB9_288
# BB#255:                               # %if.end.820
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%esi, %esi
	movq	112(%rsp), %rdi         # 8-byte Reload
	callq	Context_Run
	movl	$8, %ecx
	cmpl	$32, %eax
	je	.LBB9_288
# BB#256:                               # %if.end.820
                                        #   in Loop: Header=BB9_1 Depth=1
	testl	%eax, %eax
	jne	.LBB9_287
# BB#257:                               # %if.then.822
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%ecx, %ecx
	testb	%bpl, %bpl
	je	.LBB9_288
# BB#258:                               # %for.body.lr.ph.i
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	112(%rsp), %rdx         # 8-byte Reload
	movq	808(%rdx), %rcx
	movq	824(%rdx), %rax
	movq	%rdx, %r10
	leal	2(%r15), %edi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	andq	%rdx, %rdi
	incq	%rdi
	leal	3(%r15), %esi
	andl	$7, %esi
	movq	%rdi, %r8
	subq	%rsi, %r8
	movl	$0, %esi
	je	.LBB9_264
# BB#259:                               # %vector.memcheck700
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	2(%r15), %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	andq	%rdx, %rsi
	leaq	(%rax,%rsi,4), %rbp
	cmpq	%rbp, %rcx
	ja	.LBB9_261
# BB#260:                               # %vector.memcheck700
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	(%rcx,%rsi,4), %rsi
	cmpq	%rsi, %rax
	movl	$0, %esi
	jbe	.LBB9_264
.LBB9_261:                              # %vector.body681.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	16(%rax), %rsi
	leaq	16(%rcx), %rbp
	leal	2(%r14), %ebx
	incq	%rbx
	movb	%r15b, %dl
	addb	$3, %dl
	movzbl	%dl, %edx
	andl	$7, %edx
	subq	%rdx, %rbx
.LBB9_262:                              # %vector.body681
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	-16(%rsi), %xmm0
	movdqu	(%rsi), %xmm1
	movdqu	%xmm0, -16(%rbp)
	movdqu	%xmm1, (%rbp)
	addq	$32, %rsi
	addq	$32, %rbp
	addq	$-8, %rbx
	jne	.LBB9_262
# BB#263:                               #   in Loop: Header=BB9_1 Depth=1
	movq	%r8, %rsi
.LBB9_264:                              # %middle.block682
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpq	%rsi, %rdi
	je	.LBB9_271
# BB#265:                               # %for.body.i.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	1(%rsi), %edi
	movl	%r14d, %ebp
	subl	%edi, %ebp
	leal	3(%r14), %edx
	subl	%edi, %edx
	testb	$3, %bpl
	je	.LBB9_268
# BB#266:                               # %for.body.i.prol.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	1(%rsi), %edi
	movb	%r15b, %bl
	subb	%dil, %bl
	movzbl	%bl, %edi
	andl	$3, %edi
	negl	%edi
.LBB9_267:                              # %for.body.i.prol
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax,%rsi,4), %ebp
	movl	%ebp, (%rcx,%rsi,4)
	incq	%rsi
	incl	%edi
	jne	.LBB9_267
.LBB9_268:                              # %for.body.i.preheader.split
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	$3, %edx
	jb	.LBB9_271
# BB#269:                               # %for.body.i.preheader.split.split
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	3(%r15), %edx
	subl	%esi, %edx
	leaq	12(%rcx,%rsi,4), %rcx
	leaq	12(%rax,%rsi,4), %rax
.LBB9_270:                              # %for.body.i
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rax), %esi
	movl	%esi, -12(%rcx)
	movl	-8(%rax), %esi
	movl	%esi, -8(%rcx)
	movl	-4(%rax), %esi
	movl	%esi, -4(%rcx)
	movl	(%rax), %esi
	movl	%esi, (%rcx)
	addq	$16, %rcx
	addq	$16, %rax
	addl	$-4, %edx
	jne	.LBB9_270
.LBB9_271:                              # %for.body.5.lr.ph.i
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	816(%r10), %rcx
	movq	832(%r10), %rax
	leal	2(%r14), %edx
	movq	%rdx, %rdi
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andq	%rsi, %rdi
	incq	%rdi
	addl	$3, %r14d
	movl	%r14d, %esi
	andl	$7, %esi
	movq	%rdi, %r8
	subq	%rsi, %r8
	movl	$0, %esi
	je	.LBB9_277
# BB#272:                               # %vector.memcheck
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andq	%rsi, %rdx
	leaq	(%rax,%rdx,4), %rsi
	cmpq	%rsi, %rcx
	ja	.LBB9_274
# BB#273:                               # %vector.memcheck
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	(%rcx,%rdx,4), %rdx
	cmpq	%rdx, %rax
	movl	$0, %esi
	jbe	.LBB9_277
.LBB9_274:                              # %vector.body.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	16(%rax), %rsi
	leaq	16(%rcx), %rbp
	leal	2(%r15), %ebx
	incq	%rbx
	movb	%r15b, %dl
	addb	$3, %dl
	movzbl	%dl, %edx
	andl	$7, %edx
	subq	%rdx, %rbx
.LBB9_275:                              # %vector.body
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	-16(%rsi), %xmm0
	movdqu	(%rsi), %xmm1
	movdqu	%xmm0, -16(%rbp)
	movdqu	%xmm1, (%rbp)
	addq	$32, %rsi
	addq	$32, %rbp
	addq	$-8, %rbx
	jne	.LBB9_275
# BB#276:                               #   in Loop: Header=BB9_1 Depth=1
	movq	%r8, %rsi
.LBB9_277:                              # %middle.block
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%r10, 112(%rsp)         # 8-byte Spill
	cmpq	%rsi, %rdi
	jne	.LBB9_279
# BB#278:                               #   in Loop: Header=BB9_1 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB9_288
.LBB9_287:                              # %if.else.828
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$9, %ecx
.LBB9_288:                              # %if.end.830
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	%ecx, 208(%rsp)         # 4-byte Spill
	movq	200(%rsp), %rax         # 8-byte Reload
	movl	224(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 20(%rax)
	movq	216(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, 12(%rax)
	movl	76(%rsp), %r15d         # 4-byte Reload
	movq	%r12, %r14
	movl	156(%rsp), %ebp         # 4-byte Reload
.LBB9_289:                              # %if.end.844
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	112(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	Unset_CodeRange
	movl	$3, %esi
	movq	%rbx, %rdi
	callq	Clear_CodeRange
	movl	%r15d, %esi
	jmp	.LBB9_290
.LBB9_156:                              # %if.then.483
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$9, %ebx
.LBB9_157:                              # %cleanup.490
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	120(%rsp), %r14         # 8-byte Reload
.LBB9_158:                              # %cleanup.490
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	112(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rdi
	callq	Unset_CodeRange
	movl	$3, %esi
	movq	%rbp, %rdi
	callq	Clear_CodeRange
	movl	%ebx, 208(%rsp)         # 4-byte Spill
	movq	104(%rsp), %r13         # 8-byte Reload
	movl	156(%rsp), %ebp         # 4-byte Reload
	movl	76(%rsp), %esi          # 4-byte Reload
	jmp	.LBB9_290
.LBB9_279:                              # %for.body.5.i.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	1(%rsi), %edi
	movl	%r15d, %ebp
	subl	%edi, %ebp
	leal	3(%r15), %edx
	subl	%edi, %edx
	testb	$3, %bpl
	je	.LBB9_282
# BB#280:                               # %for.body.5.i.prol.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	leal	1(%rsi), %edi
	subb	%dil, %r15b
	movzbl	%r15b, %edi
	andl	$3, %edi
	negl	%edi
.LBB9_281:                              # %for.body.5.i.prol
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax,%rsi,4), %ebp
	movl	%ebp, (%rcx,%rsi,4)
	incq	%rsi
	incl	%edi
	jne	.LBB9_281
.LBB9_282:                              # %for.body.5.i.preheader.split
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	$3, %edx
	jae	.LBB9_284
# BB#283:                               #   in Loop: Header=BB9_1 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB9_288
.LBB9_284:                              # %for.body.5.i.preheader.split.split
                                        #   in Loop: Header=BB9_1 Depth=1
	subl	%esi, %r14d
	leaq	12(%rcx,%rsi,4), %rcx
	leaq	12(%rax,%rsi,4), %rax
.LBB9_285:                              # %for.body.5.i
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rax), %edx
	movl	%edx, -12(%rcx)
	movl	-8(%rax), %edx
	movl	%edx, -8(%rcx)
	movl	-4(%rax), %edx
	movl	%edx, -4(%rcx)
	movl	(%rax), %edx
	movl	%edx, (%rcx)
	addq	$16, %rcx
	addq	$16, %rax
	addl	$-4, %r14d
	jne	.LBB9_285
# BB#286:                               #   in Loop: Header=BB9_1 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB9_288
.LBB9_6:                                # %if.then.19
	movl	%r12d, %esi
	callq	*48(%r13)
	pxor	%xmm0, %xmm0
	movq	200(%rsp), %rax         # 8-byte Reload
	movdqu	%xmm0, 24(%rax)
	xorl	%esi, %esi
	jmp	.LBB9_7
.LBB9_291:
	movl	208(%rsp), %esi         # 4-byte Reload
.LBB9_7:                                # %cleanup.880
	movl	%esi, %eax
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	ttfOutliner__BuildGlyphOutlineAux, .Lfunc_end9-ttfOutliner__BuildGlyphOutlineAux
	.cfi_endproc

	.align	16, 0x90
	.type	MoveGlyphOutline,@function
MoveGlyphOutline:                       # @MoveGlyphOutline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp78:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp79:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp80:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp81:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp82:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp83:
	.cfi_def_cfa_offset 64
.Ltmp84:
	.cfi_offset %rbx, -56
.Ltmp85:
	.cfi_offset %r12, -48
.Ltmp86:
	.cfi_offset %r13, -40
.Ltmp87:
	.cfi_offset %r14, -32
.Ltmp88:
	.cfi_offset %r15, -24
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movslq	%esi, %r13
	shlq	$2, %r13
	movq	8(%rdi), %rbx
	addq	%r13, %rbx
	addq	16(%rdi), %r13
	movl	8(%rdx), %eax
	movl	(%r14), %esi
	cmpl	$65536, %esi            # imm = 0x10000
	jne	.LBB10_6
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 4(%r14)
	jne	.LBB10_6
# BB#2:                                 # %land.lhs.true.6
	cmpl	$0, 8(%r14)
	jne	.LBB10_6
# BB#3:                                 # %land.lhs.true.9
	cmpl	$65536, 12(%r14)        # imm = 0x10000
	jne	.LBB10_6
# BB#4:                                 # %land.lhs.true.12
	cmpl	$0, 16(%r14)
	jne	.LBB10_6
# BB#5:                                 # %land.lhs.true.15
	cmpl	$0, 20(%r14)
	je	.LBB10_10
.LBB10_6:                               # %for.cond.preheader
	testw	%ax, %ax
	je	.LBB10_10
# BB#7:                                 # %for.body.lr.ph
	movl	$1, %edx
	subl	%eax, %edx
	movl	%edx, 4(%rsp)           # 4-byte Spill
	jmp	.LBB10_8
	.align	16, 0x90
.LBB10_9:                               # %for.body.for.body_crit_edge
                                        #   in Loop: Header=BB10_8 Depth=1
	addq	$4, %r13
	addq	$4, %rbx
	movl	(%r14), %esi
	incl	%eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
.LBB10_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %r12d
	movl	(%r13), %r15d
	movl	$65536, %edx            # imm = 0x10000
	movl	%r12d, %edi
	callq	ttMulDiv
	movl	%eax, %ebp
	movl	8(%r14), %esi
	movl	$65536, %edx            # imm = 0x10000
	movl	%r15d, %edi
	callq	ttMulDiv
	addl	%ebp, %eax
	movl	4(%r14), %esi
	movl	16(%r14), %ebp
	sarl	$10, %ebp
	addl	%eax, %ebp
	movl	$65536, %edx            # imm = 0x10000
	movl	%r12d, %edi
	callq	ttMulDiv
	movl	%eax, %r12d
	movl	12(%r14), %esi
	movl	$65536, %edx            # imm = 0x10000
	movl	%r15d, %edi
	callq	ttMulDiv
	addl	%r12d, %eax
	movl	20(%r14), %ecx
	sarl	$10, %ecx
	addl	%eax, %ecx
	movl	%ebp, (%rbx)
	movl	%ecx, (%r13)
	movl	4(%rsp), %eax           # 4-byte Reload
	testw	%ax, %ax
	jne	.LBB10_9
.LBB10_10:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	MoveGlyphOutline, .Lfunc_end10-MoveGlyphOutline
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ttfInterpreter__obtain"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"ttfInterpreter__release"
	.size	.L.str.1, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"ttfFont__finit"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"ttcf"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"true"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"ttfFont__Open"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"cvt "
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"fpgm"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"glyf"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"head"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"hhea"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"hmtx"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"vhea"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"vmtx"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"loca"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"maxp"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"prep"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"cmap"
	.size	.L.str.17, 5

	.type	.LttfOutliner__BuildGlyphOutline.m_orig,@object # @ttfOutliner__BuildGlyphOutline.m_orig
	.section	.rodata,"a",@progbits
	.align	4
.LttfOutliner__BuildGlyphOutline.m_orig:
	.long	65536                   # 0x10000
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	65536                   # 0x10000
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	.LttfOutliner__BuildGlyphOutline.m_orig, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
