	.text
	.file	"dstring.bc"
	.globl	ds_new
	.align	16, 0x90
	.type	ds_new,@function
ds_new:                                 # @ds_new
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movabsq	$.L.str, %rdx
	movl	ds_exit_error, %edi
	movq	-8(%rbp), %rcx
	movb	$0, %al
	callq	error
.LBB0_2:                                # %if.end
	cmpq	$0, -24(%rbp)
	jne	.LBB0_5
# BB#3:                                 # %land.lhs.true
	cmpl	$0, -12(%rbp)
	je	.LBB0_5
# BB#4:                                 # %if.then.3
	xorl	%esi, %esi
	movabsq	$.L.str.1, %rdx
	movl	ds_exit_error, %edi
	movq	-24(%rbp), %rcx
	movb	$0, %al
	callq	error
.LBB0_5:                                # %if.end.4
	movl	$48, %eax
	movl	%eax, %edi
	callq	xmalloc
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-8(%rbp), %rax
	shlq	$0, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	-32(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ds_new, .Lfunc_end0-ds_new
	.cfi_endproc

	.globl	ds_erase
	.align	16, 0x90
	.type	ds_erase,@function
ds_erase:                               # @ds_erase
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	callq	free
	movq	-8(%rbp), %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ds_erase, .Lfunc_end1-ds_erase
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI2_1:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_2:
	.quad	4636737291354636288     # double 100
	.text
	.globl	ds_print_stats
	.align	16, 0x90
	.type	ds_print_stats,@function
ds_print_stats:                         # @ds_print_stats
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	$.L.str.2, %eax
	movl	%eax, %esi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	%dl, %al
	callq	fprintf
	movq	-16(%rbp), %rdi
	movl	$.L.str.3, %ecx
	movl	%ecx, %esi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	24(%rsi), %rsi
	movd	%rdi, %xmm0
	movaps	.LCPI2_0(%rip), %xmm1   # xmm1 = [1127219200,1160773632,0,0]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	.LCPI2_1(%rip), %xmm2   # xmm2 = [4.503600e+15,1.934281e+25]
	subpd	%xmm2, %xmm0
	pshufd	$78, %xmm0, %xmm3       # xmm3 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm3
	movsd	.LCPI2_2(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm3
	movd	%rsi, %xmm0
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	subpd	%xmm2, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm1
	divsd	%xmm1, %xmm3
	movb	$1, %dl
	movq	-40(%rbp), %r8          # 8-byte Reload
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-56(%rbp), %rax         # 8-byte Reload
	movb	%dl, -65(%rbp)          # 1-byte Spill
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movaps	%xmm3, %xmm0
	movb	-65(%rbp), %al          # 1-byte Reload
	callq	fprintf
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %r9d
	testl	%r9d, %r9d
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	%r9d, -76(%rbp)         # 4-byte Spill
	je	.LBB2_1
	jmp	.LBB2_6
.LBB2_6:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB2_2
	jmp	.LBB2_7
.LBB2_7:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB2_3
	jmp	.LBB2_4
.LBB2_1:                                # %sw.bb
	movabsq	$.L.str.4, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB2_5
.LBB2_2:                                # %sw.bb.7
	movabsq	$.L.str.5, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB2_5
.LBB2_3:                                # %sw.bb.8
	movabsq	$.L.str.6, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB2_5
.LBB2_4:                                # %sw.default
	xorl	%esi, %esi
	movabsq	$.L.str.7, %rdx
	movl	ds_exit_error, %edi
	movb	$0, %al
	callq	error
.LBB2_5:                                # %sw.epilog
	movabsq	$.L.str.8, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %r8
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -100(%rbp)        # 4-byte Spill
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ds_print_stats, .Lfunc_end2-ds_print_stats
	.cfi_endproc

	.globl	ds_resize
	.align	16, 0x90
	.type	ds_resize,@function
ds_resize:                              # @ds_resize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	addq	$1, %rsi
	cmpq	-16(%rbp), %rsi
	jae	.LBB3_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
.LBB3_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ds_resize, .Lfunc_end3-ds_resize
	.cfi_endproc

	.globl	ds_grow
	.align	16, 0x90
	.type	ds_grow,@function
ds_grow:                                # @ds_grow
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	8(%rdi), %eax
	testl	%eax, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	je	.LBB4_1
	jmp	.LBB4_6
.LBB4_6:                                # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -16(%rbp)         # 4-byte Spill
	je	.LBB4_2
	jmp	.LBB4_7
.LBB4_7:                                # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	je	.LBB4_3
	jmp	.LBB4_4
.LBB4_1:                                # %sw.bb
	jmp	.LBB4_5
.LBB4_2:                                # %sw.bb.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	movq	%rax, 24(%rcx)
	jmp	.LBB4_4
.LBB4_3:                                # %sw.bb.2
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	imulq	24(%rcx), %rax
	movq	%rax, 24(%rcx)
.LBB4_4:                                # %sw.epilog
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-8(%rbp), %rsi
	movq	%rax, 40(%rsi)
.LBB4_5:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	ds_grow, .Lfunc_end4-ds_grow
	.cfi_endproc

	.globl	ds_is_full
	.align	16, 0x90
	.type	ds_is_full,@function
ds_is_full:                             # @ds_is_full
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	addq	$1, %rdi
	movq	-8(%rbp), %rax
	cmpq	24(%rax), %rdi
	setae	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	ds_is_full, .Lfunc_end5-ds_is_full
	.cfi_endproc

	.globl	ds_strcat
	.align	16, 0x90
	.type	ds_strcat,@function
ds_strcat:                              # @ds_strcat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	movq	-8(%rbp), %rsi
	addq	(%rsi), %rax
	movq	%rax, (%rsi)
	movq	-8(%rbp), %rdi
	callq	ds_is_full
	cmpl	$0, %eax
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	ds_grow
.LBB6_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	addq	-24(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	strcpy
	movq	%rax, -32(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	ds_strcat, .Lfunc_end6-ds_strcat
	.cfi_endproc

	.globl	ds_strncat
	.align	16, 0x90
	.type	ds_strncat,@function
ds_strncat:                             # @ds_strncat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movslq	-20(%rbp), %rsi
	movq	-8(%rbp), %rdi
	addq	(%rdi), %rsi
	movq	%rsi, (%rdi)
	movq	-8(%rbp), %rdi
	callq	ds_is_full
	cmpl	$0, %eax
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	ds_grow
.LBB7_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	addq	-32(%rbp), %rax
	movq	-16(%rbp), %rsi
	movslq	-20(%rbp), %rdx
	movq	%rax, %rdi
	callq	strncpy
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rsi
	movb	$0, (%rsi,%rdx)
	movq	%rax, -40(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	ds_strncat, .Lfunc_end7-ds_strncat
	.cfi_endproc

	.globl	ds_strccat
	.align	16, 0x90
	.type	ds_strccat,@function
ds_strccat:                             # @ds_strccat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	addq	$2, %rdi
	movq	-8(%rbp), %rcx
	cmpq	24(%rcx), %rdi
	jb	.LBB8_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	ds_grow
.LBB8_2:                                # %if.end
	movb	-9(%rbp), %al
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, (%rcx)
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movb	%al, (%rcx,%rdx)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movb	$0, (%rdx,%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	ds_strccat, .Lfunc_end8-ds_strccat
	.cfi_endproc

	.globl	ds_vsprintf
	.align	16, 0x90
	.type	ds_vsprintf,@function
ds_vsprintf:                            # @ds_vsprintf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	vprintflen
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-28(%rbp), %rsi
	callq	ds_resize
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	vsprintf
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	callq	strlen
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	ds_vsprintf, .Lfunc_end9-ds_vsprintf
	.cfi_endproc

	.globl	ds_sprintf
	.align	16, 0x90
	.type	ds_sprintf,@function
ds_sprintf:                             # @ds_sprintf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$400, %rsp              # imm = 0x190
	testb	%al, %al
	movaps	%xmm7, -240(%rbp)       # 16-byte Spill
	movaps	%xmm6, -256(%rbp)       # 16-byte Spill
	movaps	%xmm5, -272(%rbp)       # 16-byte Spill
	movaps	%xmm4, -288(%rbp)       # 16-byte Spill
	movaps	%xmm3, -304(%rbp)       # 16-byte Spill
	movaps	%xmm2, -320(%rbp)       # 16-byte Spill
	movaps	%xmm1, -336(%rbp)       # 16-byte Spill
	movaps	%xmm0, -352(%rbp)       # 16-byte Spill
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%r9, -368(%rbp)         # 8-byte Spill
	movq	%r8, -376(%rbp)         # 8-byte Spill
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	movq	%rsi, -400(%rbp)        # 8-byte Spill
	je	.LBB10_2
# BB#1:                                 # %entry
	movaps	-352(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -176(%rbp)
	movaps	-336(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -160(%rbp)
	movaps	-320(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -144(%rbp)
	movaps	-304(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -128(%rbp)
	movaps	-288(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -112(%rbp)
	movaps	-272(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -96(%rbp)
	movaps	-256(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -80(%rbp)
	movaps	-240(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -64(%rbp)
.LBB10_2:                               # %entry
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)
	movq	-376(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -192(%rbp)
	movq	-384(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -200(%rbp)
	movq	-392(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -208(%rbp)
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	-360(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
	leaq	-224(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	leaq	16(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movl	$48, -44(%rbp)
	movl	$16, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	callq	ds_vsprintf
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end10:
	.size	ds_sprintf, .Lfunc_end10-ds_sprintf
	.cfi_endproc

	.globl	ds_cat_vsprintf
	.align	16, 0x90
	.type	ds_cat_vsprintf,@function
ds_cat_vsprintf:                        # @ds_cat_vsprintf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	vprintflen
	movslq	%eax, %rdx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	addq	%rdx, %rsi
	movl	%esi, %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-28(%rbp), %rsi
	callq	ds_resize
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	-8(%rbp), %rsi
	addq	(%rsi), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	vsprintf
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	-8(%rbp), %rsi
	addq	(%rsi), %rdx
	movq	%rdx, %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	strlen
	movq	-8(%rbp), %rdx
	addq	(%rdx), %rax
	movq	%rax, (%rdx)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	ds_cat_vsprintf, .Lfunc_end11-ds_cat_vsprintf
	.cfi_endproc

	.globl	ds_cat_sprintf
	.align	16, 0x90
	.type	ds_cat_sprintf,@function
ds_cat_sprintf:                         # @ds_cat_sprintf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$400, %rsp              # imm = 0x190
	testb	%al, %al
	movaps	%xmm7, -240(%rbp)       # 16-byte Spill
	movaps	%xmm6, -256(%rbp)       # 16-byte Spill
	movaps	%xmm5, -272(%rbp)       # 16-byte Spill
	movaps	%xmm4, -288(%rbp)       # 16-byte Spill
	movaps	%xmm3, -304(%rbp)       # 16-byte Spill
	movaps	%xmm2, -320(%rbp)       # 16-byte Spill
	movaps	%xmm1, -336(%rbp)       # 16-byte Spill
	movaps	%xmm0, -352(%rbp)       # 16-byte Spill
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%r9, -368(%rbp)         # 8-byte Spill
	movq	%r8, -376(%rbp)         # 8-byte Spill
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	movq	%rsi, -400(%rbp)        # 8-byte Spill
	je	.LBB12_2
# BB#1:                                 # %entry
	movaps	-352(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -176(%rbp)
	movaps	-336(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -160(%rbp)
	movaps	-320(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -144(%rbp)
	movaps	-304(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -128(%rbp)
	movaps	-288(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -112(%rbp)
	movaps	-272(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -96(%rbp)
	movaps	-256(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -80(%rbp)
	movaps	-240(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -64(%rbp)
.LBB12_2:                               # %entry
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)
	movq	-376(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -192(%rbp)
	movq	-384(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -200(%rbp)
	movq	-392(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -208(%rbp)
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	-360(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
	leaq	-224(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	leaq	16(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movl	$48, -44(%rbp)
	movl	$16, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	callq	ds_cat_vsprintf
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end12:
	.size	ds_cat_sprintf, .Lfunc_end12-ds_cat_sprintf
	.cfi_endproc

	.globl	ds_unsafe_vsprintf
	.align	16, 0x90
	.type	ds_unsafe_vsprintf,@function
ds_unsafe_vsprintf:                     # @ds_unsafe_vsprintf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	vsprintf
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	strlen
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	ds_unsafe_vsprintf, .Lfunc_end13-ds_unsafe_vsprintf
	.cfi_endproc

	.globl	ds_unsafe_sprintf
	.align	16, 0x90
	.type	ds_unsafe_sprintf,@function
ds_unsafe_sprintf:                      # @ds_unsafe_sprintf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$400, %rsp              # imm = 0x190
	testb	%al, %al
	movaps	%xmm7, -240(%rbp)       # 16-byte Spill
	movaps	%xmm6, -256(%rbp)       # 16-byte Spill
	movaps	%xmm5, -272(%rbp)       # 16-byte Spill
	movaps	%xmm4, -288(%rbp)       # 16-byte Spill
	movaps	%xmm3, -304(%rbp)       # 16-byte Spill
	movaps	%xmm2, -320(%rbp)       # 16-byte Spill
	movaps	%xmm1, -336(%rbp)       # 16-byte Spill
	movaps	%xmm0, -352(%rbp)       # 16-byte Spill
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%r9, -368(%rbp)         # 8-byte Spill
	movq	%r8, -376(%rbp)         # 8-byte Spill
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	movq	%rsi, -400(%rbp)        # 8-byte Spill
	je	.LBB14_2
# BB#1:                                 # %entry
	movaps	-352(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -176(%rbp)
	movaps	-336(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -160(%rbp)
	movaps	-320(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -144(%rbp)
	movaps	-304(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -128(%rbp)
	movaps	-288(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -112(%rbp)
	movaps	-272(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -96(%rbp)
	movaps	-256(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -80(%rbp)
	movaps	-240(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -64(%rbp)
.LBB14_2:                               # %entry
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)
	movq	-376(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -192(%rbp)
	movq	-384(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -200(%rbp)
	movq	-392(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -208(%rbp)
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	-360(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
	leaq	-224(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	leaq	16(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movl	$48, -44(%rbp)
	movl	$16, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	callq	ds_unsafe_vsprintf
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end14:
	.size	ds_unsafe_sprintf, .Lfunc_end14-ds_unsafe_sprintf
	.cfi_endproc

	.globl	ds_unsafe_cat_vsprintf
	.align	16, 0x90
	.type	ds_unsafe_cat_vsprintf,@function
ds_unsafe_cat_vsprintf:                 # @ds_unsafe_cat_vsprintf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	addq	$1024, %rsi             # imm = 0x400
	cmpq	%rsi, %rdx
	jae	.LBB15_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	ds_grow
.LBB15_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	(%rcx), %rax
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	vsprintf
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	-8(%rbp), %rdx
	addq	(%rdx), %rcx
	movq	%rcx, %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	strlen
	movq	-8(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	ds_unsafe_cat_vsprintf, .Lfunc_end15-ds_unsafe_cat_vsprintf
	.cfi_endproc

	.globl	ds_unsafe_cat_sprintf
	.align	16, 0x90
	.type	ds_unsafe_cat_sprintf,@function
ds_unsafe_cat_sprintf:                  # @ds_unsafe_cat_sprintf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$400, %rsp              # imm = 0x190
	testb	%al, %al
	movaps	%xmm7, -240(%rbp)       # 16-byte Spill
	movaps	%xmm6, -256(%rbp)       # 16-byte Spill
	movaps	%xmm5, -272(%rbp)       # 16-byte Spill
	movaps	%xmm4, -288(%rbp)       # 16-byte Spill
	movaps	%xmm3, -304(%rbp)       # 16-byte Spill
	movaps	%xmm2, -320(%rbp)       # 16-byte Spill
	movaps	%xmm1, -336(%rbp)       # 16-byte Spill
	movaps	%xmm0, -352(%rbp)       # 16-byte Spill
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%r9, -368(%rbp)         # 8-byte Spill
	movq	%r8, -376(%rbp)         # 8-byte Spill
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	movq	%rsi, -400(%rbp)        # 8-byte Spill
	je	.LBB16_2
# BB#1:                                 # %entry
	movaps	-352(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -176(%rbp)
	movaps	-336(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -160(%rbp)
	movaps	-320(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -144(%rbp)
	movaps	-304(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -128(%rbp)
	movaps	-288(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -112(%rbp)
	movaps	-272(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -96(%rbp)
	movaps	-256(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -80(%rbp)
	movaps	-240(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -64(%rbp)
.LBB16_2:                               # %entry
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)
	movq	-376(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -192(%rbp)
	movq	-384(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -200(%rbp)
	movq	-392(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -208(%rbp)
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	-360(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
	leaq	-224(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	leaq	16(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movl	$48, -44(%rbp)
	movl	$16, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	callq	ds_unsafe_cat_vsprintf
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end16:
	.size	ds_unsafe_cat_sprintf, .Lfunc_end16-ds_unsafe_cat_sprintf
	.cfi_endproc

	.globl	ds_getdelim
	.align	16, 0x90
	.type	ds_getdelim,@function
ds_getdelim:                            # @ds_getdelim
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movb	%sil, %al
	movq	%rdi, -16(%rbp)
	movb	%al, -17(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	%edx, %esi
	movl	%esi, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -44(%rbp)
.LBB17_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-44(%rbp), %eax
	movsbl	-17(%rbp), %edx
	cmpl	%edx, %eax
	movb	%cl, -45(%rbp)          # 1-byte Spill
	je	.LBB17_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB17_1 Depth=1
	cmpl	$-1, -44(%rbp)
	setne	%al
	movb	%al, -45(%rbp)          # 1-byte Spill
.LBB17_3:                               # %land.end
                                        #   in Loop: Header=BB17_1 Depth=1
	movb	-45(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB17_4
	jmp	.LBB17_7
.LBB17_4:                               # %while.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-36(%rbp), %eax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jl	.LBB17_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	ds_grow
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, -40(%rbp)
.LBB17_6:                               # %if.end
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-44(%rbp), %eax
	movb	%al, %cl
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -36(%rbp)
	movslq	%eax, %rsi
	movq	-16(%rbp), %rdi
	movq	40(%rdi), %rdi
	movb	%cl, (%rdi,%rsi)
	movq	-32(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -44(%rbp)
	jmp	.LBB17_1
.LBB17_7:                               # %while.end
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -36(%rbp)
	movslq	%eax, %rdx
	movq	-16(%rbp), %rsi
	movq	40(%rsi), %rsi
	movb	$0, (%rsi,%rdx)
	cmpl	$1, -36(%rbp)
	jne	.LBB17_10
# BB#8:                                 # %land.lhs.true
	cmpl	$-1, -44(%rbp)
	jne	.LBB17_10
# BB#9:                                 # %if.then.19
	movq	$0, -8(%rbp)
	jmp	.LBB17_11
.LBB17_10:                              # %if.else
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB17_11:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	ds_getdelim, .Lfunc_end17-ds_getdelim
	.cfi_endproc

	.globl	ds_getline
	.align	16, 0x90
	.type	ds_getline,@function
ds_getline:                             # @ds_getline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$10, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	%eax, %esi
	callq	ds_getdelim
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	ds_getline, .Lfunc_end18-ds_getline
	.cfi_endproc

	.type	ds_exit_error,@object   # @ds_exit_error
	.data
	.globl	ds_exit_error
	.align	4
ds_exit_error:
	.long	1                       # 0x1
	.size	ds_exit_error, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid size for dynamic string: %d"
	.size	.L.str, 36

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"invalid increment for dynamic string: %d"
	.size	.L.str.1, 41

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Dynamic string:\n"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\tload: %d/%d (%2.1f%%)\n"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"[const]"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"+="
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"*="
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"invalid growth type for dstring"
	.size	.L.str.7, 32

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\toriginal size: %d, growth: %s %d\n"
	.size	.L.str.8, 35


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
