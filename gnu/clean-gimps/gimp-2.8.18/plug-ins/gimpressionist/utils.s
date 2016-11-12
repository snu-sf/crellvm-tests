	.text
	.file	"utils.bc"
	.globl	dist
	.align	16, 0x90
	.type	dist,@function
dist:                                   # @dist
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
	subq	$48, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm3, -32(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-8(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-16(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	dist, .Lfunc_end0-dist
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
.LCPI1_1:
	.quad	-4616189618054758400    # double -1
.LCPI1_2:
	.quad	4636737291354636288     # double 100
.LCPI1_3:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.globl	getsiz_proto
	.align	16, 0x90
	.type	getsiz_proto,@function
getsiz_proto:                           # @getsiz_proto
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
	subq	$112, %rsp
	xorps	%xmm3, %xmm3
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	$0, -76(%rbp)
	ucomisd	-8(%rbp), %xmm3
	ja	.LBB1_2
# BB#1:                                 # %lor.lhs.false
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_3
.LBB1_2:                                # %if.then
	movabsq	$.L.str, %rdi
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movb	$1, %al
	callq	g_warning
.LBB1_3:                                # %if.end
	cmpl	$0, -44(%rbp)
	je	.LBB1_12
# BB#4:                                 # %if.then.2
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movl	$0, -48(%rbp)
.LBB1_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB1_11
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB1_5 Depth=1
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-48(%rbp), %rax
	shlq	$5, %rax
	addq	-32(%rbp), %rax
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	movslq	-48(%rbp), %rax
	shlq	$5, %rax
	addq	-32(%rbp), %rax
	movsd	8(%rax), %xmm3          # xmm3 = mem[0],zero
	callq	dist
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -72(%rbp)
	ucomisd	-88(%rbp), %xmm1
	ja	.LBB1_8
# BB#7:                                 # %lor.lhs.false.9
                                        #   in Loop: Header=BB1_5 Depth=1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_9
.LBB1_8:                                # %if.then.11
                                        #   in Loop: Header=BB1_5 Depth=1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB1_9:                                # %if.end.12
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_10
.LBB1_10:                               # %for.inc
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB1_5
.LBB1_11:                               # %for.end
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB1_13
.LBB1_12:                               # %if.else
	movl	$0, -76(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -80(%rbp)
.LBB1_13:                               # %if.end.13
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm0, -56(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB1_14:                               # %for.cond.14
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB1_19
# BB#15:                                # %for.body.16
                                        #   in Loop: Header=BB1_14 Depth=1
	movslq	-48(%rbp), %rax
	shlq	$5, %rax
	addq	-32(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-48(%rbp), %rax
	shlq	$5, %rax
	addq	-32(%rbp), %rax
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	movslq	-48(%rbp), %rax
	shlq	$5, %rax
	addq	-32(%rbp), %rax
	movsd	8(%rax), %xmm3          # xmm3 = mem[0],zero
	callq	dist
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI1_3, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	ucomisd	-72(%rbp), %xmm1
	jbe	.LBB1_17
# BB#16:                                # %if.then.28
                                        #   in Loop: Header=BB1_14 Depth=1
	movsd	.LCPI1_3, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
.LBB1_17:                               # %if.end.29
                                        #   in Loop: Header=BB1_14 Depth=1
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	-72(%rbp), %xmm1
	movsd	%xmm1, -96(%rbp)
	movslq	-48(%rbp), %rax
	shlq	$5, %rax
	addq	-32(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	mulsd	-96(%rbp), %xmm1
	addsd	-56(%rbp), %xmm1
	movsd	%xmm1, -56(%rbp)
	divsd	-72(%rbp), %xmm0
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
# BB#18:                                # %for.inc.35
                                        #   in Loop: Header=BB1_14 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB1_14
.LBB1_19:                               # %for.end.37
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_2, %xmm1         # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	-64(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -56(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_21
# BB#20:                                # %cond.true
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB1_25
.LBB1_21:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB1_23
# BB#22:                                # %cond.true.42
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB1_24
.LBB1_23:                               # %cond.false.43
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
.LBB1_24:                               # %cond.end
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
.LBB1_25:                               # %cond.end.44
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	getsiz_proto, .Lfunc_end1-getsiz_proto
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB2_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB2_2:                                # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end2:
	.size	g_warning, .Lfunc_end2-g_warning
	.cfi_endproc

	.globl	parsepath
	.align	16, 0x90
	.type	parsepath,@function
parsepath:                              # @parsepath
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
	subq	$80, %rsp
	cmpq	$0, parsepath_cached_path
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	parsepath_cached_path, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_6
.LBB3_2:                                # %if.end
	movabsq	$.L.str.1, %rdi
	callq	gimp_gimprc_query
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB3_4
# BB#3:                                 # %if.then.2
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movq	%rcx, %rdx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %r8          # 8-byte Reload
	callq	g_filename_from_utf8
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free
	jmp	.LBB3_5
.LBB3_4:                                # %if.else
	movabsq	$.L.str.2, %rdi
	callq	gimp_personal_rc_file
	movabsq	$.L.str.3, %rdi
	movq	%rax, -32(%rbp)
	callq	gimp_config_build_data_path
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_strescape
	movabsq	$.L.str.4, %rdi
	movq	%rax, -48(%rbp)
	callq	gettext
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.5, %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_message
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	g_free
	movl	$1, %esi
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-40(%rbp), %rdi
	callq	gimp_config_path_expand
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_free
.LBB3_5:                                # %if.end.10
	movl	$256, %esi              # imm = 0x100
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	callq	gimp_path_parse
	movq	%rax, parsepath_cached_path
	movq	-16(%rbp), %rdi
	callq	g_free
	movq	parsepath_cached_path, %rax
	movq	%rax, -8(%rbp)
.LBB3_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	parsepath, .Lfunc_end3-parsepath
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB4_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB4_2:                                # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end4:
	.size	g_message, .Lfunc_end4-g_message
	.cfi_endproc

	.globl	free_parsepath_cache
	.align	16, 0x90
	.type	free_parsepath_cache,@function
free_parsepath_cache:                   # @free_parsepath_cache
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
	cmpq	$0, parsepath_cached_path
	je	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_3
.LBB5_2:                                # %if.end
	movabsq	$g_free, %rsi
	movq	parsepath_cached_path, %rdi
	callq	g_list_free_full
	movq	$0, parsepath_cached_path
.LBB5_3:                                # %return
	popq	%rbp
	retq
.Lfunc_end5:
	.size	free_parsepath_cache, .Lfunc_end5-free_parsepath_cache
	.cfi_endproc

	.globl	findfile
	.align	16, 0x90
	.type	findfile,@function
findfile:                               # @findfile
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.findfile, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_11
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	callq	parsepath
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB6_6:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB6_10
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB6_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename
	movl	$1, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	je	.LBB6_9
# BB#8:                                 # %if.then.4
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_11
.LBB6_9:                                # %if.end.5
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	jmp	.LBB6_6
.LBB6_10:                               # %while.end
	movq	$0, -8(%rbp)
.LBB6_11:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	findfile, .Lfunc_end6-findfile
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI7_0:
	.long	1056964608              # float 0.5
	.text
	.globl	reselect
	.align	16, 0x90
	.type	reselect,@function
reselect:                               # @reselect
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
	subq	$128, %rsp
	movl	$47, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	callq	strrchr
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	movq	%rax, -16(%rbp)
.LBB7_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_model
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	leaq	-64(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first
	cmpl	$0, %eax
	je	.LBB7_11
# BB#3:                                 # %if.then.9
	movl	$0, -76(%rbp)
.LBB7_4:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	-64(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-88(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-88(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_6
# BB#5:                                 # %if.then.12
                                        #   in Loop: Header=BB7_4 Depth=1
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gtk_tree_selection_select_iter
	leaq	-64(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_tree_model_get_path
	movq	%rax, -96(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$1, %ecx
	movss	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movss	%xmm0, -124(%rbp)       # 4-byte Spill
	movss	-124(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_tree_view_scroll_to_cell
	movq	-96(%rbp), %rdi
	callq	gtk_tree_path_free
	movl	$1, -76(%rbp)
.LBB7_6:                                # %if.end.16
                                        #   in Loop: Header=BB7_4 Depth=1
	movq	-88(%rbp), %rdi
	callq	g_free
# BB#7:                                 # %do.cond
                                        #   in Loop: Header=BB7_4 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -76(%rbp)
	movb	%cl, -125(%rbp)         # 1-byte Spill
	jne	.LBB7_9
# BB#8:                                 # %land.rhs
                                        #   in Loop: Header=BB7_4 Depth=1
	leaq	-64(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_tree_model_iter_next
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -125(%rbp)         # 1-byte Spill
.LBB7_9:                                # %land.end
                                        #   in Loop: Header=BB7_4 Depth=1
	movb	-125(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_4
# BB#10:                                # %do.end
	jmp	.LBB7_11
.LBB7_11:                               # %if.end.20
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	reselect, .Lfunc_end7-reselect
	.cfi_endproc

	.globl	readdirintolist_extended
	.align	16, 0x90
	.type	readdirintolist_extended,@function
readdirintolist_extended:               # @readdirintolist_extended
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	callq	parsepath
	movq	%rax, -64(%rbp)
.LBB8_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB8_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-8(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	callq	readdirintolist_real
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB8_1
.LBB8_3:                                # %while.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	readdirintolist_extended, .Lfunc_end8-readdirintolist_extended
	.cfi_endproc

	.align	16, 0x90
	.type	readdirintolist_real,@function
readdirintolist_real:                   # @readdirintolist_real
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	$0, -80(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_model
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -120(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB9_7
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB9_3
# BB#2:                                 # %if.then.6
	movq	$0, -24(%rbp)
	jmp	.LBB9_6
.LBB9_3:                                # %if.else
	movl	$47, %esi
	movq	-24(%rbp), %rdi
	callq	strrchr
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	je	.LBB9_5
# BB#4:                                 # %if.then.9
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
	movq	%rax, -24(%rbp)
.LBB9_5:                                # %if.end
	jmp	.LBB9_6
.LBB9_6:                                # %if.end.10
	jmp	.LBB9_7
.LBB9_7:                                # %if.end.11
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	callq	g_dir_open
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB9_9
# BB#8:                                 # %if.then.14
	jmp	.LBB9_31
.LBB9_9:                                # %if.end.15
	jmp	.LBB9_10
.LBB9_10:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rdi
	callq	g_dir_read_name
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB9_12
# BB#11:                                # %if.then.18
	jmp	.LBB9_15
.LBB9_12:                               # %if.end.19
                                        #   in Loop: Header=BB9_10 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename
	movl	$1, %esi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_file_test
	movl	%eax, -140(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_free
	cmpl	$0, -140(%rbp)
	jne	.LBB9_14
# BB#13:                                # %if.then.23
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_10
.LBB9_14:                               # %if.end.24
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-80(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_strdup
	movabsq	$g_ascii_strcasecmp, %rdx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_insert_sorted
	movq	%rax, -80(%rbp)
	jmp	.LBB9_10
.LBB9_15:                               # %for.end
	movq	-72(%rbp), %rdi
	callq	g_dir_close
	movq	-16(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	movq	%rax, -128(%rbp)
.LBB9_16:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB9_27
# BB#17:                                # %while.body
                                        #   in Loop: Header=BB9_16 Depth=1
	leaq	-112(%rbp), %rsi
	movq	-120(%rbp), %rdi
	callq	gtk_list_store_append
	leaq	-112(%rbp), %rsi
	xorl	%edx, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-120(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	(%rax), %rcx
	movb	$0, %al
	callq	gtk_list_store_set
	cmpl	$0, -28(%rbp)
	je	.LBB9_22
# BB#18:                                # %if.then.32
                                        #   in Loop: Header=BB9_16 Depth=1
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	-48(%rbp), %rdx
	callq	*%rax
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	je	.LBB9_20
# BB#19:                                # %if.then.36
                                        #   in Loop: Header=BB9_16 Depth=1
	leaq	-112(%rbp), %rsi
	movl	$1, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-120(%rbp), %rdi
	movq	-152(%rbp), %rcx
	movb	$0, %al
	callq	gtk_list_store_set
	movq	-152(%rbp), %rdi
	callq	g_free
	jmp	.LBB9_21
.LBB9_20:                               # %if.else.37
                                        #   in Loop: Header=BB9_16 Depth=1
	leaq	-112(%rbp), %rsi
	movl	$1, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-120(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	(%rax), %rcx
	movb	$0, %al
	callq	gtk_list_store_set
.LBB9_21:                               # %if.end.39
                                        #   in Loop: Header=BB9_16 Depth=1
	jmp	.LBB9_22
.LBB9_22:                               # %if.end.40
                                        #   in Loop: Header=BB9_16 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB9_26
# BB#23:                                # %if.then.42
                                        #   in Loop: Header=BB9_16 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB9_25
# BB#24:                                # %if.then.46
                                        #   in Loop: Header=BB9_16 Depth=1
	leaq	-112(%rbp), %rsi
	movq	-128(%rbp), %rdi
	callq	gtk_tree_selection_select_iter
.LBB9_25:                               # %if.end.47
                                        #   in Loop: Header=BB9_16 Depth=1
	jmp	.LBB9_26
.LBB9_26:                               # %if.end.48
                                        #   in Loop: Header=BB9_16 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-80(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_list_remove
	movq	%rax, -80(%rbp)
	jmp	.LBB9_16
.LBB9_27:                               # %while.end
	cmpq	$0, -24(%rbp)
	jne	.LBB9_31
# BB#28:                                # %if.then.53
	movq	-120(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_get_iter_first
	cmpl	$0, %eax
	je	.LBB9_30
# BB#29:                                # %if.then.58
	leaq	-112(%rbp), %rsi
	movq	-128(%rbp), %rdi
	callq	gtk_tree_selection_select_iter
.LBB9_30:                               # %if.end.59
	jmp	.LBB9_31
.LBB9_31:                               # %if.end.60
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	readdirintolist_real, .Lfunc_end9-readdirintolist_real
	.cfi_endproc

	.globl	readdirintolist
	.align	16, 0x90
	.type	readdirintolist,@function
readdirintolist:                        # @readdirintolist
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
	subq	$32, %rsp
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%r8, -32(%rbp)          # 8-byte Spill
	movq	-32(%rbp), %r9          # 8-byte Reload
	callq	readdirintolist_extended
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	readdirintolist, .Lfunc_end10-readdirintolist
	.cfi_endproc

	.globl	create_radio_button
	.align	16, 0x90
	.type	create_radio_button,@function
create_radio_button:                    # @create_radio_button
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
	subq	$96, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	gtk_radio_button_new_with_label
	movq	%rax, -64(%rbp)
	movslq	-12(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r10d, %r10d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r10d, %edx
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.7, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdi
	movslq	-12(%rbp), %rcx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_help_set_help_data
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	create_radio_button, .Lfunc_end11-create_radio_button
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"HUH? x = %f\n"
	.size	.L.str, 13

	.type	parsepath_cached_path,@object # @parsepath_cached_path
	.local	parsepath_cached_path
	.comm	parsepath_cached_path,8,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimpressionist-path"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimprc"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimpressionist"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"No %s in gimprc:\nYou need to add an entry like\n(%s \"%s\")\nto your %s file."
	.size	.L.str.4, 74

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gflare-path"
	.size	.L.str.5, 12

	.type	.L__func__.findfile,@object # @__func__.findfile
.L__func__.findfile:
	.asciz	"findfile"
	.size	.L__func__.findfile, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"fn != NULL"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"clicked"
	.size	.L.str.7, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
