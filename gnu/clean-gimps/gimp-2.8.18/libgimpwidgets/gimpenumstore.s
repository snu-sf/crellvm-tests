	.text
	.file	"gimpenumstore.bc"
	.globl	gimp_enum_store_get_type
	.align	16, 0x90
	.type	gimp_enum_store_get_type,@function
gimp_enum_store_get_type:               # @gimp_enum_store_get_type
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
	movq	gimp_enum_store_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_enum_store_get_type.g_define_type_id__volatile(%rip), %rax
	movq	%rax, %rdi
	callq	g_once_init_enter@PLT
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
	callq	gimp_int_store_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$232, %edx
	leaq	gimp_enum_store_class_intern_init(%rip), %rdi
	movl	$136, %r8d
	leaq	gimp_enum_store_init(%rip), %rcx
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
	callq	g_type_register_static_simple@PLT
	leaq	gimp_enum_store_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_enum_store_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_enum_store_get_type, .Lfunc_end0-gimp_enum_store_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_enum_store_class_intern_init,@function
gimp_enum_store_class_intern_init:      # @gimp_enum_store_class_intern_init
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
	callq	g_type_class_peek_parent@PLT
	movq	%rax, gimp_enum_store_parent_class(%rip)
	cmpl	$0, GimpEnumStore_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpEnumStore_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_enum_store_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_enum_store_class_intern_init, .Lfunc_end1-gimp_enum_store_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_enum_store_init,@function
gimp_enum_store_init:                   # @gimp_enum_store_init
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
	.size	gimp_enum_store_init, .Lfunc_end2-gimp_enum_store_init
	.cfi_endproc

	.globl	gimp_enum_store_new
	.align	16, 0x90
	.type	gimp_enum_store_new,@function
gimp_enum_store_new:                    # @gimp_enum_store_new
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rdi
	callq	g_type_fundamental@PLT
	cmpq	$48, %rax
	jne	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_enum_store_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_6
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movq	-16(%rbp), %rdi
	callq	g_type_class_ref@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	8(%rax), %esi
	movq	-32(%rbp), %rax
	movl	12(%rax), %edx
	callq	gimp_enum_store_new_with_range@PLT
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_unref@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_enum_store_new, .Lfunc_end3-gimp_enum_store_new
	.cfi_endproc

	.globl	gimp_enum_store_new_with_range
	.align	16, 0x90
	.type	gimp_enum_store_new_with_range,@function
gimp_enum_store_new_with_range:         # @gimp_enum_store_new_with_range
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rdi
	callq	g_type_fundamental@PLT
	cmpq	$48, %rax
	jne	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_enum_store_new_with_range(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB4_13
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	callq	gimp_enum_store_get_type@PLT
	leaq	.L.str.3(%rip), %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_enum_store_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	128(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB4_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB4_12
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jl	.LBB4_9
# BB#8:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-24(%rbp), %ecx
	jle	.LBB4_10
.LBB4_9:                                # %if.then.9
                                        #   in Loop: Header=BB4_6 Depth=1
	jmp	.LBB4_11
.LBB4_10:                               # %if.end.10
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_enum_store_add_value
.LBB4_11:                               # %for.inc
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB4_6
.LBB4_12:                               # %for.end
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_enum_store_new_with_range, .Lfunc_end4-gimp_enum_store_new_with_range
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_enum_store_add_value,@function
gimp_enum_store_add_value:              # @gimp_enum_store_add_value
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
	xorl	%eax, %eax
	movl	$32, %ecx
	movl	%ecx, %edx
	leaq	-48(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%r8, %rdi
	movl	%eax, %esi
	callq	memset@PLT
	movq	-8(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_enum_store_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	128(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_enum_value_get_desc@PLT
	leaq	-48(%rbp), %rsi
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_list_store_append@PLT
	leaq	-48(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	(%rax), %r9d
	movq	-56(%rbp), %rax
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	%r9d, %ecx
	movq	%rax, %r9
	movl	$-1, (%rsp)
	movb	$0, %al
	callq	gtk_list_store_set@PLT
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_enum_store_add_value, .Lfunc_end5-gimp_enum_store_add_value
	.cfi_endproc

	.globl	gimp_enum_store_new_with_values
	.align	16, 0x90
	.type	gimp_enum_store_new_with_values,@function
gimp_enum_store_new_with_values:        # @gimp_enum_store_new_with_values
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
	movl	%esi, -396(%rbp)        # 4-byte Spill
	je	.LBB6_2
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
.LBB6_2:                                # %entry
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)
	movq	-376(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -192(%rbp)
	movq	-384(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -200(%rbp)
	movq	-392(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -208(%rbp)
	movl	-396(%rbp), %edi        # 4-byte Reload
	movq	-360(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movl	%edi, -12(%rbp)
	leaq	-224(%rbp), %r8
	movq	%r8, -32(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -40(%rbp)
	movl	$48, -44(%rbp)
	movl	$16, -48(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	leaq	-48(%rbp), %rdx
	callq	gimp_enum_store_new_with_values_valist@PLT
	movq	%rax, -24(%rbp)
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_enum_store_new_with_values, .Lfunc_end6-gimp_enum_store_new_with_values
	.cfi_endproc

	.globl	gimp_enum_store_new_with_values_valist
	.align	16, 0x90
	.type	gimp_enum_store_new_with_values_valist,@function
gimp_enum_store_new_with_values_valist: # @gimp_enum_store_new_with_values_valist
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
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rdi
	callq	g_type_fundamental@PLT
	cmpq	$48, %rax
	jne	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_enum_store_new_with_values_valist(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB7_20
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	jmp	.LBB7_6
.LBB7_6:                                # %do.body.1
	cmpl	$1, -20(%rbp)
	jle	.LBB7_8
# BB#7:                                 # %if.then.3
	jmp	.LBB7_9
.LBB7_8:                                # %if.else.4
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_enum_store_new_with_values_valist(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB7_20
.LBB7_9:                                # %if.end.5
	jmp	.LBB7_10
.LBB7_10:                               # %do.end.6
	callq	gimp_enum_store_get_type@PLT
	leaq	.L.str.3(%rip), %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -52(%rbp)
.LBB7_11:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB7_19
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB7_11 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_enum_store_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	128(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	ja	.LBB7_14
# BB#13:                                # %vaarg.in_reg
                                        #   in Loop: Header=BB7_11 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB7_15
.LBB7_14:                               # %vaarg.in_mem
                                        #   in Loop: Header=BB7_11 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -96(%rbp)         # 8-byte Spill
.LBB7_15:                               # %vaarg.end
                                        #   in Loop: Header=BB7_11 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	g_enum_get_value@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB7_17
# BB#16:                                # %if.then.13
                                        #   in Loop: Header=BB7_11 Depth=1
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_enum_store_add_value
.LBB7_17:                               # %if.end.14
                                        #   in Loop: Header=BB7_11 Depth=1
	jmp	.LBB7_18
.LBB7_18:                               # %for.inc
                                        #   in Loop: Header=BB7_11 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB7_11
.LBB7_19:                               # %for.end
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB7_20:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_enum_store_new_with_values_valist, .Lfunc_end7-gimp_enum_store_new_with_values_valist
	.cfi_endproc

	.globl	gimp_enum_store_set_stock_prefix
	.align	16, 0x90
	.type	gimp_enum_store_set_stock_prefix,@function
gimp_enum_store_set_stock_prefix:       # @gimp_enum_store_set_stock_prefix
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_enum_store_get_type@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -84(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_enum_store_set_stock_prefix(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_20
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-56(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first@PLT
	movl	%eax, -60(%rbp)
.LBB8_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -60(%rbp)
	je	.LBB8_20
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	$0, -96(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB8_16
# BB#15:                                # %if.then.17
                                        #   in Loop: Header=BB8_13 Depth=1
	leaq	-56(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-108(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rdi
	movl	-108(%rbp), %esi
	callq	g_enum_get_value@PLT
	leaq	.L.str.6(%rip), %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	16(%rax), %rdx
	movb	$0, %al
	callq	g_strconcat@PLT
	movq	%rax, -96(%rbp)
.LBB8_16:                               # %if.end.22
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-56(%rbp), %rsi
	movl	$2, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-96(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_list_store_set@PLT
	cmpq	$0, -96(%rbp)
	je	.LBB8_18
# BB#17:                                # %if.then.26
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-96(%rbp), %rdi
	callq	g_free@PLT
.LBB8_18:                               # %if.end.27
                                        #   in Loop: Header=BB8_13 Depth=1
	jmp	.LBB8_19
.LBB8_19:                               # %for.inc
                                        #   in Loop: Header=BB8_13 Depth=1
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_tree_model_iter_next@PLT
	movl	%eax, -60(%rbp)
	jmp	.LBB8_13
.LBB8_20:                               # %for.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_enum_store_set_stock_prefix, .Lfunc_end8-gimp_enum_store_set_stock_prefix
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_enum_store_class_init,@function
gimp_enum_store_class_init:             # @gimp_enum_store_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.3(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$48, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	$235, %r8d
	leaq	gimp_enum_store_get_property(%rip), %rdx
	leaq	gimp_enum_store_set_property(%rip), %r9
	leaq	gimp_enum_store_finalize(%rip), %r10
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%r10, 48(%rax)
	movq	-16(%rbp), %rax
	movq	%r9, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	g_param_spec_gtype@PLT
	movl	$1, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_enum_store_class_init, .Lfunc_end9-gimp_enum_store_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_enum_store_finalize,@function
gimp_enum_store_finalize:               # @gimp_enum_store_finalize
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_enum_store_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_class_unref@PLT
.LBB10_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_enum_store_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_enum_store_finalize, .Lfunc_end10-gimp_enum_store_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_enum_store_set_property,@function
gimp_enum_store_set_property:           # @gimp_enum_store_set_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_enum_store_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB11_7
	jmp	.LBB11_1
.LBB11_1:                               # %sw.bb
	jmp	.LBB11_2
.LBB11_2:                               # %do.body
	movq	-40(%rbp), %rax
	cmpq	$0, 128(%rax)
	jne	.LBB11_4
# BB#3:                                 # %if.then
	jmp	.LBB11_5
.LBB11_4:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_enum_store_set_property(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_10
.LBB11_5:                               # %if.end
	jmp	.LBB11_6
.LBB11_6:                               # %do.end
	movq	-24(%rbp), %rdi
	callq	g_value_get_gtype@PLT
	movq	%rax, %rdi
	callq	g_type_class_ref@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, 128(%rdi)
	jmp	.LBB11_10
.LBB11_7:                               # %sw.default
	jmp	.LBB11_8
.LBB11_8:                               # %do.body.5
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
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.8(%rip), %rdi
	leaq	.L.str.9(%rip), %rsi
	movl	$124, %edx
	leaq	.L.str.10(%rip), %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#9:                                 # %do.end.10
	jmp	.LBB11_10
.LBB11_10:                              # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_enum_store_set_property, .Lfunc_end11-gimp_enum_store_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_enum_store_get_property,@function
gimp_enum_store_get_property:           # @gimp_enum_store_get_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_enum_store_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB12_5
	jmp	.LBB12_1
.LBB12_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	cmpq	$0, 128(%rax)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	je	.LBB12_3
# BB#2:                                 # %cond.true
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB12_4
.LBB12_3:                               # %cond.false
	movl	$4, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB12_4
.LBB12_4:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_gtype@PLT
	jmp	.LBB12_8
.LBB12_5:                               # %sw.default
	jmp	.LBB12_6
.LBB12_6:                               # %do.body
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
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	movq	%r9, -112(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.8(%rip), %rdi
	leaq	.L.str.9(%rip), %rsi
	movl	$145, %edx
	leaq	.L.str.10(%rip), %rcx
	movl	-100(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#7:                                 # %do.end
	jmp	.LBB12_8
.LBB12_8:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_enum_store_get_property, .Lfunc_end12-gimp_enum_store_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB13_2
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
.LBB13_2:                               # %entry
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
	leaq	.L.str.1(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end13:
	.size	g_warning, .Lfunc_end13-g_warning
	.cfi_endproc

	.type	gimp_enum_store_get_type.g_define_type_id__volatile,@object # @gimp_enum_store_get_type.g_define_type_id__volatile
	.local	gimp_enum_store_get_type.g_define_type_id__volatile
	.comm	gimp_enum_store_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpEnumStore"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpWidgets"
	.size	.L.str.1, 15

	.type	.L__func__.gimp_enum_store_new,@object # @__func__.gimp_enum_store_new
.L__func__.gimp_enum_store_new:
	.asciz	"gimp_enum_store_new"
	.size	.L__func__.gimp_enum_store_new, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"G_TYPE_IS_ENUM (enum_type)"
	.size	.L.str.2, 27

	.type	.L__func__.gimp_enum_store_new_with_range,@object # @__func__.gimp_enum_store_new_with_range
.L__func__.gimp_enum_store_new_with_range:
	.asciz	"gimp_enum_store_new_with_range"
	.size	.L__func__.gimp_enum_store_new_with_range, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"enum-type"
	.size	.L.str.3, 10

	.type	.L__func__.gimp_enum_store_new_with_values_valist,@object # @__func__.gimp_enum_store_new_with_values_valist
.L__func__.gimp_enum_store_new_with_values_valist:
	.asciz	"gimp_enum_store_new_with_values_valist"
	.size	.L__func__.gimp_enum_store_new_with_values_valist, 39

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"n_values > 1"
	.size	.L.str.4, 13

	.type	.L__func__.gimp_enum_store_set_stock_prefix,@object # @__func__.gimp_enum_store_set_stock_prefix
.L__func__.gimp_enum_store_set_stock_prefix:
	.asciz	"gimp_enum_store_set_stock_prefix"
	.size	.L__func__.gimp_enum_store_set_stock_prefix, 33

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_ENUM_STORE (store)"
	.size	.L.str.5, 27

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"-"
	.size	.L.str.6, 2

	.type	gimp_enum_store_parent_class,@object # @gimp_enum_store_parent_class
	.local	gimp_enum_store_parent_class
	.comm	gimp_enum_store_parent_class,8,8
	.type	GimpEnumStore_private_offset,@object # @GimpEnumStore_private_offset
	.local	GimpEnumStore_private_offset
	.comm	GimpEnumStore_private_offset,4,4
	.type	.L__func__.gimp_enum_store_set_property,@object # @__func__.gimp_enum_store_set_property
.L__func__.gimp_enum_store_set_property:
	.asciz	"gimp_enum_store_set_property"
	.size	.L__func__.gimp_enum_store_set_property, 29

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"store->enum_class == NULL"
	.size	.L.str.7, 26

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.8, 54

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimpenumstore.c"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"property"
	.size	.L.str.10, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
