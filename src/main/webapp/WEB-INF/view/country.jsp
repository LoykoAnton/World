<%@include file="fragments/navbar.jspf" %>
<div class="container">
    <div class="bg-faded p-4 my-4">
        <div class="card-header" role="tab" id="headingOne">
            <h5 class="mb-0">
                <a data-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Add/Update Country</a>
            </h5>
        </div>
        <div id="collapseOne" class="collapse" role="tabpanel" aria-labelledby="headingOne"
             data-parent="#accordion">
            <div class="card-body">
                <form>
                    <div class="form-group">
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Code">
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Name">
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Continent">
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Region">
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Surface Area">
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Indep Year">
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Population">
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Life Expectancy">
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="GNP">
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="GNPOld">
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Local Name">
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Government Form">
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Head Of State">
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Capital">
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Code2">
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
                <a data-toggle="collapse" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">Delete Country</a>
            </h5>
        </div>
        <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo"
             data-parent="#accordion">
            <div class="card-body">
                <form>
                    <div class="form-group">
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Name">
                    </div>
                    <div>
                        <button type="submit" class="btn btn-primary">Delete</button>
                    </div>
                </form>
            </div>
        </div>

        <div class="row pt-4">
            <div class="col-lg-12 table">
                <table class="table-bordered table-hover table-responsive">
                    <thead>
                    <tr align="center">
                        <td>Code</td>
                        <td>Name</td>
                        <td>Continent</td>
                        <td>Region</td>
                        <td>SurfaceArea</td>
                        <td>IndepYear</td>
                        <td>Population</td>
                        <td>LifeExpectancy</td>
                        <td>GNP</td>
                        <td>GNPOld</td>
                        <td>LocalName</td>
                        <td>GovernmentForm</td>
                        <td>HeadOfState</td>
                        <td>Capital</td>
                        <td>Code2</td>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${countries}" var="country">
                        <tr>
                            <td>${country.code}</td>
                            <td>${country.name}</td>
                            <td>${country.continent}</td>
                            <td>${country.region}</td>
                            <td>${country.surfaceArea}</td>
                            <td>${country.indepYear}</td>
                            <td>${country.population}</td>
                            <td>${country.lifeExpectancy}</td>
                            <td>${country.gnp}</td>
                            <td>${country.gnpOld}</td>
                            <td>${country.localName}</td>
                            <td>${country.governmentForm}</td>
                            <td>${country.headOfState}</td>
                            <td>${country.capital}</td>
                            <td>${country.code2}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<%@include file="fragments/scripts.jspf" %>