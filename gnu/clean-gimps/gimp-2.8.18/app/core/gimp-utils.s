	.text
	.file	"gimp-utils.bc"
	.globl	gimp_g_type_instance_get_memsize
	.align	16, 0x90
	.type	gimp_g_type_instance_get_memsize,@function
gimp_g_type_instance_get_memsize:       # @gimp_g_type_instance_get_memsize
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_2
# BB#1:                                 # %if.then
	leaq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	callq	g_type_query
	movl	-20(%rbp), %ecx
	movl	%ecx, %eax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:                                # %if.end
	movq	$0, -8(%rbp)
.LBB0_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_g_type_instance_get_memsize, .Lfunc_end0-gimp_g_type_instance_get_memsize
	.cfi_endproc

	.globl	gimp_g_object_get_memsize
	.align	16, 0x90
	.type	gimp_g_object_get_memsize,@function
gimp_g_object_get_memsize:              # @gimp_g_object_get_memsize
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
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_g_type_instance_get_memsize
	movq	%rax, -8(%rbp)
	jmp	.LBB1_3
.LBB1_2:                                # %if.end
	movq	$0, -8(%rbp)
.LBB1_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_g_object_get_memsize, .Lfunc_end1-gimp_g_object_get_memsize
	.cfi_endproc

	.globl	gimp_g_hash_table_get_memsize
	.align	16, 0x90
	.type	gimp_g_hash_table_get_memsize,@function
gimp_g_hash_table_get_memsize:          # @gimp_g_hash_table_get_memsize
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	g_hash_table_size
	movl	%eax, %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rcx
	addq	$24, %rcx
	imulq	%rcx, %rdi
	addq	$48, %rdi
	movq	%rdi, -8(%rbp)
	jmp	.LBB2_3
.LBB2_2:                                # %if.end
	movq	$0, -8(%rbp)
.LBB2_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_g_hash_table_get_memsize, .Lfunc_end2-gimp_g_hash_table_get_memsize
	.cfi_endproc

	.globl	gimp_g_hash_table_get_memsize_foreach
	.align	16, 0x90
	.type	gimp_g_hash_table_get_memsize_foreach,@function
gimp_g_hash_table_get_memsize_foreach:  # @gimp_g_hash_table_get_memsize_foreach
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_g_hash_table_get_memsize_foreach, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_10
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	cmpq	$0, -16(%rbp)
	jne	.LBB3_7
# BB#6:                                 # %if.then.1
	movq	$0, -8(%rbp)
	jmp	.LBB3_10
