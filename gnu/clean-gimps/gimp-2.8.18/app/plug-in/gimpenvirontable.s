	.text
	.file	"gimpenvirontable.bc"
	.globl	gimp_environ_table_get_type
	.align	16, 0x90
	.type	gimp_environ_table_get_type,@function
gimp_environ_table_get_type:            # @gimp_environ_table_get_type
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
	movq	gimp_environ_table_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_environ_table_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_environ_table_class_intern_init, %rsi
	movl	$48, %r8d
	movabsq	$gimp_environ_table_init, %r9
	xorl	%ecx, %ecx
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movabsq	$gimp_environ_table_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_environ_table_get_type.g_define_type_id__volatile, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_environ_table_get_type, .Lfunc_end0-gimp_environ_table_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_environ_table_class_intern_init,@function
gimp_environ_table_class_intern_init:   # @gimp_environ_table_class_intern_init
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
	movq	%rax, gimp_environ_table_parent_class
	cmpl	$0, GimpEnvironTable_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpEnvironTable_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_environ_table_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_environ_table_class_intern_init, .Lfunc_end1-gimp_environ_table_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_environ_table_init,@function
gimp_environ_table_init:                # @gimp_environ_table_init
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
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_environ_table_init, .Lfunc_end2-gimp_environ_table_init
	.cfi_endproc

	.globl	gimp_environ_table_new
	.align	16, 0x90
	.type	gimp_environ_table_new,@function
gimp_environ_table_new:                 # @gimp_environ_table_new
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
	callq	gimp_environ_table_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_environ_table_new, .Lfunc_end3-gimp_environ_table_new
	.cfi_endproc

	.globl	gimp_environ_table_load
	.align	16, 0x90
	.type	gimp_environ_table_load,@function
gimp_environ_table_load:                # @gimp_environ_table_load
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
	callq	gimp_environ_table_get_type
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
	movabsq	$.L__func__.gimp_environ_table_load, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_environ_table_clear
	movabsq	$gimp_environ_table_str_hash, %rdi
	movabsq	$gimp_environ_table_str_equal, %rsi
	movabsq	$g_free, %rdx
	movabsq	$gimp_environ_table_free_value, %rax
	movq	%rax, %rcx
	callq	g_hash_table_new_full
	movl	$16, %esi
	movabsq	$gimp_environ_table_load_env_file, %rdx
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	callq	gimp_datafiles_read_directories
.LBB4_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_environ_table_load, .Lfunc_end4-gimp_environ_table_load
	.cfi_endproc

	.globl	gimp_environ_table_clear
	.align	16, 0x90
	.type	gimp_environ_table_clear,@function
gimp_environ_table_clear:               # @gimp_environ_table_clear
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
	callq	gimp_environ_table_get_type
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
	movabsq	$.L__func__.gimp_environ_table_clear, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_environ_table_clear_envp
	movq	-8(%rbp), %rdi
	callq	gimp_environ_table_clear_vars
.LBB5_13:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_environ_table_clear, .Lfunc_end5-gimp_environ_table_clear
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_environ_table_str_hash,@function
gimp_environ_table_str_hash:            # @gimp_environ_table_str_hash
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_str_hash
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_environ_table_str_hash, .Lfunc_end6-gimp_environ_table_str_hash
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_environ_table_str_equal,@function
gimp_environ_table_str_equal:           # @gimp_environ_table_str_equal
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
	movq	-16(%rbp), %rsi
	callq	g_str_equal
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_environ_table_str_equal, .Lfunc_end7-gimp_environ_table_str_equal
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_environ_table_free_value,@function
gimp_environ_table_free_value:          # @gimp_environ_table_free_value
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	g_free
# BB#1:                                 # %do.body
	movl	$16, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_environ_table_free_value, .Lfunc_end8-gimp_environ_table_free_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_environ_table_load_env_file,@function
