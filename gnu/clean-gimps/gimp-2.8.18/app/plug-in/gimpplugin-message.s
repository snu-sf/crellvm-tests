	.text
	.file	"gimpplugin-message.bc"
	.globl	gimp_plug_in_handle_message
	.align	16, 0x90
	.type	gimp_plug_in_handle_message,@function
gimp_plug_in_handle_message:            # @gimp_plug_in_handle_message
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_plug_in_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_handle_message, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_36
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	movb	52(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$1, %edx
	jne	.LBB0_15
# BB#14:                                # %if.then.13
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_handle_message, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_36
.LBB0_16:                               # %if.end.15
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.16
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.17
	cmpq	$0, -16(%rbp)
	je	.LBB0_20
# BB#19:                                # %if.then.19
	jmp	.LBB0_21
.LBB0_20:                               # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_handle_message, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_36
.LBB0_21:                               # %if.end.21
	jmp	.LBB0_22
.LBB0_22:                               # %do.end.22
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$12, %rdx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	ja	.LBB0_36
# BB#37:                                # %do.end.22
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_23:                               # %sw.bb
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_handle_quit
	jmp	.LBB0_36
.LBB0_24:                               # %sw.bb.23
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movabsq	$.L.str.4, %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	gimp_message
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_close
	jmp	.LBB0_36
.LBB0_25:                               # %sw.bb.26
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_plug_in_handle_tile_request
	jmp	.LBB0_36
.LBB0_26:                               # %sw.bb.27
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movabsq	$.L.str.5, %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	gimp_message
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_close
	jmp	.LBB0_36
.LBB0_27:                               # %sw.bb.33
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movabsq	$.L.str.6, %rcx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	gimp_message
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_close
	jmp	.LBB0_36
.LBB0_28:                               # %sw.bb.39
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_plug_in_handle_proc_run
	jmp	.LBB0_36
.LBB0_29:                               # %sw.bb.41
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_plug_in_handle_proc_return
	jmp	.LBB0_36
.LBB0_30:                               # %sw.bb.43
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movabsq	$.L.str.7, %rcx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	gimp_message
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_close
	jmp	.LBB0_36
.LBB0_31:                               # %sw.bb.49
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_plug_in_handle_temp_proc_return
	jmp	.LBB0_36
.LBB0_32:                               # %sw.bb.51
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_plug_in_handle_proc_install
	jmp	.LBB0_36
.LBB0_33:                               # %sw.bb.53
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_plug_in_handle_proc_uninstall
	jmp	.LBB0_36
.LBB0_34:                               # %sw.bb.55
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_handle_extension_ack
	jmp	.LBB0_36
.LBB0_35:                               # %sw.bb.56
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_handle_has_init
.LBB0_36:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_plug_in_handle_message, .Lfunc_end0-gimp_plug_in_handle_message
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_23
	.quad	.LBB0_24
	.quad	.LBB0_25
	.quad	.LBB0_26
	.quad	.LBB0_27
	.quad	.LBB0_28
	.quad	.LBB0_29
	.quad	.LBB0_30
	.quad	.LBB0_31
	.quad	.LBB0_32
	.quad	.LBB0_33
	.quad	.LBB0_34
	.quad	.LBB0_35

	.text
	.align	16, 0x90
	.type	gimp_plug_in_handle_quit,@function
gimp_plug_in_handle_quit:               # @gimp_plug_in_handle_quit
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
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_close
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_plug_in_handle_quit, .Lfunc_end1-gimp_plug_in_handle_quit
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_handle_tile_request,@function
gimp_plug_in_handle_tile_request:       # @gimp_plug_in_handle_tile_request
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
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_handle_tile_request, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_8
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	movq	-16(%rbp), %rax
	cmpl	$-1, (%rax)
	jne	.LBB2_7
# BB#6:                                 # %if.then.2
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_plug_in_handle_tile_put
	jmp	.LBB2_8
.LBB2_7:                                # %if.else.3
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_plug_in_handle_tile_get
.LBB2_8:                                # %if.end.4
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_plug_in_handle_tile_request, .Lfunc_end2-gimp_plug_in_handle_tile_request
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_handle_proc_run,@function
gimp_plug_in_handle_proc_run:           # @gimp_plug_in_handle_proc_run
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_handle_proc_run, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_42
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.1
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_8
# BB#7:                                 # %if.then.3
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_handle_proc_run, %rsi
	movabsq	$.L.str.20, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_42
.LBB3_9:                                # %if.end.5
	jmp	.LBB3_10
.LBB3_10:                               # %do.end.6
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_canonicalize_identifier
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_get_proc_frame
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	520(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_lookup_procedure
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB3_16
# BB#11:                                # %if.then.10
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	520(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_lookup_compat_proc_name
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB3_15
# BB#12:                                # %if.then.16
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	520(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_pdb_lookup_procedure
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	cmpl	$2, 92(%rax)
	jne	.LBB3_14
# BB#13:                                # %if.then.24
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movabsq	$.L.str.21, %rcx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %r8
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r8, -128(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%rax, %r9
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	gimp_message
.LBB3_14:                               # %if.end.29
	jmp	.LBB3_15
.LBB3_15:                               # %if.end.30
	jmp	.LBB3_24
.LBB3_16:                               # %if.else.31
	movq	-48(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB3_23
# BB#17:                                # %if.then.33
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	cmpl	$2, 92(%rax)
	jne	.LBB3_22
# BB#18:                                # %if.then.38
	movq	-48(%rbp), %rax
	movq	88(%rax), %rdi
	movl	$.L.str.22, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_20
# BB#19:                                # %if.then.42
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movabsq	$.L.str.23, %rcx
	movq	-32(%rbp), %rdi
	movq	-136(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-144(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	gimp_message
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.48
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movabsq	$.L.str.24, %rcx
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %r8
	movq	88(%r8), %r8
	movq	-160(%rbp), %r9         # 8-byte Reload
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	-168(%rbp), %r10        # 8-byte Reload
	movq	%r8, -184(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%rax, %r9
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	gimp_message
.LBB3_21:                               # %if.end.55
	jmp	.LBB3_22
.LBB3_22:                               # %if.end.56
	jmp	.LBB3_23
.LBB3_23:                               # %if.end.57
	jmp	.LBB3_24
.LBB3_24:                               # %if.end.58
	cmpq	$0, -40(%rbp)
	jne	.LBB3_26
# BB#25:                                # %if.then.60
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB3_26:                               # %if.end.61
	cmpq	$0, -48(%rbp)
	je	.LBB3_28
# BB#27:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB3_29
.LBB3_28:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB3_29
.LBB3_29:                               # %cond.end
	movq	-192(%rbp), %rax        # 8-byte Reload
	cmpq	$0, -48(%rbp)
	movq	%rax, -200(%rbp)        # 8-byte Spill
	je	.LBB3_31
# BB#30:                                # %cond.true.65
	movq	-48(%rbp), %rax
	movl	96(%rax), %ecx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	jmp	.LBB3_32
.LBB3_31:                               # %cond.false.66
	xorl	%eax, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB3_32
.LBB3_32:                               # %cond.end.67
	movl	-204(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	-16(%rbp), %rsi
	movl	8(%rsi), %edi
	movq	-200(%rbp), %rsi        # 8-byte Reload
	movl	%edi, -208(%rbp)        # 4-byte Spill
	movq	%rsi, %rdi
	movl	%eax, %esi
	movl	-208(%rbp), %eax        # 4-byte Reload
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-212(%rbp), %r8d        # 4-byte Reload
	movl	-212(%rbp), %r9d        # 4-byte Reload
	callq	plug_in_params_to_args
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_plug_in_manager_plug_in_push
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	520(%rax), %rdi
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	je	.LBB3_34
# BB#33:                                # %cond.true.75
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB3_35
.LBB3_34:                               # %cond.false.77
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB3_35:                               # %cond.end.78
	movq	-232(%rbp), %rax        # 8-byte Reload
	leaq	-72(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	-40(%rbp), %r8
	movq	-56(%rbp), %r9
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_pdb_execute_procedure_by_name_args
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_plug_in_manager_plug_in_pop
	movq	-56(%rbp), %rdi
	callq	g_value_array_free
	cmpq	$0, -72(%rbp)
	je	.LBB3_37
# BB#36:                                # %if.then.83
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rcx
	callq	gimp_plug_in_handle_proc_error
	movq	-72(%rbp), %rdi
	callq	g_error_free
.LBB3_37:                               # %if.end.84
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	movb	52(%rdi), %al
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	je	.LBB3_41
# BB#38:                                # %if.then.86
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -88(%rbp)
	movq	-64(%rbp), %rdi
	callq	plug_in_args_to_params
	leaq	-96(%rbp), %rsi
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	callq	gp_proc_return_write
	cmpl	$0, %eax
	jne	.LBB3_40
# BB#39:                                # %if.then.94
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movabsq	$.L.str.9, %rcx
	movabsq	$.L__func__.gimp_plug_in_handle_proc_run, %r8
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	32(%rdi), %rdi
	movb	$0, %al
	callq	gimp_message
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_close
.LBB3_40:                               # %if.end.97
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB3_41:                               # %if.end.99
	movq	-64(%rbp), %rdi
	callq	g_value_array_free
.LBB3_42:                               # %return
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_plug_in_handle_proc_run, .Lfunc_end3-gimp_plug_in_handle_proc_run
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_handle_proc_return,@function
gimp_plug_in_handle_proc_return:        # @gimp_plug_in_handle_proc_return
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	addq	$632, %rsi              # imm = 0x278
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_handle_proc_return, %rsi
	movabsq	$.L.str.27, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_9
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	movl	$1, %eax
	movq	-24(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	120(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	24(%rcx), %rcx
	movl	112(%rcx), %esi
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rdx
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %ecx
	movl	%eax, %r8d
	movl	%eax, %r9d
	callq	plug_in_params_to_args
	movq	-24(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB4_7
# BB#6:                                 # %if.then.2
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_main_loop_quit
	jmp	.LBB4_8
.LBB4_7:                                # %if.else.4
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_procedure_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	32(%rsi), %rsi
	movq	-24(%rbp), %rdi
	movq	48(%rdi), %rdx
	movq	-24(%rbp), %rdi
	movq	40(%rdi), %rcx
	movq	%rax, %rdi
	callq	gimp_plug_in_procedure_handle_return_values
.LBB4_8:                                # %if.end.9
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_close
.LBB4_9:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_plug_in_handle_proc_return, .Lfunc_end4-gimp_plug_in_handle_proc_return
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_handle_temp_proc_return,@function
gimp_plug_in_handle_temp_proc_return:   # @gimp_plug_in_handle_temp_proc_return
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_handle_temp_proc_return, %rsi
	movabsq	$.L.str.27, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_8
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 728(%rax)
	je	.LBB5_7
# BB#6:                                 # %if.then.1
	movl	$1, %eax
	movq	-8(%rbp), %rcx
	movq	728(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	120(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	24(%rcx), %rcx
	movl	112(%rcx), %esi
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rdx
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %ecx
	movl	%eax, %r8d
	movl	%eax, %r9d
	callq	plug_in_params_to_args
	movq	-24(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_main_loop_quit
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_proc_frame_pop
	jmp	.LBB5_8
.LBB5_7:                                # %if.else.4
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movabsq	$.L.str.28, %rcx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	gimp_message
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_close
.LBB5_8:                                # %if.end.7
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_plug_in_handle_temp_proc_return, .Lfunc_end5-gimp_plug_in_handle_temp_proc_return
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_handle_proc_install,@function
gimp_plug_in_handle_proc_install:       # @gimp_plug_in_handle_proc_install
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_handle_proc_install, %rsi
	movabsq	$.L.str.29, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_90
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	jmp	.LBB6_6
.LBB6_6:                                # %do.body.1
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_8
# BB#7:                                 # %if.then.3
	jmp	.LBB6_9
.LBB6_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_handle_proc_install, %rsi
	movabsq	$.L.str.30, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_90
.LBB6_9:                                # %if.end.5
	jmp	.LBB6_10
.LBB6_10:                               # %do.end.6
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_canonicalize_identifier
	movq	%rax, -40(%rbp)
	movl	$1, -52(%rbp)
.LBB6_11:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	68(%rcx), %eax
	jae	.LBB6_21
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB6_11 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	80(%rcx), %rax
	cmpl	$5, (%rax)
	je	.LBB6_17
# BB#13:                                # %lor.lhs.false
                                        #   in Loop: Header=BB6_11 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	80(%rcx), %rax
	cmpl	$7, (%rax)
	je	.LBB6_17
# BB#14:                                # %lor.lhs.false.15
                                        #   in Loop: Header=BB6_11 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	80(%rcx), %rax
	cmpl	$8, (%rax)
	je	.LBB6_17
# BB#15:                                # %lor.lhs.false.21
                                        #   in Loop: Header=BB6_11 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	80(%rcx), %rax
	cmpl	$9, (%rax)
	je	.LBB6_17
# BB#16:                                # %lor.lhs.false.27
                                        #   in Loop: Header=BB6_11 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	80(%rcx), %rax
	cmpl	$18, (%rax)
	jne	.LBB6_19
.LBB6_17:                               # %land.lhs.true
                                        #   in Loop: Header=BB6_11 Depth=1
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	80(%rdx), %rcx
	cmpl	$0, (%rcx)
	je	.LBB6_19
# BB#18:                                # %if.then.38
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movabsq	$.L.str.31, %rcx
	movq	-40(%rbp), %rdi
	movl	-52(%rbp), %r8d
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	-96(%rbp), %r10         # 8-byte Reload
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movq	%r10, %r8
	movq	%rax, %r9
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	-108(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movb	$0, %al
	callq	gimp_message
	movq	-40(%rbp), %rdi
	callq	g_free
	jmp	.LBB6_90
.LBB6_19:                               # %if.end.41
                                        #   in Loop: Header=BB6_11 Depth=1
	jmp	.LBB6_20
.LBB6_20:                               # %for.inc
                                        #   in Loop: Header=BB6_11 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB6_11
.LBB6_21:                               # %for.end
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB6_23
# BB#22:                                # %lor.lhs.false.43
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rdi
	callq	g_utf8_validate
	cmpl	$0, %eax
	je	.LBB6_63
.LBB6_23:                               # %land.lhs.true.46
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rdi
	callq	g_utf8_validate
	cmpl	$0, %eax
	je	.LBB6_63
# BB#24:                                # %land.lhs.true.49
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB6_26
# BB#25:                                # %lor.lhs.false.51
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_utf8_validate
	cmpl	$0, %eax
	je	.LBB6_63
.LBB6_26:                               # %land.lhs.true.55
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB6_28
# BB#27:                                # %lor.lhs.false.57
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rdi
	callq	g_utf8_validate
	cmpl	$0, %eax
	je	.LBB6_63
.LBB6_28:                               # %land.lhs.true.61
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB6_30
# BB#29:                                # %lor.lhs.false.63
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rdi
	callq	g_utf8_validate
	cmpl	$0, %eax
	je	.LBB6_63
.LBB6_30:                               # %land.lhs.true.67
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB6_32
# BB#31:                                # %lor.lhs.false.69
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rdi
	callq	g_utf8_validate
	cmpl	$0, %eax
	je	.LBB6_63
.LBB6_32:                               # %land.lhs.true.73
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB6_34
# BB#33:                                # %lor.lhs.false.75
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rdi
	callq	g_utf8_validate
	cmpl	$0, %eax
	je	.LBB6_63
.LBB6_34:                               # %if.then.79
	movl	$0, -44(%rbp)
	movl	$1, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB6_35:                               # %for.cond.80
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rdx
	cmpl	68(%rdx), %eax
	movb	%cl, -109(%rbp)         # 1-byte Spill
	jae	.LBB6_38
# BB#36:                                # %land.lhs.true.83
                                        #   in Loop: Header=BB6_35 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%rbp)
	movb	%cl, -109(%rbp)         # 1-byte Spill
	je	.LBB6_38
# BB#37:                                # %land.rhs
                                        #   in Loop: Header=BB6_35 Depth=1
	cmpl	$0, -44(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -109(%rbp)         # 1-byte Spill
.LBB6_38:                               # %land.end
                                        #   in Loop: Header=BB6_35 Depth=1
	movb	-109(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_39
	jmp	.LBB6_48
.LBB6_39:                               # %for.body.86
                                        #   in Loop: Header=BB6_35 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	80(%rcx), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB6_41
# BB#40:                                # %if.then.92
                                        #   in Loop: Header=BB6_35 Depth=1
	movl	$1, -44(%rbp)
	jmp	.LBB6_46
.LBB6_41:                               # %if.else.93
                                        #   in Loop: Header=BB6_35 Depth=1
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movslq	-52(%rbp), %rcx
	movq	-16(%rbp), %rdi
	imulq	$24, %rcx, %rcx
	addq	80(%rdi), %rcx
	movq	8(%rcx), %rdi
	callq	g_utf8_validate
	cmpl	$0, %eax
	je	.LBB6_44
# BB#42:                                # %land.lhs.true.100
                                        #   in Loop: Header=BB6_35 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	80(%rcx), %rax
	cmpq	$0, 16(%rax)
	je	.LBB6_45
# BB#43:                                # %lor.lhs.false.105
                                        #   in Loop: Header=BB6_35 Depth=1
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movslq	-52(%rbp), %rcx
	movq	-16(%rbp), %rdi
	imulq	$24, %rcx, %rcx
	addq	80(%rdi), %rcx
	movq	16(%rcx), %rdi
	callq	g_utf8_validate
	cmpl	$0, %eax
	jne	.LBB6_45
.LBB6_44:                               # %if.then.112
                                        #   in Loop: Header=BB6_35 Depth=1
	movl	$0, -48(%rbp)
.LBB6_45:                               # %if.end.113
                                        #   in Loop: Header=BB6_35 Depth=1
	jmp	.LBB6_46
.LBB6_46:                               # %if.end.114
                                        #   in Loop: Header=BB6_35 Depth=1
	jmp	.LBB6_47
.LBB6_47:                               # %for.inc.115
                                        #   in Loop: Header=BB6_35 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB6_35
.LBB6_48:                               # %for.end.117
	movl	$0, -52(%rbp)
.LBB6_49:                               # %for.cond.118
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rdx
	cmpl	72(%rdx), %eax
	movb	%cl, -110(%rbp)         # 1-byte Spill
	jae	.LBB6_52
# BB#50:                                # %land.lhs.true.120
                                        #   in Loop: Header=BB6_49 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%rbp)
	movb	%cl, -110(%rbp)         # 1-byte Spill
	je	.LBB6_52
# BB#51:                                # %land.rhs.122
                                        #   in Loop: Header=BB6_49 Depth=1
	cmpl	$0, -44(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -110(%rbp)         # 1-byte Spill
.LBB6_52:                               # %land.end.125
                                        #   in Loop: Header=BB6_49 Depth=1
	movb	-110(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_53
	jmp	.LBB6_62
.LBB6_53:                               # %for.body.126
                                        #   in Loop: Header=BB6_49 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	88(%rcx), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB6_55
# BB#54:                                # %if.then.131
                                        #   in Loop: Header=BB6_49 Depth=1
	movl	$1, -44(%rbp)
	jmp	.LBB6_60
.LBB6_55:                               # %if.else.132
                                        #   in Loop: Header=BB6_49 Depth=1
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movslq	-52(%rbp), %rcx
	movq	-16(%rbp), %rdi
	imulq	$24, %rcx, %rcx
	addq	88(%rdi), %rcx
	movq	8(%rcx), %rdi
	callq	g_utf8_validate
	cmpl	$0, %eax
	je	.LBB6_58
# BB#56:                                # %land.lhs.true.139
                                        #   in Loop: Header=BB6_49 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	88(%rcx), %rax
	cmpq	$0, 16(%rax)
	je	.LBB6_59
# BB#57:                                # %lor.lhs.false.145
                                        #   in Loop: Header=BB6_49 Depth=1
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movslq	-52(%rbp), %rcx
	movq	-16(%rbp), %rdi
	imulq	$24, %rcx, %rcx
	addq	88(%rdi), %rcx
	movq	16(%rcx), %rdi
	callq	g_utf8_validate
	cmpl	$0, %eax
	jne	.LBB6_59
.LBB6_58:                               # %if.then.152
                                        #   in Loop: Header=BB6_49 Depth=1
	movl	$0, -48(%rbp)
.LBB6_59:                               # %if.end.153
                                        #   in Loop: Header=BB6_49 Depth=1
	jmp	.LBB6_60
.LBB6_60:                               # %if.end.154
                                        #   in Loop: Header=BB6_49 Depth=1
	jmp	.LBB6_61
.LBB6_61:                               # %for.inc.155
                                        #   in Loop: Header=BB6_49 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB6_49
.LBB6_62:                               # %for.end.157
	jmp	.LBB6_63
.LBB6_63:                               # %if.end.158
	cmpl	$0, -44(%rbp)
	je	.LBB6_65
# BB#64:                                # %if.then.160
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movabsq	$.L.str.32, %rcx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	gimp_message
	movq	-40(%rbp), %rdi
	callq	g_free
	jmp	.LBB6_90
.LBB6_65:                               # %if.end.166
	cmpl	$0, -48(%rbp)
	jne	.LBB6_67
# BB#66:                                # %if.then.168
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movabsq	$.L.str.33, %rcx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	gimp_message
	movq	-40(%rbp), %rdi
	callq	g_free
	jmp	.LBB6_90
.LBB6_67:                               # %if.end.174
	movq	-16(%rbp), %rax
	movl	64(%rax), %ecx
	movl	%ecx, %edx
	decl	%edx
	subl	$2, %edx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movl	%edx, -152(%rbp)        # 4-byte Spill
	jb	.LBB6_68
	jmp	.LBB6_91
.LBB6_91:                               # %if.end.174
	movl	-148(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	je	.LBB6_69
	jmp	.LBB6_70
.LBB6_68:                               # %sw.bb
	movq	-16(%rbp), %rax
	movl	64(%rax), %edi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gimp_plug_in_procedure_new
	movq	%rax, -32(%rbp)
	jmp	.LBB6_70
.LBB6_69:                               # %sw.bb.179
	movq	-8(%rbp), %rdi
	callq	gimp_temporary_procedure_new
	movq	%rax, -32(%rbp)
.LBB6_70:                               # %sw.epilog
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_plug_in_procedure_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -24(%rbp)
	callq	time
	movq	-24(%rbp), %rsi
	movq	%rax, 208(%rsi)
	movq	-8(%rbp), %rax
	cmpl	$3, 48(%rax)
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 216(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_take_name
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-16(%rbp), %r8
	movq	8(%r8), %rdx
	movq	-16(%rbp), %r8
	movq	16(%r8), %rcx
	movq	-16(%rbp), %r8
	movq	24(%r8), %r8
	movq	-16(%rbp), %r9
	movq	32(%r9), %r9
	movq	-16(%rbp), %r10
	movq	40(%r10), %r10
	movq	%r10, (%rsp)
	movq	$0, 8(%rsp)
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_strings
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	56(%rax), %rsi
	callq	gimp_plug_in_procedure_set_image_types
	movl	$0, -52(%rbp)
.LBB6_71:                               # %for.cond.193
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	68(%rcx), %eax
	jae	.LBB6_74
# BB#72:                                # %for.body.197
                                        #   in Loop: Header=BB6_71 Depth=1
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	80(%rcx), %rax
	movl	(%rax), %esi
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	80(%rcx), %rax
	movq	8(%rax), %rdx
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	80(%rcx), %rax
	movq	16(%rax), %rcx
	callq	gimp_pdb_compat_param_spec
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_procedure_add_argument
# BB#73:                                # %for.inc.213
                                        #   in Loop: Header=BB6_71 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB6_71
.LBB6_74:                               # %for.end.215
	movl	$0, -52(%rbp)
.LBB6_75:                               # %for.cond.216
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	72(%rcx), %eax
	jae	.LBB6_78
# BB#76:                                # %for.body.220
                                        #   in Loop: Header=BB6_75 Depth=1
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	88(%rcx), %rax
	movl	(%rax), %esi
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	88(%rcx), %rax
	movq	8(%rax), %rdx
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	88(%rcx), %rax
	movq	16(%rax), %rcx
	callq	gimp_pdb_compat_param_spec
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_procedure_add_return_value
# BB#77:                                # %for.inc.237
                                        #   in Loop: Header=BB6_75 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB6_75
.LBB6_78:                               # %for.end.239
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB6_86
# BB#79:                                # %land.lhs.true.242
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB6_86
# BB#80:                                # %if.then.246
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$60, %ecx
	jne	.LBB6_84
# BB#81:                                # %if.then.252
	leaq	-80(%rbp), %rdx
	movq	$0, -80(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rsi
	callq	gimp_plug_in_procedure_add_menu_path
	cmpl	$0, %eax
	jne	.LBB6_83
# BB#82:                                # %if.then.256
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$1, %edx
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	32(%rcx), %rdi
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
	leaq	-80(%rbp), %rdi
	callq	g_clear_error
.LBB6_83:                               # %if.end.259
	jmp	.LBB6_85
.LBB6_84:                               # %if.else.260
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup
	movq	-24(%rbp), %rdi
	movq	%rax, 152(%rdi)
.LBB6_85:                               # %if.end.263
	jmp	.LBB6_86
.LBB6_86:                               # %if.end.264
	movq	-16(%rbp), %rax
	movl	64(%rax), %ecx
	movl	%ecx, %edx
	decl	%edx
	subl	$2, %edx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	%edx, -192(%rbp)        # 4-byte Spill
	jb	.LBB6_87
	jmp	.LBB6_92
.LBB6_92:                               # %if.end.264
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	je	.LBB6_88
	jmp	.LBB6_89
.LBB6_87:                               # %sw.bb.266
	movq	-8(%rbp), %rax
	movq	736(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_plug_in_def_add_procedure
	jmp	.LBB6_89
.LBB6_88:                               # %sw.bb.267
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_temporary_procedure_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_plug_in_add_temp_proc
.LBB6_89:                               # %sw.epilog.270
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB6_90:                               # %return
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_plug_in_handle_proc_install, .Lfunc_end6-gimp_plug_in_handle_proc_install
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_handle_proc_uninstall,@function
gimp_plug_in_handle_proc_uninstall:     # @gimp_plug_in_handle_proc_uninstall
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
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_handle_proc_uninstall, %rsi
	movabsq	$.L.str.34, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_13
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	jmp	.LBB7_6
.LBB7_6:                                # %do.body.1
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_8
# BB#7:                                 # %if.then.3
	jmp	.LBB7_9
.LBB7_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_handle_proc_uninstall, %rsi
	movabsq	$.L.str.35, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_13
.LBB7_9:                                # %if.end.5
	jmp	.LBB7_10
.LBB7_10:                               # %do.end.6
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_canonicalize_identifier
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	616(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_plug_in_procedure_find
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB7_12
# BB#11:                                # %if.then.9
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_temporary_procedure_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_plug_in_remove_temp_proc
.LBB7_12:                               # %if.end.12
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB7_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_plug_in_handle_proc_uninstall, .Lfunc_end7-gimp_plug_in_handle_proc_uninstall
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_handle_extension_ack,@function
gimp_plug_in_handle_extension_ack:      # @gimp_plug_in_handle_extension_ack
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
	cmpq	$0, 624(%rdi)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	624(%rax), %rdi
	callq	g_main_loop_quit
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movabsq	$.L.str.36, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	-24(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	gimp_message
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_close
.LBB8_3:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_plug_in_handle_extension_ack, .Lfunc_end8-gimp_plug_in_handle_extension_ack
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_handle_has_init,@function
gimp_plug_in_handle_has_init:           # @gimp_plug_in_handle_has_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$2, 48(%rdi)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	736(%rax), %rdi
	callq	gimp_plug_in_def_set_has_init
	jmp	.LBB9_3
.LBB9_2:                                # %if.else
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movabsq	$.L.str.37, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	-24(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	gimp_message
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_close
.LBB9_3:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_plug_in_handle_has_init, .Lfunc_end9-gimp_plug_in_handle_has_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_handle_tile_put,@function
gimp_plug_in_handle_tile_put:           # @gimp_plug_in_handle_tile_put
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
	subq	$320, %rsp              # imm = 0x140
	leaq	-56(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$-1, -56(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	cmpq	$0, 144(%rsi)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	72(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-136(%rbp), %rdx        # 8-byte Reload
	callq	gp_tile_data_write
	cmpl	$0, %eax
	jne	.LBB10_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movabsq	$.L.str.9, %rcx
	movabsq	$.L__func__.gimp_plug_in_handle_tile_put, %r8
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	32(%rdi), %rdi
	movb	$0, %al
	callq	gimp_message
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_close
	jmp	.LBB10_33
.LBB10_2:                               # %if.end
	leaq	-80(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	callq	gimp_wire_read_msg
	cmpl	$0, %eax
	jne	.LBB10_4
# BB#3:                                 # %if.then.4
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movabsq	$.L.str.9, %rcx
	movabsq	$.L__func__.gimp_plug_in_handle_tile_put, %r8
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	32(%rdi), %rdi
	movb	$0, %al
	callq	gimp_message
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_close
	jmp	.LBB10_33
.LBB10_4:                               # %if.end.7
	cmpl	$4, -80(%rbp)
	je	.LBB10_6
# BB#5:                                 # %if.then.10
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movabsq	$.L.str.10, %rcx
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	32(%rdi), %rdi
	movl	-80(%rbp), %r8d
	movb	$0, %al
	callq	gimp_message
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_close
	jmp	.LBB10_33
.LBB10_6:                               # %if.end.14
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-64(%rbp), %rax
	movl	(%rax), %esi
	callq	gimp_item_get_by_ID
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB10_8
# BB#7:                                 # %if.then.22
	movl	$0, -124(%rbp)
	jmp	.LBB10_13
.LBB10_8:                               # %if.else
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_11
# BB#9:                                 # %land.lhs.true
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB10_11
# BB#10:                                # %if.then.27
	movl	$1, -124(%rbp)
	jmp	.LBB10_12
.LBB10_11:                              # %if.else.28
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB10_12:                              # %if.end.30
	jmp	.LBB10_13
.LBB10_13:                              # %if.end.31
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	jne	.LBB10_15
# BB#14:                                # %if.then.33
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movabsq	$.L.str.11, %rcx
	movq	-64(%rbp), %rdi
	movl	(%rdi), %r8d
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %r9         # 8-byte Reload
	movl	%r8d, -156(%rbp)        # 4-byte Spill
	movq	%r9, %r8
	movq	%rax, %r9
	movl	-156(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	movb	$0, %al
	callq	gimp_message
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_close
	jmp	.LBB10_33
.LBB10_15:                              # %if.else.39
	movq	-88(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_removed
	cmpl	$0, %eax
	je	.LBB10_17
# BB#16:                                # %if.then.44
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movabsq	$.L.str.12, %rcx
	movq	-64(%rbp), %rdi
	movl	(%rdi), %r8d
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %r9         # 8-byte Reload
	movl	%r8d, -188(%rbp)        # 4-byte Spill
	movq	%r9, %r8
	movq	%rax, %r9
	movl	-188(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	movb	$0, %al
	callq	gimp_message
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_close
	jmp	.LBB10_33
.LBB10_17:                              # %if.end.51
	jmp	.LBB10_18
.LBB10_18:                              # %if.end.52
	movq	-64(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB10_20
# BB#19:                                # %if.then.55
	movq	-88(%rbp), %rdi
	callq	gimp_drawable_get_shadow_tiles
	movq	%rax, -96(%rbp)
	movq	-8(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gimp_plug_in_cleanup_add_shadow
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB10_26
.LBB10_20:                              # %if.else.58
	movq	-88(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_content_locked
	cmpl	$0, %eax
	je	.LBB10_22
# BB#21:                                # %if.then.63
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movabsq	$.L.str.13, %rcx
	movq	-64(%rbp), %rdi
	movl	(%rdi), %r8d
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %r9         # 8-byte Reload
	movl	%r8d, -220(%rbp)        # 4-byte Spill
	movq	%r9, %r8
	movq	%rax, %r9
	movl	-220(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	movb	$0, %al
	callq	gimp_message
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_close
	jmp	.LBB10_33
.LBB10_22:                              # %if.else.70
	movq	-88(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB10_24
# BB#23:                                # %if.then.75
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movabsq	$.L.str.14, %rcx
	movq	-64(%rbp), %rdi
	movl	(%rdi), %r8d
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	-248(%rbp), %r9         # 8-byte Reload
	movl	%r8d, -252(%rbp)        # 4-byte Spill
	movq	%r9, %r8
	movq	%rax, %r9
	movl	-252(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	movb	$0, %al
	callq	gimp_message
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_close
	jmp	.LBB10_33
.LBB10_24:                              # %if.end.82
	jmp	.LBB10_25
.LBB10_25:                              # %if.end.83
	movq	-88(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movq	%rax, -96(%rbp)
.LBB10_26:                              # %if.end.85
	movl	$1, %eax
	movq	-96(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movl	4(%rcx), %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	tile_manager_get
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB10_28
# BB#27:                                # %if.then.89
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movabsq	$.L.str.15, %rcx
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	-272(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	gimp_message
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_close
	jmp	.LBB10_33
.LBB10_28:                              # %if.end.95
	cmpl	$0, -32(%rbp)
	je	.LBB10_30
# BB#29:                                # %if.then.98
	xorl	%eax, %eax
	movq	-104(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	tile_data_pointer
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	144(%rdi), %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_plug_in_shm_get_addr
	movq	-104(%rbp), %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	tile_size
	movslq	%eax, %rdx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	-288(%rbp), %rsi        # 8-byte Reload
	callq	memcpy
	jmp	.LBB10_31
.LBB10_30:                              # %if.else.105
	xorl	%eax, %eax
	movq	-104(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	tile_data_pointer
	movq	-64(%rbp), %rdi
	movq	32(%rdi), %rsi
	movq	-104(%rbp), %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	callq	tile_size
	movslq	%eax, %rdx
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	-304(%rbp), %rsi        # 8-byte Reload
	callq	memcpy
.LBB10_31:                              # %if.end.110
	movl	$1, %esi
	movq	-104(%rbp), %rdi
	callq	tile_release
	leaq	-80(%rbp), %rdi
	callq	gimp_wire_destroy
	movq	-8(%rbp), %rdi
	movq	72(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	gp_tile_ack_write
	cmpl	$0, %eax
	jne	.LBB10_33
# BB#32:                                # %if.then.114
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movabsq	$.L.str.9, %rcx
	movabsq	$.L__func__.gimp_plug_in_handle_tile_put, %r8
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	32(%rdi), %rdi
	movb	$0, %al
	callq	gimp_message
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_close
.LBB10_33:                              # %if.end.117
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_plug_in_handle_tile_put, .Lfunc_end10-gimp_plug_in_handle_tile_put
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_handle_tile_get,@function
gimp_plug_in_handle_tile_get:           # @gimp_plug_in_handle_tile_get
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	32(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movl	(%rsi), %esi
	callq	gimp_item_get_by_ID
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB11_7
.LBB11_2:                               # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_5
# BB#3:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB11_5
# BB#4:                                 # %if.then.4
	movl	$1, -116(%rbp)
	jmp	.LBB11_6
.LBB11_5:                               # %if.else.5
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB11_6:                               # %if.end
	jmp	.LBB11_7
.LBB11_7:                               # %if.end.7
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	jne	.LBB11_9
# BB#8:                                 # %if.then.9
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movabsq	$.L.str.16, %rcx
	movq	-16(%rbp), %rdi
	movl	(%rdi), %r8d
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %r9         # 8-byte Reload
	movl	%r8d, -140(%rbp)        # 4-byte Spill
	movq	%r9, %r8
	movq	%rax, %r9
	movl	-140(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	movb	$0, %al
	callq	gimp_message
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_close
	jmp	.LBB11_27
.LBB11_9:                               # %if.else.15
	movq	-80(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_removed
	cmpl	$0, %eax
	je	.LBB11_11
# BB#10:                                # %if.then.20
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movabsq	$.L.str.17, %rcx
	movq	-16(%rbp), %rdi
	movl	(%rdi), %r8d
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %r9         # 8-byte Reload
	movl	%r8d, -172(%rbp)        # 4-byte Spill
	movq	%r9, %r8
	movq	%rax, %r9
	movl	-172(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	movb	$0, %al
	callq	gimp_message
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_close
	jmp	.LBB11_27
.LBB11_11:                              # %if.end.27
	jmp	.LBB11_12
.LBB11_12:                              # %if.end.28
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB11_14
# BB#13:                                # %if.then.30
	movq	-80(%rbp), %rdi
	callq	gimp_drawable_get_shadow_tiles
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_plug_in_cleanup_add_shadow
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB11_15
.LBB11_14:                              # %if.else.33
	movq	-80(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movq	%rax, -88(%rbp)
.LBB11_15:                              # %if.end.35
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	4(%rax), %esi
	callq	tile_manager_get
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB11_17
# BB#16:                                # %if.then.38
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movabsq	$.L.str.15, %rcx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-192(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	gimp_message
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_close
	jmp	.LBB11_27
.LBB11_17:                              # %if.end.44
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movq	-96(%rbp), %rdi
	callq	tile_bpp
	movl	%eax, -44(%rbp)
	movq	-96(%rbp), %rdi
	callq	tile_ewidth
	movl	%eax, -40(%rbp)
	movq	-96(%rbp), %rdi
	callq	tile_eheight
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	cmpq	$0, 144(%rdi)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB11_19
# BB#18:                                # %if.then.58
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %rdi
	callq	gimp_plug_in_shm_get_addr
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	tile_data_pointer
	movq	-96(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	tile_size
	movslq	%eax, %rdx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	callq	memcpy
	jmp	.LBB11_20
.LBB11_19:                              # %if.else.65
	xorl	%eax, %eax
	movq	-96(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	tile_data_pointer
	movq	%rax, -24(%rbp)
.LBB11_20:                              # %if.end.67
	leaq	-56(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	callq	gp_tile_data_write
	cmpl	$0, %eax
	jne	.LBB11_22
# BB#21:                                # %if.then.70
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movabsq	$.L.str.9, %rcx
	movabsq	$.L__func__.gimp_plug_in_handle_tile_get, %r8
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	32(%rdi), %rdi
	movb	$0, %al
	callq	gimp_message
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_close
	jmp	.LBB11_27
.LBB11_22:                              # %if.end.73
	xorl	%esi, %esi
	movq	-96(%rbp), %rdi
	callq	tile_release
	leaq	-72(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	64(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	callq	gimp_wire_read_msg
	cmpl	$0, %eax
	jne	.LBB11_24
# BB#23:                                # %if.then.76
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movabsq	$.L.str.9, %rcx
	movabsq	$.L__func__.gimp_plug_in_handle_tile_get, %r8
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	32(%rdi), %rdi
	movb	$0, %al
	callq	gimp_message
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_close
	jmp	.LBB11_27
.LBB11_24:                              # %if.end.79
	cmpl	$3, -72(%rbp)
	je	.LBB11_26
# BB#25:                                # %if.then.82
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movabsq	$.L.str.18, %rcx
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	32(%rdi), %rdi
	movl	-72(%rbp), %r8d
	movb	$0, %al
	callq	gimp_message
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_close
	jmp	.LBB11_27
.LBB11_26:                              # %if.end.86
	leaq	-72(%rbp), %rdi
	callq	gimp_wire_destroy
.LBB11_27:                              # %return
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_plug_in_handle_tile_get, .Lfunc_end11-gimp_plug_in_handle_tile_get
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_handle_proc_error,@function
gimp_plug_in_handle_proc_error:         # @gimp_plug_in_handle_proc_error
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rcx
	movl	72(%rcx), %eax
	testl	%eax, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB12_1
	jmp	.LBB12_7
.LBB12_7:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB12_5
	jmp	.LBB12_6
.LBB12_1:                               # %sw.bb
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	callq	gimp_pdb_error_quark
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	32(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.25, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$2, %edx
	movq	-24(%rbp), %r8
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %r9
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_message
	jmp	.LBB12_4
.LBB12_3:                               # %if.else
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	32(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.26, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$2, %edx
	movq	-24(%rbp), %r8
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %r9
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_message
.LBB12_4:                               # %if.end
	jmp	.LBB12_6
.LBB12_5:                               # %sw.bb.9
	jmp	.LBB12_6
.LBB12_6:                               # %sw.epilog
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_plug_in_handle_proc_error, .Lfunc_end12-gimp_plug_in_handle_proc_error
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Plug-In"
	.size	.L.str, 13

	.type	.L__func__.gimp_plug_in_handle_message,@object # @__func__.gimp_plug_in_handle_message
.L__func__.gimp_plug_in_handle_message:
	.asciz	"gimp_plug_in_handle_message"
	.size	.L__func__.gimp_plug_in_handle_message, 28

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_PLUG_IN (plug_in)"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"plug_in->open == TRUE"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"msg != NULL"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Plug-In \"%s\"\n(%s)\n\nsent a CONFIG message.  This should not happen."
	.size	.L.str.4, 67

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Plug-In \"%s\"\n(%s)\n\nsent a TILE_ACK message.  This should not happen."
	.size	.L.str.5, 69

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Plug-In \"%s\"\n(%s)\n\nsent a TILE_DATA message.  This should not happen."
	.size	.L.str.6, 70

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Plug-In \"%s\"\n(%s)\n\nsent a TEMP_PROC_RUN message.  This should not happen."
	.size	.L.str.7, 74

	.type	.L__func__.gimp_plug_in_handle_tile_request,@object # @__func__.gimp_plug_in_handle_tile_request
.L__func__.gimp_plug_in_handle_tile_request:
	.asciz	"gimp_plug_in_handle_tile_request"
	.size	.L__func__.gimp_plug_in_handle_tile_request, 33

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"request != NULL"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s: ERROR"
	.size	.L.str.9, 10

	.type	.L__func__.gimp_plug_in_handle_tile_put,@object # @__func__.gimp_plug_in_handle_tile_put
.L__func__.gimp_plug_in_handle_tile_put:
	.asciz	"gimp_plug_in_handle_tile_put"
	.size	.L__func__.gimp_plug_in_handle_tile_put, 29

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"expected tile data and received: %d"
	.size	.L.str.10, 36

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Plug-In \"%s\"\n(%s)\n\ntried writing to invalid drawable %d (killing)"
	.size	.L.str.11, 66

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Plug-In \"%s\"\n(%s)\n\ntried writing to drawable %d which was removed from the image (killing)"
	.size	.L.str.12, 91

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Plug-In \"%s\"\n(%s)\n\ntried writing to a locked drawable %d (killing)"
	.size	.L.str.13, 67

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Plug-In \"%s\"\n(%s)\n\ntried writing to a group layer %d (killing)"
	.size	.L.str.14, 63

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Plug-In \"%s\"\n(%s)\n\nrequested invalid tile (killing)"
	.size	.L.str.15, 52

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Plug-In \"%s\"\n(%s)\n\ntried reading from invalid drawable %d (killing)"
	.size	.L.str.16, 68

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Plug-In \"%s\"\n(%s)\n\ntried reading from drawable %d which was removed from the image (killing)"
	.size	.L.str.17, 93

	.type	.L__func__.gimp_plug_in_handle_tile_get,@object # @__func__.gimp_plug_in_handle_tile_get
.L__func__.gimp_plug_in_handle_tile_get:
	.asciz	"gimp_plug_in_handle_tile_get"
	.size	.L__func__.gimp_plug_in_handle_tile_get, 29

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"expected tile ack and received: %d"
	.size	.L.str.18, 35

	.type	.L__func__.gimp_plug_in_handle_proc_run,@object # @__func__.gimp_plug_in_handle_proc_run
.L__func__.gimp_plug_in_handle_proc_run:
	.asciz	"gimp_plug_in_handle_proc_run"
	.size	.L__func__.gimp_plug_in_handle_proc_run, 29

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"proc_run != NULL"
	.size	.L.str.19, 17

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"proc_run->name != NULL"
	.size	.L.str.20, 23

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Plug-In \"%s\"\n(%s)\ncalled deprecated procedure '%s'.\nIt should call '%s' instead!"
	.size	.L.str.21, 81

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"NONE"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Plug-In \"%s\"\n(%s)\ncalled deprecated procedure '%s'."
	.size	.L.str.23, 52

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"WARNING: Plug-In \"%s\"\n(%s)\ncalled deprecated procedure '%s'.\nIt should call '%s' instead!"
	.size	.L.str.24, 90

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Calling error for procedure '%s':\n%s"
	.size	.L.str.25, 37

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Execution error for procedure '%s':\n%s"
	.size	.L.str.26, 39

	.type	.L__func__.gimp_plug_in_handle_proc_return,@object # @__func__.gimp_plug_in_handle_proc_return
.L__func__.gimp_plug_in_handle_proc_return:
	.asciz	"gimp_plug_in_handle_proc_return"
	.size	.L__func__.gimp_plug_in_handle_proc_return, 32

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"proc_return != NULL"
	.size	.L.str.27, 20

	.type	.L__func__.gimp_plug_in_handle_temp_proc_return,@object # @__func__.gimp_plug_in_handle_temp_proc_return
.L__func__.gimp_plug_in_handle_temp_proc_return:
	.asciz	"gimp_plug_in_handle_temp_proc_return"
	.size	.L__func__.gimp_plug_in_handle_temp_proc_return, 37

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Plug-In \"%s\"\n(%s)\n\nsent a TEMP_PROC_RETURN message while not running a temporary procedure.  This should not happen."
	.size	.L.str.28, 117

	.type	.L__func__.gimp_plug_in_handle_proc_install,@object # @__func__.gimp_plug_in_handle_proc_install
.L__func__.gimp_plug_in_handle_proc_install:
	.asciz	"gimp_plug_in_handle_proc_install"
	.size	.L__func__.gimp_plug_in_handle_proc_install, 33

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"proc_install != NULL"
	.size	.L.str.29, 21

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"proc_install->name != NULL"
	.size	.L.str.30, 27

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Plug-In \"%s\"\n(%s)\n\nattempted to install procedure \"%s\" which fails to comply with the array parameter passing standard.  Argument %d is noncompliant."
	.size	.L.str.31, 150

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Plug-In \"%s\"\n(%s)\n\nattempted to install a procedure NULL parameter name."
	.size	.L.str.32, 73

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Plug-In \"%s\"\n(%s)\n\nattempted to install a procedure with invalid UTF-8 strings."
	.size	.L.str.33, 80

	.type	.L__func__.gimp_plug_in_handle_proc_uninstall,@object # @__func__.gimp_plug_in_handle_proc_uninstall
.L__func__.gimp_plug_in_handle_proc_uninstall:
	.asciz	"gimp_plug_in_handle_proc_uninstall"
	.size	.L__func__.gimp_plug_in_handle_proc_uninstall, 35

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"proc_uninstall != NULL"
	.size	.L.str.34, 23

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"proc_uninstall->name != NULL"
	.size	.L.str.35, 29

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Plug-In \"%s\"\n(%s)\n\nsent an EXTENSION_ACK message while not being started as an extension.  This should not happen."
	.size	.L.str.36, 115

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Plug-In \"%s\"\n(%s)\n\nsent an HAS_INIT message while not in query().  This should not happen."
	.size	.L.str.37, 91


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
