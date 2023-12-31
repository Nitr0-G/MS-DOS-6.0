.comment ******************************************************************
.comment *  Graphics Family - QBasic                                      *
.comment ******************************************************************
.comment *  7/13/90 stevesau                                              *
.comment *  Incorporated QA/copy edits.                                   *
.comment ******************************************************************
.comment *  6/28/90 stevesau                                              *
.comment *  Incorporated final review comments/edits.                     *
.comment *  Split up SCREEN function and statement.                       *
.comment ******************************************************************
.comment *  6/12/90 stevesau                                              *
.comment *  Incorporated RonS comments.                                   *
.comment ******************************************************************
.comment *  5/11/90 stevesau                                              *
.comment *  Replaced Attributes and Colors node with COLOR example        *
.comment *  showing color codes.                                          *
.comment *  Combined GET/PUT.                                             *
.comment *  Incorporated review comments.                                 *
.comment *  Completed second pass.                                        *
.comment ******************************************************************
.comment *  5/10/90 stevesau                                              *
.comment *  Reinserted X command in DRAW.                                 *
.comment *  Added Attributes and Colors node.                             *
.comment ******************************************************************
.comment *  5/4/90 stevesau                                               *
.comment *  Combined SCREEN function and statement (from Dev I/O family). *
.comment *  Created new Screen Modes topic.                               *
.comment ******************************************************************
.comment *  4/23/90 stevesau                                              *
.comment *  Added action lines.						  *
.comment *  Made COLOR Attributes link local.                             *
.comment *  Deleted references to X command in DRAW.                      *
.comment *  Added DRAW macro language screens, made links local.          *
.comment *  Added DRAW - Differences from BASICA.                         *
.comment ******************************************************************
.context CIRCLE
.context @CIRCLE
:nCIRCLE Statement
  \i\p\aContents\v@helpTableId\v\i\p  \i\p\aIndex\v@helpIndexId\v\i\p  \i\p\aBack\v!B\v\i\p
컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
Desenha um c죚culo ou elipse na tela.

\bCIRCLE [STEP] (x!,y!),radius![,[color%] [,[start!] [,[end!] [,aspect!]]]]\p

    � \bSTEP\p       Especifica que as coordenadas sao relativas � posi놹o
                 atual do cursor no gr쟣ico.
    � \b(x!,y!)\p    As coordenadas para o centro do c죚culo ou elipse.
    � \bradius!\p    O raio do c죚culo ou elipse em unidades do sistema atual
                 de coordenadas, determinado pelas instru뇇es SCREEN, VIEW e
                 WINDOW mais recentes.
    � \bcolor%\p     Um atributo de cor que define a cor do c죚culo. Os
                 atributos de cor dispon죞eis dependem de seu adaptador gr쟣ico
                 e o modo exibi놹o??? definido pela instru놹o SCREEN mais recente.
    � \bstart!\p     O 긪gulo inicial para o arco, em radianos.
    � \bend!\p       O 긪gulo final para o arco, em radianos.
    � \baspect!\p    A razao entre o comprimento do eixo y e o comprimento do
                 eixo x, utilizado para desenhar elipses.

    � Para converter graus em radianos, multiplique os graus por (PI / 180).

Example:
    'This example requires a color graphics adapter.
    SCREEN 2
    CIRCLE (320, 100), 200
    CIRCLE STEP (0,0), 100

See Also    \i\p\aCOLOR\v@COLOR\v\i\p    \i\p\aDRAW\v@DRAW\v\i\p    \i\p\aLINE\v@LINE\v\i\p    \i\p\aSCREEN\v@SCREEN\v\i\p    \i\p\aVIEW\v@VIEW\v\i\p    \i\p\aWINDOW\v@WINDOW\v\i\p
            \i\p\aColor Attributes and Values\v@color.table\v\i\p    \i\p\aScreen Modes\v@screen.modes\v\i\p
.context COLOR
.context @COLOR
:nCOLOR Statement
  \i\p\aContents\v@helpTableId\v\i\p  \i\p\aIndex\v@helpIndexId\v\i\p  \i\p\aBack\v!B\v\i\p
컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
Define as cores de exibi놹o da tela.

