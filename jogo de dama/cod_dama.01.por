programa
{
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	inclua biblioteca Teclado --> t
	
	const inteiro LARGURA_JANELA = 700
	const inteiro ALTURA_JANELA = 700
	inteiro dama =g.carregar_imagem("jogo_dama.jpg")
	cadeia tabuleiro [8][8]
	
	funcao inicio(){
		
		 monta_janela()
		 enquanto(verdadeiro){
		 	
		 	//pedra()
		 	lado_branco()
		 	lado_preto()
		 	imagen()
		 	g.renderizar()
		 	}
	}
	funcao monta_janela(){
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(LARGURA_JANELA, ALTURA_JANELA)
		g.definir_titulo_janela("dama game")
		}
	funcao imagen(){
		g.desenhar_imagem(0, 0, dama)
		}
		//funcao pedra(){
		//g.definir_cor(g.COR_PRETO)
		//g.desenhar_retangulo(87,86,35,35,falso,verdadeiro)
		//}
		funcao lado_branco (){

		para(inteiro i =0 ;i<3; i++){
			para(inteiro c=0; c<8; c++){
				
			se(i % 2==0 e c % 2==0){
				tabuleiro [i][c] = "X"
			}
			se(i % 2==1 e c % 2==1){
				tabuleiro[i][c]= "X"
						}
						
					}
				}
			}
		funcao lado_preto (){

		para(inteiro i =0 ;i>4; i++){
			para(inteiro c=0; c<8; c++){
				
			se(i % 2==0 e c % 2==0){
				tabuleiro [i][c] = "O"
			}
			se(i % 2==1 e c % 2==1){
				tabuleiro[i][c]= "O"
						}
						
					}
				}
			}
}	


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 869; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {tabuleiro, 10, 8, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */