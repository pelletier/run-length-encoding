	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.intel_syntax noprefix
	.globl	_write_integer_base10
	.p2align	4, 0x90
_write_integer_base10:                  ## @write_integer_base10
	.cfi_startproc
## BB#0:
	push	rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Lcfi2:
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	lea	rax, [rbp - 18]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 8], rcx
	mov	dword ptr [rbp - 24], edi
	add	rax, 9
	mov	qword ptr [rbp - 32], rax
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 24], 0
	jbe	LBB0_4
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, 10
	mov	ecx, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	eax, ecx
	xor	edx, edx
	mov	ecx, dword ptr [rbp - 36] ## 4-byte Reload
	div	ecx
	add	edx, 48
	mov	sil, dl
	mov	rdi, qword ptr [rbp - 32]
	mov	byte ptr [rdi], sil
	mov	edx, dword ptr [rbp - 24]
	mov	eax, edx
	xor	edx, edx
	div	ecx
	mov	dword ptr [rbp - 24], eax
## BB#3:                                ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 32]
	add	rax, -1
	mov	qword ptr [rbp - 32], rax
	jmp	LBB0_1
LBB0_4:
	mov	edi, 1
	lea	rax, [rbp - 18]
	mov	rcx, qword ptr [rbp - 32]
	add	rcx, 1
	add	rax, 9
	mov	rdx, qword ptr [rbp - 32]
	sub	rax, rdx
	mov	rsi, rcx
	mov	rdx, rax
	call	_write
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	qword ptr [rbp - 48], rax ## 8-byte Spill
	jne	LBB0_6
## BB#5:
	add	rsp, 48
	pop	rbp
	ret
LBB0_6:
	call	___stack_chk_fail
	.cfi_endproc

	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	push	rbp
Lcfi3:
	.cfi_def_cfa_offset 16
Lcfi4:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Lcfi5:
	.cfi_def_cfa_register rbp
	sub	rsp, 2144
	mov	eax, 1
	mov	esi, eax
	mov	eax, 2048
	mov	edx, eax
	mov	rcx, qword ptr [rip + ___stdinp@GOTPCREL]
	lea	rdi, [rbp - 2064]
	mov	r8, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	r8, qword ptr [r8]
	mov	qword ptr [rbp - 8], r8
	mov	dword ptr [rbp - 2068], 0
	mov	byte ptr [rbp - 2069], 0
	mov	dword ptr [rbp - 2076], 0
	mov	byte ptr [rbp - 16], 0
	mov	qword ptr [rbp - 2088], rdi
	mov	qword ptr [rbp - 2096], 0
	mov	rcx, qword ptr [rcx]
	call	_fread
	mov	qword ptr [rbp - 2096], rax
	mov	rax, qword ptr [rbp - 2096]
	mov	byte ptr [rbp + rax - 2064], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 2088]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 2097], cl
	movsx	edx, byte ptr [rbp - 2097]
	cmp	edx, 0
	jne	LBB1_5
## BB#2:                                ##   in Loop: Header=BB1_1 Depth=1
	cmp	qword ptr [rbp - 2096], 2048
	jae	LBB1_4
## BB#3:
	jmp	LBB1_11
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, 1
	mov	esi, eax
	mov	eax, 2048
	mov	edx, eax
	mov	rcx, qword ptr [rip + ___stdinp@GOTPCREL]
	lea	rdi, [rbp - 2064]
	mov	rcx, qword ptr [rcx]
	call	_fread
	lea	rcx, [rbp - 2064]
	mov	qword ptr [rbp - 2096], rax
	mov	rax, qword ptr [rbp - 2096]
	mov	byte ptr [rbp + rax - 2064], 0
	mov	qword ptr [rbp - 2088], rcx
	jmp	LBB1_1
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	movsx	eax, byte ptr [rbp - 2069]
	movsx	ecx, byte ptr [rbp - 2097]
	cmp	eax, ecx
	je	LBB1_9
## BB#6:                                ##   in Loop: Header=BB1_1 Depth=1
	cmp	dword ptr [rbp - 2076], 0
	jbe	LBB1_8
## BB#7:                                ##   in Loop: Header=BB1_1 Depth=1
	mov	edi, 1
	lea	rsi, [rbp - 2069]
	mov	eax, 1
	mov	edx, eax
	call	_write
	mov	edi, dword ptr [rbp - 2076]
	mov	qword ptr [rbp - 2112], rax ## 8-byte Spill
	call	_write_integer_base10
LBB1_8:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	al, byte ptr [rbp - 2097]
	mov	byte ptr [rbp - 2069], al
	mov	dword ptr [rbp - 2076], 1
	jmp	LBB1_10
LBB1_9:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 2076]
	add	eax, 1
	mov	dword ptr [rbp - 2076], eax
LBB1_10:                                ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 2088]
	add	rax, 1
	mov	qword ptr [rbp - 2088], rax
	jmp	LBB1_1
LBB1_11:
	mov	edi, 1
	lea	rsi, [rbp - 2069]
	mov	eax, 1
	mov	edx, eax
	call	_write
	mov	edi, dword ptr [rbp - 2076]
	mov	qword ptr [rbp - 2120], rax ## 8-byte Spill
	call	_write_integer_base10
	mov	edi, 1
	mov	ecx, 1
	mov	edx, ecx
	lea	rax, [rbp - 2064]
	mov	byte ptr [rbp - 2064], 10
	mov	rsi, rax
	call	_write
	mov	ecx, dword ptr [rbp - 2068]
	mov	rdx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, rsi
	mov	qword ptr [rbp - 2128], rax ## 8-byte Spill
	mov	dword ptr [rbp - 2132], ecx ## 4-byte Spill
	jne	LBB1_13
## BB#12:
	mov	eax, dword ptr [rbp - 2132] ## 4-byte Reload
	add	rsp, 2144
	pop	rbp
	ret
LBB1_13:
	call	___stack_chk_fail
	.cfi_endproc


.subsections_via_symbols
