	.text
	.file	"gimpmemsize.bc"
	.globl	gimp_memsize_get_type
	.align	16, 0x90
	.type	gimp_memsize_get_type,@function
gimp_memsize_get_type:                  # @gimp_memsize_get_type
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
	cmpq	$0, gimp_memsize_get_type.memsize_type(%rip)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	$44, %eax
	movl	%eax, %edi
	leaq	.L.str(%rip), %rsi
	leaq	gimp_memsize_get_type.type_info(%rip), %rdx
	xorl	%ecx, %ecx
	callq	g_type_register_static@PLT
	movl	$64, %ecx
	movl	%ecx, %esi
	leaq	memsize_to_string(%rip), %rdx
	movq	%rax, gimp_memsize_get_type.memsize_type(%rip)
	movq	gimp_memsize_get_type.memsize_type(%rip), %rdi
	callq	g_value_register_transform_func@PLT
	movl	$64, %ecx
	movl	%ecx, %edi
	leaq	string_to_memsize(%rip), %rdx
	movq	gimp_memsize_get_type.memsize_type(%rip), %rsi
	callq	g_value_register_transform_func@PLT
.LBB0_2:                                # %if.end
	movq	gimp_memsize_get_type.memsize_type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_memsize_get_type, .Lfunc_end0-gimp_memsize_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	memsize_to_string,@function
memsize_to_string:                      # @memsize_to_string
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
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	callq	g_value_get_uint64@PLT
	movq	%rax, %rdi
	callq	gimp_memsize_serialize@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_take_string@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	memsize_to_string, .Lfunc_end1-memsize_to_string
	.cfi_endproc

	.align	16, 0x90
	.type	string_to_memsize,@function
string_to_memsize:                      # @string_to_memsize
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_value_get_string@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB2_3
# BB#1:                                 # %land.lhs.true
	leaq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_memsize_deserialize@PLT
	cmpl	$0, %eax
	je	.LBB2_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_value_set_uint64@PLT
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	leaq	.L.str.9(%rip), %rdi
	movb	$0, %al
	callq	g_warning
.LBB2_4:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	string_to_memsize, .Lfunc_end2-string_to_memsize
	.cfi_endproc

	.globl	gimp_memsize_serialize
	.align	16, 0x90
	.type	gimp_memsize_serialize,@function
gimp_memsize_serialize:                 # @gimp_memsize_serialize
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
	movq	%rdi, -16(%rbp)
	cmpq	$1073741824, -16(%rbp)  # imm = 0x40000000
	jbe	.LBB3_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	andq	$1073741823, %rax       # imm = 0x3FFFFFFF
	cmpq	$0, %rax
	jne	.LBB3_3
# BB#2:                                 # %if.then
	leaq	.L.str.1(%rip), %rdi
	movq	-16(%rbp), %rax
	shrq	$30, %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB3_10
.LBB3_3:                                # %if.else
	cmpq	$1048576, -16(%rbp)     # imm = 0x100000
	jbe	.LBB3_6
# BB#4:                                 # %land.lhs.true.3
	movq	-16(%rbp), %rax
	andq	$1048575, %rax          # imm = 0xFFFFF
	cmpq	$0, %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.6
	leaq	.L.str.2(%rip), %rdi
	movq	-16(%rbp), %rax
	shrq	$20, %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB3_10
.LBB3_6:                                # %if.else.9
	cmpq	$1024, -16(%rbp)        # imm = 0x400
	jbe	.LBB3_9
# BB#7:                                 # %land.lhs.true.11
	movq	-16(%rbp), %rax
	andq	$1023, %rax             # imm = 0x3FF
	cmpq	$0, %rax
	jne	.LBB3_9
# BB#8:                                 # %if.then.14
	leaq	.L.str.3(%rip), %rdi
	movq	-16(%rbp), %rax
	shrq	$10, %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB3_10
