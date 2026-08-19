# 🚀 Win11 Classic Menu Restorer

Aproveite ao máximo o fluxo de trabalho no Windows 11 trazendo de volta o menu de contexto clássico (completo) com apenas um clique! Este script em lote (`.bat`) elimina a necessidade de clicar em "Mostrar mais opções", economizando cliques desnecessários na sua rotina.

---

## ✨ Funcionalidades
* ⏱️ **Rápido e Prático:** Restaura o menu antigo instantaneamente (em menos de 3 segundos).
* 🔄 **Sem Necessidade de Reiniciar o PC:** Reinicia apenas o processo do Windows Explorer para aplicar as alterações.
* 🛡️ **Seguro:** Realiza modificações limpas e nativas nas chaves de registro do usuário atual.
* ↩️ **Fácil Reversão:** Acompanha comandos simples para voltar ao menu padrão quando você quiser.

---

## 🛠️ Como Usar

### Passo 1: Download do Script
Você pode clonar este repositório ou baixar diretamente o arquivo executável:
```bash
git clone https://github.com
```
*(Se preferir, basta baixar o arquivo `restaurar_menu_completo.bat` individualmente na lista de arquivos acima).*

### Passo 2: Execução
1. Localize o arquivo `restaurar_menu_completo.bat` no seu computador.
2. Clique com o **botão direito** sobre ele.
3. Selecione **Executar como Administrador** 🛡️.
4. Aguarde a janela do prompt fechar e sua barra de tarefas recarregar automaticamente. Pronto!

---

## ⚠️ Nota para Ambientes Corporativos
> [!IMPORTANT]  
> Algumas empresas bloqueiam a execução de scripts não autorizados por meio de políticas rígidas de segurança da informação (GPO). Se este computador pertencer à empresa onde você trabalha, consulte a sua equipe de TI local antes de realizar o procedimento. 😉💼

---

## 🔄 Como Desfazer (Voltar ao padrão do Windows 11)
Se por qualquer motivo você quiser retornar ao menu de contexto minimalista padrão do Windows 11, basta abrir o prompt de comando como administrador e rodar as linhas abaixo (ou colocá-las em um novo arquivo `.bat` de reversão):

```cmd
reg delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" /f
taskkill /f /im explorer.exe
start explorer.exe
```

## 📄 Licença
Este projeto está sob a licença [MIT](https://choosealicense.com) — fique totalmente à vontade para usar, modificar e compartilhar com a comunidade!
