# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

questions = Question.create([
    {description:"Qual é o prato favorito de Jolie?"},
    {description:"Qual é o estilo de música atual favorita de Jolie?"},
    {description:"Qual lugar Jolie sente falta de viajar?"},
    {description:"Qual o anime favorito de Jolie?"},
    {description:"Qual o nome do gato de estimação de Jolie?"},
    {description:"Qual a cor favorita de Jolie?"},
    {description:"Qual método Jolie utiliza para combater momentos de baixa autoestima?"},
    {description:"Qual é o pior prato na opinião de Jolie?"},
    {description:"Qual foi a viagem que Jolie fez que a amadureceu num nível extremo?"},
    {description:"O que Jolie faz quando está triste?"},
    {description:"Qual a principal linguagem do amor de Jolie?"},
    {description:"Qual a orientação sexual de Jolie?"},
    {description:"Jolie gosta de ter amigos virtuais."},
    {description:"Quantos anos Jolie tem?"},
    {description:"Qual a data de aniversário de Jolie?"},
    {description:"Qual jogo Jolie mais joga atualmente?"},
    {description:"Jolie fazia lives frequentemente às 14h."},
    {description:"Qual a parte do corpo mais bonita de Jolie?"},
    {description:"Se Jolie fosse um personagem de RPG, qual seria sua classe?"},
    {description:"Qual a maior dificuldade que Jolie possui?"},
    {description:"O que Jolie tem vontade de estudar?"},
    {description:"Onde Jolie trabalhou em 2022?"},
    {description:"As seguintes iniciais de nome NÃO são do grupo de pessoas especiais de Jolie"},
    {description:"Qual animal Jolie gostaria de ser?"},
    {description:"Qual tipo de vídeo Jolie utiliza para dormir?"},
    {description:"O que Jolie realmente merece?"},
    ])

