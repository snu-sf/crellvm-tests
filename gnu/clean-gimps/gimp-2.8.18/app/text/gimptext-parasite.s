	.text
	.file	"gimptext-parasite.bc"
	.globl	gimp_text_parasite_name
	.align	16, 0x90
	.type	gimp_text_parasite_name,@function
gimp_text_parasite_name:                # @gimp_text_parasite_name
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
	movabsq	$.L.str, %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_text_parasite_name, .Lfunc_end0-gimp_text_parasite_name
	.cfi_endproc

	.globl	gimp_text_to_parasite
	.align	16, 0x90
	.type	gimp_text_to_parasite,@function
gimp_text_to_parasite:                  # @gimp_text_to_parasite
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_text_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_to_parasite, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_18
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_config_serialize_to_string
	movq	%rax, -32(%rbp)
# BB#13:                                # %do.body.14
	cmpq	$0, -32(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.16
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_to_parasite, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_18
.LBB1_16:                               # %if.end.18
	jmp	.LBB1_17
.LBB1_17:                               # %do.end.19
	callq	gimp_text_parasite_name
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%esi, -76(%rbp)         # 4-byte Spill
	callq	strlen
	addq	$1, %rax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %edx         # 4-byte Reload
	movl	%esi, -80(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-80(%rbp), %edx         # 4-byte Reload
	callq	gimp_parasite_new
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB1_18:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_text_to_parasite, .Lfunc_end1-gimp_text_to_parasite
	.cfi_endproc

	.globl	gimp_text_from_parasite
	.align	16, 0x90
	.type	gimp_text_from_parasite,@function
gimp_text_from_parasite:                # @gimp_text_from_parasite
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_from_parasite, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_22
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	jmp	.LBB2_6
.LBB2_6:                                # %do.body.1
	movq	-16(%rbp), %rdi
	callq	gimp_parasite_name
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_text_parasite_name
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_8
# BB#7:                                 # %if.then.5
	jmp	.LBB2_9
.LBB2_8:                                # %if.else.6
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_from_parasite, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_22
.LBB2_9:                                # %if.end.7
	jmp	.LBB2_10
.LBB2_10:                               # %do.end.8
	jmp	.LBB2_11
.LBB2_11:                               # %do.body.9
	cmpq	$0, -24(%rbp)
	je	.LBB2_13
# BB#12:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB2_14
.LBB2_13:                               # %if.then.12
	jmp	.LBB2_15
.LBB2_14:                               # %if.else.13
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_from_parasite, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_22
.LBB2_15:                               # %if.end.14
	jmp	.LBB2_16
.LBB2_16:                               # %do.end.15
	movq	-16(%rbp), %rdi
	callq	gimp_parasite_data
	movq	%rax, -40(%rbp)
# BB#17:                                # %do.body.17
	cmpq	$0, -40(%rbp)
	je	.LBB2_19
# BB#18:                                # %if.then.19
	jmp	.LBB2_20
.LBB2_19:                               # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_from_parasite, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_22
.LBB2_20:                               # %if.end.21
	jmp	.LBB2_21
.LBB2_21:                               # %do.end.22
	callq	gimp_text_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_parasite_data_size
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	%eax, %edx
	movq	-24(%rbp), %r8
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	gimp_config_deserialize_string
	movq	-32(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB2_22:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_text_from_parasite, .Lfunc_end2-gimp_text_from_parasite
	.cfi_endproc

	.globl	gimp_text_gdyntext_parasite_name
	.align	16, 0x90
	.type	gimp_text_gdyntext_parasite_name,@function
gimp_text_gdyntext_parasite_name:       # @gimp_text_gdyntext_parasite_name
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
	movabsq	$.L.str.7, %rax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_text_gdyntext_parasite_name, .Lfunc_end3-gimp_text_gdyntext_parasite_name
	.cfi_endproc

	.globl	gimp_text_from_gdyntext_parasite
	.align	16, 0x90
	.type	gimp_text_from_gdyntext_parasite,@function
gimp_text_from_gdyntext_parasite:       # @gimp_text_from_gdyntext_parasite
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$224, %rsp
.Ltmp15:
	.cfi_offset %rbx, -48
.Ltmp16:
	.cfi_offset %r12, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -80(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -48(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_from_gdyntext_parasite, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB4_32
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.body.2
	movq	-48(%rbp), %rdi
	callq	gimp_parasite_name
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_text_gdyntext_parasite_name
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB4_8
# BB#7:                                 # %if.then.6
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.7
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_from_gdyntext_parasite, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB4_32
.LBB4_9:                                # %if.end.8
	jmp	.LBB4_10
.LBB4_10:                               # %do.end.9
	movq	-48(%rbp), %rdi
	callq	gimp_parasite_data
	movq	%rax, -72(%rbp)
# BB#11:                                # %do.body.11
	cmpq	$0, -72(%rbp)
	je	.LBB4_13
# BB#12:                                # %if.then.13
	jmp	.LBB4_14
.LBB4_13:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_from_gdyntext_parasite, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB4_32
.LBB4_14:                               # %if.end.15
	jmp	.LBB4_15
.LBB4_15:                               # %do.end.16
	movabsq	$.L.str.9, %rsi
	movq	-72(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	jne	.LBB4_17
# BB#16:                                # %if.then.18
	movq	$0, -40(%rbp)
	jmp	.LBB4_32
.LBB4_17:                               # %if.end.19
	movabsq	$.L.str.10, %rsi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movq	%rax, %rdi
	callq	g_strsplit
	movq	%rax, -88(%rbp)
	movl	$0, -148(%rbp)
.LBB4_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -148(%rbp)
	jge	.LBB4_23
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB4_18 Depth=1
	movslq	-148(%rbp), %rax
	movq	-88(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB4_21
# BB#20:                                # %if.then.23
	jmp	.LBB4_31
.LBB4_21:                               # %if.end.24
                                        #   in Loop: Header=BB4_18 Depth=1
	jmp	.LBB4_22
.LBB4_22:                               # %for.inc
                                        #   in Loop: Header=BB4_18 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB4_18
.LBB4_23:                               # %for.end
	movq	-88(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_strcompress
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	g_utf8_validate
	cmpl	$0, %eax
	jne	.LBB4_25
# BB#24:                                # %if.then.29
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rdi
	movb	$0, %al
	callq	gimp_any_to_utf8
	movq	%rax, -160(%rbp)
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-160(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB4_25:                               # %if.end.31
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
	testl	%eax, %eax
	setne	%cl
	movzbl	%cl, %eax
	movl	%eax, -92(%rbp)
	movq	-88(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	atoi
	movl	%eax, %edx
	testl	%eax, %eax
	movl	%edx, -172(%rbp)        # 4-byte Spill
	je	.LBB4_27
	jmp	.LBB4_33
.LBB4_33:                               # %if.end.31
	movl	-172(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	je	.LBB4_28
	jmp	.LBB4_34
.LBB4_34:                               # %if.end.31
	movl	-172(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	je	.LBB4_29
	jmp	.LBB4_26
.LBB4_26:                               # %sw.default
	jmp	.LBB4_27
.LBB4_27:                               # %sw.bb
	movl	$0, -60(%rbp)
	jmp	.LBB4_30
.LBB4_28:                               # %sw.bb.37
	movl	$2, -60(%rbp)
	jmp	.LBB4_30
.LBB4_29:                               # %sw.bb.38
	movl	$1, -60(%rbp)
.LBB4_30:                               # %sw.epilog
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-88(%rbp), %rcx
	movq	32(%rcx), %rdi
	callq	g_strtod
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$16, %edx
	movsd	%xmm0, -104(%rbp)
	movq	-88(%rbp), %rcx
	movq	40(%rcx), %rdi
	callq	strtol
	leaq	-136(%rbp), %rdi
	movl	$255, %r8d
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	sarq	$16, %rax
	movb	%al, %r9b
	movq	-144(%rbp), %rax
	sarq	$8, %rax
	movb	%al, %r10b
	movq	-144(%rbp), %rax
	movb	%al, %r11b
	movzbl	%r9b, %esi
	movzbl	%r10b, %edx
	movzbl	%r11b, %ecx
	callq	gimp_rgba_set_uchar
	callq	gimp_text_get_type
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rcx
	movabsq	$.L.str.13, %r9
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rbx
	leaq	-136(%rbp), %r14
	xorl	%edx, %edx
	movl	%edx, %r15d
	movq	-80(%rbp), %rdx
	movl	-92(%rbp), %r8d
	movl	-60(%rbp), %r12d
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r12d, (%rsp)
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	%r14, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$1, %al
	movq	%r15, -200(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_text_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rcx
	movq	56(%rcx), %rsi
	movq	%rax, %rdi
	callq	gimp_text_set_font_from_xlfd
.LBB4_31:                               # %cleanup
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-88(%rbp), %rdi
	callq	g_strfreev
	movq	-56(%rbp), %rdi
	movq	%rdi, -40(%rbp)
.LBB4_32:                               # %return
	movq	-40(%rbp), %rax
	addq	$224, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_text_from_gdyntext_parasite, .Lfunc_end4-gimp_text_from_gdyntext_parasite
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-text-layer"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Text"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_text_to_parasite,@object # @__func__.gimp_text_to_parasite
.L__func__.gimp_text_to_parasite:
	.asciz	"gimp_text_to_parasite"
	.size	.L__func__.gimp_text_to_parasite, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_TEXT (text)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"str != NULL"
	.size	.L.str.3, 12

	.type	.L__func__.gimp_text_from_parasite,@object # @__func__.gimp_text_from_parasite
.L__func__.gimp_text_from_parasite:
	.asciz	"gimp_text_from_parasite"
	.size	.L__func__.gimp_text_from_parasite, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"parasite != NULL"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"strcmp (gimp_parasite_name (parasite), gimp_text_parasite_name ()) == 0"
	.size	.L.str.5, 72

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.6, 32

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"plug_in_gdyntext/data"
	.size	.L.str.7, 22

	.type	.L__func__.gimp_text_from_gdyntext_parasite,@object # @__func__.gimp_text_from_gdyntext_parasite
.L__func__.gimp_text_from_gdyntext_parasite:
	.asciz	"gimp_text_from_gdyntext_parasite"
	.size	.L__func__.gimp_text_from_gdyntext_parasite, 33

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"strcmp (gimp_parasite_name (parasite), gimp_text_gdyntext_parasite_name ()) == 0"
	.size	.L.str.8, 81

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GDT10{"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"}{"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"text"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"antialias"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"justify"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"line-spacing"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"color"
	.size	.L.str.15, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
