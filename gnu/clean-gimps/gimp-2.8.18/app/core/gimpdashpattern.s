	.text
	.file	"gimpdashpattern.bc"
	.globl	gimp_dash_pattern_get_type
	.align	16, 0x90
	.type	gimp_dash_pattern_get_type,@function
gimp_dash_pattern_get_type:             # @gimp_dash_pattern_get_type
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
	cmpq	$0, gimp_dash_pattern_get_type.type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	movabsq	$gimp_dash_pattern_copy, %rax
	movabsq	$gimp_dash_pattern_free, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_boxed_type_register_static
	movq	%rax, gimp_dash_pattern_get_type.type
.LBB0_2:                                # %if.end
	movq	gimp_dash_pattern_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_dash_pattern_get_type, .Lfunc_end0-gimp_dash_pattern_get_type
	.cfi_endproc

	.globl	gimp_dash_pattern_copy
	.align	16, 0x90
	.type	gimp_dash_pattern_copy,@function
gimp_dash_pattern_copy:                 # @gimp_dash_pattern_copy
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB1_6
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	$8, %edx
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %ecx
	movl	%eax, %edi
	movl	%eax, %esi
	callq	g_array_sized_new
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB1_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB1_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	shlq	$3, %rax
	addq	%rax, %rcx
	movq	%rcx, %rsi
	callq	g_array_append_vals
	movq	%rax, -40(%rbp)         # 8-byte Spill
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_2
.LBB1_5:                                # %for.end
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.end
	movq	$0, -8(%rbp)
.LBB1_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_dash_pattern_copy, .Lfunc_end1-gimp_dash_pattern_copy
	.cfi_endproc

	.globl	gimp_dash_pattern_free
	.align	16, 0x90
	.type	gimp_dash_pattern_free,@function
gimp_dash_pattern_free:                 # @gimp_dash_pattern_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	g_array_free
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB2_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_dash_pattern_free, .Lfunc_end2-gimp_dash_pattern_free
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4619567317775286272     # double 7
.LCPI3_1:
	.quad	4607182418800017408     # double 1
.LCPI3_2:
	.quad	4611686018427387904     # double 2
.LCPI3_3:
	.quad	4602678819172646912     # double 0.5
.LCPI3_4:
	.quad	4613937818241073152     # double 3
.LCPI3_5:
	.quad	4617315517961601024     # double 5
.LCPI3_6:
	.quad	4621256167635550208     # double 9
.LCPI3_7:
	.quad	4618441417868443648     # double 6
	.text
	.globl	gimp_dash_pattern_new_from_preset
	.align	16, 0x90
	.type	gimp_dash_pattern_new_from_preset,@function
gimp_dash_pattern_new_from_preset:      # @gimp_dash_pattern_new_from_preset
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
	subq	$208, %rsp
	movl	%edi, -12(%rbp)
	xorl	%edi, %edi
	movl	$8, %edx
	movl	%edi, -40(%rbp)         # 4-byte Spill
	movl	-40(%rbp), %esi         # 4-byte Reload
	callq	g_array_new
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %edx
	movl	%edx, %eax
	movq	%rax, %rcx
	subq	$10, %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	ja	.LBB3_32
# BB#36:                                # %entry
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	.LJTI3_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB3_1:                                # %sw.bb
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB3_32
.LBB3_2:                                # %sw.bb.1
	jmp	.LBB3_32
.LBB3_3:                                # %sw.bb.2
	movl	$1, %edx
	leaq	-32(%rbp), %rax
	movsd	.LCPI3_6, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_array_append_vals
	movl	$1, %edx
	leaq	-32(%rbp), %rsi
	movsd	.LCPI3_4, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_array_append_vals
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB3_32
.LBB3_4:                                # %sw.bb.5
	movl	$1, %edx
	leaq	-32(%rbp), %rax
	movsd	.LCPI3_7, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_array_append_vals
	movl	$1, %edx
	leaq	-32(%rbp), %rsi
	movsd	.LCPI3_7, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_array_append_vals
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB3_32
.LBB3_5:                                # %sw.bb.8
	movl	$1, %edx
	leaq	-32(%rbp), %rax
	movsd	.LCPI3_4, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_array_append_vals
	movl	$1, %edx
	leaq	-32(%rbp), %rsi
	movsd	.LCPI3_6, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_array_append_vals
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB3_32
.LBB3_6:                                # %sw.bb.11
	movl	$0, -36(%rbp)