\bCOLOR [foreground%] [,[background%] [,border%]]\p    Screen mode 0 (text only)
\bCOLOR [background%] [,palette%]\p                    Screen mode 1
\bCOLOR [foreground%]\p                                Screen modes 4, 12, 13
\bCOLOR [foreground%] [,background&]\p                 Screen modes 7-10

    � \bforeground%\p    Um n즡ero que define a cor de primeiro plano da tela.
      \bforeground&\p    No modo de tela 0, foreground% � um atributo de cor que
                     define a cor do texto. Em outros modos de tela, foreground%
                     � um atributo de cor ou valor de cor de 4 bits (apenas no modo
                     de tela?? 4) que define a cor do texto e do desenho de linha.
    � \bbackground%\p    Um n즡ero que define a cor de segundo plano da tela. No
      \bbackground&\p    modo de tela 0, background% � um atributo de cor. No
                     modo de tela 1, background% � um valor de cor de 4 bits. Nos
                     modos de tela 7 a 10, background& � um valor de cor.
    � \bborder%\p        Um atributo de cor que define a cor da borda da tela.
    � \bpalette%\p       Um n즡ero (0 ou 1) que especifica qual dos dois conjuntos
                     de atributos de cores que ser� utilizado:

                     palette%    Atributo 1     Atributo  2    Atributo 3
                     袴袴袴袴    袴袴袴袴袴�    袴袴袴袴袴�    袴袴袴袴袴袴
                     0           Verde          Vermelha       Marrom
                     1           Ciano          Magenta        Branca clara

    � Os valores e atributos de cores dispon죞eis dependem de seu adaptador
      gr쟣ico e o modo de tela definido pela instru놹o SCREEN mais recente.
    � Se o seu sistema estiver equipado com um adaptador EGA, VGA ou MCGA,
      utilize a instru놹o PALETTE para modificar as designa뇇es de cor dos
      atributos de cores.

Example:
    'This example requires a color graphics adapter.
    SCREEN 7
    FOR i% = 0 TO 15
        COLOR i%
        PRINT i%
    NEXT i%

See Also    \i\p\aDRAW\v@DRAW\v\i\p    \i\p\aPAINT\v@PAINT\v\i\p    \i\p\aPALETTE, PALETTE USING\v@PALETTE\v\i\p    \i\p\aSCREEN\v@SCREEN\v\i\p
            \i\p\aColor Attributes and Values\v@color.table\v\i\p    \i\p\aScreen Modes\v@screen.modes\v\i\p
.context @color.table
:nColor Attributes and Values
  \i\p\aContents\v@helpTableId\v\i\p  \i\p\aIndex\v@helpIndexId\v\i\p  \i\p\aBack\v!B\v\i\p
컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
             \bColor monitor                      Monochrome monitor\p
             컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�    컴컴컴컴컴컴컴컴컴컴컴컴컴컴
\bColor        Default          Displayed         Default       Displayed\p
\battribute    color value\p(a)\b   color             color value   color\p
袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴
\bSCREEN Modes 0, 7, 8, 9\p(b)\b, 12, and 13\p
0            0                Preta             0(c)          Desativada
1            1                Azul                            Sublinhado(d)
2            2                Verde             1(c)          Ativada(d)
3            3                Ciano             1(c)          Ativada(d)
4            4                Vermelha          1(c)          Ativada(d)
5            5                Magenta           1(c)          Ativada(d)
6            6                Marrom            1(c)          Ativada(d)
7            7                Branca            1(c)          Ativada(d)
8            8                Cinza             0(c)          Desativada
9            9                Azul Claro                      Alta intensidade
                                                              Sublinhado
10           10               Verde Claro       2(c)          Alta intensidade
11           11               Ciano Claro       2(c)          Alta intensidade
12           12               Vermelha Clara    2(c)          Alta intensidade
13           13               Magenta Clara     2(c)          Alta intensidade
14           14               Amarela           2(c)          Alta intensidade
15           15               Branca de alta    0(c)          Desativada
                              intensidade
컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
\bSCREEN Modes 1 and 9\p(e)

0            0                Preta             0             Desativada
1            11               Ciano Claro       2             Alta intensidade
2            13               Magenta Clara     2             Alta intensidade
3            15               Branca de alta    0             Branco acinzentado???
                              intensidade
컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
\bSCREEN Modes 2 and 11\p
0            0                Preta            0             Desativada
1            15               Branca de alta   0             Branco acinzentado??
                              intensidade
컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
  (a)  n즡eros de cores EGA. VGA e MCGA utilizam valores de cor de exibi놹o
       que produzem cores visualmente equivalentes.
  (b)  Para VGA ou EGA com mem줿ia de v죆eo > 64K.
  (c)  Somente para o modo 0.
  (d)  Desligado quando utilizado para segundo plano.
  (e)  EGA com mem줿ia de v죆eo <= 64K.

See Also    \i\p\aCOLOR\v@COLOR\v\i\p    \i\p\aPALETTE, PALETTE USING\v@PALETTE\v\i\p    \i\p\aSCREEN\v@SCREEN\v\i\p
            \i\p\aScreen Modes\v@screen.modes\v\i\p
.context DRAW
.context @DRAW
:nDRAW Statement
  \i\p\aContents\v@helpTableId\v\i\p  \i\p\aIndex\v@helpIndexId\v\i\p  \i\p\aBack\v!B\v\i\p
컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
Desenha um objeto.

\bDRAW commandstring$\p

    � \bcommandstring$\p    Uma expressao de seq걟ncia que cont굆 um ou mais
                        dos seguintes comandos DRAW.

      Comandos de desenho de linha e movimenta놹o do cursor:
        D[n%]            Move o cursor para baixo n% unidades.
        E[n%]            Move o cursor para cima e para a direita n% unidades.
        F[n%]            Move o cursor para baixo e para a direita n% unidades.
        G[n%]            Move o cursor para baixo e para a esquerda n% unidades.
        H[n%]            Move o cursor para cima e para a esquerda n% unidades.
        L[n%]            Move o cursor para a esquerda n% unidades.
        M[{+|-}]x%,y%    Move o cursor para o ponto x%,y%. Se x% for precedido
                         por + ou -, move em rela놹o ao ponto atual.
        R[n%]            Move o cursor para a direita n% unidades.
        U[n%]            Move o cursor para cima n% unidades.
        [B]              Um prefixo opcional que movimenta o cursor sem desenhar.
        [N]              Um prefixo opcional que desenha e retorna o cursor para
                         a sua posi놹o original.

      Comandos de cor, rota놹o e escala:
        An%              Rotaciona um objeto n% * 90 graus (n% pode ser 0, 1,
                         2 ou 3).
        Cn%              Define a cor para o desenho (n% � o atributo da cor).
        Pn1%,n2%         Define a cor de preenchimento e das bordas de um objeto
                         (n1% � o atributo da cor de preenchimento, n2% � o
                         atributo da cor das bordas).
        Sn%              Determina a escala do desenho definindo o comprimento
                         de uma unidade de movimenta놹o do cursor. O n% padrao
                         � 4, o que � equivalente a 1 pixel.
        TAn%             Rotaciona??Movimenta?? um 긪gulo n% graus (-360 a 360).

    � Se voc� omitir n% dos comandos de desenho de linha e movimenta놹o do
      cursor, o cursor ser� movido 1 unidade.
    � Para executar uma sub-seq걟ncia do comando DRAW, de uma seq걟ncia do
      comando DRAW, utilize o comando "X":

      DRAW "X"+ VARPTR$(seq걟ncia do comando$)

Example:
    'This example requires a color graphics adapter.
    SCREEN 1
    Triangle$ = "F60 L120 E60"
    DRAW "C2 X" + VARPTR$(Triangle$)
    DRAW "BD30 P1,2 C3 M-30,-30"

See Also    \i\p\aPALETTE, PALETTE USING\v@PALETTE\v\i\p    \i\p\aSCREEN\v@SCREEN\v\i\p    \i\p\aVARPTR$\v@VARPTR$\v\i\p
            \i\p\aColor Attributes and Values\v@color.table\v\i\p    \i\p\aDifferences from BASICA\v@basica.diffs\v\i\p
.context .ggx
.context @ggx
.context .pgfx
.context @pgfx
:nGET, PUT Statements (Graphics)
  \i\p\aContents\v@helpTableId\v\i\p  \i\p\aIndex\v@helpIndexId\v\i\p  \i\p\aBack\v!B\v\i\p
컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
GET captura uma imagem gr쟣ica da tela. PUT exibe a imagem capturada por GET.

