	.text
	.file	"gimpfontlist.bc"
	.globl	gimp_font_list_get_type
	.align	16, 0x90
	.type	gimp_font_list_get_type,@function
gimp_font_list_get_type:                # @gimp_font_list_get_type
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
	movq	gimp_font_list_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_font_list_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_list_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$248, %edx
	movabsq	$gimp_font_list_class_intern_init, %rdi
	movl	$88, %r8d
	movabsq	$gimp_font_list_init, %rcx
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
	movabsq	$gimp_font_list_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_font_list_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_font_list_get_type, .Lfunc_end0-gimp_font_list_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_font_list_class_intern_init,@function
gimp_font_list_class_intern_init:       # @gimp_font_list_class_intern_init
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
	movq	%rax, gimp_font_list_parent_class
	cmpl	$0, GimpFontList_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpFontList_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_font_list_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_font_list_class_intern_init, .Lfunc_end1-gimp_font_list_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_font_list_init,@function
gimp_font_list_init:                    # @gimp_font_list_init
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
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_font_list_init, .Lfunc_end2-gimp_font_list_init
	.cfi_endproc

	.globl	gimp_font_list_new
	.align	16, 0x90
	.type	gimp_font_list_new,@function
gimp_font_list_new:                     # @gimp_font_list_new
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
	subq	$48, %rsp
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
# BB#1:                                 # %do.body
	xorps	%xmm0, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_font_list_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_11
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.1
	xorps	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_8
# BB#7:                                 # %if.then.3
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.4
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_font_list_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_11
.LBB3_9:                                # %if.end.5
	jmp	.LBB3_10
.LBB3_10:                               # %do.end.6
	callq	gimp_font_list_get_type
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_font_get_type
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rcx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -32(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 72(%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 80(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB3_11:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_font_list_new, .Lfunc_end3-gimp_font_list_new
	.cfi_endproc

	.globl	gimp_font_list_restore
	.align	16, 0x90
	.type	gimp_font_list_restore,@function
gimp_font_list_restore:                 # @gimp_font_list_restore
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_font_list_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_font_list_restore, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_15
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movl	$1, %edi
	callq	pango_cairo_font_map_new_for_font_type
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB4_14
# BB#13:                                # %if.then.13
	movabsq	$.L.str.7, %rdi
	movb	$0, %al
	callq	g_error
.LBB4_14:                               # %if.end.14
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	pango_cairo_font_map_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movsd	80(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	pango_cairo_font_map_set_resolution
	movq	-16(%rbp), %rdi
	callq	pango_font_map_create_context
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_freeze
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	pango_font_map_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_font_list_load_names
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_list_sort_by_name
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_thaw
.LBB4_15:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_font_list_restore, .Lfunc_end4-gimp_font_list_restore
	.cfi_endproc

	.align	16, 0x90
	.type	g_error,@function
g_error:                                # @g_error
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
	subq	$400, %rsp              # imm = 0x190
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
	je	.LBB5_3
# BB#2:                                 # %entry
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
.LBB5_3:                                # %entry
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
	movabsq	$.L.str.1, %rdi
	movl	$4, %esi
	leaq	-32(%rbp), %r9
	movq	%r8, -8(%rbp)
	movq	%r9, %r8
	leaq	-208(%rbp), %r10
	movq	%r10, 16(%r8)
	leaq	16(%rbp), %r10
	movq	%r10, 8(%r8)
	movl	$48, 4(%r8)
	movl	$8, (%r8)
	movq	-8(%rbp), %rdx
	movq	%r9, %rcx
	callq	g_logv
	leaq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB5_1
.Lfunc_end5:
	.size	g_error, .Lfunc_end5-g_error
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_font_list_load_names,@function
gimp_font_list_load_names:              # @gimp_font_list_load_names
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
	pushq	%rbx
	subq	$72, %rsp
.Ltmp21:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.8, %rax
	movabsq	$.L.str.9, %rcx
	movabsq	$.L.str.10, %r8
	movabsq	$.L.str.11, %r9
	movabsq	$.L.str.12, %r10
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%r8, %rdx
	movq	%r9, %rcx
	movq	%r10, %r8
	movq	%rbx, %r9
	movb	$0, %al
	callq	FcObjectSetBuild
	movq	%rax, -40(%rbp)
	callq	FcPatternCreate
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	FcFontList
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	FcPatternDestroy
	movq	-40(%rbp), %rdi
	callq	FcObjectSetDestroy
	movl	$0, -60(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB6_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	xorl	%esi, %esi
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	pango_fc_font_description_from_pattern
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	gimp_font_list_add_font
	movq	-72(%rbp), %rdi
	callq	pango_font_description_free
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB6_1
.LBB6_4:                                # %for.end
	movq	-56(%rbp), %rax
	cmpl	$0, (%rax)
	jle	.LBB6_6
# BB#5:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_font_list_load_aliases
.LBB6_6:                                # %if.end
	movq	-56(%rbp), %rdi
	callq	FcFontSetDestroy
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_font_list_load_names, .Lfunc_end6-gimp_font_list_load_names
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_font_list_class_init,@function
gimp_font_list_class_init:              # @gimp_font_list_class_init
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_font_list_class_init, .Lfunc_end7-gimp_font_list_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_font_list_add_font,@function
gimp_font_list_add_font:                # @gimp_font_list_add_font
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	jmp	.LBB8_5
.LBB8_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	pango_font_description_to_string
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_utf8_validate
	cmpl	$0, %eax
	je	.LBB8_4
# BB#3:                                 # %if.then.3
	callq	gimp_font_get_type
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.14, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %r8
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_add
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	g_object_unref
.LBB8_4:                                # %if.end.11
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB8_5:                                # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_font_list_add_font, .Lfunc_end8-gimp_font_list_add_font
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_font_list_load_aliases,@function
gimp_font_list_load_aliases:            # @gimp_font_list_load_aliases
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
	movq	.Lgimp_font_list_load_aliases.families, %rsi
	movq	%rsi, -48(%rbp)
	movq	.Lgimp_font_list_load_aliases.families+8, %rsi
	movq	%rsi, -40(%rbp)
	movq	.Lgimp_font_list_load_aliases.families+16, %rsi
	movq	%rsi, -32(%rbp)
	movl	$0, -52(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -52(%rbp)
	jge	.LBB9_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movslq	-52(%rbp), %rcx
	movq	-48(%rbp,%rcx,8), %rdx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_font_list_make_alias
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movslq	-52(%rbp), %rdx
	movq	-48(%rbp,%rdx,8), %rdx
	callq	gimp_font_list_make_alias
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movslq	-52(%rbp), %rdx
	movq	-48(%rbp,%rdx,8), %rdx
	callq	gimp_font_list_make_alias
	movl	$1, %eax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movslq	-52(%rbp), %rdx
	movq	-48(%rbp,%rdx,8), %rdx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_font_list_make_alias
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB9_1
.LBB9_4:                                # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_font_list_load_aliases, .Lfunc_end9-gimp_font_list_load_aliases
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_font_list_make_alias,@function
gimp_font_list_make_alias:              # @gimp_font_list_make_alias
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	callq	pango_font_description_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	pango_font_description_set_family
	xorl	%ecx, %ecx
	movl	$2, %r8d
	movq	-40(%rbp), %rdi
	cmpl	$0, -32(%rbp)
	cmovnel	%r8d, %ecx
	movl	%ecx, %esi
	callq	pango_font_description_set_style
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	callq	pango_font_description_set_variant
	movl	$400, %ecx              # imm = 0x190
	movl	$700, %esi              # imm = 0x2BC
	movq	-40(%rbp), %rdi
	cmpl	$0, -28(%rbp)
	cmovnel	%esi, %ecx
	movl	%ecx, %esi
	callq	pango_font_description_set_weight
	movl	$4, %esi
	movq	-40(%rbp), %rdi
	callq	pango_font_description_set_stretch
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_font_list_add_font
	movq	-40(%rbp), %rdi
	callq	pango_font_description_free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_font_list_make_alias, .Lfunc_end10-gimp_font_list_make_alias
	.cfi_endproc

	.type	gimp_font_list_get_type.g_define_type_id__volatile,@object # @gimp_font_list_get_type.g_define_type_id__volatile
	.local	gimp_font_list_get_type.g_define_type_id__volatile
	.comm	gimp_font_list_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpFontList"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Text"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_font_list_new,@object # @__func__.gimp_font_list_new
.L__func__.gimp_font_list_new:
	.asciz	"gimp_font_list_new"
	.size	.L__func__.gimp_font_list_new, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"xresolution > 0.0"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"yresolution > 0.0"
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"children-type"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"policy"
	.size	.L.str.5, 7

	.type	.L__func__.gimp_font_list_restore,@object # @__func__.gimp_font_list_restore
.L__func__.gimp_font_list_restore:
	.asciz	"gimp_font_list_restore"
	.size	.L__func__.gimp_font_list_restore, 23

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_FONT_LIST (list)"
	.size	.L.str.6, 25

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"You are using a Pango that has been built against a cairo that lacks the Freetype font backend"
	.size	.L.str.7, 95

	.type	gimp_font_list_parent_class,@object # @gimp_font_list_parent_class
	.local	gimp_font_list_parent_class
	.comm	gimp_font_list_parent_class,8,8
	.type	GimpFontList_private_offset,@object # @GimpFontList_private_offset
	.local	GimpFontList_private_offset
	.comm	GimpFontList_private_offset,4,4
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"family"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"style"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"slant"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"weight"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"width"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"name"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"pango-context"
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Sans"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Serif"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Monospace"
	.size	.L.str.17, 10

	.type	.Lgimp_font_list_load_aliases.families,@object # @gimp_font_list_load_aliases.families
	.section	.rodata,"a",@progbits
	.align	16
.Lgimp_font_list_load_aliases.families:
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.size	.Lgimp_font_list_load_aliases.families, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
