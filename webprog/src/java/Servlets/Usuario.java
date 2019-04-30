
package Servlets;

import controller.PacienteController;
import controller.UsuarioController;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.vo.UsuarioVO;
import sun.misc.BASE64Encoder;

/**
 *
 * @author 80119050
 */
public class Usuario extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String var1 = request.getParameter("cadastrar");
        String var2 = request.getParameter("validar");
        String nome = request.getParameter("nome");
        String senha = MD5(request.getParameter("senha"));
        UsuarioController usuarioController;
        UsuarioVO usuarioVO;           
       
        //String cpf = request.getParameter("cpfpaciente");

        //System.out.println("O cpf é: " + cpf);

        ArrayList<String> variaveis = new ArrayList<String>();
        variaveis.add(var1);
        variaveis.add(var2);
        System.out.println("O array é: " + variaveis);       

        for (int i = 0; i < variaveis.size(); i++) {
            String variavelDeControle = variaveis.get(i);

            if (variavelDeControle != null) {
                switch (variavelDeControle) {
                    case "cadastrar":

                        System.out.println("A variável é: " + variaveis.get(i));
                        usuarioVO = new UsuarioVO();
                        usuarioVO.setLogin(request.getParameter(nome));
                        usuarioVO.setSenha(request.getParameter(senha));
                        
                        System.out.println(usuarioVO);

                        usuarioController = new UsuarioController();

                        int novoId = usuarioController.cadastrarUsuarioVO(usuarioVO);

//                        if (novoId > 0) {
//
//                            request.setAttribute("codigodousuario", novoId);
//                            request.setAttribute("nomepaciente", usuarioVO.getLogin());
//                            request.setAttribute("senha", usuarioVO.getSenha());
//                            
//
//                            request.getRequestDispatcher("MostrarPacienteCadastrado.jsp").forward(request, response);
//                        }
                        break;

                    case "validar":
                       
                        usuarioVO = new UsuarioVO();
                        usuarioVO.setLogin(request.getParameter(nome));  
                        usuarioVO.setSenha(senha);

                        usuarioController = new UsuarioController();
                        UsuarioVO validacaoDeUsuario = usuarioController.validarUusarioVO(usuarioVO);
                        if (validacaoDeUsuario != null) {

                            request.setAttribute("login", usuarioVO.getLogin());
                            request.setAttribute("senha",usuarioVO.getSenha());
                            request.getRequestDispatcher("WEB-INF/PaginaInicial.jsp").forward(request, response);
                        }

                        break;

                    default:
                        request.getRequestDispatcher("Index.jsp").forward(request, response);
                        break;

                }
            }
        }
            
            
            
        
//            if (user.equals("marcosena") && password.equals("1")) {
//                request.getSession().setAttribute("usuario", user);
//                response.sendRedirect("areadacomunidadejava");
//            } else {
//                response.sendRedirect("Autenticar.jsp");
//            }


        }
            

//                HttpSession session = request.getSession();
//                session.setAttribute("user", login);
//                session.setMaxInactiveInterval(20);
//                request.getRequestDispatcher("WEB-INF/censoDemograficoAutenticado.jsp").forward(request, response);
//            
//        request.getRequestDispatcher("cadastrarUsuarios.jsp").forward(request, response);

    private String MD5(String senha) {
        
        try {
            MessageDigest digest = MessageDigest.getInstance("MD5");
            digest.update(senha.getBytes());
            BASE64Encoder encoder = new BASE64Encoder();
            return encoder.encode(digest.digest());
        } catch (NoSuchAlgorithmException ns) {
            ns.printStackTrace();
        }
        return senha;
        
        }   


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

