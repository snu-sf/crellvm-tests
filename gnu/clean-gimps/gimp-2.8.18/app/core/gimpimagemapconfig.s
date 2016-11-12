	.text
	.file	"gimpimagemapconfig.bc"
	.globl	gimp_image_map_config_get_type
	.align	16, 0x90
	.type	gimp_image_map_config_get_type,@function
gimp_image_map_config_get_type:         # @gimp_image_map_config_get_type
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_image_map_config_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_image_map_config_get_type.g_define_type_id__volatile, %rax
	movq	%rax, %rdi
	callq	g_once_init_enter
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB0_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then
	callq	gimp_viewable_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$280, %edx              # imm = 0x118
	movabsq	$gimp_image_map_config_class_intern_init, %rdi
	movl	$40, %r8d
	movabsq	$gimp_image_map_config_init, %rcx
	xorl	%esi, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movabsq	$gimp_image_map_config_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_image_map_config_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_map_config_get_type, .Lfunc_end0-gimp_image_map_config_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_config_class_intern_init,@function
gimp_image_map_config_class_intern_init: # @gimp_image_map_config_class_intern_init
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
	callq	g_type_class_peek_parent
	movq	%rax, gimp_image_map_config_parent_class
	cmpl	$0, GimpImageMapConfig_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpImageMapConfig_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_image_map_config_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_map_config_class_intern_init, .Lfunc_end1-gimp_image_map_config_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_config_init,@function
gimp_image_map_config_init:             # @gimp_image_map_config_init
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_map_config_init, .Lfunc_end2-gimp_image_map_config_init
	.cfi_endproc

	.globl	gimp_image_map_config_compare
	.align	16, 0x90
	.type	gimp_image_map_config_compare,@function
gimp_image_map_config_compare:          # @gimp_image_map_config_compare
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gimp_object_get_name
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 32(%rax)
	jbe	.LBB3_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$0, 32(%rax)
	jbe	.LBB3_3
# BB#2:                                 # %if.then
	xorl	%eax, %eax
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	strcmp
	movl	-44(%rbp), %ecx         # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB3_20
.LBB3_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpl	$0, 32(%rax)
	jbe	.LBB3_5
# BB#4:                                 # %if.then.7
	movl	$-1, -4(%rbp)
	jmp	.LBB3_20
.LBB3_5:                                # %if.else.8
	movq	-24(%rbp), %rax
	cmpl	$0, 32(%rax)
	jbe	.LBB3_7
# BB#6:                                 # %if.then.11
	movl	$1, -4(%rbp)
	jmp	.LBB3_20
.LBB3_7:                                # %if.else.12
	cmpq	$0, -32(%rbp)
	je	.LBB3_10
