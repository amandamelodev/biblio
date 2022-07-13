# /db/seeds.rb

User.create nome: 'Amanda', telefone: '519999-13245', kind: :leitor, email: 'amanda@teste.com', status: :active, password: 123456
User.create nome: 'Maria', telefone: '519999-13245', status: :active, kind: :leitor, email: 'leitor2@teste.com', password: 123456
User.create nome: 'Joana', telefone: '519999-13245', status: :active, kind: :bibliotecario, email: 'bibliotecario@teste.com', password: 123456

# Criando alguns produtos de exemplo
Livro.create titulo: 'Ruby on Rails', autores: 'autor dois', descricao: 'Uma leitura sobre Ruby ...'
Livro.create titulo: 'Docker', autores: 'autor numero1', descricao: 'Tudo sobre o docker ...'
