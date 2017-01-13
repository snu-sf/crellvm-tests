	.text
	.file	"gimpvectors-import.bc"
	.globl	gimp_vectors_import_file
	.align	16, 0x90
	.type	gimp_vectors_import_file,@function
gimp_vectors_import_file:               # @gimp_vectors_import_file
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
	pushq	%rbx
	subq	$184, %rsp
.Ltmp3:
	.cfi_offset %rbx, -24
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movq	%r10, -64(%rbp)
	movq	%rax, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_vectors_import_file, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB0_65
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB0_15
# BB#14:                                # %if.then.13
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_vectors_import_file, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB0_65
.LBB0_16:                               # %if.end.15
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.16
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.17
	cmpq	$0, -48(%rbp)
	je	.LBB0_28
# BB#19:                                # %lor.lhs.false
	movl	$1, %eax
	movl	%eax, %ecx
	cmpq	%rcx, -48(%rbp)
	je	.LBB0_28
# BB#20:                                # %lor.lhs.false.20
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB0_22
# BB#21:                                # %if.then.29
	movl	$0, -116(%rbp)
	jmp	.LBB0_27
.LBB0_22:                               # %if.else.30
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_25
# BB#23:                                # %land.lhs.true.33
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB0_25
# BB#24:                                # %if.then.37
	movl	$1, -116(%rbp)
	jmp	.LBB0_26
.LBB0_25:                               # %if.else.38
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB0_26:                               # %if.end.40
	jmp	.LBB0_27
.LBB0_27:                               # %if.end.41
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB0_29
.LBB0_28:                               # %if.then.44
	jmp	.LBB0_30
.LBB0_29:                               # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_vectors_import_file, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB0_65
.LBB0_30:                               # %if.end.46
	jmp	.LBB0_31
.LBB0_31:                               # %do.end.47
	jmp	.LBB0_32
.LBB0_32:                               # %do.body.48
	cmpq	$0, -48(%rbp)
	je	.LBB0_35
# BB#33:                                # %lor.lhs.false.50
	movl	$1, %eax
	movl	%eax, %ecx
	cmpq	%rcx, -48(%rbp)
	je	.LBB0_35
# BB#34:                                # %lor.lhs.false.52
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB0_36
.LBB0_35:                               # %if.then.57
	jmp	.LBB0_37
.LBB0_36:                               # %if.else.58
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_vectors_import_file, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB0_65
.LBB0_37:                               # %if.end.59
	jmp	.LBB0_38
.LBB0_38:                               # %do.end.60
	jmp	.LBB0_39
.LBB0_39:                               # %do.body.61
	cmpq	$0, -48(%rbp)
	je	.LBB0_42
# BB#40:                                # %lor.lhs.false.63
	movl	$1, %eax
	movl	%eax, %ecx
	cmpq	%rcx, -48(%rbp)
	je	.LBB0_42
# BB#41:                                # %lor.lhs.false.65
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	cmpq	-24(%rbp), %rax
	jne	.LBB0_43
.LBB0_42:                               # %if.then.70
	jmp	.LBB0_44
.LBB0_43:                               # %if.else.71
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_vectors_import_file, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB0_65
.LBB0_44:                               # %if.end.72
	jmp	.LBB0_45
.LBB0_45:                               # %do.end.73
	jmp	.LBB0_46
.LBB0_46:                               # %do.body.74
	cmpq	$0, -48(%rbp)
	je	.LBB0_49
# BB#47:                                # %lor.lhs.false.76
	movl	$1, %eax
	movl	%eax, %ecx
	cmpq	%rcx, -48(%rbp)
	je	.LBB0_49
# BB#48:                                # %lor.lhs.false.78
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB0_50
.LBB0_49:                               # %if.then.83
	jmp	.LBB0_51
.LBB0_50:                               # %if.else.84
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_vectors_import_file, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB0_65
.LBB0_51:                               # %if.end.85
	jmp	.LBB0_52
.LBB0_52:                               # %do.end.86
	jmp	.LBB0_53
.LBB0_53:                               # %do.body.87
	cmpq	$0, -64(%rbp)
	je	.LBB0_55
# BB#54:                                # %lor.lhs.false.89
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_56
.LBB0_55:                               # %if.then.91
	jmp	.LBB0_57
.LBB0_56:                               # %if.else.92
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_vectors_import_file, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB0_65
.LBB0_57:                               # %if.end.93
	jmp	.LBB0_58
.LBB0_58:                               # %do.end.94
	jmp	.LBB0_59
.LBB0_59:                               # %do.body.95
	cmpq	$0, -72(%rbp)
	je	.LBB0_61
# BB#60:                                # %lor.lhs.false.97
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_62
.LBB0_61:                               # %if.then.99
	jmp	.LBB0_63
.LBB0_62:                               # %if.else.100
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_vectors_import_file, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB0_65
.LBB0_63:                               # %if.end.101
	jmp	.LBB0_64
