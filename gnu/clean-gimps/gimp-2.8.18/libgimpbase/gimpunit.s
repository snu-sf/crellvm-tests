	.text
	.file	"gimpunit.bc"
	.globl	gimp_unit_get_type
	.align	16, 0x90
	.type	gimp_unit_get_type,@function
gimp_unit_get_type:                     # @gimp_unit_get_type
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
	cmpq	$0, gimp_unit_get_type.unit_type(%rip)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	$24, %eax
	movl	%eax, %edi
	leaq	.L.str(%rip), %rsi
	leaq	gimp_unit_get_type.type_info(%rip), %rdx
	xorl	%ecx, %ecx
	callq	g_type_register_static@PLT
	movl	$64, %ecx
	movl	%ecx, %esi
	leaq	unit_to_string(%rip), %rdx
	movq	%rax, gimp_unit_get_type.unit_type(%rip)
	movq	gimp_unit_get_type.unit_type(%rip), %rdi
	callq	g_value_register_transform_func@PLT
	movl	$64, %ecx
	movl	%ecx, %edi
	leaq	string_to_unit(%rip), %rdx
	movq	gimp_unit_get_type.unit_type(%rip), %rsi
	callq	g_value_register_transform_func@PLT
.LBB0_2:                                # %if.end
	movq	gimp_unit_get_type.unit_type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_unit_get_type, .Lfunc_end0-gimp_unit_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	unit_to_string,@function
unit_to_string:                         # @unit_to_string
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
	movq	-8(%rbp), %rdi
	callq	g_value_get_int@PLT
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %eax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	gimp_unit_get_identifier@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_string@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	unit_to_string, .Lfunc_end1-unit_to_string
	.cfi_endproc

	.align	16, 0x90
	.type	string_to_unit,@function
string_to_unit:                         # @string_to_unit
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_value_get_string@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB2_2
# BB#1:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB2_3
.LBB2_2:                                # %if.then
	jmp	.LBB2_15
.LBB2_3:                                # %if.end
	callq	gimp_unit_get_number_of_units@PLT
	movl	%eax, -28(%rbp)
	movl	$0, -32(%rbp)
.LBB2_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB2_9
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	-24(%rbp), %rdi
	movl	-32(%rbp), %eax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	gimp_unit_get_identifier@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB2_7
# BB#6:                                 # %if.then.6
	jmp	.LBB2_9
.LBB2_7:                                # %if.end.7
                                        #   in Loop: Header=BB2_4 Depth=1
	jmp	.LBB2_8
.LBB2_8:                                # %for.inc
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB2_4
.LBB2_9:                                # %for.end
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jne	.LBB2_14
# BB#10:                                # %if.then.9
	movl	$65536, %edi            # imm = 0x10000
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_unit_get_identifier@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB2_12
# BB#11:                                # %if.then.13
	movl	$65536, -32(%rbp)       # imm = 0x10000
	jmp	.LBB2_13
.LBB2_12:                               # %if.else
	jmp	.LBB2_15
.LBB2_13:                               # %if.end.14
	jmp	.LBB2_14
.LBB2_14:                               # %if.end.15
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %esi
	callq	g_value_set_int@PLT
	jmp	.LBB2_16
.LBB2_15:                               # %error
	leaq	.L.str.21(%rip), %rdi
	movq	-24(%rbp), %rsi
	movb	$0, %al
	callq	g_warning
.LBB2_16:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	string_to_unit, .Lfunc_end2-string_to_unit
	.cfi_endproc

	.globl	gimp_unit_get_number_of_units
	.align	16, 0x90
	.type	gimp_unit_get_number_of_units,@function
