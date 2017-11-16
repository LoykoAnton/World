<%@include file="fragments/navbar.jspf" %>
<div class="container">
    <div class="bg-faded p-4 my-4">
        <div class="card-header" role="tab" id="headingOne">
            <h5 class="mb-0">
                <a data-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Add/Update
                    Country Language</a>
            </h5>
        </div>

        <div id="collapseOne" class="collapse" role="tabpanel" aria-labelledby="headingOne"
             data-parent="#accordion">
            <div class="card-body">
                <form>
                    <div class="form-group">
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Code">
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Language">
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="IsOfficial">
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Percentage">
                    </div>
                    <div>
                        <button type="submit" class="btn btn-primary">Add</button>
                        <button type="submit" class="btn btn-primary">Update</button>
                    </div>
                </form>
            </div>
        </div>

        <div class="row pt-4">
            <div class="col-lg-12 table">
                <table class="table-bordered table-hover" width="100%">
                    <thead>
                    <tr align="center">
                        <td>Code</td>
                        <td>Language</td>
                        <td>IsOfficial</td>
                        <td>Percentage</td>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${countrylanguagies}" var="language">
                        <tr>
                            <td>${language.countryCode}</td>
                            <td>${language.language}</td>
                            <td>${language.isOfficial}</td>
                            <td>${language.percentage}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<%@include file="fragments/scripts.jspf" %>