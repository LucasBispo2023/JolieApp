// Armazenar referência às respostas selecionadas
let selectedAnswers = {};

// Todos as respostas
const botoes = document.getElementsByClassName("answer-button");

// Função para destacar a resposta ativa
function highlightActiveButton(button, questionId) {
    if (selectedAnswers.hasOwnProperty(questionId)) {
        selectedAnswers[questionId].classList.remove('active');
    }
    selectedAnswers[questionId] = button;
    selectedAnswers[questionId].classList.add('active');
}

function saveAnswers() {
    let correctAnswers = 0;
    let answersList = document.querySelectorAll('.answers-list');
  
    for (let i = 0; i < answersList.length; i++) {
      let chosenAnswer = answersList[i].querySelector('.active');
      if (chosenAnswer !== null) {
        let isCorrect = chosenAnswer.getAttribute('data-correct') === 'true';
        if (isCorrect) {
            chosenAnswer.classList.remove('btn-outline-primary')
            chosenAnswer.classList.add('btn-success');
            document.getElementById(`icone-jolie-${(i+1)}`).src = 'https://i.postimg.cc/ygL63mx0/resposta-certa.png';
            document.querySelector(`#bg-icone-${(i+1)}`).classList.add('bg-success')
            correctAnswers++;
        } else {
            chosenAnswer.classList.remove('btn-outline-primary')
            chosenAnswer.classList.add('btn-danger');
            document.getElementById(`icone-jolie-${(i+1)}`).src = 'https://i.postimg.cc/YhcZf4FF/resposta-errada.png'
            document.querySelector(`#bg-icone-${(i+1)}`).classList.add('bg-danger')
        }
      }
    }

    disableAnswers();
    document.querySelector('#scoreQuiz').value = correctAnswers;
    console.log(`Você acertou ${correctAnswers} perguntas!`);
    submitRecord();
  }
  
  function disableAnswers(){
    for(i=0;i<botoes.length;i++){
        botoes[i].classList.add("disabled");
    }
  }

  function submitRecord(){
        const score = document.querySelector("#scoreQuiz").value;
        const name = document.getElementById("nameQuiz").value;
    
        // Cria um objeto XMLHttpRequest
        const xhr = new XMLHttpRequest();
    
        // Define a URL do endpoint do seu controller
        const url = '/quiz/quiz_games/checked_answers';
    
        // Define o método e a URL da requisição
        xhr.open('POST', url);
    
        // Define o header da requisição para enviar dados no formato JSON
        xhr.setRequestHeader('Content-Type', 'application/json');
    
        // Define o callback que será chamado quando a requisição for concluída
        xhr.onload = function () {
            if (xhr.status === 201) {
                console.log('Respostas submetidas com sucesso!');
            } else {
                console.error('Erro ao enviar respostas.');
            }
        };
    
        // Monta o objeto com os dados do desenho
        const record = {
            score: score,
            name: name
        };
    
        // Envia a requisição com os dados do desenho em formato JSON
        xhr.send(JSON.stringify({ record: record }));
  }

  
window.addEventListener('load', () =>{
    console.log("JS carregado.");

    // !!!!!! EventListeners !!!!!!! 

    // Botões que poderão receber o active
    for (let i = 0; i < botoes.length; i++) {
        botoes[i].addEventListener("click", function () {
            const questionId = this.id;
            highlightActiveButton(this, questionId);
        });
    }



    // Respostas finais selecionadas
    const respostas = document.getElementsByClassName
})

  