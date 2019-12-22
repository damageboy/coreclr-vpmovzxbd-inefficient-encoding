; ================================================================================
; superfluous_mov.Program..cctor()
; 102 (0x66) bytes
; 23 (0x17) instructions

00007FD8B9930940 55                   push    rbp
00007FD8B9930941 4883EC10             sub     rsp,10h
00007FD8B9930945 488D6C2410           lea     rbp,[rsp+10h]
00007FD8B993094A 33C0                 xor     eax,eax
00007FD8B993094C 488945F8             mov     [rbp-8],rax
00007FD8B9930950 488945F0             mov     [rbp-10h],rax

;   static byte[] _leTable = {
;   ^^^^^^^^^^^^^^^^^^^^^^^^^^
;       0,1,2,3,4,5,6,7,
;       0,1,2,3,4,5,6,7,
;       0,1,2,3,4,5,6,7,
;       0,1,2,3,4,5,6,7,
;       0,1,2,3,4,5,6,7,
;       0,1,2,3,4,5,6,7,
;       0,1,2,3,4,5,6,7,
;       0,1,2,3,4,5,6,7,
;       0,1,2,3,4,5,6,7,
;       0,1,2,3,4,5,6,7,
;       0,1,2,3,4,5,6,7,
;       0,1,2,3,4,5,6,7,
;       0,1,2,3,4,5,6,7,
;       0,1,2,3,4,5,6,7,
;       0,1,2,3,4,5,6,7,
;       0,1,2,3,4,5,6,7,    };
00007FD8B9930954 48BFC0149BB9D87F0000 mov     rdi,offset methodtable(System.Byte[])
00007FD8B993095E BE80000000           mov     esi,80h
00007FD8B9930963 E828433879           call    CORINFO_HELP_NEWARR_1_VC
00007FD8B9930968 488945F8             mov     [rbp-8],rax
00007FD8B993096C 48BFC024AAB9D87F0000 mov     rdi,7FD8B9AA24C0h
00007FD8B9930976 E8A5723879           call    CORINFO_HELP_FIELDDESC_TO_STUBRUNTIMEFIELD
00007FD8B993097B 488945F0             mov     [rbp-10h],rax
00007FD8B993097F 488B7DF8             mov     rdi,[rbp-8]
00007FD8B9930983 488B75F0             mov     rsi,[rbp-10h]
00007FD8B9930987 E844C95C79           call    System.Runtime.CompilerServices.RuntimeHelpers.InitializeArray(System.Array, System.RuntimeFieldHandle)

00007FD8B993098C 48BFF00B00A4D87F0000 mov     rdi,7FD8A4000BF0h
00007FD8B9930996 488B75F8             mov     rsi,[rbp-8]
00007FD8B993099A E882584179           call    CORINFO_HELP_CHECKED_ASSIGN_REF

00007FD8B993099F 90                   nop
00007FD8B99309A0 488D6500             lea     rsp,[rbp]
00007FD8B99309A4 5D                   pop     rbp
00007FD8B99309A5 C3                   ret

; ================================================================================
; superfluous_mov.Program.BugBugBug()
; 323 (0x143) bytes
; 83 (0x53) instructions

00007FD8B99303D0 55                   push    rbp
00007FD8B99303D1 4157                 push    r15
00007FD8B99303D3 4156                 push    r14
00007FD8B99303D5 4155                 push    r13
00007FD8B99303D7 4154                 push    r12
00007FD8B99303D9 53                   push    rbx
00007FD8B99303DA 50                   push    rax
00007FD8B99303DB C5F877               vzeroupper
00007FD8B99303DE 488D6C2430           lea     rbp,[rsp+30h]
00007FD8B99303E3 33C0                 xor     eax,eax
00007FD8B99303E5 488945D0             mov     [rbp-30h],rax

;       var r = new Random(666);
00007FD8B99303E9 48BF1818AAB9D87F0000 mov     rdi,offset methodtable(System.Random)
00007FD8B99303F3 E828403879           call    CORINFO_HELP_NEWSFAST
00007FD8B99303F8 488BD8               mov     rbx,rax
00007FD8B99303FB 488BFB               mov     rdi,rbx
00007FD8B99303FE BE9A020000           mov     esi,29Ah
00007FD8B9930403 E8F0FEFFFF           call    System.Random..ctor(Int32)

00007FD8B9930408 48BFB8E19DB9D87F0000 mov     rdi,7FD8B99DE1B8h
00007FD8B9930412 BE01000000           mov     esi,1
00007FD8B9930417 E8E4624179           call    CORINFO_HELP_GETSHARED_NONGCSTATIC_BASE
00007FD8B993041C 48BFF00B00A4D87F0000 mov     rdi,7FD8A4000BF0h
00007FD8B9930426 488B3F               mov     rdi,[rdi]
00007FD8B9930429 837F0800             cmp     dword ptr [rdi+8],0
00007FD8B993042D 0F86DA000000         jbe     near ptr LBL_0
00007FD8B9930433 4883C710             add     rdi,10h
00007FD8B9930437 48897DD0             mov     [rbp-30h],rdi

