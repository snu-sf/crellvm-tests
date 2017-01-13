	.text
	.file	"gimptranslationstore.bc"
	.globl	gimp_translation_store_get_type
	.align	16, 0x90
	.type	gimp_translation_store_get_type,@function
gimp_translation_store_get_type:        # @gimp_translation_store_get_type
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
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_translation_store_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_translation_store_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_language_store_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$176, %edx
	movabsq	$gimp_translation_store_class_intern_init, %rdi
	movl	$128, %r8d
	movabsq	$gimp_translation_store_init, %rcx
	xorl	%esi, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movabsq	$gimp_translation_store_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_translation_store_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_translation_store_get_type, .Lfunc_end0-gimp_translation_store_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_translation_store_class_intern_init,@function
gimp_translation_store_class_intern_init: # @gimp_translation_store_class_intern_init
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
	movq	%rax, gimp_translation_store_parent_class
	cmpl	$0, GimpTranslationStore_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpTranslationStore_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_translation_store_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_translation_store_class_intern_init, .Lfunc_end1-gimp_translation_store_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_translation_store_init,@function
gimp_translation_store_init:            # @gimp_translation_store_init
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
	movabsq	$g_str_hash, %rax
	movabsq	$g_str_equal, %rsi
	movabsq	$g_free, %rcx
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_hash_table_new_full
	movq	-8(%rbp), %rcx
	movq	%rax, 120(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_translation_store_init, .Lfunc_end2-gimp_translation_store_init
	.cfi_endproc

	.globl	gimp_translation_store_new
	.align	16, 0x90
	.type	gimp_translation_store_new,@function
gimp_translation_store_new:             # @gimp_translation_store_new
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
	callq	gimp_translation_store_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_translation_store_new, .Lfunc_end3-gimp_translation_store_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_translation_store_class_init,@function
gimp_translation_store_class_init:      # @gimp_translation_store_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_language_store_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_translation_store_add, %rsi
	movabsq	$gimp_translation_store_constructed, %rdi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, 72(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 168(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_translation_store_class_init, .Lfunc_end4-gimp_translation_store_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_translation_store_constructed,@function
gimp_translation_store_constructed:     # @gimp_translation_store_constructed
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_translation_store_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_translation_store_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_translation_store_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	gimp_translation_store_populate
	movq	-16(%rbp), %rdi
	movq	120(%rdi), %rdi
	callq	g_hash_table_unref
	movq	-16(%rbp), %rdi
	movq	$0, 120(%rdi)
	movq	gimp_translation_store_parent_class, %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_language_store_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	168(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_language_store_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.1, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movabsq	$.L.str.3, %rdi
	callq	gettext
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.4, %rdx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -24(%rbp)
	movq	gimp_translation_store_parent_class, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_language_store_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	168(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	gimp_language_store_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rdx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movq	-80(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	-24(%rbp), %rdi
	callq	g_free
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_translation_store_constructed, .Lfunc_end5-gimp_translation_store_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_translation_store_add,@function
gimp_translation_store_add:             # @gimp_translation_store_add
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	gimp_translation_store_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	120(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_strdup
	movq	-16(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_strdup
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_hash_table_replace
	movl	%eax, -52(%rbp)         # 4-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_translation_store_add, .Lfunc_end6-gimp_translation_store_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_translation_store_populate,@function
gimp_translation_store_populate:        # @gimp_translation_store_populate
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_locale_directory
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_dir_open
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_10
.LBB7_2:                                # %if.end
	jmp	.LBB7_3
.LBB7_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	g_dir_read_name
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB7_9
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB7_3 Depth=1
	callq	gimp_locale_directory
	movabsq	$.L.str.5, %rdx
	movabsq	$.L.str.6, %rcx
	xorl	%esi, %esi
	movl	%esi, %r8d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	movl	$16, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	je	.LBB7_8
# BB#5:                                 # %if.then.7
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_translation_store_map
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB7_7
# BB#6:                                 # %if.then.10
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_language_store_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rdi
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -56(%rbp)
	movq	gimp_translation_store_parent_class, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_language_store_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	168(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
	movq	-56(%rbp), %rdi
	callq	g_free
.LBB7_7:                                # %if.end.16
                                        #   in Loop: Header=BB7_3 Depth=1
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.17
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-32(%rbp), %rdi
	callq	g_free
	jmp	.LBB7_3
.LBB7_9:                                # %while.end
	movq	-16(%rbp), %rdi
	callq	g_dir_close
.LBB7_10:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_translation_store_populate, .Lfunc_end7-gimp_translation_store_populate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_translation_store_map,@function
gimp_translation_store_map:             # @gimp_translation_store_map
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	120(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_4
# BB#1:                                 # %if.then
	movl	$95, %esi
	movq	-16(%rbp), %rdi
	callq	strchr
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB8_3
# BB#2:                                 # %if.then.3
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	g_strndup
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_free
.LBB8_3:                                # %if.end
	jmp	.LBB8_4
.LBB8_4:                                # %if.end.7
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_translation_store_map, .Lfunc_end8-gimp_translation_store_map
	.cfi_endproc

	.type	gimp_translation_store_get_type.g_define_type_id__volatile,@object # @gimp_translation_store_get_type.g_define_type_id__volatile
	.local	gimp_translation_store_get_type.g_define_type_id__volatile
	.comm	gimp_translation_store_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpTranslationStore"
	.size	.L.str, 21

	.type	gimp_translation_store_parent_class,@object # @gimp_translation_store_parent_class
	.local	gimp_translation_store_parent_class
	.comm	gimp_translation_store_parent_class,8,8
	.type	GimpTranslationStore_private_offset,@object # @GimpTranslationStore_private_offset
	.local	GimpTranslationStore_private_offset
	.comm	GimpTranslationStore_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"System Language"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s [%s]"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"English"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"en_US"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"LC_MESSAGES"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp20.mo"
	.size	.L.str.6, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
