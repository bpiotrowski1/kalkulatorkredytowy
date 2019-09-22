<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<div class="container">
    <h1>Oblicz kosz kredytu i wysokość raty</h1>
    <hr/>
    <p>
    <form action="?" method="post">
        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="wysokoscKredytu">Wysokość kredytu:</label>
            <input name="wysokoscKredytu" type="number" class="form-control col-sm-8" id="wysokoscKredytu"/>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="rocznaStopaProcentowa">Roczna stopa procentowa:</label>
            <input name="rocznaStopaProcentowa" type="number" class="form-control col-sm-8" id="rocznaStopaProcentowa"/>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="okresKredytu">Okres kredytu:</label>
            <input name="okresKredytu" type="number" class="form-control col-sm-8" id="okresKredytu"/>
        </div>
        <button class="btn btn-primary col-sm-3" type="submit">Wyślij</button>
    </form>
    <%
        if (request.getParameter("wysokoscKredytu") != null && !request.getParameter("wysokoscKredytu").isEmpty() &&
                request.getParameter("rocznaStopaProcentowa") != null && !request.getParameter("rocznaStopaProcentowa").isEmpty() &&
                request.getParameter("okresKredytu") != null && !request.getParameter("okresKredytu").isEmpty()) {
            double b = Double.parseDouble(request.getParameter("rocznaStopaProcentowa"));
            int m = Integer.parseInt(request.getParameter("okresKredytu"));
            double A = Double.parseDouble(request.getParameter("wysokoscKredytu"));
            double q = 1 + (b/m);

            out.print("<br/><br/><hr/>");
            out.print("<h2>Wynik:</h2>");
            out.print("<hr/>");
            out.print("<form>");
            out.print("<div class=\"form-group row\">");
            out.print("<label class=\"col-sm-4 col-form-label\">Wysokość raty:</label>");
            out.print("<input class=\"form-control col-sm-8\" type=\"text\" placeholder=\"" + 0 + "\" readonly/>");
            out.print("</div>");
            out.print("<div class=\"form-group row\">");
            out.print("<label class=\"col-sm-4 col-form-label\">Całkowity koszt kredytu:</label>");
            out.print("<input class=\"form-control col-sm-8\" type=\"text\" placeholder=\"" + 0 + "\" readonly/>");
            out.print("</div>");
            out.print("</form>");
        }
    %>
    </p>
</div>
<%@ include file="footer.jsp" %>