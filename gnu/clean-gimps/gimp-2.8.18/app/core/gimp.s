	.text
	.file	"gimp.bc"
	.globl	gimp_get_type
	.align	16, 0x90
	.type	gimp_get_type,@function
gimp_get_type:                          # @gimp_get_type
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
	movq	gimp_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_get_type.g_define_type_id__volatile, %rax
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
	movl	$200, %edx
	movabsq	$gimp_class_intern_init, %rdi
	movl	$592, %r8d              # imm = 0x250
	movabsq	$gimp_init, %rcx
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
	movabsq	$gimp_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_get_type, .Lfunc_end0-gimp_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_class_intern_init,@function
gimp_class_intern_init:                 # @gimp_class_intern_init
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
	movq	%rax, gimp_parent_class
	cmpl	$0, Gimp_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$Gimp_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_class_intern_init, .Lfunc_end1-gimp_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_init,@function
gimp_init:                              # @gimp_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, 32(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 48(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 56(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 60(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 68(%rdi)
	movq	-8(%rbp), %rdi
	movl	$1, 72(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 76(%rdi)
	movq	-8(%rbp), %rdi
	movl	$1, 80(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 88(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 92(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 304(%rdi)
	movq	-8(%rbp), %rdi
	callq	gimp_gui_init
	movq	-8(%rbp), %rdi
	movl	$0, 308(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 312(%rdi)
	movq	-8(%rbp), %rdi
	callq	gimp_units_init
	callq	gimp_parasite_list_new
	movq	-8(%rbp), %rdi
	movq	%rax, 336(%rdi)
	movq	-8(%rbp), %rdi
	callq	gimp_modules_init
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_manager_new
	movq	-8(%rbp), %rdi
	movq	%rax, 376(%rdi)
	callq	gimp_image_get_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_list_new_weak
	movq	-8(%rbp), %rdi
	movq	%rax, 384(%rdi)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.72, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movq	-8(%rbp), %rax
	movl	$1, 392(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 396(%rax)
	callq	gimp_id_table_new
	movq	-8(%rbp), %rsi
	movq	%rax, 400(%rsi)
	callq	gimp_id_table_new
	movq	-8(%rbp), %rsi
	movq	%rax, 408(%rsi)
	callq	gimp_list_get_type
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movabsq	$.L.str.73, %rsi
	movabsq	$.L.str.74, %rcx
	movl	$1, %r8d
	movabsq	$.L.str.75, %r9
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-24(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movl	$1, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_new
	movq	-8(%rbp), %rcx
	movq	%rax, 416(%rcx)
	movq	-8(%rbp), %rax
	movq	416(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.76, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movq	-8(%rbp), %rax
	movl	$1, 424(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 432(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 440(%rax)
	callq	gimp_buffer_get_type
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_list_new
	movq	-8(%rbp), %rcx
	movq	%rax, 448(%rcx)
	movq	-8(%rbp), %rax
	movq	448(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.77, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movq	-8(%rbp), %rax
	movq	$0, 456(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 464(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 472(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 480(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 488(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 496(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 504(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 512(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_pdb_new
	movq	-8(%rbp), %rcx
	movq	%rax, 520(%rcx)
	movq	-8(%rbp), %rdi
	callq	xcf_init
	callq	gimp_tool_info_get_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_list_new
	movq	-8(%rbp), %rcx
	movq	%rax, 528(%rcx)
	movq	-8(%rbp), %rax
	movq	528(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.78, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movq	-8(%rbp), %rax
	movq	$0, 536(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_document_list_new
	movq	-8(%rbp), %rcx
	movq	%rax, 544(%rcx)
	callq	gimp_template_get_type
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_list_new
	movq	-8(%rbp), %rcx
	movq	%rax, 552(%rcx)
	movq	-8(%rbp), %rax
	movq	552(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.79, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movq	-8(%rbp), %rax
	movq	$0, 560(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 568(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 576(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 584(%rax)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_init, .Lfunc_end2-gimp_init
	.cfi_endproc

	.globl	gimp_new
	.align	16, 0x90
	.type	gimp_new,@function
gimp_new:                               # @gimp_new
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
	pushq	%rbx
	subq	$72, %rsp
.Ltmp12:
	.cfi_offset %rbx, -24
	movl	40(%rbp), %eax
	movl	32(%rbp), %r10d
	movl	24(%rbp), %r11d
	movl	16(%rbp), %ebx
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	movl	%ebx, -52(%rbp)
	movl	%r11d, -56(%rbp)
	movl	%r10d, -60(%rbp)
	movl	%eax, -64(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB3_6
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	callq	gimp_get_type
	movabsq	$.L.str.3, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_strdup
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-72(%rbp), %rcx
	movq	%rax, 48(%rcx)
	cmpl	$0, -36(%rbp)
	movl	%r8d, %r10d
	cmovnel	%r9d, %r10d
	movq	-72(%rbp), %rax
	movl	%r10d, 56(%rax)
	cmpl	$0, -40(%rbp)
	movl	%r8d, %r10d
	cmovnel	%r9d, %r10d
	movq	-72(%rbp), %rax
	movl	%r10d, 60(%rax)
	cmpl	$0, -44(%rbp)
	movl	%r8d, %r10d
	cmovnel	%r9d, %r10d
	movq	-72(%rbp), %rax
	movl	%r10d, 64(%rax)
	cmpl	$0, -48(%rbp)
	movl	%r8d, %r10d
	cmovnel	%r9d, %r10d
	movq	-72(%rbp), %rax
	movl	%r10d, 68(%rax)
	cmpl	$0, -52(%rbp)
	movl	%r8d, %r10d
	cmovnel	%r9d, %r10d
	movq	-72(%rbp), %rax
	movl	%r10d, 76(%rax)
	cmpl	$0, -56(%rbp)
	cmovnel	%r9d, %r8d
	movq	-72(%rbp), %rax
	movl	%r8d, 84(%rax)
	movl	-60(%rbp), %r8d
	movq	-72(%rbp), %rax
	movl	%r8d, 88(%rax)
	movl	-64(%rbp), %r8d
	movq	-72(%rbp), %rax
	movl	%r8d, 92(%rax)
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB3_6:                                # %return
	movq	-16(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_new, .Lfunc_end3-gimp_new
	.cfi_endproc

	.globl	gimp_set_show_gui
	.align	16, 0x90
	.type	gimp_set_show_gui,@function
gimp_set_show_gui:                      # @gimp_set_show_gui
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
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
	movabsq	$.L__func__.gimp_set_show_gui, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 72(%rcx)
.LBB4_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_set_show_gui, .Lfunc_end4-gimp_set_show_gui
	.cfi_endproc

	.globl	gimp_get_show_gui
	.align	16, 0x90
	.type	gimp_get_show_gui,@function
gimp_get_show_gui:                      # @gimp_get_show_gui
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_get_show_gui, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	72(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB5_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_get_show_gui, .Lfunc_end5-gimp_get_show_gui
	.cfi_endproc

	.globl	gimp_load_config
	.align	16, 0x90
	.type	gimp_load_config,@function
gimp_load_config:                       # @gimp_load_config
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_load_config, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_25
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB6_15
# BB#14:                                # %if.then.13
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_load_config, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_25
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	jmp	.LBB6_18
.LBB6_18:                               # %do.body.17
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB6_20
# BB#19:                                # %if.then.19
	jmp	.LBB6_21
.LBB6_20:                               # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_load_config, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_25
.LBB6_21:                               # %if.end.21
	jmp	.LBB6_22
.LBB6_22:                               # %do.end.22
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB6_24
# BB#23:                                # %if.then.24
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_load_config, %rsi
	movb	$0, %al
	callq	g_print
.LBB6_24:                               # %if.end.25
	movq	-8(%rbp), %rdi
	callq	gimp_unitrc_load
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	56(%rax), %edx
	callq	gimp_rc_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_core_config_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movabsq	$.L.str.8, %rsi
	movabsq	$gimp_global_config_notify, %rdi
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.8, %rsi
	movabsq	$gimp_edit_config_notify, %rcx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_signal_connect_object
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB6_25:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_load_config, .Lfunc_end6-gimp_load_config
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_global_config_notify,@function
gimp_global_config_notify:              # @gimp_global_config_notify
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
	subq	$176, %rsp
	leaq	-48(%rbp), %rax
	xorl	%ecx, %ecx
	movl	$24, %r8d
	movl	%r8d, %r9d
	leaq	-72(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, %rdx
	movq	%rdx, %rdi
	movl	%ecx, %esi
	movq	%r9, %rdx
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%r10, -88(%rbp)         # 8-byte Spill
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	memset
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	memset
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	callq	g_value_init
	leaq	-72(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_value_init
	leaq	-48(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_object_get_property
	leaq	-72(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	callq	g_object_get_property
	leaq	-48(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	g_param_values_cmp
	cmpl	$0, %eax
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_edit_config_notify, %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r9, -136(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-136(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	leaq	-48(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	8(%r8), %rsi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	g_object_set_property
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_edit_config_notify, %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r9, -160(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-160(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB7_2:                                # %if.end
	leaq	-48(%rbp), %rdi
	callq	g_value_unset
	leaq	-72(%rbp), %rdi
	callq	g_value_unset
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_global_config_notify, .Lfunc_end7-gimp_global_config_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_edit_config_notify,@function
gimp_edit_config_notify:                # @gimp_edit_config_notify
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
	subq	$176, %rsp
	leaq	-48(%rbp), %rax
	xorl	%ecx, %ecx
	movl	$24, %r8d
	movl	%r8d, %r9d
	leaq	-72(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, %rdx
	movq	%rdx, %rdi
	movl	%ecx, %esi
	movq	%r9, %rdx
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%r10, -88(%rbp)         # 8-byte Spill
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	memset
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	memset
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	callq	g_value_init
	leaq	-72(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_value_init
	leaq	-48(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_object_get_property
	leaq	-72(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	callq	g_object_get_property
	leaq	-48(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	g_param_values_cmp
	cmpl	$0, %eax
	je	.LBB8_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$1024, %ecx             # imm = 0x400
	cmpl	$0, %ecx
	je	.LBB8_3
# BB#2:                                 # %if.then.6
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_global_config_notify, %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r9, -136(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-136(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	leaq	-48(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	8(%r8), %rsi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	g_object_set_property
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_global_config_notify, %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r9, -160(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-160(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %if.end.10
	leaq	-48(%rbp), %rdi
	callq	g_value_unset
	leaq	-72(%rbp), %rdi
	callq	g_value_unset
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_edit_config_notify, .Lfunc_end8-gimp_edit_config_notify
	.cfi_endproc

	.globl	gimp_initialize
	.align	16, 0x90
	.type	gimp_initialize,@function
gimp_initialize:                        # @gimp_initialize
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_initialize, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_32
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB9_15
# BB#14:                                # %if.then.13
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_initialize, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_32
.LBB9_16:                               # %if.end.15
	jmp	.LBB9_17
.LBB9_17:                               # %do.end.16
	jmp	.LBB9_18
.LBB9_18:                               # %do.body.17
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_core_config_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB9_20
# BB#19:                                # %if.then.26
	movl	$0, -60(%rbp)
	jmp	.LBB9_25
.LBB9_20:                               # %if.else.27
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_23
# BB#21:                                # %land.lhs.true.30
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB9_23
# BB#22:                                # %if.then.34
	movl	$1, -60(%rbp)
	jmp	.LBB9_24
.LBB9_23:                               # %if.else.35
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB9_24:                               # %if.end.37
	jmp	.LBB9_25
.LBB9_25:                               # %if.end.38
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB9_27
# BB#26:                                # %if.then.41
	jmp	.LBB9_28
.LBB9_27:                               # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_initialize, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_32
.LBB9_28:                               # %if.end.43
	jmp	.LBB9_29
.LBB9_29:                               # %do.end.44
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB9_31
# BB#30:                                # %if.then.46
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_initialize, %rsi
	movb	$0, %al
	callq	g_print
.LBB9_31:                               # %if.end.47
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_signals, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB9_32:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_initialize, .Lfunc_end9-gimp_initialize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4603579539098121011     # double 0.59999999999999998
.LCPI10_1:
	.quad	4602678819172646912     # double 0.5
.LCPI10_2:
	.quad	4600877379321698714     # double 0.40000000000000002
.LCPI10_3:
	.quad	4599075939470750515     # double 0.29999999999999999
.LCPI10_4:
	.quad	4596373779694328218     # double 0.20000000000000001
.LCPI10_5:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI10_6:
	.quad	4604029899060858061     # double 0.65000000000000002
.LCPI10_7:
	.quad	4606281698874543309     # double 0.90000000000000002
.LCPI10_8:
	.quad	4605380978949069210     # double 0.80000000000000004
.LCPI10_9:
	.quad	4604480259023595110     # double 0.69999999999999996
	.text
	.globl	gimp_restore
	.align	16, 0x90
	.type	gimp_restore,@function
gimp_restore:                           # @gimp_restore
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_restore, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_24
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB10_15
# BB#14:                                # %if.then.13
	jmp	.LBB10_16
.LBB10_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_restore, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_24
.LBB10_16:                              # %if.end.15
	jmp	.LBB10_17
.LBB10_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB10_19
# BB#18:                                # %if.then.18
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_restore, %rsi
	movb	$0, %al
	callq	g_print
.LBB10_19:                              # %if.end.19
	movabsq	$.L.str.11, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.12, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	xorps	%xmm0, %xmm0
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rdi
	callq	gimp_parasiterc_load
	movabsq	$.L.str.13, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movsd	.LCPI10_5, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rsi
	movq	-64(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	464(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	584(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	60(%rax), %edx
	callq	gimp_data_factory_data_init
	movabsq	$.L.str.14, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movsd	.LCPI10_4, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rsi
	movq	-72(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	472(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	584(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	60(%rax), %edx
	callq	gimp_data_factory_data_init
	movabsq	$.L.str.15, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movsd	.LCPI10_3, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rsi
	movq	-80(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	480(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	584(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	60(%rax), %edx
	callq	gimp_data_factory_data_init
	movabsq	$.L.str.16, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movsd	.LCPI10_2, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rsi
	movq	-88(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	496(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	584(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	60(%rax), %edx
	callq	gimp_data_factory_data_init
	movabsq	$.L.str.17, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rsi
	movq	-96(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	488(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	584(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	60(%rax), %edx
	callq	gimp_data_factory_data_init
	movabsq	$.L.str.18, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rsi
	movq	-104(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB10_21
# BB#20:                                # %if.then.37
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_fonts_load_with_status
.LBB10_21:                              # %if.end.38
	movq	-8(%rbp), %rax
	cmpl	$0, 68(%rax)
	jne	.LBB10_23
# BB#22:                                # %if.then.40
	movabsq	$.L.str.19, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movsd	.LCPI10_6, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rsi
	movq	-112(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	504(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	584(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	60(%rax), %edx
	callq	gimp_data_factory_data_init
.LBB10_23:                              # %if.end.44
	movabsq	$.L.str.20, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movsd	.LCPI10_9, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rsi
	movq	-120(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rdi
	callq	gimp_templates_load
	movabsq	$.L.str.21, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movsd	.LCPI10_8, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rsi
	movq	-128(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rdi
	callq	gimp_modules_load
	movabsq	$.L.str.22, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movsd	.LCPI10_7, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rsi
	movq	-136(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	512(%rax), %rdi
	callq	gimp_tag_cache_load
	movq	-8(%rbp), %rax
	movq	512(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	464(%rax), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_data_factory_get_container
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_tag_cache_add_container
	movq	-8(%rbp), %rax
	movq	512(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_data_factory_get_container
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_tag_cache_add_container
	movq	-8(%rbp), %rax
	movq	512(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_data_factory_get_container
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_tag_cache_add_container
	movq	-8(%rbp), %rax
	movq	512(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	488(%rax), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_data_factory_get_container
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_tag_cache_add_container
	movq	-8(%rbp), %rax
	movq	512(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	496(%rax), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_data_factory_get_container
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_tag_cache_add_container
	movq	-8(%rbp), %rax
	movq	512(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	504(%rax), %rax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_data_factory_get_container
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_tag_cache_add_container
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_signals+4, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB10_24:                              # %return
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_restore, .Lfunc_end10-gimp_restore
	.cfi_endproc

	.globl	gimp_is_restored
	.align	16, 0x90
	.type	gimp_is_restored,@function
gimp_is_restored:                       # @gimp_is_restored
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_is_restored, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_13
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	304(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB11_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_is_restored, .Lfunc_end11-gimp_is_restored
	.cfi_endproc

	.globl	gimp_exit
	.align	16, 0x90
	.type	gimp_exit,@function
gimp_exit:                              # @gimp_exit
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
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
	movabsq	$.L__func__.gimp_exit, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_15
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB12_14
# BB#13:                                # %if.then.12
	movabsq	$.L.str.23, %rdi
	movabsq	$.L__func__.gimp_exit, %rsi
	movb	$0, %al
	callq	g_print
.LBB12_14:                              # %if.end.13
	xorl	%eax, %eax
	leaq	-16(%rbp), %r8
	movl	$1, %ecx
	movq	-8(%rbp), %rdx
	movl	gimp_signals+8, %esi
	cmpl	$0, -12(%rbp)
	movl	%eax, %edi
	cmovnel	%ecx, %edi
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rdx, %rdi
	movl	%eax, %edx
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movb	$0, %al
	callq	g_signal_emit
.LBB12_15:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_exit, .Lfunc_end12-gimp_exit
	.cfi_endproc

	.globl	gimp_get_image_iter
	.align	16, 0x90
	.type	gimp_get_image_iter,@function
gimp_get_image_iter:                    # @gimp_get_image_iter
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_get_image_iter, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_13
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB13_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_get_image_iter, .Lfunc_end13-gimp_get_image_iter
	.cfi_endproc

	.globl	gimp_get_display_iter
	.align	16, 0x90
	.type	gimp_get_display_iter,@function
gimp_get_display_iter:                  # @gimp_get_display_iter
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_get_display_iter, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB14_13
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	416(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB14_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_get_display_iter, .Lfunc_end14-gimp_get_display_iter
	.cfi_endproc

	.globl	gimp_get_image_windows
	.align	16, 0x90
	.type	gimp_get_image_windows,@function
gimp_get_image_windows:                 # @gimp_get_image_windows
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_get_image_windows, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB15_13
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	432(%rax), %rdi
	callq	g_list_copy
	movq	%rax, -8(%rbp)
.LBB15_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_get_image_windows, .Lfunc_end15-gimp_get_image_windows
	.cfi_endproc

	.globl	gimp_get_paint_info_iter
	.align	16, 0x90
	.type	gimp_get_paint_info_iter,@function
gimp_get_paint_info_iter:               # @gimp_get_paint_info_iter
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
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
	movabsq	$.L__func__.gimp_get_paint_info_iter, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_13
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB16_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_get_paint_info_iter, .Lfunc_end16-gimp_get_paint_info_iter
	.cfi_endproc

	.globl	gimp_get_tool_info_iter
	.align	16, 0x90
	.type	gimp_get_tool_info_iter,@function
gimp_get_tool_info_iter:                # @gimp_get_tool_info_iter
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_get_tool_info_iter, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB17_13
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	528(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB17_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_get_tool_info_iter, .Lfunc_end17-gimp_get_tool_info_iter
	.cfi_endproc

	.globl	gimp_set_global_buffer
	.align	16, 0x90
	.type	gimp_set_global_buffer,@function
gimp_set_global_buffer:                 # @gimp_set_global_buffer
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_set_global_buffer, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_32
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	jmp	.LBB18_13
.LBB18_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB18_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_buffer_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB18_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB18_21
.LBB18_16:                              # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB18_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB18_20
.LBB18_19:                              # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB18_20:                              # %if.end.32
	jmp	.LBB18_21
.LBB18_21:                              # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB18_23
.LBB18_22:                              # %if.then.36
	jmp	.LBB18_24
.LBB18_23:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_set_global_buffer, %rsi
	movabsq	$.L.str.24, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_32
.LBB18_24:                              # %if.end.38
	jmp	.LBB18_25
.LBB18_25:                              # %do.end.39
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	440(%rcx), %rax
	jne	.LBB18_27
# BB#26:                                # %if.then.41
	jmp	.LBB18_32
.LBB18_27:                              # %if.end.42
	movq	-8(%rbp), %rax
	cmpq	$0, 440(%rax)
	je	.LBB18_29
# BB#28:                                # %if.then.45
	movq	-8(%rbp), %rax
	movq	440(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB18_29:                              # %if.end.47
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 440(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, 440(%rax)
	je	.LBB18_31
# BB#30:                                # %if.then.51
	movq	-8(%rbp), %rax
	movq	440(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB18_31:                              # %if.end.54
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_signals+12, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB18_32:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_set_global_buffer, .Lfunc_end18-gimp_set_global_buffer
	.cfi_endproc

	.globl	gimp_create_image
	.align	16, 0x90
	.type	gimp_create_image,@function
gimp_create_image:                      # @gimp_create_image
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_create_image, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB19_17
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	callq	gimp_image_new
	movq	%rax, -40(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB19_16
# BB#13:                                # %if.then.13
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	296(%rax), %rdi
	callq	gimp_template_get_comment
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB19_15
# BB#14:                                # %if.then.17
	movabsq	$.L.str.25, %rdi
	movl	$1, %esi
	movq	-72(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -92(%rbp)         # 4-byte Spill
	callq	strlen
	addq	$1, %rax
	movl	%eax, %esi
	movq	-72(%rbp), %rcx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %edx         # 4-byte Reload
	movl	%esi, -96(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-96(%rbp), %edx         # 4-byte Reload
	callq	gimp_parasite_new
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_image_parasite_attach
	movq	-80(%rbp), %rdi
	callq	gimp_parasite_free
.LBB19_15:                              # %if.end.21
	jmp	.LBB19_16
.LBB19_16:                              # %if.end.22
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB19_17:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_create_image, .Lfunc_end19-gimp_create_image
	.cfi_endproc

	.globl	gimp_set_default_context
	.align	16, 0x90
	.type	gimp_set_default_context,@function
gimp_set_default_context:               # @gimp_set_default_context
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_set_default_context, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_31
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	jmp	.LBB20_13
.LBB20_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB20_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB20_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB20_21
.LBB20_16:                              # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB20_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB20_20
.LBB20_19:                              # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB20_20:                              # %if.end.32
	jmp	.LBB20_21
.LBB20_21:                              # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB20_23
.LBB20_22:                              # %if.then.36
	jmp	.LBB20_24
.LBB20_23:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_set_default_context, %rsi
	movabsq	$.L.str.26, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_31
.LBB20_24:                              # %if.end.38
	jmp	.LBB20_25
.LBB20_25:                              # %do.end.39
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	576(%rcx), %rax
	je	.LBB20_31
# BB#26:                                # %if.then.41
	movq	-8(%rbp), %rax
	cmpq	$0, 576(%rax)
	je	.LBB20_28
# BB#27:                                # %if.then.44
	movq	-8(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB20_28:                              # %if.end.46
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 576(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, 576(%rax)
	je	.LBB20_30
# BB#29:                                # %if.then.50
	movq	-8(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB20_30:                              # %if.end.53
	jmp	.LBB20_31
.LBB20_31:                              # %if.end.54
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_set_default_context, .Lfunc_end20-gimp_set_default_context
	.cfi_endproc

	.globl	gimp_get_default_context
	.align	16, 0x90
	.type	gimp_get_default_context,@function
gimp_get_default_context:               # @gimp_get_default_context
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_get_default_context, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB21_13
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB21_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_get_default_context, .Lfunc_end21-gimp_get_default_context
	.cfi_endproc

	.globl	gimp_set_user_context
	.align	16, 0x90
	.type	gimp_set_user_context,@function
gimp_set_user_context:                  # @gimp_set_user_context
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_set_user_context, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB22_31
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	jmp	.LBB22_13
.LBB22_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB22_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB22_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB22_21
.LBB22_16:                              # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB22_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB22_20
.LBB22_19:                              # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB22_20:                              # %if.end.32
	jmp	.LBB22_21
.LBB22_21:                              # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB22_23
.LBB22_22:                              # %if.then.36
	jmp	.LBB22_24
.LBB22_23:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_set_user_context, %rsi
	movabsq	$.L.str.26, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB22_31
.LBB22_24:                              # %if.end.38
	jmp	.LBB22_25
.LBB22_25:                              # %do.end.39
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	584(%rcx), %rax
	je	.LBB22_31
# BB#26:                                # %if.then.41
	movq	-8(%rbp), %rax
	cmpq	$0, 584(%rax)
	je	.LBB22_28
# BB#27:                                # %if.then.44
	movq	-8(%rbp), %rax
	movq	584(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB22_28:                              # %if.end.46
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 584(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, 584(%rax)
	je	.LBB22_30
# BB#29:                                # %if.then.50
	movq	-8(%rbp), %rax
	movq	584(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB22_30:                              # %if.end.53
	jmp	.LBB22_31
.LBB22_31:                              # %if.end.54
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_set_user_context, .Lfunc_end22-gimp_set_user_context
	.cfi_endproc

	.globl	gimp_get_user_context
	.align	16, 0x90
	.type	gimp_get_user_context,@function
gimp_get_user_context:                  # @gimp_get_user_context
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB23_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.8
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_get_user_context, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB23_13
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	584(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB23_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_get_user_context, .Lfunc_end23-gimp_get_user_context
	.cfi_endproc

	.globl	gimp_get_tool_info
	.align	16, 0x90
	.type	gimp_get_tool_info,@function
gimp_get_tool_info:                     # @gimp_get_tool_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB24_8
.LBB24_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB24_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB24_7:                               # %if.end
	jmp	.LBB24_8
.LBB24_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.8
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_get_tool_info, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB24_18
.LBB24_11:                              # %if.end.10
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	jmp	.LBB24_13
.LBB24_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB24_15
# BB#14:                                # %if.then.13
	jmp	.LBB24_16
.LBB24_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_get_tool_info, %rsi
	movabsq	$.L.str.27, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB24_18
.LBB24_16:                              # %if.end.15
	jmp	.LBB24_17
.LBB24_17:                              # %do.end.16
	movq	-16(%rbp), %rax
	movq	528(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_container_get_child_by_name
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB24_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_get_tool_info, .Lfunc_end24-gimp_get_tool_info
	.cfi_endproc

	.globl	gimp_message
	.align	16, 0x90
	.type	gimp_message,@function
gimp_message:                           # @gimp_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
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
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	je	.LBB25_2
# BB#1:                                 # %entry
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
.LBB25_2:                               # %entry
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -208(%rbp)
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movl	-404(%rbp), %esi        # 4-byte Reload
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	-376(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	leaq	-240(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	leaq	16(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movl	$48, -60(%rbp)
	movl	$32, -64(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	leaq	-64(%rbp), %r8
	callq	gimp_message_valist
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_message, .Lfunc_end25-gimp_message
	.cfi_endproc

	.globl	gimp_message_valist
	.align	16, 0x90
	.type	gimp_message_valist,@function
gimp_message_valist:                    # @gimp_message_valist
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB26_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB26_8
.LBB26_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB26_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB26_7
.LBB26_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB26_7:                               # %if.end
	jmp	.LBB26_8
.LBB26_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB26_10
# BB#9:                                 # %if.then.8
	jmp	.LBB26_11
.LBB26_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_message_valist, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB26_24
.LBB26_11:                              # %if.end.10
	jmp	.LBB26_12
.LBB26_12:                              # %do.end
	jmp	.LBB26_13
.LBB26_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB26_15
# BB#14:                                # %lor.lhs.false
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a
	cmpl	$0, %eax
	je	.LBB26_16
.LBB26_15:                              # %if.then.15
	jmp	.LBB26_17
.LBB26_16:                              # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_message_valist, %rsi
	movabsq	$.L.str.28, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB26_24
.LBB26_17:                              # %if.end.17
	jmp	.LBB26_18
.LBB26_18:                              # %do.end.18
	jmp	.LBB26_19
.LBB26_19:                              # %do.body.19
	cmpq	$0, -32(%rbp)
	je	.LBB26_21
# BB#20:                                # %if.then.21
	jmp	.LBB26_22
.LBB26_21:                              # %if.else.22
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_message_valist, %rsi
	movabsq	$.L.str.29, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB26_24
.LBB26_22:                              # %if.end.23
	jmp	.LBB26_23
.LBB26_23:                              # %do.end.24
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_strdup_vprintf
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-48(%rbp), %r8
	callq	gimp_show_message
	movq	-48(%rbp), %rdi
	callq	g_free
.LBB26_24:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_message_valist, .Lfunc_end26-gimp_message_valist
	.cfi_endproc

	.globl	gimp_message_literal
	.align	16, 0x90
	.type	gimp_message_literal,@function
gimp_message_literal:                   # @gimp_message_literal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB27_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB27_8
.LBB27_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB27_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB27_7
.LBB27_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB27_7:                               # %if.end
	jmp	.LBB27_8
.LBB27_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB27_10
# BB#9:                                 # %if.then.8
	jmp	.LBB27_11
.LBB27_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_message_literal, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_24
.LBB27_11:                              # %if.end.10
	jmp	.LBB27_12
.LBB27_12:                              # %do.end
	jmp	.LBB27_13
.LBB27_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB27_15
# BB#14:                                # %lor.lhs.false
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a
	cmpl	$0, %eax
	je	.LBB27_16
.LBB27_15:                              # %if.then.15
	jmp	.LBB27_17
.LBB27_16:                              # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_message_literal, %rsi
	movabsq	$.L.str.28, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_24
.LBB27_17:                              # %if.end.17
	jmp	.LBB27_18
.LBB27_18:                              # %do.end.18
	jmp	.LBB27_19
.LBB27_19:                              # %do.body.19
	cmpq	$0, -32(%rbp)
	je	.LBB27_21
# BB#20:                                # %if.then.21
	jmp	.LBB27_22
.LBB27_21:                              # %if.else.22
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_message_literal, %rsi
	movabsq	$.L.str.30, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_24
.LBB27_22:                              # %if.end.23
	jmp	.LBB27_23
.LBB27_23:                              # %do.end.24
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %r8
	callq	gimp_show_message
.LBB27_24:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_message_literal, .Lfunc_end27-gimp_message_literal
	.cfi_endproc

	.globl	gimp_image_opened
	.align	16, 0x90
	.type	gimp_image_opened,@function
gimp_image_opened:                      # @gimp_image_opened
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB28_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB28_8
.LBB28_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB28_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB28_7
.LBB28_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB28_7:                               # %if.end
	jmp	.LBB28_8
.LBB28_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB28_10
# BB#9:                                 # %if.then.8
	jmp	.LBB28_11
.LBB28_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_image_opened, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB28_18
.LBB28_11:                              # %if.end.10
	jmp	.LBB28_12
.LBB28_12:                              # %do.end
	jmp	.LBB28_13
.LBB28_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB28_15
# BB#14:                                # %if.then.13
	jmp	.LBB28_16
.LBB28_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_image_opened, %rsi
	movabsq	$.L.str.31, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB28_18
.LBB28_16:                              # %if.end.15
	jmp	.LBB28_17
.LBB28_17:                              # %do.end.16
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_signals+16, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB28_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_image_opened, .Lfunc_end28-gimp_image_opened
	.cfi_endproc

	.globl	gimp_use_gegl
	.align	16, 0x90
	.type	gimp_use_gegl,@function
gimp_use_gegl:                          # @gimp_use_gegl
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB29_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB29_8
.LBB29_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB29_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB29_7
.LBB29_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB29_7:                               # %if.end
	jmp	.LBB29_8
.LBB29_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB29_10
# BB#9:                                 # %if.then.8
	jmp	.LBB29_11
.LBB29_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_use_gegl, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB29_13
.LBB29_11:                              # %if.end.10
	jmp	.LBB29_12
.LBB29_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	416(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB29_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_use_gegl, .Lfunc_end29-gimp_use_gegl
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_class_init,@function
gimp_class_init:                        # @gimp_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp93:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$248, %rsp
.Ltmp94:
	.cfi_offset %rbx, -40
.Ltmp95:
	.cfi_offset %r14, -32
.Ltmp96:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.32, %rdi
	movl	$2, %edx
	movl	$160, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__POINTER, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movl	$1, %r8d
	movl	$68, %r11d
	movl	%r11d, %ebx
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$68, 24(%rsp)
	movb	$0, %al
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	movq	%r10, -96(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.33, %rdi
	movl	$2, %edx
	movl	$168, %ecx
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movabsq	$g_cclosure_marshal_VOID__POINTER, %r8
	movl	$4, %r11d
	movl	%r11d, %r9d
	movl	$1, %r11d
	movl	$68, %r15d
	movl	%r15d, %r10d
	movl	%eax, gimp_signals
	movq	-32(%rbp), %rbx
	movq	(%rbx), %rbx
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	movq	-104(%rbp), %rbx        # 8-byte Reload
	movq	%r8, -112(%rbp)         # 8-byte Spill
	movq	%rbx, %r8
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	%rbx, %r9
	movq	-112(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$68, 24(%rsp)
	movb	$0, %al
	movq	%r10, -128(%rbp)        # 8-byte Spill
	movl	%r11d, -132(%rbp)       # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.34, %rdi
	movl	$2, %edx
	movl	$176, %ecx
	movabsq	$g_signal_accumulator_true_handled, %r8
	xorl	%r11d, %r11d
	movl	%r11d, %r9d
	movabsq	$gimp_marshal_BOOLEAN__BOOLEAN, %rsi
	movl	$20, %r11d
	movl	%r11d, %r10d
	movl	$1, %r11d
	movl	%eax, gimp_signals+4
	movq	-32(%rbp), %rbx
	movq	(%rbx), %rbx
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	movq	-144(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$20, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$20, 24(%rsp)
	movb	$0, %al
	movl	%r11d, -148(%rbp)       # 4-byte Spill
	movq	%r10, -160(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.35, %rdi
	movl	$2, %edx
	movl	$184, %ecx
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %r11d
	movl	%r11d, %r9d
	xorl	%r11d, %r11d
	movl	%eax, gimp_signals+8
	movq	-32(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-168(%rbp), %r10        # 8-byte Reload
	movq	%r8, -176(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -184(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-176(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%r11d, -188(%rbp)       # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.36, %rdi
	movl	$2, %edx
	movl	$192, %ecx
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movabsq	$g_cclosure_marshal_VOID__STRING, %r8
	movl	$4, %r11d
	movl	%r11d, %r9d
	movl	$1, %r11d
	movl	$64, %r15d
	movl	%r15d, %r10d
	movl	%eax, gimp_signals+12
	movq	-32(%rbp), %rbx
	movq	(%rbx), %rbx
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	movq	-200(%rbp), %rbx        # 8-byte Reload
	movq	%r8, -208(%rbp)         # 8-byte Spill
	movq	%rbx, %r8
	movq	%r9, -216(%rbp)         # 8-byte Spill
	movq	%rbx, %r9
	movq	-208(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$64, 24(%rsp)
	movb	$0, %al
	movq	%r10, -224(%rbp)        # 8-byte Spill
	movl	%r11d, -228(%rbp)       # 4-byte Spill
	callq	g_signal_new
	movabsq	$gimp_real_exit, %rsi
	movabsq	$gimp_real_restore, %rdi
	movabsq	$gimp_real_initialize, %r8
	movabsq	$gimp_get_memsize, %r9
	movabsq	$gimp_finalize, %r10
	movabsq	$gimp_dispose, %rbx
	movl	%eax, gimp_signals+16
	movq	-40(%rbp), %r14
	movq	%rbx, 40(%r14)
	movq	-40(%rbp), %rbx
	movq	%r10, 48(%rbx)
	movq	-48(%rbp), %r10
	movq	%r9, 152(%r10)
	movq	-32(%rbp), %r9
	movq	%r8, 160(%r9)
	movq	-32(%rbp), %r8
	movq	%rdi, 168(%r8)
	movq	-32(%rbp), %rdi
	movq	%rsi, 176(%rdi)
	movq	-32(%rbp), %rsi
	movq	$0, 184(%rsi)
	addq	$248, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_class_init, .Lfunc_end30-gimp_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dispose,@function
gimp_dispose:                           # @gimp_dispose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp99:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB31_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.23, %rdi
	movabsq	$.L__func__.gimp_dispose, %rsi
	movb	$0, %al
	callq	g_print
.LBB31_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 464(%rax)
	je	.LBB31_4
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	464(%rax), %rdi
	callq	gimp_data_factory_data_free
.LBB31_4:                               # %if.end.5
	movq	-16(%rbp), %rax
	cmpq	$0, 472(%rax)
	je	.LBB31_6
# BB#5:                                 # %if.then.7
	movq	-16(%rbp), %rax
	movq	472(%rax), %rdi
	callq	gimp_data_factory_data_free
.LBB31_6:                               # %if.end.9
	movq	-16(%rbp), %rax
	cmpq	$0, 480(%rax)
	je	.LBB31_8
# BB#7:                                 # %if.then.11
	movq	-16(%rbp), %rax
	movq	480(%rax), %rdi
	callq	gimp_data_factory_data_free
.LBB31_8:                               # %if.end.13
	movq	-16(%rbp), %rax
	cmpq	$0, 488(%rax)
	je	.LBB31_10
# BB#9:                                 # %if.then.15
	movq	-16(%rbp), %rax
	movq	488(%rax), %rdi
	callq	gimp_data_factory_data_free
.LBB31_10:                              # %if.end.17
	movq	-16(%rbp), %rax
	cmpq	$0, 496(%rax)
	je	.LBB31_12
# BB#11:                                # %if.then.19
	movq	-16(%rbp), %rax
	movq	496(%rax), %rdi
	callq	gimp_data_factory_data_free
.LBB31_12:                              # %if.end.21
	movq	-16(%rbp), %rax
	cmpq	$0, 504(%rax)
	je	.LBB31_14
# BB#13:                                # %if.then.23
	movq	-16(%rbp), %rax
	movq	504(%rax), %rdi
	callq	gimp_data_factory_data_free
.LBB31_14:                              # %if.end.25
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_dispose, .Lfunc_end31-gimp_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_finalize,@function
gimp_finalize:                          # @gimp_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp102:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB32_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.23, %rdi
	movabsq	$.L__func__.gimp_finalize, %rsi
	movb	$0, %al
	callq	g_print
.LBB32_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	gimp_contexts_exit
	movq	-16(%rbp), %rdi
	cmpq	$0, 560(%rdi)
	je	.LBB32_4
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	560(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 560(%rax)
.LBB32_4:                               # %if.end.6
	movq	-16(%rbp), %rax
	cmpq	$0, 552(%rax)
	je	.LBB32_6
# BB#5:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	552(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 552(%rax)
.LBB32_6:                               # %if.end.11
	movq	-16(%rbp), %rax
	cmpq	$0, 544(%rax)
	je	.LBB32_8
# BB#7:                                 # %if.then.13
	movq	-16(%rbp), %rax
	movq	544(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 544(%rax)
.LBB32_8:                               # %if.end.16
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_tool_info_set_standard
	movq	-16(%rbp), %rsi
	cmpq	$0, 528(%rsi)
	je	.LBB32_10
# BB#9:                                 # %if.then.18
	movabsq	$g_object_run_dispose, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movq	528(%rsi), %rdi
	movq	%rax, %rsi
	callq	gimp_container_foreach
	movq	-16(%rbp), %rax
	movq	528(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 528(%rax)
.LBB32_10:                              # %if.end.22
	movq	-16(%rbp), %rdi
	callq	xcf_exit
	movq	-16(%rbp), %rdi
	cmpq	$0, 520(%rdi)
	je	.LBB32_12
# BB#11:                                # %if.then.24
	movq	-16(%rbp), %rax
	movq	520(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 520(%rax)
.LBB32_12:                              # %if.end.27
	movq	-16(%rbp), %rax
	cmpq	$0, 464(%rax)
	je	.LBB32_14
# BB#13:                                # %if.then.29
	movq	-16(%rbp), %rax
	movq	464(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 464(%rax)
.LBB32_14:                              # %if.end.32
	movq	-16(%rbp), %rax
	cmpq	$0, 472(%rax)
	je	.LBB32_16
# BB#15:                                # %if.then.34
	movq	-16(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 472(%rax)
.LBB32_16:                              # %if.end.37
	movq	-16(%rbp), %rax
	cmpq	$0, 480(%rax)
	je	.LBB32_18
# BB#17:                                # %if.then.39
	movq	-16(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 480(%rax)
.LBB32_18:                              # %if.end.42
	movq	-16(%rbp), %rax
	cmpq	$0, 488(%rax)
	je	.LBB32_20
# BB#19:                                # %if.then.44
	movq	-16(%rbp), %rax
	movq	488(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 488(%rax)
.LBB32_20:                              # %if.end.47
	movq	-16(%rbp), %rax
	cmpq	$0, 496(%rax)
	je	.LBB32_22
# BB#21:                                # %if.then.49
	movq	-16(%rbp), %rax
	movq	496(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 496(%rax)
.LBB32_22:                              # %if.end.52
	movq	-16(%rbp), %rax
	cmpq	$0, 504(%rax)
	je	.LBB32_24
# BB#23:                                # %if.then.54
	movq	-16(%rbp), %rax
	movq	504(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 504(%rax)
.LBB32_24:                              # %if.end.57
	movq	-16(%rbp), %rax
	cmpq	$0, 512(%rax)
	je	.LBB32_26
# BB#25:                                # %if.then.59
	movq	-16(%rbp), %rax
	movq	512(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 512(%rax)
.LBB32_26:                              # %if.end.62
	movq	-16(%rbp), %rax
	cmpq	$0, 456(%rax)
	je	.LBB32_28
# BB#27:                                # %if.then.64
	movq	-16(%rbp), %rax
	movq	456(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 456(%rax)
.LBB32_28:                              # %if.end.67
	movq	-16(%rbp), %rax
	cmpq	$0, 448(%rax)
	je	.LBB32_30
# BB#29:                                # %if.then.69
	movq	-16(%rbp), %rax
	movq	448(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 448(%rax)
.LBB32_30:                              # %if.end.72
	movq	-16(%rbp), %rax
	cmpq	$0, 440(%rax)
	je	.LBB32_32
# BB#31:                                # %if.then.74
	movq	-16(%rbp), %rax
	movq	440(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 440(%rax)
.LBB32_32:                              # %if.end.77
	movq	-16(%rbp), %rax
	cmpq	$0, 416(%rax)
	je	.LBB32_34
# BB#33:                                # %if.then.79
	movq	-16(%rbp), %rax
	movq	416(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 416(%rax)
.LBB32_34:                              # %if.end.82
	movq	-16(%rbp), %rax
	cmpq	$0, 408(%rax)
	je	.LBB32_36
# BB#35:                                # %if.then.84
	movq	-16(%rbp), %rax
	movq	408(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 408(%rax)
.LBB32_36:                              # %if.end.87
	movq	-16(%rbp), %rax
	cmpq	$0, 400(%rax)
	je	.LBB32_38
# BB#37:                                # %if.then.89
	movq	-16(%rbp), %rax
	movq	400(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 400(%rax)
.LBB32_38:                              # %if.end.92
	movq	-16(%rbp), %rax
	cmpq	$0, 384(%rax)
	je	.LBB32_40
# BB#39:                                # %if.then.94
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 384(%rax)
.LBB32_40:                              # %if.end.97
	movq	-16(%rbp), %rax
	cmpq	$0, 376(%rax)
	je	.LBB32_42
# BB#41:                                # %if.then.99
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 376(%rax)
.LBB32_42:                              # %if.end.102
	movq	-16(%rbp), %rax
	cmpq	$0, 360(%rax)
	je	.LBB32_44
# BB#43:                                # %if.then.104
	movq	-16(%rbp), %rdi
	callq	gimp_modules_exit
.LBB32_44:                              # %if.end.105
	movq	-16(%rbp), %rdi
	callq	gimp_paint_exit
	movq	-16(%rbp), %rdi
	cmpq	$0, 336(%rdi)
	je	.LBB32_46
# BB#45:                                # %if.then.107
	movq	-16(%rbp), %rax
	movq	336(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 336(%rax)
.LBB32_46:                              # %if.end.110
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB32_48
# BB#47:                                # %if.then.112
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
.LBB32_48:                              # %if.end.115
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB32_50
# BB#49:                                # %if.then.117
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
.LBB32_50:                              # %if.end.120
	movq	-16(%rbp), %rax
	cmpq	$0, 568(%rax)
	je	.LBB32_52
# BB#51:                                # %if.then.122
	movq	-16(%rbp), %rax
	movq	568(%rax), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	$0, 568(%rax)
.LBB32_52:                              # %if.end.125
	movq	-16(%rbp), %rdi
	callq	gimp_units_exit
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_parent_class, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_finalize, .Lfunc_end32-gimp_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_get_memsize,@function
gimp_get_memsize:                       # @gimp_get_memsize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp105:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	320(%rax), %rdi
	callq	gimp_g_list_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	movl	$80, %ecx
	movl	%ecx, %esi
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_g_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	400(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	408(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	416(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	440(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	448(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	456(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	464(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	488(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	496(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	504(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	512(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	520(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	528(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	536(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	544(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	552(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	560(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	568(%rax), %rdi
	callq	gimp_g_list_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	584(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	gimp_parent_class, %rsi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-240(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	movq	%rsi, %rax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_get_memsize, .Lfunc_end33-gimp_get_memsize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI34_0:
	.quad	4607182418800017408     # double 1
.LCPI34_1:
	.quad	4596373779694328218     # double 0.20000000000000001
	.text
	.align	16, 0x90
	.type	gimp_real_initialize,@function
gimp_real_initialize:                   # @gimp_real_initialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp106:
	.cfi_def_cfa_offset 16
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp108:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$328, %rsp              # imm = 0x148
.Ltmp109:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 56(%rsi)
	je	.LBB34_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_real_initialize, %rsi
	movb	$0, %al
	callq	g_print
.LBB34_2:                               # %if.end
	movabsq	$.L.str.49, %rdi
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	-16(%rbp), %rdi
	callq	gimp_fonts_init
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	movabsq	$.L.str.50, %rdx
	movabsq	$.L.str.51, %rcx
	movabsq	$gimp_real_initialize.brush_loader_entries, %r8
	movl	$6, %r9d
	movabsq	$gimp_brush_new, %rsi
	movabsq	$gimp_brush_get_standard, %rdi
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%r11, 8(%rsp)
	callq	gimp_data_factory_new
	movq	-16(%rbp), %rcx
	movq	%rax, 464(%rcx)
	movq	-16(%rbp), %rax
	movq	464(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.52, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movq	-16(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_dynamics_get_type
	movabsq	$.L.str.53, %rdx
	movabsq	$.L.str.54, %rcx
	movabsq	$gimp_real_initialize.dynamics_loader_entries, %r8
	movl	$1, %r9d
	movabsq	$gimp_dynamics_new, %rsi
	movabsq	$gimp_dynamics_get_standard, %rdi
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%r11, 8(%rsp)
	callq	gimp_data_factory_new
	movq	-16(%rbp), %rcx
	movq	%rax, 472(%rcx)
	movq	-16(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.55, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movq	-16(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_pattern_get_type
	movabsq	$.L.str.56, %rdx
	movabsq	$.L.str.57, %rcx
	movabsq	$gimp_real_initialize.pattern_loader_entries, %r8
	movl	$2, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$gimp_pattern_get_standard, %rdi
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	$0, (%rsp)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_data_factory_new
	movq	-16(%rbp), %rcx
	movq	%rax, 480(%rcx)
	movq	-16(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.58, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movq	-16(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gimp_gradient_get_type
	movabsq	$.L.str.59, %rdx
	movabsq	$.L.str.60, %rcx
	movabsq	$gimp_real_initialize.gradient_loader_entries, %r8
	movl	$3, %r9d
	movabsq	$gimp_gradient_new, %rsi
	movabsq	$gimp_gradient_get_standard, %rdi
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-160(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	callq	gimp_data_factory_new
	movq	-16(%rbp), %rcx
	movq	%rax, 488(%rcx)
	movq	-16(%rbp), %rax
	movq	488(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.61, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movq	-16(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	callq	gimp_palette_get_type
	movabsq	$.L.str.62, %rdx
	movabsq	$.L.str.63, %rcx
	movabsq	$gimp_real_initialize.palette_loader_entries, %r8
	movl	$2, %r9d
	movabsq	$gimp_palette_new, %rsi
	movabsq	$gimp_palette_get_standard, %rdi
	movq	-184(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-192(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	callq	gimp_data_factory_new
	movq	-16(%rbp), %rcx
	movq	%rax, 496(%rcx)
	movq	-16(%rbp), %rax
	movq	496(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.64, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movq	-16(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	callq	gimp_tool_preset_get_type
	movabsq	$.L.str.65, %rdx
	movabsq	$.L.str.66, %rcx
	movabsq	$gimp_real_initialize.tool_preset_loader_entries, %r8
	movl	$1, %r9d
	movabsq	$gimp_tool_preset_new, %rsi
	xorl	%ebx, %ebx
	movl	%ebx, %edi
	movq	-216(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_data_factory_new
	movq	-16(%rbp), %rcx
	movq	%rax, 504(%rcx)
	movq	-16(%rbp), %rax
	movq	504(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.67, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	callq	gimp_tag_cache_new
	movq	-16(%rbp), %rcx
	movq	%rax, 512(%rcx)
	movq	-16(%rbp), %rdi
	callq	gimp_paint_init
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	296(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movq	-16(%rbp), %rcx
	movq	%rax, 560(%rcx)
	movq	-16(%rbp), %rdi
	callq	gimp_contexts_init
	movq	-16(%rbp), %rdi
	callq	gimp_gradients_init
	movq	-16(%rbp), %rdi
	callq	gimp_brush_clipboard_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.68, %rsi
	movq	%rax, %rdi
	callq	gimp_data_make_internal
	movq	-16(%rbp), %rax
	movq	464(%rax), %rdi
	callq	gimp_data_factory_get_container
	movq	-32(%rbp), %rcx
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_add
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	g_object_unref
	movq	-16(%rbp), %rdi
	callq	gimp_pattern_clipboard_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.69, %rsi
	movq	%rax, %rdi
	callq	gimp_data_make_internal
	movq	-16(%rbp), %rax
	movq	480(%rax), %rdi
	callq	gimp_data_factory_get_container
	movq	-40(%rbp), %rcx
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_add
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -308(%rbp)        # 4-byte Spill
	callq	g_object_unref
	movabsq	$.L.str.70, %rdi
	movq	-24(%rbp), %rcx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movsd	.LCPI34_1, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rsi
	movq	-320(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-16(%rbp), %rax
	movq	520(%rax), %rdi
	callq	internal_procs_init
	movq	-16(%rbp), %rax
	movq	520(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	92(%rax), %esi
	callq	gimp_pdb_compat_procs_register
	movq	-16(%rbp), %rax
	movq	376(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_plug_in_manager_initialize
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movabsq	$.L.str.71, %rsi
	movsd	.LCPI34_0, %xmm0        # xmm0 = mem[0],zero
	callq	*-24(%rbp)
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_real_initialize, .Lfunc_end34-gimp_real_initialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_real_restore,@function
gimp_real_restore:                      # @gimp_real_restore
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
.Ltmp111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp112:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpl	$0, 56(%rsi)
	je	.LBB35_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_real_restore, %rsi
	movb	$0, %al
	callq	g_print
.LBB35_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	376(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_get_user_context
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_plug_in_manager_restore
	movq	-8(%rbp), %rax
	movl	$1, 304(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_real_restore, .Lfunc_end35-gimp_real_restore
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_real_exit,@function
gimp_real_exit:                         # @gimp_real_exit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
.Ltmp114:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp115:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 56(%rdi)
	je	.LBB36_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.23, %rdi
	movabsq	$.L__func__.gimp_real_exit, %rsi
	movb	$0, %al
	callq	g_print
.LBB36_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	376(%rax), %rdi
	callq	gimp_plug_in_manager_exit
	movq	-8(%rbp), %rdi
	callq	gimp_modules_unload
	movq	-8(%rbp), %rax
	movq	512(%rax), %rdi
	callq	gimp_tag_cache_save
	movq	-8(%rbp), %rax
	movq	464(%rax), %rdi
	callq	gimp_data_factory_data_save
	movq	-8(%rbp), %rax
	movq	472(%rax), %rdi
	callq	gimp_data_factory_data_save
	movq	-8(%rbp), %rax
	movq	480(%rax), %rdi
	callq	gimp_data_factory_data_save
	movq	-8(%rbp), %rax
	movq	488(%rax), %rdi
	callq	gimp_data_factory_data_save
	movq	-8(%rbp), %rax
	movq	496(%rax), %rdi
	callq	gimp_data_factory_data_save
	movq	-8(%rbp), %rax
	movq	504(%rax), %rdi
	callq	gimp_data_factory_data_save
	movq	-8(%rbp), %rdi
	callq	gimp_fonts_reset
	movq	-8(%rbp), %rdi
	callq	gimp_templates_save
	movq	-8(%rbp), %rdi
	callq	gimp_parasiterc_save
	movq	-8(%rbp), %rdi
	callq	gimp_unitrc_save
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_real_exit, .Lfunc_end36-gimp_real_exit
	.cfi_endproc

	.type	gimp_get_type.g_define_type_id__volatile,@object # @gimp_get_type.g_define_type_id__volatile
	.local	gimp_get_type.g_define_type_id__volatile
	.comm	gimp_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_new,@object # @__func__.gimp_new
.L__func__.gimp_new:
	.asciz	"gimp_new"
	.size	.L__func__.gimp_new, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"name != NULL"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"name"
	.size	.L.str.3, 5

	.type	.L__func__.gimp_set_show_gui,@object # @__func__.gimp_set_show_gui
.L__func__.gimp_set_show_gui:
	.asciz	"gimp_set_show_gui"
	.size	.L__func__.gimp_set_show_gui, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.4, 20

	.type	.L__func__.gimp_get_show_gui,@object # @__func__.gimp_get_show_gui
.L__func__.gimp_get_show_gui:
	.asciz	"gimp_get_show_gui"
	.size	.L__func__.gimp_get_show_gui, 18

	.type	.L__func__.gimp_load_config,@object # @__func__.gimp_load_config
.L__func__.gimp_load_config:
	.asciz	"gimp_load_config"
	.size	.L__func__.gimp_load_config, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp->config == NULL"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp->edit_config == NULL"
	.size	.L.str.6, 26

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"INIT: %s\n"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"notify"
	.size	.L.str.8, 7

	.type	.L__func__.gimp_initialize,@object # @__func__.gimp_initialize
.L__func__.gimp_initialize:
	.asciz	"gimp_initialize"
	.size	.L__func__.gimp_initialize, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"status_callback != NULL"
	.size	.L.str.9, 24

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_IS_CORE_CONFIG (gimp->config)"
	.size	.L.str.10, 35

	.type	gimp_signals,@object    # @gimp_signals
	.local	gimp_signals
	.comm	gimp_signals,20,16
	.type	.L__func__.gimp_restore,@object # @__func__.gimp_restore
.L__func__.gimp_restore:
	.asciz	"gimp_restore"
	.size	.L__func__.gimp_restore, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Looking for data files"
	.size	.L.str.11, 23

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Parasites"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Brushes"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Dynamics"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Patterns"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Palettes"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Gradients"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Fonts (this may take a while)"
	.size	.L.str.18, 30

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Tool Presets"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Templates"
	.size	.L.str.20, 10

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Modules"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Updating tag cache"
	.size	.L.str.22, 19

	.type	.L__func__.gimp_is_restored,@object # @__func__.gimp_is_restored
.L__func__.gimp_is_restored:
	.asciz	"gimp_is_restored"
	.size	.L__func__.gimp_is_restored, 17

	.type	.L__func__.gimp_exit,@object # @__func__.gimp_exit
.L__func__.gimp_exit:
	.asciz	"gimp_exit"
	.size	.L__func__.gimp_exit, 10

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"EXIT: %s\n"
	.size	.L.str.23, 10

	.type	.L__func__.gimp_get_image_iter,@object # @__func__.gimp_get_image_iter
.L__func__.gimp_get_image_iter:
	.asciz	"gimp_get_image_iter"
	.size	.L__func__.gimp_get_image_iter, 20

	.type	.L__func__.gimp_get_display_iter,@object # @__func__.gimp_get_display_iter
.L__func__.gimp_get_display_iter:
	.asciz	"gimp_get_display_iter"
	.size	.L__func__.gimp_get_display_iter, 22

	.type	.L__func__.gimp_get_image_windows,@object # @__func__.gimp_get_image_windows
.L__func__.gimp_get_image_windows:
	.asciz	"gimp_get_image_windows"
	.size	.L__func__.gimp_get_image_windows, 23

	.type	.L__func__.gimp_get_paint_info_iter,@object # @__func__.gimp_get_paint_info_iter
.L__func__.gimp_get_paint_info_iter:
	.asciz	"gimp_get_paint_info_iter"
	.size	.L__func__.gimp_get_paint_info_iter, 25

	.type	.L__func__.gimp_get_tool_info_iter,@object # @__func__.gimp_get_tool_info_iter
.L__func__.gimp_get_tool_info_iter:
	.asciz	"gimp_get_tool_info_iter"
	.size	.L__func__.gimp_get_tool_info_iter, 24

	.type	.L__func__.gimp_set_global_buffer,@object # @__func__.gimp_set_global_buffer
.L__func__.gimp_set_global_buffer:
	.asciz	"gimp_set_global_buffer"
	.size	.L__func__.gimp_set_global_buffer, 23

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"buffer == NULL || GIMP_IS_BUFFER (buffer)"
	.size	.L.str.24, 42

	.type	.L__func__.gimp_create_image,@object # @__func__.gimp_create_image
.L__func__.gimp_create_image:
	.asciz	"gimp_create_image"
	.size	.L__func__.gimp_create_image, 18

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-comment"
	.size	.L.str.25, 13

	.type	.L__func__.gimp_set_default_context,@object # @__func__.gimp_set_default_context
.L__func__.gimp_set_default_context:
	.asciz	"gimp_set_default_context"
	.size	.L__func__.gimp_set_default_context, 25

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"context == NULL || GIMP_IS_CONTEXT (context)"
	.size	.L.str.26, 45

	.type	.L__func__.gimp_get_default_context,@object # @__func__.gimp_get_default_context
.L__func__.gimp_get_default_context:
	.asciz	"gimp_get_default_context"
	.size	.L__func__.gimp_get_default_context, 25

	.type	.L__func__.gimp_set_user_context,@object # @__func__.gimp_set_user_context
.L__func__.gimp_set_user_context:
	.asciz	"gimp_set_user_context"
	.size	.L__func__.gimp_set_user_context, 22

	.type	.L__func__.gimp_get_user_context,@object # @__func__.gimp_get_user_context
.L__func__.gimp_get_user_context:
	.asciz	"gimp_get_user_context"
	.size	.L__func__.gimp_get_user_context, 22

	.type	.L__func__.gimp_get_tool_info,@object # @__func__.gimp_get_tool_info
.L__func__.gimp_get_tool_info:
	.asciz	"gimp_get_tool_info"
	.size	.L__func__.gimp_get_tool_info, 19

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"tool_id != NULL"
	.size	.L.str.27, 16

	.type	.L__func__.gimp_message_valist,@object # @__func__.gimp_message_valist
.L__func__.gimp_message_valist:
	.asciz	"gimp_message_valist"
	.size	.L__func__.gimp_message_valist, 20

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"handler == NULL || G_IS_OBJECT (handler)"
	.size	.L.str.28, 41

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"format != NULL"
	.size	.L.str.29, 15

	.type	.L__func__.gimp_message_literal,@object # @__func__.gimp_message_literal
.L__func__.gimp_message_literal:
	.asciz	"gimp_message_literal"
	.size	.L__func__.gimp_message_literal, 21

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"message != NULL"
	.size	.L.str.30, 16

	.type	.L__func__.gimp_image_opened,@object # @__func__.gimp_image_opened
.L__func__.gimp_image_opened:
	.asciz	"gimp_image_opened"
	.size	.L__func__.gimp_image_opened, 18

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"uri != NULL"
	.size	.L.str.31, 12

	.type	.L__func__.gimp_use_gegl,@object # @__func__.gimp_use_gegl
.L__func__.gimp_use_gegl:
	.asciz	"gimp_use_gegl"
	.size	.L__func__.gimp_use_gegl, 14

	.type	gimp_parent_class,@object # @gimp_parent_class
	.local	gimp_parent_class
	.comm	gimp_parent_class,8,8
	.type	Gimp_private_offset,@object # @Gimp_private_offset
	.local	Gimp_private_offset
	.comm	Gimp_private_offset,4,4
	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"initialize"
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"restore"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"exit"
	.size	.L.str.34, 5

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"buffer-changed"
	.size	.L.str.35, 15

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"image-opened"
	.size	.L.str.36, 13

	.type	.L__func__.gimp_dispose,@object # @__func__.gimp_dispose
.L__func__.gimp_dispose:
	.asciz	"gimp_dispose"
	.size	.L__func__.gimp_dispose, 13

	.type	.L__func__.gimp_finalize,@object # @__func__.gimp_finalize
.L__func__.gimp_finalize:
	.asciz	"gimp_finalize"
	.size	.L__func__.gimp_finalize, 14

	.type	gimp_real_initialize.brush_loader_entries,@object # @gimp_real_initialize.brush_loader_entries
	.section	.rodata,"a",@progbits
	.align	16
gimp_real_initialize.brush_loader_entries:
	.quad	gimp_brush_load
	.quad	.L.str.37
	.long	0                       # 0x0
	.zero	4
	.quad	gimp_brush_load
	.quad	.L.str.38
	.long	0                       # 0x0
	.zero	4
	.quad	gimp_brush_load_abr
	.quad	.L.str.39
	.long	0                       # 0x0
	.zero	4
	.quad	gimp_brush_load_abr
	.quad	.L.str.40
	.long	0                       # 0x0
	.zero	4
	.quad	gimp_brush_generated_load
	.quad	.L.str.41
	.long	1                       # 0x1
	.zero	4
	.quad	gimp_brush_pipe_load
	.quad	.L.str.42
	.long	0                       # 0x0
	.zero	4
	.size	gimp_real_initialize.brush_loader_entries, 144

	.type	.L.str.37,@object       # @.str.37
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.37:
	.asciz	".gbr"
	.size	.L.str.37, 5

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	".gpb"
	.size	.L.str.38, 5

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	".abr"
	.size	.L.str.39, 5

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	".jbr"
	.size	.L.str.40, 5

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	".vbr"
	.size	.L.str.41, 5

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	".gih"
	.size	.L.str.42, 5

	.type	gimp_real_initialize.dynamics_loader_entries,@object # @gimp_real_initialize.dynamics_loader_entries
	.section	.rodata,"a",@progbits
	.align	16
gimp_real_initialize.dynamics_loader_entries:
	.quad	gimp_dynamics_load
	.quad	.L.str.43
	.long	1                       # 0x1
	.zero	4
	.size	gimp_real_initialize.dynamics_loader_entries, 24

	.type	.L.str.43,@object       # @.str.43
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.43:
	.asciz	".gdyn"
	.size	.L.str.43, 6

	.type	gimp_real_initialize.pattern_loader_entries,@object # @gimp_real_initialize.pattern_loader_entries
	.section	.rodata,"a",@progbits
	.align	16
gimp_real_initialize.pattern_loader_entries:
	.quad	gimp_pattern_load
	.quad	.L.str.44
	.long	0                       # 0x0
	.zero	4
	.quad	gimp_pattern_load_pixbuf
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.size	gimp_real_initialize.pattern_loader_entries, 48

	.type	.L.str.44,@object       # @.str.44
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.44:
	.asciz	".pat"
	.size	.L.str.44, 5

	.type	gimp_real_initialize.gradient_loader_entries,@object # @gimp_real_initialize.gradient_loader_entries
	.section	.rodata,"a",@progbits
	.align	16
gimp_real_initialize.gradient_loader_entries:
	.quad	gimp_gradient_load
	.quad	.L.str.45
	.long	1                       # 0x1
	.zero	4
	.quad	gimp_gradient_load_svg
	.quad	.L.str.46
	.long	0                       # 0x0
	.zero	4
	.quad	gimp_gradient_load
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.size	gimp_real_initialize.gradient_loader_entries, 72

	.type	.L.str.45,@object       # @.str.45
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.45:
	.asciz	".ggr"
	.size	.L.str.45, 5

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	".svg"
	.size	.L.str.46, 5

	.type	gimp_real_initialize.palette_loader_entries,@object # @gimp_real_initialize.palette_loader_entries
	.section	.rodata,"a",@progbits
	.align	16
gimp_real_initialize.palette_loader_entries:
	.quad	gimp_palette_load
	.quad	.L.str.47
	.long	1                       # 0x1
	.zero	4
	.quad	gimp_palette_load
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.size	gimp_real_initialize.palette_loader_entries, 48

	.type	.L.str.47,@object       # @.str.47
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.47:
	.asciz	".gpl"
	.size	.L.str.47, 5

	.type	gimp_real_initialize.tool_preset_loader_entries,@object # @gimp_real_initialize.tool_preset_loader_entries
	.section	.rodata,"a",@progbits
	.align	16
gimp_real_initialize.tool_preset_loader_entries:
	.quad	gimp_tool_preset_load
	.quad	.L.str.48
	.long	1                       # 0x1
	.zero	4
	.size	gimp_real_initialize.tool_preset_loader_entries, 24

	.type	.L.str.48,@object       # @.str.48
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.48:
	.asciz	".gtp"
	.size	.L.str.48, 5

	.type	.L__func__.gimp_real_initialize,@object # @__func__.gimp_real_initialize
.L__func__.gimp_real_initialize:
	.asciz	"gimp_real_initialize"
	.size	.L__func__.gimp_real_initialize, 21

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Initialization"
	.size	.L.str.49, 15

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"brush-path"
	.size	.L.str.50, 11

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"brush-path-writable"
	.size	.L.str.51, 20

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"brush factory"
	.size	.L.str.52, 14

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"dynamics-path"
	.size	.L.str.53, 14

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"dynamics-path-writable"
	.size	.L.str.54, 23

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"dynamics factory"
	.size	.L.str.55, 17

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"pattern-path"
	.size	.L.str.56, 13

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"pattern-path-writable"
	.size	.L.str.57, 22

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"pattern factory"
	.size	.L.str.58, 16

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"gradient-path"
	.size	.L.str.59, 14

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"gradient-path-writable"
	.size	.L.str.60, 23

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"gradient factory"
	.size	.L.str.61, 17

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"palette-path"
	.size	.L.str.62, 13

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"palette-path-writable"
	.size	.L.str.63, 22

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"palette factory"
	.size	.L.str.64, 16

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"tool-preset-path"
	.size	.L.str.65, 17

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"tool-preset-path-writable"
	.size	.L.str.66, 26

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"tool preset factory"
	.size	.L.str.67, 20

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"gimp-brush-clipboard"
	.size	.L.str.68, 21

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"gimp-pattern-clipboard"
	.size	.L.str.69, 23

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Internal Procedures"
	.size	.L.str.70, 20

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.zero	1
	.size	.L.str.71, 1

	.type	.L__func__.gimp_real_restore,@object # @__func__.gimp_real_restore
.L__func__.gimp_real_restore:
	.asciz	"gimp_real_restore"
	.size	.L__func__.gimp_real_restore, 18

	.type	.L__func__.gimp_real_exit,@object # @__func__.gimp_real_exit
.L__func__.gimp_real_exit:
	.asciz	"gimp_real_exit"
	.size	.L__func__.gimp_real_exit, 15

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"images"
	.size	.L.str.72, 7

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"children-type"
	.size	.L.str.73, 14

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"policy"
	.size	.L.str.74, 7

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"append"
	.size	.L.str.75, 7

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"displays"
	.size	.L.str.76, 9

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"named buffers"
	.size	.L.str.77, 14

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"tool infos"
	.size	.L.str.78, 11

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"templates"
	.size	.L.str.79, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
