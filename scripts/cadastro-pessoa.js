// Função para verificar se o campo está completamente preenchido
function campoCompleto(valor, mascara) {
    const digitosNecessarios = mascara.replace(/\D/g, '').length;
    const digitosAtual = valor.replace(/\D/g, '').length;
    return digitosAtual === digitosNecessarios;
}

// Função para aplicar uma máscara a um campo de input
function aplicarMascara(input, mascara) {
    // Adiciona um event listener para o evento 'input'
    input.addEventListener('input', function(e) {
        // Obtém o valor atual e a posição do cursor no input
        const { value, selectionStart } = e.target;

        // Verifica se o campo está completamente preenchido
        if (campoCompleto(value, mascara)) {
            // Remove caracteres não numéricos do valor do input
            let unmaskedValue = value.replace(/\D/g, '');
            // Inicializa a string que conterá o valor mascarado
            let maskedValue = '';
            // Inicializa um índice para percorrer os dígitos não mascarados
            let unmaskedIndex = 0;
            // Converte a máscara em um array para facilitar a iteração
            let maskArray = mascara.split('');

            // Itera sobre cada caractere da máscara
            for (let m of maskArray) {
                // Se o caractere não for '9'
                if (m !== '9') {
                    // Caso contrário, mantém o caractere da máscara
                    maskedValue += m;
                } else {
                    // Se for '9', adiciona o próximo dígito não mascarado
                    if (unmaskedValue.length > unmaskedIndex) {
                        maskedValue += unmaskedValue.charAt(unmaskedIndex);
                        unmaskedIndex++;
                    }
                }
            }

            // Atualiza o valor do input com a máscara aplicada
            input.value = maskedValue;
        } else {
            // Se o campo não estiver completamente preenchido, remove a máscara
            input.value = value.replace(/\D/g, '');
        }
    });
}





document.addEventListener("DOMContentLoaded", function () {
    // Aplicar máscara durante a digitação para CPF
    const cpfInput = document.getElementById("cpf");
    aplicarMascara(cpfInput, "999.999.999-99");

    // Aplicar máscara durante a digitação para RG
    const rgInput = document.getElementById("rg");
    aplicarMascara(rgInput, "99.999.999-9");

    // Aplicar máscara durante a digitação para Telefone
    const telefoneInput = document.getElementById("telefone");
    aplicarMascara(telefoneInput, "(99) 99999-9999");

    // Aplicar máscara durante a digitação para CEP
    const cepInput = document.getElementById("cep");
    aplicarMascara(cepInput,"99999-999");
});