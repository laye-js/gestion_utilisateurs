<%@page import="beans.Utilisateur, java.util.ArrayList"%>
<%@ page contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des utilisateurs</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
        <c:import url="inc/menu.jsp"/>
        <div id="corps">
            <h1 id="titre-principal">Liste des utilisateurs</h1>
            <c:choose>
                <c:when test="${empty utilisateurs}">
                    <p>La liste des utilisateurs est pour le moment vide !</p>
                </c:when>
                <c:otherwise>
                    <table class="table table-bordered bg-white text-dark">
                        <thead class="thead-light">
                            <tr>
                                <th class="text-dark">ID</th>
                                <th class="text-dark">Prenom</th>
                                <th class="text-dark">Nom</th>
                                <th class="text-dark">Login</th>
                                <th class="text-dark">Password</th>
                                <th class="text-dark" colspan="2">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="utilisateur" items="${requestScope.utilisateurs}">
                                <tr class="bg-white text-dark">
                                    <td><c:out value="${utilisateur.id}"/></td>
                                    <td><c:out value="${utilisateur.prenom}"/></td>
                                    <td><c:out value="${utilisateur.nom}"/></td>
                                    <td><c:out value="${utilisateur.login}"/></td>
                                    <td><c:out value="${utilisateur.password}"/></td>
                                    <td>
                                        <a class="btn btn-primary" href="<c:url value='/update?id=${utilisateur.id}'/>" role="button">Modifier</a>
                                        <a class="btn btn-danger" href="<c:url value='/delete?id=${utilisateur.id}'/>" role="button" onclick="return confirmSuppression()">Supprimer</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </c:otherwise>
            </c:choose>
        </div>
        <div id="pied">Copyright DIC3 ESP &copy; Abdoulaye Ba 2024</div>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>