\bGET [STEP](x1!,y1!)-[STEP](x2!,y2!), arrayname[(index%)]\p
\bPUT [STEP] (x1!,y1!), arrayname[(index%)] [,actionverb]\p

    � \bSTEP\p          Especifica que as coordenadas sao relativas � posi놹o
                    atual do cursor no gr쟣ico.
    � \b(x1!,y1!)\p     As coordenadas no canto superior esquerdo da imagem
                    capturada por GET ou no local da tela onde PUT exibe a imagem.
    � \b(x2!,y2!)\p     As coordenadas do canto inferior direito da imagem capturada.
    � \barrayname\p     O nome da matriz onde a imagem est� armazenada.
                    See \i\p\aScreen Image Arrays and Compatibility\v@ggx.arrays\v\i\p to determine
                    the required size of the array.
    � \bindex%\p        O 죒dice da matriz na qual inicia o armazenamento da imagem.???
    � \bactionverb\p    Uma palavra chave indicando como a imagem ser� exibida:

              Palavra Chave    A놹o
                    袴袴袴�    袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴�
                    AND        Mescla a imagem armazenada com uma imagem existente.
                    OR         Sobrepoe a imagem armazenada sobre a imagem existente.??
                    PSET       Desenha a imagem armazenada, apagando a imagem existente.
                    PRESET     Desenha a imagem armazenada utilizando cores em reverso,
                               apagando a imagem existente.
                    XOR        Desenha uma imagem armazenada ou apaga uma imagem
                               pr�-desenhada enquanto preserva o desenho de segundo
                               plano,?? produzindo efeitos de anima놹o.

    � Uma instru놹o PUT deve sempre ser executada no mesmo modo de tela que a
      instru놹o GET utilizada para capturar a imagem, ou num modo compat죞el.
      See \i\p\aScreen Image Arrays and Compatibility\v@ggx.arrays\v\i\p.

Example:
    'This example requires a color graphics adapter.
    SCREEN 1
    DIM Box%(1 TO 200)
    x1% = 0: x2% = 10: y1% = 0: y2% = 10
    LINE (x1%, y1%)-(x2%, y2%), 2, BF
    GET (x1%, y1%)-(x2%, y2%), Box%
    DO
        PUT (x1%, y1%), Box%, XOR
        x1% = RND * 300
        y1% = RND * 180
        PUT (x1%, y1%), Box%
    LOOP WHILE INKEY$ = ""

See Also    \i\p\aSCREEN\v@SCREEN\v\i\p    \i\p\aScreen Modes\v@screen.modes\v\i\p
.context @ggx.arrays
:nScreen Image Arrays and Compatibility
  \i\p\aContents\v@helpTableId\v\i\p  \i\p\aIndex\v@helpIndexId\v\i\p  \i\p\aBack\v!B\v\i\p
컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
Utilize bits-por-pixel-por-plano e valores de plano para determinar o tamanho
requerido da matriz que armazena uma imagem gr쟣ica da tela. Bits-por-pixel-por
-plano e valores de plano, juntamente com a resolu놹o horizontal, tamb굆
determinam quais modos de tela sao compat죞eis:

                                                                 Resolu놹o
                                    Bits-por-pixel-              horizontal
    Modo de tela                    por-plano          Planos    (em pixels)
    袴袴袴袴袴袴袴袴袴袴袴袴袴袴    袴袴袴袴袴袴袴�    袴袴袴    袴袴袴袴袴�
    1                               2                  1         320
    2, 4, 11                        1                  1         640
    3                               1                  1         720
    7                               1                  4         320
    8, 9(> mem줿ia de v죆eo de 64K), 12    1                  4         640
    9(mem줿ia de v죆eo de 64K), 10         1                  2         640
    13                              8                  1         320

A seguinte f줿mula fornece o tamanho requerido, em bytes, de uma matriz
utilizada para armazenar uma imagem capturada:

size% = 4 + INT(((PMAP (x2!, 0) - PMAP (x1!, 0) + 1) *
        (bits-por-pixel-por-plano%) + 7) / 8) * planos% *
        (PMAP (y2!, 1) - PMAP (y1!, 1) + 1)

As opera뇇es GET e PUT sao compat죞eis nos modos de tela com a mesma
resolu놹o horizontal e bits-por-pixel-por-plano e valores de plano. Por
exemplo, os modos de tela 2, 4 e 11 sao compat죞eis, e os modos de tela
8 e 12 sao compat죞eis.

See Also    \i\p\aSCREEN\v@SCREEN\v\i\p    \i\p\aScreen Modes\v@screen.modes\v\i\p
.context LINE
.context @LINE
:nLINE Statement
  \i\p\aContents\v@helpTableId\v\i\p  \i\p\aIndex\v@helpIndexId\v\i\p  \i\p\aBack\v!B\v\i\p
컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
Desenha uma linha ou ret긪gulo na tela.

\bLINE [[STEP](x1!,y1!)]-[STEP](x2!,y2!) [,[color%] [,[B | BF] [,style%]]]\p

    � \bSTEP\p          Especifica que as coordenadas sao relativas � posi놹o
                    atual do cursor no gr쟣ico.??
    � \b(x1!,y1!)\p,    As coordenadas de tela do in죅io da linha e do final
      \b(x2!,y2!)\p     da linha.
    � \bcolor%\p        Um atributo de cor que define a cor da linha ou
                    ret긪gulo. Os atributos de cores dispon죞eis dependem
                    de seu adaptador gr쟣ico e o modo de tela definido pela
                    instru놹o SCREEN mais recente.
    � \bB\p             Desenha um ret긪gulo ao inv굎 de uma linha.
    � \bBF\p            Desenha uma caixa s줹ida.
    � \bstyle%\p        Um valor de 16 bits cujos bits especificam se os pixels
                    sao desenhados ou nao. Utilize para desenhar linhas tracejadas
                    ou pontilhadas.

