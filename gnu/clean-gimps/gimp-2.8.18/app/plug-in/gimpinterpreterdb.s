	.text
	.file	"gimpinterpreterdb.bc"
	.globl	gimp_interpreter_db_get_type
	.align	16, 0x90
	.type	gimp_interpreter_db_get_type,@function
gimp_interpreter_db_get_type:           # @gimp_interpreter_db_get_type
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_interpreter_db_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_interpreter_db_get_type.g_define_type_id__volatile, %rax
	movq	%rax, %rdi
	callq	g_once_init_enter
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
	movabsq	$.L.str, %rdi
	callq	g_intern_static_string
	movl	$80, %ecx
	movl	%ecx, %edi
	movl	$136, %edx
	movabsq	$gimp_interpreter_db_class_intern_init, %rsi
	movl	$64, %r8d
	movabsq	$gimp_interpreter_db_init, %r9
	xorl	%ecx, %ecx
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movabsq	$gimp_interpreter_db_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_interpreter_db_get_type.g_define_type_id__volatile, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_interpreter_db_get_type, .Lfunc_end0-gimp_interpreter_db_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_interpreter_db_class_intern_init,@function
gimp_interpreter_db_class_intern_init:  # @gimp_interpreter_db_class_intern_init
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
	callq	g_type_class_peek_parent
	movq	%rax, gimp_interpreter_db_parent_class
	cmpl	$0, GimpInterpreterDB_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpInterpreterDB_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_interpreter_db_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_interpreter_db_class_intern_init, .Lfunc_end1-gimp_interpreter_db_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_interpreter_db_init,@function