# BB#8:                                 # %land.lhs.true.13
	cmpq	$0, -40(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.15
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	strcmp
	movl	%eax, -4(%rbp)
	jmp	.LBB3_20
.LBB3_10:                               # %if.else.17
	cmpq	$0, -32(%rbp)
	je	.LBB3_12
# BB#11:                                # %if.then.19
	movl	$1, -4(%rbp)
	jmp	.LBB3_20
.LBB3_12:                               # %if.else.20
	cmpq	$0, -40(%rbp)
	je	.LBB3_14
# BB#13:                                # %if.then.22
	movl	$-1, -4(%rbp)
	jmp	.LBB3_20
.LBB3_14:                               # %if.end
	jmp	.LBB3_15
.LBB3_15:                               # %if.end.23
	jmp	.LBB3_16
.LBB3_16:                               # %if.end.24
	jmp	.LBB3_17
.LBB3_17:                               # %if.end.25
	jmp	.LBB3_18
.LBB3_18:                               # %if.end.26
	jmp	.LBB3_19
.LBB3_19:                               # %if.end.27
	movl	$0, -4(%rbp)
.LBB3_20:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_image_map_config_compare, .Lfunc_end3-gimp_image_map_config_compare
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_config_class_init,@function
gimp_image_map_config_class_init:       # @gimp_image_map_config_class_init
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
	pushq	%rbx
	subq	$40, %rsp
.Ltmp15:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$.L.str.1, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.2, %rdx
	xorl	%ecx, %ecx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movl	$263, %r9d              # imm = 0x107
	movabsq	$gimp_image_map_config_get_property, %r10
	movabsq	$gimp_image_map_config_set_property, %r11
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%r11, 24(%rax)
	movq	-24(%rbp), %rax
	movq	%r10, 32(%rax)
	movq	-24(%rbp), %rax
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	movl	-28(%rbp), %ebx         # 4-byte Reload
	movl	%r9d, -32(%rbp)         # 4-byte Spill
	movl	%ebx, %r9d
	movl	$263, (%rsp)            # imm = 0x107
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_param_spec_uint
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_image_map_config_class_init, .Lfunc_end4-gimp_image_map_config_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_config_set_property,@function
gimp_image_map_config_set_property:     # @gimp_image_map_config_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	callq	gimp_image_map_config_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -220(%rbp)        # 4-byte Spill
	jne	.LBB5_4
	jmp	.LBB5_1
.LBB5_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_uint
	movq	-40(%rbp), %rdi
	movl	%eax, 32(%rdi)
	movq	-40(%rbp), %rdi
	cmpl	$0, 32(%rdi)
	jbe	.LBB5_3
# BB#2:                                 # %if.then
	leaq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -48(%rbp)
	callq	localtime
	movl	$64, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.3, %rdx
	leaq	-104(%rbp), %rdi
	leaq	-176(%rbp), %r8
	movl	$56, %ecx
	movl	%ecx, %r9d
	movq	%rdi, %r10
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movq	%r9, %rdx
	movq	%r8, -256(%rbp)         # 8-byte Spill
	callq	memcpy
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	-240(%rbp), %rsi        # 8-byte Reload
	movq	-248(%rbp), %rdx        # 8-byte Reload
	movq	-232(%rbp), %rcx        # 8-byte Reload
	callq	strftime
	movq	$-1, %rsi
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	leaq	-176(%rbp), %rdi
	movq	%rcx, %rdx
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	movq	-264(%rbp), %r8         # 8-byte Reload
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	g_locale_to_utf8
	movq	%rax, -184(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-184(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_name
	movq	-184(%rbp), %rdi
	callq	g_free
.LBB5_3:                                # %if.end
	jmp	.LBB5_7
.LBB5_4:                                # %sw.default
	jmp	.LBB5_5
.LBB5_5:                                # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -204(%rbp)
	movl	-204(%rbp), %r8d
	movq	-200(%rbp), %rax
	movq	8(%rax), %r9
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -284(%rbp)        # 4-byte Spill
	movq	%r9, -296(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-192(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.4, %rdi
	movabsq	$.L.str.5, %rsi
	movl	$127, %edx
	movabsq	$.L.str.6, %rcx
	movl	-284(%rbp), %r8d        # 4-byte Reload
	movq	-296(%rbp), %r9         # 8-byte Reload
	movq	-304(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB5_7
.LBB5_7:                                # %sw.epilog
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_image_map_config_set_property, .Lfunc_end5-gimp_image_map_config_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_config_get_property,@function
gimp_image_map_config_get_property:     # @gimp_image_map_config_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_map_config_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB6_2
	jmp	.LBB6_1
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	32(%rax), %esi
	callq	g_value_set_uint
	jmp	.LBB6_5
.LBB6_2:                                # %sw.default
	jmp	.LBB6_3
.LBB6_3:                                # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.4, %rdi
	movabsq	$.L.str.5, %rsi
	movl	$91, %edx
	movabsq	$.L.str.6, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB6_5
.LBB6_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_image_map_config_get_property, .Lfunc_end6-gimp_image_map_config_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
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
	je	.LBB7_2
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
.LBB7_2:                                # %entry
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
	movl	$.L.str.7, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end7:
	.size	g_warning, .Lfunc_end7-g_warning
	.cfi_endproc

	.type	gimp_image_map_config_get_type.g_define_type_id__volatile,@object # @gimp_image_map_config_get_type.g_define_type_id__volatile
	.local	gimp_image_map_config_get_type.g_define_type_id__volatile
	.comm	gimp_image_map_config_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpImageMapConfig"
	.size	.L.str, 19

	.type	gimp_image_map_config_parent_class,@object # @gimp_image_map_config_parent_class
	.local	gimp_image_map_config_parent_class
	.comm	gimp_image_map_config_parent_class,8,8
	.type	GimpImageMapConfig_private_offset,@object # @GimpImageMapConfig_private_offset
	.local	GimpImageMapConfig_private_offset
	.comm	GimpImageMapConfig_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"time"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Time of settings creation"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%Y-%m-%d %H:%M:%S"
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.4, 54

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimpimagemapconfig.c"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"property"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Gimp-Core"
	.size	.L.str.7, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