gimp_unit_get_number_of_units:          # @gimp_unit_get_number_of_units
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
# BB#1:                                 # %do.body
	movq	_gimp_unit_vtable@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_unit_get_number_of_units(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$5, -4(%rbp)
	jmp	.LBB3_6
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movq	_gimp_unit_vtable@GOTPCREL(%rip), %rax
	callq	*(%rax)
	movl	%eax, -4(%rbp)
.LBB3_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_unit_get_number_of_units, .Lfunc_end3-gimp_unit_get_number_of_units
	.cfi_endproc

	.globl	gimp_unit_get_number_of_built_in_units
	.align	16, 0x90
	.type	gimp_unit_get_number_of_built_in_units,@function
gimp_unit_get_number_of_built_in_units: # @gimp_unit_get_number_of_built_in_units
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
	subq	$16, %rsp
# BB#1:                                 # %do.body
	movq	_gimp_unit_vtable@GOTPCREL(%rip), %rax
	cmpq	$0, 8(%rax)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_unit_get_number_of_built_in_units(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$5, -4(%rbp)
	jmp	.LBB4_6
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	movq	_gimp_unit_vtable@GOTPCREL(%rip), %rax
	callq	*8(%rax)
	movl	%eax, -4(%rbp)
.LBB4_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_unit_get_number_of_built_in_units, .Lfunc_end4-gimp_unit_get_number_of_built_in_units
	.cfi_endproc

	.globl	gimp_unit_new
	.align	16, 0x90
	.type	gimp_unit_new,@function
gimp_unit_new:                          # @gimp_unit_new
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
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
# BB#1:                                 # %do.body
	movq	_gimp_unit_vtable@GOTPCREL(%rip), %rax
	cmpq	$0, 16(%rax)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_unit_new(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB5_6
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	movq	_gimp_unit_vtable@GOTPCREL(%rip), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-28(%rbp), %esi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-64(%rbp), %r9
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB5_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_unit_new, .Lfunc_end5-gimp_unit_new
	.cfi_endproc

	.globl	gimp_unit_get_deletion_flag
	.align	16, 0x90
	.type	gimp_unit_get_deletion_flag,@function
gimp_unit_get_deletion_flag:            # @gimp_unit_get_deletion_flag
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
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	_gimp_unit_vtable@GOTPCREL(%rip), %rax
	cmpq	$0, 24(%rax)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_unit_get_deletion_flag(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB6_6
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	movq	_gimp_unit_vtable@GOTPCREL(%rip), %rax
	movq	24(%rax), %rax
	movl	-8(%rbp), %edi
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB6_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_unit_get_deletion_flag, .Lfunc_end6-gimp_unit_get_deletion_flag
	.cfi_endproc

	.globl	gimp_unit_set_deletion_flag
	.align	16, 0x90
	.type	gimp_unit_set_deletion_flag,@function
gimp_unit_set_deletion_flag:            # @gimp_unit_set_deletion_flag
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	_gimp_unit_vtable@GOTPCREL(%rip), %rax
	cmpq	$0, 32(%rax)
	je	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_unit_set_deletion_flag(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_6
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	movq	_gimp_unit_vtable@GOTPCREL(%rip), %rax
	movq	32(%rax), %rax
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	*%rax
.LBB7_6:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_unit_set_deletion_flag, .Lfunc_end7-gimp_unit_set_deletion_flag
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_unit_get_factor
	.align	16, 0x90
	.type	gimp_unit_get_factor,@function
gimp_unit_get_factor:                   # @gimp_unit_get_factor
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
	subq	$16, %rsp
	movl	%edi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	_gimp_unit_vtable@GOTPCREL(%rip), %rax
	cmpq	$0, 40(%rax)
	je	.LBB8_3
# BB#2:                                 # %if.then
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_unit_get_factor(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB8_6
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %do.end
	movq	_gimp_unit_vtable@GOTPCREL(%rip), %rax
	movq	40(%rax), %rax
	movl	-12(%rbp), %edi
	callq	*%rax
	movsd	%xmm0, -8(%rbp)
.LBB8_6:                                # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_unit_get_factor, .Lfunc_end8-gimp_unit_get_factor
	.cfi_endproc

	.globl	gimp_unit_get_digits
	.align	16, 0x90
	.type	gimp_unit_get_digits,@function
gimp_unit_get_digits:                   # @gimp_unit_get_digits
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
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	_gimp_unit_vtable@GOTPCREL(%rip), %rax
	cmpq	$0, 48(%rax)
	je	.LBB9_3
# BB#2:                                 # %if.then
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_unit_get_digits(%rip), %rsi
	leaq	.L.str.8(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$2, -4(%rbp)
	jmp	.LBB9_6
.LBB9_4:                                # %if.end
	jmp	.LBB9_5
.LBB9_5:                                # %do.end
	movq	_gimp_unit_vtable@GOTPCREL(%rip), %rax
	movq	48(%rax), %rax
	movl	-8(%rbp), %edi
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB9_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_unit_get_digits, .Lfunc_end9-gimp_unit_get_digits
	.cfi_endproc

	.globl	gimp_unit_get_identifier
	.align	16, 0x90
	.type	gimp_unit_get_identifier,@function
gimp_unit_get_identifier:               # @gimp_unit_get_identifier
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
	subq	$16, %rsp
	movl	%edi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	_gimp_unit_vtable@GOTPCREL(%rip), %rax
	cmpq	$0, 56(%rax)
	je	.LBB10_3
# BB#2:                                 # %if.then
	jmp	.LBB10_4
.LBB10_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_unit_get_identifier(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB10_6
.LBB10_4:                               # %if.end
	jmp	.LBB10_5
.LBB10_5:                               # %do.end
	movq	_gimp_unit_vtable@GOTPCREL(%rip), %rax
	movq	56(%rax), %rax
	movl	-12(%rbp), %edi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB10_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_unit_get_identifier, .Lfunc_end10-gimp_unit_get_identifier
	.cfi_endproc

	.globl	gimp_unit_get_symbol
	.align	16, 0x90
	.type	gimp_unit_get_symbol,@function
gimp_unit_get_symbol:                   # @gimp_unit_get_symbol
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
	movl	%edi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	_gimp_unit_vtable@GOTPCREL(%rip), %rax
	cmpq	$0, 64(%rax)
	je	.LBB11_3
# BB#2:                                 # %if.then
	jmp	.LBB11_4
.LBB11_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_unit_get_symbol(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB11_6
.LBB11_4:                               # %if.end
	jmp	.LBB11_5
.LBB11_5:                               # %do.end
	movq	_gimp_unit_vtable@GOTPCREL(%rip), %rax
	movq	64(%rax), %rax
	movl	-12(%rbp), %edi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB11_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_unit_get_symbol, .Lfunc_end11-gimp_unit_get_symbol
	.cfi_endproc

	.globl	gimp_unit_get_abbreviation
	.align	16, 0x90
	.type	gimp_unit_get_abbreviation,@function
gimp_unit_get_abbreviation:             # @gimp_unit_get_abbreviation
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
	subq	$16, %rsp
	movl	%edi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	_gimp_unit_vtable@GOTPCREL(%rip), %rax
	cmpq	$0, 72(%rax)
	je	.LBB12_3
# BB#2:                                 # %if.then
	jmp	.LBB12_4
.LBB12_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_unit_get_abbreviation(%rip), %rsi
	leaq	.L.str.11(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB12_6
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %do.end
	movq	_gimp_unit_vtable@GOTPCREL(%rip), %rax
	movq	72(%rax), %rax
	movl	-12(%rbp), %edi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB12_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_unit_get_abbreviation, .Lfunc_end12-gimp_unit_get_abbreviation
	.cfi_endproc

	.globl	gimp_unit_get_singular
	.align	16, 0x90
	.type	gimp_unit_get_singular,@function
gimp_unit_get_singular:                 # @gimp_unit_get_singular
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
	subq	$16, %rsp
	movl	%edi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	_gimp_unit_vtable@GOTPCREL(%rip), %rax
	cmpq	$0, 80(%rax)
	je	.LBB13_3
# BB#2:                                 # %if.then
	jmp	.LBB13_4
.LBB13_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_unit_get_singular(%rip), %rsi
	leaq	.L.str.12(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB13_6
.LBB13_4:                               # %if.end
	jmp	.LBB13_5
.LBB13_5:                               # %do.end
	movq	_gimp_unit_vtable@GOTPCREL(%rip), %rax
	movq	80(%rax), %rax
	movl	-12(%rbp), %edi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB13_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_unit_get_singular, .Lfunc_end13-gimp_unit_get_singular
	.cfi_endproc

	.globl	gimp_unit_get_plural
	.align	16, 0x90
	.type	gimp_unit_get_plural,@function
gimp_unit_get_plural:                   # @gimp_unit_get_plural
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
	subq	$16, %rsp
	movl	%edi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	_gimp_unit_vtable@GOTPCREL(%rip), %rax
	cmpq	$0, 88(%rax)
	je	.LBB14_3
# BB#2:                                 # %if.then
	jmp	.LBB14_4
.LBB14_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_unit_get_plural(%rip), %rsi
	leaq	.L.str.13(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB14_6
.LBB14_4:                               # %if.end
	jmp	.LBB14_5
.LBB14_5:                               # %do.end
	movq	_gimp_unit_vtable@GOTPCREL(%rip), %rax
	movq	88(%rax), %rax
	movl	-12(%rbp), %edi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB14_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_unit_get_plural, .Lfunc_end14-gimp_unit_get_plural
	.cfi_endproc

	.globl	gimp_unit_format_string
	.align	16, 0x90
	.type	gimp_unit_format_string,@function
gimp_unit_format_string:                # @gimp_unit_format_string
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
	subq	$1200, %rsp             # imm = 0x4B0
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	$0, -1060(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB15_3
# BB#2:                                 # %if.then
	jmp	.LBB15_4
.LBB15_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_unit_format_string(%rip), %rsi
	leaq	.L.str.14(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB15_33
.LBB15_4:                               # %if.end
	jmp	.LBB15_5
.LBB15_5:                               # %do.end
	jmp	.LBB15_6
.LBB15_6:                               # %do.body.1
	cmpl	$65536, -20(%rbp)       # imm = 0x10000
	je	.LBB15_9
# BB#7:                                 # %lor.lhs.false
	cmpl	$0, -20(%rbp)
	jb	.LBB15_10
# BB#8:                                 # %land.lhs.true
	movl	-20(%rbp), %eax
	movl	%eax, -1064(%rbp)       # 4-byte Spill
	callq	gimp_unit_get_number_of_units@PLT
	movl	-1064(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jae	.LBB15_10
.LBB15_9:                               # %if.then.5
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.6
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_unit_format_string(%rip), %rsi
	leaq	.L.str.15(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB15_33
.LBB15_11:                              # %if.end.7
	jmp	.LBB15_12
.LBB15_12:                              # %do.end.8
	jmp	.LBB15_13
.LBB15_13:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movslq	-1060(%rbp), %rdx
	cmpq	$1023, %rdx             # imm = 0x3FF
	movb	%cl, -1065(%rbp)        # 1-byte Spill
	jae	.LBB15_15
# BB#14:                                # %land.rhs
                                        #   in Loop: Header=BB15_13 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	setne	%dl
	movb	%dl, -1065(%rbp)        # 1-byte Spill
.LBB15_15:                              # %land.end
                                        #   in Loop: Header=BB15_13 Depth=1
	movb	-1065(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB15_16
	jmp	.LBB15_29
.LBB15_16:                              # %while.body
                                        #   in Loop: Header=BB15_13 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	subl	$37, %ecx
	movl	%ecx, -1072(%rbp)       # 4-byte Spill
	jne	.LBB15_27
	jmp	.LBB15_17
.LBB15_17:                              # %sw.bb
                                        #   in Loop: Header=BB15_13 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -16(%rbp)
	movsbl	1(%rax), %edx
	testl	%edx, %edx
	movl	%edx, -1076(%rbp)       # 4-byte Spill
	je	.LBB15_18
	jmp	.LBB15_34
.LBB15_34:                              # %sw.bb
                                        #   in Loop: Header=BB15_13 Depth=1
	movl	-1076(%rbp), %eax       # 4-byte Reload
	subl	$37, %eax
	movl	%eax, -1080(%rbp)       # 4-byte Spill
	je	.LBB15_19
	jmp	.LBB15_35
.LBB15_35:                              # %sw.bb
                                        #   in Loop: Header=BB15_13 Depth=1
	movl	-1076(%rbp), %eax       # 4-byte Reload
	subl	$97, %eax
	movl	%eax, -1084(%rbp)       # 4-byte Spill
	je	.LBB15_22
	jmp	.LBB15_36
.LBB15_36:                              # %sw.bb
                                        #   in Loop: Header=BB15_13 Depth=1
	movl	-1076(%rbp), %eax       # 4-byte Reload
	subl	$102, %eax
	movl	%eax, -1088(%rbp)       # 4-byte Spill
	je	.LBB15_20
	jmp	.LBB15_37
.LBB15_37:                              # %sw.bb
                                        #   in Loop: Header=BB15_13 Depth=1
	movl	-1076(%rbp), %eax       # 4-byte Reload
	subl	$112, %eax
	movl	%eax, -1092(%rbp)       # 4-byte Spill
	je	.LBB15_24
	jmp	.LBB15_38
.LBB15_38:                              # %sw.bb
                                        #   in Loop: Header=BB15_13 Depth=1
	movl	-1076(%rbp), %eax       # 4-byte Reload
	subl	$115, %eax
	movl	%eax, -1096(%rbp)       # 4-byte Spill
	je	.LBB15_23
	jmp	.LBB15_39
.LBB15_39:                              # %sw.bb
                                        #   in Loop: Header=BB15_13 Depth=1
	movl	-1076(%rbp), %eax       # 4-byte Reload
	subl	$121, %eax
	movl	%eax, -1100(%rbp)       # 4-byte Spill
	je	.LBB15_21
	jmp	.LBB15_25
.LBB15_18:                              # %sw.bb.14
                                        #   in Loop: Header=BB15_13 Depth=1
	leaq	.L.str.16(%rip), %rdi
	leaq	.L__func__.gimp_unit_format_string(%rip), %rsi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB15_26
.LBB15_19:                              # %sw.bb.15
                                        #   in Loop: Header=BB15_13 Depth=1
	movl	-1060(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -1060(%rbp)
	movslq	%eax, %rdx
	movb	$37, -1056(%rbp,%rdx)
	jmp	.LBB15_26
.LBB15_20:                              # %sw.bb.16
                                        #   in Loop: Header=BB15_13 Depth=1
	leaq	-1056(%rbp), %rdi
	movl	-1060(%rbp), %edx
	movl	-20(%rbp), %eax
	movq	%rdi, -1112(%rbp)       # 8-byte Spill
	movl	%eax, %edi
	movl	%edx, -1116(%rbp)       # 4-byte Spill
	callq	gimp_unit_get_factor@PLT
	movl	$1024, %esi             # imm = 0x400
	leaq	.L.str.17(%rip), %rcx
	movq	-1112(%rbp), %rdi       # 8-byte Reload
	movl	-1116(%rbp), %edx       # 4-byte Reload
	movb	$1, %al
	callq	print
	addl	-1060(%rbp), %eax
	movl	%eax, -1060(%rbp)
	jmp	.LBB15_26
.LBB15_21:                              # %sw.bb.19
                                        #   in Loop: Header=BB15_13 Depth=1
	leaq	-1056(%rbp), %rdi
	movl	-1060(%rbp), %edx
	movl	-20(%rbp), %eax
	movq	%rdi, -1128(%rbp)       # 8-byte Spill
	movl	%eax, %edi
	movl	%edx, -1132(%rbp)       # 4-byte Spill
	callq	gimp_unit_get_symbol@PLT
	movl	$1024, %esi             # imm = 0x400
	leaq	.L.str.18(%rip), %rcx
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	movl	-1132(%rbp), %edx       # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	print
	addl	-1060(%rbp), %eax
	movl	%eax, -1060(%rbp)
	jmp	.LBB15_26
.LBB15_22:                              # %sw.bb.24
                                        #   in Loop: Header=BB15_13 Depth=1
	leaq	-1056(%rbp), %rdi
	movl	-1060(%rbp), %edx
	movl	-20(%rbp), %eax
	movq	%rdi, -1144(%rbp)       # 8-byte Spill
	movl	%eax, %edi
	movl	%edx, -1148(%rbp)       # 4-byte Spill
	callq	gimp_unit_get_abbreviation@PLT
	movl	$1024, %esi             # imm = 0x400
	leaq	.L.str.18(%rip), %rcx
	movq	-1144(%rbp), %rdi       # 8-byte Reload
	movl	-1148(%rbp), %edx       # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	print
	addl	-1060(%rbp), %eax
	movl	%eax, -1060(%rbp)
	jmp	.LBB15_26
.LBB15_23:                              # %sw.bb.29
                                        #   in Loop: Header=BB15_13 Depth=1
	leaq	-1056(%rbp), %rdi
	movl	-1060(%rbp), %edx
	movl	-20(%rbp), %eax
	movq	%rdi, -1160(%rbp)       # 8-byte Spill
	movl	%eax, %edi
	movl	%edx, -1164(%rbp)       # 4-byte Spill
	callq	gimp_unit_get_singular@PLT
	movl	$1024, %esi             # imm = 0x400
	leaq	.L.str.18(%rip), %rcx
	movq	-1160(%rbp), %rdi       # 8-byte Reload
	movl	-1164(%rbp), %edx       # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	print
	addl	-1060(%rbp), %eax
	movl	%eax, -1060(%rbp)
	jmp	.LBB15_26
.LBB15_24:                              # %sw.bb.34
                                        #   in Loop: Header=BB15_13 Depth=1
	leaq	-1056(%rbp), %rdi
	movl	-1060(%rbp), %edx
	movl	-20(%rbp), %eax
	movq	%rdi, -1176(%rbp)       # 8-byte Spill
	movl	%eax, %edi
	movl	%edx, -1180(%rbp)       # 4-byte Spill
	callq	gimp_unit_get_plural@PLT
	movl	$1024, %esi             # imm = 0x400
	leaq	.L.str.18(%rip), %rcx
	movq	-1176(%rbp), %rdi       # 8-byte Reload
	movl	-1180(%rbp), %edx       # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	print
	addl	-1060(%rbp), %eax
	movl	%eax, -1060(%rbp)
	jmp	.LBB15_26
.LBB15_25:                              # %sw.default
                                        #   in Loop: Header=BB15_13 Depth=1
	leaq	.L.str.19(%rip), %rdi
	leaq	.L__func__.gimp_unit_format_string(%rip), %rsi
	movq	-16(%rbp), %rax
	movsbl	(%rax), %edx
	movb	$0, %al
	callq	g_warning
.LBB15_26:                              # %sw.epilog
                                        #   in Loop: Header=BB15_13 Depth=1
	jmp	.LBB15_28
.LBB15_27:                              # %sw.default.40
                                        #   in Loop: Header=BB15_13 Depth=1
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movl	-1060(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -1060(%rbp)
	movslq	%edx, %rax
	movb	%cl, -1056(%rbp,%rax)
.LBB15_28:                              # %sw.epilog.44
                                        #   in Loop: Header=BB15_13 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB15_13
.LBB15_29:                              # %while.end
	movslq	-1060(%rbp), %rax
	cmpq	$1023, %rax             # imm = 0x3FF
	jae	.LBB15_31
# BB#30:                                # %cond.true
	movslq	-1060(%rbp), %rax
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	jmp	.LBB15_32
.LBB15_31:                              # %cond.false
	movl	$1023, %eax             # imm = 0x3FF
	movl	%eax, %ecx
	movq	%rcx, -1192(%rbp)       # 8-byte Spill
	jmp	.LBB15_32
.LBB15_32:                              # %cond.end
	movq	-1192(%rbp), %rax       # 8-byte Reload
	leaq	-1056(%rbp), %rdi
	movb	$0, -1056(%rbp,%rax)
	callq	g_strdup@PLT
	movq	%rax, -8(%rbp)
.LBB15_33:                              # %return
	movq	-8(%rbp), %rax
	addq	$1200, %rsp             # imm = 0x4B0
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_unit_format_string, .Lfunc_end15-gimp_unit_format_string
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB16_2
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
.LBB16_2:                               # %entry
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
.Lfunc_end16:
	.size	g_warning, .Lfunc_end16-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	print,@function
print:                                  # @print
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
	subq	$416, %rsp              # imm = 0x1A0
	testb	%al, %al
	movaps	%xmm7, -256(%rbp)       # 16-byte Spill
	movaps	%xmm6, -272(%rbp)       # 16-byte Spill
	movaps	%xmm5, -288(%rbp)       # 16-byte Spill
	movaps	%xmm4, -304(%rbp)       # 16-byte Spill
	movaps	%xmm3, -320(%rbp)       # 16-byte Spill
	movaps	%xmm2, -336(%rbp)       # 16-byte Spill
	movaps	%xmm1, -352(%rbp)       # 16-byte Spill
	movaps	%xmm0, -368(%rbp)       # 16-byte Spill
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%r9, -384(%rbp)         # 8-byte Spill
	movq	%r8, -392(%rbp)         # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	movl	%edx, -404(%rbp)        # 4-byte Spill
	movl	%esi, -408(%rbp)        # 4-byte Spill
	je	.LBB17_4
# BB#3:                                 # %entry
	movaps	-368(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -192(%rbp)
	movaps	-352(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -176(%rbp)
	movaps	-336(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -160(%rbp)
	movaps	-320(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -144(%rbp)
	movaps	-304(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -128(%rbp)
	movaps	-288(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -112(%rbp)
	movaps	-272(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -96(%rbp)
	movaps	-256(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -80(%rbp)
.LBB17_4:                               # %entry
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -208(%rbp)
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movl	-404(%rbp), %esi        # 4-byte Reload
	movl	-408(%rbp), %edi        # 4-byte Reload
	movq	-376(%rbp), %r8         # 8-byte Reload
	leaq	-48(%rbp), %r9
	movq	%r8, -8(%rbp)
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%r9, %rdx
	leaq	-240(%rbp), %r8
	movq	%r8, 16(%rdx)
	leaq	16(%rbp), %r8
	movq	%r8, 8(%rdx)
	movl	$48, 4(%rdx)
	movl	$32, (%rdx)
	movq	-8(%rbp), %rdx
	movslq	-16(%rbp), %r8
	addq	%r8, %rdx
	movl	-12(%rbp), %esi
	subl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movq	-24(%rbp), %r8
	movq	%rdx, %rdi
	movq	%r8, %rdx
	movq	%r9, %rcx
	callq	g_vsnprintf@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jge	.LBB17_2
# BB#1:                                 # %if.then
	movl	-12(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB17_2:                               # %if.end
	movl	-52(%rbp), %eax
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end17:
	.size	print, .Lfunc_end17-print
	.cfi_endproc

	.globl	gimp_param_unit_get_type
	.align	16, 0x90
	.type	gimp_param_unit_get_type,@function
gimp_param_unit_get_type:               # @gimp_param_unit_get_type
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
	cmpq	$0, gimp_param_unit_get_type.spec_type(%rip)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	leaq	.L.str.20(%rip), %rsi
	leaq	gimp_param_unit_get_type.type_info(%rip), %rdx
	xorl	%ecx, %ecx
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rdi
	callq	g_type_register_static@PLT
	movq	%rax, gimp_param_unit_get_type.spec_type(%rip)
.LBB18_2:                               # %if.end
	movq	gimp_param_unit_get_type.spec_type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_param_unit_get_type, .Lfunc_end18-gimp_param_unit_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_unit_class_init,@function
gimp_param_unit_class_init:             # @gimp_param_unit_class_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_unit_get_type@PLT
	leaq	gimp_param_unit_value_validate(%rip), %rdi
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-8(%rbp), %rax
	movq	%rdi, 32(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_param_unit_class_init, .Lfunc_end19-gimp_param_unit_class_init
	.cfi_endproc

	.globl	gimp_param_spec_unit
	.align	16, 0x90
	.type	gimp_param_spec_unit,@function
gimp_param_spec_unit:                   # @gimp_param_spec_unit
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
	subq	$64, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%eax, -40(%rbp)
	callq	gimp_param_unit_get_type@PLT
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	-40(%rbp), %r8d
	movq	%rax, %rdi
	callq	g_param_spec_internal@PLT
	movq	g_param_spec_types@GOTPCREL(%rip), %rcx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rcx), %rcx
	movq	24(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movl	$76, %r8d
	movl	%r8d, %esi
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -56(%rbp)
	movl	-36(%rbp), %r10d
	movq	-56(%rbp), %rax
	movl	%r10d, 80(%rax)
	cmpl	$0, -28(%rbp)
	cmovnel	%r9d, %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, 72(%rax)
	movq	-56(%rbp), %rax
	movl	$65535, 76(%rax)        # imm = 0xFFFF
	movl	-32(%rbp), %r8d
	movq	-48(%rbp), %rax
	movl	%r8d, 88(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_param_spec_unit, .Lfunc_end20-gimp_param_spec_unit
	.cfi_endproc

	.globl	gimp_pixels_to_units
	.align	16, 0x90
	.type	gimp_pixels_to_units,@function
gimp_pixels_to_units:                   # @gimp_pixels_to_units
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
	movsd	%xmm0, -16(%rbp)
	movl	%edi, -20(%rbp)
	movsd	%xmm1, -32(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB21_2
# BB#1:                                 # %if.then
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB21_3
.LBB21_2:                               # %if.end
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-20(%rbp), %edi
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	callq	gimp_unit_get_factor@PLT
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	divsd	-32(%rbp), %xmm1
	movsd	%xmm1, -8(%rbp)
.LBB21_3:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_pixels_to_units, .Lfunc_end21-gimp_pixels_to_units
	.cfi_endproc

	.globl	gimp_units_to_pixels
	.align	16, 0x90
	.type	gimp_units_to_pixels,@function
gimp_units_to_pixels:                   # @gimp_units_to_pixels
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
	subq	$48, %rsp
	movsd	%xmm0, -16(%rbp)
	movl	%edi, -20(%rbp)
	movsd	%xmm1, -32(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB22_2
# BB#1:                                 # %if.then
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB22_3
.LBB22_2:                               # %if.end
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movl	-20(%rbp), %edi
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	callq	gimp_unit_get_factor@PLT
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -8(%rbp)
.LBB22_3:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_units_to_pixels, .Lfunc_end22-gimp_units_to_pixels
	.cfi_endproc

	.globl	gimp_units_to_points
	.align	16, 0x90
	.type	gimp_units_to_points,@function
gimp_units_to_points:                   # @gimp_units_to_points
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
	subq	$64, %rsp
	movsd	%xmm0, -16(%rbp)
	movl	%edi, -20(%rbp)
	movsd	%xmm1, -32(%rbp)
	cmpl	$3, -20(%rbp)
	jne	.LBB23_2
# BB#1:                                 # %if.then
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB23_5
.LBB23_2:                               # %if.end
	cmpl	$0, -20(%rbp)
	jne	.LBB23_4
# BB#3:                                 # %if.then.2
	movl	$3, %edi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	callq	gimp_unit_get_factor@PLT
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	divsd	-32(%rbp), %xmm1
	movsd	%xmm1, -8(%rbp)
	jmp	.LBB23_5
.LBB23_4:                               # %if.end.3
	movl	$3, %edi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	gimp_unit_get_factor@PLT
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movl	-20(%rbp), %edi
	movsd	%xmm1, -56(%rbp)        # 8-byte Spill
	callq	gimp_unit_get_factor@PLT
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -8(%rbp)
.LBB23_5:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_units_to_points, .Lfunc_end23-gimp_units_to_points
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_unit_value_validate,@function
gimp_param_unit_value_validate:         # @gimp_param_unit_value_validate
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
	subq	$64, %rsp
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_param_unit_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 88(%rax)
	je	.LBB24_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$65536, 8(%rax)         # imm = 0x10000
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 8(%rax)
	jmp	.LBB24_10
.LBB24_3:                               # %if.else
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	callq	gimp_unit_get_number_of_units@PLT
	subl	$1, %eax
	movl	-52(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB24_5
# BB#4:                                 # %cond.true
	callq	gimp_unit_get_number_of_units@PLT
	subl	$1, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB24_9
.LBB24_5:                               # %cond.false
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	72(%rax), %ecx
	jge	.LBB24_7
# BB#6:                                 # %cond.true.24
	movq	-24(%rbp), %rax
	movl	72(%rax), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	jmp	.LBB24_8
.LBB24_7:                               # %cond.false.26
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
.LBB24_8:                               # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB24_9:                               # %cond.end.30
	movl	-56(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, 8(%rcx)
.LBB24_10:                              # %if.end
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	cmpl	-36(%rbp), %ecx
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_param_unit_value_validate, .Lfunc_end24-gimp_param_unit_value_validate
	.cfi_endproc

	.type	gimp_unit_get_type.unit_type,@object # @gimp_unit_get_type.unit_type
	.local	gimp_unit_get_type.unit_type
	.comm	gimp_unit_get_type.unit_type,8,8
	.type	gimp_unit_get_type.type_info,@object # @gimp_unit_get_type.type_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_unit_get_type.type_info:
	.zero	72
	.size	gimp_unit_get_type.type_info, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpUnit"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpBase"
	.size	.L.str.1, 12

	.type	.L__func__.gimp_unit_get_number_of_units,@object # @__func__.gimp_unit_get_number_of_units
.L__func__.gimp_unit_get_number_of_units:
	.asciz	"gimp_unit_get_number_of_units"
	.size	.L__func__.gimp_unit_get_number_of_units, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"_gimp_unit_vtable.unit_get_number_of_units != NULL"
	.size	.L.str.2, 51

	.type	.L__func__.gimp_unit_get_number_of_built_in_units,@object # @__func__.gimp_unit_get_number_of_built_in_units
.L__func__.gimp_unit_get_number_of_built_in_units:
	.asciz	"gimp_unit_get_number_of_built_in_units"
	.size	.L__func__.gimp_unit_get_number_of_built_in_units, 39

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"_gimp_unit_vtable.unit_get_number_of_built_in_units != NULL"
	.size	.L.str.3, 60

	.type	.L__func__.gimp_unit_new,@object # @__func__.gimp_unit_new
.L__func__.gimp_unit_new:
	.asciz	"gimp_unit_new"
	.size	.L__func__.gimp_unit_new, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"_gimp_unit_vtable.unit_new != NULL"
	.size	.L.str.4, 35

	.type	.L__func__.gimp_unit_get_deletion_flag,@object # @__func__.gimp_unit_get_deletion_flag
.L__func__.gimp_unit_get_deletion_flag:
	.asciz	"gimp_unit_get_deletion_flag"
	.size	.L__func__.gimp_unit_get_deletion_flag, 28

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"_gimp_unit_vtable.unit_get_deletion_flag != NULL"
	.size	.L.str.5, 49

	.type	.L__func__.gimp_unit_set_deletion_flag,@object # @__func__.gimp_unit_set_deletion_flag
.L__func__.gimp_unit_set_deletion_flag:
	.asciz	"gimp_unit_set_deletion_flag"
	.size	.L__func__.gimp_unit_set_deletion_flag, 28

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"_gimp_unit_vtable.unit_set_deletion_flag != NULL"
	.size	.L.str.6, 49

	.type	.L__func__.gimp_unit_get_factor,@object # @__func__.gimp_unit_get_factor
.L__func__.gimp_unit_get_factor:
	.asciz	"gimp_unit_get_factor"
	.size	.L__func__.gimp_unit_get_factor, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"_gimp_unit_vtable.unit_get_factor != NULL"
	.size	.L.str.7, 42

	.type	.L__func__.gimp_unit_get_digits,@object # @__func__.gimp_unit_get_digits
.L__func__.gimp_unit_get_digits:
	.asciz	"gimp_unit_get_digits"
	.size	.L__func__.gimp_unit_get_digits, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"_gimp_unit_vtable.unit_get_digits != NULL"
	.size	.L.str.8, 42

	.type	.L__func__.gimp_unit_get_identifier,@object # @__func__.gimp_unit_get_identifier
.L__func__.gimp_unit_get_identifier:
	.asciz	"gimp_unit_get_identifier"
	.size	.L__func__.gimp_unit_get_identifier, 25

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"_gimp_unit_vtable.unit_get_identifier != NULL"
	.size	.L.str.9, 46

	.type	.L__func__.gimp_unit_get_symbol,@object # @__func__.gimp_unit_get_symbol
.L__func__.gimp_unit_get_symbol:
	.asciz	"gimp_unit_get_symbol"
	.size	.L__func__.gimp_unit_get_symbol, 21

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"_gimp_unit_vtable.unit_get_symbol != NULL"
	.size	.L.str.10, 42

	.type	.L__func__.gimp_unit_get_abbreviation,@object # @__func__.gimp_unit_get_abbreviation
.L__func__.gimp_unit_get_abbreviation:
	.asciz	"gimp_unit_get_abbreviation"
	.size	.L__func__.gimp_unit_get_abbreviation, 27

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_gimp_unit_vtable.unit_get_abbreviation != NULL"
	.size	.L.str.11, 48

	.type	.L__func__.gimp_unit_get_singular,@object # @__func__.gimp_unit_get_singular
.L__func__.gimp_unit_get_singular:
	.asciz	"gimp_unit_get_singular"
	.size	.L__func__.gimp_unit_get_singular, 23

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"_gimp_unit_vtable.unit_get_singular != NULL"
	.size	.L.str.12, 44

	.type	.L__func__.gimp_unit_get_plural,@object # @__func__.gimp_unit_get_plural
.L__func__.gimp_unit_get_plural:
	.asciz	"gimp_unit_get_plural"
	.size	.L__func__.gimp_unit_get_plural, 21

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"_gimp_unit_vtable.unit_get_plural != NULL"
	.size	.L.str.13, 42

	.type	.L__func__.gimp_unit_format_string,@object # @__func__.gimp_unit_format_string
.L__func__.gimp_unit_format_string:
	.asciz	"gimp_unit_format_string"
	.size	.L__func__.gimp_unit_format_string, 24

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"format != NULL"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"unit == GIMP_UNIT_PERCENT || (unit >= GIMP_UNIT_PIXEL && unit < gimp_unit_get_number_of_units ())"
	.size	.L.str.15, 98

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%s: unit-menu-format string ended within %%-sequence"
	.size	.L.str.16, 53

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%f"
	.size	.L.str.17, 3

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%s"
	.size	.L.str.18, 3

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%s: unit-menu-format contains unknown format sequence '%%%c'"
	.size	.L.str.19, 61

	.type	gimp_param_unit_get_type.spec_type,@object # @gimp_param_unit_get_type.spec_type
	.local	gimp_param_unit_get_type.spec_type
	.comm	gimp_param_unit_get_type.spec_type,8,8
	.type	gimp_param_unit_get_type.type_info,@object # @gimp_param_unit_get_type.type_info
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
gimp_param_unit_get_type.type_info:
	.short	80                      # 0x50
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_param_unit_class_init
	.quad	0
	.quad	0
	.short	96                      # 0x60
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.size	gimp_param_unit_get_type.type_info, 72

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"GimpParamUnit"
	.size	.L.str.20, 14

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Can't convert string '%s' to GimpUnit."
	.size	.L.str.21, 39


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