.LBB3_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -36(%rbp)
	jge	.LBB3_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	$1, %edx
	leaq	-32(%rbp), %rax
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_array_append_vals
	movl	$1, %edx
	leaq	-32(%rbp), %rsi
	movsd	.LCPI3_5, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_array_append_vals
	movq	%rax, -120(%rbp)        # 8-byte Spill
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB3_7
.LBB3_10:                               # %for.end
	jmp	.LBB3_32
.LBB3_11:                               # %sw.bb.14
	movl	$0, -36(%rbp)
.LBB3_12:                               # %for.cond.15
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -36(%rbp)
	jge	.LBB3_15
# BB#13:                                # %for.body.17
                                        #   in Loop: Header=BB3_12 Depth=1
	movl	$1, %edx
	leaq	-32(%rbp), %rax
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_array_append_vals
	movl	$1, %edx
	leaq	-32(%rbp), %rsi
	movsd	.LCPI3_4, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_array_append_vals
	movq	%rax, -136(%rbp)        # 8-byte Spill
# BB#14:                                # %for.inc.20
                                        #   in Loop: Header=BB3_12 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB3_12
.LBB3_15:                               # %for.end.22
	jmp	.LBB3_32
.LBB3_16:                               # %sw.bb.23
	movl	$0, -36(%rbp)
.LBB3_17:                               # %for.cond.24
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$12, -36(%rbp)
	jge	.LBB3_20
# BB#18:                                # %for.body.26
                                        #   in Loop: Header=BB3_17 Depth=1
	movl	$1, %edx
	leaq	-32(%rbp), %rax
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_array_append_vals
	movq	%rax, -144(%rbp)        # 8-byte Spill
# BB#19:                                # %for.inc.28
                                        #   in Loop: Header=BB3_17 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB3_17
.LBB3_20:                               # %for.end.30
	jmp	.LBB3_32
.LBB3_21:                               # %sw.bb.31
	movl	$0, -36(%rbp)
.LBB3_22:                               # %for.cond.32
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$24, -36(%rbp)
	jge	.LBB3_25
# BB#23:                                # %for.body.34
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	$1, %edx
	leaq	-32(%rbp), %rax
	movsd	.LCPI3_3, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_array_append_vals
	movq	%rax, -152(%rbp)        # 8-byte Spill
# BB#24:                                # %for.inc.36
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB3_22
.LBB3_25:                               # %for.end.38
	jmp	.LBB3_32
.LBB3_26:                               # %sw.bb.39
	movl	$1, %edx
	leaq	-32(%rbp), %rax
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_array_append_vals
	movl	$1, %edx
	leaq	-32(%rbp), %rsi
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_array_append_vals
	movl	$1, %edx
	leaq	-32(%rbp), %rsi
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_array_append_vals
	movl	$1, %edx
	leaq	-32(%rbp), %rsi
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_array_append_vals
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB3_32
.LBB3_27:                               # %sw.bb.44
	movl	$1, %edx
	leaq	-32(%rbp), %rax
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_array_append_vals
	movl	$0, -36(%rbp)
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB3_28:                               # %for.cond.46
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$5, -36(%rbp)
	jge	.LBB3_31
# BB#29:                                # %for.body.48
                                        #   in Loop: Header=BB3_28 Depth=1
	movl	$1, %edx
	leaq	-32(%rbp), %rax
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_array_append_vals
	movq	%rax, -200(%rbp)        # 8-byte Spill
# BB#30:                                # %for.inc.50
                                        #   in Loop: Header=BB3_28 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB3_28