gimp_interpreter_db_init:               # @gimp_interpreter_db_init
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
	movq	-8(%rbp), %rdi
	movq	$0, 24(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 32(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 40(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 48(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 56(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_interpreter_db_init, .Lfunc_end2-gimp_interpreter_db_init
	.cfi_endproc

	.globl	gimp_interpreter_db_new
	.align	16, 0x90
	.type	gimp_interpreter_db_new,@function
gimp_interpreter_db_new:                # @gimp_interpreter_db_new
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
	callq	gimp_interpreter_db_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_interpreter_db_new, .Lfunc_end3-gimp_interpreter_db_new
	.cfi_endproc

	.globl	gimp_interpreter_db_load
	.align	16, 0x90
	.type	gimp_interpreter_db_load,@function
gimp_interpreter_db_load:               # @gimp_interpreter_db_load
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
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_interpreter_db_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_interpreter_db_load, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_interpreter_db_clear
	movabsq	$g_str_hash, %rdi
	movabsq	$g_str_equal, %rsi
	movabsq	$g_free, %rax
	movq	%rax, %rdx
	movq	%rax, %rcx
	callq	g_hash_table_new_full
	movabsq	$g_str_hash, %rdi
	movabsq	$g_str_equal, %rsi
	movabsq	$g_free, %rcx
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	%rcx, %rdx
	callq	g_hash_table_new_full
	movabsq	$g_str_hash, %rdi
	movabsq	$g_str_equal, %rsi
	movabsq	$g_free, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-8(%rbp), %r9
	movq	%rax, 48(%r9)
	callq	g_hash_table_new_full
	movabsq	$g_str_hash, %rdi
	movabsq	$g_str_equal, %rsi
	movabsq	$g_free, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-8(%rbp), %r9
	movq	%rax, 40(%r9)
	callq	g_hash_table_new_full
	movl	$16, %esi
	movabsq	$gimp_interpreter_db_load_interp_file, %rdx
	movq	-8(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	callq	gimp_datafiles_read_directories
	movq	-8(%rbp), %rdi
	callq	gimp_interpreter_db_resolve_programs
.LBB4_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_interpreter_db_load, .Lfunc_end4-gimp_interpreter_db_load
	.cfi_endproc

	.globl	gimp_interpreter_db_clear
	.align	16, 0x90
	.type	gimp_interpreter_db_clear,@function
gimp_interpreter_db_clear:              # @gimp_interpreter_db_clear
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_interpreter_db_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_interpreter_db_clear, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_21
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB5_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_hash_table_destroy
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
.LBB5_14:                               # %if.end.15
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB5_16
# BB#15:                                # %if.then.17
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	g_hash_table_destroy
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
.LBB5_16:                               # %if.end.20
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB5_18
# BB#17:                                # %if.then.22
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_hash_table_destroy
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
.LBB5_18:                               # %if.end.25
	movq	-8(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB5_20
# BB#19:                                # %if.then.27
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_hash_table_destroy
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
.LBB5_20:                               # %if.end.30
	movq	-8(%rbp), %rdi
	callq	gimp_interpreter_db_clear_magics
.LBB5_21:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_interpreter_db_clear, .Lfunc_end5-gimp_interpreter_db_clear
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_interpreter_db_load_interp_file,@function
gimp_interpreter_db_load_interp_file:   # @gimp_interpreter_db_load_interp_file
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
	subq	$4160, %rsp             # imm = 0x1040
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -4144(%rbp)       # 8-byte Spill
	callq	gimp_interpreter_db_get_type
	movq	-4144(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	fopen
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	jmp	.LBB6_17
.LBB6_2:                                # %if.end
	jmp	.LBB6_3
.LBB6_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$4096, %esi             # imm = 0x1000
	leaq	-4128(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	je	.LBB6_16
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	-4128(%rbp), %eax
	cmpl	$35, %eax
	jne	.LBB6_6
# BB#5:                                 # %if.then.6
                                        #   in Loop: Header=BB6_3 Depth=1
	jmp	.LBB6_3
.LBB6_6:                                # %if.end.7
                                        #   in Loop: Header=BB6_3 Depth=1
	leaq	-4128(%rbp), %rdi
	callq	strlen
	subq	$1, %rax
	movq	%rax, -4136(%rbp)
	movq	-4136(%rbp), %rax
	movsbl	-4128(%rbp,%rax), %ecx
	cmpl	$10, %ecx
	je	.LBB6_8
# BB#7:                                 # %if.then.14
                                        #   in Loop: Header=BB6_3 Depth=1
	jmp	.LBB6_3
.LBB6_8:                                # %if.end.15
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-4136(%rbp), %rax
	movb	$0, -4128(%rbp,%rax)
	movzbl	-4128(%rbp), %ecx
	movl	%ecx, %eax
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rax,2), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	jne	.LBB6_10
# BB#9:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	-4128(%rbp), %eax
	cmpl	$47, %eax
	jne	.LBB6_11
.LBB6_10:                               # %if.then.26
                                        #   in Loop: Header=BB6_3 Depth=1
	leaq	-4128(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_interpreter_db_add_program
	jmp	.LBB6_15
.LBB6_11:                               # %if.else
                                        #   in Loop: Header=BB6_3 Depth=1
	movzbl	-4128(%rbp), %eax
	movl	%eax, %ecx
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rcx,2), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	jne	.LBB6_14
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	-4128(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB6_14
# BB#13:                                # %if.then.39
                                        #   in Loop: Header=BB6_3 Depth=1
	leaq	-4128(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_interpreter_db_add_binfmt_misc
.LBB6_14:                               # %if.end.41
                                        #   in Loop: Header=BB6_3 Depth=1
	jmp	.LBB6_15
.LBB6_15:                               # %if.end.42
                                        #   in Loop: Header=BB6_3 Depth=1
	jmp	.LBB6_3
.LBB6_16:                               # %while.end
	movq	-32(%rbp), %rdi
	callq	fclose
	movl	%eax, -4148(%rbp)       # 4-byte Spill
.LBB6_17:                               # %return
	addq	$4160, %rsp             # imm = 0x1040
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_interpreter_db_load_interp_file, .Lfunc_end6-gimp_interpreter_db_load_interp_file
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_interpreter_db_resolve_programs,@function
gimp_interpreter_db_resolve_programs:   # @gimp_interpreter_db_resolve_programs
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB7_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB7_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_strdup
	movq	-32(%rbp), %rdi
	movq	%rax, 32(%rdi)
.LBB7_4:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_5
.LBB7_5:                                # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB7_1
.LBB7_6:                                # %for.end
	movabsq	$g_str_hash, %rdi
	movabsq	$g_str_equal, %rsi
	movabsq	$g_free, %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movq	%rax, %rdx
	movq	%rax, %rcx
	callq	g_hash_table_new_full
	movabsq	$resolve_program, %rsi
	movq	-8(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	callq	g_hash_table_foreach_steal
	movq	-24(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_hash_table_destroy
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_interpreter_db_resolve_programs, .Lfunc_end7-gimp_interpreter_db_resolve_programs
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_interpreter_db_clear_magics,@function
gimp_interpreter_db_clear_magics:       # @gimp_interpreter_db_clear_magics
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, 32(%rdi)
.LBB8_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB8_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free
# BB#3:                                 # %do.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$40, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#4:                                 # %do.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_slist_free_1
	jmp	.LBB8_1
.LBB8_5:                                # %while.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_interpreter_db_clear_magics, .Lfunc_end8-gimp_interpreter_db_clear_magics
	.cfi_endproc

	.globl	gimp_interpreter_db_resolve
	.align	16, 0x90
	.type	gimp_interpreter_db_resolve,@function
gimp_interpreter_db_resolve:            # @gimp_interpreter_db_resolve
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
	subq	$4192, %rsp             # imm = 0x1060
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -4152(%rbp)
	callq	gimp_interpreter_db_get_type
	movq	%rax, -4160(%rbp)
	cmpq	$0, -4152(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -4164(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-4152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-4152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-4160(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -4164(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-4152(%rbp), %rdi
	movq	-4160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -4164(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-4164(%rbp), %eax
	movl	%eax, -4168(%rbp)
	cmpl	$0, -4168(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_interpreter_db_resolve, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_31
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB9_15
# BB#14:                                # %if.then.13
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_interpreter_db_resolve, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_31
.LBB9_16:                               # %if.end.15
	jmp	.LBB9_17
.LBB9_17:                               # %do.end.16
	jmp	.LBB9_18
.LBB9_18:                               # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB9_20
# BB#19:                                # %if.then.19
	jmp	.LBB9_21
.LBB9_20:                               # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_interpreter_db_resolve, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_31
.LBB9_21:                               # %if.end.21
	jmp	.LBB9_22
.LBB9_22:                               # %do.end.22
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movb	$0, %al
	callq	open
	movl	%eax, -36(%rbp)
	cmpl	$-1, -36(%rbp)
	jne	.LBB9_24
# BB#23:                                # %if.then.25
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	resolve_extension
	movq	%rax, -8(%rbp)
	jmp	.LBB9_31
.LBB9_24:                               # %if.end.27
	movl	$4096, %eax             # imm = 0x1000
	movl	%eax, %ecx
	leaq	-4144(%rbp), %rdx
	xorl	%esi, %esi
	movq	%rdx, %rdi
	movq	%rdx, -4176(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -4184(%rbp)       # 8-byte Spill
	callq	memset
	movl	-36(%rbp), %edi
	movq	-4176(%rbp), %rsi       # 8-byte Reload
	movq	-4184(%rbp), %rdx       # 8-byte Reload
	callq	read
	movq	%rax, -48(%rbp)
	movl	-36(%rbp), %edi
	callq	close
	cmpq	$0, -48(%rbp)
	movl	%eax, -4188(%rbp)       # 4-byte Spill
	jg	.LBB9_26
# BB#25:                                # %if.then.31
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	resolve_extension
	movq	%rax, -8(%rbp)
	jmp	.LBB9_31
.LBB9_26:                               # %if.end.33
	cmpq	$3, -48(%rbp)
	jle	.LBB9_30
# BB#27:                                # %land.lhs.true.35
	movsbl	-4144(%rbp), %eax
	cmpl	$35, %eax
	jne	.LBB9_30
# BB#28:                                # %land.lhs.true.38
	movsbl	-4143(%rbp), %eax
	cmpl	$33, %eax
	jne	.LBB9_30
# BB#29:                                # %if.then.43
	leaq	-4144(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %r8
	callq	resolve_sh_bang
	movq	%rax, -8(%rbp)
	jmp	.LBB9_31
.LBB9_30:                               # %if.end.46
	leaq	-4144(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	resolve_magic
	movq	%rax, -8(%rbp)
.LBB9_31:                               # %return
	movq	-8(%rbp), %rax
	addq	$4192, %rsp             # imm = 0x1060
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_interpreter_db_resolve, .Lfunc_end9-gimp_interpreter_db_resolve
	.cfi_endproc

	.align	16, 0x90
	.type	resolve_extension,@function
resolve_extension:                      # @resolve_extension
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_path_get_basename
	movl	$46, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	strrchr
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	$0, -8(%rbp)
	jmp	.LBB10_3
.LBB10_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	callq	g_hash_table_lookup
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
.LBB10_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	resolve_extension, .Lfunc_end10-resolve_extension
	.cfi_endproc

	.align	16, 0x90
	.type	resolve_sh_bang,@function
resolve_sh_bang:                        # @resolve_sh_bang
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
	subq	$80, %rsp
	movl	$10, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-32(%rbp), %rdi
	movl	%eax, %esi
	callq	strchr
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
.LBB11_2:                               # %if.end
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
.LBB11_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.LBB11_10
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	je	.LBB11_7
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-56(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$9, %ecx
	je	.LBB11_7
# BB#6:                                 # %lor.lhs.false.7
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-56(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$13, %ecx
	jne	.LBB11_8
.LBB11_7:                               # %if.then.11
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
	jmp	.LBB11_9
.LBB11_8:                               # %if.else
	jmp	.LBB11_10
.LBB11_9:                               # %if.end.12
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_3
.LBB11_10:                              # %while.end
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -56(%rbp)
.LBB11_11:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movb	$1, %al
	movq	-56(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	$32, %edx
	movb	%al, -73(%rbp)          # 1-byte Spill
	je	.LBB11_13
# BB#12:                                # %lor.rhs
                                        #   in Loop: Header=BB11_11 Depth=1
	movq	-56(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$9, %ecx
	sete	%dl
	movb	%dl, -73(%rbp)          # 1-byte Spill
.LBB11_13:                              # %lor.end
                                        #   in Loop: Header=BB11_11 Depth=1
	movb	-73(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB11_14
	jmp	.LBB11_16
.LBB11_14:                              # %for.body
                                        #   in Loop: Header=BB11_11 Depth=1
	jmp	.LBB11_15
.LBB11_15:                              # %for.inc
                                        #   in Loop: Header=BB11_11 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB11_11
.LBB11_16:                              # %for.end
	movq	-56(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB11_18
# BB#17:                                # %if.then.24
	movq	$0, -8(%rbp)
	jmp	.LBB11_39
.LBB11_18:                              # %if.end.25
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB11_19:                              # %for.cond.26
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -74(%rbp)          # 1-byte Spill
	je	.LBB11_22
# BB#20:                                # %land.lhs.true
                                        #   in Loop: Header=BB11_19 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$32, %eax
	movb	%cl, -74(%rbp)          # 1-byte Spill
	je	.LBB11_22
# BB#21:                                # %land.rhs
                                        #   in Loop: Header=BB11_19 Depth=1
	movq	-56(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$9, %ecx
	setne	%dl
	movb	%dl, -74(%rbp)          # 1-byte Spill
.LBB11_22:                              # %land.end
                                        #   in Loop: Header=BB11_19 Depth=1
	movb	-74(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB11_23
	jmp	.LBB11_25
.LBB11_23:                              # %for.body.35
                                        #   in Loop: Header=BB11_19 Depth=1
	jmp	.LBB11_24
.LBB11_24:                              # %for.inc.36
                                        #   in Loop: Header=BB11_19 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB11_19
.LBB11_25:                              # %for.end.38
	jmp	.LBB11_26
.LBB11_26:                              # %while.cond.39
                                        # =>This Inner Loop Header: Depth=1
	movb	$1, %al
	movq	-56(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	$32, %edx
	movb	%al, -75(%rbp)          # 1-byte Spill
	je	.LBB11_28
# BB#27:                                # %lor.rhs.43
                                        #   in Loop: Header=BB11_26 Depth=1
	movq	-56(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$9, %ecx
	sete	%dl
	movb	%dl, -75(%rbp)          # 1-byte Spill
.LBB11_28:                              # %lor.end.47
                                        #   in Loop: Header=BB11_26 Depth=1
	movb	-75(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB11_29
	jmp	.LBB11_30
.LBB11_29:                              # %while.body.48
                                        #   in Loop: Header=BB11_26 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$0, (%rax)
	jmp	.LBB11_26
.LBB11_30:                              # %while.end.50
	movq	-56(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB11_36
# BB#31:                                # %if.then.52
	movq	-64(%rbp), %rsi
	movl	$.L.str.8, %eax
	movl	%eax, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_35
# BB#32:                                # %if.then.56
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB11_34
# BB#33:                                # %if.then.59
	movq	-72(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
	jmp	.LBB11_39
.LBB11_34:                              # %if.end.61
	jmp	.LBB11_35
.LBB11_35:                              # %if.end.62
	movq	-56(%rbp), %rdi
	callq	g_strdup
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB11_36:                              # %if.end.64
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB11_38
# BB#37:                                # %if.then.68
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB11_38:                              # %if.end.69
	movq	-72(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
.LBB11_39:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	resolve_sh_bang, .Lfunc_end11-resolve_sh_bang
	.cfi_endproc

	.align	16, 0x90
	.type	resolve_magic,@function
resolve_magic:                          # @resolve_magic
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, -40(%rbp)
.LBB12_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_4 Depth 2
                                        #     Child Loop BB12_11 Depth 2
	cmpq	$0, -40(%rbp)
	je	.LBB12_20
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB12_10
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$0, -60(%rbp)
.LBB12_4:                               # %for.cond
                                        #   Parent Loop BB12_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jae	.LBB12_9
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB12_4 Depth=2
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movsbl	(%rax), %edx
	movl	-60(%rbp), %esi
	movl	%esi, %eax
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	movsbl	(%rcx,%rax), %esi
	xorl	%esi, %edx
	movl	-60(%rbp), %esi
	movl	%esi, %eax
	movq	-48(%rbp), %rcx
	movq	16(%rcx), %rcx
	movsbl	(%rcx,%rax), %esi
	andl	%esi, %edx
	cmpl	$0, %edx
	je	.LBB12_7
# BB#6:                                 # %if.then.9
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_9
.LBB12_7:                               # %if.end
                                        #   in Loop: Header=BB12_4 Depth=2
	jmp	.LBB12_8
.LBB12_8:                               # %for.inc
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB12_4
.LBB12_9:                               # %for.end
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_17
.LBB12_10:                              # %if.else
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$0, -60(%rbp)
.LBB12_11:                              # %for.cond.10
                                        #   Parent Loop BB12_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jae	.LBB12_16
# BB#12:                                # %for.body.14
                                        #   in Loop: Header=BB12_11 Depth=2
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movsbl	(%rax), %edx
	movl	-60(%rbp), %esi
	movl	%esi, %eax
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	movsbl	(%rcx,%rax), %esi
	xorl	%esi, %edx
	cmpl	$0, %edx
	je	.LBB12_14
# BB#13:                                # %if.then.23
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_16
.LBB12_14:                              # %if.end.24
                                        #   in Loop: Header=BB12_11 Depth=2
	jmp	.LBB12_15
.LBB12_15:                              # %for.inc.25
                                        #   in Loop: Header=BB12_11 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB12_11
.LBB12_16:                              # %for.end.27
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_17
.LBB12_17:                              # %if.end.28
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jne	.LBB12_19
# BB#18:                                # %if.then.32
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
	jmp	.LBB12_21
.LBB12_19:                              # %if.end.33
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB12_1
.LBB12_20:                              # %while.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	resolve_extension
	movq	%rax, -8(%rbp)
.LBB12_21:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	resolve_magic, .Lfunc_end12-resolve_magic
	.cfi_endproc

	.globl	gimp_interpreter_db_get_extensions
	.align	16, 0x90
	.type	gimp_interpreter_db_get_extensions,@function
gimp_interpreter_db_get_extensions:     # @gimp_interpreter_db_get_extensions
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_interpreter_db_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_interpreter_db_get_extensions, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_15
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_hash_table_size
	cmpl	$0, %eax
	jne	.LBB13_14
# BB#13:                                # %if.then.13
	movq	$0, -8(%rbp)
	jmp	.LBB13_15
.LBB13_14:                              # %if.end.14
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	g_string_new
	movabsq	$collect_extensions, %rdi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rcx, %rdx
	callq	g_hash_table_foreach
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	g_string_free
	movq	%rax, -8(%rbp)
.LBB13_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_interpreter_db_get_extensions, .Lfunc_end13-gimp_interpreter_db_get_extensions
	.cfi_endproc

	.align	16, 0x90
	.type	collect_extensions,@function
collect_extensions:                     # @collect_extensions
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	cmpq	$0, 8(%rdx)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movl	$58, %esi
	movq	-24(%rbp), %rdi
	callq	g_string_append_c_inline
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB14_2:                               # %if.end
	movl	$46, %esi
	movq	-24(%rbp), %rdi
	callq	g_string_append_c_inline
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_string_append
	movq	%rax, -48(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	collect_extensions, .Lfunc_end14-collect_extensions
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_interpreter_db_class_init,@function
gimp_interpreter_db_class_init:         # @gimp_interpreter_db_class_init
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
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_interpreter_db_finalize, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 48(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_interpreter_db_class_init, .Lfunc_end15-gimp_interpreter_db_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_interpreter_db_finalize,@function
gimp_interpreter_db_finalize:           # @gimp_interpreter_db_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_interpreter_db_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_interpreter_db_clear
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	gimp_interpreter_db_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_interpreter_db_finalize, .Lfunc_end16-gimp_interpreter_db_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_interpreter_db_add_program,@function
gimp_interpreter_db_add_program:        # @gimp_interpreter_db_add_program
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
	subq	$96, %rsp
	movl	$61, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	callq	strchr
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	jmp	.LBB17_6
.LBB17_2:                               # %if.end
	movl	$8, %esi
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	jne	.LBB17_4
# BB#3:                                 # %if.then.3
	movabsq	$.L.str.6, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-40(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
	jmp	.LBB17_6
.LBB17_4:                               # %if.end.7
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	g_hash_table_lookup
	cmpq	$0, %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.10
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_strdup
	movq	-40(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_strdup
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_hash_table_insert
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB17_6:                               # %if.end.15
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_interpreter_db_add_program, .Lfunc_end17-gimp_interpreter_db_add_program
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_interpreter_db_add_binfmt_misc,@function
gimp_interpreter_db_add_binfmt_misc:    # @gimp_interpreter_db_add_binfmt_misc
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	strlen
	movq	%rax, -64(%rbp)
	cmpq	$10, -64(%rbp)
	jb	.LBB18_2
# BB#1:                                 # %lor.lhs.false
	cmpq	$255, -64(%rbp)
	jbe	.LBB18_3
.LBB18_2:                               # %if.then
	jmp	.LBB18_17
.LBB18_3:                               # %if.end
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	leaq	-66(%rbp), %rsi
	movl	$8, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movb	(%rdi), %r8b
	movb	%r8b, -66(%rbp)
	movb	$0, -65(%rbp)
	movq	-24(%rbp), %rdi
	addq	-64(%rbp), %rdi
	movsbl	-66(%rbp), %eax
	movb	%al, %r8b
	movzbl	%r8b, %eax
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movl	%eax, %esi
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movq	%rcx, %rdx
	callq	memset
	movq	-24(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movl	-84(%rbp), %edx         # 4-byte Reload
	callq	g_strsplit
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movsbl	(%rax), %edx
	cmpl	$0, %edx
	je	.LBB18_7
# BB#4:                                 # %lor.lhs.false.13
	movq	-56(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB18_7
# BB#5:                                 # %lor.lhs.false.18
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB18_7
# BB#6:                                 # %lor.lhs.false.23
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB18_8
.LBB18_7:                               # %if.then.28
	jmp	.LBB18_17
.LBB18_8:                               # %if.end.29
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$69, %edx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	movl	%edx, -92(%rbp)         # 4-byte Spill
	je	.LBB18_9
	jmp	.LBB18_19
.LBB18_19:                              # %if.end.29
	movl	-88(%rbp), %eax         # 4-byte Reload
	subl	$77, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB18_12
	jmp	.LBB18_15
.LBB18_9:                               # %sw.bb
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_interpreter_db_add_extension
	cmpl	$0, %eax
	jne	.LBB18_11
# BB#10:                                # %if.then.33
	jmp	.LBB18_17
.LBB18_11:                              # %if.end.34
	jmp	.LBB18_16
.LBB18_12:                              # %sw.bb.35
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_interpreter_db_add_magic
	cmpl	$0, %eax
	jne	.LBB18_14
# BB#13:                                # %if.then.38
	jmp	.LBB18_17
.LBB18_14:                              # %if.end.39
	jmp	.LBB18_16
.LBB18_15:                              # %sw.default
	jmp	.LBB18_17
.LBB18_16:                              # %sw.epilog
	jmp	.LBB18_18
.LBB18_17:                              # %bail
	movabsq	$.L.str.7, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
.LBB18_18:                              # %out
	movq	-32(%rbp), %rdi
	callq	g_strfreev
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_interpreter_db_add_binfmt_misc, .Lfunc_end18-gimp_interpreter_db_add_binfmt_misc
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB19_2
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
.LBB19_2:                               # %entry
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
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end19:
	.size	g_message, .Lfunc_end19-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_interpreter_db_add_extension,@function
gimp_interpreter_db_add_extension:      # @gimp_interpreter_db_add_extension
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
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	movq	-24(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movq	-16(%rbp), %rsi
	movq	56(%rsi), %rdi
	movq	-32(%rbp), %rsi
	callq	g_hash_table_lookup
	cmpq	$0, %rax
	jne	.LBB20_5
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB20_3
# BB#2:                                 # %lor.lhs.false
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB20_4
.LBB20_3:                               # %if.then.9
	movl	$0, -4(%rbp)
	jmp	.LBB20_6
.LBB20_4:                               # %if.end
	movq	-48(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_strdup
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_hash_table_insert
	movq	-16(%rbp), %rdx
	movq	56(%rdx), %rdi
	movq	-32(%rbp), %rdx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	g_strdup
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_hash_table_insert
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB20_5:                               # %if.end.16
	movl	$1, -4(%rbp)
.LBB20_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_interpreter_db_add_extension, .Lfunc_end20-gimp_interpreter_db_add_extension
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_interpreter_db_add_magic,@function
gimp_interpreter_db_add_magic:          # @gimp_interpreter_db_add_magic
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	movq	-24(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movq	-24(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, -56(%rbp)
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -64(%rbp)
	movq	-24(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	%rsi, -72(%rbp)
	movq	-16(%rbp), %rsi
	movq	40(%rsi), %rdi
	movq	-40(%rbp), %rsi
	callq	g_hash_table_lookup
	cmpq	$0, %rax
	jne	.LBB21_20
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB21_7
# BB#2:                                 # %if.then.7
	leaq	-48(%rbp), %rsi
	movl	$10, %edx
	movq	-48(%rbp), %rdi
	callq	strtoul
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movsbl	(%rax), %edx
	cmpl	$0, %edx
	je	.LBB21_4
# BB#3:                                 # %if.then.13
	movl	$0, -4(%rbp)
	jmp	.LBB21_21
.LBB21_4:                               # %if.end
	cmpq	$1024, -80(%rbp)        # imm = 0x400
	jbe	.LBB21_6
# BB#5:                                 # %if.then.16
	movl	$0, -4(%rbp)
	jmp	.LBB21_21
.LBB21_6:                               # %if.end.17
	jmp	.LBB21_8
.LBB21_7:                               # %if.else
	movq	$0, -80(%rbp)
.LBB21_8:                               # %if.end.18
	movq	-56(%rbp), %rdi
	callq	scanarg
	cmpl	$0, %eax
	jne	.LBB21_10
# BB#9:                                 # %if.then.21
	movl	$0, -4(%rbp)
	jmp	.LBB21_21
.LBB21_10:                              # %if.end.22
	movq	-64(%rbp), %rdi
	callq	scanarg
	cmpl	$0, %eax
	jne	.LBB21_12
# BB#11:                                # %if.then.25
	movl	$0, -4(%rbp)
	jmp	.LBB21_21
.LBB21_12:                              # %if.end.26
	movq	-56(%rbp), %rdi
	callq	unquote
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	addq	-80(%rbp), %rdi
	cmpq	$2048, %rdi             # imm = 0x800
	jbe	.LBB21_14
# BB#13:                                # %if.then.31
	movl	$0, -4(%rbp)
	jmp	.LBB21_21
.LBB21_14:                              # %if.end.32
	movq	-64(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB21_16
# BB#15:                                # %if.then.37
	movq	$0, -64(%rbp)
	jmp	.LBB21_19
.LBB21_16:                              # %if.else.38
	movq	-64(%rbp), %rdi
	callq	unquote
	cmpl	-84(%rbp), %eax
	je	.LBB21_18
# BB#17:                                # %if.then.42
	movl	$0, -4(%rbp)
	jmp	.LBB21_21
.LBB21_18:                              # %if.end.43
	jmp	.LBB21_19
.LBB21_19:                              # %if.end.44
	movl	$40, %eax
	movl	%eax, %edi
	callq	g_slice_alloc
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-56(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	g_memdup
	movq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-64(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	g_memdup
	movq	-32(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movl	-84(%rbp), %esi
	movq	-32(%rbp), %rax
	movl	%esi, 24(%rax)
	movq	-72(%rbp), %rdi
	callq	g_strdup
	movq	-32(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_append
	movq	-16(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_strdup
	movq	-32(%rbp), %rsi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-104(%rbp), %rdx        # 8-byte Reload
	callq	g_hash_table_insert
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB21_20:                              # %if.end.59
	movl	$1, -4(%rbp)
.LBB21_21:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_interpreter_db_add_magic, .Lfunc_end21-gimp_interpreter_db_add_magic
	.cfi_endproc

	.align	16, 0x90
	.type	scanarg,@function
scanarg:                                # @scanarg
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
	movq	%rdi, -16(%rbp)
.LBB22_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movb	%dl, -17(%rbp)
	movsbl	%dl, %esi
	cmpl	$0, %esi
	je	.LBB22_10
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB22_1 Depth=1
	movsbl	-17(%rbp), %eax
	cmpl	$92, %eax
	jne	.LBB22_9
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$120, %ecx
	jne	.LBB22_9
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movq	g_ascii_table, %rcx
	movzwl	(%rcx,%rax,2), %edx
	andl	$1024, %edx             # imm = 0x400
	cmpl	$0, %edx
	jne	.LBB22_6
# BB#5:                                 # %if.then.13
	movl	$0, -4(%rbp)
	jmp	.LBB22_11
.LBB22_6:                               # %if.end
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movq	g_ascii_table, %rcx
	movzwl	(%rcx,%rax,2), %edx
	andl	$1024, %edx             # imm = 0x400
	cmpl	$0, %edx
	jne	.LBB22_8
# BB#7:                                 # %if.then.21
	movl	$0, -4(%rbp)
	jmp	.LBB22_11
.LBB22_8:                               # %if.end.22
                                        #   in Loop: Header=BB22_1 Depth=1
	jmp	.LBB22_9
.LBB22_9:                               # %if.end.23
                                        #   in Loop: Header=BB22_1 Depth=1
	jmp	.LBB22_1
.LBB22_10:                              # %while.end
	movl	$1, -4(%rbp)
.LBB22_11:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end22:
	.size	scanarg, .Lfunc_end22-scanarg
	.cfi_endproc

	.align	16, 0x90
	.type	unquote,@function
unquote:                                # @unquote
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
.LBB23_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movb	%dl, -25(%rbp)
	movsbl	%dl, %esi
	cmpl	$0, %esi
	je	.LBB23_6
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB23_1 Depth=1
	movsbl	-25(%rbp), %eax
	cmpl	$92, %eax
	jne	.LBB23_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$120, %ecx
	jne	.LBB23_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movsbl	(%rax), %edi
	callq	g_ascii_xdigit_value
	shll	$4, %eax
	movb	%al, %dl
	movq	-24(%rbp), %rcx
	movb	%dl, (%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movsbl	(%rcx), %edi
	callq	g_ascii_xdigit_value
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movsbl	(%rcx), %edi
	orl	%eax, %edi
	movb	%dil, %dl
	movb	%dl, (%rcx)
	jmp	.LBB23_1
.LBB23_5:                               # %if.end
                                        #   in Loop: Header=BB23_1 Depth=1
	movb	-25(%rbp), %al
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%al, (%rcx)
	jmp	.LBB23_1
.LBB23_6:                               # %while.end
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	unquote, .Lfunc_end23-unquote
	.cfi_endproc

	.align	16, 0x90
	.type	resolve_program,@function
resolve_program:                        # @resolve_program
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	24(%rdx), %rdi
	movq	-16(%rbp), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB24_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -16(%rbp)
.LBB24_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	g_hash_table_insert
	movl	$1, %ecx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	resolve_program, .Lfunc_end24-resolve_program
	.cfi_endproc

	.align	16, 0x90
	.type	g_string_append_c_inline,@function
g_string_append_c_inline:               # @g_string_append_c_inline
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
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	addq	$1, %rdi
	movq	-8(%rbp), %rcx
	cmpq	16(%rcx), %rdi
	jae	.LBB25_2
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
	jmp	.LBB25_3
.LBB25_2:                               # %if.else
	movq	$-1, %rsi
	movq	-8(%rbp), %rdi
	movsbl	-9(%rbp), %edx
	callq	g_string_insert_c
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB25_3:                               # %if.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	g_string_append_c_inline, .Lfunc_end25-g_string_append_c_inline
	.cfi_endproc

	.type	gimp_interpreter_db_get_type.g_define_type_id__volatile,@object # @gimp_interpreter_db_get_type.g_define_type_id__volatile
	.local	gimp_interpreter_db_get_type.g_define_type_id__volatile
	.comm	gimp_interpreter_db_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpInterpreterDB"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Plug-In"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_interpreter_db_load,@object # @__func__.gimp_interpreter_db_load
.L__func__.gimp_interpreter_db_load:
	.asciz	"gimp_interpreter_db_load"
	.size	.L__func__.gimp_interpreter_db_load, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_INTERPRETER_DB (db)"
	.size	.L.str.2, 28

	.type	.L__func__.gimp_interpreter_db_clear,@object # @__func__.gimp_interpreter_db_clear
.L__func__.gimp_interpreter_db_clear:
	.asciz	"gimp_interpreter_db_clear"
	.size	.L__func__.gimp_interpreter_db_clear, 26

	.type	.L__func__.gimp_interpreter_db_resolve,@object # @__func__.gimp_interpreter_db_resolve
.L__func__.gimp_interpreter_db_resolve:
	.asciz	"gimp_interpreter_db_resolve"
	.size	.L__func__.gimp_interpreter_db_resolve, 28

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"program_path != NULL"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"interp_arg != NULL"
	.size	.L.str.4, 19

	.type	.L__func__.gimp_interpreter_db_get_extensions,@object # @__func__.gimp_interpreter_db_get_extensions
.L__func__.gimp_interpreter_db_get_extensions:
	.asciz	"gimp_interpreter_db_get_extensions"
	.size	.L__func__.gimp_interpreter_db_get_extensions, 35

	.type	gimp_interpreter_db_parent_class,@object # @gimp_interpreter_db_parent_class
	.local	gimp_interpreter_db_parent_class
	.comm	gimp_interpreter_db_parent_class,8,8
	.type	GimpInterpreterDB_private_offset,@object # @GimpInterpreterDB_private_offset
	.local	GimpInterpreterDB_private_offset
	.comm	GimpInterpreterDB_private_offset,4,4
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"r"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Bad interpreter referenced in interpreter file %s: %s"
	.size	.L.str.6, 54

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Bad binary format string in interpreter file %s"
	.size	.L.str.7, 48

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"/usr/bin/env"
	.size	.L.str.8, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
