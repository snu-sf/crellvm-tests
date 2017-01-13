	.text
	.file	"gimpclipboard.bc"
	.globl	gimp_clipboard_init
	.align	16, 0x90
	.type	gimp_clipboard_init,@function
gimp_clipboard_init:                    # @gimp_clipboard_init
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_clipboard_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_48
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_clipboard_get
	movq	%rax, -16(%rbp)
# BB#13:                                # %do.body.12
	cmpq	$0, -16(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.14
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_clipboard_init, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_48
.LBB0_16:                               # %if.end.16
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.17
	movl	$80, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movabsq	$gimp_clipboard_free, %rdi
	movq	-16(%rbp), %rdx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-128(%rbp), %rcx        # 8-byte Reload
	callq	g_object_set_data_full
	callq	gimp_pixbuf_get_formats
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB0_18:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_21 Depth 2
	cmpq	$0, -24(%rbp)
	je	.LBB0_30
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB0_18 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gdk_pixbuf_format_is_writable
	cmpl	$0, %eax
	je	.LBB0_25
# BB#20:                                # %if.then.26
                                        #   in Loop: Header=BB0_18 Depth=1
	movq	-56(%rbp), %rdi
	callq	gdk_pixbuf_format_get_mime_types
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB0_21:                               # %for.cond.30
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_24
# BB#22:                                # %for.body.32
                                        #   in Loop: Header=BB0_21 Depth=2
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
# BB#23:                                # %for.inc
                                        #   in Loop: Header=BB0_21 Depth=2
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_21
.LBB0_24:                               # %for.end
                                        #   in Loop: Header=BB0_18 Depth=1
	movq	-64(%rbp), %rdi
	callq	g_strfreev
.LBB0_25:                               # %if.end.33
                                        #   in Loop: Header=BB0_18 Depth=1
	jmp	.LBB0_26
.LBB0_26:                               # %for.inc.34
                                        #   in Loop: Header=BB0_18 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB0_28
# BB#27:                                # %cond.true
                                        #   in Loop: Header=BB0_18 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB0_29
.LBB0_28:                               # %cond.false
                                        #   in Loop: Header=BB0_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB0_29
.LBB0_29:                               # %cond.end
                                        #   in Loop: Header=BB0_18 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB0_18
.LBB0_30:                               # %for.end.36
	movq	-16(%rbp), %rax
	cmpl	$0, 16(%rax)
	jle	.LBB0_47
# BB#31:                                # %if.then.39
	movl	$16, %eax
	movl	%eax, %esi
	movl	$0, -76(%rbp)
	movq	-16(%rbp), %rcx
	movslq	16(%rcx), %rdi
	callq	g_malloc0_n
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB0_32:                               # %for.cond.44
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_35 Depth 2
	cmpq	$0, -24(%rbp)
	je	.LBB0_46
# BB#33:                                # %for.body.46
                                        #   in Loop: Header=BB0_32 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gdk_pixbuf_format_is_writable
	cmpl	$0, %eax
	je	.LBB0_41
# BB#34:                                # %if.then.52
                                        #   in Loop: Header=BB0_32 Depth=1
	movq	-88(%rbp), %rdi
	callq	gdk_pixbuf_format_get_name
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rdi
	callq	gdk_pixbuf_format_get_mime_types
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)
.LBB0_35:                               # %for.cond.60
                                        #   Parent Loop BB0_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_40
# BB#36:                                # %for.body.62
                                        #   in Loop: Header=BB0_35 Depth=2
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB0_38
# BB#37:                                # %if.then.65
                                        #   in Loop: Header=BB0_35 Depth=2
	movabsq	$.L.str.4, %rdi
	movq	-120(%rbp), %rsi
	movb	$0, %al
	callq	g_printerr