.LBB3_9:                                # %if.else.17
	leaq	.L.str.4(%rip), %rdi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	movq	%rax, -8(%rbp)
.LBB3_10:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_memsize_serialize, .Lfunc_end3-gimp_memsize_serialize
	.cfi_endproc

	.globl	gimp_memsize_deserialize
	.align	16, 0x90
	.type	gimp_memsize_deserialize,@function
gimp_memsize_deserialize:               # @gimp_memsize_deserialize
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	leaq	.L.str.5(%rip), %rdi
	leaq	.L__func__.gimp_memsize_deserialize(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB4_27
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB4_8
# BB#7:                                 # %if.then.3
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.4
	leaq	.L.str.5(%rip), %rdi
	leaq	.L__func__.gimp_memsize_deserialize(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB4_27
.LBB4_9:                                # %if.end.5
	jmp	.LBB4_10
.LBB4_10:                               # %do.end.6
	leaq	-32(%rbp), %rsi
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	callq	g_ascii_strtoull@PLT
	movq	%rax, -40(%rbp)
	cmpq	$-1, -40(%rbp)
	jne	.LBB4_13
# BB#11:                                # %land.lhs.true
	callq	__errno_location@PLT
	cmpl	$34, (%rax)
	jne	.LBB4_13
# BB#12:                                # %if.then.10
	movl	$0, -4(%rbp)
	jmp	.LBB4_27
.LBB4_13:                               # %if.end.11
	cmpq	$0, -32(%rbp)
	je	.LBB4_26
# BB#14:                                # %land.lhs.true.12
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB4_26
# BB#15:                                # %if.then.14
	movq	-32(%rbp), %rax
	movsbl	(%rax), %edi
	callq	g_ascii_tolower@PLT
	movsbl	%al, %edi
	movl	%edi, %ecx
	subl	$98, %ecx
	movl	%edi, -60(%rbp)         # 4-byte Spill
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	je	.LBB4_16
	jmp	.LBB4_28
.LBB4_28:                               # %if.then.14
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$103, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB4_19
	jmp	.LBB4_29
.LBB4_29:                               # %if.then.14
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$107, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB4_17
	jmp	.LBB4_30
.LBB4_30:                               # %if.then.14
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$109, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB4_18
	jmp	.LBB4_20
.LBB4_16:                               # %sw.bb
	movl	$0, -44(%rbp)
	jmp	.LBB4_21
.LBB4_17:                               # %sw.bb.17
	movl	$10, -44(%rbp)
	jmp	.LBB4_21
.LBB4_18:                               # %sw.bb.18
	movl	$20, -44(%rbp)
	jmp	.LBB4_21
.LBB4_19:                               # %sw.bb.19
	movl	$30, -44(%rbp)
	jmp	.LBB4_21
.LBB4_20:                               # %sw.default
	movl	$0, -4(%rbp)
	jmp	.LBB4_27
.LBB4_21:                               # %sw.epilog
	cmpl	$0, -44(%rbp)
	je	.LBB4_25
# BB#22:                                # %if.then.21
	movq	$-1, %rax
	movl	-44(%rbp), %ecx
                                        # kill: RCX<def> ECX<kill>
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rdx
	andq	-56(%rbp), %rdx
	cmpq	%rdx, %rax
	je	.LBB4_24
# BB#23:                                # %if.then.24
	movl	$0, -4(%rbp)
	jmp	.LBB4_27
.LBB4_24:                               # %if.end.25
	movl	-44(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rcx
                                        # kill: CL<def> RCX<kill>
	movq	-88(%rbp), %rdx         # 8-byte Reload
	shlq	%cl, %rdx
	movq	%rdx, -40(%rbp)
.LBB4_25:                               # %if.end.27
	jmp	.LBB4_26
.LBB4_26:                               # %if.end.28
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$1, -4(%rbp)
.LBB4_27:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_memsize_deserialize, .Lfunc_end4-gimp_memsize_deserialize
	.cfi_endproc

	.globl	gimp_memsize_to_string
	.align	16, 0x90
	.type	gimp_memsize_to_string,@function
gimp_memsize_to_string:                 # @gimp_memsize_to_string
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_format_size@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_memsize_to_string, .Lfunc_end5-gimp_memsize_to_string
	.cfi_endproc

	.globl	gimp_param_memsize_get_type
	.align	16, 0x90
	.type	gimp_param_memsize_get_type,@function
gimp_param_memsize_get_type:            # @gimp_param_memsize_get_type
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
	cmpq	$0, gimp_param_memsize_get_type.spec_type(%rip)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	leaq	.L.str.8(%rip), %rsi
	leaq	gimp_param_memsize_get_type.type_info(%rip), %rdx
	xorl	%ecx, %ecx
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	64(%rax), %rdi
	callq	g_type_register_static@PLT
	movq	%rax, gimp_param_memsize_get_type.spec_type(%rip)
.LBB6_2:                                # %if.end
	movq	gimp_param_memsize_get_type.spec_type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_param_memsize_get_type, .Lfunc_end6-gimp_param_memsize_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_memsize_class_init,@function
gimp_param_memsize_class_init:          # @gimp_param_memsize_class_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_memsize_get_type@PLT
	movq	-8(%rbp), %rdi
	movq	%rax, 8(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_param_memsize_class_init, .Lfunc_end7-gimp_param_memsize_class_init
	.cfi_endproc

	.globl	gimp_param_spec_memsize
	.align	16, 0x90
	.type	gimp_param_spec_memsize,@function
gimp_param_spec_memsize:                # @gimp_param_spec_memsize
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
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	%eax, -52(%rbp)
	callq	gimp_param_memsize_get_type@PLT
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	-52(%rbp), %r8d
	movq	%rax, %rdi
	callq	g_param_spec_internal@PLT
	movl	$76, %r8d
	movl	%r8d, %esi
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 88(%rcx)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_param_spec_memsize, .Lfunc_end8-gimp_param_spec_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB9_2
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
.LBB9_2:                                # %entry
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
	leaq	.L.str.5(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end9:
	.size	g_warning, .Lfunc_end9-g_warning
	.cfi_endproc

	.type	gimp_memsize_get_type.memsize_type,@object # @gimp_memsize_get_type.memsize_type
	.local	gimp_memsize_get_type.memsize_type
	.comm	gimp_memsize_get_type.memsize_type,8,8
	.type	gimp_memsize_get_type.type_info,@object # @gimp_memsize_get_type.type_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_memsize_get_type.type_info:
	.zero	72
	.size	gimp_memsize_get_type.type_info, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpMemsize"
	.size	.L.str, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%luG"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%luM"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%luk"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%lu"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"LibGimpBase"
	.size	.L.str.5, 12

	.type	.L__func__.gimp_memsize_deserialize,@object # @__func__.gimp_memsize_deserialize
.L__func__.gimp_memsize_deserialize:
	.asciz	"gimp_memsize_deserialize"
	.size	.L__func__.gimp_memsize_deserialize, 25

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"string != NULL"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"memsize != NULL"
	.size	.L.str.7, 16

	.type	gimp_param_memsize_get_type.spec_type,@object # @gimp_param_memsize_get_type.spec_type
	.local	gimp_param_memsize_get_type.spec_type
	.comm	gimp_param_memsize_get_type.spec_type,8,8
	.type	gimp_param_memsize_get_type.type_info,@object # @gimp_param_memsize_get_type.type_info
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
gimp_param_memsize_get_type.type_info:
	.short	80                      # 0x50
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_param_memsize_class_init
	.quad	0
	.quad	0
	.short	96                      # 0x60
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.size	gimp_param_memsize_get_type.type_info, 72

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"GimpParamMemsize"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Can't convert string to GimpMemsize."
	.size	.L.str.9, 37


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
