	.text
	.file	"gimpbrushgenerated-load.bc"
	.globl	gimp_brush_generated_load
	.align	16, 0x90
	.type	gimp_brush_generated_load,@function
gimp_brush_generated_load:              # @gimp_brush_generated_load
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
	subq	$624, %rsp              # imm = 0x270
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -320(%rbp)
	movl	$0, -324(%rbp)
	movl	$0, -328(%rbp)
	movl	$2, -332(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_brush_generated_load, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_69
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	movq	-24(%rbp), %rdi
	callq	g_path_is_absolute
	cmpl	$0, %eax
	je	.LBB0_8
# BB#7:                                 # %if.then.2
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.3
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_brush_generated_load, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_69
.LBB0_9:                                # %if.end.4
	jmp	.LBB0_10
.LBB0_10:                               # %do.end.5
	jmp	.LBB0_11
.LBB0_11:                               # %do.body.6
	cmpq	$0, -32(%rbp)
	je	.LBB0_13
# BB#12:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_14
.LBB0_13:                               # %if.then.9
	jmp	.LBB0_15
.LBB0_14:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_brush_generated_load, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_69
.LBB0_15:                               # %if.end.11
	jmp	.LBB0_16
.LBB0_16:                               # %do.end.12
	movabsq	$.L.str.4, %rsi
	movq	-24(%rbp), %rdi
	callq	fopen
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_18
# BB#17:                                # %if.then.15
	movq	-32(%rbp), %rdi
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.5, %rdi
	movl	%eax, -412(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	xorl	%edx, %edx
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movl	-412(%rbp), %esi        # 4-byte Reload
	movq	-424(%rbp), %rcx        # 8-byte Reload
	movq	-432(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB0_69
.LBB0_18:                               # %if.end.21
	callq	__errno_location
	movl	$256, %esi              # imm = 0x100
	leaq	-304(%rbp), %rdi
	movl	$0, (%rax)
	movl	$1, -308(%rbp)
	movq	-48(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB0_20
# BB#19:                                # %if.then.25
	jmp	.LBB0_60
.LBB0_20:                               # %if.end.26
	movabsq	$.L.str.6, %rsi
	leaq	-304(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	jne	.LBB0_22
# BB#21:                                # %if.then.30
	movq	-32(%rbp), %rdi
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.7, %rdi
	movl	%eax, -444(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movl	-444(%rbp), %esi        # 4-byte Reload
	movq	-456(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB0_60
.LBB0_22:                               # %if.end.34
	callq	__errno_location
	movl	$256, %esi              # imm = 0x100
	leaq	-304(%rbp), %rdi
	movl	$0, (%rax)
	movl	-308(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -308(%rbp)
	movq	-48(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB0_24
# BB#23:                                # %if.then.39
	jmp	.LBB0_60
.LBB0_24:                               # %if.end.40
	movabsq	$.L.str.8, %rsi
	leaq	-304(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	jne	.LBB0_29
# BB#25:                                # %if.then.44
	movabsq	$.L.str.9, %rsi
	leaq	-304(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	jne	.LBB0_27
# BB#26:                                # %if.then.48
	movq	-32(%rbp), %rdi
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.10, %rdi
	movl	%eax, -468(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movl	-308(%rbp), %r9d
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movl	-468(%rbp), %esi        # 4-byte Reload
	movq	-480(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB0_60
.LBB0_27:                               # %if.else.52
	movl	$1, -328(%rbp)
# BB#28:                                # %if.end.53
	jmp	.LBB0_29
.LBB0_29:                               # %if.end.54
	callq	__errno_location
	movl	$256, %esi              # imm = 0x100
	leaq	-304(%rbp), %rdi
	movl	$0, (%rax)
	movl	-308(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -308(%rbp)
	movq	-48(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB0_31
# BB#30:                                # %if.then.60
	jmp	.LBB0_60
.LBB0_31:                               # %if.end.61
	leaq	-304(%rbp), %rdi
	callq	g_strchug
	movq	%rax, %rdi
	callq	g_strchomp
	leaq	-304(%rbp), %rdi
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	strlen
	cmpq	$1, %rax
	jae	.LBB0_33
# BB#32:                                # %if.then.68
	movabsq	$.L.str.11, %rdi
	leaq	-304(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %edx
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_strlcpy
	movq	%rax, -504(%rbp)        # 8-byte Spill
.LBB0_33:                               # %if.end.72
	movabsq	$.L.str.12, %rdi
	leaq	-304(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	$-1, %rsi
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	-520(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_any_to_utf8
	movq	%rax, -320(%rbp)
	cmpl	$0, -328(%rbp)
	je	.LBB0_39
# BB#34:                                # %if.then.78
	callq	gimp_brush_generated_shape_get_type
	movq	%rax, %rdi
	callq	g_type_class_peek
	movq	%rax, -384(%rbp)
	callq	__errno_location
	movl	$256, %esi              # imm = 0x100
	leaq	-304(%rbp), %rdi
	movl	$0, (%rax)
	movl	-308(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -308(%rbp)
	movq	-48(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB0_36
# BB#35:                                # %if.then.86
	jmp	.LBB0_60
.LBB0_36:                               # %if.end.87
	leaq	-304(%rbp), %rdi
	callq	g_strchug
	movq	%rax, %rdi
	callq	g_strchomp
	leaq	-304(%rbp), %rsi
	movq	-384(%rbp), %rdi
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	g_enum_get_value_by_nick
	movq	%rax, -392(%rbp)
	cmpq	$0, -392(%rbp)
	jne	.LBB0_38
# BB#37:                                # %if.then.94
	movq	-32(%rbp), %rdi
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.13, %rdi
	movl	%eax, -540(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movl	-308(%rbp), %r9d
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movl	-540(%rbp), %esi        # 4-byte Reload
	movq	-552(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB0_60
.LBB0_38:                               # %if.end.98
	movq	-392(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -324(%rbp)
.LBB0_39:                               # %if.end.99
	callq	__errno_location
	movl	$256, %esi              # imm = 0x100
	leaq	-304(%rbp), %rdi
	movl	$0, (%rax)
	movl	-308(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -308(%rbp)
	movq	-48(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB0_41
# BB#40:                                # %if.then.105
	jmp	.LBB0_60
.LBB0_41:                               # %if.end.106
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-304(%rbp), %rdi
	callq	g_ascii_strtod
	movsd	%xmm0, -344(%rbp)
	callq	__errno_location
	movl	$256, %esi              # imm = 0x100
	leaq	-304(%rbp), %rdi
	movl	$0, (%rax)
	movl	-308(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -308(%rbp)
	movq	-48(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB0_43
# BB#42:                                # %if.then.114
	jmp	.LBB0_60
.LBB0_43:                               # %if.end.115
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-304(%rbp), %rdi
	callq	g_ascii_strtod
	movsd	%xmm0, -352(%rbp)
	cmpl	$0, -328(%rbp)
	je	.LBB0_53
# BB#44:                                # %if.then.119
	callq	__errno_location
	movl	$256, %esi              # imm = 0x100
	leaq	-304(%rbp), %rdi
	movl	$0, (%rax)
	movl	-308(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -308(%rbp)
	movq	-48(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB0_46
# BB#45:                                # %if.then.125
	jmp	.LBB0_60
.LBB0_46:                               # %if.end.126
	leaq	-304(%rbp), %rdi
	callq	atoi
	cmpl	$20, %eax
	jle	.LBB0_48
# BB#47:                                # %cond.true
	movl	$20, %eax
	movl	%eax, -556(%rbp)        # 4-byte Spill
	jmp	.LBB0_52
.LBB0_48:                               # %cond.false
	leaq	-304(%rbp), %rdi
	callq	atoi
	cmpl	$2, %eax
	jge	.LBB0_50
# BB#49:                                # %cond.true.133
	movl	$2, %eax
	movl	%eax, -560(%rbp)        # 4-byte Spill
	jmp	.LBB0_51
.LBB0_50:                               # %cond.false.134
	leaq	-304(%rbp), %rdi
	callq	atoi
	movl	%eax, -560(%rbp)        # 4-byte Spill
.LBB0_51:                               # %cond.end
	movl	-560(%rbp), %eax        # 4-byte Reload
	movl	%eax, -556(%rbp)        # 4-byte Spill
.LBB0_52:                               # %cond.end.137
	movl	-556(%rbp), %eax        # 4-byte Reload
	movl	%eax, -332(%rbp)
.LBB0_53:                               # %if.end.139
	callq	__errno_location
	movl	$256, %esi              # imm = 0x100
	leaq	-304(%rbp), %rdi
	movl	$0, (%rax)
	movl	-308(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -308(%rbp)
	movq	-48(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB0_55
# BB#54:                                # %if.then.145
	jmp	.LBB0_60
.LBB0_55:                               # %if.end.146
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-304(%rbp), %rdi
	callq	g_ascii_strtod
	movsd	%xmm0, -360(%rbp)
	callq	__errno_location
	movl	$256, %esi              # imm = 0x100
	leaq	-304(%rbp), %rdi
	movl	$0, (%rax)
	movl	-308(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -308(%rbp)
	movq	-48(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB0_57
# BB#56:                                # %if.then.154
	jmp	.LBB0_60
.LBB0_57:                               # %if.end.155
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-304(%rbp), %rdi
	callq	g_ascii_strtod
	movsd	%xmm0, -368(%rbp)
	callq	__errno_location
	movl	$256, %esi              # imm = 0x100
	leaq	-304(%rbp), %rdi
	movl	$0, (%rax)
	movl	-308(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -308(%rbp)
	movq	-48(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB0_59
# BB#58:                                # %if.then.163
	jmp	.LBB0_60
.LBB0_59:                               # %if.end.164
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-304(%rbp), %rdi
	callq	g_ascii_strtod
	movsd	%xmm0, -376(%rbp)
	movq	-48(%rbp), %rdi
	callq	fclose
	movq	-320(%rbp), %rdi
	movl	-324(%rbp), %esi
	cvtsd2ss	-352(%rbp), %xmm0
	movl	-332(%rbp), %edx
	cvtsd2ss	-360(%rbp), %xmm1
	cvtsd2ss	-368(%rbp), %xmm2
	cvtsd2ss	-376(%rbp), %xmm3
	movl	%eax, -564(%rbp)        # 4-byte Spill
	callq	gimp_brush_generated_new
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-320(%rbp), %rdi
	callq	g_free
	xorl	%edx, %edx
	movl	%edx, %edi
	cvttsd2si	-344(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 48(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -8(%rbp)
	jmp	.LBB0_69
.LBB0_60:                               # %failed
	movq	-48(%rbp), %rdi
	callq	fclose
	cmpq	$0, -320(%rbp)
	movl	%eax, -580(%rbp)        # 4-byte Spill
	je	.LBB0_62
# BB#61:                                # %if.then.179
	movq	-320(%rbp), %rdi
	callq	g_free
.LBB0_62:                               # %if.end.180
	cmpq	$0, -32(%rbp)
	je	.LBB0_68
# BB#63:                                # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_68
# BB#64:                                # %if.then.184
	callq	__errno_location
	cmpl	$0, (%rax)
	je	.LBB0_66
# BB#65:                                # %if.then.187
	movabsq	$.L.str.14, %rdi
	callq	gettext
	movl	-308(%rbp), %esi
	movq	%rax, -592(%rbp)        # 8-byte Spill
	movl	%esi, -596(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movl	-596(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -400(%rbp)
	jmp	.LBB0_67
.LBB0_66:                               # %if.else.192
	movabsq	$.L.str.15, %rdi
	callq	gettext
	movl	-308(%rbp), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -400(%rbp)
.LBB0_67:                               # %if.end.195
	movq	-32(%rbp), %rdi
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.16, %rdi
	movl	%eax, -612(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movq	-400(%rbp), %r9
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movl	-612(%rbp), %esi        # 4-byte Reload
	movq	-624(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	-400(%rbp), %rdi
	callq	g_free
.LBB0_68:                               # %if.end.199
	movq	$0, -8(%rbp)
.LBB0_69:                               # %return
	movq	-8(%rbp), %rax
	addq	$624, %rsp              # imm = 0x270
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_brush_generated_load, .Lfunc_end0-gimp_brush_generated_load
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_brush_generated_load,@object # @__func__.gimp_brush_generated_load
.L__func__.gimp_brush_generated_load:
	.asciz	"gimp_brush_generated_load"
	.size	.L__func__.gimp_brush_generated_load, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"filename != NULL"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"g_path_is_absolute (filename)"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"rb"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.5, 36

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP-VBR"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Fatal parse error in brush file '%s': Not a GIMP brush file."
	.size	.L.str.7, 61

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"1.0"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"1.5"
	.size	.L.str.9, 4

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Fatal parse error in brush file '%s': Unknown GIMP brush version in line %d."
	.size	.L.str.10, 77

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Untitled"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Invalid UTF-8 string in brush file '%s'."
	.size	.L.str.12, 41

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Fatal parse error in brush file '%s': Unknown GIMP brush shape in line %d."
	.size	.L.str.13, 75

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Line %d: %s"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"File is truncated in line %d"
	.size	.L.str.15, 29

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Error while reading brush file '%s': %s"
	.size	.L.str.16, 40


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
