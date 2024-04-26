programa
{
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	inclua biblioteca Teclado --> t
	
	const inteiro LARGURA_JANELA = 700
	const inteiro ALTURA_JANELA = 700
	inteiro dama =g.carregar_imagem("jogo_dama.jpg")
			
	
	funcao inicio(){
		
		 monta_janela()
		 enquanto(verdadeiro){
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
}	


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 109; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */