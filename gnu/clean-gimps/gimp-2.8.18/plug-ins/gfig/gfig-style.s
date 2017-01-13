	.text
	.file	"gfig-style.bc"
	.globl	gfig_load_style
	.align	16, 0x90
	.type	gfig_load_style,@function
gfig_load_style:                        # @gfig_load_style
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
	subq	$1232, %rsp             # imm = 0x4D0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -1092(%rbp)
	movq	-24(%rbp), %rdi
	callq	ftell
	movl	$256, %esi              # imm = 0x100
	xorl	%ecx, %ecx
	leaq	-288(%rbp), %rdi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdx
	callq	get_line
	movabsq	$.L.str, %rsi
	leaq	-1200(%rbp), %rdx
	leaq	-288(%rbp), %rdi
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	movb	$0, %al
	callq	__isoc99_sscanf
	movl	$1, %ecx
	cmpl	%eax, %ecx
	je	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.1, %rdx
	movq	-16(%rbp), %rdi
	movq	gfig_context, %rax
	addq	$40, %rax
	movq	%rax, %rsi
	callq	gfig_style_copy
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	fseek
	movl	$1, -4(%rbp)
	movl	%eax, -1212(%rbp)       # 4-byte Spill
	jmp	.LBB0_23
.LBB0_2:                                # %if.end
	movq	gfig_context, %rax
	cmpl	$0, (%rax)
	je	.LBB0_4
# BB#3:                                 # %if.then.6
	movabsq	$.L.str.2, %rdi
	leaq	-1200(%rbp), %rsi
	movb	$0, %al
	callq	g_printerr
