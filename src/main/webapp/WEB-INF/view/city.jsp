<%@include file="fragments/navbar.jspf" %>
<div class="container">
    <div class="bg-faded p-4 my-4">
        <div class="card-header" role="tab" id="headingOne">
            <h5 class="mb-0">
                <a data-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Add City</a>
            </h5>
        </div>

        <div id="collapseOne" class="collapse" role="tabpanel" aria-labelledby="headingOne"
             data-parent="#accordion">
            <div class="card-body">
                <form>
                    <div class="form-group">
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="ID">
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Name">
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Country Code">
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="District">
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Population">
                    </div>
                    <div>
                        <button type="submit" class="btn btn-primary">Add</button>
                        <button type="submit" class="btn btn-primary">Update</button>
                    </div>
                </form>
            </div>
        </div>

        <div class="card-header" role="tab" id="headingTwo">
            <h5 class="mb-0">
                <a data-toggle="collapse" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTne">Delete City</a>
            </h5>
        </div>
        <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo"
             data-parent="#accordion">
            <div class="card-body">
                <form>
                    <div class="form-group">
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="ID">
                    </div>
                    <div>
                        <button type="submit" class="btn btn-primary">Delete</button>
                    </div>
                </form>
            </div>
        </div>


        <div class="row pt-4">
            <div class="col-lg-12 table">
                <table class="table-bordered table-hover " width="100%">
                    <thead>
                    <tr align="center">
                        <td>ID</td>
                        <td>Name</td>
                        <td>CountryCode</td>
                        <td>District</td>
                        <td>Population</td>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${cities}" var="city">
                        <tr>
                            <td>${city.id}</td>
                            <td>${city.name}</td>
                            <td>${city.countryEntity.code}</td>
                            <td>${city.district}</td>
                            <td>${city.population}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<%@include file="fragments/scripts.jspf" %>