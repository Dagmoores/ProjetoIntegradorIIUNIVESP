//import CSS
import "./home.css"

//react-router
import { Link } from 'react-router-dom'

function Main() {

    return (



<div>

<div class="container-principal"></div> 
    
    <div id="banner"> 
    <img src="imagem/Recicla.jpg" alt="banner-topo" />
    </div>

    <section id="container-Sobre"></section>
        <div id="txt-Sobre">
            
        <p><h5><i> A missão da empresa <strong>Recicla Electron</strong>, é fornecer soluções para empresas e os cidadãos que queiram  fazer o uso adequado de descartes de eletrônicos corretamente. A nossa parceria com a Ecocentro, na cidade de Bebedouro-SP, se sucedeu através de uma necessidade e a objetividade de fazermos uma Propaganda Maior sobre Reciclagem de EletroEletrônicos. </i></h5></p>
            
            <strong><h1000>.</h1000></strong>
            <div id="demotext"><strong><h1> Nosso Foco é: </h1></strong></div>
            <br></br>

        </div>


            
            <dl><br></br>
           

            <div id="demoFont"><li><strong> Organização </strong></li>
                <li><strong> Acessibilidade </strong></li>
                <li><strong> Inovação </strong></li>
                <li><strong> Criatividade </strong></li>
                <li><strong> Planejamento </strong></li></div>

            </dl>
            <br/>
        
        <div id="img-conteudo-sobre">
            
       </div>

<div id="openModal" class="modalDialog">
    
        <div>
        <body id="parent">
  
            <a href="#close" title="Close" class="close">X</a>
            <h1><strong> O que é Recicla Electron?</strong></h1>
            <br></br>
            <p><strong><h6> RECICLA ELECTRON </h6></strong><i>   É um site que tem como objetivo, ajudar pessoas que precisam descartar Resíduos Eletrônicos, (celulares, notebooks, televisores, tablets, pilhas, baterias, etc.) à encontrarem locais mais próximos de suas residencias para coletar estes tipos de resíduos.</i></p>
            <img src="imagem/PCRecicla.jpg" alt="logo html5" />
            </body>
        </div>
    </div>
  

<div id="openModal1" class="modalDialog">
        <div>
        <div id="parent">

            <a href="#close" title="Close" class="close">X</a>
            <h2>Meio Ambiente  X  Lixo Eletrônico</h2>
            <br></br>
            <p>De uma forma simples e bem objetiva, o <b> Lixo Eletrônico </b> é produzido por materiais  de origem inorgânica, por exemplo: o Cobre, Alumínio, Metais Pesados ( Mércurio, Cádmio, Berílio e Chumbo.)</p> <p> Eles podem comprometer o <b> Meio Ambiente </b> visto que são compostos por elementos muito poluentes, os quais são absorvidos pelo solo e pelo lençóis freáticos comprometendo o equilíbrio ecológico. - <i>   </i></p>
            <img src="imagem/RECICLA1.jpeg" alt="logo tecnologia" />
            
            </div>
        </div>
    </div>

<div id="openModal2" class="modalDialog">
    
        <div>
        <body id="parent">
            <a href="#close" title="Close" class="close">X</a>
            <h1>Reciclagem e Tecnologia</h1>
            <br></br>
            <p>Com essa nova era da<b> Tecnologia</b> associada com a  <b>Reciclagem </b>, a índustria Brasileira está atenta a novas Tecnologias na Reciclagem como: Esteiras Rolantes, Pás Mêcanicas, Garras Mecânicas , Prensas Especializadas e etc... <b> Melhorando a Produtividade, Ampliando o Volume Processado e com isso Gerando mais e mais Empregos.</b></p>
            <img src="imagem\R.jpg" alt="logo acessibilidade" />
            </body>
        </div>   
    </div>


    <footer>

    <div class="myButton"> <h3> Meio Ambiente </h3><p><h4> Você sabe qual a importância da reciclagem de eletroeletrônicos para o Meio Ambiente?   </h4>  <a href="#openModal1">clique aqui</a></p></div>
        <div class="footer-text">
            <h3><b> </b></h3>
            <br>
            </br>
           </div>

           
    <div class="myButton"> <h3> Reciclagem e Tecnologia, são Aliados? </h3><p><h4> Eis aí uma pergunta pra ser desvendada.   </h4><a href="#openModal2">clique aqui</a></p></div>
        <div class="footer-text">
            <h3><b>  </b></h3>
         </div><br>
        </br>


    <div class="myButton" id="demo"> <h3> O  que é Recicla Electron?  </h3> <p>    <a href="#openModal">Clique Aqui</a></p></div>
        <div class="footer-text"> 
                    <h3><b>  </b></h3>                    
          <br>
          </br> 
        </div>
       

    <div class="myButton"><h5>O Recicla Electron é Parceira com a Empresa Ecocentro</h5></div>
        
        
    </footer>


</div>






    )
}


export default Main;