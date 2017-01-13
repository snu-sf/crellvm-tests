	.text
	.file	"gimpunit.bc"
	.globl	_gimp_unit_get_number_of_units
	.align	16, 0x90
	.type	_gimp_unit_get_number_of_units,@function
_gimp_unit_get_number_of_units:         # @_gimp_unit_get_number_of_units
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	328(%rdi), %eax
	addl	$5, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_gimp_unit_get_number_of_units, .Lfunc_end0-_gimp_unit_get_number_of_units
	.cfi_endproc

	.globl	_gimp_unit_get_number_of_built_in_units
	.align	16, 0x90
	.type	_gimp_unit_get_number_of_built_in_units,@function
_gimp_unit_get_number_of_built_in_units: # @_gimp_unit_get_number_of_built_in_units
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
	movl	$5, %eax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_gimp_unit_get_number_of_built_in_units, .Lfunc_end1-_gimp_unit_get_number_of_built_in_units
	.cfi_endproc

	.globl	_gimp_unit_new
	.align	16, 0x90
	.type	_gimp_unit_new,@function
_gimp_unit_new:                         # @_gimp_unit_new
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
	movq	16(%rbp), %rax
	movl	$64, %r10d
	movl	%r10d, %r11d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	%r11, %rdi
	callq	g_slice_alloc0
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	$1, (%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movl	-28(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-72(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-40(%rbp), %rdi
	callq	g_strdup
	movq	-72(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-48(%rbp), %rdi
	callq	g_strdup
	movq	-72(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-56(%rbp), %rdi
	callq	g_strdup
	movq	-72(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-64(%rbp), %rdi
	callq	g_strdup
	movq	-72(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-8(%rbp), %rax
	movq	320(%rax), %rdi
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	-8(%rbp), %rcx
	movq	%rax, 320(%rcx)
	movq	-8(%rbp), %rax
	movl	328(%rax), %edx
	addl	$1, %edx
	movl	%edx, 328(%rax)
	movq	-8(%rbp), %rax
	movl	328(%rax), %edx
	addl	$5, %edx
	subl	$1, %edx
	movl	%edx, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_gimp_unit_new, .Lfunc_end2-_gimp_unit_new
	.cfi_endproc

	.globl	_gimp_unit_get_deletion_flag
	.align	16, 0x90
	.type	_gimp_unit_get_deletion_flag,@function
_gimp_unit_get_deletion_flag:           # @_gimp_unit_get_deletion_flag
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
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	328(%rcx), %edx
	addl	$5, %edx
	cmpl	%edx, %eax
	jae	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__._gimp_unit_get_deletion_flag, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_8
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	cmpl	$5, -20(%rbp)
	jae	.LBB3_7
# BB#6:                                 # %if.then.2
	movl	$0, -4(%rbp)
	jmp	.LBB3_8
.LBB3_7:                                # %if.end.3
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	_gimp_unit_get_user_unit
	movl	(%rax), %esi
	movl	%esi, -4(%rbp)
.LBB3_8:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_gimp_unit_get_deletion_flag, .Lfunc_end3-_gimp_unit_get_deletion_flag
	.cfi_endproc

	.align	16, 0x90
	.type	_gimp_unit_get_user_unit,@function
_gimp_unit_get_user_unit:               # @_gimp_unit_get_user_unit
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	320(%rdi), %rdi
	movl	-12(%rbp), %esi
	subl	$5, %esi
	callq	g_list_nth_data
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	_gimp_unit_get_user_unit, .Lfunc_end4-_gimp_unit_get_user_unit
	.cfi_endproc

	.globl	_gimp_unit_set_deletion_flag
	.align	16, 0x90
	.type	_gimp_unit_set_deletion_flag,@function
_gimp_unit_set_deletion_flag:           # @_gimp_unit_set_deletion_flag
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	cmpl	$5, -12(%rbp)
	jb	.LBB5_4
# BB#2:                                 # %land.lhs.true
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	328(%rcx), %edx
	addl	$5, %edx
	cmpl	%edx, %eax
	jae	.LBB5_4
# BB#3:                                 # %if.then
	jmp	.LBB5_5
.LBB5_4:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__._gimp_unit_set_deletion_flag, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_7
.LBB5_5:                                # %if.end
	jmp	.LBB5_6
.LBB5_6:                                # %do.end
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -16(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	_gimp_unit_get_user_unit
	movl	-20(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, (%rax)
.LBB5_7:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	_gimp_unit_set_deletion_flag, .Lfunc_end5-_gimp_unit_set_deletion_flag
	.cfi_endproc

	.globl	_gimp_unit_get_factor
	.align	16, 0x90
	.type	_gimp_unit_get_factor,@function
_gimp_unit_get_factor:                  # @_gimp_unit_get_factor
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	328(%rcx), %edx
	addl	$5, %edx
	cmpl	%edx, %eax
	jae	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__._gimp_unit_get_factor, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movsd	gimp_unit_defs+72, %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB6_8
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	cmpl	$5, -20(%rbp)
	jae	.LBB6_7
# BB#6:                                 # %if.then.2
	movabsq	$gimp_unit_defs, %rax
	movl	-20(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$6, %rdx
	addq	%rdx, %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB6_8
.LBB6_7:                                # %if.end.3
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	_gimp_unit_get_user_unit
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB6_8:                                # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	_gimp_unit_get_factor, .Lfunc_end6-_gimp_unit_get_factor
	.cfi_endproc

	.globl	_gimp_unit_get_digits
	.align	16, 0x90
	.type	_gimp_unit_get_digits,@function
_gimp_unit_get_digits:                  # @_gimp_unit_get_digits
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	328(%rcx), %edx
	addl	$5, %edx
	cmpl	%edx, %eax
	jae	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__._gimp_unit_get_digits, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	gimp_unit_defs+80, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB7_8
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	cmpl	$5, -20(%rbp)
	jae	.LBB7_7
# BB#6:                                 # %if.then.2
	movabsq	$gimp_unit_defs, %rax
	movl	-20(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$6, %rdx
	addq	%rdx, %rax
	movl	16(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB7_8
.LBB7_7:                                # %if.end.3
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	_gimp_unit_get_user_unit
	movl	16(%rax), %esi
	movl	%esi, -4(%rbp)
.LBB7_8:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	_gimp_unit_get_digits, .Lfunc_end7-_gimp_unit_get_digits
	.cfi_endproc

	.globl	_gimp_unit_get_identifier
	.align	16, 0x90
	.type	_gimp_unit_get_identifier,@function
_gimp_unit_get_identifier:              # @_gimp_unit_get_identifier
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	328(%rcx), %edx
	addl	$5, %edx
	cmpl	%edx, %eax
	jb	.LBB8_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$65536, -20(%rbp)       # imm = 0x10000
	jne	.LBB8_4
.LBB8_3:                                # %if.then
	jmp	.LBB8_5
.LBB8_4:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__._gimp_unit_get_identifier, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	gimp_unit_defs+88, %rdx
	movq	%rdx, -8(%rbp)
	jmp	.LBB8_11
.LBB8_5:                                # %if.end
	jmp	.LBB8_6
.LBB8_6:                                # %do.end
	cmpl	$5, -20(%rbp)
	jae	.LBB8_8
# BB#7:                                 # %if.then.3
	movabsq	$gimp_unit_defs, %rax
	movl	-20(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$6, %rdx
	addq	%rdx, %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_11
.LBB8_8:                                # %if.end.4
	cmpl	$65536, -20(%rbp)       # imm = 0x10000
	jne	.LBB8_10
# BB#9:                                 # %if.then.6
	movq	gimp_unit_percent+24, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_11
.LBB8_10:                               # %if.end.7
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	_gimp_unit_get_user_unit
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB8_11:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	_gimp_unit_get_identifier, .Lfunc_end8-_gimp_unit_get_identifier
	.cfi_endproc

	.globl	_gimp_unit_get_symbol
	.align	16, 0x90
	.type	_gimp_unit_get_symbol,@function
_gimp_unit_get_symbol:                  # @_gimp_unit_get_symbol
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	328(%rcx), %edx
	addl	$5, %edx
	cmpl	%edx, %eax
	jb	.LBB9_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$65536, -20(%rbp)       # imm = 0x10000
	jne	.LBB9_4
.LBB9_3:                                # %if.then
	jmp	.LBB9_5
.LBB9_4:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__._gimp_unit_get_symbol, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	gimp_unit_defs+96, %rdx
	movq	%rdx, -8(%rbp)
	jmp	.LBB9_11
.LBB9_5:                                # %if.end
	jmp	.LBB9_6
.LBB9_6:                                # %do.end
	cmpl	$5, -20(%rbp)
	jae	.LBB9_8
# BB#7:                                 # %if.then.3
	movabsq	$gimp_unit_defs, %rax
	movl	-20(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$6, %rdx
	addq	%rdx, %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB9_11
.LBB9_8:                                # %if.end.4
	cmpl	$65536, -20(%rbp)       # imm = 0x10000
	jne	.LBB9_10
# BB#9:                                 # %if.then.6
	movq	gimp_unit_percent+32, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB9_11
.LBB9_10:                               # %if.end.7
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	_gimp_unit_get_user_unit
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB9_11:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	_gimp_unit_get_symbol, .Lfunc_end9-_gimp_unit_get_symbol
	.cfi_endproc

	.globl	_gimp_unit_get_abbreviation
	.align	16, 0x90
	.type	_gimp_unit_get_abbreviation,@function
_gimp_unit_get_abbreviation:            # @_gimp_unit_get_abbreviation
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	328(%rcx), %edx
	addl	$5, %edx
	cmpl	%edx, %eax
	jb	.LBB10_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$65536, -20(%rbp)       # imm = 0x10000
	jne	.LBB10_4
.LBB10_3:                               # %if.then
	jmp	.LBB10_5
.LBB10_4:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__._gimp_unit_get_abbreviation, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	gimp_unit_defs+104, %rdx
	movq	%rdx, -8(%rbp)
	jmp	.LBB10_11
.LBB10_5:                               # %if.end
	jmp	.LBB10_6
.LBB10_6:                               # %do.end
	cmpl	$5, -20(%rbp)
	jae	.LBB10_8
# BB#7:                                 # %if.then.3
	movabsq	$gimp_unit_defs, %rax
	movl	-20(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$6, %rdx
	addq	%rdx, %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_11
.LBB10_8:                               # %if.end.4
	cmpl	$65536, -20(%rbp)       # imm = 0x10000
	jne	.LBB10_10
# BB#9:                                 # %if.then.6
	movq	gimp_unit_percent+40, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_11
.LBB10_10:                              # %if.end.7
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	_gimp_unit_get_user_unit
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB10_11:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	_gimp_unit_get_abbreviation, .Lfunc_end10-_gimp_unit_get_abbreviation
	.cfi_endproc

	.globl	_gimp_unit_get_singular
	.align	16, 0x90
	.type	_gimp_unit_get_singular,@function
_gimp_unit_get_singular:                # @_gimp_unit_get_singular
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	328(%rcx), %edx
	addl	$5, %edx
	cmpl	%edx, %eax
	jb	.LBB11_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$65536, -20(%rbp)       # imm = 0x10000
	jne	.LBB11_4
.LBB11_3:                               # %if.then
	jmp	.LBB11_5
.LBB11_4:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__._gimp_unit_get_singular, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	gimp_unit_defs+112, %rdx
	movq	%rdx, -8(%rbp)
	jmp	.LBB11_11
.LBB11_5:                               # %if.end
	jmp	.LBB11_6
.LBB11_6:                               # %do.end
	cmpl	$5, -20(%rbp)
	jae	.LBB11_8
# BB#7:                                 # %if.then.3
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_unit_defs, %rcx
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	48(%rcx), %rdx
	callq	g_dpgettext2
	movq	%rax, -8(%rbp)
	jmp	.LBB11_11
.LBB11_8:                               # %if.end.4
	cmpl	$65536, -20(%rbp)       # imm = 0x10000
	jne	.LBB11_10
# BB#9:                                 # %if.then.6
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.4, %rsi
	movq	gimp_unit_percent+48, %rdx
	callq	g_dpgettext2
	movq	%rax, -8(%rbp)
	jmp	.LBB11_11
.LBB11_10:                              # %if.end.8
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	_gimp_unit_get_user_unit
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB11_11:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	_gimp_unit_get_singular, .Lfunc_end11-_gimp_unit_get_singular
	.cfi_endproc

	.globl	_gimp_unit_get_plural
	.align	16, 0x90
	.type	_gimp_unit_get_plural,@function
_gimp_unit_get_plural:                  # @_gimp_unit_get_plural
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	328(%rcx), %edx
	addl	$5, %edx
	cmpl	%edx, %eax
	jb	.LBB12_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$65536, -20(%rbp)       # imm = 0x10000
	jne	.LBB12_4
.LBB12_3:                               # %if.then
	jmp	.LBB12_5
.LBB12_4:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__._gimp_unit_get_plural, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	gimp_unit_defs+120, %rdx
	movq	%rdx, -8(%rbp)
	jmp	.LBB12_11
.LBB12_5:                               # %if.end
	jmp	.LBB12_6
.LBB12_6:                               # %do.end
	cmpl	$5, -20(%rbp)
	jae	.LBB12_8
# BB#7:                                 # %if.then.3
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.5, %rsi
	movabsq	$gimp_unit_defs, %rcx
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	56(%rcx), %rdx
	callq	g_dpgettext2
	movq	%rax, -8(%rbp)
	jmp	.LBB12_11
.LBB12_8:                               # %if.end.4
	cmpl	$65536, -20(%rbp)       # imm = 0x10000
	jne	.LBB12_10
# BB#9:                                 # %if.then.6
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.5, %rsi
	movq	gimp_unit_percent+56, %rdx
	callq	g_dpgettext2
	movq	%rax, -8(%rbp)
	jmp	.LBB12_11
.LBB12_10:                              # %if.end.8
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	_gimp_unit_get_user_unit
	movq	56(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB12_11:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	_gimp_unit_get_plural, .Lfunc_end12-_gimp_unit_get_plural
	.cfi_endproc

	.globl	gimp_user_units_free
	.align	16, 0x90
	.type	gimp_user_units_free,@function
gimp_user_units_free:                   # @gimp_user_units_free
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	320(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB13_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	g_free
# BB#3:                                 # %do.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	$64, %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#4:                                 # %do.end
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_5
.LBB13_5:                               # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB13_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB13_8
.LBB13_7:                               # %cond.false
                                        #   in Loop: Header=BB13_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB13_8
.LBB13_8:                               # %cond.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	jmp	.LBB13_1
.LBB13_9:                               # %for.end
	movq	-8(%rbp), %rax
	movq	320(%rax), %rdi
	callq	g_list_free
	movq	-8(%rbp), %rax
	movq	$0, 320(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 328(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_user_units_free, .Lfunc_end13-gimp_user_units_free
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__._gimp_unit_get_deletion_flag,@object # @__func__._gimp_unit_get_deletion_flag
.L__func__._gimp_unit_get_deletion_flag:
	.asciz	"_gimp_unit_get_deletion_flag"
	.size	.L__func__._gimp_unit_get_deletion_flag, 29

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"unit < (GIMP_UNIT_END + gimp->n_user_units)"
	.size	.L.str.1, 44

	.type	.L__func__._gimp_unit_set_deletion_flag,@object # @__func__._gimp_unit_set_deletion_flag
.L__func__._gimp_unit_set_deletion_flag:
	.asciz	"_gimp_unit_set_deletion_flag"
	.size	.L__func__._gimp_unit_set_deletion_flag, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"(unit >= GIMP_UNIT_END) && (unit < (GIMP_UNIT_END + gimp->n_user_units))"
	.size	.L.str.2, 73

	.type	.L__func__._gimp_unit_get_factor,@object # @__func__._gimp_unit_get_factor
.L__func__._gimp_unit_get_factor:
	.asciz	"_gimp_unit_get_factor"
	.size	.L__func__._gimp_unit_get_factor, 22

	.type	gimp_unit_defs,@object  # @gimp_unit_defs
	.section	.rodata,"a",@progbits
	.align	16
gimp_unit_defs:
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # double 0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.6
	.long	0                       # 0x0
	.zero	4
	.quad	4607182418800017408     # double 1
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.9
	.long	0                       # 0x0
	.zero	4
	.quad	4627842682090579558     # double 25.399999999999999
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.13
	.long	0                       # 0x0
	.zero	4
	.quad	4634766966517661696     # double 72
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.16
	.long	0                       # 0x0
	.zero	4
	.quad	4618441417868443648     # double 6
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.19
	.size	gimp_unit_defs, 320

	.type	.L__func__._gimp_unit_get_digits,@object # @__func__._gimp_unit_get_digits
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__._gimp_unit_get_digits:
	.asciz	"_gimp_unit_get_digits"
	.size	.L__func__._gimp_unit_get_digits, 22

	.type	.L__func__._gimp_unit_get_identifier,@object # @__func__._gimp_unit_get_identifier
.L__func__._gimp_unit_get_identifier:
	.asciz	"_gimp_unit_get_identifier"
	.size	.L__func__._gimp_unit_get_identifier, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"(unit < (GIMP_UNIT_END + gimp->n_user_units)) || (unit == GIMP_UNIT_PERCENT)"
	.size	.L.str.3, 77

	.type	gimp_unit_percent,@object # @gimp_unit_percent
	.section	.rodata,"a",@progbits
	.align	8
gimp_unit_percent:
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # double 0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.23
	.quad	.L.str.22
	.quad	.L.str.22
	.size	gimp_unit_percent, 64

	.type	.L__func__._gimp_unit_get_symbol,@object # @__func__._gimp_unit_get_symbol
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__._gimp_unit_get_symbol:
	.asciz	"_gimp_unit_get_symbol"
	.size	.L__func__._gimp_unit_get_symbol, 22

	.type	.L__func__._gimp_unit_get_abbreviation,@object # @__func__._gimp_unit_get_abbreviation
.L__func__._gimp_unit_get_abbreviation:
	.asciz	"_gimp_unit_get_abbreviation"
	.size	.L__func__._gimp_unit_get_abbreviation, 28

	.type	.L__func__._gimp_unit_get_singular,@object # @__func__._gimp_unit_get_singular
.L__func__._gimp_unit_get_singular:
	.asciz	"_gimp_unit_get_singular"
	.size	.L__func__._gimp_unit_get_singular, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"unit-singular"
	.size	.L.str.4, 14

	.type	.L__func__._gimp_unit_get_plural,@object # @__func__._gimp_unit_get_plural
.L__func__._gimp_unit_get_plural:
	.asciz	"_gimp_unit_get_plural"
	.size	.L__func__._gimp_unit_get_plural, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"unit-plural"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"pixels"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"px"
	.size	.L.str.7, 3

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"pixel"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"inches"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"''"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"in"
	.size	.L.str.11, 3

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"inch"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"millimeters"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"mm"
	.size	.L.str.14, 3

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"millimeter"
	.size	.L.str.15, 11

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"points"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"pt"
	.size	.L.str.17, 3

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"point"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"picas"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"pc"
	.size	.L.str.20, 3

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"pica"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"percent"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%"
	.size	.L.str.23, 2


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
