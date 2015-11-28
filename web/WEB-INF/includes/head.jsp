<!-- Arquivo head.jsp que cont�m o c�digo referente a tag <head> -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script type="text/javascript">

    function validarEmail(email) {
        var filtro = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
        if (filtro.test(email)) {
            return true;
        }
        return false;
    }

    function validarTamanho(texto, num) {
        if (texto.length < num) {
            return false;
        } else {
            return true;
        }
    }

    function validarVazio(texto) {
        if (texto === '') {
            return false;
        } else {
            return true;
        }
    }

    function validar() {
        
        
        var login = document.getElementById("apelido1").value;
        var senha = document.getElementById("senha1").value;

        if (!validarVazio(login)) {
            alert('Campo apelido/email � obrigatorio');
            return false;
        }

        if (!validarVazio(senha)) {
            alert('Campo senha � obrigatorio');
            return false;
        }
        if (!validarTamanho(login, 8)) {
            if (!validarEmail(login)) {
                alert('O campo apelido/email deve ser um email v�lido ou um apelido de no minimo 8 caracteres');
                return false;
            }            
        }
        if (!validarTamanho(senha, 8)) {
            alert('Senha deve ter no minimo 8 caracteres');
            return false;
        }
        return true;
    }
</script>
<meta charset="utf-8" />
<style type="text/css">
    .erro {
        color: red;
        font-weight: bold;
        font-size: 20px;
    }
    table { border-collapse: collapse; }
    table, th, td { border: 1px solid black; }
    th, td { padding: 5px; }
</style>    