Example:
    'This example requires a color graphics adapter.
    SCREEN 1
    LINE (110, 70)-(190, 120), , B
    LINE (0, 0)-(320, 200), 3, , &HFF00

See Also    \i\p\aCIRCLE\v@CIRCLE\v\i\p    \i\p\aINPUT, LINE INPUT\v@INPUT\v\i\p    \i\p\aPRESET, PSET\v@PSET\v\i\p    \i\p\aSCREEN\v@SCREEN\v\i\p
            \i\p\aColor Attributes and Values\v@color.table\v\i\p    \i\p\aScreen Modes\v@screen.modes\v\i\p
.context PAINT
.context @PAINT
:nPAINT Statement
  \i\p\aContents\v@helpTableId\v\i\p  \i\p\aIndex\v@helpIndexId\v\i\p  \i\p\aBack\v!B\v\i\p
컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
Preenche uma 쟲ea gr쟣ica com uma determinada cor ou padrao.??????

\bPAINT [STEP] (x!,y!)[,[{color% | tile$}] [,[bordercolor%] [,background$]]]\p

    � \bSTEP\p            Especifica que as coordenadas sao relativas � posi놹o
                      atual do cursor no gr쟣ico.???
    � \b(x!,y!)\p         As coordenadas de tela onde a pintura inicia.
    � \bcolor%\p          Um atributo de cor que define a cor de preenchimento.
    � \btile$\p           Um padrao de preenchimento com 8 bits de largura e
                      at� 64 bytes de comprimento, definido como:

                        tile$ = CHR$(arg1) + CHR$(arg2) + ... + CHR$(argn%)

                      Os argumentos para CHR$ sao n즡eros entre 0 e 255.
                      Cada CHR$(argn%) define uma fatia de 1-byte, 8-pixels
                      do padrao, baseado no formato bin쟲io do n즡ero.
    � \bbordercolor%\p    Um atributo de cor que especifica a cor da borda da
                      쟲ea preenchida. PAINT encerra o preenchimento da 쟲ea
                      quando encontrar a borda da cor especificada.
    � \bbackground$\p     Uma fatia de 1-byte, 8-pixels do tipo lado-a-lado de
                      segundo plano. A especifica놹o de uma fatia lado-a-lado de
                      segundo plano possibilita pintar sobre uma 쟲ea j� pintada.

    � Os atributos de cores dispon죞eis dependem de seu adaptador gr쟣ico e do
      modo de tela definido pela instru놹o SCREEN mais recente.

Example:
    'This example requires a color graphics adapter.
    SCREEN 1
    CIRCLE (106, 100), 75, 1
    LINE (138, 35)-(288, 165), 1, B
    PAINT (160, 100), 2, 1

See Also    \i\p\aASC, CHR$\v@CHR$\v\i\p    \i\p\aCIRCLE\v@CIRCLE\v\i\p    \i\p\aDRAW\v@DRAW\v\i\p    \i\p\aLINE\v@LINE\v\i\p    \i\p\aSCREEN\v@SCREEN\v\i\p
            \i\p\aColor Attributes and Values\v@color.table\v\i\p    \i\p\aScreen Modes\v@screen.modes\v\i\p
.context PALETTE
.context @PALETTE
:nPALETTE, PALETTE USING Statements
  \i\p\aContents\v@helpTableId\v\i\p  \i\p\aIndex\v@helpIndexId\v\i\p  \i\p\aBack\v!B\v\i\p
컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
Modifique as designa뇇es de cores dos atributos de cores no modo de tela atual.
PALETTE e PALETTE USING funcionam somente em sistemas equipados com adaptadores
EGA, VGA ou MCGA.

\bPALETTE [attribute%,color&]\p
\bPALETTE USING arrayname#[(index%)]\p

    � \battribute%\p    O atributo de cor a ser modificado.
    � \bcolor&\p        Um valor de cor a ser designado a um atributo.
    � \barrayname#\p    Uma matriz de valores de cores a ser designada ao conjunto
                     de atributos do modo de tela atual. A matriz deve ser
                     suficientemente grande para designar cores a todos os atributos.
    � \bindex%\p        O 죒dice do primeiro elemento da matriz a ser designado a
                     um atributo.

    � Os atributos de corees e valores dispon죞eis dependem de seu adaptador gr쟣ico
      e do modo de tela definido pela instru놹o SCREEN mais recente.

