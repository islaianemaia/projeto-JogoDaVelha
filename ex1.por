programa
{
	const inteiro T=3
	funcao inicio()
	{
		
	     caracter jogo[T][T]
	     inteiro linha, coluna
	     logico linhaValida, colunaValida
	     caracter op
	     
	     faca{
	     	
		     inteiro jogador=1, jogadas=0, ganhou=0
		     
		    //Inicializar tabuleiro
		    para(inteiro l=0; l<T; l++){
		       para(inteiro c=0; c<T; c++){
		          jogo[l][c]=' '
		       }
		    }
		   faca{
		   	   escreva("\n|---------------------|")
	             escreva("\n|    JOGO DA VELHA    |")
		        escreva("\n|---------------------|")
		        escreva("\n\n")
			  //Imprimir tabuleiro
			  escreva(" 0    1    2\n\n")
			  para(inteiro l=0; l<T; l++){
			  	para(inteiro c=0; c<T; c++){
			  	    escreva(jogo[l][c]," ")
			  	    se(c<2){
			  	        escreva(" | ")
			  	    }
			  	    se(c==2){
			  	       escreva("  ",l)
			  	    }
			  	}
			  	se(l<2){
			  	    escreva("\n-------------")
			  	}
			  	escreva("\n")
			  }
			  escreva("\n")
			  //Ler coordenadas
			  faca{
				  linhaValida=falso
				  linha=0
				  enquanto(nao linhaValida){
				      escreva("Informe a linha: ")
				      leia(linha)
				      se(linha>=0 e linha<=2){
				          linhaValida = verdadeiro 
				      }senao{
				          escreva("Linha inválida ")
				      }
				  }
				  
				  colunaValida=falso
				  coluna=0
				  enquanto(nao colunaValida){
				       escreva("Informe a coluna: ")
				       leia(coluna)
				       se(coluna>=0 e coluna<=2){
				           colunaValida = verdadeiro
				       }senao{
				           escreva("Coluna inválida ")
				       }
				  }
			  }enquanto(jogo[linha][coluna]!= ' ')
			  
				//Salvar coordenadas
				se(jogador==1){
				    jogo[linha][coluna]='0'
				    jogador++
				}senao{
				    jogo[linha][coluna]='x'
				    jogador=1
				}
				jogadas++
			    //Verificar ganhador por linhas
			    para(inteiro l=0; l<T; l++){
			       se(jogo[l][0]=='0' e jogo[l][1]=='0' e jogo[l][2]=='0'){
			                   ganhou=1
			       }
			
			       se(jogo[l][0]=='x' e jogo[l][1]=='x' e jogo[l][2]=='x'){
			                   ganhou=2
			       }
			    }
			   //Verificar ganhador por colunas
			   para(inteiro c=0; c<T; c++){
			       se(jogo[0][c]=='0' e jogo[1][c]=='0' e jogo[2][c]=='0'){
			                   ganhou=1
			       }
			       se(jogo[0][c]=='x' e jogo[1][c]=='x' e jogo[2][c]=='x'){
			                   ganhou=2
			       }
			   }
			  //Verificar ganhador na diagonal principal
			  se(jogo[0][0]=='0' e jogo[1][1]=='0' e jogo[2][2]=='0'){
			                 ganhou=1
			  }
			  se(jogo[0][0]=='x' e jogo[1][1]=='x' e jogo[2][2]=='x'){
			                 ganhou=2
			  }
			  //Verificar ganhador na diagonal secundaria
			  se(jogo[0][2]=='0' e jogo[1][1]=='0' e jogo[2][0]=='0'){
			                ganhou=1
			  }
			  se(jogo[0][2]=='x' e jogo[1][1]=='x' e jogo[2][0]=='x'){
			                ganhou=2
			  }
			  limpa()
		   }enquanto(ganhou==0 e jogadas<9)

		  escreva("\n|---------------------|")
	       escreva("\n|    JOGO DA VELHA    |")
		 escreva("\n|---------------------|")
		 escreva("\n\n")
	       //Imprimir tabuleiro
		  escreva(" 0    1    2\n\n")
		  para(inteiro l=0; l<T; l++){
		  	para(inteiro c=0; c<T; c++){
		  	    escreva(jogo[l][c]," ")
		  	    se(c<2){
		  	        escreva(" | ")
		  	    }
		  	    se(c==2){
		  	       escreva("  ",l)
		  	    }
		  	}
		  	se(l<2){
		  	    escreva("\n-------------")
		  	}
		  	escreva("\n")
		  }
		  escreva("\n")
	
		  se(ganhou==1){
		       escreva("O vencedor e o jogador 1\n")
		  }senao se(ganhou==2){
		       escreva("O vencedor e o jogador 2\n")
		  }senao{
		       escreva("Deu velha")
		  }
		  escreva("Jogar novamente[s/n]:")
		  leia(op)

		  limpa()
	    }enquanto(op=='s')
		
	 escreva("\n|.........FIM DO SISTEMA.....|\n")

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3118; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */