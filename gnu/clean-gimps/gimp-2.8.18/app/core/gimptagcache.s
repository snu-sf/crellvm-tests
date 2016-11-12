	.text
	.file	"gimptagcache.bc"
	.globl	gimp_tag_cache_get_type
	.align	16, 0x90
	.type	gimp_tag_cache_get_type,@function
gimp_tag_cache_get_type:                # @gimp_tag_cache_get_type
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
	movq	gimp_tag_cache_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_tag_cache_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_object_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$160, %edx
	movabsq	$gimp_tag_cache_class_intern_init, %rdi
	movl	$40, %r8d
	movabsq	$gimp_tag_cache_init, %rcx
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
	movabsq	$gimp_tag_cache_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_tag_cache_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_tag_cache_get_type, .Lfunc_end0-gimp_tag_cache_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_cache_class_intern_init,@function
gimp_tag_cache_class_intern_init:       # @gimp_tag_cache_class_intern_init
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
	movq	%rax, gimp_tag_cache_parent_class
	cmpl	$0, GimpTagCache_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpTagCache_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_tag_cache_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_tag_cache_class_intern_init, .Lfunc_end1-gimp_tag_cache_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_cache_init,@function
gimp_tag_cache_init:                    # @gimp_tag_cache_init
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_tag_cache_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	xorl	%ecx, %ecx
	movl	$24, %edx
	movq	-8(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	g_array_new
	movq	-8(%rbp), %r8
	movq	32(%r8), %r8
	movq	%rax, (%r8)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	$0, 8(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_tag_cache_init, .Lfunc_end2-gimp_tag_cache_init
	.cfi_endproc

	.globl	gimp_tag_cache_new
	.align	16, 0x90
	.type	gimp_tag_cache_new,@function
gimp_tag_cache_new:                     # @gimp_tag_cache_new
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
	callq	gimp_tag_cache_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_tag_cache_new, .Lfunc_end3-gimp_tag_cache_new
	.cfi_endproc

	.globl	gimp_tag_cache_add_container
	.align	16, 0x90
	.type	gimp_tag_cache_add_container,@function
gimp_tag_cache_add_container:           # @gimp_tag_cache_add_container
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tag_cache_get_type
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
	movabsq	$.L__func__.gimp_tag_cache_add_container, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_25
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB4_20
.LBB4_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_19:                               # %if.end.31
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_22
# BB#21:                                # %if.then.35
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tag_cache_add_container, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_25
.LBB4_23:                               # %if.end.37
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movabsq	$gimp_tag_cache_object_initialize, %rsi
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rax, 8(%rdi)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	callq	gimp_container_foreach
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_tag_cache_container_add_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB4_25:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_tag_cache_add_container, .Lfunc_end4-gimp_tag_cache_add_container
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_cache_object_initialize,@function
gimp_tag_cache_object_initialize:       # @gimp_tag_cache_object_initialize
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
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_tag_cache_add_object
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_tag_cache_object_initialize, .Lfunc_end5-gimp_tag_cache_object_initialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_cache_container_add_callback,@function
gimp_tag_cache_container_add_callback:  # @gimp_tag_cache_container_add_callback
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_tag_cache_add_object
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_tag_cache_container_add_callback, .Lfunc_end6-gimp_tag_cache_container_add_callback
	.cfi_endproc

	.globl	gimp_tag_cache_save
	.align	16, 0x90
	.type	gimp_tag_cache_save,@function
gimp_tag_cache_save:                    # @gimp_tag_cache_save
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	$0, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_tag_cache_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tag_cache_save, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_52
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	$0, -24(%rbp)
	movl	$0, -52(%rbp)
.LBB7_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB7_19
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB7_13 Depth=1
	movslq	-52(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	imulq	$24, %rax, %rax
	addq	%rax, %rcx
	movq	%rcx, -88(%rbp)
	movq	-88(%rbp), %rax
	movb	16(%rax), %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	cmpl	$0, %esi
	jne	.LBB7_17
# BB#15:                                # %land.lhs.true.16
                                        #   in Loop: Header=BB7_13 Depth=1
	movq	-88(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_17
# BB#16:                                # %if.then.18
                                        #   in Loop: Header=BB7_13 Depth=1
	movl	$1, %eax
	movl	%eax, %edi
	movl	$24, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movl	(%rax), %ecx
	movq	-96(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-88(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-96(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_list_copy
	movq	-96(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-24(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -24(%rbp)
.LBB7_17:                               # %if.end.27
                                        #   in Loop: Header=BB7_13 Depth=1
	jmp	.LBB7_18
.LBB7_18:                               # %for.inc
                                        #   in Loop: Header=BB7_13 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB7_13
.LBB7_19:                               # %for.end
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB7_20:                               # %for.cond.29
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB7_26
# BB#21:                                # %for.body.31
                                        #   in Loop: Header=BB7_20 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_container_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_tag_cache_tagged_to_cache_record_foreach, %rsi
	leaq	-24(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	gimp_container_foreach
# BB#22:                                # %for.inc.35
                                        #   in Loop: Header=BB7_20 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB7_24
# BB#23:                                # %cond.true
                                        #   in Loop: Header=BB7_20 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB7_25
.LBB7_24:                               # %cond.false
                                        #   in Loop: Header=BB7_20 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB7_25
.LBB7_25:                               # %cond.end
                                        #   in Loop: Header=BB7_20 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB7_20
.LBB7_26:                               # %for.end.37
	movq	-24(%rbp), %rdi
	callq	g_list_reverse
	movabsq	$.L.str.5, %rdi
	movq	%rax, -24(%rbp)
	callq	g_string_new
	movabsq	$.L.str.6, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_string_append
	movabsq	$.L.str.7, %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_string_append
	movq	-24(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB7_27:                               # %for.cond.42
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_29 Depth 2
	cmpq	$0, -32(%rbp)
	je	.LBB7_42
# BB#28:                                # %for.body.44
                                        #   in Loop: Header=BB7_27 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %edi
	callq	g_quark_to_string
	movq	$-1, %rsi
	movq	%rax, %rdi
	callq	g_markup_escape_text
	movq	%rax, -120(%rbp)
	movq	-16(%rbp), %rdi
	movq	-120(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	4(%rax), %ecx
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	callq	g_quark_to_string
	movabsq	$.L.str.8, %rsi
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	-200(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_string_append_printf
	movq	-120(%rbp), %rdi
	callq	g_free
	movq	-104(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -112(%rbp)
.LBB7_29:                               # %for.cond.56
                                        #   Parent Loop BB7_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB7_37
# BB#30:                                # %for.body.58
                                        #   in Loop: Header=BB7_29 Depth=2
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_tag_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	callq	gimp_tag_get_internal
	cmpl	$0, %eax
	jne	.LBB7_32
# BB#31:                                # %if.then.65
                                        #   in Loop: Header=BB7_29 Depth=2
	movq	-136(%rbp), %rdi
	callq	gimp_tag_get_name
	movq	$-1, %rsi
	movq	%rax, %rdi
	callq	g_markup_escape_text
	movabsq	$.L.str.9, %rsi
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rdi
	movq	-128(%rbp), %rdx
	movb	$0, %al
	callq	g_string_append_printf
	movq	-128(%rbp), %rdi
	callq	g_free
.LBB7_32:                               # %if.end.68
                                        #   in Loop: Header=BB7_29 Depth=2
	jmp	.LBB7_33
.LBB7_33:                               # %for.inc.69
                                        #   in Loop: Header=BB7_29 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB7_35
# BB#34:                                # %cond.true.71
                                        #   in Loop: Header=BB7_29 Depth=2
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB7_36
.LBB7_35:                               # %cond.false.73
                                        #   in Loop: Header=BB7_29 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB7_36
.LBB7_36:                               # %cond.end.74
                                        #   in Loop: Header=BB7_29 Depth=2
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -112(%rbp)
	jmp	.LBB7_29
.LBB7_37:                               # %for.end.76
                                        #   in Loop: Header=BB7_27 Depth=1
	movabsq	$.L.str.10, %rsi
	movq	-16(%rbp), %rdi
	callq	g_string_append
	movq	%rax, -224(%rbp)        # 8-byte Spill
# BB#38:                                # %for.inc.78
                                        #   in Loop: Header=BB7_27 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB7_40
# BB#39:                                # %cond.true.80
                                        #   in Loop: Header=BB7_27 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB7_41
.LBB7_40:                               # %cond.false.82
                                        #   in Loop: Header=BB7_27 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB7_41
.LBB7_41:                               # %cond.end.83
                                        #   in Loop: Header=BB7_27 Depth=1
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB7_27
.LBB7_42:                               # %for.end.85
	movabsq	$.L.str.11, %rsi
	movq	-16(%rbp), %rdi
	callq	g_string_append
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_directory
	movabsq	$.L.str.12, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	leaq	-48(%rbp), %rcx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	callq	g_file_set_contents
	cmpl	$0, %eax
	jne	.LBB7_44
# BB#43:                                # %if.then.92
	movabsq	$.L.str.13, %rdi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_printerr
	movq	-48(%rbp), %rdi
	callq	g_error_free
.LBB7_44:                               # %if.end.93
	movq	-40(%rbp), %rdi
	callq	g_free
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	g_string_free
	movq	-24(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB7_45:                               # %for.cond.95
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB7_51
# BB#46:                                # %for.body.97
                                        #   in Loop: Header=BB7_45 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_list_free
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
# BB#47:                                # %for.inc.102
                                        #   in Loop: Header=BB7_45 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB7_49
# BB#48:                                # %cond.true.104
                                        #   in Loop: Header=BB7_45 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB7_50
.LBB7_49:                               # %cond.false.106
                                        #   in Loop: Header=BB7_45 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB7_50
.LBB7_50:                               # %cond.end.107
                                        #   in Loop: Header=BB7_45 Depth=1
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB7_45
.LBB7_51:                               # %for.end.109
	movq	-24(%rbp), %rdi
	callq	g_list_free
.LBB7_52:                               # %return
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_tag_cache_save, .Lfunc_end7-gimp_tag_cache_save
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_cache_tagged_to_cache_record_foreach,@function
gimp_tag_cache_tagged_to_cache_record_foreach: # @gimp_tag_cache_tagged_to_cache_record_foreach
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
	movq	-8(%rbp), %rdi
	callq	gimp_tagged_get_identifier
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %edi
	movl	$24, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_tagged_get_checksum
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_quark_from_string
	movq	-32(%rbp), %rsi
	movl	%eax, (%rsi)
	movq	-40(%rbp), %rdi
	callq	g_quark_from_string
	movq	-32(%rbp), %rsi
	movl	%eax, 4(%rsi)
	movq	-8(%rbp), %rdi
	callq	gimp_tagged_get_tags
	movq	%rax, %rdi
	callq	g_list_copy
	movq	-32(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi)
.LBB8_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	g_free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_tag_cache_tagged_to_cache_record_foreach, .Lfunc_end8-gimp_tag_cache_tagged_to_cache_record_foreach
	.cfi_endproc

	.globl	gimp_tag_cache_load
	.align	16, 0x90
	.type	gimp_tag_cache_load,@function
gimp_tag_cache_load:                    # @gimp_tag_cache_load
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
	pushq	%rbx
	subq	$200, %rsp
.Ltmp30:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	$0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_tag_cache_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -132(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -132(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tag_cache_load, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_19
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rdi
	callq	g_array_set_size
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rax, (%rdi)
	callq	gimp_directory
	movabsq	$.L.str.12, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	xorl	%ecx, %ecx
	movl	$24, %edx
	movq	%rax, -24(%rbp)
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	g_array_new
	leaq	-72(%rbp), %rdi
	leaq	-112(%rbp), %r8
	movabsq	$gimp_tag_cache_load_error, %r9
	movabsq	$gimp_tag_cache_load_text, %r10
	movabsq	$gimp_tag_cache_load_end_element, %r11
	movabsq	$gimp_tag_cache_load_start_element, %rbx
	xorl	%esi, %esi
	movl	$24, %ecx
	movl	%ecx, %edx
	movq	%rax, -112(%rbp)
	movq	%r8, %rax
	addq	$8, %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%r11, -152(%rbp)        # 8-byte Spill
	movq	%rbx, -160(%rbp)        # 8-byte Spill
	movq	%r8, -168(%rbp)         # 8-byte Spill
	movq	%r9, -176(%rbp)         # 8-byte Spill
	movq	%r10, -184(%rbp)        # 8-byte Spill
	callq	memset
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -64(%rbp)
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	-176(%rbp), %r8         # 8-byte Reload
	movq	%r8, -40(%rbp)
	movq	-168(%rbp), %r9         # 8-byte Reload
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%r9, %rsi
	callq	gimp_xml_parser_new
	leaq	-32(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_xml_parser_parse_file
	cmpl	$0, %eax
	je	.LBB9_14
# BB#13:                                # %if.then.22
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rdi
	movq	-112(%rbp), %rax
	movq	(%rax), %rsi
	movq	-112(%rbp), %rax
	movl	8(%rax), %edx
	callq	g_array_append_vals
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, (%rsi)
	jmp	.LBB9_18
.LBB9_14:                               # %if.else.30
	cmpq	$0, -32(%rbp)
	je	.LBB9_16
# BB#15:                                # %cond.true
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB9_17
.LBB9_16:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB9_17
.LBB9_17:                               # %cond.end
	movq	-192(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.14, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_printerr
.LBB9_18:                               # %if.end.32
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-80(%rbp), %rdi
	callq	gimp_xml_parser_free
	movl	$1, %esi
	movq	-112(%rbp), %rdi
	callq	g_array_free
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB9_19:                               # %return
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_tag_cache_load, .Lfunc_end9-gimp_tag_cache_load
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_cache_load_start_element,@function
gimp_tag_cache_load_start_element:      # @gimp_tag_cache_load_start_element
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	-16(%rbp), %rdi
	movl	$.L.str.15, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB10_4
# BB#1:                                 # %if.then
	movabsq	$.L.str.16, %rdx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_tag_cache_attribute_name_to_value
	movabsq	$.L.str.17, %rdx
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_tag_cache_attribute_name_to_value
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then.4
	movq	-48(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_tag_cache_get_error_domain
	movl	$1001, %edx             # imm = 0x3E9
	movabsq	$.L.str.18, %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB10_4
.LBB10_3:                               # %if.end
	xorl	%esi, %esi
	movl	$24, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, %rdi
	callq	memset
	movq	-64(%rbp), %rdi
	callq	g_quark_from_string
	movq	-56(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movq	-72(%rbp), %rdi
	callq	g_quark_from_string
	movq	-56(%rbp), %rcx
	movl	%eax, 12(%rcx)
.LBB10_4:                               # %if.end.12
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_tag_cache_load_start_element, .Lfunc_end10-gimp_tag_cache_load_start_element
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_cache_load_end_element,@function
gimp_tag_cache_load_end_element:        # @gimp_tag_cache_load_end_element
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movl	$.L.str.15, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movl	$1, %edx
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rsi
	callq	g_array_append_vals
	xorl	%esi, %esi
	movl	$24, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	memset
.LBB11_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_tag_cache_load_end_element, .Lfunc_end11-gimp_tag_cache_load_end_element
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_cache_load_text,@function
gimp_tag_cache_load_text:               # @gimp_tag_cache_load_text
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$2144, %rsp             # imm = 0x860
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_markup_parse_context_get_element
	movabsq	$.L.str.20, %rsi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_strcmp0
	cmpl	$0, %eax
	jne	.LBB12_7
# BB#1:                                 # %if.then
	cmpq	$2048, -24(%rbp)        # imm = 0x800
	jb	.LBB12_3
# BB#2:                                 # %if.then.3
	movq	-40(%rbp), %rdi
	movq	%rdi, -2128(%rbp)       # 8-byte Spill
	callq	gimp_tag_cache_get_error_domain
	movl	$1002, %edx             # imm = 0x3EA
	movabsq	$.L.str.21, %rcx
	movq	-2128(%rbp), %rdi       # 8-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB12_7
.LBB12_3:                               # %if.end
	leaq	-2112(%rbp), %rax
	movq	%rax, %rcx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, -2136(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-24(%rbp), %rax
	movb	$0, -2112(%rbp,%rax)
	movq	-2136(%rbp), %rdi       # 8-byte Reload
	callq	gimp_tag_new
	movq	%rax, -2120(%rbp)
	cmpq	$0, -2120(%rbp)
	je	.LBB12_5
# BB#4:                                 # %if.then.6
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-2120(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	-48(%rbp), %rsi
	movq	%rax, 16(%rsi)
	jmp	.LBB12_6
.LBB12_5:                               # %if.else
	leaq	-2112(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	8(%rax), %edi
	movq	%rsi, -2144(%rbp)       # 8-byte Spill
	callq	g_quark_to_string
	movabsq	$.L.str.22, %rdi
	movq	-2144(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_warning
.LBB12_6:                               # %if.end.13
	jmp	.LBB12_7
.LBB12_7:                               # %if.end.14
	addq	$2144, %rsp             # imm = 0x860
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_tag_cache_load_text, .Lfunc_end12-gimp_tag_cache_load_text
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_cache_load_error,@function
gimp_tag_cache_load_error:              # @gimp_tag_cache_load_error
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$.L.str.23, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -28(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_tag_cache_load_error, .Lfunc_end13-gimp_tag_cache_load_error
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_cache_class_init,@function
gimp_tag_cache_class_init:              # @gimp_tag_cache_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_tag_cache_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movl	$16, %ecx
	movl	%ecx, %esi
	movabsq	$gimp_tag_cache_get_memsize, %rdi
	movabsq	$gimp_tag_cache_finalize, %rdx
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 152(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_tag_cache_class_init, .Lfunc_end14-gimp_tag_cache_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_cache_finalize,@function
gimp_tag_cache_finalize:                # @gimp_tag_cache_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_tag_cache_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#1:                                 # %if.then
	movl	$0, -20(%rbp)
.LBB15_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB15_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB15_2 Depth=1
	movabsq	$g_object_unref, %rsi
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	imulq	$24, %rax, %rax
	addq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_list_free_full
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB15_2 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB15_2
.LBB15_5:                               # %for.end
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rdi
	callq	g_array_free
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	$0, (%rdi)
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB15_6:                               # %if.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB15_8
# BB#7:                                 # %if.then.13
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	$0, 8(%rax)
.LBB15_8:                               # %if.end.18
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_tag_cache_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_tag_cache_finalize, .Lfunc_end15-gimp_tag_cache_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_cache_get_memsize,@function
gimp_tag_cache_get_memsize:             # @gimp_tag_cache_get_memsize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_tag_cache_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdi
	callq	gimp_g_list_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %eax
	imulq	$24, %rax, %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	gimp_tag_cache_parent_class, %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-48(%rbp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	movq	%rsi, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_tag_cache_get_memsize, .Lfunc_end16-gimp_tag_cache_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_cache_add_object,@function
gimp_tag_cache_add_object:              # @gimp_tag_cache_add_object
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -44(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_tagged_get_identifier
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB17_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	g_quark_try_string
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free
.LBB17_2:                               # %if.end
	cmpl	$0, -28(%rbp)
	je	.LBB17_17
# BB#3:                                 # %if.then.3
	movl	$0, -60(%rbp)
.LBB17_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB17_16
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB17_4 Depth=1
	movslq	-60(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	imulq	$24, %rax, %rax
	addq	%rax, %rcx
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	cmpl	-28(%rbp), %edx
	jne	.LBB17_14
# BB#6:                                 # %if.then.8
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB17_7:                               # %for.cond.9
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB17_13
# BB#8:                                 # %for.body.11
                                        #   in Loop: Header=BB17_7 Depth=1
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_tag_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_tagged_add_tag
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB17_7 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB17_11
# BB#10:                                # %cond.true
                                        #   in Loop: Header=BB17_7 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB17_12
.LBB17_11:                              # %cond.false
                                        #   in Loop: Header=BB17_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB17_12
.LBB17_12:                              # %cond.end
                                        #   in Loop: Header=BB17_7 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB17_7
.LBB17_13:                              # %for.end
	movq	-72(%rbp), %rax
	movb	16(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 16(%rax)
	jmp	.LBB17_34
.LBB17_14:                              # %if.end.16
                                        #   in Loop: Header=BB17_4 Depth=1
	jmp	.LBB17_15
.LBB17_15:                              # %for.inc.17
                                        #   in Loop: Header=BB17_4 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB17_4
.LBB17_16:                              # %for.end.18
	jmp	.LBB17_17
.LBB17_17:                              # %if.end.19
	movq	-16(%rbp), %rdi
	callq	gimp_tagged_get_checksum
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB17_19
# BB#18:                                # %if.then.22
	movq	-40(%rbp), %rdi
	callq	g_quark_try_string
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_free
.LBB17_19:                              # %if.end.24
	cmpl	$0, -44(%rbp)
	je	.LBB17_34
# BB#20:                                # %if.then.26
	movl	$0, -60(%rbp)
.LBB17_21:                              # %for.cond.27
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB17_33
# BB#22:                                # %for.body.32
                                        #   in Loop: Header=BB17_21 Depth=1
	movslq	-60(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	imulq	$24, %rax, %rax
	addq	%rax, %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rax
	movl	4(%rax), %edx
	cmpl	-44(%rbp), %edx
	jne	.LBB17_31
# BB#23:                                # %if.then.41
	movl	-28(%rbp), %eax
	movq	-80(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -56(%rbp)
.LBB17_24:                              # %for.cond.44
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB17_30
# BB#25:                                # %for.body.46
                                        #   in Loop: Header=BB17_24 Depth=1
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_tag_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_tagged_add_tag
# BB#26:                                # %for.inc.50
                                        #   in Loop: Header=BB17_24 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB17_28
# BB#27:                                # %cond.true.52
                                        #   in Loop: Header=BB17_24 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB17_29
.LBB17_28:                              # %cond.false.54
                                        #   in Loop: Header=BB17_24 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB17_29
.LBB17_29:                              # %cond.end.55
                                        #   in Loop: Header=BB17_24 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB17_24
.LBB17_30:                              # %for.end.57
	movq	-80(%rbp), %rax
	movb	16(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 16(%rax)
	jmp	.LBB17_34
.LBB17_31:                              # %if.end.62
                                        #   in Loop: Header=BB17_21 Depth=1
	jmp	.LBB17_32
.LBB17_32:                              # %for.inc.63
                                        #   in Loop: Header=BB17_21 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB17_21
.LBB17_33:                              # %for.end.65
	jmp	.LBB17_34
.LBB17_34:                              # %if.end.66
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_tag_cache_add_object, .Lfunc_end17-gimp_tag_cache_add_object
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_cache_attribute_name_to_value,@function
gimp_tag_cache_attribute_name_to_value: # @gimp_tag_cache_attribute_name_to_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
.LBB18_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB18_4
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB18_6
.LBB18_4:                               # %if.end
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB18_1
.LBB18_5:                               # %while.end
	movq	$0, -8(%rbp)
.LBB18_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_tag_cache_attribute_name_to_value, .Lfunc_end18-gimp_tag_cache_attribute_name_to_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_cache_get_error_domain,@function
gimp_tag_cache_get_error_domain:        # @gimp_tag_cache_get_error_domain
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	movabsq	$.L.str.19, %rdi
	callq	g_quark_from_static_string
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_tag_cache_get_error_domain, .Lfunc_end19-gimp_tag_cache_get_error_domain
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
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
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end20:
	.size	g_warning, .Lfunc_end20-g_warning
	.cfi_endproc

	.type	gimp_tag_cache_get_type.g_define_type_id__volatile,@object # @gimp_tag_cache_get_type.g_define_type_id__volatile
	.local	gimp_tag_cache_get_type.g_define_type_id__volatile
	.comm	gimp_tag_cache_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpTagCache"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_tag_cache_add_container,@object # @__func__.gimp_tag_cache_add_container
.L__func__.gimp_tag_cache_add_container:
	.asciz	"gimp_tag_cache_add_container"
	.size	.L__func__.gimp_tag_cache_add_container, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_TAG_CACHE (cache)"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_CONTAINER (container)"
	.size	.L.str.3, 30

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"add"
	.size	.L.str.4, 4

	.type	.L__func__.gimp_tag_cache_save,@object # @__func__.gimp_tag_cache_save
.L__func__.gimp_tag_cache_save:
	.asciz	"gimp_tag_cache_save"
	.size	.L__func__.gimp_tag_cache_save, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.zero	1
	.size	.L.str.5, 1

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"<?xml version='1.0' encoding='UTF-8'?>\n"
	.size	.L.str.6, 40

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"<tags>\n"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\n  <resource identifier=\"%s\" checksum=\"%s\">\n"
	.size	.L.str.8, 45

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"    <tag>%s</tag>\n"
	.size	.L.str.9, 19

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"  </resource>\n"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"</tags>\n"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"tags.xml"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Error while saving tag cache: %s\n"
	.size	.L.str.13, 34

	.type	.L__func__.gimp_tag_cache_load,@object # @__func__.gimp_tag_cache_load
.L__func__.gimp_tag_cache_load:
	.asciz	"gimp_tag_cache_load"
	.size	.L__func__.gimp_tag_cache_load, 20

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Failed to parse tag cache: %s\n"
	.size	.L.str.14, 31

	.type	gimp_tag_cache_parent_class,@object # @gimp_tag_cache_parent_class
	.local	gimp_tag_cache_parent_class
	.comm	gimp_tag_cache_parent_class,8,8
	.type	GimpTagCache_private_offset,@object # @GimpTagCache_private_offset
	.local	GimpTagCache_private_offset
	.comm	GimpTagCache_private_offset,4,4
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"resource"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"identifier"
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"checksum"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Resource tag does not contain required attribute identifier."
	.size	.L.str.18, 61

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-tag-cache-error-quark"
	.size	.L.str.19, 27

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"tag"
	.size	.L.str.20, 4

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Tag value is too long."
	.size	.L.str.21, 23

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"dropping invalid tag '%s' from '%s'\n"
	.size	.L.str.22, 37

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Tag cache parse error: %s\n"
	.size	.L.str.23, 27


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