answers = Answer.create([
    {description:"Strognoff", question_id:1, isCorrect:true},{description:"Risoto", question_id:1},{description:"Fígado acebolado", question_id:1},{description:"Panquecas", question_id:1},{description:"Hamburguer", question_id:1},
    {description:"Metal", question_id:2},{description:"Nova MPB", question_id:2, isCorrect:true},{description:"Anos 90", question_id:2},{description:"Rock Internacional", question_id:2},{description:"Samba", question_id:2},
    {description:"Manaus", question_id:3},{description:"Belem", question_id:3},{description:"Brasília", question_id:3},{description:"Praia", question_id:3,isCorrect:true},{description:"Sítio no meio do mato", question_id:3},
    {description:"Full Metal Alchemist", question_id:4},{description:"Evangelion", question_id:4},{description:"One Piece", question_id:4,isCorrect:true},{description:"Spy x Family", question_id:4},{description:"Cavaleiros do Zodíacos", question_id:4},
    {description:"Paçoca", question_id: 5},{description:"Amendoim", question_id: 5},{description:"Pedro", question_id: 5},{description:"Sol", question_id: 5, isCorrect:true},{description:"Bolota", question_id: 5},
    {description:"Azul",question_id:6},{description:"Amarelo",question_id:6},{description:"Roxo",question_id:6, isCorrect:true},{description:"Branco",question_id:6},{description:"Laranja",question_id:6},
    {description:"Terapia", question_id:7},{description:"Cortar e/ou Pintar o Cabelo", question_id:7, isCorrect:true},{description:"Fazer as unhas", question_id:7},{description:"Ela não tem período de baixa autoestima", question_id:7},{description:"Marcar encontros", question_id:7},
    {description:"Strognoff", question_id:8},{description:"Risoto", question_id:8},{description:"Fígado acebolado", question_id:8, isCorrect:true},{description:"Panquecas", question_id:8},{description:"Hamburguer", question_id:8},
    {description:"Manaus", question_id:9},{description:"Curitiba", question_id:9, isCorrect:true},{description:"Interior de São Paulo", question_id:9},{description:"Florianópolis", question_id:9},{description:"Goiás", question_id:9},
    {description:"Joga", question_id:10},{description:"Atividade Física", question_id:10},{description:"Escuta música triste totalmente coberta com o cobertor", question_id:10, isCorrect:true},{description:"Pede abraços para todos", question_id:10},{description:"Come muito", question_id:10},
    {description:"Palavras de afirmação", question_id: 11, isCorrect:true},{description:"Toque físico", question_id: 11},{description:"Atos de Serviço", question_id: 11},{description:"Tempo de Qualidade", question_id: 11},
    {description:"Demissexual", question_id:12},{description:"Bissexual", question_id:12},{description:"Pansexual", question_id:12},{description:"Assexual", question_id:12,isCorrect:true},{description:"Heterossexual", question_id:12},
    {description:"Verdadeiro", question_id:13, isCorrect:true},{description:"Falso", question_id:13},
    {description:"19", question_id:14},{description:"21", question_id:14},{description:"18", question_id:14, isCorrect:true},{description:"17", question_id:14},{description:"23", question_id:14},
    {description:"18/05",question_id:15,isCorrect:true},{description:"15/08",question_id:15},{description:"05/06",question_id:15},{description:"17/04",question_id:15},{description:"13/10",question_id:15},
    {description:"Minecraft", question_id:16},{description:"Counter-Strike", question_id:16},{description:"League Of Legends", question_id:16},{description:"Cookie run: Kingdom", question_id:16,isCorrect:true},{description:"Valorant", question_id:16},
    {description:"Verdadeiro", question_id:17},{description:"Falso", question_id:17,isCorrect:true},
    {description:"Pés",question_id:18},{description:"Boca",question_id:18},{description:"Rosto",question_id:18},{description:"Bunda",question_id:18},{description:"Ela inteira porque ela é uma Deusa",question_id:18,isCorrect:true},
    {description:"Druida", question_id:19,isCorrect:true},{description:"Assassina", question_id:19},{description:"Guerreira", question_id:19},{description:"Maga", question_id:19},{description:"Arqueira", question_id:19},
    {description:"Fazer novas amizades",question_id:20},{description:"Se envolver em relacionamentos saudáveis",question_id:20,isCorrect:true},{description:"Cozinhar",question_id:20},{description:"Manter uma conversa séria",question_id:20},{description:"Tomar banho todos os dias",question_id:20},
    {description:"Medicina",question_id:21},{description:"Psicologia",question_id:21},{description:"Nada",question_id:21},{description:"Mecatrônica",question_id:21, isCorrect:true},{description:"Química",question_id:21},
    {description:"BurgerKing", question_id:22},{description:"Daiso", question_id:22},{description:"Melt", question_id:22, isCorrect:true},{description:"C&A", question_id:22},{description:"Ela não trabalhou em 2022", question_id:22},
    {description:"J, I, L, B", question_id:23},{description:"L, E, N, I", question_id:23,isCorrect:true},{description:"J, B, F, I", question_id:23},{description:"I, J, L, D", question_id:23},{description:"D, I, A, G", question_id:23},
    {description:"Gavião", question_id:24},{description:"Onça", question_id:24},{description:"Gata", question_id:24,isCorrect:true},{description:"Coelha", question_id:24},{description:"Loba", question_id:24},
    {description:"Video Clipes",question_id:25},{description:"Casos Criminais",question_id:25,isCorrect:true},{description:"Pornô",question_id:25},{description:"Desenho Animado",question_id:25},{description:"Série Dramática",question_id:25},
    {description:"Ser Feliz", question_id:26,isCorrect:true},{description:"Se Relacionar com um Amor Saudável", question_id:26,isCorrect:true},{description:"Brilhar Cada Dia Mais", question_id:26,isCorrect:true},{description:"Superar Todos Seus Traumas", question_id:26,isCorrect:true},{description:"Ser Cuidada e Mimada", question_id:26,isCorrect:true},
    ])

    admins = Admin.create([
        {email: "jolie@admin.com", password:"Lilith616!", password_confirmation:"Lilith616!"}
    ])