;       fixed (byte *p = &_leTable[0]) {
;              ^^^^^^^^^^^^^^^^^^^^^^
00007FD8B993043B 4C8B75D0             mov     r14,[rbp-30h]
00007FD8B993043F 488BFB               mov     rdi,rbx
00007FD8B9930442 33F6                 xor     esi,esi
00007FD8B9930444 BA08000000           mov     edx,8
00007FD8B9930449 48B89818AAB9D87F0000 mov     rax,7FD8B9AA1898h
00007FD8B9930453 FF10                 call    qword ptr [rax]
00007FD8B9930455 4533FF               xor     r15d,r15d
00007FD8B9930458 F3440FB8F8           popcnt  r15d,eax
00007FD8B993045D 488BFB               mov     rdi,rbx
00007FD8B9930460 33F6                 xor     esi,esi
00007FD8B9930462 BA08000000           mov     edx,8
00007FD8B9930467 48B89818AAB9D87F0000 mov     rax,7FD8B9AA1898h
00007FD8B9930471 FF10                 call    qword ptr [rax]
00007FD8B9930473 4533E4               xor     r12d,r12d
00007FD8B9930476 F3440FB8E0           popcnt  r12d,eax
00007FD8B993047B 488BFB               mov     rdi,rbx
00007FD8B993047E 33F6                 xor     esi,esi
00007FD8B9930480 BA08000000           mov     edx,8
00007FD8B9930485 48B89818AAB9D87F0000 mov     rax,7FD8B9AA1898h
00007FD8B993048F FF10                 call    qword ptr [rax]
00007FD8B9930491 4533ED               xor     r13d,r13d
00007FD8B9930494 F3440FB8E8           popcnt  r13d,eax
00007FD8B9930499 488BFB               mov     rdi,rbx
00007FD8B993049C 33F6                 xor     esi,esi
00007FD8B993049E BA08000000           mov     edx,8
00007FD8B99304A3 48B89818AAB9D87F0000 mov     rax,7FD8B9AA1898h
00007FD8B99304AD FF10                 call    qword ptr [rax]
00007FD8B99304AF F30FB8C0             popcnt  eax,eax

;           x = Add(
;               ConvertToVector256Int32(p + i0 * 8), Add(
;                   ConvertToVector256Int32(p + i1 * 8), Add(
;                       ConvertToVector256Int32(p + i2 * 8),
;                           ConvertToVector256Int32(p + i3 * 8))));
00007FD8B99304B3 41C1E503             shl     r13d,3
00007FD8B99304B7 418BFD               mov     edi,r13d
00007FD8B99304BA C4C27D31043E         vpmovzxbd ymm0,[r14+rdi]
00007FD8B99304C0 C1E003               shl     eax,3
00007FD8B99304C3 C4C27D310C06         vpmovzxbd ymm1,[r14+rax]
00007FD8B99304C9 C5FDFEC1             vpaddd  ymm0,ymm0,ymm1
00007FD8B99304CD 41C1E403             shl     r12d,3
00007FD8B99304D1 418BC4               mov     eax,r12d
00007FD8B99304D4 C4C27D310C06         vpmovzxbd ymm1,[r14+rax]
00007FD8B99304DA C5F5FEC0             vpaddd  ymm0,ymm1,ymm0
00007FD8B99304DE 41C1E703             shl     r15d,3
00007FD8B99304E2 418BC7               mov     eax,r15d
00007FD8B99304E5 C4C27D310C06         vpmovzxbd ymm1,[r14+rax]
00007FD8B99304EB C5F5FEC0             vpaddd  ymm0,ymm1,ymm0

00007FD8B99304EF 33C0                 xor     eax,eax
00007FD8B99304F1 488945D0             mov     [rbp-30h],rax

;             return (uint) x.GetElement(0);
00007FD8B99304F5 C5F97EC0             vmovd   eax,xmm0
00007FD8B99304F9 8BC0                 mov     eax,eax

00007FD8B99304FB C5F877               vzeroupper
00007FD8B99304FE 488D65D8             lea     rsp,[rbp-28h]
00007FD8B9930502 5B                   pop     rbx
00007FD8B9930503 415C                 pop     r12
00007FD8B9930505 415D                 pop     r13
00007FD8B9930507 415E                 pop     r14
00007FD8B9930509 415F                 pop     r15
00007FD8B993050B 5D                   pop     rbp
00007FD8B993050C C3                   ret

LBL_0:
00007FD8B993050D E85EAA3879           call    CORINFO_HELP_RNGCHKFAIL
00007FD8B9930512 CC                   int     3

; ================================================================================
; superfluous_mov.Program.Main(System.String[])
; 39 (0x27) bytes
; 12 (0xC) instructions

00007FD8B9930390 55                   push    rbp
00007FD8B9930391 4883EC10             sub     rsp,10h
00007FD8B9930395 488D6C2410           lea     rbp,[rsp+10h]
00007FD8B993039A 48897DF8             mov     [rbp-8],rdi

;             Console.WriteLine(BugBugBug());
00007FD8B993039E E8F5BAFFFF           call    superfluous_mov.Program.BugBugBug()
00007FD8B99303A3 488BF8               mov     rdi,rax
00007FD8B99303A6 E82DFFFFFF           call    System.Console.WriteLine(UInt64)

;       Console.ReadLine();
00007FD8B99303AB E8C8FEFFFF           call    System.Console.ReadLine()

;         }
00007FD8B99303B0 90                   nop
00007FD8B99303B1 488D6500             lea     rsp,[rbp]
00007FD8B99303B5 5D                   pop     rbp
00007FD8B99303B6 C3                   ret
