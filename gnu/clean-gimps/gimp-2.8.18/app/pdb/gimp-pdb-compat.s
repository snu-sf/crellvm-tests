	.text
	.file	"gimp-pdb-compat.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	-4503599627370497       # double -1.7976931348623157E+308
.LCPI0_1:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
	.text
	.globl	gimp_pdb_compat_param_spec
	.align	16, 0x90
	.type	gimp_pdb_compat_param_spec,@function
gimp_pdb_compat_param_spec:             # @gimp_pdb_compat_param_spec
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	$0, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_compat_param_spec, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_44
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB0_15
# BB#14:                                # %if.then.13
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_compat_param_spec, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_44
.LBB0_16:                               # %if.end.15
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.16
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$22, %rdx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	ja	.LBB0_41
# BB#45:                                # %do.end.16
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_18:                               # %sw.bb
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$3, %eax
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	$3, (%rsp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	%rax, -48(%rbp)
	jmp	.LBB0_41
.LBB0_19:                               # %sw.bb.18
	movl	$4294934528, %ecx       # imm = 0xFFFF8000
	movl	$32767, %r8d            # imm = 0x7FFF
	xorl	%r9d, %r9d
	movl	$3, %eax
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	$3, (%rsp)
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gimp_param_spec_int16
	movq	%rax, -48(%rbp)
	jmp	.LBB0_41
.LBB0_20:                               # %sw.bb.20
	xorl	%eax, %eax
	movl	$255, %r8d
	movl	$3, %ecx
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	%eax, %r9d
	movl	$3, (%rsp)
	callq	gimp_param_spec_int8
	movq	%rax, -48(%rbp)
	jmp	.LBB0_41
.LBB0_21:                               # %sw.bb.22
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$3, %ecx
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	g_param_spec_double
	movq	%rax, -48(%rbp)
	jmp	.LBB0_41
.LBB0_22:                               # %sw.bb.24
	movl	$1, %eax
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$3, %ecx
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %r8
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	%eax, %r8d
	movq	$0, (%rsp)
	movl	$3, 8(%rsp)
	callq	gimp_param_spec_string
	movq	%rax, -48(%rbp)
	jmp	.LBB0_41
.LBB0_23:                               # %sw.bb.26
	movl	$3, %ecx
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_param_spec_int32_array
	movq	%rax, -48(%rbp)
	jmp	.LBB0_41
.LBB0_24:                               # %sw.bb.28
	movl	$3, %ecx
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_param_spec_int16_array
	movq	%rax, -48(%rbp)
	jmp	.LBB0_41
.LBB0_25:                               # %sw.bb.30
	movl	$3, %ecx
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_param_spec_int8_array
	movq	%rax, -48(%rbp)
	jmp	.LBB0_41
.LBB0_26:                               # %sw.bb.32
	movl	$3, %ecx
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_param_spec_float_array
	movq	%rax, -48(%rbp)
	jmp	.LBB0_41
.LBB0_27:                               # %sw.bb.34
	movl	$3, %ecx
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_param_spec_string_array
	movq	%rax, -48(%rbp)
	jmp	.LBB0_41
.LBB0_28:                               # %sw.bb.36
	movl	$1, %ecx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movl	$3, %r9d
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_param_spec_rgb
	movq	%rax, -48(%rbp)
	jmp	.LBB0_41
.LBB0_29:                               # %sw.bb.38
	movl	$1, %r8d
	movl	$3, %r9d
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	gimp_param_spec_item_id
	movq	%rax, -48(%rbp)
	jmp	.LBB0_41
.LBB0_30:                               # %sw.bb.40
	movl	$1, %r8d
	movl	$3, %r9d
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	gimp_param_spec_display_id
	movq	%rax, -48(%rbp)
	jmp	.LBB0_41
.LBB0_31:                               # %sw.bb.42
	movl	$1, %r8d
	movl	$3, %r9d
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	gimp_param_spec_image_id
	movq	%rax, -48(%rbp)
	jmp	.LBB0_41
.LBB0_32:                               # %sw.bb.44
	movl	$1, %r8d
	movl	$3, %r9d
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	gimp_param_spec_layer_id
	movq	%rax, -48(%rbp)
	jmp	.LBB0_41
.LBB0_33:                               # %sw.bb.46
	movl	$1, %r8d
	movl	$3, %r9d
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	gimp_param_spec_channel_id
	movq	%rax, -48(%rbp)
	jmp	.LBB0_41
.LBB0_34:                               # %sw.bb.48
	movl	$1, %r8d
	movl	$3, %r9d
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	gimp_param_spec_drawable_id
	movq	%rax, -48(%rbp)
	jmp	.LBB0_41
.LBB0_35:                               # %sw.bb.50
	movl	$1, %r8d
	movl	$3, %r9d
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	gimp_param_spec_selection_id
	movq	%rax, -48(%rbp)
	jmp	.LBB0_41
.LBB0_36:                               # %sw.bb.52
	movl	$3, %ecx
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_param_spec_color_array
	movq	%rax, -48(%rbp)
	jmp	.LBB0_41
.LBB0_37:                               # %sw.bb.54
	movl	$1, %r8d
	movl	$3, %r9d
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	gimp_param_spec_vectors_id
	movq	%rax, -48(%rbp)
	jmp	.LBB0_41
.LBB0_38:                               # %sw.bb.56
	movl	$3, %ecx
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_param_spec_parasite
	movq	%rax, -48(%rbp)
	jmp	.LBB0_41
.LBB0_39:                               # %sw.bb.58
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	callq	gimp_pdb_status_type_get_type
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	%rax, -48(%rbp)
	jmp	.LBB0_41
.LBB0_40:                               # %sw.bb.61
	jmp	.LBB0_41
.LBB0_41:                               # %sw.epilog
	cmpq	$0, -48(%rbp)
	jne	.LBB0_43
# BB#42:                                # %if.then.63
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %edi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	callq	gimp_pdb_compat_arg_type_to_string
	movabsq	$.L.str.3, %rdi
	movabsq	$.L__func__.gimp_pdb_compat_param_spec, %rsi
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_warning
.LBB0_43:                               # %if.end.65
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_44:                               # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_pdb_compat_param_spec, .Lfunc_end0-gimp_pdb_compat_param_spec
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_18
	.quad	.LBB0_19
	.quad	.LBB0_20
	.quad	.LBB0_21
	.quad	.LBB0_22
	.quad	.LBB0_23
	.quad	.LBB0_24
	.quad	.LBB0_25
	.quad	.LBB0_26
	.quad	.LBB0_27
	.quad	.LBB0_28
	.quad	.LBB0_29
	.quad	.LBB0_30
	.quad	.LBB0_31
	.quad	.LBB0_32
	.quad	.LBB0_33
	.quad	.LBB0_34
	.quad	.LBB0_35
	.quad	.LBB0_36
	.quad	.LBB0_37
	.quad	.LBB0_38
	.quad	.LBB0_39
	.quad	.LBB0_40

	.text
	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB1_2
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
.LBB1_2:                                # %entry
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
	movl	$.L.str, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end1:
	.size	g_warning, .Lfunc_end1-g_warning
	.cfi_endproc

	.globl	gimp_pdb_compat_arg_type_to_string
	.align	16, 0x90
	.type	gimp_pdb_compat_arg_type_to_string,@function
gimp_pdb_compat_arg_type_to_string:     # @gimp_pdb_compat_arg_type_to_string
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
	movl	%edi, -12(%rbp)
	callq	gimp_pdb_arg_type_get_type
	leaq	-24(%rbp), %rdx
	xorl	%edi, %edi
	movl	%edi, %ecx
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	movq	-32(%rbp), %r8          # 8-byte Reload
	movq	-32(%rbp), %r9          # 8-byte Reload
	callq	gimp_enum_get_value
	cmpl	$0, %eax
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.6, %rdi
	movl	-12(%rbp), %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
	jmp	.LBB2_3
.LBB2_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
.LBB2_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_pdb_compat_arg_type_to_string, .Lfunc_end2-gimp_pdb_compat_arg_type_to_string
	.cfi_endproc

	.globl	gimp_pdb_compat_arg_type_to_gtype
	.align	16, 0x90
	.type	gimp_pdb_compat_arg_type_to_gtype,@function
gimp_pdb_compat_arg_type_to_gtype:      # @gimp_pdb_compat_arg_type_to_gtype
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
	subq	$48, %rsp
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %edi
	movl	%edi, %eax
	movq	%rax, %rcx
	subq	$22, %rcx
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	ja	.LBB3_24
# BB#26:                                # %entry
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI3_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB3_1:                                # %sw.bb
	callq	gimp_int32_get_type
	movq	%rax, -8(%rbp)
	jmp	.LBB3_25
.LBB3_2:                                # %sw.bb.1
	callq	gimp_int16_get_type
	movq	%rax, -8(%rbp)
	jmp	.LBB3_25
.LBB3_3:                                # %sw.bb.3
	callq	gimp_int8_get_type
	movq	%rax, -8(%rbp)
	jmp	.LBB3_25
.LBB3_4:                                # %sw.bb.5
	movq	$60, -8(%rbp)
	jmp	.LBB3_25
.LBB3_5:                                # %sw.bb.6
	movq	$64, -8(%rbp)
	jmp	.LBB3_25
.LBB3_6:                                # %sw.bb.7
	callq	gimp_int32_array_get_type
	movq	%rax, -8(%rbp)
	jmp	.LBB3_25
.LBB3_7:                                # %sw.bb.9
	callq	gimp_int16_array_get_type
	movq	%rax, -8(%rbp)
	jmp	.LBB3_25
.LBB3_8:                                # %sw.bb.11
	callq	gimp_int8_array_get_type
	movq	%rax, -8(%rbp)
	jmp	.LBB3_25
.LBB3_9:                                # %sw.bb.13
	callq	gimp_float_array_get_type
	movq	%rax, -8(%rbp)
	jmp	.LBB3_25
.LBB3_10:                               # %sw.bb.15
	callq	gimp_string_array_get_type
	movq	%rax, -8(%rbp)
	jmp	.LBB3_25
.LBB3_11:                               # %sw.bb.17
	callq	gimp_rgb_get_type
	movq	%rax, -8(%rbp)
	jmp	.LBB3_25
.LBB3_12:                               # %sw.bb.19
	callq	gimp_item_id_get_type
	movq	%rax, -8(%rbp)
	jmp	.LBB3_25
.LBB3_13:                               # %sw.bb.21
	callq	gimp_display_id_get_type
	movq	%rax, -8(%rbp)
	jmp	.LBB3_25
.LBB3_14:                               # %sw.bb.23
	callq	gimp_image_id_get_type
	movq	%rax, -8(%rbp)
	jmp	.LBB3_25
.LBB3_15:                               # %sw.bb.25
	callq	gimp_layer_id_get_type
	movq	%rax, -8(%rbp)
	jmp	.LBB3_25
.LBB3_16:                               # %sw.bb.27
	callq	gimp_channel_id_get_type
	movq	%rax, -8(%rbp)
	jmp	.LBB3_25
.LBB3_17:                               # %sw.bb.29
	callq	gimp_drawable_id_get_type
	movq	%rax, -8(%rbp)
	jmp	.LBB3_25
.LBB3_18:                               # %sw.bb.31
	callq	gimp_selection_id_get_type
	movq	%rax, -8(%rbp)
	jmp	.LBB3_25
.LBB3_19:                               # %sw.bb.33
	callq	gimp_color_array_get_type
	movq	%rax, -8(%rbp)
	jmp	.LBB3_25
.LBB3_20:                               # %sw.bb.35
	callq	gimp_vectors_id_get_type
	movq	%rax, -8(%rbp)
	jmp	.LBB3_25
.LBB3_21:                               # %sw.bb.37
	callq	gimp_parasite_get_type
	movq	%rax, -8(%rbp)
	jmp	.LBB3_25
.LBB3_22:                               # %sw.bb.39
	callq	gimp_pdb_status_type_get_type
	movq	%rax, -8(%rbp)
	jmp	.LBB3_25
.LBB3_23:                               # %sw.bb.41
	jmp	.LBB3_24
.LBB3_24:                               # %sw.epilog
	movl	-12(%rbp), %edx
	movl	-12(%rbp), %edi
	movl	%edx, -36(%rbp)         # 4-byte Spill
	callq	gimp_pdb_compat_arg_type_to_string
	movabsq	$.L.str.4, %rdi
	movabsq	$.L__func__.gimp_pdb_compat_arg_type_to_gtype, %rsi
	movl	-36(%rbp), %edx         # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_warning
	movq	$4, -8(%rbp)
.LBB3_25:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_pdb_compat_arg_type_to_gtype, .Lfunc_end3-gimp_pdb_compat_arg_type_to_gtype
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
	.quad	.LBB3_7
	.quad	.LBB3_8
	.quad	.LBB3_9
	.quad	.LBB3_10
	.quad	.LBB3_11
	.quad	.LBB3_12
	.quad	.LBB3_13
	.quad	.LBB3_14
	.quad	.LBB3_15
	.quad	.LBB3_16
	.quad	.LBB3_17
	.quad	.LBB3_18
	.quad	.LBB3_19
	.quad	.LBB3_20
	.quad	.LBB3_21
	.quad	.LBB3_22
	.quad	.LBB3_23

	.text
	.globl	gimp_pdb_compat_arg_type_from_gtype
	.align	16, 0x90
	.type	gimp_pdb_compat_arg_type_from_gtype,@function
gimp_pdb_compat_arg_type_from_gtype:    # @gimp_pdb_compat_arg_type_from_gtype
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
	subq	$464, %rsp              # imm = 0x1D0
	movq	%rdi, -8(%rbp)
	cmpl	$0, gimp_pdb_compat_arg_type_from_gtype.pdb_type_quark
	jne	.LBB4_6
# BB#1:                                 # %if.then
	callq	gimp_int32_get_type
	movq	%rax, -448(%rbp)
	movl	$0, -440(%rbp)
	movq	$24, -432(%rbp)
	movl	$0, -424(%rbp)
	movq	$28, -416(%rbp)
	movl	$0, -408(%rbp)
	movq	$48, -400(%rbp)
	movl	$0, -392(%rbp)
	movq	$20, -384(%rbp)
	movl	$0, -376(%rbp)
	callq	gimp_int16_get_type
	movq	%rax, -368(%rbp)
	movl	$1, -360(%rbp)
	callq	gimp_int8_get_type
	movq	%rax, -352(%rbp)
	movl	$2, -344(%rbp)
	movq	$60, -336(%rbp)
	movl	$3, -328(%rbp)
	movq	$64, -320(%rbp)
	movl	$4, -312(%rbp)
	callq	gimp_rgb_get_type
	movq	%rax, -304(%rbp)
	movl	$10, -296(%rbp)
	callq	gimp_int32_array_get_type
	movq	%rax, -288(%rbp)
	movl	$5, -280(%rbp)
	callq	gimp_int16_array_get_type
	movq	%rax, -272(%rbp)
	movl	$6, -264(%rbp)
	callq	gimp_int8_array_get_type
	movq	%rax, -256(%rbp)
	movl	$7, -248(%rbp)
	callq	gimp_float_array_get_type
	movq	%rax, -240(%rbp)
	movl	$8, -232(%rbp)
	callq	gimp_string_array_get_type
	movq	%rax, -224(%rbp)
	movl	$9, -216(%rbp)
	callq	gimp_color_array_get_type
	movq	%rax, -208(%rbp)
	movl	$18, -200(%rbp)
	callq	gimp_item_id_get_type
	movq	%rax, -192(%rbp)
	movl	$11, -184(%rbp)
	callq	gimp_display_id_get_type
	movq	%rax, -176(%rbp)
	movl	$12, -168(%rbp)
	callq	gimp_image_id_get_type
	movq	%rax, -160(%rbp)
	movl	$13, -152(%rbp)
	callq	gimp_layer_id_get_type
	movq	%rax, -144(%rbp)
	movl	$14, -136(%rbp)
	callq	gimp_channel_id_get_type
	movq	%rax, -128(%rbp)
	movl	$15, -120(%rbp)
	callq	gimp_drawable_id_get_type
	movq	%rax, -112(%rbp)
	movl	$16, -104(%rbp)
	callq	gimp_selection_id_get_type
	movq	%rax, -96(%rbp)
	movl	$17, -88(%rbp)
	callq	gimp_layer_mask_id_get_type
	movq	%rax, -80(%rbp)
	movl	$15, -72(%rbp)
	callq	gimp_vectors_id_get_type
	movq	%rax, -64(%rbp)
	movl	$19, -56(%rbp)
	callq	gimp_parasite_get_type
	movq	%rax, -48(%rbp)
	movl	$20, -40(%rbp)
	callq	gimp_pdb_status_type_get_type
	movabsq	$.L.str.5, %rdi
	movq	%rax, -32(%rbp)
	movl	$21, -24(%rbp)
	callq	g_quark_from_static_string
	movl	%eax, gimp_pdb_compat_arg_type_from_gtype.pdb_type_quark
	movl	$0, -452(%rbp)
.LBB4_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-452(%rbp), %rax
	cmpq	$27, %rax
	jae	.LBB4_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB4_2 Depth=1
	leaq	-448(%rbp), %rax
	movslq	-452(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdi
	movl	gimp_pdb_compat_arg_type_from_gtype.pdb_type_quark, %esi
	movslq	-452(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %r8d
	movl	%r8d, %edx
	callq	g_type_set_qdata
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	-452(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -452(%rbp)
	jmp	.LBB4_2
.LBB4_5:                                # %for.end
	jmp	.LBB4_6
.LBB4_6:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	gimp_pdb_compat_arg_type_from_gtype.pdb_type_quark, %esi
	callq	g_type_get_qdata
	movl	%eax, %esi
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_pdb_compat_arg_type_from_gtype, .Lfunc_end4-gimp_pdb_compat_arg_type_from_gtype
	.cfi_endproc

	.globl	gimp_pdb_compat_procs_register
	.align	16, 0x90
	.type	gimp_pdb_compat_procs_register,@function
gimp_pdb_compat_procs_register:         # @gimp_pdb_compat_procs_register
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_pdb_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_compat_procs_register, %rsi
	movabsq	$.L.str.190, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_18
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	cmpl	$0, -12(%rbp)
	je	.LBB5_18
# BB#13:                                # %if.then.12
	movl	$0, -44(%rbp)
.LBB5_14:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-44(%rbp), %rax
	cmpq	$112, %rax
	jae	.LBB5_17
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB5_14 Depth=1
	movabsq	$gimp_pdb_compat_procs_register.compat_procs, %rax
	movq	-8(%rbp), %rdi
	movslq	-44(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rsi
	movslq	-44(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rdx
	callq	gimp_pdb_register_compat_proc_name
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB5_14 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB5_14
.LBB5_17:                               # %for.end
	jmp	.LBB5_18
.LBB5_18:                               # %if.end.18
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_pdb_compat_procs_register, .Lfunc_end5-gimp_pdb_compat_procs_register
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-PDB"
	.size	.L.str, 9

	.type	.L__func__.gimp_pdb_compat_param_spec,@object # @__func__.gimp_pdb_compat_param_spec
.L__func__.gimp_pdb_compat_param_spec:
	.asciz	"gimp_pdb_compat_param_spec"
	.size	.L__func__.gimp_pdb_compat_param_spec, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"name != NULL"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%s: returning NULL for %s (%s)"
	.size	.L.str.3, 31

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s: returning G_TYPE_NONE for %d (%s)"
	.size	.L.str.4, 38

	.type	.L__func__.gimp_pdb_compat_arg_type_to_gtype,@object # @__func__.gimp_pdb_compat_arg_type_to_gtype
.L__func__.gimp_pdb_compat_arg_type_to_gtype:
	.asciz	"gimp_pdb_compat_arg_type_to_gtype"
	.size	.L__func__.gimp_pdb_compat_arg_type_to_gtype, 34

	.type	gimp_pdb_compat_arg_type_from_gtype.pdb_type_quark,@object # @gimp_pdb_compat_arg_type_from_gtype.pdb_type_quark
	.local	gimp_pdb_compat_arg_type_from_gtype.pdb_type_quark
	.comm	gimp_pdb_compat_arg_type_from_gtype.pdb_type_quark,4,4
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-pdb-type"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"(PDB type %d unknown)"
	.size	.L.str.6, 22

	.type	gimp_pdb_compat_procs_register.compat_procs,@object # @gimp_pdb_compat_procs_register.compat_procs
	.section	.rodata,"a",@progbits
	.align	16
gimp_pdb_compat_procs_register.compat_procs:
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.41
	.quad	.L.str.42
	.quad	.L.str.43
	.quad	.L.str.44
	.quad	.L.str.45
	.quad	.L.str.14
	.quad	.L.str.46
	.quad	.L.str.47
	.quad	.L.str.48
	.quad	.L.str.16
	.quad	.L.str.49
	.quad	.L.str.18
	.quad	.L.str.50
	.quad	.L.str.20
	.quad	.L.str.51
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.22
	.quad	.L.str.56
	.quad	.L.str.24
	.quad	.L.str.57
	.quad	.L.str.26
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	.L.str.60
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	.L.str.74
	.quad	.L.str.75
	.quad	.L.str.76
	.quad	.L.str.77
	.quad	.L.str.78
	.quad	.L.str.79
	.quad	.L.str.80
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	.L.str.83
	.quad	.L.str.85
	.quad	.L.str.86
	.quad	.L.str.87
	.quad	.L.str.86
	.quad	.L.str.88
	.quad	.L.str.89
	.quad	.L.str.90
	.quad	.L.str.91
	.quad	.L.str.92
	.quad	.L.str.93
	.quad	.L.str.94
	.quad	.L.str.95
	.quad	.L.str.96
	.quad	.L.str.97
	.quad	.L.str.98
	.quad	.L.str.99
	.quad	.L.str.100
	.quad	.L.str.101
	.quad	.L.str.102
	.quad	.L.str.103
	.quad	.L.str.104
	.quad	.L.str.105
	.quad	.L.str.106
	.quad	.L.str.107
	.quad	.L.str.108
	.quad	.L.str.109
	.quad	.L.str.110
	.quad	.L.str.111
	.quad	.L.str.112
	.quad	.L.str.113
	.quad	.L.str.114
	.quad	.L.str.115
	.quad	.L.str.116
	.quad	.L.str.117
	.quad	.L.str.118
	.quad	.L.str.119
	.quad	.L.str.120
	.quad	.L.str.121
	.quad	.L.str.122
	.quad	.L.str.123
	.quad	.L.str.124
	.quad	.L.str.14
	.quad	.L.str.40
	.quad	.L.str.125
	.quad	.L.str.126
	.quad	.L.str.16
	.quad	.L.str.127
	.quad	.L.str.22
	.quad	.L.str.128
	.quad	.L.str.20
	.quad	.L.str.129
	.quad	.L.str.26
	.quad	.L.str.130
	.quad	.L.str.47
	.quad	.L.str.131
	.quad	.L.str.54
	.quad	.L.str.132
	.quad	.L.str.18
	.quad	.L.str.133
	.quad	.L.str.24
	.quad	.L.str.134
	.quad	.L.str.135
	.quad	.L.str.136
	.quad	.L.str.137
	.quad	.L.str.138
	.quad	.L.str.139
	.quad	.L.str.140
	.quad	.L.str.141
	.quad	.L.str.142
	.quad	.L.str.143
	.quad	.L.str.144
	.quad	.L.str.145
	.quad	.L.str.146
	.quad	.L.str.147
	.quad	.L.str.148
	.quad	.L.str.149
	.quad	.L.str.150
	.quad	.L.str.151
	.quad	.L.str.152
	.quad	.L.str.143
	.quad	.L.str.153
	.quad	.L.str.145
	.quad	.L.str.154
	.quad	.L.str.147
	.quad	.L.str.155
	.quad	.L.str.143
	.quad	.L.str.156
	.quad	.L.str.145
	.quad	.L.str.157
	.quad	.L.str.147
	.quad	.L.str.158
	.quad	.L.str.149
	.quad	.L.str.159
	.quad	.L.str.151
	.quad	.L.str.160
	.quad	.L.str.115
	.quad	.L.str.161
	.quad	.L.str.125
	.quad	.L.str.162
	.quad	.L.str.16
	.quad	.L.str.163
	.quad	.L.str.22
	.quad	.L.str.164
	.quad	.L.str.20
	.quad	.L.str.165
	.quad	.L.str.26
	.quad	.L.str.166
	.quad	.L.str.47
	.quad	.L.str.167
	.quad	.L.str.54
	.quad	.L.str.168
	.quad	.L.str.18
	.quad	.L.str.169
	.quad	.L.str.24
	.quad	.L.str.170
	.quad	.L.str.135
	.quad	.L.str.171
	.quad	.L.str.137
	.quad	.L.str.172
	.quad	.L.str.139
	.quad	.L.str.173
	.quad	.L.str.141
	.quad	.L.str.174
	.quad	.L.str.175
	.quad	.L.str.176
	.quad	.L.str.177
	.quad	.L.str.178
	.quad	.L.str.179
	.quad	.L.str.180
	.quad	.L.str.181
	.quad	.L.str.182
	.quad	.L.str.183
	.quad	.L.str.184
	.quad	.L.str.185
	.quad	.L.str.186
	.quad	.L.str.187
	.quad	.L.str.188
	.quad	.L.str.189
	.size	gimp_pdb_compat_procs_register.compat_procs, 1792

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"gimp-blend"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-edit-blend"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-brushes-list"
	.size	.L.str.9, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-brushes-get-list"
	.size	.L.str.10, 22

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-bucket-fill"
	.size	.L.str.11, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-edit-bucket-fill"
	.size	.L.str.12, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-channel-delete"
	.size	.L.str.13, 20

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-item-delete"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-channel-get-name"
	.size	.L.str.15, 22

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-item-get-name"
	.size	.L.str.16, 19

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp-channel-get-tattoo"
	.size	.L.str.17, 24

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-item-get-tattoo"
	.size	.L.str.18, 21

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-channel-get-visible"
	.size	.L.str.19, 25

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-item-get-visible"
	.size	.L.str.20, 22

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-channel-set-name"
	.size	.L.str.21, 22

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-item-set-name"
	.size	.L.str.22, 19

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-channel-set-tattoo"
	.size	.L.str.23, 24

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-item-set-tattoo"
	.size	.L.str.24, 21

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-channel-set-visible"
	.size	.L.str.25, 25

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp-item-set-visible"
	.size	.L.str.26, 22

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimp-color-picker"
	.size	.L.str.27, 18

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp-image-pick-color"
	.size	.L.str.28, 22

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp-convert-grayscale"
	.size	.L.str.29, 23

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp-image-convert-grayscale"
	.size	.L.str.30, 29

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-convert-indexed"
	.size	.L.str.31, 21

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gimp-image-convert-indexed"
	.size	.L.str.32, 27

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gimp-convert-rgb"
	.size	.L.str.33, 17

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimp-image-convert-rgb"
	.size	.L.str.34, 23

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp-crop"
	.size	.L.str.35, 10

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gimp-image-crop"
	.size	.L.str.36, 16

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"gimp-drawable-bytes"
	.size	.L.str.37, 20

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gimp-drawable-bpp"
	.size	.L.str.38, 18

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gimp-drawable-image"
	.size	.L.str.39, 20

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp-drawable-get-image"
	.size	.L.str.40, 24

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gimp-image-active-drawable"
	.size	.L.str.41, 27

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gimp-image-get-active-drawable"
	.size	.L.str.42, 31

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"gimp-image-floating-selection"
	.size	.L.str.43, 30

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gimp-image-get-floating-sel"
	.size	.L.str.44, 28

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gimp-layer-delete"
	.size	.L.str.45, 18

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gimp-layer-get-linked"
	.size	.L.str.46, 22

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"gimp-item-get-linked"
	.size	.L.str.47, 21

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"gimp-layer-get-name"
	.size	.L.str.48, 20

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gimp-layer-get-tattoo"
	.size	.L.str.49, 22

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"gimp-layer-get-visible"
	.size	.L.str.50, 23

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"gimp-layer-mask"
	.size	.L.str.51, 16

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"gimp-layer-get-mask"
	.size	.L.str.52, 20

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"gimp-layer-set-linked"
	.size	.L.str.53, 22

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"gimp-item-set-linked"
	.size	.L.str.54, 21

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"gimp-layer-set-name"
	.size	.L.str.55, 20

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"gimp-layer-set-tattoo"
	.size	.L.str.56, 22

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"gimp-layer-set-visible"
	.size	.L.str.57, 23

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"gimp-palette-refresh"
	.size	.L.str.58, 21

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"gimp-palettes-refresh"
	.size	.L.str.59, 22

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"gimp-patterns-list"
	.size	.L.str.60, 19

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"gimp-patterns-get-list"
	.size	.L.str.61, 23

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"gimp-temp-PDB-name"
	.size	.L.str.62, 19

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"gimp-procedural-db-temp-name"
	.size	.L.str.63, 29

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"gimp-undo-push-group-end"
	.size	.L.str.64, 25

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"gimp-image-undo-group-end"
	.size	.L.str.65, 26

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"gimp-undo-push-group-start"
	.size	.L.str.66, 27

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"gimp-image-undo-group-start"
	.size	.L.str.67, 28

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"gimp-brushes-get-opacity"
	.size	.L.str.68, 25

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"gimp-context-get-opacity"
	.size	.L.str.69, 25

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"gimp-brushes-get-paint-mode"
	.size	.L.str.70, 28

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"gimp-context-get-paint-mode"
	.size	.L.str.71, 28

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"gimp-brushes-set-brush"
	.size	.L.str.72, 23

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"gimp-context-set-brush"
	.size	.L.str.73, 23

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"gimp-brushes-set-opacity"
	.size	.L.str.74, 25

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"gimp-context-set-opacity"
	.size	.L.str.75, 25

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"gimp-brushes-set-paint-mode"
	.size	.L.str.76, 28

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"gimp-context-set-paint-mode"
	.size	.L.str.77, 28

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"gimp-channel-ops-duplicate"
	.size	.L.str.78, 27

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"gimp-image-duplicate"
	.size	.L.str.79, 21

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"gimp-channel-ops-offset"
	.size	.L.str.80, 24

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"gimp-drawable-offset"
	.size	.L.str.81, 21

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"gimp-gradients-get-active"
	.size	.L.str.82, 26

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"gimp-context-get-gradient"
	.size	.L.str.83, 26

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"gimp-gradients-get-gradient"
	.size	.L.str.84, 28

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"gimp-gradients-set-active"
	.size	.L.str.85, 26

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"gimp-context-set-gradient"
	.size	.L.str.86, 26

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"gimp-gradients-set-gradient"
	.size	.L.str.87, 28

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"gimp-image-get-cmap"
	.size	.L.str.88, 20

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"gimp-image-get-colormap"
	.size	.L.str.89, 24

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"gimp-image-set-cmap"
	.size	.L.str.90, 20

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"gimp-image-set-colormap"
	.size	.L.str.91, 24

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"gimp-palette-get-background"
	.size	.L.str.92, 28

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"gimp-context-get-background"
	.size	.L.str.93, 28

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"gimp-palette-get-foreground"
	.size	.L.str.94, 28

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"gimp-context-get-foreground"
	.size	.L.str.95, 28

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"gimp-palette-set-background"
	.size	.L.str.96, 28

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"gimp-context-set-background"
	.size	.L.str.97, 28

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"gimp-palette-set-default-colors"
	.size	.L.str.98, 32

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"gimp-context-set-default-colors"
	.size	.L.str.99, 32

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"gimp-palette-set-foreground"
	.size	.L.str.100, 28

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"gimp-context-set-foreground"
	.size	.L.str.101, 28

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"gimp-palette-swap-colors"
	.size	.L.str.102, 25

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"gimp-context-swap-colors"
	.size	.L.str.103, 25

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"gimp-palettes-set-palette"
	.size	.L.str.104, 26

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"gimp-context-set-palette"
	.size	.L.str.105, 25

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"gimp-patterns-set-pattern"
	.size	.L.str.106, 26

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"gimp-context-set-pattern"
	.size	.L.str.107, 25

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"gimp-selection-clear"
	.size	.L.str.108, 21

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"gimp-selection-none"
	.size	.L.str.109, 20

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"gimp-layer-get-preserve-trans"
	.size	.L.str.110, 30

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"gimp-layer-get-lock-alpha"
	.size	.L.str.111, 26

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"gimp-layer-set-preserve-trans"
	.size	.L.str.112, 30

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"gimp-layer-set-lock-alpha"
	.size	.L.str.113, 26

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"gimp-drawable-is-valid"
	.size	.L.str.114, 23

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"gimp-item-is-valid"
	.size	.L.str.115, 19

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"gimp-drawable-is-layer"
	.size	.L.str.116, 23

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"gimp-item-is-layer"
	.size	.L.str.117, 19

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"gimp-drawable-is-text-layer"
	.size	.L.str.118, 28

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"gimp-item-is-text-layer"
	.size	.L.str.119, 24

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"gimp-drawable-is-layer-mask"
	.size	.L.str.120, 28

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"gimp-item-is-layer-mask"
	.size	.L.str.121, 24

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"gimp-drawable-is-channel"
	.size	.L.str.122, 25

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"gimp-item-is-channel"
	.size	.L.str.123, 21

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"gimp-drawable-delete"
	.size	.L.str.124, 21

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"gimp-item-get-image"
	.size	.L.str.125, 20

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"gimp-drawable-get-name"
	.size	.L.str.126, 23

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"gimp-drawable-set-name"
	.size	.L.str.127, 23

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"gimp-drawable-get-visible"
	.size	.L.str.128, 26

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"gimp-drawable-set-visible"
	.size	.L.str.129, 26

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"gimp-drawable-get-linked"
	.size	.L.str.130, 25

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"gimp-drawable-set-linked"
	.size	.L.str.131, 25

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"gimp-drawable-get-tattoo"
	.size	.L.str.132, 25

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"gimp-drawable-set-tattoo"
	.size	.L.str.133, 25

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"gimp-drawable-parasite-find"
	.size	.L.str.134, 28

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"gimp-item-get-parasite"
	.size	.L.str.135, 23

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"gimp-drawable-parasite-attach"
	.size	.L.str.136, 30

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"gimp-item-attach-parasite"
	.size	.L.str.137, 26

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"gimp-drawable-parasite-detach"
	.size	.L.str.138, 30

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"gimp-item-detach-parasite"
	.size	.L.str.139, 26

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"gimp-drawable-parasite-list"
	.size	.L.str.140, 28

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"gimp-item-get-parasite-list"
	.size	.L.str.141, 28

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"gimp-image-get-layer-position"
	.size	.L.str.142, 30

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"gimp-image-get-item-position"
	.size	.L.str.143, 29

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"gimp-image-raise-layer"
	.size	.L.str.144, 23

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"gimp-image-raise-item"
	.size	.L.str.145, 22

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"gimp-image-lower-layer"
	.size	.L.str.146, 23

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"gimp-image-lower-item"
	.size	.L.str.147, 22

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"gimp-image-raise-layer-to-top"
	.size	.L.str.148, 30

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"gimp-image-raise-item-to-top"
	.size	.L.str.149, 29

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"gimp-image-lower-layer-to-bottom"
	.size	.L.str.150, 33

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"gimp-image-lower-item-to-bottom"
	.size	.L.str.151, 32

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"gimp-image-get-channel-position"
	.size	.L.str.152, 32

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"gimp-image-raise-channel"
	.size	.L.str.153, 25

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"gimp-image-lower-channel"
	.size	.L.str.154, 25

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"gimp-image-get-vectors-position"
	.size	.L.str.155, 32

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"gimp-image-raise-vectors"
	.size	.L.str.156, 25

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"gimp-image-lower-vectors"
	.size	.L.str.157, 25

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"gimp-image-raise-vectors-to-top"
	.size	.L.str.158, 32

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"gimp-image-lower-vectors-to-bottom"
	.size	.L.str.159, 35

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"gimp-vectors-is-valid"
	.size	.L.str.160, 22

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"gimp-vectors-get-image"
	.size	.L.str.161, 23

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"gimp-vectors-get-name"
	.size	.L.str.162, 22

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"gimp-vectors-set-name"
	.size	.L.str.163, 22

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"gimp-vectors-get-visible"
	.size	.L.str.164, 25

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"gimp-vectors-set-visible"
	.size	.L.str.165, 25

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"gimp-vectors-get-linked"
	.size	.L.str.166, 24

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"gimp-vectors-set-linked"
	.size	.L.str.167, 24

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"gimp-vectors-get-tattoo"
	.size	.L.str.168, 24

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"gimp-vectors-set-tattoo"
	.size	.L.str.169, 24

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"gimp-vectors-parasite-find"
	.size	.L.str.170, 27

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"gimp-vectors-parasite-attach"
	.size	.L.str.171, 29

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"gimp-vectors-parasite-detach"
	.size	.L.str.172, 29

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"gimp-vectors-parasite-list"
	.size	.L.str.173, 27

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"gimp-image-parasite-find"
	.size	.L.str.174, 25

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"gimp-image-get-parasite"
	.size	.L.str.175, 24

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"gimp-image-parasite-attach"
	.size	.L.str.176, 27

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"gimp-image-attach-parasite"
	.size	.L.str.177, 27

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"gimp-image-parasite-detach"
	.size	.L.str.178, 27

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"gimp-image-detach-parasite"
	.size	.L.str.179, 27

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"gimp-image-parasite-list"
	.size	.L.str.180, 25

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"gimp-image-get-parasite-list"
	.size	.L.str.181, 29

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"gimp-parasite-find"
	.size	.L.str.182, 19

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"gimp-get-parasite"
	.size	.L.str.183, 18

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"gimp-parasite-attach"
	.size	.L.str.184, 21

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"gimp-attach-parasite"
	.size	.L.str.185, 21

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"gimp-parasite-detach"
	.size	.L.str.186, 21

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"gimp-detach-parasite"
	.size	.L.str.187, 21

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"gimp-parasite-list"
	.size	.L.str.188, 19

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"gimp-get-parasite-list"
	.size	.L.str.189, 23

	.type	.L__func__.gimp_pdb_compat_procs_register,@object # @__func__.gimp_pdb_compat_procs_register
.L__func__.gimp_pdb_compat_procs_register:
	.asciz	"gimp_pdb_compat_procs_register"
	.size	.L__func__.gimp_pdb_compat_procs_register, 31

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"GIMP_IS_PDB (pdb)"
	.size	.L.str.190, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