gimp_environ_table_load_env_file:       # @gimp_environ_table_load_env_file
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
	subq	$4224, %rsp             # imm = 0x1080
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -4192(%rbp)       # 8-byte Spill
	callq	gimp_environ_table_get_type
	movq	-4192(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	fopen
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	jmp	.LBB9_20
.LBB9_2:                                # %if.end
	jmp	.LBB9_3
.LBB9_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$4096, %esi             # imm = 0x1000
	leaq	-4128(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	je	.LBB9_19
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB9_3 Depth=1
	movsbl	-4128(%rbp), %eax
	cmpl	$35, %eax
	jne	.LBB9_6
# BB#5:                                 # %if.then.6
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_3
.LBB9_6:                                # %if.end.7
                                        #   in Loop: Header=BB9_3 Depth=1
	leaq	-4128(%rbp), %rdi
	callq	strlen
	subq	$1, %rax
	movq	%rax, -4136(%rbp)
	movq	-4136(%rbp), %rax
	movsbl	-4128(%rbp,%rax), %ecx
	cmpl	$10, %ecx
	je	.LBB9_8
# BB#7:                                 # %if.then.14
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_3
.LBB9_8:                                # %if.end.15
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	$61, %esi
	leaq	-4128(%rbp), %rdi
	movq	-4136(%rbp), %rax
	movb	$0, -4128(%rbp,%rax)
	callq	strchr
	movq	%rax, -4168(%rbp)
	cmpq	$0, -4168(%rbp)
	jne	.LBB9_10
# BB#9:                                 # %if.then.20
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_3
.LBB9_10:                               # %if.end.21
                                        #   in Loop: Header=BB9_3 Depth=1
	leaq	-4128(%rbp), %rax
	movq	-4168(%rbp), %rcx
	movb	$0, (%rcx)
	movq	%rax, -4144(%rbp)
	movq	-4168(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -4152(%rbp)
	movq	-4144(%rbp), %rax
	movsbl	(%rax), %edx
	cmpl	$0, %edx
	jne	.LBB9_12
# BB#11:                                # %if.then.27
                                        #   in Loop: Header=BB9_3 Depth=1
	movabsq	$.L.str.4, %rdi
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -4200(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-4200(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	jmp	.LBB9_3
.LBB9_12:                               # %if.end.31
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	$32, %esi
	movq	$0, -4160(%rbp)
	movq	-4144(%rbp), %rdi
	callq	strchr
	movq	%rax, -4176(%rbp)
	cmpq	$0, -4176(%rbp)
	je	.LBB9_14
# BB#13:                                # %if.then.34
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-4176(%rbp), %rax
	movb	$0, (%rax)
	movq	-4144(%rbp), %rax
	movq	%rax, -4160(%rbp)
	movq	-4176(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -4144(%rbp)
.LBB9_14:                               # %if.end.36
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-4144(%rbp), %rdi
	callq	gimp_environ_table_legal_name
	cmpl	$0, %eax
	jne	.LBB9_16
# BB#15:                                # %if.then.39
                                        #   in Loop: Header=BB9_3 Depth=1
	movabsq	$.L.str.5, %rdi
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -4208(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-4144(%rbp), %rdx
	movq	-4208(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	jmp	.LBB9_3
.LBB9_16:                               # %if.end.43
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-4144(%rbp), %rsi
	callq	g_hash_table_lookup
	cmpq	$0, %rax
	jne	.LBB9_18
# BB#17:                                # %if.then.46
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	$16, %eax
	movl	%eax, %edi
	callq	g_slice_alloc
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -4184(%rbp)
	movq	-4152(%rbp), %rdi
	callq	gimp_config_path_expand
	movq	-4184(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-4160(%rbp), %rdi
	callq	g_strdup
	movq	-4184(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-4144(%rbp), %rax
	movq	%rdi, -4216(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	g_strdup
	movq	-4184(%rbp), %rdx
	movq	-4216(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_hash_table_insert
	movl	%eax, -4220(%rbp)       # 4-byte Spill
.LBB9_18:                               # %if.end.55
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_3
.LBB9_19:                               # %while.end
	movq	-32(%rbp), %rdi
	callq	fclose
	movl	%eax, -4224(%rbp)       # 4-byte Spill
.LBB9_20:                               # %return
	addq	$4224, %rsp             # imm = 0x1080
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_environ_table_load_env_file, .Lfunc_end9-gimp_environ_table_load_env_file
	.cfi_endproc

	.globl	gimp_environ_table_add
	.align	16, 0x90
	.type	gimp_environ_table_add,@function
gimp_environ_table_add:                 # @gimp_environ_table_add
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_environ_table_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_environ_table_add, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_15
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_environ_table_clear_envp
	movq	-8(%rbp), %rdi
	cmpq	$0, 32(%rdi)
	jne	.LBB10_14
# BB#13:                                # %if.then.12
	movabsq	$g_str_hash, %rdi
	movabsq	$g_str_equal, %rsi
	movabsq	$g_free, %rdx
	movabsq	$gimp_environ_table_free_value, %rax
	movq	%rax, %rcx
	callq	g_hash_table_new_full
	movq	-8(%rbp), %rcx
	movq	%rax, 32(%rcx)
.LBB10_14:                              # %if.end.15
	movl	$16, %eax
	movl	%eax, %edi
	callq	g_slice_alloc
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-32(%rbp), %rdi
	callq	g_strdup
	movq	-40(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_strdup
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	g_hash_table_insert
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB10_15:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_environ_table_add, .Lfunc_end10-gimp_environ_table_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_environ_table_clear_envp,@function
gimp_environ_table_clear_envp:          # @gimp_environ_table_clear_envp
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 40(%rdi)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_strfreev
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
.LBB11_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_environ_table_clear_envp, .Lfunc_end11-gimp_environ_table_clear_envp
	.cfi_endproc

	.globl	gimp_environ_table_remove
	.align	16, 0x90
	.type	gimp_environ_table_remove,@function
gimp_environ_table_remove:              # @gimp_environ_table_remove
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_environ_table_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_environ_table_remove, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_16
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB12_14
# BB#13:                                # %if.then.12
	jmp	.LBB12_16
.LBB12_14:                              # %if.end.13
	movq	-8(%rbp), %rdi
	callq	gimp_environ_table_clear_envp
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-16(%rbp), %rsi
	callq	g_hash_table_remove
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_hash_table_size
	cmpl	$0, %eax
	jne	.LBB12_16
# BB#15:                                # %if.then.19
	movq	-8(%rbp), %rdi
	callq	gimp_environ_table_clear_internal
.LBB12_16:                              # %if.end.20
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_environ_table_remove, .Lfunc_end12-gimp_environ_table_remove
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_environ_table_clear_internal,@function
gimp_environ_table_clear_internal:      # @gimp_environ_table_clear_internal
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 32(%rdi)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_hash_table_destroy
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
.LBB13_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_environ_table_clear_internal, .Lfunc_end13-gimp_environ_table_clear_internal
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_environ_table_clear_vars,@function
gimp_environ_table_clear_vars:          # @gimp_environ_table_clear_vars
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 24(%rdi)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_hash_table_destroy
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
.LBB14_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_environ_table_clear_vars, .Lfunc_end14-gimp_environ_table_clear_vars
	.cfi_endproc

	.globl	gimp_environ_table_clear_all
	.align	16, 0x90
	.type	gimp_environ_table_clear_all,@function
gimp_environ_table_clear_all:           # @gimp_environ_table_clear_all
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_environ_table_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_environ_table_clear_all, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_13
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_environ_table_clear_envp
	movq	-8(%rbp), %rdi
	callq	gimp_environ_table_clear_vars
	movq	-8(%rbp), %rdi
	callq	gimp_environ_table_clear_internal
.LBB15_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_environ_table_clear_all, .Lfunc_end15-gimp_environ_table_clear_all
	.cfi_endproc

	.globl	gimp_environ_table_get_envp
	.align	16, 0x90
	.type	gimp_environ_table_get_envp,@function
gimp_environ_table_get_envp:            # @gimp_environ_table_get_envp
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_environ_table_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_environ_table_get_envp, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_15
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB16_14
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rdi
	callq	gimp_environ_table_populate
.LBB16_14:                              # %if.end.13
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB16_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_environ_table_get_envp, .Lfunc_end16-gimp_environ_table_get_envp
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_environ_table_populate,@function
gimp_environ_table_populate:            # @gimp_environ_table_populate
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	callq	g_listenv
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	g_ptr_array_new
	movq	%rax, -32(%rbp)
.LBB17_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	gimp_environ_table_pass_through
	cmpl	$0, %eax
	je	.LBB17_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_getenv
	movabsq	$.L.str.6, %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_strconcat
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_ptr_array_add
.LBB17_4:                               # %if.end
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB17_1
.LBB17_5:                               # %while.end
	movq	-16(%rbp), %rdi
	callq	g_strfreev
	movq	-8(%rbp), %rdi
	cmpq	$0, 24(%rdi)
	je	.LBB17_7
# BB#6:                                 # %if.then.7
	movabsq	$gimp_environ_table_populate_one, %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rdi
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_hash_table_foreach
.LBB17_7:                               # %if.end.9
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB17_9
# BB#8:                                 # %if.then.11
	movabsq	$gimp_environ_table_populate_one, %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_hash_table_foreach
.LBB17_9:                               # %if.end.13
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	g_ptr_array_add
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	callq	g_ptr_array_free
	movq	-8(%rbp), %rdi
	movq	%rax, 40(%rdi)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_environ_table_populate, .Lfunc_end17-gimp_environ_table_populate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_environ_table_class_init,@function
gimp_environ_table_class_init:          # @gimp_environ_table_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_environ_table_finalize, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 48(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_environ_table_class_init, .Lfunc_end18-gimp_environ_table_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_environ_table_finalize,@function
gimp_environ_table_finalize:            # @gimp_environ_table_finalize
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_environ_table_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_environ_table_clear_all
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	gimp_environ_table_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_environ_table_finalize, .Lfunc_end19-gimp_environ_table_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB20_2
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
.LBB20_2:                               # %entry
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
.Lfunc_end20:
	.size	g_message, .Lfunc_end20-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_environ_table_legal_name,@function
gimp_environ_table_legal_name:          # @gimp_environ_table_legal_name
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movzbl	(%rdi), %eax
	movl	%eax, %edi
	movq	g_ascii_table, %rcx
	movzwl	(%rcx,%rdi,2), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	jne	.LBB21_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$95, %ecx
	je	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB21_11
.LBB21_3:                               # %if.end
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
.LBB21_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB21_10
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB21_4 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rax,2), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	jne	.LBB21_8
# BB#6:                                 # %land.lhs.true.11
                                        #   in Loop: Header=BB21_4 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$95, %ecx
	je	.LBB21_8
# BB#7:                                 # %if.then.15
	movl	$0, -4(%rbp)
	jmp	.LBB21_11
.LBB21_8:                               # %if.end.16
                                        #   in Loop: Header=BB21_4 Depth=1
	jmp	.LBB21_9
.LBB21_9:                               # %for.inc
                                        #   in Loop: Header=BB21_4 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB21_4
.LBB21_10:                              # %for.end
	movl	$1, -4(%rbp)
.LBB21_11:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_environ_table_legal_name, .Lfunc_end21-gimp_environ_table_legal_name
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_environ_table_pass_through,@function
gimp_environ_table_pass_through:        # @gimp_environ_table_pass_through
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
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, 24(%rsi)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	je	.LBB22_2
# BB#1:                                 # %land.rhs
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	g_hash_table_lookup
	cmpq	$0, %rax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB22_2:                               # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, 32(%rsi)
	movb	%dl, -26(%rbp)          # 1-byte Spill
	je	.LBB22_4
# BB#3:                                 # %land.rhs.6
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	g_hash_table_lookup
	cmpq	$0, %rax
	setne	%cl
	movb	%cl, -26(%rbp)          # 1-byte Spill
.LBB22_4:                               # %land.end.10
	movb	-26(%rbp), %al          # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$0, -20(%rbp)
	movb	%dl, -27(%rbp)          # 1-byte Spill
	jne	.LBB22_6
# BB#5:                                 # %land.rhs.13
	cmpl	$0, -24(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -27(%rbp)          # 1-byte Spill
.LBB22_6:                               # %land.end.15
	movb	-27(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_environ_table_pass_through, .Lfunc_end22-gimp_environ_table_pass_through
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_environ_table_populate_one,@function
gimp_environ_table_populate_one:        # @gimp_environ_table_populate_one
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rdx
	cmpq	$0, 8(%rdx)
	je	.LBB23_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	g_getenv
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB23_3
# BB#2:                                 # %if.then.2
	movabsq	$.L.str.6, %rsi
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-32(%rbp), %r8
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -40(%rbp)
.LBB23_3:                               # %if.end
	jmp	.LBB23_4
.LBB23_4:                               # %if.end.5
	cmpq	$0, -40(%rbp)
	jne	.LBB23_6
# BB#5:                                 # %if.then.7
	movabsq	$.L.str.6, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -40(%rbp)
.LBB23_6:                               # %if.end.10
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_ptr_array_add
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_environ_table_populate_one, .Lfunc_end23-gimp_environ_table_populate_one
	.cfi_endproc

	.type	gimp_environ_table_get_type.g_define_type_id__volatile,@object # @gimp_environ_table_get_type.g_define_type_id__volatile
	.local	gimp_environ_table_get_type.g_define_type_id__volatile
	.comm	gimp_environ_table_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpEnvironTable"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Plug-In"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_environ_table_load,@object # @__func__.gimp_environ_table_load
.L__func__.gimp_environ_table_load:
	.asciz	"gimp_environ_table_load"
	.size	.L__func__.gimp_environ_table_load, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_ENVIRON_TABLE (environ_table)"
	.size	.L.str.2, 38

	.type	.L__func__.gimp_environ_table_add,@object # @__func__.gimp_environ_table_add
.L__func__.gimp_environ_table_add:
	.asciz	"gimp_environ_table_add"
	.size	.L__func__.gimp_environ_table_add, 23

	.type	.L__func__.gimp_environ_table_remove,@object # @__func__.gimp_environ_table_remove
.L__func__.gimp_environ_table_remove:
	.asciz	"gimp_environ_table_remove"
	.size	.L__func__.gimp_environ_table_remove, 26

	.type	.L__func__.gimp_environ_table_clear,@object # @__func__.gimp_environ_table_clear
.L__func__.gimp_environ_table_clear:
	.asciz	"gimp_environ_table_clear"
	.size	.L__func__.gimp_environ_table_clear, 25

	.type	.L__func__.gimp_environ_table_clear_all,@object # @__func__.gimp_environ_table_clear_all
.L__func__.gimp_environ_table_clear_all:
	.asciz	"gimp_environ_table_clear_all"
	.size	.L__func__.gimp_environ_table_clear_all, 29

	.type	.L__func__.gimp_environ_table_get_envp,@object # @__func__.gimp_environ_table_get_envp
.L__func__.gimp_environ_table_get_envp:
	.asciz	"gimp_environ_table_get_envp"
	.size	.L__func__.gimp_environ_table_get_envp, 28

	.type	gimp_environ_table_parent_class,@object # @gimp_environ_table_parent_class
	.local	gimp_environ_table_parent_class
	.comm	gimp_environ_table_parent_class,8,8
	.type	GimpEnvironTable_private_offset,@object # @GimpEnvironTable_private_offset
	.local	GimpEnvironTable_private_offset
	.comm	GimpEnvironTable_private_offset,4,4
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"r"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Empty variable name in environment file %s"
	.size	.L.str.4, 43

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Illegal variable name in environment file %s: %s"
	.size	.L.str.5, 49

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"="
	.size	.L.str.6, 2


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
