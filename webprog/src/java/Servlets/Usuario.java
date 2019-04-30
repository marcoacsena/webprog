
package Servlets;

import controller.UsuarioController;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
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
        
        String user = request.getParameter("nome");
        String senha = MD5(request.getParameter("senha"));
        UsuarioController usuarioController;
        UsuarioVO usuarioVO;
            
            if(user != null){
                usuarioVO = new UsuarioVO();
                usuarioController = new UsuarioController();
                usuarioVO.setLogin(user);
                usuarioVO.setSenha(senha);
                
                int novoId = usuarioController.cadastrarUsuarioVO(usuarioVO);
                if(novoId > 0);{
            
                    request.getRequestDispatcher("Index.jsp").forward(request, response);
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

