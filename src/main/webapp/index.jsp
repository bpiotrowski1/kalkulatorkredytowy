<%@ page import="java.time.LocalDate" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp">
    <jsp:param name="active" value="1"/>
</jsp:include>
<div class="container">
    <h1>Oblicz kosz kredytu i wysokość raty</h1>
    <hr/>
    <p>
    <form action="?" method="get">
        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="wysokoscKredytu">Wysokość kredytu:</label>
            <input name="wysokoscKredytu" type="number" class="form-control col-sm-8" id="wysokoscKredytu"/>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="rocznaStopaProcentowa">Roczna stopa procentowa:</label>
            <input name="rocznaStopaProcentowa" type="text" class="form-control col-sm-8" id="rocznaStopaProcentowa"/>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="okresKredytu">Okres kredytu:</label>
            <input name="okresKredytu" type="number" class="form-control col-sm-8" id="okresKredytu" step="1"/>
        </div>
        <button class="btn btn-primary col-sm-3" type="submit">Wyślij</button>
    </form>
    <jsp:useBean id="kredyt" class="pl.bpiotrowski.Kredyt"/>
    <jsp:setProperty name="kredyt" property="*"/>
    <%
        if (request.getParameter("wysokoscKredytu") != null && !request.getParameter("wysokoscKredytu").isEmpty() &&
                request.getParameter("rocznaStopaProcentowa") != null && !request.getParameter("rocznaStopaProcentowa").isEmpty() &&
                request.getParameter("okresKredytu") != null && !request.getParameter("okresKredytu").isEmpty()) {

            out.print("<br/><br/><hr/>");
            out.print("<h2>Wynik:</h2>");
            out.print("<hr/>");
            out.print("<form>");
            out.print("<div class=\"form-group row\">");
            out.print("<label class=\"col-sm-4 col-form-label\">Wysokość raty:</label>");
            out.print("<input class=\"form-control col-sm-8\" type=\"text\" placeholder=\"" + kredyt.obliczWysokoscRaty() + "\" readonly/>");
            out.print("</div>");
            out.print("<div class=\"form-group row\">");
            out.print("<label class=\"col-sm-4 col-form-label\">Całkowity koszt kredytu:</label>");
            out.print("<input class=\"form-control col-sm-8\" type=\"text\" placeholder=\"" + kredyt.obliczCalkowityKoszt() + "\" readonly/>");
            out.print("</div>");
            out.print("</form>");

            out.print("<table class=\"table\">");
            LocalDate now = LocalDate.now();
            for (int i = 1; i <= kredyt.getOkresKredytu(); i++) {
                LocalDate dataRaty = now.plusMonths(i);
                out.print("<tr><td>" + dataRaty + "</td><td>" + kredyt.obliczWysokoscRaty() + "</td></tr>");
            }
            out.print("</table>");
        }
    %>
    </p>
</div>
<%@ include file="footer.jsp" %>