.LBB0_64:                               # %do.end.102
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %r8d
	movl	-40(%rbp), %r9d
	movq	-48(%rbp), %rdx
	movl	-52(%rbp), %eax
	movq	-64(%rbp), %r10
	movq	-72(%rbp), %r11
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-152(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movl	%eax, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	%r11, 24(%rsp)
	callq	gimp_vectors_import
	movl	%eax, -12(%rbp)
.LBB0_65:                               # %return
	movl	-12(%rbp), %eax
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_vectors_import_file, .Lfunc_end0-gimp_vectors_import_file
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_import,@function
gimp_vectors_import:                    # @gimp_vectors_import
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$296, %rsp              # imm = 0x128
.Ltmp7:
	.cfi_offset %rbx, -24
	movq	40(%rbp), %rax
	movq	32(%rbp), %r10
	movl	24(%rbp), %r11d
	movq	16(%rbp), %rbx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	movq	%rbx, -56(%rbp)
	movl	%r11d, -60(%rbp)
	movq	%r10, -72(%rbp)
	movq	%rax, -80(%rbp)
	movl	$1, -132(%rbp)
	callq	g_queue_new
	movl	$64, %r8d
	movl	%r8d, %edi
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	-48(%rbp), %r8d
	movl	%r8d, -96(%rbp)
	movl	$0, -92(%rbp)
	callq	g_slice_alloc0
	movabsq	$.L.str.10, %rcx
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_width
	cvtsi2sdl	%eax, %xmm0
	movq	-128(%rbp), %rcx
	movsd	%xmm0, 24(%rcx)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_height
	cvtsi2sdl	%eax, %xmm0
	movq	-128(%rbp), %rcx
	movsd	%xmm0, 32(%rcx)
	movq	-112(%rbp), %rdi
	movq	-128(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_queue_push_head
	movabsq	$markup_parser, %rdi
	leaq	-112(%rbp), %rcx
	movq	%rcx, %rsi
	callq	gimp_xml_parser_new
	movq	%rax, -88(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-88(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-80(%rbp), %rdx
	callq	gimp_xml_parser_parse_file
	movl	%eax, -132(%rbp)
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	movq	-88(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-80(%rbp), %rcx
	callq	gimp_xml_parser_parse_buffer
	movl	%eax, -132(%rbp)
.LBB1_3:                                # %if.end
	movq	-88(%rbp), %rdi
	callq	gimp_xml_parser_free
	cmpl	$0, -132(%rbp)
	je	.LBB1_36
# BB#4:                                 # %if.then.12
	movq	-128(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB1_31
# BB#5:                                 # %if.then.15
	movq	$0, -144(%rbp)
	movq	-128(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_list_reverse
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	-128(%rbp), %rdi
	movq	%rax, 48(%rdi)
	cmpl	$0, -44(%rbp)
	movb	%dl, -185(%rbp)         # 1-byte Spill
	je	.LBB1_7
# BB#6:                                 # %land.rhs
	movq	-128(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	$0, 8(%rax)
	setne	%cl
	movb	%cl, -185(%rbp)         # 1-byte Spill
.LBB1_7:                                # %land.end
	movb	-185(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.11, %rdi
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -44(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$36, %esi
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-128(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rdx, -120(%rbp)
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB1_8:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_21 Depth 2
	cmpq	$0, -120(%rbp)
	je	.LBB1_28
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB1_11
# BB#10:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpq	$0, -144(%rbp)
	jne	.LBB1_20
.LBB1_11:                               # %if.then.28
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-16(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	jne	.LBB1_13
# BB#12:                                # %lor.lhs.false.30
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_14
.LBB1_13:                               # %cond.true
                                        #   in Loop: Header=BB1_8 Depth=1
	movabsq	$.L.str.12, %rdi
	callq	gettext
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB1_15
.LBB1_14:                               # %cond.false
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB1_15:                               # %cond.end
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_vectors_new
	movl	$1, %r8d
	movq	%rax, -144(%rbp)
	movq	-16(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	-60(%rbp), %ecx
	callq	gimp_image_add_vectors
	movq	-144(%rbp), %rdi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	gimp_vectors_freeze
	cmpq	$0, -72(%rbp)
	je	.LBB1_17
# BB#16:                                # %if.then.37
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rdi
	movq	-144(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-72(%rbp), %rsi
	movq	%rax, (%rsi)
.LBB1_17:                               # %if.end.39
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$-1, -60(%rbp)
	je	.LBB1_19
# BB#18:                                # %if.then.41
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
.LBB1_19:                               # %if.end.42
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.43
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -160(%rbp)
.LBB1_21:                               # %for.cond.44
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -160(%rbp)
	je	.LBB1_24
# BB#22:                                # %for.body.46
                                        #   in Loop: Header=BB1_21 Depth=2
	movq	-144(%rbp), %rdi
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_stroke_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_vectors_stroke_add
# BB#23:                                # %for.inc
                                        #   in Loop: Header=BB1_21 Depth=2
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -160(%rbp)
	jmp	.LBB1_21
.LBB1_24:                               # %for.end
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -44(%rbp)
	jne	.LBB1_26
# BB#25:                                # %if.then.52
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-144(%rbp), %rdi
	callq	gimp_vectors_thaw
.LBB1_26:                               # %if.end.53
                                        #   in Loop: Header=BB1_8 Depth=1
	movabsq	$g_object_unref, %rsi
	movq	-152(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_list_free_full
	movq	-152(%rbp), %rax
	movq	$0, 8(%rax)
# BB#27:                                # %for.inc.56
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB1_8
.LBB1_28:                               # %for.end.58
	cmpl	$0, -44(%rbp)
	je	.LBB1_30
# BB#29:                                # %if.then.60
	movq	-144(%rbp), %rdi
	callq	gimp_vectors_thaw
.LBB1_30:                               # %if.end.61
	movq	-16(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB1_35
.LBB1_31:                               # %if.else.63
	cmpq	$0, -24(%rbp)
	je	.LBB1_33
# BB#32:                                # %if.then.65
	movq	-80(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.13, %rdi
	movl	%eax, -268(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%edx, %edx
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movl	-268(%rbp), %esi        # 4-byte Reload
	movq	-280(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB1_34
.LBB1_33:                               # %if.else.69
	movq	-80(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.14, %rdi
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movl	-292(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
.LBB1_34:                               # %if.end.72
	movl	$0, -132(%rbp)
.LBB1_35:                               # %if.end.73
	jmp	.LBB1_41
.LBB1_36:                               # %if.else.74
	cmpq	$0, -80(%rbp)
	je	.LBB1_40
# BB#37:                                # %land.lhs.true
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_40
# BB#38:                                # %land.lhs.true.77
	cmpq	$0, -24(%rbp)
	je	.LBB1_40
# BB#39:                                # %if.then.79
	movabsq	$.L.str.15, %rdi
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-168(%rbp), %rdx
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	-80(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, 8(%rdx)
	movq	-168(%rbp), %rdi
	callq	g_free
.LBB1_40:                               # %if.end.84
	jmp	.LBB1_41
.LBB1_41:                               # %if.end.85
	jmp	.LBB1_42
.LBB1_42:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_44 Depth 2
                                        #       Child Loop BB1_46 Depth 3
	movq	-112(%rbp), %rdi
	callq	g_queue_pop_head
	movq	%rax, -128(%rbp)
	cmpq	$0, %rax
	je	.LBB1_58
# BB#43:                                # %while.body
                                        #   in Loop: Header=BB1_42 Depth=1
	movq	-128(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -120(%rbp)
.LBB1_44:                               # %for.cond.91
                                        #   Parent Loop BB1_42 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_46 Depth 3
	cmpq	$0, -120(%rbp)
	je	.LBB1_53
# BB#45:                                # %for.body.93
                                        #   in Loop: Header=BB1_44 Depth=2
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)
.LBB1_46:                               # %for.cond.99
                                        #   Parent Loop BB1_42 Depth=1
                                        #     Parent Loop BB1_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	$0, -184(%rbp)
	je	.LBB1_49
# BB#47:                                # %for.body.101
                                        #   in Loop: Header=BB1_46 Depth=3
	movq	-184(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_object_unref
# BB#48:                                # %for.inc.103
                                        #   in Loop: Header=BB1_46 Depth=3
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)
	jmp	.LBB1_46
.LBB1_49:                               # %for.end.105
                                        #   in Loop: Header=BB1_44 Depth=2
	movq	-176(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_list_free
# BB#50:                                # %do.body
                                        #   in Loop: Header=BB1_44 Depth=2
	movl	$16, %eax
	movl	%eax, %edi
	movq	-176(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#51:                                # %do.end
                                        #   in Loop: Header=BB1_44 Depth=2
	jmp	.LBB1_52
.LBB1_52:                               # %for.inc.107
                                        #   in Loop: Header=BB1_44 Depth=2
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB1_44
.LBB1_53:                               # %for.end.109
                                        #   in Loop: Header=BB1_42 Depth=1
	movq	-128(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_list_free
# BB#54:                                # %do.body.111
                                        #   in Loop: Header=BB1_42 Depth=1
	movl	$72, %eax
	movl	%eax, %edi
	movq	-128(%rbp), %rcx
	movq	56(%rcx), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#55:                                # %do.end.112
                                        #   in Loop: Header=BB1_42 Depth=1
	jmp	.LBB1_56
.LBB1_56:                               # %do.body.113
                                        #   in Loop: Header=BB1_42 Depth=1
	movl	$64, %eax
	movl	%eax, %edi
	movq	-128(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#57:                                # %do.end.114
                                        #   in Loop: Header=BB1_42 Depth=1
	jmp	.LBB1_42
.LBB1_58:                               # %while.end
	movq	-112(%rbp), %rdi
	callq	g_queue_free
	movl	-132(%rbp), %eax
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_vectors_import, .Lfunc_end1-gimp_vectors_import
	.cfi_endproc

	.globl	gimp_vectors_import_buffer
	.align	16, 0x90
	.type	gimp_vectors_import_buffer,@function
gimp_vectors_import_buffer:             # @gimp_vectors_import_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$184, %rsp
.Ltmp11:
	.cfi_offset %rbx, -24
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movl	16(%rbp), %r11d
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	%r11d, -60(%rbp)
	movq	%r10, -72(%rbp)
	movq	%rax, -80(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_vectors_import_buffer, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB2_66
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	cmpq	$0, -32(%rbp)
	jne	.LBB2_15
# BB#14:                                # %lor.lhs.false
	cmpq	$0, -40(%rbp)
	jne	.LBB2_16
.LBB2_15:                               # %if.then.14
	jmp	.LBB2_17
.LBB2_16:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_vectors_import_buffer, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB2_66
.LBB2_17:                               # %if.end.16
	jmp	.LBB2_18
.LBB2_18:                               # %do.end.17
	jmp	.LBB2_19
.LBB2_19:                               # %do.body.18
	cmpq	$0, -56(%rbp)
	je	.LBB2_29
# BB#20:                                # %lor.lhs.false.20
	movl	$1, %eax
	movl	%eax, %ecx
	cmpq	%rcx, -56(%rbp)
	je	.LBB2_29
# BB#21:                                # %lor.lhs.false.22
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB2_23
# BB#22:                                # %if.then.31
	movl	$0, -124(%rbp)
	jmp	.LBB2_28
.LBB2_23:                               # %if.else.32
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_26
# BB#24:                                # %land.lhs.true.35
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB2_26
# BB#25:                                # %if.then.39
	movl	$1, -124(%rbp)
	jmp	.LBB2_27
.LBB2_26:                               # %if.else.40
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB2_27:                               # %if.end.42
	jmp	.LBB2_28
.LBB2_28:                               # %if.end.43
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB2_30
.LBB2_29:                               # %if.then.46
	jmp	.LBB2_31
.LBB2_30:                               # %if.else.47
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_vectors_import_buffer, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB2_66
.LBB2_31:                               # %if.end.48
	jmp	.LBB2_32
.LBB2_32:                               # %do.end.49
	jmp	.LBB2_33
.LBB2_33:                               # %do.body.50
	cmpq	$0, -56(%rbp)
	je	.LBB2_36
# BB#34:                                # %lor.lhs.false.52
	movl	$1, %eax
	movl	%eax, %ecx
	cmpq	%rcx, -56(%rbp)
	je	.LBB2_36
# BB#35:                                # %lor.lhs.false.54
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB2_37
.LBB2_36:                               # %if.then.59
	jmp	.LBB2_38
.LBB2_37:                               # %if.else.60
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_vectors_import_buffer, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB2_66
.LBB2_38:                               # %if.end.61
	jmp	.LBB2_39
.LBB2_39:                               # %do.end.62
	jmp	.LBB2_40
.LBB2_40:                               # %do.body.63
	cmpq	$0, -56(%rbp)
	je	.LBB2_43
# BB#41:                                # %lor.lhs.false.65
	movl	$1, %eax
	movl	%eax, %ecx
	cmpq	%rcx, -56(%rbp)
	je	.LBB2_43
# BB#42:                                # %lor.lhs.false.67
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	cmpq	-24(%rbp), %rax
	jne	.LBB2_44
.LBB2_43:                               # %if.then.72
	jmp	.LBB2_45
.LBB2_44:                               # %if.else.73
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_vectors_import_buffer, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB2_66
.LBB2_45:                               # %if.end.74
	jmp	.LBB2_46
.LBB2_46:                               # %do.end.75
	jmp	.LBB2_47
.LBB2_47:                               # %do.body.76
	cmpq	$0, -56(%rbp)
	je	.LBB2_50
# BB#48:                                # %lor.lhs.false.78
	movl	$1, %eax
	movl	%eax, %ecx
	cmpq	%rcx, -56(%rbp)
	je	.LBB2_50
# BB#49:                                # %lor.lhs.false.80
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB2_51
.LBB2_50:                               # %if.then.85
	jmp	.LBB2_52
.LBB2_51:                               # %if.else.86
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_vectors_import_buffer, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB2_66
.LBB2_52:                               # %if.end.87
	jmp	.LBB2_53
.LBB2_53:                               # %do.end.88
	jmp	.LBB2_54
.LBB2_54:                               # %do.body.89
	cmpq	$0, -72(%rbp)
	je	.LBB2_56
# BB#55:                                # %lor.lhs.false.91
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB2_57
.LBB2_56:                               # %if.then.93
	jmp	.LBB2_58
.LBB2_57:                               # %if.else.94
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_vectors_import_buffer, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB2_66
.LBB2_58:                               # %if.end.95
	jmp	.LBB2_59
.LBB2_59:                               # %do.end.96
	jmp	.LBB2_60
.LBB2_60:                               # %do.body.97
	cmpq	$0, -80(%rbp)
	je	.LBB2_62
# BB#61:                                # %lor.lhs.false.99
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB2_63
.LBB2_62:                               # %if.then.101
	jmp	.LBB2_64
.LBB2_63:                               # %if.else.102
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_vectors_import_buffer, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB2_66
.LBB2_64:                               # %if.end.103
	jmp	.LBB2_65
.LBB2_65:                               # %do.end.104
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %r9d
	movq	-56(%rbp), %r10
	movl	-60(%rbp), %eax
	movq	-72(%rbp), %r11
	movq	-80(%rbp), %rbx
	movq	%r10, (%rsp)
	movl	%eax, 8(%rsp)
	movq	%r11, 16(%rsp)
	movq	%rbx, 24(%rsp)
	callq	gimp_vectors_import
	movl	%eax, -12(%rbp)
.LBB2_66:                               # %return
	movl	-12(%rbp), %eax
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_vectors_import_buffer, .Lfunc_end2-gimp_vectors_import_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	svg_parser_start_element,@function
svg_parser_start_element:               # @svg_parser_start_element
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
	movl	$64, %eax
	movl	%eax, %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movl	$0, -76(%rbp)
	movq	%r10, %rdi
	callq	g_slice_alloc0
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_queue_peek_head
	xorps	%xmm0, %xmm0
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	ucomisd	24(%rax), %xmm0
	jae	.LBB3_2
# BB#1:                                 # %lor.lhs.false
	xorps	%xmm0, %xmm0
	movq	-72(%rbp), %rax
	ucomisd	32(%rax), %xmm0
	jb	.LBB3_3
.LBB3_2:                                # %if.then
	movl	$9, -76(%rbp)
.LBB3_3:                                # %if.end
	jmp	.LBB3_4
.LBB3_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-76(%rbp), %rax
	cmpq	$9, %rax
	jae	.LBB3_9
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB3_4 Depth=1
	movabsq	$svg_handlers, %rax
	movslq	-76(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_7
# BB#6:                                 # %if.then.8
	movabsq	$svg_handlers, %rax
	movslq	-76(%rbp), %rcx
	shlq	$6, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movq	-64(%rbp), %rdx
	movq	%rcx, (%rdx)
	movslq	-76(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB3_9
.LBB3_7:                                # %if.end.16
                                        #   in Loop: Header=BB3_4 Depth=1
	jmp	.LBB3_8
.LBB3_8:                                # %for.inc
                                        #   in Loop: Header=BB3_4 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB3_4
.LBB3_9:                                # %for.end
	movq	-72(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movq	-72(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	callq	g_queue_push_head
	movq	-64(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB3_11
# BB#10:                                # %if.then.23
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rcx
	callq	*%rax
.LBB3_11:                               # %if.end.25
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	svg_parser_start_element, .Lfunc_end3-svg_parser_start_element
	.cfi_endproc

	.align	16, 0x90
	.type	svg_parser_end_element,@function
svg_parser_end_element:                 # @svg_parser_end_element
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	g_queue_pop_head
	movq	%rax, -48(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -48(%rbp)
	je	.LBB4_5
# BB#2:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_4
# BB#3:                                 # %lor.lhs.false
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB4_5
.LBB4_4:                                # %if.then
	jmp	.LBB4_6
.LBB4_5:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.svg_parser_end_element, %rsi
	movabsq	$.L.str.53, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_25
.LBB4_6:                                # %if.end
	jmp	.LBB4_7
.LBB4_7:                                # %do.end
	movq	-48(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB4_9
# BB#8:                                 # %if.then.5
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	*%rax
.LBB4_9:                                # %if.end.7
	movq	-48(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB4_23
# BB#10:                                # %if.then.10
	movq	-48(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB4_22
# BB#11:                                # %if.then.12
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB4_12:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_14 Depth 2
	cmpq	$0, -64(%rbp)
	je	.LBB4_19
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB4_12 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB4_14:                               # %for.cond.15
                                        #   Parent Loop BB4_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -80(%rbp)
	je	.LBB4_17
# BB#15:                                # %for.body.17
                                        #   in Loop: Header=BB4_14 Depth=2
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_stroke_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	56(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_stroke_transform
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB4_14 Depth=2
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB4_14
.LBB4_17:                               # %for.end
                                        #   in Loop: Header=BB4_12 Depth=1
	jmp	.LBB4_18
.LBB4_18:                               # %for.inc.22
                                        #   in Loop: Header=BB4_12 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB4_12
.LBB4_19:                               # %for.end.24
	jmp	.LBB4_20
.LBB4_20:                               # %do.body.25
	movl	$72, %eax
	movl	%eax, %edi
	movq	-48(%rbp), %rcx
	movq	56(%rcx), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#21:                                # %do.end.27
	jmp	.LBB4_22
.LBB4_22:                               # %if.end.28
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_queue_peek_head
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	48(%rax), %rsi
	callq	g_list_concat
	movq	-56(%rbp), %rsi
	movq	%rax, 48(%rsi)
.LBB4_23:                               # %if.end.35
	jmp	.LBB4_24
.LBB4_24:                               # %do.body.36
	movl	$64, %eax
	movl	%eax, %edi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
.LBB4_25:                               # %do.end.37
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	svg_parser_end_element, .Lfunc_end4-svg_parser_end_element
	.cfi_endproc

	.align	16, 0x90
	.type	svg_handler_svg_start,@function
svg_handler_svg_start:                  # @svg_handler_svg_start
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
	subq	$240, %rsp
	movl	$72, %eax
	movl	%eax, %r8d
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	$0, -120(%rbp)
	movsd	%xmm0, -128(%rbp)
	movsd	%xmm0, -136(%rbp)
	movq	-8(%rbp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)
	movq	-8(%rbp), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)
	movq	%r8, %rdi
	callq	g_slice_alloc
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_matrix3_identity
	leaq	-160(%rbp), %rsi
	leaq	-168(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_image_get_resolution
.LBB5_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_19
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$104, %edx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movl	%edx, -176(%rbp)        # 4-byte Spill
	je	.LBB5_12
	jmp	.LBB5_34
.LBB5_34:                               # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-172(%rbp), %eax        # 4-byte Reload
	subl	$118, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	je	.LBB5_15
	jmp	.LBB5_35
.LBB5_35:                               # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-172(%rbp), %eax        # 4-byte Reload
	subl	$119, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	je	.LBB5_9
	jmp	.LBB5_36
.LBB5_36:                               # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-172(%rbp), %eax        # 4-byte Reload
	subl	$120, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	je	.LBB5_3
	jmp	.LBB5_37
.LBB5_37:                               # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-172(%rbp), %eax        # 4-byte Reload
	subl	$121, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	je	.LBB5_6
	jmp	.LBB5_18
.LBB5_3:                                # %sw.bb
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.25, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB5_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB5_1 Depth=1
	leaq	-128(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	parse_svg_length
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB5_5:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_18
.LBB5_6:                                # %sw.bb.5
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.26, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB5_8
# BB#7:                                 # %if.then.9
                                        #   in Loop: Header=BB5_1 Depth=1
	leaq	-136(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-168(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	parse_svg_length
	movl	%eax, -200(%rbp)        # 4-byte Spill
.LBB5_8:                                # %if.end.12
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_18
.LBB5_9:                                # %sw.bb.13
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.27, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB5_11
# BB#10:                                # %if.then.17
                                        #   in Loop: Header=BB5_1 Depth=1
	leaq	-144(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	parse_svg_length
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB5_11:                               # %if.end.20
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_18
.LBB5_12:                               # %sw.bb.21
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.28, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB5_14
# BB#13:                                # %if.then.25
                                        #   in Loop: Header=BB5_1 Depth=1
	leaq	-152(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-168(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	parse_svg_length
	movl	%eax, -208(%rbp)        # 4-byte Spill
.LBB5_14:                               # %if.end.28
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_18
.LBB5_15:                               # %sw.bb.29
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.29, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB5_17
# BB#16:                                # %if.then.33
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
.LBB5_17:                               # %if.end.34
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_18
.LBB5_18:                               # %sw.epilog
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB5_1
.LBB5_19:                               # %while.end
	xorps	%xmm0, %xmm0
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_21
	jp	.LBB5_21
# BB#20:                                # %lor.lhs.false
	xorps	%xmm0, %xmm0
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_21
	jp	.LBB5_21
	jmp	.LBB5_24
.LBB5_21:                               # %if.then.38
	movq	-32(%rbp), %rax
	cmpl	$0, 20(%rax)
	jle	.LBB5_23
# BB#22:                                # %if.then.41
	movq	-40(%rbp), %rdi
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_matrix3_translate
.LBB5_23:                               # %if.end.42
	jmp	.LBB5_24
.LBB5_24:                               # %if.end.43
	cmpq	$0, -120(%rbp)
	je	.LBB5_27
# BB#25:                                # %land.lhs.true
	leaq	-144(%rbp), %rsi
	leaq	-152(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	movq	-120(%rbp), %rdi
	callq	parse_svg_viewbox
	cmpl	$0, %eax
	je	.LBB5_27
# BB#26:                                # %if.then.47
	leaq	-112(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_matrix3_mult
.LBB5_27:                               # %if.end.48
	movq	-32(%rbp), %rax
	cmpl	$0, 16(%rax)
	je	.LBB5_33
# BB#28:                                # %land.lhs.true.50
	movq	-32(%rbp), %rax
	cmpl	$0, 20(%rax)
	jne	.LBB5_33
# BB#29:                                # %if.then.54
	xorps	%xmm0, %xmm0
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB5_32
# BB#30:                                # %land.lhs.true.57
	xorps	%xmm0, %xmm0
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB5_32
# BB#31:                                # %if.then.60
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_width
	cvtsi2sdl	%eax, %xmm0
	divsd	-144(%rbp), %xmm0
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rdi
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	callq	gimp_image_get_height
	cvtsi2sdl	%eax, %xmm0
	divsd	-152(%rbp), %xmm0
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-232(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_matrix3_scale
.LBB5_32:                               # %if.end.68
	jmp	.LBB5_33
.LBB5_33:                               # %if.end.69
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-32(%rbp), %rax
	movl	20(%rax), %edx
	addl	$1, %edx
	movl	%edx, 20(%rax)
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	svg_handler_svg_start, .Lfunc_end5-svg_handler_svg_start
	.cfi_endproc

	.align	16, 0x90
	.type	svg_handler_svg_end,@function
svg_handler_svg_end:                    # @svg_handler_svg_end
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	20(%rsi), %eax
	addl	$-1, %eax
	movl	%eax, 20(%rsi)
	popq	%rbp
	retq
.Lfunc_end6:
	.size	svg_handler_svg_end, .Lfunc_end6-svg_handler_svg_end
	.cfi_endproc

	.align	16, 0x90
	.type	svg_handler_group_start,@function
svg_handler_group_start:                # @svg_handler_group_start
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
.LBB7_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_8
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.32, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_7
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB7_7
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	leaq	-104(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	parse_svg_transform
	cmpl	$0, %eax
	je	.LBB7_6
# BB#5:                                 # %if.then.4
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$72, %eax
	movl	%eax, %edi
	leaq	-104(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_copy
	movq	-8(%rbp), %rcx
	movq	%rax, 56(%rcx)
.LBB7_6:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_7
.LBB7_7:                                # %if.end.7
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB7_1
.LBB7_8:                                # %while.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	svg_handler_group_start, .Lfunc_end7-svg_handler_group_start
	.cfi_endproc

	.align	16, 0x90
	.type	svg_handler_path_start,@function
svg_handler_path_start:                 # @svg_handler_path_start
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
	subq	$128, %rsp
	movl	$16, %eax
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, %rdi
	callq	g_slice_alloc0
	movq	%rax, -40(%rbp)
.LBB8_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_18
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$100, %edx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	%edx, -120(%rbp)        # 4-byte Spill
	je	.LBB8_7
	jmp	.LBB8_19
.LBB8_19:                               # %while.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$105, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB8_3
	jmp	.LBB8_20
.LBB8_20:                               # %while.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$116, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB8_11
	jmp	.LBB8_17
.LBB8_3:                                # %sw.bb
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.39, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB8_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB8_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_strdup
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB8_6:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_17
.LBB8_7:                                # %sw.bb.6
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.40, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB8_10
# BB#8:                                 # %land.lhs.true.10
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB8_10
# BB#9:                                 # %if.then.12
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	parse_path_data
	movq	-40(%rbp), %rdi
	movq	%rax, 8(%rdi)
.LBB8_10:                               # %if.end.15
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_17
.LBB8_11:                               # %sw.bb.16
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.32, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB8_16
# BB#12:                                # %land.lhs.true.20
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB8_16
# BB#13:                                # %if.then.22
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-112(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	parse_svg_transform
	cmpl	$0, %eax
	je	.LBB8_15
# BB#14:                                # %if.then.25
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$72, %eax
	movl	%eax, %edi
	leaq	-112(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_copy
	movq	-8(%rbp), %rcx
	movq	%rax, 56(%rcx)
.LBB8_15:                               # %if.end.28
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_16
.LBB8_16:                               # %if.end.29
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_17
.LBB8_17:                               # %sw.epilog
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB8_1
.LBB8_18:                               # %while.end
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-8(%rbp), %rsi
	movq	%rax, 48(%rsi)
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	svg_handler_path_start, .Lfunc_end8-svg_handler_path_start
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4602678819172646912     # double 0.5
.LCPI9_1:
	.quad	4607182418800017408     # double 1
.LCPI9_2:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	svg_handler_rect_start,@function
svg_handler_rect_start:                 # @svg_handler_rect_start
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
	subq	$832, %rsp              # imm = 0x340
	movl	$16, %eax
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, %rdi
	callq	g_slice_alloc0
	leaq	-96(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	xorps	%xmm0, %xmm0
	movq	%rax, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm0, -88(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_image_get_resolution
.LBB9_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_32
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$104, %edx
	movl	%ecx, -508(%rbp)        # 4-byte Spill
	movl	%edx, -512(%rbp)        # 4-byte Spill
	je	.LBB9_16
	jmp	.LBB9_56
.LBB9_56:                               # %while.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-508(%rbp), %eax        # 4-byte Reload
	subl	$105, %eax
	movl	%eax, -516(%rbp)        # 4-byte Spill
	je	.LBB9_3
	jmp	.LBB9_57
.LBB9_57:                               # %while.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-508(%rbp), %eax        # 4-byte Reload
	subl	$114, %eax
	movl	%eax, -520(%rbp)        # 4-byte Spill
	je	.LBB9_19
	jmp	.LBB9_58
.LBB9_58:                               # %while.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-508(%rbp), %eax        # 4-byte Reload
	subl	$116, %eax
	movl	%eax, -524(%rbp)        # 4-byte Spill
	je	.LBB9_25
	jmp	.LBB9_59
.LBB9_59:                               # %while.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-508(%rbp), %eax        # 4-byte Reload
	subl	$119, %eax
	movl	%eax, -528(%rbp)        # 4-byte Spill
	je	.LBB9_13
	jmp	.LBB9_60
.LBB9_60:                               # %while.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-508(%rbp), %eax        # 4-byte Reload
	subl	$120, %eax
	movl	%eax, -532(%rbp)        # 4-byte Spill
	je	.LBB9_7
	jmp	.LBB9_61
.LBB9_61:                               # %while.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-508(%rbp), %eax        # 4-byte Reload
	subl	$121, %eax
	movl	%eax, -536(%rbp)        # 4-byte Spill
	je	.LBB9_10
	jmp	.LBB9_31
.LBB9_3:                                # %sw.bb
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.39, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB9_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_strdup
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB9_6:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_31
.LBB9_7:                                # %sw.bb.6
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.25, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB9_9
# BB#8:                                 # %if.then.10
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	parse_svg_length
	movl	%eax, -540(%rbp)        # 4-byte Spill
.LBB9_9:                                # %if.end.13
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_31
.LBB9_10:                               # %sw.bb.14
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.26, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB9_12
# BB#11:                                # %if.then.18
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	parse_svg_length
	movl	%eax, -544(%rbp)        # 4-byte Spill
.LBB9_12:                               # %if.end.21
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_31
.LBB9_13:                               # %sw.bb.22
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.27, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB9_15
# BB#14:                                # %if.then.26
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	-64(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	parse_svg_length
	movl	%eax, -548(%rbp)        # 4-byte Spill
.LBB9_15:                               # %if.end.29
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_31
.LBB9_16:                               # %sw.bb.30
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.28, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB9_18
# BB#17:                                # %if.then.34
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	-72(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	parse_svg_length
	movl	%eax, -552(%rbp)        # 4-byte Spill
.LBB9_18:                               # %if.end.37
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_31
.LBB9_19:                               # %sw.bb.38
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.41, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB9_21
# BB#20:                                # %if.then.42
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	-80(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	parse_svg_length
	movl	%eax, -556(%rbp)        # 4-byte Spill
	jmp	.LBB9_24
.LBB9_21:                               # %if.else
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.42, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB9_23
# BB#22:                                # %if.then.48
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	-88(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	parse_svg_length
	movl	%eax, -560(%rbp)        # 4-byte Spill
.LBB9_23:                               # %if.end.51
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_24
.LBB9_24:                               # %if.end.52
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_31
.LBB9_25:                               # %sw.bb.53
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.32, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB9_30
# BB#26:                                # %land.lhs.true.57
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB9_30
# BB#27:                                # %if.then.59
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	-176(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	parse_svg_transform
	cmpl	$0, %eax
	je	.LBB9_29
# BB#28:                                # %if.then.62
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$72, %eax
	movl	%eax, %edi
	leaq	-176(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_copy
	movq	-8(%rbp), %rcx
	movq	%rax, 56(%rcx)
.LBB9_29:                               # %if.end.65
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_30
.LBB9_30:                               # %if.end.66
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_31
.LBB9_31:                               # %sw.epilog
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB9_1
.LBB9_32:                               # %while.end
	xorps	%xmm0, %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_55
# BB#33:                                # %land.lhs.true.70
	xorps	%xmm0, %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_55
# BB#34:                                # %land.lhs.true.73
	xorps	%xmm0, %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB9_55
# BB#35:                                # %land.lhs.true.76
	xorps	%xmm0, %xmm0
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB9_55
# BB#36:                                # %if.then.79
	xorps	%xmm0, %xmm0
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_1, %xmm2         # xmm2 = mem[0],zero
	xorl	%esi, %esi
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-248(%rbp), %rcx
	movq	%rcx, %rdi
	movsd	%xmm0, -568(%rbp)       # 8-byte Spill
	movsd	%xmm1, -576(%rbp)       # 8-byte Spill
	movsd	%xmm2, -584(%rbp)       # 8-byte Spill
	callq	memset
	movsd	-584(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)
	movsd	-576(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -224(%rbp)
	movsd	%xmm1, -216(%rbp)
	movsd	%xmm1, -208(%rbp)
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-568(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	ucomisd	%xmm3, %xmm2
	jne	.LBB9_38
	jp	.LBB9_38
# BB#37:                                # %if.then.82
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
.LBB9_38:                               # %if.end.83
	xorps	%xmm0, %xmm0
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB9_40
	jp	.LBB9_40
# BB#39:                                # %if.then.86
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
.LBB9_40:                               # %if.end.87
	movsd	.LCPI9_2, %xmm0         # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB9_42
# BB#41:                                # %cond.true
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -592(%rbp)       # 8-byte Spill
	jmp	.LBB9_43
.LBB9_42:                               # %cond.false
	movsd	.LCPI9_2, %xmm0         # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -592(%rbp)       # 8-byte Spill
.LBB9_43:                               # %cond.end
	movsd	-592(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI9_2, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB9_45
# BB#44:                                # %cond.true.94
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -600(%rbp)       # 8-byte Spill
	jmp	.LBB9_46
.LBB9_45:                               # %cond.false.95
	movsd	.LCPI9_2, %xmm0         # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -600(%rbp)       # 8-byte Spill
.LBB9_46:                               # %cond.end.97
	movsd	-600(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	-248(%rbp), %rdi
	movsd	%xmm0, -88(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-64(%rbp), %xmm0
	subsd	-80(%rbp), %xmm0
	movsd	%xmm0, -248(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)
	callq	gimp_bezier_stroke_new_moveto
	xorps	%xmm0, %xmm0
	movq	%rax, -184(%rbp)
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB9_47
	jp	.LBB9_47
	jmp	.LBB9_48
.LBB9_47:                               # %if.then.103
	xorps	%xmm2, %xmm2
	xorl	%eax, %eax
	movl	$1, %edx
	leaq	-312(%rbp), %rcx
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movl	$64, %esi
	movl	%esi, %edi
	movq	%rcx, %r8
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	%eax, %esi
	movq	-608(%rbp), %r8         # 8-byte Reload
	movl	%edx, -612(%rbp)        # 4-byte Spill
	movq	%r8, %rdx
	movsd	%xmm2, -624(%rbp)       # 8-byte Spill
	movl	%eax, -628(%rbp)        # 4-byte Spill
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	movsd	%xmm0, -648(%rbp)       # 8-byte Spill
	movsd	%xmm1, -656(%rbp)       # 8-byte Spill
	callq	memset
	movsd	-656(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -296(%rbp)
	movsd	-648(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -288(%rbp)
	movsd	%xmm1, -280(%rbp)
	movsd	%xmm1, -272(%rbp)
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	addsd	-64(%rbp), %xmm2
	movsd	%xmm2, -312(%rbp)
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	addsd	-88(%rbp), %xmm2
	movsd	%xmm2, -304(%rbp)
	movq	-184(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-624(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movl	-628(%rbp), %esi        # 4-byte Reload
	movl	-612(%rbp), %edx        # 4-byte Reload
	movq	-640(%rbp), %rcx        # 8-byte Reload
	callq	gimp_bezier_stroke_arcto
.LBB9_48:                               # %if.end.108
	leaq	-248(%rbp), %rsi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -248(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-72(%rbp), %xmm0
	subsd	-88(%rbp), %xmm0
	movsd	%xmm0, -240(%rbp)
	movq	-184(%rbp), %rdi
	callq	gimp_bezier_stroke_lineto
	xorps	%xmm0, %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB9_49
	jp	.LBB9_49
	jmp	.LBB9_50
.LBB9_49:                               # %if.then.115
	xorps	%xmm2, %xmm2
	xorl	%eax, %eax
	movl	$1, %edx
	leaq	-376(%rbp), %rcx
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movl	$64, %esi
	movl	%esi, %edi
	movq	%rcx, %r8
	movq	%rdi, -664(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	%eax, %esi
	movq	-664(%rbp), %r8         # 8-byte Reload
	movl	%edx, -668(%rbp)        # 4-byte Spill
	movq	%r8, %rdx
	movsd	%xmm2, -680(%rbp)       # 8-byte Spill
	movl	%eax, -684(%rbp)        # 4-byte Spill
	movq	%rcx, -696(%rbp)        # 8-byte Spill
	movsd	%xmm0, -704(%rbp)       # 8-byte Spill
	movsd	%xmm1, -712(%rbp)       # 8-byte Spill
	callq	memset
	movsd	-712(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -360(%rbp)
	movsd	-704(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -352(%rbp)
	movsd	%xmm1, -344(%rbp)
	movsd	%xmm1, -336(%rbp)
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	addsd	-64(%rbp), %xmm2
	subsd	-80(%rbp), %xmm2
	movsd	%xmm2, -376(%rbp)
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	addsd	-72(%rbp), %xmm2
	movsd	%xmm2, -368(%rbp)
	movq	-184(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-680(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movl	-684(%rbp), %esi        # 4-byte Reload
	movl	-668(%rbp), %edx        # 4-byte Reload
	movq	-696(%rbp), %rcx        # 8-byte Reload
	callq	gimp_bezier_stroke_arcto
.LBB9_50:                               # %if.end.122
	leaq	-248(%rbp), %rsi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-80(%rbp), %xmm0
	movsd	%xmm0, -248(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -240(%rbp)
	movq	-184(%rbp), %rdi
	callq	gimp_bezier_stroke_lineto
	xorps	%xmm0, %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB9_51
	jp	.LBB9_51
	jmp	.LBB9_52
.LBB9_51:                               # %if.then.128
	xorps	%xmm2, %xmm2
	xorl	%eax, %eax
	movl	$1, %edx
	leaq	-440(%rbp), %rcx
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movl	$64, %esi
	movl	%esi, %edi
	movq	%rcx, %r8
	movq	%rdi, -720(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	%eax, %esi
	movq	-720(%rbp), %r8         # 8-byte Reload
	movl	%edx, -724(%rbp)        # 4-byte Spill
	movq	%r8, %rdx
	movsd	%xmm2, -736(%rbp)       # 8-byte Spill
	movl	%eax, -740(%rbp)        # 4-byte Spill
	movq	%rcx, -752(%rbp)        # 8-byte Spill
	movsd	%xmm0, -760(%rbp)       # 8-byte Spill
	movsd	%xmm1, -768(%rbp)       # 8-byte Spill
	callq	memset
	movsd	-768(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -424(%rbp)
	movsd	-760(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -416(%rbp)
	movsd	%xmm1, -408(%rbp)
	movsd	%xmm1, -400(%rbp)
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, -440(%rbp)
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	addsd	-72(%rbp), %xmm2
	subsd	-88(%rbp), %xmm2
	movsd	%xmm2, -432(%rbp)
	movq	-184(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-736(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movl	-740(%rbp), %esi        # 4-byte Reload
	movl	-724(%rbp), %edx        # 4-byte Reload
	movq	-752(%rbp), %rcx        # 8-byte Reload
	callq	gimp_bezier_stroke_arcto
.LBB9_52:                               # %if.end.134
	leaq	-248(%rbp), %rsi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -248(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -240(%rbp)
	movq	-184(%rbp), %rdi
	callq	gimp_bezier_stroke_lineto
	xorps	%xmm0, %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB9_53
	jp	.LBB9_53
	jmp	.LBB9_54
.LBB9_53:                               # %if.then.139
	xorps	%xmm2, %xmm2
	xorl	%eax, %eax
	movl	$1, %edx
	leaq	-504(%rbp), %rcx
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movl	$64, %esi
	movl	%esi, %edi
	movq	%rcx, %r8
	movq	%rdi, -776(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	%eax, %esi
	movq	-776(%rbp), %r8         # 8-byte Reload
	movl	%edx, -780(%rbp)        # 4-byte Spill
	movq	%r8, %rdx
	movsd	%xmm2, -792(%rbp)       # 8-byte Spill
	movl	%eax, -796(%rbp)        # 4-byte Spill
	movq	%rcx, -808(%rbp)        # 8-byte Spill
	movsd	%xmm0, -816(%rbp)       # 8-byte Spill
	movsd	%xmm1, -824(%rbp)       # 8-byte Spill
	callq	memset
	movsd	-824(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -488(%rbp)
	movsd	-816(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -480(%rbp)
	movsd	%xmm1, -472(%rbp)
	movsd	%xmm1, -464(%rbp)
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	addsd	-80(%rbp), %xmm2
	movsd	%xmm2, -504(%rbp)
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, -496(%rbp)
	movq	-184(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-792(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movl	-796(%rbp), %esi        # 4-byte Reload
	movl	-780(%rbp), %edx        # 4-byte Reload
	movq	-808(%rbp), %rcx        # 8-byte Reload
	callq	gimp_bezier_stroke_arcto
.LBB9_54:                               # %if.end.144
	movq	-184(%rbp), %rdi
	callq	gimp_stroke_close
	movq	-40(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	-184(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-40(%rbp), %rsi
	movq	%rax, 8(%rsi)
.LBB9_55:                               # %if.end.147
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-8(%rbp), %rsi
	movq	%rax, 48(%rsi)
	addq	$832, %rsp              # imm = 0x340
	popq	%rbp
	retq
.Lfunc_end9:
	.size	svg_handler_rect_start, .Lfunc_end9-svg_handler_rect_start
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4602678819172646912     # double 0.5
.LCPI10_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	svg_handler_ellipse_start,@function
svg_handler_ellipse_start:              # @svg_handler_ellipse_start
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
	subq	$304, %rsp              # imm = 0x130
	movl	$16, %eax
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, %rdi
	callq	g_slice_alloc0
	leaq	-128(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI10_1, %xmm2        # xmm2 = mem[0],zero
	xorl	%r9d, %r9d
	movl	$64, %r10d
	movl	%r10d, %ecx
	leaq	-104(%rbp), %rdi
	movq	%rax, -40(%rbp)
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movl	%r9d, %esi
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movsd	%xmm1, -232(%rbp)       # 8-byte Spill
	movsd	%xmm2, -240(%rbp)       # 8-byte Spill
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	callq	memset
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movsd	-232(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -80(%rbp)
	movsd	%xmm1, -72(%rbp)
	movsd	%xmm1, -64(%rbp)
	movsd	-248(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm2, -112(%rbp)
	movsd	%xmm2, -120(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movq	-224(%rbp), %rdx        # 8-byte Reload
	callq	gimp_image_get_resolution
.LBB10_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_29
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$99, %edx
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	movl	%edx, -256(%rbp)        # 4-byte Spill
	je	.LBB10_7
	jmp	.LBB10_33
.LBB10_33:                              # %while.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-252(%rbp), %eax        # 4-byte Reload
	subl	$105, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	je	.LBB10_3
	jmp	.LBB10_34
.LBB10_34:                              # %while.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-252(%rbp), %eax        # 4-byte Reload
	subl	$114, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	je	.LBB10_13
	jmp	.LBB10_35
.LBB10_35:                              # %while.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-252(%rbp), %eax        # 4-byte Reload
	subl	$116, %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	je	.LBB10_22
	jmp	.LBB10_28
.LBB10_3:                               # %sw.bb
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.39, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB10_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB10_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_strdup
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB10_6:                               # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_28
.LBB10_7:                               # %sw.bb.6
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.43, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB10_9
# BB#8:                                 # %if.then.10
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-104(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	parse_svg_length
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB10_12
.LBB10_9:                               # %if.else
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.44, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB10_11
# BB#10:                                # %if.then.15
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-104(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	addq	$8, %rax
	movq	%rax, %rsi
	callq	parse_svg_length
	movl	%eax, -276(%rbp)        # 4-byte Spill
.LBB10_11:                              # %if.end.17
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_12
.LBB10_12:                              # %if.end.18
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_28
.LBB10_13:                              # %sw.bb.19
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.45, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB10_15
# BB#14:                                # %if.then.23
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-112(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	parse_svg_length
	leaq	-120(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-8(%rbp), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	%eax, -280(%rbp)        # 4-byte Spill
	callq	parse_svg_length
	movl	%eax, -284(%rbp)        # 4-byte Spill
	jmp	.LBB10_21
.LBB10_15:                              # %if.else.28
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.41, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB10_17
# BB#16:                                # %if.then.32
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-112(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	parse_svg_length
	movl	%eax, -288(%rbp)        # 4-byte Spill
	jmp	.LBB10_20
.LBB10_17:                              # %if.else.35
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.42, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB10_19
# BB#18:                                # %if.then.39
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-120(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	parse_svg_length
	movl	%eax, -292(%rbp)        # 4-byte Spill
.LBB10_19:                              # %if.end.42
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_20
.LBB10_20:                              # %if.end.43
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_21
.LBB10_21:                              # %if.end.44
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_28
.LBB10_22:                              # %sw.bb.45
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.32, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB10_27
# BB#23:                                # %land.lhs.true.49
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB10_27
# BB#24:                                # %if.then.51
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-208(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	parse_svg_transform
	cmpl	$0, %eax
	je	.LBB10_26
# BB#25:                                # %if.then.54
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$72, %eax
	movl	%eax, %edi
	leaq	-208(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_copy
	movq	-8(%rbp), %rcx
	movq	%rax, 56(%rcx)
.LBB10_26:                              # %if.end.57
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_27
.LBB10_27:                              # %if.end.58
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_28
.LBB10_28:                              # %sw.epilog
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB10_1
.LBB10_29:                              # %while.end
	xorps	%xmm0, %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB10_32
# BB#30:                                # %land.lhs.true.62
	xorps	%xmm0, %xmm0
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB10_32
# BB#31:                                # %if.then.65
	leaq	-104(%rbp), %rdi
	xorps	%xmm2, %xmm2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_bezier_stroke_new_ellipse
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-40(%rbp), %rsi
	movq	%rax, 8(%rsi)
.LBB10_32:                              # %if.end.69
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-8(%rbp), %rsi
	movq	%rax, 48(%rsi)
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end10:
	.size	svg_handler_ellipse_start, .Lfunc_end10-svg_handler_ellipse_start
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4602678819172646912     # double 0.5
.LCPI11_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	svg_handler_line_start,@function
svg_handler_line_start:                 # @svg_handler_line_start
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
	subq	$368, %rsp              # imm = 0x170
	movl	$16, %eax
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, %rdi
	callq	g_slice_alloc0
	leaq	-184(%rbp), %rsi
	leaq	-192(%rbp), %rdx
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI11_1, %xmm1        # xmm1 = mem[0],zero
	xorl	%r9d, %r9d
	movl	$64, %r10d
	movl	%r10d, %ecx
	leaq	-168(%rbp), %rdi
	leaq	-104(%rbp), %r8
	movq	%rax, -40(%rbp)
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	movl	%r9d, %esi
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	movl	%r9d, -300(%rbp)        # 4-byte Spill
	movsd	%xmm1, -312(%rbp)       # 8-byte Spill
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	callq	memset
	movsd	-312(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movsd	-320(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -80(%rbp)
	movsd	%xmm1, -72(%rbp)
	movsd	%xmm1, -64(%rbp)
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	movl	-300(%rbp), %esi        # 4-byte Reload
	movq	-296(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movsd	-312(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)
	movsd	-320(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -144(%rbp)
	movsd	%xmm1, -136(%rbp)
	movsd	%xmm1, -128(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-280(%rbp), %rsi        # 8-byte Reload
	movq	-288(%rbp), %rdx        # 8-byte Reload
	callq	gimp_image_get_resolution
.LBB11_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_26
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$105, %edx
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	movl	%edx, -328(%rbp)        # 4-byte Spill
	je	.LBB11_3
	jmp	.LBB11_27
.LBB11_27:                              # %while.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-324(%rbp), %eax        # 4-byte Reload
	subl	$116, %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
	je	.LBB11_19
	jmp	.LBB11_28
.LBB11_28:                              # %while.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-324(%rbp), %eax        # 4-byte Reload
	subl	$120, %eax
	movl	%eax, -336(%rbp)        # 4-byte Spill
	je	.LBB11_7
	jmp	.LBB11_29
.LBB11_29:                              # %while.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-324(%rbp), %eax        # 4-byte Reload
	subl	$121, %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
	je	.LBB11_13
	jmp	.LBB11_25
.LBB11_3:                               # %sw.bb
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.39, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB11_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_strdup
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB11_6:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_25
.LBB11_7:                               # %sw.bb.6
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.46, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_9
# BB#8:                                 # %if.then.10
                                        #   in Loop: Header=BB11_1 Depth=1
	leaq	-104(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-184(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	parse_svg_length
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jmp	.LBB11_12
.LBB11_9:                               # %if.else
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.47, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_11
# BB#10:                                # %if.then.15
                                        #   in Loop: Header=BB11_1 Depth=1
	leaq	-168(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-184(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	parse_svg_length
	movl	%eax, -348(%rbp)        # 4-byte Spill
.LBB11_11:                              # %if.end.19
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_12
.LBB11_12:                              # %if.end.20
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_25
.LBB11_13:                              # %sw.bb.21
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.48, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_15
# BB#14:                                # %if.then.25
                                        #   in Loop: Header=BB11_1 Depth=1
	leaq	-104(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	-192(%rbp), %xmm1       # xmm1 = mem[0],zero
	addq	$8, %rax
	movq	%rax, %rsi
	callq	parse_svg_length
	movl	%eax, -352(%rbp)        # 4-byte Spill
	jmp	.LBB11_18
.LBB11_15:                              # %if.else.27
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.49, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_17
# BB#16:                                # %if.then.31
                                        #   in Loop: Header=BB11_1 Depth=1
	leaq	-168(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	-192(%rbp), %xmm1       # xmm1 = mem[0],zero
	addq	$8, %rax
	movq	%rax, %rsi
	callq	parse_svg_length
	movl	%eax, -356(%rbp)        # 4-byte Spill
.LBB11_17:                              # %if.end.35
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_18
.LBB11_18:                              # %if.end.36
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_25
.LBB11_19:                              # %sw.bb.37
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.32, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_24
# BB#20:                                # %land.lhs.true.41
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB11_24
# BB#21:                                # %if.then.43
                                        #   in Loop: Header=BB11_1 Depth=1
	leaq	-264(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	parse_svg_transform
	cmpl	$0, %eax
	je	.LBB11_23
# BB#22:                                # %if.then.46
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	$72, %eax
	movl	%eax, %edi
	leaq	-264(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_copy
	movq	-8(%rbp), %rcx
	movq	%rax, 56(%rcx)
.LBB11_23:                              # %if.end.49
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_24
.LBB11_24:                              # %if.end.50
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_25
.LBB11_25:                              # %sw.epilog
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB11_1
.LBB11_26:                              # %while.end
	leaq	-104(%rbp), %rdi
	callq	gimp_bezier_stroke_new_moveto
	leaq	-168(%rbp), %rsi
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdi
	callq	gimp_bezier_stroke_lineto
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-176(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-40(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-8(%rbp), %rsi
	movq	%rax, 48(%rsi)
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end11:
	.size	svg_handler_line_start, .Lfunc_end11-svg_handler_line_start
	.cfi_endproc

	.align	16, 0x90
	.type	svg_handler_poly_start,@function
svg_handler_poly_start:                 # @svg_handler_poly_start
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
	subq	$240, %rsp
	movl	$16, %eax
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, %rdi
	callq	g_slice_alloc0
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
.LBB12_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_10 Depth 2
                                        #       Child Loop BB12_12 Depth 3
                                        #       Child Loop BB12_22 Depth 3
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_42
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$105, %edx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	%edx, -160(%rbp)        # 4-byte Spill
	je	.LBB12_3
	jmp	.LBB12_45
.LBB12_45:                              # %while.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-156(%rbp), %eax        # 4-byte Reload
	subl	$112, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	je	.LBB12_7
	jmp	.LBB12_46
.LBB12_46:                              # %while.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-156(%rbp), %eax        # 4-byte Reload
	subl	$116, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	je	.LBB12_35
	jmp	.LBB12_41
.LBB12_3:                               # %sw.bb
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.39, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB12_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_strdup
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB12_6:                               # %if.end
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_41
.LBB12_7:                               # %sw.bb.6
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.50, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB12_34
# BB#8:                                 # %land.lhs.true.10
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB12_34
# BB#9:                                 # %if.then.12
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movl	$0, -76(%rbp)
.LBB12_10:                              # %while.cond.13
                                        #   Parent Loop BB12_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_12 Depth 3
                                        #       Child Loop BB12_22 Depth 3
	movq	-56(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB12_28
# BB#11:                                # %while.body.15
                                        #   in Loop: Header=BB12_10 Depth=2
	jmp	.LBB12_12
.LBB12_12:                              # %while.cond.16
                                        #   Parent Loop BB12_1 Depth=1
                                        #     Parent Loop BB12_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	$1, %al
	movq	-56(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	g_ascii_table, %rsi
	movzwl	(%rsi,%rcx,2), %edx
	andl	$256, %edx              # imm = 0x100
	cmpl	$0, %edx
	movb	%al, -169(%rbp)         # 1-byte Spill
	jne	.LBB12_14
# BB#13:                                # %lor.rhs
                                        #   in Loop: Header=BB12_12 Depth=3
	movq	-56(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$44, %ecx
	sete	%dl
	movb	%dl, -169(%rbp)         # 1-byte Spill
.LBB12_14:                              # %lor.end
                                        #   in Loop: Header=BB12_12 Depth=3
	movb	-169(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB12_15
	jmp	.LBB12_16
.LBB12_15:                              # %while.body.24
                                        #   in Loop: Header=BB12_12 Depth=3
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB12_12
.LBB12_16:                              # %while.end
                                        #   in Loop: Header=BB12_10 Depth=2
	movl	-76(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	je	.LBB12_17
	jmp	.LBB12_47
.LBB12_47:                              # %while.end
                                        #   in Loop: Header=BB12_10 Depth=2
	movl	-176(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	je	.LBB12_18
	jmp	.LBB12_19
.LBB12_17:                              # %sw.bb.25
                                        #   in Loop: Header=BB12_10 Depth=2
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB12_19
.LBB12_18:                              # %sw.bb.26
                                        #   in Loop: Header=BB12_10 Depth=2
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB12_19:                              # %sw.epilog
                                        #   in Loop: Header=BB12_10 Depth=2
	movq	-56(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB12_21
# BB#20:                                # %if.then.28
                                        #   in Loop: Header=BB12_10 Depth=2
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
.LBB12_21:                              # %if.end.29
                                        #   in Loop: Header=BB12_10 Depth=2
	jmp	.LBB12_22
.LBB12_22:                              # %while.cond.30
                                        #   Parent Loop BB12_1 Depth=1
                                        #     Parent Loop BB12_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -181(%rbp)         # 1-byte Spill
	je	.LBB12_25
# BB#23:                                # %land.lhs.true.33
                                        #   in Loop: Header=BB12_22 Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movzbl	(%rdx), %eax
	movl	%eax, %edx
	movq	g_ascii_table, %rsi
	movzwl	(%rsi,%rdx,2), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	movb	%cl, -181(%rbp)         # 1-byte Spill
	jne	.LBB12_25
# BB#24:                                # %land.rhs
                                        #   in Loop: Header=BB12_22 Depth=3
	movq	-56(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$44, %ecx
	setne	%dl
	movb	%dl, -181(%rbp)         # 1-byte Spill
.LBB12_25:                              # %land.end
                                        #   in Loop: Header=BB12_22 Depth=3
	movb	-181(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB12_26
	jmp	.LBB12_27
.LBB12_26:                              # %while.body.43
                                        #   in Loop: Header=BB12_22 Depth=3
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB12_22
.LBB12_27:                              # %while.end.45
                                        #   in Loop: Header=BB12_10 Depth=2
	jmp	.LBB12_10
.LBB12_28:                              # %while.end.46
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpl	$3, -76(%rbp)
	jle	.LBB12_33
# BB#29:                                # %land.lhs.true.49
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$2, %eax
	movl	-76(%rbp), %ecx
	movl	%eax, -188(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-188(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB12_33
# BB#30:                                # %if.then.52
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	g_string_sized_new
	movabsq	$.L.str.51, %rsi
	movl	$2, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_string_append_len
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	g_string_append_len
	movabsq	$.L.str.52, %rsi
	movl	$2, %r8d
	movl	%r8d, %edx
	movq	-48(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	g_string_append_len
	movq	-48(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rcx
	movq	-72(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	g_string_append_len
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rdi
	movl	$.L.str.24, %r8d
	movl	%r8d, %esi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB12_32
# BB#31:                                # %if.then.67
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$90, %esi
	movq	-48(%rbp), %rdi
	callq	g_string_append_c_inline
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB12_32:                              # %if.end.69
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_33
.LBB12_33:                              # %if.end.70
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_34
.LBB12_34:                              # %if.end.71
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_41
.LBB12_35:                              # %sw.bb.72
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.32, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB12_40
# BB#36:                                # %land.lhs.true.76
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB12_40
# BB#37:                                # %if.then.78
                                        #   in Loop: Header=BB12_1 Depth=1
	leaq	-152(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	parse_svg_transform
	cmpl	$0, %eax
	je	.LBB12_39
# BB#38:                                # %if.then.81
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$72, %eax
	movl	%eax, %edi
	leaq	-152(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_copy
	movq	-8(%rbp), %rcx
	movq	%rax, 56(%rcx)
.LBB12_39:                              # %if.end.84
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_40
.LBB12_40:                              # %if.end.85
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_41
.LBB12_41:                              # %sw.epilog.86
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB12_1
.LBB12_42:                              # %while.end.89
	cmpq	$0, -48(%rbp)
	je	.LBB12_44
# BB#43:                                # %if.then.91
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	callq	parse_path_data
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-48(%rbp), %rdi
	callq	g_string_free
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB12_44:                              # %if.end.94
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-8(%rbp), %rsi
	movq	%rax, 48(%rsi)
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	svg_handler_poly_start, .Lfunc_end12-svg_handler_poly_start
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4621819117588971520     # double 10
.LCPI13_1:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	parse_svg_length,@function
parse_svg_length:                       # @parse_svg_length
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
	subq	$128, %rsp
	leaq	-64(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_ascii_strtod
	movsd	%xmm0, -56(%rbp)
.LBB13_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rax,2), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	je	.LBB13_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB13_1
.LBB13_3:                               # %while.end
	movq	-64(%rbp), %rax
	movsbl	(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	je	.LBB13_4
	jmp	.LBB13_36
.LBB13_36:                              # %while.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$37, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB13_23
	jmp	.LBB13_37
.LBB13_37:                              # %while.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$99, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB13_11
	jmp	.LBB13_38
.LBB13_38:                              # %while.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$105, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB13_19
	jmp	.LBB13_39
.LBB13_39:                              # %while.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$109, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB13_15
	jmp	.LBB13_40
.LBB13_40:                              # %while.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$112, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB13_5
	jmp	.LBB13_24
.LBB13_4:                               # %sw.bb
	jmp	.LBB13_25
.LBB13_5:                               # %sw.bb.4
	movq	-64(%rbp), %rax
	movsbl	1(%rax), %ecx
	movl	%ecx, %edx
	subl	$99, %edx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	%edx, -96(%rbp)         # 4-byte Spill
	je	.LBB13_8
	jmp	.LBB13_41
.LBB13_41:                              # %sw.bb.4
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$116, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB13_7
	jmp	.LBB13_42
.LBB13_42:                              # %sw.bb.4
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$120, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jne	.LBB13_9
	jmp	.LBB13_6
.LBB13_6:                               # %sw.bb.7
	jmp	.LBB13_10
.LBB13_7:                               # %sw.bb.8
	movl	$3, -44(%rbp)
	jmp	.LBB13_10
.LBB13_8:                               # %sw.bb.9
	movl	$4, -44(%rbp)
	jmp	.LBB13_10
.LBB13_9:                               # %sw.default
	movl	$0, -4(%rbp)
	jmp	.LBB13_35
.LBB13_10:                              # %sw.epilog
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB13_25
.LBB13_11:                              # %sw.bb.10
	movq	-64(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$109, %ecx
	jne	.LBB13_13
# BB#12:                                # %if.then
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	$2, -44(%rbp)
	jmp	.LBB13_14
.LBB13_13:                              # %if.else
	movl	$0, -4(%rbp)
	jmp	.LBB13_35
.LBB13_14:                              # %if.end
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB13_25
.LBB13_15:                              # %sw.bb.16
	movq	-64(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$109, %ecx
	jne	.LBB13_17
# BB#16:                                # %if.then.21
	movl	$2, -44(%rbp)
	jmp	.LBB13_18
.LBB13_17:                              # %if.else.22
	movl	$0, -4(%rbp)
	jmp	.LBB13_35
.LBB13_18:                              # %if.end.23
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB13_25
.LBB13_19:                              # %sw.bb.25
	movq	-64(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$110, %ecx
	jne	.LBB13_21
# BB#20:                                # %if.then.30
	movl	$1, -44(%rbp)
	jmp	.LBB13_22
.LBB13_21:                              # %if.else.31
	movl	$0, -4(%rbp)
	jmp	.LBB13_35
.LBB13_22:                              # %if.end.32
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB13_25
.LBB13_23:                              # %sw.bb.34
	movl	$65536, -44(%rbp)       # imm = 0x10000
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB13_25
.LBB13_24:                              # %sw.default.36
	movl	$0, -4(%rbp)
	jmp	.LBB13_35
.LBB13_25:                              # %sw.epilog.37
	jmp	.LBB13_26
.LBB13_26:                              # %while.cond.38
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rax,2), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	je	.LBB13_28
# BB#27:                                # %while.body.45
                                        #   in Loop: Header=BB13_26 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB13_26
.LBB13_28:                              # %while.end.47
	movq	-64(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB13_30
# BB#29:                                # %if.then.48
	movl	$0, -4(%rbp)
	jmp	.LBB13_35
.LBB13_30:                              # %if.end.49
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB13_32
	jmp	.LBB13_43
.LBB13_43:                              # %if.end.49
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$65536, %eax            # imm = 0x10000
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jne	.LBB13_33
	jmp	.LBB13_31
.LBB13_31:                              # %sw.bb.50
	movsd	.LCPI13_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movsd	%xmm1, (%rax)
	jmp	.LBB13_34
.LBB13_32:                              # %sw.bb.52
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB13_34
.LBB13_33:                              # %sw.default.53
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movl	-44(%rbp), %edi
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	callq	gimp_unit_get_factor
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movsd	%xmm1, (%rax)
.LBB13_34:                              # %sw.epilog.57
	movl	$1, -4(%rbp)
.LBB13_35:                              # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	parse_svg_length, .Lfunc_end13-parse_svg_length
	.cfi_endproc

	.align	16, 0x90
	.type	parse_svg_viewbox,@function
parse_svg_viewbox:                      # @parse_svg_viewbox
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_strdup
	movabsq	$.L.str.30, %rsi
	xorps	%xmm0, %xmm0
	movq	%rax, -80(%rbp)
	movl	$0, -84(%rbp)
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm0, -40(%rbp)
	movq	-80(%rbp), %rdi
	callq	strtok
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB14_8
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rdi
	callq	g_ascii_strtod
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.30, %rsi
	movsd	%xmm0, -40(%rbp)
	callq	strtok
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB14_7
# BB#2:                                 # %if.then.5
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rdi
	callq	g_ascii_strtod
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.30, %rsi
	movsd	%xmm0, -48(%rbp)
	callq	strtok
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB14_6
# BB#3:                                 # %if.then.8
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rdi
	callq	g_ascii_strtod
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.30, %rsi
	movsd	%xmm0, -56(%rbp)
	callq	strtok
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB14_5
# BB#4:                                 # %if.then.12
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rdi
	callq	g_ascii_strtod
	movsd	%xmm0, -64(%rbp)
	movl	$1, -84(%rbp)
.LBB14_5:                               # %if.end
	jmp	.LBB14_6
.LBB14_6:                               # %if.end.14
	jmp	.LBB14_7
.LBB14_7:                               # %if.end.15
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.16
	movq	-80(%rbp), %rdi
	callq	g_free
	cmpl	$0, -84(%rbp)
	je	.LBB14_14
# BB#9:                                 # %if.then.18
	movq	-32(%rbp), %rdi
	callq	gimp_matrix3_identity
	movq	-32(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	callq	gimp_matrix3_translate
	xorps	%xmm0, %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_12
# BB#10:                                # %land.lhs.true
	xorps	%xmm0, %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_12
# BB#11:                                # %if.then.22
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	divsd	-56(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	divsd	-64(%rbp), %xmm1
	callq	gimp_matrix3_scale
	jmp	.LBB14_13
.LBB14_12:                              # %if.else
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB14_13:                              # %if.end.24
	jmp	.LBB14_15
.LBB14_14:                              # %if.else.25
	movabsq	$.L.str.31, %rdi
	movb	$0, %al
	callq	g_printerr
.LBB14_15:                              # %if.end.26
	movl	-84(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	parse_svg_viewbox, .Lfunc_end14-parse_svg_viewbox
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4645040803167600640     # double 360
.LCPI15_1:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.align	16, 0x90
	.type	parse_svg_transform,@function
parse_svg_transform:                    # @parse_svg_transform
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
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_matrix3_identity
	movl	$0, -28(%rbp)
.LBB15_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_3 Depth 2
                                        #     Child Loop BB15_6 Depth 2
                                        #     Child Loop BB15_16 Depth 2
                                        #     Child Loop BB15_21 Depth 2
                                        #       Child Loop BB15_22 Depth 3
                                        #       Child Loop BB15_31 Depth 3
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	je	.LBB15_83
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	leaq	-104(%rbp), %rdi
	callq	gimp_matrix3_identity
.LBB15_3:                               # %while.cond
                                        #   Parent Loop BB15_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	movq	g_ascii_table, %rcx
	movzwl	(%rcx,%rax,2), %edx
	andl	$256, %edx              # imm = 0x100
	cmpl	$0, %edx
	je	.LBB15_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB15_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB15_3
.LBB15_5:                               # %while.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	$0, -200(%rbp)
.LBB15_6:                               # %for.cond.6
                                        #   Parent Loop BB15_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-200(%rbp), %rax
	cmpq	$32, %rax
	jae	.LBB15_13
# BB#7:                                 # %for.body.10
                                        #   in Loop: Header=BB15_6 Depth=2
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -201(%rbp)
	movzbl	-201(%rbp), %esi
	movl	%esi, %eax
	movq	g_ascii_table, %rcx
	movzwl	(%rcx,%rax,2), %esi
	andl	$2, %esi
	cmpl	$0, %esi
	jne	.LBB15_9
# BB#8:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB15_6 Depth=2
	movsbl	-201(%rbp), %eax
	cmpl	$45, %eax
	jne	.LBB15_10
.LBB15_9:                               # %if.then
                                        #   in Loop: Header=BB15_6 Depth=2
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -28(%rbp)
	movslq	%eax, %rdx
	movq	-16(%rbp), %rsi
	movb	(%rsi,%rdx), %dil
	movslq	-200(%rbp), %rdx
	movb	%dil, -144(%rbp,%rdx)
	jmp	.LBB15_11
.LBB15_10:                              # %if.else
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_13
.LBB15_11:                              # %if.end
                                        #   in Loop: Header=BB15_6 Depth=2
	jmp	.LBB15_12
.LBB15_12:                              # %for.inc
                                        #   in Loop: Header=BB15_6 Depth=2
	movl	-200(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -200(%rbp)
	jmp	.LBB15_6
.LBB15_13:                              # %for.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movslq	-200(%rbp), %rax
	cmpq	$32, %rax
	jb	.LBB15_15
# BB#14:                                # %if.then.31
	movl	$0, -4(%rbp)
	jmp	.LBB15_84
.LBB15_15:                              # %if.end.32
                                        #   in Loop: Header=BB15_1 Depth=1
	movslq	-200(%rbp), %rax
	movb	$0, -144(%rbp,%rax)
.LBB15_16:                              # %while.cond.35
                                        #   Parent Loop BB15_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	movq	g_ascii_table, %rcx
	movzwl	(%rcx,%rax,2), %edx
	andl	$256, %edx              # imm = 0x100
	cmpl	$0, %edx
	je	.LBB15_18
# BB#17:                                # %while.body.44
                                        #   in Loop: Header=BB15_16 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB15_16
.LBB15_18:                              # %while.end.46
                                        #   in Loop: Header=BB15_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$40, %edx
	je	.LBB15_20
# BB#19:                                # %if.then.52
	movl	$0, -4(%rbp)
	jmp	.LBB15_84
.LBB15_20:                              # %if.end.53
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	$0, -196(%rbp)
.LBB15_21:                              # %for.cond.55
                                        #   Parent Loop BB15_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_22 Depth 3
                                        #       Child Loop BB15_31 Depth 3
	jmp	.LBB15_22
.LBB15_22:                              # %while.cond.57
                                        #   Parent Loop BB15_1 Depth=1
                                        #     Parent Loop BB15_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	movq	g_ascii_table, %rcx
	movzwl	(%rcx,%rax,2), %edx
	andl	$256, %edx              # imm = 0x100
	cmpl	$0, %edx
	je	.LBB15_24
# BB#23:                                # %while.body.66
                                        #   in Loop: Header=BB15_22 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB15_22
.LBB15_24:                              # %while.end.68
                                        #   in Loop: Header=BB15_21 Depth=2
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -202(%rbp)
	movzbl	-202(%rbp), %esi
	movl	%esi, %eax
	movq	g_ascii_table, %rcx
	movzwl	(%rcx,%rax,2), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	jne	.LBB15_28
# BB#25:                                # %lor.lhs.false.77
                                        #   in Loop: Header=BB15_21 Depth=2
	movsbl	-202(%rbp), %eax
	cmpl	$43, %eax
	je	.LBB15_28
# BB#26:                                # %lor.lhs.false.81
                                        #   in Loop: Header=BB15_21 Depth=2
	movsbl	-202(%rbp), %eax
	cmpl	$45, %eax
	je	.LBB15_28
# BB#27:                                # %lor.lhs.false.85
                                        #   in Loop: Header=BB15_21 Depth=2
	movsbl	-202(%rbp), %eax
	cmpl	$46, %eax
	jne	.LBB15_36
.LBB15_28:                              # %if.then.89
                                        #   in Loop: Header=BB15_21 Depth=2
	movslq	-196(%rbp), %rax
	cmpq	$6, %rax
	jne	.LBB15_30
# BB#29:                                # %if.then.93
	movl	$0, -4(%rbp)
	jmp	.LBB15_84
.LBB15_30:                              # %if.end.94
                                        #   in Loop: Header=BB15_21 Depth=2
	leaq	-216(%rbp), %rsi
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	g_ascii_strtod
	movslq	-196(%rbp), %rax
	movsd	%xmm0, -192(%rbp,%rax,8)
	movq	-216(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -28(%rbp)
.LBB15_31:                              # %while.cond.98
                                        #   Parent Loop BB15_1 Depth=1
                                        #     Parent Loop BB15_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	movq	g_ascii_table, %rcx
	movzwl	(%rcx,%rax,2), %edx
	andl	$256, %edx              # imm = 0x100
	cmpl	$0, %edx
	je	.LBB15_33
# BB#32:                                # %while.body.107
                                        #   in Loop: Header=BB15_31 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB15_31
.LBB15_33:                              # %while.end.109
                                        #   in Loop: Header=BB15_21 Depth=2
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$44, %edx
	jne	.LBB15_35
# BB#34:                                # %if.then.115
                                        #   in Loop: Header=BB15_21 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.LBB15_35:                              # %if.end.117
                                        #   in Loop: Header=BB15_21 Depth=2
	jmp	.LBB15_39
.LBB15_36:                              # %if.else.118
                                        #   in Loop: Header=BB15_1 Depth=1
	movsbl	-202(%rbp), %eax
	cmpl	$41, %eax
	jne	.LBB15_38
# BB#37:                                # %if.then.122
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_41
.LBB15_38:                              # %if.else.123
	movl	$0, -4(%rbp)
	jmp	.LBB15_84
.LBB15_39:                              # %if.end.124
                                        #   in Loop: Header=BB15_21 Depth=2
	jmp	.LBB15_40
.LBB15_40:                              # %for.inc.125
                                        #   in Loop: Header=BB15_21 Depth=2
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB15_21
.LBB15_41:                              # %for.end.127
                                        #   in Loop: Header=BB15_1 Depth=1
	leaq	-144(%rbp), %rdi
	movl	$.L.str.33, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB15_45
# BB#42:                                # %if.then.131
                                        #   in Loop: Header=BB15_1 Depth=1
	cmpl	$6, -196(%rbp)
	je	.LBB15_44
# BB#43:                                # %if.then.134
	movl	$0, -4(%rbp)
	jmp	.LBB15_84
.LBB15_44:                              # %if.end.135
                                        #   in Loop: Header=BB15_1 Depth=1
	leaq	-104(%rbp), %rdi
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-184(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-176(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-168(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-160(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-152(%rbp), %xmm5       # xmm5 = mem[0],zero
	callq	gimp_matrix3_affine
	jmp	.LBB15_81
.LBB15_45:                              # %if.else.142
                                        #   in Loop: Header=BB15_1 Depth=1
	leaq	-144(%rbp), %rdi
	movl	$.L.str.34, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB15_52
# BB#46:                                # %if.then.147
                                        #   in Loop: Header=BB15_1 Depth=1
	cmpl	$1, -196(%rbp)
	jne	.LBB15_48
# BB#47:                                # %if.then.150
                                        #   in Loop: Header=BB15_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -184(%rbp)
	jmp	.LBB15_51
.LBB15_48:                              # %if.else.152
                                        #   in Loop: Header=BB15_1 Depth=1
	cmpl	$2, -196(%rbp)
	je	.LBB15_50
# BB#49:                                # %if.then.155
	movl	$0, -4(%rbp)
	jmp	.LBB15_84
.LBB15_50:                              # %if.end.156
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_51
.LBB15_51:                              # %if.end.157
                                        #   in Loop: Header=BB15_1 Depth=1
	leaq	-104(%rbp), %rdi
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-184(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_matrix3_translate
	jmp	.LBB15_80
.LBB15_52:                              # %if.else.160
                                        #   in Loop: Header=BB15_1 Depth=1
	leaq	-144(%rbp), %rdi
	movl	$.L.str.35, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB15_59
# BB#53:                                # %if.then.165
                                        #   in Loop: Header=BB15_1 Depth=1
	cmpl	$1, -196(%rbp)
	jne	.LBB15_55
# BB#54:                                # %if.then.168
                                        #   in Loop: Header=BB15_1 Depth=1
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)
	jmp	.LBB15_58
.LBB15_55:                              # %if.else.171
                                        #   in Loop: Header=BB15_1 Depth=1
	cmpl	$2, -196(%rbp)
	je	.LBB15_57
# BB#56:                                # %if.then.174
	movl	$0, -4(%rbp)
	jmp	.LBB15_84
.LBB15_57:                              # %if.end.175
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_58
.LBB15_58:                              # %if.end.176
                                        #   in Loop: Header=BB15_1 Depth=1
	leaq	-104(%rbp), %rdi
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-184(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_matrix3_scale
	jmp	.LBB15_79
.LBB15_59:                              # %if.else.179
                                        #   in Loop: Header=BB15_1 Depth=1
	leaq	-144(%rbp), %rdi
	movl	$.L.str.36, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB15_67
# BB#60:                                # %if.then.184
                                        #   in Loop: Header=BB15_1 Depth=1
	cmpl	$1, -196(%rbp)
	jne	.LBB15_62
# BB#61:                                # %if.then.187
                                        #   in Loop: Header=BB15_1 Depth=1
	leaq	-104(%rbp), %rdi
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI15_1, %xmm1        # xmm1 = mem[0],zero
	mulsd	-192(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_matrix3_rotate
	jmp	.LBB15_66
.LBB15_62:                              # %if.else.189
                                        #   in Loop: Header=BB15_1 Depth=1
	cmpl	$3, -196(%rbp)
	jne	.LBB15_64
# BB#63:                                # %if.then.192
                                        #   in Loop: Header=BB15_1 Depth=1
	leaq	-104(%rbp), %rdi
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	-176(%rbp), %xmm1       # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	callq	gimp_matrix3_translate
	leaq	-104(%rbp), %rdi
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI15_1, %xmm1        # xmm1 = mem[0],zero
	mulsd	-192(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_matrix3_rotate
	leaq	-104(%rbp), %rdi
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-176(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_matrix3_translate
	jmp	.LBB15_65
.LBB15_64:                              # %if.else.201
	movl	$0, -4(%rbp)
	jmp	.LBB15_84
.LBB15_65:                              # %if.end.202
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_66
.LBB15_66:                              # %if.end.203
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_78
.LBB15_67:                              # %if.else.204
                                        #   in Loop: Header=BB15_1 Depth=1
	leaq	-144(%rbp), %rdi
	movl	$.L.str.37, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB15_71
# BB#68:                                # %if.then.209
                                        #   in Loop: Header=BB15_1 Depth=1
	cmpl	$1, -196(%rbp)
	je	.LBB15_70
# BB#69:                                # %if.then.212
	movl	$0, -4(%rbp)
	jmp	.LBB15_84
.LBB15_70:                              # %if.end.213
                                        #   in Loop: Header=BB15_1 Depth=1
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI15_1, %xmm1        # xmm1 = mem[0],zero
	mulsd	-192(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	tan
	leaq	-104(%rbp), %rdi
	callq	gimp_matrix3_xshear
	jmp	.LBB15_77
.LBB15_71:                              # %if.else.218
                                        #   in Loop: Header=BB15_1 Depth=1
	leaq	-144(%rbp), %rdi
	movl	$.L.str.38, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB15_75
# BB#72:                                # %if.then.223
                                        #   in Loop: Header=BB15_1 Depth=1
	cmpl	$1, -196(%rbp)
	je	.LBB15_74
# BB#73:                                # %if.then.226
	movl	$0, -4(%rbp)
	jmp	.LBB15_84
.LBB15_74:                              # %if.end.227
                                        #   in Loop: Header=BB15_1 Depth=1
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI15_1, %xmm1        # xmm1 = mem[0],zero
	mulsd	-192(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	tan
	leaq	-104(%rbp), %rdi
	callq	gimp_matrix3_yshear
	jmp	.LBB15_76
.LBB15_75:                              # %if.else.232
	movl	$0, -4(%rbp)
	jmp	.LBB15_84
.LBB15_76:                              # %if.end.233
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_77
.LBB15_77:                              # %if.end.234
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_78
.LBB15_78:                              # %if.end.235
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_79
.LBB15_79:                              # %if.end.236
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_80
.LBB15_80:                              # %if.end.237
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_81
.LBB15_81:                              # %if.end.238
                                        #   in Loop: Header=BB15_1 Depth=1
	leaq	-104(%rbp), %rdi
	callq	gimp_matrix3_invert
	leaq	-104(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_matrix3_mult
# BB#82:                                # %for.inc.239
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB15_1
.LBB15_83:                              # %for.end.241
	movq	-24(%rbp), %rdi
	callq	gimp_matrix3_invert
	movl	$1, -4(%rbp)
.LBB15_84:                              # %return
	movl	-4(%rbp), %eax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	parse_svg_transform, .Lfunc_end15-parse_svg_transform
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4621819117588971520     # double 10
.LCPI16_1:
	.quad	4607182418800017408     # double 1
.LCPI16_2:
	.quad	4631952216750555136     # double 48
.LCPI16_3:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.align	16, 0x90
	.type	parse_path_data,@function
parse_path_data:                        # @parse_path_data
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
	subq	$208, %rsp
	xorl	%esi, %esi
	movl	$120, %eax
	movl	%eax, %edx
	leaq	-128(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movl	$0, -132(%rbp)
	movl	$0, -136(%rbp)
	movl	$0, -140(%rbp)
	movl	$0, -144(%rbp)
	movsd	%xmm0, -152(%rbp)
	movb	$0, -153(%rbp)
	movl	$0, -160(%rbp)
	movl	$0, -164(%rbp)
	movl	$0, -168(%rbp)
	movsd	%xmm0, -176(%rbp)
	movq	%rcx, %rdi
	callq	memset
	movl	$0, -180(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-180(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -153(%rbp)
	movsbl	-153(%rbp), %esi
	cmpl	$48, %esi
	jl	.LBB16_13
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB16_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$57, %eax
	jg	.LBB16_13
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	$0, -132(%rbp)
	je	.LBB16_11
# BB#4:                                 # %if.then.5
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	$0, -140(%rbp)
	je	.LBB16_6
# BB#5:                                 # %if.then.7
                                        #   in Loop: Header=BB16_1 Depth=1
	imull	$10, -164(%rbp), %eax
	movsbl	-153(%rbp), %ecx
	addl	%ecx, %eax
	subl	$48, %eax
	movl	%eax, -164(%rbp)
	movl	$0, -144(%rbp)
	jmp	.LBB16_10
.LBB16_6:                               # %if.else
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	$0, -136(%rbp)
	je	.LBB16_8
# BB#7:                                 # %if.then.10
                                        #   in Loop: Header=BB16_1 Depth=1
	movsd	.LCPI16_3, %xmm0        # xmm0 = mem[0],zero
	mulsd	-176(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movsbl	-153(%rbp), %eax
	subl	$48, %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-152(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	jmp	.LBB16_9
.LBB16_8:                               # %if.else.17
                                        #   in Loop: Header=BB16_1 Depth=1
	movsd	.LCPI16_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI16_0, %xmm1        # xmm1 = mem[0],zero
	mulsd	-152(%rbp), %xmm1
	movsbl	-153(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	addsd	%xmm2, %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -152(%rbp)
.LBB16_9:                               # %if.end
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_10
.LBB16_10:                              # %if.end.23
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_12
.LBB16_11:                              # %if.else.24
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	$1, -132(%rbp)
	movl	$0, -136(%rbp)
	movl	$0, -140(%rbp)
	movl	$0, -164(%rbp)
	movl	$1, -168(%rbp)
	movl	$0, -144(%rbp)
	movsbl	-153(%rbp), %eax
	subl	$48, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -152(%rbp)
	movl	$1, -160(%rbp)
.LBB16_12:                              # %if.end.28
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_48
.LBB16_13:                              # %if.else.29
                                        #   in Loop: Header=BB16_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$46, %eax
	jne	.LBB16_17
# BB#14:                                # %if.then.33
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	$0, -132(%rbp)
	jne	.LBB16_16
# BB#15:                                # %if.then.35
                                        #   in Loop: Header=BB16_1 Depth=1
	xorps	%xmm0, %xmm0
	movl	$1, -132(%rbp)
	movsd	%xmm0, -152(%rbp)
.LBB16_16:                              # %if.end.36
                                        #   in Loop: Header=BB16_1 Depth=1
	movsd	.LCPI16_1, %xmm0        # xmm0 = mem[0],zero
	movl	$1, -136(%rbp)
	movsd	%xmm0, -176(%rbp)
	jmp	.LBB16_47
.LBB16_17:                              # %if.else.37
                                        #   in Loop: Header=BB16_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$69, %eax
	je	.LBB16_19
# BB#18:                                # %lor.lhs.false
                                        #   in Loop: Header=BB16_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$101, %eax
	jne	.LBB16_21
.LBB16_19:                              # %land.lhs.true.44
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	$0, -132(%rbp)
	je	.LBB16_21
# BB#20:                                # %if.then.46
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	$1, -140(%rbp)
	movl	$1, -144(%rbp)
	movl	$0, -164(%rbp)
	movl	$1, -168(%rbp)
	jmp	.LBB16_46
.LBB16_21:                              # %if.else.47
                                        #   in Loop: Header=BB16_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$43, %eax
	je	.LBB16_23
# BB#22:                                # %lor.lhs.false.51
                                        #   in Loop: Header=BB16_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$45, %eax
	jne	.LBB16_25
.LBB16_23:                              # %land.lhs.true.55
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	$0, -140(%rbp)
	je	.LBB16_25
# BB#24:                                # %if.then.57
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	movsbl	-153(%rbp), %edx
	cmpl	$43, %edx
	cmovel	%ecx, %eax
	movl	%eax, -168(%rbp)
	jmp	.LBB16_45
.LBB16_25:                              # %if.else.61
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	$0, -132(%rbp)
	je	.LBB16_44
# BB#26:                                # %if.then.63
                                        #   in Loop: Header=BB16_1 Depth=1
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-160(%rbp), %xmm1
	movl	-168(%rbp), %eax
	imull	-164(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	movsd	%xmm1, -192(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	callq	pow
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	mulsd	-152(%rbp), %xmm1
	movsd	%xmm1, -152(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB16_43
# BB#27:                                # %if.then.70
                                        #   in Loop: Header=BB16_1 Depth=1
	movsbl	-80(%rbp), %eax
	addl	$-97, %eax
	movl	%eax, %ecx
	subl	$21, %eax
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	movl	%eax, -204(%rbp)        # 4-byte Spill
	ja	.LBB16_42
# BB#80:                                # %if.then.70
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	.LJTI16_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB16_28:                              # %sw.bb
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-76(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB16_30
# BB#29:                                # %if.then.74
                                        #   in Loop: Header=BB16_1 Depth=1
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-152(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	jmp	.LBB16_33
.LBB16_30:                              # %if.else.76
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-76(%rbp), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB16_32
# BB#31:                                # %if.then.81
                                        #   in Loop: Header=BB16_1 Depth=1
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-152(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
.LBB16_32:                              # %if.end.83
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_33
.LBB16_33:                              # %if.end.84
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_42
.LBB16_34:                              # %sw.bb.85
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	$5, -76(%rbp)
	jne	.LBB16_36
# BB#35:                                # %if.then.89
                                        #   in Loop: Header=BB16_1 Depth=1
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-152(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	jmp	.LBB16_39
.LBB16_36:                              # %if.else.92
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	$6, -76(%rbp)
	jne	.LBB16_38
# BB#37:                                # %if.then.96
                                        #   in Loop: Header=BB16_1 Depth=1
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-152(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
.LBB16_38:                              # %if.end.99
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_39
.LBB16_39:                              # %if.end.100
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_42
.LBB16_40:                              # %sw.bb.101
                                        #   in Loop: Header=BB16_1 Depth=1
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-152(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	jmp	.LBB16_42
.LBB16_41:                              # %sw.bb.104
                                        #   in Loop: Header=BB16_1 Depth=1
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-152(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
.LBB16_42:                              # %sw.epilog
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_43
.LBB16_43:                              # %if.end.107
                                        #   in Loop: Header=BB16_1 Depth=1
	leaq	-128(%rbp), %rdi
	xorl	%esi, %esi
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -76(%rbp)
	movslq	%eax, %rdx
	movsd	%xmm0, -64(%rbp,%rdx,8)
	callq	parse_path_do_cmd
	movl	$0, -132(%rbp)
.LBB16_44:                              # %if.end.111
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_45
.LBB16_45:                              # %if.end.112
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_46
.LBB16_46:                              # %if.end.113
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_47
.LBB16_47:                              # %if.end.114
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_48
.LBB16_48:                              # %if.end.115
                                        #   in Loop: Header=BB16_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB16_50
# BB#49:                                # %if.then.119
	jmp	.LBB16_79
.LBB16_50:                              # %if.else.120
                                        #   in Loop: Header=BB16_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$43, %eax
	je	.LBB16_52
# BB#51:                                # %lor.lhs.false.124
                                        #   in Loop: Header=BB16_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$45, %eax
	jne	.LBB16_54
.LBB16_52:                              # %land.lhs.true.128
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	$0, -144(%rbp)
	jne	.LBB16_54
# BB#53:                                # %if.then.130
                                        #   in Loop: Header=BB16_1 Depth=1
	xorps	%xmm0, %xmm0
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	movsbl	-153(%rbp), %edx
	cmpl	$43, %edx
	cmovel	%ecx, %eax
	movl	%eax, -160(%rbp)
	movsd	%xmm0, -152(%rbp)
	movl	$1, -132(%rbp)
	movl	$0, -136(%rbp)
	movl	$0, -140(%rbp)
	movl	$0, -164(%rbp)
	movl	$1, -168(%rbp)
	movl	$0, -144(%rbp)
	jmp	.LBB16_76
.LBB16_54:                              # %if.else.135
                                        #   in Loop: Header=BB16_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$122, %eax
	je	.LBB16_56
# BB#55:                                # %lor.lhs.false.139
                                        #   in Loop: Header=BB16_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$90, %eax
	jne	.LBB16_61
.LBB16_56:                              # %if.then.143
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	$0, -76(%rbp)
	je	.LBB16_58
# BB#57:                                # %if.then.146
                                        #   in Loop: Header=BB16_1 Depth=1
	leaq	-128(%rbp), %rdi
	movl	$1, %esi
	callq	parse_path_do_cmd
.LBB16_58:                              # %if.end.147
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpq	$0, -120(%rbp)
	je	.LBB16_60
# BB#59:                                # %if.then.149
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-120(%rbp), %rdi
	callq	gimp_stroke_close
.LBB16_60:                              # %if.end.151
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_75
.LBB16_61:                              # %if.else.152
                                        #   in Loop: Header=BB16_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$65, %eax
	jl	.LBB16_67
# BB#62:                                # %land.lhs.true.156
                                        #   in Loop: Header=BB16_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$90, %eax
	jg	.LBB16_67
# BB#63:                                # %land.lhs.true.160
                                        #   in Loop: Header=BB16_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$69, %eax
	je	.LBB16_67
# BB#64:                                # %if.then.164
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	$0, -76(%rbp)
	je	.LBB16_66
# BB#65:                                # %if.then.167
                                        #   in Loop: Header=BB16_1 Depth=1
	leaq	-128(%rbp), %rdi
	movl	$1, %esi
	callq	parse_path_do_cmd
.LBB16_66:                              # %if.end.168
                                        #   in Loop: Header=BB16_1 Depth=1
	movsbl	-153(%rbp), %eax
	addl	$97, %eax
	subl	$65, %eax
	movb	%al, %cl
	movb	%cl, -80(%rbp)
	movl	$0, -72(%rbp)
	jmp	.LBB16_74
.LBB16_67:                              # %if.else.175
                                        #   in Loop: Header=BB16_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$97, %eax
	jl	.LBB16_73
# BB#68:                                # %land.lhs.true.179
                                        #   in Loop: Header=BB16_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$122, %eax
	jg	.LBB16_73
# BB#69:                                # %land.lhs.true.183
                                        #   in Loop: Header=BB16_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$101, %eax
	je	.LBB16_73
# BB#70:                                # %if.then.187
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	$0, -76(%rbp)
	je	.LBB16_72
# BB#71:                                # %if.then.190
                                        #   in Loop: Header=BB16_1 Depth=1
	leaq	-128(%rbp), %rdi
	movl	$1, %esi
	callq	parse_path_do_cmd
.LBB16_72:                              # %if.end.191
                                        #   in Loop: Header=BB16_1 Depth=1
	movb	-153(%rbp), %al
	movb	%al, -80(%rbp)
	movl	$1, -72(%rbp)
.LBB16_73:                              # %if.end.194
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_74
.LBB16_74:                              # %if.end.195
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_75
.LBB16_75:                              # %if.end.196
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_76
.LBB16_76:                              # %if.end.197
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_77
.LBB16_77:                              # %if.end.198
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_78
.LBB16_78:                              # %for.inc
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB16_1
.LBB16_79:                              # %for.end
	movq	-128(%rbp), %rdi
	callq	g_list_reverse
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	parse_path_data, .Lfunc_end16-parse_path_data
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI16_0:
	.quad	.LBB16_34
	.quad	.LBB16_42
	.quad	.LBB16_28
	.quad	.LBB16_42
	.quad	.LBB16_42
	.quad	.LBB16_42
	.quad	.LBB16_42
	.quad	.LBB16_40
	.quad	.LBB16_42
	.quad	.LBB16_42
	.quad	.LBB16_42
	.quad	.LBB16_28
	.quad	.LBB16_28
	.quad	.LBB16_42
	.quad	.LBB16_42
	.quad	.LBB16_42
	.quad	.LBB16_28
	.quad	.LBB16_42
	.quad	.LBB16_28
	.quad	.LBB16_28
	.quad	.LBB16_42
	.quad	.LBB16_41

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4645040803167600640     # double 360
.LCPI17_1:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI17_2:
	.quad	4602678819172646912     # double 0.5
.LCPI17_3:
	.quad	4607182418800017408     # double 1
.LCPI17_4:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	parse_path_do_cmd,@function
parse_path_do_cmd:                      # @parse_path_do_cmd
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
	subq	$720, %rsp              # imm = 0x2D0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -32(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -80(%rbp)
	movabsq	$4607182418800017408, %rdi # imm = 0x3FF0000000000000
	movq	%rdi, -64(%rbp)
	movabsq	$4602678819172646912, %rdi # imm = 0x3FE0000000000000
	movq	%rdi, -56(%rbp)
	movq	%rdi, -48(%rbp)
	movq	%rdi, -40(%rbp)
	movq	-8(%rbp), %rdi
	movsbl	48(%rdi), %esi
	addl	$-97, %esi
	movl	%esi, %edi
	subl	$21, %esi
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movl	%esi, -540(%rbp)        # 4-byte Spill
	ja	.LBB17_41
# BB#43:                                # %entry
	movq	-536(%rbp), %rax        # 8-byte Reload
	movq	.LJTI17_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB17_1:                               # %sw.bb
	movq	-8(%rbp), %rax
	cmpl	$2, 52(%rax)
	je	.LBB17_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$0, -12(%rbp)
	je	.LBB17_4
.LBB17_3:                               # %if.then
	movl	$2, %esi
	movq	-8(%rbp), %rdi
	callq	parse_path_default_xy
	leaq	-80(%rbp), %rdi
	movq	-8(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movsd	%xmm0, -80(%rbp)
	movq	-8(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 40(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movsd	%xmm0, -72(%rbp)
	callq	gimp_bezier_stroke_new_moveto
	movq	-8(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-8(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-8(%rbp), %rax
	movb	$108, 48(%rax)
.LBB17_4:                               # %if.end
	jmp	.LBB17_42
.LBB17_5:                               # %sw.bb.9
	movq	-8(%rbp), %rax
	cmpl	$2, 52(%rax)
	je	.LBB17_7
# BB#6:                                 # %lor.lhs.false.13
	cmpl	$0, -12(%rbp)
	je	.LBB17_8
.LBB17_7:                               # %if.then.15
	movl	$2, %esi
	movq	-8(%rbp), %rdi
	callq	parse_path_default_xy
	leaq	-80(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movsd	64(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 32(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	movsd	%xmm0, -80(%rbp)
	movq	-8(%rbp), %rdi
	movsd	72(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 40(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 24(%rdi)
	movsd	%xmm0, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	gimp_bezier_stroke_lineto
	movq	-8(%rbp), %rsi
	movl	$0, 52(%rsi)
.LBB17_8:                               # %if.end.28
	jmp	.LBB17_42
.LBB17_9:                               # %sw.bb.29
	movq	-8(%rbp), %rax
	cmpl	$6, 52(%rax)
	je	.LBB17_11
# BB#10:                                # %lor.lhs.false.33
	cmpl	$0, -12(%rbp)
	je	.LBB17_12
.LBB17_11:                              # %if.then.35
	movl	$6, %esi
	movsd	.LCPI17_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI17_3, %xmm1        # xmm1 = mem[0],zero
	xorl	%eax, %eax
	movl	$64, %ecx
	movl	%ecx, %edx
	leaq	-208(%rbp), %rdi
	leaq	-144(%rbp), %r8
	movq	%rdi, -552(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	%esi, -556(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movq	%rdx, -568(%rbp)        # 8-byte Spill
	movl	%eax, -572(%rbp)        # 4-byte Spill
	movsd	%xmm0, -584(%rbp)       # 8-byte Spill
	movsd	%xmm1, -592(%rbp)       # 8-byte Spill
	callq	memset
	movsd	-592(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)
	movsd	-584(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -120(%rbp)
	movsd	%xmm1, -112(%rbp)
	movsd	%xmm1, -104(%rbp)
	movq	-552(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, %rdi
	movl	-572(%rbp), %esi        # 4-byte Reload
	movq	-568(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movsd	-592(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)
	movsd	-584(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -184(%rbp)
	movsd	%xmm1, -176(%rbp)
	movsd	%xmm1, -168(%rbp)
	movq	-8(%rbp), %rdi
	movl	-556(%rbp), %esi        # 4-byte Reload
	callq	parse_path_default_xy
	leaq	-144(%rbp), %rsi
	leaq	-208(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movsd	64(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)
	movq	-8(%rbp), %rdi
	movsd	72(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)
	movq	-8(%rbp), %rdi
	movsd	80(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 32(%rdi)
	movsd	%xmm0, -208(%rbp)
	movq	-8(%rbp), %rdi
	movsd	88(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 40(%rdi)
	movsd	%xmm0, -200(%rbp)
	movq	-8(%rbp), %rdi
	movsd	96(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	movsd	%xmm0, -80(%rbp)
	movq	-8(%rbp), %rdi
	movsd	104(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 24(%rdi)
	movsd	%xmm0, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	gimp_bezier_stroke_cubicto
	movq	-8(%rbp), %rcx
	movl	$0, 52(%rcx)
.LBB17_12:                              # %if.end.60
	jmp	.LBB17_42
.LBB17_13:                              # %sw.bb.61
	movq	-8(%rbp), %rax
	cmpl	$4, 52(%rax)
	je	.LBB17_15
# BB#14:                                # %lor.lhs.false.65
	cmpl	$0, -12(%rbp)
	je	.LBB17_16
.LBB17_15:                              # %if.then.67
	movl	$4, %esi
	movsd	.LCPI17_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI17_3, %xmm1        # xmm1 = mem[0],zero
	xorl	%eax, %eax
	movl	$64, %ecx
	movl	%ecx, %edx
	leaq	-336(%rbp), %rdi
	leaq	-272(%rbp), %r8
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	%esi, -604(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movq	%rdx, -616(%rbp)        # 8-byte Spill
	movl	%eax, -620(%rbp)        # 4-byte Spill
	movsd	%xmm0, -632(%rbp)       # 8-byte Spill
	movsd	%xmm1, -640(%rbp)       # 8-byte Spill
	callq	memset
	movsd	-640(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)
	movsd	-632(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -248(%rbp)
	movsd	%xmm1, -240(%rbp)
	movsd	%xmm1, -232(%rbp)
	movq	-600(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, %rdi
	movl	-620(%rbp), %esi        # 4-byte Reload
	movq	-616(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movsd	-640(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -320(%rbp)
	movsd	-632(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -312(%rbp)
	movsd	%xmm1, -304(%rbp)
	movsd	%xmm1, -296(%rbp)
	movq	-8(%rbp), %rdi
	movl	-604(%rbp), %esi        # 4-byte Reload
	callq	parse_path_default_xy
	leaq	-272(%rbp), %rsi
	leaq	-336(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movsd	.LCPI17_4, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movaps	%xmm0, %xmm1
	mulsd	16(%rdi), %xmm1
	movq	-8(%rbp), %rdi
	subsd	32(%rdi), %xmm1
	movsd	%xmm1, -272(%rbp)
	movq	-8(%rbp), %rdi
	mulsd	24(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	subsd	40(%rdi), %xmm0
	movsd	%xmm0, -264(%rbp)
	movq	-8(%rbp), %rdi
	movsd	64(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 32(%rdi)
	movsd	%xmm0, -336(%rbp)
	movq	-8(%rbp), %rdi
	movsd	72(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 40(%rdi)
	movsd	%xmm0, -328(%rbp)
	movq	-8(%rbp), %rdi
	movsd	80(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	movsd	%xmm0, -80(%rbp)
	movq	-8(%rbp), %rdi
	movsd	88(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 24(%rdi)
	movsd	%xmm0, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	gimp_bezier_stroke_cubicto
	movq	-8(%rbp), %rcx
	movl	$0, 52(%rcx)
.LBB17_16:                              # %if.end.96
	jmp	.LBB17_42
.LBB17_17:                              # %sw.bb.97
	movq	-8(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB17_19
# BB#18:                                # %if.then.101
	leaq	-80(%rbp), %rsi
	movq	-8(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movsd	%xmm0, -80(%rbp)
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_bezier_stroke_lineto
	movq	-8(%rbp), %rax
	movl	$0, 52(%rax)
.LBB17_19:                              # %if.end.111
	jmp	.LBB17_42
.LBB17_20:                              # %sw.bb.112
	movq	-8(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB17_22
# BB#21:                                # %if.then.116
	leaq	-80(%rbp), %rsi
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movq	-8(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 40(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movsd	%xmm0, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_bezier_stroke_lineto
	movq	-8(%rbp), %rax
	movl	$0, 52(%rax)
.LBB17_22:                              # %if.end.126
	jmp	.LBB17_42
.LBB17_23:                              # %sw.bb.127
	movq	-8(%rbp), %rax
	cmpl	$4, 52(%rax)
	je	.LBB17_25
# BB#24:                                # %lor.lhs.false.131
	cmpl	$0, -12(%rbp)
	je	.LBB17_26
.LBB17_25:                              # %if.then.133
	movl	$4, %esi
	movsd	.LCPI17_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI17_3, %xmm1        # xmm1 = mem[0],zero
	xorl	%eax, %eax
	movl	$64, %ecx
	movl	%ecx, %edx
	leaq	-400(%rbp), %rdi
	movl	%esi, -644(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movsd	%xmm1, -656(%rbp)       # 8-byte Spill
	movsd	%xmm0, -664(%rbp)       # 8-byte Spill
	callq	memset
	movsd	-656(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -384(%rbp)
	movsd	-664(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -376(%rbp)
	movsd	%xmm1, -368(%rbp)
	movsd	%xmm1, -360(%rbp)
	movq	-8(%rbp), %rdi
	movl	-644(%rbp), %esi        # 4-byte Reload
	callq	parse_path_default_xy
	leaq	-400(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movsd	64(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 32(%rdi)
	movsd	%xmm0, -400(%rbp)
	movq	-8(%rbp), %rdi
	movsd	72(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 40(%rdi)
	movsd	%xmm0, -392(%rbp)
	movq	-8(%rbp), %rdi
	movsd	80(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	movsd	%xmm0, -80(%rbp)
	movq	-8(%rbp), %rdi
	movsd	88(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 24(%rdi)
	movsd	%xmm0, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	gimp_bezier_stroke_conicto
	movq	-8(%rbp), %rdx
	movl	$0, 52(%rdx)
.LBB17_26:                              # %if.end.152
	jmp	.LBB17_42
.LBB17_27:                              # %sw.bb.153
	movq	-8(%rbp), %rax
	cmpl	$2, 52(%rax)
	je	.LBB17_29
# BB#28:                                # %lor.lhs.false.157
	cmpl	$0, -12(%rbp)
	je	.LBB17_30
.LBB17_29:                              # %if.then.159
	movl	$2, %esi
	movsd	.LCPI17_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI17_3, %xmm1        # xmm1 = mem[0],zero
	xorl	%eax, %eax
	movl	$64, %ecx
	movl	%ecx, %edx
	leaq	-464(%rbp), %rdi
	movl	%esi, -668(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movsd	%xmm1, -680(%rbp)       # 8-byte Spill
	movsd	%xmm0, -688(%rbp)       # 8-byte Spill
	callq	memset
	movsd	-680(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -448(%rbp)
	movsd	-688(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -440(%rbp)
	movsd	%xmm1, -432(%rbp)
	movsd	%xmm1, -424(%rbp)
	movq	-8(%rbp), %rdi
	movl	-668(%rbp), %esi        # 4-byte Reload
	callq	parse_path_default_xy
	leaq	-464(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movsd	.LCPI17_4, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movaps	%xmm0, %xmm1
	mulsd	16(%rdi), %xmm1
	movq	-8(%rbp), %rdi
	subsd	32(%rdi), %xmm1
	movq	-8(%rbp), %rdi
	movsd	%xmm1, 32(%rdi)
	movsd	%xmm1, -464(%rbp)
	movq	-8(%rbp), %rdi
	mulsd	24(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	subsd	40(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 40(%rdi)
	movsd	%xmm0, -456(%rbp)
	movq	-8(%rbp), %rdi
	movsd	64(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	movsd	%xmm0, -80(%rbp)
	movq	-8(%rbp), %rdi
	movsd	72(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 24(%rdi)
	movsd	%xmm0, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	gimp_bezier_stroke_conicto
	movq	-8(%rbp), %rdx
	movl	$0, 52(%rdx)
	jmp	.LBB17_36
.LBB17_30:                              # %if.else
	cmpl	$0, -12(%rbp)
	je	.LBB17_35
# BB#31:                                # %if.then.184
	movq	-8(%rbp), %rax
	cmpl	$2, 52(%rax)
	jle	.LBB17_33
# BB#32:                                # %if.then.188
	movl	$4, %esi
	movsd	.LCPI17_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI17_3, %xmm1        # xmm1 = mem[0],zero
	xorl	%eax, %eax
	movl	$64, %ecx
	movl	%ecx, %edx
	leaq	-528(%rbp), %rdi
	movl	%esi, -692(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movsd	%xmm1, -704(%rbp)       # 8-byte Spill
	movsd	%xmm0, -712(%rbp)       # 8-byte Spill
	callq	memset
	movsd	-704(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -512(%rbp)
	movsd	-712(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -504(%rbp)
	movsd	%xmm1, -496(%rbp)
	movsd	%xmm1, -488(%rbp)
	movq	-8(%rbp), %rdi
	movl	-692(%rbp), %esi        # 4-byte Reload
	callq	parse_path_default_xy
	leaq	-528(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movsd	64(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 32(%rdi)
	movsd	%xmm0, -528(%rbp)
	movq	-8(%rbp), %rdi
	movsd	72(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 40(%rdi)
	movsd	%xmm0, -520(%rbp)
	movq	-8(%rbp), %rdi
	movsd	80(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	movsd	%xmm0, -80(%rbp)
	movq	-8(%rbp), %rdi
	movsd	88(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 24(%rdi)
	movsd	%xmm0, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	gimp_bezier_stroke_conicto
	jmp	.LBB17_34
.LBB17_33:                              # %if.else.207
	movl	$2, %esi
	movq	-8(%rbp), %rdi
	callq	parse_path_default_xy
	leaq	-80(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movsd	64(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 32(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	movsd	%xmm0, -80(%rbp)
	movq	-8(%rbp), %rdi
	movsd	72(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 40(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 24(%rdi)
	movsd	%xmm0, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	gimp_bezier_stroke_lineto
.LBB17_34:                              # %if.end.219
	movq	-8(%rbp), %rax
	movl	$0, 52(%rax)
.LBB17_35:                              # %if.end.221
	jmp	.LBB17_36
.LBB17_36:                              # %if.end.222
	jmp	.LBB17_42
.LBB17_37:                              # %sw.bb.223
	movq	-8(%rbp), %rax
	cmpl	$7, 52(%rax)
	je	.LBB17_39
# BB#38:                                # %lor.lhs.false.227
	cmpl	$0, -12(%rbp)
	je	.LBB17_40
.LBB17_39:                              # %if.then.229
	leaq	-80(%rbp), %rcx
	movsd	.LCPI17_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI17_1, %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	104(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm2, 32(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm2, 16(%rax)
	movsd	%xmm2, -80(%rbp)
	movq	-8(%rbp), %rax
	movsd	112(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm2, 40(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm2, 24(%rax)
	movsd	%xmm2, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movsd	64(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	72(%rax), %xmm3         # xmm3 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	80(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	cvttsd2si	88(%rax), %esi
	movq	-8(%rbp), %rax
	cvttsd2si	96(%rax), %edx
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -720(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-720(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_bezier_stroke_arcto
	movq	-8(%rbp), %rax
	movl	$0, 52(%rax)
.LBB17_40:                              # %if.end.255
	jmp	.LBB17_42
.LBB17_41:                              # %sw.default
	movq	-8(%rbp), %rax
	movl	$0, 52(%rax)
.LBB17_42:                              # %sw.epilog
	addq	$720, %rsp              # imm = 0x2D0
	popq	%rbp
	retq
.Lfunc_end17:
	.size	parse_path_do_cmd, .Lfunc_end17-parse_path_do_cmd
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI17_0:
	.quad	.LBB17_37
	.quad	.LBB17_41
	.quad	.LBB17_9
	.quad	.LBB17_41
	.quad	.LBB17_41
	.quad	.LBB17_41
	.quad	.LBB17_41
	.quad	.LBB17_17
	.quad	.LBB17_41
	.quad	.LBB17_41
	.quad	.LBB17_41
	.quad	.LBB17_5
	.quad	.LBB17_1
	.quad	.LBB17_41
	.quad	.LBB17_41
	.quad	.LBB17_41
	.quad	.LBB17_23
	.quad	.LBB17_41
	.quad	.LBB17_13
	.quad	.LBB17_27
	.quad	.LBB17_41
	.quad	.LBB17_20

	.text
	.align	16, 0x90
	.type	parse_path_default_xy,@function
parse_path_default_xy:                  # @parse_path_default_xy
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 56(%rdi)
	je	.LBB18_14
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	52(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB18_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB18_13
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB18_2 Depth=1
	cmpl	$2, -16(%rbp)
	jle	.LBB18_5
# BB#4:                                 # %if.then.2
                                        #   in Loop: Header=BB18_2 Depth=1
	movl	-16(%rbp), %eax
	subl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movsd	64(%rdx,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	movslq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 64(%rdx,%rcx,8)
	jmp	.LBB18_11
.LBB18_5:                               # %if.else
                                        #   in Loop: Header=BB18_2 Depth=1
	cmpl	$1, -16(%rbp)
	jne	.LBB18_7
# BB#6:                                 # %if.then.7
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 64(%rcx,%rax,8)
	jmp	.LBB18_10
.LBB18_7:                               # %if.else.11
                                        #   in Loop: Header=BB18_2 Depth=1
	cmpl	$0, -16(%rbp)
	jne	.LBB18_9
# BB#8:                                 # %if.then.13
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 64(%rcx,%rax,8)
.LBB18_9:                               # %if.end
                                        #   in Loop: Header=BB18_2 Depth=1
	jmp	.LBB18_10
.LBB18_10:                              # %if.end.17
                                        #   in Loop: Header=BB18_2 Depth=1
	jmp	.LBB18_11
.LBB18_11:                              # %if.end.18
                                        #   in Loop: Header=BB18_2 Depth=1
	jmp	.LBB18_12
.LBB18_12:                              # %for.inc
                                        #   in Loop: Header=BB18_2 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB18_2
.LBB18_13:                              # %for.end
	jmp	.LBB18_19
.LBB18_14:                              # %if.else.19
	movq	-8(%rbp), %rax
	movl	52(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB18_15:                              # %for.cond.21
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB18_18
# BB#16:                                # %for.body.23
                                        #   in Loop: Header=BB18_15 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 64(%rcx,%rax,8)
# BB#17:                                # %for.inc.27
                                        #   in Loop: Header=BB18_15 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB18_15
.LBB18_18:                              # %for.end.29
	jmp	.LBB18_19
.LBB18_19:                              # %if.end.30
	popq	%rbp
	retq
.Lfunc_end18:
	.size	parse_path_default_xy, .Lfunc_end18-parse_path_default_xy
	.cfi_endproc

	.align	16, 0x90
	.type	g_string_append_c_inline,@function
g_string_append_c_inline:               # @g_string_append_c_inline
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
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	addq	$1, %rdi
	movq	-8(%rbp), %rcx
	cmpq	16(%rcx), %rdi
	jae	.LBB19_2
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
	jmp	.LBB19_3
.LBB19_2:                               # %if.else
	movq	$-1, %rsi
	movq	-8(%rbp), %rdi
	movsbl	-9(%rbp), %edx
	callq	g_string_insert_c
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB19_3:                               # %if.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	g_string_append_c_inline, .Lfunc_end19-g_string_append_c_inline
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Vectors"
	.size	.L.str, 13

	.type	.L__func__.gimp_vectors_import_file,@object # @__func__.gimp_vectors_import_file
.L__func__.gimp_vectors_import_file:
	.asciz	"gimp_vectors_import_file"
	.size	.L__func__.gimp_vectors_import_file, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"filename != NULL"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"parent == NULL || parent == GIMP_IMAGE_ACTIVE_PARENT || GIMP_IS_VECTORS (parent)"
	.size	.L.str.3, 81

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"parent == NULL || parent == GIMP_IMAGE_ACTIVE_PARENT || gimp_item_is_attached (GIMP_ITEM (parent))"
	.size	.L.str.4, 99

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"parent == NULL || parent == GIMP_IMAGE_ACTIVE_PARENT || gimp_item_get_image (GIMP_ITEM (parent)) == image"
	.size	.L.str.5, 106

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"parent == NULL || parent == GIMP_IMAGE_ACTIVE_PARENT || gimp_viewable_get_children (GIMP_VIEWABLE (parent))"
	.size	.L.str.6, 108

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"ret_vectors == NULL || *ret_vectors == NULL"
	.size	.L.str.7, 44

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.8, 32

	.type	.L__func__.gimp_vectors_import_buffer,@object # @__func__.gimp_vectors_import_buffer
.L__func__.gimp_vectors_import_buffer:
	.asciz	"gimp_vectors_import_buffer"
	.size	.L__func__.gimp_vectors_import_buffer, 27

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"buffer != NULL || len == 0"
	.size	.L.str.9, 27

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"image"
	.size	.L.str.10, 6

	.type	markup_parser,@object   # @markup_parser
	.section	.rodata,"a",@progbits
	.align	8
markup_parser:
	.quad	svg_parser_start_element
	.quad	svg_parser_end_element
	.quad	0
	.quad	0
	.quad	0
	.size	markup_parser, 40

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"Import Paths"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Imported Path"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"No paths found in '%s'"
	.size	.L.str.13, 23

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"No paths found in the buffer"
	.size	.L.str.14, 29

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Failed to import paths from '%s': %s"
	.size	.L.str.15, 37

	.type	svg_handlers,@object    # @svg_handlers
	.section	.rodata,"a",@progbits
	.align	16
svg_handlers:
	.quad	.L.str.16
	.quad	svg_handler_svg_start
	.quad	svg_handler_svg_end
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.17
	.quad	svg_handler_group_start
	.quad	0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.18
	.quad	svg_handler_path_start
	.quad	0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.19
	.quad	svg_handler_rect_start
	.quad	0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.20
	.quad	svg_handler_ellipse_start
	.quad	0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.21
	.quad	svg_handler_ellipse_start
	.quad	0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.22
	.quad	svg_handler_line_start
	.quad	0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.23
	.quad	svg_handler_poly_start
	.quad	0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.24
	.quad	svg_handler_poly_start
	.quad	0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0
	.quad	0
	.quad	0
	.size	svg_handlers, 576

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"svg"
	.size	.L.str.16, 4

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"g"
	.size	.L.str.17, 2

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"path"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"rect"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"circle"
	.size	.L.str.20, 7

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"ellipse"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"line"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"polyline"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"polygon"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"x"
	.size	.L.str.25, 2

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"y"
	.size	.L.str.26, 2

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"width"
	.size	.L.str.27, 6

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"height"
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"viewBox"
	.size	.L.str.29, 8

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	", \t"
	.size	.L.str.30, 4

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"SVG import: cannot parse viewBox attribute\n"
	.size	.L.str.31, 44

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"transform"
	.size	.L.str.32, 10

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"matrix"
	.size	.L.str.33, 7

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"translate"
	.size	.L.str.34, 10

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"scale"
	.size	.L.str.35, 6

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"rotate"
	.size	.L.str.36, 7

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"skewX"
	.size	.L.str.37, 6

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"skewY"
	.size	.L.str.38, 6

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"id"
	.size	.L.str.39, 3

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"d"
	.size	.L.str.40, 2

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"rx"
	.size	.L.str.41, 3

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"ry"
	.size	.L.str.42, 3

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"cx"
	.size	.L.str.43, 3

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"cy"
	.size	.L.str.44, 3

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"r"
	.size	.L.str.45, 2

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"x1"
	.size	.L.str.46, 3

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"x2"
	.size	.L.str.47, 3

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"y1"
	.size	.L.str.48, 3

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"y2"
	.size	.L.str.49, 3

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"points"
	.size	.L.str.50, 7

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"M "
	.size	.L.str.51, 3

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"L "
	.size	.L.str.52, 3

	.type	.L__func__.svg_parser_end_element,@object # @__func__.svg_parser_end_element
.L__func__.svg_parser_end_element:
	.asciz	"svg_parser_end_element"
	.size	.L__func__.svg_parser_end_element, 23

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"handler != NULL && (handler->name == NULL || strcmp (handler->name, element_name) == 0)"
	.size	.L.str.53, 88


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