.LBB0_4:                                # %if.end.8
	leaq	-1200(%rbp), %rdi
	callq	g_strdup
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB0_5:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$256, %esi              # imm = 0x100
	xorl	%ecx, %ecx
	leaq	-288(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	get_line
	leaq	-288(%rbp), %rdi
	movl	$.L.str.3, %ecx
	movl	%ecx, %esi
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_7
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-24(%rbp), %rdi
	callq	feof
	cmpl	$0, %eax
	je	.LBB0_8
.LBB0_7:                                # %if.then.19
	jmp	.LBB0_11
.LBB0_8:                                # %if.end.20
                                        #   in Loop: Header=BB0_5 Depth=1
	leaq	-288(%rbp), %rdi
	callq	g_strdup
	movslq	-1092(%rbp), %rdi
	movq	%rax, -1088(%rbp,%rdi,8)
	movl	-1092(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -1092(%rbp)
	cmpl	$100, -1092(%rbp)
	jl	.LBB0_10
# BB#9:                                 # %if.then.24
	jmp	.LBB0_11
.LBB0_10:                               # %if.end.25
                                        #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_5
.LBB0_11:                               # %while.end
	movq	-24(%rbp), %rdi
	callq	feof
	cmpl	$0, %eax
	jne	.LBB0_13
# BB#12:                                # %lor.lhs.false.28
	cmpl	$100, -1092(%rbp)
	jl	.LBB0_14
.LBB0_13:                               # %if.then.30
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	g_message
	movl	$1, -4(%rbp)
	jmp	.LBB0_23
.LBB0_14:                               # %if.end.31
	movabsq	$.L.str.5, %rdx
	leaq	-1088(%rbp), %rdi
	movl	-1092(%rbp), %esi
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rcx
	callq	gfig_read_parameter_string
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB0_16
# BB#15:                                # %if.then.35
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	g_message
.LBB0_16:                               # %if.end.36
	movabsq	$.L.str.7, %rdx
	leaq	-1088(%rbp), %rdi
	movl	-1092(%rbp), %esi
	movq	-16(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rcx
	callq	gfig_read_parameter_string
	movabsq	$.L.str.8, %rdx
	leaq	-1088(%rbp), %rdi
	movl	-1092(%rbp), %esi
	movq	-16(%rbp), %rax
	addq	$80, %rax
	movq	%rax, %rcx
	callq	gfig_read_parameter_string
	movabsq	$.L.str.9, %rdx
	leaq	-1088(%rbp), %rdi
	movl	-1092(%rbp), %esi
	movq	-16(%rbp), %rax
	addq	$96, %rax
	movq	%rax, %rcx
	callq	gfig_read_parameter_gimp_rgb
	movabsq	$.L.str.10, %rdx
	leaq	-1088(%rbp), %rdi
	movl	-1092(%rbp), %esi
	movq	-16(%rbp), %rax
	addq	$128, %rax
	movq	%rax, %rcx
	callq	gfig_read_parameter_gimp_rgb
	movabsq	$.L.str.11, %rdx
	leaq	-1096(%rbp), %rcx
	leaq	-1088(%rbp), %rdi
	movl	-1092(%rbp), %esi
	callq	gfig_read_parameter_int
	movabsq	$.L.str.12, %rdx
	leaq	-1096(%rbp), %rcx
	leaq	-1088(%rbp), %rdi
	movl	-1096(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	%esi, 56(%rax)
	movl	-1092(%rbp), %esi
	callq	gfig_read_parameter_int
	movabsq	$.L.str.13, %rdx
	leaq	-1088(%rbp), %rdi
	movl	-1096(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	%esi, 88(%rax)
	movl	-1092(%rbp), %esi
	movq	-16(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rcx
	callq	gfig_read_parameter_double
	movl	$0, -1100(%rbp)
.LBB0_17:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-1100(%rbp), %eax
	cmpl	-1092(%rbp), %eax
	jge	.LBB0_20
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB0_17 Depth=1
	movslq	-1100(%rbp), %rax
	movq	-1088(%rbp,%rax,8), %rdi
	callq	g_free
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	-1100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1100(%rbp)
	jmp	.LBB0_17
.LBB0_20:                               # %for.end
	movq	gfig_context, %rax
	cmpl	$0, (%rax)
	je	.LBB0_22
# BB#21:                                # %if.then.50
	movabsq	$.L.str.14, %rdi
	movb	$0, %al
	callq	g_printerr
.LBB0_22:                               # %if.end.51
	movl	$0, -4(%rbp)
.LBB0_23:                               # %return
	movl	-4(%rbp), %eax
	addq	$1232, %rsp             # imm = 0x4D0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gfig_load_style, .Lfunc_end0-gfig_load_style
	.cfi_endproc

	.globl	gfig_style_copy
	.align	16, 0x90
	.type	gfig_style_copy,@function
gfig_style_copy:                        # @gfig_style_copy
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	movabsq	$.L.str.40, %rdi
	movb	$0, %al
	callq	g_message
.LBB1_3:                                # %if.end
	movq	gfig_context, %rax
	cmpl	$0, (%rax)
	je	.LBB1_5
# BB#4:                                 # %if.then.3
	movabsq	$.L.str.41, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	g_printerr
.LBB1_5:                                # %if.end.5
	movq	-8(%rbp), %rax
	addq	$96, %rax
	movq	-16(%rbp), %rcx
	addq	$96, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gfig_rgba_copy
	movq	-8(%rbp), %rax
	addq	$128, %rax
	movq	-16(%rbp), %rcx
	addq	$128, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gfig_rgba_copy
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB1_7
# BB#6:                                 # %if.then.9
	movabsq	$.L.str.42, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movb	$0, %al
	callq	g_message
.LBB1_7:                                # %if.end.11
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 80(%rdi)
	movq	-16(%rbp), %rax
	movq	72(%rax), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 72(%rdi)
	movq	-16(%rbp), %rax
	movl	56(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 56(%rax)
	movq	-16(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 64(%rax)
	movq	-16(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 88(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gfig_style_copy, .Lfunc_end1-gfig_style_copy
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end2:
	.size	g_message, .Lfunc_end2-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	gfig_read_parameter_string,@function
gfig_read_parameter_string:             # @gfig_read_parameter_string
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-32(%rbp), %rcx
	movq	$0, (%rcx)
.LBB3_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB3_7
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$58, %esi
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	strchr
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB3_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB3_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-48(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	g_strndup
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_5
# BB#4:                                 # %if.then.8
	movq	-48(%rbp), %rdi
	callq	g_strchug
	movq	%rax, %rdi
	callq	g_strdup
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-56(%rbp), %rdi
	callq	g_free
	jmp	.LBB3_8
.LBB3_5:                                # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	g_free
.LBB3_6:                                # %if.end.11
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB3_1
.LBB3_7:                                # %while.end
	movabsq	$.L.str.53, %rdi
	movq	-24(%rbp), %rsi
	movb	$0, %al
	callq	g_message
.LBB3_8:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gfig_read_parameter_string, .Lfunc_end3-gfig_read_parameter_string
	.cfi_endproc

	.align	16, 0x90
	.type	gfig_read_parameter_gimp_rgb,@function
gfig_read_parameter_gimp_rgb:           # @gfig_read_parameter_gimp_rgb
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
	subq	$304, %rsp              # imm = 0x130
	movl	$32, %eax
	movl	%eax, %r8d
	movabsq	$.L.str.54, %r9
	movl	$38, %eax
	movl	%eax, %r10d
	leaq	-96(%rbp), %r11
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-32(%rbp), %rcx
	movsd	%xmm0, 24(%rcx)
	movq	-32(%rbp), %rcx
	movsd	%xmm0, 16(%rcx)
	movq	-32(%rbp), %rcx
	movsd	%xmm0, 8(%rcx)
	movq	-32(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movq	%r11, %rdi
	movq	%r8, %rsi
	movq	%r9, %rdx
	movq	%r10, %rcx
	movq	%r10, %r8
	movq	%r10, %r9
	movq	$38, (%rsp)
	movb	$0, %al
	callq	snprintf
	movl	%eax, -292(%rbp)        # 4-byte Spill
.LBB4_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB4_7
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$58, %esi
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	strchr
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB4_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-48(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	g_strndup
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB4_5
# BB#4:                                 # %if.then.9
	leaq	-288(%rbp), %r9
	leaq	-240(%rbp), %r8
	leaq	-192(%rbp), %rcx
	leaq	-144(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_sscanf
	leaq	-64(%rbp), %rsi
	leaq	-144(%rbp), %rdi
	movl	%eax, -296(%rbp)        # 4-byte Spill
	callq	g_ascii_strtod
	leaq	-64(%rbp), %rsi
	leaq	-192(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	callq	g_ascii_strtod
	leaq	-64(%rbp), %rsi
	leaq	-240(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movsd	%xmm0, 8(%rcx)
	callq	g_ascii_strtod
	leaq	-64(%rbp), %rsi
	leaq	-288(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movsd	%xmm0, 16(%rcx)
	callq	g_ascii_strtod
	movq	-32(%rbp), %rcx
	movsd	%xmm0, 24(%rcx)
	movq	-56(%rbp), %rdi
	callq	g_free
	jmp	.LBB4_7
.LBB4_5:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	g_free
.LBB4_6:                                # %if.end.28
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB4_1
.LBB4_7:                                # %while.end
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gfig_read_parameter_gimp_rgb, .Lfunc_end4-gfig_read_parameter_gimp_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	gfig_read_parameter_int,@function
gfig_read_parameter_int:                # @gfig_read_parameter_int
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-32(%rbp), %rcx
	movl	$0, (%rcx)
.LBB5_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB5_7
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$58, %esi
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	strchr
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB5_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB5_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-48(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	g_strndup
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB5_5
# BB#4:                                 # %if.then.8
	movq	-48(%rbp), %rdi
	callq	g_strchug
	movq	%rax, %rdi
	callq	atoi
	movq	-32(%rbp), %rdi
	movl	%eax, (%rdi)
	movq	-56(%rbp), %rdi
	callq	g_free
	jmp	.LBB5_7
.LBB5_5:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	g_free
.LBB5_6:                                # %if.end.11
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB5_1
.LBB5_7:                                # %while.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gfig_read_parameter_int, .Lfunc_end5-gfig_read_parameter_int
	.cfi_endproc

	.align	16, 0x90
	.type	gfig_read_parameter_double,@function
gfig_read_parameter_double:             # @gfig_read_parameter_double
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
	subq	$64, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-32(%rbp), %rcx
	movsd	%xmm0, (%rcx)
.LBB6_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB6_7
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$58, %esi
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	strchr
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB6_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB6_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-48(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	g_strndup
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB6_5
# BB#4:                                 # %if.then.8
	movq	-48(%rbp), %rdi
	callq	g_strchug
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_ascii_strtod
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-64(%rbp), %rdi
	callq	g_free
	jmp	.LBB6_7
.LBB6_5:                                # %if.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-64(%rbp), %rdi
	callq	g_free
.LBB6_6:                                # %if.end.11
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB6_1
.LBB6_7:                                # %while.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gfig_read_parameter_double, .Lfunc_end6-gfig_read_parameter_double
	.cfi_endproc

	.globl	gfig_skip_style
	.align	16, 0x90
	.type	gfig_skip_style,@function
gfig_skip_style:                        # @gfig_skip_style
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
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	ftell
	movl	$256, %esi              # imm = 0x100
	xorl	%ecx, %ecx
	leaq	-288(%rbp), %rdi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdx
	callq	get_line
	movabsq	$.L.str.15, %rsi
	movl	$7, %ecx
	movl	%ecx, %edx
	leaq	-288(%rbp), %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB7_2
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	fseek
	movl	$1, -4(%rbp)
	movl	%eax, -300(%rbp)        # 4-byte Spill
	jmp	.LBB7_10
.LBB7_2:                                # %if.end
	jmp	.LBB7_3
.LBB7_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$256, %esi              # imm = 0x100
	xorl	%ecx, %ecx
	leaq	-288(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	get_line
	leaq	-288(%rbp), %rdi
	movl	$.L.str.3, %ecx
	movl	%ecx, %esi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB7_5
# BB#4:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-24(%rbp), %rdi
	callq	feof
	cmpl	$0, %eax
	je	.LBB7_6
.LBB7_5:                                # %if.then.12
	jmp	.LBB7_7
.LBB7_6:                                # %if.end.13
                                        #   in Loop: Header=BB7_3 Depth=1
	jmp	.LBB7_3
.LBB7_7:                                # %while.end
	movq	-24(%rbp), %rdi
	callq	feof
	cmpl	$0, %eax
	je	.LBB7_9
# BB#8:                                 # %if.then.16
	movabsq	$.L.str.16, %rdi
	movb	$0, %al
	callq	g_message
	movl	$1, -4(%rbp)
	jmp	.LBB7_10
.LBB7_9:                                # %if.end.17
	movl	$0, -4(%rbp)
.LBB7_10:                               # %return
	movl	-4(%rbp), %eax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gfig_skip_style, .Lfunc_end7-gfig_skip_style
	.cfi_endproc

	.globl	gfig_load_styles
	.align	16, 0x90
	.type	gfig_load_styles,@function
gfig_load_styles:                       # @gfig_load_styles
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	gfig_context, %rsi
	cmpl	$0, (%rsi)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.17, %rdi
	movb	$0, %al
	callq	g_printerr
.LBB8_2:                                # %if.end
	movq	gfig_context, %rax
	addq	$40, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gfig_load_style
	movq	gfig_context, %rsi
	cmpl	$0, (%rsi)
	movl	%eax, -20(%rbp)         # 4-byte Spill
	je	.LBB8_4
# BB#3:                                 # %if.then.3
	movabsq	$.L.str.14, %rdi
	movb	$0, %al
	callq	g_printerr
.LBB8_4:                                # %if.end.4
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gfig_load_styles, .Lfunc_end8-gfig_load_styles
	.cfi_endproc

	.globl	gfig_save_style
	.align	16, 0x90
	.type	gfig_save_style,@function
gfig_save_style:                        # @gfig_save_style
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
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$39, -260(%rbp)
	movq	gfig_context, %rsi
	cmpl	$0, (%rsi)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.18, %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movb	$0, %al
	callq	g_printerr
.LBB9_2:                                # %if.end
	movabsq	$.L.str.19, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movb	$0, %al
	callq	g_string_append_printf
	movabsq	$.L.str.20, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movb	$0, %al
	callq	g_string_append_printf
	movq	-8(%rbp), %rdx
	cmpq	$0, 8(%rdx)
	jne	.LBB9_4
# BB#3:                                 # %if.then.5
	movabsq	$.L.str.21, %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movb	$0, %al
	callq	g_message
.LBB9_4:                                # %if.end.7
	movabsq	$.L.str.22, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	88(%rax), %edx
	movb	$0, %al
	callq	g_string_append_printf
	movabsq	$.L.str.23, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	56(%rcx), %edx
	movb	$0, %al
	callq	g_string_append_printf
	leaq	-64(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	-260(%rbp), %esi
	movq	-8(%rbp), %r8
	movsd	64(%r8), %xmm0          # xmm0 = mem[0],zero
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.24, %rsi
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_string_append_printf
	movabsq	$.L.str.25, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rdx
	movb	$0, %al
	callq	g_string_append_printf
	movabsq	$.L.str.26, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	80(%rcx), %rdx
	movb	$0, %al
	callq	g_string_append_printf
	leaq	-112(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	-260(%rbp), %esi
	movq	-8(%rbp), %rdx
	movsd	96(%rdx), %xmm0         # xmm0 = mem[0],zero
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	leaq	-160(%rbp), %rdi
	movl	-260(%rbp), %esi
	movq	-8(%rbp), %rcx
	movsd	104(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	leaq	-208(%rbp), %rdi
	movl	-260(%rbp), %esi
	movq	-8(%rbp), %rcx
	movsd	112(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	leaq	-256(%rbp), %rdi
	movl	-260(%rbp), %esi
	movq	-8(%rbp), %rcx
	movsd	120(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.27, %rsi
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	-288(%rbp), %rdx        # 8-byte Reload
	movq	-296(%rbp), %rcx        # 8-byte Reload
	movq	-304(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_string_append_printf
	leaq	-112(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	-260(%rbp), %esi
	movq	-8(%rbp), %rdx
	movsd	128(%rdx), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	leaq	-160(%rbp), %rdi
	movl	-260(%rbp), %esi
	movq	-8(%rbp), %rcx
	movsd	136(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	leaq	-208(%rbp), %rdi
	movl	-260(%rbp), %esi
	movq	-8(%rbp), %rcx
	movsd	144(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	leaq	-256(%rbp), %rdi
	movl	-260(%rbp), %esi
	movq	-8(%rbp), %rcx
	movsd	152(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.28, %rsi
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	-320(%rbp), %rdx        # 8-byte Reload
	movq	-328(%rbp), %rcx        # 8-byte Reload
	movq	-336(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_string_append_printf
	movabsq	$.L.str.29, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	g_string_append_printf
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gfig_save_style, .Lfunc_end9-gfig_save_style
	.cfi_endproc

	.globl	gfig_style_save_as_attributes
	.align	16, 0x90
	.type	gfig_style_save_as_attributes,@function
gfig_style_save_as_attributes:          # @gfig_style_save_as_attributes
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
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$39, -260(%rbp)
	movq	gfig_context, %rsi
	cmpl	$0, (%rsi)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.30, %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movb	$0, %al
	callq	g_printerr
.LBB10_2:                               # %if.end
	movabsq	$.L.str.31, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movb	$0, %al
	callq	g_string_append_printf
	leaq	-112(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	-260(%rbp), %esi
	movq	-8(%rbp), %rcx
	movsd	96(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	leaq	-160(%rbp), %rdi
	movl	-260(%rbp), %esi
	movq	-8(%rbp), %rcx
	movsd	104(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	leaq	-208(%rbp), %rdi
	movl	-260(%rbp), %esi
	movq	-8(%rbp), %rcx
	movsd	112(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	leaq	-256(%rbp), %rdi
	movl	-260(%rbp), %esi
	movq	-8(%rbp), %rcx
	movsd	120(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.32, %rsi
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	-280(%rbp), %rdx        # 8-byte Reload
	movq	-288(%rbp), %rcx        # 8-byte Reload
	movq	-296(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_string_append_printf
	leaq	-112(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	-260(%rbp), %esi
	movq	-8(%rbp), %rdx
	movsd	128(%rdx), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	leaq	-160(%rbp), %rdi
	movl	-260(%rbp), %esi
	movq	-8(%rbp), %rcx
	movsd	136(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	leaq	-208(%rbp), %rdi
	movl	-260(%rbp), %esi
	movq	-8(%rbp), %rcx
	movsd	144(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	leaq	-256(%rbp), %rdi
	movl	-260(%rbp), %esi
	movq	-8(%rbp), %rcx
	movsd	152(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.33, %rsi
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	-312(%rbp), %rdx        # 8-byte Reload
	movq	-320(%rbp), %rcx        # 8-byte Reload
	movq	-328(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_string_append_printf
	movabsq	$.L.str.34, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	56(%rcx), %edx
	movb	$0, %al
	callq	g_string_append_printf
	movabsq	$.L.str.35, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	88(%rcx), %edx
	movb	$0, %al
	callq	g_string_append_printf
	leaq	-64(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	-260(%rbp), %esi
	movq	-8(%rbp), %r8
	movsd	64(%r8), %xmm0          # xmm0 = mem[0],zero
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.36, %rsi
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_string_append_printf
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gfig_style_save_as_attributes, .Lfunc_end10-gfig_style_save_as_attributes
	.cfi_endproc

	.globl	gfig_save_styles
	.align	16, 0x90
	.type	gfig_save_styles,@function
gfig_save_styles:                       # @gfig_save_styles
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	gfig_context, %rdi
	cmpl	$0, (%rdi)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.37, %rdi
	movb	$0, %al
	callq	g_printerr
.LBB11_2:                               # %if.end
	movq	gfig_context, %rax
	addq	$40, %rax
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	gfig_save_style
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gfig_save_styles, .Lfunc_end11-gfig_save_styles
	.cfi_endproc

	.globl	set_foreground_callback
	.align	16, 0x90
	.type	set_foreground_callback,@function
set_foreground_callback:                # @set_foreground_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	gfig_context, %rsi
	cmpl	$0, (%rsi)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.38, %rdi
	movb	$0, %al
	callq	g_printerr
.LBB12_2:                               # %if.end
	callq	gfig_context_get_current_style
	leaq	-48(%rbp), %rsi
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_color_button_get_color
	movq	-56(%rbp), %rax
	addq	$96, %rax
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-24(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_rgba_set
	callq	gfig_paint_callback
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	set_foreground_callback, .Lfunc_end12-set_foreground_callback
	.cfi_endproc

	.globl	gfig_context_get_current_style
	.align	16, 0x90
	.type	gfig_context_get_current_style,@function
gfig_context_get_current_style:         # @gfig_context_get_current_style
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
	movq	gfig_context, %rax
	cmpq	$0, 24(%rax)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	gfig_context, %rax
	movq	24(%rax), %rax
	addq	$32, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB13_3
.LBB13_2:                               # %if.else
	movq	gfig_context, %rax
	addq	$40, %rax
	movq	%rax, -8(%rbp)
.LBB13_3:                               # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gfig_context_get_current_style, .Lfunc_end13-gfig_context_get_current_style
	.cfi_endproc

	.globl	set_background_callback
	.align	16, 0x90
	.type	set_background_callback,@function
set_background_callback:                # @set_background_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	gfig_context, %rsi
	cmpl	$0, (%rsi)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.39, %rdi
	movb	$0, %al
	callq	g_printerr
.LBB14_2:                               # %if.end
	callq	gfig_context_get_current_style
	leaq	-48(%rbp), %rsi
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_color_button_get_color
	movq	-56(%rbp), %rax
	addq	$128, %rax
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-24(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_rgba_set
	callq	gfig_paint_callback
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	set_background_callback, .Lfunc_end14-set_background_callback
	.cfi_endproc

	.globl	set_paint_type_callback
	.align	16, 0x90
	.type	set_paint_type_callback,@function
set_paint_type_callback:                # @set_paint_type_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	gfig_context_get_current_style
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rsi
	movl	%eax, 88(%rsi)
	callq	gfig_paint_callback
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	set_paint_type_callback, .Lfunc_end15-set_paint_type_callback
	.cfi_endproc

	.globl	gfig_brush_changed_callback
	.align	16, 0x90
	.type	gfig_brush_changed_callback,@function
gfig_brush_changed_callback:            # @gfig_brush_changed_callback
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
	subq	$80, %rsp
	movq	32(%rbp), %rax
	movl	24(%rbp), %r10d
	movq	16(%rbp), %r11
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movq	%r11, -48(%rbp)
	movl	%r10d, -52(%rbp)
	movq	%rax, -64(%rbp)
	callq	gfig_context_get_current_style
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-72(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	gfig_context, %rsi
	movq	%rax, 208(%rsi)
	movl	-36(%rbp), %ecx
	movq	gfig_context, %rax
	movl	%ecx, 232(%rax)
	movl	-40(%rbp), %ecx
	movq	gfig_context, %rax
	movl	%ecx, 236(%rax)
	movq	-16(%rbp), %rdi
	callq	gimp_context_set_brush
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_context_set_brush_default_size
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gfig_paint_callback
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gfig_brush_changed_callback, .Lfunc_end16-gfig_brush_changed_callback
	.cfi_endproc

	.globl	gfig_pattern_changed_callback
	.align	16, 0x90
	.type	gfig_pattern_changed_callback,@function
gfig_pattern_changed_callback:          # @gfig_pattern_changed_callback
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
	subq	$64, %rsp
	movq	24(%rbp), %rax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movl	%r10d, -44(%rbp)
	movq	%rax, -56(%rbp)
	callq	gfig_context_get_current_style
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-64(%rbp), %rsi
	movq	%rax, 72(%rsi)
	callq	gfig_paint_callback
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gfig_pattern_changed_callback, .Lfunc_end17-gfig_pattern_changed_callback
	.cfi_endproc

	.globl	gfig_gradient_changed_callback
	.align	16, 0x90
	.type	gfig_gradient_changed_callback,@function
gfig_gradient_changed_callback:         # @gfig_gradient_changed_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	callq	gfig_context_get_current_style
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-56(%rbp), %rcx
	movq	%rax, 80(%rcx)
	callq	gfig_paint_callback
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gfig_gradient_changed_callback, .Lfunc_end18-gfig_gradient_changed_callback
	.cfi_endproc

	.globl	gfig_rgba_copy
	.align	16, 0x90
	.type	gfig_rgba_copy,@function
gfig_rgba_copy:                         # @gfig_rgba_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	movsd	%xmm0, (%rsi)
	movq	-16(%rbp), %rsi
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	movsd	%xmm0, 8(%rsi)
	movq	-16(%rbp), %rsi
	movsd	16(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	movsd	%xmm0, 16(%rsi)
	movq	-16(%rbp), %rsi
	movsd	24(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	movsd	%xmm0, 24(%rsi)
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gfig_rgba_copy, .Lfunc_end19-gfig_rgba_copy
	.cfi_endproc

	.globl	gfig_style_apply
	.align	16, 0x90
	.type	gfig_style_apply,@function
gfig_style_apply:                       # @gfig_style_apply
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	gfig_context, %rdi
	cmpl	$0, (%rdi)
	je	.LBB20_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.43, %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movb	$0, %al
	callq	g_printerr
.LBB20_2:                               # %if.end
	movq	-8(%rbp), %rax
	addq	$96, %rax
	movq	%rax, %rdi
	callq	gimp_context_set_foreground
	movq	-8(%rbp), %rdi
	addq	$128, %rdi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	gimp_context_set_background
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movl	%eax, -16(%rbp)         # 4-byte Spill
	callq	gimp_context_set_brush
	cmpl	$0, %eax
	jne	.LBB20_4
# BB#3:                                 # %if.then.4
	movabsq	$.L.str.44, %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movb	$0, %al
	callq	g_message
.LBB20_4:                               # %if.end.7
	callq	gimp_context_set_brush_default_size
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	gimp_context_set_pattern
	movq	-8(%rbp), %rcx
	movq	80(%rcx), %rdi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	gimp_context_set_gradient
	movq	gfig_context, %rcx
	cmpl	$0, (%rcx)
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB20_6
# BB#5:                                 # %if.then.13
	movabsq	$.L.str.45, %rdi
	movb	$0, %al
	callq	g_printerr
.LBB20_6:                               # %if.end.14
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gfig_style_apply, .Lfunc_end20-gfig_style_apply
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4636737291354636288     # double 100
	.text
	.globl	gfig_read_gimp_style
	.align	16, 0x90
	.type	gfig_read_gimp_style,@function
gfig_read_gimp_style:                   # @gfig_read_gimp_style
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB21_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.46, %rdi
	movb	$0, %al
	callq	g_message
.LBB21_2:                               # %if.end
	movq	gfig_context, %rax
	cmpl	$0, (%rax)
	je	.LBB21_4
# BB#3:                                 # %if.then.2
	movabsq	$.L.str.47, %rdi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	g_printerr
.LBB21_4:                               # %if.end.3
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-8(%rbp), %rax
	addq	$96, %rax
	movq	%rax, %rdi
	callq	gimp_context_get_foreground
	movq	-8(%rbp), %rdi
	addq	$128, %rdi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	gimp_context_get_background
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	gimp_context_get_brush
	leaq	-20(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	$16, %rcx
	movq	-8(%rbp), %rdx
	addq	$20, %rdx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %r8          # 8-byte Reload
	callq	gimp_brush_get_info
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-8(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rsi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_brush_get_spacing
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	gimp_context_get_gradient
	movq	-8(%rbp), %rcx
	movq	%rax, 80(%rcx)
	callq	gimp_context_get_pattern
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 64(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	gfig_context, %rcx
	movq	%rax, 208(%rcx)
	movq	-8(%rbp), %rax
	movl	16(%rax), %r9d
	movq	gfig_context, %rax
	movl	%r9d, 232(%rax)
	movq	-8(%rbp), %rax
	movl	20(%rax), %r9d
	movq	gfig_context, %rax
	movl	%r9d, 236(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gfig_read_gimp_style, .Lfunc_end21-gfig_read_gimp_style
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	gfig_style_set_context_from_style
	.align	16, 0x90
	.type	gfig_style_set_context_from_style,@function
gfig_style_set_context_from_style:      # @gfig_style_set_context_from_style
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	gfig_context, %rdi
	cmpl	$0, (%rdi)
	je	.LBB22_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.48, %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movb	$0, %al
	callq	g_printerr
.LBB22_2:                               # %if.end
	movq	gfig_context, %rax
	movl	336(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movq	gfig_context, %rax
	movl	$0, 336(%rax)
	movq	gfig_context, %rax
	movq	264(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	addq	$96, %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_set_color
	movq	gfig_context, %rax
	movq	272(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	addq	$128, %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_set_color
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_context_set_brush
	cmpl	$0, %eax
	jne	.LBB22_4
# BB#3:                                 # %if.then.8
	movabsq	$.L.str.49, %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_message
.LBB22_4:                               # %if.end.10
	callq	gimp_context_set_brush_default_size
	movq	gfig_context, %rcx
	movq	280(%rcx), %rcx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gimp_brush_select_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI22_0, %xmm0        # xmm0 = mem[0],zero
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	-52(%rbp), %ecx         # 4-byte Reload
	callq	gimp_brush_select_button_set_brush
	movq	gfig_context, %rax
	movq	288(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_pattern_select_button_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_pattern_select_button_set_pattern
	movq	gfig_context, %rax
	movq	296(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_gradient_select_button_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	80(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_gradient_select_button_set_gradient
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	gfig_context, %rsi
	movq	%rax, 208(%rsi)
	movq	gfig_context, %rax
	cmpl	$0, (%rax)
	je	.LBB22_6
# BB#5:                                 # %if.then.23
	movabsq	$.L.str.45, %rdi
	movb	$0, %al
	callq	g_printerr
.LBB22_6:                               # %if.end.24
	movq	gfig_context, %rax
	movq	304(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movl	56(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movq	gfig_context, %rdi
	movq	312(%rdi), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movl	88(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movl	-12(%rbp), %esi
	movq	gfig_context, %rax
	movl	%esi, 336(%rax)
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gfig_style_set_context_from_style, .Lfunc_end22-gfig_style_set_context_from_style
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	4636737291354636288     # double 100
	.text
	.globl	gfig_style_set_style_from_context
	.align	16, 0x90
	.type	gfig_style_set_style_from_context,@function
gfig_style_set_style_from_context:      # @gfig_style_set_style_from_context
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movabsq	$.L.str.50, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, (%rdi)
	callq	gfig_context_get_current_style
	movq	%rax, -16(%rbp)
	movq	gfig_context, %rax
	movq	264(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_get_color
	movq	gfig_context, %rax
	cmpl	$0, (%rax)
	je	.LBB23_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.51, %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movb	$3, %al
	callq	g_printerr
.LBB23_2:                               # %if.end
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	addq	$96, %rax
	movq	%rax, %rdi
	callq	gfig_rgba_copy
	movq	gfig_context, %rax
	movq	272(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_get_color
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	addq	$128, %rax
	movq	%rax, %rdi
	callq	gfig_rgba_copy
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-8(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB23_4
# BB#3:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	72(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB23_5
.LBB23_4:                               # %if.then.11
	movq	-16(%rbp), %rax
	movq	72(%rax), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 72(%rdi)
.LBB23_5:                               # %if.end.15
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	gfig_context, %rax
	movq	304(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-52(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	cmpl	$0, %eax
	je	.LBB23_7
# BB#6:                                 # %if.then.21
	movl	-52(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 56(%rcx)
.LBB23_7:                               # %if.end.22
	movsd	.LCPI23_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 64(%rax)
	movq	gfig_context, %rax
	movq	312(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movq	-8(%rbp), %rsi
	movl	%eax, 88(%rsi)
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gfig_style_set_style_from_context, .Lfunc_end23-gfig_style_set_style_from_context
	.cfi_endproc

	.globl	mygimp_brush_info
	.align	16, 0x90
	.type	mygimp_brush_info,@function
mygimp_brush_info:                      # @mygimp_brush_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	gimp_context_get_brush
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB24_9
# BB#1:                                 # %land.lhs.true
	leaq	-28(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rax, %r8
	callq	gimp_brush_get_info
	cmpl	$0, %eax
	je	.LBB24_9
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	cmpl	$32, (%rax)
	jle	.LBB24_4
# BB#3:                                 # %cond.true
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -32(%rbp)         # 4-byte Spill
	jmp	.LBB24_5
.LBB24_4:                               # %cond.false
	movl	$32, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB24_5
.LBB24_5:                               # %cond.end
	movl	-32(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rcx
	cmpl	$32, (%rcx)
	jle	.LBB24_7
# BB#6:                                 # %cond.true.4
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	jmp	.LBB24_8
.LBB24_7:                               # %cond.false.5
	movl	$32, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB24_8
.LBB24_8:                               # %cond.end.6
	movl	-36(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB24_10
.LBB24_9:                               # %if.else
	movabsq	$.L.str.52, %rdi
	movb	$0, %al
	callq	g_message
	movq	-16(%rbp), %rdi
	movl	$48, (%rdi)
	movq	-8(%rbp), %rdi
	movl	$48, (%rdi)
.LBB24_10:                              # %if.end
	movq	-24(%rbp), %rdi
	callq	g_free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	mygimp_brush_info, .Lfunc_end24-mygimp_brush_info
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"<Style %99[^>]>"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"default style"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Loading style '%s' -- "
	.size	.L.str.2, 23

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"</Style>"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Error reading style data"
	.size	.L.str.4, 25

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"BrushName"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Error loading style: got NULL for brush name."
	.size	.L.str.6, 46

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Pattern"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Gradient"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Foreground"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Background"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"FillType"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"PaintType"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"FillOpacity"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"done\n"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"<Style "
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Error trying to skip style data"
	.size	.L.str.16, 32

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Loading global styles -- "
	.size	.L.str.17, 26

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Saving style %s, brush name '%s'\n"
	.size	.L.str.18, 34

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"<Style %s>\n"
	.size	.L.str.19, 12

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"BrushName:      %s\n"
	.size	.L.str.20, 20

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Error saving style %s: saving NULL for brush name"
	.size	.L.str.21, 50

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"PaintType:       %d\n"
	.size	.L.str.22, 21

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"FillType:       %d\n"
	.size	.L.str.23, 20

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"FillOpacity:    %s\n"
	.size	.L.str.24, 20

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Pattern:        %s\n"
	.size	.L.str.25, 20

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Gradient:       %s\n"
	.size	.L.str.26, 20

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Foreground: %s %s %s %s\n"
	.size	.L.str.27, 25

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Background: %s %s %s %s\n"
	.size	.L.str.28, 25

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"</Style>\n"
	.size	.L.str.29, 10

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Saving style %s as attributes\n"
	.size	.L.str.30, 31

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"BrushName=\"%s\" "
	.size	.L.str.31, 16

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Foreground=\"%s %s %s %s\" "
	.size	.L.str.32, 26

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Background=\"%s %s %s %s\" "
	.size	.L.str.33, 26

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"FillType=%d "
	.size	.L.str.34, 13

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"PaintType=%d "
	.size	.L.str.35, 14

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"FillOpacity=%s "
	.size	.L.str.36, 16

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Saving global styles.\n"
	.size	.L.str.37, 23

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Setting foreground color from color selector\n"
	.size	.L.str.38, 46

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Setting background color from color selector\n"
	.size	.L.str.39, 46

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Eror: name is NULL in gfig_style_copy."
	.size	.L.str.40, 39

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Copying style %s as style %s\n"
	.size	.L.str.41, 30

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Error copying style %s: brush name is NULL."
	.size	.L.str.42, 44

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Applying style '%s' -- "
	.size	.L.str.43, 24

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Style apply: Failed to set brush to '%s' in style '%s'"
	.size	.L.str.44, 55

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"done.\n"
	.size	.L.str.45, 7

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Error: name is NULL in gfig_read_gimp_style."
	.size	.L.str.46, 45

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Reading Gimp settings as style %s\n"
	.size	.L.str.47, 35

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Setting context from style '%s' -- "
	.size	.L.str.48, 36

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Style from context: Failed to set brush to '%s'"
	.size	.L.str.49, 48

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"object"
	.size	.L.str.50, 7

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Setting foreground color to %lg %lg %lg\n"
	.size	.L.str.51, 41

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Failed to get brush info"
	.size	.L.str.52, 25

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Parameter '%s' not found"
	.size	.L.str.53, 25

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"%%%lus %%%lus %%%lus %%%lus"
	.size	.L.str.54, 28


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