Example:
    'This example requires a color graphics adapter.
    PALETTE 0, 1
    SCREEN 1
    FOR i% = 0 TO 3: a%(i%) = i%: NEXT i%
    LINE (138, 35)-(288, 165), 3, BF
    LINE (20, 10)-(160, 100), 2, BF
    DO
        FOR i% = 0 TO 3
            a%(i%) = (a%(i%) + 1) MOD 16
        NEXT i%
        PALETTE USING a%(0)
    LOOP WHILE INKEY$ = ""

See Also    \i\p\aCOLOR\v@COLOR\v\i\p    \i\p\aSCREEN\v@SCREEN\v\i\p
            \i\p\aColor Attributes and Values\v@color.table\v\i\p    \i\p\aScreen Modes\v@screen.modes\v\i\p
.context PCOPY
.context @PCOPY
:nPCOPY Statement
  \i\p\aContents\v@helpTableId\v\i\p  \i\p\aIndex\v@helpIndexId\v\i\p  \i\p\aBack\v!B\v\i\p
컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
Copia uma p쟥ina de mem줿ia de v죆eo??? para outra.

\bPCOPY sourcepage%,destinationpage%\p

    � \bsourcepage%\p         O n즡ero da p쟥ina de mem줿ia de v죆eo a ser copiada.
    � \bdestinationpage%\p    O n즡ero da p쟥ina de mem줿ia de v죆eo para onde copiar.

    � O valor que indentifica a p쟥ina de v죆eo � determinado pelo tamanho
      da mem줿ia de v죆eo e o modo de tela atual.

Example:
    PCOPY 1, 3

See Also    \i\p\aSCREEN\v@SCREEN\v\i\p    \i\p\aScreen Modes\v@screen.modes\v\i\p
.context SCREEN
.context @SCREEN
:nSCREEN Statement
  \i\p\aContents\v@helpTableId\v\i\p  \i\p\aIndex\v@helpIndexId\v\i\p  \i\p\aBack\v!B\v\i\p
컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
Define o modo de tela e outras caracter죛ticas da tela.

\bSCREEN mode% [,[colorswitch%] [,[activepage%] [,visualpage%]]]\p

    � \bmode%\p           Define o modo de tela. See \i\p\aScreen Modes\v@screen.modes\v\i\p.
    � \bcolorswitch%\p    Um valor (0 ou 1) que alterna entre a exibi놹o
                      monocrom쟴ica e colorida (somente os modos 0 e 1):

                      Modo    Valor       A놹o
                      袴袴    袴袴袴袴    袴袴袴袴袴袴袴
                      0       0           Desativa cores
                      0       Nao zero    Ativa cores
                      1       0           Ativa cores
                      1       Nao zero    Desativa cores

    � \bactivepage%\p     A p쟥ina de tela na qual a sa죆a de gr쟣ico ou texto ser� gravada.
    � \bvisualpage%\p     A p쟥ina de tela atualmente exibida na tela.

Example:
    'This example requires a color graphics adapter.
    SCREEN 1        '320 x 200 graphics
    LINE (110, 70)-(190, 120), , B
    LINE (0, 0)-(320, 200), 3, , &HFF00

See Also    \i\p\aCIRCLE\v@CIRCLE\v\i\p    \i\p\aCOLOR\v@COLOR\v\i\p    \i\p\aDRAW\v@DRAW\v\i\p    \i\p\aLINE\v@LINE\v\i\p      \i\p\aPAINT\v@PAINT\v\i\p
            \i\p\aSCREEN Function\v@screenf\v\i\p      \i\p\aVIEW\v@VIEW\v\i\p    \i\p\aWINDOW\v@WINDOW\v\i\p    \i\p\aScreen Modes\v@screen.modes\v\i\p
.context @screen.modes
:nScreen Modes
  \i\p\aContents\vhelpTableId\v\i\p  \i\p\aIndex\vhelpIndexId\v\i\p  \i\p\aBack\v!B\v\i\p
컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
A seguinte tabela apresenta um resumo dos modos de tela:???

