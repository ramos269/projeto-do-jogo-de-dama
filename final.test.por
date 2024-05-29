programa
{
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	inclua biblioteca Mouse --> m

	inteiro dama =g.carregar_imagem("jogo_dama.jpg")
	
	const inteiro LARGURA_JANELA = 700
	const inteiro ALTURA_JANELA = 700
	
	inteiro posicaoPedrasPetras[12][2] = {{0,0},{0,0},{0,0},{0,0},{0,0},{0,0},{0,0},{0,0},{0,0},{0,0},{0,0},{0,0}}
	inteiro posicaoPedrasbrancas[12][2] = {{0,0},{0,0},{0,0},{0,0},{0,0},{0,0},{0,0},{0,0},{0,0},{0,0},{0,0},{0,0}}
	inteiro tabuleiro [32][3]
	
	const inteiro SOMAPOSICAOCIMA=70
	const inteiro SOMAPOSICAOBAIXO=70
	
	logico seguraPedra = falso
	inteiro   indexX = 0
	caracter mover= 'b'

	
	funcao inicio(){
			mapear_tabuleiro()
		 	monta_janela()
		 enquanto(verdadeiro){
		 	imagen()
		 	pedras_pretas()
		 	pedras_brancas()
		 	move_peca()
		 	g.renderizar()
		 }
	}
	//parte da montagem da janela e da imagem:
	funcao mapear_tabuleiro(){
		logico grava = falso
			inteiro index = 0
				para(inteiro i =0; i<8;i++){
		 			 para(inteiro c =0; c<8; c++ ){
		  				se(i % 2==0 e c % 2==0){
							grava = verdadeiro
		  	}
		  	se(i % 2==1 e c % 2==1){
				grava = verdadeiro
		  	}
		  	se(grava){
		  		tabuleiro[index][0] = 72+(i*72)
					tabuleiro[index][1] = 72+(c*72)
						tabuleiro[index][2] = 0
							escreva(index,"\n")
								index++		
				//escreva(tabuleiro[index][0],"\n")			
				//escreva(tabuleiro[index][1],"\n")
		  	}
		  	grava = falso
		  }
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
		
	funcao pedras_pretas(){
		inteiro posicao_X=72
		inteiro posicao_y=72
		logico  posVerdadeiro = falso
		inteiro ps = 0
			se(posicaoPedrasPetras[0][0] == 0){
				para(inteiro i =0 ;i<3; i++){
					para(inteiro c=0; c<8; c++){
	
				
				se(i % 2==0 e c % 2==0){
					g.definir_cor(g.COR_PRETO)
			    			g.desenhar_retangulo(posicao_X + (c*SOMAPOSICAOCIMA),posicao_y +(i*SOMAPOSICAOCIMA),70,70,falso,verdadeiro)
			    				posVerdadeiro = verdadeiro
			}
				se(i % 2==1 e c % 2==1){
					g.definir_cor(g.COR_PRETO)
			    			g.desenhar_retangulo(posicao_X + (c*SOMAPOSICAOCIMA),posicao_y +(i*SOMAPOSICAOCIMA),70,70,falso,verdadeiro)
			    				posVerdadeiro = verdadeiro
			}
		     	se(posVerdadeiro){
			 		posicaoPedrasPetras[ps][0]  = posicao_X + (c*SOMAPOSICAOCIMA) //X
		       			posicaoPedrasPetras[ps][1]  = posicao_y + (i*SOMAPOSICAOCIMA)//Y
		       				ps++
		     }
		     posVerdadeiro= falso
		     
	     	}
	  	}
	}
		senao{ 	
				para(inteiro i =0; i<12; i++){
					g.definir_cor(g.COR_PRETO)
			    			g.desenhar_retangulo(posicaoPedrasPetras[i][0],posicaoPedrasPetras[i][1],65,65,falso,verdadeiro)
			    		
		}
					
	}
	 //posicaoPedrasPretas()	   	   
 }

		//parte do posicionamento das pedras:
		
	funcao pedras_brancas(){
		inteiro posicao_X=72
		inteiro posicao_Y=422
		logico  posVerdadeiro = falso
		inteiro ps = 0
		se(posicaoPedrasbrancas[0][0] == 0){
			para(inteiro i =0 ;i<3; i++){
				para(inteiro c=0; c<8; c++){
				
			se(i % 2==0 e c % 2==1){
				g.definir_cor(g.COR_BRANCO)
		    			g.desenhar_retangulo(posicao_X + (c*SOMAPOSICAOBAIXO),posicao_Y +(i*SOMAPOSICAOBAIXO),70,70,falso,verdadeiro)
		    				posVerdadeiro = verdadeiro
			}
			se(i % 2==1 e c % 2==0){
				g.definir_cor(g.COR_BRANCO)
					g.desenhar_retangulo(posicao_X + (c*SOMAPOSICAOBAIXO),posicao_Y + (i*SOMAPOSICAOBAIXO),70,70,falso,verdadeiro)
						posVerdadeiro = verdadeiro
						}
						se(posVerdadeiro){
			 		posicaoPedrasbrancas[ps][0]  = posicao_X + (c*SOMAPOSICAOCIMA) //X
		       			posicaoPedrasbrancas[ps][1]  = posicao_Y + (i*SOMAPOSICAOCIMA)//Y
		       				ps++
		     }
		     posVerdadeiro= falso
					}
				}
		}
		senao{ 	
				para(inteiro i =0; i<12; i++){
					g.definir_cor(g.COR_BRANCO)
			    			g.desenhar_retangulo(posicaoPedrasbrancas[i][0],posicaoPedrasbrancas[i][1],65,65,falso,verdadeiro)
			    		
			}		
		}
	}
	funcao move_peca(){
		   se(m.algum_botao_pressionado()){
		   	g.definir_cor(g.COR_AMARELO)
		   		g.desenhar_retangulo(m.posicao_x()-25, m.posicao_y()-25,65,65,verdadeiro,falso)
		   	
		   se(mover == 'p'){
		   	
		   	se(m.botao_pressionado(m.BOTAO_DIREITO)){
			  	//movimentaPeca = verdadeiro
			  	se(seguraPedra == falso){
				  	selecionado_pretas()
			   }
		   } 
		   se(m.botao_pressionado(m.BOTAO_ESQUERDO)){
			  	//movimentaPeca = verdadeiro
			  	se(seguraPedra == falso){
			  		inteiro indes = selecionado_pretas()
				  	alteraPosicao_pretas(indes)
			}
		   }
		   }
		   se(mover == 'b'){
		   se(m.botao_pressionado(m.BOTAO_DIREITO)){
			  	//movimentaPeca = verdadeiro
			  	se(seguraPedra == falso){
				  	selecionado_branca()
			   }
		   } 
		   	se(m.botao_pressionado(m.BOTAO_ESQUERDO)){
			  	//movimentaPeca = verdadeiro
			  	se(seguraPedra == falso){
			  		inteiro index = selecionado_branca()
				  	alteraPosicao_branca(index)
			}
		   }
	     }
	}
}

  	funcao alteraPosicao_pretas(inteiro y){
	inteiro posicaoX = m.posicao_x()
  	inteiro posicaoY = m.posicao_y()
  	posicaoPedrasPetras[y][0] =posicaoX
  	posicaoPedrasPetras[y][1] =posicaoY
  } 

	funcao inteiro selecionado_pretas(){
  	
  	inteiro posicaoX = m.posicao_x()
  	inteiro posicaoY = m.posicao_y()
  	
     
  	para(inteiro i = 0; i<32; i++){
			se(m.posicao_x() >= tabuleiro[i][0]-35 e m.posicao_x() <= tabuleiro[i][0]+35){
				se(m.posicao_y() >= tabuleiro[i][1]-35 e m.posicao_y() <= tabuleiro[i][1]+35){
					//seguraPedra = verdadeiro
					para(inteiro d = 0; d<12; d++){
						se(posicaoPedrasPetras[d][0] >= tabuleiro[i][0]-35 e posicaoPedrasPetras[d][0] <= tabuleiro[i][0]+35){
						   se(posicaoPedrasPetras[d][1] >= tabuleiro[i][1]-35 e posicaoPedrasPetras[d][1] <= tabuleiro[i][1]+35){
						    indexX = d
						    escreva(indexX)
						   
						   }
		       			 }
					}
			      }		
		   } 
  	    }
  	    retorne indexX
	}
  	funcao alteraPosicao_branca(inteiro x){
		inteiro posicaoX = m.posicao_x()
  			inteiro posicaoY = m.posicao_y()
  				posicaoPedrasbrancas[x][0] =posicaoX
  					posicaoPedrasbrancas[x][1] =posicaoY
  } 

	funcao inteiro selecionado_branca(){
  	
  	inteiro posicaoX = m.posicao_x()
  	inteiro posicaoY = m.posicao_y()
  	
     
  	para(inteiro i = 0; i<32; i++){
			se(m.posicao_x() >= tabuleiro[i][0]-35 e m.posicao_x() <= tabuleiro[i][0]+35){
				se(m.posicao_y() >= tabuleiro[i][1]-35 e m.posicao_y() <= tabuleiro[i][1]+35){
					//seguraPedra = verdadeiro
					para(inteiro d = 0; d<12; d++){
						se(posicaoPedrasbrancas[d][0] >= tabuleiro[i][0]-35 e posicaoPedrasbrancas[d][0] <= tabuleiro[i][0]+35){
						   se(posicaoPedrasbrancas[d][1] >= tabuleiro[i][1]-35 e posicaoPedrasbrancas[d][1] <= tabuleiro[i][1]+35){
						    indexX = d
						    escreva(indexX)
						   
						   }
		       			 }
					}
			      }		
		   } 
  	    }
  	    retorne indexX
      }

   
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4981; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {posicaoPedrasPetras, 12, 9, 19}-{posicaoPedrasbrancas, 13, 9, 20};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */