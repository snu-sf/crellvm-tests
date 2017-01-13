	.text
	.file	"gimpparasite.bc"
	.globl	gimp_parasite_get_type
	.align	16, 0x90
	.type	gimp_parasite_get_type,@function
gimp_parasite_get_type:                 # @gimp_parasite_get_type
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
	cmpq	$0, gimp_parasite_get_type.type(%rip)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	leaq	.L.str(%rip), %rdi
	movq	gimp_parasite_copy@GOTPCREL(%rip), %rax
	movq	gimp_parasite_free@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_boxed_type_register_static@PLT
	movq	%rax, gimp_parasite_get_type.type(%rip)
.LBB0_2:                                # %if.end
	movq	gimp_parasite_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_parasite_get_type, .Lfunc_end0-gimp_parasite_get_type
	.cfi_endproc

	.globl	gimp_parasite_copy
	.align	16, 0x90
	.type	gimp_parasite_copy,@function
gimp_parasite_copy:                     # @gimp_parasite_copy
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
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB1_3
.LBB1_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	movq	-16(%rbp), %rax
	movl	12(%rax), %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	callq	gimp_parasite_new@PLT
	movq	%rax, -8(%rbp)
.LBB1_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_parasite_copy, .Lfunc_end1-gimp_parasite_copy
	.cfi_endproc

	.globl	gimp_parasite_free
	.align	16, 0x90
	.type	gimp_parasite_free,@function
gimp_parasite_free:                     # @gimp_parasite_free
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
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_8
.LBB2_2:                                # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_4
# BB#3:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free@PLT
.LBB2_4:                                # %if.end.3
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB2_6
# BB#5:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free@PLT
.LBB2_6:                                # %if.end.7
	jmp	.LBB2_7
.LBB2_7:                                # %do.body
	movl	$24, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1@PLT
.LBB2_8:                                # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_parasite_free, .Lfunc_end2-gimp_parasite_free
	.cfi_endproc

	.globl	gimp_param_parasite_get_type
	.align	16, 0x90
	.type	gimp_param_parasite_get_type,@function
gimp_param_parasite_get_type:           # @gimp_param_parasite_get_type
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
	cmpq	$0, gimp_param_parasite_get_type.type(%rip)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	leaq	.L.str.1(%rip), %rsi
	leaq	gimp_param_parasite_get_type.type_info(%rip), %rdx
	xorl	%ecx, %ecx
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	128(%rax), %rdi
	callq	g_type_register_static@PLT
	movq	%rax, gimp_param_parasite_get_type.type(%rip)
.LBB3_2:                                # %if.end
	movq	gimp_param_parasite_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_param_parasite_get_type, .Lfunc_end3-gimp_param_parasite_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_parasite_class_init,@function
gimp_param_parasite_class_init:         # @gimp_param_parasite_class_init
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
	callq	gimp_parasite_get_type@PLT
	leaq	gimp_param_parasite_values_cmp(%rip), %rdi
	leaq	gimp_param_parasite_validate(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	%rcx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	%rdi, 40(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_param_parasite_class_init, .Lfunc_end4-gimp_param_parasite_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_parasite_init,@function
gimp_param_parasite_init:               # @gimp_param_parasite_init
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_param_parasite_init, .Lfunc_end5-gimp_param_parasite_init
	.cfi_endproc

	.globl	gimp_param_spec_parasite
	.align	16, 0x90
	.type	gimp_param_spec_parasite,@function
gimp_param_spec_parasite:               # @gimp_param_spec_parasite
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	callq	gimp_param_parasite_get_type@PLT
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %r8d
	movq	%rax, %rdi
	callq	g_param_spec_internal@PLT
	movl	$76, %r8d
	movl	%r8d, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_param_spec_parasite, .Lfunc_end6-gimp_param_spec_parasite
	.cfi_endproc

	.globl	gimp_parasite_new
	.align	16, 0x90
	.type	gimp_parasite_new,@function
gimp_parasite_new:                      # @gimp_parasite_new
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB7_6
.LBB7_2:                                # %if.end
	movl	$24, %eax
	movl	%eax, %edi
	callq	g_slice_alloc@PLT
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_strdup@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	movl	-20(%rbp), %ecx
	andl	$255, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	-24(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 12(%rax)
	cmpl	$0, -24(%rbp)
	je	.LBB7_4
# BB#3:                                 # %if.then.6
	movq	-32(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	g_memdup@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, 16(%rdi)
	jmp	.LBB7_5
.LBB7_4:                                # %if.else
	movq	-40(%rbp), %rax
	movq	$0, 16(%rax)
.LBB7_5:                                # %if.end.10
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB7_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_parasite_new, .Lfunc_end7-gimp_parasite_new
	.cfi_endproc

	.globl	gimp_parasite_is_type
	.align	16, 0x90
	.type	gimp_parasite_is_type,@function
gimp_parasite_is_type:                  # @gimp_parasite_is_type
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
	movq	%rsi, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB8_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB8_3
.LBB8_2:                                # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB8_4
.LBB8_3:                                # %if.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -4(%rbp)
.LBB8_4:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_parasite_is_type, .Lfunc_end8-gimp_parasite_is_type
	.cfi_endproc

	.globl	gimp_parasite_compare
	.align	16, 0x90
	.type	gimp_parasite_compare,@function
gimp_parasite_compare:                  # @gimp_parasite_compare
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
	movq	%rsi, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB9_16
# BB#1:                                 # %land.lhs.true
	cmpq	$0, -24(%rbp)
	je	.LBB9_16
# BB#2:                                 # %land.lhs.true.2
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_16
# BB#3:                                 # %land.lhs.true.4
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_16
# BB#4:                                 # %land.lhs.true.7
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB9_16
# BB#5:                                 # %land.lhs.true.10
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	8(%rax), %ecx
	jne	.LBB9_16
# BB#6:                                 # %land.lhs.true.13
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	12(%rax), %ecx
	jne	.LBB9_16
# BB#7:                                 # %if.then
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB9_10
# BB#8:                                 # %land.lhs.true.17
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB9_10
# BB#9:                                 # %if.then.20
	movl	$1, -4(%rbp)
	jmp	.LBB9_17
.LBB9_10:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB9_14
# BB#11:                                # %land.lhs.true.23
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB9_14
# BB#12:                                # %land.lhs.true.26
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, %edx
	callq	memcmp@PLT
	cmpl	$0, %eax
	jne	.LBB9_14
# BB#13:                                # %if.then.33
	movl	$1, -4(%rbp)
	jmp	.LBB9_17
.LBB9_14:                               # %if.end
	jmp	.LBB9_15
.LBB9_15:                               # %if.end.34
	jmp	.LBB9_16
.LBB9_16:                               # %if.end.35
	movl	$0, -4(%rbp)
.LBB9_17:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_parasite_compare, .Lfunc_end9-gimp_parasite_compare
	.cfi_endproc

	.globl	gimp_parasite_flags
	.align	16, 0x90
	.type	gimp_parasite_flags,@function
gimp_parasite_flags:                    # @gimp_parasite_flags
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
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB10_3
.LBB10_2:                               # %if.end
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -8(%rbp)
.LBB10_3:                               # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_parasite_flags, .Lfunc_end10-gimp_parasite_flags
	.cfi_endproc

	.globl	gimp_parasite_is_persistent
	.align	16, 0x90
	.type	gimp_parasite_is_persistent,@function
gimp_parasite_is_persistent:            # @gimp_parasite_is_persistent
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
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB11_3
.LBB11_2:                               # %if.end
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$1, %ecx
	movl	%ecx, -4(%rbp)
.LBB11_3:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_parasite_is_persistent, .Lfunc_end11-gimp_parasite_is_persistent
	.cfi_endproc

	.globl	gimp_parasite_is_undoable
	.align	16, 0x90
	.type	gimp_parasite_is_undoable,@function
gimp_parasite_is_undoable:              # @gimp_parasite_is_undoable
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
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB12_3
.LBB12_2:                               # %if.end
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$2, %ecx
	movl	%ecx, -4(%rbp)
.LBB12_3:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_parasite_is_undoable, .Lfunc_end12-gimp_parasite_is_undoable
	.cfi_endproc

	.globl	gimp_parasite_has_flag
	.align	16, 0x90
	.type	gimp_parasite_has_flag,@function
gimp_parasite_has_flag:                 # @gimp_parasite_has_flag
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB13_3
.LBB13_2:                               # %if.end
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %eax
	andq	-24(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
.LBB13_3:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_parasite_has_flag, .Lfunc_end13-gimp_parasite_has_flag
	.cfi_endproc

	.globl	gimp_parasite_name
	.align	16, 0x90
	.type	gimp_parasite_name,@function
gimp_parasite_name:                     # @gimp_parasite_name
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
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB14_3
.LBB14_2:                               # %if.end
	movq	$0, -8(%rbp)
.LBB14_3:                               # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_parasite_name, .Lfunc_end14-gimp_parasite_name
	.cfi_endproc

	.globl	gimp_parasite_data
	.align	16, 0x90
	.type	gimp_parasite_data,@function
gimp_parasite_data:                     # @gimp_parasite_data
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
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_3
.LBB15_2:                               # %if.end
	movq	$0, -8(%rbp)
.LBB15_3:                               # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_parasite_data, .Lfunc_end15-gimp_parasite_data
	.cfi_endproc

	.globl	gimp_parasite_data_size
	.align	16, 0x90
	.type	gimp_parasite_data_size,@function
gimp_parasite_data_size:                # @gimp_parasite_data_size
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
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -8(%rbp)
	jmp	.LBB16_3
.LBB16_2:                               # %if.end
	movq	$0, -8(%rbp)
.LBB16_3:                               # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_parasite_data_size, .Lfunc_end16-gimp_parasite_data_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_parasite_validate,@function
gimp_param_parasite_validate:           # @gimp_param_parasite_validate
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB17_11
.LBB17_2:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_8
# BB#3:                                 # %lor.lhs.false
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	g_utf8_validate@PLT
	cmpl	$0, %eax
	je	.LBB17_8
# BB#4:                                 # %lor.lhs.false.3
	movq	-32(%rbp), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB17_6
# BB#5:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB17_8
.LBB17_6:                               # %lor.lhs.false.7
	movq	-32(%rbp), %rax
	cmpl	$0, 12(%rax)
	jbe	.LBB17_9
# BB#7:                                 # %land.lhs.true.10
	movq	-32(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB17_9
.LBB17_8:                               # %if.then.13
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	g_value_set_boxed@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB17_11
.LBB17_9:                               # %if.end
	jmp	.LBB17_10
.LBB17_10:                              # %if.end.14
	movl	$0, -4(%rbp)
.LBB17_11:                              # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_param_parasite_validate, .Lfunc_end17-gimp_param_parasite_validate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_parasite_values_cmp,@function
gimp_param_parasite_values_cmp:         # @gimp_param_parasite_values_cmp
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	cmpq	$0, -48(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB18_5
.LBB18_2:                               # %if.else
	cmpq	$0, -48(%rbp)
	jne	.LBB18_4
# BB#3:                                 # %if.then.5
	cmpq	$0, -40(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB18_5
.LBB18_4:                               # %if.else.7
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_parasite_compare@PLT
	movl	%eax, -4(%rbp)
.LBB18_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_param_parasite_values_cmp, .Lfunc_end18-gimp_param_parasite_values_cmp
	.cfi_endproc

	.type	gimp_parasite_get_type.type,@object # @gimp_parasite_get_type.type
	.local	gimp_parasite_get_type.type
	.comm	gimp_parasite_get_type.type,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpParasite"
	.size	.L.str, 13

	.type	gimp_param_parasite_get_type.type,@object # @gimp_param_parasite_get_type.type
	.local	gimp_param_parasite_get_type.type
	.comm	gimp_param_parasite_get_type.type,8,8
	.type	gimp_param_parasite_get_type.type_info,@object # @gimp_param_parasite_get_type.type_info
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
gimp_param_parasite_get_type.type_info:
	.short	80                      # 0x50
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_param_parasite_class_init
	.quad	0
	.quad	0
	.short	72                      # 0x48
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_param_parasite_init
	.quad	0
	.size	gimp_param_parasite_get_type.type_info, 72

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"GimpParamParasite"
	.size	.L.str.1, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