.LBB3_31:                               # %for.end.52
	jmp	.LBB3_32
.LBB3_32:                               # %sw.epilog
	movq	-24(%rbp), %rax
	cmpl	$2, 8(%rax)
	jae	.LBB3_34
# BB#33:                                # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_dash_pattern_free
	movq	$0, -8(%rbp)
	jmp	.LBB3_35
.LBB3_34:                               # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_35:                               # %return
	movq	-8(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_dash_pattern_new_from_preset, .Lfunc_end3-gimp_dash_pattern_new_from_preset
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_1
	.quad	.LBB3_2
	.quad	.LBB3_3
	.quad	.LBB3_4
	.quad	.LBB3_5
	.quad	.LBB3_6
	.quad	.LBB3_11
	.quad	.LBB3_16
	.quad	.LBB3_21
	.quad	.LBB3_26
	.quad	.LBB3_27

	.text
	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	movl	$.L.str.2, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end4:
	.size	g_warning, .Lfunc_end4-g_warning
	.cfi_endproc

	.globl	gimp_dash_pattern_new_from_segments
	.align	16, 0x90
	.type	gimp_dash_pattern_new_from_segments,@function
gimp_dash_pattern_new_from_segments:    # @gimp_dash_pattern_new_from_segments
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$0, -20(%rbp)
	jne	.LBB5_4
.LBB5_3:                                # %if.then
	jmp	.LBB5_5
.LBB5_4:                                # %if.else
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_dash_pattern_new_from_segments, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_17
.LBB5_5:                                # %if.end
	jmp	.LBB5_6
.LBB5_6:                                # %do.end
	xorl	%eax, %eax
	movl	$8, %edx
	movl	%eax, %edi
	movl	%eax, %esi
	callq	g_array_new
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$1, -52(%rbp)
.LBB5_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB5_14
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB5_7 Depth=1
	movl	-44(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB5_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB5_7 Depth=1
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	cmpl	-52(%rbp), %edx
	jne	.LBB5_11
# BB#10:                                # %if.then.5
                                        #   in Loop: Header=BB5_7 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB5_12
.LBB5_11:                               # %if.else.6
                                        #   in Loop: Header=BB5_7 Depth=1
	movl	$1, %edx
	leaq	-64(%rbp), %rax
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-48(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_array_append_vals
	movl	$1, -48(%rbp)
	cmpl	$0, -52(%rbp)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -52(%rbp)
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB5_12:                               # %if.end.9
                                        #   in Loop: Header=BB5_7 Depth=1
	jmp	.LBB5_13
.LBB5_13:                               # %for.inc
                                        #   in Loop: Header=BB5_7 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB5_7
.LBB5_14:                               # %for.end
	movq	-40(%rbp), %rax
	cmpl	$2, 8(%rax)
	jae	.LBB5_16
# BB#15:                                # %if.then.13
	movq	-40(%rbp), %rdi
	callq	gimp_dash_pattern_free
	movq	$0, -8(%rbp)
	jmp	.LBB5_17
.LBB5_16:                               # %if.end.14
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB5_17:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_dash_pattern_new_from_segments, .Lfunc_end5-gimp_dash_pattern_new_from_segments
	.cfi_endproc

	.globl	gimp_dash_pattern_fill_segments
	.align	16, 0x90
	.type	gimp_dash_pattern_fill_segments,@function
gimp_dash_pattern_fill_segments:        # @gimp_dash_pattern_fill_segments
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$0, -20(%rbp)
	jne	.LBB6_4
.LBB6_3:                                # %if.then
	jmp	.LBB6_5
.LBB6_4:                                # %if.else
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_dash_pattern_fill_segments, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_26
.LBB6_5:                                # %if.end
	jmp	.LBB6_6
.LBB6_6:                                # %do.end
	cmpq	$0, -8(%rbp)
	je	.LBB6_8
# BB#7:                                 # %lor.lhs.false.3
	movq	-8(%rbp), %rax
	cmpl	$1, 8(%rax)
	ja	.LBB6_13
.LBB6_8:                                # %if.then.5
	movl	$0, -44(%rbp)
.LBB6_9:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB6_12
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB6_9 Depth=1
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	$1, (%rcx,%rax,4)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_9
.LBB6_12:                               # %for.end
	jmp	.LBB6_26
.LBB6_13:                               # %if.end.7
	xorps	%xmm0, %xmm0
	movl	$0, -44(%rbp)
	movsd	%xmm0, -40(%rbp)
.LBB6_14:                               # %for.cond.8
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB6_17
# BB#15:                                # %for.body.11
                                        #   in Loop: Header=BB6_14 Depth=1
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
# BB#16:                                # %for.inc.14
                                        #   in Loop: Header=BB6_14 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_14
.LBB6_17:                               # %for.end.16
	cvtsi2sdl	-20(%rbp), %xmm0
	divsd	-40(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	$0, -48(%rbp)
	movslq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -44(%rbp)
.LBB6_18:                               # %for.cond.20
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_20 Depth 2
	movl	-44(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB6_26
# BB#19:                                # %for.body.23
                                        #   in Loop: Header=BB6_18 Depth=1
	jmp	.LBB6_20
.LBB6_20:                               # %while.cond
                                        #   Parent Loop BB6_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-48(%rbp), %eax
	movq	-8(%rbp), %rdx
	cmpl	8(%rdx), %eax
	movb	%cl, -53(%rbp)          # 1-byte Spill
	jae	.LBB6_22
# BB#21:                                # %land.rhs
                                        #   in Loop: Header=BB6_20 Depth=2
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-44(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	setae	%al
	movb	%al, -53(%rbp)          # 1-byte Spill
.LBB6_22:                               # %land.end
                                        #   in Loop: Header=BB6_20 Depth=2
	movb	-53(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_23
	jmp	.LBB6_24
.LBB6_23:                               # %while.body
                                        #   in Loop: Header=BB6_20 Depth=2
	cmpl	$0, -52(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -52(%rbp)
	movl	-48(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -48(%rbp)
	movslq	-48(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movsd	(%rsi,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB6_20
.LBB6_24:                               # %while.end
                                        #   in Loop: Header=BB6_18 Depth=1
	movl	-52(%rbp), %eax
	movslq	-44(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
# BB#25:                                # %for.inc.38
                                        #   in Loop: Header=BB6_18 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_18
.LBB6_26:                               # %for.end.40
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_dash_pattern_fill_segments, .Lfunc_end6-gimp_dash_pattern_fill_segments
	.cfi_endproc

	.globl	gimp_dash_pattern_from_value_array
	.align	16, 0x90
	.type	gimp_dash_pattern_from_value_array,@function
gimp_dash_pattern_from_value_array:     # @gimp_dash_pattern_from_value_array
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB7_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB7_3
.LBB7_2:                                # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB7_19
.LBB7_3:                                # %if.else
	xorl	%eax, %eax
	movl	$8, %edx
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	movl	%eax, %edi
	movl	%eax, %esi
	callq	g_array_sized_new
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB7_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jae	.LBB7_18
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB7_4 Depth=1
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	g_value_array_get_nth
	movq	%rax, -40(%rbp)
# BB#6:                                 # %do.body
                                        #   in Loop: Header=BB7_4 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	$60, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB7_8
# BB#7:                                 # %if.then.6
                                        #   in Loop: Header=BB7_4 Depth=1
	movl	$0, -68(%rbp)
	jmp	.LBB7_12
.LBB7_8:                                # %if.else.7
                                        #   in Loop: Header=BB7_4 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB7_10
# BB#9:                                 # %if.then.9
                                        #   in Loop: Header=BB7_4 Depth=1
	movl	$1, -68(%rbp)
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.10
                                        #   in Loop: Header=BB7_4 Depth=1
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -68(%rbp)
.LBB7_11:                               # %if.end
                                        #   in Loop: Header=BB7_4 Depth=1
	jmp	.LBB7_12
.LBB7_12:                               # %if.end.12
                                        #   in Loop: Header=BB7_4 Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB7_14
# BB#13:                                # %if.then.14
                                        #   in Loop: Header=BB7_4 Depth=1
	jmp	.LBB7_15
.LBB7_14:                               # %if.else.15
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_dash_pattern_from_value_array, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_19
.LBB7_15:                               # %if.end.16
                                        #   in Loop: Header=BB7_4 Depth=1
	jmp	.LBB7_16
.LBB7_16:                               # %do.end
                                        #   in Loop: Header=BB7_4 Depth=1
	movq	-40(%rbp), %rdi
	callq	g_value_get_double
	movl	$1, %edx
	leaq	-48(%rbp), %rdi
	movsd	%xmm0, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	g_array_append_vals
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB7_4 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB7_4
.LBB7_18:                               # %for.end
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB7_19:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_dash_pattern_from_value_array, .Lfunc_end7-gimp_dash_pattern_from_value_array
	.cfi_endproc

	.globl	gimp_dash_pattern_to_value_array
	.align	16, 0x90
	.type	gimp_dash_pattern_to_value_array,@function
gimp_dash_pattern_to_value_array:       # @gimp_dash_pattern_to_value_array
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB8_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB8_3
.LBB8_2:                                # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-16(%rbp), %rax
	movl	8(%rax), %edi
	callq	g_value_array_new
	leaq	-48(%rbp), %rcx
	movl	$60, %edi
	movl	%edi, %esi
	xorl	%edi, %edi
	movl	$24, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, -24(%rbp)
	movq	%rcx, %rax
	movl	%edi, -56(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	-56(%rbp), %r8d         # 4-byte Reload
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movl	%r8d, %esi
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	memset
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	g_value_init
	movl	$0, -52(%rbp)
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB8_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB8_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB8_4 Depth=1
	leaq	-48(%rbp), %rdi
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	callq	g_value_set_double
	leaq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	g_value_array_append
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB8_4 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB8_4
.LBB8_7:                                # %for.end
	leaq	-48(%rbp), %rdi
	callq	g_value_unset
	movq	-24(%rbp), %rdi
	movq	%rdi, -8(%rbp)
.LBB8_8:                                # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_dash_pattern_to_value_array, .Lfunc_end8-gimp_dash_pattern_to_value_array
	.cfi_endproc

	.type	gimp_dash_pattern_get_type.type,@object # @gimp_dash_pattern_get_type.type
	.local	gimp_dash_pattern_get_type.type
	.comm	gimp_dash_pattern_get_type.type,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDashPattern"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_DASH_CUSTOM passed to gimp_dash_pattern_from_preset()"
	.size	.L.str.1, 59

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Gimp-Core"
	.size	.L.str.2, 10

	.type	.L__func__.gimp_dash_pattern_new_from_segments,@object # @__func__.gimp_dash_pattern_new_from_segments
.L__func__.gimp_dash_pattern_new_from_segments:
	.asciz	"gimp_dash_pattern_new_from_segments"
	.size	.L__func__.gimp_dash_pattern_new_from_segments, 36

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"segments != NULL || n_segments == 0"
	.size	.L.str.3, 36

	.type	.L__func__.gimp_dash_pattern_fill_segments,@object # @__func__.gimp_dash_pattern_fill_segments
.L__func__.gimp_dash_pattern_fill_segments:
	.asciz	"gimp_dash_pattern_fill_segments"
	.size	.L__func__.gimp_dash_pattern_fill_segments, 32

	.type	.L__func__.gimp_dash_pattern_from_value_array,@object # @__func__.gimp_dash_pattern_from_value_array
.L__func__.gimp_dash_pattern_from_value_array:
	.asciz	"gimp_dash_pattern_from_value_array"
	.size	.L__func__.gimp_dash_pattern_from_value_array, 35

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"G_VALUE_HOLDS_DOUBLE (item)"
	.size	.L.str.4, 28


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