.LBB0_38:                               # %if.end.66
                                        #   in Loop: Header=BB0_35 Depth=2
	movq	-120(%rbp), %rdi
	callq	g_strdup
	movslq	-76(%rbp), %rdi
	movq	-16(%rbp), %rcx
	shlq	$4, %rdi
	addq	8(%rcx), %rdi
	movq	%rax, (%rdi)
	movslq	-76(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$4, %rax
	addq	8(%rcx), %rax
	movl	$0, 8(%rax)
	movl	-76(%rbp), %edx
	movslq	-76(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$4, %rax
	addq	8(%rcx), %rax
	movl	%edx, 12(%rax)
	movl	-76(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -76(%rbp)
# BB#39:                                # %for.inc.76
                                        #   in Loop: Header=BB0_35 Depth=2
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB0_35
.LBB0_40:                               # %for.end.78
                                        #   in Loop: Header=BB0_32 Depth=1
	movq	-104(%rbp), %rdi
	callq	g_strfreev
	movq	-96(%rbp), %rdi
	callq	g_free
.LBB0_41:                               # %if.end.79
                                        #   in Loop: Header=BB0_32 Depth=1
	jmp	.LBB0_42
.LBB0_42:                               # %for.inc.80
                                        #   in Loop: Header=BB0_32 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB0_44
# BB#43:                                # %cond.true.82
                                        #   in Loop: Header=BB0_32 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB0_45
.LBB0_44:                               # %cond.false.84
                                        #   in Loop: Header=BB0_32 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB0_45
.LBB0_45:                               # %cond.end.85
                                        #   in Loop: Header=BB0_32 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB0_32
.LBB0_46:                               # %for.end.87
	jmp	.LBB0_47
.LBB0_47:                               # %if.end.88
	movl	$2, %eax
	movl	%eax, %edi
	movl	$16, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movl	$2, 32(%rcx)
	callq	g_malloc0_n
	movabsq	$.L.str.5, %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, 24(%rcx)
	callq	g_strdup
	movabsq	$.L.str.6, %rdi
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, 12(%rax)
	callq	g_strdup
	movl	$1, %edx
	movl	%edx, %edi
	movl	$16, %edx
	movl	%edx, %esi
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, 24(%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movl	$1, 28(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 48(%rax)
	callq	g_malloc0_n
	movabsq	$.L.str.7, %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
	callq	g_strdup
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movl	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movl	$0, 12(%rax)
.LBB0_48:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_clipboard_init, .Lfunc_end0-gimp_clipboard_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_clipboard_get,@function
gimp_clipboard_get:                     # @gimp_clipboard_get
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_clipboard_get, .Lfunc_end1-gimp_clipboard_get
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_clipboard_free,@function
gimp_clipboard_free:                    # @gimp_clipboard_free
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
	callq	gimp_clipboard_clear
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	g_slist_free
	movl	$0, -12(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jge	.LBB2_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	8(%rcx), %rax
	movq	(%rax), %rdi
	callq	g_free
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movl	$0, -12(%rbp)
.LBB2_5:                                # %for.cond.2
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jge	.LBB2_8
# BB#6:                                 # %for.body.4
                                        #   in Loop: Header=BB2_5 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	24(%rcx), %rax
	movq	(%rax), %rdi
	callq	g_free
# BB#7:                                 # %for.inc.8
                                        #   in Loop: Header=BB2_5 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB2_5
.LBB2_8:                                # %for.end.10
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movl	$0, -12(%rbp)
.LBB2_9:                                # %for.cond.12
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB2_12
# BB#10:                                # %for.body.14
                                        #   in Loop: Header=BB2_9 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	movq	(%rax), %rdi
	callq	g_free
# BB#11:                                # %for.inc.18
                                        #   in Loop: Header=BB2_9 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB2_9
.LBB2_12:                               # %for.end.20
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
# BB#13:                                # %do.body
	movl	$80, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#14:                                # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_clipboard_free, .Lfunc_end2-gimp_clipboard_free
	.cfi_endproc

	.globl	gimp_clipboard_exit
	.align	16, 0x90
	.type	gimp_clipboard_exit,@function
gimp_clipboard_exit:                    # @gimp_clipboard_exit
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_clipboard_exit, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_16
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gdk_display_get_default
	movl	$69, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_clipboard_get_for_display
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB3_15
# BB#13:                                # %land.lhs.true.14
	movq	-16(%rbp), %rdi
	callq	gtk_clipboard_get_owner
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB3_15
# BB#14:                                # %if.then.18
	movq	-16(%rbp), %rdi
	callq	gtk_clipboard_store
.LBB3_15:                               # %if.end.19
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB3_16:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_clipboard_exit, .Lfunc_end3-gimp_clipboard_exit
	.cfi_endproc

	.globl	gimp_clipboard_has_buffer
	.align	16, 0x90
	.type	gimp_clipboard_has_buffer,@function
gimp_clipboard_has_buffer:              # @gimp_clipboard_has_buffer
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_clipboard_has_buffer, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_17
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	callq	gdk_display_get_default
	movl	$69, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_clipboard_get_for_display
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB4_16
# BB#13:                                # %land.lhs.true.14
	movq	-32(%rbp), %rdi
	callq	gtk_clipboard_get_owner
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB4_16
# BB#14:                                # %land.lhs.true.18
	movq	-16(%rbp), %rdi
	callq	gimp_clipboard_wait_for_buffer
	cmpq	$0, %rax
	je	.LBB4_16
# BB#15:                                # %if.then.21
	movl	$1, -4(%rbp)
	jmp	.LBB4_17
.LBB4_16:                               # %if.end.22
	movq	-16(%rbp), %rdi
	callq	gimp_clipboard_get
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 56(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
.LBB4_17:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_clipboard_has_buffer, .Lfunc_end4-gimp_clipboard_has_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_clipboard_wait_for_buffer,@function
gimp_clipboard_wait_for_buffer:         # @gimp_clipboard_wait_for_buffer
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_clipboard_get
	leaq	-28(%rbp), %rsi
	movq	%rax, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_clipboard_wait_for_targets
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB5_27
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB5_2:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_6 Depth 2
                                        #       Child Loop BB5_10 Depth 3
	cmpq	$0, -48(%rbp)
	je	.LBB5_26
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB5_5
# BB#4:                                 # %if.then.4
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	-56(%rbp), %rdi
	callq	gdk_pixbuf_format_get_name
	movabsq	$.L.str.13, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_printerr
.LBB5_5:                                # %if.end
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	-56(%rbp), %rdi
	callq	gdk_pixbuf_format_get_mime_types
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB5_6:                                # %for.cond.7
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_10 Depth 3
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_19
# BB#7:                                 # %for.body.9
                                        #   in Loop: Header=BB5_6 Depth=2
	xorl	%esi, %esi
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gdk_atom_intern
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB5_9
# BB#8:                                 # %if.then.13
                                        #   in Loop: Header=BB5_6 Depth=2
	movabsq	$.L.str.14, %rdi
	movq	-80(%rbp), %rsi
	movb	$0, %al
	callq	g_printerr
.LBB5_9:                                # %if.end.14
                                        #   in Loop: Header=BB5_6 Depth=2
	movl	$0, -92(%rbp)
.LBB5_10:                               # %for.cond.15
                                        #   Parent Loop BB5_2 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-92(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB5_15
# BB#11:                                # %for.body.16
                                        #   in Loop: Header=BB5_10 Depth=3
	movslq	-92(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB5_13
# BB#12:                                # %if.then.18
                                        #   in Loop: Header=BB5_6 Depth=2
	movq	-88(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB5_15
.LBB5_13:                               # %if.end.19
                                        #   in Loop: Header=BB5_10 Depth=3
	jmp	.LBB5_14
.LBB5_14:                               # %for.inc
                                        #   in Loop: Header=BB5_10 Depth=3
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB5_10
.LBB5_15:                               # %for.end
                                        #   in Loop: Header=BB5_6 Depth=2
	cmpq	$0, -40(%rbp)
	je	.LBB5_17
# BB#16:                                # %if.then.21
                                        #   in Loop: Header=BB5_2 Depth=1
	jmp	.LBB5_19
.LBB5_17:                               # %if.end.22
                                        #   in Loop: Header=BB5_6 Depth=2
	jmp	.LBB5_18
.LBB5_18:                               # %for.inc.23
                                        #   in Loop: Header=BB5_6 Depth=2
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB5_6
.LBB5_19:                               # %for.end.24
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	-64(%rbp), %rdi
	callq	g_strfreev
	cmpq	$0, -40(%rbp)
	je	.LBB5_21
# BB#20:                                # %if.then.26
	jmp	.LBB5_26
.LBB5_21:                               # %if.end.27
                                        #   in Loop: Header=BB5_2 Depth=1
	jmp	.LBB5_22
.LBB5_22:                               # %for.inc.28
                                        #   in Loop: Header=BB5_2 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB5_24
# BB#23:                                # %cond.true
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB5_25
.LBB5_24:                               # %cond.false
                                        #   in Loop: Header=BB5_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB5_25
.LBB5_25:                               # %cond.end
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB5_2
.LBB5_26:                               # %for.end.30
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB5_27:                               # %if.end.31
	movq	-40(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_clipboard_wait_for_buffer, .Lfunc_end5-gimp_clipboard_wait_for_buffer
	.cfi_endproc

	.globl	gimp_clipboard_has_svg
	.align	16, 0x90
	.type	gimp_clipboard_has_svg,@function
gimp_clipboard_has_svg:                 # @gimp_clipboard_has_svg
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_clipboard_has_svg, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_17
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	callq	gdk_display_get_default
	movl	$69, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_clipboard_get_for_display
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB6_16
# BB#13:                                # %land.lhs.true.14
	movq	-32(%rbp), %rdi
	callq	gtk_clipboard_get_owner
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB6_16
# BB#14:                                # %land.lhs.true.18
	movq	-16(%rbp), %rdi
	callq	gimp_clipboard_wait_for_svg
	cmpq	$0, %rax
	je	.LBB6_16
# BB#15:                                # %if.then.21
	movl	$1, -4(%rbp)
	jmp	.LBB6_17
.LBB6_16:                               # %if.end.22
	movq	-16(%rbp), %rdi
	callq	gimp_clipboard_get
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 64(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
.LBB6_17:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_clipboard_has_svg, .Lfunc_end6-gimp_clipboard_has_svg
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_clipboard_wait_for_svg,@function
gimp_clipboard_wait_for_svg:            # @gimp_clipboard_wait_for_svg
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
	subq	$64, %rsp
	leaq	-20(%rbp), %rsi
	movq	%rdi, -8(%rbp)
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_clipboard_wait_for_targets
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB7_11
# BB#1:                                 # %if.then
	movabsq	$.L.str.5, %rdi
	callq	gdk_atom_intern_static_string
	movabsq	$.L.str.6, %rdi
	movq	%rax, -40(%rbp)
	callq	gdk_atom_intern_static_string
	movq	%rax, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB7_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB7_10
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB7_2 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB7_5
# BB#4:                                 # %if.then.4
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB7_10
.LBB7_5:                                # %if.else
                                        #   in Loop: Header=BB7_2 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB7_7
# BB#6:                                 # %if.then.8
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB7_10
.LBB7_7:                                # %if.end
                                        #   in Loop: Header=BB7_2 Depth=1
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.9
                                        #   in Loop: Header=BB7_2 Depth=1
	jmp	.LBB7_9
.LBB7_9:                                # %for.inc
                                        #   in Loop: Header=BB7_2 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB7_2
.LBB7_10:                               # %for.end
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB7_11:                               # %if.end.10
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_clipboard_wait_for_svg, .Lfunc_end7-gimp_clipboard_wait_for_svg
	.cfi_endproc

	.globl	gimp_clipboard_has_curve
	.align	16, 0x90
	.type	gimp_clipboard_has_curve,@function
gimp_clipboard_has_curve:               # @gimp_clipboard_has_curve
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_clipboard_has_curve, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_17
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	callq	gdk_display_get_default
	movl	$69, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_clipboard_get_for_display
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB8_16
# BB#13:                                # %land.lhs.true.14
	movq	-32(%rbp), %rdi
	callq	gtk_clipboard_get_owner
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB8_16
# BB#14:                                # %land.lhs.true.18
	movq	-16(%rbp), %rdi
	callq	gimp_clipboard_wait_for_curve
	cmpq	$0, %rax
	je	.LBB8_16
# BB#15:                                # %if.then.21
	movl	$1, -4(%rbp)
	jmp	.LBB8_17
.LBB8_16:                               # %if.end.22
	movq	-16(%rbp), %rdi
	callq	gimp_clipboard_get
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 72(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
.LBB8_17:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_clipboard_has_curve, .Lfunc_end8-gimp_clipboard_has_curve
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_clipboard_wait_for_curve,@function
gimp_clipboard_wait_for_curve:          # @gimp_clipboard_wait_for_curve
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
	subq	$48, %rsp
	leaq	-20(%rbp), %rsi
	movq	%rdi, -8(%rbp)
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_clipboard_wait_for_targets
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB9_8
# BB#1:                                 # %if.then
	movabsq	$.L.str.7, %rdi
	callq	gdk_atom_intern_static_string
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB9_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB9_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB9_2 Depth=1
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB9_5
# BB#4:                                 # %if.then.3
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB9_7
.LBB9_5:                                # %if.end
                                        #   in Loop: Header=BB9_2 Depth=1
	jmp	.LBB9_6
.LBB9_6:                                # %for.inc
                                        #   in Loop: Header=BB9_2 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB9_2
.LBB9_7:                                # %for.end
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB9_8:                                # %if.end.4
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_clipboard_wait_for_curve, .Lfunc_end9-gimp_clipboard_wait_for_curve
	.cfi_endproc

	.globl	gimp_clipboard_get_buffer
	.align	16, 0x90
	.type	gimp_clipboard_get_buffer,@function
gimp_clipboard_get_buffer:              # @gimp_clipboard_get_buffer
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_clipboard_get_buffer, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_24
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	callq	gdk_display_get_default
	movl	$69, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_clipboard_get_for_display
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB10_20
# BB#13:                                # %land.lhs.true.14
	movq	-32(%rbp), %rdi
	callq	gtk_clipboard_get_owner
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB10_20
# BB#14:                                # %land.lhs.true.18
	movq	-16(%rbp), %rdi
	callq	gimp_clipboard_wait_for_buffer
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB10_20
# BB#15:                                # %if.then.21
	movq	-16(%rbp), %rdi
	callq	gimp_set_busy
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gtk_clipboard_wait_for_contents
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB10_19
# BB#16:                                # %if.then.25
	movq	-80(%rbp), %rdi
	callq	gtk_selection_data_get_pixbuf
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rdi
	callq	gtk_selection_data_free
	cmpq	$0, -88(%rbp)
	je	.LBB10_18
# BB#17:                                # %if.then.29
	movabsq	$.L.str.8, %rdi
	movq	-88(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	gimp_buffer_new_from_pixbuf
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB10_18:                              # %if.end.32
	jmp	.LBB10_19
.LBB10_19:                              # %if.end.33
	movq	-16(%rbp), %rdi
	callq	gimp_unset_busy
.LBB10_20:                              # %if.end.34
	movq	-16(%rbp), %rdi
	callq	gimp_clipboard_get
	movq	%rax, -24(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB10_23
# BB#21:                                # %land.lhs.true.37
	movq	-24(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB10_23
# BB#22:                                # %if.then.40
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	%rax, -48(%rbp)
.LBB10_23:                              # %if.end.43
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_24:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_clipboard_get_buffer, .Lfunc_end10-gimp_clipboard_get_buffer
	.cfi_endproc

	.globl	gimp_clipboard_get_svg
	.align	16, 0x90
	.type	gimp_clipboard_get_svg,@function
gimp_clipboard_get_svg:                 # @gimp_clipboard_get_svg
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_clipboard_get_svg, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_29
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB11_15
# BB#14:                                # %if.then.13
	jmp	.LBB11_16
.LBB11_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_clipboard_get_svg, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_29
.LBB11_16:                              # %if.end.15
	jmp	.LBB11_17
.LBB11_17:                              # %do.end.16
	callq	gdk_display_get_default
	movl	$69, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_clipboard_get_for_display
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB11_25
# BB#18:                                # %land.lhs.true.20
	movq	-40(%rbp), %rdi
	callq	gtk_clipboard_get_owner
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB11_25
# BB#19:                                # %land.lhs.true.24
	movq	-16(%rbp), %rdi
	callq	gimp_clipboard_wait_for_svg
	movq	%rax, -48(%rbp)
	cmpq	$0, %rax
	je	.LBB11_25
# BB#20:                                # %if.then.27
	movq	-16(%rbp), %rdi
	callq	gimp_set_busy
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_clipboard_wait_for_contents
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB11_24
# BB#21:                                # %if.then.31
	movq	-88(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_selection_data_get_stream
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB11_23
# BB#22:                                # %if.then.35
	movq	-96(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	g_memdup
	movq	%rax, -56(%rbp)
.LBB11_23:                              # %if.end.37
	movq	-88(%rbp), %rdi
	callq	gtk_selection_data_free
.LBB11_24:                              # %if.end.38
	movq	-16(%rbp), %rdi
	callq	gimp_unset_busy
.LBB11_25:                              # %if.end.39
	movq	-16(%rbp), %rdi
	callq	gimp_clipboard_get
	movq	%rax, -32(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB11_28
# BB#26:                                # %land.lhs.true.42
	movq	-32(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB11_28
# BB#27:                                # %if.then.45
	movq	-32(%rbp), %rax
	movq	64(%rax), %rdi
	callq	g_strdup
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	strlen
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB11_28:                              # %if.end.49
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB11_29:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_clipboard_get_svg, .Lfunc_end11-gimp_clipboard_get_svg
	.cfi_endproc

	.globl	gimp_clipboard_get_curve
	.align	16, 0x90
	.type	gimp_clipboard_get_curve,@function
gimp_clipboard_get_curve:               # @gimp_clipboard_get_curve
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_clipboard_get_curve, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_22
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	callq	gdk_display_get_default
	movl	$69, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_clipboard_get_for_display
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB12_18
# BB#13:                                # %land.lhs.true.14
	movq	-32(%rbp), %rdi
	callq	gtk_clipboard_get_owner
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB12_18
# BB#14:                                # %land.lhs.true.18
	movq	-16(%rbp), %rdi
	callq	gimp_clipboard_wait_for_curve
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB12_18
# BB#15:                                # %if.then.21
	movq	-16(%rbp), %rdi
	callq	gimp_set_busy
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gtk_clipboard_wait_for_contents
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB12_17
# BB#16:                                # %if.then.25
	movq	-80(%rbp), %rdi
	callq	gimp_selection_data_get_curve
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rdi
	callq	gtk_selection_data_free
.LBB12_17:                              # %if.end.27
	movq	-16(%rbp), %rdi
	callq	gimp_unset_busy
.LBB12_18:                              # %if.end.28
	movq	-16(%rbp), %rdi
	callq	gimp_clipboard_get
	movq	%rax, -24(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB12_21
# BB#19:                                # %land.lhs.true.31
	movq	-24(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB12_21
# BB#20:                                # %if.then.34
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	%rax, -48(%rbp)
.LBB12_21:                              # %if.end.37
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB12_22:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_clipboard_get_curve, .Lfunc_end12-gimp_clipboard_get_curve
	.cfi_endproc

	.globl	gimp_clipboard_set_buffer
	.align	16, 0x90
	.type	gimp_clipboard_set_buffer,@function
gimp_clipboard_set_buffer:              # @gimp_clipboard_set_buffer
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_clipboard_set_buffer, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_34
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB13_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_buffer_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB13_16
# BB#15:                                # %if.then.21
	movl	$0, -76(%rbp)
	jmp	.LBB13_21
.LBB13_16:                              # %if.else.22
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_19
# BB#17:                                # %land.lhs.true.25
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB13_19
# BB#18:                                # %if.then.29
	movl	$1, -76(%rbp)
	jmp	.LBB13_20
.LBB13_19:                              # %if.else.30
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB13_20:                              # %if.end.32
	jmp	.LBB13_21
.LBB13_21:                              # %if.end.33
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB13_23
.LBB13_22:                              # %if.then.36
	jmp	.LBB13_24
.LBB13_23:                              # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_clipboard_set_buffer, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_34
.LBB13_24:                              # %if.end.38
	jmp	.LBB13_25
.LBB13_25:                              # %do.end.39
	callq	gdk_display_get_default
	movl	$69, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_clipboard_get_for_display
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_27
# BB#26:                                # %if.then.43
	jmp	.LBB13_34
.LBB13_27:                              # %if.end.44
	movq	-8(%rbp), %rdi
	callq	gimp_clipboard_get
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_clipboard_clear
	cmpq	$0, -16(%rbp)
	je	.LBB13_31
# BB#28:                                # %if.then.47
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movq	%rax, 56(%rdi)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	16(%rdx), %edx
	movq	-8(%rbp), %r8
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%edx, -100(%rbp)        # 4-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$gimp_clipboard_send_buffer, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movl	-100(%rbp), %edx        # 4-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r9
	callq	gtk_clipboard_set_with_owner
	movq	-24(%rbp), %rcx
	cmpl	$0, 16(%rcx)
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jle	.LBB13_30
# BB#29:                                # %if.then.54
	movl	$1, %edx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	callq	gtk_clipboard_set_can_store
.LBB13_30:                              # %if.end.56
	jmp	.LBB13_34
.LBB13_31:                              # %if.else.57
	movq	-32(%rbp), %rdi
	callq	gtk_clipboard_get_owner
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movq	-128(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB13_33
# BB#32:                                # %if.then.61
	movq	-32(%rbp), %rdi
	callq	gtk_clipboard_clear
.LBB13_33:                              # %if.end.62
	jmp	.LBB13_34
.LBB13_34:                              # %if.end.63
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_clipboard_set_buffer, .Lfunc_end13-gimp_clipboard_set_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_clipboard_clear,@function
gimp_clipboard_clear:                   # @gimp_clipboard_clear
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
	cmpq	$0, 56(%rdi)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
.LBB14_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB14_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
.LBB14_4:                               # %if.end.7
	movq	-8(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB14_6
# BB#5:                                 # %if.then.9
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
.LBB14_6:                               # %if.end.12
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_clipboard_clear, .Lfunc_end14-gimp_clipboard_clear
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_clipboard_send_buffer,@function
gimp_clipboard_send_buffer:             # @gimp_clipboard_send_buffer
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_clipboard_get
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_set_busy
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_get_user_context
	movq	-40(%rbp), %rcx
	movq	56(%rcx), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_buffer_get_width
	movq	-40(%rbp), %rcx
	movq	56(%rcx), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_buffer_get_height
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movl	-76(%rbp), %edx         # 4-byte Reload
	movl	%eax, %ecx
	callq	gimp_viewable_get_pixbuf
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB15_4
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB15_3
# BB#2:                                 # %if.then.10
	movabsq	$.L.str.18, %rdi
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	shlq	$4, %rcx
	addq	8(%rdx), %rcx
	movq	(%rcx), %rsi
	movb	$0, %al
	callq	g_printerr
.LBB15_3:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_selection_data_set_pixbuf
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB15_5
.LBB15_4:                               # %if.else
	movabsq	$.L.str.19, %rdi
	movabsq	$.L__func__.gimp_clipboard_send_buffer, %rsi
	movb	$0, %al
	callq	g_warning
.LBB15_5:                               # %if.end.12
	movq	-32(%rbp), %rdi
	callq	gimp_unset_busy
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_clipboard_send_buffer, .Lfunc_end15-gimp_clipboard_send_buffer
	.cfi_endproc

	.globl	gimp_clipboard_set_svg
	.align	16, 0x90
	.type	gimp_clipboard_set_svg,@function
gimp_clipboard_set_svg:                 # @gimp_clipboard_set_svg
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_clipboard_set_svg, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_19
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	callq	gdk_display_get_default
	movl	$69, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_clipboard_get_for_display
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB16_14
# BB#13:                                # %if.then.14
	jmp	.LBB16_19
.LBB16_14:                              # %if.end.15
	movq	-8(%rbp), %rdi
	callq	gimp_clipboard_get
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_clipboard_clear
	cmpq	$0, -16(%rbp)
	je	.LBB16_16
# BB#15:                                # %if.then.18
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movq	%rax, 64(%rdi)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	32(%rdx), %edx
	movq	-8(%rbp), %r8
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%edx, -76(%rbp)         # 4-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$gimp_clipboard_send_svg, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%r9, %rsi
	movl	-76(%rbp), %edx         # 4-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r9
	callq	gtk_clipboard_set_with_owner
	movl	$1, %edx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	24(%rcx), %rsi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gtk_clipboard_set_can_store
	jmp	.LBB16_19
.LBB16_16:                              # %if.else.24
	movq	-32(%rbp), %rdi
	callq	gtk_clipboard_get_owner
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB16_18
# BB#17:                                # %if.then.28
	movq	-32(%rbp), %rdi
	callq	gtk_clipboard_clear
.LBB16_18:                              # %if.end.29
	jmp	.LBB16_19
.LBB16_19:                              # %if.end.30
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_clipboard_set_svg, .Lfunc_end16-gimp_clipboard_set_svg
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_clipboard_send_svg,@function
gimp_clipboard_send_svg:                # @gimp_clipboard_send_svg
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_clipboard_get
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_set_busy
	movq	-40(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB17_4
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB17_3
# BB#2:                                 # %if.then.2
	movabsq	$.L.str.20, %rdi
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	shlq	$4, %rcx
	addq	24(%rdx), %rcx
	movq	(%rcx), %rsi
	movb	$0, %al
	callq	g_printerr
.LBB17_3:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_selection_data_set_stream
.LBB17_4:                               # %if.end.6
	movq	-32(%rbp), %rdi
	callq	gimp_unset_busy
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_clipboard_send_svg, .Lfunc_end17-gimp_clipboard_send_svg
	.cfi_endproc

	.globl	gimp_clipboard_set_text
	.align	16, 0x90
	.type	gimp_clipboard_set_text,@function
gimp_clipboard_set_text:                # @gimp_clipboard_set_text
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_clipboard_set_text, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_21
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	jmp	.LBB18_13
.LBB18_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB18_15
# BB#14:                                # %if.then.13
	jmp	.LBB18_16
.LBB18_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_clipboard_set_text, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_21
.LBB18_16:                              # %if.end.15
	jmp	.LBB18_17
.LBB18_17:                              # %do.end.16
	movq	-8(%rbp), %rdi
	callq	gimp_clipboard_get
	movq	%rax, %rdi
	callq	gimp_clipboard_clear
	callq	gdk_display_get_default
	movl	$69, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_clipboard_get_for_display
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB18_19
# BB#18:                                # %if.then.21
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gtk_clipboard_set_text
.LBB18_19:                              # %if.end.22
	callq	gdk_display_get_default
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_clipboard_get_for_display
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB18_21
# BB#20:                                # %if.then.26
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gtk_clipboard_set_text
.LBB18_21:                              # %if.end.27
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_clipboard_set_text, .Lfunc_end18-gimp_clipboard_set_text
	.cfi_endproc

	.globl	gimp_clipboard_set_curve
	.align	16, 0x90
	.type	gimp_clipboard_set_curve,@function
gimp_clipboard_set_curve:               # @gimp_clipboard_set_curve
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_clipboard_set_curve, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_32
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	jmp	.LBB19_13
.LBB19_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB19_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_curve_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB19_16
# BB#15:                                # %if.then.21
	movl	$0, -76(%rbp)
	jmp	.LBB19_21
.LBB19_16:                              # %if.else.22
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_19
# BB#17:                                # %land.lhs.true.25
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB19_19
# BB#18:                                # %if.then.29
	movl	$1, -76(%rbp)
	jmp	.LBB19_20
.LBB19_19:                              # %if.else.30
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB19_20:                              # %if.end.32
	jmp	.LBB19_21
.LBB19_21:                              # %if.end.33
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB19_23
.LBB19_22:                              # %if.then.36
	jmp	.LBB19_24
.LBB19_23:                              # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_clipboard_set_curve, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_32
.LBB19_24:                              # %if.end.38
	jmp	.LBB19_25
.LBB19_25:                              # %do.end.39
	callq	gdk_display_get_default
	movl	$69, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_clipboard_get_for_display
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB19_27
# BB#26:                                # %if.then.43
	jmp	.LBB19_32
.LBB19_27:                              # %if.end.44
	movq	-8(%rbp), %rdi
	callq	gimp_clipboard_get
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_clipboard_clear
	cmpq	$0, -16(%rbp)
	je	.LBB19_29
# BB#28:                                # %if.then.47
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movq	%rax, 72(%rdi)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	48(%rdx), %edx
	movq	-8(%rbp), %r8
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%edx, -100(%rbp)        # 4-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$gimp_clipboard_send_curve, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movl	-100(%rbp), %edx        # 4-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r9
	callq	gtk_clipboard_set_with_owner
	movl	$1, %edx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	40(%rcx), %rsi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gtk_clipboard_set_can_store
	jmp	.LBB19_32
.LBB19_29:                              # %if.else.53
	movq	-32(%rbp), %rdi
	callq	gtk_clipboard_get_owner
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movq	-128(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB19_31
# BB#30:                                # %if.then.57
	movq	-32(%rbp), %rdi
	callq	gtk_clipboard_clear
.LBB19_31:                              # %if.end.58
	jmp	.LBB19_32
.LBB19_32:                              # %if.end.59
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_clipboard_set_curve, .Lfunc_end19-gimp_clipboard_set_curve
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_clipboard_send_curve,@function
gimp_clipboard_send_curve:              # @gimp_clipboard_send_curve
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_clipboard_get
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_set_busy
	movq	-40(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB20_4
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB20_3
# BB#2:                                 # %if.then.2
	movabsq	$.L.str.21, %rdi
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	shlq	$4, %rcx
	addq	40(%rdx), %rcx
	movq	(%rcx), %rsi
	movb	$0, %al
	callq	g_printerr
.LBB20_3:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	72(%rax), %rsi
	callq	gimp_selection_data_set_curve
.LBB20_4:                               # %if.end.4
	movq	-32(%rbp), %rdi
	callq	gimp_unset_busy
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_clipboard_send_curve, .Lfunc_end20-gimp_clipboard_send_curve
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_clipboard_wait_for_targets,@function
gimp_clipboard_wait_for_targets:        # @gimp_clipboard_wait_for_targets
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
	movq	%rsi, -24(%rbp)
	callq	gdk_display_get_default
	movl	$69, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_clipboard_get_for_display
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB21_12
# BB#1:                                 # %if.then
	movabsq	$.L.str.15, %rdi
	callq	gdk_atom_intern_static_string
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_clipboard_wait_for_contents
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB21_11
# BB#2:                                 # %if.then.5
	leaq	-56(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	gtk_selection_data_get_targets
	movl	%eax, -60(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_selection_data_free
	cmpl	$0, -60(%rbp)
	je	.LBB21_10
# BB#3:                                 # %if.then.8
	movq	-16(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB21_9
# BB#4:                                 # %if.then.10
	movl	$0, -64(%rbp)
.LBB21_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB21_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB21_5 Depth=1
	movslq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	gdk_atom_name
	movabsq	$.L.str.16, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_printerr
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB21_5 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB21_5
.LBB21_8:                               # %for.end
	movabsq	$.L.str.17, %rdi
	movb	$0, %al
	callq	g_printerr
.LBB21_9:                               # %if.end
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB21_13
.LBB21_10:                              # %if.end.12
	jmp	.LBB21_11
.LBB21_11:                              # %if.end.13
	jmp	.LBB21_12
.LBB21_12:                              # %if.end.14
	movq	$0, -8(%rbp)
.LBB21_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_clipboard_wait_for_targets, .Lfunc_end21-gimp_clipboard_wait_for_targets
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB22_2
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
.LBB22_2:                               # %entry
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
.Lfunc_end22:
	.size	g_warning, .Lfunc_end22-g_warning
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Widgets"
	.size	.L.str, 13

	.type	.L__func__.gimp_clipboard_init,@object # @__func__.gimp_clipboard_init
.L__func__.gimp_clipboard_init:
	.asciz	"gimp_clipboard_init"
	.size	.L__func__.gimp_clipboard_init, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp_clip == NULL"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-clipboard"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"clipboard: writable pixbuf format: %s\n"
	.size	.L.str.4, 39

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"image/svg"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"image/svg+xml"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"application/x-gimp-curve"
	.size	.L.str.7, 25

	.type	.L__func__.gimp_clipboard_exit,@object # @__func__.gimp_clipboard_exit
.L__func__.gimp_clipboard_exit:
	.asciz	"gimp_clipboard_exit"
	.size	.L__func__.gimp_clipboard_exit, 20

	.type	.L__func__.gimp_clipboard_has_buffer,@object # @__func__.gimp_clipboard_has_buffer
.L__func__.gimp_clipboard_has_buffer:
	.asciz	"gimp_clipboard_has_buffer"
	.size	.L__func__.gimp_clipboard_has_buffer, 26

	.type	.L__func__.gimp_clipboard_has_svg,@object # @__func__.gimp_clipboard_has_svg
.L__func__.gimp_clipboard_has_svg:
	.asciz	"gimp_clipboard_has_svg"
	.size	.L__func__.gimp_clipboard_has_svg, 23

	.type	.L__func__.gimp_clipboard_has_curve,@object # @__func__.gimp_clipboard_has_curve
.L__func__.gimp_clipboard_has_curve:
	.asciz	"gimp_clipboard_has_curve"
	.size	.L__func__.gimp_clipboard_has_curve, 25

	.type	.L__func__.gimp_clipboard_get_buffer,@object # @__func__.gimp_clipboard_get_buffer
.L__func__.gimp_clipboard_get_buffer:
	.asciz	"gimp_clipboard_get_buffer"
	.size	.L__func__.gimp_clipboard_get_buffer, 26

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Clipboard"
	.size	.L.str.8, 10

	.type	.L__func__.gimp_clipboard_get_svg,@object # @__func__.gimp_clipboard_get_svg
.L__func__.gimp_clipboard_get_svg:
	.asciz	"gimp_clipboard_get_svg"
	.size	.L__func__.gimp_clipboard_get_svg, 23

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"svg_length != NULL"
	.size	.L.str.9, 19

	.type	.L__func__.gimp_clipboard_get_curve,@object # @__func__.gimp_clipboard_get_curve
.L__func__.gimp_clipboard_get_curve:
	.asciz	"gimp_clipboard_get_curve"
	.size	.L__func__.gimp_clipboard_get_curve, 25

	.type	.L__func__.gimp_clipboard_set_buffer,@object # @__func__.gimp_clipboard_set_buffer
.L__func__.gimp_clipboard_set_buffer:
	.asciz	"gimp_clipboard_set_buffer"
	.size	.L__func__.gimp_clipboard_set_buffer, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"buffer == NULL || GIMP_IS_BUFFER (buffer)"
	.size	.L.str.10, 42

	.type	.L__func__.gimp_clipboard_set_svg,@object # @__func__.gimp_clipboard_set_svg
.L__func__.gimp_clipboard_set_svg:
	.asciz	"gimp_clipboard_set_svg"
	.size	.L__func__.gimp_clipboard_set_svg, 23

	.type	.L__func__.gimp_clipboard_set_text,@object # @__func__.gimp_clipboard_set_text
.L__func__.gimp_clipboard_set_text:
	.asciz	"gimp_clipboard_set_text"
	.size	.L__func__.gimp_clipboard_set_text, 24

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"text != NULL"
	.size	.L.str.11, 13

	.type	.L__func__.gimp_clipboard_set_curve,@object # @__func__.gimp_clipboard_set_curve
.L__func__.gimp_clipboard_set_curve:
	.asciz	"gimp_clipboard_set_curve"
	.size	.L__func__.gimp_clipboard_set_curve, 25

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"curve == NULL || GIMP_IS_CURVE (curve)"
	.size	.L.str.12, 39

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"clipboard: checking pixbuf format '%s'\n"
	.size	.L.str.13, 40

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"  - checking mime type '%s'\n"
	.size	.L.str.14, 29

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"TARGETS"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"clipboard: offered type: %s\n"
	.size	.L.str.16, 29

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"\n"
	.size	.L.str.17, 2

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"clipboard: sending pixbuf data as '%s'\n"
	.size	.L.str.18, 40

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%s: gimp_viewable_get_pixbuf() failed"
	.size	.L.str.19, 38

	.type	.L__func__.gimp_clipboard_send_buffer,@object # @__func__.gimp_clipboard_send_buffer
.L__func__.gimp_clipboard_send_buffer:
	.asciz	"gimp_clipboard_send_buffer"
	.size	.L__func__.gimp_clipboard_send_buffer, 27

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"clipboard: sending SVG data as '%s'\n"
	.size	.L.str.20, 37

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"clipboard: sending curve data as '%s'\n"
	.size	.L.str.21, 39


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
