	.text
	.file	"print-settings.bc"
	.globl	print_settings_load
	.align	16, 0x90
	.type	print_settings_load,@function
print_settings_load:                    # @print_settings_load
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
	movq	-16(%rbp), %rdi
	movl	(%rdi), %edi
	callq	print_settings_key_file_from_parasite
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	callq	print_settings_key_file_from_resource_file
	movq	%rax, -24(%rbp)
.LBB0_2:                                # %if.end
	cmpq	$0, -24(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	print_settings_load_from_key_file
	movq	-24(%rbp), %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	g_key_file_free
	movl	$1, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:                                # %if.end.5
	movl	$0, -4(%rbp)
.LBB0_5:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	print_settings_load, .Lfunc_end0-print_settings_load
	.cfi_endproc

	.align	16, 0x90
	.type	print_settings_key_file_from_parasite,@function
print_settings_key_file_from_parasite:  # @print_settings_key_file_from_parasite
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
	movabsq	$.L.str.9, %rsi
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	print_utils_key_file_load_from_parasite
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB1_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	print_settings_check_version
	cmpl	$0, %eax
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	g_key_file_free
	movq	$0, -8(%rbp)
	jmp	.LBB1_4
.LBB1_3:                                # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB1_4:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	print_settings_key_file_from_parasite, .Lfunc_end1-print_settings_key_file_from_parasite
	.cfi_endproc

	.align	16, 0x90
	.type	print_settings_key_file_from_resource_file,@function
print_settings_key_file_from_resource_file: # @print_settings_key_file_from_resource_file
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
	movabsq	$.L.str.9, %rdi
	callq	print_utils_key_file_load_from_rcfile
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB2_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	print_settings_check_version
	cmpl	$0, %eax
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	g_key_file_free
	movq	$0, -8(%rbp)
	jmp	.LBB2_4
.LBB2_3:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB2_4:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	print_settings_key_file_from_resource_file, .Lfunc_end2-print_settings_key_file_from_resource_file
	.cfi_endproc

	.align	16, 0x90
	.type	print_settings_load_from_key_file,@function
print_settings_load_from_key_file:      # @print_settings_load_from_key_file
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_print_operation_get_print_settings
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	callq	gtk_print_settings_new
	movq	%rax, -40(%rbp)
.LBB3_2:                                # %if.end
	movabsq	$.L.str.9, %rsi
	leaq	-56(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	g_key_file_get_keys
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB3_4
# BB#3:                                 # %if.then.5
	movl	$0, -4(%rbp)
	jmp	.LBB3_25
.LBB3_4:                                # %if.end.6
	movl	$0, -60(%rbp)
.LBB3_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-60(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jae	.LBB3_10
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB3_5 Depth=1
	movabsq	$.L.str.9, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movslq	-60(%rbp), %rdx
	movq	-48(%rbp), %r8
	movq	(%r8,%rdx,8), %rdx
	callq	g_key_file_get_value
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB3_8
# BB#7:                                 # %if.then.10
                                        #   in Loop: Header=BB3_5 Depth=1
	movq	-40(%rbp), %rdi
	movslq	-60(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	movq	-72(%rbp), %rdx
	callq	gtk_print_settings_set
	movq	-72(%rbp), %rdi
	callq	g_free
.LBB3_8:                                # %if.end.13
                                        #   in Loop: Header=BB3_5 Depth=1
	jmp	.LBB3_9
.LBB3_9:                                # %for.inc
                                        #   in Loop: Header=BB3_5 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB3_5
.LBB3_10:                               # %for.end
	movq	-48(%rbp), %rdi
	callq	g_strfreev
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.1, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	g_key_file_has_key
	cmpl	$0, %eax
	je	.LBB3_12
# BB#11:                                # %if.then.16
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.1, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	g_key_file_get_integer
	movq	-16(%rbp), %rcx
	movl	%eax, 8(%rcx)
.LBB3_12:                               # %if.end.18
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.2, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	g_key_file_has_key
	cmpl	$0, %eax
	je	.LBB3_15
# BB#13:                                # %land.lhs.true
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.3, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	g_key_file_has_key
	cmpl	$0, %eax
	je	.LBB3_15
# BB#14:                                # %if.then.23
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.2, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	g_key_file_get_double
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.3, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	movq	-24(%rbp), %rdi
	callq	g_key_file_get_double
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 24(%rcx)
.LBB3_15:                               # %if.end.26
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.4, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	g_key_file_has_key
	cmpl	$0, %eax
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.29
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.5, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	g_key_file_has_key
	cmpl	$0, %eax
	je	.LBB3_18
# BB#17:                                # %if.then.32
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.4, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	g_key_file_get_double
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.5, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movsd	%xmm0, 40(%rdi)
	movq	-24(%rbp), %rdi
	callq	g_key_file_get_double
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 48(%rcx)
.LBB3_18:                               # %if.end.35
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.6, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	g_key_file_has_key
	cmpl	$0, %eax
	je	.LBB3_20
# BB#19:                                # %if.then.38
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.6, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	g_key_file_get_integer
	movq	-16(%rbp), %rcx
	movl	%eax, 56(%rcx)
.LBB3_20:                               # %if.end.40
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.7, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	g_key_file_has_key
	cmpl	$0, %eax
	je	.LBB3_22
# BB#21:                                # %if.then.43
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.7, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	g_key_file_get_boolean
	movq	-16(%rbp), %rcx
	movl	%eax, 60(%rcx)
.LBB3_22:                               # %if.end.45
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.8, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	g_key_file_has_key
	cmpl	$0, %eax
	je	.LBB3_24
# BB#23:                                # %if.then.48
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.8, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	g_key_file_get_boolean
	movq	-16(%rbp), %rcx
	movl	%eax, 64(%rcx)
.LBB3_24:                               # %if.end.50
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gtk_print_operation_set_print_settings
	movl	$1, -4(%rbp)
.LBB3_25:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	print_settings_load_from_key_file, .Lfunc_end3-print_settings_load_from_key_file
	.cfi_endproc

	.globl	print_settings_save
	.align	16, 0x90
	.type	print_settings_save,@function
print_settings_save:                    # @print_settings_save
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	print_settings_key_file_from_settings
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_image_is_valid
	cmpl	$0, %eax
	je	.LBB4_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.1, %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	callq	g_key_file_set_integer
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.2, %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_key_file_set_double
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.3, %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_key_file_set_double
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.4, %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_key_file_set_double
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.5, %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_key_file_set_double
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.6, %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	56(%rax), %ecx
	callq	g_key_file_set_integer
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.7, %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	60(%rax), %ecx
	callq	g_key_file_set_boolean
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.8, %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	64(%rax), %ecx
	callq	g_key_file_set_boolean
	movabsq	$.L.str.9, %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	callq	print_utils_key_file_save_as_parasite
.LBB4_2:                                # %if.end
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.2, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	callq	g_key_file_remove_key
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.3, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-16(%rbp), %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	g_key_file_remove_key
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.4, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-16(%rbp), %rdi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	g_key_file_remove_key
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.5, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-16(%rbp), %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	g_key_file_remove_key
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-16(%rbp), %rdi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	callq	g_key_file_remove_key
	movabsq	$.L.str.9, %rsi
	movq	-16(%rbp), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	print_utils_key_file_save_as_rcfile
	movq	-16(%rbp), %rdi
	callq	g_key_file_free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	print_settings_save, .Lfunc_end4-print_settings_save
	.cfi_endproc

	.align	16, 0x90
	.type	print_settings_key_file_from_settings,@function
print_settings_key_file_from_settings:  # @print_settings_key_file_from_settings
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
	movq	-8(%rbp), %rdi
	movq	72(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	callq	g_key_file_new
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rdx
	xorl	%ecx, %ecx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_key_file_set_integer
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.13, %rdx
	movl	$4, %ecx
	movq	-32(%rbp), %rdi
	callq	g_key_file_set_integer
	movq	-16(%rbp), %rdi
	callq	gtk_print_operation_get_print_settings
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movabsq	$print_settings_add_to_key_file, %rsi
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	callq	gtk_print_settings_foreach
.LBB5_2:                                # %if.end
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	print_settings_key_file_from_settings, .Lfunc_end5-print_settings_key_file_from_settings
	.cfi_endproc

	.align	16, 0x90
	.type	print_settings_add_to_key_file,@function
print_settings_add_to_key_file:         # @print_settings_add_to_key_file
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
	movabsq	$.L.str.9, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rax, %rsi
	callq	g_key_file_set_value
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	print_settings_add_to_key_file, .Lfunc_end6-print_settings_add_to_key_file
	.cfi_endproc

	.align	16, 0x90
	.type	print_settings_check_version,@function
print_settings_check_version:           # @print_settings_check_version
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
	movabsq	$.L.str.11, %rsi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_key_file_has_group
	cmpl	$0, %eax
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB7_7
.LBB7_2:                                # %if.end
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	callq	g_key_file_get_integer
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB7_4
# BB#3:                                 # %if.then.2
	movl	$0, -4(%rbp)
	jmp	.LBB7_7
.LBB7_4:                                # %if.end.3
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.13, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	callq	g_key_file_get_integer
	movl	%eax, -24(%rbp)
	cmpl	$4, -24(%rbp)
	je	.LBB7_6
# BB#5:                                 # %if.then.6
	movl	$0, -4(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.end.7
	movl	$1, -4(%rbp)
.LBB7_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	print_settings_check_version, .Lfunc_end7-print_settings_check_version
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"image-setup"
	.size	.L.str, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"unit"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"x-resolution"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"y-resolution"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"x-offset"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"y-offset"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"center-mode"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"use-full-page"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"crop-marks"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"print-settings"
	.size	.L.str.9, 15

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"n-copies"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"meta"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"major-version"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"minor-version"
	.size	.L.str.13, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
