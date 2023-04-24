# zig-c


```
➜  zig-c git:(master) objdump -d zig-out/bin/zig-c -Mintel 

zig-out/bin/zig-c:      file format mach-o 64-bit x86-64

Disassembly of section __TEXT,__text:

0000000100000580 <_main>:
100000580: 48 83 ec 18                  sub     rsp, 24
100000584: c5 f8 28 05 e4 01 00 00      vmovaps xmm0, xmmword ptr [rip + 484] ## 0x100000770 <dyld_stub_binder+0x100000770>
10000058c: c5 f8 29 04 24               vmovaps xmmword ptr [rsp], xmm0
100000591: c7 44 24 10 0a 00 00 00      mov     dword ptr [rsp + 16], 10
100000599: 48 89 e7                     mov     rdi, rsp
10000059c: be 05 00 00 00               mov     esi, 5
1000005a1: e8 1a 00 00 00               call    0x1000005c0 <_sum_array>
1000005a6: 48 8d 3d d7 01 00 00         lea     rdi, [rip + 471]        ## 0x100000784 <dyld_stub_binder+0x100000784>
1000005ad: 89 c6                        mov     esi, eax
1000005af: 31 c0                        xor     eax, eax
1000005b1: e8 99 01 00 00               call    0x10000074f <dyld_stub_binder+0x10000074f>
1000005b6: 31 c0                        xor     eax, eax
1000005b8: 48 83 c4 18                  add     rsp, 24
1000005bc: c3                           ret
1000005bd: 00 00                        add     byte ptr [rax], al
1000005bf: 00 48 85                     add     byte ptr [rax - 123], cl

00000001000005c0 <_sum_array>:
1000005c0: 48 85 f6                     test    rsi, rsi
1000005c3: 74 0f                        je      0x1000005d4 <_sum_array+0x14>
1000005c5: 48 83 fe 20                  cmp     rsi, 32
1000005c9: 73 0c                        jae     0x1000005d7 <_sum_array+0x17>
1000005cb: 31 c0                        xor     eax, eax
1000005cd: 31 c9                        xor     ecx, ecx
1000005cf: e9 6c 01 00 00               jmp     0x100000740 <_sum_array+0x180>
1000005d4: 31 c0                        xor     eax, eax
1000005d6: c3                           ret
1000005d7: 48 89 f1                     mov     rcx, rsi
1000005da: 48 83 e1 e0                  and     rcx, -32
1000005de: 48 8d 51 e0                  lea     rdx, [rcx - 32]
1000005e2: 48 89 d0                     mov     rax, rdx
1000005e5: 48 c1 e8 05                  shr     rax, 5
1000005e9: 48 ff c0                     inc     rax
1000005ec: 41 89 c0                     mov     r8d, eax
1000005ef: 41 83 e0 03                  and     r8d, 3
1000005f3: 48 83 fa 60                  cmp     rdx, 96
1000005f7: 73 17                        jae     0x100000610 <_sum_array+0x50>
1000005f9: c5 f9 ef c0                  vpxor   xmm0, xmm0, xmm0
1000005fd: 31 d2                        xor     edx, edx
1000005ff: c5 f1 ef c9                  vpxor   xmm1, xmm1, xmm1
100000603: c5 e9 ef d2                  vpxor   xmm2, xmm2, xmm2
100000607: c5 e1 ef db                  vpxor   xmm3, xmm3, xmm3
10000060b: e9 b1 00 00 00               jmp     0x1000006c1 <_sum_array+0x101>
100000610: 48 83 e0 fc                  and     rax, -4
100000614: c5 f9 ef c0                  vpxor   xmm0, xmm0, xmm0
100000618: 31 d2                        xor     edx, edx
10000061a: c5 f1 ef c9                  vpxor   xmm1, xmm1, xmm1
10000061e: c5 e9 ef d2                  vpxor   xmm2, xmm2, xmm2
100000622: c5 e1 ef db                  vpxor   xmm3, xmm3, xmm3
100000626: 66 2e 0f 1f 84 00 00 00 00 00        nop     word ptr cs:[rax + rax]
100000630: c5 fd fe 04 97               vpaddd  ymm0, ymm0, ymmword ptr [rdi + 4*rdx]
100000635: c5 f5 fe 4c 97 20            vpaddd  ymm1, ymm1, ymmword ptr [rdi + 4*rdx + 32]
10000063b: c5 ed fe 54 97 40            vpaddd  ymm2, ymm2, ymmword ptr [rdi + 4*rdx + 64]
100000641: c5 e5 fe 5c 97 60            vpaddd  ymm3, ymm3, ymmword ptr [rdi + 4*rdx + 96]
100000647: c5 fd fe 84 97 80 00 00 00   vpaddd  ymm0, ymm0, ymmword ptr [rdi + 4*rdx + 128]
100000650: c5 f5 fe 8c 97 a0 00 00 00   vpaddd  ymm1, ymm1, ymmword ptr [rdi + 4*rdx + 160]
100000659: c5 ed fe 94 97 c0 00 00 00   vpaddd  ymm2, ymm2, ymmword ptr [rdi + 4*rdx + 192]
100000662: c5 e5 fe 9c 97 e0 00 00 00   vpaddd  ymm3, ymm3, ymmword ptr [rdi + 4*rdx + 224]
10000066b: c5 fd fe 84 97 00 01 00 00   vpaddd  ymm0, ymm0, ymmword ptr [rdi + 4*rdx + 256]
100000674: c5 f5 fe 8c 97 20 01 00 00   vpaddd  ymm1, ymm1, ymmword ptr [rdi + 4*rdx + 288]
10000067d: c5 ed fe 94 97 40 01 00 00   vpaddd  ymm2, ymm2, ymmword ptr [rdi + 4*rdx + 320]
100000686: c5 e5 fe 9c 97 60 01 00 00   vpaddd  ymm3, ymm3, ymmword ptr [rdi + 4*rdx + 352]
10000068f: c5 fd fe 84 97 80 01 00 00   vpaddd  ymm0, ymm0, ymmword ptr [rdi + 4*rdx + 384]
100000698: c5 f5 fe 8c 97 a0 01 00 00   vpaddd  ymm1, ymm1, ymmword ptr [rdi + 4*rdx + 416]
1000006a1: c5 ed fe 94 97 c0 01 00 00   vpaddd  ymm2, ymm2, ymmword ptr [rdi + 4*rdx + 448]
1000006aa: c5 e5 fe 9c 97 e0 01 00 00   vpaddd  ymm3, ymm3, ymmword ptr [rdi + 4*rdx + 480]
1000006b3: 48 83 ea 80                  sub     rdx, -128
1000006b7: 48 83 c0 fc                  add     rax, -4
1000006bb: 0f 85 6f ff ff ff            jne     0x100000630 <_sum_array+0x70>
1000006c1: 4d 85 c0                     test    r8, r8
1000006c4: 74 3a                        je      0x100000700 <_sum_array+0x140>
1000006c6: 48 8d 04 97                  lea     rax, [rdi + 4*rdx]
1000006ca: 48 83 c0 60                  add     rax, 96
1000006ce: 49 c1 e0 07                  shl     r8, 7
1000006d2: 31 d2                        xor     edx, edx
1000006d4: 66 66 66 2e 0f 1f 84 00 00 00 00 00  nop     word ptr cs:[rax + rax]
1000006e0: c5 fd fe 44 10 a0            vpaddd  ymm0, ymm0, ymmword ptr [rax + rdx - 96]
1000006e6: c5 f5 fe 4c 10 c0            vpaddd  ymm1, ymm1, ymmword ptr [rax + rdx - 64]
1000006ec: c5 ed fe 54 10 e0            vpaddd  ymm2, ymm2, ymmword ptr [rax + rdx - 32]
1000006f2: c5 e5 fe 1c 10               vpaddd  ymm3, ymm3, ymmword ptr [rax + rdx]
1000006f7: 48 83 ea 80                  sub     rdx, -128
1000006fb: 49 39 d0                     cmp     r8, rdx
1000006fe: 75 e0                        jne     0x1000006e0 <_sum_array+0x120>
100000700: c5 f5 fe cb                  vpaddd  ymm1, ymm1, ymm3
100000704: c5 fd fe c2                  vpaddd  ymm0, ymm0, ymm2
100000708: c5 fd fe c1                  vpaddd  ymm0, ymm0, ymm1
10000070c: c4 e3 7d 39 c1 01            vextracti128    xmm1, ymm0, 1
100000712: c5 f9 fe c1                  vpaddd  xmm0, xmm0, xmm1
100000716: c5 f9 70 c8 ee               vpshufd xmm1, xmm0, 238         ## xmm1 = xmm0[2,3,2,3]
10000071b: c5 f9 fe c1                  vpaddd  xmm0, xmm0, xmm1
10000071f: c5 f9 70 c8 55               vpshufd xmm1, xmm0, 85          ## xmm1 = xmm0[1,1,1,1]
100000724: c5 f9 fe c1                  vpaddd  xmm0, xmm0, xmm1
100000728: c5 f9 7e c0                  vmovd   eax, xmm0
10000072c: 48 39 f1                     cmp     rcx, rsi
10000072f: 74 1a                        je      0x10000074b <_sum_array+0x18b>
100000731: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00 nop     word ptr cs:[rax + rax]
100000740: 03 04 8f                     add     eax, dword ptr [rdi + 4*rcx]
100000743: 48 ff c1                     inc     rcx
100000746: 48 39 ce                     cmp     rsi, rcx
100000749: 75 f5                        jne     0x100000740 <_sum_array+0x180>
10000074b: c5 f8 77                     vzeroupper
10000074e: c3                           ret

Disassembly of section __TEXT,__stubs:

000000010000074f <__stubs>:
10000074f: ff 25 ab 18 00 00            jmp     qword ptr [rip + 6315]  ## 0x100002000 <dyld_stub_binder+0x100002000>

Disassembly of section __TEXT,__stub_helper:

0000000100000755 <__stub_helper>:
100000755: 4c 8d 1d ac 18 00 00         lea     r11, [rip + 6316]       ## 0x100002008 <dyld_stub_binder+0x100002008>
10000075c: 41 53                        push    r11
10000075e: ff 25 9c 08 00 00            jmp     qword ptr [rip + 2204]  ## 0x100001000 <dyld_stub_binder+0x100001000>
100000764: 68 00 00 00 00               push    0
100000769: e9 e7 ff ff ff               jmp     0x100000755 <__stub_helper>
```