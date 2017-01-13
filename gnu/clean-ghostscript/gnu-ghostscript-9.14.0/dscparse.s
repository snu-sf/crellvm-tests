	.text
	.file	"dscparse.bc"
	.globl	dsc_init
	.align	16, 0x90
	.type	dsc_init,@function
dsc_init:                               # @dsc_init
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
	movq	%rdi, %r14
	movl	$9968, %edi             # imm = 0x26F0
	callq	malloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_1
# BB#2:                                 # %if.end
	xorl	%esi, %esi
	movl	$9968, %edx             # imm = 0x26F0
	movq	%rbx, %rdi
	callq	memset
	movq	%r14, 1288(%rbx)
	movl	$1, 9952(%rbx)
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	dsc_init2               # TAILCALL
.LBB0_1:                                # %cleanup
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	dsc_init, .Lfunc_end0-dsc_init
	.cfi_endproc

	.globl	dsc_ref
	.align	16, 0x90
	.type	dsc_ref,@function
dsc_ref:                                # @dsc_ref
	.cfi_startproc
# BB#0:                                 # %entry
	movl	9952(%rdi), %eax
	incl	%eax
	movl	%eax, 9952(%rdi)
	retq
.Lfunc_end1:
	.size	dsc_ref, .Lfunc_end1-dsc_ref
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_init2,@function
dsc_init2:                              # @dsc_init2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 16
.Ltmp6:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	dsc_reset
	movq	9880(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_2
# BB#1:                                 # %if.then.i
	movq	9896(%rbx), %rsi
	movl	$24, %edi
	callq	*%rax
	jmp	.LBB2_3
.LBB2_2:                                # %if.end.i
	movl	$24, %edi
	callq	malloc
.LBB2_3:                                # %dsc_memalloc.exit
	movq	%rax, 9864(%rbx)
	testq	%rax, %rax
	je	.LBB2_4
# BB#6:                                 # %if.end
	movq	%rax, 9872(%rbx)
	movq	$0, 16(%rax)
	movq	9880(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_8
# BB#7:                                 # %if.then.i.27
	movq	9896(%rbx), %rsi
	movl	$4096, %edi             # imm = 0x1000
	callq	*%rax
	jmp	.LBB2_9
.LBB2_8:                                # %if.end.i.29
	movl	$4096, %edi             # imm = 0x1000
	callq	malloc
.LBB2_9:                                # %dsc_memalloc.exit31
	movq	9872(%rbx), %rcx
	movq	%rax, 8(%rcx)
	testq	%rax, %rax
	je	.LBB2_4
# BB#10:                                # %if.end.10
	movabsq	$17592186044416, %rax   # imm = 0x100000000000
	movq	%rax, (%rcx)
	movq	9880(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_12
# BB#11:                                # %if.then.i.44
	movq	9896(%rbx), %rsi
	movl	$9216, %edi             # imm = 0x2400
	callq	*%rax
	jmp	.LBB2_13
.LBB2_12:                               # %if.end.i.46
	movl	$9216, %edi             # imm = 0x2400
	callq	malloc
.LBB2_13:                               # %dsc_memalloc.exit48
	movq	%rax, 1160(%rbx)
	testq	%rax, %rax
	je	.LBB2_4
# BB#14:                                # %if.end.17
	movl	$128, 1312(%rbx)
	movl	$0, 1168(%rbx)
	movq	$0, 9576(%rbx)
	movq	$0, 9552(%rbx)
	jmp	.LBB2_15
.LBB2_4:                                # %if.end.i.22
	movq	%rbx, %rdi
	callq	dsc_reset
	movq	9888(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_16
# BB#5:                                 # %if.then.i.i
	movq	9896(%rbx), %rsi
	movq	%rbx, %rdi
	callq	*%rax
	xorl	%ebx, %ebx
	jmp	.LBB2_15
.LBB2_16:                               # %if.else.i.i
	movq	%rbx, %rdi
	callq	free
	xorl	%ebx, %ebx
.LBB2_15:                               # %return
	movq	%rbx, %rax
	popq	%rbx
	retq
.Lfunc_end2:
	.size	dsc_init2, .Lfunc_end2-dsc_init2
	.cfi_endproc

	.globl	dsc_init_with_alloc
	.align	16, 0x90
	.type	dsc_init_with_alloc,@function
dsc_init_with_alloc:                    # @dsc_init_with_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp9:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp10:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 48
.Ltmp12:
	.cfi_offset %rbx, -48
.Ltmp13:
	.cfi_offset %r12, -40
.Ltmp14:
	.cfi_offset %r13, -32
.Ltmp15:
	.cfi_offset %r14, -24
.Ltmp16:
	.cfi_offset %r15, -16
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, %r13
	movq	%rdi, %r12
	movl	$9968, %edi             # imm = 0x26F0
	movq	%r15, %rsi
	callq	*%r13
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB3_1
# BB#2:                                 # %if.end
	xorl	%esi, %esi
	movl	$9968, %edx             # imm = 0x26F0
	movq	%rbx, %rdi
	callq	memset
	movq	%r12, 1288(%rbx)
	movq	%r13, 9880(%rbx)
	movq	%r14, 9888(%rbx)
	movq	%r15, 9896(%rbx)
	movl	$1, 9952(%rbx)
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	dsc_init2               # TAILCALL
.LBB3_1:                                # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	dsc_init_with_alloc, .Lfunc_end3-dsc_init_with_alloc
	.cfi_endproc

	.globl	dsc_free
	.align	16, 0x90
	.type	dsc_free,@function
dsc_free:                               # @dsc_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB4_3
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	callq	dsc_reset
	movq	9888(%rbx), %rax
	testq	%rax, %rax
	je	.LBB4_2
# BB#4:                                 # %if.then.i
	movq	9896(%rbx), %rsi
	movq	%rbx, %rdi
	popq	%rbx
	jmpq	*%rax                   # TAILCALL
.LBB4_3:                                # %return
	popq	%rbx
	retq
.LBB4_2:                                # %if.else.i
	movq	%rbx, %rdi
	popq	%rbx
	jmp	free                    # TAILCALL
.Lfunc_end4:
	.size	dsc_free, .Lfunc_end4-dsc_free
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI5_0:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
.LCPI5_1:
	.zero	16
	.text
	.align	16, 0x90
	.type	dsc_reset,@function
dsc_reset:                              # @dsc_reset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 32
.Ltmp22:
	.cfi_offset %rbx, -32
.Ltmp23:
	.cfi_offset %r14, -24
.Ltmp24:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movl	$0, 1040(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 1024(%r14)
	movl	$0, 1044(%r14)
	movq	$0, 1048(%r14)
	movl	$0, 1056(%r14)
	movl	$0, 1060(%r14)
	movups	%xmm0, 1064(%r14)
	movups	%xmm0, 1080(%r14)
	movups	%xmm0, 1096(%r14)
	movq	$0, 1112(%r14)
	movups	%xmm0, 1120(%r14)
	movups	%xmm0, 1136(%r14)
	movq	$0, 1152(%r14)
	cmpl	$0, 1168(%r14)
	je	.LBB5_15
# BB#1:                                 # %for.body.lr.ph
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB5_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebx
	movq	1160(%r14), %rax
	leaq	(%rbx,%rbx,8), %r15
	movq	48(%rax,%r15,8), %rdi
	testq	%rdi, %rdi
	je	.LBB5_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	9888(%r14), %rax
	testq	%rax, %rax
	je	.LBB5_5
# BB#4:                                 # %if.then.i
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	9896(%r14), %rsi
	callq	*%rax
	jmp	.LBB5_6
	.align	16, 0x90
.LBB5_5:                                # %if.else.i
                                        #   in Loop: Header=BB5_2 Depth=1
	callq	free
.LBB5_6:                                # %if.end
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	1160(%r14), %rax
	movq	56(%rax,%r15,8), %rdi
	testq	%rdi, %rdi
	je	.LBB5_10
# BB#7:                                 # %if.then.11
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	9888(%r14), %rax
	testq	%rax, %rax
	je	.LBB5_9
# BB#8:                                 # %if.then.i.157
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	9896(%r14), %rsi
	callq	*%rax
	jmp	.LBB5_10
	.align	16, 0x90
.LBB5_9:                                # %if.else.i.158
                                        #   in Loop: Header=BB5_2 Depth=1
	callq	free
.LBB5_10:                               # %if.end.16
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	1160(%r14), %rax
	movq	64(%rax,%r15,8), %rdi
	testq	%rdi, %rdi
	je	.LBB5_14
# BB#11:                                # %if.then.21
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	9888(%r14), %rax
	testq	%rax, %rax
	je	.LBB5_13
# BB#12:                                # %if.then.i.163
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	9896(%r14), %rsi
	callq	*%rax
	jmp	.LBB5_14
	.align	16, 0x90
.LBB5_13:                               # %if.else.i.164
                                        #   in Loop: Header=BB5_2 Depth=1
	callq	free
.LBB5_14:                               # %for.inc
                                        #   in Loop: Header=BB5_2 Depth=1
	incl	%ebx
	cmpl	1168(%r14), %ebx
	jb	.LBB5_2
.LBB5_15:                               # %for.end
	movq	1160(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB5_19
# BB#16:                                # %if.then.29
	movq	9888(%r14), %rax
	testq	%rax, %rax
	je	.LBB5_18
# BB#17:                                # %if.then.i.169
	movq	9896(%r14), %rsi
	callq	*%rax
	jmp	.LBB5_19
.LBB5_18:                               # %if.else.i.170
	callq	free
.LBB5_19:                               # %if.end.31
	movq	$0, 1160(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 1168(%r14)
	movq	1184(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB5_23
# BB#20:                                # %if.then.36
	movq	9888(%r14), %rax
	testq	%rax, %rax
	je	.LBB5_22
# BB#21:                                # %if.then.i.175
	movq	9896(%r14), %rsi
	callq	*%rax
	jmp	.LBB5_23
.LBB5_22:                               # %if.else.i.176
	callq	free
.LBB5_23:                               # %if.end.38
	movq	$0, 1184(%r14)
	movq	1200(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB5_40
# BB#24:                                # %for.cond.42.preheader
	cmpl	$0, 1192(%r14)
	je	.LBB5_37
# BB#25:                                # %for.body.44.lr.ph
	xorl	%ebx, %ebx
	jmp	.LBB5_26
	.align	16, 0x90
.LBB5_35:                               # %for.inc.64.for.body.44_crit_edge
                                        #   in Loop: Header=BB5_26 Depth=1
	movq	1200(%r14), %rdi
.LBB5_26:                               # %for.body.44
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebx
	movq	(%rdi,%rbx,8), %rax
	testq	%rax, %rax
	je	.LBB5_34
# BB#27:                                # %if.then.49
                                        #   in Loop: Header=BB5_26 Depth=1
	movq	40(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB5_31
# BB#28:                                # %if.then.54
                                        #   in Loop: Header=BB5_26 Depth=1
	movq	9888(%r14), %rax
	testq	%rax, %rax
	je	.LBB5_30
# BB#29:                                # %if.then.i.181
                                        #   in Loop: Header=BB5_26 Depth=1
	movq	9896(%r14), %rsi
	callq	*%rax
	jmp	.LBB5_31
.LBB5_30:                               # %if.else.i.182
                                        #   in Loop: Header=BB5_26 Depth=1
	callq	free
.LBB5_31:                               # %if.end.59
                                        #   in Loop: Header=BB5_26 Depth=1
	movq	1200(%r14), %rax
	movq	(%rax,%rbx,8), %rdi
	movq	9888(%r14), %rax
	testq	%rax, %rax
	je	.LBB5_33
# BB#32:                                # %if.then.i.187
                                        #   in Loop: Header=BB5_26 Depth=1
	movq	9896(%r14), %rsi
	callq	*%rax
	jmp	.LBB5_34
	.align	16, 0x90
.LBB5_33:                               # %if.else.i.188
                                        #   in Loop: Header=BB5_26 Depth=1
	callq	free
.LBB5_34:                               # %for.inc.64
                                        #   in Loop: Header=BB5_26 Depth=1
	incl	%ebx
	cmpl	1192(%r14), %ebx
	jb	.LBB5_35
# BB#36:                                # %for.cond.42.for.end.66_crit_edge
	movq	1200(%r14), %rdi
.LBB5_37:                               # %for.end.66
	movq	9888(%r14), %rax
	testq	%rax, %rax
	je	.LBB5_39
# BB#38:                                # %if.then.i.193
	movq	9896(%r14), %rsi
	callq	*%rax
	jmp	.LBB5_40
.LBB5_39:                               # %if.else.i.194
	callq	free
.LBB5_40:                               # %if.end.68
	movl	$0, 1192(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 1200(%r14)
	movq	1216(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB5_44
# BB#41:                                # %if.then.73
	movq	9888(%r14), %rax
	testq	%rax, %rax
	je	.LBB5_43
# BB#42:                                # %if.then.i.199
	movq	9896(%r14), %rsi
	callq	*%rax
	jmp	.LBB5_44
.LBB5_43:                               # %if.else.i.200
	callq	free
.LBB5_44:                               # %if.end.75
	movq	$0, 1216(%r14)
	movq	1224(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB5_48
# BB#45:                                # %if.then.78
	movq	9888(%r14), %rax
	testq	%rax, %rax
	je	.LBB5_47
# BB#46:                                # %if.then.i.205
	movq	9896(%r14), %rsi
	callq	*%rax
	jmp	.LBB5_48
.LBB5_47:                               # %if.else.i.206
	callq	free
.LBB5_48:                               # %if.end.80
	movq	$0, 1224(%r14)
	movq	1232(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB5_52
# BB#49:                                # %if.then.83
	movq	9888(%r14), %rax
	testq	%rax, %rax
	je	.LBB5_51
# BB#50:                                # %if.then.i.211
	movq	9896(%r14), %rsi
	callq	*%rax
	jmp	.LBB5_52
.LBB5_51:                               # %if.else.i.212
	callq	free
.LBB5_52:                               # %if.end.85
	movq	$0, 1232(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 1240(%r14)
	movups	%xmm0, 1256(%r14)
	movl	$15, 1272(%r14)
	movq	$dsc_severity, 1280(%r14)
	movl	$0, 1296(%r14)
	movl	$0, 1300(%r14)
	movq	$0, 1304(%r14)
	movl	$0, 1312(%r14)
	movq	$0, 1320(%r14)
	movups	%xmm0, 1328(%r14)
	movups	%xmm0, 1344(%r14)
	movl	$0, 9552(%r14)
	movl	$0, 9556(%r14)
	movq	$0, 9560(%r14)
	movl	$0, 9568(%r14)
	movq	$0, 9576(%r14)
	movaps	.LCPI5_0(%rip), %xmm0   # xmm0 = [0,0,0,1]
	movups	%xmm0, 9584(%r14)
	movl	$0, 9600(%r14)
	leaq	9604(%r14), %rdi
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	movq	9864(%r14), %rax
	movq	%rax, 9872(%r14)
	jmp	.LBB5_53
	.align	16, 0x90
.LBB5_59:                               # %if.then.i.223
                                        #   in Loop: Header=BB5_53 Depth=1
	movq	9896(%r14), %rsi
	callq	*%rax
	movq	9872(%r14), %rax
.LBB5_53:                               # %if.end.85
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB5_62
# BB#54:                                # %while.body
                                        #   in Loop: Header=BB5_53 Depth=1
	movq	8(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB5_58
# BB#55:                                # %if.then.91
                                        #   in Loop: Header=BB5_53 Depth=1
	movq	9888(%r14), %rax
	testq	%rax, %rax
	je	.LBB5_57
# BB#56:                                # %if.then.i.217
                                        #   in Loop: Header=BB5_53 Depth=1
	movq	9896(%r14), %rsi
	callq	*%rax
	jmp	.LBB5_58
	.align	16, 0x90
.LBB5_57:                               # %if.else.i.218
                                        #   in Loop: Header=BB5_53 Depth=1
	callq	free
.LBB5_58:                               # %if.end.94
                                        #   in Loop: Header=BB5_53 Depth=1
	movq	9872(%r14), %rdi
	movq	%rdi, 9864(%r14)
	movq	16(%rdi), %rax
	movq	%rax, 9872(%r14)
	movq	9888(%r14), %rax
	testq	%rax, %rax
	jne	.LBB5_59
# BB#60:                                # %if.else.i.224
                                        #   in Loop: Header=BB5_53 Depth=1
	callq	free
	movq	9872(%r14), %rax
	jmp	.LBB5_53
.LBB5_62:                               # %while.end
	xorps	%xmm0, %xmm0
	movups	%xmm0, 9864(%r14)
	movq	9920(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB5_66
# BB#63:                                # %if.then.103
	movq	9888(%r14), %rax
	testq	%rax, %rax
	je	.LBB5_65
# BB#64:                                # %if.then.i.229
	movq	9896(%r14), %rsi
	callq	*%rax
	jmp	.LBB5_66
.LBB5_65:                               # %if.else.i.230
	callq	free
.LBB5_66:                               # %if.end.105
	movq	$0, 9920(%r14)
	movq	9928(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB5_70
# BB#67:                                # %if.then.109
	movq	9888(%r14), %rax
	testq	%rax, %rax
	je	.LBB5_69
# BB#68:                                # %if.then.i.235
	movq	9896(%r14), %rsi
	callq	*%rax
	jmp	.LBB5_70
.LBB5_69:                               # %if.else.i.236
	callq	free
.LBB5_70:                               # %if.end.111
	movq	$0, 9928(%r14)
	movq	9936(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB5_75
	.align	16, 0x90
.LBB5_71:                               # %while.body.118
                                        # =>This Inner Loop Header: Depth=1
	movq	48(%rdi), %rbx
	movq	9888(%r14), %rax
	testq	%rax, %rax
	je	.LBB5_85
# BB#72:                                # %if.then.i.241
                                        #   in Loop: Header=BB5_71 Depth=1
	movq	9896(%r14), %rsi
	callq	*%rax
	jmp	.LBB5_73
	.align	16, 0x90
.LBB5_85:                               # %if.else.i.242
                                        #   in Loop: Header=BB5_71 Depth=1
	callq	free
.LBB5_73:                               # %while.cond.116.backedge
                                        #   in Loop: Header=BB5_71 Depth=1
	testq	%rbx, %rbx
	movq	%rbx, %rdi
	jne	.LBB5_71
# BB#74:                                # %while.end.120
	movq	$0, 9936(%r14)
.LBB5_75:                               # %if.end.122
	movq	9944(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB5_80
	.align	16, 0x90
.LBB5_76:                               # %while.body.128
                                        # =>This Inner Loop Header: Depth=1
	movq	48(%rdi), %rbx
	movq	9888(%r14), %rax
	testq	%rax, %rax
	je	.LBB5_86
# BB#77:                                # %if.then.i.247
                                        #   in Loop: Header=BB5_76 Depth=1
	movq	9896(%r14), %rsi
	callq	*%rax
	jmp	.LBB5_78
	.align	16, 0x90
.LBB5_86:                               # %if.else.i.248
                                        #   in Loop: Header=BB5_76 Depth=1
	callq	free
.LBB5_78:                               # %while.cond.126.backedge
                                        #   in Loop: Header=BB5_76 Depth=1
	testq	%rbx, %rbx
	movq	%rbx, %rdi
	jne	.LBB5_76
# BB#79:                                # %while.end.130
	movq	$0, 9944(%r14)
.LBB5_80:                               # %if.end.132
	movq	9960(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB5_84
# BB#81:                                # %if.then.134
	movq	9888(%r14), %rax
	testq	%rax, %rax
	je	.LBB5_83
# BB#82:                                # %if.then.i.253
	movq	9896(%r14), %rsi
	callq	*%rax
	jmp	.LBB5_84
.LBB5_83:                               # %if.else.i.254
	callq	free
.LBB5_84:                               # %if.end.136
	movq	$0, 9960(%r14)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	dsc_reset, .Lfunc_end5-dsc_reset
	.cfi_endproc

	.globl	dsc_new
	.align	16, 0x90
	.type	dsc_new,@function
dsc_new:                                # @dsc_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp27:
	.cfi_def_cfa_offset 32
.Ltmp28:
	.cfi_offset %rbx, -24
.Ltmp29:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movl	$9968, %edi             # imm = 0x26F0
	callq	malloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB6_1
# BB#2:                                 # %if.end.i
	xorl	%esi, %esi
	movl	$9968, %edx             # imm = 0x26F0
	movq	%rbx, %rdi
	callq	memset
	movq	%r14, 1288(%rbx)
	movl	$1, 9952(%rbx)
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	dsc_init2               # TAILCALL
.LBB6_1:                                # %dsc_init.exit
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end6:
	.size	dsc_new, .Lfunc_end6-dsc_new
	.cfi_endproc

	.globl	dsc_unref
	.align	16, 0x90
	.type	dsc_unref,@function
dsc_unref:                              # @dsc_unref
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	9952(%rbx), %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	jle	.LBB7_6
# BB#1:                                 # %if.end
	decl	%ecx
	movl	%ecx, 9952(%rbx)
	movl	%ecx, %eax
	jne	.LBB7_6
# BB#2:                                 # %if.end.i
	movq	%rbx, %rdi
	callq	dsc_reset
	movq	9888(%rbx), %rax
	testq	%rax, %rax
	je	.LBB7_4
# BB#3:                                 # %if.then.i.i
	movq	9896(%rbx), %rsi
	movq	%rbx, %rdi
	callq	*%rax
	jmp	.LBB7_5
.LBB7_4:                                # %if.else.i.i
	movq	%rbx, %rdi
	callq	free
.LBB7_5:                                # %return
	xorl	%eax, %eax
.LBB7_6:                                # %return
	popq	%rbx
	retq
.Lfunc_end7:
	.size	dsc_unref, .Lfunc_end7-dsc_unref
	.cfi_endproc

	.globl	dsc_set_length
	.align	16, 0x90
	.type	dsc_set_length,@function
dsc_set_length:                         # @dsc_set_length
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 1320(%rdi)
	retq
.Lfunc_end8:
	.size	dsc_set_length, .Lfunc_end8-dsc_set_length
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI9_0:
	.quad	255                     # 0xff
	.quad	255                     # 0xff
	.text
	.globl	dsc_scan_data
	.align	16, 0x90
	.type	dsc_scan_data,@function
dsc_scan_data:                          # @dsc_scan_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp33:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp34:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp35:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp36:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 56
	subq	$440, %rsp              # imm = 0x1B8
.Ltmp38:
	.cfi_def_cfa_offset 496
.Ltmp39:
	.cfi_offset %rbx, -56
.Ltmp40:
	.cfi_offset %r12, -48
.Ltmp41:
	.cfi_offset %r13, -40
.Ltmp42:
	.cfi_offset %r14, -32
.Ltmp43:
	.cfi_offset %r15, -24
.Ltmp44:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %r13
	movl	$-1, %ebx
	testq	%r13, %r13
	je	.LBB9_1624
# BB#1:                                 # %if.end
	movl	$1, %ebx
	cmpl	$1, 1296(%r13)
	je	.LBB9_1624
# BB#2:                                 # %if.end.3
	movl	$0, 1296(%r13)
	xorl	%ebx, %ebx
	cmpl	$0, 9568(%r13)
	jne	.LBB9_1624
# BB#3:                                 # %if.end.6
	testl	%r15d, %r15d
	jne	.LBB9_5
# BB#4:                                 # %if.then.8
	movl	$1, 9568(%r13)
	xorl	%r15d, %r15d
.LBB9_5:                                # %do.body.preheader
	leaq	1064(%r13), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	leaq	1088(%r13), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	leaq	1104(%r13), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	leaq	1136(%r13), %rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	leaq	1120(%r13), %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	leaq	1072(%r13), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	leaq	9604(%r13), %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	leaq	1208(%r13), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leaq	1180(%r13), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	leaq	1224(%r13), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leaq	1184(%r13), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	leaq	9928(%r13), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leaq	1216(%r13), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	leaq	9920(%r13), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	leaq	1360(%r13), %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	xorl	%ebx, %ebx
	jmp	.LBB9_6
.LBB9_1614:                             # %if.end.1540.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	9556(%r13), %eax
	addq	9560(%r13), %rax
	movq	%rax, 1152(%r13)
	.align	16, 0x90
.LBB9_189:                              # %while.cond.preheader
                                        #   Parent Loop BB9_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_258 Depth 3
                                        #         Child Loop BB9_259 Depth 4
                                        #           Child Loop BB9_1338 Depth 5
                                        #           Child Loop BB9_1345 Depth 5
                                        #         Child Loop BB9_902 Depth 4
                                        #         Child Loop BB9_908 Depth 4
                                        #       Child Loop BB9_1364 Depth 3
                                        #       Child Loop BB9_1133 Depth 3
                                        #         Child Loop BB9_1137 Depth 4
                                        #       Child Loop BB9_1124 Depth 3
                                        #         Child Loop BB9_1126 Depth 4
                                        #       Child Loop BB9_825 Depth 3
                                        #         Child Loop BB9_829 Depth 4
                                        #       Child Loop BB9_818 Depth 3
                                        #         Child Loop BB9_820 Depth 4
	movq	%r13, %rdi
	callq	dsc_read_line
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jle	.LBB9_1620
# BB#190:                               # %while.body
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpl	$1, 1296(%r13)
	je	.LBB9_1620
# BB#191:                               # %if.end.72
                                        #   in Loop: Header=BB9_189 Depth=2
	movq	1320(%r13), %rax
	testq	%rax, %rax
	je	.LBB9_193
# BB#192:                               # %land.lhs.true
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	9556(%r13), %ecx
	addq	9560(%r13), %rcx
	xorl	%ebx, %ebx
	cmpq	%rax, %rcx
	ja	.LBB9_1624
.LBB9_193:                              # %if.end.82
                                        #   in Loop: Header=BB9_189 Depth=2
	movq	1304(%r13), %rax
	testq	%rax, %rax
	je	.LBB9_195
# BB#194:                               # %land.lhs.true.84
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	9556(%r13), %ecx
	addq	9560(%r13), %rcx
	xorl	%ebx, %ebx
	cmpq	%rax, %rcx
	ja	.LBB9_1624
.LBB9_195:                              # %if.end.93
                                        #   in Loop: Header=BB9_189 Depth=2
	xorl	%ebx, %ebx
	cmpl	$0, 9568(%r13)
	jne	.LBB9_1624
# BB#196:                               # %if.end.97
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpl	$0, 1328(%r13)
	jne	.LBB9_189
# BB#197:                               # %if.end.100
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpl	$0, 1336(%r13)
	jne	.LBB9_189
# BB#198:                               # %if.end.103
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.10, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$11, %rcx
	ja	.LBB9_208
# BB#199:                               # %land.lhs.true.108
                                        #   in Loop: Header=BB9_189 Depth=2
	movq	9576(%r13), %rdi
	cmpq	$3, %rcx
	ja	.LBB9_207
# BB#200:                               # %cond.true.112
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rdi), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_209
# BB#201:                               # %cond.true.112
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_209
# BB#202:                               # %if.then.123
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rdi), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_209
# BB#203:                               # %if.then.123
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_209
# BB#204:                               # %if.then.133
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rdi), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_209
# BB#205:                               # %if.then.133
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_209
# BB#206:                               # %if.then.143
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rdi), %eax
	addl	$-101, %eax
	jmp	.LBB9_209
.LBB9_208:                              # %cond.false.157
                                        #   in Loop: Header=BB9_189 Depth=2
	movq	9576(%r13), %rdi
	movl	$.L.str.10, %esi
	movl	$12, %edx
	callq	strncmp
	jmp	.LBB9_209
.LBB9_207:                              # %cond.false.152
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.10, %esi
	callq	strcmp
.LBB9_209:                              # %cond.end.160
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_189
# BB#210:                               # %if.end.165
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.11, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$13, %rcx
	ja	.LBB9_220
# BB#211:                               # %land.lhs.true.175
                                        #   in Loop: Header=BB9_189 Depth=2
	movq	9576(%r13), %rdi
	cmpq	$3, %rcx
	ja	.LBB9_219
# BB#212:                               # %cond.true.179
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rdi), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_221
# BB#213:                               # %cond.true.179
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_221
# BB#214:                               # %if.then.194
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rdi), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_221
# BB#215:                               # %if.then.194
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_221
# BB#216:                               # %if.then.204
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rdi), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_221
# BB#217:                               # %if.then.204
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_221
# BB#218:                               # %if.then.214
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rdi), %eax
	addl	$-101, %eax
	jmp	.LBB9_221
.LBB9_220:                              # %cond.false.228
                                        #   in Loop: Header=BB9_189 Depth=2
	movq	9576(%r13), %rdi
	movl	$.L.str.11, %esi
	movl	$14, %edx
	callq	strncmp
	jmp	.LBB9_221
.LBB9_219:                              # %cond.false.223
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.11, %esi
	callq	strcmp
.LBB9_221:                              # %cond.end.231
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_189
# BB#222:                               # %if.end.236
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.12, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$12, %rcx
	ja	.LBB9_232
# BB#223:                               # %land.lhs.true.246
                                        #   in Loop: Header=BB9_189 Depth=2
	movq	9576(%r13), %rdi
	cmpq	$3, %rcx
	ja	.LBB9_231
# BB#224:                               # %cond.true.250
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rdi), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_233
# BB#225:                               # %cond.true.250
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_233
# BB#226:                               # %if.then.265
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rdi), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_233
# BB#227:                               # %if.then.265
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_233
# BB#228:                               # %if.then.275
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rdi), %eax
	addl	$-69, %eax
	cmpq	$3, %rcx
	jb	.LBB9_233
# BB#229:                               # %if.then.275
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_233
# BB#230:                               # %if.then.285
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rdi), %eax
	addl	$-110, %eax
	jmp	.LBB9_233
.LBB9_232:                              # %cond.false.299
                                        #   in Loop: Header=BB9_189 Depth=2
	movq	9576(%r13), %rdi
	movl	$.L.str.12, %esi
	movl	$13, %edx
	callq	strncmp
	jmp	.LBB9_233
.LBB9_231:                              # %cond.false.294
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.12, %esi
	callq	strcmp
.LBB9_233:                              # %cond.end.302
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_189
# BB#234:                               # %if.end.307
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.13, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$8, %rcx
	ja	.LBB9_244
# BB#235:                               # %land.lhs.true.317
                                        #   in Loop: Header=BB9_189 Depth=2
	movq	9576(%r13), %rdi
	cmpq	$3, %rcx
	ja	.LBB9_243
# BB#236:                               # %cond.true.321
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rdi), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_245
# BB#237:                               # %cond.true.321
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_245
# BB#238:                               # %if.then.336
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rdi), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_245
# BB#239:                               # %if.then.336
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_245
# BB#240:                               # %if.then.346
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rdi), %eax
	addl	$-69, %eax
	cmpq	$3, %rcx
	jb	.LBB9_245
# BB#241:                               # %if.then.346
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_245
# BB#242:                               # %if.then.356
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rdi), %eax
	addl	$-110, %eax
	jmp	.LBB9_245
.LBB9_244:                              # %cond.false.370
                                        #   in Loop: Header=BB9_189 Depth=2
	movq	9576(%r13), %rdi
	movl	$.L.str.13, %esi
	movl	$9, %edx
	callq	strncmp
	jmp	.LBB9_245
.LBB9_243:                              # %cond.false.365
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.13, %esi
	callq	strcmp
.LBB9_245:                              # %cond.end.373
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_189
# BB#246:                               # %if.end.378
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.14, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$10, %rcx
	ja	.LBB9_256
# BB#247:                               # %land.lhs.true.388
                                        #   in Loop: Header=BB9_189 Depth=2
	movq	9576(%r13), %rdi
	cmpq	$3, %rcx
	ja	.LBB9_255
# BB#248:                               # %cond.true.392
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rdi), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_257
# BB#249:                               # %cond.true.392
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_257
# BB#250:                               # %if.then.407
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rdi), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_257
# BB#251:                               # %if.then.407
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_257
# BB#252:                               # %if.then.417
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rdi), %eax
	addl	$-69, %eax
	cmpq	$3, %rcx
	jb	.LBB9_257
# BB#253:                               # %if.then.417
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_257
# BB#254:                               # %if.then.427
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rdi), %eax
	addl	$-110, %eax
	jmp	.LBB9_257
.LBB9_256:                              # %cond.false.441
                                        #   in Loop: Header=BB9_189 Depth=2
	movq	9576(%r13), %rdi
	movl	$.L.str.14, %esi
	movl	$11, %edx
	callq	strncmp
	jmp	.LBB9_257
.LBB9_255:                              # %cond.false.436
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.14, %esi
	callq	strcmp
.LBB9_257:                              # %cond.end.444
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_258
	jmp	.LBB9_189
.LBB9_1558:                             # %if.then.1220.i.964
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	9556(%r13), %eax
	addq	9560(%r13), %rax
	movl	9584(%r13), %edx
	subq	%rdx, %rax
	decl	%ecx
	movq	1160(%r13), %rdx
	leaq	(%rcx,%rcx,8), %rcx
	movq	%rax, 24(%rdx,%rcx,8)
.LBB9_258:                              # %do.body.450thread-pre-split
                                        #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_189 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_259 Depth 4
                                        #           Child Loop BB9_1338 Depth 5
                                        #           Child Loop BB9_1345 Depth 5
                                        #         Child Loop BB9_902 Depth 4
                                        #         Child Loop BB9_908 Depth 4
	movl	1300(%r13), %eax
	jmp	.LBB9_259
.LBB9_890:                              # %if.then.217.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$12, 1300(%r13)
	movl	$12, %eax
.LBB9_259:                              # %do.body.450
                                        #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_189 Depth=2
                                        #       Parent Loop BB9_258 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB9_1338 Depth 5
                                        #           Child Loop BB9_1345 Depth 5
	leal	-1(%rax), %ecx
	cmpl	$12, %ecx
	ja	.LBB9_189
# BB#260:                               # %do.body.450
                                        #   in Loop: Header=BB9_259 Depth=4
	jmpq	*.LJTI9_0(,%rcx,8)
.LBB9_261:                              # %sw.bb.453
                                        #   in Loop: Header=BB9_259 Depth=4
	movq	9576(%r13), %rbx
	movl	$0, 1296(%r13)
	cmpl	$2, %eax
	jne	.LBB9_279
# BB#262:                               # %if.then.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	(%rbx), %ebp
	cmpl	$10, %ebp
	je	.LBB9_189
# BB#263:                               # %if.then.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	%bpl, %eax
	cmpl	$13, %eax
	je	.LBB9_189
# BB#264:                               # %if.else.i.164
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.67, %edi
	callq	strlen
	cmpq	$13, %rax
	ja	.LBB9_274
# BB#265:                               # %land.lhs.true.i.165
                                        #   in Loop: Header=BB9_259 Depth=4
	cmpq	$3, %rax
	ja	.LBB9_273
# BB#266:                               # %cond.true.14.i
                                        #   in Loop: Header=BB9_259 Depth=4
	addl	$-37, %ebp
	jne	.LBB9_276
# BB#267:                               # %cond.true.14.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testq	%rax, %rax
	je	.LBB9_276
# BB#268:                               # %if.then.25.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	1(%rbx), %ebp
	addl	$-37, %ebp
	cmpq	$2, %rax
	jb	.LBB9_276
# BB#269:                               # %if.then.25.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%ebp, %ebp
	jne	.LBB9_276
# BB#270:                               # %if.then.35.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	2(%rbx), %ebp
	addl	$-66, %ebp
	cmpq	$3, %rax
	jb	.LBB9_276
# BB#271:                               # %if.then.35.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%ebp, %ebp
	jne	.LBB9_276
# BB#272:                               # %if.then.45.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	3(%rbx), %ebp
	addl	$-101, %ebp
	jmp	.LBB9_276
.LBB9_311:                              # %sw.bb.455
                                        #   in Loop: Header=BB9_259 Depth=4
	movq	9576(%r13), %rbp
	movl	$0, 1296(%r13)
	movzbl	(%rbp), %ebx
	cmpl	$4, %eax
	jne	.LBB9_328
# BB#312:                               # %if.then.i.187
                                        #   in Loop: Header=BB9_259 Depth=4
	cmpl	$10, %ebx
	je	.LBB9_189
# BB#313:                               # %if.then.i.187
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	%bl, %eax
	cmpl	$13, %eax
	je	.LBB9_189
# BB#314:                               # %if.else.i.190
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.68, %edi
	callq	strlen
	cmpq	$14, %rax
	ja	.LBB9_324
# BB#315:                               # %land.lhs.true.i.192
                                        #   in Loop: Header=BB9_259 Depth=4
	cmpq	$3, %rax
	ja	.LBB9_323
# BB#316:                               # %cond.true.14.i.198
                                        #   in Loop: Header=BB9_259 Depth=4
	addl	$-37, %ebx
	jne	.LBB9_326
# BB#317:                               # %cond.true.14.i.198
                                        #   in Loop: Header=BB9_259 Depth=4
	testq	%rax, %rax
	je	.LBB9_326
# BB#318:                               # %if.then.25.i.205
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	1(%rbp), %ebx
	addl	$-37, %ebx
	cmpq	$2, %rax
	jb	.LBB9_326
# BB#319:                               # %if.then.25.i.205
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%ebx, %ebx
	jne	.LBB9_326
# BB#320:                               # %if.then.35.i.212
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	2(%rbp), %ebx
	addl	$-66, %ebx
	cmpq	$3, %rax
	jb	.LBB9_326
# BB#321:                               # %if.then.35.i.212
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%ebx, %ebx
	jne	.LBB9_326
# BB#322:                               # %if.then.45.i.216
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	3(%rbp), %ebx
	addl	$-101, %ebx
	jmp	.LBB9_326
.LBB9_435:                              # %sw.bb.457
                                        #   in Loop: Header=BB9_259 Depth=4
	movq	9576(%r13), %r12
	movl	$0, 1296(%r13)
	cmpl	$6, %eax
	jne	.LBB9_462
# BB#436:                               # %if.then.i.270
                                        #   in Loop: Header=BB9_259 Depth=4
	movq	%r12, %rdi
	callq	dsc_is_section
	testl	%eax, %eax
	je	.LBB9_450
# BB#437:                               # %land.lhs.true.i.271
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.69, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$12, %rcx
	ja	.LBB9_447
# BB#438:                               # %land.lhs.true.4.i
                                        #   in Loop: Header=BB9_259 Depth=4
	cmpq	$3, %rcx
	ja	.LBB9_446
# BB#439:                               # %cond.true.7.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_448
# BB#440:                               # %cond.true.7.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_448
# BB#441:                               # %if.then.16.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_448
# BB#442:                               # %if.then.16.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_448
# BB#443:                               # %if.then.26.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	2(%r12), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_448
# BB#444:                               # %if.then.26.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_448
# BB#445:                               # %if.then.36.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	3(%r12), %eax
	addl	$-101, %eax
	jmp	.LBB9_448
.LBB9_618:                              # %sw.bb.459
                                        #   in Loop: Header=BB9_259 Depth=4
	movq	9576(%r13), %r12
	movl	$0, 1296(%r13)
	movzbl	(%r12), %ebx
	cmpl	$8, %eax
	jne	.LBB9_636
# BB#619:                               # %if.then.i.331
                                        #   in Loop: Header=BB9_259 Depth=4
	cmpl	$10, %ebx
	je	.LBB9_189
# BB#620:                               # %if.then.i.331
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	%bl, %eax
	cmpl	$13, %eax
	je	.LBB9_189
# BB#621:                               # %if.else.i.334
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.70, %edi
	callq	strlen
	cmpq	$11, %rax
	ja	.LBB9_631
# BB#622:                               # %land.lhs.true.i.336
                                        #   in Loop: Header=BB9_259 Depth=4
	cmpq	$3, %rax
	ja	.LBB9_630
# BB#623:                               # %cond.true.14.i.342
                                        #   in Loop: Header=BB9_259 Depth=4
	addl	$-37, %ebx
	jne	.LBB9_633
# BB#624:                               # %cond.true.14.i.342
                                        #   in Loop: Header=BB9_259 Depth=4
	testq	%rax, %rax
	je	.LBB9_633
# BB#625:                               # %if.then.25.i.349
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	1(%r12), %ebx
	addl	$-37, %ebx
	cmpq	$2, %rax
	jb	.LBB9_633
# BB#626:                               # %if.then.25.i.349
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%ebx, %ebx
	jne	.LBB9_633
# BB#627:                               # %if.then.35.i.356
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	2(%r12), %ebx
	addl	$-66, %ebx
	cmpq	$3, %rax
	jb	.LBB9_633
# BB#628:                               # %if.then.35.i.356
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%ebx, %ebx
	jne	.LBB9_633
# BB#629:                               # %if.then.45.i.360
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	3(%r12), %ebx
	addl	$-101, %ebx
	jmp	.LBB9_633
.LBB9_838:                              # %sw.bb.461
                                        #   in Loop: Header=BB9_259 Depth=4
	movq	9576(%r13), %rbp
	movl	$0, 1296(%r13)
	cmpl	$10, %eax
	jne	.LBB9_852
# BB#839:                               # %if.then.i.571
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.71, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$6, %rcx
	ja	.LBB9_849
# BB#840:                               # %land.lhs.true.i.572
                                        #   in Loop: Header=BB9_259 Depth=4
	cmpq	$3, %rcx
	ja	.LBB9_848
# BB#841:                               # %cond.true.5.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_850
# BB#842:                               # %cond.true.5.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_850
# BB#843:                               # %if.then.14.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_850
# BB#844:                               # %if.then.14.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_850
# BB#845:                               # %if.then.24.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	2(%rbp), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB9_850
# BB#846:                               # %if.then.24.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_850
# BB#847:                               # %if.then.34.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	3(%rbp), %eax
	addl	$-97, %eax
	jmp	.LBB9_850
.LBB9_1323:                             # %sw.bb.463
                                        #   in Loop: Header=BB9_259 Depth=4
	movq	9576(%r13), %rbx
	cmpq	$0, 1152(%r13)
	je	.LBB9_1382
# BB#1324:                              # %land.lhs.true.i.761
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.28, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$9, %rcx
	ja	.LBB9_1334
# BB#1325:                              # %land.lhs.true.2.i
                                        #   in Loop: Header=BB9_259 Depth=4
	cmpq	$3, %rcx
	ja	.LBB9_1333
# BB#1326:                              # %cond.true.5.i.768
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1335
# BB#1327:                              # %cond.true.5.i.768
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1335
# BB#1328:                              # %if.then.i.771
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	1(%rbx), %eax
	addl	$-33, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1335
# BB#1329:                              # %if.then.i.771
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1335
# BB#1330:                              # %if.then.23.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	2(%rbx), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1335
# BB#1331:                              # %if.then.23.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1335
# BB#1332:                              # %if.then.33.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	3(%rbx), %eax
	addl	$-83, %eax
	jmp	.LBB9_1335
.LBB9_279:                              # %if.end.77.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.67, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$13, %rcx
	ja	.LBB9_289
# BB#280:                               # %land.lhs.true.87.i
                                        #   in Loop: Header=BB9_259 Depth=4
	cmpq	$3, %rcx
	ja	.LBB9_288
# BB#281:                               # %cond.true.91.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_290
# BB#282:                               # %cond.true.91.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_290
# BB#283:                               # %if.then.105.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_290
# BB#284:                               # %if.then.105.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_290
# BB#285:                               # %if.then.115.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	2(%rbx), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_290
# BB#286:                               # %if.then.115.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_290
# BB#287:                               # %if.then.125.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	3(%rbx), %eax
	addl	$-101, %eax
	jmp	.LBB9_290
.LBB9_328:                              # %if.end.72.i
                                        #   in Loop: Header=BB9_259 Depth=4
	cmpl	$37, %ebx
	jne	.LBB9_434
# BB#329:                               # %lor.lhs.false.77.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	1(%rbp), %eax
	cmpl	$37, %eax
	jne	.LBB9_434
# BB#330:                               # %if.else.83.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.67, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$13, %rcx
	ja	.LBB9_337
# BB#331:                               # %land.lhs.true.93.i
                                        #   in Loop: Header=BB9_259 Depth=4
	cmpq	$3, %rcx
	ja	.LBB9_336
# BB#332:                               # %cond.true.97.i
                                        #   in Loop: Header=BB9_259 Depth=4
	cmpq	$2, %rcx
	jb	.LBB9_434
# BB#333:                               # %if.then.121.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	2(%rbp), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_338
# BB#334:                               # %if.then.121.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_338
# BB#335:                               # %if.then.131.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	3(%rbp), %eax
	addl	$-101, %eax
	jmp	.LBB9_338
.LBB9_849:                              # %cond.false.43.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.71, %esi
	movl	$7, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_850
.LBB9_447:                              # %cond.false.45.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.69, %esi
	movl	$13, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_448
.LBB9_1334:                             # %cond.false.42.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.28, %esi
	movl	$10, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB9_1335
.LBB9_289:                              # %cond.false.138.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.67, %esi
	movl	$14, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB9_290
.LBB9_848:                              # %cond.false.i.581
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.71, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_850:                              # %cond.end.45.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	je	.LBB9_851
# BB#860:                               # %if.else.i.584
                                        #   in Loop: Header=BB9_259 Depth=4
	movq	152(%rsp), %rax         # 8-byte Reload
	cmpq	$0, (%rax)
	movq	%rax, %rbx
	jne	.LBB9_866
# BB#861:                               # %if.else.56.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movq	144(%rsp), %rax         # 8-byte Reload
	cmpq	$0, (%rax)
	movq	%rax, %rbx
	jne	.LBB9_866
# BB#862:                               # %if.else.61.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movq	136(%rsp), %rax         # 8-byte Reload
	cmpq	$0, (%rax)
	movq	%rax, %rbx
	jne	.LBB9_866
# BB#863:                               # %if.else.66.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movq	128(%rsp), %rax         # 8-byte Reload
	cmpq	$0, (%rax)
	movq	%rax, %rbx
	jne	.LBB9_866
# BB#864:                               # %if.else.71.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movq	120(%rsp), %rax         # 8-byte Reload
	cmpq	$0, (%rax)
	movq	80(%rsp), %rbx          # 8-byte Reload
	je	.LBB9_866
# BB#865:                               # %select.mid
                                        #   in Loop: Header=BB9_259 Depth=4
	movq	120(%rsp), %rbx         # 8-byte Reload
.LBB9_866:                              # %if.end.81.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	9556(%r13), %eax
	movl	9584(%r13), %ecx
	addq	9560(%r13), %rax
	subq	%rcx, %rax
	movq	%rax, (%rbx)
	movl	$.L.str.72, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$8, %rcx
	ja	.LBB9_876
# BB#867:                               # %land.lhs.true.94.i
                                        #   in Loop: Header=BB9_259 Depth=4
	cmpq	$3, %rcx
	ja	.LBB9_875
# BB#868:                               # %cond.true.98.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_877
# BB#869:                               # %cond.true.98.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_877
# BB#870:                               # %if.then.112.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_877
# BB#871:                               # %if.then.112.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_877
# BB#872:                               # %if.then.122.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	2(%rbp), %eax
	addl	$-84, %eax
	cmpq	$3, %rcx
	jb	.LBB9_877
# BB#873:                               # %if.then.122.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_877
# BB#874:                               # %if.then.132.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	3(%rbp), %eax
	addl	$-114, %eax
	jmp	.LBB9_877
.LBB9_876:                              # %cond.false.145.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.72, %esi
	movl	$9, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_877
.LBB9_631:                              # %cond.false.54.i.364
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.70, %esi
	movl	$12, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_632
.LBB9_446:                              # %cond.false.i.277
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.69, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_448:                              # %cond.end.47.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	je	.LBB9_450
# BB#449:                               # %if.then.51.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$8, 1300(%r13)
	movl	$8, %eax
	jmp	.LBB9_259
.LBB9_337:                              # %cond.false.144.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.67, %esi
	movl	$14, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_338
.LBB9_875:                              # %cond.false.141.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.72, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_877:                              # %cond.end.147.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	je	.LBB9_890
# BB#878:                               # %lor.lhs.false.i.604
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.73, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$4, %rcx
	ja	.LBB9_888
# BB#879:                               # %land.lhs.true.160.i
                                        #   in Loop: Header=BB9_259 Depth=4
	cmpq	$3, %rcx
	ja	.LBB9_887
# BB#880:                               # %cond.true.164.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_889
# BB#881:                               # %cond.true.164.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_889
# BB#882:                               # %if.then.178.i.612
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_889
# BB#883:                               # %if.then.178.i.612
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_889
# BB#884:                               # %if.then.188.i.618
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	2(%rbp), %eax
	addl	$-69, %eax
	cmpq	$3, %rcx
	jb	.LBB9_889
# BB#885:                               # %if.then.188.i.618
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_889
# BB#886:                               # %if.then.198.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	3(%rbp), %eax
	addl	$-79, %eax
	jmp	.LBB9_889
.LBB9_888:                              # %cond.false.211.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.73, %esi
	movl	$5, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_889
.LBB9_1333:                             # %cond.false.i.774
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB9_1335:                             # %cond.end.44.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1382
# BB#1336:                              # %if.then.48.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movq	9576(%r13), %r12
	movq	$0, 1152(%r13)
	movl	9584(%r13), %eax
	xorl	%ebp, %ebp
	testl	%eax, %eax
	movq	%r12, %rsi
	je	.LBB9_1337
.LBB9_1338:                             # %land.rhs.i.i.779
                                        #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_189 Depth=2
                                        #       Parent Loop BB9_258 Depth=3
                                        #         Parent Loop BB9_259 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movzbl	(%rsi), %ecx
	cmpl	$32, %ecx
	je	.LBB9_1341
# BB#1339:                              # %land.rhs.i.i.779
                                        #   in Loop: Header=BB9_1338 Depth=5
	movzbl	%cl, %ecx
	cmpl	$9, %ecx
	jne	.LBB9_1340
.LBB9_1341:                             # %while.body.i.i.783
                                        #   in Loop: Header=BB9_1338 Depth=5
	incq	%rsi
	decl	%eax
	jne	.LBB9_1338
	jmp	.LBB9_1342
.LBB9_887:                              # %cond.false.207.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.73, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_889:                              # %cond.end.213.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	je	.LBB9_890
	jmp	.LBB9_891
.LBB9_288:                              # %cond.false.134.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.67, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB9_290:                              # %cond.end.140.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	je	.LBB9_310
# BB#291:                               # %if.else.145.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movq	%rbx, %rdi
	callq	dsc_is_section
	testl	%eax, %eax
	je	.LBB9_294
# BB#292:                               # %if.then.147.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	9556(%r13), %eax
	movl	9584(%r13), %ecx
	addq	9560(%r13), %rax
	subq	%rcx, %rax
	movq	%rax, 1088(%r13)
	jmp	.LBB9_293
.LBB9_274:                              # %cond.false.54.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.67, %esi
	movl	$14, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB9_275
.LBB9_324:                              # %cond.false.54.i.220
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.68, %esi
	movl	$15, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_325
.LBB9_630:                              # %cond.false.i.362
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.70, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_632:                              # %cond.end.56.i.367
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	%eax, %ebx
.LBB9_633:                              # %cond.end.56.i.367
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%ebx, %ebx
	je	.LBB9_634
# BB#635:                               # %if.else.70.i.376
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$10, 1300(%r13)
	movl	$10, %eax
	jmp	.LBB9_259
.LBB9_336:                              # %cond.false.140.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.67, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_338:                              # %cond.end.146.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	je	.LBB9_434
# BB#339:                               # %if.else.151.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.68, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$14, %rcx
	ja	.LBB9_349
# BB#340:                               # %land.lhs.true.161.i
                                        #   in Loop: Header=BB9_259 Depth=4
	cmpq	$3, %rcx
	ja	.LBB9_348
# BB#341:                               # %cond.true.165.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_350
# BB#342:                               # %cond.true.165.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_350
# BB#343:                               # %if.then.179.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_350
# BB#344:                               # %if.then.179.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_350
# BB#345:                               # %if.then.189.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	2(%rbp), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_350
# BB#346:                               # %if.then.189.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_350
# BB#347:                               # %if.then.199.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	3(%rbp), %eax
	addl	$-101, %eax
	jmp	.LBB9_350
.LBB9_349:                              # %cond.false.212.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.68, %esi
	movl	$15, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_350
.LBB9_348:                              # %cond.false.208.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.68, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_350:                              # %cond.end.214.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	je	.LBB9_434
# BB#351:                               # %if.else.219.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movq	%rbp, %rdi
	callq	dsc_is_section
	testl	%eax, %eax
	je	.LBB9_354
# BB#352:                               # %if.then.221.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	9556(%r13), %eax
	movl	9584(%r13), %ecx
	addq	9560(%r13), %rax
	subq	%rcx, %rax
	movq	%rax, 1104(%r13)
	jmp	.LBB9_353
.LBB9_1337:                             #   in Loop: Header=BB9_259 Depth=4
	movq	%r12, %rsi
	jmp	.LBB9_1342
.LBB9_1340:                             #   in Loop: Header=BB9_259 Depth=4
	movl	%eax, %ebp
.LBB9_1342:                             # %while.end.i.i.788
                                        #   in Loop: Header=BB9_259 Depth=4
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	dsc_alloc_string
	testq	%rax, %rax
	movl	$0, %ecx
	je	.LBB9_1350
# BB#1343:                              # %for.cond.preheader.i.i.790
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%ebp, %ebp
	je	.LBB9_1349
# BB#1344:                              # %for.body.lr.ph.i.i.791
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	%ebp, %ecx
	xorl	%edx, %edx
.LBB9_1345:                             # %for.body.i.i.794
                                        #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_189 Depth=2
                                        #       Parent Loop BB9_258 Depth=3
                                        #         Parent Loop BB9_259 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movzbl	(%rax,%rdx), %esi
	cmpl	$10, %esi
	je	.LBB9_1347
# BB#1346:                              # %for.body.i.i.794
                                        #   in Loop: Header=BB9_1345 Depth=5
	movzbl	%sil, %esi
	cmpl	$13, %esi
	je	.LBB9_1347
# BB#1348:                              # %for.inc.i.i.799
                                        #   in Loop: Header=BB9_1345 Depth=5
	incq	%rdx
	cmpq	%rcx, %rdx
	jb	.LBB9_1345
	jmp	.LBB9_1349
.LBB9_1347:                             # %if.then.21.i.i.796
                                        #   in Loop: Header=BB9_259 Depth=4
	movb	$0, (%rax,%rdx)
.LBB9_1349:                             #   in Loop: Header=BB9_259 Depth=4
	movq	%rax, %rcx
.LBB9_1350:                             # %dsc_add_line.exit.i.802
                                        #   in Loop: Header=BB9_259 Depth=4
	movq	%rcx, 1048(%r13)
	movl	$.L.str.28, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$9, %rcx
	ja	.LBB9_1360
# BB#1351:                              # %land.lhs.true.63.i
                                        #   in Loop: Header=BB9_259 Depth=4
	cmpq	$3, %rcx
	ja	.LBB9_1359
# BB#1352:                              # %cond.true.67.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1361
# BB#1353:                              # %cond.true.67.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1361
# BB#1354:                              # %if.then.81.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	1(%r12), %eax
	addl	$-33, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1361
# BB#1355:                              # %if.then.81.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1361
# BB#1356:                              # %if.then.91.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	2(%r12), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1361
# BB#1357:                              # %if.then.91.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1361
# BB#1358:                              # %if.then.101.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	3(%r12), %eax
	addl	$-83, %eax
	jmp	.LBB9_1361
.LBB9_1360:                             # %cond.false.114.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.28, %esi
	movl	$10, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_1361
.LBB9_273:                              # %cond.false.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.67, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB9_275:                              # %cond.end.56.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	%eax, %ebp
.LBB9_276:                              # %cond.end.56.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%ebp, %ebp
	je	.LBB9_277
.LBB9_293:                              # %if.else.75.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$4, 1300(%r13)
	movl	$4, %eax
	jmp	.LBB9_259
.LBB9_323:                              # %cond.false.i.218
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.68, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_325:                              # %cond.end.56.i.223
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	%eax, %ebx
.LBB9_326:                              # %cond.end.56.i.223
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%ebx, %ebx
	je	.LBB9_327
.LBB9_353:                              # %if.else.70.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$6, 1300(%r13)
	movl	$6, %eax
	jmp	.LBB9_259
.LBB9_1359:                             # %cond.false.110.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.28, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_1361:                             # %cond.end.116.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	je	.LBB9_1362
.LBB9_1382:                             # %if.end.207.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$0, 1296(%r13)
	cmpl	$12, 1300(%r13)
	je	.LBB9_1383
# BB#1412:                              # %if.end.392.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.34, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$2, %rcx
	ja	.LBB9_1418
# BB#1413:                              # %cond.true.406.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	movq	160(%rsp), %rdi         # 8-byte Reload
	je	.LBB9_1419
# BB#1414:                              # %cond.true.406.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1419
# BB#1415:                              # %if.then.420.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1419
# BB#1416:                              # %if.then.420.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1419
# BB#1417:                              # %if.then.430.i.883
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	2(%rbx), %eax
	addl	$-43, %eax
	jmp	.LBB9_1419
.LBB9_1418:                             # %cond.false.453.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.34, %esi
	movl	$3, %edx
	movq	%rbx, %rdi
	callq	strncmp
	movq	160(%rsp), %rdi         # 8-byte Reload
.LBB9_1419:                             # %cond.end.455.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$1, %ebp
	testl	%eax, %eax
	movq	%rdi, %r12
	je	.LBB9_1421
# BB#1420:                              # %if.else.460.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movslq	9584(%r13), %rdx
	cmpq	$256, %rdx              # imm = 0x100
	movl	$256, %eax              # imm = 0x100
	cmovaq	%rax, %rdx
	movq	9576(%r13), %rsi
	movq	%rdi, %rbp
	callq	memcpy
	movq	%rbp, %rdi
	xorl	%ebp, %ebp
	movq	%rbx, %r12
.LBB9_1421:                             # %if.end.461.i.887
                                        #   in Loop: Header=BB9_259 Depth=4
	movq	%rdi, 160(%rsp)         # 8-byte Spill
	movzbl	(%r12), %eax
	cmpl	$37, %eax
	jne	.LBB9_1614
# BB#1422:                              # %lor.lhs.false.i.888
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	1(%r12), %eax
	cmpl	$37, %eax
	jne	.LBB9_1614
# BB#1423:                              # %if.else.471.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.73, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$4, %rcx
	ja	.LBB9_1433
# BB#1424:                              # %land.lhs.true.481.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movq	9576(%r13), %rdi
	cmpq	$3, %rcx
	ja	.LBB9_1432
# BB#1425:                              # %cond.true.485.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	(%rdi), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1434
# BB#1426:                              # %cond.true.485.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1434
# BB#1427:                              # %if.then.500.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	1(%rdi), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1434
# BB#1428:                              # %if.then.500.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1434
# BB#1429:                              # %if.then.510.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	2(%rdi), %eax
	addl	$-69, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1434
# BB#1430:                              # %if.then.510.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1434
# BB#1431:                              # %if.then.520.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	3(%rdi), %eax
	addl	$-79, %eax
	jmp	.LBB9_1434
.LBB9_1433:                             # %cond.false.534.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movq	9576(%r13), %rdi
	movl	$.L.str.73, %esi
	movl	$5, %edx
	callq	strncmp
	jmp	.LBB9_1434
.LBB9_1432:                             # %cond.false.529.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.73, %esi
	callq	strcmp
.LBB9_1434:                             # %cond.end.537.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	je	.LBB9_1435
# BB#1436:                              # %if.else.543.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.72, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$8, %rcx
	ja	.LBB9_1446
# BB#1437:                              # %land.lhs.true.553.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movq	9576(%r13), %rdi
	cmpq	$3, %rcx
	ja	.LBB9_1445
# BB#1438:                              # %cond.true.557.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	(%rdi), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1447
# BB#1439:                              # %cond.true.557.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1447
# BB#1440:                              # %if.then.572.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	1(%rdi), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1447
# BB#1441:                              # %if.then.572.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1447
# BB#1442:                              # %if.then.582.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	2(%rdi), %eax
	addl	$-84, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1447
# BB#1443:                              # %if.then.582.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1447
# BB#1444:                              # %if.then.592.i.908
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	3(%rdi), %eax
	addl	$-114, %eax
	jmp	.LBB9_1447
.LBB9_1446:                             # %cond.false.606.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movq	9576(%r13), %rdi
	movl	$.L.str.72, %esi
	movl	$9, %edx
	callq	strncmp
	jmp	.LBB9_1447
.LBB9_1445:                             # %cond.false.601.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.72, %esi
	callq	strcmp
.LBB9_1447:                             # %cond.end.609.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	je	.LBB9_1448
# BB#1449:                              # %if.else.623.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.35, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$7, %rcx
	ja	.LBB9_1459
# BB#1450:                              # %land.lhs.true.633.i
                                        #   in Loop: Header=BB9_259 Depth=4
	cmpq	$3, %rcx
	ja	.LBB9_1458
# BB#1451:                              # %cond.true.637.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1460
# BB#1452:                              # %cond.true.637.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1460
# BB#1453:                              # %if.then.651.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1460
# BB#1454:                              # %if.then.651.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1460
# BB#1455:                              # %if.then.661.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	2(%r12), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1460
# BB#1456:                              # %if.then.661.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1460
# BB#1457:                              # %if.then.671.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	3(%r12), %eax
	addl	$-97, %eax
	jmp	.LBB9_1460
.LBB9_1459:                             # %cond.false.684.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.35, %esi
	movl	$8, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_1460
.LBB9_1458:                             # %cond.false.680.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.35, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_1460:                             # %cond.end.686.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	je	.LBB9_1461
# BB#1462:                              # %if.else.697.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.41, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$13, %rcx
	ja	.LBB9_1472
# BB#1463:                              # %land.lhs.true.707.i
                                        #   in Loop: Header=BB9_259 Depth=4
	cmpq	$3, %rcx
	ja	.LBB9_1471
# BB#1464:                              # %cond.true.711.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1473
# BB#1465:                              # %cond.true.711.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1473
# BB#1466:                              # %if.then.725.i.920
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1473
# BB#1467:                              # %if.then.725.i.920
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1473
# BB#1468:                              # %if.then.735.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	2(%r12), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1473
# BB#1469:                              # %if.then.735.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1473
# BB#1470:                              # %if.then.745.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	3(%r12), %eax
	addl	$-111, %eax
	jmp	.LBB9_1473
.LBB9_1472:                             # %cond.false.758.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.41, %esi
	movl	$14, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_1473
.LBB9_1471:                             # %cond.false.754.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.41, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_1473:                             # %cond.end.760.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	je	.LBB9_1474
# BB#1475:                              # %if.else.772.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.42, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$18, %rcx
	ja	.LBB9_1485
# BB#1476:                              # %land.lhs.true.782.i
                                        #   in Loop: Header=BB9_259 Depth=4
	cmpq	$3, %rcx
	ja	.LBB9_1484
# BB#1477:                              # %cond.true.786.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1486
# BB#1478:                              # %cond.true.786.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1486
# BB#1479:                              # %if.then.800.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1486
# BB#1480:                              # %if.then.800.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1486
# BB#1481:                              # %if.then.810.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	2(%r12), %eax
	addl	$-72, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1486
# BB#1482:                              # %if.then.810.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1486
# BB#1483:                              # %if.then.820.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	3(%r12), %eax
	addl	$-105, %eax
	jmp	.LBB9_1486
.LBB9_1485:                             # %cond.false.833.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.42, %esi
	movl	$19, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_1486
.LBB9_1484:                             # %cond.false.829.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.42, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_1486:                             # %cond.end.835.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	je	.LBB9_1487
# BB#1490:                              # %if.else.847.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.43, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$9, %rcx
	ja	.LBB9_1500
# BB#1491:                              # %land.lhs.true.857.i
                                        #   in Loop: Header=BB9_259 Depth=4
	cmpq	$3, %rcx
	ja	.LBB9_1499
# BB#1492:                              # %cond.true.861.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1501
# BB#1493:                              # %cond.true.861.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1501
# BB#1494:                              # %if.then.875.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1501
# BB#1495:                              # %if.then.875.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1501
# BB#1496:                              # %if.then.885.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	2(%r12), %eax
	addl	$-67, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1501
# BB#1497:                              # %if.then.885.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1501
# BB#1498:                              # %if.then.895.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	3(%r12), %eax
	addl	$-114, %eax
	jmp	.LBB9_1501
.LBB9_1500:                             # %cond.false.908.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.43, %esi
	movl	$10, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_1501
.LBB9_1499:                             # %cond.false.904.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.43, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_1501:                             # %cond.end.910.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	je	.LBB9_1502
# BB#1503:                              # %if.else.922.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.44, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$13, %rcx
	ja	.LBB9_1513
# BB#1504:                              # %land.lhs.true.932.i
                                        #   in Loop: Header=BB9_259 Depth=4
	cmpq	$3, %rcx
	ja	.LBB9_1512
# BB#1505:                              # %cond.true.936.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1514
# BB#1506:                              # %cond.true.936.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1514
# BB#1507:                              # %if.then.950.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1514
# BB#1508:                              # %if.then.950.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1514
# BB#1509:                              # %if.then.960.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	2(%r12), %eax
	addl	$-79, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1514
# BB#1510:                              # %if.then.960.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1514
# BB#1511:                              # %if.then.970.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	3(%r12), %eax
	addl	$-114, %eax
	jmp	.LBB9_1514
.LBB9_1513:                             # %cond.false.983.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.44, %esi
	movl	$14, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_1514
.LBB9_1512:                             # %cond.false.979.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.44, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_1514:                             # %cond.end.985.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	je	.LBB9_1515
# BB#1516:                              # %if.else.997.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.45, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$11, %rcx
	ja	.LBB9_1526
# BB#1517:                              # %land.lhs.true.1007.i
                                        #   in Loop: Header=BB9_259 Depth=4
	cmpq	$3, %rcx
	ja	.LBB9_1525
# BB#1518:                              # %cond.true.1011.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1527
# BB#1519:                              # %cond.true.1011.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1527
# BB#1520:                              # %if.then.1025.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1527
# BB#1521:                              # %if.then.1025.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1527
# BB#1522:                              # %if.then.1035.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	2(%r12), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1527
# BB#1523:                              # %if.then.1035.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1527
# BB#1524:                              # %if.then.1045.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	3(%r12), %eax
	addl	$-97, %eax
	jmp	.LBB9_1527
.LBB9_1526:                             # %cond.false.1058.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.45, %esi
	movl	$12, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_1527
.LBB9_1525:                             # %cond.false.1054.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.45, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_1527:                             # %cond.end.1060.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	je	.LBB9_1528
# BB#1529:                              # %if.else.1070.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.46, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$15, %rcx
	ja	.LBB9_1539
# BB#1530:                              # %land.lhs.true.1080.i
                                        #   in Loop: Header=BB9_259 Depth=4
	cmpq	$3, %rcx
	ja	.LBB9_1538
# BB#1531:                              # %cond.true.1084.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1540
# BB#1532:                              # %cond.true.1084.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1540
# BB#1533:                              # %if.then.1098.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1540
# BB#1534:                              # %if.then.1098.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1540
# BB#1535:                              # %if.then.1108.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	2(%r12), %eax
	addl	$-68, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1540
# BB#1536:                              # %if.then.1108.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1540
# BB#1537:                              # %if.then.1118.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	3(%r12), %eax
	addl	$-111, %eax
	jmp	.LBB9_1540
.LBB9_1539:                             # %cond.false.1131.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.46, %esi
	movl	$16, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_1540
.LBB9_1538:                             # %cond.false.1127.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.46, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_1540:                             # %cond.end.1133.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	je	.LBB9_1541
# BB#1542:                              # %if.else.1143.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.71, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$6, %rcx
	ja	.LBB9_1552
# BB#1543:                              # %land.lhs.true.1153.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movq	9576(%r13), %rdi
	cmpq	$3, %rcx
	ja	.LBB9_1551
# BB#1544:                              # %cond.true.1157.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	(%rdi), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1553
# BB#1545:                              # %cond.true.1157.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1553
# BB#1546:                              # %if.then.1172.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	1(%rdi), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1553
# BB#1547:                              # %if.then.1172.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1553
# BB#1548:                              # %if.then.1182.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	2(%rdi), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1553
# BB#1549:                              # %if.then.1182.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1553
# BB#1550:                              # %if.then.1192.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movzbl	3(%rdi), %eax
	addl	$-97, %eax
	jmp	.LBB9_1553
.LBB9_1552:                             # %cond.false.1206.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movq	9576(%r13), %rdi
	movl	$.L.str.71, %esi
	movl	$7, %edx
	callq	strncmp
	jmp	.LBB9_1553
.LBB9_1551:                             # %cond.false.1201.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$.L.str.71, %esi
	callq	strcmp
.LBB9_1553:                             # %cond.end.1209.i
                                        #   in Loop: Header=BB9_259 Depth=4
	testl	%eax, %eax
	jne	.LBB9_1559
# BB#1554:                              # %if.then.1213.i
                                        #   in Loop: Header=BB9_259 Depth=4
	movq	9912(%r13), %rax
	testq	%rax, %rax
	je	.LBB9_1614
# BB#1555:                              # %dsc_error.exit.i.958
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	9584(%r13), %r8d
	movq	9576(%r13), %rcx
	movq	1288(%r13), %rdi
	movl	$3, %edx
	movq	%r13, %rsi
	callq	*%rax
	testl	%eax, %eax
	jne	.LBB9_1556
# BB#1557:                              # %sw.bb.i.960
                                        #   in Loop: Header=BB9_259 Depth=4
	movl	$10, 1300(%r13)
	movl	1168(%r13), %ecx
	movl	$10, %eax
	testl	%ecx, %ecx
	je	.LBB9_259
	jmp	.LBB9_1558
.LBB9_1615:                             # %sw.bb
                                        #   in Loop: Header=BB9_258 Depth=3
	movq	%r13, %rdi
	callq	dsc_scan_comments
	jmp	.LBB9_1616
.LBB9_450:                              # %if.end.53.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$501, 1296(%r13)        # imm = 0x1F5
	movl	9556(%r13), %eax
	movl	9584(%r13), %ecx
	addq	9560(%r13), %rax
	movq	%rax, %rdx
	subq	%rcx, %rdx
	movq	%rdx, 1112(%r13)
	movq	%rax, 1120(%r13)
	movl	$7, 1300(%r13)
	movl	$.L.str.69, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$12, %rcx
	ja	.LBB9_460
# BB#451:                               # %land.lhs.true.72.i
                                        #   in Loop: Header=BB9_258 Depth=3
	cmpq	$3, %rcx
	ja	.LBB9_459
# BB#452:                               # %cond.true.76.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_461
# BB#453:                               # %cond.true.76.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_461
# BB#454:                               # %if.then.90.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_461
# BB#455:                               # %if.then.90.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_461
# BB#456:                               # %if.then.100.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	2(%r12), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_461
# BB#457:                               # %if.then.100.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_461
# BB#458:                               # %if.then.110.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	3(%r12), %eax
	addl	$-101, %eax
	jmp	.LBB9_461
.LBB9_636:                              # %if.end.72.i.378
                                        #   in Loop: Header=BB9_258 Depth=3
	cmpl	$37, %ebx
	jne	.LBB9_837
# BB#637:                               # %lor.lhs.false.77.i.381
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	1(%r12), %eax
	cmpl	$37, %eax
	jne	.LBB9_837
# BB#638:                               # %if.else.83.i.384
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.67, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$13, %rcx
	ja	.LBB9_645
# BB#639:                               # %land.lhs.true.93.i.386
                                        #   in Loop: Header=BB9_258 Depth=3
	cmpq	$3, %rcx
	ja	.LBB9_644
# BB#640:                               # %cond.true.97.i.388
                                        #   in Loop: Header=BB9_258 Depth=3
	cmpq	$2, %rcx
	jb	.LBB9_837
# BB#641:                               # %if.then.121.i.395
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	2(%r12), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_646
# BB#642:                               # %if.then.121.i.395
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_646
# BB#643:                               # %if.then.131.i.399
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	3(%r12), %eax
	addl	$-101, %eax
	jmp	.LBB9_646
.LBB9_851:                              # %if.then.49.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$11, 1300(%r13)
.LBB9_852:                              # %if.end.225.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	(%rbp), %eax
	cmpl	$37, %eax
	jne	.LBB9_1321
# BB#853:                               # %lor.lhs.false.230.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	1(%rbp), %eax
	cmpl	$37, %eax
	jne	.LBB9_1321
# BB#854:                               # %if.else.236.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.71, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$6, %rcx
	ja	.LBB9_893
# BB#855:                               # %land.lhs.true.246.i
                                        #   in Loop: Header=BB9_258 Depth=3
	cmpq	$3, %rcx
	ja	.LBB9_892
# BB#856:                               # %cond.true.250.i
                                        #   in Loop: Header=BB9_258 Depth=3
	cmpq	$2, %rcx
	jb	.LBB9_895
# BB#857:                               # %if.then.274.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	2(%rbp), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB9_894
# BB#858:                               # %if.then.274.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_894
# BB#859:                               # %if.then.284.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	3(%rbp), %eax
	addl	$-97, %eax
	jmp	.LBB9_894
.LBB9_460:                              # %cond.false.123.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.69, %esi
	movl	$13, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_461
.LBB9_893:                              # %cond.false.297.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.71, %esi
	movl	$7, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_894
.LBB9_459:                              # %cond.false.119.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.69, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_461:                              # %cond.end.125.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	je	.LBB9_189
.LBB9_462:                              # %if.end.131.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	(%r12), %eax
	cmpl	$37, %eax
	jne	.LBB9_617
# BB#463:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	1(%r12), %eax
	cmpl	$37, %eax
	jne	.LBB9_617
# BB#464:                               # %if.else.i.289
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.67, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$13, %rcx
	ja	.LBB9_471
# BB#465:                               # %land.lhs.true.150.i
                                        #   in Loop: Header=BB9_258 Depth=3
	cmpq	$3, %rcx
	ja	.LBB9_470
# BB#466:                               # %cond.true.154.i
                                        #   in Loop: Header=BB9_258 Depth=3
	cmpq	$2, %rcx
	jb	.LBB9_617
# BB#467:                               # %if.then.178.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	2(%r12), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_472
# BB#468:                               # %if.then.178.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_472
# BB#469:                               # %if.then.188.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	3(%r12), %eax
	addl	$-101, %eax
	jmp	.LBB9_472
.LBB9_471:                              # %cond.false.201.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.67, %esi
	movl	$14, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_472
.LBB9_470:                              # %cond.false.197.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.67, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_472:                              # %cond.end.203.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	je	.LBB9_617
# BB#473:                               # %if.else.208.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.68, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$14, %rcx
	ja	.LBB9_483
# BB#474:                               # %land.lhs.true.218.i
                                        #   in Loop: Header=BB9_258 Depth=3
	cmpq	$3, %rcx
	ja	.LBB9_482
# BB#475:                               # %cond.true.222.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_484
# BB#476:                               # %cond.true.222.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_484
# BB#477:                               # %if.then.236.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_484
# BB#478:                               # %if.then.236.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_484
# BB#479:                               # %if.then.246.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	2(%r12), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_484
# BB#480:                               # %if.then.246.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_484
# BB#481:                               # %if.then.256.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	3(%r12), %eax
	addl	$-101, %eax
	jmp	.LBB9_484
.LBB9_483:                              # %cond.false.269.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.68, %esi
	movl	$15, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_484
.LBB9_482:                              # %cond.false.265.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.68, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_484:                              # %cond.end.271.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	je	.LBB9_617
# BB#485:                               # %if.else.276.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.69, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$12, %rcx
	ja	.LBB9_495
# BB#486:                               # %land.lhs.true.286.i
                                        #   in Loop: Header=BB9_258 Depth=3
	cmpq	$3, %rcx
	ja	.LBB9_494
# BB#487:                               # %cond.true.290.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_496
# BB#488:                               # %cond.true.290.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_496
# BB#489:                               # %if.then.304.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_496
# BB#490:                               # %if.then.304.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_496
# BB#491:                               # %if.then.314.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	2(%r12), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_496
# BB#492:                               # %if.then.314.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_496
# BB#493:                               # %if.then.324.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	3(%r12), %eax
	addl	$-101, %eax
	jmp	.LBB9_496
.LBB9_495:                              # %cond.false.337.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.69, %esi
	movl	$13, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_496
.LBB9_494:                              # %cond.false.333.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.69, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_496:                              # %cond.end.339.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	je	.LBB9_617
# BB#497:                               # %if.else.344.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movq	%r12, %rdi
	callq	dsc_is_section
	testl	%eax, %eax
	je	.LBB9_499
# BB#498:                               # %if.then.347.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	9556(%r13), %eax
	movl	9584(%r13), %ecx
	addq	9560(%r13), %rax
	subq	%rcx, %rax
	movq	%rax, 1120(%r13)
	movl	$8, 1300(%r13)
	jmp	.LBB9_989
.LBB9_499:                              # %if.else.361.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.112, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$10, %rcx
	ja	.LBB9_509
# BB#500:                               # %land.lhs.true.371.i
                                        #   in Loop: Header=BB9_258 Depth=3
	cmpq	$3, %rcx
	ja	.LBB9_508
# BB#501:                               # %cond.true.375.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_510
# BB#502:                               # %cond.true.375.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_510
# BB#503:                               # %if.then.389.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_510
# BB#504:                               # %if.then.389.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_510
# BB#505:                               # %if.then.399.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	2(%r12), %eax
	addl	$-69, %eax
	cmpq	$3, %rcx
	jb	.LBB9_510
# BB#506:                               # %if.then.399.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_510
# BB#507:                               # %if.then.409.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	3(%r12), %eax
	addl	$-110, %eax
	jmp	.LBB9_510
.LBB9_645:                              # %cond.false.144.i.403
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.67, %esi
	movl	$14, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_646
.LBB9_892:                              # %cond.false.293.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.71, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_894:                              # %cond.end.299.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	je	.LBB9_895
# BB#922:                               # %if.else.334.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.67, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$13, %rcx
	ja	.LBB9_932
# BB#923:                               # %land.lhs.true.344.i
                                        #   in Loop: Header=BB9_258 Depth=3
	cmpq	$3, %rcx
	ja	.LBB9_931
# BB#924:                               # %cond.true.348.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_933
# BB#925:                               # %cond.true.348.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_933
# BB#926:                               # %if.then.362.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_933
# BB#927:                               # %if.then.362.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_933
# BB#928:                               # %if.then.372.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	2(%rbp), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_933
# BB#929:                               # %if.then.372.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_933
# BB#930:                               # %if.then.382.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	3(%rbp), %eax
	addl	$-101, %eax
	jmp	.LBB9_933
.LBB9_895:                              # %if.then.303.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$700, 1296(%r13)        # imm = 0x2BC
	movl	1168(%r13), %eax
	testl	%eax, %eax
	je	.LBB9_897
# BB#896:                               # %if.then.306.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	9556(%r13), %ecx
	addq	9560(%r13), %rcx
	movl	9584(%r13), %edx
	subq	%rdx, %rcx
	decl	%eax
	movq	1160(%r13), %rdx
	leaq	(%rax,%rax,8), %rax
	movq	%rcx, 24(%rdx,%rax,8)
	movq	%r13, %rdi
	callq	dsc_check_match
	testl	%eax, %eax
	jne	.LBB9_1619
.LBB9_897:                              # %if.end.321.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movq	9576(%r13), %r12
	leaq	7(%r12), %rbp
	movl	9584(%r13), %ecx
	addl	$-7, %ecx
	movl	$256, %esi              # imm = 0x100
	leaq	176(%rsp), %rdi
	movq	%rbp, %rdx
	leaq	436(%rsp), %r8
	callq	dsc_copy_string
	movq	%rax, %rcx
	movl	$-1, %eax
	testq	%rcx, %rcx
	je	.LBB9_1616
# BB#898:                               # %if.end.i.i.629
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	436(%rsp), %eax
	addq	%rax, %rbp
	movl	9584(%r13), %ecx
	addl	$-7, %ecx
	movl	%ecx, 40(%rsp)          # 4-byte Spill
	cmpl	%eax, %ecx
	jne	.LBB9_899
# BB#900:                               # %while.condthread-pre-split.i.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$0, 48(%rsp)            # 4-byte Folded Spill
	testl	%eax, %eax
	je	.LBB9_912
# BB#901:                               # %while.body.i.i.631.preheader
                                        #   in Loop: Header=BB9_258 Depth=3
	leaq	-1(%rax), %rdx
	addq	%rax, %r12
	xorl	%esi, %esi
.LBB9_902:                              # %while.body.i.i.631
                                        #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_189 Depth=2
                                        #       Parent Loop BB9_258 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rsi, %rcx
	movzbl	6(%r12,%rcx), %esi
	cmpq	$32, %rsi
	ja	.LBB9_906
# BB#903:                               # %while.body.i.i.631
                                        #   in Loop: Header=BB9_902 Depth=4
	movabsq	$4294977024, %rdi       # imm = 0x100002600
	btq	%rsi, %rdi
	jae	.LBB9_906
# BB#904:                               # %if.end.25.i.i
                                        #   in Loop: Header=BB9_902 Depth=4
	leal	(%rdx,%rcx), %esi
	movl	%esi, 436(%rsp)
	leaq	-1(%rcx), %rsi
	movl	%esi, %edi
	addl	%eax, %edi
	jne	.LBB9_902
# BB#905:                               #   in Loop: Header=BB9_258 Depth=3
	leaq	6(%r12,%rcx), %rbp
	jmp	.LBB9_912
.LBB9_932:                              # %cond.false.395.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.67, %esi
	movl	$14, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_933
.LBB9_509:                              # %cond.false.422.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.112, %esi
	movl	$11, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_510
.LBB9_899:                              #   in Loop: Header=BB9_258 Depth=3
	movl	%eax, 48(%rsp)          # 4-byte Spill
	jmp	.LBB9_912
.LBB9_931:                              # %cond.false.391.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.67, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_933:                              # %cond.end.397.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	je	.LBB9_1321
# BB#934:                               # %if.else.402.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.68, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$14, %rcx
	ja	.LBB9_944
# BB#935:                               # %land.lhs.true.412.i
                                        #   in Loop: Header=BB9_258 Depth=3
	cmpq	$3, %rcx
	ja	.LBB9_943
# BB#936:                               # %cond.true.416.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_945
# BB#937:                               # %cond.true.416.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_945
# BB#938:                               # %if.then.430.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_945
# BB#939:                               # %if.then.430.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_945
# BB#940:                               # %if.then.440.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	2(%rbp), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_945
# BB#941:                               # %if.then.440.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_945
# BB#942:                               # %if.then.450.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	3(%rbp), %eax
	addl	$-101, %eax
	jmp	.LBB9_945
.LBB9_944:                              # %cond.false.463.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.68, %esi
	movl	$15, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_945
.LBB9_943:                              # %cond.false.459.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.68, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_945:                              # %cond.end.465.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	je	.LBB9_1321
# BB#946:                               # %if.else.470.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.69, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$12, %rcx
	ja	.LBB9_956
# BB#947:                               # %land.lhs.true.480.i
                                        #   in Loop: Header=BB9_258 Depth=3
	cmpq	$3, %rcx
	ja	.LBB9_955
# BB#948:                               # %cond.true.484.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_957
# BB#949:                               # %cond.true.484.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_957
# BB#950:                               # %if.then.498.i.667
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_957
# BB#951:                               # %if.then.498.i.667
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_957
# BB#952:                               # %if.then.508.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	2(%rbp), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_957
# BB#953:                               # %if.then.508.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_957
# BB#954:                               # %if.then.518.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	3(%rbp), %eax
	addl	$-101, %eax
	jmp	.LBB9_957
.LBB9_956:                              # %cond.false.531.i.670
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.69, %esi
	movl	$13, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_957
.LBB9_955:                              # %cond.false.527.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.69, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_957:                              # %cond.end.533.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	je	.LBB9_1321
# BB#958:                               # %if.else.538.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.70, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$11, %rcx
	ja	.LBB9_968
# BB#959:                               # %land.lhs.true.548.i
                                        #   in Loop: Header=BB9_258 Depth=3
	cmpq	$3, %rcx
	ja	.LBB9_967
# BB#960:                               # %cond.true.552.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_969
# BB#961:                               # %cond.true.552.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_969
# BB#962:                               # %if.then.566.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_969
# BB#963:                               # %if.then.566.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_969
# BB#964:                               # %if.then.576.i.678
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	2(%rbp), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_969
# BB#965:                               # %if.then.576.i.678
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_969
# BB#966:                               # %if.then.586.i.679
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	3(%rbp), %eax
	addl	$-101, %eax
	jmp	.LBB9_969
.LBB9_968:                              # %cond.false.599.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.70, %esi
	movl	$12, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_969
.LBB9_644:                              # %cond.false.140.i.401
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.67, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_646:                              # %cond.end.146.i.406
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	je	.LBB9_837
# BB#647:                               # %if.else.151.i.409
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.68, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$14, %rcx
	ja	.LBB9_657
# BB#648:                               # %land.lhs.true.161.i.411
                                        #   in Loop: Header=BB9_258 Depth=3
	cmpq	$3, %rcx
	ja	.LBB9_656
# BB#649:                               # %cond.true.165.i.417
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_658
# BB#650:                               # %cond.true.165.i.417
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_658
# BB#651:                               # %if.then.179.i.423
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_658
# BB#652:                               # %if.then.179.i.423
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_658
# BB#653:                               # %if.then.189.i.430
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	2(%r12), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_658
# BB#654:                               # %if.then.189.i.430
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_658
# BB#655:                               # %if.then.199.i.434
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	3(%r12), %eax
	addl	$-101, %eax
	jmp	.LBB9_658
.LBB9_657:                              # %cond.false.212.i.438
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.68, %esi
	movl	$15, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_658
.LBB9_967:                              # %cond.false.595.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.70, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_969:                              # %cond.end.601.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	je	.LBB9_1321
# BB#970:                               # %if.else.606.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movq	%rbp, %rdi
	callq	dsc_is_section
	testl	%eax, %eax
	je	.LBB9_1017
# BB#971:                               # %if.then.609.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.72, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$8, %rcx
	ja	.LBB9_981
# BB#972:                               # %land.lhs.true.619.i
                                        #   in Loop: Header=BB9_258 Depth=3
	cmpq	$3, %rcx
	ja	.LBB9_980
# BB#973:                               # %cond.true.623.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_982
# BB#974:                               # %cond.true.623.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_982
# BB#975:                               # %if.then.637.i.690
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_982
# BB#976:                               # %if.then.637.i.690
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_982
# BB#977:                               # %if.then.647.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	2(%rbp), %eax
	addl	$-84, %eax
	cmpq	$3, %rcx
	jb	.LBB9_982
# BB#978:                               # %if.then.647.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_982
# BB#979:                               # %if.then.657.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	3(%rbp), %eax
	addl	$-114, %eax
	jmp	.LBB9_982
.LBB9_981:                              # %cond.false.670.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.72, %esi
	movl	$9, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_982
.LBB9_508:                              # %cond.false.418.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.112, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_510:                              # %cond.end.424.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_512
# BB#511:                               # %if.then.428.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$502, 1296(%r13)        # imm = 0x1F6
	movl	9556(%r13), %eax
	addq	9560(%r13), %rax
	movq	%rax, 1120(%r13)
	movl	$8, 1300(%r13)
	jmp	.LBB9_698
.LBB9_656:                              # %cond.false.208.i.436
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.68, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_658:                              # %cond.end.214.i.441
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	je	.LBB9_837
# BB#659:                               # %if.else.219.i.443
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.69, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$12, %rcx
	ja	.LBB9_669
# BB#660:                               # %land.lhs.true.229.i
                                        #   in Loop: Header=BB9_258 Depth=3
	cmpq	$3, %rcx
	ja	.LBB9_668
# BB#661:                               # %cond.true.233.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_670
# BB#662:                               # %cond.true.233.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_670
# BB#663:                               # %if.then.247.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_670
# BB#664:                               # %if.then.247.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_670
# BB#665:                               # %if.then.257.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	2(%r12), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_670
# BB#666:                               # %if.then.257.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_670
# BB#667:                               # %if.then.267.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	3(%r12), %eax
	addl	$-101, %eax
	jmp	.LBB9_670
.LBB9_669:                              # %cond.false.280.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.69, %esi
	movl	$13, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_670
.LBB9_668:                              # %cond.false.276.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.69, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_670:                              # %cond.end.282.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	je	.LBB9_837
# BB#671:                               # %if.else.287.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.70, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$11, %rcx
	ja	.LBB9_681
# BB#672:                               # %land.lhs.true.297.i
                                        #   in Loop: Header=BB9_258 Depth=3
	cmpq	$3, %rcx
	ja	.LBB9_680
# BB#673:                               # %cond.true.301.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_682
# BB#674:                               # %cond.true.301.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_682
# BB#675:                               # %if.then.315.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_682
# BB#676:                               # %if.then.315.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_682
# BB#677:                               # %if.then.325.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	2(%r12), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_682
# BB#678:                               # %if.then.325.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_682
# BB#679:                               # %if.then.335.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	3(%r12), %eax
	addl	$-101, %eax
	jmp	.LBB9_682
.LBB9_681:                              # %cond.false.348.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.70, %esi
	movl	$12, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_682
.LBB9_980:                              # %cond.false.666.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.72, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_982:                              # %cond.end.672.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	je	.LBB9_983
# BB#994:                               # %if.else.746.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.73, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$4, %rcx
	ja	.LBB9_1004
# BB#995:                               # %land.lhs.true.756.i
                                        #   in Loop: Header=BB9_258 Depth=3
	cmpq	$3, %rcx
	ja	.LBB9_1003
# BB#996:                               # %cond.true.760.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1005
# BB#997:                               # %cond.true.760.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_1005
# BB#998:                               # %if.then.774.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1005
# BB#999:                               # %if.then.774.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_1005
# BB#1000:                              # %if.then.784.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	2(%rbp), %eax
	addl	$-69, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1005
# BB#1001:                              # %if.then.784.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_1005
# BB#1002:                              # %if.then.794.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	3(%rbp), %eax
	addl	$-79, %eax
	jmp	.LBB9_1005
.LBB9_983:                              # %if.then.676.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	1168(%r13), %eax
	testl	%eax, %eax
	je	.LBB9_985
# BB#984:                               # %if.then.679.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	9556(%r13), %ecx
	addq	9560(%r13), %rcx
	movl	9584(%r13), %edx
	subq	%rdx, %rcx
	decl	%eax
	movq	1160(%r13), %rdx
	leaq	(%rax,%rax,8), %rax
	movq	%rcx, 24(%rdx,%rax,8)
.LBB9_985:                              # %if.end.693.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movq	1320(%r13), %rax
	testq	%rax, %rax
	je	.LBB9_988
# BB#986:                               # %if.then.695.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movq	1304(%r13), %rcx
	movq	9560(%r13), %rdx
	movl	9556(%r13), %esi
	leaq	32768(%rdx,%rsi), %rdx
	testq	%rcx, %rcx
	je	.LBB9_987
# BB#990:                               # %land.lhs.true.709.i
                                        #   in Loop: Header=BB9_258 Depth=3
	cmpq	%rcx, %rdx
	jae	.LBB9_988
	jmp	.LBB9_991
.LBB9_1004:                             # %cond.false.807.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.73, %esi
	movl	$5, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_1005
.LBB9_680:                              # %cond.false.344.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.70, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_682:                              # %cond.end.350.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	je	.LBB9_837
# BB#683:                               # %if.else.355.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movq	%r12, %rdi
	callq	dsc_is_section
	testl	%eax, %eax
	je	.LBB9_685
# BB#684:                               # %if.then.357.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	9556(%r13), %eax
	movl	9584(%r13), %ecx
	addq	9560(%r13), %rax
	subq	%rcx, %rax
	movq	%rax, 1136(%r13)
	movl	$10, 1300(%r13)
	jmp	.LBB9_989
.LBB9_685:                              # %if.else.371.i.458
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.126, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$9, %rcx
	ja	.LBB9_695
# BB#686:                               # %land.lhs.true.381.i
                                        #   in Loop: Header=BB9_258 Depth=3
	cmpq	$3, %rcx
	ja	.LBB9_694
# BB#687:                               # %cond.true.385.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_696
# BB#688:                               # %cond.true.385.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_696
# BB#689:                               # %if.then.399.i.470
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_696
# BB#690:                               # %if.then.399.i.470
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_696
# BB#691:                               # %if.then.409.i.475
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	2(%r12), %eax
	addl	$-69, %eax
	cmpq	$3, %rcx
	jb	.LBB9_696
# BB#692:                               # %if.then.409.i.475
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_696
# BB#693:                               # %if.then.419.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movzbl	3(%r12), %eax
	addl	$-110, %eax
	jmp	.LBB9_696
.LBB9_695:                              # %cond.false.432.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.126, %esi
	movl	$10, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_696
.LBB9_906:                              # %while.body.29.lr.ph.i.i
                                        #   in Loop: Header=BB9_258 Depth=3
	leal	(%rax,%rcx), %ebx
	movsbq	%sil, %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	7(%r12,%rcx), %rbp
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	32(%rsp), %rcx          # 8-byte Reload
	testb	$8, 1(%rax,%rcx,2)
	je	.LBB9_911
# BB#907:                               # %if.end.36.i.i.preheader
                                        #   in Loop: Header=BB9_258 Depth=3
	decq	%rbp
	decl	%ebx
	movq	%rbp, %rcx
.LBB9_908:                              # %if.end.36.i.i
                                        #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_189 Depth=2
                                        #       Parent Loop BB9_258 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rcx, %rbp
	movl	%ebx, 436(%rsp)
	testl	%ebx, %ebx
	je	.LBB9_912
# BB#909:                               # %if.end.36.i.while.body.29.i_crit_edge.i
                                        #   in Loop: Header=BB9_908 Depth=4
	leaq	-1(%rbp), %rcx
	movsbq	-1(%rbp), %rdx
	decl	%ebx
	testb	$8, 1(%rax,%rdx,2)
	jne	.LBB9_908
# BB#910:                               # %if.end.40.i.i.loopexitsplit
                                        #   in Loop: Header=BB9_258 Depth=3
	incl	%ebx
.LBB9_911:                              # %if.end.40.i.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	%ebx, 48(%rsp)          # 4-byte Spill
.LBB9_912:                              # %if.end.40.i.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	40(%rsp), %esi          # 4-byte Reload
	subl	48(%rsp), %esi          # 4-byte Folded Reload
	xorl	%edx, %edx
	movq	%rbp, %rdi
	callq	dsc_get_int
	movl	%eax, %ebx
	testl	%ebx, %ebx
	je	.LBB9_916
# BB#913:                               # %lor.lhs.false.47.i.i
                                        #   in Loop: Header=BB9_258 Depth=3
	leaq	176(%rsp), %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB9_916
# BB#914:                               # %lor.lhs.false.52.i.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	1168(%r13), %eax
	testl	%eax, %eax
	je	.LBB9_919
# BB#915:                               # %land.lhs.true.i.i.641
                                        #   in Loop: Header=BB9_258 Depth=3
	decl	%eax
	movq	1160(%r13), %rcx
	leaq	(%rax,%rax,8), %rax
	movl	(%rcx,%rax,8), %eax
	incl	%eax
	cmpl	%eax, %ebx
	je	.LBB9_919
.LBB9_916:                              # %if.then.60.i.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movq	9912(%r13), %rax
	testq	%rax, %rax
	je	.LBB9_919
# BB#917:                               # %dsc_error.exit.i.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	9584(%r13), %r8d
	movq	9576(%r13), %rcx
	movq	1288(%r13), %rdi
	movl	$4, %edx
	movq	%r13, %rsi
	callq	*%rax
	movl	%eax, %ecx
	movl	$1, %eax
	cmpl	$2, %ecx
	je	.LBB9_1616
# BB#918:                               # %dsc_error.exit.i.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%ecx, %ecx
	je	.LBB9_920
.LBB9_919:                              # %dsc_parse_page.exit.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movslq	1168(%r13), %rbp
	movq	%r13, %rdi
	movl	%ebx, %esi
	leaq	176(%rsp), %rdx
	callq	dsc_add_page
	movl	9556(%r13), %eax
	addq	9560(%r13), %rax
	movl	9584(%r13), %ecx
	subq	%rcx, %rax
	movq	1160(%r13), %rcx
	leaq	(%rbp,%rbp,8), %rdx
	movq	%rax, 16(%rcx,%rdx,8)
	movq	%rax, 24(%rcx,%rdx,8)
	movq	8(%rcx,%rdx,8), %rcx
	cmpq	$1, %rcx
	sbbl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB9_1616
	jmp	.LBB9_920
.LBB9_1003:                             # %cond.false.803.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.73, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_1005:                             # %cond.end.809.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_1015
# BB#1006:                              # %if.then.813.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	1168(%r13), %eax
	testl	%eax, %eax
	je	.LBB9_1008
# BB#1007:                              # %if.then.816.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	9556(%r13), %ecx
	addq	9560(%r13), %rcx
	movl	9584(%r13), %edx
	subq	%rdx, %rcx
	decl	%eax
	movq	1160(%r13), %rdx
	leaq	(%rax,%rax,8), %rax
	movq	%rcx, 24(%rdx,%rax,8)
.LBB9_1008:                             # %if.end.830.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movq	1320(%r13), %rax
	testq	%rax, %rax
	je	.LBB9_698
# BB#1009:                              # %if.then.833.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movq	1304(%r13), %rcx
	movq	9560(%r13), %rdx
	movl	9556(%r13), %esi
	leaq	100(%rdx,%rsi), %rdx
	testq	%rcx, %rcx
	je	.LBB9_1010
# BB#1011:                              # %land.lhs.true.848.i
                                        #   in Loop: Header=BB9_258 Depth=3
	cmpq	%rcx, %rdx
	jb	.LBB9_1012
	jmp	.LBB9_1321
.LBB9_1010:                             # %land.lhs.true.836.i
                                        #   in Loop: Header=BB9_258 Depth=3
	cmpq	%rax, %rdx
	jae	.LBB9_1321
.LBB9_1012:                             # %if.then.857.i.706
                                        #   in Loop: Header=BB9_258 Depth=3
	movq	9912(%r13), %rax
	testq	%rax, %rax
	je	.LBB9_1014
# BB#1013:                              # %dsc_error.exit773.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	9584(%r13), %r8d
	movq	9576(%r13), %rcx
	movq	1288(%r13), %rdi
	movl	$2, %edx
	movq	%r13, %rsi
	callq	*%rax
	cmpl	$1, %eax
	jne	.LBB9_993
.LBB9_1014:                             # %sw.bb.863.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$14, 1300(%r13)
	movl	$1, 9568(%r13)
	jmp	.LBB9_989
.LBB9_694:                              # %cond.false.428.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$.L.str.126, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_696:                              # %cond.end.434.i
                                        #   in Loop: Header=BB9_258 Depth=3
	testl	%eax, %eax
	jne	.LBB9_699
# BB#697:                               # %if.then.438.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$602, 1296(%r13)        # imm = 0x25A
	movl	9556(%r13), %eax
	addq	9560(%r13), %rax
	movq	%rax, 1136(%r13)
	movl	$10, 1300(%r13)
.LBB9_698:                              # %if.else.875.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movq	%r13, %rdi
	callq	dsc_check_match
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	jmp	.LBB9_1616
.LBB9_987:                              # %land.lhs.true.697.i
                                        #   in Loop: Header=BB9_258 Depth=3
	cmpq	%rax, %rdx
	jae	.LBB9_988
.LBB9_991:                              # %if.then.718.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movq	9912(%r13), %rax
	testq	%rax, %rax
	je	.LBB9_988
# BB#992:                               # %dsc_error.exit.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	9584(%r13), %r8d
	movq	9576(%r13), %rcx
	movq	1288(%r13), %rdi
	movl	$1, %edx
	movq	%r13, %rsi
	callq	*%rax
	cmpl	$1, %eax
	jne	.LBB9_993
.LBB9_988:                              # %sw.bb.i
                                        #   in Loop: Header=BB9_258 Depth=3
	movl	$12, 1300(%r13)
.LBB9_989:                              # %do.cond
                                        #   in Loop: Header=BB9_258 Depth=3
	movq	%r13, %rdi
	callq	dsc_check_match
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leal	1(%rax,%rax,8), %eax
.LBB9_1616:                             # %do.cond
                                        #   in Loop: Header=BB9_258 Depth=3
	cmpl	$10, %eax
	je	.LBB9_258
# BB#1617:                              # %do.cond
                                        #   in Loop: Header=BB9_189 Depth=2
	xorl	%ebx, %ebx
	cmpl	$11, %eax
	je	.LBB9_1620
# BB#1618:                              # %do.cond
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpl	$1, %eax
	jne	.LBB9_189
	jmp	.LBB9_1619
.LBB9_1383:                             # %if.then.211.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.72, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$8, %rcx
	ja	.LBB9_1393
# BB#1384:                              # %land.lhs.true.221.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_1392
# BB#1385:                              # %cond.true.225.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1394
# BB#1386:                              # %cond.true.225.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1394
# BB#1387:                              # %if.then.239.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1394
# BB#1388:                              # %if.then.239.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1394
# BB#1389:                              # %if.then.249.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbx), %eax
	addl	$-84, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1394
# BB#1390:                              # %if.then.249.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1394
# BB#1391:                              # %if.then.259.i.855
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbx), %eax
	addl	$-114, %eax
	jmp	.LBB9_1394
.LBB9_1435:                             # %if.then.541.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$900, 1296(%r13)        # imm = 0x384
	jmp	.LBB9_1614
.LBB9_1448:                             # %if.then.613.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$800, 1296(%r13)        # imm = 0x320
	movl	9556(%r13), %eax
	movl	9584(%r13), %ecx
	addq	9560(%r13), %rax
	subq	%rcx, %rax
	movq	%rax, 1144(%r13)
	jmp	.LBB9_1614
.LBB9_1461:                             # %if.then.690.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$203, 1296(%r13)
	movq	%r13, %rdi
	callq	dsc_parse_pages
	jmp	.LBB9_1489
.LBB9_1474:                             # %if.then.764.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$209, 1296(%r13)
	testl	%ebp, %ebp
	movl	$14, %edx
	movl	$3, %eax
	cmovnel	%eax, %edx
	movq	%r13, %rdi
	movq	112(%rsp), %rsi         # 8-byte Reload
	callq	dsc_parse_bounding_box
	jmp	.LBB9_1489
.LBB9_1487:                             # %if.then.839.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$221, 1296(%r13)
	testl	%ebp, %ebp
	movl	$19, %edx
	movl	$3, %eax
	cmovnel	%eax, %edx
	movq	%r13, %rdi
	movq	96(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB9_1488
.LBB9_1502:                             # %if.then.914.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$222, 1296(%r13)
	testl	%ebp, %ebp
	movl	$10, %edx
	movl	$3, %eax
	cmovnel	%eax, %edx
	movq	%r13, %rdi
	movq	88(%rsp), %rsi          # 8-byte Reload
.LBB9_1488:                             # %if.then.839.i
                                        #   in Loop: Header=BB9_189 Depth=2
	callq	dsc_parse_float_bounding_box
	jmp	.LBB9_1489
.LBB9_1515:                             # %if.then.989.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$210, 1296(%r13)
	testl	%ebp, %ebp
	movl	$14, %edx
	movl	$3, %eax
	cmovnel	%eax, %edx
	movq	%r13, %rdi
	movq	104(%rsp), %rsi         # 8-byte Reload
	callq	dsc_parse_orientation
	jmp	.LBB9_1489
.LBB9_1528:                             # %if.then.1064.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$211, 1296(%r13)
	movq	%r13, %rdi
	callq	dsc_parse_order
	jmp	.LBB9_1489
.LBB9_1541:                             # %if.then.1137.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$212, 1296(%r13)
	movq	%r13, %rdi
	callq	dsc_parse_document_media
.LBB9_1489:                             # %if.then.839.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_189
	jmp	.LBB9_1614
.LBB9_1559:                             # %if.else.1236.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.56, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$21, %rcx
	ja	.LBB9_1569
# BB#1560:                              # %land.lhs.true.1246.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_1568
# BB#1561:                              # %cond.true.1250.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1570
# BB#1562:                              # %cond.true.1250.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1570
# BB#1563:                              # %if.then.1264.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1570
# BB#1564:                              # %if.then.1264.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1570
# BB#1565:                              # %if.then.1274.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%r12), %eax
	addl	$-68, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1570
# BB#1566:                              # %if.then.1274.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1570
# BB#1567:                              # %if.then.1284.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%r12), %eax
	addl	$-111, %eax
	jmp	.LBB9_1570
.LBB9_891:                              # %if.end.219.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	9556(%r13), %eax
	addq	9560(%r13), %rax
	movq	%rax, (%rbx)
	jmp	.LBB9_189
.LBB9_1393:                             # %cond.false.272.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.72, %esi
	movl	$9, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB9_1394
.LBB9_294:                              # %if.else.157.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.105, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$11, %rcx
	ja	.LBB9_304
# BB#295:                               # %land.lhs.true.167.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_303
# BB#296:                               # %cond.true.171.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_305
# BB#297:                               # %cond.true.171.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_305
# BB#298:                               # %if.then.185.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_305
# BB#299:                               # %if.then.185.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_305
# BB#300:                               # %if.then.195.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbx), %eax
	addl	$-69, %eax
	cmpq	$3, %rcx
	jb	.LBB9_305
# BB#301:                               # %if.then.195.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_305
# BB#302:                               # %if.then.205.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbx), %eax
	addl	$-110, %eax
	jmp	.LBB9_305
.LBB9_634:                              # %if.then.60.i.375
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$601, 1296(%r13)        # imm = 0x259
	movl	9556(%r13), %eax
	movl	9584(%r13), %ecx
	addq	9560(%r13), %rax
	movq	%rax, %rdx
	subq	%rcx, %rdx
	movq	%rdx, 1128(%r13)
	movq	%rax, 1136(%r13)
	movl	$9, 1300(%r13)
	jmp	.LBB9_189
.LBB9_354:                              # %if.else.231.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.106, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$12, %rcx
	ja	.LBB9_364
# BB#355:                               # %land.lhs.true.241.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_363
# BB#356:                               # %cond.true.245.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_365
# BB#357:                               # %cond.true.245.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_365
# BB#358:                               # %if.then.259.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_365
# BB#359:                               # %if.then.259.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_365
# BB#360:                               # %if.then.269.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbp), %eax
	addl	$-69, %eax
	cmpq	$3, %rcx
	jb	.LBB9_365
# BB#361:                               # %if.then.269.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_365
# BB#362:                               # %if.then.279.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbp), %eax
	addl	$-110, %eax
	jmp	.LBB9_365
.LBB9_1569:                             # %cond.false.1297.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.56, %esi
	movl	$22, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_1570
.LBB9_1556:                             # %dsc_error.exit.i.958
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpl	$2, %eax
	jne	.LBB9_1614
	jmp	.LBB9_1619
.LBB9_1392:                             # %cond.false.268.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.72, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB9_1394:                             # %cond.end.274.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_1395
# BB#1397:                              # %if.else.i.858
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.73, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$4, %rcx
	ja	.LBB9_1407
# BB#1398:                              # %land.lhs.true.302.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_1406
# BB#1399:                              # %cond.true.306.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1408
# BB#1400:                              # %cond.true.306.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1408
# BB#1401:                              # %if.then.320.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1408
# BB#1402:                              # %if.then.320.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1408
# BB#1403:                              # %if.then.330.i.865
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbx), %eax
	addl	$-69, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1408
# BB#1404:                              # %if.then.330.i.865
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1408
# BB#1405:                              # %if.then.340.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbx), %eax
	addl	$-79, %eax
	jmp	.LBB9_1408
.LBB9_1395:                             # %if.then.278.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$800, 1296(%r13)        # imm = 0x320
	jmp	.LBB9_1396
.LBB9_1407:                             # %cond.false.353.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.73, %esi
	movl	$5, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB9_1408
.LBB9_277:                              # %if.then.60.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$301, 1296(%r13)        # imm = 0x12D
	movl	9556(%r13), %eax
	movl	9584(%r13), %ecx
	addq	9560(%r13), %rax
	movq	%rax, %rdx
	subq	%rcx, %rdx
	movq	%rdx, 1080(%r13)
	movq	%rax, 1088(%r13)
	movl	$3, 1300(%r13)
	cmpl	$0, 1044(%r13)
	jne	.LBB9_189
# BB#278:                               # %if.then.72.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$1, 1044(%r13)
	jmp	.LBB9_189
.LBB9_327:                              # %if.then.60.i.231
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$401, 1296(%r13)        # imm = 0x191
	movl	9556(%r13), %eax
	movl	9584(%r13), %ecx
	addq	9560(%r13), %rax
	movq	%rax, %rdx
	subq	%rcx, %rdx
	movq	%rdx, 1096(%r13)
	movq	%rax, 1104(%r13)
	movl	$5, 1300(%r13)
	jmp	.LBB9_189
.LBB9_304:                              # %cond.false.218.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.105, %esi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB9_305
.LBB9_1362:                             # %if.then.120.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$1, 1024(%r13)
	movl	9556(%r13), %eax
	movl	9584(%r13), %ecx
	addq	9560(%r13), %rax
	subq	%rcx, %rax
	movq	%rax, 1064(%r13)
	cmpq	$0, 1048(%r13)
	je	.LBB9_189
# BB#1363:                              # %if.end.130.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movq	9576(%r13), %rbx
	addq	$14, %rbx
	jmp	.LBB9_1364
.LBB9_1366:                             # %while.body.i.821
                                        #   in Loop: Header=BB9_1364 Depth=3
	incq	%rbx
.LBB9_1364:                             # %while.cond.i
                                        #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_189 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rbx), %ebp
	cmpl	$32, %ebp
	je	.LBB9_1366
# BB#1365:                              # %while.cond.i
                                        #   in Loop: Header=BB9_1364 Depth=3
	movzbl	%bpl, %eax
	cmpl	$9, %eax
	je	.LBB9_1366
# BB#1367:                              # %while.end.i.822
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.29, %edi
	callq	strlen
	cmpq	$4, %rax
	ja	.LBB9_1377
# BB#1368:                              # %land.lhs.true.147.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rax
	ja	.LBB9_1376
# BB#1369:                              # %cond.true.151.i
                                        #   in Loop: Header=BB9_189 Depth=2
	addl	$-69, %ebp
	jne	.LBB9_1379
# BB#1370:                              # %cond.true.151.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testq	%rax, %rax
	je	.LBB9_1379
# BB#1371:                              # %if.then.165.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbx), %ebp
	addl	$-80, %ebp
	cmpq	$2, %rax
	jb	.LBB9_1379
# BB#1372:                              # %if.then.165.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%ebp, %ebp
	jne	.LBB9_1379
# BB#1373:                              # %if.then.175.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbx), %ebp
	addl	$-83, %ebp
	cmpq	$3, %rax
	jb	.LBB9_1379
# BB#1374:                              # %if.then.175.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%ebp, %ebp
	jne	.LBB9_1379
# BB#1375:                              # %if.then.185.i.837
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbx), %ebp
	addl	$-70, %ebp
	jmp	.LBB9_1379
.LBB9_364:                              # %cond.false.292.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.106, %esi
	movl	$13, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_365
.LBB9_1568:                             # %cond.false.1293.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.56, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_1570:                             # %cond.end.1299.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_1571
# BB#1572:                              # %if.else.1305.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.57, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$23, %rcx
	ja	.LBB9_1582
# BB#1573:                              # %land.lhs.true.1315.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_1581
# BB#1574:                              # %cond.true.1319.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1583
# BB#1575:                              # %cond.true.1319.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1583
# BB#1576:                              # %if.then.1333.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1583
# BB#1577:                              # %if.then.1333.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1583
# BB#1578:                              # %if.then.1343.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%r12), %eax
	addl	$-68, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1583
# BB#1579:                              # %if.then.1343.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1583
# BB#1580:                              # %if.then.1353.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%r12), %eax
	addl	$-111, %eax
	jmp	.LBB9_1583
.LBB9_1571:                             # %if.then.1303.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$219, 1296(%r13)
	jmp	.LBB9_1614
.LBB9_1582:                             # %cond.false.1366.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.57, %esi
	movl	$24, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_1583
.LBB9_1406:                             # %cond.false.349.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.73, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB9_1408:                             # %cond.end.355.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_1409
# BB#1410:                              # %if.else.375.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$0, 1128(%r13)
	jne	.LBB9_837
# BB#1411:                              # %if.else.382.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$0, 1112(%r13)
	jne	.LBB9_617
	jmp	.LBB9_189
.LBB9_1409:                             # %if.then.359.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$900, 1296(%r13)        # imm = 0x384
.LBB9_1396:                             # %while.cond.backedge
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	9556(%r13), %eax
	movl	9584(%r13), %ecx
	addq	9560(%r13), %rax
	movq	%rax, %rdx
	subq	%rcx, %rdx
	movq	%rdx, 1144(%r13)
	movq	%rax, 1152(%r13)
	movl	$13, 1300(%r13)
	jmp	.LBB9_189
.LBB9_303:                              # %cond.false.214.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.105, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB9_305:                              # %cond.end.220.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_306
# BB#307:                               # %if.else.232.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbx), %eax
	cmpl	$37, %eax
	jne	.LBB9_309
# BB#308:                               # %land.lhs.true.237.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbx), %eax
	cmpl	$37, %eax
	jne	.LBB9_310
.LBB9_309:                              # %if.else.243.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$100, 1296(%r13)
	movq	%r13, %rdi
	callq	dsc_unknown
.LBB9_310:                              # %if.end.248.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	9556(%r13), %eax
	addq	9560(%r13), %rax
	movq	%rax, 1088(%r13)
	jmp	.LBB9_189
.LBB9_306:                              # %if.then.224.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$302, 1296(%r13)        # imm = 0x12E
	movl	9556(%r13), %eax
	addq	9560(%r13), %rax
	movq	%rax, 1088(%r13)
	movl	$4, 1300(%r13)
	jmp	.LBB9_189
.LBB9_363:                              # %cond.false.288.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.106, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_365:                              # %cond.end.294.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_366
# BB#367:                               # %if.else.306.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.107, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$11, %rcx
	ja	.LBB9_377
# BB#368:                               # %land.lhs.true.316.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_376
# BB#369:                               # %cond.true.320.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_378
# BB#370:                               # %cond.true.320.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_378
# BB#371:                               # %if.then.334.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_378
# BB#372:                               # %if.then.334.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_378
# BB#373:                               # %if.then.344.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbp), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB9_378
# BB#374:                               # %if.then.344.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_378
# BB#375:                               # %if.then.354.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbp), %eax
	addl	$-97, %eax
	jmp	.LBB9_378
.LBB9_366:                              # %if.then.298.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$402, 1296(%r13)        # imm = 0x192
	movl	9556(%r13), %eax
	addq	9560(%r13), %rax
	movq	%rax, 1104(%r13)
	movl	$6, 1300(%r13)
	jmp	.LBB9_189
.LBB9_377:                              # %cond.false.367.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.107, %esi
	movl	$12, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_378
.LBB9_1581:                             # %cond.false.1362.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.57, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_1583:                             # %cond.end.1368.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_1584
# BB#1585:                              # %if.else.1374.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.63, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$23, %rcx
	ja	.LBB9_1595
# BB#1586:                              # %land.lhs.true.1384.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_1594
# BB#1587:                              # %cond.true.1388.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1596
# BB#1588:                              # %cond.true.1388.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1596
# BB#1589:                              # %if.then.1402.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1596
# BB#1590:                              # %if.then.1402.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1596
# BB#1591:                              # %if.then.1412.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%r12), %eax
	addl	$-68, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1596
# BB#1592:                              # %if.then.1412.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1596
# BB#1593:                              # %if.then.1422.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%r12), %eax
	addl	$-111, %eax
	jmp	.LBB9_1596
.LBB9_1584:                             # %if.then.1372.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$220, 1296(%r13)
	jmp	.LBB9_1614
.LBB9_1595:                             # %cond.false.1435.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.63, %esi
	movl	$24, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_1596
.LBB9_1377:                             # %cond.false.198.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.29, %esi
	movl	$5, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB9_1378
.LBB9_376:                              # %cond.false.363.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.107, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_378:                              # %cond.end.369.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_379
# BB#380:                               # %if.else.376.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.108, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$17, %rcx
	ja	.LBB9_390
# BB#381:                               # %land.lhs.true.386.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_389
# BB#382:                               # %cond.true.390.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_391
# BB#383:                               # %cond.true.390.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_391
# BB#384:                               # %if.then.404.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_391
# BB#385:                               # %if.then.404.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_391
# BB#386:                               # %if.then.414.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbp), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB9_391
# BB#387:                               # %if.then.414.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_391
# BB#388:                               # %if.then.424.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbp), %eax
	addl	$-97, %eax
	jmp	.LBB9_391
.LBB9_379:                              # %if.then.373.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$704, 1296(%r13)        # imm = 0x2C0
	movq	%r13, %rdi
	movq	72(%rsp), %rsi          # 8-byte Reload
	callq	dsc_parse_media
	jmp	.LBB9_434
.LBB9_390:                              # %cond.false.437.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.108, %esi
	movl	$18, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_391
.LBB9_1594:                             # %cond.false.1431.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.63, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_1596:                             # %cond.end.1437.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_1597
# BB#1599:                              # %if.else.1449.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.64, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$22, %rcx
	ja	.LBB9_1609
# BB#1600:                              # %land.lhs.true.1459.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_1608
# BB#1601:                              # %cond.true.1463.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1610
# BB#1602:                              # %cond.true.1463.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1610
# BB#1603:                              # %if.then.1477.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1610
# BB#1604:                              # %if.then.1477.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1610
# BB#1605:                              # %if.then.1487.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%r12), %eax
	addl	$-68, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1610
# BB#1606:                              # %if.then.1487.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1610
# BB#1607:                              # %if.then.1497.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%r12), %eax
	addl	$-111, %eax
	jmp	.LBB9_1610
.LBB9_1597:                             # %if.then.1441.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$224, 1296(%r13)
	movq	%r13, %rdi
	callq	dsc_parse_process_colours
	testl	%eax, %eax
	je	.LBB9_1614
# BB#1598:                              # %if.then.1446.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$100, 1296(%r13)
	jmp	.LBB9_1614
.LBB9_1609:                             # %cond.false.1510.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.64, %esi
	movl	$23, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_1610
.LBB9_389:                              # %cond.false.433.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.108, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_391:                              # %cond.end.439.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_392
# BB#393:                               # %if.else.449.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.109, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$17, %rcx
	ja	.LBB9_403
# BB#394:                               # %land.lhs.true.459.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_402
# BB#395:                               # %cond.true.463.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_404
# BB#396:                               # %cond.true.463.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_404
# BB#397:                               # %if.then.477.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_404
# BB#398:                               # %if.then.477.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_404
# BB#399:                               # %if.then.487.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbp), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB9_404
# BB#400:                               # %if.then.487.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_404
# BB#401:                               # %if.then.497.i.259
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbp), %eax
	addl	$-97, %eax
	jmp	.LBB9_404
.LBB9_392:                              # %if.then.443.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$705, 1296(%r13)        # imm = 0x2C1
	movl	$18, %edx
	movq	%r13, %rdi
	movq	104(%rsp), %rsi         # 8-byte Reload
	callq	dsc_parse_orientation
	jmp	.LBB9_419
.LBB9_403:                              # %cond.false.510.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.109, %esi
	movl	$18, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_404
.LBB9_1608:                             # %cond.false.1506.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.64, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_1610:                             # %cond.end.1512.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_1611
# BB#1613:                              # %if.else.1524.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$100, 1296(%r13)
	movq	%r13, %rdi
	callq	dsc_unknown
	jmp	.LBB9_1614
.LBB9_1611:                             # %if.then.1516.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$225, 1296(%r13)
	movq	%r13, %rdi
	callq	dsc_parse_custom_colours
	testl	%eax, %eax
	je	.LBB9_1614
# BB#1612:                              # %if.then.1521.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$100, 1296(%r13)
	jmp	.LBB9_1614
.LBB9_1376:                             # %cond.false.194.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.29, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB9_1378:                             # %cond.end.200.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	%eax, %ebp
.LBB9_1379:                             # %cond.end.200.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%ebp, %ebp
	jne	.LBB9_1381
# BB#1380:                              # %if.then.204.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$1, 1036(%r13)
.LBB9_1381:                             # %if.end.205.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$1, 1300(%r13)
	jmp	.LBB9_189
.LBB9_512:                              # %if.else.440.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.113, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$11, %rcx
	ja	.LBB9_522
# BB#513:                               # %land.lhs.true.450.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_521
# BB#514:                               # %cond.true.454.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_523
# BB#515:                               # %cond.true.454.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_523
# BB#516:                               # %if.then.468.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_523
# BB#517:                               # %if.then.468.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_523
# BB#518:                               # %if.then.478.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%r12), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_523
# BB#519:                               # %if.then.478.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_523
# BB#520:                               # %if.then.488.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%r12), %eax
	addl	$-101, %eax
	jmp	.LBB9_523
.LBB9_1017:                             # %if.else.896.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.132, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$12, %rcx
	ja	.LBB9_1027
# BB#1018:                              # %land.lhs.true.906.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_1026
# BB#1019:                              # %cond.true.910.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1028
# BB#1020:                              # %cond.true.910.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1028
# BB#1021:                              # %if.then.924.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1028
# BB#1022:                              # %if.then.924.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1028
# BB#1023:                              # %if.then.934.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbp), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1028
# BB#1024:                              # %if.then.934.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1028
# BB#1025:                              # %if.then.944.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbp), %eax
	addl	$-97, %eax
	jmp	.LBB9_1028
.LBB9_402:                              # %cond.false.506.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.109, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_404:                              # %cond.end.512.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_405
# BB#406:                               # %if.else.522.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.110, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$20, %rcx
	ja	.LBB9_416
# BB#407:                               # %land.lhs.true.532.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_415
# BB#408:                               # %cond.true.536.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_417
# BB#409:                               # %cond.true.536.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_417
# BB#410:                               # %if.then.550.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_417
# BB#411:                               # %if.then.550.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_417
# BB#412:                               # %if.then.560.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbp), %eax
	addl	$-86, %eax
	cmpq	$3, %rcx
	jb	.LBB9_417
# BB#413:                               # %if.then.560.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_417
# BB#414:                               # %if.then.570.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbp), %eax
	addl	$-105, %eax
	jmp	.LBB9_417
.LBB9_405:                              # %if.then.516.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$706, 1296(%r13)        # imm = 0x2C2
	movl	$18, %edx
	movq	%r13, %rdi
	movq	64(%rsp), %rsi          # 8-byte Reload
	callq	dsc_parse_bounding_box
	jmp	.LBB9_419
.LBB9_416:                              # %cond.false.583.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.110, %esi
	movl	$21, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_417
.LBB9_1015:                             # %if.else.881.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movq	9912(%r13), %rax
	testq	%rax, %rax
	je	.LBB9_1321
# BB#1016:                              # %dsc_error.exit780.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	9584(%r13), %r8d
	movq	9576(%r13), %rcx
	movq	1288(%r13), %rdi
	movl	$13, %edx
	movq	%r13, %rsi
	callq	*%rax
.LBB9_993:                              # %dsc_error.exit.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpl	$2, %eax
	jne	.LBB9_1321
	jmp	.LBB9_1619
.LBB9_415:                              # %cond.false.579.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.110, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_417:                              # %cond.end.585.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_418
# BB#420:                               # %if.else.595.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.111, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$13, %rcx
	ja	.LBB9_430
# BB#421:                               # %land.lhs.true.605.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_429
# BB#422:                               # %cond.true.609.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_431
# BB#423:                               # %cond.true.609.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_431
# BB#424:                               # %if.then.623.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_431
# BB#425:                               # %if.then.623.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_431
# BB#426:                               # %if.then.633.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbp), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB9_431
# BB#427:                               # %if.then.633.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_431
# BB#428:                               # %if.then.643.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbp), %eax
	addl	$-97, %eax
	jmp	.LBB9_431
.LBB9_418:                              # %if.then.589.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$708, 1296(%r13)        # imm = 0x2C4
	movq	%r13, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	dsc_parse_viewing_orientation
	jmp	.LBB9_419
.LBB9_430:                              # %cond.false.656.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.111, %esi
	movl	$14, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_431
.LBB9_522:                              # %cond.false.501.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.113, %esi
	movl	$12, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_523
.LBB9_1027:                             # %cond.false.957.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.132, %esi
	movl	$13, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_1028
.LBB9_429:                              # %cond.false.652.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.111, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_431:                              # %cond.end.658.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_432
# BB#433:                               # %if.else.668.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$100, 1296(%r13)
	movq	%r13, %rdi
	callq	dsc_unknown
	jmp	.LBB9_434
.LBB9_432:                              # %if.then.662.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$709, 1296(%r13)        # imm = 0x2C5
	movl	$14, %edx
	movq	%r13, %rdi
	movq	88(%rsp), %rsi          # 8-byte Reload
	callq	dsc_parse_float_bounding_box
.LBB9_419:                              # %if.then.589.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_189
.LBB9_434:                              # %if.end.679.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	9556(%r13), %eax
	addq	9560(%r13), %rax
	movq	%rax, 1104(%r13)
	jmp	.LBB9_189
.LBB9_920:                              # %if.end.326.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	1168(%r13), %eax
	testl	%eax, %eax
	jne	.LBB9_1322
# BB#921:                               # %if.then.330.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$10, 1300(%r13)
	jmp	.LBB9_1321
.LBB9_699:                              # %if.else.450.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.115, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$14, %rcx
	ja	.LBB9_709
# BB#700:                               # %land.lhs.true.460.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_708
# BB#701:                               # %cond.true.464.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_710
# BB#702:                               # %cond.true.464.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_710
# BB#703:                               # %if.then.478.i.488
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_710
# BB#704:                               # %if.then.478.i.488
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_710
# BB#705:                               # %if.then.488.i.493
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%r12), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_710
# BB#706:                               # %if.then.488.i.493
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_710
# BB#707:                               # %if.then.498.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%r12), %eax
	addl	$-101, %eax
	jmp	.LBB9_710
.LBB9_521:                              # %cond.false.497.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.113, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_523:                              # %cond.end.503.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_524
# BB#525:                               # %if.else.509.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.114, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$8, %rcx
	ja	.LBB9_535
# BB#526:                               # %land.lhs.true.519.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_534
# BB#527:                               # %cond.true.523.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_536
# BB#528:                               # %cond.true.523.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_536
# BB#529:                               # %if.then.537.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_536
# BB#530:                               # %if.then.537.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_536
# BB#531:                               # %if.then.547.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%r12), %eax
	addl	$-69, %eax
	cmpq	$3, %rcx
	jb	.LBB9_536
# BB#532:                               # %if.then.547.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_536
# BB#533:                               # %if.then.557.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%r12), %eax
	addl	$-110, %eax
	jmp	.LBB9_536
.LBB9_524:                              # %if.then.507.i.315
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$503, 1296(%r13)        # imm = 0x1F7
	incl	1344(%r13)
	jmp	.LBB9_617
.LBB9_535:                              # %cond.false.570.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.114, %esi
	movl	$9, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_536
.LBB9_1026:                             # %cond.false.953.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.132, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_1028:                             # %cond.end.959.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_1029
# BB#1030:                              # %if.else.965.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.133, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$15, %rcx
	ja	.LBB9_1040
# BB#1031:                              # %land.lhs.true.975.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_1039
# BB#1032:                              # %cond.true.979.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1041
# BB#1033:                              # %cond.true.979.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1041
# BB#1034:                              # %if.then.993.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1041
# BB#1035:                              # %if.then.993.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1041
# BB#1036:                              # %if.then.1003.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbp), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1041
# BB#1037:                              # %if.then.1003.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1041
# BB#1038:                              # %if.then.1013.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbp), %eax
	addl	$-101, %eax
	jmp	.LBB9_1041
.LBB9_1029:                             # %if.then.963.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$701, 1296(%r13)        # imm = 0x2BD
	jmp	.LBB9_1321
.LBB9_1040:                             # %cond.false.1026.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.133, %esi
	movl	$16, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_1041
.LBB9_709:                              # %cond.false.511.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.115, %esi
	movl	$15, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_710
.LBB9_534:                              # %cond.false.566.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.114, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_536:                              # %cond.end.572.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_537
# BB#538:                               # %if.else.579.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.115, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$14, %rcx
	ja	.LBB9_548
# BB#539:                               # %land.lhs.true.589.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_547
# BB#540:                               # %cond.true.593.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_549
# BB#541:                               # %cond.true.593.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_549
# BB#542:                               # %if.then.607.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_549
# BB#543:                               # %if.then.607.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_549
# BB#544:                               # %if.then.617.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%r12), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_549
# BB#545:                               # %if.then.617.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_549
# BB#546:                               # %if.then.627.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%r12), %eax
	addl	$-101, %eax
	jmp	.LBB9_549
.LBB9_537:                              # %if.then.576.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$504, 1296(%r13)        # imm = 0x1F8
	decl	1344(%r13)
	jmp	.LBB9_617
.LBB9_548:                              # %cond.false.640.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.115, %esi
	movl	$15, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_549
.LBB9_1039:                             # %cond.false.1022.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.133, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_1041:                             # %cond.end.1028.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_1042
# BB#1043:                              # %if.else.1034.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.134, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$13, %rcx
	ja	.LBB9_1053
# BB#1044:                              # %land.lhs.true.1044.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_1052
# BB#1045:                              # %cond.true.1048.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1054
# BB#1046:                              # %cond.true.1048.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1054
# BB#1047:                              # %if.then.1062.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1054
# BB#1048:                              # %if.then.1062.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1054
# BB#1049:                              # %if.then.1072.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbp), %eax
	addl	$-69, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1054
# BB#1050:                              # %if.then.1072.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1054
# BB#1051:                              # %if.then.1082.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbp), %eax
	addl	$-110, %eax
	jmp	.LBB9_1054
.LBB9_1042:                             # %if.then.1032.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$702, 1296(%r13)        # imm = 0x2BE
	jmp	.LBB9_1321
.LBB9_1053:                             # %cond.false.1095.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.134, %esi
	movl	$14, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_1054
.LBB9_547:                              # %cond.false.636.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.115, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_549:                              # %cond.end.642.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_550
# BB#551:                               # %if.else.649.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.116, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$11, %rcx
	ja	.LBB9_561
# BB#552:                               # %land.lhs.true.659.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_560
# BB#553:                               # %cond.true.663.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_562
# BB#554:                               # %cond.true.663.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_562
# BB#555:                               # %if.then.677.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_562
# BB#556:                               # %if.then.677.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_562
# BB#557:                               # %if.then.687.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%r12), %eax
	addl	$-69, %eax
	cmpq	$3, %rcx
	jb	.LBB9_562
# BB#558:                               # %if.then.687.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_562
# BB#559:                               # %if.then.697.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%r12), %eax
	addl	$-110, %eax
	jmp	.LBB9_562
.LBB9_550:                              # %if.then.646.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$505, 1296(%r13)        # imm = 0x1F9
	incl	1348(%r13)
	jmp	.LBB9_617
.LBB9_561:                              # %cond.false.710.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.116, %esi
	movl	$12, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_562
.LBB9_1052:                             # %cond.false.1091.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.134, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_1054:                             # %cond.end.1097.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_1055
# BB#1056:                              # %if.else.1103.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.107, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$11, %rcx
	ja	.LBB9_1066
# BB#1057:                              # %land.lhs.true.1113.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_1065
# BB#1058:                              # %cond.true.1117.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1067
# BB#1059:                              # %cond.true.1117.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1067
# BB#1060:                              # %if.then.1131.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1067
# BB#1061:                              # %if.then.1131.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1067
# BB#1062:                              # %if.then.1141.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbp), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1067
# BB#1063:                              # %if.then.1141.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1067
# BB#1064:                              # %if.then.1151.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbp), %eax
	addl	$-97, %eax
	jmp	.LBB9_1067
.LBB9_1055:                             # %if.then.1101.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$703, 1296(%r13)        # imm = 0x2BF
	jmp	.LBB9_1321
.LBB9_1066:                             # %cond.false.1164.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.107, %esi
	movl	$12, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_1067
.LBB9_708:                              # %cond.false.507.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.115, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_710:                              # %cond.end.513.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_711
# BB#712:                               # %if.else.519.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.116, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$11, %rcx
	ja	.LBB9_722
# BB#713:                               # %land.lhs.true.529.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_721
# BB#714:                               # %cond.true.533.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_723
# BB#715:                               # %cond.true.533.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_723
# BB#716:                               # %if.then.547.i.509
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_723
# BB#717:                               # %if.then.547.i.509
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_723
# BB#718:                               # %if.then.557.i.515
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%r12), %eax
	addl	$-69, %eax
	cmpq	$3, %rcx
	jb	.LBB9_723
# BB#719:                               # %if.then.557.i.515
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_723
# BB#720:                               # %if.then.567.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%r12), %eax
	addl	$-110, %eax
	jmp	.LBB9_723
.LBB9_711:                              # %if.then.517.i.497
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$505, 1296(%r13)        # imm = 0x1F9
	incl	1348(%r13)
	jmp	.LBB9_837
.LBB9_722:                              # %cond.false.580.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.116, %esi
	movl	$12, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_723
.LBB9_560:                              # %cond.false.706.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.116, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_562:                              # %cond.end.712.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_563
# BB#564:                               # %if.else.720.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.117, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$15, %rcx
	ja	.LBB9_574
# BB#565:                               # %land.lhs.true.730.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_573
# BB#566:                               # %cond.true.734.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_575
# BB#567:                               # %cond.true.734.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_575
# BB#568:                               # %if.then.748.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_575
# BB#569:                               # %if.then.748.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_575
# BB#570:                               # %if.then.758.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%r12), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_575
# BB#571:                               # %if.then.758.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_575
# BB#572:                               # %if.then.768.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%r12), %eax
	addl	$-101, %eax
	jmp	.LBB9_575
.LBB9_563:                              # %if.then.716.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$506, 1296(%r13)        # imm = 0x1FA
	decl	1348(%r13)
	jmp	.LBB9_617
.LBB9_574:                              # %cond.false.781.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.117, %esi
	movl	$16, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_575
.LBB9_1065:                             # %cond.false.1160.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.107, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_1067:                             # %cond.end.1166.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_1068
# BB#1070:                              # %if.else.1182.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.128, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$12, %rcx
	ja	.LBB9_1080
# BB#1071:                              # %land.lhs.true.1192.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_1079
# BB#1072:                              # %cond.true.1196.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1081
# BB#1073:                              # %cond.true.1196.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1081
# BB#1074:                              # %if.then.1210.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1081
# BB#1075:                              # %if.then.1210.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1081
# BB#1076:                              # %if.then.1220.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbp), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1081
# BB#1077:                              # %if.then.1220.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1081
# BB#1078:                              # %if.then.1230.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbp), %eax
	addl	$-97, %eax
	jmp	.LBB9_1081
.LBB9_1068:                             # %if.then.1170.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$704, 1296(%r13)        # imm = 0x2C0
	movl	1168(%r13), %eax
	testl	%eax, %eax
	je	.LBB9_189
# BB#1069:                              # %if.then.1174.i
                                        #   in Loop: Header=BB9_189 Depth=2
	decl	%eax
	movq	1160(%r13), %rcx
	leaq	(%rax,%rax,8), %rax
	leaq	40(%rcx,%rax,8), %rsi
	movq	%r13, %rdi
	callq	dsc_parse_media
	jmp	.LBB9_1321
.LBB9_1080:                             # %cond.false.1243.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.128, %esi
	movl	$13, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_1081
.LBB9_721:                              # %cond.false.576.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.116, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_723:                              # %cond.end.582.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_724
# BB#725:                               # %if.else.589.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.127, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$9, %rcx
	ja	.LBB9_735
# BB#726:                               # %land.lhs.true.599.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_734
# BB#727:                               # %cond.true.603.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_736
# BB#728:                               # %cond.true.603.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_736
# BB#729:                               # %if.then.617.i.528
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_736
# BB#730:                               # %if.then.617.i.528
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_736
# BB#731:                               # %if.then.627.i.533
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%r12), %eax
	addl	$-70, %eax
	cmpq	$3, %rcx
	jb	.LBB9_736
# BB#732:                               # %if.then.627.i.533
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_736
# BB#733:                               # %if.then.637.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%r12), %eax
	addl	$-101, %eax
	jmp	.LBB9_736
.LBB9_724:                              # %if.then.586.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$506, 1296(%r13)        # imm = 0x1FA
	decl	1348(%r13)
	jmp	.LBB9_837
.LBB9_735:                              # %cond.false.650.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.127, %esi
	movl	$10, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_736
.LBB9_573:                              # %cond.false.777.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.117, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_575:                              # %cond.end.783.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_576
# BB#577:                               # %if.else.790.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.118, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$12, %rcx
	ja	.LBB9_587
# BB#578:                               # %land.lhs.true.800.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_586
# BB#579:                               # %cond.true.804.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_588
# BB#580:                               # %cond.true.804.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_588
# BB#581:                               # %if.then.818.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_588
# BB#582:                               # %if.then.818.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_588
# BB#583:                               # %if.then.828.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%r12), %eax
	addl	$-69, %eax
	cmpq	$3, %rcx
	jb	.LBB9_588
# BB#584:                               # %if.then.828.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_588
# BB#585:                               # %if.then.838.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%r12), %eax
	addl	$-110, %eax
	jmp	.LBB9_588
.LBB9_576:                              # %if.then.787.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$507, 1296(%r13)        # imm = 0x1FB
	incl	1352(%r13)
	jmp	.LBB9_617
.LBB9_587:                              # %cond.false.851.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.118, %esi
	movl	$13, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_588
.LBB9_1079:                             # %cond.false.1239.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.128, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_1081:                             # %cond.end.1245.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_1082
# BB#1083:                              # %if.else.1251.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.129, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$11, %rcx
	ja	.LBB9_1093
# BB#1084:                              # %land.lhs.true.1261.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_1092
# BB#1085:                              # %cond.true.1265.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1094
# BB#1086:                              # %cond.true.1265.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1094
# BB#1087:                              # %if.then.1279.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1094
# BB#1088:                              # %if.then.1279.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1094
# BB#1089:                              # %if.then.1289.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbp), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1094
# BB#1090:                              # %if.then.1289.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1094
# BB#1091:                              # %if.then.1299.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbp), %eax
	addl	$-97, %eax
	jmp	.LBB9_1094
.LBB9_1082:                             # %if.then.1249.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$604, 1296(%r13)        # imm = 0x25C
	jmp	.LBB9_1321
.LBB9_1093:                             # %cond.false.1312.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.129, %esi
	movl	$12, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_1094
.LBB9_734:                              # %cond.false.646.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.127, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_736:                              # %cond.end.652.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_737
# BB#738:                               # %if.else.658.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.117, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$15, %rcx
	ja	.LBB9_748
# BB#739:                               # %land.lhs.true.668.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_747
# BB#740:                               # %cond.true.672.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_749
# BB#741:                               # %cond.true.672.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_749
# BB#742:                               # %if.then.686.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_749
# BB#743:                               # %if.then.686.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_749
# BB#744:                               # %if.then.696.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%r12), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_749
# BB#745:                               # %if.then.696.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_749
# BB#746:                               # %if.then.706.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%r12), %eax
	addl	$-101, %eax
	jmp	.LBB9_749
.LBB9_737:                              # %if.then.656.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$603, 1296(%r13)        # imm = 0x25B
	jmp	.LBB9_837
.LBB9_748:                              # %cond.false.719.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.117, %esi
	movl	$16, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_749
.LBB9_586:                              # %cond.false.847.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.118, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_588:                              # %cond.end.853.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_589
# BB#590:                               # %if.else.861.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.119, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$14, %rcx
	ja	.LBB9_600
# BB#591:                               # %land.lhs.true.871.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_599
# BB#592:                               # %cond.true.875.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_601
# BB#593:                               # %cond.true.875.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_601
# BB#594:                               # %if.then.889.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_601
# BB#595:                               # %if.then.889.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_601
# BB#596:                               # %if.then.899.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%r12), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_601
# BB#597:                               # %if.then.899.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_601
# BB#598:                               # %if.then.909.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%r12), %eax
	addl	$-101, %eax
	jmp	.LBB9_601
.LBB9_589:                              # %if.then.857.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$508, 1296(%r13)        # imm = 0x1FC
	decl	1352(%r13)
	jmp	.LBB9_617
.LBB9_600:                              # %cond.false.922.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.119, %esi
	movl	$15, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_601
.LBB9_1092:                             # %cond.false.1308.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.129, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_1094:                             # %cond.end.1314.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_1095
# BB#1096:                              # %if.else.1320.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.130, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$13, %rcx
	ja	.LBB9_1106
# BB#1097:                              # %land.lhs.true.1330.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_1105
# BB#1098:                              # %cond.true.1334.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1107
# BB#1099:                              # %cond.true.1334.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1107
# BB#1100:                              # %if.then.1348.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1107
# BB#1101:                              # %if.then.1348.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1107
# BB#1102:                              # %if.then.1358.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbp), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1107
# BB#1103:                              # %if.then.1358.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1107
# BB#1104:                              # %if.then.1368.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbp), %eax
	addl	$-97, %eax
	jmp	.LBB9_1107
.LBB9_1095:                             # %if.then.1318.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$605, 1296(%r13)        # imm = 0x25D
	jmp	.LBB9_1321
.LBB9_1106:                             # %cond.false.1381.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.130, %esi
	movl	$14, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_1107
.LBB9_747:                              # %cond.false.715.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.117, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_749:                              # %cond.end.721.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_750
# BB#751:                               # %if.else.728.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.118, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$12, %rcx
	ja	.LBB9_761
# BB#752:                               # %land.lhs.true.738.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_760
# BB#753:                               # %cond.true.742.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_762
# BB#754:                               # %cond.true.742.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_762
# BB#755:                               # %if.then.756.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_762
# BB#756:                               # %if.then.756.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_762
# BB#757:                               # %if.then.766.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%r12), %eax
	addl	$-69, %eax
	cmpq	$3, %rcx
	jb	.LBB9_762
# BB#758:                               # %if.then.766.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_762
# BB#759:                               # %if.then.776.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%r12), %eax
	addl	$-110, %eax
	jmp	.LBB9_762
.LBB9_750:                              # %if.then.725.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$507, 1296(%r13)        # imm = 0x1FB
	incl	1352(%r13)
	jmp	.LBB9_837
.LBB9_761:                              # %cond.false.789.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.118, %esi
	movl	$13, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_762
.LBB9_599:                              # %cond.false.918.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.119, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_601:                              # %cond.end.924.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_602
# BB#603:                               # %if.else.931.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.120, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$11, %rcx
	ja	.LBB9_613
# BB#604:                               # %land.lhs.true.941.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_612
# BB#605:                               # %cond.true.945.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_614
# BB#606:                               # %cond.true.945.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_614
# BB#607:                               # %if.then.959.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_614
# BB#608:                               # %if.then.959.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_614
# BB#609:                               # %if.then.969.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%r12), %eax
	addl	$-69, %eax
	cmpq	$3, %rcx
	jb	.LBB9_614
# BB#610:                               # %if.then.969.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_614
# BB#611:                               # %if.then.979.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%r12), %eax
	addl	$-110, %eax
	jmp	.LBB9_614
.LBB9_602:                              # %if.then.928.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$509, 1296(%r13)        # imm = 0x1FD
	incl	1356(%r13)
	jmp	.LBB9_617
.LBB9_613:                              # %cond.false.992.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.120, %esi
	movl	$12, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_614
.LBB9_1105:                             # %cond.false.1377.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.130, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_1107:                             # %cond.end.1383.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_1108
# BB#1109:                              # %if.else.1389.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.131, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$11, %rcx
	ja	.LBB9_1119
# BB#1110:                              # %land.lhs.true.1399.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_1118
# BB#1111:                              # %cond.true.1403.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1120
# BB#1112:                              # %cond.true.1403.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1120
# BB#1113:                              # %if.then.1417.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1120
# BB#1114:                              # %if.then.1417.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1120
# BB#1115:                              # %if.then.1427.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbp), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1120
# BB#1116:                              # %if.then.1427.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1120
# BB#1117:                              # %if.then.1437.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbp), %eax
	addl	$-97, %eax
	jmp	.LBB9_1120
.LBB9_1108:                             # %if.then.1387.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$606, 1296(%r13)        # imm = 0x25E
	jmp	.LBB9_1321
.LBB9_1119:                             # %cond.false.1450.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.131, %esi
	movl	$12, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_1120
.LBB9_760:                              # %cond.false.785.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.118, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_762:                              # %cond.end.791.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_763
# BB#764:                               # %if.else.799.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.128, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$12, %rcx
	ja	.LBB9_774
# BB#765:                               # %land.lhs.true.809.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_773
# BB#766:                               # %cond.true.813.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_775
# BB#767:                               # %cond.true.813.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_775
# BB#768:                               # %if.then.827.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_775
# BB#769:                               # %if.then.827.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_775
# BB#770:                               # %if.then.837.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%r12), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB9_775
# BB#771:                               # %if.then.837.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_775
# BB#772:                               # %if.then.847.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%r12), %eax
	addl	$-97, %eax
	jmp	.LBB9_775
.LBB9_763:                              # %if.then.795.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$508, 1296(%r13)        # imm = 0x1FC
	decl	1352(%r13)
	jmp	.LBB9_837
.LBB9_774:                              # %cond.false.860.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.128, %esi
	movl	$13, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_775
.LBB9_612:                              # %cond.false.988.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.120, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_614:                              # %cond.end.994.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_615
# BB#616:                               # %if.else.1002.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$100, 1296(%r13)
	movq	%r13, %rdi
	callq	dsc_unknown
	jmp	.LBB9_617
.LBB9_615:                              # %if.then.998.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$510, 1296(%r13)        # imm = 0x1FE
	decl	1356(%r13)
.LBB9_617:                              # %if.end.1017.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	9556(%r13), %eax
	addq	9560(%r13), %rax
	movq	%rax, 1120(%r13)
	jmp	.LBB9_189
.LBB9_1118:                             # %cond.false.1446.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.131, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_1120:                             # %cond.end.1452.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_1121
# BB#1144:                              # %if.else.1529.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.108, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$17, %rcx
	ja	.LBB9_1154
# BB#1145:                              # %land.lhs.true.1539.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_1153
# BB#1146:                              # %cond.true.1543.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1155
# BB#1147:                              # %cond.true.1543.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1155
# BB#1148:                              # %if.then.1557.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1155
# BB#1149:                              # %if.then.1557.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1155
# BB#1150:                              # %if.then.1567.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbp), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1155
# BB#1151:                              # %if.then.1567.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1155
# BB#1152:                              # %if.then.1577.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbp), %eax
	addl	$-97, %eax
	jmp	.LBB9_1155
.LBB9_1121:                             # %if.then.1456.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movb	$0, 176(%rsp)
	movq	9576(%r13), %rdx
	addq	$12, %rdx
	movl	9584(%r13), %ecx
	addl	$-12, %ecx
	movl	$255, %esi
	xorl	%r8d, %r8d
	leaq	176(%rsp), %rdi
	callq	dsc_copy_string
	movslq	1192(%r13), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	jle	.LBB9_1122
# BB#1132:                              # %for.body.lr.ph.i.726
                                        #   in Loop: Header=BB9_189 Depth=2
	movq	1200(%r13), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movb	176(%rsp), %al
	movb	%al, 32(%rsp)           # 1-byte Spill
	movzbl	%al, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
.LBB9_1133:                             # %for.body.i.729
                                        #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_189 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_1137 Depth 4
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	(%rax,%rbx,8), %r12
	testq	%r12, %r12
	je	.LBB9_1142
# BB#1134:                              # %land.lhs.true.1472.i
                                        #   in Loop: Header=BB9_1133 Depth=3
	movq	(%r12), %rbp
	testq	%rbp, %rbp
	je	.LBB9_1142
# BB#1135:                              # %land.lhs.true.1477.i
                                        #   in Loop: Header=BB9_1133 Depth=3
	callq	__ctype_toupper_loc
	movq	(%rax), %rax
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	(%rax,%rcx,4), %edx
	movzbl	(%rbp), %ecx
	movl	(%rax,%rcx,4), %edi
	cmpl	%edi, %edx
	jne	.LBB9_1139
# BB#1136:                              # %while.body.i.782.i.preheader
                                        #   in Loop: Header=BB9_1133 Depth=3
	incq	%rbp
	leaq	177(%rsp), %rcx
	movb	32(%rsp), %dl           # 1-byte Reload
	movb	%dl, %sil
.LBB9_1137:                             # %while.body.i.782.i
                                        #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_189 Depth=2
                                        #       Parent Loop BB9_1133 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	testb	%sil, %sil
	je	.LBB9_1140
# BB#1138:                              # %if.end.i.786.i
                                        #   in Loop: Header=BB9_1137 Depth=4
	movzbl	(%rcx), %esi
	movl	(%rax,%rsi,4), %edx
	movzbl	(%rbp), %edi
	movl	(%rax,%rdi,4), %edi
	incq	%rcx
	incq	%rbp
	cmpl	%edi, %edx
	je	.LBB9_1137
.LBB9_1139:                             # %dsc_stricmp.exit.i.744
                                        #   in Loop: Header=BB9_1133 Depth=3
	cmpl	%edi, %edx
	je	.LBB9_1140
.LBB9_1142:                             # %for.inc.i.746
                                        #   in Loop: Header=BB9_1133 Depth=3
	incq	%rbx
	cmpq	40(%rsp), %rbx          # 8-byte Folded Reload
	jl	.LBB9_1133
	jmp	.LBB9_1123
.LBB9_1154:                             # %cond.false.1590.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.108, %esi
	movl	$18, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_1155
.LBB9_773:                              # %cond.false.856.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.128, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_775:                              # %cond.end.862.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_776
# BB#777:                               # %if.else.868.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.129, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$11, %rcx
	ja	.LBB9_787
# BB#778:                               # %land.lhs.true.878.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_786
# BB#779:                               # %cond.true.882.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_788
# BB#780:                               # %cond.true.882.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_788
# BB#781:                               # %if.then.896.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_788
# BB#782:                               # %if.then.896.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_788
# BB#783:                               # %if.then.906.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%r12), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB9_788
# BB#784:                               # %if.then.906.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_788
# BB#785:                               # %if.then.916.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%r12), %eax
	addl	$-97, %eax
	jmp	.LBB9_788
.LBB9_776:                              # %if.then.866.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$604, 1296(%r13)        # imm = 0x25C
	jmp	.LBB9_837
.LBB9_787:                              # %cond.false.929.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.129, %esi
	movl	$12, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_788
.LBB9_1140:                             # %if.then.1486.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	1168(%r13), %eax
	testl	%eax, %eax
	je	.LBB9_1321
# BB#1141:                              # %if.then.1489.i
                                        #   in Loop: Header=BB9_189 Depth=2
	decl	%eax
	movq	1160(%r13), %rcx
	leaq	(%rax,%rax,8), %rax
	movq	%r12, 40(%rcx,%rax,8)
	jmp	.LBB9_1321
.LBB9_1153:                             # %cond.false.1586.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.108, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_1155:                             # %cond.end.1592.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_1156
# BB#1159:                              # %if.else.1611.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.109, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$17, %rcx
	ja	.LBB9_1169
# BB#1160:                              # %land.lhs.true.1621.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_1168
# BB#1161:                              # %cond.true.1625.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1170
# BB#1162:                              # %cond.true.1625.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1170
# BB#1163:                              # %if.then.1639.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1170
# BB#1164:                              # %if.then.1639.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1170
# BB#1165:                              # %if.then.1649.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbp), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1170
# BB#1166:                              # %if.then.1649.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1170
# BB#1167:                              # %if.then.1659.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbp), %eax
	addl	$-97, %eax
	jmp	.LBB9_1170
.LBB9_1156:                             # %if.then.1596.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	1168(%r13), %eax
	testl	%eax, %eax
	je	.LBB9_189
# BB#1157:                              # %if.then.1599.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$705, 1296(%r13)        # imm = 0x2C1
	decl	%eax
	movq	1160(%r13), %rcx
	leaq	(%rax,%rax,8), %rax
	leaq	32(%rcx,%rax,8), %rsi
	movl	$18, %edx
	movq	%r13, %rdi
	callq	dsc_parse_orientation
	jmp	.LBB9_1158
.LBB9_1169:                             # %cond.false.1672.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.109, %esi
	movl	$18, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_1170
.LBB9_1122:                             # %if.then.1456.while.cond.preheader_crit_edge.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movb	176(%rsp), %al
	movb	%al, 32(%rsp)           # 1-byte Spill
.LBB9_1123:                             # %while.cond.preheader.i.727
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	32(%rsp), %ebx          # 1-byte Folded Reload
	callq	__ctype_toupper_loc
	movq	(%rax), %rcx
	movl	(%rcx,%rbx,4), %r8d
	movl	$.L.str, %esi
	movl	$dsc_known_media, %eax
.LBB9_1124:                             # %while.body.i.747
                                        #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_189 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_1126 Depth 4
	movzbl	(%rsi), %edx
	movl	(%rcx,%rdx,4), %ebx
	cmpl	%ebx, %r8d
	movl	%r8d, %edx
	jne	.LBB9_1128
# BB#1125:                              # %while.body.i.798.i.preheader
                                        #   in Loop: Header=BB9_1124 Depth=3
	incq	%rsi
	leaq	177(%rsp), %rdi
	movb	32(%rsp), %dl           # 1-byte Reload
	movb	%dl, %bpl
.LBB9_1126:                             # %while.body.i.798.i
                                        #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_189 Depth=2
                                        #       Parent Loop BB9_1124 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	testb	%bpl, %bpl
	je	.LBB9_1129
# BB#1127:                              # %if.end.i.806.i
                                        #   in Loop: Header=BB9_1126 Depth=4
	movzbl	(%rdi), %ebp
	movl	(%rcx,%rbp,4), %edx
	movzbl	(%rsi), %ebx
	movl	(%rcx,%rbx,4), %ebx
	incq	%rdi
	incq	%rsi
	cmpl	%ebx, %edx
	je	.LBB9_1126
.LBB9_1128:                             # %dsc_stricmp.exit812.i
                                        #   in Loop: Header=BB9_1124 Depth=3
	cmpl	%ebx, %edx
	je	.LBB9_1129
# BB#1143:                              # %if.end.1522.i
                                        #   in Loop: Header=BB9_1124 Depth=3
	movq	48(%rax), %rsi
	addq	$48, %rax
	testq	%rsi, %rsi
	jne	.LBB9_1124
	jmp	.LBB9_1320
.LBB9_1129:                             # %if.then.1511.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	1168(%r13), %ecx
	testl	%ecx, %ecx
	je	.LBB9_1131
# BB#1130:                              # %if.then.1514.i
                                        #   in Loop: Header=BB9_189 Depth=2
	decl	%ecx
	movq	1160(%r13), %rdx
	leaq	(%rcx,%rcx,8), %rcx
	movq	%rax, 40(%rdx,%rcx,8)
.LBB9_1131:                             # %while.end.i.749
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$0, (%rax)
	jne	.LBB9_1321
	jmp	.LBB9_1320
.LBB9_786:                              # %cond.false.925.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.129, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_788:                              # %cond.end.931.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_789
# BB#790:                               # %if.else.937.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.130, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$13, %rcx
	ja	.LBB9_800
# BB#791:                               # %land.lhs.true.947.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_799
# BB#792:                               # %cond.true.951.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_801
# BB#793:                               # %cond.true.951.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_801
# BB#794:                               # %if.then.965.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_801
# BB#795:                               # %if.then.965.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_801
# BB#796:                               # %if.then.975.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%r12), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB9_801
# BB#797:                               # %if.then.975.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_801
# BB#798:                               # %if.then.985.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%r12), %eax
	addl	$-97, %eax
	jmp	.LBB9_801
.LBB9_789:                              # %if.then.935.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$605, 1296(%r13)        # imm = 0x25D
	jmp	.LBB9_837
.LBB9_800:                              # %cond.false.998.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.130, %esi
	movl	$14, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_801
.LBB9_1168:                             # %cond.false.1668.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.109, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_1170:                             # %cond.end.1674.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_1171
# BB#1173:                              # %if.else.1693.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.110, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$20, %rcx
	ja	.LBB9_1183
# BB#1174:                              # %land.lhs.true.1703.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_1182
# BB#1175:                              # %cond.true.1707.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1184
# BB#1176:                              # %cond.true.1707.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1184
# BB#1177:                              # %if.then.1721.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1184
# BB#1178:                              # %if.then.1721.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1184
# BB#1179:                              # %if.then.1731.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbp), %eax
	addl	$-86, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1184
# BB#1180:                              # %if.then.1731.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1184
# BB#1181:                              # %if.then.1741.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbp), %eax
	addl	$-105, %eax
	jmp	.LBB9_1184
.LBB9_1171:                             # %if.then.1678.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	1168(%r13), %eax
	testl	%eax, %eax
	je	.LBB9_189
# BB#1172:                              # %if.then.1681.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$706, 1296(%r13)        # imm = 0x2C2
	decl	%eax
	movq	1160(%r13), %rcx
	leaq	(%rax,%rax,8), %rax
	leaq	48(%rcx,%rax,8), %rsi
	movl	$18, %edx
	movq	%r13, %rdi
	callq	dsc_parse_bounding_box
.LBB9_1158:                             # %if.then.1599.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_1321
	jmp	.LBB9_1619
.LBB9_1183:                             # %cond.false.1754.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.110, %esi
	movl	$21, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_1184
.LBB9_799:                              # %cond.false.994.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.130, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_801:                              # %cond.end.1000.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_802
# BB#803:                               # %if.else.1006.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.131, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$11, %rcx
	ja	.LBB9_813
# BB#804:                               # %land.lhs.true.1016.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_812
# BB#805:                               # %cond.true.1020.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%r12), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_814
# BB#806:                               # %cond.true.1020.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_814
# BB#807:                               # %if.then.1034.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%r12), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_814
# BB#808:                               # %if.then.1034.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_814
# BB#809:                               # %if.then.1044.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%r12), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB9_814
# BB#810:                               # %if.then.1044.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_814
# BB#811:                               # %if.then.1054.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%r12), %eax
	addl	$-97, %eax
	jmp	.LBB9_814
.LBB9_802:                              # %if.then.1004.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$606, 1296(%r13)        # imm = 0x25E
	jmp	.LBB9_837
.LBB9_813:                              # %cond.false.1067.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.131, %esi
	movl	$12, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB9_814
.LBB9_1182:                             # %cond.false.1750.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.110, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_1184:                             # %cond.end.1756.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_1185
# BB#1188:                              # %if.else.1775.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.111, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$13, %rcx
	ja	.LBB9_1198
# BB#1189:                              # %land.lhs.true.1785.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_1197
# BB#1190:                              # %cond.true.1789.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1199
# BB#1191:                              # %cond.true.1789.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1199
# BB#1192:                              # %if.then.1803.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1199
# BB#1193:                              # %if.then.1803.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1199
# BB#1194:                              # %if.then.1813.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbp), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1199
# BB#1195:                              # %if.then.1813.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1199
# BB#1196:                              # %if.then.1823.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbp), %eax
	addl	$-97, %eax
	jmp	.LBB9_1199
.LBB9_1185:                             # %if.then.1760.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	1168(%r13), %eax
	testl	%eax, %eax
	je	.LBB9_189
# BB#1186:                              # %if.then.1763.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$708, 1296(%r13)        # imm = 0x2C4
	decl	%eax
	movq	1160(%r13), %rcx
	leaq	(%rax,%rax,8), %rax
	leaq	56(%rcx,%rax,8), %rsi
	movq	%r13, %rdi
	callq	dsc_parse_viewing_orientation
	jmp	.LBB9_1187
.LBB9_1198:                             # %cond.false.1836.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.111, %esi
	movl	$14, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_1199
.LBB9_812:                              # %cond.false.1063.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.131, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB9_814:                              # %cond.end.1069.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_815
# BB#835:                               # %if.else.1127.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$100, 1296(%r13)
.LBB9_836:                              # %if.end.1144.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movq	%r13, %rdi
	callq	dsc_unknown
	jmp	.LBB9_837
.LBB9_815:                              # %if.then.1073.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movb	$0, 176(%rsp)
	movl	$607, 1296(%r13)        # imm = 0x25F
	movq	9576(%r13), %rdx
	addq	$12, %rdx
	movl	9584(%r13), %ecx
	addl	$-12, %ecx
	movl	$255, %esi
	xorl	%r8d, %r8d
	leaq	176(%rsp), %rdi
	callq	dsc_copy_string
	movslq	1192(%r13), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	jle	.LBB9_816
# BB#824:                               # %for.body.lr.ph.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movq	1200(%r13), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movb	176(%rsp), %al
	movb	%al, 32(%rsp)           # 1-byte Spill
	movzbl	%al, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%r12d, %r12d
.LBB9_825:                              # %for.body.i
                                        #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_189 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_829 Depth 4
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	(%rax,%r12,8), %rbx
	testq	%rbx, %rbx
	je	.LBB9_833
# BB#826:                               # %land.lhs.true.1088.i
                                        #   in Loop: Header=BB9_825 Depth=3
	movq	(%rbx), %rbp
	testq	%rbp, %rbp
	je	.LBB9_833
# BB#827:                               # %land.lhs.true.1093.i
                                        #   in Loop: Header=BB9_825 Depth=3
	callq	__ctype_toupper_loc
	movq	(%rax), %rax
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	(%rax,%rcx,4), %edx
	movzbl	(%rbp), %ecx
	movl	(%rax,%rcx,4), %edi
	cmpl	%edi, %edx
	jne	.LBB9_831
# BB#828:                               # %while.body.i.i.557.preheader
                                        #   in Loop: Header=BB9_825 Depth=3
	incq	%rbp
	leaq	177(%rsp), %rcx
	movb	32(%rsp), %dl           # 1-byte Reload
	movb	%dl, %sil
.LBB9_829:                              # %while.body.i.i.557
                                        #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_189 Depth=2
                                        #       Parent Loop BB9_825 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	testb	%sil, %sil
	je	.LBB9_832
# BB#830:                               # %if.end.i.i.561
                                        #   in Loop: Header=BB9_829 Depth=4
	movzbl	(%rcx), %esi
	movl	(%rax,%rsi,4), %edx
	movzbl	(%rbp), %edi
	movl	(%rax,%rdi,4), %edi
	incq	%rcx
	incq	%rbp
	cmpl	%edi, %edx
	je	.LBB9_829
.LBB9_831:                              # %dsc_stricmp.exit.i
                                        #   in Loop: Header=BB9_825 Depth=3
	cmpl	%edi, %edx
	je	.LBB9_832
.LBB9_833:                              # %for.inc.i
                                        #   in Loop: Header=BB9_825 Depth=3
	incq	%r12
	cmpq	40(%rsp), %r12          # 8-byte Folded Reload
	jl	.LBB9_825
	jmp	.LBB9_817
.LBB9_832:                              # %if.then.1102.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	%rbx, (%rax)
	jmp	.LBB9_837
.LBB9_1197:                             # %cond.false.1832.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.111, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_1199:                             # %cond.end.1838.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_1200
# BB#1202:                              # %if.else.1857.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.113, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$11, %rcx
	ja	.LBB9_1212
# BB#1203:                              # %land.lhs.true.1867.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_1211
# BB#1204:                              # %cond.true.1871.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1213
# BB#1205:                              # %cond.true.1871.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1213
# BB#1206:                              # %if.then.1885.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1213
# BB#1207:                              # %if.then.1885.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1213
# BB#1208:                              # %if.then.1895.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbp), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1213
# BB#1209:                              # %if.then.1895.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1213
# BB#1210:                              # %if.then.1905.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbp), %eax
	addl	$-101, %eax
	jmp	.LBB9_1213
.LBB9_1200:                             # %if.then.1842.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	1168(%r13), %eax
	testl	%eax, %eax
	je	.LBB9_189
# BB#1201:                              # %if.then.1845.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$709, 1296(%r13)        # imm = 0x2C5
	decl	%eax
	movq	1160(%r13), %rcx
	leaq	(%rax,%rax,8), %rax
	leaq	64(%rcx,%rax,8), %rsi
	movl	$14, %edx
	movq	%r13, %rdi
	callq	dsc_parse_float_bounding_box
.LBB9_1187:                             # %if.then.1763.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_189
	jmp	.LBB9_1321
.LBB9_1212:                             # %cond.false.1918.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.113, %esi
	movl	$12, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_1213
.LBB9_816:                              # %if.then.1073.while.cond.preheader_crit_edge.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movb	176(%rsp), %al
	movb	%al, 32(%rsp)           # 1-byte Spill
.LBB9_817:                              # %while.cond.preheader.i.555
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	32(%rsp), %ebx          # 1-byte Folded Reload
	callq	__ctype_toupper_loc
	movq	(%rax), %rax
	movl	(%rax,%rbx,4), %r8d
	movl	$.L.str, %esi
	movl	$dsc_known_media, %edx
.LBB9_818:                              # %while.body.i
                                        #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_189 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_820 Depth 4
	movzbl	(%rsi), %ecx
	movl	(%rax,%rcx,4), %ebx
	cmpl	%ebx, %r8d
	movl	%r8d, %ecx
	jne	.LBB9_822
# BB#819:                               # %while.body.i.363.i.preheader
                                        #   in Loop: Header=BB9_818 Depth=3
	incq	%rsi
	leaq	177(%rsp), %rdi
	movb	32(%rsp), %cl           # 1-byte Reload
	movb	%cl, %bpl
.LBB9_820:                              # %while.body.i.363.i
                                        #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_189 Depth=2
                                        #       Parent Loop BB9_818 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	testb	%bpl, %bpl
	je	.LBB9_834
# BB#821:                               # %if.end.i.371.i
                                        #   in Loop: Header=BB9_820 Depth=4
	movzbl	(%rdi), %ebp
	movl	(%rax,%rbp,4), %ecx
	movzbl	(%rsi), %ebx
	movl	(%rax,%rbx,4), %ebx
	incq	%rdi
	incq	%rsi
	cmpl	%ebx, %ecx
	je	.LBB9_820
.LBB9_822:                              # %dsc_stricmp.exit377.i
                                        #   in Loop: Header=BB9_818 Depth=3
	cmpl	%ebx, %ecx
	je	.LBB9_834
# BB#823:                               # %if.end.1120.i
                                        #   in Loop: Header=BB9_818 Depth=3
	movq	48(%rdx), %rsi
	addq	$48, %rdx
	testq	%rsi, %rsi
	jne	.LBB9_818
	jmp	.LBB9_836
.LBB9_834:                              # %while.end.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	%rdx, (%rax)
	cmpq	$0, (%rdx)
	je	.LBB9_836
.LBB9_837:                              # %if.end.1144.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	9556(%r13), %eax
	addq	9560(%r13), %rax
	movq	%rax, 1136(%r13)
	jmp	.LBB9_189
.LBB9_1211:                             # %cond.false.1914.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.113, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_1213:                             # %cond.end.1920.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_1214
# BB#1215:                              # %if.else.1927.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.114, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$8, %rcx
	ja	.LBB9_1225
# BB#1216:                              # %land.lhs.true.1937.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_1224
# BB#1217:                              # %cond.true.1941.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1226
# BB#1218:                              # %cond.true.1941.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1226
# BB#1219:                              # %if.then.1955.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1226
# BB#1220:                              # %if.then.1955.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1226
# BB#1221:                              # %if.then.1965.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbp), %eax
	addl	$-69, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1226
# BB#1222:                              # %if.then.1965.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1226
# BB#1223:                              # %if.then.1975.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbp), %eax
	addl	$-110, %eax
	jmp	.LBB9_1226
.LBB9_1214:                             # %if.then.1924.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$503, 1296(%r13)        # imm = 0x1F7
	incl	1344(%r13)
	jmp	.LBB9_1321
.LBB9_1225:                             # %cond.false.1988.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.114, %esi
	movl	$9, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_1226
.LBB9_1224:                             # %cond.false.1984.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.114, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_1226:                             # %cond.end.1990.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_1227
# BB#1228:                              # %if.else.1997.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.115, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$14, %rcx
	ja	.LBB9_1238
# BB#1229:                              # %land.lhs.true.2007.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_1237
# BB#1230:                              # %cond.true.2011.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1239
# BB#1231:                              # %cond.true.2011.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1239
# BB#1232:                              # %if.then.2025.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1239
# BB#1233:                              # %if.then.2025.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1239
# BB#1234:                              # %if.then.2035.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbp), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1239
# BB#1235:                              # %if.then.2035.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1239
# BB#1236:                              # %if.then.2045.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbp), %eax
	addl	$-101, %eax
	jmp	.LBB9_1239
.LBB9_1227:                             # %if.then.1994.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$503, 1296(%r13)        # imm = 0x1F7
	decl	1344(%r13)
	jmp	.LBB9_1321
.LBB9_1238:                             # %cond.false.2058.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.115, %esi
	movl	$15, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_1239
.LBB9_1237:                             # %cond.false.2054.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.115, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_1239:                             # %cond.end.2060.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_1240
# BB#1241:                              # %if.else.2067.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.116, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$11, %rcx
	ja	.LBB9_1251
# BB#1242:                              # %land.lhs.true.2077.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_1250
# BB#1243:                              # %cond.true.2081.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1252
# BB#1244:                              # %cond.true.2081.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1252
# BB#1245:                              # %if.then.2095.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1252
# BB#1246:                              # %if.then.2095.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1252
# BB#1247:                              # %if.then.2105.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbp), %eax
	addl	$-69, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1252
# BB#1248:                              # %if.then.2105.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1252
# BB#1249:                              # %if.then.2115.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbp), %eax
	addl	$-110, %eax
	jmp	.LBB9_1252
.LBB9_1240:                             # %if.then.2064.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$505, 1296(%r13)        # imm = 0x1F9
	incl	1348(%r13)
	jmp	.LBB9_1321
.LBB9_1251:                             # %cond.false.2128.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.116, %esi
	movl	$12, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_1252
.LBB9_1250:                             # %cond.false.2124.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.116, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_1252:                             # %cond.end.2130.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_1253
# BB#1254:                              # %if.else.2138.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.117, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$15, %rcx
	ja	.LBB9_1264
# BB#1255:                              # %land.lhs.true.2148.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_1263
# BB#1256:                              # %cond.true.2152.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1265
# BB#1257:                              # %cond.true.2152.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1265
# BB#1258:                              # %if.then.2166.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1265
# BB#1259:                              # %if.then.2166.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1265
# BB#1260:                              # %if.then.2176.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbp), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1265
# BB#1261:                              # %if.then.2176.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1265
# BB#1262:                              # %if.then.2186.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbp), %eax
	addl	$-101, %eax
	jmp	.LBB9_1265
.LBB9_1253:                             # %if.then.2134.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$506, 1296(%r13)        # imm = 0x1FA
	decl	1348(%r13)
	jmp	.LBB9_1321
.LBB9_1264:                             # %cond.false.2199.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.117, %esi
	movl	$16, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_1265
.LBB9_1263:                             # %cond.false.2195.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.117, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_1265:                             # %cond.end.2201.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_1266
# BB#1267:                              # %if.else.2208.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.118, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$12, %rcx
	ja	.LBB9_1277
# BB#1268:                              # %land.lhs.true.2218.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_1276
# BB#1269:                              # %cond.true.2222.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1278
# BB#1270:                              # %cond.true.2222.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1278
# BB#1271:                              # %if.then.2236.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1278
# BB#1272:                              # %if.then.2236.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1278
# BB#1273:                              # %if.then.2246.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbp), %eax
	addl	$-69, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1278
# BB#1274:                              # %if.then.2246.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1278
# BB#1275:                              # %if.then.2256.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbp), %eax
	addl	$-110, %eax
	jmp	.LBB9_1278
.LBB9_1266:                             # %if.then.2205.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$507, 1296(%r13)        # imm = 0x1FB
	incl	1352(%r13)
	jmp	.LBB9_1321
.LBB9_1277:                             # %cond.false.2269.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.118, %esi
	movl	$13, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_1278
.LBB9_1276:                             # %cond.false.2265.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.118, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_1278:                             # %cond.end.2271.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_1279
# BB#1280:                              # %if.else.2279.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.119, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$14, %rcx
	ja	.LBB9_1290
# BB#1281:                              # %land.lhs.true.2289.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_1289
# BB#1282:                              # %cond.true.2293.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1291
# BB#1283:                              # %cond.true.2293.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1291
# BB#1284:                              # %if.then.2307.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1291
# BB#1285:                              # %if.then.2307.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1291
# BB#1286:                              # %if.then.2317.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbp), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1291
# BB#1287:                              # %if.then.2317.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1291
# BB#1288:                              # %if.then.2327.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbp), %eax
	addl	$-101, %eax
	jmp	.LBB9_1291
.LBB9_1279:                             # %if.then.2275.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$508, 1296(%r13)        # imm = 0x1FC
	decl	1352(%r13)
	jmp	.LBB9_1321
.LBB9_1290:                             # %cond.false.2340.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.119, %esi
	movl	$15, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_1291
.LBB9_1289:                             # %cond.false.2336.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.119, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_1291:                             # %cond.end.2342.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_1292
# BB#1293:                              # %if.else.2349.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.120, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$11, %rcx
	ja	.LBB9_1303
# BB#1294:                              # %land.lhs.true.2359.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_1302
# BB#1295:                              # %cond.true.2363.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1304
# BB#1296:                              # %cond.true.2363.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1304
# BB#1297:                              # %if.then.2377.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1304
# BB#1298:                              # %if.then.2377.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1304
# BB#1299:                              # %if.then.2387.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbp), %eax
	addl	$-69, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1304
# BB#1300:                              # %if.then.2387.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1304
# BB#1301:                              # %if.then.2397.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbp), %eax
	addl	$-110, %eax
	jmp	.LBB9_1304
.LBB9_1292:                             # %if.then.2346.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$509, 1296(%r13)        # imm = 0x1FD
	incl	1356(%r13)
	jmp	.LBB9_1321
.LBB9_1303:                             # %cond.false.2410.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.120, %esi
	movl	$12, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_1304
.LBB9_1302:                             # %cond.false.2406.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.120, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_1304:                             # %cond.end.2412.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_1305
# BB#1306:                              # %if.else.2420.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.135, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$13, %rcx
	ja	.LBB9_1316
# BB#1307:                              # %land.lhs.true.2430.i
                                        #   in Loop: Header=BB9_189 Depth=2
	cmpq	$3, %rcx
	ja	.LBB9_1315
# BB#1308:                              # %cond.true.2434.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	(%rbp), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_1317
# BB#1309:                              # %cond.true.2434.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1317
# BB#1310:                              # %if.then.2448.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	1(%rbp), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB9_1317
# BB#1311:                              # %if.then.2448.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1317
# BB#1312:                              # %if.then.2458.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	2(%rbp), %eax
	addl	$-73, %eax
	cmpq	$3, %rcx
	jb	.LBB9_1317
# BB#1313:                              # %if.then.2458.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	jne	.LBB9_1317
# BB#1314:                              # %if.then.2468.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movzbl	3(%rbp), %eax
	addl	$-110, %eax
	jmp	.LBB9_1317
.LBB9_1305:                             # %if.then.2416.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$510, 1296(%r13)        # imm = 0x1FE
	decl	1356(%r13)
	jmp	.LBB9_1321
.LBB9_1316:                             # %cond.false.2481.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.135, %esi
	movl	$14, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_1317
.LBB9_1315:                             # %cond.false.2477.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$.L.str.135, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_1317:                             # %cond.end.2483.i
                                        #   in Loop: Header=BB9_189 Depth=2
	testl	%eax, %eax
	je	.LBB9_1318
# BB#1319:                              # %if.else.2489.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$100, 1296(%r13)
.LBB9_1320:                             # %if.end.2518.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movq	%r13, %rdi
	callq	dsc_unknown
.LBB9_1321:                             # %if.end.2518.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	1168(%r13), %eax
	testl	%eax, %eax
	je	.LBB9_189
.LBB9_1322:                             # %if.then.2521.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	9556(%r13), %ecx
	addq	9560(%r13), %rcx
	decl	%eax
	movq	1160(%r13), %rdx
	leaq	(%rax,%rax,8), %rax
	movq	%rcx, 24(%rdx,%rax,8)
	jmp	.LBB9_189
.LBB9_1318:                             # %if.then.2487.i
                                        #   in Loop: Header=BB9_189 Depth=2
	movl	$707, 1296(%r13)        # imm = 0x2C3
	jmp	.LBB9_1321
.LBB9_1619:                             # %if.then.474
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$1, 1296(%r13)
	movl	$1, %ebx
.LBB9_1620:                             # %do.cond.477
                                        #   in Loop: Header=BB9_6 Depth=1
	testl	%r15d, %r15d
	je	.LBB9_1622
# BB#1621:                              # %do.cond.477.do.body_crit_edge
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpl	$1, 1296(%r13)
	jne	.LBB9_6
	jmp	.LBB9_1622
.LBB9_131:                              # %if.end.i.i.290.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$32, %edi
	callq	malloc
.LBB9_132:                              # %dsc_memalloc.exit.i.294.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	%rax, 9960(%r13)
	movl	$-1, %ebx
	testq	%rax, %rax
	je	.LBB9_187
# BB#133:                               # %if.end.i.316.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	$128, (%rax)
	movzbl	86(%rbp), %ecx
	movzbl	85(%rbp), %edx
	shlq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	84(%rbp), %esi
	shlq	$16, %rsi
	orq	%rdx, %rsi
	movzbl	83(%rbp), %ecx
	shlq	$24, %rcx
	orq	%rsi, %rcx
	movq	%rcx, 8(%rax)
	leaq	255(%rcx), %r8
	movq	%r8, %rsi
	movabsq	$8589934464, %rdx       # imm = 0x1FFFFFF80
	andq	%rdx, %rsi
	movq	%rsi, 16(%rax)
	movzbl	90(%rbp), %esi
	movzbl	89(%rbp), %edi
	shlq	$8, %rdi
	orq	%rsi, %rdi
	movzbl	88(%rbp), %edx
	shlq	$16, %rdx
	orq	%rdi, %rdx
	movzbl	87(%rbp), %esi
	shlq	$24, %rsi
	orq	%rdx, %rsi
	movq	%rsi, 24(%rax)
	movq	1320(%r13), %rax
	testq	%rax, %rax
	je	.LBB9_135
# BB#134:                               # %land.lhs.true.i.317.i
                                        #   in Loop: Header=BB9_6 Depth=1
	orq	$127, %r8
	addq	%r8, %rsi
	andq	$-128, %rsi
	cmpq	%rax, %rsi
	ja	.LBB9_187
.LBB9_135:                              # %dsc_read_macbin.exit.i
                                        #   in Loop: Header=BB9_6 Depth=1
	subq	$-128, %rcx
	movq	%rcx, 1304(%r13)
	movl	$128, %eax
	subl	9584(%r13), %eax
	addl	%eax, 9556(%r13)
	movl	$0, 9596(%r13)
	movl	$4, 1044(%r13)
	jmp	.LBB9_102
.LBB9_6:                                # %if.end.14
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_13 Depth 2
                                        #       Child Loop BB9_19 Depth 3
                                        #         Child Loop BB9_20 Depth 4
                                        #         Child Loop BB9_23 Depth 4
                                        #     Child Loop BB9_111 Depth 2
                                        #     Child Loop BB9_104 Depth 2
                                        #     Child Loop BB9_149 Depth 2
                                        #     Child Loop BB9_168 Depth 2
                                        #     Child Loop BB9_189 Depth 2
                                        #       Child Loop BB9_258 Depth 3
                                        #         Child Loop BB9_259 Depth 4
                                        #           Child Loop BB9_1338 Depth 5
                                        #           Child Loop BB9_1345 Depth 5
                                        #         Child Loop BB9_902 Depth 4
                                        #         Child Loop BB9_908 Depth 4
                                        #       Child Loop BB9_1364 Depth 3
                                        #       Child Loop BB9_1133 Depth 3
                                        #         Child Loop BB9_1137 Depth 4
                                        #       Child Loop BB9_1124 Depth 3
                                        #         Child Loop BB9_1126 Depth 4
                                        #       Child Loop BB9_825 Depth 3
                                        #         Child Loop BB9_829 Depth 4
                                        #       Child Loop BB9_818 Depth 3
                                        #         Child Loop BB9_820 Depth 4
	testl	%r15d, %r15d
	je	.LBB9_7
# BB#8:                                 # %if.then.16
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	9552(%r13), %edx
	cmpl	$4097, %edx             # imm = 0x1001
	jb	.LBB9_10
# BB#9:                                 # %if.then.18
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	9556(%r13), %eax
	leaq	1360(%r13,%rax), %rsi
	subl	%eax, %edx
	movq	168(%rsp), %rdi         # 8-byte Reload
	callq	memmove
	movl	9556(%r13), %eax
	addq	%rax, 9560(%r13)
	movl	9552(%r13), %edx
	subl	%eax, %edx
	movl	%edx, 9552(%r13)
	movl	$0, 9556(%r13)
.LBB9_10:                               # %if.end.30
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$8192, %eax             # imm = 0x2000
	subl	%edx, %eax
	cmpl	%eax, %r15d
	cmovlel	%r15d, %eax
	movl	%edx, %ecx
	leaq	1360(%r13,%rcx), %rdi
	movslq	%eax, %rbp
	movq	%r14, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	addl	%ebp, 9552(%r13)
	addq	%rbp, %r14
	subl	%ebp, %r15d
	jmp	.LBB9_11
.LBB9_7:                                #   in Loop: Header=BB9_6 Depth=1
	xorl	%r15d, %r15d
.LBB9_11:                               # %if.end.49
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpl	$0, 1300(%r13)
	jne	.LBB9_188
# BB#12:                                # %if.then.52
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	9552(%r13), %ebx
	movl	9556(%r13), %eax
	jmp	.LBB9_13
.LBB9_53:                               # %if.then.181.i
                                        #   in Loop: Header=BB9_13 Depth=2
	movl	$1, 1340(%r13)
	movl	$1, 1032(%r13)
	movl	9556(%r13), %eax
	addl	$9, %eax
	movl	%eax, 9556(%r13)
	movl	9552(%r13), %ebx
.LBB9_13:                               # %if.then.52
                                        #   Parent Loop BB9_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_19 Depth 3
                                        #         Child Loop BB9_20 Depth 4
                                        #         Child Loop BB9_23 Depth 4
	subl	%eax, %ebx
	je	.LBB9_1623
# BB#14:                                # %if.end.i
                                        #   in Loop: Header=BB9_13 Depth=2
	movl	%eax, %ecx
	leaq	1360(%r13,%rcx), %rbp
	movl	1332(%r13), %edx
	testl	%edx, %edx
	je	.LBB9_17
# BB#15:                                # %if.then.2.i
                                        #   in Loop: Header=BB9_13 Depth=2
	cmpl	%ebx, %edx
	movl	%ebx, %ecx
	cmovlel	%edx, %ecx
	leal	(%rax,%rcx), %eax
	subl	%ecx, %edx
	movl	%edx, 1332(%r13)
	movl	%eax, 9556(%r13)
	jne	.LBB9_1623
# BB#16:                                #   in Loop: Header=BB9_13 Depth=2
	subl	%ecx, %ebx
	movslq	%ecx, %rcx
	addq	%rcx, %rbp
.LBB9_17:                               # %if.end.22.i
                                        #   in Loop: Header=BB9_13 Depth=2
	cmpl	$0, 1340(%r13)
	je	.LBB9_35
# BB#18:                                # %while.cond.preheader.i
                                        #   in Loop: Header=BB9_13 Depth=2
	cmpl	$2, %ebx
	jl	.LBB9_1623
.LBB9_19:                               # %while.cond.26.preheader.i
                                        #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_13 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_20 Depth 4
                                        #         Child Loop BB9_23 Depth 4
	testl	%ebx, %ebx
	je	.LBB9_1623
.LBB9_20:                               # %land.rhs.i
                                        #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_13 Depth=2
                                        #       Parent Loop BB9_19 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rbp), %ecx
	cmpl	$13, %ecx
	je	.LBB9_22
# BB#21:                                # %land.rhs.i
                                        #   in Loop: Header=BB9_20 Depth=4
	movzbl	%cl, %edx
	cmpl	$10, %edx
	je	.LBB9_22
# BB#1625:                              # %while.body.34.i
                                        #   in Loop: Header=BB9_20 Depth=4
	incq	%rbp
	incl	%eax
	movl	%eax, 9556(%r13)
	decl	%ebx
	jne	.LBB9_20
	jmp	.LBB9_1623
.LBB9_22:                               # %while.cond.36.preheader.i
                                        #   in Loop: Header=BB9_19 Depth=3
	cmpl	$2, %ebx
	jge	.LBB9_23
	jmp	.LBB9_1623
	.align	16, 0x90
.LBB9_28:                               # %while.body.59.i.land.lhs.true.i_crit_edge
                                        #   in Loop: Header=BB9_23 Depth=4
	movb	(%rbp), %cl
.LBB9_23:                               # %land.lhs.true.i.preheader
                                        #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_13 Depth=2
                                        #       Parent Loop BB9_19 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	incq	%rbp
	movzbl	%cl, %ecx
	cmpl	$13, %ecx
	je	.LBB9_25
# BB#24:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB9_23 Depth=4
	cmpl	$10, %ecx
	jne	.LBB9_33
.LBB9_25:                               # %land.rhs.47.i
                                        #   in Loop: Header=BB9_23 Depth=4
	movzbl	(%rbp), %edx
	cmpl	$13, %edx
	je	.LBB9_27
# BB#26:                                # %land.rhs.47.i
                                        #   in Loop: Header=BB9_23 Depth=4
	movzbl	%dl, %edx
	cmpl	$10, %edx
	jne	.LBB9_29
.LBB9_27:                               # %while.body.59.i
                                        #   in Loop: Header=BB9_23 Depth=4
	incl	%eax
	movl	%eax, 9556(%r13)
	decl	%ebx
	cmpl	$2, %ebx
	jge	.LBB9_28
	jmp	.LBB9_1623
.LBB9_33:                               # %if.end.68.if.else_crit_edge.i.loopexit
                                        #   in Loop: Header=BB9_19 Depth=3
	decq	%rbp
	incq	%rbp
	jmp	.LBB9_34
.LBB9_29:                               # %if.end.68.i
                                        #   in Loop: Header=BB9_19 Depth=3
	cmpl	$10, %ecx
	je	.LBB9_31
# BB#30:                                # %if.end.68.i
                                        #   in Loop: Header=BB9_19 Depth=3
	cmpl	$13, %ecx
	jne	.LBB9_34
.LBB9_31:                               # %land.lhs.true.78.i
                                        #   in Loop: Header=BB9_19 Depth=3
	cmpl	$37, %edx
	je	.LBB9_32
.LBB9_34:                               # %if.else.i
                                        #   in Loop: Header=BB9_19 Depth=3
	incl	%eax
	movl	%eax, 9556(%r13)
	decl	%ebx
	cmpl	$1, %ebx
	jg	.LBB9_19
	jmp	.LBB9_1623
.LBB9_35:                               # %if.end.99.i
                                        #   in Loop: Header=BB9_13 Depth=2
	testl	%ebx, %ebx
	je	.LBB9_1623
.LBB9_36:                               # %if.end.103.i
                                        #   in Loop: Header=BB9_13 Depth=2
	movzbl	(%rbp), %ecx
	cmpl	$4, %ecx
	jne	.LBB9_38
# BB#37:                                # %if.then.108.i
                                        #   in Loop: Header=BB9_13 Depth=2
	incl	%eax
	movl	%eax, 9556(%r13)
	decl	%ebx
	movl	$1, 1028(%r13)
	movb	1(%rbp), %cl
	incq	%rbp
.LBB9_38:                               # %if.end.113.i
                                        #   in Loop: Header=BB9_13 Depth=2
	movzbl	%cl, %r12d
	cmpl	$27, %r12d
	jne	.LBB9_65
# BB#39:                                # %if.then.118.i
                                        #   in Loop: Header=BB9_13 Depth=2
	cmpl	$9, %ebx
	jl	.LBB9_1623
# BB#40:                                # %if.end.122.i
                                        #   in Loop: Header=BB9_13 Depth=2
	movl	$.L.str.26, %edi
	callq	strlen
	cmpq	$8, %rax
	ja	.LBB9_50
# BB#41:                                # %land.lhs.true.126.i
                                        #   in Loop: Header=BB9_13 Depth=2
	cmpq	$3, %rax
	ja	.LBB9_49
# BB#42:                                # %cond.true.130.i
                                        #   in Loop: Header=BB9_13 Depth=2
	addl	$-27, %r12d
	jne	.LBB9_52
# BB#43:                                # %cond.true.130.i
                                        #   in Loop: Header=BB9_13 Depth=2
	testq	%rax, %rax
	je	.LBB9_52
# BB#44:                                # %if.then.142.i
                                        #   in Loop: Header=BB9_13 Depth=2
	movzbl	1(%rbp), %r12d
	addl	$-37, %r12d
	cmpq	$2, %rax
	jb	.LBB9_52
# BB#45:                                # %if.then.142.i
                                        #   in Loop: Header=BB9_13 Depth=2
	testl	%r12d, %r12d
	jne	.LBB9_52
# BB#46:                                # %if.then.152.i
                                        #   in Loop: Header=BB9_13 Depth=2
	movzbl	2(%rbp), %r12d
	addl	$-45, %r12d
	cmpq	$3, %rax
	jb	.LBB9_52
# BB#47:                                # %if.then.152.i
                                        #   in Loop: Header=BB9_13 Depth=2
	testl	%r12d, %r12d
	jne	.LBB9_52
# BB#48:                                # %if.then.162.i
                                        #   in Loop: Header=BB9_13 Depth=2
	movzbl	3(%rbp), %r12d
	addl	$-49, %r12d
	jmp	.LBB9_52
.LBB9_50:                               # %cond.false.175.i
                                        #   in Loop: Header=BB9_13 Depth=2
	movl	$.L.str.26, %esi
	movl	$9, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_51
.LBB9_49:                               # %cond.false.171.i
                                        #   in Loop: Header=BB9_13 Depth=2
	movl	$.L.str.26, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_51:                               # %cond.end.177.i
                                        #   in Loop: Header=BB9_13 Depth=2
	movl	%eax, %r12d
.LBB9_52:                               # %cond.end.177.i
                                        #   in Loop: Header=BB9_13 Depth=2
	testl	%r12d, %r12d
	je	.LBB9_53
	jmp	.LBB9_54
.LBB9_32:                               # %if.end.99.thread.i
                                        #   in Loop: Header=BB9_13 Depth=2
	incl	%eax
	movl	%eax, 9556(%r13)
	decl	%ebx
	movl	$0, 1340(%r13)
	jmp	.LBB9_36
.LBB9_65:                               # %if.end.187.i
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpl	$2, %ebx
	setl	%al
	testb	%cl, %cl
	jne	.LBB9_67
# BB#66:                                # %if.end.187.i
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpl	$2, %ebx
	jl	.LBB9_1623
.LBB9_67:                               # %if.end.196.i
                                        #   in Loop: Header=BB9_6 Depth=1
	testb	%cl, %cl
	je	.LBB9_68
# BB#84:                                # %if.end.229.i
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpl	$197, %r12d
	jne	.LBB9_86
# BB#85:                                # %if.end.229.i
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpl	$4, %ebx
	jl	.LBB9_1623
.LBB9_86:                               # %if.end.238.i
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpl	$197, %r12d
	jne	.LBB9_123
	jmp	.LBB9_87
.LBB9_54:                               # %if.end.187.i.thread
                                        #   in Loop: Header=BB9_6 Depth=1
	movzbl	(%rbp), %ecx
	xorl	%eax, %eax
	cmpl	$197, %ecx
	jne	.LBB9_55
.LBB9_87:                               # %land.lhs.true.243.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movb	$-59, %cl
	movzbl	1(%rbp), %edx
	cmpl	$208, %edx
	jne	.LBB9_123
# BB#88:                                # %land.lhs.true.248.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movzbl	2(%rbp), %edx
	cmpl	$211, %edx
	jne	.LBB9_123
# BB#89:                                # %land.lhs.true.253.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movzbl	3(%rbp), %edx
	cmpl	$198, %edx
	jne	.LBB9_123
# BB#90:                                # %if.then.258.i
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpl	$30, %ebx
	jl	.LBB9_1623
# BB#91:                                # %if.end.262.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	%rbp, 9576(%r13)
	movq	9880(%r13), %rax
	testq	%rax, %rax
	je	.LBB9_93
# BB#92:                                # %if.then.i.i.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	9896(%r13), %rsi
	movl	$56, %edi
	callq	*%rax
	jmp	.LBB9_94
.LBB9_55:                               # %if.end.187.i.thread
                                        #   in Loop: Header=BB9_6 Depth=1
	testb	%cl, %cl
	jne	.LBB9_56
.LBB9_68:                               # %land.lhs.true.201.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movb	1(%rbp), %cl
	testb	%cl, %cl
	je	.LBB9_69
# BB#70:                                # %land.lhs.true.206.i
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpl	$127, %ebx
	jg	.LBB9_72
# BB#71:                                # %land.lhs.true.206.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movzbl	%cl, %edx
	cmpl	$64, %edx
	jb	.LBB9_1623
.LBB9_72:                               # %land.lhs.true.220.i
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpl	$3, %ebx
	jg	.LBB9_74
# BB#73:                                # %land.lhs.true.220.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movzbl	%cl, %edx
	cmpl	$5, %edx
	je	.LBB9_1623
.LBB9_74:                               # %land.lhs.true.273.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movzbl	%cl, %edx
	cmpl	$5, %edx
	jne	.LBB9_121
# BB#75:                                # %land.lhs.true.278.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movzbl	2(%rbp), %ecx
	cmpl	$22, %ecx
	jne	.LBB9_124
# BB#76:                                # %land.lhs.true.283.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movzbl	3(%rbp), %ecx
	cmpl	$7, %ecx
	je	.LBB9_78
# BB#77:                                # %land.lhs.true.283.i
                                        #   in Loop: Header=BB9_6 Depth=1
	testb	%cl, %cl
	jne	.LBB9_124
.LBB9_78:                               # %if.then.293.i
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpl	$26, %ebx
	jl	.LBB9_1623
# BB#79:                                # %if.end.299.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movzbl	7(%rbp), %eax
	movzbl	6(%rbp), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	5(%rbp), %eax
	shlq	$16, %rax
	orq	%rcx, %rax
	movzbl	4(%rbp), %edx
	shlq	$24, %rdx
	orq	%rax, %rdx
	movzbl	25(%rbp), %ecx
	movzbl	24(%rbp), %eax
	cmpq	$131072, %rdx           # imm = 0x20000
	je	.LBB9_81
# BB#80:                                # %if.end.299.i
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpq	$65536, %rdx            # imm = 0x10000
	jne	.LBB9_102
.LBB9_81:                               # %if.then.309.i
                                        #   in Loop: Header=BB9_6 Depth=1
	shll	$8, %eax
	orl	%ecx, %eax
	leal	(%rax,%rax,2), %eax
	leal	26(,%rax,4), %eax
	cmpl	%eax, %ebx
	jl	.LBB9_1623
# BB#82:                                # %if.end.314.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	%rbp, 9576(%r13)
	movq	9880(%r13), %rax
	testq	%rax, %rax
	je	.LBB9_107
# BB#83:                                # %if.then.i.i.246.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	9896(%r13), %rsi
	movl	$32, %edi
	callq	*%rax
	jmp	.LBB9_108
.LBB9_69:                               # %land.lhs.true.330.i.thread
                                        #   in Loop: Header=BB9_6 Depth=1
	testb	%al, %al
	je	.LBB9_102
	jmp	.LBB9_1623
.LBB9_121:                              # %land.lhs.true.330.i
                                        #   in Loop: Header=BB9_6 Depth=1
	decb	%cl
	movzbl	%cl, %ecx
	cmpl	$62, %ecx
	ja	.LBB9_122
.LBB9_124:                              # %land.lhs.true.340.i
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpb	$0, 74(%rbp)
	jne	.LBB9_122
# BB#125:                               # %land.lhs.true.345.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movzbl	65(%rbp), %ecx
	cmpl	$69, %ecx
	jne	.LBB9_122
# BB#126:                               # %land.lhs.true.350.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movzbl	66(%rbp), %ecx
	cmpl	$80, %ecx
	jne	.LBB9_122
# BB#127:                               # %land.lhs.true.355.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movzbl	67(%rbp), %ecx
	cmpl	$83, %ecx
	jne	.LBB9_122
# BB#128:                               # %land.lhs.true.360.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movzbl	68(%rbp), %ecx
	cmpl	$70, %ecx
	jne	.LBB9_122
# BB#129:                               # %if.then.365.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	%rbp, 9576(%r13)
	movq	9880(%r13), %rax
	testq	%rax, %rax
	je	.LBB9_131
# BB#130:                               # %if.then.i.i.288.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	9896(%r13), %rsi
	movl	$32, %edi
	callq	*%rax
	jmp	.LBB9_132
.LBB9_122:                              #   in Loop: Header=BB9_6 Depth=1
	xorl	%ecx, %ecx
.LBB9_123:                              # %if.else.371.i
                                        #   in Loop: Header=BB9_6 Depth=1
	testb	%al, %al
	jne	.LBB9_1623
.LBB9_56:                               # %if.end.375.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movzbl	%cl, %r12d
	cmpl	$37, %r12d
	jne	.LBB9_102
# BB#57:                                # %land.lhs.true.380.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movzbl	1(%rbp), %eax
	cmpl	$80, %eax
	jne	.LBB9_102
# BB#58:                                # %if.then.385.i
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpl	$5, %ebx
	jl	.LBB9_1623
# BB#59:                                # %if.end.389.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	%eax, %ebx
	movl	$.L.str.27, %edi
	callq	strlen
	cmpq	$4, %rax
	ja	.LBB9_141
# BB#60:                                # %land.lhs.true.399.i
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpq	$3, %rax
	ja	.LBB9_140
# BB#61:                                # %cond.true.403.i
                                        #   in Loop: Header=BB9_6 Depth=1
	addl	$-37, %r12d
	jne	.LBB9_143
# BB#62:                                # %cond.true.403.i
                                        #   in Loop: Header=BB9_6 Depth=1
	testq	%rax, %rax
	je	.LBB9_143
# BB#63:                                # %if.then.417.i
                                        #   in Loop: Header=BB9_6 Depth=1
	addl	$-80, %ebx
	jne	.LBB9_64
# BB#136:                               # %if.then.417.i
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpq	$2, %rax
	movl	%ebx, %r12d
	jb	.LBB9_143
# BB#137:                               # %if.then.427.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movzbl	2(%rbp), %r12d
	addl	$-68, %r12d
	cmpq	$3, %rax
	jb	.LBB9_143
# BB#138:                               # %if.then.427.i
                                        #   in Loop: Header=BB9_6 Depth=1
	testl	%r12d, %r12d
	jne	.LBB9_143
# BB#139:                               # %if.then.437.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movzbl	3(%rbp), %r12d
	addl	$-70, %r12d
	jmp	.LBB9_143
.LBB9_141:                              # %cond.false.450.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$.L.str.27, %esi
	movl	$5, %edx
	movq	%rbp, %rdi
	callq	strncmp
	jmp	.LBB9_142
.LBB9_140:                              # %cond.false.446.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$.L.str.27, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB9_142:                              # %cond.end.452.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	%eax, %r12d
.LBB9_143:                              # %cond.end.452.i
                                        #   in Loop: Header=BB9_6 Depth=1
	testl	%r12d, %r12d
	jne	.LBB9_102
# BB#144:                               # %if.then.456.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$1, 1040(%r13)
	movl	$1, 1300(%r13)
	xorl	%ebx, %ebx
	jmp	.LBB9_187
.LBB9_93:                               # %if.end.i.i.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$56, %edi
	callq	malloc
.LBB9_94:                               # %dsc_memalloc.exit.i.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	%rax, 1232(%r13)
	movl	$-1, %ebx
	testq	%rax, %rax
	je	.LBB9_187
# BB#95:                                # %if.end.i.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movzbl	4(%rbp), %ecx
	movzbl	5(%rbp), %edx
	shlq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	6(%rbp), %ecx
	shlq	$16, %rcx
	orq	%rdx, %rcx
	movzbl	7(%rbp), %edx
	shlq	$24, %rdx
	orq	%rcx, %rdx
	movq	%rdx, (%rax)
	movzbl	8(%rbp), %ecx
	movzbl	9(%rbp), %edx
	shlq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	10(%rbp), %ecx
	shlq	$16, %rcx
	orq	%rdx, %rcx
	movzbl	11(%rbp), %edx
	shlq	$24, %rdx
	orq	%rcx, %rdx
	movq	%rdx, 8(%rax)
	movzbl	12(%rbp), %ecx
	movzbl	13(%rbp), %edx
	shlq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	14(%rbp), %ecx
	shlq	$16, %rcx
	orq	%rdx, %rcx
	movzbl	15(%rbp), %edx
	shlq	$24, %rdx
	orq	%rcx, %rdx
	movq	%rdx, 16(%rax)
	movzbl	16(%rbp), %ecx
	movzbl	17(%rbp), %edx
	shlq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	18(%rbp), %ecx
	shlq	$16, %rcx
	orq	%rdx, %rcx
	movzbl	19(%rbp), %edx
	shlq	$24, %rdx
	orq	%rcx, %rdx
	movq	%rdx, 24(%rax)
	movzbl	20(%rbp), %ecx
	movzbl	21(%rbp), %edx
	shlq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	22(%rbp), %ecx
	shlq	$16, %rcx
	orq	%rdx, %rcx
	movzbl	23(%rbp), %edx
	shlq	$24, %rdx
	orq	%rcx, %rdx
	movq	%rdx, 32(%rax)
	movzbl	24(%rbp), %eax
	movzbl	25(%rbp), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	26(%rbp), %eax
	shlq	$16, %rax
	orq	%rcx, %rax
	movzbl	27(%rbp), %ecx
	shlq	$24, %rcx
	orq	%rax, %rcx
	movq	1232(%r13), %rax
	movq	%rcx, 40(%rax)
	movzbl	28(%rbp), %ecx
	movzbl	29(%rbp), %edx
	shll	$8, %edx
	orl	%ecx, %edx
	movl	%edx, 48(%rax)
	movq	1320(%r13), %rsi
	movq	(%rax), %rcx
	movq	8(%rax), %rdx
	testq	%rsi, %rsi
	je	.LBB9_98
# BB#96:                                # %if.end.i.i
                                        #   in Loop: Header=BB9_6 Depth=1
	leaq	(%rdx,%rcx), %rdi
	cmpq	%rsi, %rdi
	jbe	.LBB9_98
# BB#97:                                # %if.then.28.i.i
                                        #   in Loop: Header=BB9_6 Depth=1
	subq	%rcx, %rsi
	movq	%rsi, 8(%rax)
	movq	%rsi, %rdx
.LBB9_98:                               # %if.end.34.i.i
                                        #   in Loop: Header=BB9_6 Depth=1
	addq	%rcx, %rdx
	movq	%rdx, 1304(%r13)
	movl	$30, %edx
	subl	9584(%r13), %edx
	addl	%edx, 9556(%r13)
	movl	$0, 9596(%r13)
	addl	$-30, %ecx
	movl	%ecx, 1332(%r13)
	cmpq	$0, 32(%rax)
	je	.LBB9_100
# BB#99:                                # %if.then.48.i.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$2, 1044(%r13)
.LBB9_100:                              # %if.end.49.i.i
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpq	$0, 16(%rax)
	je	.LBB9_102
# BB#101:                               # %if.then.53.i.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$3, 1044(%r13)
	jmp	.LBB9_102
.LBB9_107:                              # %if.end.i.i.248.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$32, %edi
	callq	malloc
.LBB9_108:                              # %dsc_memalloc.exit.i.251.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	%rax, 9960(%r13)
	movl	$-1, %ebx
	testq	%rax, %rax
	je	.LBB9_187
# BB#109:                               # %if.end.i.257.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movzbl	25(%rbp), %edx
	movzbl	24(%rbp), %r8d
	shll	$8, %r8d
	orl	%edx, %r8d
	je	.LBB9_116
# BB#110:                               # %for.body.lr.ph.i.258.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	%r8d, %edx
	addq	$37, %rbp
.LBB9_111:                              # %for.body.i.270.i
                                        #   Parent Loop BB9_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-8(%rbp), %esi
	movzbl	-9(%rbp), %edi
	shlq	$8, %rdi
	orq	%rsi, %rdi
	movzbl	-10(%rbp), %ecx
	shlq	$16, %rcx
	orq	%rdi, %rcx
	movzbl	-11(%rbp), %esi
	shlq	$24, %rsi
	orq	%rcx, %rsi
	movzbl	-4(%rbp), %ecx
	pinsrw	$0, %ecx, %xmm0
	movzbl	(%rbp), %ecx
	pinsrw	$4, %ecx, %xmm0
	movdqa	.LCPI9_0(%rip), %xmm1   # xmm1 = [255,255]
	movdqa	%xmm1, %xmm3
	pand	%xmm3, %xmm0
	movzbl	-5(%rbp), %ecx
	pinsrw	$0, %ecx, %xmm1
	movzbl	-1(%rbp), %ecx
	pinsrw	$4, %ecx, %xmm1
	pand	%xmm3, %xmm1
	psllq	$8, %xmm1
	por	%xmm0, %xmm1
	movzbl	-6(%rbp), %ecx
	pinsrw	$0, %ecx, %xmm2
	movzbl	-2(%rbp), %ecx
	pinsrw	$4, %ecx, %xmm2
	pand	%xmm3, %xmm2
	psllq	$16, %xmm2
	por	%xmm1, %xmm2
	movzbl	-7(%rbp), %ecx
	pinsrw	$0, %ecx, %xmm0
	movzbl	-3(%rbp), %ecx
	pinsrw	$4, %ecx, %xmm0
	pand	%xmm3, %xmm0
	psllq	$24, %xmm0
	por	%xmm2, %xmm0
	cmpq	$2, %rsi
	jne	.LBB9_112
# BB#114:                               # %if.then.19.i.i
                                        #   in Loop: Header=BB9_111 Depth=2
	movdqu	%xmm0, 16(%rax)
	jmp	.LBB9_115
.LBB9_112:                              # %for.body.i.270.i
                                        #   in Loop: Header=BB9_111 Depth=2
	cmpq	$1, %rsi
	jne	.LBB9_115
# BB#113:                               # %if.then.15.i.i
                                        #   in Loop: Header=BB9_111 Depth=2
	movdqu	%xmm0, (%rax)
.LBB9_115:                              # %for.inc.i.272.i
                                        #   in Loop: Header=BB9_111 Depth=2
	addq	$12, %rbp
	decq	%rdx
	jne	.LBB9_111
.LBB9_116:                              # %for.end.i.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	1320(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB9_117
# BB#118:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	24(%rax), %rcx
	addq	16(%rax), %rcx
	cmpq	%rsi, %rcx
	ja	.LBB9_187
# BB#119:                               # %land.lhs.true.35.i.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	(%rax), %rdx
	movq	8(%rax), %rax
	leaq	(%rax,%rdx), %rcx
	cmpq	%rsi, %rcx
	ja	.LBB9_187
	jmp	.LBB9_120
.LBB9_64:                               #   in Loop: Header=BB9_6 Depth=1
	movl	%ebx, %r12d
	jmp	.LBB9_143
.LBB9_117:                              # %for.end.i.dsc_read_applesingle.exit_crit_edge.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	(%rax), %rdx
	movq	8(%rax), %rax
.LBB9_120:                              # %dsc_read_applesingle.exit.i
                                        #   in Loop: Header=BB9_6 Depth=1
	leaq	(%rax,%rdx), %rax
	movq	%rax, 1304(%r13)
	leal	(%r8,%r8,2), %eax
	leal	26(,%rax,4), %eax
	movl	%eax, %ecx
	subl	9584(%r13), %ecx
	addl	%ecx, 9556(%r13)
	subl	%eax, %edx
	movl	$0, 9596(%r13)
	movl	%edx, 1332(%r13)
	movl	$4, 1044(%r13)
.LBB9_102:                              # %if.end.461.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	%r13, %rdi
	callq	dsc_read_line
	testl	%eax, %eax
	jle	.LBB9_1623
# BB#103:                               # %if.end.466.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	9576(%r13), %rsi
	movl	9584(%r13), %eax
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB9_146
.LBB9_104:                              # %land.rhs.i.i
                                        #   Parent Loop BB9_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsi), %ecx
	cmpl	$32, %ecx
	je	.LBB9_145
# BB#105:                               # %land.rhs.i.i
                                        #   in Loop: Header=BB9_104 Depth=2
	movzbl	%cl, %ecx
	cmpl	$9, %ecx
	jne	.LBB9_106
.LBB9_145:                              # %while.body.i.i
                                        #   in Loop: Header=BB9_104 Depth=2
	incq	%rsi
	decl	%eax
	jne	.LBB9_104
	jmp	.LBB9_146
.LBB9_106:                              #   in Loop: Header=BB9_6 Depth=1
	movl	%eax, %ebx
.LBB9_146:                              # %while.end.i.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	dsc_alloc_string
	testq	%rax, %rax
	movl	$0, %ecx
	je	.LBB9_154
# BB#147:                               # %for.cond.preheader.i.i
                                        #   in Loop: Header=BB9_6 Depth=1
	testl	%ebx, %ebx
	je	.LBB9_153
# BB#148:                               # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	%ebx, %ecx
	xorl	%edx, %edx
.LBB9_149:                              # %for.body.i.i
                                        #   Parent Loop BB9_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax,%rdx), %esi
	cmpl	$10, %esi
	je	.LBB9_151
# BB#150:                               # %for.body.i.i
                                        #   in Loop: Header=BB9_149 Depth=2
	movzbl	%sil, %esi
	cmpl	$13, %esi
	je	.LBB9_151
# BB#152:                               # %for.inc.i.i
                                        #   in Loop: Header=BB9_149 Depth=2
	incq	%rdx
	cmpq	%rcx, %rdx
	jb	.LBB9_149
	jmp	.LBB9_153
.LBB9_151:                              # %if.then.21.i.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movb	$0, (%rax,%rdx)
.LBB9_153:                              #   in Loop: Header=BB9_6 Depth=1
	movq	%rax, %rcx
.LBB9_154:                              # %dsc_add_line.exit.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	%rcx, 1048(%r13)
	movl	$.L.str.28, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$9, %rcx
	ja	.LBB9_164
# BB#155:                               # %land.lhs.true.478.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	9576(%r13), %rdi
	cmpq	$3, %rcx
	ja	.LBB9_163
# BB#156:                               # %cond.true.482.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movzbl	(%rdi), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB9_165
# BB#157:                               # %cond.true.482.i
                                        #   in Loop: Header=BB9_6 Depth=1
	testl	%eax, %eax
	jne	.LBB9_165
# BB#158:                               # %if.then.497.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movzbl	1(%rdi), %eax
	addl	$-33, %eax
	cmpq	$2, %rcx
	jb	.LBB9_165
# BB#159:                               # %if.then.497.i
                                        #   in Loop: Header=BB9_6 Depth=1
	testl	%eax, %eax
	jne	.LBB9_165
# BB#160:                               # %if.then.507.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movzbl	2(%rdi), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB9_165
# BB#161:                               # %if.then.507.i
                                        #   in Loop: Header=BB9_6 Depth=1
	testl	%eax, %eax
	jne	.LBB9_165
# BB#162:                               # %if.then.517.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movzbl	3(%rdi), %eax
	addl	$-83, %eax
	jmp	.LBB9_165
.LBB9_164:                              # %cond.false.531.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	9576(%r13), %rdi
	movl	$.L.str.28, %esi
	movl	$10, %edx
	callq	strncmp
	jmp	.LBB9_165
.LBB9_163:                              # %cond.false.526.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$.L.str.28, %esi
	callq	strcmp
.LBB9_165:                              # %cond.end.534.i
                                        #   in Loop: Header=BB9_6 Depth=1
	testl	%eax, %eax
	je	.LBB9_166
# BB#186:                               # %if.end.634.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$1, 1300(%r13)
	movl	$1, %ebx
	jmp	.LBB9_187
.LBB9_166:                              # %if.then.538.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$1, 1024(%r13)
	movl	9556(%r13), %eax
	movl	9584(%r13), %ecx
	addq	9560(%r13), %rax
	subq	%rcx, %rax
	movq	%rax, 1064(%r13)
	movl	$-1, %ebx
	cmpq	$0, 1048(%r13)
	je	.LBB9_187
# BB#167:                               # %if.end.550.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	9576(%r13), %rbx
	addq	$14, %rbx
	jmp	.LBB9_168
.LBB9_170:                              # %while.body.562.i
                                        #   in Loop: Header=BB9_168 Depth=2
	incq	%rbx
.LBB9_168:                              # %while.cond.553.i
                                        #   Parent Loop BB9_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbx), %ebp
	cmpl	$32, %ebp
	je	.LBB9_170
# BB#169:                               # %while.cond.553.i
                                        #   in Loop: Header=BB9_168 Depth=2
	movzbl	%bpl, %eax
	cmpl	$9, %eax
	je	.LBB9_170
# BB#171:                               # %while.end.564.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$.L.str.29, %edi
	callq	strlen
	cmpq	$4, %rax
	ja	.LBB9_181
# BB#172:                               # %land.lhs.true.574.i
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpq	$3, %rax
	ja	.LBB9_180
# BB#173:                               # %cond.true.578.i
                                        #   in Loop: Header=BB9_6 Depth=1
	addl	$-69, %ebp
	jne	.LBB9_183
# BB#174:                               # %cond.true.578.i
                                        #   in Loop: Header=BB9_6 Depth=1
	testq	%rax, %rax
	je	.LBB9_183
# BB#175:                               # %if.then.592.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movzbl	1(%rbx), %ebp
	addl	$-80, %ebp
	cmpq	$2, %rax
	jb	.LBB9_183
# BB#176:                               # %if.then.592.i
                                        #   in Loop: Header=BB9_6 Depth=1
	testl	%ebp, %ebp
	jne	.LBB9_183
# BB#177:                               # %if.then.602.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movzbl	2(%rbx), %ebp
	addl	$-83, %ebp
	cmpq	$3, %rax
	jb	.LBB9_183
# BB#178:                               # %if.then.602.i
                                        #   in Loop: Header=BB9_6 Depth=1
	testl	%ebp, %ebp
	jne	.LBB9_183
# BB#179:                               # %if.then.612.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movzbl	3(%rbx), %ebp
	addl	$-70, %ebp
	jmp	.LBB9_183
.LBB9_181:                              # %cond.false.625.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$.L.str.29, %esi
	movl	$5, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB9_182
.LBB9_180:                              # %cond.false.621.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$.L.str.29, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB9_182:                              # %cond.end.627.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	%eax, %ebp
.LBB9_183:                              # %cond.end.627.i
                                        #   in Loop: Header=BB9_6 Depth=1
	testl	%ebp, %ebp
	jne	.LBB9_185
# BB#184:                               # %if.then.631.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$1, 1036(%r13)
.LBB9_185:                              # %if.end.632.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$1, 1300(%r13)
	movl	$200, %ebx
.LBB9_187:                              # %if.end.57
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	%ebx, 1296(%r13)
.LBB9_188:                              # %if.end.59
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpl	$1, %ebx
	jne	.LBB9_189
# BB#1626:                              # %if.then.62
	movl	$1, 1296(%r13)
	jmp	.LBB9_1623
.LBB9_1622:                             # %do.end.480
	testl	%ebx, %ebx
	js	.LBB9_1624
.LBB9_1623:                             # %cond.false.484
	movl	1296(%r13), %ebx
.LBB9_1624:                             # %cleanup
	movl	%ebx, %eax
	addq	$440, %rsp              # imm = 0x1B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	dsc_scan_data, .Lfunc_end9-dsc_scan_data
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI9_0:
	.quad	.LBB9_1615
	.quad	.LBB9_261
	.quad	.LBB9_261
	.quad	.LBB9_311
	.quad	.LBB9_311
	.quad	.LBB9_435
	.quad	.LBB9_435
	.quad	.LBB9_618
	.quad	.LBB9_618
	.quad	.LBB9_838
	.quad	.LBB9_838
	.quad	.LBB9_1323
	.quad	.LBB9_1323

	.text
	.align	16, 0x90
	.type	dsc_read_line,@function
dsc_read_line:                          # @dsc_read_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp46:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp47:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp48:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp49:
	.cfi_def_cfa_offset 48
	subq	$272, %rsp              # imm = 0x110
.Ltmp50:
	.cfi_def_cfa_offset 320
.Ltmp51:
	.cfi_offset %rbx, -48
.Ltmp52:
	.cfi_offset %r12, -40
.Ltmp53:
	.cfi_offset %r14, -32
.Ltmp54:
	.cfi_offset %r15, -24
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	$0, 9576(%r14)
	cmpl	$0, 9568(%r14)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movl	9556(%r14), %ecx
.LBB10_4:                               # %if.then.10
	leaq	1360(%r14,%rcx), %rax
	movq	%rax, 9576(%r14)
	movl	9552(%r14), %edx
	movl	%edx, %eax
	subl	%ecx, %eax
	movl	%eax, 9584(%r14)
	movl	%edx, 9556(%r14)
.LBB10_107:                             # %cleanup.579
	addq	$272, %rsp              # imm = 0x110
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_2:                               # %if.end
	movq	1320(%r14), %rax
	testq	%rax, %rax
	je	.LBB10_5
# BB#3:                                 # %land.lhs.true
	movl	9556(%r14), %ecx
	movq	9560(%r14), %rdx
	addq	%rcx, %rdx
	cmpq	%rax, %rdx
	jae	.LBB10_4
.LBB10_5:                               # %if.end.24
	movq	1304(%r14), %rax
	testq	%rax, %rax
	je	.LBB10_7
# BB#6:                                 # %land.lhs.true.26
	movl	9556(%r14), %ecx
	movq	9560(%r14), %rdx
	addq	%rcx, %rdx
	cmpq	%rax, %rdx
	jae	.LBB10_4
.LBB10_7:                               # %if.end.48
	movl	1332(%r14), %esi
	testl	%esi, %esi
	je	.LBB10_8
# BB#9:                                 # %if.then.50
	movl	9552(%r14), %ecx
	movl	9556(%r14), %eax
	movl	%ecx, %edi
	subl	%eax, %edi
	cmpl	%edi, %esi
	cmovlel	%esi, %edi
	leal	(%rax,%rdi), %edx
	xorl	%eax, %eax
	subl	%edi, %esi
	movl	%esi, 1332(%r14)
	movl	%edx, 9556(%r14)
	jne	.LBB10_107
	jmp	.LBB10_10
.LBB10_8:                               # %if.end.48.do.body.preheader_crit_edge
	movl	9552(%r14), %ecx
	movl	9556(%r14), %edx
.LBB10_10:                              # %do.body.preheader
	movl	%ecx, %eax
	leaq	1360(%r14,%rax), %rsi
	jmp	.LBB10_11
	.align	16, 0x90
.LBB10_13:                              # %if.end.88
                                        #   in Loop: Header=BB10_11 Depth=1
	cmpl	$0, 9588(%r14)
	je	.LBB10_16
# BB#14:                                # %if.then.90
                                        #   in Loop: Header=BB10_11 Depth=1
	incl	9596(%r14)
	movl	1336(%r14), %eax
	testl	%eax, %eax
	je	.LBB10_16
# BB#15:                                # %if.then.92
                                        #   in Loop: Header=BB10_11 Depth=1
	decl	%eax
	movl	%eax, 1336(%r14)
.LBB10_16:                              # %if.end.95
                                        #   in Loop: Header=BB10_11 Depth=1
	cmpl	$0, 9592(%r14)
	je	.LBB10_19
# BB#17:                                # %land.lhs.true.97
                                        #   in Loop: Header=BB10_11 Depth=1
	movzbl	(%rbx), %eax
	cmpl	$10, %eax
	jne	.LBB10_19
# BB#18:                                # %if.then.102
                                        #   in Loop: Header=BB10_11 Depth=1
	incl	%edx
	movl	%edx, 9556(%r14)
	incq	%rbx
	movq	%rbx, 9576(%r14)
.LBB10_19:                              # %if.end.106
                                        #   in Loop: Header=BB10_11 Depth=1
	movq	$0, 9588(%r14)
	xorl	%eax, %eax
	cmpq	%rsi, %rbx
	movq	%rbx, %rdi
	jae	.LBB10_30
	.align	16, 0x90
.LBB10_20:                              # %for.body
                                        #   Parent Loop BB10_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi), %ebp
	cmpl	$26, %ebp
	jne	.LBB10_21
# BB#27:                                # %if.then.139
                                        #   in Loop: Header=BB10_20 Depth=2
	movl	$1, 9588(%r14)
	movl	$1, %eax
.LBB10_28:                              # %for.inc
                                        #   in Loop: Header=BB10_20 Depth=2
	incq	%rdi
	cmpq	%rsi, %rdi
	jb	.LBB10_20
	jmp	.LBB10_29
.LBB10_21:                              # %for.body
                                        #   in Loop: Header=BB10_20 Depth=2
	movzbl	%bpl, %ebp
	cmpl	$10, %ebp
	je	.LBB10_26
# BB#22:                                # %for.body
                                        #   in Loop: Header=BB10_20 Depth=2
	cmpl	$13, %ebp
	jne	.LBB10_28
# BB#23:                                # %if.then.115
                                        #   in Loop: Header=BB10_11 Depth=1
	leaq	1(%rdi), %rax
	cmpq	%rsi, %rax
	jae	.LBB10_31
# BB#24:                                # %land.lhs.true.119
                                        #   in Loop: Header=BB10_11 Depth=1
	movzbl	(%rax), %ebp
	cmpl	$10, %ebp
	jne	.LBB10_31
# BB#25:                                # %if.then.123
                                        #   in Loop: Header=BB10_11 Depth=1
	addq	$2, %rdi
	movl	$1, 9588(%r14)
	jmp	.LBB10_32
	.align	16, 0x90
.LBB10_26:                              # %if.then.132
                                        #   in Loop: Header=BB10_11 Depth=1
	incq	%rdi
	movl	$1, 9588(%r14)
	jmp	.LBB10_32
	.align	16, 0x90
.LBB10_29:                              # %for.end
                                        #   in Loop: Header=BB10_11 Depth=1
	testl	%eax, %eax
	jne	.LBB10_32
	.align	16, 0x90
.LBB10_30:                              # %if.then.146
                                        #   in Loop: Header=BB10_11 Depth=1
	movl	%ecx, %eax
	subl	%edx, %eax
	cmpl	$4095, %eax             # imm = 0xFFF
	jbe	.LBB10_12
.LBB10_32:                              # %if.end.156
                                        #   in Loop: Header=BB10_11 Depth=1
	subl	%ebx, %edi
	movl	%edi, 9584(%r14)
	leal	(%rdx,%rdi), %edx
	movl	%edx, 9556(%r14)
	cmpl	$0, 1336(%r14)
	je	.LBB10_34
# BB#33:                                # %land.rhs
                                        #   in Loop: Header=BB10_11 Depth=1
	xorl	%eax, %eax
	testl	%edi, %edi
	jne	.LBB10_11
	jmp	.LBB10_107
.LBB10_31:                              # %if.else
                                        #   in Loop: Header=BB10_11 Depth=1
	movl	$1, 9592(%r14)
	movl	$1, 9588(%r14)
	movq	%rax, %rdi
	jmp	.LBB10_32
	.align	16, 0x90
.LBB10_11:                              # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_20 Depth 2
	movl	%edx, %eax
	leaq	1360(%r14,%rax), %rbx
	movq	%rbx, 9576(%r14)
	cmpl	%ecx, %edx
	jne	.LBB10_13
.LBB10_12:                              # %if.then.86
	movl	$0, 9584(%r14)
	xorl	%eax, %eax
	jmp	.LBB10_107
.LBB10_34:                              # %do.end
	xorl	%eax, %eax
	testl	%edi, %edi
	je	.LBB10_107
# BB#35:                                # %if.end.170
	movzbl	(%rbx), %eax
	cmpl	$37, %eax
	jne	.LBB10_89
# BB#36:                                # %land.lhs.true.176
	movzbl	1(%rbx), %eax
	cmpl	$37, %eax
	jne	.LBB10_89
# BB#37:                                # %if.then.182
	movl	1328(%r14), %ebp
	testl	%ebp, %ebp
	je	.LBB10_49
# BB#38:                                # %land.lhs.true.187
	movl	$.L.str.12, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$12, %rcx
	ja	.LBB10_45
# BB#39:                                # %land.lhs.true.191
	cmpq	$3, %rcx
	ja	.LBB10_44
# BB#40:                                # %cond.true.195
	cmpq	$2, %rcx
	jb	.LBB10_48
# BB#41:                                # %if.then.218
	movzbl	2(%rbx), %eax
	addl	$-69, %eax
	cmpq	$3, %rcx
	jb	.LBB10_46
# BB#42:                                # %if.then.218
	testl	%eax, %eax
	jne	.LBB10_46
# BB#43:                                # %if.then.228
	movzbl	3(%rbx), %eax
	addl	$-110, %eax
	jmp	.LBB10_46
.LBB10_45:                              # %cond.false.242
	movl	$.L.str.12, %esi
	movl	$13, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB10_46
.LBB10_44:                              # %cond.false.237
	movl	$.L.str.12, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB10_46:                              # %cond.end.245
	testl	%eax, %eax
	jne	.LBB10_49
# BB#47:                                # %cond.end.245.if.then.249_crit_edge
	movl	1328(%r14), %ebp
.LBB10_48:                              # %if.then.249
	decl	%ebp
	movl	%ebp, 1328(%r14)
.LBB10_49:                              # %if.end.252
	movl	$.L.str.10, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$11, %rcx
	ja	.LBB10_59
# BB#50:                                # %land.lhs.true.262
	movq	9576(%r14), %rdi
	cmpq	$3, %rcx
	ja	.LBB10_58
# BB#51:                                # %cond.true.266
	movzbl	(%rdi), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB10_60
# BB#52:                                # %cond.true.266
	testl	%eax, %eax
	jne	.LBB10_60
# BB#53:                                # %if.then.281
	movzbl	1(%rdi), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB10_60
# BB#54:                                # %if.then.281
	testl	%eax, %eax
	jne	.LBB10_60
# BB#55:                                # %if.then.291
	movzbl	2(%rdi), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB10_60
# BB#56:                                # %if.then.291
	testl	%eax, %eax
	jne	.LBB10_60
# BB#57:                                # %if.then.301
	movzbl	3(%rdi), %eax
	addl	$-101, %eax
	jmp	.LBB10_60
.LBB10_59:                              # %cond.false.315
	movq	9576(%r14), %rdi
	movl	$.L.str.10, %esi
	movl	$12, %edx
	callq	strncmp
	jmp	.LBB10_60
.LBB10_58:                              # %cond.false.310
	movl	$.L.str.10, %esi
	callq	strcmp
.LBB10_60:                              # %cond.end.318
	testl	%eax, %eax
	je	.LBB10_61
# BB#75:                                # %if.else.395
	movl	$.L.str.11, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$13, %rcx
	ja	.LBB10_85
# BB#76:                                # %land.lhs.true.405
	movq	9576(%r14), %rdi
	cmpq	$3, %rcx
	ja	.LBB10_84
# BB#77:                                # %cond.true.409
	movzbl	(%rdi), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB10_86
# BB#78:                                # %cond.true.409
	testl	%eax, %eax
	jne	.LBB10_86
# BB#79:                                # %if.then.424
	movzbl	1(%rdi), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB10_86
# BB#80:                                # %if.then.424
	testl	%eax, %eax
	jne	.LBB10_86
# BB#81:                                # %if.then.434
	movzbl	2(%rdi), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB10_86
# BB#82:                                # %if.then.434
	testl	%eax, %eax
	jne	.LBB10_86
# BB#83:                                # %if.then.444
	movzbl	3(%rdi), %eax
	addl	$-101, %eax
	jmp	.LBB10_86
.LBB10_61:                              # %if.then.322
	movl	9584(%r14), %eax
	cmpl	$256, %eax              # imm = 0x100
	movl	$256, %ecx              # imm = 0x100
	cmovbel	%eax, %ecx
	movq	9576(%r14), %rsi
	movslq	%ecx, %rbx
	leaq	(%rsp), %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, (%rsp,%rbx)
	leaq	12(%rsp), %rdi
	movl	$.L.str.22, %esi
	callq	strtok
	movq	%rax, %r15
	xorl	%edi, %edi
	movl	$.L.str.22, %esi
	callq	strtok
	xorl	%edi, %edi
	movl	$.L.str.22, %esi
	callq	strtok
	testq	%rax, %rax
	movl	$.L.str.23, %r12d
	cmovneq	%rax, %r12
	testq	%r15, %r15
	je	.LBB10_62
# BB#65:                                # %if.else.362
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r15, %rdi
	callq	strtol
	movq	%rax, %r15
	testl	%r15d, %r15d
	je	.LBB10_89
# BB#66:                                # %land.lhs.true.367
	movzbl	(%r12), %ebx
	callq	__ctype_toupper_loc
	movq	(%rax), %rax
	movl	(%rax,%rbx,4), %edx
	movl	304(%rax), %esi
	movl	$1, %ecx
	jmp	.LBB10_67
.LBB10_69:                              # %if.end.i
                                        #   in Loop: Header=BB10_67 Depth=1
	movzbl	(%r12,%rcx), %ebx
	movl	(%rax,%rbx,4), %edx
	movzbl	.L.str.24(%rcx), %esi
	movl	(%rax,%rsi,4), %esi
	incq	%rcx
.LBB10_67:                              # %land.lhs.true.367
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%esi, %edx
	jne	.LBB10_70
# BB#68:                                # %while.body.i
                                        #   in Loop: Header=BB10_67 Depth=1
	testb	%bl, %bl
	jne	.LBB10_69
	jmp	.LBB10_71
.LBB10_85:                              # %cond.false.458
	movq	9576(%r14), %rdi
	movl	$.L.str.11, %esi
	movl	$14, %edx
	callq	strncmp
	jmp	.LBB10_86
.LBB10_84:                              # %cond.false.453
	movl	$.L.str.11, %esi
	callq	strcmp
.LBB10_86:                              # %cond.end.461
	testl	%eax, %eax
	jne	.LBB10_89
# BB#87:                                # %if.then.465
	movq	9576(%r14), %rdi
	addq	$14, %rdi
	movl	9584(%r14), %esi
	addl	$-14, %esi
	xorl	%edx, %edx
	callq	dsc_get_int
	cmpl	$0, 1332(%r14)
	jne	.LBB10_89
# BB#88:                                # %if.then.476
	movl	%eax, 1332(%r14)
	jmp	.LBB10_89
.LBB10_62:                              # %if.then.353
	movq	9912(%r14), %rax
	testq	%rax, %rax
	je	.LBB10_89
# BB#63:                                # %dsc_error.exit
	movl	9584(%r14), %r8d
	movq	9576(%r14), %rcx
	movq	1288(%r14), %rdi
	movl	$15, %edx
	movq	%r14, %rsi
	callq	*%rax
	cmpl	$2, %eax
	jne	.LBB10_89
# BB#64:                                # %cleanup.389.thread236
	xorl	%eax, %eax
	jmp	.LBB10_107
.LBB10_70:                              # %dsc_stricmp.exit
	cmpl	%esi, %edx
	jne	.LBB10_73
.LBB10_71:                              # %if.then.371
	cmpl	$0, 1336(%r14)
	jne	.LBB10_89
# BB#72:                                # %if.then.375
	incl	%r15d
	movl	%r15d, 1336(%r14)
	jmp	.LBB10_89
.LBB10_73:                              # %if.else.379
	cmpl	$0, 1332(%r14)
	jne	.LBB10_89
# BB#74:                                # %if.then.383
	movl	%r15d, 1332(%r14)
.LBB10_89:                              # %if.end.481
	movq	9576(%r14), %rbx
	movzbl	(%rbx), %eax
	cmpl	$37, %eax
	jne	.LBB10_101
# BB#90:                                # %land.lhs.true.487
	movzbl	1(%rbx), %eax
	cmpl	$37, %eax
	jne	.LBB10_101
# BB#91:                                # %land.lhs.true.493
	movl	$.L.str.25, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$15, %rcx
	ja	.LBB10_98
# BB#92:                                # %land.lhs.true.503
	cmpq	$3, %rcx
	ja	.LBB10_97
# BB#93:                                # %cond.true.507
	cmpq	$2, %rcx
	jb	.LBB10_100
# BB#94:                                # %if.then.532
	movzbl	2(%rbx), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB10_99
# BB#95:                                # %if.then.532
	testl	%eax, %eax
	jne	.LBB10_99
# BB#96:                                # %if.then.542
	movzbl	3(%rbx), %eax
	addl	$-101, %eax
	jmp	.LBB10_99
.LBB10_98:                              # %cond.false.556
	movl	$.L.str.25, %esi
	movl	$16, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB10_99
.LBB10_97:                              # %cond.false.551
	movl	$.L.str.25, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB10_99:                              # %cond.end.559
	testl	%eax, %eax
	jne	.LBB10_101
.LBB10_100:                             # %if.then.563
	incl	1328(%r14)
.LBB10_101:                             # %if.end.566
	cmpl	$0, 9600(%r14)
	jne	.LBB10_106
# BB#102:                               # %land.lhs.true.568
	movl	9584(%r14), %r8d
	cmpl	$256, %r8d              # imm = 0x100
	jb	.LBB10_106
# BB#103:                               # %if.then.572
	movq	9912(%r14), %rax
	testq	%rax, %rax
	je	.LBB10_105
# BB#104:                               # %if.then.i.223
	movq	9576(%r14), %rcx
	movq	1288(%r14), %rdi
	movl	$14, %edx
	movq	%r14, %rsi
	callq	*%rax
.LBB10_105:                             # %dsc_error.exit225
	movl	$1, 9600(%r14)
.LBB10_106:                             # %if.end.577
	movl	9584(%r14), %eax
	jmp	.LBB10_107
.Lfunc_end10:
	.size	dsc_read_line, .Lfunc_end10-dsc_read_line
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI11_0:
	.zero	16
	.text
	.align	16, 0x90
	.type	dsc_scan_comments,@function
dsc_scan_comments:                      # @dsc_scan_comments
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp57:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp58:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp59:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp60:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp61:
	.cfi_def_cfa_offset 56
	subq	$904, %rsp              # imm = 0x388
.Ltmp62:
	.cfi_def_cfa_offset 960
.Ltmp63:
	.cfi_offset %rbx, -56
.Ltmp64:
	.cfi_offset %r12, -48
.Ltmp65:
	.cfi_offset %r13, -40
.Ltmp66:
	.cfi_offset %r14, -32
.Ltmp67:
	.cfi_offset %r15, -24
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	9576(%r14), %rbx
	movl	$0, 1296(%r14)
	movl	$.L.str.31, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$12, %rcx
	ja	.LBB11_10
# BB#1:                                 # %land.lhs.true
	cmpq	$3, %rcx
	ja	.LBB11_9
# BB#2:                                 # %cond.true.4
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_11
# BB#3:                                 # %cond.true.4
	testl	%eax, %eax
	jne	.LBB11_11
# BB#4:                                 # %if.then
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_11
# BB#5:                                 # %if.then
	testl	%eax, %eax
	jne	.LBB11_11
# BB#6:                                 # %if.then.22
	movzbl	2(%rbx), %eax
	addl	$-69, %eax
	cmpq	$3, %rcx
	jb	.LBB11_11
# BB#7:                                 # %if.then.22
	testl	%eax, %eax
	jne	.LBB11_11
# BB#8:                                 # %if.then.32
	movzbl	3(%rbx), %eax
	addl	$-110, %eax
	jmp	.LBB11_11
.LBB11_10:                              # %cond.false.41
	movl	$.L.str.31, %esi
	movl	$13, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_11
.LBB11_9:                               # %cond.false
	movl	$.L.str.31, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_11:                              # %cond.end.43
	testl	%eax, %eax
	je	.LBB11_12
# BB#13:                                # %if.else
	movl	$.L.str.32, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$14, %rcx
	ja	.LBB11_23
# BB#14:                                # %land.lhs.true.59
	cmpq	$3, %rcx
	ja	.LBB11_22
# BB#15:                                # %cond.true.63
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_24
# BB#16:                                # %cond.true.63
	testl	%eax, %eax
	jne	.LBB11_24
# BB#17:                                # %if.then.77
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_24
# BB#18:                                # %if.then.77
	testl	%eax, %eax
	jne	.LBB11_24
# BB#19:                                # %if.then.87
	movzbl	2(%rbx), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB11_24
# BB#20:                                # %if.then.87
	testl	%eax, %eax
	jne	.LBB11_24
# BB#21:                                # %if.then.97
	movzbl	3(%rbx), %eax
	addl	$-101, %eax
	jmp	.LBB11_24
.LBB11_12:                              # %if.then.47
	movl	$202, 1296(%r14)
	movl	9556(%r14), %eax
	addq	9560(%r14), %rax
	movq	%rax, 1072(%r14)
	movl	$2, 1300(%r14)
	jmp	.LBB11_823
.LBB11_23:                              # %cond.false.110
	movl	$.L.str.32, %esi
	movl	$15, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_24
.LBB11_22:                              # %cond.false.106
	movl	$.L.str.32, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_24:                              # %cond.end.112
	testl	%eax, %eax
	je	.LBB11_25
# BB#26:                                # %if.else.118
	movq	%rbx, %rdi
	callq	dsc_is_section
	testl	%eax, %eax
	jne	.LBB11_27
# BB#28:                                # %if.else.129
	movzbl	(%rbx), %eax
	cmpl	$37, %eax
	jne	.LBB11_825
# BB#29:                                # %land.lhs.true.134
	movzbl	1(%rbx), %ebp
	cmpq	$32, %rbp
	ja	.LBB11_31
# BB#30:                                # %land.lhs.true.134
	movabsq	$4294977024, %rax       # imm = 0x100002600
	btq	%rbp, %rax
	jb	.LBB11_27
.LBB11_31:                              # %if.else.179
	movl	$.L.str.33, %edi
	callq	strlen
	cmpq	$6, %rax
	ja	.LBB11_40
# BB#32:                                # %land.lhs.true.189
	cmpq	$3, %rax
	ja	.LBB11_39
# BB#33:                                # %cond.true.193
	testq	%rax, %rax
	je	.LBB11_27
# BB#34:                                # %if.then.207
	addl	$-37, %ebp
	cmpq	$2, %rax
	jb	.LBB11_42
# BB#35:                                # %if.then.207
	testl	%ebp, %ebp
	jne	.LBB11_42
# BB#36:                                # %if.then.217
	movzbl	2(%rbx), %ebp
	addl	$-66, %ebp
	cmpq	$3, %rax
	jb	.LBB11_42
# BB#37:                                # %if.then.217
	testl	%ebp, %ebp
	jne	.LBB11_42
# BB#38:                                # %if.then.227
	movzbl	3(%rbx), %ebp
	addl	$-101, %ebp
	jmp	.LBB11_42
.LBB11_25:                              # %if.then.116
	movl	$201, 1296(%r14)
.LBB11_43:                              # %if.end.261
	movl	$.L.str.34, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$2, %rcx
	ja	.LBB11_49
# BB#44:                                # %cond.true.275
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_50
# BB#45:                                # %cond.true.275
	testl	%eax, %eax
	jne	.LBB11_50
# BB#46:                                # %if.then.289
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_50
# BB#47:                                # %if.then.289
	testl	%eax, %eax
	jne	.LBB11_50
# BB#48:                                # %if.then.299
	movzbl	2(%rbx), %eax
	addl	$-43, %eax
	jmp	.LBB11_50
.LBB11_49:                              # %cond.false.322
	movl	$.L.str.34, %esi
	movl	$3, %edx
	movq	%rbx, %rdi
	callq	strncmp
.LBB11_50:                              # %cond.end.324
	testl	%eax, %eax
	je	.LBB11_51
# BB#52:                                # %if.else.329
	movslq	9584(%r14), %rax
	cmpq	$256, %rax              # imm = 0x100
	movl	$256, %edx              # imm = 0x100
	cmovbeq	%rax, %rdx
	leaq	9604(%r14), %rdi
	movq	9576(%r14), %rsi
	callq	memcpy
	xorl	%ebp, %ebp
	jmp	.LBB11_53
.LBB11_51:                              # %if.then.328
	leaq	9604(%r14), %rbx
	movl	$1, %ebp
.LBB11_53:                              # %if.end.330
	movl	$.L.str.35, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$7, %rcx
	ja	.LBB11_63
# BB#54:                                # %land.lhs.true.340
	cmpq	$3, %rcx
	ja	.LBB11_62
# BB#55:                                # %cond.true.344
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_64
# BB#56:                                # %cond.true.344
	testl	%eax, %eax
	jne	.LBB11_64
# BB#57:                                # %if.then.358
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_64
# BB#58:                                # %if.then.358
	testl	%eax, %eax
	jne	.LBB11_64
# BB#59:                                # %if.then.368
	movzbl	2(%rbx), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB11_64
# BB#60:                                # %if.then.368
	testl	%eax, %eax
	jne	.LBB11_64
# BB#61:                                # %if.then.378
	movzbl	3(%rbx), %eax
	addl	$-97, %eax
	jmp	.LBB11_64
.LBB11_63:                              # %cond.false.391
	movl	$.L.str.35, %esi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_64
.LBB11_825:                             # %if.then.168
	movl	$0, 1296(%r14)
	jmp	.LBB11_27
.LBB11_62:                              # %cond.false.387
	movl	$.L.str.35, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_64:                              # %cond.end.393
	testl	%eax, %eax
	je	.LBB11_65
# BB#66:                                # %if.else.404
	movl	$.L.str.36, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$9, %rcx
	ja	.LBB11_76
# BB#67:                                # %land.lhs.true.414
	cmpq	$3, %rcx
	ja	.LBB11_75
# BB#68:                                # %cond.true.418
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_77
# BB#69:                                # %cond.true.418
	testl	%eax, %eax
	jne	.LBB11_77
# BB#70:                                # %if.then.432
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_77
# BB#71:                                # %if.then.432
	testl	%eax, %eax
	jne	.LBB11_77
# BB#72:                                # %if.then.442
	movzbl	2(%rbx), %eax
	addl	$-67, %eax
	cmpq	$3, %rcx
	jb	.LBB11_77
# BB#73:                                # %if.then.442
	testl	%eax, %eax
	jne	.LBB11_77
# BB#74:                                # %if.then.452
	movzbl	3(%rbx), %eax
	addl	$-114, %eax
	jmp	.LBB11_77
.LBB11_65:                              # %if.then.397
	movl	$203, 1296(%r14)
	movq	%r14, %rdi
	callq	dsc_parse_pages
.LBB11_208:                             # %if.then.984
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB11_824
	jmp	.LBB11_822
.LBB11_76:                              # %cond.false.465
	movl	$.L.str.36, %esi
	movl	$10, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_77
.LBB11_75:                              # %cond.false.461
	movl	$.L.str.36, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_77:                              # %cond.end.467
	testl	%eax, %eax
	je	.LBB11_78
# BB#91:                                # %if.else.485
	movl	$.L.str.37, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$14, %rcx
	ja	.LBB11_101
# BB#92:                                # %land.lhs.true.495
	cmpq	$3, %rcx
	ja	.LBB11_100
# BB#93:                                # %cond.true.499
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_102
# BB#94:                                # %cond.true.499
	testl	%eax, %eax
	jne	.LBB11_102
# BB#95:                                # %if.then.513
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_102
# BB#96:                                # %if.then.513
	testl	%eax, %eax
	jne	.LBB11_102
# BB#97:                                # %if.then.523
	movzbl	2(%rbx), %eax
	addl	$-67, %eax
	cmpq	$3, %rcx
	jb	.LBB11_102
# BB#98:                                # %if.then.523
	testl	%eax, %eax
	jne	.LBB11_102
# BB#99:                                # %if.then.533
	movzbl	3(%rbx), %eax
	addl	$-114, %eax
	jmp	.LBB11_102
.LBB11_78:                              # %if.then.471
	testl	%ebp, %ebp
	movl	$3, %eax
	movl	$10, %ecx
	cmovnel	%eax, %ecx
	movl	$204, 1296(%r14)
	movl	%ecx, %esi
	addq	9576(%r14), %rsi
	movl	9584(%r14), %eax
	xorl	%ebx, %ebx
	subl	%ecx, %eax
	je	.LBB11_83
	.align	16, 0x90
.LBB11_79:                              # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi), %ecx
	cmpl	$32, %ecx
	je	.LBB11_82
# BB#80:                                # %land.rhs.i
                                        #   in Loop: Header=BB11_79 Depth=1
	movzbl	%cl, %ecx
	cmpl	$9, %ecx
	jne	.LBB11_81
.LBB11_82:                              # %while.body.i
                                        #   in Loop: Header=BB11_79 Depth=1
	incq	%rsi
	decl	%eax
	jne	.LBB11_79
	jmp	.LBB11_83
.LBB11_101:                             # %cond.false.546
	movl	$.L.str.37, %esi
	movl	$15, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_102
.LBB11_100:                             # %cond.false.542
	movl	$.L.str.37, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_102:                             # %cond.end.548
	testl	%eax, %eax
	je	.LBB11_103
# BB#116:                               # %if.else.572
	movl	$.L.str.38, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$7, %rcx
	ja	.LBB11_126
# BB#117:                               # %land.lhs.true.582
	cmpq	$3, %rcx
	ja	.LBB11_125
# BB#118:                               # %cond.true.586
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_127
# BB#119:                               # %cond.true.586
	testl	%eax, %eax
	jne	.LBB11_127
# BB#120:                               # %if.then.600
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_127
# BB#121:                               # %if.then.600
	testl	%eax, %eax
	jne	.LBB11_127
# BB#122:                               # %if.then.610
	movzbl	2(%rbx), %eax
	addl	$-84, %eax
	cmpq	$3, %rcx
	jb	.LBB11_127
# BB#123:                               # %if.then.610
	testl	%eax, %eax
	jne	.LBB11_127
# BB#124:                               # %if.then.620
	movzbl	3(%rbx), %eax
	addl	$-105, %eax
	jmp	.LBB11_127
.LBB11_103:                             # %if.then.552
	testl	%ebp, %ebp
	movl	$3, %eax
	movl	$15, %ecx
	cmovnel	%eax, %ecx
	movl	$205, 1296(%r14)
	movl	%ecx, %esi
	addq	9576(%r14), %rsi
	movl	9584(%r14), %eax
	xorl	%ebx, %ebx
	subl	%ecx, %eax
	je	.LBB11_108
	.align	16, 0x90
.LBB11_104:                             # %land.rhs.i.972
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi), %ecx
	cmpl	$32, %ecx
	je	.LBB11_107
# BB#105:                               # %land.rhs.i.972
                                        #   in Loop: Header=BB11_104 Depth=1
	movzbl	%cl, %ecx
	cmpl	$9, %ecx
	jne	.LBB11_106
.LBB11_107:                             # %while.body.i.976
                                        #   in Loop: Header=BB11_104 Depth=1
	incq	%rsi
	decl	%eax
	jne	.LBB11_104
	jmp	.LBB11_108
.LBB11_126:                             # %cond.false.633
	movl	$.L.str.38, %esi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_127
.LBB11_40:                              # %cond.false.240
	movl	$.L.str.33, %esi
	movl	$7, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_41
.LBB11_125:                             # %cond.false.629
	movl	$.L.str.38, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_127:                             # %cond.end.635
	testl	%eax, %eax
	je	.LBB11_128
# BB#141:                               # %if.else.659
	movl	$.L.str.39, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$5, %rcx
	ja	.LBB11_151
# BB#142:                               # %land.lhs.true.669
	cmpq	$3, %rcx
	ja	.LBB11_150
# BB#143:                               # %cond.true.673
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_152
# BB#144:                               # %cond.true.673
	testl	%eax, %eax
	jne	.LBB11_152
# BB#145:                               # %if.then.687
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_152
# BB#146:                               # %if.then.687
	testl	%eax, %eax
	jne	.LBB11_152
# BB#147:                               # %if.then.697
	movzbl	2(%rbx), %eax
	addl	$-70, %eax
	cmpq	$3, %rcx
	jb	.LBB11_152
# BB#148:                               # %if.then.697
	testl	%eax, %eax
	jne	.LBB11_152
# BB#149:                               # %if.then.707
	movzbl	3(%rbx), %eax
	addl	$-111, %eax
	jmp	.LBB11_152
.LBB11_128:                             # %if.then.639
	testl	%ebp, %ebp
	sete	%al
	movzbl	%al, %eax
	leal	3(%rax,%rax,4), %ecx
	movl	$206, 1296(%r14)
	movq	9576(%r14), %rsi
	addq	%rcx, %rsi
	movl	9584(%r14), %eax
	xorl	%ebx, %ebx
	subl	%ecx, %eax
	je	.LBB11_133
.LBB11_129:                             # %land.rhs.i.998
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi), %ecx
	cmpl	$32, %ecx
	je	.LBB11_132
# BB#130:                               # %land.rhs.i.998
                                        #   in Loop: Header=BB11_129 Depth=1
	movzbl	%cl, %ecx
	cmpl	$9, %ecx
	jne	.LBB11_131
.LBB11_132:                             # %while.body.i.1002
                                        #   in Loop: Header=BB11_129 Depth=1
	incq	%rsi
	decl	%eax
	jne	.LBB11_129
	jmp	.LBB11_133
.LBB11_151:                             # %cond.false.720
	movl	$.L.str.39, %esi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_152
.LBB11_81:
	movl	%eax, %ebx
.LBB11_83:                              # %while.end.i
	movq	%r14, %rdi
	movl	%ebx, %edx
	callq	dsc_alloc_string
	testq	%rax, %rax
	je	.LBB11_84
# BB#85:                                # %for.cond.preheader.i
	testl	%ebx, %ebx
	je	.LBB11_90
# BB#86:                                # %for.body.lr.ph.i
	movl	%ebx, %edx
	xorl	%ecx, %ecx
.LBB11_87:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rax,%rcx), %esi
	cmpl	$10, %esi
	je	.LBB11_89
# BB#88:                                # %for.body.i
                                        #   in Loop: Header=BB11_87 Depth=1
	movzbl	%sil, %esi
	cmpl	$13, %esi
	je	.LBB11_89
# BB#826:                               # %for.inc.i
                                        #   in Loop: Header=BB11_87 Depth=1
	incq	%rcx
	cmpq	%rdx, %rcx
	jb	.LBB11_87
	jmp	.LBB11_90
.LBB11_89:                              # %if.then.21.i
	movb	$0, (%rax,%rcx)
.LBB11_90:                              # %dsc_add_line.exit
	movq	%rax, 1248(%r14)
	jmp	.LBB11_822
.LBB11_84:                              # %dsc_add_line.exit.thread1374
	movq	$0, 1248(%r14)
	movl	$-1, %eax
	jmp	.LBB11_824
.LBB11_39:                              # %cond.false.236
	movl	$.L.str.33, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_41:                              # %cond.end.242
	movl	%eax, %ebp
.LBB11_42:                              # %cond.end.242
	testl	%ebp, %ebp
	jne	.LBB11_43
.LBB11_27:                              # %if.then.120
	movl	9556(%r14), %eax
	movl	9584(%r14), %ecx
	addq	9560(%r14), %rax
	subq	%rcx, %rax
	movq	%rax, 1072(%r14)
	movl	$2, 1300(%r14)
	movl	$10, %eax
	jmp	.LBB11_824
.LBB11_150:                             # %cond.false.716
	movl	$.L.str.39, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_152:                             # %cond.end.722
	testl	%eax, %eax
	je	.LBB11_153
# BB#166:                               # %if.else.746
	movl	$.L.str.40, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$15, %rcx
	ja	.LBB11_176
# BB#167:                               # %land.lhs.true.756
	cmpq	$3, %rcx
	ja	.LBB11_175
# BB#168:                               # %cond.true.760
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_177
# BB#169:                               # %cond.true.760
	testl	%eax, %eax
	jne	.LBB11_177
# BB#170:                               # %if.then.774
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_177
# BB#171:                               # %if.then.774
	testl	%eax, %eax
	jne	.LBB11_177
# BB#172:                               # %if.then.784
	movzbl	2(%rbx), %eax
	addl	$-76, %eax
	cmpq	$3, %rcx
	jb	.LBB11_177
# BB#173:                               # %if.then.784
	testl	%eax, %eax
	jne	.LBB11_177
# BB#174:                               # %if.then.794
	movzbl	3(%rbx), %eax
	addl	$-97, %eax
	jmp	.LBB11_177
.LBB11_153:                             # %if.then.726
	testl	%ebp, %ebp
	sete	%al
	movzbl	%al, %eax
	leal	3(%rax,%rax,2), %ecx
	movl	$207, 1296(%r14)
	movq	9576(%r14), %rsi
	addq	%rcx, %rsi
	movl	9584(%r14), %eax
	xorl	%ebx, %ebx
	subl	%ecx, %eax
	je	.LBB11_158
.LBB11_154:                             # %land.rhs.i.1024
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi), %ecx
	cmpl	$32, %ecx
	je	.LBB11_157
# BB#155:                               # %land.rhs.i.1024
                                        #   in Loop: Header=BB11_154 Depth=1
	movzbl	%cl, %ecx
	cmpl	$9, %ecx
	jne	.LBB11_156
.LBB11_157:                             # %while.body.i.1028
                                        #   in Loop: Header=BB11_154 Depth=1
	incq	%rsi
	decl	%eax
	jne	.LBB11_154
	jmp	.LBB11_158
.LBB11_176:                             # %cond.false.807
	movl	$.L.str.40, %esi
	movl	$16, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_177
.LBB11_106:
	movl	%eax, %ebx
.LBB11_108:                             # %while.end.i.981
	movq	%r14, %rdi
	movl	%ebx, %edx
	callq	dsc_alloc_string
	testq	%rax, %rax
	je	.LBB11_109
# BB#110:                               # %for.cond.preheader.i.983
	testl	%ebx, %ebx
	je	.LBB11_115
# BB#111:                               # %for.body.lr.ph.i.984
	movl	%ebx, %edx
	xorl	%ecx, %ecx
.LBB11_112:                             # %for.body.i.987
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rax,%rcx), %esi
	cmpl	$10, %esi
	je	.LBB11_114
# BB#113:                               # %for.body.i.987
                                        #   in Loop: Header=BB11_112 Depth=1
	movzbl	%sil, %esi
	cmpl	$13, %esi
	je	.LBB11_114
# BB#827:                               # %for.inc.i.992
                                        #   in Loop: Header=BB11_112 Depth=1
	incq	%rcx
	cmpq	%rdx, %rcx
	jb	.LBB11_112
	jmp	.LBB11_115
.LBB11_114:                             # %if.then.21.i.989
	movb	$0, (%rax,%rcx)
.LBB11_115:                             # %dsc_add_line.exit994
	movq	%rax, 1256(%r14)
	jmp	.LBB11_822
.LBB11_109:                             # %dsc_add_line.exit994.thread1381
	movq	$0, 1256(%r14)
	movl	$-1, %eax
	jmp	.LBB11_824
.LBB11_175:                             # %cond.false.803
	movl	$.L.str.40, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_177:                             # %cond.end.809
	testl	%eax, %eax
	je	.LBB11_178
# BB#181:                               # %if.else.842
	movl	$.L.str.41, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$13, %rcx
	ja	.LBB11_191
# BB#182:                               # %land.lhs.true.852
	cmpq	$3, %rcx
	ja	.LBB11_190
# BB#183:                               # %cond.true.856
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_192
# BB#184:                               # %cond.true.856
	testl	%eax, %eax
	jne	.LBB11_192
# BB#185:                               # %if.then.870
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_192
# BB#186:                               # %if.then.870
	testl	%eax, %eax
	jne	.LBB11_192
# BB#187:                               # %if.then.880
	movzbl	2(%rbx), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB11_192
# BB#188:                               # %if.then.880
	testl	%eax, %eax
	jne	.LBB11_192
# BB#189:                               # %if.then.890
	movzbl	3(%rbx), %eax
	addl	$-111, %eax
	jmp	.LBB11_192
.LBB11_178:                             # %if.then.813
	testl	%ebp, %ebp
	movl	$3, %eax
	movl	$16, %ecx
	cmovnel	%eax, %ecx
	movl	$208, 1296(%r14)
	movl	%ecx, %edi
	addq	9576(%r14), %rdi
	movl	9584(%r14), %esi
	subl	%ecx, %esi
	leaq	576(%rsp), %rdx
	callq	dsc_get_int
	cmpl	$0, 576(%rsp)
	je	.LBB11_821
# BB#179:                               # %if.then.828
	leal	-1(%rax), %ecx
	cmpl	$2, %ecx
	ja	.LBB11_821
# BB#180:                               # %if.then.837
	movl	%eax, 1056(%r14)
	jmp	.LBB11_822
.LBB11_191:                             # %cond.false.903
	movl	$.L.str.41, %esi
	movl	$14, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_192
.LBB11_131:
	movl	%eax, %ebx
.LBB11_133:                             # %while.end.i.1007
	movq	%r14, %rdi
	movl	%ebx, %edx
	callq	dsc_alloc_string
	testq	%rax, %rax
	je	.LBB11_134
# BB#135:                               # %for.cond.preheader.i.1009
	testl	%ebx, %ebx
	je	.LBB11_140
# BB#136:                               # %for.body.lr.ph.i.1010
	movl	%ebx, %edx
	xorl	%ecx, %ecx
.LBB11_137:                             # %for.body.i.1013
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rax,%rcx), %esi
	cmpl	$10, %esi
	je	.LBB11_139
# BB#138:                               # %for.body.i.1013
                                        #   in Loop: Header=BB11_137 Depth=1
	movzbl	%sil, %esi
	cmpl	$13, %esi
	je	.LBB11_139
# BB#828:                               # %for.inc.i.1018
                                        #   in Loop: Header=BB11_137 Depth=1
	incq	%rcx
	cmpq	%rdx, %rcx
	jb	.LBB11_137
	jmp	.LBB11_140
.LBB11_139:                             # %if.then.21.i.1015
	movb	$0, (%rax,%rcx)
.LBB11_140:                             # %dsc_add_line.exit1020
	movq	%rax, 1240(%r14)
	jmp	.LBB11_822
.LBB11_134:                             # %dsc_add_line.exit1020.thread1388
	movq	$0, 1240(%r14)
	movl	$-1, %eax
	jmp	.LBB11_824
.LBB11_190:                             # %cond.false.899
	movl	$.L.str.41, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_192:                             # %cond.end.905
	testl	%eax, %eax
	je	.LBB11_193
# BB#194:                               # %if.else.917
	movl	$.L.str.42, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$18, %rcx
	ja	.LBB11_204
# BB#195:                               # %land.lhs.true.927
	cmpq	$3, %rcx
	ja	.LBB11_203
# BB#196:                               # %cond.true.931
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_205
# BB#197:                               # %cond.true.931
	testl	%eax, %eax
	jne	.LBB11_205
# BB#198:                               # %if.then.945
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_205
# BB#199:                               # %if.then.945
	testl	%eax, %eax
	jne	.LBB11_205
# BB#200:                               # %if.then.955
	movzbl	2(%rbx), %eax
	addl	$-72, %eax
	cmpq	$3, %rcx
	jb	.LBB11_205
# BB#201:                               # %if.then.955
	testl	%eax, %eax
	jne	.LBB11_205
# BB#202:                               # %if.then.965
	movzbl	3(%rbx), %eax
	addl	$-105, %eax
	jmp	.LBB11_205
.LBB11_193:                             # %if.then.909
	movl	$209, 1296(%r14)
	leaq	1216(%r14), %rsi
	testl	%ebp, %ebp
	movl	$3, %eax
	movl	$14, %edx
	cmovnel	%eax, %edx
	movq	%r14, %rdi
	callq	dsc_parse_bounding_box
	jmp	.LBB11_208
.LBB11_204:                             # %cond.false.978
	movl	$.L.str.42, %esi
	movl	$19, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_205
.LBB11_156:
	movl	%eax, %ebx
.LBB11_158:                             # %while.end.i.1033
	movq	%r14, %rdi
	movl	%ebx, %edx
	callq	dsc_alloc_string
	testq	%rax, %rax
	je	.LBB11_159
# BB#160:                               # %for.cond.preheader.i.1035
	testl	%ebx, %ebx
	je	.LBB11_165
# BB#161:                               # %for.body.lr.ph.i.1036
	movl	%ebx, %edx
	xorl	%ecx, %ecx
.LBB11_162:                             # %for.body.i.1039
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rax,%rcx), %esi
	cmpl	$10, %esi
	je	.LBB11_164
# BB#163:                               # %for.body.i.1039
                                        #   in Loop: Header=BB11_162 Depth=1
	movzbl	%sil, %esi
	cmpl	$13, %esi
	je	.LBB11_164
# BB#829:                               # %for.inc.i.1044
                                        #   in Loop: Header=BB11_162 Depth=1
	incq	%rcx
	cmpq	%rdx, %rcx
	jb	.LBB11_162
	jmp	.LBB11_165
.LBB11_164:                             # %if.then.21.i.1041
	movb	$0, (%rax,%rcx)
.LBB11_165:                             # %dsc_add_line.exit1046
	movq	%rax, 1264(%r14)
	jmp	.LBB11_822
.LBB11_159:                             # %dsc_add_line.exit1046.thread1395
	movq	$0, 1264(%r14)
	movl	$-1, %eax
	jmp	.LBB11_824
.LBB11_203:                             # %cond.false.974
	movl	$.L.str.42, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_205:                             # %cond.end.980
	testl	%eax, %eax
	je	.LBB11_206
# BB#209:                               # %if.else.992
	movl	$.L.str.43, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$9, %rcx
	ja	.LBB11_219
# BB#210:                               # %land.lhs.true.1002
	cmpq	$3, %rcx
	ja	.LBB11_218
# BB#211:                               # %cond.true.1006
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_220
# BB#212:                               # %cond.true.1006
	testl	%eax, %eax
	jne	.LBB11_220
# BB#213:                               # %if.then.1020
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_220
# BB#214:                               # %if.then.1020
	testl	%eax, %eax
	jne	.LBB11_220
# BB#215:                               # %if.then.1030
	movzbl	2(%rbx), %eax
	addl	$-67, %eax
	cmpq	$3, %rcx
	jb	.LBB11_220
# BB#216:                               # %if.then.1030
	testl	%eax, %eax
	jne	.LBB11_220
# BB#217:                               # %if.then.1040
	movzbl	3(%rbx), %eax
	addl	$-114, %eax
	jmp	.LBB11_220
.LBB11_206:                             # %if.then.984
	movl	$221, 1296(%r14)
	leaq	9920(%r14), %rsi
	testl	%ebp, %ebp
	movl	$3, %eax
	movl	$19, %edx
	jmp	.LBB11_207
.LBB11_219:                             # %cond.false.1053
	movl	$.L.str.43, %esi
	movl	$10, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_220
.LBB11_218:                             # %cond.false.1049
	movl	$.L.str.43, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_220:                             # %cond.end.1055
	testl	%eax, %eax
	je	.LBB11_221
# BB#222:                               # %if.else.1067
	movl	$.L.str.44, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$13, %rcx
	ja	.LBB11_232
# BB#223:                               # %land.lhs.true.1077
	cmpq	$3, %rcx
	ja	.LBB11_231
# BB#224:                               # %cond.true.1081
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_233
# BB#225:                               # %cond.true.1081
	testl	%eax, %eax
	jne	.LBB11_233
# BB#226:                               # %if.then.1095
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_233
# BB#227:                               # %if.then.1095
	testl	%eax, %eax
	jne	.LBB11_233
# BB#228:                               # %if.then.1105
	movzbl	2(%rbx), %eax
	addl	$-79, %eax
	cmpq	$3, %rcx
	jb	.LBB11_233
# BB#229:                               # %if.then.1105
	testl	%eax, %eax
	jne	.LBB11_233
# BB#230:                               # %if.then.1115
	movzbl	3(%rbx), %eax
	addl	$-114, %eax
	jmp	.LBB11_233
.LBB11_221:                             # %if.then.1059
	movl	$222, 1296(%r14)
	leaq	9928(%r14), %rsi
	testl	%ebp, %ebp
	movl	$3, %eax
	movl	$10, %edx
.LBB11_207:                             # %if.then.984
	cmovnel	%eax, %edx
	movq	%r14, %rdi
	callq	dsc_parse_float_bounding_box
	jmp	.LBB11_208
.LBB11_232:                             # %cond.false.1128
	movl	$.L.str.44, %esi
	movl	$14, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_233
.LBB11_231:                             # %cond.false.1124
	movl	$.L.str.44, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_233:                             # %cond.end.1130
	testl	%eax, %eax
	je	.LBB11_234
# BB#235:                               # %if.else.1142
	movl	$.L.str.45, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$11, %rcx
	ja	.LBB11_245
# BB#236:                               # %land.lhs.true.1152
	cmpq	$3, %rcx
	ja	.LBB11_244
# BB#237:                               # %cond.true.1156
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_246
# BB#238:                               # %cond.true.1156
	testl	%eax, %eax
	jne	.LBB11_246
# BB#239:                               # %if.then.1170
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_246
# BB#240:                               # %if.then.1170
	testl	%eax, %eax
	jne	.LBB11_246
# BB#241:                               # %if.then.1180
	movzbl	2(%rbx), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB11_246
# BB#242:                               # %if.then.1180
	testl	%eax, %eax
	jne	.LBB11_246
# BB#243:                               # %if.then.1190
	movzbl	3(%rbx), %eax
	addl	$-97, %eax
	jmp	.LBB11_246
.LBB11_234:                             # %if.then.1134
	movl	$210, 1296(%r14)
	leaq	1180(%r14), %rsi
	testl	%ebp, %ebp
	movl	$3, %eax
	movl	$14, %edx
	cmovnel	%eax, %edx
	movq	%r14, %rdi
	callq	dsc_parse_orientation
	jmp	.LBB11_208
.LBB11_245:                             # %cond.false.1203
	movl	$.L.str.45, %esi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_246
.LBB11_244:                             # %cond.false.1199
	movl	$.L.str.45, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_246:                             # %cond.end.1205
	testl	%eax, %eax
	je	.LBB11_247
# BB#248:                               # %if.else.1215
	movl	$.L.str.46, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$15, %rcx
	ja	.LBB11_258
# BB#249:                               # %land.lhs.true.1225
	cmpq	$3, %rcx
	ja	.LBB11_257
# BB#250:                               # %cond.true.1229
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_259
# BB#251:                               # %cond.true.1229
	testl	%eax, %eax
	jne	.LBB11_259
# BB#252:                               # %if.then.1243
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_259
# BB#253:                               # %if.then.1243
	testl	%eax, %eax
	jne	.LBB11_259
# BB#254:                               # %if.then.1253
	movzbl	2(%rbx), %eax
	addl	$-68, %eax
	cmpq	$3, %rcx
	jb	.LBB11_259
# BB#255:                               # %if.then.1253
	testl	%eax, %eax
	jne	.LBB11_259
# BB#256:                               # %if.then.1263
	movzbl	3(%rbx), %eax
	addl	$-111, %eax
	jmp	.LBB11_259
.LBB11_247:                             # %if.then.1209
	movl	$211, 1296(%r14)
	movq	%r14, %rdi
	callq	dsc_parse_order
	jmp	.LBB11_208
.LBB11_258:                             # %cond.false.1276
	movl	$.L.str.46, %esi
	movl	$16, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_259
.LBB11_257:                             # %cond.false.1272
	movl	$.L.str.46, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_259:                             # %cond.end.1278
	testl	%eax, %eax
	je	.LBB11_260
# BB#261:                               # %if.else.1288
	movl	$.L.str.47, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$20, %rcx
	ja	.LBB11_271
# BB#262:                               # %land.lhs.true.1298
	cmpq	$3, %rcx
	ja	.LBB11_270
# BB#263:                               # %cond.true.1302
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_272
# BB#264:                               # %cond.true.1302
	testl	%eax, %eax
	jne	.LBB11_272
# BB#265:                               # %if.then.1316
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_272
# BB#266:                               # %if.then.1316
	testl	%eax, %eax
	jne	.LBB11_272
# BB#267:                               # %if.then.1326
	movzbl	2(%rbx), %eax
	addl	$-68, %eax
	cmpq	$3, %rcx
	jb	.LBB11_272
# BB#268:                               # %if.then.1326
	testl	%eax, %eax
	jne	.LBB11_272
# BB#269:                               # %if.then.1336
	movzbl	3(%rbx), %eax
	addl	$-111, %eax
	jmp	.LBB11_272
.LBB11_260:                             # %if.then.1282
	movl	$212, 1296(%r14)
	movq	%r14, %rdi
	callq	dsc_parse_document_media
	jmp	.LBB11_208
.LBB11_271:                             # %cond.false.1349
	movl	$.L.str.47, %esi
	movl	$21, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_272
.LBB11_270:                             # %cond.false.1345
	movl	$.L.str.47, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_272:                             # %cond.end.1351
	testl	%eax, %eax
	je	.LBB11_273
# BB#292:                               # %if.else.1447
	movl	$.L.str.48, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$20, %rcx
	ja	.LBB11_302
# BB#293:                               # %land.lhs.true.1457
	cmpq	$3, %rcx
	ja	.LBB11_301
# BB#294:                               # %cond.true.1461
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_303
# BB#295:                               # %cond.true.1461
	testl	%eax, %eax
	jne	.LBB11_303
# BB#296:                               # %if.then.1475
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_303
# BB#297:                               # %if.then.1475
	testl	%eax, %eax
	jne	.LBB11_303
# BB#298:                               # %if.then.1485
	movzbl	2(%rbx), %eax
	addl	$-68, %eax
	cmpq	$3, %rcx
	jb	.LBB11_303
# BB#299:                               # %if.then.1485
	testl	%eax, %eax
	jne	.LBB11_303
# BB#300:                               # %if.then.1495
	movzbl	3(%rbx), %eax
	addl	$-111, %eax
	jmp	.LBB11_303
.LBB11_273:                             # %if.then.1355
	testl	%ebp, %ebp
	movl	$3, %eax
	movl	$21, %r12d
	cmovnel	%eax, %r12d
	movl	$1, 64(%rsp)
	movl	$213, 1296(%r14)
	xorl	%r15d, %r15d
	leaq	576(%rsp), %rbx
	leaq	64(%rsp), %rbp
.LBB11_274:                             # %land.lhs.true.1367
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_283 Depth 2
                                        #       Child Loop BB11_285 Depth 3
	movl	%r12d, %eax
	movq	9576(%r14), %rdx
	movzbl	(%rdx,%rax), %ecx
	cmpl	$10, %ecx
	je	.LBB11_822
# BB#275:                               # %land.lhs.true.1367
                                        #   in Loop: Header=BB11_274 Depth=1
	movzbl	%cl, %ecx
	cmpl	$13, %ecx
	je	.LBB11_822
# BB#276:                               # %while.body
                                        #   in Loop: Header=BB11_274 Depth=1
	addq	%rax, %rdx
	movl	9584(%r14), %ecx
	subl	%r12d, %ecx
	movl	$255, %esi
	movq	%rbx, %rdi
	movq	%rbp, %r8
	callq	dsc_copy_string
	movq	%rax, %r13
	movl	64(%rsp), %eax
	testq	%r13, %r13
	je	.LBB11_291
# BB#277:                               # %while.body
                                        #   in Loop: Header=BB11_274 Depth=1
	testl	%eax, %eax
	je	.LBB11_291
# BB#278:                               # %if.then.1389
                                        #   in Loop: Header=BB11_274 Depth=1
	cmpl	1192(%r14), %r15d
	jae	.LBB11_279
# BB#281:                               # %if.else.1403
                                        #   in Loop: Header=BB11_274 Depth=1
	movq	%r13, %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	%r13, %rsi
	movl	%eax, %edx
	callq	dsc_alloc_string
	movl	%r15d, %ecx
	movq	1200(%r14), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB11_282
.LBB11_279:                             # %if.then.1393
                                        #   in Loop: Header=BB11_274 Depth=1
	movq	%r13, 320(%rsp)
	movl	$1142210560, 328(%rsp)  # imm = 0x4414C000
	movl	$1146257408, 332(%rsp)  # imm = 0x44528000
	movl	$1117782016, 336(%rsp)  # imm = 0x42A00000
	xorps	%xmm0, %xmm0
	movups	%xmm0, 344(%rsp)
	movq	$0, 360(%rsp)
	movq	%r14, %rdi
	leaq	320(%rsp), %rsi
	callq	dsc_add_media
	testl	%eax, %eax
	jne	.LBB11_280
.LBB11_282:                             # %land.rhs.1413.preheader
                                        #   in Loop: Header=BB11_274 Depth=1
	movzbl	(%r13), %ebx
	callq	__ctype_toupper_loc
	movq	%rbx, %r9
	movq	(%rax), %rcx
	movl	(%rcx,%r9,4), %r8d
	incq	%r13
	movl	$.L.str, %esi
	movl	$dsc_known_media, %eax
.LBB11_283:                             # %while.body.1417
                                        #   Parent Loop BB11_274 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_285 Depth 3
	movzbl	(%rsi), %edx
	movl	(%rcx,%rdx,4), %edx
	cmpl	%edx, %r8d
	movl	%r8d, %ebp
	jne	.LBB11_287
# BB#284:                               # %while.body.i.1048.preheader
                                        #   in Loop: Header=BB11_283 Depth=2
	incq	%rsi
	movq	%r13, %rdi
	movb	%r9b, %bl
.LBB11_285:                             # %while.body.i.1048
                                        #   Parent Loop BB11_274 Depth=1
                                        #     Parent Loop BB11_283 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	%bl, %bl
	je	.LBB11_288
# BB#286:                               # %if.end.i
                                        #   in Loop: Header=BB11_285 Depth=3
	movzbl	(%rdi), %ebx
	movl	(%rcx,%rbx,4), %ebp
	movzbl	(%rsi), %edx
	movl	(%rcx,%rdx,4), %edx
	incq	%rdi
	incq	%rsi
	cmpl	%edx, %ebp
	je	.LBB11_285
.LBB11_287:                             # %dsc_stricmp.exit
                                        #   in Loop: Header=BB11_283 Depth=2
	cmpl	%edx, %ebp
	je	.LBB11_288
# BB#289:                               # %if.end.1433
                                        #   in Loop: Header=BB11_283 Depth=2
	movq	48(%rax), %rsi
	addq	$48, %rax
	testq	%rsi, %rsi
	jne	.LBB11_283
	jmp	.LBB11_290
.LBB11_288:                             # %if.then.1422
                                        #   in Loop: Header=BB11_274 Depth=1
	movl	8(%rax), %ecx
	movl	%r15d, %edx
	movq	1200(%r14), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movl	%ecx, 8(%rdx)
	movl	12(%rax), %eax
	movl	%eax, 12(%rdx)
.LBB11_290:                             # %if.end.1437thread-pre-split
                                        #   in Loop: Header=BB11_274 Depth=1
	movl	64(%rsp), %eax
	leaq	576(%rsp), %rbx
	leaq	64(%rsp), %rbp
.LBB11_291:                             # %if.end.1437
                                        #   in Loop: Header=BB11_274 Depth=1
	leal	(%r12,%rax), %r12d
	incl	%r15d
	testl	%eax, %eax
	jne	.LBB11_274
	jmp	.LBB11_822
.LBB11_302:                             # %cond.false.1508
	movl	$.L.str.48, %esi
	movl	$21, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_303
.LBB11_301:                             # %cond.false.1504
	movl	$.L.str.48, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_303:                             # %cond.end.1510
	testl	%eax, %eax
	je	.LBB11_304
# BB#315:                               # %if.else.1597
	movl	$.L.str.49, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$21, %rcx
	ja	.LBB11_325
# BB#316:                               # %land.lhs.true.1607
	cmpq	$3, %rcx
	ja	.LBB11_324
# BB#317:                               # %cond.true.1611
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_326
# BB#318:                               # %cond.true.1611
	testl	%eax, %eax
	jne	.LBB11_326
# BB#319:                               # %if.then.1625
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_326
# BB#320:                               # %if.then.1625
	testl	%eax, %eax
	jne	.LBB11_326
# BB#321:                               # %if.then.1635
	movzbl	2(%rbx), %eax
	addl	$-68, %eax
	cmpq	$3, %rcx
	jb	.LBB11_326
# BB#322:                               # %if.then.1635
	testl	%eax, %eax
	jne	.LBB11_326
# BB#323:                               # %if.then.1645
	movzbl	3(%rbx), %eax
	addl	$-111, %eax
	jmp	.LBB11_326
.LBB11_304:                             # %if.then.1514
	testl	%ebp, %ebp
	movl	$3, %eax
	movl	$21, %ebp
	cmovnel	%eax, %ebp
	movl	$1, 64(%rsp)
	movl	$214, 1296(%r14)
	xorl	%r15d, %r15d
	leaq	576(%rsp), %r12
	leaq	64(%rsp), %r13
.LBB11_305:                             # %land.lhs.true.1530
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	movq	9576(%r14), %rdx
	movzbl	(%rdx,%rax), %ecx
	cmpl	$10, %ecx
	je	.LBB11_822
# BB#306:                               # %land.lhs.true.1530
                                        #   in Loop: Header=BB11_305 Depth=1
	movzbl	%cl, %ecx
	cmpl	$13, %ecx
	je	.LBB11_822
# BB#307:                               # %while.body.1545
                                        #   in Loop: Header=BB11_305 Depth=1
	addq	%rax, %rdx
	movl	9584(%r14), %ecx
	subl	%ebp, %ecx
	movl	$255, %esi
	movq	%r12, %rdi
	movq	%r13, %r8
	callq	dsc_copy_string
	movq	%rax, %rbx
	movl	64(%rsp), %eax
	testq	%rbx, %rbx
	je	.LBB11_314
# BB#308:                               # %while.body.1545
                                        #   in Loop: Header=BB11_305 Depth=1
	testl	%eax, %eax
	je	.LBB11_314
# BB#309:                               # %if.then.1556
                                        #   in Loop: Header=BB11_305 Depth=1
	cmpl	1192(%r14), %r15d
	jae	.LBB11_310
# BB#312:                               # %if.else.1577
                                        #   in Loop: Header=BB11_305 Depth=1
	movq	%rbx, %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	dsc_alloc_string
	movl	%r15d, %ecx
	movq	1200(%r14), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rax, 32(%rcx)
	jmp	.LBB11_313
.LBB11_310:                             # %if.then.1560
                                        #   in Loop: Header=BB11_305 Depth=1
	movq	$0, 320(%rsp)
	movl	$1142210560, 328(%rsp)  # imm = 0x4414C000
	movl	$1146257408, 332(%rsp)  # imm = 0x44528000
	movl	$1117782016, 336(%rsp)  # imm = 0x42A00000
	movq	$0, 344(%rsp)
	movq	%rbx, 352(%rsp)
	movq	$0, 360(%rsp)
	movq	%r14, %rdi
	leaq	320(%rsp), %rsi
	callq	dsc_add_media
	testl	%eax, %eax
	jne	.LBB11_311
.LBB11_313:                             # %if.end.1586thread-pre-split
                                        #   in Loop: Header=BB11_305 Depth=1
	movl	64(%rsp), %eax
.LBB11_314:                             # %if.end.1586
                                        #   in Loop: Header=BB11_305 Depth=1
	leal	(%rbp,%rax), %ebp
	incl	%r15d
	testl	%eax, %eax
	jne	.LBB11_305
	jmp	.LBB11_822
.LBB11_325:                             # %cond.false.1658
	movl	$.L.str.49, %esi
	movl	$22, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_326
.LBB11_324:                             # %cond.false.1654
	movl	$.L.str.49, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_326:                             # %cond.end.1660
	testl	%eax, %eax
	je	.LBB11_327
# BB#338:                               # %if.else.1747
	movl	$.L.str.50, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$22, %rcx
	ja	.LBB11_348
# BB#339:                               # %land.lhs.true.1757
	cmpq	$3, %rcx
	ja	.LBB11_347
# BB#340:                               # %cond.true.1761
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_349
# BB#341:                               # %cond.true.1761
	testl	%eax, %eax
	jne	.LBB11_349
# BB#342:                               # %if.then.1775
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_349
# BB#343:                               # %if.then.1775
	testl	%eax, %eax
	jne	.LBB11_349
# BB#344:                               # %if.then.1785
	movzbl	2(%rbx), %eax
	addl	$-68, %eax
	cmpq	$3, %rcx
	jb	.LBB11_349
# BB#345:                               # %if.then.1785
	testl	%eax, %eax
	jne	.LBB11_349
# BB#346:                               # %if.then.1795
	movzbl	3(%rbx), %eax
	addl	$-111, %eax
	jmp	.LBB11_349
.LBB11_327:                             # %if.then.1664
	testl	%ebp, %ebp
	movl	$3, %eax
	movl	$22, %ebp
	cmovnel	%eax, %ebp
	movl	$1, 64(%rsp)
	movl	$215, 1296(%r14)
	xorl	%r15d, %r15d
	leaq	576(%rsp), %r12
	leaq	64(%rsp), %r13
.LBB11_328:                             # %land.lhs.true.1680
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	movq	9576(%r14), %rdx
	movzbl	(%rdx,%rax), %ecx
	cmpl	$10, %ecx
	je	.LBB11_822
# BB#329:                               # %land.lhs.true.1680
                                        #   in Loop: Header=BB11_328 Depth=1
	movzbl	%cl, %ecx
	cmpl	$13, %ecx
	je	.LBB11_822
# BB#330:                               # %while.body.1695
                                        #   in Loop: Header=BB11_328 Depth=1
	addq	%rax, %rdx
	movl	9584(%r14), %ecx
	subl	%ebp, %ecx
	movl	$255, %esi
	movq	%r12, %rdi
	movq	%r13, %r8
	callq	dsc_copy_string
	movq	%rax, %rbx
	movl	64(%rsp), %eax
	testq	%rbx, %rbx
	je	.LBB11_337
# BB#331:                               # %while.body.1695
                                        #   in Loop: Header=BB11_328 Depth=1
	testl	%eax, %eax
	je	.LBB11_337
# BB#332:                               # %if.then.1706
                                        #   in Loop: Header=BB11_328 Depth=1
	cmpl	1192(%r14), %r15d
	jae	.LBB11_333
# BB#335:                               # %if.else.1727
                                        #   in Loop: Header=BB11_328 Depth=1
	movq	%rbx, %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	dsc_alloc_string
	movl	%r15d, %ecx
	movq	1200(%r14), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rax, 24(%rcx)
	jmp	.LBB11_336
.LBB11_333:                             # %if.then.1710
                                        #   in Loop: Header=BB11_328 Depth=1
	movq	$0, 320(%rsp)
	movl	$1142210560, 328(%rsp)  # imm = 0x4414C000
	movl	$1146257408, 332(%rsp)  # imm = 0x44528000
	movl	$1117782016, 336(%rsp)  # imm = 0x42A00000
	movq	%rbx, 344(%rsp)
	movq	$0, 352(%rsp)
	movq	$0, 360(%rsp)
	movq	%r14, %rdi
	leaq	320(%rsp), %rsi
	callq	dsc_add_media
	testl	%eax, %eax
	jne	.LBB11_334
.LBB11_336:                             # %if.end.1736thread-pre-split
                                        #   in Loop: Header=BB11_328 Depth=1
	movl	64(%rsp), %eax
.LBB11_337:                             # %if.end.1736
                                        #   in Loop: Header=BB11_328 Depth=1
	leal	(%rbp,%rax), %ebp
	incl	%r15d
	testl	%eax, %eax
	jne	.LBB11_328
	jmp	.LBB11_822
.LBB11_348:                             # %cond.false.1808
	movl	$.L.str.50, %esi
	movl	$23, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_349
.LBB11_347:                             # %cond.false.1804
	movl	$.L.str.50, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_349:                             # %cond.end.1810
	testl	%eax, %eax
	je	.LBB11_350
# BB#359:                               # %if.else.1887
	movl	$.L.str.51, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$14, %rcx
	ja	.LBB11_369
# BB#360:                               # %land.lhs.true.1897
	cmpq	$3, %rcx
	ja	.LBB11_368
# BB#361:                               # %cond.true.1901
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_370
# BB#362:                               # %cond.true.1901
	testl	%eax, %eax
	jne	.LBB11_370
# BB#363:                               # %if.then.1915
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_370
# BB#364:                               # %if.then.1915
	testl	%eax, %eax
	jne	.LBB11_370
# BB#365:                               # %if.then.1925
	movzbl	2(%rbx), %eax
	addl	$-68, %eax
	cmpq	$3, %rcx
	jb	.LBB11_370
# BB#366:                               # %if.then.1925
	testl	%eax, %eax
	jne	.LBB11_370
# BB#367:                               # %if.then.1935
	movzbl	3(%rbx), %eax
	addl	$-111, %eax
	jmp	.LBB11_370
.LBB11_350:                             # %if.then.1814
	testl	%ebp, %ebp
	movl	$3, %eax
	movl	$23, %ebp
	cmovnel	%eax, %ebp
	movl	$1, 320(%rsp)
	movl	$216, 1296(%r14)
	xorl	%ebx, %ebx
	leaq	320(%rsp), %r12
	leaq	576(%rsp), %r15
	jmp	.LBB11_351
.LBB11_357:                             # %land.lhs.true.1827.backedge
                                        #   in Loop: Header=BB11_351 Depth=1
	incl	%ebx
	addl	%eax, %ebp
.LBB11_351:                             # %land.lhs.true.1827
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	movq	9576(%r14), %rdi
	movzbl	(%rdi,%rax), %ecx
	cmpl	$10, %ecx
	je	.LBB11_822
# BB#352:                               # %land.lhs.true.1827
                                        #   in Loop: Header=BB11_351 Depth=1
	movzbl	%cl, %ecx
	cmpl	$13, %ecx
	je	.LBB11_822
# BB#353:                               # %while.body.1842
                                        #   in Loop: Header=BB11_351 Depth=1
	addq	%rax, %rdi
	movl	9584(%r14), %esi
	subl	%ebp, %esi
	movq	%r12, %rdx
	callq	dsc_get_real
	movl	320(%rsp), %eax
	testl	%eax, %eax
	je	.LBB11_822
# BB#354:                               # %if.then.1850
                                        #   in Loop: Header=BB11_351 Depth=1
	cmpl	1192(%r14), %ebx
	jae	.LBB11_355
# BB#830:                               # %if.end.1877.thread1496
                                        #   in Loop: Header=BB11_351 Depth=1
	movl	%ebx, %ecx
	movq	1200(%r14), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movss	%xmm0, 16(%rcx)
	jmp	.LBB11_357
.LBB11_355:                             # %if.then.1854
                                        #   in Loop: Header=BB11_351 Depth=1
	movq	$0, 576(%rsp)
	movl	$1142210560, 584(%rsp)  # imm = 0x4414C000
	movl	$1146257408, 588(%rsp)  # imm = 0x44528000
	movss	%xmm0, 592(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 600(%rsp)
	movq	$0, 616(%rsp)
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	dsc_add_media
	testl	%eax, %eax
	jne	.LBB11_358
# BB#356:                               # %if.end.1877
                                        #   in Loop: Header=BB11_351 Depth=1
	movl	320(%rsp), %eax
	testl	%eax, %eax
	jne	.LBB11_357
	jmp	.LBB11_822
.LBB11_369:                             # %cond.false.1948
	movl	$.L.str.51, %esi
	movl	$15, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_370
.LBB11_368:                             # %cond.false.1944
	movl	$.L.str.51, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_370:                             # %cond.end.1950
	testl	%eax, %eax
	je	.LBB11_371
# BB#414:                               # %if.else.2184
	movl	$.L.str.55, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$14, %rcx
	ja	.LBB11_424
# BB#415:                               # %land.lhs.true.2194
	cmpq	$3, %rcx
	ja	.LBB11_423
# BB#416:                               # %cond.true.2198
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_425
# BB#417:                               # %cond.true.2198
	testl	%eax, %eax
	jne	.LBB11_425
# BB#418:                               # %if.then.2212
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_425
# BB#419:                               # %if.then.2212
	testl	%eax, %eax
	jne	.LBB11_425
# BB#420:                               # %if.then.2222
	movzbl	2(%rbx), %eax
	addl	$-82, %eax
	cmpq	$3, %rcx
	jb	.LBB11_425
# BB#421:                               # %if.then.2222
	testl	%eax, %eax
	jne	.LBB11_425
# BB#422:                               # %if.then.2232
	movzbl	3(%rbx), %eax
	addl	$-101, %eax
	jmp	.LBB11_425
.LBB11_371:                             # %if.then.1954
	testl	%ebp, %ebp
	movl	$3, %eax
	movl	$15, %ebx
	cmovneq	%rax, %rbx
	addq	9576(%r14), %rbx
	jmp	.LBB11_372
.LBB11_374:                             # %while.body.1971
                                        #   in Loop: Header=BB11_372 Depth=1
	incq	%rbx
.LBB11_372:                             # %while.cond.1964
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %eax
	cmpl	$32, %eax
	je	.LBB11_374
# BB#373:                               # %while.cond.1964
                                        #   in Loop: Header=BB11_372 Depth=1
	movzbl	%al, %eax
	cmpl	$9, %eax
	je	.LBB11_374
# BB#375:                               # %while.end.1973
	movl	$217, 1296(%r14)
	movl	$.L.str.52, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$8, %rcx
	ja	.LBB11_385
# BB#376:                               # %land.lhs.true.1984
	cmpq	$3, %rcx
	ja	.LBB11_384
# BB#377:                               # %cond.true.1988
	movzbl	(%rbx), %eax
	addl	$-67, %eax
	testq	%rcx, %rcx
	je	.LBB11_386
# BB#378:                               # %cond.true.1988
	testl	%eax, %eax
	jne	.LBB11_386
# BB#379:                               # %if.then.2002
	movzbl	1(%rbx), %eax
	addl	$-108, %eax
	cmpq	$2, %rcx
	jb	.LBB11_386
# BB#380:                               # %if.then.2002
	testl	%eax, %eax
	jne	.LBB11_386
# BB#381:                               # %if.then.2012
	movzbl	2(%rbx), %eax
	addl	$-101, %eax
	cmpq	$3, %rcx
	jb	.LBB11_386
# BB#382:                               # %if.then.2012
	testl	%eax, %eax
	jne	.LBB11_386
# BB#383:                               # %if.then.2022
	movzbl	3(%rbx), %eax
	addl	$-97, %eax
	jmp	.LBB11_386
.LBB11_424:                             # %cond.false.2245
	movl	$.L.str.55, %esi
	movl	$15, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_425
.LBB11_385:                             # %cond.false.2035
	movl	$.L.str.52, %esi
	movl	$9, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_386
.LBB11_423:                             # %cond.false.2241
	movl	$.L.str.55, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_425:                             # %cond.end.2247
	testl	%eax, %eax
	je	.LBB11_426
# BB#427:                               # %if.else.2253
	movl	$.L.str.56, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$21, %rcx
	ja	.LBB11_437
# BB#428:                               # %land.lhs.true.2263
	cmpq	$3, %rcx
	ja	.LBB11_436
# BB#429:                               # %cond.true.2267
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_438
# BB#430:                               # %cond.true.2267
	testl	%eax, %eax
	jne	.LBB11_438
# BB#431:                               # %if.then.2281
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_438
# BB#432:                               # %if.then.2281
	testl	%eax, %eax
	jne	.LBB11_438
# BB#433:                               # %if.then.2291
	movzbl	2(%rbx), %eax
	addl	$-68, %eax
	cmpq	$3, %rcx
	jb	.LBB11_438
# BB#434:                               # %if.then.2291
	testl	%eax, %eax
	jne	.LBB11_438
# BB#435:                               # %if.then.2301
	movzbl	3(%rbx), %eax
	addl	$-111, %eax
	jmp	.LBB11_438
.LBB11_426:                             # %if.then.2251
	movl	$218, 1296(%r14)
	jmp	.LBB11_822
.LBB11_437:                             # %cond.false.2314
	movl	$.L.str.56, %esi
	movl	$22, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_438
.LBB11_436:                             # %cond.false.2310
	movl	$.L.str.56, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_438:                             # %cond.end.2316
	testl	%eax, %eax
	je	.LBB11_439
# BB#440:                               # %if.else.2322
	movl	$.L.str.57, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$23, %rcx
	ja	.LBB11_450
# BB#441:                               # %land.lhs.true.2332
	cmpq	$3, %rcx
	ja	.LBB11_449
# BB#442:                               # %cond.true.2336
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_451
# BB#443:                               # %cond.true.2336
	testl	%eax, %eax
	jne	.LBB11_451
# BB#444:                               # %if.then.2350
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_451
# BB#445:                               # %if.then.2350
	testl	%eax, %eax
	jne	.LBB11_451
# BB#446:                               # %if.then.2360
	movzbl	2(%rbx), %eax
	addl	$-68, %eax
	cmpq	$3, %rcx
	jb	.LBB11_451
# BB#447:                               # %if.then.2360
	testl	%eax, %eax
	jne	.LBB11_451
# BB#448:                               # %if.then.2370
	movzbl	3(%rbx), %eax
	addl	$-111, %eax
	jmp	.LBB11_451
.LBB11_439:                             # %if.then.2320
	movl	$219, 1296(%r14)
	jmp	.LBB11_822
.LBB11_450:                             # %cond.false.2383
	movl	$.L.str.57, %esi
	movl	$24, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_451
.LBB11_384:                             # %cond.false.2031
	movl	$.L.str.52, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_386:                             # %cond.end.2037
	testl	%eax, %eax
	je	.LBB11_387
# BB#388:                               # %if.else.2042
	movl	$.L.str.53, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$8, %rcx
	ja	.LBB11_398
# BB#389:                               # %land.lhs.true.2052
	cmpq	$3, %rcx
	ja	.LBB11_397
# BB#390:                               # %cond.true.2056
	movzbl	(%rbx), %eax
	addl	$-67, %eax
	testq	%rcx, %rcx
	je	.LBB11_399
# BB#391:                               # %cond.true.2056
	testl	%eax, %eax
	jne	.LBB11_399
# BB#392:                               # %if.then.2070
	movzbl	1(%rbx), %eax
	addl	$-108, %eax
	cmpq	$2, %rcx
	jb	.LBB11_399
# BB#393:                               # %if.then.2070
	testl	%eax, %eax
	jne	.LBB11_399
# BB#394:                               # %if.then.2080
	movzbl	2(%rbx), %eax
	addl	$-101, %eax
	cmpq	$3, %rcx
	jb	.LBB11_399
# BB#395:                               # %if.then.2080
	testl	%eax, %eax
	jne	.LBB11_399
# BB#396:                               # %if.then.2090
	movzbl	3(%rbx), %eax
	addl	$-97, %eax
	jmp	.LBB11_399
.LBB11_387:                             # %if.then.2041
	movl	$1, 1060(%r14)
	jmp	.LBB11_822
.LBB11_398:                             # %cond.false.2103
	movl	$.L.str.53, %esi
	movl	$9, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_399
.LBB11_449:                             # %cond.false.2379
	movl	$.L.str.57, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_451:                             # %cond.end.2385
	testl	%eax, %eax
	je	.LBB11_452
# BB#453:                               # %if.else.2391
	movl	$.L.str.58, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$11, %rcx
	ja	.LBB11_463
# BB#454:                               # %land.lhs.true.2401
	cmpq	$3, %rcx
	ja	.LBB11_462
# BB#455:                               # %cond.true.2405
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_464
# BB#456:                               # %cond.true.2405
	testl	%eax, %eax
	jne	.LBB11_464
# BB#457:                               # %if.then.2419
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_464
# BB#458:                               # %if.then.2419
	testl	%eax, %eax
	jne	.LBB11_464
# BB#459:                               # %if.then.2429
	movzbl	2(%rbx), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB11_464
# BB#460:                               # %if.then.2429
	testl	%eax, %eax
	jne	.LBB11_464
# BB#461:                               # %if.then.2439
	movzbl	3(%rbx), %eax
	addl	$-108, %eax
	jmp	.LBB11_464
.LBB11_452:                             # %if.then.2389
	movl	$220, 1296(%r14)
	jmp	.LBB11_822
.LBB11_463:                             # %cond.false.2452
	movl	$.L.str.58, %esi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_464
.LBB11_397:                             # %cond.false.2099
	movl	$.L.str.53, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_399:                             # %cond.end.2105
	testl	%eax, %eax
	je	.LBB11_400
# BB#401:                               # %if.else.2111
	movl	$.L.str.54, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$5, %rcx
	ja	.LBB11_411
# BB#402:                               # %land.lhs.true.2121
	cmpq	$3, %rcx
	ja	.LBB11_410
# BB#403:                               # %cond.true.2125
	movzbl	(%rbx), %eax
	addl	$-66, %eax
	testq	%rcx, %rcx
	je	.LBB11_412
# BB#404:                               # %cond.true.2125
	testl	%eax, %eax
	jne	.LBB11_412
# BB#405:                               # %if.then.2139
	movzbl	1(%rbx), %eax
	addl	$-105, %eax
	cmpq	$2, %rcx
	jb	.LBB11_412
# BB#406:                               # %if.then.2139
	testl	%eax, %eax
	jne	.LBB11_412
# BB#407:                               # %if.then.2149
	movzbl	2(%rbx), %eax
	addl	$-110, %eax
	cmpq	$3, %rcx
	jb	.LBB11_412
# BB#408:                               # %if.then.2149
	testl	%eax, %eax
	jne	.LBB11_412
# BB#409:                               # %if.then.2159
	movzbl	3(%rbx), %eax
	addl	$-97, %eax
	jmp	.LBB11_412
.LBB11_400:                             # %if.then.2109
	movl	$2, 1060(%r14)
	jmp	.LBB11_822
.LBB11_411:                             # %cond.false.2172
	movl	$.L.str.54, %esi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_412
.LBB11_462:                             # %cond.false.2448
	movl	$.L.str.58, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_464:                             # %cond.end.2454
	testl	%eax, %eax
	je	.LBB11_465
# BB#535:                               # %if.else.2466
	movl	$.L.str.59, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$11, %rcx
	ja	.LBB11_545
# BB#536:                               # %land.lhs.true.2476
	cmpq	$3, %rcx
	ja	.LBB11_544
# BB#537:                               # %cond.true.2480
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_546
# BB#538:                               # %cond.true.2480
	testl	%eax, %eax
	jne	.LBB11_546
# BB#539:                               # %if.then.2494
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_546
# BB#540:                               # %if.then.2494
	testl	%eax, %eax
	jne	.LBB11_546
# BB#541:                               # %if.then.2504
	movzbl	2(%rbx), %eax
	addl	$-67, %eax
	cmpq	$3, %rcx
	jb	.LBB11_546
# BB#542:                               # %if.then.2504
	testl	%eax, %eax
	jne	.LBB11_546
# BB#543:                               # %if.then.2514
	movzbl	3(%rbx), %eax
	addl	$-121, %eax
	jmp	.LBB11_546
.LBB11_465:                             # %if.then.2458
	movl	$223, 1296(%r14)
	movq	$0, 56(%rsp)
	movl	$.L.str.58, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$11, %rcx
	ja	.LBB11_475
# BB#466:                               # %land.lhs.true.i
	movq	9576(%r14), %rdi
	cmpq	$3, %rcx
	ja	.LBB11_474
# BB#467:                               # %cond.true.3.i
	movzbl	(%rdi), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_476
# BB#468:                               # %cond.true.3.i
	testl	%eax, %eax
	jne	.LBB11_476
# BB#469:                               # %if.then.i
	movzbl	1(%rdi), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_476
# BB#470:                               # %if.then.i
	testl	%eax, %eax
	jne	.LBB11_476
# BB#471:                               # %if.then.21.i.1060
	movzbl	2(%rdi), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB11_476
# BB#472:                               # %if.then.21.i.1060
	testl	%eax, %eax
	jne	.LBB11_476
# BB#473:                               # %if.then.31.i
	movzbl	3(%rdi), %eax
	addl	$-108, %eax
	jmp	.LBB11_476
.LBB11_545:                             # %cond.false.2527
	movl	$.L.str.59, %esi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_546
.LBB11_410:                             # %cond.false.2168
	movl	$.L.str.54, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_412:                             # %cond.end.2174
	testl	%eax, %eax
	jne	.LBB11_821
# BB#413:                               # %if.then.2178
	movl	$3, 1060(%r14)
	jmp	.LBB11_822
.LBB11_475:                             # %cond.false.41.i
	movq	9576(%r14), %rdi
	movl	$.L.str.58, %esi
	movl	$12, %edx
	callq	strncmp
	jmp	.LBB11_476
.LBB11_544:                             # %cond.false.2523
	movl	$.L.str.59, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_546:                             # %cond.end.2529
	testl	%eax, %eax
	je	.LBB11_583
# BB#547:                               # %lor.lhs.false.2533
	movl	$.L.str.60, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$14, %rcx
	ja	.LBB11_557
# BB#548:                               # %land.lhs.true.2543
	cmpq	$3, %rcx
	ja	.LBB11_556
# BB#549:                               # %cond.true.2547
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_558
# BB#550:                               # %cond.true.2547
	testl	%eax, %eax
	jne	.LBB11_558
# BB#551:                               # %if.then.2561
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_558
# BB#552:                               # %if.then.2561
	testl	%eax, %eax
	jne	.LBB11_558
# BB#553:                               # %if.then.2571
	movzbl	2(%rbx), %eax
	addl	$-77, %eax
	cmpq	$3, %rcx
	jb	.LBB11_558
# BB#554:                               # %if.then.2571
	testl	%eax, %eax
	jne	.LBB11_558
# BB#555:                               # %if.then.2581
	movzbl	3(%rbx), %eax
	addl	$-97, %eax
	jmp	.LBB11_558
.LBB11_557:                             # %cond.false.2594
	movl	$.L.str.60, %esi
	movl	$15, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_558
.LBB11_280:                             # %cleanup.1440
	movl	$-1, %eax
	jmp	.LBB11_824
.LBB11_556:                             # %cond.false.2590
	movl	$.L.str.60, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_558:                             # %cond.end.2596
	testl	%eax, %eax
	je	.LBB11_583
# BB#559:                               # %lor.lhs.false.2600
	movl	$.L.str.61, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$13, %rcx
	ja	.LBB11_569
# BB#560:                               # %land.lhs.true.2610
	cmpq	$3, %rcx
	ja	.LBB11_568
# BB#561:                               # %cond.true.2614
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_570
# BB#562:                               # %cond.true.2614
	testl	%eax, %eax
	jne	.LBB11_570
# BB#563:                               # %if.then.2628
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_570
# BB#564:                               # %if.then.2628
	testl	%eax, %eax
	jne	.LBB11_570
# BB#565:                               # %if.then.2638
	movzbl	2(%rbx), %eax
	addl	$-89, %eax
	cmpq	$3, %rcx
	jb	.LBB11_570
# BB#566:                               # %if.then.2638
	testl	%eax, %eax
	jne	.LBB11_570
# BB#567:                               # %if.then.2648
	movzbl	3(%rbx), %eax
	addl	$-101, %eax
	jmp	.LBB11_570
.LBB11_569:                             # %cond.false.2661
	movl	$.L.str.61, %esi
	movl	$14, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_570
.LBB11_474:                             # %cond.false.i
	movl	$.L.str.58, %esi
	callq	strcmp
.LBB11_476:                             # %cond.end.44.i
	movl	$12, %ebx
	testl	%eax, %eax
	je	.LBB11_485
# BB#477:                               # %if.else.i
	movl	$.L.str.34, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	9576(%r14), %rdi
	cmpq	$2, %rcx
	ja	.LBB11_483
# BB#478:                               # %cond.true.62.i
	movzbl	(%rdi), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_484
# BB#479:                               # %cond.true.62.i
	testl	%eax, %eax
	jne	.LBB11_484
# BB#480:                               # %if.then.77.i
	movzbl	1(%rdi), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_484
# BB#481:                               # %if.then.77.i
	testl	%eax, %eax
	jne	.LBB11_484
# BB#482:                               # %if.then.87.i
	movzbl	2(%rdi), %eax
	addl	$-43, %eax
	jmp	.LBB11_484
.LBB11_483:                             # %cond.false.111.i
	movl	$.L.str.34, %esi
	movl	$3, %edx
	callq	strncmp
.LBB11_484:                             # %cond.end.114.i
	movl	$3, %ebx
	testl	%eax, %eax
	jne	.LBB11_534
.LBB11_485:                             # %if.end.121.i
	leaq	840(%rsp), %rdi
	xorl	%esi, %esi
	movl	$56, %edx
	callq	memset
	leaq	576(%rsp), %rdi
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	leaq	320(%rsp), %rdi
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	leaq	64(%rsp), %rdi
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	leaq	56(%rsp), %rdi
	xorl	%esi, %esi
	movl	$8, %edx
	callq	memset
	movl	%ebx, 900(%rsp)
	movl	9584(%r14), %ecx
	cmpl	%ebx, %ecx
	jbe	.LBB11_822
# BB#486:                               # %for.body.lr.ph.i.1062
	movq	9576(%r14), %rdx
	movl	%ebx, %eax
	movabsq	$4294977024, %rbp       # imm = 0x100002600
	movq	%rax, %rsi
.LBB11_487:                             # %for.body.i.1064
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdx,%rsi), %edi
	cmpq	$32, %rdi
	ja	.LBB11_490
# BB#488:                               # %for.body.i.1064
                                        #   in Loop: Header=BB11_487 Depth=1
	btq	%rdi, %rbp
	jae	.LBB11_490
# BB#489:                               # %for.inc.i.1065
                                        #   in Loop: Header=BB11_487 Depth=1
	incq	%rsi
	movl	%esi, 900(%rsp)
	cmpq	%rcx, %rsi
	jb	.LBB11_487
	jmp	.LBB11_822
.LBB11_490:                             # %if.then.156.i
	addq	%rax, %rdx
	subl	%ebx, %ecx
	leaq	576(%rsp), %rdi
	leaq	900(%rsp), %r8
	movl	$256, %esi              # imm = 0x100
	callq	dsc_copy_string
	movl	900(%rsp), %ecx
	leal	(%rbx,%rcx), %ebx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB11_492
# BB#491:                               # %if.then.162.i
	movl	%ebx, %edx
	addq	9576(%r14), %rdx
	movl	9584(%r14), %ecx
	subl	%ebx, %ecx
	leaq	320(%rsp), %rdi
	leaq	900(%rsp), %r8
	movl	$256, %esi              # imm = 0x100
	callq	dsc_copy_string
	movl	900(%rsp), %eax
.LBB11_492:                             # %if.end.170.i
	leal	(%rbx,%rax), %ebx
	movq	9576(%r14), %rdx
	jmp	.LBB11_493
.LBB11_831:                             # %while.body.i.1066
                                        #   in Loop: Header=BB11_493 Depth=1
	incl	%ebx
.LBB11_493:                             # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ecx
	movzbl	(%rdx,%rcx), %esi
	cmpq	$35, %rsi
	ja	.LBB11_500
# BB#494:                               # %while.cond.i
                                        #   in Loop: Header=BB11_493 Depth=1
	btq	%rsi, %rbp
	jb	.LBB11_831
# BB#495:                               # %while.cond.i
	cmpq	$35, %rsi
	jne	.LBB11_500
# BB#496:                               # %if.then.206.i
	testl	%eax, %eax
	je	.LBB11_821
# BB#497:                               # %if.end.217.i
	incl	%ebx
	movl	%ebx, %eax
	addq	%rax, %rdx
	movl	9584(%r14), %esi
	subl	%ebx, %esi
	leaq	900(%rsp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	dsc_get_int
	movslq	%eax, %rbp
	movq	%rbp, 872(%rsp)
	movl	900(%rsp), %eax
	testl	%eax, %eax
	je	.LBB11_821
# BB#498:                               # %if.end.251.i
	addl	%ebx, %eax
	movl	%eax, %edi
	addq	9576(%r14), %rdi
	movl	9584(%r14), %esi
	subl	%eax, %esi
	leaq	900(%rsp), %rdx
	callq	dsc_get_int
	cltq
	addq	%rbp, %rax
	movq	%rax, 880(%rsp)
	cmpl	$0, 900(%rsp)
	je	.LBB11_821
# BB#499:
	movl	$1, %r15d
	xorl	%ebx, %ebx
	jmp	.LBB11_503
.LBB11_500:                             # %if.else.231.i
	testl	%eax, %eax
	je	.LBB11_821
# BB#501:                               # %if.end.241.i
	addq	%rcx, %rdx
	movl	9584(%r14), %ecx
	subl	%ebx, %ecx
	leaq	64(%rsp), %rdi
	leaq	900(%rsp), %r8
	movl	$256, %esi              # imm = 0x100
	callq	dsc_copy_string
	movl	900(%rsp), %eax
	testl	%eax, %eax
	je	.LBB11_821
# BB#502:                               # %if.end.251.thread.i
	addl	%ebx, %eax
	movl	%eax, %ecx
	addq	9576(%r14), %rcx
	movq	%rcx, 56(%rsp)
	movl	9584(%r14), %ebx
	subl	%eax, %ebx
	xorl	%r15d, %r15d
.LBB11_503:                             # %if.else.255.i
	leaq	576(%rsp), %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB11_505
# BB#504:                               # %if.then.259.i
	leaq	576(%rsp), %rsi
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	dsc_alloc_string
	movq	%rax, 840(%rsp)
.LBB11_505:                             # %if.end.266.i
	leaq	320(%rsp), %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB11_507
# BB#506:                               # %if.then.270.i
	leaq	320(%rsp), %rsi
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	dsc_alloc_string
	movq	%rax, 848(%rsp)
.LBB11_507:                             # %if.end.277.i
	leaq	64(%rsp), %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB11_509
# BB#508:                               # %if.then.281.i
	leaq	64(%rsp), %rsi
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	dsc_alloc_string
	movq	%rax, 856(%rsp)
.LBB11_509:                             # %if.end.288.i
	movq	56(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB11_524
# BB#510:                               # %if.then.290.i
	xorl	%ebp, %ebp
	testl	%ebx, %ebx
	je	.LBB11_515
.LBB11_511:                             # %land.rhs.i.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi), %eax
	cmpl	$32, %eax
	je	.LBB11_514
# BB#512:                               # %land.rhs.i.i
                                        #   in Loop: Header=BB11_511 Depth=1
	movzbl	%al, %eax
	cmpl	$9, %eax
	jne	.LBB11_513
.LBB11_514:                             # %while.body.i.i
                                        #   in Loop: Header=BB11_511 Depth=1
	incq	%rsi
	decl	%ebx
	jne	.LBB11_511
	jmp	.LBB11_515
.LBB11_311:                             # %cleanup.1590
	movl	$-1, %eax
	jmp	.LBB11_824
.LBB11_568:                             # %cond.false.2657
	movl	$.L.str.61, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_570:                             # %cond.end.2663
	testl	%eax, %eax
	je	.LBB11_583
# BB#571:                               # %lor.lhs.false.2667
	movl	$.L.str.62, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$12, %rcx
	ja	.LBB11_581
# BB#572:                               # %land.lhs.true.2677
	cmpq	$3, %rcx
	ja	.LBB11_580
# BB#573:                               # %cond.true.2681
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_582
# BB#574:                               # %cond.true.2681
	testl	%eax, %eax
	jne	.LBB11_582
# BB#575:                               # %if.then.2695
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_582
# BB#576:                               # %if.then.2695
	testl	%eax, %eax
	jne	.LBB11_582
# BB#577:                               # %if.then.2705
	movzbl	2(%rbx), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB11_582
# BB#578:                               # %if.then.2705
	testl	%eax, %eax
	jne	.LBB11_582
# BB#579:                               # %if.then.2715
	movzbl	3(%rbx), %eax
	addl	$-108, %eax
	jmp	.LBB11_582
.LBB11_581:                             # %cond.false.2728
	movl	$.L.str.62, %esi
	movl	$13, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_582
.LBB11_358:                             # %cleanup.1881
	movl	$-1, %eax
	jmp	.LBB11_824
.LBB11_334:                             # %cleanup.1740
	movl	$-1, %eax
	jmp	.LBB11_824
.LBB11_580:                             # %cond.false.2724
	movl	$.L.str.62, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_582:                             # %cond.end.2730
	testl	%eax, %eax
	je	.LBB11_583
# BB#659:                               # %if.else.2742
	movl	$.L.str.63, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$23, %rcx
	ja	.LBB11_669
# BB#660:                               # %land.lhs.true.2752
	cmpq	$3, %rcx
	ja	.LBB11_668
# BB#661:                               # %cond.true.2756
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_670
# BB#662:                               # %cond.true.2756
	testl	%eax, %eax
	jne	.LBB11_670
# BB#663:                               # %if.then.2770
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_670
# BB#664:                               # %if.then.2770
	testl	%eax, %eax
	jne	.LBB11_670
# BB#665:                               # %if.then.2780
	movzbl	2(%rbx), %eax
	addl	$-68, %eax
	cmpq	$3, %rcx
	jb	.LBB11_670
# BB#666:                               # %if.then.2780
	testl	%eax, %eax
	jne	.LBB11_670
# BB#667:                               # %if.then.2790
	movzbl	3(%rbx), %eax
	addl	$-111, %eax
	jmp	.LBB11_670
.LBB11_583:                             # %if.then.2734
	movl	$223, 1296(%r14)
	movq	9576(%r14), %rbx
	leaq	320(%rsp), %rdi
	xorl	%esi, %esi
	movl	$56, %edx
	callq	memset
	leaq	576(%rsp), %rdi
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	movl	$.L.str.34, %edi
	callq	strlen
	cmpq	$2, %rax
	ja	.LBB11_589
# BB#584:                               # %cond.true.6.i
	movzbl	(%rbx), %ebp
	addl	$-37, %ebp
	testq	%rax, %rax
	je	.LBB11_590
# BB#585:                               # %cond.true.6.i
	testl	%ebp, %ebp
	jne	.LBB11_590
# BB#586:                               # %if.then.i.1079
	movzbl	1(%rbx), %ebp
	addl	$-37, %ebp
	cmpq	$2, %rax
	jb	.LBB11_590
# BB#587:                               # %if.then.i.1079
	testl	%ebp, %ebp
	jne	.LBB11_590
# BB#588:                               # %if.then.24.i
	movzbl	2(%rbx), %ebp
	addl	$-43, %ebp
	jmp	.LBB11_590
.LBB11_589:                             # %cond.false.43.i
	movl	$.L.str.34, %esi
	movl	$3, %edx
	movq	%rbx, %rdi
	callq	strncmp
	movl	%eax, %ebp
.LBB11_590:                             # %cond.end.45.i
	leaq	9604(%r14), %rax
	testl	%ebp, %ebp
	cmoveq	%rax, %rbx
	movl	$.L.str.59, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$11, %rcx
	ja	.LBB11_600
# BB#591:                               # %land.lhs.true.60.i
	cmpq	$3, %rcx
	ja	.LBB11_599
# BB#592:                               # %cond.true.64.i
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_601
# BB#593:                               # %cond.true.64.i
	testl	%eax, %eax
	jne	.LBB11_601
# BB#594:                               # %if.then.78.i
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_601
# BB#595:                               # %if.then.78.i
	testl	%eax, %eax
	jne	.LBB11_601
# BB#596:                               # %if.then.88.i
	movzbl	2(%rbx), %eax
	addl	$-67, %eax
	cmpq	$3, %rcx
	jb	.LBB11_601
# BB#597:                               # %if.then.88.i
	testl	%eax, %eax
	jne	.LBB11_601
# BB#598:                               # %if.then.98.i
	movzbl	3(%rbx), %eax
	addl	$-121, %eax
	jmp	.LBB11_601
.LBB11_600:                             # %cond.false.111.i.1083
	movl	$.L.str.59, %esi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_601
.LBB11_599:                             # %cond.false.107.i
	movl	$.L.str.59, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_601:                             # %cond.end.113.i
	testl	%eax, %eax
	je	.LBB11_602
# BB#603:                               # %if.else.i.1084
	movl	$.L.str.60, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$14, %rcx
	ja	.LBB11_613
# BB#604:                               # %land.lhs.true.129.i
	cmpq	$3, %rcx
	ja	.LBB11_612
# BB#605:                               # %cond.true.133.i
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_614
# BB#606:                               # %cond.true.133.i
	testl	%eax, %eax
	jne	.LBB11_614
# BB#607:                               # %if.then.147.i
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_614
# BB#608:                               # %if.then.147.i
	testl	%eax, %eax
	jne	.LBB11_614
# BB#609:                               # %if.then.157.i
	movzbl	2(%rbx), %eax
	addl	$-77, %eax
	cmpq	$3, %rcx
	jb	.LBB11_614
# BB#610:                               # %if.then.157.i
	testl	%eax, %eax
	jne	.LBB11_614
# BB#611:                               # %if.then.167.i
	movzbl	3(%rbx), %eax
	addl	$-97, %eax
	jmp	.LBB11_614
.LBB11_602:                             # %if.then.117.i
	movl	$.L.str.98, %r15d
	testl	%ebp, %ebp
	setne	%al
	movzbl	%al, %eax
	leal	3(%rax,%rax,8), %eax
	jmp	.LBB11_642
.LBB11_613:                             # %cond.false.180.i
	movl	$.L.str.60, %esi
	movl	$15, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_614
.LBB11_612:                             # %cond.false.176.i
	movl	$.L.str.60, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_614:                             # %cond.end.182.i
	testl	%eax, %eax
	je	.LBB11_615
# BB#616:                               # %if.else.190.i
	movl	$.L.str.61, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$13, %rcx
	ja	.LBB11_626
# BB#617:                               # %land.lhs.true.200.i
	cmpq	$3, %rcx
	ja	.LBB11_625
# BB#618:                               # %cond.true.204.i
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_627
# BB#619:                               # %cond.true.204.i
	testl	%eax, %eax
	jne	.LBB11_627
# BB#620:                               # %if.then.218.i
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_627
# BB#621:                               # %if.then.218.i
	testl	%eax, %eax
	jne	.LBB11_627
# BB#622:                               # %if.then.228.i
	movzbl	2(%rbx), %eax
	addl	$-89, %eax
	cmpq	$3, %rcx
	jb	.LBB11_627
# BB#623:                               # %if.then.228.i
	testl	%eax, %eax
	jne	.LBB11_627
# BB#624:                               # %if.then.238.i
	movzbl	3(%rbx), %eax
	addl	$-101, %eax
	jmp	.LBB11_627
.LBB11_615:                             # %if.then.186.i
	testl	%ebp, %ebp
	movl	$3, %ecx
	movl	$15, %eax
	cmovel	%ecx, %eax
	movl	$.L.str.99, %r15d
	jmp	.LBB11_642
.LBB11_626:                             # %cond.false.251.i
	movl	$.L.str.61, %esi
	movl	$14, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_627
.LBB11_625:                             # %cond.false.247.i
	movl	$.L.str.61, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_627:                             # %cond.end.253.i
	testl	%eax, %eax
	je	.LBB11_628
# BB#629:                               # %if.else.261.i
	movl	$.L.str.62, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$12, %rcx
	ja	.LBB11_639
# BB#630:                               # %land.lhs.true.271.i
	cmpq	$3, %rcx
	ja	.LBB11_638
# BB#631:                               # %cond.true.275.i
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_640
# BB#632:                               # %cond.true.275.i
	testl	%eax, %eax
	jne	.LBB11_640
# BB#633:                               # %if.then.289.i
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_640
# BB#634:                               # %if.then.289.i
	testl	%eax, %eax
	jne	.LBB11_640
# BB#635:                               # %if.then.299.i
	movzbl	2(%rbx), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB11_640
# BB#636:                               # %if.then.299.i
	testl	%eax, %eax
	jne	.LBB11_640
# BB#637:                               # %if.then.309.i
	movzbl	3(%rbx), %eax
	addl	$-108, %eax
	jmp	.LBB11_640
.LBB11_628:                             # %if.then.257.i
	testl	%ebp, %ebp
	movl	$3, %ecx
	movl	$14, %eax
	cmovel	%ecx, %eax
	movl	$.L.str.100, %r15d
	jmp	.LBB11_642
.LBB11_639:                             # %cond.false.322.i
	movl	$.L.str.62, %esi
	movl	$13, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_640
.LBB11_669:                             # %cond.false.2803
	movl	$.L.str.63, %esi
	movl	$24, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_670
.LBB11_638:                             # %cond.false.318.i
	movl	$.L.str.62, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_640:                             # %cond.end.324.i
	testl	%eax, %eax
	jne	.LBB11_658
# BB#641:                               # %if.then.328.i
	testl	%ebp, %ebp
	movl	$3, %ecx
	movl	$13, %eax
	cmovel	%ecx, %eax
	movl	$.L.str.101, %r15d
.LBB11_642:                             # %if.end.336.i
	movl	%eax, 64(%rsp)
	movl	9584(%r14), %ecx
	cmpl	%eax, %ecx
	jbe	.LBB11_822
# BB#643:                               # %for.body.lr.ph.i.1089
	movq	9576(%r14), %rdx
	movl	%eax, %ebp
	movabsq	$4294977024, %rdi       # imm = 0x100002600
	movq	%rbp, %rsi
.LBB11_644:                             # %for.body.i.1091
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdx,%rsi), %ebx
	cmpq	$32, %rbx
	ja	.LBB11_647
# BB#645:                               # %for.body.i.1091
                                        #   in Loop: Header=BB11_644 Depth=1
	btq	%rbx, %rdi
	jae	.LBB11_647
# BB#646:                               # %for.inc.i.1093
                                        #   in Loop: Header=BB11_644 Depth=1
	incq	%rsi
	movl	%esi, 64(%rsp)
	cmpq	%rcx, %rsi
	jb	.LBB11_644
	jmp	.LBB11_822
.LBB11_647:                             # %if.then.367.i
	addq	%rbp, %rdx
	subl	%eax, %ecx
	leaq	576(%rsp), %rdi
	leaq	64(%rsp), %r8
	movl	$256, %esi              # imm = 0x100
	callq	dsc_copy_string
	cmpl	$0, 64(%rsp)
	je	.LBB11_821
# BB#648:                               # %if.else.376.i
	movq	%r15, %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	%eax, %edx
	callq	dsc_alloc_string
	movq	%rax, 320(%rsp)
	movl	$.L.str.20, %esi
	movl	$3, %edx
	movq	%r14, %rdi
	callq	dsc_alloc_string
	movq	%rax, 328(%rsp)
	movl	$.L.str.19, %esi
	movl	$5, %edx
	movq	%r14, %rdi
	callq	dsc_alloc_string
	movq	%rax, 336(%rsp)
	leaq	576(%rsp), %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB11_650
# BB#649:                               # %if.then.386.i
	leaq	576(%rsp), %rsi
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	dsc_alloc_string
	movq	%rax, 344(%rsp)
.LBB11_650:                             # %if.end.393.i
	movq	9880(%r14), %rax
	testq	%rax, %rax
	je	.LBB11_652
# BB#651:                               # %if.then.i.i.1102
	movq	9896(%r14), %rsi
	movl	$56, %edi
	callq	*%rax
	jmp	.LBB11_653
.LBB11_652:                             # %if.end.i.i.1104
	movl	$56, %edi
	callq	malloc
.LBB11_653:                             # %dsc_memalloc.exit.i.1106
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB11_658
# BB#654:                               # %if.end.398.i
	leaq	320(%rsp), %rsi
	movl	$56, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movq	9936(%r14), %rax
	testq	%rax, %rax
	je	.LBB11_655
.LBB11_656:                             # %while.cond.i.1109
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	movq	48(%rcx), %rax
	testq	%rax, %rax
	jne	.LBB11_656
# BB#657:                               # %while.end.i.1110
	movq	%rbx, 48(%rcx)
	jmp	.LBB11_822
.LBB11_658:                             # %if.then.2739.critedge1418
	movl	$100, 1296(%r14)
	jmp	.LBB11_822
.LBB11_655:                             # %if.then.403.i
	movq	%rbx, 9936(%r14)
	jmp	.LBB11_822
.LBB11_668:                             # %cond.false.2799
	movl	$.L.str.63, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_670:                             # %cond.end.2805
	testl	%eax, %eax
	je	.LBB11_671
# BB#673:                               # %if.else.2817
	movl	$.L.str.64, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$22, %rcx
	ja	.LBB11_683
# BB#674:                               # %land.lhs.true.2827
	cmpq	$3, %rcx
	ja	.LBB11_682
# BB#675:                               # %cond.true.2831
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_684
# BB#676:                               # %cond.true.2831
	testl	%eax, %eax
	jne	.LBB11_684
# BB#677:                               # %if.then.2845
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_684
# BB#678:                               # %if.then.2845
	testl	%eax, %eax
	jne	.LBB11_684
# BB#679:                               # %if.then.2855
	movzbl	2(%rbx), %eax
	addl	$-68, %eax
	cmpq	$3, %rcx
	jb	.LBB11_684
# BB#680:                               # %if.then.2855
	testl	%eax, %eax
	jne	.LBB11_684
# BB#681:                               # %if.then.2865
	movzbl	3(%rbx), %eax
	addl	$-111, %eax
	jmp	.LBB11_684
.LBB11_671:                             # %if.then.2809
	movl	$224, 1296(%r14)
	movq	%r14, %rdi
	callq	dsc_parse_process_colours
	testl	%eax, %eax
	je	.LBB11_822
# BB#672:                               # %if.then.2814
	movl	$100, 1296(%r14)
	jmp	.LBB11_822
.LBB11_683:                             # %cond.false.2878
	movl	$.L.str.64, %esi
	movl	$23, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_684
.LBB11_682:                             # %cond.false.2874
	movl	$.L.str.64, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_684:                             # %cond.end.2880
	testl	%eax, %eax
	je	.LBB11_685
# BB#687:                               # %if.else.2892
	movl	$.L.str.65, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$17, %rcx
	ja	.LBB11_697
# BB#688:                               # %land.lhs.true.2902
	cmpq	$3, %rcx
	ja	.LBB11_696
# BB#689:                               # %cond.true.2906
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_698
# BB#690:                               # %cond.true.2906
	testl	%eax, %eax
	jne	.LBB11_698
# BB#691:                               # %if.then.2920
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_698
# BB#692:                               # %if.then.2920
	testl	%eax, %eax
	jne	.LBB11_698
# BB#693:                               # %if.then.2930
	movzbl	2(%rbx), %eax
	addl	$-67, %eax
	cmpq	$3, %rcx
	jb	.LBB11_698
# BB#694:                               # %if.then.2930
	testl	%eax, %eax
	jne	.LBB11_698
# BB#695:                               # %if.then.2940
	movzbl	3(%rbx), %eax
	addl	$-77, %eax
	jmp	.LBB11_698
.LBB11_685:                             # %if.then.2884
	movl	$225, 1296(%r14)
	movq	%r14, %rdi
	callq	dsc_parse_custom_colours
	testl	%eax, %eax
	je	.LBB11_822
# BB#686:                               # %if.then.2889
	movl	$100, 1296(%r14)
	jmp	.LBB11_822
.LBB11_697:                             # %cond.false.2953
	movl	$.L.str.65, %esi
	movl	$18, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_698
.LBB11_696:                             # %cond.false.2949
	movl	$.L.str.65, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_698:                             # %cond.end.2955
	testl	%eax, %eax
	je	.LBB11_699
# BB#752:                               # %if.else.2967
	movl	$.L.str.66, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$16, %rcx
	ja	.LBB11_762
# BB#753:                               # %land.lhs.true.2977
	cmpq	$3, %rcx
	ja	.LBB11_761
# BB#754:                               # %cond.true.2981
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_763
# BB#755:                               # %cond.true.2981
	testl	%eax, %eax
	jne	.LBB11_763
# BB#756:                               # %if.then.2995
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_763
# BB#757:                               # %if.then.2995
	testl	%eax, %eax
	jne	.LBB11_763
# BB#758:                               # %if.then.3005
	movzbl	2(%rbx), %eax
	addl	$-82, %eax
	cmpq	$3, %rcx
	jb	.LBB11_763
# BB#759:                               # %if.then.3005
	testl	%eax, %eax
	jne	.LBB11_763
# BB#760:                               # %if.then.3015
	movzbl	3(%rbx), %eax
	addl	$-71, %eax
	jmp	.LBB11_763
.LBB11_699:                             # %if.then.2959
	movl	$226, 1296(%r14)
	movl	$.L.str.65, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$17, %rcx
	ja	.LBB11_709
# BB#700:                               # %land.lhs.true.i.1118
	movq	9576(%r14), %rdi
	cmpq	$3, %rcx
	ja	.LBB11_708
# BB#701:                               # %cond.true.3.i.1124
	movzbl	(%rdi), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_710
# BB#702:                               # %cond.true.3.i.1124
	testl	%eax, %eax
	jne	.LBB11_710
# BB#703:                               # %if.then.i.1131
	movzbl	1(%rdi), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_710
# BB#704:                               # %if.then.i.1131
	testl	%eax, %eax
	jne	.LBB11_710
# BB#705:                               # %if.then.21.i.1138
	movzbl	2(%rdi), %eax
	addl	$-67, %eax
	cmpq	$3, %rcx
	jb	.LBB11_710
# BB#706:                               # %if.then.21.i.1138
	testl	%eax, %eax
	jne	.LBB11_710
# BB#707:                               # %if.then.31.i.1142
	movzbl	3(%rdi), %eax
	addl	$-77, %eax
	jmp	.LBB11_710
.LBB11_762:                             # %cond.false.3028
	movl	$.L.str.66, %esi
	movl	$17, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB11_763
.LBB11_513:
	movl	%ebx, %ebp
.LBB11_515:                             # %while.end.i.i
	movq	%r14, %rdi
	movl	%ebp, %edx
	callq	dsc_alloc_string
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB11_523
# BB#516:                               # %for.cond.preheader.i.i
	testl	%ebp, %ebp
	je	.LBB11_522
# BB#517:                               # %for.body.lr.ph.i.i
	movl	%ebp, %edx
	xorl	%ecx, %ecx
.LBB11_518:                             # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rax,%rcx), %esi
	cmpl	$10, %esi
	je	.LBB11_520
# BB#519:                               # %for.body.i.i
                                        #   in Loop: Header=BB11_518 Depth=1
	movzbl	%sil, %esi
	cmpl	$13, %esi
	je	.LBB11_520
# BB#521:                               # %for.inc.i.i
                                        #   in Loop: Header=BB11_518 Depth=1
	incq	%rcx
	cmpq	%rdx, %rcx
	jb	.LBB11_518
	jmp	.LBB11_522
.LBB11_520:                             # %if.then.21.i.i
	movb	$0, (%rax,%rcx)
.LBB11_522:
	movq	%rax, %rcx
.LBB11_523:                             # %dsc_add_line.exit.i
	movq	%rcx, 864(%rsp)
.LBB11_524:                             # %if.end.293.i
	testl	%r15d, %r15d
	je	.LBB11_526
# BB#525:                               # %if.then.295.i
	movq	1320(%r14), %rax
	movq	872(%rsp), %rcx
	cmpq	%rcx, %rax
	cmovbq	%rax, %rcx
	movq	%rcx, 1320(%r14)
.LBB11_526:                             # %if.end.306.i
	movq	9880(%r14), %rax
	testq	%rax, %rax
	je	.LBB11_528
# BB#527:                               # %if.then.i.i
	movq	9896(%r14), %rsi
	movl	$56, %edi
	callq	*%rax
	jmp	.LBB11_529
.LBB11_528:                             # %if.end.i.i
	movl	$56, %edi
	callq	malloc
.LBB11_529:                             # %dsc_memalloc.exit.i
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB11_534
# BB#530:                               # %if.end.311.i
	leaq	840(%rsp), %rsi
	movl	$56, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movq	9936(%r14), %rax
	testq	%rax, %rax
	je	.LBB11_531
.LBB11_532:                             # %while.cond.321.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	movq	48(%rcx), %rax
	testq	%rax, %rax
	jne	.LBB11_532
# BB#533:                               # %while.end.325.i
	movq	%rbx, 48(%rcx)
	jmp	.LBB11_822
.LBB11_534:                             # %if.then.2463.critedge1417
	movl	$100, 1296(%r14)
	jmp	.LBB11_822
.LBB11_531:                             # %if.then.316.i
	movq	%rbx, 9936(%r14)
	jmp	.LBB11_822
.LBB11_709:                             # %cond.false.41.i.1147
	movq	9576(%r14), %rdi
	movl	$.L.str.65, %esi
	movl	$18, %edx
	callq	strncmp
	jmp	.LBB11_710
.LBB11_761:                             # %cond.false.3024
	movl	$.L.str.66, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB11_763:                             # %cond.end.3030
	testl	%eax, %eax
	je	.LBB11_764
# BB#816:                               # %if.else.3042
	movq	9576(%r14), %rax
	movzbl	(%rax), %ecx
	cmpl	$37, %ecx
	jne	.LBB11_820
# BB#817:                               # %land.lhs.true.3048
	movzbl	1(%rax), %eax
	cmpq	$32, %rax
	ja	.LBB11_820
# BB#818:                               # %land.lhs.true.3048
	movabsq	$4294977024, %rcx       # imm = 0x100002600
	btq	%rax, %rcx
	jae	.LBB11_820
# BB#819:                               # %if.then.3072
	movl	$0, 1296(%r14)
	jmp	.LBB11_822
.LBB11_820:                             # %if.else.3074
	movl	$100, 1296(%r14)
.LBB11_821:                             # %if.end.3102
	movq	%r14, %rdi
	callq	dsc_unknown
.LBB11_822:                             # %if.end.3102
	movl	9556(%r14), %eax
	addq	9560(%r14), %rax
	movq	%rax, 1072(%r14)
.LBB11_823:                             # %cleanup.3108
	xorl	%eax, %eax
.LBB11_824:                             # %cleanup.3108
	addq	$904, %rsp              # imm = 0x388
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_764:                             # %if.then.3034
	movl	$227, 1296(%r14)
	movl	$.L.str.66, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$16, %rcx
	ja	.LBB11_774
# BB#765:                               # %land.lhs.true.i.1211
	movq	9576(%r14), %rdi
	cmpq	$3, %rcx
	ja	.LBB11_773
# BB#766:                               # %cond.true.3.i.1217
	movzbl	(%rdi), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_775
# BB#767:                               # %cond.true.3.i.1217
	testl	%eax, %eax
	jne	.LBB11_775
# BB#768:                               # %if.then.i.1224
	movzbl	1(%rdi), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_775
# BB#769:                               # %if.then.i.1224
	testl	%eax, %eax
	jne	.LBB11_775
# BB#770:                               # %if.then.21.i.1231
	movzbl	2(%rdi), %eax
	addl	$-82, %eax
	cmpq	$3, %rcx
	jb	.LBB11_775
# BB#771:                               # %if.then.21.i.1231
	testl	%eax, %eax
	jne	.LBB11_775
# BB#772:                               # %if.then.31.i.1235
	movzbl	3(%rdi), %eax
	addl	$-71, %eax
	jmp	.LBB11_775
.LBB11_774:                             # %cond.false.41.i.1240
	movq	9576(%r14), %rdi
	movl	$.L.str.66, %esi
	movl	$17, %edx
	callq	strncmp
	jmp	.LBB11_775
.LBB11_708:                             # %cond.false.i.1144
	movl	$.L.str.65, %esi
	callq	strcmp
.LBB11_710:                             # %cond.end.44.i.1150
	movl	$18, %r12d
	testl	%eax, %eax
	je	.LBB11_719
# BB#711:                               # %if.else.i.1154
	movl	$.L.str.34, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	9576(%r14), %rdi
	cmpq	$2, %rcx
	ja	.LBB11_717
# BB#712:                               # %cond.true.62.i.1160
	movzbl	(%rdi), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_718
# BB#713:                               # %cond.true.62.i.1160
	testl	%eax, %eax
	jne	.LBB11_718
# BB#714:                               # %if.then.77.i.1167
	movzbl	1(%rdi), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_718
# BB#715:                               # %if.then.77.i.1167
	testl	%eax, %eax
	jne	.LBB11_718
# BB#716:                               # %if.then.87.i.1171
	movzbl	2(%rdi), %eax
	addl	$-43, %eax
	jmp	.LBB11_718
.LBB11_717:                             # %cond.false.111.i.1173
	movl	$.L.str.34, %esi
	movl	$3, %edx
	callq	strncmp
.LBB11_718:                             # %cond.end.114.i.1176
	movl	$3, %r12d
	testl	%eax, %eax
	jne	.LBB11_751
.LBB11_719:                             # %if.end.121.i.1182
	leaq	576(%rsp), %rdi
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	jmp	.LBB11_720
.LBB11_731:                             # %do.body.i.backedge
                                        #   in Loop: Header=BB11_720 Depth=1
	addl	%r15d, %r12d
.LBB11_720:                             # %if.end.121.i.1182
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_722 Depth 2
                                        #     Child Loop BB11_734 Depth 2
                                        #       Child Loop BB11_737 Depth 3
                                        #     Child Loop BB11_748 Depth 2
	movl	%r12d, 320(%rsp)
	movl	9584(%r14), %esi
	cmpl	%r12d, %esi
	jbe	.LBB11_822
# BB#721:                               # %for.body.lr.ph.i.1185
                                        #   in Loop: Header=BB11_720 Depth=1
	movq	9576(%r14), %rdi
	movl	%r12d, %eax
.LBB11_722:                             # %for.body.i.1187
                                        #   Parent Loop BB11_720 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %ecx
	movzbl	(%rdi,%rcx), %ecx
	cmpq	$32, %rcx
	ja	.LBB11_725
# BB#723:                               # %for.body.i.1187
                                        #   in Loop: Header=BB11_722 Depth=2
	movabsq	$4294977024, %rdx       # imm = 0x100002600
	btq	%rcx, %rdx
	jae	.LBB11_725
# BB#724:                               # %for.inc.i.1189
                                        #   in Loop: Header=BB11_722 Depth=2
	incl	%eax
	movl	%eax, 320(%rsp)
	cmpl	%esi, %eax
	jb	.LBB11_722
	jmp	.LBB11_822
.LBB11_725:                             # %if.else.153.i
                                        #   in Loop: Header=BB11_720 Depth=1
	movl	%r12d, %eax
	addq	%rax, %rdi
	subl	%r12d, %esi
	leaq	320(%rsp), %rdx
	callq	dsc_get_real
	movss	%xmm0, 48(%rsp)         # 4-byte Spill
	movl	320(%rsp), %ebx
	testl	%ebx, %ebx
	je	.LBB11_822
# BB#726:                               # %if.end.166.i
                                        #   in Loop: Header=BB11_720 Depth=1
	addl	%r12d, %ebx
	movl	%ebx, %edi
	addq	9576(%r14), %rdi
	movl	9584(%r14), %esi
	subl	%ebx, %esi
	leaq	320(%rsp), %rdx
	callq	dsc_get_real
	movss	%xmm0, 40(%rsp)         # 4-byte Spill
	movl	320(%rsp), %ebp
	testl	%ebp, %ebp
	je	.LBB11_822
# BB#727:                               # %if.end.176.i
                                        #   in Loop: Header=BB11_720 Depth=1
	addl	%ebx, %ebp
	movl	%ebp, %edi
	addq	9576(%r14), %rdi
	movl	9584(%r14), %esi
	subl	%ebp, %esi
	leaq	320(%rsp), %rdx
	callq	dsc_get_real
	movss	%xmm0, 36(%rsp)         # 4-byte Spill
	movl	320(%rsp), %ebx
	testl	%ebx, %ebx
	je	.LBB11_822
# BB#728:                               # %if.end.186.i
                                        #   in Loop: Header=BB11_720 Depth=1
	addl	%ebp, %ebx
	movl	%ebx, %edi
	addq	9576(%r14), %rdi
	movl	9584(%r14), %esi
	subl	%ebx, %esi
	leaq	320(%rsp), %rdx
	callq	dsc_get_real
	movss	%xmm0, 24(%rsp)         # 4-byte Spill
	movl	320(%rsp), %r15d
	testl	%r15d, %r15d
	je	.LBB11_822
# BB#729:                               # %if.end.196.i
                                        #   in Loop: Header=BB11_720 Depth=1
	addl	%ebx, %r15d
	movl	%r15d, %edx
	addq	9576(%r14), %rdx
	movl	9584(%r14), %ecx
	subl	%r15d, %ecx
	movl	$256, %esi              # imm = 0x100
	leaq	576(%rsp), %rdi
	leaq	320(%rsp), %r8
	callq	dsc_copy_string
	movl	320(%rsp), %r12d
	testl	%r12d, %r12d
	je	.LBB11_822
# BB#730:                               # %land.lhs.true.199.i
                                        #   in Loop: Header=BB11_720 Depth=1
	leaq	576(%rsp), %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB11_731
# BB#732:                               # %if.then.203.i
                                        #   in Loop: Header=BB11_720 Depth=1
	movq	9944(%r14), %rbp
	testq	%rbp, %rbp
	je	.LBB11_742
# BB#733:                               # %while.body.i.preheader.i
                                        #   in Loop: Header=BB11_720 Depth=1
	movzbl	576(%rsp), %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
.LBB11_734:                             # %while.body.i.i.1194
                                        #   Parent Loop BB11_720 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_737 Depth 3
	movq	(%rbp), %rbx
	testq	%rbx, %rbx
	je	.LBB11_740
# BB#735:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB11_734 Depth=2
	movzbl	(%rbx), %r13d
	callq	__ctype_toupper_loc
	movq	(%rax), %rax
	movl	(%rax,%r13,4), %edx
	movq	16(%rsp), %rcx          # 8-byte Reload
	movl	(%rax,%rcx,4), %esi
	cmpl	%esi, %edx
	jne	.LBB11_739
# BB#736:                               # %while.body.i.i.i.preheader
                                        #   in Loop: Header=BB11_734 Depth=2
	incq	%rbx
	leaq	577(%rsp), %rcx
.LBB11_737:                             # %while.body.i.i.i
                                        #   Parent Loop BB11_720 Depth=1
                                        #     Parent Loop BB11_734 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	%r13b, %r13b
	je	.LBB11_741
# BB#738:                               # %if.end.i.i.i
                                        #   in Loop: Header=BB11_737 Depth=3
	movzbl	(%rbx), %r13d
	movl	(%rax,%r13,4), %edx
	movzbl	(%rcx), %esi
	movl	(%rax,%rsi,4), %esi
	incq	%rbx
	incq	%rcx
	cmpl	%esi, %edx
	je	.LBB11_737
.LBB11_739:                             # %dsc_stricmp.exit.i.i
                                        #   in Loop: Header=BB11_734 Depth=2
	cmpl	%esi, %edx
	je	.LBB11_741
.LBB11_740:                             # %if.end.i.i.1196
                                        #   in Loop: Header=BB11_734 Depth=2
	movq	48(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB11_734
	jmp	.LBB11_742
.LBB11_741:                             # %dsc_find_colour.exit.i
                                        #   in Loop: Header=BB11_720 Depth=1
	testq	%rbp, %rbp
	jne	.LBB11_750
.LBB11_742:                             # %if.then.208.i
                                        #   in Loop: Header=BB11_720 Depth=1
	movq	9880(%r14), %rax
	testq	%rax, %rax
	je	.LBB11_744
# BB#743:                               # %if.then.i.i.1198
                                        #   in Loop: Header=BB11_720 Depth=1
	movq	9896(%r14), %rsi
	movl	$56, %edi
	callq	*%rax
	jmp	.LBB11_745
.LBB11_744:                             # %if.end.i.94.i
                                        #   in Loop: Header=BB11_720 Depth=1
	movl	$56, %edi
	callq	malloc
.LBB11_745:                             # %dsc_memalloc.exit.i.1200
                                        #   in Loop: Header=BB11_720 Depth=1
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB11_751
# BB#746:                               # %if.end.213.i
                                        #   in Loop: Header=BB11_720 Depth=1
	xorl	%esi, %esi
	movl	$56, %edx
	movq	%rbp, %rdi
	callq	memset
	leaq	576(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	dsc_alloc_string
	movq	%rax, (%rbp)
	movl	$0, 8(%rbp)
	movq	9944(%r14), %rax
	testq	%rax, %rax
	je	.LBB11_747
.LBB11_748:                             # %while.cond.i.1202
                                        #   Parent Loop BB11_720 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rcx
	movq	48(%rcx), %rax
	testq	%rax, %rax
	jne	.LBB11_748
# BB#749:                               # %while.end.i.1203
                                        #   in Loop: Header=BB11_720 Depth=1
	movq	%rbp, 48(%rcx)
	jmp	.LBB11_750
.LBB11_747:                             # %if.then.222.i
                                        #   in Loop: Header=BB11_720 Depth=1
	movq	%rbp, 9944(%r14)
.LBB11_750:                             # %do.cond.i
                                        #   in Loop: Header=BB11_720 Depth=1
	movl	$2, 12(%rbp)
	movss	48(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 28(%rbp)
	movss	40(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 32(%rbp)
	movss	36(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 36(%rbp)
	movss	24(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 40(%rbp)
	cmpl	$0, 320(%rsp)
	jne	.LBB11_731
	jmp	.LBB11_822
.LBB11_751:                             # %if.then.2964
	movl	$100, 1296(%r14)
	jmp	.LBB11_822
.LBB11_773:                             # %cond.false.i.1237
	movl	$.L.str.66, %esi
	callq	strcmp
.LBB11_775:                             # %cond.end.44.i.1243
	movl	$17, %r12d
	testl	%eax, %eax
	je	.LBB11_784
# BB#776:                               # %if.else.i.1248
	movl	$.L.str.34, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	9576(%r14), %rdi
	cmpq	$2, %rcx
	ja	.LBB11_782
# BB#777:                               # %cond.true.62.i.1254
	movzbl	(%rdi), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB11_783
# BB#778:                               # %cond.true.62.i.1254
	testl	%eax, %eax
	jne	.LBB11_783
# BB#779:                               # %if.then.77.i.1261
	movzbl	1(%rdi), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB11_783
# BB#780:                               # %if.then.77.i.1261
	testl	%eax, %eax
	jne	.LBB11_783
# BB#781:                               # %if.then.87.i.1265
	movzbl	2(%rdi), %eax
	addl	$-43, %eax
	jmp	.LBB11_783
.LBB11_782:                             # %cond.false.111.i.1267
	movl	$.L.str.34, %esi
	movl	$3, %edx
	callq	strncmp
.LBB11_783:                             # %cond.end.114.i.1270
	movl	$3, %r12d
	testl	%eax, %eax
	jne	.LBB11_815
.LBB11_784:                             # %if.end.121.i.1278
	leaq	576(%rsp), %rdi
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	jmp	.LBB11_785
.LBB11_795:                             # %do.body.i.1280.backedge
                                        #   in Loop: Header=BB11_785 Depth=1
	addl	%r15d, %r12d
.LBB11_785:                             # %if.end.121.i.1278
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_787 Depth 2
                                        #     Child Loop BB11_798 Depth 2
                                        #       Child Loop BB11_801 Depth 3
                                        #     Child Loop BB11_812 Depth 2
	movl	%r12d, 320(%rsp)
	movl	9584(%r14), %esi
	cmpl	%r12d, %esi
	jbe	.LBB11_822
# BB#786:                               # %for.body.lr.ph.i.1282
                                        #   in Loop: Header=BB11_785 Depth=1
	movq	9576(%r14), %rdi
	movl	%r12d, %eax
.LBB11_787:                             # %for.body.i.1285
                                        #   Parent Loop BB11_785 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %ecx
	movzbl	(%rdi,%rcx), %ecx
	cmpq	$32, %rcx
	ja	.LBB11_790
# BB#788:                               # %for.body.i.1285
                                        #   in Loop: Header=BB11_787 Depth=2
	movabsq	$4294977024, %rdx       # imm = 0x100002600
	btq	%rcx, %rdx
	jae	.LBB11_790
# BB#789:                               # %for.inc.i.1288
                                        #   in Loop: Header=BB11_787 Depth=2
	incl	%eax
	movl	%eax, 320(%rsp)
	cmpl	%esi, %eax
	jb	.LBB11_787
	jmp	.LBB11_822
.LBB11_790:                             # %if.else.153.i.1295
                                        #   in Loop: Header=BB11_785 Depth=1
	movl	%r12d, %eax
	addq	%rax, %rdi
	subl	%r12d, %esi
	leaq	320(%rsp), %rdx
	callq	dsc_get_real
	movss	%xmm0, 48(%rsp)         # 4-byte Spill
	movl	320(%rsp), %ebx
	testl	%ebx, %ebx
	je	.LBB11_822
# BB#791:                               # %if.end.166.i.1303
                                        #   in Loop: Header=BB11_785 Depth=1
	addl	%r12d, %ebx
	movl	%ebx, %edi
	addq	9576(%r14), %rdi
	movl	9584(%r14), %esi
	subl	%ebx, %esi
	leaq	320(%rsp), %rdx
	callq	dsc_get_real
	movss	%xmm0, 40(%rsp)         # 4-byte Spill
	movl	320(%rsp), %ebp
	testl	%ebp, %ebp
	je	.LBB11_822
# BB#792:                               # %if.end.176.i.1310
                                        #   in Loop: Header=BB11_785 Depth=1
	addl	%ebx, %ebp
	movl	%ebp, %edi
	addq	9576(%r14), %rdi
	movl	9584(%r14), %esi
	subl	%ebp, %esi
	leaq	320(%rsp), %rdx
	callq	dsc_get_real
	movss	%xmm0, 36(%rsp)         # 4-byte Spill
	movl	320(%rsp), %r15d
	testl	%r15d, %r15d
	je	.LBB11_822
# BB#793:                               # %if.end.186.i.1317
                                        #   in Loop: Header=BB11_785 Depth=1
	addl	%ebp, %r15d
	movl	%r15d, %edx
	addq	9576(%r14), %rdx
	movl	9584(%r14), %ecx
	subl	%r15d, %ecx
	movl	$256, %esi              # imm = 0x100
	leaq	576(%rsp), %rdi
	leaq	320(%rsp), %r8
	callq	dsc_copy_string
	movl	320(%rsp), %r12d
	testl	%r12d, %r12d
	je	.LBB11_822
# BB#794:                               # %land.lhs.true.189.i
                                        #   in Loop: Header=BB11_785 Depth=1
	leaq	576(%rsp), %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB11_795
# BB#796:                               # %if.then.193.i
                                        #   in Loop: Header=BB11_785 Depth=1
	movq	9944(%r14), %rbp
	testq	%rbp, %rbp
	je	.LBB11_806
# BB#797:                               # %while.body.i.preheader.i.1322
                                        #   in Loop: Header=BB11_785 Depth=1
	movzbl	576(%rsp), %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
.LBB11_798:                             # %while.body.i.i.1326
                                        #   Parent Loop BB11_785 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_801 Depth 3
	movq	(%rbp), %rbx
	testq	%rbx, %rbx
	je	.LBB11_804
# BB#799:                               # %land.lhs.true.i.i.1332
                                        #   in Loop: Header=BB11_798 Depth=2
	movzbl	(%rbx), %r13d
	callq	__ctype_toupper_loc
	movq	(%rax), %rax
	movl	(%rax,%r13,4), %edx
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	(%rax,%rcx,4), %esi
	cmpl	%esi, %edx
	jne	.LBB11_803
# BB#800:                               # %while.body.i.i.i.1336.preheader
                                        #   in Loop: Header=BB11_798 Depth=2
	incq	%rbx
	leaq	577(%rsp), %rcx
.LBB11_801:                             # %while.body.i.i.i.1336
                                        #   Parent Loop BB11_785 Depth=1
                                        #     Parent Loop BB11_798 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	%r13b, %r13b
	je	.LBB11_805
# BB#802:                               # %if.end.i.i.i.1344
                                        #   in Loop: Header=BB11_801 Depth=3
	movzbl	(%rbx), %r13d
	movl	(%rax,%r13,4), %edx
	movzbl	(%rcx), %esi
	movl	(%rax,%rsi,4), %esi
	incq	%rbx
	incq	%rcx
	cmpl	%esi, %edx
	je	.LBB11_801
.LBB11_803:                             # %dsc_stricmp.exit.i.i.1348
                                        #   in Loop: Header=BB11_798 Depth=2
	cmpl	%esi, %edx
	je	.LBB11_805
.LBB11_804:                             # %if.end.i.i.1352
                                        #   in Loop: Header=BB11_798 Depth=2
	movq	48(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB11_798
	jmp	.LBB11_806
.LBB11_805:                             # %dsc_find_colour.exit.i.1353
                                        #   in Loop: Header=BB11_785 Depth=1
	testq	%rbp, %rbp
	jne	.LBB11_814
.LBB11_806:                             # %if.then.198.i
                                        #   in Loop: Header=BB11_785 Depth=1
	movq	9880(%r14), %rax
	testq	%rax, %rax
	je	.LBB11_808
# BB#807:                               # %if.then.i.i.1355
                                        #   in Loop: Header=BB11_785 Depth=1
	movq	9896(%r14), %rsi
	movl	$56, %edi
	callq	*%rax
	jmp	.LBB11_809
.LBB11_808:                             # %if.end.i.87.i
                                        #   in Loop: Header=BB11_785 Depth=1
	movl	$56, %edi
	callq	malloc
.LBB11_809:                             # %dsc_memalloc.exit.i.1357
                                        #   in Loop: Header=BB11_785 Depth=1
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB11_815
# BB#810:                               # %if.end.203.i
                                        #   in Loop: Header=BB11_785 Depth=1
	xorl	%esi, %esi
	movl	$56, %edx
	movq	%rbp, %rdi
	callq	memset
	leaq	576(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	dsc_alloc_string
	movq	%rax, (%rbp)
	movl	$0, 8(%rbp)
	movq	9944(%r14), %rax
	testq	%rax, %rax
	je	.LBB11_811
.LBB11_812:                             # %while.cond.i.1363
                                        #   Parent Loop BB11_785 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rcx
	movq	48(%rcx), %rax
	testq	%rax, %rax
	jne	.LBB11_812
# BB#813:                               # %while.end.i.1364
                                        #   in Loop: Header=BB11_785 Depth=1
	movq	%rbp, 48(%rcx)
	jmp	.LBB11_814
.LBB11_811:                             # %if.then.212.i
                                        #   in Loop: Header=BB11_785 Depth=1
	movq	%rbp, 9944(%r14)
.LBB11_814:                             # %do.cond.i.1367
                                        #   in Loop: Header=BB11_785 Depth=1
	movl	$1, 12(%rbp)
	movss	48(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 16(%rbp)
	movss	40(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 20(%rbp)
	movss	36(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 24(%rbp)
	cmpl	$0, 320(%rsp)
	jne	.LBB11_795
	jmp	.LBB11_822
.LBB11_815:                             # %if.then.3039
	movl	$100, 1296(%r14)
	jmp	.LBB11_822
.Lfunc_end11:
	.size	dsc_scan_comments, .Lfunc_end11-dsc_scan_comments
	.cfi_endproc

	.globl	dsc_fixup
	.align	16, 0x90
	.type	dsc_fixup,@function
dsc_fixup:                              # @dsc_fixup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp70:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp71:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp72:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp73:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp74:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp75:
	.cfi_def_cfa_offset 144
.Ltmp76:
	.cfi_offset %rbx, -56
.Ltmp77:
	.cfi_offset %r12, -48
.Ltmp78:
	.cfi_offset %r13, -40
.Ltmp79:
	.cfi_offset %r14, -32
.Ltmp80:
	.cfi_offset %r15, -24
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	xorl	%eax, %eax
	cmpl	$1, 1296(%r13)
	je	.LBB12_155
# BB#1:                                 # %if.end
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	dsc_scan_data
	cmpl	$0, 9568(%r13)
	je	.LBB12_15
# BB#2:                                 # %land.lhs.true
	cmpl	$0, 1336(%r13)
	jne	.LBB12_5
# BB#3:                                 # %lor.lhs.false
	cmpl	$0, 1332(%r13)
	jne	.LBB12_5
# BB#4:                                 # %lor.lhs.false.3
	cmpl	$0, 1328(%r13)
	je	.LBB12_15
.LBB12_5:                               # %if.then.5
	movl	1300(%r13), %eax
	decl	%eax
	cmpl	$13, %eax
	ja	.LBB12_15
# BB#6:                                 # %if.then.5
	jmpq	*.LJTI12_0(,%rax,8)
.LBB12_14:                              # %sw.bb.35
	movl	9556(%r13), %eax
	addq	9560(%r13), %rax
	movq	%rax, 1152(%r13)
	jmp	.LBB12_15
.LBB12_7:                               # %sw.bb
	movl	9556(%r13), %eax
	addq	9560(%r13), %rax
	movq	%rax, 1072(%r13)
	jmp	.LBB12_15
.LBB12_8:                               # %sw.bb.6
	movl	9556(%r13), %eax
	addq	9560(%r13), %rax
	movq	%rax, 1088(%r13)
	jmp	.LBB12_15
.LBB12_9:                               # %sw.bb.11
	movl	9556(%r13), %eax
	addq	9560(%r13), %rax
	movq	%rax, 1104(%r13)
	jmp	.LBB12_15
.LBB12_10:                              # %sw.bb.16
	movl	9556(%r13), %eax
	addq	9560(%r13), %rax
	movq	%rax, 1120(%r13)
	jmp	.LBB12_15
.LBB12_11:                              # %sw.bb.21
	movl	9556(%r13), %eax
	addq	9560(%r13), %rax
	movq	%rax, 1136(%r13)
	jmp	.LBB12_15
.LBB12_12:                              # %sw.bb.26
	movl	1168(%r13), %eax
	testl	%eax, %eax
	je	.LBB12_15
# BB#13:                                # %if.then.28
	movl	9556(%r13), %ecx
	addq	9560(%r13), %rcx
	decl	%eax
	movq	1160(%r13), %rdx
	leaq	(%rax,%rax,8), %rax
	movq	%rcx, 24(%rdx,%rax,8)
.LBB12_15:                              # %if.end.40
	movl	1168(%r13), %eax
	testl	%eax, %eax
	je	.LBB12_26
# BB#16:                                # %land.lhs.true.43
	movq	1136(%r13), %rdx
	movq	1160(%r13), %rcx
	movq	16(%rcx), %rcx
	cmpq	%rdx, %rcx
	je	.LBB12_20
# BB#17:                                # %land.lhs.true.49
	cmpq	1128(%r13), %rdx
	je	.LBB12_20
# BB#18:                                # %if.then.53
	movq	%rcx, 1136(%r13)
	movq	9904(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB12_20
# BB#19:                                # %if.end.58
	movq	1288(%r13), %rdi
	movl	$.L.str.15, %esi
	callq	*%rcx
	movl	1168(%r13), %eax
	testl	%eax, %eax
	je	.LBB12_26
.LBB12_20:                              # %land.lhs.true.61
	movq	1144(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB12_26
# BB#21:                                # %land.lhs.true.64
	decl	%eax
	movq	1160(%r13), %rdx
	leaq	(%rax,%rax,8), %rax
	cmpq	%rcx, 24(%rdx,%rax,8)
	je	.LBB12_26
# BB#22:                                # %if.then.74
	movq	9904(%r13), %rax
	testq	%rax, %rax
	je	.LBB12_25
# BB#23:                                # %dsc_debug_print.exit117
	movq	1288(%r13), %rdi
	movl	$.L.str.16, %esi
	callq	*%rax
	movq	9904(%r13), %rax
	testq	%rax, %rax
	je	.LBB12_25
# BB#24:                                # %if.then.i.121
	movq	1288(%r13), %rdi
	movl	$.L.str.17, %esi
	callq	*%rax
.LBB12_25:                              # %dsc_debug_print.exit122
	movl	1168(%r13), %eax
	decl	%eax
	movq	1144(%r13), %rcx
	movq	1160(%r13), %rdx
	leaq	(%rax,%rax,8), %rax
	movq	%rcx, 24(%rdx,%rax,8)
.LBB12_26:                              # %if.end.82
	leaq	1072(%r13), %rax
	movq	1080(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB12_28
# BB#27:                                # %if.then.i.124
	movq	%rcx, (%rax)
.LBB12_28:                              # %if.end.i
	cmpq	%rcx, 1088(%r13)
	jbe	.LBB12_30
# BB#29:
	leaq	1088(%r13), %rax
.LBB12_30:                              # %select.end
	movq	1096(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB12_32
# BB#31:                                # %if.then.i.126
	movq	%rcx, (%rax)
.LBB12_32:                              # %if.end.i.128
	cmpq	%rcx, 1104(%r13)
	jbe	.LBB12_34
# BB#33:
	leaq	1104(%r13), %rax
.LBB12_34:                              # %select.end292
	movq	1112(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB12_36
# BB#35:                                # %if.then.i.135
	movq	%rcx, (%rax)
.LBB12_36:                              # %if.end.i.137
	cmpq	%rcx, 1120(%r13)
	jbe	.LBB12_38
# BB#37:
	leaq	1120(%r13), %rax
.LBB12_38:                              # %select.end297
	movq	1128(%r13), %rdx
	leaq	1136(%r13), %rcx
	testq	%rdx, %rdx
	je	.LBB12_40
# BB#39:                                # %if.then.i.144
	movq	%rdx, (%rax)
.LBB12_40:                              # %if.end.i.146
	cmpq	%rdx, (%rcx)
	ja	.LBB12_42
# BB#41:                                # %select.mid300
	movq	%rax, %rcx
.LBB12_42:                              # %select.end299
	movl	1168(%r13), %eax
	testq	%rax, %rax
	je	.LBB12_43
# BB#60:                                # %for.body.lr.ph
	movq	1160(%r13), %rdi
	xorl	%edx, %edx
	testb	$1, %al
	je	.LBB12_66
# BB#61:                                # %for.body.prol
	movq	16(%rdi), %rdx
	leaq	24(%rdi), %rsi
	testq	%rdx, %rdx
	je	.LBB12_63
# BB#62:                                # %if.then.i.150.prol
	movq	%rdx, (%rcx)
.LBB12_63:                              # %if.end.i.152.prol
	cmpq	%rdx, (%rsi)
	ja	.LBB12_65
# BB#64:                                # %select.mid302
	movq	%rcx, %rsi
.LBB12_65:                              # %select.end301
	movl	$1, %edx
	movq	%rsi, %rcx
.LBB12_66:                              # %for.body.lr.ph.split
	cmpl	$1, %eax
	je	.LBB12_44
# BB#67:                                # %for.body.lr.ph.split.split
	leaq	(%rdx,%rdx,8), %rsi
	leaq	96(%rdi,%rsi,8), %rdi
	.align	16, 0x90
.LBB12_68:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB12_70
# BB#69:                                # %if.then.i.150
                                        #   in Loop: Header=BB12_68 Depth=1
	movq	%rsi, (%rcx)
.LBB12_70:                              # %if.end.i.152
                                        #   in Loop: Header=BB12_68 Depth=1
	cmpq	%rsi, -72(%rdi)
	jbe	.LBB12_72
# BB#71:                                #   in Loop: Header=BB12_68 Depth=1
	leaq	-72(%rdi), %rcx
.LBB12_72:                              # %select.end306
                                        #   in Loop: Header=BB12_68 Depth=1
	movq	-8(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB12_74
# BB#73:                                # %if.then.i.150.1
                                        #   in Loop: Header=BB12_68 Depth=1
	movq	%rsi, (%rcx)
.LBB12_74:                              # %if.end.i.152.1
                                        #   in Loop: Header=BB12_68 Depth=1
	cmpq	%rsi, (%rdi)
	movq	%rdi, %rsi
	ja	.LBB12_76
# BB#75:                                # %select.mid434
                                        #   in Loop: Header=BB12_68 Depth=1
	movq	%rcx, %rsi
.LBB12_76:                              # %select.end433
                                        #   in Loop: Header=BB12_68 Depth=1
	addq	$2, %rdx
	addq	$144, %rdi
	cmpq	%rax, %rdx
	movq	%rsi, %rcx
	jb	.LBB12_68
	jmp	.LBB12_44
.LBB12_43:
	movq	%rcx, %rsi
.LBB12_44:                              # %for.end
	movq	1144(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB12_46
# BB#45:                                # %if.then.102
	movq	%rcx, (%rsi)
.LBB12_46:                              # %if.end.104
	movl	1172(%r13), %ecx
	testl	%ecx, %ecx
	jne	.LBB12_49
# BB#47:                                # %land.lhs.true.107
	xorl	%ecx, %ecx
	cmpl	$1, %eax
	jne	.LBB12_49
# BB#48:                                # %if.then.111
	movl	$1, 1172(%r13)
	movl	$1, %ecx
.LBB12_49:                              # %if.end.114
	cmpl	%ecx, %eax
	je	.LBB12_54
# BB#50:                                # %if.then.119
	movq	9912(%r13), %rax
	testq	%rax, %rax
	je	.LBB12_54
# BB#51:                                # %dsc_error.exit161
	movq	1288(%r13), %rdi
	movl	$5, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r13, %rsi
	callq	*%rax
	movl	%eax, %ecx
	movl	$1, %eax
	cmpl	$2, %ecx
	je	.LBB12_155
# BB#52:                                # %dsc_error.exit161
	testl	%ecx, %ecx
	jne	.LBB12_54
# BB#53:                                # %sw.bb.121
	movl	1168(%r13), %eax
	movl	%eax, 1172(%r13)
.LBB12_54:                              # %if.end.126
	cmpl	$0, 1036(%r13)
	je	.LBB12_84
# BB#55:                                # %land.lhs.true.128
	cmpq	$0, 1216(%r13)
	jne	.LBB12_78
# BB#56:                                # %if.then.131
	movq	9912(%r13), %rax
	testq	%rax, %rax
	je	.LBB12_59
# BB#57:                                # %dsc_error.exit168
	movq	1288(%r13), %rdi
	movl	$6, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r13, %rsi
	callq	*%rax
	movl	%eax, %ecx
	movl	$1, %eax
	cmpl	$2, %ecx
	je	.LBB12_155
# BB#58:                                # %dsc_error.exit168
	cmpl	$1, %ecx
	jne	.LBB12_77
.LBB12_59:                              # %sw.bb.134
	movl	$0, 1036(%r13)
	movl	$1, %eax
	jmp	.LBB12_155
.LBB12_77:                              # %if.end.141
	cmpl	$0, 1036(%r13)
	je	.LBB12_84
.LBB12_78:                              # %land.lhs.true.144
	cmpl	$1, 1168(%r13)
	ja	.LBB12_80
# BB#79:                                # %lor.lhs.false.148
	cmpl	$2, 1172(%r13)
	jb	.LBB12_84
.LBB12_80:                              # %if.then.152
	movq	9912(%r13), %rax
	testq	%rax, %rax
	je	.LBB12_83
# BB#81:                                # %dsc_error.exit175
	movq	1288(%r13), %rdi
	movl	$7, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r13, %rsi
	callq	*%rax
	movl	%eax, %ecx
	movl	$1, %eax
	cmpl	$2, %ecx
	je	.LBB12_155
# BB#82:                                # %dsc_error.exit175
	cmpl	$1, %ecx
	jne	.LBB12_84
.LBB12_83:                              # %sw.bb.155
	movl	$0, 1036(%r13)
.LBB12_84:                              # %if.end.162
	movabsq	$8388362703419043651, %rax # imm = 0x7469736F706D6F43
	movq	%rax, 72(%rsp)
	movw	$101, 80(%rsp)
	movq	9936(%r13), %rbp
	testq	%rbp, %rbp
	je	.LBB12_140
# BB#85:                                # %if.then.i.141
	movl	1168(%r13), %eax
	testl	%eax, %eax
	jne	.LBB12_86
# BB#88:                                # %if.end.10.i
	leaq	72(%rsp), %rdx
	movl	$1, %esi
	movq	%r13, %rdi
	callq	dsc_add_page
	testl	%eax, %eax
	jne	.LBB12_140
	jmp	.LBB12_89
.LBB12_86:                              # %if.then.i.141
	cmpl	$1, %eax
	jne	.LBB12_89
# BB#87:                                # %if.then.5.i
	leaq	72(%rsp), %r14
	movq	%r14, %rdi
	callq	strlen
	leal	1(%rax), %edx
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	dsc_alloc_string
	movq	1160(%r13), %rcx
	movq	%rax, 8(%rcx)
.LBB12_89:                              # %if.end.14.i
	movl	1168(%r13), %r12d
	leal	-1(%r12), %eax
	cltq
	movq	1160(%r13), %rdx
	leaq	(%rax,%rax,8), %rsi
	leaq	16(%rdx,%rsi,8), %rax
	movq	16(%rdx,%rsi,8), %rcx
	cmpq	24(%rdx,%rsi,8), %rcx
	jne	.LBB12_91
# BB#90:                                # %if.then.24.i
	movl	$999999999, %ecx        # imm = 0x3B9AC9FF
	movd	%rcx, %xmm0
	movups	%xmm0, (%rax)
.LBB12_91:                              # %if.end.25.i
	leaq	24(%rdx,%rsi,8), %rdx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	1064(%r13), %rdx
	cmpq	1072(%r13), %rdx
	je	.LBB12_93
# BB#92:                                # %if.then.28.i
	cmpq	%rcx, %rdx
	cmovbq	%rdx, %rcx
	movq	%rcx, (%rax)
	movq	$0, 1064(%r13)
	movq	1072(%r13), %rcx
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	(%rsi), %rdx
	cmpq	%rdx, %rcx
	cmovaq	%rcx, %rdx
	movq	%rdx, (%rsi)
	movq	$0, 1072(%r13)
.LBB12_93:                              # %if.end.43.i
	movq	1080(%r13), %rcx
	cmpq	1088(%r13), %rcx
	je	.LBB12_95
# BB#94:                                # %if.then.46.i
	movq	(%rax), %rdx
	cmpq	%rdx, %rcx
	cmovbq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	$0, 1080(%r13)
	movq	1088(%r13), %rcx
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	(%rsi), %rdx
	cmpq	%rdx, %rcx
	cmovaq	%rcx, %rdx
	movq	%rdx, (%rsi)
	movq	$0, 1088(%r13)
.LBB12_95:                              # %if.end.65.i
	movq	1096(%r13), %rcx
	cmpq	1104(%r13), %rcx
	je	.LBB12_97
# BB#96:                                # %if.then.68.i
	movq	(%rax), %rdx
	cmpq	%rdx, %rcx
	cmovbq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	$0, 1096(%r13)
	movq	1104(%r13), %rcx
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	(%rsi), %rdx
	cmpq	%rdx, %rcx
	cmovaq	%rcx, %rdx
	movq	%rdx, (%rsi)
	movq	$0, 1104(%r13)
.LBB12_97:                              # %if.end.87.i
	movq	1112(%r13), %rcx
	cmpq	1120(%r13), %rcx
	je	.LBB12_99
# BB#98:                                # %if.then.90.i
	movq	(%rax), %rdx
	cmpq	%rdx, %rcx
	cmovbq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	$0, 1112(%r13)
	movq	1120(%r13), %rcx
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	(%rsi), %rdx
	cmpq	%rdx, %rcx
	cmovaq	%rcx, %rdx
	movq	%rdx, (%rsi)
	movq	$0, 1120(%r13)
.LBB12_99:                              # %if.end.109.i
	movq	1128(%r13), %rcx
	cmpq	1136(%r13), %rcx
	je	.LBB12_101
# BB#100:                               # %if.then.112.i
	movq	(%rax), %rdx
	cmpq	%rdx, %rcx
	cmovbq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	$0, 1128(%r13)
	movq	1136(%r13), %rcx
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	(%rsi), %rdx
	cmpq	%rdx, %rcx
	cmovaq	%rcx, %rdx
	movq	%rdx, (%rsi)
	movq	$0, 1136(%r13)
.LBB12_101:                             # %if.end.131.i
	movq	1144(%r13), %rcx
	cmpq	1152(%r13), %rcx
	je	.LBB12_103
# BB#102:                               # %if.then.134.i
	movq	(%rax), %rdx
	cmpq	%rdx, %rcx
	cmovbq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	$0, 1144(%r13)
	movq	1152(%r13), %rcx
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	(%rsi), %rdx
	cmpq	%rdx, %rcx
	cmovaq	%rcx, %rdx
	movq	%rdx, (%rsi)
	movq	$0, 1152(%r13)
.LBB12_103:                             # %if.end.153.i
	xorl	%ebx, %ebx
	cmpq	$999999999, (%rax)      # imm = 0x3B9AC9FF
	jne	.LBB12_105
# BB#104:                               # %if.then.156.i
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	xorl	%ebx, %ebx
	jmp	.LBB12_105
	.align	16, 0x90
.LBB12_134:                             # %if.end.235.while.body_crit_edge.i
                                        #   in Loop: Header=BB12_105 Depth=1
	movl	1168(%r13), %r12d
.LBB12_105:                             # %while.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_115 Depth 2
                                        #     Child Loop BB12_122 Depth 2
                                        #     Child Loop BB12_126 Depth 2
	cmpq	$0, 32(%rbp)
	je	.LBB12_111
# BB#106:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB12_105 Depth=1
	movq	(%rbp), %rdx
	testq	%rdx, %rdx
	je	.LBB12_111
# BB#107:                               # %if.then.164.i
                                        #   in Loop: Header=BB12_105 Depth=1
	leal	1(%r12), %esi
	movq	%r13, %rdi
	callq	dsc_add_page
	testl	%eax, %eax
	jne	.LBB12_140
# BB#108:                               # %if.end.170.i
                                        #   in Loop: Header=BB12_105 Depth=1
	movslq	%r12d, %rax
	movq	1160(%r13), %rcx
	leaq	(%rax,%rax,8), %rax
	movups	32(%rbp), %xmm0
	movups	%xmm0, 16(%rcx,%rax,8)
	testq	%rbx, %rbx
	movd	%xmm0, %rax
	je	.LBB12_109
# BB#110:                               # %if.then.183.i
                                        #   in Loop: Header=BB12_105 Depth=1
	cmpq	%rax, %rbx
	cmovaeq	%rax, %rbx
	jmp	.LBB12_133
	.align	16, 0x90
.LBB12_111:                             # %if.else.195.i
                                        #   in Loop: Header=BB12_105 Depth=1
	movq	16(%rbp), %r14
	testq	%r14, %r14
	je	.LBB12_133
# BB#112:                               # %land.lhs.true.198.i
                                        #   in Loop: Header=BB12_105 Depth=1
	movq	8(%rbp), %r15
	testq	%r15, %r15
	je	.LBB12_133
# BB#113:                               # %land.lhs.true.201.i
                                        #   in Loop: Header=BB12_105 Depth=1
	movq	(%rbp), %rax
	testq	%rax, %rax
	je	.LBB12_133
# BB#114:                               # %land.lhs.true.205.i
                                        #   in Loop: Header=BB12_105 Depth=1
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movzbl	(%r14), %ebx
	callq	__ctype_toupper_loc
	movq	(%rax), %rax
	movl	(%rax,%rbx,4), %edx
	movl	304(%rax), %esi
	movl	$1, %ecx
	jmp	.LBB12_115
	.align	16, 0x90
.LBB12_117:                             # %if.end.i.i
                                        #   in Loop: Header=BB12_115 Depth=2
	movzbl	(%r14,%rcx), %ebx
	movl	(%rax,%rbx,4), %edx
	movzbl	.L.str.19(%rcx), %esi
	movl	(%rax,%rsi,4), %esi
	incq	%rcx
.LBB12_115:                             # %land.lhs.true.205.i
                                        #   Parent Loop BB12_105 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%esi, %edx
	jne	.LBB12_118
# BB#116:                               # %while.body.i.i
                                        #   in Loop: Header=BB12_115 Depth=2
	testb	%bl, %bl
	jne	.LBB12_117
	jmp	.LBB12_120
.LBB12_109:                             #   in Loop: Header=BB12_105 Depth=1
	movq	%rax, %rbx
	jmp	.LBB12_133
.LBB12_118:                             # %dsc_stricmp.exit.i
                                        #   in Loop: Header=BB12_105 Depth=1
	cmpl	%esi, %edx
	jne	.LBB12_119
.LBB12_120:                             # %land.lhs.true.210.i
                                        #   in Loop: Header=BB12_105 Depth=1
	movzbl	(%r15), %r9d
	movl	(%rax,%r9,4), %r8d
	movl	276(%rax), %ebx
	movl	$1, %edi
	cmpl	%ebx, %r8d
	movl	%ebx, %esi
	movl	%r8d, %edx
	jne	.LBB12_124
# BB#121:                               #   in Loop: Header=BB12_105 Depth=1
	movb	%r9b, %cl
	.align	16, 0x90
.LBB12_122:                             # %while.body.i.16.i
                                        #   Parent Loop BB12_105 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%cl, %cl
	je	.LBB12_131
# BB#123:                               # %if.end.i.24.i
                                        #   in Loop: Header=BB12_122 Depth=2
	movzbl	(%r15,%rdi), %ecx
	movl	(%rax,%rcx,4), %edx
	movzbl	.L.str.20(%rdi), %esi
	movl	(%rax,%rsi,4), %esi
	incq	%rdi
	cmpl	%esi, %edx
	je	.LBB12_122
.LBB12_124:                             # %dsc_stricmp.exit30.i
                                        #   in Loop: Header=BB12_105 Depth=1
	cmpl	%esi, %edx
	je	.LBB12_131
# BB#125:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB12_105 Depth=1
	movl	$1, %edi
	jmp	.LBB12_126
	.align	16, 0x90
.LBB12_128:                             # %if.end.i.47.i
                                        #   in Loop: Header=BB12_126 Depth=2
	movzbl	(%r15,%rdi), %r9d
	movl	(%rax,%r9,4), %r8d
	movzbl	.L.str.21(%rdi), %ecx
	movl	(%rax,%rcx,4), %ebx
	incq	%rdi
.LBB12_126:                             # %lor.lhs.false.i
                                        #   Parent Loop BB12_105 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%ebx, %r8d
	jne	.LBB12_129
# BB#127:                               # %while.body.i.39.i
                                        #   in Loop: Header=BB12_126 Depth=2
	testb	%r9b, %r9b
	jne	.LBB12_128
	jmp	.LBB12_131
.LBB12_119:                             #   in Loop: Header=BB12_105 Depth=1
	movq	24(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB12_133
.LBB12_129:                             # %dsc_stricmp.exit53.i
                                        #   in Loop: Header=BB12_105 Depth=1
	cmpl	%ebx, %r8d
	jne	.LBB12_130
.LBB12_131:                             # %if.then.219.i
                                        #   in Loop: Header=BB12_105 Depth=1
	leal	1(%r12), %esi
	movq	%r13, %rdi
	movq	8(%rsp), %rdx           # 8-byte Reload
	callq	dsc_add_page
	testl	%eax, %eax
	movq	24(%rsp), %rbx          # 8-byte Reload
	jne	.LBB12_140
# BB#132:                               # %if.end.225.i
                                        #   in Loop: Header=BB12_105 Depth=1
	movslq	%r12d, %rax
	movq	1160(%r13), %rcx
	leaq	(%rax,%rax,8), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rcx,%rax,8)
	.align	16, 0x90
.LBB12_133:                             # %if.end.235.i
                                        #   in Loop: Header=BB12_105 Depth=1
	movq	48(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB12_134
	jmp	.LBB12_135
.LBB12_130:                             #   in Loop: Header=BB12_105 Depth=1
	movq	24(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB12_133
.LBB12_135:                             # %while.end.i
	testq	%rbx, %rbx
	je	.LBB12_137
# BB#136:                               # %if.then.238.i
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rbx, (%rax)
.LBB12_137:                             # %if.end.239.i
	movq	1304(%r13), %rax
	testq	%rax, %rax
	je	.LBB12_140
# BB#138:                               # %land.lhs.true.241.i
	movq	16(%rsp), %rcx          # 8-byte Reload
	cmpq	%rax, (%rcx)
	jbe	.LBB12_140
# BB#139:                               # %if.then.245.i
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%rax, (%rcx)
.LBB12_140:                             # %dsc_dcs2_fixup.exit
	movl	1192(%r13), %eax
	testl	%eax, %eax
	je	.LBB12_149
# BB#141:                               # %dsc_dcs2_fixup.exit
	cmpl	$1, %eax
	jne	.LBB12_144
# BB#142:                               # %land.lhs.true.166
	cmpq	$0, 1208(%r13)
	jne	.LBB12_144
# BB#143:                               # %if.then.169
	movq	1200(%r13), %rax
	movq	(%rax), %rax
	movq	%rax, 1208(%r13)
.LBB12_144:                             # %land.lhs.true.176
	cmpq	$0, 1208(%r13)
	jne	.LBB12_149
# BB#145:                               # %if.then.180
	movq	9912(%r13), %rax
	testq	%rax, %rax
	je	.LBB12_149
# BB#146:                               # %dsc_error.exit
	movq	1288(%r13), %rdi
	movl	$8, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r13, %rsi
	callq	*%rax
	movl	%eax, %ecx
	movl	$1, %eax
	cmpl	$2, %ecx
	je	.LBB12_155
# BB#147:                               # %dsc_error.exit
	testl	%ecx, %ecx
	jne	.LBB12_149
# BB#148:                               # %sw.bb.183
	movq	1200(%r13), %rax
	movq	(%rax), %rax
	movq	%rax, 1208(%r13)
.LBB12_149:                             # %for.cond.193.preheader
	movl	1168(%r13), %r15d
	xorl	%eax, %eax
	testl	%r15d, %r15d
	je	.LBB12_155
# BB#150:                               # %for.body.197.lr.ph
	movq	1160(%r13), %r12
	leaq	32(%rsp), %r14
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB12_151:                             # %for.body.197
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	leaq	(%rax,%rax,8), %rbx
	movq	8(%r12,%rbx,8), %rdi
	callq	strlen
	incl	%ebp
	testq	%rax, %rax
	jne	.LBB12_154
# BB#152:                               # %if.then.204
                                        #   in Loop: Header=BB12_151 Depth=1
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebp, %edx
	callq	gs_sprintf
	movq	%r14, %rdi
	callq	strlen
	movq	%r13, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	callq	dsc_alloc_string
	movq	%rax, %rcx
	movq	1160(%r13), %r12
	movq	%rcx, 8(%r12,%rbx,8)
	movl	$-1, %eax
	testq	%rcx, %rcx
	je	.LBB12_155
# BB#153:                               # %if.then.204.for.inc.221_crit_edge
                                        #   in Loop: Header=BB12_151 Depth=1
	movl	1168(%r13), %r15d
.LBB12_154:                             # %for.inc.221
                                        #   in Loop: Header=BB12_151 Depth=1
	xorl	%eax, %eax
	cmpl	%r15d, %ebp
	jb	.LBB12_151
.LBB12_155:                             # %cleanup.224
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	dsc_fixup, .Lfunc_end12-dsc_fixup
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI12_0:
	.quad	.LBB12_7
	.quad	.LBB12_15
	.quad	.LBB12_8
	.quad	.LBB12_15
	.quad	.LBB12_9
	.quad	.LBB12_15
	.quad	.LBB12_10
	.quad	.LBB12_15
	.quad	.LBB12_11
	.quad	.LBB12_15
	.quad	.LBB12_12
	.quad	.LBB12_15
	.quad	.LBB12_14
	.quad	.LBB12_14

	.text
	.globl	dsc_debug_print
	.align	16, 0x90
	.type	dsc_debug_print,@function
dsc_debug_print:                        # @dsc_debug_print
	.cfi_startproc
# BB#0:                                 # %entry
	movq	9904(%rdi), %rax
	testq	%rax, %rax
	je	.LBB13_1
# BB#2:                                 # %if.then
	movq	1288(%rdi), %rdi
	jmpq	*%rax                   # TAILCALL
.LBB13_1:                               # %if.end
	retq
.Lfunc_end13:
	.size	dsc_debug_print, .Lfunc_end13-dsc_debug_print
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_alloc_string,@function
dsc_alloc_string:                       # @dsc_alloc_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp83:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp84:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp85:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp86:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp87:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp88:
	.cfi_def_cfa_offset 64
.Ltmp89:
	.cfi_offset %rbx, -56
.Ltmp90:
	.cfi_offset %r12, -48
.Ltmp91:
	.cfi_offset %r13, -40
.Ltmp92:
	.cfi_offset %r14, -32
.Ltmp93:
	.cfi_offset %r15, -24
.Ltmp94:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, %r12
	cmpq	$0, 9864(%r12)
	je	.LBB14_2
# BB#1:                                 # %entry.if.end.16_crit_edge
	leaq	9872(%r12), %r14
	movq	9872(%r12), %r13
	movl	(%r13), %eax
	movl	4(%r13), %ecx
	jmp	.LBB14_12
.LBB14_2:                               # %if.then
	movq	9880(%r12), %rax
	testq	%rax, %rax
	je	.LBB14_4
# BB#3:                                 # %if.then.i
	movq	9896(%r12), %rsi
	movl	$24, %edi
	callq	*%rax
	jmp	.LBB14_5
.LBB14_4:                               # %if.end.i
	movl	$24, %edi
	callq	malloc
.LBB14_5:                               # %dsc_memalloc.exit
	movq	%rax, 9864(%r12)
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB14_29
# BB#6:                                 # %if.end
	leaq	9872(%r12), %r14
	movq	%rax, 9872(%r12)
	movq	$0, 16(%rax)
	movq	9880(%r12), %rax
	testq	%rax, %rax
	je	.LBB14_8
# BB#7:                                 # %if.then.i.48
	movq	9896(%r12), %rsi
	movl	$4096, %edi             # imm = 0x1000
	callq	*%rax
	jmp	.LBB14_9
.LBB14_8:                               # %if.end.i.50
	movl	$4096, %edi             # imm = 0x1000
	callq	malloc
.LBB14_9:                               # %dsc_memalloc.exit52
	movq	(%r14), %r13
	movq	%rax, 8(%r13)
	testq	%rax, %rax
	je	.LBB14_10
# BB#11:                                # %if.end.13
	movabsq	$17592186044416, %rax   # imm = 0x100000000000
	movq	%rax, (%r13)
	xorl	%eax, %eax
	movl	$4096, %ecx             # imm = 0x1000
.LBB14_12:                              # %if.end.16
	leal	1(%r15,%rax), %edx
	cmpl	%ecx, %edx
	jbe	.LBB14_27
# BB#13:                                # %if.then.23
	movq	9880(%r12), %rax
	testq	%rax, %rax
	je	.LBB14_15
# BB#14:                                # %if.then.i.57
	movq	9896(%r12), %rsi
	movl	$24, %edi
	callq	*%rax
	jmp	.LBB14_16
.LBB14_15:                              # %if.end.i.59
	movl	$24, %edi
	callq	malloc
.LBB14_16:                              # %dsc_memalloc.exit61
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB14_17
# BB#19:                                # %if.end.27
	movq	$0, 16(%r13)
	movq	$0, (%r13)
	movq	9880(%r12), %rax
	testq	%rax, %rax
	je	.LBB14_21
# BB#20:                                # %if.then.i.69
	movq	9896(%r12), %rsi
	movl	$4096, %edi             # imm = 0x1000
	callq	*%rax
	jmp	.LBB14_22
.LBB14_21:                              # %if.end.i.71
	movl	$4096, %edi             # imm = 0x1000
	callq	malloc
.LBB14_22:                              # %dsc_memalloc.exit73
	movq	%rax, 8(%r13)
	testq	%rax, %rax
	je	.LBB14_23
# BB#26:                                # %if.end.36
	movl	$4096, 4(%r13)          # imm = 0x1000
	movq	(%r14), %rax
	movq	%r13, 16(%rax)
	movq	%r13, (%r14)
	movl	(%r13), %eax
	movl	4(%r13), %ecx
.LBB14_27:                              # %if.end.41
	leal	1(%r15), %ebp
	leal	(%rbp,%rax), %edx
	xorl	%ebx, %ebx
	cmpl	%ecx, %edx
	ja	.LBB14_29
# BB#28:                                # %if.end.50
	movl	%eax, %ebx
	addq	8(%r13), %rbx
	movslq	%r15d, %r15
	movq	%rbx, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	%r15, %rdx
	callq	memcpy
	movb	$0, (%r15,%rbx)
	movq	(%r14), %rax
	addl	%ebp, (%rax)
	jmp	.LBB14_29
.LBB14_23:                              # %if.then.35
	movq	9888(%r12), %rax
	testq	%rax, %rax
	je	.LBB14_25
# BB#24:                                # %if.then.i.76
	movq	9896(%r12), %rsi
	movq	%r13, %rdi
	callq	*%rax
	jmp	.LBB14_17
.LBB14_10:                              # %if.then.12
	movq	%r12, %rdi
	callq	dsc_reset
	xorl	%ebx, %ebx
	jmp	.LBB14_29
.LBB14_25:                              # %if.else.i
	movq	%r13, %rdi
	callq	free
.LBB14_17:                              # %if.then.26
	movq	9904(%r12), %rax
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB14_29
# BB#18:                                # %if.then.i.63
	movq	1288(%r12), %rdi
	movl	$.L.str.136, %esi
	callq	*%rax
	xorl	%ebx, %ebx
.LBB14_29:                              # %cleanup.62
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	dsc_alloc_string, .Lfunc_end14-dsc_alloc_string
	.cfi_endproc

	.globl	dsc_set_error_function
	.align	16, 0x90
	.type	dsc_set_error_function,@function
dsc_set_error_function:                 # @dsc_set_error_function
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 9912(%rdi)
	retq
.Lfunc_end15:
	.size	dsc_set_error_function, .Lfunc_end15-dsc_set_error_function
	.cfi_endproc

	.globl	dsc_set_debug_function
	.align	16, 0x90
	.type	dsc_set_debug_function,@function
dsc_set_debug_function:                 # @dsc_set_debug_function
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 9904(%rdi)
	retq
.Lfunc_end16:
	.size	dsc_set_debug_function, .Lfunc_end16-dsc_set_debug_function
	.cfi_endproc

	.globl	dsc_add_page
	.align	16, 0x90
	.type	dsc_add_page,@function
dsc_add_page:                           # @dsc_add_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp95:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp96:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp97:
	.cfi_def_cfa_offset 32
.Ltmp98:
	.cfi_offset %rbx, -24
.Ltmp99:
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movl	1168(%rbx), %eax
	movq	1160(%rbx), %rcx
	leaq	(%rax,%rax,8), %rax
	movl	%esi, (%rcx,%rax,8)
	movq	%r14, %rdi
	callq	strlen
	leal	1(%rax), %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	dsc_alloc_string
	movl	1168(%rbx), %ecx
	movq	1160(%rbx), %rdx
	leaq	(%rcx,%rcx,8), %rsi
	movq	%rax, 8(%rdx,%rsi,8)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rdx,%rsi,8)
	movl	$0, 32(%rdx,%rsi,8)
	movq	$0, 40(%rdx,%rsi,8)
	movq	$0, 48(%rdx,%rsi,8)
	movq	$0, 56(%rdx,%rsi,8)
	movq	$0, 64(%rdx,%rsi,8)
	leal	1(%rcx), %edx
	movl	%edx, 1168(%rbx)
	xorl	%eax, %eax
	cmpl	1312(%rbx), %edx
	jb	.LBB17_9
# BB#1:                                 # %if.then
	leal	129(%rcx), %eax
	shlq	$3, %rax
	leaq	(%rax,%rax,8), %rdi
	movq	9880(%rbx), %rax
	testq	%rax, %rax
	je	.LBB17_3
# BB#2:                                 # %if.then.i
	movq	9896(%rbx), %rsi
	callq	*%rax
	jmp	.LBB17_4
.LBB17_3:                               # %if.end.i
	callq	malloc
.LBB17_4:                               # %dsc_memalloc.exit
	movq	%rax, %r14
	movl	$-1, %eax
	testq	%r14, %r14
	je	.LBB17_9
# BB#5:                                 # %if.end
	movq	1160(%rbx), %rsi
	movl	1168(%rbx), %eax
	shlq	$3, %rax
	leaq	(%rax,%rax,8), %rdx
	movq	%r14, %rdi
	callq	memcpy
	movq	1160(%rbx), %rdi
	movq	9888(%rbx), %rax
	testq	%rax, %rax
	je	.LBB17_7
# BB#6:                                 # %if.then.i.37
	movq	9896(%rbx), %rsi
	callq	*%rax
	jmp	.LBB17_8
.LBB17_7:                               # %if.else.i
	callq	free
.LBB17_8:                               # %dsc_memfree.exit
	movq	%r14, 1160(%rbx)
	movl	$128, %eax
	addl	1168(%rbx), %eax
	movl	%eax, 1312(%rbx)
	xorl	%eax, %eax
.LBB17_9:                               # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end17:
	.size	dsc_add_page, .Lfunc_end17-dsc_add_page
	.cfi_endproc

	.globl	dsc_add_media
	.align	16, 0x90
	.type	dsc_add_media,@function
dsc_add_media:                          # @dsc_add_media
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
	pushq	%r12
.Ltmp103:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp104:
	.cfi_def_cfa_offset 48
.Ltmp105:
	.cfi_offset %rbx, -48
.Ltmp106:
	.cfi_offset %r12, -40
.Ltmp107:
	.cfi_offset %r14, -32
.Ltmp108:
	.cfi_offset %r15, -24
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %rbp
	movl	1192(%rbp), %edi
	incl	%edi
	shlq	$3, %rdi
	movq	9880(%rbp), %rax
	testq	%rax, %rax
	je	.LBB18_2
# BB#1:                                 # %if.then.i
	movq	9896(%rbp), %rsi
	callq	*%rax
	jmp	.LBB18_3
.LBB18_2:                               # %if.end.i
	callq	malloc
.LBB18_3:                               # %dsc_memalloc.exit
	movq	%rax, %rbx
	movl	$-1, %r14d
	testq	%rbx, %rbx
	je	.LBB18_25
# BB#4:                                 # %if.end
	movq	1200(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB18_8
# BB#5:                                 # %if.then.5
	movl	1192(%rbp), %edx
	shlq	$3, %rdx
	movq	%rbx, %rdi
	callq	memcpy
	movq	1200(%rbp), %rdi
	movq	9888(%rbp), %rax
	testq	%rax, %rax
	je	.LBB18_7
# BB#6:                                 # %if.then.i.55
	movq	9896(%rbp), %rsi
	callq	*%rax
	jmp	.LBB18_8
.LBB18_7:                               # %if.else.i
	callq	free
.LBB18_8:                               # %if.end.12
	movq	%rbx, 1200(%rbp)
	movq	9880(%rbp), %rax
	testq	%rax, %rax
	je	.LBB18_10
# BB#9:                                 # %if.then.i.61
	movq	9896(%rbp), %rsi
	movl	$48, %edi
	callq	*%rax
	jmp	.LBB18_11
.LBB18_10:                              # %if.end.i.63
	movl	$48, %edi
	callq	malloc
.LBB18_11:                              # %dsc_memalloc.exit65
	movq	%rax, %rbx
	movl	1192(%rbp), %eax
	movq	1200(%rbp), %rcx
	movq	%rbx, (%rcx,%rax,8)
	testq	%rbx, %rbx
	je	.LBB18_25
# BB#12:                                # %if.end.20
	movq	$0, (%rbx)
	movl	$1142210560, 8(%rbx)    # imm = 0x4414C000
	movl	$1146257408, 12(%rbx)   # imm = 0x44528000
	movl	$1117782016, 16(%rbx)   # imm = 0x42A00000
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rbx)
	movq	$0, 40(%rbx)
	incl	%eax
	movl	%eax, 1192(%rbp)
	movq	(%r15), %r12
	testq	%r12, %r12
	je	.LBB18_14
# BB#13:                                # %if.then.23
	movq	%r12, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	callq	dsc_alloc_string
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.LBB18_25
.LBB18_14:                              # %if.end.35
	movl	8(%r15), %eax
	movl	%eax, 8(%rbx)
	movl	12(%r15), %eax
	movl	%eax, 12(%rbx)
	movl	16(%r15), %eax
	movl	%eax, 16(%rbx)
	movq	24(%r15), %r12
	testq	%r12, %r12
	je	.LBB18_16
# BB#15:                                # %if.then.44
	movq	%r12, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	callq	dsc_alloc_string
	movq	%rax, 24(%rbx)
	testq	%rax, %rax
	je	.LBB18_25
.LBB18_16:                              # %if.end.56
	movq	32(%r15), %r12
	testq	%r12, %r12
	je	.LBB18_18
# BB#17:                                # %if.then.59
	movq	%r12, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	callq	dsc_alloc_string
	movq	%rax, 32(%rbx)
	testq	%rax, %rax
	je	.LBB18_25
.LBB18_18:                              # %if.end.71
	movq	$0, 40(%rbx)
	cmpq	$0, 40(%r15)
	je	.LBB18_24
# BB#19:                                # %if.then.75
	movq	9880(%rbp), %rax
	testq	%rax, %rax
	je	.LBB18_21
# BB#20:                                # %if.then.i.70
	movq	9896(%rbp), %rsi
	movl	$16, %edi
	callq	*%rax
	jmp	.LBB18_22
.LBB18_21:                              # %if.end.i.72
	movl	$16, %edi
	callq	malloc
.LBB18_22:                              # %dsc_memalloc.exit74
	movq	%rax, 40(%rbx)
	testq	%rax, %rax
	je	.LBB18_25
# BB#23:                                # %if.end.82
	movq	40(%r15), %rcx
	movups	(%rcx), %xmm0
	movups	%xmm0, (%rax)
.LBB18_24:                              # %cleanup
	xorl	%r14d, %r14d
.LBB18_25:                              # %cleanup
	movl	%r14d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	dsc_add_media, .Lfunc_end18-dsc_add_media
	.cfi_endproc

	.globl	dsc_set_page_bbox
	.align	16, 0x90
	.type	dsc_set_page_bbox,@function
dsc_set_page_bbox:                      # @dsc_set_page_bbox
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp111:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp112:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp113:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp114:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp115:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp116:
	.cfi_def_cfa_offset 64
.Ltmp117:
	.cfi_offset %rbx, -56
.Ltmp118:
	.cfi_offset %r12, -48
.Ltmp119:
	.cfi_offset %r13, -40
.Ltmp120:
	.cfi_offset %r14, -32
.Ltmp121:
	.cfi_offset %r15, -24
.Ltmp122:
	.cfi_offset %rbp, -16
	movl	%r8d, %r15d
	movl	%ecx, %r12d
	movl	%edx, %r13d
	movq	%rdi, %rbx
	movl	$-1, %ebp
	cmpl	%esi, 1168(%rbx)
	jbe	.LBB19_7
# BB#1:                                 # %if.end
	movl	%esi, %eax
	movq	1160(%rbx), %rcx
	leaq	(%rax,%rax,8), %r14
	movq	48(%rcx,%r14,8), %rax
	testq	%rax, %rax
	jne	.LBB19_6
# BB#2:                                 # %if.then.3
	movl	%r9d, 4(%rsp)           # 4-byte Spill
	movq	9880(%rbx), %rax
	testq	%rax, %rax
	je	.LBB19_4
# BB#3:                                 # %if.then.i
	movq	9896(%rbx), %rsi
	movl	$16, %edi
	callq	*%rax
	jmp	.LBB19_5
.LBB19_4:                               # %if.end.i
	movl	$16, %edi
	callq	malloc
.LBB19_5:                               # %if.end.8
	movq	1160(%rbx), %rcx
	movq	%rax, 48(%rcx,%r14,8)
	testq	%rax, %rax
	movl	4(%rsp), %r9d           # 4-byte Reload
	je	.LBB19_7
.LBB19_6:                               # %if.end.11
	movl	%r13d, (%rax)
	movl	%r12d, 4(%rax)
	movl	%r15d, 8(%rax)
	movl	%r9d, 12(%rax)
	xorl	%ebp, %ebp
.LBB19_7:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	dsc_set_page_bbox, .Lfunc_end19-dsc_set_page_bbox
	.cfi_endproc

	.globl	dsc_stricmp
	.align	16, 0x90
	.type	dsc_stricmp,@function
dsc_stricmp:                            # @dsc_stricmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp123:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp124:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp125:
	.cfi_def_cfa_offset 32
.Ltmp126:
	.cfi_offset %rbx, -32
.Ltmp127:
	.cfi_offset %r14, -24
.Ltmp128:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movzbl	(%rbx), %r15d
	callq	__ctype_toupper_loc
	movq	(%rax), %rcx
	movl	(%rcx,%r15,4), %eax
	movzbl	(%r14), %edx
	movl	(%rcx,%rdx,4), %edx
	cmpl	%edx, %eax
	jne	.LBB20_4
# BB#1:                                 # %while.body.preheader
	incq	%rbx
	incq	%r14
	.align	16, 0x90
.LBB20_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	testb	%r15b, %r15b
	je	.LBB20_5
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB20_2 Depth=1
	movzbl	(%rbx), %r15d
	movl	(%rcx,%r15,4), %eax
	movzbl	(%r14), %edx
	movl	(%rcx,%rdx,4), %edx
	incq	%rbx
	incq	%r14
	cmpl	%edx, %eax
	je	.LBB20_2
.LBB20_4:                               # %while.end
	subl	%edx, %eax
.LBB20_5:                               # %return
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end20:
	.size	dsc_stricmp, .Lfunc_end20-dsc_stricmp
	.cfi_endproc

	.globl	dsc_find_platefile
	.align	16, 0x90
	.type	dsc_find_platefile,@function
dsc_find_platefile:                     # @dsc_find_platefile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp130:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp131:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp132:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp133:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp134:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp135:
	.cfi_def_cfa_offset 64
.Ltmp136:
	.cfi_offset %rbx, -56
.Ltmp137:
	.cfi_offset %r12, -48
.Ltmp138:
	.cfi_offset %r13, -40
.Ltmp139:
	.cfi_offset %r14, -32
.Ltmp140:
	.cfi_offset %r15, -24
.Ltmp141:
	.cfi_offset %rbp, -16
	movl	%esi, 4(%rsp)           # 4-byte Spill
	movq	9936(%rdi), %rbp
	xorl	%r15d, %r15d
	testq	%rbp, %rbp
	je	.LBB21_22
# BB#1:
	movl	$1, %r12d
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB21_2:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_7 Depth 2
                                        #     Child Loop BB21_11 Depth 2
                                        #     Child Loop BB21_15 Depth 2
	movq	32(%rbp), %rax
	cmpq	40(%rbp), %rax
	jne	.LBB21_22
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB21_2 Depth=1
	movq	16(%rbp), %rbx
	testq	%rbx, %rbx
	je	.LBB21_21
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB21_2 Depth=1
	movq	8(%rbp), %r13
	testq	%r13, %r13
	je	.LBB21_21
# BB#5:                                 # %land.lhs.true.3
                                        #   in Loop: Header=BB21_2 Depth=1
	cmpq	$0, (%rbp)
	je	.LBB21_21
# BB#6:                                 # %land.lhs.true.5
                                        #   in Loop: Header=BB21_2 Depth=1
	movzbl	(%rbx), %r14d
	callq	__ctype_toupper_loc
	movq	(%rax), %rax
	movl	(%rax,%r14,4), %edx
	movl	304(%rax), %esi
	cmpl	%esi, %edx
	movl	$1, %ecx
	jne	.LBB21_9
	.align	16, 0x90
.LBB21_7:                               # %while.body.i
                                        #   Parent Loop BB21_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r14b, %r14b
	je	.LBB21_10
# BB#8:                                 # %if.end.i
                                        #   in Loop: Header=BB21_7 Depth=2
	movzbl	(%rbx,%rcx), %r14d
	movl	(%rax,%r14,4), %edx
	movzbl	.L.str.19(%rcx), %esi
	movl	(%rax,%rsi,4), %esi
	incq	%rcx
	cmpl	%esi, %edx
	je	.LBB21_7
.LBB21_9:                               # %dsc_stricmp.exit
                                        #   in Loop: Header=BB21_2 Depth=1
	cmpl	%esi, %edx
	jne	.LBB21_21
.LBB21_10:                              # %land.lhs.true.8
                                        #   in Loop: Header=BB21_2 Depth=1
	movzbl	(%r13), %ebx
	movl	(%rax,%rbx,4), %r8d
	movl	276(%rax), %r9d
	cmpl	%r9d, %r8d
	movl	$1, %edi
	movb	%bl, %cl
	movl	%r9d, %esi
	movl	%r8d, %edx
	jne	.LBB21_13
	.align	16, 0x90
.LBB21_11:                              # %while.body.i.22
                                        #   Parent Loop BB21_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%cl, %cl
	je	.LBB21_18
# BB#12:                                # %if.end.i.30
                                        #   in Loop: Header=BB21_11 Depth=2
	movzbl	(%r13,%rdi), %ecx
	movl	(%rax,%rcx,4), %edx
	movzbl	.L.str.20(%rdi), %esi
	movl	(%rax,%rsi,4), %esi
	incq	%rdi
	cmpl	%esi, %edx
	je	.LBB21_11
.LBB21_13:                              # %dsc_stricmp.exit36
                                        #   in Loop: Header=BB21_2 Depth=1
	cmpl	%esi, %edx
	je	.LBB21_18
# BB#14:                                # %lor.lhs.false
                                        #   in Loop: Header=BB21_2 Depth=1
	cmpl	%r9d, %r8d
	movl	$1, %edi
	jne	.LBB21_17
	.align	16, 0x90
.LBB21_15:                              # %while.body.i.45
                                        #   Parent Loop BB21_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%bl, %bl
	je	.LBB21_18
# BB#16:                                # %if.end.i.53
                                        #   in Loop: Header=BB21_15 Depth=2
	movzbl	(%r13,%rdi), %ebx
	movl	(%rax,%rbx,4), %r8d
	movzbl	.L.str.21(%rdi), %ecx
	movl	(%rax,%rcx,4), %r9d
	incq	%rdi
	cmpl	%r9d, %r8d
	je	.LBB21_15
.LBB21_17:                              # %dsc_stricmp.exit59
                                        #   in Loop: Header=BB21_2 Depth=1
	cmpl	%r9d, %r8d
	jne	.LBB21_21
.LBB21_18:                              # %if.then.15
                                        #   in Loop: Header=BB21_2 Depth=1
	cmpl	4(%rsp), %r12d          # 4-byte Folded Reload
	je	.LBB21_19
# BB#20:                                # %if.end.18
                                        #   in Loop: Header=BB21_2 Depth=1
	incl	%r12d
	.align	16, 0x90
.LBB21_21:                              # %if.end.19
                                        #   in Loop: Header=BB21_2 Depth=1
	movq	48(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB21_2
	jmp	.LBB21_22
.LBB21_19:                              # %if.then.17
	movq	24(%rbp), %r15
.LBB21_22:                              # %cleanup
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	dsc_find_platefile, .Lfunc_end21-dsc_find_platefile
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_get_int,@function
dsc_get_int:                            # @dsc_get_int
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp142:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp143:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp144:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp145:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp146:
	.cfi_def_cfa_offset 48
	subq	$256, %rsp              # imm = 0x100
.Ltmp147:
	.cfi_def_cfa_offset 304
.Ltmp148:
	.cfi_offset %rbx, -48
.Ltmp149:
	.cfi_offset %r12, -40
.Ltmp150:
	.cfi_offset %r14, -32
.Ltmp151:
	.cfi_offset %r15, -24
.Ltmp152:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rdi, %r15
	movl	%esi, %eax
	cmpl	$255, %esi
	movl	$255, %r12d
	cmovbq	%rax, %r12
	movl	$255, %ebp
	cmovbl	%esi, %ebp
	xorl	%ebx, %ebx
	testl	%ebp, %ebp
	je	.LBB22_3
	.align	16, 0x90
.LBB22_1:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r15,%rbx), %eax
	cmpl	$9, %eax
	je	.LBB22_17
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB22_1 Depth=1
	movzbl	%al, %eax
	cmpl	$32, %eax
	jne	.LBB22_3
.LBB22_17:                              # %while.body
                                        #   in Loop: Header=BB22_1 Depth=1
	incq	%rbx
	cmpq	%r12, %rbx
	jb	.LBB22_1
.LBB22_3:                               # %while.cond.14.preheader
	xorl	%ecx, %ecx
	cmpl	%ebp, %ebx
	jae	.LBB22_9
# BB#4:                                 # %while.body.17.lr.ph
	callq	__ctype_b_loc
	movl	%ebx, %edx
	leaq	(%r15,%rdx), %rsi
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB22_5:                               # %while.body.17
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%rcx), %edi
	movb	%dil, (%rsp,%rcx)
	movq	(%rax), %rbx
	testb	$8, 1(%rbx,%rdi,2)
	jne	.LBB22_18
# BB#6:                                 # %switch.early.test
                                        #   in Loop: Header=BB22_5 Depth=1
	movzbl	%dil, %edi
	cmpl	$43, %edi
	je	.LBB22_18
# BB#7:                                 # %switch.early.test
                                        #   in Loop: Header=BB22_5 Depth=1
	cmpl	$45, %edi
	jne	.LBB22_8
.LBB22_18:                              # %if.end
                                        #   in Loop: Header=BB22_5 Depth=1
	leaq	1(%rdx,%rcx), %rbx
	incq	%rcx
	cmpq	%r12, %rbx
	jb	.LBB22_5
	jmp	.LBB22_9
.LBB22_8:                               # %switch.early.test.while.cond.36.preheader_crit_edge
	addq	%rcx, %rdx
	movl	%edx, %ebx
.LBB22_9:                               # %while.cond.36.preheader
	cmpl	%ebp, %ebx
	jae	.LBB22_14
# BB#10:                                # %land.rhs.39.lr.ph
	movl	%ebx, %ebx
	.align	16, 0x90
.LBB22_11:                              # %land.rhs.39
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r15,%rbx), %eax
	cmpl	$32, %eax
	je	.LBB22_13
# BB#12:                                # %land.rhs.39
                                        #   in Loop: Header=BB22_11 Depth=1
	movzbl	%al, %eax
	cmpl	$9, %eax
	jne	.LBB22_14
.LBB22_13:                              # %while.body.53
                                        #   in Loop: Header=BB22_11 Depth=1
	incq	%rbx
	cmpq	%r12, %rbx
	jb	.LBB22_11
.LBB22_14:                              # %while.end.55
	movslq	%ecx, %rax
	movb	$0, (%rsp,%rax)
	testq	%r14, %r14
	je	.LBB22_16
# BB#15:                                # %if.then.60
	movl	%ebx, (%r14)
.LBB22_16:                              # %if.end.61
	leaq	(%rsp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	addq	$256, %rsp              # imm = 0x100
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	dsc_get_int, .Lfunc_end22-dsc_get_int
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_is_section,@function
dsc_is_section:                         # @dsc_is_section
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp153:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp154:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp155:
	.cfi_def_cfa_offset 32
.Ltmp156:
	.cfi_offset %rbx, -24
.Ltmp157:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	xorl	%ebp, %ebp
	movzbl	(%rbx), %eax
	cmpl	$37, %eax
	jne	.LBB23_83
# BB#1:                                 # %land.lhs.true
	movzbl	1(%rbx), %eax
	cmpl	$37, %eax
	jne	.LBB23_83
# BB#2:                                 # %if.end
	movl	$.L.str.67, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$13, %rcx
	ja	.LBB23_9
# BB#3:                                 # %land.lhs.true.8
	cmpq	$3, %rcx
	ja	.LBB23_8
# BB#4:                                 # %cond.true.12
	movl	$1, %ebp
	cmpq	$2, %rcx
	jb	.LBB23_83
# BB#5:                                 # %if.then.33
	movzbl	2(%rbx), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB23_10
# BB#6:                                 # %if.then.33
	testl	%eax, %eax
	jne	.LBB23_10
# BB#7:                                 # %if.then.43
	movzbl	3(%rbx), %eax
	addl	$-101, %eax
	jmp	.LBB23_10
.LBB23_9:                               # %cond.false.53
	movl	$.L.str.67, %esi
	movl	$14, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB23_10
.LBB23_8:                               # %cond.false
	movl	$.L.str.67, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB23_10:                              # %cond.end.55
	movl	$1, %ebp
	testl	%eax, %eax
	je	.LBB23_83
# BB#11:                                # %if.end.60
	movl	$.L.str.68, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$14, %rcx
	ja	.LBB23_21
# BB#12:                                # %land.lhs.true.70
	cmpq	$3, %rcx
	ja	.LBB23_20
# BB#13:                                # %cond.true.74
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB23_22
# BB#14:                                # %cond.true.74
	testl	%eax, %eax
	jne	.LBB23_22
# BB#15:                                # %if.then.88
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB23_22
# BB#16:                                # %if.then.88
	testl	%eax, %eax
	jne	.LBB23_22
# BB#17:                                # %if.then.98
	movzbl	2(%rbx), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB23_22
# BB#18:                                # %if.then.98
	testl	%eax, %eax
	jne	.LBB23_22
# BB#19:                                # %if.then.108
	movzbl	3(%rbx), %eax
	addl	$-101, %eax
	jmp	.LBB23_22
.LBB23_21:                              # %cond.false.121
	movl	$.L.str.68, %esi
	movl	$15, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB23_22
.LBB23_20:                              # %cond.false.117
	movl	$.L.str.68, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB23_22:                              # %cond.end.123
	testl	%eax, %eax
	je	.LBB23_83
# BB#23:                                # %if.end.128
	movl	$.L.str.69, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$12, %rcx
	ja	.LBB23_33
# BB#24:                                # %land.lhs.true.138
	cmpq	$3, %rcx
	ja	.LBB23_32
# BB#25:                                # %cond.true.142
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB23_34
# BB#26:                                # %cond.true.142
	testl	%eax, %eax
	jne	.LBB23_34
# BB#27:                                # %if.then.156
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB23_34
# BB#28:                                # %if.then.156
	testl	%eax, %eax
	jne	.LBB23_34
# BB#29:                                # %if.then.166
	movzbl	2(%rbx), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB23_34
# BB#30:                                # %if.then.166
	testl	%eax, %eax
	jne	.LBB23_34
# BB#31:                                # %if.then.176
	movzbl	3(%rbx), %eax
	addl	$-101, %eax
	jmp	.LBB23_34
.LBB23_33:                              # %cond.false.189
	movl	$.L.str.69, %esi
	movl	$13, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB23_34
.LBB23_32:                              # %cond.false.185
	movl	$.L.str.69, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB23_34:                              # %cond.end.191
	testl	%eax, %eax
	je	.LBB23_83
# BB#35:                                # %if.end.196
	movl	$.L.str.70, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$11, %rcx
	ja	.LBB23_45
# BB#36:                                # %land.lhs.true.206
	cmpq	$3, %rcx
	ja	.LBB23_44
# BB#37:                                # %cond.true.210
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB23_46
# BB#38:                                # %cond.true.210
	testl	%eax, %eax
	jne	.LBB23_46
# BB#39:                                # %if.then.224
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB23_46
# BB#40:                                # %if.then.224
	testl	%eax, %eax
	jne	.LBB23_46
# BB#41:                                # %if.then.234
	movzbl	2(%rbx), %eax
	addl	$-66, %eax
	cmpq	$3, %rcx
	jb	.LBB23_46
# BB#42:                                # %if.then.234
	testl	%eax, %eax
	jne	.LBB23_46
# BB#43:                                # %if.then.244
	movzbl	3(%rbx), %eax
	addl	$-101, %eax
	jmp	.LBB23_46
.LBB23_45:                              # %cond.false.257
	movl	$.L.str.70, %esi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB23_46
.LBB23_44:                              # %cond.false.253
	movl	$.L.str.70, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB23_46:                              # %cond.end.259
	testl	%eax, %eax
	je	.LBB23_83
# BB#47:                                # %if.end.264
	movl	$.L.str.71, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$6, %rcx
	ja	.LBB23_57
# BB#48:                                # %land.lhs.true.274
	cmpq	$3, %rcx
	ja	.LBB23_56
# BB#49:                                # %cond.true.278
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB23_58
# BB#50:                                # %cond.true.278
	testl	%eax, %eax
	jne	.LBB23_58
# BB#51:                                # %if.then.292
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB23_58
# BB#52:                                # %if.then.292
	testl	%eax, %eax
	jne	.LBB23_58
# BB#53:                                # %if.then.302
	movzbl	2(%rbx), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB23_58
# BB#54:                                # %if.then.302
	testl	%eax, %eax
	jne	.LBB23_58
# BB#55:                                # %if.then.312
	movzbl	3(%rbx), %eax
	addl	$-97, %eax
	jmp	.LBB23_58
.LBB23_57:                              # %cond.false.325
	movl	$.L.str.71, %esi
	movl	$7, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB23_58
.LBB23_56:                              # %cond.false.321
	movl	$.L.str.71, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB23_58:                              # %cond.end.327
	testl	%eax, %eax
	je	.LBB23_83
# BB#59:                                # %if.end.332
	movl	$.L.str.72, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$8, %rcx
	ja	.LBB23_69
# BB#60:                                # %land.lhs.true.342
	cmpq	$3, %rcx
	ja	.LBB23_68
# BB#61:                                # %cond.true.346
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB23_70
# BB#62:                                # %cond.true.346
	testl	%eax, %eax
	jne	.LBB23_70
# BB#63:                                # %if.then.360
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB23_70
# BB#64:                                # %if.then.360
	testl	%eax, %eax
	jne	.LBB23_70
# BB#65:                                # %if.then.370
	movzbl	2(%rbx), %eax
	addl	$-84, %eax
	cmpq	$3, %rcx
	jb	.LBB23_70
# BB#66:                                # %if.then.370
	testl	%eax, %eax
	jne	.LBB23_70
# BB#67:                                # %if.then.380
	movzbl	3(%rbx), %eax
	addl	$-114, %eax
	jmp	.LBB23_70
.LBB23_69:                              # %cond.false.393
	movl	$.L.str.72, %esi
	movl	$9, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB23_70
.LBB23_68:                              # %cond.false.389
	movl	$.L.str.72, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB23_70:                              # %cond.end.395
	testl	%eax, %eax
	je	.LBB23_83
# BB#71:                                # %if.end.400
	movl	$.L.str.73, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$4, %rcx
	ja	.LBB23_81
# BB#72:                                # %land.lhs.true.410
	cmpq	$3, %rcx
	ja	.LBB23_80
# BB#73:                                # %cond.true.414
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB23_82
# BB#74:                                # %cond.true.414
	testl	%eax, %eax
	jne	.LBB23_82
# BB#75:                                # %if.then.428
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB23_82
# BB#76:                                # %if.then.428
	testl	%eax, %eax
	jne	.LBB23_82
# BB#77:                                # %if.then.438
	movzbl	2(%rbx), %eax
	addl	$-69, %eax
	cmpq	$3, %rcx
	jb	.LBB23_82
# BB#78:                                # %if.then.438
	testl	%eax, %eax
	jne	.LBB23_82
# BB#79:                                # %if.then.448
	movzbl	3(%rbx), %eax
	addl	$-79, %eax
	jmp	.LBB23_82
.LBB23_81:                              # %cond.false.461
	movl	$.L.str.73, %esi
	movl	$5, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB23_82
.LBB23_80:                              # %cond.false.457
	movl	$.L.str.73, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB23_82:                              # %cond.end.463
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ebp
.LBB23_83:                              # %return
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end23:
	.size	dsc_is_section, .Lfunc_end23-dsc_is_section
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_parse_pages,@function
dsc_parse_pages:                        # @dsc_parse_pages
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp158:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp159:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp160:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp161:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp162:
	.cfi_def_cfa_offset 48
.Ltmp163:
	.cfi_offset %rbx, -40
.Ltmp164:
	.cfi_offset %r14, -32
.Ltmp165:
	.cfi_offset %r15, -24
.Ltmp166:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	cmpl	$0, 1172(%r14)
	je	.LBB24_9
# BB#1:                                 # %land.lhs.true
	movl	1300(%r14), %eax
	cmpl	$1, %eax
	jne	.LBB24_6
# BB#2:                                 # %if.then
	movq	9912(%r14), %rbp
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.LBB24_64
# BB#3:                                 # %dsc_error.exit
	movl	9584(%r14), %r8d
	movq	9576(%r14), %rcx
	movq	1288(%r14), %rdi
	movl	$10, %edx
	movq	%r14, %rsi
	callq	*%rbp
	cmpl	$3, %eax
	jae	.LBB24_4
# BB#63:                                # %switch.lookup
	cltq
	movl	.Lswitch.table.6(,%rax,4), %eax
	jmp	.LBB24_64
.LBB24_4:                               # %if.end
	cmpl	$0, 1172(%r14)
	je	.LBB24_9
# BB#5:                                 # %land.lhs.true.5thread-pre-split
	movl	1300(%r14), %eax
.LBB24_6:                               # %land.lhs.true.5
	cmpl	$13, %eax
	jne	.LBB24_9
# BB#7:                                 # %if.then.8
	movq	9912(%r14), %rax
	testq	%rax, %rax
	je	.LBB24_9
# BB#8:                                 # %dsc_error.exit121
	movl	9584(%r14), %r8d
	movq	9576(%r14), %rcx
	movq	1288(%r14), %rdi
	movl	$11, %edx
	movq	%r14, %rsi
	callq	*%rax
	movl	%eax, %ecx
	movl	$1, %eax
	cmpl	$2, %ecx
	je	.LBB24_64
.LBB24_9:                               # %if.end.19
	movl	$.L.str.34, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	9576(%r14), %r15
	cmpq	$2, %rcx
	ja	.LBB24_15
# BB#10:                                # %cond.true.25
	movzbl	(%r15), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB24_16
# BB#11:                                # %cond.true.25
	testl	%eax, %eax
	jne	.LBB24_16
# BB#12:                                # %if.then.35
	movzbl	1(%r15), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB24_16
# BB#13:                                # %if.then.35
	testl	%eax, %eax
	jne	.LBB24_16
# BB#14:                                # %if.then.45
	movzbl	2(%r15), %eax
	addl	$-43, %eax
	jmp	.LBB24_16
.LBB24_15:                              # %cond.false.66
	movl	$.L.str.34, %esi
	movl	$3, %edx
	movq	%r15, %rdi
	callq	strncmp
.LBB24_16:                              # %cond.end.69
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	3(%rax,%rax,4), %rbx
	jmp	.LBB24_17
	.align	16, 0x90
.LBB24_19:                              # %while.body
                                        #   in Loop: Header=BB24_17 Depth=1
	incq	%rbx
.LBB24_17:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r15,%rbx), %ebp
	cmpl	$32, %ebp
	je	.LBB24_19
# BB#18:                                # %while.cond
                                        #   in Loop: Header=BB24_17 Depth=1
	movzbl	%bpl, %eax
	cmpl	$9, %eax
	je	.LBB24_19
# BB#20:                                # %while.end
	addq	%rbx, %r15
	movl	$.L.str.74, %edi
	callq	strlen
	cmpq	$4, %rax
	ja	.LBB24_30
# BB#21:                                # %land.lhs.true.95
	cmpq	$3, %rax
	ja	.LBB24_29
# BB#22:                                # %cond.true.99
	addl	$-97, %ebp
	jne	.LBB24_32
# BB#23:                                # %cond.true.99
	testq	%rax, %rax
	je	.LBB24_32
# BB#24:                                # %if.then.113
	movzbl	1(%r15), %ebp
	addl	$-116, %ebp
	cmpq	$2, %rax
	jb	.LBB24_32
# BB#25:                                # %if.then.113
	testl	%ebp, %ebp
	jne	.LBB24_32
# BB#26:                                # %if.then.123
	movzbl	2(%r15), %ebp
	addl	$-101, %ebp
	cmpq	$3, %rax
	jb	.LBB24_32
# BB#27:                                # %if.then.123
	testl	%ebp, %ebp
	jne	.LBB24_32
# BB#28:                                # %if.then.133
	movzbl	3(%r15), %ebp
	addl	$-110, %ebp
	jmp	.LBB24_32
.LBB24_30:                              # %cond.false.146
	movl	$.L.str.74, %esi
	movl	$5, %edx
	movq	%r15, %rdi
	callq	strncmp
	jmp	.LBB24_31
.LBB24_29:                              # %cond.false.142
	movl	$.L.str.74, %esi
	movq	%r15, %rdi
	callq	strcmp
.LBB24_31:                              # %cond.end.148
	movl	%eax, %ebp
.LBB24_32:                              # %cond.end.148
	testl	%ebp, %ebp
	je	.LBB24_33
# BB#37:                                # %if.else.168
	movl	$.L.str.75, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$6, %rcx
	ja	.LBB24_47
# BB#38:                                # %land.lhs.true.178
	cmpq	$3, %rcx
	ja	.LBB24_46
# BB#39:                                # %cond.true.182
	movzbl	(%r15), %eax
	addl	$-40, %eax
	testq	%rcx, %rcx
	je	.LBB24_48
# BB#40:                                # %cond.true.182
	testl	%eax, %eax
	jne	.LBB24_48
# BB#41:                                # %if.then.196
	movzbl	1(%r15), %eax
	addl	$-97, %eax
	cmpq	$2, %rcx
	jb	.LBB24_48
# BB#42:                                # %if.then.196
	testl	%eax, %eax
	jne	.LBB24_48
# BB#43:                                # %if.then.206
	movzbl	2(%r15), %eax
	addl	$-116, %eax
	cmpq	$3, %rcx
	jb	.LBB24_48
# BB#44:                                # %if.then.206
	testl	%eax, %eax
	jne	.LBB24_48
# BB#45:                                # %if.then.216
	movzbl	3(%r15), %eax
	addl	$-101, %eax
	jmp	.LBB24_48
.LBB24_33:                              # %if.then.152
	cmpl	$1, 1300(%r14)
	jne	.LBB24_34
# BB#35:                                # %if.else
	movq	9912(%r14), %rax
	testq	%rax, %rax
	je	.LBB24_62
# BB#36:                                # %dsc_error.exit128
	movl	9584(%r14), %r8d
	movq	9576(%r14), %rcx
	movq	1288(%r14), %rdi
	movl	$9, %edx
	jmp	.LBB24_61
.LBB24_47:                              # %cond.false.229
	movl	$.L.str.75, %esi
	movl	$7, %edx
	movq	%r15, %rdi
	callq	strncmp
	jmp	.LBB24_48
.LBB24_46:                              # %cond.false.225
	movl	$.L.str.75, %esi
	movq	%r15, %rdi
	callq	strcmp
.LBB24_48:                              # %cond.end.231
	testl	%eax, %eax
	je	.LBB24_49
# BB#50:                                # %if.else.241
	movq	%rbx, %rdi
	addq	9576(%r14), %rdi
	movl	9584(%r14), %esi
	subl	%ebx, %esi
	leaq	4(%rsp), %rdx
	callq	dsc_get_int
	movl	4(%rsp), %ecx
	testl	%ecx, %ecx
	je	.LBB24_59
# BB#51:                                # %if.then.248
	addl	%ebx, %ecx
	movl	%eax, 1172(%r14)
	movslq	%ecx, %rax
	movq	9576(%r14), %rdi
	addq	%rax, %rdi
	movl	9584(%r14), %esi
	subl	%eax, %esi
	leaq	4(%rsp), %rdx
	callq	dsc_get_int
	cmpl	$0, 4(%rsp)
	je	.LBB24_62
# BB#52:                                # %if.then.257
	cmpl	$0, 1176(%r14)
	jne	.LBB24_62
# BB#53:                                # %if.then.260
	cmpl	$1, %eax
	je	.LBB24_58
# BB#54:                                # %if.then.260
	testl	%eax, %eax
	jne	.LBB24_55
# BB#57:                                # %sw.bb.263
	movl	$3, 1176(%r14)
	xorl	%eax, %eax
	jmp	.LBB24_64
.LBB24_49:                              # %if.then.235
	cmpl	$1, 1300(%r14)
	je	.LBB24_62
.LBB24_34:                              # %if.then.156
	movq	%r14, %rdi
	callq	dsc_unknown
	xorl	%eax, %eax
	jmp	.LBB24_64
.LBB24_59:                              # %if.else.270
	movq	9912(%r14), %rax
	testq	%rax, %rax
	je	.LBB24_62
# BB#60:                                # %dsc_error.exit135
	movl	9584(%r14), %r8d
	movq	9576(%r14), %rcx
	movq	1288(%r14), %rdi
	movl	$15, %edx
.LBB24_61:                              # %dsc_error.exit135
	movq	%r14, %rsi
	callq	*%rax
	movl	%eax, %ecx
	movl	$1, %eax
	cmpl	$2, %ecx
	je	.LBB24_64
	jmp	.LBB24_62
.LBB24_58:                              # %sw.bb.265
	movl	$1, 1176(%r14)
	xorl	%eax, %eax
	jmp	.LBB24_64
.LBB24_55:                              # %if.then.260
	cmpl	$-1, %eax
	jne	.LBB24_62
# BB#56:                                # %sw.bb.261
	movl	$2, 1176(%r14)
	xorl	%eax, %eax
	jmp	.LBB24_64
.LBB24_62:                              # %if.end.284
	xorl	%eax, %eax
.LBB24_64:                              # %cleanup.285
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	dsc_parse_pages, .Lfunc_end24-dsc_parse_pages
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_unknown,@function
dsc_unknown:                            # @dsc_unknown
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp167:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp168:
	.cfi_def_cfa_offset 24
	subq	$264, %rsp              # imm = 0x108
.Ltmp169:
	.cfi_def_cfa_offset 288
.Ltmp170:
	.cfi_offset %rbx, -24
.Ltmp171:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	cmpq	$0, 9904(%rbx)
	je	.LBB25_6
# BB#1:                                 # %if.then
	movl	9584(%rbx), %eax
	movl	9596(%rbx), %ecx
	cmpl	$254, %eax
	movl	$254, %edx
	cmovbl	%eax, %edx
	movl	%edx, %r14d
	movslq	1300(%rbx), %rax
	movq	dsc_scan_section_name(,%rax,8), %rdx
	leaq	(%rsp), %rdi
	movl	$.L.str.76, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
	movq	9904(%rbx), %rax
	testq	%rax, %rax
	je	.LBB25_3
# BB#2:                                 # %if.then.i
	movq	1288(%rbx), %rdi
	leaq	(%rsp), %rsi
	callq	*%rax
.LBB25_3:                               # %dsc_debug_print.exit
	movq	9576(%rbx), %rsi
	leaq	(%rsp), %rdi
	movq	%r14, %rdx
	callq	strncpy
	movb	$0, (%rsp,%r14)
	movq	9904(%rbx), %rax
	testq	%rax, %rax
	je	.LBB25_6
# BB#4:                                 # %dsc_debug_print.exit15
	movq	1288(%rbx), %rdi
	leaq	(%rsp), %rsi
	callq	*%rax
	movq	9904(%rbx), %rax
	testq	%rax, %rax
	je	.LBB25_6
# BB#5:                                 # %if.then.i.19
	movq	1288(%rbx), %rdi
	movl	$.L.str.77, %esi
	callq	*%rax
.LBB25_6:                               # %if.end
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end25:
	.size	dsc_unknown, .Lfunc_end25-dsc_unknown
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI26_0:
	.quad	4607173411600762667     # double 0.99899999999999999
	.text
	.align	16, 0x90
	.type	dsc_parse_bounding_box,@function
dsc_parse_bounding_box:                 # @dsc_parse_bounding_box
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp172:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp173:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp174:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp175:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp176:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp177:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp178:
	.cfi_def_cfa_offset 80
.Ltmp179:
	.cfi_offset %rbx, -56
.Ltmp180:
	.cfi_offset %r12, -48
.Ltmp181:
	.cfi_offset %r13, -40
.Ltmp182:
	.cfi_offset %r14, -32
.Ltmp183:
	.cfi_offset %r15, -24
.Ltmp184:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB26_18
# BB#1:                                 # %land.lhs.true
	movl	1300(%r15), %eax
	cmpl	$1, %eax
	jne	.LBB26_6
# BB#2:                                 # %if.then
	movq	9912(%r15), %rax
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB26_77
# BB#3:                                 # %dsc_error.exit
	movl	9584(%r15), %r8d
	movq	9576(%r15), %rcx
	movq	1288(%r15), %rdi
	movl	$10, %edx
	movq	%r15, %rsi
	callq	*%rax
	cmpl	$3, %eax
	jb	.LBB26_76
# BB#4:                                 # %if.end
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB26_18
# BB#5:                                 # %land.lhs.true.4thread-pre-split
	movl	1300(%r15), %eax
.LBB26_6:                               # %land.lhs.true.4
	cmpl	$11, %eax
	jne	.LBB26_10
# BB#7:                                 # %if.then.7
	movq	9912(%r15), %rax
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB26_77
# BB#8:                                 # %dsc_error.exit163
	movl	9584(%r15), %r8d
	movq	9576(%r15), %rcx
	movq	1288(%r15), %rdi
	movl	$10, %edx
	movq	%r15, %rsi
	callq	*%rax
	cmpl	$3, %eax
	jae	.LBB26_9
.LBB26_76:                              # %switch.lookup241
	cltq
	movl	.Lswitch.table.6(,%rax,4), %ebx
	jmp	.LBB26_77
.LBB26_9:                               # %if.end.18
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB26_18
.LBB26_10:                              # %land.lhs.true.20
	cmpl	$13, 1300(%r15)
	jne	.LBB26_14
# BB#11:                                # %if.then.23
	movq	9912(%r15), %rax
	testq	%rax, %rax
	je	.LBB26_14
# BB#12:                                # %dsc_error.exit170
	movl	9584(%r15), %r8d
	movq	9576(%r15), %rcx
	movq	1288(%r15), %rdi
	movl	$11, %edx
	movq	%r15, %rsi
	callq	*%rax
	movl	$1, %ebx
	cmpl	$2, %eax
	je	.LBB26_77
# BB#13:                                # %if.end.34
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB26_18
.LBB26_14:                              # %if.then.36
	movq	9888(%r15), %rax
	testq	%rax, %rax
	je	.LBB26_16
# BB#15:                                # %if.then.i.172
	movq	9896(%r15), %rsi
	callq	*%rax
	jmp	.LBB26_17
.LBB26_16:                              # %if.else.i
	callq	free
.LBB26_17:                              # %dsc_memfree.exit
	movq	$0, (%r14)
.LBB26_18:                              # %while.cond.preheader
	movq	9576(%r15), %rbx
	movslq	%ebp, %r13
	jmp	.LBB26_19
	.align	16, 0x90
.LBB26_21:                              # %while.body
                                        #   in Loop: Header=BB26_19 Depth=1
	incq	%r13
.LBB26_19:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx,%r13), %ebp
	cmpl	$32, %ebp
	je	.LBB26_21
# BB#20:                                # %while.cond
                                        #   in Loop: Header=BB26_19 Depth=1
	movzbl	%bpl, %eax
	cmpl	$9, %eax
	je	.LBB26_21
# BB#22:                                # %while.end
	addq	%r13, %rbx
	movl	$.L.str.74, %edi
	callq	strlen
	cmpq	$4, %rax
	ja	.LBB26_32
# BB#23:                                # %land.lhs.true.51
	cmpq	$3, %rax
	ja	.LBB26_31
# BB#24:                                # %cond.true.55
	addl	$-97, %ebp
	jne	.LBB26_34
# BB#25:                                # %cond.true.55
	testq	%rax, %rax
	je	.LBB26_34
# BB#26:                                # %if.then.66
	movzbl	1(%rbx), %ebp
	addl	$-116, %ebp
	cmpq	$2, %rax
	jb	.LBB26_34
# BB#27:                                # %if.then.66
	testl	%ebp, %ebp
	jne	.LBB26_34
# BB#28:                                # %if.then.76
	movzbl	2(%rbx), %ebp
	addl	$-101, %ebp
	cmpq	$3, %rax
	jb	.LBB26_34
# BB#29:                                # %if.then.76
	testl	%ebp, %ebp
	jne	.LBB26_34
# BB#30:                                # %if.then.86
	movzbl	3(%rbx), %ebp
	addl	$-110, %ebp
	jmp	.LBB26_34
.LBB26_32:                              # %cond.false.96
	movl	$.L.str.74, %esi
	movl	$5, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB26_33
.LBB26_31:                              # %cond.false
	movl	$.L.str.74, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB26_33:                              # %cond.end.98
	movl	%eax, %ebp
.LBB26_34:                              # %cond.end.98
	testl	%ebp, %ebp
	je	.LBB26_35
# BB#39:                                # %if.else.118
	movl	$.L.str.75, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$6, %rcx
	ja	.LBB26_49
# BB#40:                                # %land.lhs.true.128
	cmpq	$3, %rcx
	ja	.LBB26_48
# BB#41:                                # %cond.true.132
	movzbl	(%rbx), %eax
	addl	$-40, %eax
	testq	%rcx, %rcx
	je	.LBB26_50
# BB#42:                                # %cond.true.132
	testl	%eax, %eax
	jne	.LBB26_50
# BB#43:                                # %if.then.146
	movzbl	1(%rbx), %eax
	addl	$-97, %eax
	cmpq	$2, %rcx
	jb	.LBB26_50
# BB#44:                                # %if.then.146
	testl	%eax, %eax
	jne	.LBB26_50
# BB#45:                                # %if.then.156
	movzbl	2(%rbx), %eax
	addl	$-116, %eax
	cmpq	$3, %rcx
	jb	.LBB26_50
# BB#46:                                # %if.then.156
	testl	%eax, %eax
	jne	.LBB26_50
# BB#47:                                # %if.then.166
	movzbl	3(%rbx), %eax
	addl	$-101, %eax
	jmp	.LBB26_50
.LBB26_35:                              # %if.then.102
	cmpl	$13, 1300(%r15)
	je	.LBB26_36
# BB#37:                                # %if.else
	movq	9912(%r15), %rax
	testq	%rax, %rax
	je	.LBB26_61
# BB#38:                                # %dsc_error.exit179
	movl	9584(%r15), %r8d
	movq	9576(%r15), %rcx
	movq	1288(%r15), %rdi
	movl	$9, %edx
	movq	%r15, %rsi
	callq	*%rax
	movl	$1, %ebx
	cmpl	$2, %eax
	jne	.LBB26_61
	jmp	.LBB26_77
.LBB26_49:                              # %cond.false.179
	movl	$.L.str.75, %esi
	movl	$7, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB26_50
.LBB26_48:                              # %cond.false.175
	movl	$.L.str.75, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB26_50:                              # %cond.end.181
	testl	%eax, %eax
	je	.LBB26_51
# BB#52:                                # %if.else.191
	movl	%r13d, %edi
	addq	9576(%r15), %rdi
	movl	9584(%r15), %esi
	subl	%r13d, %esi
	leaq	20(%rsp), %rdx
	callq	dsc_get_int
	movl	%eax, %ebp
	movl	20(%rsp), %ebx
	testl	%ebx, %ebx
	je	.LBB26_62
# BB#53:                                # %if.end.205
	addl	%r13d, %ebx
	movl	%ebx, %edi
	addq	9576(%r15), %rdi
	movl	9584(%r15), %esi
	subl	%ebx, %esi
	leaq	20(%rsp), %rdx
	callq	dsc_get_int
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movl	20(%rsp), %r12d
	testl	%r12d, %r12d
	je	.LBB26_62
# BB#54:                                # %if.end.215
	addl	%ebx, %r12d
	movl	%r12d, %edi
	addq	9576(%r15), %rdi
	movl	9584(%r15), %esi
	subl	%r12d, %esi
	leaq	20(%rsp), %rdx
	callq	dsc_get_int
	movl	%eax, %ebx
	movl	20(%rsp), %eax
	testl	%eax, %eax
	je	.LBB26_62
# BB#55:                                # %if.end.225
	addl	%r12d, %eax
	movl	%eax, %edi
	addq	9576(%r15), %rdi
	movl	9584(%r15), %esi
	subl	%eax, %esi
	leaq	20(%rsp), %rdx
	callq	dsc_get_int
	cmpl	$0, 20(%rsp)
	je	.LBB26_62
# BB#56:                                # %if.then.227
	movl	%eax, %r13d
	movq	9880(%r15), %rax
	movl	%ebx, %r12d
	testq	%rax, %rax
	je	.LBB26_58
# BB#57:                                # %if.then.i.183
	movq	9896(%r15), %rsi
	movl	$16, %edi
	callq	*%rax
	jmp	.LBB26_59
.LBB26_62:                              # %if.else.237
	movq	9912(%r15), %rax
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB26_77
# BB#63:                                # %dsc_error.exit191
	movl	9584(%r15), %r8d
	movq	9576(%r15), %rcx
	movq	1288(%r15), %rdi
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	movq	%r15, %rsi
	callq	*%rax
	cmpl	$2, %eax
	je	.LBB26_75
# BB#64:                                # %dsc_error.exit191
	cmpl	$1, %eax
	je	.LBB26_77
# BB#65:                                # %dsc_error.exit191
	testl	%eax, %eax
	jne	.LBB26_61
# BB#66:                                # %sw.bb.243
	movl	20(%rsp), %ebp
	addl	%r13d, %ebp
	movq	9576(%r15), %rdi
	addq	%rbp, %rdi
	movl	9584(%r15), %esi
	subl	%ebp, %esi
	leaq	20(%rsp), %rdx
	callq	dsc_get_real
	movl	20(%rsp), %r13d
	testl	%r13d, %r13d
	je	.LBB26_77
# BB#67:                                # %if.end.260
	movss	%xmm0, 16(%rsp)         # 4-byte Spill
	addl	%ebp, %r13d
	movl	%r13d, %edi
	addq	9576(%r15), %rdi
	movl	9584(%r15), %esi
	subl	%r13d, %esi
	leaq	20(%rsp), %rdx
	callq	dsc_get_real
	movl	20(%rsp), %r12d
	testl	%r12d, %r12d
	je	.LBB26_77
# BB#68:                                # %if.end.270
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	addl	%r13d, %r12d
	movl	%r12d, %edi
	addq	9576(%r15), %rdi
	movl	9584(%r15), %esi
	subl	%r12d, %esi
	leaq	20(%rsp), %rdx
	callq	dsc_get_real
	movl	20(%rsp), %eax
	testl	%eax, %eax
	je	.LBB26_77
# BB#69:                                # %if.end.280
	movss	%xmm0, 8(%rsp)          # 4-byte Spill
	addl	%r12d, %eax
	movl	%eax, %edi
	addq	9576(%r15), %rdi
	movl	9584(%r15), %esi
	subl	%eax, %esi
	leaq	20(%rsp), %rdx
	callq	dsc_get_real
	cmpl	$0, 20(%rsp)
	je	.LBB26_77
# BB#70:                                # %if.then.282
	movss	%xmm0, 4(%rsp)          # 4-byte Spill
	movq	9880(%r15), %rax
	testq	%rax, %rax
	je	.LBB26_72
# BB#71:                                # %if.then.i.196
	movq	9896(%r15), %rsi
	movl	$16, %edi
	callq	*%rax
	jmp	.LBB26_73
.LBB26_51:                              # %if.then.185
	cmpl	$13, 1300(%r15)
	jne	.LBB26_61
.LBB26_36:                              # %if.then.106
	movq	%r15, %rdi
	callq	dsc_unknown
	xorl	%ebx, %ebx
	jmp	.LBB26_77
.LBB26_75:                              # %sw.bb.302
	movl	$1, %ebx
	jmp	.LBB26_77
.LBB26_58:                              # %if.end.i
	movl	$16, %edi
	callq	malloc
.LBB26_59:                              # %dsc_memalloc.exit
	movq	%rax, (%r14)
	movl	$-1, %ebx
	testq	%rax, %rax
	je	.LBB26_77
# BB#60:                                # %if.end.232
	movl	%ebp, (%rax)
	movl	16(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 4(%rax)
	movl	%r12d, 8(%rax)
	movl	%r13d, 12(%rax)
.LBB26_61:                              # %if.end.309
	xorl	%ebx, %ebx
.LBB26_77:                              # %cleanup.310
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB26_72:                              # %if.end.i.198
	movl	$16, %edi
	callq	malloc
.LBB26_73:                              # %dsc_memalloc.exit200
	movq	%rax, (%r14)
	movl	$-1, %ebx
	testq	%rax, %rax
	movss	8(%rsp), %xmm0          # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	je	.LBB26_77
# BB#74:                                # %if.end.287
	cvtss2sd	%xmm0, %xmm0
	movss	4(%rsp), %xmm1          # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	addsd	.LCPI26_0(%rip), %xmm0
	addsd	.LCPI26_0(%rip), %xmm1
	cvttss2si	12(%rsp), %ecx  # 4-byte Folded Reload
	cvttsd2si	%xmm0, %edx
	cvttsd2si	%xmm1, %esi
	cvttss2si	16(%rsp), %edi  # 4-byte Folded Reload
	movl	%edi, (%rax)
	movl	%ecx, 4(%rax)
	movl	%edx, 8(%rax)
	movl	%esi, 12(%rax)
	xorl	%ebx, %ebx
	jmp	.LBB26_77
.Lfunc_end26:
	.size	dsc_parse_bounding_box, .Lfunc_end26-dsc_parse_bounding_box
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_parse_float_bounding_box,@function
dsc_parse_float_bounding_box:           # @dsc_parse_float_bounding_box
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp185:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp186:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp187:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp188:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp189:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp190:
	.cfi_def_cfa_offset 80
.Ltmp191:
	.cfi_offset %rbx, -48
.Ltmp192:
	.cfi_offset %r12, -40
.Ltmp193:
	.cfi_offset %r14, -32
.Ltmp194:
	.cfi_offset %r15, -24
.Ltmp195:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB27_18
# BB#1:                                 # %land.lhs.true
	movl	1300(%r15), %eax
	cmpl	$1, %eax
	jne	.LBB27_6
# BB#2:                                 # %if.then
	movq	9912(%r15), %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB27_63
# BB#3:                                 # %dsc_error.exit
	movl	9584(%r15), %r8d
	movq	9576(%r15), %rcx
	movq	1288(%r15), %rdi
	movl	$10, %edx
	movq	%r15, %rsi
	callq	*%rbx
	cmpl	$3, %eax
	jb	.LBB27_62
# BB#4:                                 # %if.end
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB27_18
# BB#5:                                 # %land.lhs.true.4thread-pre-split
	movl	1300(%r15), %eax
.LBB27_6:                               # %land.lhs.true.4
	cmpl	$11, %eax
	jne	.LBB27_10
# BB#7:                                 # %if.then.7
	movq	9912(%r15), %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB27_63
# BB#8:                                 # %dsc_error.exit119
	movl	9584(%r15), %r8d
	movq	9576(%r15), %rcx
	movq	1288(%r15), %rdi
	movl	$10, %edx
	movq	%r15, %rsi
	callq	*%rbx
	cmpl	$3, %eax
	jae	.LBB27_9
.LBB27_62:                              # %switch.lookup168
	cltq
	movl	.Lswitch.table.6(,%rax,4), %eax
	jmp	.LBB27_63
.LBB27_9:                               # %if.end.18
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB27_18
.LBB27_10:                              # %land.lhs.true.20
	cmpl	$13, 1300(%r15)
	jne	.LBB27_14
# BB#11:                                # %if.then.23
	movq	9912(%r15), %rax
	testq	%rax, %rax
	je	.LBB27_14
# BB#12:                                # %dsc_error.exit126
	movl	9584(%r15), %r8d
	movq	9576(%r15), %rcx
	movq	1288(%r15), %rdi
	movl	$11, %edx
	movq	%r15, %rsi
	callq	*%rax
	movl	%eax, %ecx
	movl	$1, %eax
	cmpl	$2, %ecx
	je	.LBB27_63
# BB#13:                                # %if.end.34
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB27_18
.LBB27_14:                              # %if.then.36
	movq	9888(%r15), %rax
	testq	%rax, %rax
	je	.LBB27_16
# BB#15:                                # %if.then.i.128
	movq	9896(%r15), %rsi
	callq	*%rax
	jmp	.LBB27_17
.LBB27_16:                              # %if.else.i
	callq	free
.LBB27_17:                              # %dsc_memfree.exit
	movq	$0, (%r14)
.LBB27_18:                              # %while.cond.preheader
	movq	9576(%r15), %r12
	movslq	%ebp, %rbx
	jmp	.LBB27_19
	.align	16, 0x90
.LBB27_21:                              # %while.body
                                        #   in Loop: Header=BB27_19 Depth=1
	incq	%rbx
.LBB27_19:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r12,%rbx), %ebp
	cmpl	$32, %ebp
	je	.LBB27_21
# BB#20:                                # %while.cond
                                        #   in Loop: Header=BB27_19 Depth=1
	movzbl	%bpl, %eax
	cmpl	$9, %eax
	je	.LBB27_21
# BB#22:                                # %while.end
	addq	%rbx, %r12
	movl	$.L.str.74, %edi
	callq	strlen
	cmpq	$4, %rax
	ja	.LBB27_32
# BB#23:                                # %land.lhs.true.51
	cmpq	$3, %rax
	ja	.LBB27_31
# BB#24:                                # %cond.true.55
	addl	$-97, %ebp
	jne	.LBB27_34
# BB#25:                                # %cond.true.55
	testq	%rax, %rax
	je	.LBB27_34
# BB#26:                                # %if.then.66
	movzbl	1(%r12), %ebp
	addl	$-116, %ebp
	cmpq	$2, %rax
	jb	.LBB27_34
# BB#27:                                # %if.then.66
	testl	%ebp, %ebp
	jne	.LBB27_34
# BB#28:                                # %if.then.76
	movzbl	2(%r12), %ebp
	addl	$-101, %ebp
	cmpq	$3, %rax
	jb	.LBB27_34
# BB#29:                                # %if.then.76
	testl	%ebp, %ebp
	jne	.LBB27_34
# BB#30:                                # %if.then.86
	movzbl	3(%r12), %ebp
	addl	$-110, %ebp
	jmp	.LBB27_34
.LBB27_32:                              # %cond.false.96
	movl	$.L.str.74, %esi
	movl	$5, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB27_33
.LBB27_31:                              # %cond.false
	movl	$.L.str.74, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB27_33:                              # %cond.end.98
	movl	%eax, %ebp
.LBB27_34:                              # %cond.end.98
	testl	%ebp, %ebp
	je	.LBB27_35
# BB#39:                                # %if.else.118
	movl	$.L.str.75, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$6, %rcx
	ja	.LBB27_49
# BB#40:                                # %land.lhs.true.128
	cmpq	$3, %rcx
	ja	.LBB27_48
# BB#41:                                # %cond.true.132
	movzbl	(%r12), %eax
	addl	$-40, %eax
	testq	%rcx, %rcx
	je	.LBB27_50
# BB#42:                                # %cond.true.132
	testl	%eax, %eax
	jne	.LBB27_50
# BB#43:                                # %if.then.146
	movzbl	1(%r12), %eax
	addl	$-97, %eax
	cmpq	$2, %rcx
	jb	.LBB27_50
# BB#44:                                # %if.then.146
	testl	%eax, %eax
	jne	.LBB27_50
# BB#45:                                # %if.then.156
	movzbl	2(%r12), %eax
	addl	$-116, %eax
	cmpq	$3, %rcx
	jb	.LBB27_50
# BB#46:                                # %if.then.156
	testl	%eax, %eax
	jne	.LBB27_50
# BB#47:                                # %if.then.166
	movzbl	3(%r12), %eax
	addl	$-101, %eax
	jmp	.LBB27_50
.LBB27_35:                              # %if.then.102
	cmpl	$13, 1300(%r15)
	je	.LBB27_36
# BB#37:                                # %if.else
	movq	9912(%r15), %rax
	testq	%rax, %rax
	je	.LBB27_61
# BB#38:                                # %dsc_error.exit135
	movl	9584(%r15), %r8d
	movq	9576(%r15), %rcx
	movq	1288(%r15), %rdi
	movl	$9, %edx
	movq	%r15, %rsi
	callq	*%rax
	movl	%eax, %ecx
	movl	$1, %eax
	cmpl	$2, %ecx
	jne	.LBB27_61
	jmp	.LBB27_63
.LBB27_49:                              # %cond.false.179
	movl	$.L.str.75, %esi
	movl	$7, %edx
	movq	%r12, %rdi
	callq	strncmp
	jmp	.LBB27_50
.LBB27_48:                              # %cond.false.175
	movl	$.L.str.75, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB27_50:                              # %cond.end.181
	testl	%eax, %eax
	je	.LBB27_51
# BB#52:                                # %if.else.191
	movl	%ebx, %edi
	addq	9576(%r15), %rdi
	movl	9584(%r15), %esi
	subl	%ebx, %esi
	leaq	28(%rsp), %rdx
	callq	dsc_get_real
	movss	%xmm0, 24(%rsp)         # 4-byte Spill
	movl	28(%rsp), %ebp
	testl	%ebp, %ebp
	je	.LBB27_61
# BB#53:                                # %if.end.205
	addl	%ebx, %ebp
	movl	%ebp, %edi
	addq	9576(%r15), %rdi
	movl	9584(%r15), %esi
	subl	%ebp, %esi
	leaq	28(%rsp), %rdx
	callq	dsc_get_real
	movss	%xmm0, 20(%rsp)         # 4-byte Spill
	movl	28(%rsp), %ebx
	testl	%ebx, %ebx
	je	.LBB27_61
# BB#54:                                # %if.end.215
	addl	%ebp, %ebx
	movl	%ebx, %edi
	addq	9576(%r15), %rdi
	movl	9584(%r15), %esi
	subl	%ebx, %esi
	leaq	28(%rsp), %rdx
	callq	dsc_get_real
	movss	%xmm0, 16(%rsp)         # 4-byte Spill
	movl	28(%rsp), %eax
	testl	%eax, %eax
	je	.LBB27_61
# BB#55:                                # %if.end.225
	addl	%ebx, %eax
	movl	%eax, %edi
	addq	9576(%r15), %rdi
	movl	9584(%r15), %esi
	subl	%eax, %esi
	leaq	28(%rsp), %rdx
	callq	dsc_get_real
	cmpl	$0, 28(%rsp)
	je	.LBB27_61
# BB#56:                                # %if.then.227
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	movq	9880(%r15), %rax
	testq	%rax, %rax
	je	.LBB27_58
# BB#57:                                # %if.then.i.139
	movq	9896(%r15), %rsi
	movl	$16, %edi
	callq	*%rax
	jmp	.LBB27_59
.LBB27_51:                              # %if.then.185
	cmpl	$13, 1300(%r15)
	jne	.LBB27_61
.LBB27_36:                              # %if.then.106
	movq	%r15, %rdi
	callq	dsc_unknown
	xorl	%eax, %eax
	jmp	.LBB27_63
.LBB27_58:                              # %if.end.i
	movl	$16, %edi
	callq	malloc
.LBB27_59:                              # %dsc_memalloc.exit
	movq	%rax, %rcx
	movq	%rcx, (%r14)
	movl	$-1, %eax
	testq	%rcx, %rcx
	movss	12(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	je	.LBB27_63
# BB#60:                                # %if.end.232
	movss	24(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rcx)
	movss	20(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 4(%rcx)
	movss	16(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 8(%rcx)
	movss	%xmm1, 12(%rcx)
.LBB27_61:                              # %if.end.239
	xorl	%eax, %eax
.LBB27_63:                              # %cleanup.240
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	dsc_parse_float_bounding_box, .Lfunc_end27-dsc_parse_float_bounding_box
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_parse_orientation,@function
dsc_parse_orientation:                  # @dsc_parse_orientation
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp196:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp197:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp198:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp199:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp200:
	.cfi_def_cfa_offset 48
.Ltmp201:
	.cfi_offset %rbx, -40
.Ltmp202:
	.cfi_offset %r14, -32
.Ltmp203:
	.cfi_offset %r15, -24
.Ltmp204:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r15
	cmpl	$0, 1180(%r15)
	je	.LBB28_9
# BB#1:                                 # %land.lhs.true
	movl	1300(%r15), %eax
	cmpl	$1, %eax
	jne	.LBB28_6
# BB#2:                                 # %if.then
	movq	9912(%r15), %rbp
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.LBB28_71
# BB#3:                                 # %dsc_error.exit
	movl	9584(%r15), %r8d
	movq	9576(%r15), %rcx
	movq	1288(%r15), %rdi
	movl	$10, %edx
	movq	%r15, %rsi
	callq	*%rbp
	cmpl	$3, %eax
	jae	.LBB28_4
# BB#70:                                # %switch.lookup
	cltq
	movl	.Lswitch.table.6(,%rax,4), %eax
	jmp	.LBB28_71
.LBB28_4:                               # %if.end
	cmpl	$0, 1180(%r15)
	je	.LBB28_9
# BB#5:                                 # %land.lhs.true.5thread-pre-split
	movl	1300(%r15), %eax
.LBB28_6:                               # %land.lhs.true.5
	cmpl	$13, %eax
	jne	.LBB28_9
# BB#7:                                 # %if.then.8
	movq	9912(%r15), %rax
	testq	%rax, %rax
	je	.LBB28_9
# BB#8:                                 # %dsc_error.exit115
	movl	9584(%r15), %r8d
	movq	9576(%r15), %rcx
	movq	1288(%r15), %rdi
	movl	$11, %edx
	movq	%r15, %rsi
	callq	*%rax
	movl	%eax, %ecx
	movl	$1, %eax
	cmpl	$2, %ecx
	je	.LBB28_71
.LBB28_9:                               # %if.end.19
	movslq	%ebx, %rbx
	addq	9576(%r15), %rbx
	jmp	.LBB28_10
	.align	16, 0x90
.LBB28_12:                              # %while.body
                                        #   in Loop: Header=BB28_10 Depth=1
	incq	%rbx
.LBB28_10:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %ebp
	cmpl	$32, %ebp
	je	.LBB28_12
# BB#11:                                # %while.cond
                                        #   in Loop: Header=BB28_10 Depth=1
	movzbl	%bpl, %eax
	cmpl	$9, %eax
	je	.LBB28_12
# BB#13:                                # %while.end
	movl	$.L.str.74, %edi
	callq	strlen
	cmpq	$4, %rax
	ja	.LBB28_23
# BB#14:                                # %land.lhs.true.29
	cmpq	$3, %rax
	ja	.LBB28_22
# BB#15:                                # %cond.true.33
	addl	$-97, %ebp
	jne	.LBB28_25
# BB#16:                                # %cond.true.33
	testq	%rax, %rax
	je	.LBB28_25
# BB#17:                                # %if.then.43
	movzbl	1(%rbx), %ebp
	addl	$-116, %ebp
	cmpq	$2, %rax
	jb	.LBB28_25
# BB#18:                                # %if.then.43
	testl	%ebp, %ebp
	jne	.LBB28_25
# BB#19:                                # %if.then.53
	movzbl	2(%rbx), %ebp
	addl	$-101, %ebp
	cmpq	$3, %rax
	jb	.LBB28_25
# BB#20:                                # %if.then.53
	testl	%ebp, %ebp
	jne	.LBB28_25
# BB#21:                                # %if.then.63
	movzbl	3(%rbx), %ebp
	addl	$-110, %ebp
	jmp	.LBB28_25
.LBB28_23:                              # %cond.false.73
	movl	$.L.str.74, %esi
	movl	$5, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB28_24
.LBB28_22:                              # %cond.false
	movl	$.L.str.74, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB28_24:                              # %cond.end.75
	movl	%eax, %ebp
.LBB28_25:                              # %cond.end.75
	testl	%ebp, %ebp
	je	.LBB28_26
# BB#29:                                # %if.else.95
	movl	$.L.str.75, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$6, %rcx
	ja	.LBB28_39
# BB#30:                                # %land.lhs.true.105
	cmpq	$3, %rcx
	ja	.LBB28_38
# BB#31:                                # %cond.true.109
	movzbl	(%rbx), %eax
	addl	$-40, %eax
	testq	%rcx, %rcx
	je	.LBB28_40
# BB#32:                                # %cond.true.109
	testl	%eax, %eax
	jne	.LBB28_40
# BB#33:                                # %if.then.123
	movzbl	1(%rbx), %eax
	addl	$-97, %eax
	cmpq	$2, %rcx
	jb	.LBB28_40
# BB#34:                                # %if.then.123
	testl	%eax, %eax
	jne	.LBB28_40
# BB#35:                                # %if.then.133
	movzbl	2(%rbx), %eax
	addl	$-116, %eax
	cmpq	$3, %rcx
	jb	.LBB28_40
# BB#36:                                # %if.then.133
	testl	%eax, %eax
	jne	.LBB28_40
# BB#37:                                # %if.then.143
	movzbl	3(%rbx), %eax
	addl	$-101, %eax
	jmp	.LBB28_40
.LBB28_26:                              # %if.then.79
	cmpl	$13, 1300(%r15)
	je	.LBB28_42
# BB#27:                                # %if.else
	movq	9912(%r15), %rax
	testq	%rax, %rax
	je	.LBB28_69
# BB#28:                                # %dsc_error.exit122
	movl	9584(%r15), %r8d
	movq	9576(%r15), %rcx
	movq	1288(%r15), %rdi
	movl	$9, %edx
	movq	%r15, %rsi
	callq	*%rax
	movl	%eax, %ecx
	movl	$1, %eax
	cmpl	$2, %ecx
	jne	.LBB28_69
	jmp	.LBB28_71
.LBB28_39:                              # %cond.false.156
	movl	$.L.str.75, %esi
	movl	$7, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB28_40
.LBB28_38:                              # %cond.false.152
	movl	$.L.str.75, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB28_40:                              # %cond.end.158
	testl	%eax, %eax
	je	.LBB28_41
# BB#43:                                # %if.else.168
	movl	$.L.str.93, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$7, %rcx
	ja	.LBB28_53
# BB#44:                                # %land.lhs.true.178
	cmpq	$3, %rcx
	ja	.LBB28_52
# BB#45:                                # %cond.true.182
	movzbl	(%rbx), %eax
	addl	$-80, %eax
	testq	%rcx, %rcx
	je	.LBB28_54
# BB#46:                                # %cond.true.182
	testl	%eax, %eax
	jne	.LBB28_54
# BB#47:                                # %if.then.196
	movzbl	1(%rbx), %eax
	addl	$-111, %eax
	cmpq	$2, %rcx
	jb	.LBB28_54
# BB#48:                                # %if.then.196
	testl	%eax, %eax
	jne	.LBB28_54
# BB#49:                                # %if.then.206
	movzbl	2(%rbx), %eax
	addl	$-114, %eax
	cmpq	$3, %rcx
	jb	.LBB28_54
# BB#50:                                # %if.then.206
	testl	%eax, %eax
	jne	.LBB28_54
# BB#51:                                # %if.then.216
	movzbl	3(%rbx), %eax
	addl	$-116, %eax
	jmp	.LBB28_54
.LBB28_41:                              # %if.then.162
	cmpl	$13, 1300(%r15)
	jne	.LBB28_69
	jmp	.LBB28_42
.LBB28_53:                              # %cond.false.229
	movl	$.L.str.93, %esi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB28_54
.LBB28_52:                              # %cond.false.225
	movl	$.L.str.93, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB28_54:                              # %cond.end.231
	testl	%eax, %eax
	je	.LBB28_55
# BB#56:                                # %if.else.236
	movl	$.L.str.94, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$8, %rcx
	ja	.LBB28_66
# BB#57:                                # %land.lhs.true.246
	cmpq	$3, %rcx
	ja	.LBB28_65
# BB#58:                                # %cond.true.250
	movzbl	(%rbx), %eax
	addl	$-76, %eax
	testq	%rcx, %rcx
	je	.LBB28_67
# BB#59:                                # %cond.true.250
	testl	%eax, %eax
	jne	.LBB28_67
# BB#60:                                # %if.then.264
	movzbl	1(%rbx), %eax
	addl	$-97, %eax
	cmpq	$2, %rcx
	jb	.LBB28_67
# BB#61:                                # %if.then.264
	testl	%eax, %eax
	jne	.LBB28_67
# BB#62:                                # %if.then.274
	movzbl	2(%rbx), %eax
	addl	$-110, %eax
	cmpq	$3, %rcx
	jb	.LBB28_67
# BB#63:                                # %if.then.274
	testl	%eax, %eax
	jne	.LBB28_67
# BB#64:                                # %if.then.284
	movzbl	3(%rbx), %eax
	addl	$-100, %eax
	jmp	.LBB28_67
.LBB28_55:                              # %if.then.235
	movl	$1, (%r14)
	xorl	%eax, %eax
	jmp	.LBB28_71
.LBB28_66:                              # %cond.false.297
	movl	$.L.str.94, %esi
	movl	$9, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB28_67
.LBB28_65:                              # %cond.false.293
	movl	$.L.str.94, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB28_67:                              # %cond.end.299
	testl	%eax, %eax
	je	.LBB28_68
.LBB28_42:                              # %if.else.304
	movq	%r15, %rdi
	callq	dsc_unknown
	xorl	%eax, %eax
	jmp	.LBB28_71
.LBB28_68:                              # %if.then.303
	movl	$2, (%r14)
.LBB28_69:                              # %if.end.308
	xorl	%eax, %eax
.LBB28_71:                              # %cleanup.309
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	dsc_parse_orientation, .Lfunc_end28-dsc_parse_orientation
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_parse_order,@function
dsc_parse_order:                        # @dsc_parse_order
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp205:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp206:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp207:
	.cfi_def_cfa_offset 32
.Ltmp208:
	.cfi_offset %rbx, -32
.Ltmp209:
	.cfi_offset %r14, -24
.Ltmp210:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	cmpl	$0, 1176(%r14)
	je	.LBB29_9
# BB#1:                                 # %land.lhs.true
	movl	1300(%r14), %eax
	cmpl	$1, %eax
	jne	.LBB29_6
# BB#2:                                 # %if.then
	movq	9912(%r14), %rbp
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.LBB29_91
# BB#3:                                 # %dsc_error.exit
	movl	9584(%r14), %r8d
	movq	9576(%r14), %rcx
	movq	1288(%r14), %rdi
	movl	$10, %edx
	movq	%r14, %rsi
	callq	*%rbp
	cmpl	$3, %eax
	jae	.LBB29_4
# BB#90:                                # %switch.lookup
	cltq
	movl	.Lswitch.table.6(,%rax,4), %eax
	jmp	.LBB29_91
.LBB29_4:                               # %if.end
	cmpl	$0, 1176(%r14)
	je	.LBB29_9
# BB#5:                                 # %land.lhs.true.5thread-pre-split
	movl	1300(%r14), %eax
.LBB29_6:                               # %land.lhs.true.5
	cmpl	$13, %eax
	jne	.LBB29_9
# BB#7:                                 # %if.then.8
	movq	9912(%r14), %rax
	testq	%rax, %rax
	je	.LBB29_9
# BB#8:                                 # %dsc_error.exit154
	movl	9584(%r14), %r8d
	movq	9576(%r14), %rcx
	movq	1288(%r14), %rdi
	movl	$11, %edx
	movq	%r14, %rsi
	callq	*%rax
	movl	%eax, %ecx
	movl	$1, %eax
	cmpl	$2, %ecx
	je	.LBB29_91
.LBB29_9:                               # %if.end.19
	movq	9576(%r14), %rbx
	movl	$.L.str.34, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$2, %rcx
	ja	.LBB29_15
# BB#10:                                # %cond.true.26
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB29_16
# BB#11:                                # %cond.true.26
	testl	%eax, %eax
	jne	.LBB29_16
# BB#12:                                # %if.then.36
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB29_16
# BB#13:                                # %if.then.36
	testl	%eax, %eax
	jne	.LBB29_16
# BB#14:                                # %if.then.46
	movzbl	2(%rbx), %eax
	addl	$-43, %eax
	jmp	.LBB29_16
.LBB29_15:                              # %cond.false.67
	movl	$.L.str.34, %esi
	movl	$3, %edx
	movq	%rbx, %rdi
	callq	strncmp
.LBB29_16:                              # %cond.end.70
	testl	%eax, %eax
	movl	$3, %eax
	movl	$13, %ecx
	cmoveq	%rax, %rcx
	addq	%rcx, %rbx
	jmp	.LBB29_17
	.align	16, 0x90
.LBB29_19:                              # %while.body
                                        #   in Loop: Header=BB29_17 Depth=1
	incq	%rbx
.LBB29_17:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %ebp
	cmpl	$32, %ebp
	je	.LBB29_19
# BB#18:                                # %while.cond
                                        #   in Loop: Header=BB29_17 Depth=1
	movzbl	%bpl, %eax
	cmpl	$9, %eax
	je	.LBB29_19
# BB#20:                                # %while.end
	movl	$.L.str.74, %edi
	callq	strlen
	cmpq	$4, %rax
	ja	.LBB29_30
# BB#21:                                # %land.lhs.true.90
	cmpq	$3, %rax
	ja	.LBB29_29
# BB#22:                                # %cond.true.94
	addl	$-97, %ebp
	jne	.LBB29_32
# BB#23:                                # %cond.true.94
	testq	%rax, %rax
	je	.LBB29_32
# BB#24:                                # %if.then.108
	movzbl	1(%rbx), %ebp
	addl	$-116, %ebp
	cmpq	$2, %rax
	jb	.LBB29_32
# BB#25:                                # %if.then.108
	testl	%ebp, %ebp
	jne	.LBB29_32
# BB#26:                                # %if.then.118
	movzbl	2(%rbx), %ebp
	addl	$-101, %ebp
	cmpq	$3, %rax
	jb	.LBB29_32
# BB#27:                                # %if.then.118
	testl	%ebp, %ebp
	jne	.LBB29_32
# BB#28:                                # %if.then.128
	movzbl	3(%rbx), %ebp
	addl	$-110, %ebp
	jmp	.LBB29_32
.LBB29_30:                              # %cond.false.141
	movl	$.L.str.74, %esi
	movl	$5, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB29_31
.LBB29_29:                              # %cond.false.137
	movl	$.L.str.74, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB29_31:                              # %cond.end.143
	movl	%eax, %ebp
.LBB29_32:                              # %cond.end.143
	testl	%ebp, %ebp
	je	.LBB29_33
# BB#36:                                # %if.else.163
	movl	$.L.str.75, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$6, %rcx
	ja	.LBB29_46
# BB#37:                                # %land.lhs.true.173
	cmpq	$3, %rcx
	ja	.LBB29_45
# BB#38:                                # %cond.true.177
	movzbl	(%rbx), %eax
	addl	$-40, %eax
	testq	%rcx, %rcx
	je	.LBB29_47
# BB#39:                                # %cond.true.177
	testl	%eax, %eax
	jne	.LBB29_47
# BB#40:                                # %if.then.191
	movzbl	1(%rbx), %eax
	addl	$-97, %eax
	cmpq	$2, %rcx
	jb	.LBB29_47
# BB#41:                                # %if.then.191
	testl	%eax, %eax
	jne	.LBB29_47
# BB#42:                                # %if.then.201
	movzbl	2(%rbx), %eax
	addl	$-116, %eax
	cmpq	$3, %rcx
	jb	.LBB29_47
# BB#43:                                # %if.then.201
	testl	%eax, %eax
	jne	.LBB29_47
# BB#44:                                # %if.then.211
	movzbl	3(%rbx), %eax
	addl	$-101, %eax
	jmp	.LBB29_47
.LBB29_33:                              # %if.then.147
	cmpl	$13, 1300(%r14)
	je	.LBB29_49
# BB#34:                                # %if.else
	movq	9912(%r14), %rax
	testq	%rax, %rax
	je	.LBB29_89
# BB#35:                                # %dsc_error.exit161
	movl	9584(%r14), %r8d
	movq	9576(%r14), %rcx
	movq	1288(%r14), %rdi
	movl	$9, %edx
	movq	%r14, %rsi
	callq	*%rax
	movl	%eax, %ecx
	movl	$1, %eax
	cmpl	$2, %ecx
	jne	.LBB29_89
	jmp	.LBB29_91
.LBB29_46:                              # %cond.false.224
	movl	$.L.str.75, %esi
	movl	$7, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB29_47
.LBB29_45:                              # %cond.false.220
	movl	$.L.str.75, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB29_47:                              # %cond.end.226
	testl	%eax, %eax
	je	.LBB29_48
# BB#50:                                # %if.else.236
	movl	$.L.str.95, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$5, %rcx
	ja	.LBB29_60
# BB#51:                                # %land.lhs.true.246
	cmpq	$3, %rcx
	ja	.LBB29_59
# BB#52:                                # %cond.true.250
	movzbl	(%rbx), %eax
	addl	$-65, %eax
	testq	%rcx, %rcx
	je	.LBB29_61
# BB#53:                                # %cond.true.250
	testl	%eax, %eax
	jne	.LBB29_61
# BB#54:                                # %if.then.264
	movzbl	1(%rbx), %eax
	addl	$-115, %eax
	cmpq	$2, %rcx
	jb	.LBB29_61
# BB#55:                                # %if.then.264
	testl	%eax, %eax
	jne	.LBB29_61
# BB#56:                                # %if.then.274
	movzbl	2(%rbx), %eax
	addl	$-99, %eax
	cmpq	$3, %rcx
	jb	.LBB29_61
# BB#57:                                # %if.then.274
	testl	%eax, %eax
	jne	.LBB29_61
# BB#58:                                # %if.then.284
	movzbl	3(%rbx), %eax
	addl	$-101, %eax
	jmp	.LBB29_61
.LBB29_48:                              # %if.then.230
	cmpl	$13, 1300(%r14)
	jne	.LBB29_89
	jmp	.LBB29_49
.LBB29_60:                              # %cond.false.297
	movl	$.L.str.95, %esi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB29_61
.LBB29_59:                              # %cond.false.293
	movl	$.L.str.95, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB29_61:                              # %cond.end.299
	testl	%eax, %eax
	je	.LBB29_62
# BB#63:                                # %if.else.305
	movl	$.L.str.96, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$6, %rcx
	ja	.LBB29_73
# BB#64:                                # %land.lhs.true.315
	cmpq	$3, %rcx
	ja	.LBB29_72
# BB#65:                                # %cond.true.319
	movzbl	(%rbx), %eax
	addl	$-68, %eax
	testq	%rcx, %rcx
	je	.LBB29_74
# BB#66:                                # %cond.true.319
	testl	%eax, %eax
	jne	.LBB29_74
# BB#67:                                # %if.then.333
	movzbl	1(%rbx), %eax
	addl	$-101, %eax
	cmpq	$2, %rcx
	jb	.LBB29_74
# BB#68:                                # %if.then.333
	testl	%eax, %eax
	jne	.LBB29_74
# BB#69:                                # %if.then.343
	movzbl	2(%rbx), %eax
	addl	$-115, %eax
	cmpq	$3, %rcx
	jb	.LBB29_74
# BB#70:                                # %if.then.343
	testl	%eax, %eax
	jne	.LBB29_74
# BB#71:                                # %if.then.353
	movzbl	3(%rbx), %eax
	addl	$-99, %eax
	jmp	.LBB29_74
.LBB29_62:                              # %if.then.303
	movl	$1, 1176(%r14)
	xorl	%eax, %eax
	jmp	.LBB29_91
.LBB29_73:                              # %cond.false.366
	movl	$.L.str.96, %esi
	movl	$7, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB29_74
.LBB29_72:                              # %cond.false.362
	movl	$.L.str.96, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB29_74:                              # %cond.end.368
	testl	%eax, %eax
	je	.LBB29_75
# BB#76:                                # %if.else.374
	movl	$.L.str.97, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$6, %rcx
	ja	.LBB29_86
# BB#77:                                # %land.lhs.true.384
	cmpq	$3, %rcx
	ja	.LBB29_85
# BB#78:                                # %cond.true.388
	movzbl	(%rbx), %eax
	addl	$-83, %eax
	testq	%rcx, %rcx
	je	.LBB29_87
# BB#79:                                # %cond.true.388
	testl	%eax, %eax
	jne	.LBB29_87
# BB#80:                                # %if.then.402
	movzbl	1(%rbx), %eax
	addl	$-112, %eax
	cmpq	$2, %rcx
	jb	.LBB29_87
# BB#81:                                # %if.then.402
	testl	%eax, %eax
	jne	.LBB29_87
# BB#82:                                # %if.then.412
	movzbl	2(%rbx), %eax
	addl	$-101, %eax
	cmpq	$3, %rcx
	jb	.LBB29_87
# BB#83:                                # %if.then.412
	testl	%eax, %eax
	jne	.LBB29_87
# BB#84:                                # %if.then.422
	movzbl	3(%rbx), %eax
	addl	$-99, %eax
	jmp	.LBB29_87
.LBB29_75:                              # %if.then.372
	movl	$2, 1176(%r14)
	xorl	%eax, %eax
	jmp	.LBB29_91
.LBB29_86:                              # %cond.false.435
	movl	$.L.str.97, %esi
	movl	$7, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB29_87
.LBB29_85:                              # %cond.false.431
	movl	$.L.str.97, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB29_87:                              # %cond.end.437
	testl	%eax, %eax
	je	.LBB29_88
.LBB29_49:                              # %if.else.443
	movq	%r14, %rdi
	callq	dsc_unknown
	xorl	%eax, %eax
	jmp	.LBB29_91
.LBB29_88:                              # %if.then.441
	movl	$3, 1176(%r14)
.LBB29_89:                              # %if.end.448
	xorl	%eax, %eax
.LBB29_91:                              # %cleanup.449
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end29:
	.size	dsc_parse_order, .Lfunc_end29-dsc_parse_order
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_parse_document_media,@function
dsc_parse_document_media:               # @dsc_parse_document_media
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp211:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp212:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp213:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp214:
	.cfi_def_cfa_offset 40
	subq	$824, %rsp              # imm = 0x338
.Ltmp215:
	.cfi_def_cfa_offset 864
.Ltmp216:
	.cfi_offset %rbx, -40
.Ltmp217:
	.cfi_offset %r14, -32
.Ltmp218:
	.cfi_offset %r15, -24
.Ltmp219:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movl	$.L.str.46, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$15, %rcx
	ja	.LBB30_10
# BB#1:                                 # %land.lhs.true
	movq	9576(%r15), %rdi
	cmpq	$3, %rcx
	ja	.LBB30_9
# BB#2:                                 # %cond.true.3
	movzbl	(%rdi), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB30_11
# BB#3:                                 # %cond.true.3
	testl	%eax, %eax
	jne	.LBB30_11
# BB#4:                                 # %if.then
	movzbl	1(%rdi), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB30_11
# BB#5:                                 # %if.then
	testl	%eax, %eax
	jne	.LBB30_11
# BB#6:                                 # %if.then.21
	movzbl	2(%rdi), %eax
	addl	$-68, %eax
	cmpq	$3, %rcx
	jb	.LBB30_11
# BB#7:                                 # %if.then.21
	testl	%eax, %eax
	jne	.LBB30_11
# BB#8:                                 # %if.then.31
	movzbl	3(%rdi), %eax
	addl	$-111, %eax
	jmp	.LBB30_11
.LBB30_10:                              # %cond.false.41
	movq	9576(%r15), %rdi
	movl	$.L.str.46, %esi
	movl	$16, %edx
	callq	strncmp
	jmp	.LBB30_11
.LBB30_9:                               # %cond.false
	movl	$.L.str.46, %esi
	callq	strcmp
.LBB30_11:                              # %cond.end.44
	movl	$16, %ebp
	testl	%eax, %eax
	je	.LBB30_20
# BB#12:                                # %if.else
	movl	$.L.str.34, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	9576(%r15), %rdi
	cmpq	$2, %rcx
	ja	.LBB30_18
# BB#13:                                # %cond.true.62
	movzbl	(%rdi), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB30_19
# BB#14:                                # %cond.true.62
	testl	%eax, %eax
	jne	.LBB30_19
# BB#15:                                # %if.then.77
	movzbl	1(%rdi), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB30_19
# BB#16:                                # %if.then.77
	testl	%eax, %eax
	jne	.LBB30_19
# BB#17:                                # %if.then.87
	movzbl	2(%rdi), %eax
	addl	$-43, %eax
	jmp	.LBB30_19
.LBB30_18:                              # %cond.false.111
	movl	$.L.str.34, %esi
	movl	$3, %edx
	callq	strncmp
.LBB30_19:                              # %cond.end.114
	movl	$-1, %r14d
	movl	$3, %ebp
	testl	%eax, %eax
	jne	.LBB30_34
.LBB30_20:                              # %if.end.121
	movl	%ebp, 820(%rsp)
	movl	9584(%r15), %esi
	xorl	%r14d, %r14d
	movl	%esi, %ecx
	subl	%ebp, %ecx
	jbe	.LBB30_34
# BB#21:                                # %for.body.lr.ph
	movq	9576(%r15), %rdx
	movl	%ebp, %ebx
	movabsq	$4294977024, %r8        # imm = 0x100002600
	movq	%rbx, %rax
.LBB30_22:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdx,%rax), %edi
	cmpq	$32, %rdi
	ja	.LBB30_25
# BB#23:                                # %for.body
                                        #   in Loop: Header=BB30_22 Depth=1
	btq	%rdi, %r8
	jae	.LBB30_25
# BB#24:                                # %for.inc
                                        #   in Loop: Header=BB30_22 Depth=1
	leal	1(%rax), %edi
	movl	%edi, 820(%rsp)
	incq	%rax
	cmpl	%esi, %eax
	jb	.LBB30_22
	jmp	.LBB30_34
.LBB30_25:                              # %if.then.151
	xorps	%xmm0, %xmm0
	movups	%xmm0, 792(%rsp)
	movl	$0, 784(%rsp)
	movl	$0, 780(%rsp)
	movl	$0, 776(%rsp)
	movq	$0, 808(%rsp)
	addq	%rbx, %rdx
	leaq	512(%rsp), %rdi
	leaq	820(%rsp), %r8
	movl	$256, %esi              # imm = 0x100
	callq	dsc_copy_string
	movq	%rax, 768(%rsp)
	movl	820(%rsp), %ebx
	testl	%ebx, %ebx
	je	.LBB30_31
# BB#26:                                # %if.end.172
	addl	%ebp, %ebx
	movl	%ebx, %edi
	addq	9576(%r15), %rdi
	movl	9584(%r15), %esi
	subl	%ebx, %esi
	leaq	820(%rsp), %rdx
	callq	dsc_get_real
	movss	%xmm0, 776(%rsp)
	movl	820(%rsp), %ebp
	testl	%ebp, %ebp
	je	.LBB30_31
# BB#27:                                # %if.end.183
	addl	%ebx, %ebp
	movl	%ebp, %edi
	addq	9576(%r15), %rdi
	movl	9584(%r15), %esi
	subl	%ebp, %esi
	leaq	820(%rsp), %rdx
	callq	dsc_get_real
	movss	%xmm0, 780(%rsp)
	movl	820(%rsp), %ebx
	testl	%ebx, %ebx
	je	.LBB30_31
# BB#28:                                # %if.end.194
	addl	%ebp, %ebx
	movl	%ebx, %edi
	addq	9576(%r15), %rdi
	movl	9584(%r15), %esi
	subl	%ebx, %esi
	leaq	820(%rsp), %rdx
	callq	dsc_get_real
	movss	%xmm0, 784(%rsp)
	movl	820(%rsp), %ebp
	testl	%ebp, %ebp
	je	.LBB30_31
# BB#29:                                # %if.end.206
	addl	%ebx, %ebp
	movl	%ebp, %edx
	addq	9576(%r15), %rdx
	movl	9584(%r15), %ecx
	subl	%ebp, %ecx
	leaq	256(%rsp), %rdi
	leaq	820(%rsp), %r8
	movl	$256, %esi              # imm = 0x100
	callq	dsc_copy_string
	movq	%rax, 792(%rsp)
	movl	820(%rsp), %eax
	testl	%eax, %eax
	je	.LBB30_31
# BB#30:                                # %if.end.218
	addl	%ebp, %eax
	movl	%eax, %edx
	addq	9576(%r15), %rdx
	movl	9584(%r15), %ecx
	subl	%eax, %ecx
	leaq	(%rsp), %rdi
	leaq	820(%rsp), %r8
	movl	$256, %esi              # imm = 0x100
	callq	dsc_copy_string
	movq	%rax, 800(%rsp)
	cmpl	$0, 820(%rsp)
	je	.LBB30_31
# BB#32:                                # %if.else.222
	leaq	768(%rsp), %rsi
	movq	%r15, %rdi
	callq	dsc_add_media
	testl	%eax, %eax
	je	.LBB30_34
# BB#33:                                # %cleanup
	movl	$-1, %r14d
	jmp	.LBB30_34
.LBB30_31:                              # %if.then.221
	movq	%r15, %rdi
	callq	dsc_unknown
.LBB30_34:                              # %cleanup.231
	movl	%r14d, %eax
	addq	$824, %rsp              # imm = 0x338
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	dsc_parse_document_media, .Lfunc_end30-dsc_parse_document_media
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_copy_string,@function
dsc_copy_string:                        # @dsc_copy_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp220:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp221:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp222:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp223:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp224:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp225:
	.cfi_def_cfa_offset 56
.Ltmp226:
	.cfi_offset %rbx, -56
.Ltmp227:
	.cfi_offset %r12, -48
.Ltmp228:
	.cfi_offset %r13, -40
.Ltmp229:
	.cfi_offset %r14, -32
.Ltmp230:
	.cfi_offset %r15, -24
.Ltmp231:
	.cfi_offset %rbp, -16
	leal	-1(%rsi), %r9d
	cmpl	%esi, %ecx
	cmovbel	%ecx, %r9d
	xorl	%r12d, %r12d
	testl	%r9d, %r9d
	movl	$0, %r10d
	movl	$0, %ebx
	je	.LBB31_6
# BB#1:                                 # %land.rhs.lr.ph
	movl	%r9d, %eax
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB31_2:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdx,%rbx), %ecx
	cmpl	$32, %ecx
	je	.LBB31_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB31_2 Depth=1
	movzbl	%cl, %ecx
	cmpl	$9, %ecx
	jne	.LBB31_48
.LBB31_4:                               # %while.body
                                        #   in Loop: Header=BB31_2 Depth=1
	incq	%rbx
	cmpq	%rax, %rbx
	jb	.LBB31_2
# BB#5:                                 # %while.cond.while.cond.20.preheader.loopexit_crit_edge
	xorl	%r10d, %r10d
	jmp	.LBB31_6
.LBB31_48:                              # %land.lhs.true
	cmpl	$40, %ecx
	sete	%al
	movzbl	%al, %r10d
	leal	(%rbx,%r10), %ebx
.LBB31_6:                               # %while.cond.20.preheader
	cmpl	%r9d, %ebx
	jae	.LBB31_7
# BB#8:                                 # %while.body.23.lr.ph
	xorl	%r12d, %r12d
	movl	$-1, %r13d
	movl	%r10d, %esi
	.align	16, 0x90
.LBB31_9:                               # %while.body.23
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_20 Depth 2
	leal	1(%rbx), %r15d
	testl	%r10d, %r10d
	movl	%ebx, %eax
	movb	(%rdx,%rax), %al
	movl	%r12d, %r14d
	movb	%al, (%rdi,%r14)
	je	.LBB31_11
# BB#10:                                # %if.then.29
                                        #   in Loop: Header=BB31_9 Depth=1
	movzbl	%al, %ebp
	cmpl	$40, %ebp
	sete	%cl
	movzbl	%cl, %ecx
	addl	%esi, %ecx
	cmpl	$41, %ebp
	movl	$0, %esi
	cmovel	%r13d, %esi
	addl	%ecx, %esi
	jne	.LBB31_12
	jmp	.LBB31_45
	.align	16, 0x90
.LBB31_11:                              # %if.else
                                        #   in Loop: Header=BB31_9 Depth=1
	movzbl	%al, %ecx
	cmpl	$32, %ecx
	je	.LBB31_45
.LBB31_12:                              # %if.end.50
                                        #   in Loop: Header=BB31_9 Depth=1
	movzbl	%al, %eax
	cmpl	$92, %eax
	jne	.LBB31_13
# BB#15:                                # %land.lhs.true.64
                                        #   in Loop: Header=BB31_9 Depth=1
	leal	2(%rbx), %ebp
	cmpl	%r9d, %ebp
	jae	.LBB31_44
# BB#16:                                # %if.then.67
                                        #   in Loop: Header=BB31_9 Depth=1
	movl	%r15d, %eax
	movb	(%rdx,%rax), %r11b
	movb	%r11b, %al
	addb	$-48, %al
	movzbl	%al, %eax
	cmpl	$9, %eax
	ja	.LBB31_25
# BB#17:                                # %while.cond.78.preheader
                                        #   in Loop: Header=BB31_9 Depth=1
	xorl	%ebp, %ebp
	cmpl	%r9d, %r15d
	jae	.LBB31_24
# BB#18:                                # %while.cond.78.preheader
                                        #   in Loop: Header=BB31_9 Depth=1
	movb	%r11b, %al
	andb	$-8, %al
	movzbl	%al, %eax
	cmpl	$48, %eax
	jne	.LBB31_24
# BB#19:                                # %while.body.96.preheader
                                        #   in Loop: Header=BB31_9 Depth=1
	movq	%r10, -8(%rsp)          # 8-byte Spill
	leal	2(%rbx), %r13d
	leaq	(%rdx,%r13), %r15
	xorl	%r10d, %r10d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB31_20:                              # %while.body.96
                                        #   Parent Loop BB31_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r10, %rax
	shlb	$3, %bpl
	addb	%r11b, %bpl
	addb	$-48, %bpl
	leal	(%r13,%rax), %ecx
	cmpl	%r9d, %ecx
	jae	.LBB31_23
# BB#21:                                # %while.body.96
                                        #   in Loop: Header=BB31_20 Depth=2
	cmpl	$2, %eax
	je	.LBB31_23
# BB#22:                                # %while.body.96.land.lhs.true.83_crit_edge
                                        #   in Loop: Header=BB31_20 Depth=2
	movb	(%r15,%rax), %r11b
	movb	%r11b, %cl
	andb	$-8, %cl
	movzbl	%cl, %ecx
	leaq	1(%rax), %r10
	cmpl	$48, %ecx
	je	.LBB31_20
.LBB31_23:                              # %while.body.96.land.lhs.true.83_crit_edge.while.end.106.loopexit_crit_edge
                                        #   in Loop: Header=BB31_9 Depth=1
	leal	2(%rbx,%rax), %r15d
	movq	-8(%rsp), %r10          # 8-byte Reload
	movl	$-1, %r13d
.LBB31_24:                              # %while.end.106
                                        #   in Loop: Header=BB31_9 Depth=1
	movb	%bpl, (%rdi,%r14)
	jmp	.LBB31_44
	.align	16, 0x90
.LBB31_25:                              # %if.else.109
                                        #   in Loop: Header=BB31_9 Depth=1
	movsbl	%r11b, %eax
	cmpl	$101, %eax
	jg	.LBB31_33
# BB#26:                                # %if.else.109
                                        #   in Loop: Header=BB31_9 Depth=1
	cmpl	$91, %eax
	jg	.LBB31_30
# BB#27:                                # %if.else.109
                                        #   in Loop: Header=BB31_9 Depth=1
	movzbl	%r11b, %eax
	cmpl	$40, %eax
	jne	.LBB31_28
# BB#40:                                # %if.then.113
                                        #   in Loop: Header=BB31_9 Depth=1
	movb	$40, (%rdi,%r14)
	jmp	.LBB31_43
.LBB31_33:                              # %if.else.109
                                        #   in Loop: Header=BB31_9 Depth=1
	cmpl	$113, %eax
	jg	.LBB31_37
# BB#34:                                # %if.else.109
                                        #   in Loop: Header=BB31_9 Depth=1
	movzbl	%r11b, %eax
	cmpl	$102, %eax
	je	.LBB31_32
# BB#35:                                # %if.else.109
                                        #   in Loop: Header=BB31_9 Depth=1
	cmpl	$110, %eax
	jne	.LBB31_44
# BB#36:                                # %if.then.145
                                        #   in Loop: Header=BB31_9 Depth=1
	movb	$10, (%rdi,%r14)
	jmp	.LBB31_43
.LBB31_13:                              # %if.end.50
                                        #   in Loop: Header=BB31_9 Depth=1
	cmpl	$10, %eax
	je	.LBB31_45
# BB#14:                                # %if.end.50
                                        #   in Loop: Header=BB31_9 Depth=1
	cmpl	$13, %eax
	jne	.LBB31_44
	jmp	.LBB31_45
.LBB31_30:                              # %if.else.109
                                        #   in Loop: Header=BB31_9 Depth=1
	movzbl	%r11b, %eax
	cmpl	$92, %eax
	jne	.LBB31_31
# BB#42:                                # %if.then.169
                                        #   in Loop: Header=BB31_9 Depth=1
	movb	$92, (%rdi,%r14)
	jmp	.LBB31_43
.LBB31_37:                              # %if.else.109
                                        #   in Loop: Header=BB31_9 Depth=1
	movzbl	%r11b, %eax
	cmpl	$114, %eax
	jne	.LBB31_38
# BB#41:                                # %if.then.153
                                        #   in Loop: Header=BB31_9 Depth=1
	movb	$13, (%rdi,%r14)
	jmp	.LBB31_43
.LBB31_28:                              # %if.else.109
                                        #   in Loop: Header=BB31_9 Depth=1
	cmpl	$41, %eax
	jne	.LBB31_44
# BB#29:                                # %if.then.121
                                        #   in Loop: Header=BB31_9 Depth=1
	movb	$41, (%rdi,%r14)
	jmp	.LBB31_43
.LBB31_31:                              # %if.else.109
                                        #   in Loop: Header=BB31_9 Depth=1
	cmpl	$98, %eax
	jne	.LBB31_44
.LBB31_32:                              # %if.then.137
                                        #   in Loop: Header=BB31_9 Depth=1
	movb	$8, (%rdi,%r14)
	jmp	.LBB31_43
.LBB31_38:                              # %if.else.109
                                        #   in Loop: Header=BB31_9 Depth=1
	cmpl	$116, %eax
	jne	.LBB31_44
# BB#39:                                # %if.then.161
                                        #   in Loop: Header=BB31_9 Depth=1
	movb	$9, (%rdi,%r14)
.LBB31_43:                              # %if.end.183
                                        #   in Loop: Header=BB31_9 Depth=1
	movl	%ebp, %r15d
	.align	16, 0x90
.LBB31_44:                              # %if.end.183
                                        #   in Loop: Header=BB31_9 Depth=1
	incl	%r12d
	cmpl	%r9d, %r15d
	movl	%r15d, %ebx
	jb	.LBB31_9
	jmp	.LBB31_45
.LBB31_7:
	movl	%ebx, %r15d
.LBB31_45:                              # %while.end.185
	movl	%r12d, %eax
	movb	$0, (%rdi,%rax)
	testq	%r8, %r8
	je	.LBB31_47
# BB#46:                                # %if.then.190
	movl	%r15d, (%r8)
.LBB31_47:                              # %if.end.191
	movq	%rdi, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	dsc_copy_string, .Lfunc_end31-dsc_copy_string
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_get_real,@function
dsc_get_real:                           # @dsc_get_real
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp232:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp233:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp234:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp235:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp236:
	.cfi_def_cfa_offset 48
	subq	$256, %rsp              # imm = 0x100
.Ltmp237:
	.cfi_def_cfa_offset 304
.Ltmp238:
	.cfi_offset %rbx, -48
.Ltmp239:
	.cfi_offset %r12, -40
.Ltmp240:
	.cfi_offset %r14, -32
.Ltmp241:
	.cfi_offset %r15, -24
.Ltmp242:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rdi, %r15
	movl	%esi, %eax
	cmpl	$255, %esi
	movl	$255, %r12d
	cmovbq	%rax, %r12
	movl	$255, %ebp
	cmovbl	%esi, %ebp
	xorl	%ebx, %ebx
	testl	%ebp, %ebp
	je	.LBB32_3
	.align	16, 0x90
.LBB32_1:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r15,%rbx), %eax
	cmpl	$9, %eax
	je	.LBB32_19
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB32_1 Depth=1
	movzbl	%al, %eax
	cmpl	$32, %eax
	jne	.LBB32_3
.LBB32_19:                              # %while.body
                                        #   in Loop: Header=BB32_1 Depth=1
	incq	%rbx
	cmpq	%r12, %rbx
	jb	.LBB32_1
.LBB32_3:                               # %while.cond.14.preheader
	xorl	%ecx, %ecx
	cmpl	%ebp, %ebx
	jae	.LBB32_9
# BB#4:                                 # %while.body.17.lr.ph
	callq	__ctype_b_loc
	movl	%ebx, %ebx
	leaq	(%r15,%rbx), %rdx
	xorl	%ecx, %ecx
	movabsq	$288230376218820621, %r8 # imm = 0x40000000400000D
	.align	16, 0x90
.LBB32_5:                               # %while.body.17
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdx,%rcx), %edi
	movb	%dil, (%rsp,%rcx)
	movq	(%rax), %rsi
	testb	$8, 1(%rsi,%rdi,2)
	jne	.LBB32_17
# BB#6:                                 # %switch.early.test
                                        #   in Loop: Header=BB32_5 Depth=1
	addb	$-43, %dil
	movzbl	%dil, %edi
	cmpl	$58, %edi
	ja	.LBB32_8
# BB#7:                                 # %switch.early.test
                                        #   in Loop: Header=BB32_5 Depth=1
	btq	%rdi, %r8
	jae	.LBB32_8
.LBB32_17:                              # %if.end
                                        #   in Loop: Header=BB32_5 Depth=1
	leaq	1(%rbx,%rcx), %rdi
	incq	%rcx
	cmpq	%r12, %rdi
	jb	.LBB32_5
# BB#18:                                # %while.cond.14.while.cond.48.preheader_crit_edge
	movl	%edi, %ebx
	jmp	.LBB32_9
.LBB32_8:                               # %switch.early.test.while.cond.48.preheader_crit_edge
	addq	%rcx, %rbx
.LBB32_9:                               # %while.cond.48.preheader
	cmpl	%ebp, %ebx
	jae	.LBB32_14
# BB#10:                                # %land.rhs.51.lr.ph
	movl	%ebx, %ebx
	.align	16, 0x90
.LBB32_11:                              # %land.rhs.51
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r15,%rbx), %eax
	cmpl	$32, %eax
	je	.LBB32_13
# BB#12:                                # %land.rhs.51
                                        #   in Loop: Header=BB32_11 Depth=1
	movzbl	%al, %eax
	cmpl	$9, %eax
	jne	.LBB32_14
.LBB32_13:                              # %while.body.65
                                        #   in Loop: Header=BB32_11 Depth=1
	incq	%rbx
	cmpq	%r12, %rbx
	jb	.LBB32_11
.LBB32_14:                              # %while.end.67
	movslq	%ecx, %rax
	movb	$0, (%rsp,%rax)
	testq	%r14, %r14
	je	.LBB32_16
# BB#15:                                # %if.then.72
	movl	%ebx, (%r14)
.LBB32_16:                              # %if.end.73
	leaq	(%rsp), %rdi
	xorl	%esi, %esi
	callq	strtod
	cvtsd2ss	%xmm0, %xmm0
	addq	$256, %rsp              # imm = 0x100
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end32:
	.size	dsc_get_real, .Lfunc_end32-dsc_get_real
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI33_0:
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
.LCPI33_1:
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
.LCPI33_2:
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI33_3:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	dsc_parse_process_colours,@function
dsc_parse_process_colours:              # @dsc_parse_process_colours
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp243:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp244:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp245:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp246:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp247:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp248:
	.cfi_def_cfa_offset 56
	subq	$280, %rsp              # imm = 0x118
.Ltmp249:
	.cfi_def_cfa_offset 336
.Ltmp250:
	.cfi_offset %rbx, -56
.Ltmp251:
	.cfi_offset %r12, -48
.Ltmp252:
	.cfi_offset %r13, -40
.Ltmp253:
	.cfi_offset %r14, -32
.Ltmp254:
	.cfi_offset %r15, -24
.Ltmp255:
	.cfi_offset %rbp, -16
	movq	%rdi, %r12
	movl	$.L.str.63, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$23, %rcx
	ja	.LBB33_10
# BB#1:                                 # %land.lhs.true
	movq	9576(%r12), %rdi
	cmpq	$3, %rcx
	ja	.LBB33_9
# BB#2:                                 # %cond.true.3
	movzbl	(%rdi), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB33_11
# BB#3:                                 # %cond.true.3
	testl	%eax, %eax
	jne	.LBB33_11
# BB#4:                                 # %if.then
	movzbl	1(%rdi), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB33_11
# BB#5:                                 # %if.then
	testl	%eax, %eax
	jne	.LBB33_11
# BB#6:                                 # %if.then.21
	movzbl	2(%rdi), %eax
	addl	$-68, %eax
	cmpq	$3, %rcx
	jb	.LBB33_11
# BB#7:                                 # %if.then.21
	testl	%eax, %eax
	jne	.LBB33_11
# BB#8:                                 # %if.then.31
	movzbl	3(%rdi), %eax
	addl	$-111, %eax
	jmp	.LBB33_11
.LBB33_10:                              # %cond.false.41
	movq	9576(%r12), %rdi
	movl	$.L.str.63, %esi
	movl	$24, %edx
	callq	strncmp
	jmp	.LBB33_11
.LBB33_9:                               # %cond.false
	movl	$.L.str.63, %esi
	callq	strcmp
.LBB33_11:                              # %cond.end.44
	movl	$24, %r13d
	testl	%eax, %eax
	je	.LBB33_20
# BB#12:                                # %if.else
	movl	$.L.str.34, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	9576(%r12), %rdi
	cmpq	$2, %rcx
	ja	.LBB33_18
# BB#13:                                # %cond.true.62
	movzbl	(%rdi), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB33_19
# BB#14:                                # %cond.true.62
	testl	%eax, %eax
	jne	.LBB33_19
# BB#15:                                # %if.then.77
	movzbl	1(%rdi), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB33_19
# BB#16:                                # %if.then.77
	testl	%eax, %eax
	jne	.LBB33_19
# BB#17:                                # %if.then.87
	movzbl	2(%rdi), %eax
	addl	$-43, %eax
	jmp	.LBB33_19
.LBB33_18:                              # %cond.false.111
	movl	$.L.str.34, %esi
	movl	$3, %edx
	callq	strncmp
.LBB33_19:                              # %cond.end.114
	movl	$-1, %ecx
	movl	$3, %r13d
	testl	%eax, %eax
	jne	.LBB33_104
.LBB33_20:                              # %if.end.121
	leaq	16(%rsp), %rdi
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	movl	%r13d, 276(%rsp)
	movl	9584(%r12), %eax
	movq	9576(%r12), %rbx
	cmpl	%eax, %r13d
	jae	.LBB33_25
# BB#21:                                # %for.body.preheader
	movl	%r13d, %ecx
	movabsq	$4294977024, %rdx       # imm = 0x100002600
	xorl	%r14d, %r14d
.LBB33_22:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx,%rcx), %esi
	cmpq	$32, %rsi
	ja	.LBB33_26
# BB#23:                                # %for.body
                                        #   in Loop: Header=BB33_22 Depth=1
	btq	%rsi, %rdx
	jae	.LBB33_26
# BB#24:                                # %for.inc
                                        #   in Loop: Header=BB33_22 Depth=1
	leal	1(%rcx), %esi
	movl	%esi, 276(%rsp)
	incq	%rcx
	cmpl	%eax, %ecx
	jb	.LBB33_22
.LBB33_25:
	movl	$1, %r14d
	jmp	.LBB33_26
	.align	16, 0x90
.LBB33_28:                              # %while.body
                                        #   in Loop: Header=BB33_26 Depth=1
	incl	%r13d
.LBB33_26:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	%r13d, %eax
	movzbl	(%rbx,%rax), %ebp
	cmpl	$32, %ebp
	je	.LBB33_28
# BB#27:                                # %while.cond
                                        #   in Loop: Header=BB33_26 Depth=1
	movzbl	%bpl, %ecx
	cmpl	$9, %ecx
	je	.LBB33_28
# BB#29:                                # %while.end
	addq	%rax, %rbx
	movl	$.L.str.75, %edi
	callq	strlen
	cmpq	$6, %rax
	ja	.LBB33_39
# BB#30:                                # %land.lhs.true.174
	cmpq	$3, %rax
	ja	.LBB33_38
# BB#31:                                # %cond.true.178
	addl	$-40, %ebp
	jne	.LBB33_41
# BB#32:                                # %cond.true.178
	testq	%rax, %rax
	je	.LBB33_41
# BB#33:                                # %if.then.193
	movzbl	1(%rbx), %ebp
	addl	$-97, %ebp
	cmpq	$2, %rax
	jb	.LBB33_41
# BB#34:                                # %if.then.193
	testl	%ebp, %ebp
	jne	.LBB33_41
# BB#35:                                # %if.then.203
	movzbl	2(%rbx), %ebp
	addl	$-116, %ebp
	cmpq	$3, %rax
	jb	.LBB33_41
# BB#36:                                # %if.then.203
	testl	%ebp, %ebp
	jne	.LBB33_41
# BB#37:                                # %if.then.213
	movzbl	3(%rbx), %ebp
	addl	$-101, %ebp
	jmp	.LBB33_41
.LBB33_39:                              # %cond.false.229
	movl	$.L.str.75, %esi
	movl	$7, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB33_40
.LBB33_38:                              # %cond.false.222
	movl	$.L.str.75, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB33_40:                              # %cond.end.234
	movl	%eax, %ebp
.LBB33_41:                              # %cond.end.234
	xorl	%ecx, %ecx
	testl	%ebp, %ebp
	je	.LBB33_42
# BB#44:                                # %if.end.244
	testl	%r14d, %r14d
	jne	.LBB33_104
# BB#45:                                # %do.body.preheader
	leaq	16(%rsp), %r14
	jmp	.LBB33_46
	.align	16, 0x90
.LBB33_47:                              # %land.lhs.true.253
                                        #   in Loop: Header=BB33_46 Depth=1
	movq	%r14, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB33_102
# BB#48:                                # %if.then.257
                                        #   in Loop: Header=BB33_46 Depth=1
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	movq	9944(%r12), %rbx
	movq	%r12, %r14
	testq	%rbx, %rbx
	je	.LBB33_58
# BB#49:                                # %while.body.i.preheader
                                        #   in Loop: Header=BB33_46 Depth=1
	movzbl	16(%rsp), %r15d
	.align	16, 0x90
.LBB33_50:                              # %while.body.i
                                        #   Parent Loop BB33_46 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB33_53 Depth 3
	movq	(%rbx), %rbp
	testq	%rbp, %rbp
	je	.LBB33_56
# BB#51:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB33_50 Depth=2
	movzbl	(%rbp), %r12d
	callq	__ctype_toupper_loc
	movq	(%rax), %rax
	movl	(%rax,%r12,4), %edx
	movl	(%rax,%r15,4), %esi
	cmpl	%esi, %edx
	jne	.LBB33_55
# BB#52:                                # %while.body.i.i.preheader
                                        #   in Loop: Header=BB33_50 Depth=2
	incq	%rbp
	leaq	17(%rsp), %rcx
	.align	16, 0x90
.LBB33_53:                              # %while.body.i.i
                                        #   Parent Loop BB33_46 Depth=1
                                        #     Parent Loop BB33_50 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	%r12b, %r12b
	je	.LBB33_57
# BB#54:                                # %if.end.i.i
                                        #   in Loop: Header=BB33_53 Depth=3
	movzbl	(%rbp), %r12d
	movl	(%rax,%r12,4), %edx
	movzbl	(%rcx), %esi
	movl	(%rax,%rsi,4), %esi
	incq	%rbp
	incq	%rcx
	cmpl	%esi, %edx
	je	.LBB33_53
.LBB33_55:                              # %dsc_stricmp.exit.i
                                        #   in Loop: Header=BB33_50 Depth=2
	cmpl	%esi, %edx
	je	.LBB33_57
.LBB33_56:                              # %if.end.i
                                        #   in Loop: Header=BB33_50 Depth=2
	movq	48(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB33_50
	jmp	.LBB33_58
	.align	16, 0x90
.LBB33_57:                              # %dsc_find_colour.exit
                                        #   in Loop: Header=BB33_46 Depth=1
	testq	%rbx, %rbx
	jne	.LBB33_66
.LBB33_58:                              # %if.then.262
                                        #   in Loop: Header=BB33_46 Depth=1
	movq	%r14, %rbp
	movq	9880(%rbp), %rax
	testq	%rax, %rax
	je	.LBB33_60
# BB#59:                                # %if.then.i
                                        #   in Loop: Header=BB33_46 Depth=1
	movq	9896(%rbp), %rsi
	movl	$56, %edi
	callq	*%rax
	jmp	.LBB33_61
.LBB33_60:                              # %if.end.i.127
                                        #   in Loop: Header=BB33_46 Depth=1
	movl	$56, %edi
	callq	malloc
.LBB33_61:                              # %dsc_memalloc.exit
                                        #   in Loop: Header=BB33_46 Depth=1
	movq	%rax, %rbx
	leaq	16(%rsp), %r14
	movl	$-1, %ecx
	testq	%rbx, %rbx
	je	.LBB33_104
# BB#62:                                # %if.end.267
                                        #   in Loop: Header=BB33_46 Depth=1
	xorl	%esi, %esi
	movl	$56, %edx
	movq	%rbx, %rdi
	callq	memset
	movl	$0, 12(%rbx)
	movq	%r14, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	callq	dsc_alloc_string
	movq	%rax, (%rbx)
	movq	9944(%rbp), %rax
	testq	%rax, %rax
	je	.LBB33_63
	.align	16, 0x90
.LBB33_64:                              # %while.cond.281
                                        #   Parent Loop BB33_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rcx
	movq	48(%rcx), %rax
	testq	%rax, %rax
	jne	.LBB33_64
# BB#65:                                # %while.end.285
                                        #   in Loop: Header=BB33_46 Depth=1
	movq	%rbp, %r14
	movq	%rbx, 48(%rcx)
	jmp	.LBB33_66
.LBB33_63:                              # %if.then.276
                                        #   in Loop: Header=BB33_46 Depth=1
	movq	%rbx, 9944(%rbp)
	movq	%rbp, %r14
.LBB33_66:                              # %if.end.288
                                        #   in Loop: Header=BB33_46 Depth=1
	movl	$1, 8(%rbx)
	movzbl	16(%rsp), %r15d
	callq	__ctype_toupper_loc
	movq	(%rax), %rax
	movl	(%rax,%r15,4), %ebp
	movl	268(%rax), %edi
	cmpl	%edi, %ebp
	movl	$1, %edx
	movb	%r15b, %sil
	movl	%ebp, %ecx
	movq	%r14, %r12
	leaq	16(%rsp), %r14
	jne	.LBB33_69
	.align	16, 0x90
.LBB33_67:                              # %while.body.i.130
                                        #   Parent Loop BB33_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%sil, %sil
	je	.LBB33_70
# BB#68:                                # %if.end.i.132
                                        #   in Loop: Header=BB33_67 Depth=2
	movzbl	16(%rsp,%rdx), %esi
	movl	(%rax,%rsi,4), %ecx
	movzbl	.L.str.98(%rdx), %edi
	movl	(%rax,%rdi,4), %edi
	incq	%rdx
	cmpl	%edi, %ecx
	je	.LBB33_67
.LBB33_69:                              # %dsc_stricmp.exit
                                        #   in Loop: Header=BB33_46 Depth=1
	cmpl	%edi, %ecx
	jne	.LBB33_72
.LBB33_70:                              # %if.then.293
                                        #   in Loop: Header=BB33_46 Depth=1
	movl	$2, 12(%rbx)
	movss	.LCPI33_3(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB33_71
	.align	16, 0x90
.LBB33_72:                              # %if.else.295
                                        #   in Loop: Header=BB33_46 Depth=1
	movl	308(%rax), %edi
	cmpl	%edi, %ebp
	movl	$1, %edx
	movb	%r15b, %sil
	movl	%ebp, %ecx
	jne	.LBB33_75
	.align	16, 0x90
.LBB33_73:                              # %while.body.i.142
                                        #   Parent Loop BB33_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%sil, %sil
	je	.LBB33_76
# BB#74:                                # %if.end.i.150
                                        #   in Loop: Header=BB33_73 Depth=2
	movzbl	16(%rsp,%rdx), %esi
	movl	(%rax,%rsi,4), %ecx
	movzbl	.L.str.99(%rdx), %edi
	movl	(%rax,%rdi,4), %edi
	incq	%rdx
	cmpl	%edi, %ecx
	je	.LBB33_73
.LBB33_75:                              # %dsc_stricmp.exit156
                                        #   in Loop: Header=BB33_46 Depth=1
	cmpl	%edi, %ecx
	jne	.LBB33_77
.LBB33_76:                              # %if.then.300
                                        #   in Loop: Header=BB33_46 Depth=1
	movl	$2, 12(%rbx)
	movaps	.LCPI33_2(%rip), %xmm0  # xmm0 = [0.000000e+00,1.000000e+00,0.000000e+00,0.000000e+00]
	jmp	.LBB33_71
.LBB33_77:                              # %if.else.306
                                        #   in Loop: Header=BB33_46 Depth=1
	movl	356(%rax), %edi
	cmpl	%edi, %ebp
	movl	$1, %edx
	movb	%r15b, %sil
	movl	%ebp, %ecx
	jne	.LBB33_80
	.align	16, 0x90
.LBB33_78:                              # %while.body.i.165
                                        #   Parent Loop BB33_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%sil, %sil
	je	.LBB33_81
# BB#79:                                # %if.end.i.173
                                        #   in Loop: Header=BB33_78 Depth=2
	movzbl	16(%rsp,%rdx), %esi
	movl	(%rax,%rsi,4), %ecx
	movzbl	.L.str.100(%rdx), %edi
	movl	(%rax,%rdi,4), %edi
	incq	%rdx
	cmpl	%edi, %ecx
	je	.LBB33_78
.LBB33_80:                              # %dsc_stricmp.exit179
                                        #   in Loop: Header=BB33_46 Depth=1
	cmpl	%edi, %ecx
	jne	.LBB33_82
.LBB33_81:                              # %if.then.311
                                        #   in Loop: Header=BB33_46 Depth=1
	movl	$2, 12(%rbx)
	movaps	.LCPI33_1(%rip), %xmm0  # xmm0 = [0.000000e+00,0.000000e+00,1.000000e+00,0.000000e+00]
	jmp	.LBB33_71
.LBB33_82:                              # %if.else.317
                                        #   in Loop: Header=BB33_46 Depth=1
	movl	264(%rax), %r8d
	cmpl	%r8d, %ebp
	movl	$1, %esi
	movb	%r15b, %dil
	movl	%r8d, %edx
	movl	%ebp, %ecx
	jne	.LBB33_85
	.align	16, 0x90
.LBB33_83:                              # %while.body.i.188
                                        #   Parent Loop BB33_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%dil, %dil
	je	.LBB33_86
# BB#84:                                # %if.end.i.196
                                        #   in Loop: Header=BB33_83 Depth=2
	movzbl	16(%rsp,%rsi), %edi
	movl	(%rax,%rdi,4), %ecx
	movzbl	.L.str.101(%rsi), %edx
	movl	(%rax,%rdx,4), %edx
	incq	%rsi
	cmpl	%edx, %ecx
	je	.LBB33_83
.LBB33_85:                              # %dsc_stricmp.exit202
                                        #   in Loop: Header=BB33_46 Depth=1
	cmpl	%edx, %ecx
	jne	.LBB33_87
.LBB33_86:                              # %if.then.322
                                        #   in Loop: Header=BB33_46 Depth=1
	movl	$2, 12(%rbx)
	movaps	.LCPI33_0(%rip), %xmm0  # xmm0 = [0.000000e+00,0.000000e+00,0.000000e+00,1.000000e+00]
	.align	16, 0x90
.LBB33_71:                              # %do.cond
                                        #   in Loop: Header=BB33_46 Depth=1
	movups	%xmm0, 28(%rbx)
	movl	12(%rsp), %ebp          # 4-byte Reload
.LBB33_102:                             # %do.cond
                                        #   in Loop: Header=BB33_46 Depth=1
	addl	%ebp, %r13d
	cmpl	$0, 276(%rsp)
	jne	.LBB33_46
	jmp	.LBB33_103
.LBB33_87:                              # %if.else.328
                                        #   in Loop: Header=BB33_46 Depth=1
	movl	328(%rax), %ecx
	cmpl	%ecx, %ebp
	movl	$1, %esi
	movb	%r15b, %dil
	movl	%ebp, %edx
	jne	.LBB33_90
.LBB33_88:                              # %while.body.i.211
                                        #   Parent Loop BB33_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%dil, %dil
	je	.LBB33_91
# BB#89:                                # %if.end.i.219
                                        #   in Loop: Header=BB33_88 Depth=2
	movzbl	16(%rsp,%rsi), %edi
	movl	(%rax,%rdi,4), %edx
	movzbl	.L.str.102(%rsi), %ecx
	movl	(%rax,%rcx,4), %ecx
	incq	%rsi
	cmpl	%ecx, %edx
	je	.LBB33_88
.LBB33_90:                              # %dsc_stricmp.exit225
                                        #   in Loop: Header=BB33_46 Depth=1
	cmpl	%ecx, %edx
	jne	.LBB33_92
.LBB33_91:                              # %if.then.333
                                        #   in Loop: Header=BB33_46 Depth=1
	movl	$1, 12(%rbx)
	movl	$1065353216, 16(%rbx)   # imm = 0x3F800000
	movq	$0, 20(%rbx)
	movl	12(%rsp), %ebp          # 4-byte Reload
	jmp	.LBB33_102
.LBB33_92:                              # %if.else.335
                                        #   in Loop: Header=BB33_46 Depth=1
	movl	284(%rax), %ecx
	cmpl	%ecx, %ebp
	movl	$1, %esi
	movb	%r15b, %dil
	movl	%ebp, %edx
	jne	.LBB33_95
.LBB33_93:                              # %while.body.i.234
                                        #   Parent Loop BB33_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%dil, %dil
	je	.LBB33_96
# BB#94:                                # %if.end.i.242
                                        #   in Loop: Header=BB33_93 Depth=2
	movzbl	16(%rsp,%rsi), %edi
	movl	(%rax,%rdi,4), %edx
	movzbl	.L.str.103(%rsi), %ecx
	movl	(%rax,%rcx,4), %ecx
	incq	%rsi
	cmpl	%ecx, %edx
	je	.LBB33_93
.LBB33_95:                              # %dsc_stricmp.exit248
                                        #   in Loop: Header=BB33_46 Depth=1
	cmpl	%ecx, %edx
	jne	.LBB33_97
.LBB33_96:                              # %if.then.340
                                        #   in Loop: Header=BB33_46 Depth=1
	movl	$1, 12(%rbx)
	movl	$1065353216, 20(%rbx)   # imm = 0x3F800000
	movl	$0, 24(%rbx)
	movl	$0, 16(%rbx)
	movl	12(%rsp), %ebp          # 4-byte Reload
	jmp	.LBB33_102
.LBB33_97:                              # %if.else.345
                                        #   in Loop: Header=BB33_46 Depth=1
	cmpl	%r8d, %ebp
	movl	$1, %esi
	jne	.LBB33_100
.LBB33_98:                              # %while.body.i.257
                                        #   Parent Loop BB33_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r15b, %r15b
	movl	12(%rsp), %ebp          # 4-byte Reload
	je	.LBB33_101
# BB#99:                                # %if.end.i.265
                                        #   in Loop: Header=BB33_98 Depth=2
	movzbl	16(%rsp,%rsi), %r15d
	movl	(%rax,%r15,4), %ebp
	movzbl	.L.str.104(%rsi), %ecx
	movl	(%rax,%rcx,4), %r8d
	incq	%rsi
	cmpl	%r8d, %ebp
	je	.LBB33_98
.LBB33_100:                             # %dsc_stricmp.exit271
                                        #   in Loop: Header=BB33_46 Depth=1
	cmpl	%r8d, %ebp
	movl	12(%rsp), %ebp          # 4-byte Reload
	jne	.LBB33_102
.LBB33_101:                             # %if.then.350
                                        #   in Loop: Header=BB33_46 Depth=1
	movl	$1, 12(%rbx)
	movl	$1065353216, 24(%rbx)   # imm = 0x3F800000
	movq	$0, 16(%rbx)
	jmp	.LBB33_102
	.align	16, 0x90
.LBB33_46:                              # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_50 Depth 2
                                        #       Child Loop BB33_53 Depth 3
                                        #     Child Loop BB33_64 Depth 2
                                        #     Child Loop BB33_67 Depth 2
                                        #     Child Loop BB33_73 Depth 2
                                        #     Child Loop BB33_78 Depth 2
                                        #     Child Loop BB33_83 Depth 2
                                        #     Child Loop BB33_88 Depth 2
                                        #     Child Loop BB33_93 Depth 2
                                        #     Child Loop BB33_98 Depth 2
	movl	%r13d, %edx
	addq	9576(%r12), %rdx
	movl	9584(%r12), %ecx
	subl	%r13d, %ecx
	movl	$256, %esi              # imm = 0x100
	movq	%r14, %rdi
	leaq	276(%rsp), %r8
	callq	dsc_copy_string
	movl	276(%rsp), %ebp
	testl	%ebp, %ebp
	jne	.LBB33_47
.LBB33_103:
	xorl	%ecx, %ecx
	jmp	.LBB33_104
.LBB33_42:                              # %if.then.238
	cmpl	$1, 1300(%r12)
	je	.LBB33_104
# BB#43:                                # %if.else.242
	movq	%r12, %rdi
	callq	dsc_unknown
	movl	$1, %ecx
.LBB33_104:                             # %cleanup
	movl	%ecx, %eax
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end33:
	.size	dsc_parse_process_colours, .Lfunc_end33-dsc_parse_process_colours
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_parse_custom_colours,@function
dsc_parse_custom_colours:               # @dsc_parse_custom_colours
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp256:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp257:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp258:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp259:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp260:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp261:
	.cfi_def_cfa_offset 56
	subq	$280, %rsp              # imm = 0x118
.Ltmp262:
	.cfi_def_cfa_offset 336
.Ltmp263:
	.cfi_offset %rbx, -56
.Ltmp264:
	.cfi_offset %r12, -48
.Ltmp265:
	.cfi_offset %r13, -40
.Ltmp266:
	.cfi_offset %r14, -32
.Ltmp267:
	.cfi_offset %r15, -24
.Ltmp268:
	.cfi_offset %rbp, -16
	movq	%rdi, %r12
	movl	$.L.str.64, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$22, %rcx
	ja	.LBB34_10
# BB#1:                                 # %land.lhs.true
	movq	9576(%r12), %rdi
	cmpq	$3, %rcx
	ja	.LBB34_9
# BB#2:                                 # %cond.true.3
	movzbl	(%rdi), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB34_11
# BB#3:                                 # %cond.true.3
	testl	%eax, %eax
	jne	.LBB34_11
# BB#4:                                 # %if.then
	movzbl	1(%rdi), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB34_11
# BB#5:                                 # %if.then
	testl	%eax, %eax
	jne	.LBB34_11
# BB#6:                                 # %if.then.21
	movzbl	2(%rdi), %eax
	addl	$-68, %eax
	cmpq	$3, %rcx
	jb	.LBB34_11
# BB#7:                                 # %if.then.21
	testl	%eax, %eax
	jne	.LBB34_11
# BB#8:                                 # %if.then.31
	movzbl	3(%rdi), %eax
	addl	$-111, %eax
	jmp	.LBB34_11
.LBB34_10:                              # %cond.false.41
	movq	9576(%r12), %rdi
	movl	$.L.str.64, %esi
	movl	$23, %edx
	callq	strncmp
	jmp	.LBB34_11
.LBB34_9:                               # %cond.false
	movl	$.L.str.64, %esi
	callq	strcmp
.LBB34_11:                              # %cond.end.44
	movl	$23, %r15d
	testl	%eax, %eax
	je	.LBB34_20
# BB#12:                                # %if.else
	movl	$.L.str.34, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	9576(%r12), %rdi
	cmpq	$2, %rcx
	ja	.LBB34_18
# BB#13:                                # %cond.true.62
	movzbl	(%rdi), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB34_19
# BB#14:                                # %cond.true.62
	testl	%eax, %eax
	jne	.LBB34_19
# BB#15:                                # %if.then.77
	movzbl	1(%rdi), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB34_19
# BB#16:                                # %if.then.77
	testl	%eax, %eax
	jne	.LBB34_19
# BB#17:                                # %if.then.87
	movzbl	2(%rdi), %eax
	addl	$-43, %eax
	jmp	.LBB34_19
.LBB34_18:                              # %cond.false.111
	movl	$.L.str.34, %esi
	movl	$3, %edx
	callq	strncmp
.LBB34_19:                              # %cond.end.114
	movl	$-1, %ebp
	movl	$3, %r15d
	testl	%eax, %eax
	jne	.LBB34_68
.LBB34_20:                              # %if.end.121
	leaq	16(%rsp), %rdi
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	movl	%r15d, 276(%rsp)
	movl	9584(%r12), %eax
	movq	9576(%r12), %r14
	cmpl	%eax, %r15d
	jae	.LBB34_25
# BB#21:                                # %for.body.preheader
	movl	%r15d, %ecx
	movabsq	$4294977024, %rdx       # imm = 0x100002600
	xorl	%r13d, %r13d
.LBB34_22:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r14,%rcx), %esi
	cmpq	$32, %rsi
	ja	.LBB34_26
# BB#23:                                # %for.body
                                        #   in Loop: Header=BB34_22 Depth=1
	btq	%rsi, %rdx
	jae	.LBB34_26
# BB#24:                                # %for.inc
                                        #   in Loop: Header=BB34_22 Depth=1
	leal	1(%rcx), %esi
	movl	%esi, 276(%rsp)
	incq	%rcx
	cmpl	%eax, %ecx
	jb	.LBB34_22
.LBB34_25:
	movl	$1, %r13d
	jmp	.LBB34_26
	.align	16, 0x90
.LBB34_28:                              # %while.body
                                        #   in Loop: Header=BB34_26 Depth=1
	incl	%r15d
.LBB34_26:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	%r15d, %ebx
	movzbl	(%r14,%rbx), %ebp
	cmpl	$32, %ebp
	je	.LBB34_28
# BB#27:                                # %while.cond
                                        #   in Loop: Header=BB34_26 Depth=1
	movzbl	%bpl, %eax
	cmpl	$9, %eax
	je	.LBB34_28
# BB#29:                                # %while.end
	addq	%rbx, %r14
	movl	$.L.str.75, %edi
	callq	strlen
	cmpq	$6, %rax
	ja	.LBB34_39
# BB#30:                                # %land.lhs.true.174
	cmpq	$3, %rax
	ja	.LBB34_38
# BB#31:                                # %cond.true.178
	addl	$-40, %ebp
	jne	.LBB34_41
# BB#32:                                # %cond.true.178
	testq	%rax, %rax
	je	.LBB34_41
# BB#33:                                # %if.then.193
	movzbl	1(%r14), %ebp
	addl	$-97, %ebp
	cmpq	$2, %rax
	jb	.LBB34_41
# BB#34:                                # %if.then.193
	testl	%ebp, %ebp
	jne	.LBB34_41
# BB#35:                                # %if.then.203
	movzbl	2(%r14), %ebp
	addl	$-116, %ebp
	cmpq	$3, %rax
	jb	.LBB34_41
# BB#36:                                # %if.then.203
	testl	%ebp, %ebp
	jne	.LBB34_41
# BB#37:                                # %if.then.213
	movzbl	3(%r14), %ebp
	addl	$-101, %ebp
	jmp	.LBB34_41
.LBB34_39:                              # %cond.false.229
	movl	$.L.str.75, %esi
	movl	$7, %edx
	movq	%r14, %rdi
	callq	strncmp
	jmp	.LBB34_40
.LBB34_38:                              # %cond.false.222
	movl	$.L.str.75, %esi
	movq	%r14, %rdi
	callq	strcmp
.LBB34_40:                              # %cond.end.234
	movl	%eax, %ebp
.LBB34_41:                              # %cond.end.234
	testl	%ebp, %ebp
	je	.LBB34_42
# BB#44:                                # %if.end.244
	xorl	%ebp, %ebp
	testl	%r13d, %r13d
	jne	.LBB34_68
# BB#45:                                # %do.body.preheader
	addq	9576(%r12), %rbx
	movl	9584(%r12), %ecx
	subl	%r15d, %ecx
	leaq	16(%rsp), %rdi
	leaq	276(%rsp), %r8
	movl	$256, %esi              # imm = 0x100
	movq	%rbx, %rdx
	callq	dsc_copy_string
	movl	276(%rsp), %r13d
	testl	%r13d, %r13d
	je	.LBB34_68
# BB#46:                                # %land.lhs.true.253.lr.ph
	addl	%r15d, %r13d
	leaq	16(%rsp), %rbx
	.align	16, 0x90
.LBB34_47:                              # %land.lhs.true.253
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_50 Depth 2
                                        #       Child Loop BB34_53 Depth 3
                                        #     Child Loop BB34_64 Depth 2
	movq	%rbx, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB34_67
# BB#48:                                # %if.then.257
                                        #   in Loop: Header=BB34_47 Depth=1
	movq	9944(%r12), %rbx
	testq	%rbx, %rbx
	je	.LBB34_58
# BB#49:                                # %while.body.i.preheader
                                        #   in Loop: Header=BB34_47 Depth=1
	movzbl	16(%rsp), %ebp
	.align	16, 0x90
.LBB34_50:                              # %while.body.i
                                        #   Parent Loop BB34_47 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB34_53 Depth 3
	movq	(%rbx), %r15
	testq	%r15, %r15
	je	.LBB34_56
# BB#51:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB34_50 Depth=2
	movzbl	(%r15), %r14d
	callq	__ctype_toupper_loc
	movq	(%rax), %rax
	movl	(%rax,%r14,4), %edx
	movl	(%rax,%rbp,4), %esi
	cmpl	%esi, %edx
	jne	.LBB34_55
# BB#52:                                # %while.body.i.i.preheader
                                        #   in Loop: Header=BB34_50 Depth=2
	incq	%r15
	leaq	17(%rsp), %rcx
	.align	16, 0x90
.LBB34_53:                              # %while.body.i.i
                                        #   Parent Loop BB34_47 Depth=1
                                        #     Parent Loop BB34_50 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	%r14b, %r14b
	je	.LBB34_57
# BB#54:                                # %if.end.i.i
                                        #   in Loop: Header=BB34_53 Depth=3
	movzbl	(%r15), %r14d
	movl	(%rax,%r14,4), %edx
	movzbl	(%rcx), %esi
	movl	(%rax,%rsi,4), %esi
	incq	%r15
	incq	%rcx
	cmpl	%esi, %edx
	je	.LBB34_53
.LBB34_55:                              # %dsc_stricmp.exit.i
                                        #   in Loop: Header=BB34_50 Depth=2
	cmpl	%esi, %edx
	je	.LBB34_57
.LBB34_56:                              # %if.end.i
                                        #   in Loop: Header=BB34_50 Depth=2
	movq	48(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB34_50
	jmp	.LBB34_58
	.align	16, 0x90
.LBB34_57:                              # %dsc_find_colour.exit
                                        #   in Loop: Header=BB34_47 Depth=1
	testq	%rbx, %rbx
	jne	.LBB34_66
.LBB34_58:                              # %if.then.262
                                        #   in Loop: Header=BB34_47 Depth=1
	movq	9880(%r12), %rax
	testq	%rax, %rax
	je	.LBB34_60
# BB#59:                                # %if.then.i
                                        #   in Loop: Header=BB34_47 Depth=1
	movq	9896(%r12), %rsi
	movl	$56, %edi
	callq	*%rax
	jmp	.LBB34_61
.LBB34_60:                              # %if.end.i.95
                                        #   in Loop: Header=BB34_47 Depth=1
	movl	$56, %edi
	callq	malloc
.LBB34_61:                              # %dsc_memalloc.exit
                                        #   in Loop: Header=BB34_47 Depth=1
	movq	%rax, %rbx
	leaq	16(%rsp), %r14
	movl	$-1, %ebp
	testq	%rbx, %rbx
	je	.LBB34_68
# BB#62:                                # %if.end.267
                                        #   in Loop: Header=BB34_47 Depth=1
	xorl	%esi, %esi
	movl	$56, %edx
	movq	%rbx, %rdi
	callq	memset
	movq	%r14, %rdi
	callq	strlen
	movq	%r12, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	callq	dsc_alloc_string
	movq	%rax, (%rbx)
	movl	$0, 12(%rbx)
	movq	9944(%r12), %rax
	testq	%rax, %rax
	je	.LBB34_63
	.align	16, 0x90
.LBB34_64:                              # %while.cond.281
                                        #   Parent Loop BB34_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rcx
	movq	48(%rcx), %rax
	testq	%rax, %rax
	jne	.LBB34_64
# BB#65:                                # %while.end.285
                                        #   in Loop: Header=BB34_47 Depth=1
	movq	%rbx, 48(%rcx)
	jmp	.LBB34_66
.LBB34_63:                              # %if.then.276
                                        #   in Loop: Header=BB34_47 Depth=1
	movq	%rbx, 9944(%r12)
.LBB34_66:                              # %do.cond
                                        #   in Loop: Header=BB34_47 Depth=1
	movl	$2, 8(%rbx)
	xorl	%ebp, %ebp
	cmpl	$0, 276(%rsp)
	leaq	16(%rsp), %rbx
	je	.LBB34_68
.LBB34_67:                              # %do.body.backedge
                                        #   in Loop: Header=BB34_47 Depth=1
	movl	%r13d, %edx
	addq	9576(%r12), %rdx
	movl	9584(%r12), %ecx
	subl	%r13d, %ecx
	movl	$256, %esi              # imm = 0x100
	movq	%rbx, %rdi
	leaq	276(%rsp), %r8
	callq	dsc_copy_string
	movl	276(%rsp), %eax
	leal	(%r13,%rax), %r13d
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jne	.LBB34_47
	jmp	.LBB34_68
.LBB34_42:                              # %if.then.238
	xorl	%ebp, %ebp
	cmpl	$1, 1300(%r12)
	je	.LBB34_68
# BB#43:                                # %if.else.242
	movq	%r12, %rdi
	callq	dsc_unknown
	movl	$1, %ebp
.LBB34_68:                              # %cleanup
	movl	%ebp, %eax
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end34:
	.size	dsc_parse_custom_colours, .Lfunc_end34-dsc_parse_custom_colours
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_parse_media,@function
dsc_parse_media:                        # @dsc_parse_media
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp269:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp270:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp271:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp272:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp273:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp274:
	.cfi_def_cfa_offset 56
	subq	$296, %rsp              # imm = 0x128
.Ltmp275:
	.cfi_def_cfa_offset 352
.Ltmp276:
	.cfi_offset %rbx, -56
.Ltmp277:
	.cfi_offset %r12, -48
.Ltmp278:
	.cfi_offset %r13, -40
.Ltmp279:
	.cfi_offset %r14, -32
.Ltmp280:
	.cfi_offset %r15, -24
.Ltmp281:
	.cfi_offset %rbp, -16
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	movl	$.L.str.34, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	9576(%r15), %rbx
	cmpq	$2, %rcx
	ja	.LBB35_6
# BB#1:                                 # %cond.true.3
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB35_7
# BB#2:                                 # %cond.true.3
	testl	%eax, %eax
	jne	.LBB35_7
# BB#3:                                 # %if.then
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB35_7
# BB#4:                                 # %if.then
	testl	%eax, %eax
	jne	.LBB35_7
# BB#5:                                 # %if.then.21
	movzbl	2(%rbx), %eax
	addl	$-43, %eax
	jmp	.LBB35_7
.LBB35_6:                               # %cond.false.41
	movl	$.L.str.34, %esi
	movl	$3, %edx
	movq	%rbx, %rdi
	callq	strncmp
.LBB35_7:                               # %cond.end.44
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leal	3(%rax,%rax,8), %eax
	addq	%rax, %rbx
	movl	9584(%r15), %ecx
	subl	%eax, %ecx
	leaq	32(%rsp), %rdi
	movl	$255, %esi
	xorl	%r8d, %r8d
	movq	%rbx, %rdx
	callq	dsc_copy_string
	testq	%rax, %rax
	je	.LBB35_18
# BB#8:                                 # %for.cond.preheader
	movl	1192(%r15), %ebx
	testl	%ebx, %ebx
	je	.LBB35_18
# BB#9:                                 # %for.body.lr.ph
	movq	1200(%r15), %r12
	movb	32(%rsp), %al
	movb	%al, 15(%rsp)           # 1-byte Spill
	movzbl	%al, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB35_10:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_13 Depth 2
	movl	%r14d, %eax
	movq	(%r12,%rax,8), %r13
	movq	(%r13), %rbp
	testq	%rbp, %rbp
	je	.LBB35_17
# BB#11:                                # %land.lhs.true.58
                                        #   in Loop: Header=BB35_10 Depth=1
	callq	__ctype_toupper_loc
	movq	(%rax), %rax
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	(%rax,%rcx,4), %edx
	movzbl	(%rbp), %ecx
	movl	(%rax,%rcx,4), %edi
	cmpl	%edi, %edx
	jne	.LBB35_15
# BB#12:                                # %while.body.i.preheader
                                        #   in Loop: Header=BB35_10 Depth=1
	incq	%rbp
	leaq	33(%rsp), %rcx
	movb	15(%rsp), %dl           # 1-byte Reload
	movb	%dl, %sil
	.align	16, 0x90
.LBB35_13:                              # %while.body.i
                                        #   Parent Loop BB35_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%sil, %sil
	je	.LBB35_16
# BB#14:                                # %if.end.i
                                        #   in Loop: Header=BB35_13 Depth=2
	movzbl	(%rcx), %esi
	movl	(%rax,%rsi,4), %edx
	movzbl	(%rbp), %edi
	movl	(%rax,%rdi,4), %edi
	incq	%rcx
	incq	%rbp
	cmpl	%edi, %edx
	je	.LBB35_13
.LBB35_15:                              # %dsc_stricmp.exit
                                        #   in Loop: Header=BB35_10 Depth=1
	cmpl	%edi, %edx
	je	.LBB35_16
.LBB35_17:                              # %for.inc
                                        #   in Loop: Header=BB35_10 Depth=1
	incl	%r14d
	cmpl	%ebx, %r14d
	jb	.LBB35_10
.LBB35_18:                              # %if.end.72
	movq	%r15, %rdi
	callq	dsc_unknown
	jmp	.LBB35_19
.LBB35_16:                              # %if.then.67
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%r13, (%rax)
.LBB35_19:                              # %cleanup
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end35:
	.size	dsc_parse_media, .Lfunc_end35-dsc_parse_media
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_parse_viewing_orientation,@function
dsc_parse_viewing_orientation:          # @dsc_parse_viewing_orientation
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp282:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp283:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp284:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp285:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp286:
	.cfi_def_cfa_offset 64
.Ltmp287:
	.cfi_offset %rbx, -40
.Ltmp288:
	.cfi_offset %r14, -32
.Ltmp289:
	.cfi_offset %r15, -24
.Ltmp290:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB36_5
# BB#1:                                 # %if.then
	movq	9888(%r15), %rax
	testq	%rax, %rax
	je	.LBB36_3
# BB#2:                                 # %if.then.i
	movq	9896(%r15), %rsi
	callq	*%rax
	jmp	.LBB36_4
.LBB36_3:                               # %if.else.i
	callq	free
.LBB36_4:                               # %dsc_memfree.exit
	movq	$0, (%r14)
.LBB36_5:                               # %if.end
	movl	$.L.str.34, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	9576(%r15), %rbx
	cmpq	$2, %rcx
	ja	.LBB36_11
# BB#6:                                 # %cond.true.4
	movzbl	(%rbx), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB36_12
# BB#7:                                 # %cond.true.4
	testl	%eax, %eax
	jne	.LBB36_12
# BB#8:                                 # %if.then.13
	movzbl	1(%rbx), %eax
	addl	$-37, %eax
	cmpq	$2, %rcx
	jb	.LBB36_12
# BB#9:                                 # %if.then.13
	testl	%eax, %eax
	jne	.LBB36_12
# BB#10:                                # %if.then.23
	movzbl	2(%rbx), %eax
	addl	$-43, %eax
	jmp	.LBB36_12
.LBB36_11:                              # %cond.false.44
	movl	$.L.str.34, %esi
	movl	$3, %edx
	movq	%rbx, %rdi
	callq	strncmp
.LBB36_12:                              # %cond.end.47
	testl	%eax, %eax
	movl	$3, %eax
	movl	$21, %ebp
	cmovel	%eax, %ebp
	jmp	.LBB36_13
	.align	16, 0x90
.LBB36_15:                              # %while.body
                                        #   in Loop: Header=BB36_13 Depth=1
	incl	%ebp
.LBB36_13:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	movzbl	(%rbx,%rax), %ecx
	cmpl	$32, %ecx
	je	.LBB36_15
# BB#14:                                # %while.cond
                                        #   in Loop: Header=BB36_13 Depth=1
	movzbl	%cl, %ecx
	cmpl	$9, %ecx
	je	.LBB36_15
# BB#16:                                # %while.end
	addq	%rax, %rbx
	movl	9584(%r15), %esi
	subl	%ebp, %esi
	leaq	20(%rsp), %rdx
	movq	%rbx, %rdi
	callq	dsc_get_real
	movss	%xmm0, 16(%rsp)         # 4-byte Spill
	movl	20(%rsp), %ebx
	testl	%ebx, %ebx
	je	.LBB36_20
# BB#17:                                # %if.end.74
	addl	%ebp, %ebx
	movl	%ebx, %edi
	addq	9576(%r15), %rdi
	movl	9584(%r15), %esi
	subl	%ebx, %esi
	leaq	20(%rsp), %rdx
	callq	dsc_get_real
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	movl	20(%rsp), %ebp
	testl	%ebp, %ebp
	je	.LBB36_20
# BB#18:                                # %if.end.85
	addl	%ebx, %ebp
	movl	%ebp, %edi
	addq	9576(%r15), %rdi
	movl	9584(%r15), %esi
	subl	%ebp, %esi
	leaq	20(%rsp), %rdx
	callq	dsc_get_real
	movss	%xmm0, 8(%rsp)          # 4-byte Spill
	movl	20(%rsp), %eax
	testl	%eax, %eax
	je	.LBB36_20
# BB#19:                                # %if.end.96
	addl	%ebp, %eax
	movl	%eax, %edi
	addq	9576(%r15), %rdi
	movl	9584(%r15), %esi
	subl	%eax, %esi
	leaq	20(%rsp), %rdx
	callq	dsc_get_real
	cmpl	$0, 20(%rsp)
	je	.LBB36_20
# BB#21:                                # %if.else
	movss	%xmm0, 4(%rsp)          # 4-byte Spill
	movq	9880(%r15), %rax
	testq	%rax, %rax
	je	.LBB36_23
# BB#22:                                # %if.then.i.58
	movq	9896(%r15), %rsi
	movl	$16, %edi
	callq	*%rax
	jmp	.LBB36_24
.LBB36_20:                              # %if.then.99
	movq	%r15, %rdi
	callq	dsc_unknown
.LBB36_26:                              # %cleanup
	xorl	%ecx, %ecx
.LBB36_27:                              # %cleanup
	movl	%ecx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB36_23:                              # %if.end.i
	movl	$16, %edi
	callq	malloc
.LBB36_24:                              # %dsc_memalloc.exit
	movq	%rax, (%r14)
	movl	$-1, %ecx
	testq	%rax, %rax
	je	.LBB36_27
# BB#25:                                # %if.end.104
	movss	16(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rax)
	movss	12(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 4(%rax)
	movss	8(%rsp), %xmm0          # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 8(%rax)
	movss	4(%rsp), %xmm0          # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 12(%rax)
	jmp	.LBB36_26
.Lfunc_end36:
	.size	dsc_parse_viewing_orientation, .Lfunc_end36-dsc_parse_viewing_orientation
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_check_match,@function
dsc_check_match:                        # @dsc_check_match
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp291:
	.cfi_def_cfa_offset 16
.Ltmp292:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	1344(%rbx), %edx
	movl	$.L.str.121, %esi
	callq	dsc_check_match_type
	testl	%eax, %eax
	jne	.LBB37_4
# BB#1:                                 # %if.end.4
	movl	1348(%rbx), %edx
	movl	$.L.str.122, %esi
	movq	%rbx, %rdi
	callq	dsc_check_match_type
	testl	%eax, %eax
	jne	.LBB37_4
# BB#2:                                 # %if.end.8
	movl	1352(%rbx), %edx
	movl	$.L.str.123, %esi
	movq	%rbx, %rdi
	callq	dsc_check_match_type
	testl	%eax, %eax
	jne	.LBB37_4
# BB#3:                                 # %if.then.10
	movl	1356(%rbx), %edx
	movl	$.L.str.124, %esi
	movq	%rbx, %rdi
	callq	dsc_check_match_type
.LBB37_4:                               # %if.end.12
	xorps	%xmm0, %xmm0
	movups	%xmm0, 1344(%rbx)
	popq	%rbx
	retq
.Lfunc_end37:
	.size	dsc_check_match, .Lfunc_end37-dsc_check_match
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_check_match_type,@function
dsc_check_match_type:                   # @dsc_check_match_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp293:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp294:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp295:
	.cfi_def_cfa_offset 32
	subq	$512, %rsp              # imm = 0x200
.Ltmp296:
	.cfi_def_cfa_offset 544
.Ltmp297:
	.cfi_offset %rbx, -32
.Ltmp298:
	.cfi_offset %r14, -24
.Ltmp299:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$1, %eax
	testl	%edx, %edx
	je	.LBB38_5
# BB#1:                                 # %if.then.i
	movl	9584(%rbx), %edx
	cmpq	$254, %rdx
	ja	.LBB38_3
# BB#2:                                 # %if.then.2.i
	movq	9576(%rbx), %rsi
	leaq	(%rsp), %rdi
	callq	strncpy
	movl	9584(%rbx), %eax
	movb	$0, (%rsp,%rax)
.LBB38_3:                               # %if.end.i
	leaq	(%rsp), %rdi
	callq	strlen
	leaq	(%rsp,%rax), %rdi
	movl	$.L.str.125, %esi
	xorl	%eax, %eax
	movq	%r14, %rdx
	movq	%r14, %rcx
	callq	gs_sprintf
	movq	9912(%rbx), %r15
	movl	$1, %eax
	testq	%r15, %r15
	je	.LBB38_5
# BB#4:                                 # %if.then.i.i
	leaq	(%rsp), %r14
	movq	%r14, %rdi
	callq	strlen
	movq	1288(%rbx), %rdi
	movl	$12, %edx
	movq	%rbx, %rsi
	movq	%r14, %rcx
	movl	%eax, %r8d
	callq	*%r15
.LBB38_5:                               # %dsc_check_match_prompt.exit
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
	addq	$512, %rsp              # imm = 0x200
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end38:
	.size	dsc_check_match_type, .Lfunc_end38-dsc_check_match_type
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"11x17"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"A3"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"A4"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"A5"
	.size	.L.str.3, 3

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"B4"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"B5"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Ledger"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Legal"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Letter"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Note"
	.size	.L.str.9, 5

	.type	dsc_known_media,@object # @dsc_known_media
	.section	.rodata,"a",@progbits
	.globl	dsc_known_media
	.align	16
dsc_known_media:
	.quad	.L.str
	.long	1145438208              # float 792
	.long	1150877696              # float 1224
	.long	0                       # float 0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.1
	.long	1146257408              # float 842
	.long	1150599168              # float 1190
	.long	0                       # float 0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.2
	.long	1142210560              # float 595
	.long	1146257408              # float 842
	.long	0                       # float 0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.3
	.long	1137868800              # float 421
	.long	1142210560              # float 595
	.long	0                       # float 0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.4
	.long	1144078336              # float 709
	.long	1148878848              # float 1002
	.long	0                       # float 0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.5
	.long	1140490240              # float 501
	.long	1144078336              # float 709
	.long	0                       # float 0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.6
	.long	1150877696              # float 1224
	.long	1145438208              # float 792
	.long	0                       # float 0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.7
	.long	1142489088              # float 612
	.long	1148977152              # float 1008
	.long	0                       # float 0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.8
	.long	1142489088              # float 612
	.long	1145438208              # float 792
	.long	0                       # float 0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.9
	.long	1142489088              # float 612
	.long	1145438208              # float 792
	.long	0                       # float 0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.zero	48
	.size	dsc_known_media, 528

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"%%BeginData:"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%%BeginBinary:"
	.size	.L.str.11, 15

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%%EndDocument"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%%EndData"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%%EndBinary"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Warning: code included between setup and first page\n"
	.size	.L.str.15, 53

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Ignoring earlier misplaced trailer\n"
	.size	.L.str.16, 36

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"and extending last page to start of trailer\n"
	.size	.L.str.17, 45

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%d"
	.size	.L.str.18, 3

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Local"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"EPS"
	.size	.L.str.20, 4

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"EPSF"
	.size	.L.str.21, 5

	.type	dsc_severity,@object    # @dsc_severity
	.section	.rodata,"a",@progbits
	.align	16
dsc_severity:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.size	dsc_severity, 68

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	" \r\n"
	.size	.L.str.22, 4

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Bytes"
	.size	.L.str.23, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Lines"
	.size	.L.str.24, 6

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"%%BeginDocument:"
	.size	.L.str.25, 17

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"\033%-12345X"
	.size	.L.str.26, 10

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%PDF-"
	.size	.L.str.27, 6

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"%!PS-Adobe"
	.size	.L.str.28, 11

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"EPSF-"
	.size	.L.str.29, 6

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%%EndComments"
	.size	.L.str.31, 14

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%%BeginComments"
	.size	.L.str.32, 16

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"%%Begin"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"%%+"
	.size	.L.str.34, 4

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"%%Pages:"
	.size	.L.str.35, 9

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"%%Creator:"
	.size	.L.str.36, 11

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"%%CreationDate:"
	.size	.L.str.37, 16

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"%%Title:"
	.size	.L.str.38, 9

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"%%For:"
	.size	.L.str.39, 7

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"%%LanguageLevel:"
	.size	.L.str.40, 17

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"%%BoundingBox:"
	.size	.L.str.41, 15

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"%%HiResBoundingBox:"
	.size	.L.str.42, 20

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"%%CropBox:"
	.size	.L.str.43, 11

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"%%Orientation:"
	.size	.L.str.44, 15

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"%%PageOrder:"
	.size	.L.str.45, 13

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"%%DocumentMedia:"
	.size	.L.str.46, 17

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"%%DocumentPaperSizes:"
	.size	.L.str.47, 22

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"%%DocumentPaperForms:"
	.size	.L.str.48, 22

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"%%DocumentPaperColors:"
	.size	.L.str.49, 23

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"%%DocumentPaperWeights:"
	.size	.L.str.50, 24

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"%%DocumentData:"
	.size	.L.str.51, 16

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Clean7Bit"
	.size	.L.str.52, 10

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Clean8Bit"
	.size	.L.str.53, 10

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Binary"
	.size	.L.str.54, 7

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"%%Requirements:"
	.size	.L.str.55, 16

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"%%DocumentNeededFonts:"
	.size	.L.str.56, 23

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"%%DocumentSuppliedFonts:"
	.size	.L.str.57, 25

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"%%PlateFile:"
	.size	.L.str.58, 13

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"%%CyanPlate:"
	.size	.L.str.59, 13

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"%%MagentaPlate:"
	.size	.L.str.60, 16

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"%%YellowPlate:"
	.size	.L.str.61, 15

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"%%BlackPlate:"
	.size	.L.str.62, 14

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"%%DocumentProcessColors:"
	.size	.L.str.63, 25

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"%%DocumentCustomColors:"
	.size	.L.str.64, 24

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"%%CMYKCustomColor:"
	.size	.L.str.65, 19

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"%%RGBCustomColor:"
	.size	.L.str.66, 18

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"%%BeginPreview"
	.size	.L.str.67, 15

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"%%BeginDefaults"
	.size	.L.str.68, 16

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"%%BeginProlog"
	.size	.L.str.69, 14

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"%%BeginSetup"
	.size	.L.str.70, 13

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"%%Page:"
	.size	.L.str.71, 8

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"%%Trailer"
	.size	.L.str.72, 10

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"%%EOF"
	.size	.L.str.73, 6

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"atend"
	.size	.L.str.74, 6

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"(atend)"
	.size	.L.str.75, 8

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Unknown in %s section at line %d:\n  "
	.size	.L.str.76, 37

	.type	dsc_scan_section_name,@object # @dsc_scan_section_name
	.section	.rodata,"a",@progbits
	.align	16
dsc_scan_section_name:
	.quad	.L.str.78
	.quad	.L.str.79
	.quad	.L.str.80
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	.L.str.85
	.quad	.L.str.86
	.quad	.L.str.87
	.quad	.L.str.88
	.quad	.L.str.89
	.quad	.L.str.90
	.quad	.L.str.91
	.quad	.L.str.92
	.size	dsc_scan_section_name, 120

	.type	.L.str.77,@object       # @.str.77
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.77:
	.asciz	"\n"
	.size	.L.str.77, 2

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Type"
	.size	.L.str.78, 5

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"Comments"
	.size	.L.str.79, 9

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"pre-Preview"
	.size	.L.str.80, 12

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Preview"
	.size	.L.str.81, 8

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"pre-Defaults"
	.size	.L.str.82, 13

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Defaults"
	.size	.L.str.83, 9

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"pre-Prolog"
	.size	.L.str.84, 11

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Prolog"
	.size	.L.str.85, 7

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"pre-Setup"
	.size	.L.str.86, 10

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Setup"
	.size	.L.str.87, 6

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"pre-Page"
	.size	.L.str.88, 9

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"Page"
	.size	.L.str.89, 5

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"pre-Trailer"
	.size	.L.str.90, 12

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"Trailer"
	.size	.L.str.91, 8

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"EOF"
	.size	.L.str.92, 4

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"Portrait"
	.size	.L.str.93, 9

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"Landscape"
	.size	.L.str.94, 10

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"Ascend"
	.size	.L.str.95, 7

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"Descend"
	.size	.L.str.96, 8

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Special"
	.size	.L.str.97, 8

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Cyan"
	.size	.L.str.98, 5

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Magenta"
	.size	.L.str.99, 8

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"Yellow"
	.size	.L.str.100, 7

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"Black"
	.size	.L.str.101, 6

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Red"
	.size	.L.str.102, 4

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"Green"
	.size	.L.str.103, 6

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"Blue"
	.size	.L.str.104, 5

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"%%EndPreview"
	.size	.L.str.105, 13

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"%%EndDefaults"
	.size	.L.str.106, 14

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"%%PageMedia:"
	.size	.L.str.107, 13

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"%%PageOrientation:"
	.size	.L.str.108, 19

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"%%PageBoundingBox:"
	.size	.L.str.109, 19

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"%%ViewingOrientation:"
	.size	.L.str.110, 22

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"%%PageCropBox:"
	.size	.L.str.111, 15

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"%%EndProlog"
	.size	.L.str.112, 12

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"%%BeginFont:"
	.size	.L.str.113, 13

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"%%EndFont"
	.size	.L.str.114, 10

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"%%BeginFeature:"
	.size	.L.str.115, 16

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"%%EndFeature"
	.size	.L.str.116, 13

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"%%BeginResource:"
	.size	.L.str.117, 17

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"%%EndResource"
	.size	.L.str.118, 14

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"%%BeginProcSet:"
	.size	.L.str.119, 16

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"%%EndProcSet"
	.size	.L.str.120, 13

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"Font"
	.size	.L.str.121, 5

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"Feature"
	.size	.L.str.122, 8

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"Resource"
	.size	.L.str.123, 9

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"ProcSet"
	.size	.L.str.124, 8

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"\n%%%%Begin%.40s: / %%%%End%.40s\n"
	.size	.L.str.125, 33

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"%%EndSetup"
	.size	.L.str.126, 11

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"%%Feature:"
	.size	.L.str.127, 11

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"%%PaperColor:"
	.size	.L.str.128, 14

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"%%PaperForm:"
	.size	.L.str.129, 13

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"%%PaperWeight:"
	.size	.L.str.130, 15

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"%%PaperSize:"
	.size	.L.str.131, 13

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"%%PageTrailer"
	.size	.L.str.132, 14

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"%%BeginPageSetup"
	.size	.L.str.133, 17

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"%%EndPageSetup"
	.size	.L.str.134, 15

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"%%IncludeFont:"
	.size	.L.str.135, 15

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"Out of memory\n"
	.size	.L.str.136, 15

	.type	.Ldsc_dcs2_fixup.composite,@object # @dsc_dcs2_fixup.composite
.Ldsc_dcs2_fixup.composite:
	.asciz	"Composite"
	.size	.Ldsc_dcs2_fixup.composite, 10

	.type	.Lswitch.table.6,@object # @switch.table.6
	.section	.rodata,"a",@progbits
	.align	4
.Lswitch.table.6:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.size	.Lswitch.table.6, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
