	.text
	.file	"gimppdb-query.bc"
	.globl	gimp_pdb_dump
	.align	16, 0x90
	.type	gimp_pdb_dump,@function
gimp_pdb_dump:                          # @gimp_pdb_dump
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_pdb_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_dump, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_20
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB0_15
# BB#14:                                # %if.then.13
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_dump, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_20
.LBB0_16:                               # %if.end.15
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.16
	movabsq	$.L.str.3, %rsi
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	fopen
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_19
# BB#18:                                # %if.then.21
	movl	$0, -4(%rbp)
	jmp	.LBB0_20
.LBB0_19:                               # %if.end.22
	movabsq	$gimp_pdb_print_entry, %rsi
	leaq	-48(%rbp), %rax
	movl	$0, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rdi
	movq	%rax, %rdx
	callq	g_hash_table_foreach
	movabsq	$gimp_pdb_print_entry, %rsi
	leaq	-48(%rbp), %rax
	movl	$1, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	%rax, %rdx
	callq	g_hash_table_foreach
	movq	-40(%rbp), %rdi
	callq	fclose
	movl	$1, -4(%rbp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB0_20:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_pdb_dump, .Lfunc_end0-gimp_pdb_dump
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_print_entry,@function
gimp_pdb_print_entry:                   # @gimp_pdb_print_entry
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
	subq	$400, %rsp              # imm = 0x190
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movl	$0, -84(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-32(%rbp), %rdx
	cmpl	$0, 16(%rdx)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -56(%rbp)
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB1_3:                                # %if.end
	callq	gimp_pdb_arg_type_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -64(%rbp)
	callq	gimp_pdb_proc_type_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movabsq	$.L.str.16, %rdi
	movq	%rax, -72(%rbp)
	callq	g_string_new
	movq	%rax, -80(%rbp)
.LBB1_4:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
                                        #     Child Loop BB1_13 Depth 2
	cmpq	$0, -56(%rbp)
	je	.LBB1_18
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB1_4 Depth=1
	leaq	-144(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movl	-84(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -84(%rbp)
	movq	-96(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	16(%rax), %edx
	callq	gimp_pdb_get_strings
	movabsq	$.L.str.17, %rsi
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	cmpl	$1, -84(%rbp)
	movl	%eax, -220(%rbp)        # 4-byte Spill
	je	.LBB1_7
# BB#6:                                 # %if.then.10
                                        #   in Loop: Header=BB1_4 Depth=1
	movabsq	$.L.str.18, %rsi
	movq	-80(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movl	-84(%rbp), %ecx
	movb	$0, %al
	callq	g_string_printf
	movq	-40(%rbp), %rdi
	movq	-80(%rbp), %rdx
	movq	(%rdx), %rsi
	callq	output_string
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB1_8
.LBB1_7:                                # %if.else.12
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	output_string
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB1_8:                                # %if.end.14
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	-72(%rbp), %rdi
	movq	-96(%rbp), %rax
	movl	32(%rax), %esi
	callq	gimp_enum_get_desc
	movabsq	$.L.str.19, %rsi
	movq	%rax, -160(%rbp)
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movq	-40(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movl	%eax, -232(%rbp)        # 4-byte Spill
	callq	output_string
	movabsq	$.L.str.19, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -236(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	-40(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movl	%eax, -240(%rbp)        # 4-byte Spill
	callq	output_string
	movabsq	$.L.str.19, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -244(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	-40(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movl	%eax, -248(%rbp)        # 4-byte Spill
	callq	output_string
	movabsq	$.L.str.19, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	-40(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movl	%eax, -256(%rbp)        # 4-byte Spill
	callq	output_string
	movabsq	$.L.str.19, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -260(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	-40(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movl	%eax, -264(%rbp)        # 4-byte Spill
	callq	output_string
	movabsq	$.L.str.19, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -268(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	-40(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movq	8(%rsi), %rsi
	movl	%eax, -272(%rbp)        # 4-byte Spill
	callq	output_string
	movabsq	$.L.str.20, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$0, -164(%rbp)
	movl	%eax, -280(%rbp)        # 4-byte Spill
.LBB1_9:                                # %for.cond.29
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-164(%rbp), %eax
	movq	-96(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jge	.LBB1_12
# BB#10:                                # %for.body.31
                                        #   in Loop: Header=BB1_9 Depth=2
	movslq	-164(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	104(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdi
	callq	gimp_param_spec_get_desc
	movabsq	$.L.str.21, %rsi
	movq	%rax, -192(%rbp)
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movq	-176(%rbp), %rcx
	movq	24(%rcx), %rdi
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	gimp_pdb_compat_arg_type_from_gtype
	movl	%eax, -180(%rbp)
	movq	-64(%rbp), %rdi
	movl	-180(%rbp), %esi
	callq	g_enum_get_value
	movabsq	$.L.str.22, %rsi
	movq	%rax, -152(%rbp)
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movq	-40(%rbp), %rdi
	movq	-176(%rbp), %rcx
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	g_param_spec_get_name
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	output_string
	movabsq	$.L.str.22, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -304(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	-40(%rbp), %rdi
	movq	-152(%rbp), %rcx
	movq	8(%rcx), %rsi
	movl	%eax, -308(%rbp)        # 4-byte Spill
	callq	output_string
	movabsq	$.L.str.22, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -312(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	-40(%rbp), %rdi
	movq	-192(%rbp), %rsi
	movl	%eax, -316(%rbp)        # 4-byte Spill
	callq	output_string
	movq	-192(%rbp), %rdi
	movl	%eax, -320(%rbp)        # 4-byte Spill
	callq	g_free
	movabsq	$.L.str.23, %rsi
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -324(%rbp)        # 4-byte Spill
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB1_9 Depth=2
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB1_9
.LBB1_12:                               # %for.end
                                        #   in Loop: Header=BB1_4 Depth=1
	movabsq	$.L.str.24, %rsi
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.20, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -328(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$0, -164(%rbp)
	movl	%eax, -332(%rbp)        # 4-byte Spill
.LBB1_13:                               # %for.cond.47
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-164(%rbp), %eax
	movq	-96(%rbp), %rcx
	cmpl	112(%rcx), %eax
	jge	.LBB1_16
# BB#14:                                # %for.body.49
                                        #   in Loop: Header=BB1_13 Depth=2
	movslq	-164(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rdi
	callq	gimp_param_spec_get_desc
	movabsq	$.L.str.21, %rsi
	movq	%rax, -216(%rbp)
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movq	-200(%rbp), %rcx
	movq	24(%rcx), %rdi
	movl	%eax, -336(%rbp)        # 4-byte Spill
	callq	gimp_pdb_compat_arg_type_from_gtype
	movl	%eax, -204(%rbp)
	movq	-64(%rbp), %rdi
	movl	-204(%rbp), %esi
	callq	g_enum_get_value
	movabsq	$.L.str.22, %rsi
	movq	%rax, -152(%rbp)
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movq	-40(%rbp), %rdi
	movq	-200(%rbp), %rcx
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movl	%eax, -348(%rbp)        # 4-byte Spill
	callq	g_param_spec_get_name
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	output_string
	movabsq	$.L.str.22, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -352(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	-40(%rbp), %rdi
	movq	-152(%rbp), %rcx
	movq	8(%rcx), %rsi
	movl	%eax, -356(%rbp)        # 4-byte Spill
	callq	output_string
	movabsq	$.L.str.22, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -360(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	-40(%rbp), %rdi
	movq	-216(%rbp), %rsi
	movl	%eax, -364(%rbp)        # 4-byte Spill
	callq	output_string
	movq	-216(%rbp), %rdi
	movl	%eax, -368(%rbp)        # 4-byte Spill
	callq	g_free
	movabsq	$.L.str.23, %rsi
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -372(%rbp)        # 4-byte Spill
# BB#15:                                # %for.inc.69
                                        #   in Loop: Header=BB1_13 Depth=2
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB1_13
.LBB1_16:                               # %for.end.71
                                        #   in Loop: Header=BB1_4 Depth=1
	movabsq	$.L.str.25, %rsi
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.26, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -376(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	leaq	-144(%rbp), %rdi
	movl	%eax, -380(%rbp)        # 4-byte Spill
	callq	gimp_pdb_free_strings
# BB#17:                                # %for.inc.74
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB1_4
.LBB1_18:                               # %for.end.75
	movl	$1, %esi
	movq	-80(%rbp), %rdi
	callq	g_string_free
	movq	-64(%rbp), %rdi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	g_type_class_unref
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_unref
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_pdb_print_entry, .Lfunc_end1-gimp_pdb_print_entry
	.cfi_endproc

	.globl	gimp_pdb_query
	.align	16, 0x90
	.type	gimp_pdb_query,@function
gimp_pdb_query:                         # @gimp_pdb_query
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$216, %rsp
.Ltmp9:
	.cfi_offset %rbx, -56
.Ltmp10:
	.cfi_offset %r12, -48
.Ltmp11:
	.cfi_offset %r13, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
	movq	48(%rbp), %rax
	movq	40(%rbp), %r10
	movq	32(%rbp), %r11
	movq	24(%rbp), %rbx
	movq	16(%rbp), %r14
	xorl	%r15d, %r15d
	movl	$80, %r12d
	movl	%r12d, %r13d
	leaq	-216(%rbp), %r12
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	%r14, -104(%rbp)
	movq	%rbx, -112(%rbp)
	movq	%r11, -120(%rbp)
	movq	%r10, -128(%rbp)
	movq	%rax, -136(%rbp)
	movq	%r12, %rdi
	movl	%r15d, %esi
	movq	%r13, %rdx
	callq	memset
	movl	$0, -220(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)
	callq	gimp_pdb_get_type
	movq	%rax, -240(%rbp)
	cmpq	$0, -232(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -244(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-232(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-240(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -244(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-232(%rbp), %rdi
	movq	-240(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -244(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-244(%rbp), %eax
	movl	%eax, -248(%rbp)
	cmpl	$0, -248(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_query, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -44(%rbp)
	jmp	.LBB2_95
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	cmpq	$0, -64(%rbp)
	je	.LBB2_15
# BB#14:                                # %if.then.13
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_query, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -44(%rbp)
	jmp	.LBB2_95
.LBB2_16:                               # %if.end.15
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.16
	jmp	.LBB2_18
.LBB2_18:                               # %do.body.17
	cmpq	$0, -72(%rbp)
	je	.LBB2_20
# BB#19:                                # %if.then.19
	jmp	.LBB2_21
.LBB2_20:                               # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_query, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -44(%rbp)
	jmp	.LBB2_95
.LBB2_21:                               # %if.end.21
	jmp	.LBB2_22
.LBB2_22:                               # %do.end.22
	jmp	.LBB2_23
.LBB2_23:                               # %do.body.23
	cmpq	$0, -80(%rbp)
	je	.LBB2_25
# BB#24:                                # %if.then.25
	jmp	.LBB2_26
.LBB2_25:                               # %if.else.26
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_query, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -44(%rbp)
	jmp	.LBB2_95
.LBB2_26:                               # %if.end.27
	jmp	.LBB2_27
.LBB2_27:                               # %do.end.28
	jmp	.LBB2_28
.LBB2_28:                               # %do.body.29
	cmpq	$0, -88(%rbp)
	je	.LBB2_30
# BB#29:                                # %if.then.31
	jmp	.LBB2_31
.LBB2_30:                               # %if.else.32
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_query, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -44(%rbp)
	jmp	.LBB2_95
.LBB2_31:                               # %if.end.33
	jmp	.LBB2_32
.LBB2_32:                               # %do.end.34
	jmp	.LBB2_33
.LBB2_33:                               # %do.body.35
	cmpq	$0, -96(%rbp)
	je	.LBB2_35
# BB#34:                                # %if.then.37
	jmp	.LBB2_36
.LBB2_35:                               # %if.else.38
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_query, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -44(%rbp)
	jmp	.LBB2_95
.LBB2_36:                               # %if.end.39
	jmp	.LBB2_37
.LBB2_37:                               # %do.end.40
	jmp	.LBB2_38
.LBB2_38:                               # %do.body.41
	cmpq	$0, -104(%rbp)
	je	.LBB2_40
# BB#39:                                # %if.then.43
	jmp	.LBB2_41
.LBB2_40:                               # %if.else.44
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_query, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -44(%rbp)
	jmp	.LBB2_95
.LBB2_41:                               # %if.end.45
	jmp	.LBB2_42
.LBB2_42:                               # %do.end.46
	jmp	.LBB2_43
.LBB2_43:                               # %do.body.47
	cmpq	$0, -112(%rbp)
	je	.LBB2_45
# BB#44:                                # %if.then.49
	jmp	.LBB2_46
.LBB2_45:                               # %if.else.50
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_query, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -44(%rbp)
	jmp	.LBB2_95
.LBB2_46:                               # %if.end.51
	jmp	.LBB2_47
.LBB2_47:                               # %do.end.52
	jmp	.LBB2_48
.LBB2_48:                               # %do.body.53
	cmpq	$0, -120(%rbp)
	je	.LBB2_50
# BB#49:                                # %if.then.55
	jmp	.LBB2_51
.LBB2_50:                               # %if.else.56
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_query, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -44(%rbp)
	jmp	.LBB2_95
.LBB2_51:                               # %if.end.57
	jmp	.LBB2_52
.LBB2_52:                               # %do.end.58
	jmp	.LBB2_53
.LBB2_53:                               # %do.body.59
	cmpq	$0, -128(%rbp)
	je	.LBB2_55
# BB#54:                                # %if.then.61
	jmp	.LBB2_56
.LBB2_55:                               # %if.else.62
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_query, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -44(%rbp)
	jmp	.LBB2_95
.LBB2_56:                               # %if.end.63
	jmp	.LBB2_57
.LBB2_57:                               # %do.end.64
	jmp	.LBB2_58
.LBB2_58:                               # %do.body.65
	cmpq	$0, -136(%rbp)
	je	.LBB2_60
# BB#59:                                # %lor.lhs.false
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB2_61
.LBB2_60:                               # %if.then.68
	jmp	.LBB2_62
.LBB2_61:                               # %if.else.69
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_query, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -44(%rbp)
	jmp	.LBB2_95
.LBB2_62:                               # %if.end.70
	jmp	.LBB2_63
.LBB2_63:                               # %do.end.71
	movl	$8193, %esi             # imm = 0x2001
	xorl	%edx, %edx
	movq	-120(%rbp), %rax
	movl	$0, (%rax)
	movq	-128(%rbp), %rax
	movq	$0, (%rax)
	movq	-64(%rbp), %rdi
	movq	-136(%rbp), %rcx
	callq	g_regex_new
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.LBB2_65
# BB#64:                                # %if.then.75
	jmp	.LBB2_78
.LBB2_65:                               # %if.end.76
	movl	$8193, %esi             # imm = 0x2001
	xorl	%edx, %edx
	movq	-72(%rbp), %rdi
	movq	-136(%rbp), %rcx
	callq	g_regex_new
	movq	%rax, -200(%rbp)
	cmpq	$0, -200(%rbp)
	jne	.LBB2_67
# BB#66:                                # %if.then.80
	jmp	.LBB2_78
.LBB2_67:                               # %if.end.81
	movl	$8193, %esi             # imm = 0x2001
	xorl	%edx, %edx
	movq	-80(%rbp), %rdi
	movq	-136(%rbp), %rcx
	callq	g_regex_new
	movq	%rax, -192(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.LBB2_69
# BB#68:                                # %if.then.85
	jmp	.LBB2_78
.LBB2_69:                               # %if.end.86
	movl	$8193, %esi             # imm = 0x2001
	xorl	%edx, %edx
	movq	-88(%rbp), %rdi
	movq	-136(%rbp), %rcx
	callq	g_regex_new
	movq	%rax, -184(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.LBB2_71
# BB#70:                                # %if.then.90
	jmp	.LBB2_78
.LBB2_71:                               # %if.end.91
	movl	$8193, %esi             # imm = 0x2001
	xorl	%edx, %edx
	movq	-96(%rbp), %rdi
	movq	-136(%rbp), %rcx
	callq	g_regex_new
	movq	%rax, -176(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB2_73
# BB#72:                                # %if.then.95
	jmp	.LBB2_78
.LBB2_73:                               # %if.end.96
	movl	$8193, %esi             # imm = 0x2001
	xorl	%edx, %edx
	movq	-104(%rbp), %rdi
	movq	-136(%rbp), %rcx
	callq	g_regex_new
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB2_75
# BB#74:                                # %if.then.100
	jmp	.LBB2_78
.LBB2_75:                               # %if.end.101
	movl	$8193, %esi             # imm = 0x2001
	xorl	%edx, %edx
	movq	-112(%rbp), %rdi
	movq	-136(%rbp), %rcx
	callq	g_regex_new
	movq	%rax, -160(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB2_77
# BB#76:                                # %if.then.105
	jmp	.LBB2_78
.LBB2_77:                               # %if.end.106
	movabsq	$gimp_pdb_query_entry, %rsi
	leaq	-216(%rbp), %rax
	movl	$1, -220(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, -216(%rbp)
	movq	$0, -152(%rbp)
	movl	$0, -144(%rbp)
	movl	$0, -140(%rbp)
	movq	-56(%rbp), %rcx
	movq	40(%rcx), %rdi
	movq	%rax, %rdx
	callq	g_hash_table_foreach
	movabsq	$gimp_pdb_query_entry, %rsi
	leaq	-216(%rbp), %rax
	movl	$1, -140(%rbp)
	movq	-56(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	%rax, %rdx
	callq	g_hash_table_foreach
.LBB2_78:                               # %cleanup
	cmpq	$0, -160(%rbp)
	je	.LBB2_80
# BB#79:                                # %if.then.112
	movq	-160(%rbp), %rdi
	callq	g_regex_unref
.LBB2_80:                               # %if.end.114
	cmpq	$0, -168(%rbp)
	je	.LBB2_82
# BB#81:                                # %if.then.117
	movq	-168(%rbp), %rdi
	callq	g_regex_unref
.LBB2_82:                               # %if.end.119
	cmpq	$0, -176(%rbp)
	je	.LBB2_84
# BB#83:                                # %if.then.122
	movq	-176(%rbp), %rdi
	callq	g_regex_unref
.LBB2_84:                               # %if.end.124
	cmpq	$0, -184(%rbp)
	je	.LBB2_86
# BB#85:                                # %if.then.127
	movq	-184(%rbp), %rdi
	callq	g_regex_unref
.LBB2_86:                               # %if.end.129
	cmpq	$0, -192(%rbp)
	je	.LBB2_88
# BB#87:                                # %if.then.132
	movq	-192(%rbp), %rdi
	callq	g_regex_unref
.LBB2_88:                               # %if.end.134
	cmpq	$0, -200(%rbp)
	je	.LBB2_90
# BB#89:                                # %if.then.137
	movq	-200(%rbp), %rdi
	callq	g_regex_unref
.LBB2_90:                               # %if.end.139
	cmpq	$0, -208(%rbp)
	je	.LBB2_92
# BB#91:                                # %if.then.142
	movq	-208(%rbp), %rdi
	callq	g_regex_unref
.LBB2_92:                               # %if.end.144
	cmpl	$0, -220(%rbp)
	je	.LBB2_94
# BB#93:                                # %if.then.146
	movl	-144(%rbp), %eax
	movq	-120(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-152(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movq	%rcx, (%rdx)
.LBB2_94:                               # %if.end.149
	movl	-220(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB2_95:                               # %return
	movl	-44(%rbp), %eax
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_pdb_query, .Lfunc_end2-gimp_pdb_query
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_query_entry,@function
gimp_pdb_query_entry:                   # @gimp_pdb_query_entry
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movq	-32(%rbp), %rdx
	cmpl	$0, 76(%rdx)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -40(%rbp)
	jmp	.LBB3_3
.LBB3_2:                                # %if.else
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB3_3:                                # %if.end
	cmpq	$0, -40(%rbp)
	jne	.LBB3_5
# BB#4:                                 # %if.then.2
	jmp	.LBB3_14
.LBB3_5:                                # %if.end.3
	leaq	-104(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	76(%rax), %edx
	callq	gimp_pdb_get_strings
	callq	gimp_pdb_proc_type_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	32(%rax), %esi
	callq	gimp_enum_get_desc
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_unref
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	match_string
	cmpl	$0, %eax
	je	.LBB3_13
# BB#6:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-96(%rbp), %rsi
	callq	match_string
	cmpl	$0, %eax
	je	.LBB3_13
# BB#7:                                 # %land.lhs.true.12
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-88(%rbp), %rsi
	callq	match_string
	cmpl	$0, %eax
	je	.LBB3_13
# BB#8:                                 # %land.lhs.true.15
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-80(%rbp), %rsi
	callq	match_string
	cmpl	$0, %eax
	je	.LBB3_13
# BB#9:                                 # %land.lhs.true.18
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-72(%rbp), %rsi
	callq	match_string
	cmpl	$0, %eax
	je	.LBB3_13
# BB#10:                                # %land.lhs.true.21
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	match_string
	cmpl	$0, %eax
	je	.LBB3_13
# BB#11:                                # %land.lhs.true.24
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-120(%rbp), %rax
	movq	8(%rax), %rsi
	callq	match_string
	cmpl	$0, %eax
	je	.LBB3_13
# BB#12:                                # %if.then.27
	movl	$8, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movl	72(%rcx), %eax
	addl	$1, %eax
	movl	%eax, 72(%rcx)
	movq	-32(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	-32(%rbp), %rsi
	movslq	72(%rsi), %rsi
	movq	%rcx, %rdi
	callq	g_realloc_n
	movq	-32(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-56(%rbp), %rdi
	callq	g_strdup
	movq	-32(%rbp), %rcx
	movl	72(%rcx), %r8d
	subl	$1, %r8d
	movslq	%r8d, %rcx
	movq	-32(%rbp), %rdx
	movq	64(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB3_13:                               # %if.end.34
	leaq	-104(%rbp), %rdi
	callq	gimp_pdb_free_strings
.LBB3_14:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_pdb_query_entry, .Lfunc_end3-gimp_pdb_query_entry
	.cfi_endproc

	.globl	gimp_pdb_proc_info
	.align	16, 0x90
	.type	gimp_pdb_proc_info,@function
gimp_pdb_proc_info:                     # @gimp_pdb_proc_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$240, %rsp
.Ltmp20:
	.cfi_offset %rbx, -32
.Ltmp21:
	.cfi_offset %r14, -24
	movq	48(%rbp), %rax
	movq	40(%rbp), %r10
	movq	32(%rbp), %r11
	movq	24(%rbp), %rbx
	movq	16(%rbp), %r14
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movq	%r14, -80(%rbp)
	movq	%rbx, -88(%rbp)
	movq	%r11, -96(%rbp)
	movq	%r10, -104(%rbp)
	movq	%rax, -112(%rbp)
# BB#1:                                 # %do.body
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)
	callq	gimp_pdb_get_type
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -188(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -188(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -188(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_proc_info, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -20(%rbp)
	jmp	.LBB4_48
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -40(%rbp)
	je	.LBB4_15
# BB#14:                                # %if.then.13
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_proc_info, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -20(%rbp)
	jmp	.LBB4_48
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	jmp	.LBB4_18
.LBB4_18:                               # %do.body.17
	cmpq	$0, -112(%rbp)
	je	.LBB4_20
# BB#19:                                # %lor.lhs.false
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB4_21
.LBB4_20:                               # %if.then.20
	jmp	.LBB4_22
.LBB4_21:                               # %if.else.21
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_proc_info, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -20(%rbp)
	jmp	.LBB4_48
.LBB4_22:                               # %if.end.22
	jmp	.LBB4_23
.LBB4_23:                               # %do.end.23
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_pdb_lookup_procedure
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB4_25
# BB#24:                                # %if.then.26
	leaq	-168(%rbp), %rdi
	xorl	%edx, %edx
	movq	-120(%rbp), %rsi
	callq	gimp_pdb_get_strings
	jmp	.LBB4_30
.LBB4_25:                               # %if.else.27
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_pdb_lookup_compat_proc_name
	movq	%rax, -200(%rbp)
	cmpq	$0, -200(%rbp)
	je	.LBB4_29
# BB#26:                                # %if.then.31
	movq	-32(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	gimp_pdb_lookup_procedure
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB4_28
# BB#27:                                # %if.then.34
	leaq	-168(%rbp), %rdi
	movl	$1, %edx
	movq	-120(%rbp), %rsi
	callq	gimp_pdb_get_strings
.LBB4_28:                               # %if.end.35
	jmp	.LBB4_29
.LBB4_29:                               # %if.end.36
	jmp	.LBB4_30
.LBB4_30:                               # %if.end.37
	cmpq	$0, -120(%rbp)
	je	.LBB4_47
# BB#31:                                # %if.then.39
	cmpl	$0, -168(%rbp)
	je	.LBB4_33
# BB#32:                                # %cond.true
	movq	-160(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB4_34
.LBB4_33:                               # %cond.false
	movq	-160(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB4_34:                               # %cond.end
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpl	$0, -168(%rbp)
	je	.LBB4_36
# BB#35:                                # %cond.true.46
	movq	-152(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB4_37
.LBB4_36:                               # %cond.false.48
	movq	-152(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB4_37:                               # %cond.end.51
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpl	$0, -168(%rbp)
	je	.LBB4_39
# BB#38:                                # %cond.true.55
	movq	-144(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB4_40
.LBB4_39:                               # %cond.false.57
	movq	-144(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB4_40:                               # %cond.end.60
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpl	$0, -168(%rbp)
	je	.LBB4_42
# BB#41:                                # %cond.true.64
	movq	-136(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB4_43
.LBB4_42:                               # %cond.false.66
	movq	-136(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB4_43:                               # %cond.end.69
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpl	$0, -168(%rbp)
	je	.LBB4_45
# BB#44:                                # %cond.true.73
	movq	-128(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB4_46
.LBB4_45:                               # %cond.false.75
	movq	-128(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB4_46:                               # %cond.end.78
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-120(%rbp), %rax
	movl	32(%rax), %edx
	movq	-88(%rbp), %rax
	movl	%edx, (%rax)
	movq	-120(%rbp), %rax
	movl	96(%rax), %edx
	movq	-96(%rbp), %rax
	movl	%edx, (%rax)
	movq	-120(%rbp), %rax
	movl	112(%rax), %edx
	movq	-104(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, -20(%rbp)
	jmp	.LBB4_48
.LBB4_47:                               # %if.end.83
	movq	-112(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.15, %rdi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$2, %edx
	movq	-40(%rbp), %r8
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movl	-252(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movl	$0, -20(%rbp)
.LBB4_48:                               # %return
	movl	-20(%rbp), %eax
	addq	$240, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_pdb_proc_info, .Lfunc_end4-gimp_pdb_proc_info
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_get_strings,@function
gimp_pdb_get_strings:                   # @gimp_pdb_get_strings
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rsi
	movl	%edx, (%rsi)
	cmpl	$0, -20(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movabsq	$.L.str.35, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	-8(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	jmp	.LBB5_3
.LBB5_2:                                # %if.else
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
.LBB5_3:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_pdb_get_strings, .Lfunc_end5-gimp_pdb_get_strings
	.cfi_endproc

	.align	16, 0x90
	.type	match_string,@function
match_string:                           # @match_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.16, %rax
	movq	%rax, -16(%rbp)
.LBB6_2:                                # %if.end
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	g_regex_match
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	match_string, .Lfunc_end6-match_string
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_free_strings,@function
gimp_pdb_free_strings:                  # @gimp_pdb_free_strings
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, (%rdi)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
.LBB7_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_pdb_free_strings, .Lfunc_end7-gimp_pdb_free_strings
	.cfi_endproc

	.align	16, 0x90
	.type	output_string,@function
output_string:                          # @output_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$.L.str.27, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	cmpl	$0, %eax
	jge	.LBB8_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB8_29
.LBB8_2:                                # %if.end
	cmpq	$0, -24(%rbp)
	je	.LBB8_26
# BB#3:                                 # %if.then.1
	jmp	.LBB8_4
.LBB8_4:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB8_25
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB8_4 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$34, %edx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	movl	%edx, -32(%rbp)         # 4-byte Spill
	je	.LBB8_9
	jmp	.LBB8_30
.LBB8_30:                               # %while.body
                                        #   in Loop: Header=BB8_4 Depth=1
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$64, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB8_15
	jmp	.LBB8_31
.LBB8_31:                               # %while.body
                                        #   in Loop: Header=BB8_4 Depth=1
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$92, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB8_6
	jmp	.LBB8_32
.LBB8_32:                               # %while.body
                                        #   in Loop: Header=BB8_4 Depth=1
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$123, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB8_12
	jmp	.LBB8_33
.LBB8_33:                               # %while.body
                                        #   in Loop: Header=BB8_4 Depth=1
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$125, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB8_18
	jmp	.LBB8_21
.LBB8_6:                                # %sw.bb
                                        #   in Loop: Header=BB8_4 Depth=1
	movabsq	$.L.str.28, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	cmpl	$0, %eax
	jge	.LBB8_8
# BB#7:                                 # %if.then.6
	movl	$0, -4(%rbp)
	jmp	.LBB8_29
.LBB8_8:                                # %if.end.7
                                        #   in Loop: Header=BB8_4 Depth=1
	jmp	.LBB8_24
.LBB8_9:                                # %sw.bb.8
                                        #   in Loop: Header=BB8_4 Depth=1
	movabsq	$.L.str.29, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	cmpl	$0, %eax
	jge	.LBB8_11
# BB#10:                                # %if.then.12
	movl	$0, -4(%rbp)
	jmp	.LBB8_29
.LBB8_11:                               # %if.end.13
                                        #   in Loop: Header=BB8_4 Depth=1
	jmp	.LBB8_24
.LBB8_12:                               # %sw.bb.14
                                        #   in Loop: Header=BB8_4 Depth=1
	movabsq	$.L.str.30, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	cmpl	$0, %eax
	jge	.LBB8_14
# BB#13:                                # %if.then.18
	movl	$0, -4(%rbp)
	jmp	.LBB8_29
.LBB8_14:                               # %if.end.19
                                        #   in Loop: Header=BB8_4 Depth=1
	jmp	.LBB8_24
.LBB8_15:                               # %sw.bb.20
                                        #   in Loop: Header=BB8_4 Depth=1
	movabsq	$.L.str.31, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	cmpl	$0, %eax
	jge	.LBB8_17
# BB#16:                                # %if.then.24
	movl	$0, -4(%rbp)
	jmp	.LBB8_29
.LBB8_17:                               # %if.end.25
                                        #   in Loop: Header=BB8_4 Depth=1
	jmp	.LBB8_24
.LBB8_18:                               # %sw.bb.26
                                        #   in Loop: Header=BB8_4 Depth=1
	movabsq	$.L.str.32, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	cmpl	$0, %eax
	jge	.LBB8_20
# BB#19:                                # %if.then.30
	movl	$0, -4(%rbp)
	jmp	.LBB8_29
.LBB8_20:                               # %if.end.31
                                        #   in Loop: Header=BB8_4 Depth=1
	jmp	.LBB8_24
.LBB8_21:                               # %sw.default
                                        #   in Loop: Header=BB8_4 Depth=1
	movabsq	$.L.str.33, %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsbl	(%rax), %edx
	movb	$0, %al
	callq	fprintf
	cmpl	$0, %eax
	jge	.LBB8_23
# BB#22:                                # %if.then.36
	movl	$0, -4(%rbp)
	jmp	.LBB8_29
.LBB8_23:                               # %if.end.37
                                        #   in Loop: Header=BB8_4 Depth=1
	jmp	.LBB8_24
.LBB8_24:                               # %sw.epilog
                                        #   in Loop: Header=BB8_4 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB8_4
.LBB8_25:                               # %while.end
	jmp	.LBB8_26
.LBB8_26:                               # %if.end.38
	movabsq	$.L.str.34, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	cmpl	$0, %eax
	jge	.LBB8_28
# BB#27:                                # %if.then.42
	movl	$0, -4(%rbp)
	jmp	.LBB8_29
.LBB8_28:                               # %if.end.43
	movl	$1, -4(%rbp)
.LBB8_29:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	output_string, .Lfunc_end8-output_string
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-PDB"
	.size	.L.str, 9

	.type	.L__func__.gimp_pdb_dump,@object # @__func__.gimp_pdb_dump
.L__func__.gimp_pdb_dump:
	.asciz	"gimp_pdb_dump"
	.size	.L__func__.gimp_pdb_dump, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_PDB (pdb)"
	.size	.L.str.1, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"filename != NULL"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"w"
	.size	.L.str.3, 2

	.type	.L__func__.gimp_pdb_query,@object # @__func__.gimp_pdb_query
.L__func__.gimp_pdb_query:
	.asciz	"gimp_pdb_query"
	.size	.L__func__.gimp_pdb_query, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"name != NULL"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"blurb != NULL"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"help != NULL"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"author != NULL"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"copyright != NULL"
	.size	.L.str.8, 18

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"date != NULL"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"proc_type != NULL"
	.size	.L.str.10, 18

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"num_procs != NULL"
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"procs != NULL"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.13, 32

	.type	.L__func__.gimp_pdb_proc_info,@object # @__func__.gimp_pdb_proc_info
.L__func__.gimp_pdb_proc_info:
	.asciz	"gimp_pdb_proc_info"
	.size	.L__func__.gimp_pdb_proc_info, 19

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"proc_name != NULL"
	.size	.L.str.14, 18

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Procedure '%s' not found"
	.size	.L.str.15, 25

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.zero	1
	.size	.L.str.16, 1

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"(register-procedure "
	.size	.L.str.17, 21

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%s <%d>"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"  "
	.size	.L.str.19, 3

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"  ("
	.size	.L.str.20, 4

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"\n    (\n"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"      "
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"    )"
	.size	.L.str.23, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"\n  )\n"
	.size	.L.str.24, 6

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"\n  )"
	.size	.L.str.25, 5

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"\n)\n"
	.size	.L.str.26, 4

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"\""
	.size	.L.str.27, 2

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"\\\\"
	.size	.L.str.28, 3

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"\\\""
	.size	.L.str.29, 3

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"@{"
	.size	.L.str.30, 3

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"@@"
	.size	.L.str.31, 3

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"@}"
	.size	.L.str.32, 3

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"%c"
	.size	.L.str.33, 3

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"\"\n"
	.size	.L.str.34, 3

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"This procedure is deprecated! Use '%s' instead."
	.size	.L.str.35, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
