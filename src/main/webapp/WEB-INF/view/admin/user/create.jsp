<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="laptopshop" />
                <title>Dashboard</title>
                <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <script>
                    $(document).ready(() => {
                        const avatarFile = $("#avatarFile");
                        avatarFile.change(function (e) {
                            const imgURL = URL.createObjectURL(e.target.files[0]);
                            $("#avatarPreview").attr("src", imgURL);
                            $("#avatarPreview").css({ "display": "block" });
                        });
                    });
                </script>
            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />

                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4">Create user</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                                    <li class="breadcrumb-item active">users</li>
                                </ol>
                                <div class="mt-5">
                                    <div class="row">
                                        <div class="col-md-6 col-12 mx-auto">
                                            <h3>Create a user</h3>
                                            <hr>
                                            <form:form action="/admin/user/create" method="post"
                                                modelAttribute="newUser" class="row" enctype="multipart/form-data">
                                                <div class="mb-3 col-md-6 col-12">
                                                    <c:set var="errorEmail">
                                                        <form:errors path="email" />
                                                    </c:set>
                                                    <label for="form-label">Email:</label>
                                                    <form:input type="email"
                                                        class="form-control ${not empty errorEmail? 'is-invalid':''}"
                                                        path="email" />
                                                    <form:errors path="email" cssClass="invalid-feedback" />
                                                </div>
                                                <div class="mb-3 col-md-6 col-12">
                                                    <label for="form-label">Password:</label>
                                                    <c:set var="errorPassword">
                                                        <form:errors path="password" />
                                                    </c:set>
                                                    <form:input type="password"
                                                        class="form-control ${not empty errorPassword? 'is-invalid':''}"
                                                        path="password" />
                                                    <form:errors path="password" cssClass="invalid-feedback" />
                                                </div>
                                                <div class="mb-3 col-md-6 col-12">
                                                    <c:set var="errorPhone">
                                                        <form:errors path="phone" />
                                                    </c:set>
                                                    <label for="form-label">Phone number:</label>
                                                    <form:input type="text"
                                                        class="form-control ${not empty errorPhone? 'is-invalid':''}"
                                                        path="phone" />
                                                    <form:errors path="phone" cssClass="invalid-feedback" />
                                                </div>
                                                <div class="mb-3 col-md-6 col-12">
                                                    <c:set var="errorFullName">
                                                        <form:errors path="fullname" />
                                                    </c:set>
                                                    <label for="form-label">Full name:</label>
                                                    <form:input type="text"
                                                        class="form-control ${not empty errorFullName? 'is-invalid':''}"
                                                        path="fullname" />
                                                    <form:errors path="fullname" cssClass="invalid-feedback" />
                                                </div>
                                                <div class="mb-3 col-12">
                                                    <c:set var="errorAddress">
                                                        <form:errors path="address" />
                                                    </c:set>
                                                    <label for="form-label">Address:</label>
                                                    <form:input type="text"
                                                        class="form-control ${not empty errorAddress? 'is-invalid':''}"
                                                        path="address" />
                                                    <form:errors path="address" cssClass="invalid-feedback" />
                                                </div>
                                                <div class="mb-3 col-md-6 col-12">
                                                    <label class="form-label">Role:</label>
                                                    <form:select class="form-select" path="role.name">
                                                        <form:option value="ADMIN">ADMIN</form:option>
                                                        <form:option value="USER">USER</form:option>
                                                    </form:select>
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label for="avatarFile" class="form-label">Avatar:</label>
                                                    <input type="file" class="form-control" id="avatarFile"
                                                        name="hoidanitFile" accept=".png, .jpg, .jpeg">
                                                </div>
                                                <div class="mb-3 col-12">
                                                    <img alt="avatar preview" style="max-height: 250px; display: none;"
                                                        id="avatarPreview">
                                                </div>
                                                <div class="mb-5 col-12 text-center">
                                                    <button type="submit"
                                                        class="btn btn-primary mx-auto">Create</button>
                                                </div>
                                            </form:form>
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
                <script src="/js/scripts.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
                    crossorigin="anonymous"></script>
                <script src="/js/chart-area-demo.js"></script>
                <script src="/js/chart-bar-demo.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
                    crossorigin="anonymous"></script>
                <script src="/js/datatables-simple-demo.js"></script>
            </body>

            </html>