.LBB3_7:                                # %if.end.2
	movabsq	$hash_memsize_foreach, %rax
	leaq	-56(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_hash_table_foreach
	cmpq	$0, -32(%rbp)
	je	.LBB3_9
# BB#8:                                 # %if.then.7
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB3_9:                                # %if.end.9
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_g_hash_table_get_memsize
	movq	-64(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -8(%rbp)
.LBB3_10:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_g_hash_table_get_memsize_foreach, .Lfunc_end3-gimp_g_hash_table_get_memsize_foreach
	.cfi_endproc

	.align	16, 0x90
	.type	hash_memsize_foreach,@function
hash_memsize_foreach:                   # @hash_memsize_foreach
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
	subq	$32, %rsp
	leaq	-32(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	*%rdx
	movq	-24(%rbp), %rdx
	addq	8(%rdx), %rax
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	16(%rdx), %rax
	movq	%rax, 16(%rdx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	hash_memsize_foreach, .Lfunc_end4-hash_memsize_foreach
	.cfi_endproc

	.globl	gimp_g_slist_get_memsize
	.align	16, 0x90
	.type	gimp_g_slist_get_memsize,@function
gimp_g_slist_get_memsize:               # @gimp_g_slist_get_memsize
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_slist_length
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	addq	$16, %rdi
	imulq	%rdi, %rsi
	movq	%rsi, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_g_slist_get_memsize, .Lfunc_end5-gimp_g_slist_get_memsize
	.cfi_endproc

	.globl	gimp_g_slist_get_memsize_foreach
	.align	16, 0x90
	.type	gimp_g_slist_get_memsize_foreach,@function
gimp_g_slist_get_memsize_foreach:       # @gimp_g_slist_get_memsize_foreach
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
	movq	%rdx, -32(%rbp)
	movq	$0, -48(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_g_slist_get_memsize_foreach, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_13
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB6_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB6_12
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-32(%rbp), %rsi
	callq	*%rax
	addq	$16, %rax
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB6_6 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB6_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB6_11
.LBB6_10:                               # %cond.false
                                        #   in Loop: Header=BB6_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB6_11
.LBB6_11:                               # %cond.end
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB6_6
.LBB6_12:                               # %for.end
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB6_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_g_slist_get_memsize_foreach, .Lfunc_end6-gimp_g_slist_get_memsize_foreach
	.cfi_endproc

	.globl	gimp_g_list_get_memsize
	.align	16, 0x90
	.type	gimp_g_list_get_memsize,@function
gimp_g_list_get_memsize:                # @gimp_g_list_get_memsize
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_list_length
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	addq	$24, %rdi
	imulq	%rdi, %rsi
	movq	%rsi, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_g_list_get_memsize, .Lfunc_end7-gimp_g_list_get_memsize
	.cfi_endproc

	.globl	gimp_g_list_get_memsize_foreach
	.align	16, 0x90
	.type	gimp_g_list_get_memsize_foreach,@function
gimp_g_list_get_memsize_foreach:        # @gimp_g_list_get_memsize_foreach
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -48(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB8_3
# BB#2:                                 # %if.then
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_g_list_get_memsize_foreach, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_13
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB8_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB8_12
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB8_6 Depth=1
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-32(%rbp), %rsi
	callq	*%rax
	addq	$24, %rax
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB8_6 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB8_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB8_6 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB8_11
.LBB8_10:                               # %cond.false
                                        #   in Loop: Header=BB8_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB8_11
.LBB8_11:                               # %cond.end
                                        #   in Loop: Header=BB8_6 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB8_6
.LBB8_12:                               # %for.end
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB8_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_g_list_get_memsize_foreach, .Lfunc_end8-gimp_g_list_get_memsize_foreach
	.cfi_endproc

	.globl	gimp_g_value_get_memsize
	.align	16, 0x90
	.type	gimp_g_value_get_memsize,@function
gimp_g_value_get_memsize:               # @gimp_g_value_get_memsize
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
	subq	$352, %rsp              # imm = 0x160
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB9_115
.LBB9_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$64, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_4
# BB#3:                                 # %if.then.2
	movl	$0, -44(%rbp)
	jmp	.LBB9_8
.LBB9_4:                                # %if.else
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -44(%rbp)
.LBB9_7:                                # %if.end.5
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	movq	-16(%rbp), %rdi
	callq	g_value_get_string
	movq	%rax, %rdi
	callq	gimp_string_get_memsize
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB9_114
.LBB9_10:                               # %if.else.11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	$72, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB9_12
# BB#11:                                # %if.then.19
	movl	$0, -68(%rbp)
	jmp	.LBB9_16
.LBB9_12:                               # %if.else.20
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB9_14
# BB#13:                                # %if.then.23
	movl	$1, -68(%rbp)
	jmp	.LBB9_15
.LBB9_14:                               # %if.else.24
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -68(%rbp)
.LBB9_15:                               # %if.end.26
	jmp	.LBB9_16
.LBB9_16:                               # %if.end.27
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB9_104
# BB#17:                                # %if.then.30
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_rgb_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB9_19
# BB#18:                                # %if.then.39
	movl	$0, -92(%rbp)
	jmp	.LBB9_23
.LBB9_19:                               # %if.else.40
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB9_21
# BB#20:                                # %if.then.43
	movl	$1, -92(%rbp)
	jmp	.LBB9_22
.LBB9_21:                               # %if.else.44
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -92(%rbp)
.LBB9_22:                               # %if.end.46
	jmp	.LBB9_23
.LBB9_23:                               # %if.end.47
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB9_25
# BB#24:                                # %if.then.50
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB9_103
.LBB9_25:                               # %if.else.52
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_matrix2_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB9_27
# BB#26:                                # %if.then.61
	movl	$0, -116(%rbp)
	jmp	.LBB9_31
.LBB9_27:                               # %if.else.62
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB9_29
# BB#28:                                # %if.then.65
	movl	$1, -116(%rbp)
	jmp	.LBB9_30
.LBB9_29:                               # %if.else.66
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -116(%rbp)
.LBB9_30:                               # %if.end.68
	jmp	.LBB9_31
.LBB9_31:                               # %if.end.69
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB9_33
# BB#32:                                # %if.then.72
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB9_102
.LBB9_33:                               # %if.else.74
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_parasite_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB9_35
# BB#34:                                # %if.then.83
	movl	$0, -140(%rbp)
	jmp	.LBB9_39
.LBB9_35:                               # %if.else.84
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB9_37
# BB#36:                                # %if.then.87
	movl	$1, -140(%rbp)
	jmp	.LBB9_38
.LBB9_37:                               # %if.else.88
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -140(%rbp)
.LBB9_38:                               # %if.end.90
	jmp	.LBB9_39
.LBB9_39:                               # %if.end.91
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB9_41
# BB#40:                                # %if.then.94
	movq	-16(%rbp), %rdi
	callq	g_value_get_boxed
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_parasite_get_memsize
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB9_101
.LBB9_41:                               # %if.else.98
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_array_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB9_43
# BB#42:                                # %if.then.107
	movl	$0, -164(%rbp)
	jmp	.LBB9_47
.LBB9_43:                               # %if.else.108
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB9_45
# BB#44:                                # %if.then.111
	movl	$1, -164(%rbp)
	jmp	.LBB9_46
.LBB9_45:                               # %if.else.112
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -164(%rbp)
.LBB9_46:                               # %if.end.114
	jmp	.LBB9_47
.LBB9_47:                               # %if.end.115
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	jne	.LBB9_76
# BB#48:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)
	callq	gimp_int8_array_get_type
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB9_50
# BB#49:                                # %if.then.126
	movl	$0, -188(%rbp)
	jmp	.LBB9_54
.LBB9_50:                               # %if.else.127
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB9_52
# BB#51:                                # %if.then.130
	movl	$1, -188(%rbp)
	jmp	.LBB9_53
.LBB9_52:                               # %if.else.131
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -188(%rbp)
.LBB9_53:                               # %if.end.133
	jmp	.LBB9_54
.LBB9_54:                               # %if.end.134
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	jne	.LBB9_76
# BB#55:                                # %lor.lhs.false.137
	movq	-16(%rbp), %rax
	movq	%rax, -200(%rbp)
	callq	gimp_int16_array_get_type
	movq	%rax, -208(%rbp)
	cmpq	$0, -200(%rbp)
	jne	.LBB9_57
# BB#56:                                # %if.then.146
	movl	$0, -212(%rbp)
	jmp	.LBB9_61
.LBB9_57:                               # %if.else.147
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-208(%rbp), %rax
	jne	.LBB9_59
# BB#58:                                # %if.then.150
	movl	$1, -212(%rbp)
	jmp	.LBB9_60
.LBB9_59:                               # %if.else.151
	movq	-200(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -212(%rbp)
.LBB9_60:                               # %if.end.153
	jmp	.LBB9_61
.LBB9_61:                               # %if.end.154
	movl	-212(%rbp), %eax
	movl	%eax, -216(%rbp)
	cmpl	$0, -216(%rbp)
	jne	.LBB9_76
# BB#62:                                # %lor.lhs.false.157
	movq	-16(%rbp), %rax
	movq	%rax, -224(%rbp)
	callq	gimp_int32_array_get_type
	movq	%rax, -232(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB9_64
# BB#63:                                # %if.then.166
	movl	$0, -236(%rbp)
	jmp	.LBB9_68
.LBB9_64:                               # %if.else.167
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-232(%rbp), %rax
	jne	.LBB9_66
# BB#65:                                # %if.then.170
	movl	$1, -236(%rbp)
	jmp	.LBB9_67
.LBB9_66:                               # %if.else.171
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -236(%rbp)
.LBB9_67:                               # %if.end.173
	jmp	.LBB9_68
.LBB9_68:                               # %if.end.174
	movl	-236(%rbp), %eax
	movl	%eax, -240(%rbp)
	cmpl	$0, -240(%rbp)
	jne	.LBB9_76
# BB#69:                                # %lor.lhs.false.177
	movq	-16(%rbp), %rax
	movq	%rax, -248(%rbp)
	callq	gimp_float_array_get_type
	movq	%rax, -256(%rbp)
	cmpq	$0, -248(%rbp)
	jne	.LBB9_71
# BB#70:                                # %if.then.186
	movl	$0, -260(%rbp)
	jmp	.LBB9_75
.LBB9_71:                               # %if.else.187
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-256(%rbp), %rax
	jne	.LBB9_73
# BB#72:                                # %if.then.190
	movl	$1, -260(%rbp)
	jmp	.LBB9_74
.LBB9_73:                               # %if.else.191
	movq	-248(%rbp), %rdi
	movq	-256(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -260(%rbp)
.LBB9_74:                               # %if.end.193
	jmp	.LBB9_75
.LBB9_75:                               # %if.end.194
	movl	-260(%rbp), %eax
	movl	%eax, -264(%rbp)
	cmpl	$0, -264(%rbp)
	je	.LBB9_82
.LBB9_76:                               # %if.then.197
	movq	-16(%rbp), %rdi
	callq	g_value_get_boxed
	movq	%rax, -272(%rbp)
	cmpq	$0, -272(%rbp)
	je	.LBB9_81
# BB#77:                                # %if.then.201
	movq	-272(%rbp), %rax
	movslq	16(%rax), %rax
	addq	$24, %rax
	cmpq	$0, %rax
	je	.LBB9_79
# BB#78:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB9_80
.LBB9_79:                               # %cond.false
	movq	-272(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB9_80:                               # %cond.end
	movq	-352(%rbp), %rax        # 8-byte Reload
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB9_81:                               # %if.end.205
	jmp	.LBB9_100
.LBB9_82:                               # %if.else.206
	movq	-16(%rbp), %rax
	movq	%rax, -280(%rbp)
	callq	gimp_string_array_get_type
	movq	%rax, -288(%rbp)
	cmpq	$0, -280(%rbp)
	jne	.LBB9_84
# BB#83:                                # %if.then.215
	movl	$0, -292(%rbp)
	jmp	.LBB9_88
.LBB9_84:                               # %if.else.216
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-288(%rbp), %rax
	jne	.LBB9_86
# BB#85:                                # %if.then.220
	movl	$1, -292(%rbp)
	jmp	.LBB9_87
.LBB9_86:                               # %if.else.221
	movq	-280(%rbp), %rdi
	movq	-288(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -292(%rbp)
.LBB9_87:                               # %if.end.223
	jmp	.LBB9_88
.LBB9_88:                               # %if.end.224
	movl	-292(%rbp), %eax
	movl	%eax, -296(%rbp)
	cmpl	$0, -296(%rbp)
	je	.LBB9_98
# BB#89:                                # %if.then.227
	movq	-16(%rbp), %rdi
	callq	g_value_get_boxed
	movq	%rax, -304(%rbp)
	cmpq	$0, -304(%rbp)
	je	.LBB9_97
# BB#90:                                # %if.then.232
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -24(%rbp)
	movq	-304(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB9_96
# BB#91:                                # %if.then.236
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-304(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$3, %rax
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -316(%rbp)
.LBB9_92:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-316(%rbp), %rax
	movq	-304(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jae	.LBB9_95
# BB#93:                                # %for.body
                                        #   in Loop: Header=BB9_92 Depth=1
	movslq	-316(%rbp), %rax
	movq	-312(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	gimp_string_get_memsize
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
# BB#94:                                # %for.inc
                                        #   in Loop: Header=BB9_92 Depth=1
	movl	-316(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -316(%rbp)
	jmp	.LBB9_92
.LBB9_95:                               # %for.end
	jmp	.LBB9_96
.LBB9_96:                               # %if.end.248
	jmp	.LBB9_97
.LBB9_97:                               # %if.end.249
	jmp	.LBB9_99
.LBB9_98:                               # %if.else.250
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_type_name
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_g_value_get_memsize, %rsi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_printerr
.LBB9_99:                               # %if.end.253
	jmp	.LBB9_100
.LBB9_100:                              # %if.end.254
	jmp	.LBB9_101
.LBB9_101:                              # %if.end.255
	jmp	.LBB9_102
.LBB9_102:                              # %if.end.256
	jmp	.LBB9_103
.LBB9_103:                              # %if.end.257
	jmp	.LBB9_113
.LBB9_104:                              # %if.else.258
	movq	-16(%rbp), %rax
	movq	%rax, -328(%rbp)
	movq	$80, -336(%rbp)
	cmpq	$0, -328(%rbp)
	jne	.LBB9_106
# BB#105:                               # %if.then.266
	movl	$0, -340(%rbp)
	jmp	.LBB9_110
.LBB9_106:                              # %if.else.267
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-336(%rbp), %rax
	jne	.LBB9_108
# BB#107:                               # %if.then.271
	movl	$1, -340(%rbp)
	jmp	.LBB9_109
.LBB9_108:                              # %if.else.272
	movq	-328(%rbp), %rdi
	movq	-336(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -340(%rbp)
.LBB9_109:                              # %if.end.274
	jmp	.LBB9_110
.LBB9_110:                              # %if.end.275
	movl	-340(%rbp), %eax
	movl	%eax, -344(%rbp)
	cmpl	$0, -344(%rbp)
	je	.LBB9_112
# BB#111:                               # %if.then.278
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_type_name
	movabsq	$.L.str.3, %rdi
	movabsq	$.L__func__.gimp_g_value_get_memsize, %rsi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_printerr
.LBB9_112:                              # %if.end.281
	jmp	.LBB9_113
.LBB9_113:                              # %if.end.282
	jmp	.LBB9_114
.LBB9_114:                              # %if.end.283
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -8(%rbp)
.LBB9_115:                              # %return
	movq	-8(%rbp), %rax
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_g_value_get_memsize, .Lfunc_end9-gimp_g_value_get_memsize
	.cfi_endproc

	.globl	gimp_string_get_memsize
	.align	16, 0x90
	.type	gimp_string_get_memsize,@function
gimp_string_get_memsize:                # @gimp_string_get_memsize
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
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	strlen
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_3
.LBB10_2:                               # %if.end
	movq	$0, -8(%rbp)
.LBB10_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_string_get_memsize, .Lfunc_end10-gimp_string_get_memsize
	.cfi_endproc

	.globl	gimp_parasite_get_memsize
	.align	16, 0x90
	.type	gimp_parasite_get_memsize,@function
gimp_parasite_get_memsize:              # @gimp_parasite_get_memsize
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
	movq	%rsi, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	$24, %rax
	movq	-16(%rbp), %rdi
	movl	12(%rdi), %ecx
	movl	%ecx, %edi
	addq	%rdi, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_3
.LBB11_2:                               # %if.end
	movq	$0, -8(%rbp)
.LBB11_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_parasite_get_memsize, .Lfunc_end11-gimp_parasite_get_memsize
	.cfi_endproc

	.globl	gimp_g_param_spec_get_memsize
	.align	16, 0x90
	.type	gimp_g_param_spec_get_memsize,@function
gimp_g_param_spec_get_memsize:          # @gimp_g_param_spec_get_memsize
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
	movq	$0, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB12_9
.LBB12_2:                               # %if.end
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_4
# BB#3:                                 # %if.then.2
	movq	-16(%rbp), %rdi
	callq	g_param_spec_get_name
	movq	%rax, %rdi
	callq	gimp_string_get_memsize
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB12_4:                               # %if.end.4
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$64, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_6
# BB#5:                                 # %if.then.8
	movq	-16(%rbp), %rdi
	callq	g_param_spec_get_nick
	movq	%rax, %rdi
	callq	gimp_string_get_memsize
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB12_6:                               # %if.end.12
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_8
# BB#7:                                 # %if.then.16
	movq	-16(%rbp), %rdi
	callq	g_param_spec_get_blurb
	movq	%rax, %rdi
	callq	gimp_string_get_memsize
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB12_8:                               # %if.end.20
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_g_type_instance_get_memsize
	movq	-32(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -8(%rbp)
.LBB12_9:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_g_param_spec_get_memsize, .Lfunc_end12-gimp_g_param_spec_get_memsize
	.cfi_endproc

	.globl	gimp_get_default_language
	.align	16, 0x90
	.type	gimp_get_default_language,@function
gimp_get_default_language:              # @gimp_get_default_language
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
	movl	$0, -28(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.4, %rax
	movq	%rax, -8(%rbp)
.LBB13_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	$.L.str.4, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_4
# BB#3:                                 # %if.then.1
	movl	$0, -28(%rbp)
	jmp	.LBB13_8
.LBB13_4:                               # %if.else
	movq	-8(%rbp), %rdi
	movl	$.L.str.5, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_6
# BB#5:                                 # %if.then.4
	movl	$5, -28(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.5
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	g_warning
.LBB13_7:                               # %if.end.6
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.7
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-28(%rbp), %edi
	callq	setlocale
	movq	%rax, %rdi
	callq	g_strdup
	movl	$46, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	strchr
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.12
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
.LBB13_10:                              # %if.end.13
	movl	$64, %esi
	movq	-16(%rbp), %rdi
	callq	strchr
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB13_12
# BB#11:                                # %if.then.16
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
.LBB13_12:                              # %if.end.17
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_get_default_language, .Lfunc_end13-gimp_get_default_language
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB14_2
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
.LBB14_2:                               # %entry
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
.Lfunc_end14:
	.size	g_warning, .Lfunc_end14-g_warning
	.cfi_endproc

	.globl	gimp_get_default_unit
	.align	16, 0x90
	.type	gimp_get_default_unit,@function
gimp_get_default_unit:                  # @gimp_get_default_unit
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
	subq	$32, %rsp
	movl	$720896, %edi           # imm = 0xB0000
	callq	nl_langinfo
	movq	%rax, -16(%rbp)
	movzbl	(%rax), %edi
	movl	%edi, %ecx
	subl	$1, %ecx
	movl	%edi, -20(%rbp)         # 4-byte Spill
	movl	%ecx, -24(%rbp)         # 4-byte Spill
	je	.LBB15_1
	jmp	.LBB15_5
.LBB15_5:                               # %entry
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB15_2
	jmp	.LBB15_3
.LBB15_1:                               # %sw.bb
	movl	$2, -4(%rbp)
	jmp	.LBB15_4
.LBB15_2:                               # %sw.bb.1
	movl	$1, -4(%rbp)
	jmp	.LBB15_4
.LBB15_3:                               # %sw.epilog
	movl	$2, -4(%rbp)
.LBB15_4:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_get_default_unit, .Lfunc_end15-gimp_get_default_unit
	.cfi_endproc

	.globl	gimp_parameters_append
	.align	16, 0x90
	.type	gimp_parameters_append,@function
gimp_parameters_append:                 # @gimp_parameters_append
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
	subq	$432, %rsp              # imm = 0x1B0
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
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	je	.LBB16_19
# BB#18:                                # %entry
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
.LBB16_19:                              # %entry
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -208(%rbp)
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -216(%rbp)
	movq	-408(%rbp), %rsi        # 8-byte Reload
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	-376(%rbp), %r8         # 8-byte Reload
	movq	%r8, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB16_3
# BB#2:                                 # %if.then
	jmp	.LBB16_4
.LBB16_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_parameters_append, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_17
.LBB16_4:                               # %if.end
	jmp	.LBB16_5
.LBB16_5:                               # %do.end
	jmp	.LBB16_6
.LBB16_6:                               # %do.body.1
	cmpq	$0, -32(%rbp)
	je	.LBB16_8
# BB#7:                                 # %if.then.2
	jmp	.LBB16_9
.LBB16_8:                               # %if.else.3
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_parameters_append, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_17
.LBB16_9:                               # %if.end.4
	jmp	.LBB16_10
.LBB16_10:                              # %do.end.5
	jmp	.LBB16_11
.LBB16_11:                              # %do.body.6
	cmpq	$0, -24(%rbp)
	jne	.LBB16_13
# BB#12:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB16_14
.LBB16_13:                              # %if.then.9
	jmp	.LBB16_15
.LBB16_14:                              # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_parameters_append, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_17
.LBB16_15:                              # %if.end.11
	jmp	.LBB16_16
.LBB16_16:                              # %do.end.12
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	leaq	-240(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$24, (%rcx)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rcx
	callq	gimp_parameters_append_valist
	leaq	-64(%rbp), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	%rcx, -424(%rbp)        # 8-byte Spill
.LBB16_17:                              # %return
	movq	-8(%rbp), %rax
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_parameters_append, .Lfunc_end16-gimp_parameters_append
	.cfi_endproc

	.globl	gimp_parameters_append_valist
	.align	16, 0x90
	.type	gimp_parameters_append_valist,@function
gimp_parameters_append_valist:          # @gimp_parameters_append_valist
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
	subq	$432, %rsp              # imm = 0x1B0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB17_3
# BB#2:                                 # %if.then
	jmp	.LBB17_4
.LBB17_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_parameters_append_valist, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB17_62
.LBB17_4:                               # %if.end
	jmp	.LBB17_5
.LBB17_5:                               # %do.end
	jmp	.LBB17_6
.LBB17_6:                               # %do.body.1
	cmpq	$0, -32(%rbp)
	je	.LBB17_8
# BB#7:                                 # %if.then.2
	jmp	.LBB17_9
.LBB17_8:                               # %if.else.3
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_parameters_append_valist, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB17_62
.LBB17_9:                               # %if.end.4
	jmp	.LBB17_10
.LBB17_10:                              # %do.end.5
	jmp	.LBB17_11
.LBB17_11:                              # %do.body.6
	cmpq	$0, -24(%rbp)
	jne	.LBB17_13
# BB#12:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB17_14
.LBB17_13:                              # %if.then.9
	jmp	.LBB17_15
.LBB17_14:                              # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_parameters_append_valist, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB17_62
.LBB17_15:                              # %if.end.11
	jmp	.LBB17_16
.LBB17_16:                              # %do.end.12
	movq	-16(%rbp), %rdi
	callq	g_type_class_ref
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	ja	.LBB17_18
# BB#17:                                # %vaarg.in_reg
	movl	-220(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-216(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB17_19
.LBB17_18:                              # %vaarg.in_mem
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -232(%rbp)        # 8-byte Spill
.LBB17_19:                              # %vaarg.end
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB17_20:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_28 Depth 2
	cmpq	$0, -56(%rbp)
	je	.LBB17_61
# BB#21:                                # %while.body
                                        #   in Loop: Header=BB17_20 Depth=1
	movq	$0, -64(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_object_class_find_property
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB17_23
# BB#22:                                # %if.then.17
	movq	-16(%rbp), %rdi
	callq	g_type_name
	movabsq	$.L.str.10, %rdi
	movabsq	$.L__func__.gimp_parameters_append_valist, %rsi
	movq	-56(%rbp), %rcx
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_warning
	jmp	.LBB17_61
.LBB17_23:                              # %if.end.19
                                        #   in Loop: Header=BB17_20 Depth=1
	movl	$32, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movl	(%rsi), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	movq	%rcx, %rdi
	callq	g_realloc_n
	movl	$76, %r8d
	movl	%r8d, %esi
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	movslq	(%rcx), %rcx
	shlq	$5, %rcx
	addq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$5, %rax
	addq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-32(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$5, %rax
	addq	-24(%rbp), %rax
	addq	$8, %rax
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movq	24(%rax), %rsi
	movq	-240(%rbp), %rdi        # 8-byte Reload
	callq	g_value_init
	movq	%rax, -248(%rbp)        # 8-byte Spill
# BB#24:                                # %do.body.28
                                        #   in Loop: Header=BB17_20 Depth=1
	movq	-32(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$5, %rax
	addq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	g_type_value_table_peek
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB17_26
# BB#25:                                # %if.then.35
                                        #   in Loop: Header=BB17_20 Depth=1
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	-80(%rbp), %rdi
	callq	*%rax
.LBB17_26:                              # %if.end.37
                                        #   in Loop: Header=BB17_20 Depth=1
	xorl	%esi, %esi
	movl	$16, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, %rdi
	callq	memset
# BB#27:                                # %do.body.38
                                        #   in Loop: Header=BB17_20 Depth=1
	movq	-32(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$5, %rax
	addq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -104(%rbp)
	movl	$0, -108(%rbp)
	movq	-88(%rbp), %rdi
	callq	g_type_value_table_peek
	xorl	%esi, %esi
	movl	$64, %ecx
	movl	%ecx, %edx
	leaq	-192(%rbp), %rdi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -128(%rbp)
	callq	memset
	movl	$0, -196(%rbp)
	movq	-88(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, (%rdx)
.LBB17_28:                              # %while.cond.44
                                        #   Parent Loop BB17_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-128(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB17_53
# BB#29:                                # %while.body.46
                                        #   in Loop: Header=BB17_28 Depth=2
	movl	-196(%rbp), %eax
	movl	%eax, %ecx
	movl	%ecx, %eax
	incl	%eax
	movl	%eax, -196(%rbp)
	leaq	-192(%rbp,%rcx,8), %rcx
	movq	%rcx, -208(%rbp)
	movq	-128(%rbp), %rcx
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, -128(%rbp)
	movsbl	(%rcx), %eax
	movl	%eax, %esi
	subl	$100, %esi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	movl	%esi, -256(%rbp)        # 4-byte Spill
	je	.LBB17_42
	jmp	.LBB17_63
.LBB17_63:                              # %while.body.46
                                        #   in Loop: Header=BB17_28 Depth=2
	movl	-252(%rbp), %eax        # 4-byte Reload
	subl	$105, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	je	.LBB17_30
	jmp	.LBB17_64
.LBB17_64:                              # %while.body.46
                                        #   in Loop: Header=BB17_28 Depth=2
	movl	-252(%rbp), %eax        # 4-byte Reload
	subl	$108, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	je	.LBB17_34
	jmp	.LBB17_65
.LBB17_65:                              # %while.body.46
                                        #   in Loop: Header=BB17_28 Depth=2
	movl	-252(%rbp), %eax        # 4-byte Reload
	subl	$112, %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	je	.LBB17_46
	jmp	.LBB17_66
.LBB17_66:                              # %while.body.46
                                        #   in Loop: Header=BB17_28 Depth=2
	movl	-252(%rbp), %eax        # 4-byte Reload
	subl	$113, %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	je	.LBB17_38
	jmp	.LBB17_50
.LBB17_30:                              # %sw.bb
                                        #   in Loop: Header=BB17_28 Depth=2
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movl	%ecx, -284(%rbp)        # 4-byte Spill
	ja	.LBB17_32
# BB#31:                                # %vaarg.in_reg.51
                                        #   in Loop: Header=BB17_28 Depth=2
	movl	-284(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-280(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB17_33
.LBB17_32:                              # %vaarg.in_mem.53
                                        #   in Loop: Header=BB17_28 Depth=2
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -296(%rbp)        # 8-byte Spill
.LBB17_33:                              # %vaarg.end.57
                                        #   in Loop: Header=BB17_28 Depth=2
	movq	-296(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	movq	-208(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB17_52
.LBB17_34:                              # %sw.bb.59
                                        #   in Loop: Header=BB17_28 Depth=2
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -304(%rbp)        # 8-byte Spill
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	ja	.LBB17_36
# BB#35:                                # %vaarg.in_reg.63
                                        #   in Loop: Header=BB17_28 Depth=2
	movl	-308(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-304(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB17_37
.LBB17_36:                              # %vaarg.in_mem.65
                                        #   in Loop: Header=BB17_28 Depth=2
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -320(%rbp)        # 8-byte Spill
.LBB17_37:                              # %vaarg.end.69
                                        #   in Loop: Header=BB17_28 Depth=2
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-208(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB17_52
.LBB17_38:                              # %sw.bb.71
                                        #   in Loop: Header=BB17_28 Depth=2
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	ja	.LBB17_40
# BB#39:                                # %vaarg.in_reg.75
                                        #   in Loop: Header=BB17_28 Depth=2
	movl	-332(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-328(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	jmp	.LBB17_41
.LBB17_40:                              # %vaarg.in_mem.77
                                        #   in Loop: Header=BB17_28 Depth=2
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -344(%rbp)        # 8-byte Spill
.LBB17_41:                              # %vaarg.end.81
                                        #   in Loop: Header=BB17_28 Depth=2
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-208(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB17_52
.LBB17_42:                              # %sw.bb.83
                                        #   in Loop: Header=BB17_28 Depth=2
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movl	4(%rax), %edx
	cmpl	$160, %edx
	movq	%rax, -352(%rbp)        # 8-byte Spill
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	movl	%edx, -364(%rbp)        # 4-byte Spill
	ja	.LBB17_44
# BB#43:                                # %vaarg.in_reg.84
                                        #   in Loop: Header=BB17_28 Depth=2
	movl	-364(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-352(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$16, %eax
	movq	-360(%rbp), %rsi        # 8-byte Reload
	movl	%eax, (%rsi)
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	jmp	.LBB17_45
.LBB17_44:                              # %vaarg.in_mem.86
                                        #   in Loop: Header=BB17_28 Depth=2
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -376(%rbp)        # 8-byte Spill
.LBB17_45:                              # %vaarg.end.90
                                        #   in Loop: Header=BB17_28 Depth=2
	movq	-376(%rbp), %rax        # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-208(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB17_52
.LBB17_46:                              # %sw.bb.92
                                        #   in Loop: Header=BB17_28 Depth=2
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -384(%rbp)        # 8-byte Spill
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	ja	.LBB17_48
# BB#47:                                # %vaarg.in_reg.96
                                        #   in Loop: Header=BB17_28 Depth=2
	movl	-388(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-384(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	jmp	.LBB17_49
.LBB17_48:                              # %vaarg.in_mem.98
                                        #   in Loop: Header=BB17_28 Depth=2
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -400(%rbp)        # 8-byte Spill
.LBB17_49:                              # %vaarg.end.102
                                        #   in Loop: Header=BB17_28 Depth=2
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-208(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB17_52
.LBB17_50:                              # %sw.default
	jmp	.LBB17_51
.LBB17_51:                              # %do.body.104
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$449, %edx              # imm = 0x1C1
	movabsq	$.L__func__.gimp_parameters_append_valist, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB17_52:                              # %sw.epilog
                                        #   in Loop: Header=BB17_28 Depth=2
	jmp	.LBB17_28
.LBB17_53:                              # %while.end
                                        #   in Loop: Header=BB17_20 Depth=1
	leaq	-192(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movq	-104(%rbp), %rdi
	movl	-196(%rbp), %esi
	movl	-108(%rbp), %ecx
	callq	*%rax
	movq	%rax, -64(%rbp)
# BB#54:                                # %do.end.108
                                        #   in Loop: Header=BB17_20 Depth=1
	jmp	.LBB17_55
.LBB17_55:                              # %do.end.109
                                        #   in Loop: Header=BB17_20 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB17_57
# BB#56:                                # %if.then.111
	movabsq	$.L.str.12, %rdi
	movabsq	$.L__func__.gimp_parameters_append_valist, %rsi
	movq	-64(%rbp), %rdx
	movb	$0, %al
	callq	g_warning
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdx
	movslq	(%rdx), %rdx
	shlq	$5, %rdx
	addq	-24(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, %rdi
	callq	g_value_unset
	jmp	.LBB17_61
.LBB17_57:                              # %if.end.115
                                        #   in Loop: Header=BB17_20 Depth=1
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -408(%rbp)        # 8-byte Spill
	movl	%ecx, -412(%rbp)        # 4-byte Spill
	ja	.LBB17_59
# BB#58:                                # %vaarg.in_reg.120
                                        #   in Loop: Header=BB17_20 Depth=1
	movl	-412(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-408(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	jmp	.LBB17_60
.LBB17_59:                              # %vaarg.in_mem.122
                                        #   in Loop: Header=BB17_20 Depth=1
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -424(%rbp)        # 8-byte Spill
.LBB17_60:                              # %vaarg.end.126
                                        #   in Loop: Header=BB17_20 Depth=1
	movq	-424(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB17_20
.LBB17_61:                              # %while.end.128
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_unref
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB17_62:                              # %return
	movq	-8(%rbp), %rax
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_parameters_append_valist, .Lfunc_end17-gimp_parameters_append_valist
	.cfi_endproc

	.globl	gimp_parameters_free
	.align	16, 0x90
	.type	gimp_parameters_free,@function
gimp_parameters_free:                   # @gimp_parameters_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$0, -12(%rbp)
	jne	.LBB18_4
.LBB18_3:                               # %if.then
	jmp	.LBB18_5
.LBB18_4:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_parameters_free, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_12
.LBB18_5:                               # %if.end
	jmp	.LBB18_6
.LBB18_6:                               # %do.end
	cmpq	$0, -8(%rbp)
	je	.LBB18_12
# BB#7:                                 # %if.then.2
	movl	$0, -16(%rbp)
.LBB18_8:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB18_11
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB18_8 Depth=1
	movslq	-16(%rbp), %rax
	shlq	$5, %rax
	addq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	g_value_unset
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB18_8 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB18_8
.LBB18_11:                              # %for.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB18_12:                              # %if.end.4
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_parameters_free, .Lfunc_end18-gimp_parameters_free
	.cfi_endproc

	.globl	gimp_value_array_truncate
	.align	16, 0x90
	.type	gimp_value_array_truncate,@function
gimp_value_array_truncate:              # @gimp_value_array_truncate
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB19_3
# BB#2:                                 # %if.then
	jmp	.LBB19_4
.LBB19_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_value_array_truncate, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_15
.LBB19_4:                               # %if.end
	jmp	.LBB19_5
.LBB19_5:                               # %do.end
	jmp	.LBB19_6
.LBB19_6:                               # %do.body.1
	cmpl	$0, -12(%rbp)
	jle	.LBB19_9
# BB#7:                                 # %land.lhs.true
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	ja	.LBB19_9
# BB#8:                                 # %if.then.5
	jmp	.LBB19_10
.LBB19_9:                               # %if.else.6
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_value_array_truncate, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_15
.LBB19_10:                              # %if.end.7
	jmp	.LBB19_11
.LBB19_11:                              # %do.end.8
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB19_12:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.LBB19_15
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB19_12 Depth=1
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %esi
	callq	g_value_array_remove
	movq	%rax, -24(%rbp)         # 8-byte Spill
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB19_12 Depth=1
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB19_12
.LBB19_15:                              # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_value_array_truncate, .Lfunc_end19-gimp_value_array_truncate
	.cfi_endproc

	.globl	gimp_get_temp_filename
	.align	16, 0x90
	.type	gimp_get_temp_filename,@function
gimp_get_temp_filename:                 # @gimp_get_temp_filename
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_get_temp_filename, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB20_18
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	cmpl	$0, gimp_get_temp_filename.id
	jne	.LBB20_14
# BB#13:                                # %if.then.12
	callq	get_pid
	movl	%eax, gimp_get_temp_filename.pid
.LBB20_14:                              # %if.end.14
	cmpq	$0, -24(%rbp)
	je	.LBB20_16
# BB#15:                                # %if.then.16
	movabsq	$.L.str.17, %rdi
	movl	gimp_get_temp_filename.pid, %esi
	movl	gimp_get_temp_filename.id, %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, gimp_get_temp_filename.id
	movq	-24(%rbp), %rcx
	movl	%eax, %edx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -40(%rbp)
	jmp	.LBB20_17
.LBB20_16:                              # %if.else.18
	movabsq	$.L.str.18, %rdi
	movl	gimp_get_temp_filename.pid, %esi
	movl	gimp_get_temp_filename.id, %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, gimp_get_temp_filename.id
	movl	%eax, %edx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -40(%rbp)
.LBB20_17:                              # %if.end.21
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_base_config_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	24(%rax), %rdi
	callq	gimp_config_path_expand
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB20_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_get_temp_filename, .Lfunc_end20-gimp_get_temp_filename
	.cfi_endproc

	.globl	gimp_markup_extract_text
	.align	16, 0x90
	.type	gimp_markup_extract_text,@function
gimp_markup_extract_text:               # @gimp_markup_extract_text
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -36(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB21_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB21_15
.LBB21_2:                               # %if.end
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	g_string_new
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB21_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB21_14
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB21_3 Depth=1
	cmpl	$0, -36(%rbp)
	je	.LBB21_8
# BB#5:                                 # %if.then.3
                                        #   in Loop: Header=BB21_3 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$62, %ecx
	jne	.LBB21_7
# BB#6:                                 # %if.then.5
                                        #   in Loop: Header=BB21_3 Depth=1
	movl	$0, -36(%rbp)
.LBB21_7:                               # %if.end.6
                                        #   in Loop: Header=BB21_3 Depth=1
	jmp	.LBB21_12
.LBB21_8:                               # %if.else
                                        #   in Loop: Header=BB21_3 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$60, %ecx
	jne	.LBB21_10
# BB#9:                                 # %if.then.10
                                        #   in Loop: Header=BB21_3 Depth=1
	movl	$1, -36(%rbp)
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.11
                                        #   in Loop: Header=BB21_3 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movsbl	(%rax), %esi
	callq	g_string_append_c_inline
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB21_11:                              # %if.end.13
                                        #   in Loop: Header=BB21_3 Depth=1
	jmp	.LBB21_12
.LBB21_12:                              # %if.end.14
                                        #   in Loop: Header=BB21_3 Depth=1
	jmp	.LBB21_13
.LBB21_13:                              # %for.inc
                                        #   in Loop: Header=BB21_3 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB21_3
.LBB21_14:                              # %for.end
	movq	-24(%rbp), %rdi
	callq	unescape_gstring
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	g_string_free
	movq	%rax, -8(%rbp)
.LBB21_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_markup_extract_text, .Lfunc_end21-gimp_markup_extract_text
	.cfi_endproc

	.align	16, 0x90
	.type	g_string_append_c_inline,@function
g_string_append_c_inline:               # @g_string_append_c_inline
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
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	addq	$1, %rdi
	movq	-8(%rbp), %rcx
	cmpq	16(%rcx), %rdi
	jae	.LBB22_2
# BB#1:                                 # %if.then
	movb	-9(%rbp), %al
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 8(%rcx)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	%al, (%rcx,%rdx)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movb	$0, (%rdx,%rcx)
	jmp	.LBB22_3
.LBB22_2:                               # %if.else
	movq	$-1, %rsi
	movq	-8(%rbp), %rdi
	movsbl	-9(%rbp), %edx
	callq	g_string_insert_c
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB22_3:                               # %if.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	g_string_append_c_inline, .Lfunc_end22-g_string_append_c_inline
	.cfi_endproc

	.align	16, 0x90
	.type	unescape_gstring,@function
unescape_gstring:                       # @unescape_gstring
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	%rdi, -24(%rbp)
.LBB23_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB23_48
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-24(%rbp), %rax
	movb	(%rax), %cl
	movq	-32(%rbp), %rax
	movb	%cl, (%rax)
	movq	-32(%rbp), %rax
	movsbl	(%rax), %edx
	cmpl	$13, %edx
	jne	.LBB23_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-32(%rbp), %rax
	movb	$10, (%rax)
	movq	-24(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB23_5
# BB#4:                                 # %if.then.8
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
.LBB23_5:                               # %if.end
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_6
.LBB23_6:                               # %if.end.9
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$38, %ecx
	jne	.LBB23_46
# BB#7:                                 # %if.then.13
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$35, %ecx
	jne	.LBB23_29
# BB#8:                                 # %if.then.18
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	$0, -36(%rbp)
	movq	$0, -56(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$120, %ecx
	jne	.LBB23_10
# BB#9:                                 # %if.then.23
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	$1, -36(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
.LBB23_10:                              # %if.end.25
                                        #   in Loop: Header=BB23_1 Depth=1
	callq	__errno_location
	movl	$0, (%rax)
	cmpl	$0, -36(%rbp)
	je	.LBB23_12
# BB#11:                                # %if.then.26
                                        #   in Loop: Header=BB23_1 Depth=1
	leaq	-56(%rbp), %rsi
	movl	$16, %edx
	movq	-24(%rbp), %rdi
	callq	strtoul
	movq	%rax, -48(%rbp)
	jmp	.LBB23_13
.LBB23_12:                              # %if.else
                                        #   in Loop: Header=BB23_1 Depth=1
	leaq	-56(%rbp), %rsi
	movl	$10, %edx
	movq	-24(%rbp), %rdi
	callq	strtoul
	movq	%rax, -48(%rbp)
.LBB23_13:                              # %if.end.29
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-56(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB23_15
# BB#14:                                # %lor.lhs.false
                                        #   in Loop: Header=BB23_1 Depth=1
	callq	__errno_location
	cmpl	$0, (%rax)
	je	.LBB23_16
.LBB23_15:                              # %if.then.35
	movl	$0, -4(%rbp)
	jmp	.LBB23_56
.LBB23_16:                              # %if.else.36
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-56(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$59, %ecx
	je	.LBB23_18
# BB#17:                                # %if.then.40
	movl	$0, -4(%rbp)
	jmp	.LBB23_56
.LBB23_18:                              # %if.else.41
                                        #   in Loop: Header=BB23_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-48(%rbp), %rcx
	jae	.LBB23_20
# BB#19:                                # %land.lhs.true
                                        #   in Loop: Header=BB23_1 Depth=1
	cmpq	$55295, -48(%rbp)       # imm = 0xD7FF
	jbe	.LBB23_24
.LBB23_20:                              # %lor.lhs.false.46
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	$57344, %eax            # imm = 0xE000
	movl	%eax, %ecx
	cmpq	-48(%rbp), %rcx
	ja	.LBB23_22
# BB#21:                                # %land.lhs.true.49
                                        #   in Loop: Header=BB23_1 Depth=1
	cmpq	$65533, -48(%rbp)       # imm = 0xFFFD
	jbe	.LBB23_24
.LBB23_22:                              # %lor.lhs.false.52
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	$65536, %eax            # imm = 0x10000
	movl	%eax, %ecx
	cmpq	-48(%rbp), %rcx
	ja	.LBB23_25
# BB#23:                                # %land.lhs.true.55
                                        #   in Loop: Header=BB23_1 Depth=1
	cmpq	$1114111, -48(%rbp)     # imm = 0x10FFFF
	ja	.LBB23_25
.LBB23_24:                              # %if.then.58
                                        #   in Loop: Header=BB23_1 Depth=1
	leaq	-64(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, %edi
	callq	char_str
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	strcpy
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	strlen
	subq	$1, %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB23_26
.LBB23_25:                              # %if.else.65
	movl	$0, -4(%rbp)
	jmp	.LBB23_56
.LBB23_26:                              # %if.end.66
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_27
.LBB23_27:                              # %if.end.67
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_28
.LBB23_28:                              # %if.end.68
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_45
.LBB23_29:                              # %if.else.69
                                        #   in Loop: Header=BB23_1 Depth=1
	movabsq	$.L.str.19, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB23_31
# BB#30:                                # %if.then.73
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-32(%rbp), %rax
	movb	$60, (%rax)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB23_44
.LBB23_31:                              # %if.else.75
                                        #   in Loop: Header=BB23_1 Depth=1
	movabsq	$.L.str.20, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB23_33
# BB#32:                                # %if.then.79
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-32(%rbp), %rax
	movb	$62, (%rax)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB23_43
.LBB23_33:                              # %if.else.81
                                        #   in Loop: Header=BB23_1 Depth=1
	movabsq	$.L.str.21, %rsi
	movl	$4, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB23_35
# BB#34:                                # %if.then.85
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-32(%rbp), %rax
	movb	$38, (%rax)
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB23_42
.LBB23_35:                              # %if.else.87
                                        #   in Loop: Header=BB23_1 Depth=1
	movabsq	$.L.str.22, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB23_37
# BB#36:                                # %if.then.91
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-32(%rbp), %rax
	movb	$34, (%rax)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB23_41
.LBB23_37:                              # %if.else.93
                                        #   in Loop: Header=BB23_1 Depth=1
	movabsq	$.L.str.23, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB23_39
# BB#38:                                # %if.then.97
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-32(%rbp), %rax
	movb	$39, (%rax)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB23_40
.LBB23_39:                              # %if.else.99
	movl	$0, -4(%rbp)
	jmp	.LBB23_56
.LBB23_40:                              # %if.end.100
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_41
.LBB23_41:                              # %if.end.101
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_42
.LBB23_42:                              # %if.end.102
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_43
.LBB23_43:                              # %if.end.103
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_44
.LBB23_44:                              # %if.end.104
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_45
.LBB23_45:                              # %if.end.105
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_46
.LBB23_46:                              # %if.end.106
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_47
.LBB23_47:                              # %for.inc
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB23_1
.LBB23_48:                              # %for.end
	jmp	.LBB23_49
.LBB23_49:                              # %do.body
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	ja	.LBB23_51
# BB#50:                                # %if.then.112
	jmp	.LBB23_52
.LBB23_51:                              # %if.else.113
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$646, %edx              # imm = 0x286
	movabsq	$.L__func__.unescape_gstring, %rcx
	movabsq	$.L.str.24, %r8
	callq	g_assertion_message_expr
.LBB23_52:                              # %if.end.114
	jmp	.LBB23_53
.LBB23_53:                              # %do.end
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	je	.LBB23_55
# BB#54:                                # %if.then.122
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	g_string_truncate
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB23_55:                              # %if.end.128
	movl	$1, -4(%rbp)
.LBB23_56:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	unescape_gstring, .Lfunc_end23-unescape_gstring
	.cfi_endproc

	.globl	gimp_enum_get_value_name
	.align	16, 0x90
	.type	gimp_enum_get_value_name,@function
gimp_enum_get_value_name:               # @gimp_enum_get_value_name
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
	subq	$48, %rsp
	leaq	-24(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	movq	-32(%rbp), %r8          # 8-byte Reload
	movq	-32(%rbp), %r9          # 8-byte Reload
	callq	gimp_enum_get_value
	movq	-24(%rbp), %rcx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movq	%rcx, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_enum_get_value_name, .Lfunc_end24-gimp_enum_get_value_name
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI25_0:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
.LCPI25_1:
	.quad	4614256656552045848     # double 3.1415926535897931
	.text
	.globl	gimp_constrain_line
	.align	16, 0x90
	.type	gimp_constrain_line,@function
gimp_constrain_line:                    # @gimp_constrain_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movsd	.LCPI25_0, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	-24(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movq	-32(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm2, -112(%rbp)
	movl	$0, -132(%rbp)
.LBB25_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-132(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB25_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB25_1 Depth=1
	leaq	-104(%rbp), %rdi
	movsd	.LCPI25_1, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-132(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-36(%rbp), %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	cos
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_vector2_set
	leaq	-72(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	callq	gimp_utils_point_to_line_distance
	movsd	%xmm0, -120(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB25_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB25_1 Depth=1
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB25_4:                               # %if.end
                                        #   in Loop: Header=BB25_1 Depth=1
	jmp	.LBB25_5
.LBB25_5:                               # %for.inc
                                        #   in Loop: Header=BB25_1 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB25_1
.LBB25_6:                               # %for.end
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_constrain_line, .Lfunc_end25-gimp_constrain_line
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_utils_point_to_line_distance,@function
gimp_utils_point_to_line_distance:      # @gimp_utils_point_to_line_distance
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	leaq	-64(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_vector2_sub
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_vector2_inner_product
	movsd	%xmm0, -88(%rbp)
	movq	-24(%rbp), %rax
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	gimp_vector2_mul_val
	movsd	%xmm0, -104(%rbp)
	movsd	%xmm1, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-72(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_vector2_add_val
	leaq	-48(%rbp), %rdi
	movsd	%xmm0, -120(%rbp)
	movsd	%xmm1, -112(%rbp)
	movq	-120(%rbp), %rax
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-112(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdx
	callq	gimp_vector2_sub
	leaq	-48(%rbp), %rdi
	callq	gimp_vector2_length
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_utils_point_to_line_distance, .Lfunc_end26-gimp_utils_point_to_line_distance
	.cfi_endproc

	.align	16, 0x90
	.type	char_str,@function
char_str:                               # @char_str
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	$8, %ecx
	movl	%ecx, %edx
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	callq	memset
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	g_unichar_to_utf8
	movq	-16(%rbp), %rdx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movq	%rdx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	char_str, .Lfunc_end27-char_str
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_g_hash_table_get_memsize_foreach,@object # @__func__.gimp_g_hash_table_get_memsize_foreach
.L__func__.gimp_g_hash_table_get_memsize_foreach:
	.asciz	"gimp_g_hash_table_get_memsize_foreach"
	.size	.L__func__.gimp_g_hash_table_get_memsize_foreach, 38

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"func != NULL"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_g_slist_get_memsize_foreach,@object # @__func__.gimp_g_slist_get_memsize_foreach
.L__func__.gimp_g_slist_get_memsize_foreach:
	.asciz	"gimp_g_slist_get_memsize_foreach"
	.size	.L__func__.gimp_g_slist_get_memsize_foreach, 33

	.type	.L__func__.gimp_g_list_get_memsize_foreach,@object # @__func__.gimp_g_list_get_memsize_foreach
.L__func__.gimp_g_list_get_memsize_foreach:
	.asciz	"gimp_g_list_get_memsize_foreach"
	.size	.L__func__.gimp_g_list_get_memsize_foreach, 32

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s: unhandled boxed value type: %s\n"
	.size	.L.str.2, 36

	.type	.L__func__.gimp_g_value_get_memsize,@object # @__func__.gimp_g_value_get_memsize
.L__func__.gimp_g_value_get_memsize:
	.asciz	"gimp_g_value_get_memsize"
	.size	.L__func__.gimp_g_value_get_memsize, 25

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%s: unhandled object value type: %s\n"
	.size	.L.str.3, 37

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"LC_CTYPE"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"LC_MESSAGES"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"unsupported category used with gimp_get_default_language()"
	.size	.L.str.6, 59

	.type	.L__func__.gimp_parameters_append,@object # @__func__.gimp_parameters_append
.L__func__.gimp_parameters_append:
	.asciz	"gimp_parameters_append"
	.size	.L__func__.gimp_parameters_append, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"g_type_is_a (object_type, G_TYPE_OBJECT)"
	.size	.L.str.7, 41

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"n_params != NULL"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"params != NULL || *n_params == 0"
	.size	.L.str.9, 33

	.type	.L__func__.gimp_parameters_append_valist,@object # @__func__.gimp_parameters_append_valist
.L__func__.gimp_parameters_append_valist:
	.asciz	"gimp_parameters_append_valist"
	.size	.L__func__.gimp_parameters_append_valist, 30

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%s: object class `%s' has no property named `%s'"
	.size	.L.str.10, 49

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-utils.c"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%s: %s"
	.size	.L.str.12, 7

	.type	.L__func__.gimp_parameters_free,@object # @__func__.gimp_parameters_free
.L__func__.gimp_parameters_free:
	.asciz	"gimp_parameters_free"
	.size	.L__func__.gimp_parameters_free, 21

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"params != NULL || n_params == 0"
	.size	.L.str.13, 32

	.type	.L__func__.gimp_value_array_truncate,@object # @__func__.gimp_value_array_truncate
.L__func__.gimp_value_array_truncate:
	.asciz	"gimp_value_array_truncate"
	.size	.L__func__.gimp_value_array_truncate, 26

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"args != NULL"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"n_values > 0 && n_values <= args->n_values"
	.size	.L.str.15, 43

	.type	gimp_get_temp_filename.id,@object # @gimp_get_temp_filename.id
	.local	gimp_get_temp_filename.id
	.comm	gimp_get_temp_filename.id,4,4
	.type	gimp_get_temp_filename.pid,@object # @gimp_get_temp_filename.pid
	.local	gimp_get_temp_filename.pid
	.comm	gimp_get_temp_filename.pid,4,4
	.type	.L__func__.gimp_get_temp_filename,@object # @__func__.gimp_get_temp_filename
.L__func__.gimp_get_temp_filename:
	.asciz	"gimp_get_temp_filename"
	.size	.L__func__.gimp_get_temp_filename, 23

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.16, 20

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp-temp-%d%d.%s"
	.size	.L.str.17, 18

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-temp-%d%d"
	.size	.L.str.18, 15

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"lt;"
	.size	.L.str.19, 4

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gt;"
	.size	.L.str.20, 4

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"amp;"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"quot;"
	.size	.L.str.22, 6

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"apos;"
	.size	.L.str.23, 6

	.type	.L__func__.unescape_gstring,@object # @__func__.unescape_gstring
.L__func__.unescape_gstring:
	.asciz	"unescape_gstring"
	.size	.L__func__.unescape_gstring, 17

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"to - string->str <= string->len"
	.size	.L.str.24, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
