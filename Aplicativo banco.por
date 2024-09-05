programa
{
	
	funcao inicio()
	{
		real saldo = 0.0, valor
		inteiro tipo = 0
		cadeia extrato = ""
		cadeia senha = "abc"
		cadeia senhatemp = ""
		cadeia sair = ""

		enquanto(tipo != 4){
			escreva("-----MENU-----\n")
			escreva("|Saque - 1   |\n")
			escreva("|Depósito - 2|\n")
			escreva("|Extrato - 3 |\n")
			escreva("|Sair - 4    |\n")
			escreva("--------------\n")
			leia(tipo)

			escolha(tipo){

			caso 1:
			
				limpa()
				escreva("Digite sua senha: ")
				leia(senhatemp)
				se(senhatemp == senha){
				escreva("Quanto você deseja sacar? \n")
				leia(valor)
				}senao{
					limpa()
					escreva("Senha Inválida\n")
					pare
				}

				se(saldo > valor e valor > 0){
					saldo = saldo - valor
					limpa()
					escreva("Seu saldo foi alterado com sucesso. Seu novo saldo é de R$", saldo, "\n")
					extrato = extrato + "saque---R$" + valor + "\n"
				}senao{
					limpa()
					escreva("Seu saldo não é suficiente ou o valor é inválido, tente novamente. \n")
				}pare

				
			caso 2:
				limpa()
				escreva("Digite sua senha: ")
				leia(senhatemp)
				se(senhatemp == senha){
					escreva("Quanto você deseja depositar? \n")
					leia(valor)
	
					se(valor > 0){
					saldo = saldo + valor
					limpa()
					escreva("Seu saldo foi alterado com sucesso. Seu novo saldo é de R$", saldo, "\n")
					extrato = extrato + "depósito---R$" + valor + "\n"
					}senao{
						limpa()
						escreva("Valor inválido, tente novamente. \n")
					}
				}senao{
					limpa()
					escreva("Senha Inválida")
					pare
				}pare
				
				
			caso 3:
			limpa()
				escreva("Digite sua senha: ")
				leia(senhatemp)
				se(senhatemp == senha){
					limpa()
					escreva(extrato)
					escreva("\npressione enter para continuar")
					leia(sair)
					limpa()	
				}senao{
					limpa()
					escreva("Senha Inválida")
				}pare			
				
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1763; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */