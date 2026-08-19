@echo off
:: Verifica se o script está rodando como Administrador
net session >nul 2>&1
if %errorLevel% == 0 (
    goto :init
) else (
    echo.
    echo ============================================================
    echo ERRO: ESTE SCRIPT PRECISA DE PERMISSOES DE ADMINISTRADOR.
    echo Por favor, clique com o botao direito e selecione "Executar como Administrador".
    echo ============================================================
    echo.
    pause
    exit /b
)

:init
cls
echo ============================================================
echo      Restaurar Menu de Contexto Classico no Windows 11     
echo ============================================================
echo.
echo Este script vai configurar o Windows Explorer para mostrar
echo sempre o menu completo (estilo Windows 10) ao clicar com o
echo botao direito em arquivos ou pastas.
echo.
pause

:: Adiciona a chave de registro para restaurar o menu clássico
reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve >nul

if %errorLevel% == 0 (
    echo.
    echo [SUCESSO] Registro atualizado com sucesso.
    echo Reiniciando o Windows Explorer para aplicar as alteracoes...
    
    :: Reinicia o Windows Explorer
    taskkill /f /im explorer.exe >nul
    start explorer.exe
    
    echo.
    echo [CONCLUIDO] O menu de contexto completo ja esta ativo!
) else (
    echo.
    echo [ERRO] Nao foi possivel aplicar as alteracoes no registro.
)

echo.
pause
exit
