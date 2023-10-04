<%@page language="java" import="java.sql.*"%>

<%

    String vnome = request.getParameter("nome");
    int vfone = Integer.parseInt(request.getParameter("fone"));
    String vemail = request.getParameter("email") ;
    String vmensagem = request.getParameter("mensagem") ;

        String banco = "construtora";
        String endereco = "jdbc:mysql://localhost:3306" + banco; 
        String usuario ="root";
        String senha = "";

        string driver = "com.mysql.jdbc.Driver";

        Class.forName(driver);

        Connection conexao;

        conexao = DriverManager.getConnection(endereco, usuario, senha);

        String sql = "INSERT INTO clientes (nome,fone,email,mensagem) values(?,?,?,?)";

        PreparedStatement stm = conexao.prepareStatement(sql);
        stm.setString(1, nome);
        stm.setInt(2, fone);
        stm.setString(3, email);
        stm.setString(4, mensagem);

        stm.execute();
        stm.close();

        out.print("Dados gravados com sucesso!!!");
        out.print("<br><br>");
        out.print("<a href='contato.html">Voltar</a>);
%>