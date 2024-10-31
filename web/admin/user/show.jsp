<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="Vũ Duy Lê - Dự án laptopshop" />
        <meta name="author" content="Vũ Duy Lê" />
        <title>Dashboard - Admin</title>

        <link href="${pageContext.request.contextPath}/resources/admin/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>

    <body class="sb-nav-fixed">
        <jsp:include page="../layout/header.jsp" />
        <div id="layoutSidenav">
            <jsp:include page="../layout/sidebar.jsp" />
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Manage Users</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active"><a href="/laptopshop/admin">Dashboard</a> </li>
                            <li class="breadcrumb-item active">Users</li>
                        </ol>
                        <div class="mt-5">
                            <div class="row">
                                <div class="col-12 mx-auto">
                                    <div class="d-flex justify-content-between">
                                        <h3>Table user</h3>
                                        <a href="/laptopshop/admin/user/create" class="btn btn-primary">Create new user</a>
                                    </div>
                                    <hr />
                                    <table class="table table-bordered table-hover">
                                        <thead class="thead-light">
                                            <tr>
                                                <th scope="col">ID</th>
                                                <th scope="col">Email</th>
                                                <th scope="col">Full Name</th>
                                                <th scope="col">Role</th>
                                                <th scope="col">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${requestScope.data}" var="user">
                                                <c:set var="id" value="${user.id}"/>
                                                <tr>
                                                    <td>${user.id}</td>
                                                    <td>${user.email}</td>
                                                    <td>${user.firstName} ${user.lastName}</td>                                                   
                                                    <td>${user.roleId == 1 ? 'USER' : (user.roleId == 2 ? 'ADMIN' : '')}</td>
                                                    <td>
                                                        <a href="/laptopshop/admin/user/detail?id=${id}"
                                                           class="btn btn-success">View</a>
                                                        <a href="/laptopshop/admin/user/update?id=${id}"
                                                           class="btn btn-warning mx-2">Update</a>
                                                        <a href="/laptopshop/admin/user/delete?id=${id}"
                                                           class="btn btn-danger">Delete
                                                            </as>
                                                    </td>
                                                </tr>
                                            </c:forEach>

                                        </tbody>

                                    </table>

                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <jsp:include page="../layout/footer.jsp" />
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/resources/admin/css/styles.css"></script>

    </body>

</html>