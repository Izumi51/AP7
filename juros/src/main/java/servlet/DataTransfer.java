package servlet;

import model.Juros;

//Estou usando o tomcat 11, por isso tive que usar o jakarta e nao o javax
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DataTransfer")
//@WebServlet(name = "DataTransfer", value = "/DataTransfer")
public class DataTransfer extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public DataTransfer() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            double capital = Double.parseDouble(request.getParameter("capital"));
            int tempo = Integer.parseInt(request.getParameter("tempo"));
            double percentual = Double.parseDouble(request.getParameter("percentual")) / 100;
            String tipoJuros = request.getParameter("tipo");
            String[] resultados = request.getParameterValues("resultado");

            Juros calculo = new Juros(capital,tempo,percentual);

            boolean mostrarJuros = false;
            boolean mostrarMontante = false;

            if(resultados != null) {
                for(String result : resultados) {
                    if(result.equals("Juros"))
                        mostrarJuros = true;
                    if(result.equals("JurosECapital"))
                        mostrarMontante = true;
                }
            }

            if(tipoJuros.equalsIgnoreCase("Simples")) {
                calculo.calcularJurosSimples();
            } else if(tipoJuros.equalsIgnoreCase("Composto")) {
                calculo.calcularJurosComposto();
            }

            request.setAttribute("juros", calculo.getJuros());
            request.setAttribute("montante", calculo.getMontante());
            request.setAttribute("mostrarJuros", mostrarJuros);
            request.setAttribute("mostrarMontante", mostrarMontante);

            request.getRequestDispatcher("pag/resultado.jsp").forward(request, response);

        } catch (Exception e) {
            request.setAttribute("erro", "Dados inválidos" + e.getMessage());
            request.getRequestDispatcher("pag/erro.jsp").forward(request, response);
        }
    }
}