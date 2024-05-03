programa
{
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	inclua biblioteca Mouse --> m
	
		const inteiro LARGURA_JANELA = 700
		const inteiro ALTURA_JANELA = 700
		
		inteiro dama =g.carregar_imagem("jogo_dama.jpg")
		
		cadeia tabuleiro [8][8]
		
		const inteiro SOMAPOSICAOCIMA=70
		const inteiro SOMAPOSICAOBAIXO=70
		
		logico DIREITA=falso, ESQUERDA=falso
		
		inteiro posicao_X =87
		inteiro posicao_y =86

		
		inteiro posicao_Z =87
		inteiro posicao_U =430

		inteiro delay = 120
	
	funcao inicio(){
		
		 monta_janela()
		 enquanto(verdadeiro){
		 	imagen()
		 	tecla_de_comando()
		 	move_peca()
		 	pedras_pretas()
		 	pedras_brancas()
		 	g.renderizar()
		 	u.aguarde(delay)
		 	}
	}
	//parte da montagem da janela e da imagem:
	
	funcao monta_janela(){
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(LARGURA_JANELA, ALTURA_JANELA)
		g.definir_titulo_janela("dama game")
		}
	funcao imagen(){
		g.desenhar_imagem(0, 0, dama)
		}
	funcao pedras_pretas(){
		//inteiro posicao_X=87
		//inteiro posicao_y=86
		
		para(inteiro i =0 ;i<3; i++){
			para(inteiro c=0; c<8; c++){
				
			se(i % 2==0 e c % 2==0){
				g.definir_cor(g.COR_PRETO)
		    		g.desenhar_retangulo(posicao_X + (c*SOMAPOSICAOCIMA),posicao_y +(i*SOMAPOSICAOCIMA),35,35,falso,verdadeiro)
			}
			se(i % 2==1 e c % 2==1){
					g.definir_cor(g.COR_PRETO)
					g.desenhar_retangulo(posicao_X + (c*SOMAPOSICAOCIMA),posicao_y + (i*SOMAPOSICAOCIMA),35,35,falso,verdadeiro)
						}
						
					}
				}
		}
		//parte do posicionamento das pedras:
		
	funcao pedras_brancas(){
		//inteiro posicao_X=87
		//inteiro posicao_y=435
		
		para(inteiro i =0 ;i<3; i++){
			para(inteiro c=0; c<8; c++){
				
			se(i % 2==0 e c % 2==1){
				g.definir_cor(g.COR_BRANCO)
		    		g.desenhar_retangulo(posicao_Z + (c*SOMAPOSICAOBAIXO),posicao_U +(i*SOMAPOSICAOBAIXO),35,35,falso,verdadeiro)
			}
			se(i % 2==1 e c % 2==0){
					g.definir_cor(g.COR_BRANCO)
					g.desenhar_retangulo(posicao_Z + (c*SOMAPOSICAOBAIXO),posicao_U + (i*SOMAPOSICAOBAIXO),35,35,falso,verdadeiro)
						}
						
					}
				}
		}
		//parte para declara as teclas de comando do jogo:
		
		funcao tecla_de_comando(){
			se(m.botao_pressionado(1)){
				DIREITA =verdadeiro
				ESQUERDA =falso
				}
			senao se(m.botao_pressionado(0)){
				ESQUERDA =verdadeiro
				DIREITA =falso
			}
}
		funcao move_peca(){
				se(DIREITA){
					posicao_X = 87
					}
			}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2404; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */