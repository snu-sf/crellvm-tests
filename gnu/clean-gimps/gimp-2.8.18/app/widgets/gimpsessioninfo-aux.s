	.text
	.file	"gimpsessioninfo-aux.bc"
	.globl	gimp_session_info_aux_new
	.align	16, 0x90
	.type	gimp_session_info_aux_new,@function
gimp_session_info_aux_new:              # @gimp_session_info_aux_new
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_session_info_aux_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_11
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB0_8
# BB#7:                                 # %if.then.3
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_session_info_aux_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_11
.LBB0_9:                                # %if.end.5
	jmp	.LBB0_10
.LBB0_10:                               # %do.end.6
	movl	$16, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_11:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_session_info_aux_new, .Lfunc_end0-gimp_session_info_aux_new
	.cfi_endproc

	.globl	gimp_session_info_aux_free
	.align	16, 0x90
	.type	gimp_session_info_aux_free,@function
gimp_session_info_aux_free:             # @gimp_session_info_aux_free
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
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_session_info_aux_free, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_7
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free
# BB#6:                                 # %do.body.1
	movl	$16, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
.LBB1_7:                                # %do.end.2
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_session_info_aux_free, .Lfunc_end1-gimp_session_info_aux_free
	.cfi_endproc

	.globl	gimp_session_info_aux_new_from_props
	.align	16, 0x90
	.type	gimp_session_info_aux_new_from_props,@function
gimp_session_info_aux_new_from_props:   # @gimp_session_info_aux_new_from_props
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
	subq	$560, %rsp              # imm = 0x230
	testb	%al, %al
	movaps	%xmm7, -304(%rbp)       # 16-byte Spill
	movaps	%xmm6, -320(%rbp)       # 16-byte Spill
	movaps	%xmm5, -336(%rbp)       # 16-byte Spill
	movaps	%xmm4, -352(%rbp)       # 16-byte Spill
	movaps	%xmm3, -368(%rbp)       # 16-byte Spill
	movaps	%xmm2, -384(%rbp)       # 16-byte Spill
	movaps	%xmm1, -400(%rbp)       # 16-byte Spill
	movaps	%xmm0, -416(%rbp)       # 16-byte Spill
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%r9, -432(%rbp)         # 8-byte Spill
	movq	%r8, -440(%rbp)         # 8-byte Spill
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	movq	%rsi, -464(%rbp)        # 8-byte Spill
	je	.LBB2_24
# BB#23:                                # %entry
	movaps	-416(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -240(%rbp)
	movaps	-400(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -224(%rbp)
	movaps	-384(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -208(%rbp)
	movaps	-368(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -192(%rbp)
	movaps	-352(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -176(%rbp)
	movaps	-336(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -160(%rbp)
	movaps	-320(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -144(%rbp)
	movaps	-304(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -128(%rbp)
.LBB2_24:                               # %entry
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	%rax, -248(%rbp)
	movq	-440(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -256(%rbp)
	movq	-448(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -264(%rbp)
	movq	-456(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -272(%rbp)
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -280(%rbp)
	movq	-424(%rbp), %r8         # 8-byte Reload
	movq	%r8, -16(%rbp)
	movq	$0, -24(%rbp)
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a
	cmpl	$0, %eax
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_session_info_aux_new_from_props, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_22
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	leaq	-288(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$8, (%rcx)
	movl	-64(%rbp), %esi
	cmpl	$40, %esi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	movl	%esi, -476(%rbp)        # 4-byte Spill
	ja	.LBB2_7
# BB#6:                                 # %vaarg.in_reg
	movl	-476(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-472(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	jmp	.LBB2_8
.LBB2_7:                                # %vaarg.in_mem
	movq	-472(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -488(%rbp)        # 8-byte Spill
.LBB2_8:                                # %vaarg.end
	movq	-488(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB2_9:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB2_21
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB2_9 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_object_class_find_property
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB2_15
# BB#11:                                # %if.then.6
                                        #   in Loop: Header=BB2_9 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	g_string_new
	leaq	-112(%rbp), %rdi
	xorl	%esi, %esi
	movl	$24, %ecx
	movl	%ecx, %edx
	movq	%rax, -88(%rbp)
	movq	%rdi, %rax
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	memset
	movq	-80(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-496(%rbp), %rdi        # 8-byte Reload
	callq	g_value_init
	leaq	-112(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	g_object_get_property
	leaq	-112(%rbp), %rsi
	movq	-80(%rbp), %rdi
	callq	g_param_value_defaults
	cmpl	$0, %eax
	jne	.LBB2_14
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_9 Depth=1
	leaq	-112(%rbp), %rdi
	movl	$1, %edx
	movq	-88(%rbp), %rsi
	callq	gimp_config_serialize_value
	cmpl	$0, %eax
	je	.LBB2_14
# BB#13:                                # %if.then.13
                                        #   in Loop: Header=BB2_9 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_session_info_aux_new
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -24(%rbp)
.LBB2_14:                               # %if.end.17
                                        #   in Loop: Header=BB2_9 Depth=1
	leaq	-112(%rbp), %rdi
	callq	g_value_unset
	movl	$1, %esi
	movq	-88(%rbp), %rdi
	callq	g_string_free
	movq	%rax, -520(%rbp)        # 8-byte Spill
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.19
                                        #   in Loop: Header=BB2_9 Depth=1
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rdi
	movq	%rdx, -528(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.5, %rdi
	movabsq	$.L__func__.gimp_session_info_aux_new_from_props, %rsi
	movq	-528(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_warning
.LBB2_16:                               # %if.end.21
                                        #   in Loop: Header=BB2_9 Depth=1
	jmp	.LBB2_17
.LBB2_17:                               # %for.inc
                                        #   in Loop: Header=BB2_9 Depth=1
	leaq	-64(%rbp), %rax
	movl	-64(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -536(%rbp)        # 8-byte Spill
	movl	%ecx, -540(%rbp)        # 4-byte Spill
	ja	.LBB2_19
# BB#18:                                # %vaarg.in_reg.26
                                        #   in Loop: Header=BB2_9 Depth=1
	movl	-540(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-536(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -552(%rbp)        # 8-byte Spill
	jmp	.LBB2_20
.LBB2_19:                               # %vaarg.in_mem.28
                                        #   in Loop: Header=BB2_9 Depth=1
	movq	-536(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -552(%rbp)        # 8-byte Spill
.LBB2_20:                               # %vaarg.end.32
                                        #   in Loop: Header=BB2_9 Depth=1
	movq	-552(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB2_9
.LBB2_21:                               # %for.end
	leaq	-64(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	g_list_reverse
	movq	%rax, -8(%rbp)
.LBB2_22:                               # %return
	movq	-8(%rbp), %rax
	addq	$560, %rsp              # imm = 0x230
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_session_info_aux_new_from_props, .Lfunc_end2-gimp_session_info_aux_new_from_props
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB3_2
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
.LBB3_2:                                # %entry
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
.Lfunc_end3:
	.size	g_warning, .Lfunc_end3-g_warning
	.cfi_endproc

	.globl	gimp_session_info_aux_set_props
	.align	16, 0x90
	.type	gimp_session_info_aux_set_props,@function
gimp_session_info_aux_set_props:        # @gimp_session_info_aux_set_props
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
	subq	$656, %rsp              # imm = 0x290
	testb	%al, %al
	movaps	%xmm7, -368(%rbp)       # 16-byte Spill
	movaps	%xmm6, -384(%rbp)       # 16-byte Spill
	movaps	%xmm5, -400(%rbp)       # 16-byte Spill
	movaps	%xmm4, -416(%rbp)       # 16-byte Spill
	movaps	%xmm3, -432(%rbp)       # 16-byte Spill
	movaps	%xmm2, -448(%rbp)       # 16-byte Spill
	movaps	%xmm1, -464(%rbp)       # 16-byte Spill
	movaps	%xmm0, -480(%rbp)       # 16-byte Spill
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%r9, -496(%rbp)         # 8-byte Spill
	movq	%r8, -504(%rbp)         # 8-byte Spill
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	movq	%rdx, -520(%rbp)        # 8-byte Spill
	movq	%rsi, -528(%rbp)        # 8-byte Spill
	je	.LBB4_45
# BB#44:                                # %entry
	movaps	-480(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -304(%rbp)
	movaps	-464(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -288(%rbp)
	movaps	-448(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -272(%rbp)
	movaps	-432(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -256(%rbp)
	movaps	-416(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -240(%rbp)
	movaps	-400(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -224(%rbp)
	movaps	-384(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -208(%rbp)
	movaps	-368(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -192(%rbp)
.LBB4_45:                               # %entry
	movq	-496(%rbp), %rax        # 8-byte Reload
	movq	%rax, -312(%rbp)
	movq	-504(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -320(%rbp)
	movq	-512(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -328(%rbp)
	movq	-520(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -336(%rbp)
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	-488(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a
	cmpl	$0, %eax
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_session_info_aux_set_props, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_43
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	leaq	-352(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$16, (%rcx)
	movl	-48(%rbp), %esi
	cmpl	$40, %esi
	movq	%rax, -536(%rbp)        # 8-byte Spill
	movl	%esi, -540(%rbp)        # 4-byte Spill
	ja	.LBB4_7
# BB#6:                                 # %vaarg.in_reg
	movl	-540(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-536(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -552(%rbp)        # 8-byte Spill
	jmp	.LBB4_8
.LBB4_7:                                # %vaarg.in_mem
	movq	-536(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -552(%rbp)        # 8-byte Spill
.LBB4_8:                                # %vaarg.end
	movq	-552(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB4_9:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_11 Depth 2
	cmpq	$0, -24(%rbp)
	je	.LBB4_42
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB4_9 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB4_11:                               # %for.cond.4
                                        #   Parent Loop BB4_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -56(%rbp)
	je	.LBB4_37
# BB#12:                                # %for.body.6
                                        #   in Loop: Header=BB4_11 Depth=2
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB4_32
# BB#13:                                # %if.then.8
                                        #   in Loop: Header=BB4_11 Depth=2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_object_class_find_property
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB4_30
# BB#14:                                # %if.then.11
                                        #   in Loop: Header=BB4_11 Depth=2
	leaq	-104(%rbp), %rax
	xorl	%esi, %esi
	movl	$24, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	memset
	movq	-80(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-560(%rbp), %rdi        # 8-byte Reload
	callq	g_value_init
	leaq	-104(%rbp), %rdx
	movq	%rdx, -112(%rbp)
	movq	$48, -120(%rbp)
	cmpq	$0, -112(%rbp)
	movq	%rax, -568(%rbp)        # 8-byte Spill
	jne	.LBB4_16
# BB#15:                                # %if.then.14
                                        #   in Loop: Header=BB4_11 Depth=2
	movl	$0, -124(%rbp)
	jmp	.LBB4_20
.LBB4_16:                               # %if.else.15
                                        #   in Loop: Header=BB4_11 Depth=2
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.17
                                        #   in Loop: Header=BB4_11 Depth=2
	movl	$1, -124(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.18
                                        #   in Loop: Header=BB4_11 Depth=2
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -124(%rbp)
.LBB4_19:                               # %if.end.20
                                        #   in Loop: Header=BB4_11 Depth=2
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.21
                                        #   in Loop: Header=BB4_11 Depth=2
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB4_25
# BB#21:                                # %if.then.23
                                        #   in Loop: Header=BB4_11 Depth=2
	movq	-80(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_type_class_peek
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	8(%rax), %rsi
	callq	g_enum_get_value_by_nick
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB4_23
# BB#22:                                # %if.then.31
                                        #   in Loop: Header=BB4_11 Depth=2
	leaq	-104(%rbp), %rdi
	movq	-144(%rbp), %rax
	movl	(%rax), %esi
	callq	g_value_set_enum
	leaq	-104(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	8(%rax), %rsi
	callq	g_object_set_property
	jmp	.LBB4_24
.LBB4_23:                               # %if.else.34
                                        #   in Loop: Header=BB4_11 Depth=2
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rdi
	movq	%rdx, -576(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.6, %rdi
	movabsq	$.L__func__.gimp_session_info_aux_set_props, %rsi
	movq	-576(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_warning
.LBB4_24:                               # %if.end.37
                                        #   in Loop: Header=BB4_11 Depth=2
	jmp	.LBB4_29
.LBB4_25:                               # %if.else.38
                                        #   in Loop: Header=BB4_11 Depth=2
	leaq	-168(%rbp), %rax
	movl	$64, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	$24, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	movq	%rsi, -584(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	memset
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	-584(%rbp), %rsi        # 8-byte Reload
	callq	g_value_init
	leaq	-168(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	8(%rdx), %rsi
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	g_value_set_static_string
	leaq	-168(%rbp), %rdi
	leaq	-104(%rbp), %rsi
	callq	g_value_transform
	cmpl	$0, %eax
	je	.LBB4_27
# BB#26:                                # %if.then.44
                                        #   in Loop: Header=BB4_11 Depth=2
	leaq	-104(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	8(%rax), %rsi
	callq	g_object_set_property
	jmp	.LBB4_28
.LBB4_27:                               # %if.else.46
                                        #   in Loop: Header=BB4_11 Depth=2
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rdi
	movq	%rdx, -608(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_session_info_aux_set_props, %rsi
	movq	-608(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_warning
.LBB4_28:                               # %if.end.49
                                        #   in Loop: Header=BB4_11 Depth=2
	leaq	-168(%rbp), %rdi
	callq	g_value_unset
.LBB4_29:                               # %if.end.50
                                        #   in Loop: Header=BB4_11 Depth=2
	leaq	-104(%rbp), %rdi
	callq	g_value_unset
	jmp	.LBB4_31
.LBB4_30:                               # %if.else.51
                                        #   in Loop: Header=BB4_11 Depth=2
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rdi
	movq	%rdx, -616(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.5, %rdi
	movabsq	$.L__func__.gimp_session_info_aux_set_props, %rsi
	movq	-616(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_warning
.LBB4_31:                               # %if.end.54
                                        #   in Loop: Header=BB4_11 Depth=2
	jmp	.LBB4_32
.LBB4_32:                               # %if.end.55
                                        #   in Loop: Header=BB4_11 Depth=2
	jmp	.LBB4_33
.LBB4_33:                               # %for.inc
                                        #   in Loop: Header=BB4_11 Depth=2
	cmpq	$0, -56(%rbp)
	je	.LBB4_35
# BB#34:                                # %cond.true
                                        #   in Loop: Header=BB4_11 Depth=2
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	jmp	.LBB4_36
.LBB4_35:                               # %cond.false
                                        #   in Loop: Header=BB4_11 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -624(%rbp)        # 8-byte Spill
	jmp	.LBB4_36
.LBB4_36:                               # %cond.end
                                        #   in Loop: Header=BB4_11 Depth=2
	movq	-624(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB4_11
.LBB4_37:                               # %for.end
                                        #   in Loop: Header=BB4_9 Depth=1
	jmp	.LBB4_38
.LBB4_38:                               # %for.inc.57
                                        #   in Loop: Header=BB4_9 Depth=1
	leaq	-48(%rbp), %rax
	movl	-48(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -632(%rbp)        # 8-byte Spill
	movl	%ecx, -636(%rbp)        # 4-byte Spill
	ja	.LBB4_40
# BB#39:                                # %vaarg.in_reg.62
                                        #   in Loop: Header=BB4_9 Depth=1
	movl	-636(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-632(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -648(%rbp)        # 8-byte Spill
	jmp	.LBB4_41
.LBB4_40:                               # %vaarg.in_mem.64
                                        #   in Loop: Header=BB4_9 Depth=1
	movq	-632(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -648(%rbp)        # 8-byte Spill
.LBB4_41:                               # %vaarg.end.68
                                        #   in Loop: Header=BB4_9 Depth=1
	movq	-648(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB4_9
.LBB4_42:                               # %for.end.70
	leaq	-48(%rbp), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
.LBB4_43:                               # %return
	addq	$656, %rsp              # imm = 0x290
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_session_info_aux_set_props, .Lfunc_end4-gimp_session_info_aux_set_props
	.cfi_endproc

	.globl	gimp_session_info_aux_serialize
	.align	16, 0x90
	.type	gimp_session_info_aux_serialize,@function
gimp_session_info_aux_serialize:        # @gimp_session_info_aux_serialize
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
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_session_info_aux_serialize, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_18
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	jmp	.LBB5_6
.LBB5_6:                                # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB5_8
# BB#7:                                 # %if.then.3
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_session_info_aux_serialize, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_18
.LBB5_9:                                # %if.end.5
	jmp	.LBB5_10
.LBB5_10:                               # %do.end.6
	movabsq	$.L.str.10, %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_config_writer_open
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
.LBB5_11:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB5_17
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB5_11 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	callq	gimp_config_writer_open
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	callq	gimp_config_writer_string
	movq	-8(%rbp), %rdi
	callq	gimp_config_writer_close
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB5_11 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB5_15
# BB#14:                                # %cond.true
                                        #   in Loop: Header=BB5_11 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB5_16
.LBB5_15:                               # %cond.false
                                        #   in Loop: Header=BB5_11 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB5_16
.LBB5_16:                               # %cond.end
                                        #   in Loop: Header=BB5_11 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB5_11
.LBB5_17:                               # %for.end
	movq	-8(%rbp), %rdi
	callq	gimp_config_writer_close
.LBB5_18:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_session_info_aux_serialize, .Lfunc_end5-gimp_session_info_aux_serialize
	.cfi_endproc

	.globl	gimp_session_info_aux_deserialize
	.align	16, 0x90
	.type	gimp_session_info_aux_deserialize,@function
gimp_session_info_aux_deserialize:      # @gimp_session_info_aux_deserialize
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$40, -36(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_session_info_aux_deserialize, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movl	$40, -4(%rbp)
	jmp	.LBB6_26
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	jmp	.LBB6_6
.LBB6_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB6_8
# BB#7:                                 # %if.then.3
	jmp	.LBB6_9
.LBB6_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_session_info_aux_deserialize, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movl	$40, -4(%rbp)
	jmp	.LBB6_26
.LBB6_9:                                # %if.end.5
	jmp	.LBB6_10
.LBB6_10:                               # %do.end.6
	jmp	.LBB6_11
.LBB6_11:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	-36(%rbp), %eax
	jne	.LBB6_22
# BB#12:                                # %while.body
                                        #   in Loop: Header=BB6_11 Depth=1
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -36(%rbp)
	movl	%eax, %ecx
	subl	$40, %eax
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB6_13
	jmp	.LBB6_27
.LBB6_27:                               # %while.body
                                        #   in Loop: Header=BB6_11 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB6_19
	jmp	.LBB6_28
.LBB6_28:                               # %while.body
                                        #   in Loop: Header=BB6_11 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$266, %eax              # imm = 0x10A
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB6_14
	jmp	.LBB6_20
.LBB6_13:                               # %sw.bb
                                        #   in Loop: Header=BB6_11 Depth=1
	movl	$266, -36(%rbp)         # imm = 0x10A
	jmp	.LBB6_21
.LBB6_14:                               # %sw.bb.9
                                        #   in Loop: Header=BB6_11 Depth=1
	movl	$16, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
	movl	$264, -36(%rbp)         # imm = 0x108
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	-36(%rbp), %eax
	je	.LBB6_16
# BB#15:                                # %if.then.14
	jmp	.LBB6_23
.LBB6_16:                               # %if.end.15
                                        #   in Loop: Header=BB6_11 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rsi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB6_18
# BB#17:                                # %if.then.18
	jmp	.LBB6_23
.LBB6_18:                               # %if.end.19
                                        #   in Loop: Header=BB6_11 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	$0, -32(%rbp)
	movl	$41, -36(%rbp)
	jmp	.LBB6_21
.LBB6_19:                               # %sw.bb.21
                                        #   in Loop: Header=BB6_11 Depth=1
	movl	$40, -36(%rbp)
	jmp	.LBB6_21
.LBB6_20:                               # %sw.default
                                        #   in Loop: Header=BB6_11 Depth=1
	jmp	.LBB6_21
.LBB6_21:                               # %sw.epilog
                                        #   in Loop: Header=BB6_11 Depth=1
	jmp	.LBB6_11
.LBB6_22:                               # %while.end
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB6_26
.LBB6_23:                               # %error
	cmpq	$0, -32(%rbp)
	je	.LBB6_25
# BB#24:                                # %if.then.23
	movq	-32(%rbp), %rdi
	callq	gimp_session_info_aux_free
.LBB6_25:                               # %if.end.24
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB6_26:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_session_info_aux_deserialize, .Lfunc_end6-gimp_session_info_aux_deserialize
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Widgets"
	.size	.L.str, 13

	.type	.L__func__.gimp_session_info_aux_new,@object # @__func__.gimp_session_info_aux_new
.L__func__.gimp_session_info_aux_new:
	.asciz	"gimp_session_info_aux_new"
	.size	.L__func__.gimp_session_info_aux_new, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"name != NULL"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"value != NULL"
	.size	.L.str.2, 14

	.type	.L__func__.gimp_session_info_aux_free,@object # @__func__.gimp_session_info_aux_free
.L__func__.gimp_session_info_aux_free:
	.asciz	"gimp_session_info_aux_free"
	.size	.L__func__.gimp_session_info_aux_free, 27

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"aux != NULL"
	.size	.L.str.3, 12

	.type	.L__func__.gimp_session_info_aux_new_from_props,@object # @__func__.gimp_session_info_aux_new_from_props
.L__func__.gimp_session_info_aux_new_from_props:
	.asciz	"gimp_session_info_aux_new_from_props"
	.size	.L__func__.gimp_session_info_aux_new_from_props, 37

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"G_IS_OBJECT (object)"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%s: no property named '%s' for %s"
	.size	.L.str.5, 34

	.type	.L__func__.gimp_session_info_aux_set_props,@object # @__func__.gimp_session_info_aux_set_props
.L__func__.gimp_session_info_aux_set_props:
	.asciz	"gimp_session_info_aux_set_props"
	.size	.L__func__.gimp_session_info_aux_set_props, 32

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%s: unknown enum value in '%s' for %s"
	.size	.L.str.6, 38

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s: cannot convert property '%s' for %s"
	.size	.L.str.7, 40

	.type	.L__func__.gimp_session_info_aux_serialize,@object # @__func__.gimp_session_info_aux_serialize
.L__func__.gimp_session_info_aux_serialize:
	.asciz	"gimp_session_info_aux_serialize"
	.size	.L__func__.gimp_session_info_aux_serialize, 32

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"writer != NULL"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"aux_info != NULL"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"aux-info"
	.size	.L.str.10, 9

	.type	.L__func__.gimp_session_info_aux_deserialize,@object # @__func__.gimp_session_info_aux_deserialize
.L__func__.gimp_session_info_aux_deserialize:
	.asciz	"gimp_session_info_aux_deserialize"
	.size	.L__func__.gimp_session_info_aux_deserialize, 34

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"scanner != NULL"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"aux_list != NULL"
	.size	.L.str.12, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