컴컴컴컴컴Adaptadores MDPA, CGA, Hercules, Olivetti, EGA, VGA ou MCGA컴컴컴컴컴�
SCREEN 0: Somente modo texto
    � Formato de texto 40 x 25, 40 x 43, 40 x 50, 80 x 25, 80 x 43 ou 80 x 50,
      caixa de caractere 8 x 8 (8 x 14, 9 x 14 ou 9 x 16 com EGA ou VGA)
    � 16 cores designadas a qualquer um dos 16 atributos (com CGA ou EGA)
    � 64 cores designadas a qualquer um dos 16 atributos (com EGA ou VGA)
    � Dependendo da resolu놹o do texto e do adaptador, 8 p쟥inas de mem줿ia de
      v죆eo (0-7), 4 p쟥inas (0-3), 2 p쟥inas (0-1) ou 1 p쟥ina (0)

컴컴컴컴컴컴컴컴컴컴컴횫daptadores CGA, EGA, VGA ou MCGA컴컴컴컴컴컴컴컴컴컴컴컴
SCREEN 1: gr쟣ico??? 320 x 200
    � formato de texto 40 x 25, caixa de caractere 8 x 8
    � 16 cores de segundo plano e um de dois conjuntos de 3 cores de segundo
      plano designados com a instru놹o COLOR com CGA
    � 16 cores designadas a 4 atributos com EGA ou VGA
    � 1 p쟥ina de mem줿ia de v죆eo (0)
SCREEN 2: gr쟣ico 640 x 200
    � formato de texto 80 x 25, caixa de caractere 8 x 8
    � 16 cores designadas a 2 atributos com EGA ou VGA
    � 1 p쟥ina de mem줿ia de v죆eo (0)

컴컴컴컴컴컴컴컴컴컴횫daptadores Hercules, Olivetti ou AT&T컴컴컴컴컴컴컴컴컴컴�
SCREEN 3: Adaptador Hercules requerido, somente monitor monocrom쟴ico
    � gr쟣ico 720 x 348
    � formato de texto 80 x 25, caixa de caractere 9 x 14
    � Normalmente 2 p쟥inas de mem줿ia de v죆eo (0-1); 1 p쟥ina (0) se for
      instalado um adaptador de exibi놹o?? colorido secund쟲io
    � A instru놹o PALETTE nao � suportada
    � Ativa?? o controlador MSHERC.COM da Hercules antes de utilizar o modo de tela 3
SCREEN 4:
    � Suporta os modelos M24, M240, M28, M280, M380, M380/C e M380/T da Olivetti
      Personal Computers e AT&T Personal Computers 6300 series
    � gr쟣ico 640 x 400
    � formato de texto 80 x 25, caixa de caractere 8 x 16
    � 1 de 16 cores designadas como cor de primeiro plano (selecionada pela
      instru놹o COLOR); o segundo plano est� fixado na cor preta
    � 1 p쟥ina de mem줿ia de v죆eo (0)
    � a instru놹o PALETTE nao � suportada

컴컴컴컴컴컴컴컴컴컴컴컴컴컴횫daptadores EGA ou VGA컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
SCREEN 7: gr쟣ico 320 x 200
    � formato de texto 40 x 25, caixa de caractere 8 x 8
    � Designa놹o de 16 cores a qualquer um de 16 atributos
    � Se for um adaptador EGA com 64K de mem줿ia, 2 p쟥inas de mem줿ia de v죆eo
      (0-1); caso contr쟲io, 8 p쟥inas (0-7)
SCREEN 8: gr쟣ico 640 x 200
    � formato de texto 80 x 25, caixa de caractere 8 x 8
    � Designa놹o de 16 cores a qualquer um de 16 atributos
    � Se for um adaptador EGA com 64K de mem줿ia, 1 p쟥ina de mem줿ia de v죆eo
      (0); caso contr쟲io, 4 p쟥inas (0-3)
SCREEN 9: gr쟣ico 640 x 350
    � formato de texto 80 x 25 ou 80 x 43, caixa de caractere 8 x 14 ou 8 x 8
    � 16 cores designadas a 4 atributos (adaptador com de 64K de mem줿ia), ou
      64 cores designadas a 16 atributos (adaptador com mais que 64K)
    � Se for um adaptador EGA com 64K de mem줿ia, 1 p쟥ina de mem줿ia de v죆eo (0);
      caso contr쟲io, 2 p쟥inas (0-1)

컴컴컴컴컴컴컴컴횫daptadores EGA ou VGA, Somente Monitor Monocrom쟴ico컴컴컴컴컴컴컴컴�
SCREEN 10: gr쟣ico 640 x 350, somente monitor monocrom쟴ico
    � formato de texto 80 x 25 ou 80 x 43, caixa de caractere 8 x 14 ou 8 x 8
    � At� 9 pseudocores designadas a 4 atributos
    � 2 p쟥inas de mem줿ia de v죆eo (0-1), adaptador com mem줿ia de 256K exigido

