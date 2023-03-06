//variables
let painting = false;
let color = '#000000';
let lineWidth;

// Armazenar referência ao botão ativo atual
let activeButton = null;

// Função para destacar o botão ativo
function highlightActiveButton(button) {
    if (activeButton !== null) {
        activeButton.classList.remove('active');
    }
    activeButton = button;
    activeButton.classList.add('active');
}

// Definindo a cor pelo botão selecionado.
function setColor(hexColor) {
    color = hexColor;
}

// Salvando o desenho
function saveImage() {
    const dataURL = canvas.toDataURL('image/png');
    const title = document.getElementById("drawingTitle");

    // Cria um objeto XMLHttpRequest
    const xhr = new XMLHttpRequest();

    // Define a URL do endpoint do seu controller
    const url = '/draw';

    // Define o método e a URL da requisição
    xhr.open('POST', url);

    // Define o header da requisição para enviar dados no formato JSON
    xhr.setRequestHeader('Content-Type', 'application/json');

    // Define o callback que será chamado quando a requisição for concluída
    xhr.onload = function () {
        if (xhr.status === 201) {
            console.log('Desenho salvo com sucesso!');
            window.location.href = '/drawings';
        } else {
            console.error('Erro ao salvar desenho.');
        }
    };

    // Monta o objeto com os dados do desenho
    const drawing = {
        dataURL: canvas.toDataURL(),
        title: title.value
    };

    // Envia a requisição com os dados do desenho em formato JSON
    xhr.send(JSON.stringify({ drawing: drawing }));
}

window.addEventListener('load', () => {
    console.log('hello');
    const canvas = document.querySelector('#canvas');
    const ctx = canvas.getContext('2d');
    const card = document.querySelector('#jumbotrom')



    // Define a largura e a altura do canvas
    canvas.width = card.offsetWidth;
    canvas.height = card.offsetHeight;

    // Faz ficar responsivo
    window.addEventListener('resize', function () {
        canvas.width = card.offsetWidth * 0.99;
        canvas.height = card.offsetHeight;
    });

    /*  
        ctx.strokeStyle="red" //Change color
        ctx.fillRect(50,50,200,200); // Make a filled square
        ctx.strokeRect(100,100,200,500); //Make a line square/rectangle
        ctx.beginPath(); // begin Path
        ctx.moveTo(100,300); // Set Pencil's position
        ctx.lineTo(200,100); // Set the pencil's path
        ctx.stroke(); // Draw the line
    */

    // Cursor

    // Fim do Cursor

    function startPosition(event) {
        painting = true;
        draw(event);
    }
    function endPosition() {
        painting = false;
        ctx.beginPath();
    }
    function draw(event) {
        const rect = canvas.getBoundingClientRect()
        const x = event.clientX - rect.left
        const y = event.clientY - rect.top

        // Variables
        if (!painting) return;
        ctx.lineWidth = lineWidth;
        ctx.lineCap = 'round';
        ctx.strokeStyle = "#" + color;

        // Drawing
        ctx.lineTo(x, y);
        ctx.stroke();
        ctx.beginPath();
        ctx.moveTo(x, y);
    }


    function setLineWidth() {
        lineWidth = lineWidthRange.value
        console.log(lineWidth)
    }

    // EventListeners
    canvas.addEventListener('mousedown', startPosition);
    canvas.addEventListener('mouseup', endPosition);
    canvas.addEventListener('mousemove', draw);
    let lineWidthRange = document.getElementById("rangeLineWidth");
    lineWidthRange.addEventListener('change', setLineWidth)
    const botoes = document.getElementsByClassName("btn");
    for (let i = 0; i < botoes.length; i++) {
        botoes[i].addEventListener("click", function () {
            setColor(this.id);
            highlightActiveButton(this);
        });
    }
    const saveButton = document.getElementById("save-button");
    saveButton.addEventListener("click", saveImage);

})