컴컴컴컴컴컴컴컴컴컴컴컴컴컴횫daptadores VGA ou MCGA컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
Screen 11 (VGA ou MCGA)
    � gr쟣ico 640 x 480
    � formato de texto 80 x 30 ou 80 x 60, caixa de caractere 8 x 16 ou 8 x 8
    � Designa놹o de at� 256K cores a 2 atributos
    � 1 p쟥ina de mem줿ia de v죆eo (0)
Screen 12 (VGA)
    � Ggr쟣ico 640 x 480
    � Fformato de texto 80 x 30 ou 80 x 60, caixa de caractere 8 x 16 ou 8 x 8
    � Designa놹o de at� 256K cores a 16 atributos
    � 1 p쟥ina de mem줿ia de v죆eo (0)
Screen 13 (VGA ou MCGA)
    � Ggr쟣ico 320 x 200
    � Formato de texto 40 x 25, caixa de caractere 8 x 8
    � Designa놹o de at� 256K cores a 256 atributos
    � 1 p쟥ina de mem줿ia de v죆eo (0)

See Also    \i\p\aSCREEN Statement\v@SCREEN\v\i\p
.context @screenf
:nSCREEN Function
  \i\p\aContents\v@helpTableId\v\i\p  \i\p\aIndex\v@helpIndexId\v\i\p  \i\p\aBack\v!B\v\i\p
컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
Fornece??? o valor ASCII ou atributo de cor de um caractere numa posi놹o
especificada na tela.??????

\bSCREEN (row%,column% [,colorflag%])\p

    � \brow%\p          A coordenada de linha de um caractere.
    � \bcolumn%\p       A coordenada de coluna de um caractere.
    � \bcolorflag%\p    Um valor (0 ou 1) que especifica o que ser� fornecido.

                    Valor             Fornecer�
                    袴袴袴袴袴袴袴    袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴
                    0 (ou omitido)    O c줰igo ASCII do caractere.
                    1                 O atributo de cor do caractere.

Example:
    CLS
    PRINT "Hello"
    PRINT "The ASCII value of character at 1,1 is"; SCREEN(1, 1)

See Also    \i\p\aPOINT\v@POINT\v\i\p    \i\p\aSCREEN Statement\v@SCREEN\v\i\p
            \i\p\aASCII Character Codes\v@ac\v\i\p    \i\p\aColor Attributes and Values\v@color.table\v\i\p
.context VIEW
.context @VIEW
:nVIEW Statement
  \i\p\aContents\v@helpTableId\v\i\p  \i\p\aIndex\v@helpIndexId\v\i\p  \i\p\aBack\v!B\v\i\p
컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
Define o tamanho e o local de uma porta de visualiza놹o onde os gr쟣icos podem
ser exibidos na tela.

\bVIEW [[SCREEN] (x1!,y1!)-(x2!,y2!) [,[color%] [,border%]]]\p

    � \bSCREEN\p                 Especifica que as coordenadas sao relativas �
                             tela ao inv굎 da porta de visualiza놹o.
    � \b(x1!,y1!)-(x2!,y2!)\p    As coordenadas de cantos diagonais opostos
                             da porta de visualiza놹o.
    � \bcolor%\p                 Um atributo de cor que define a cor de
                             preenchimento da porta de visualiza놹o.
    � \bborder%\p                Um atributo de cor que define a cor de borda da
                             porta de visualiza놹o.

    � Se todos os argumentos forem omitidos, a tela inteira ser� a porta de visualiza놹o.
    � Os atributos de cor dispon죞eis dependem de seu adaptador gr쟣ico e do
      modo de tela definido pela instru놹o SCREEN mais recente.

Example:
    'This example requires a color graphics adapter.
    SCREEN 1
    VIEW (10, 10)-(300, 180), , 1
    LOCATE 1, 11: PRINT "A big graphics viewport";
    VIEW SCREEN (80, 80)-(200, 125), , 1
    LOCATE 11, 11: PRINT "A small graphics viewport";

See Also    \i\p\aCLS\v@CLS\v\i\p    \i\p\aSCREEN\v@SCREEN\v\i\p    \i\p\aVIEW PRINT\v@vupri\v\i\p    \i\p\aWINDOW\v@WINDOW\v\i\p
            \i\p\aColor Attributes and Values\v@color.table\v\i\p    \i\p\aScreen Modes\v@screen.modes\v\i\p
