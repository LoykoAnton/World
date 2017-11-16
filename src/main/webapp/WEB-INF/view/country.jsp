<%@include file="fragments/navbar.jspf" %>
<div class="container">
    <div class="bg-faded p-4 my-4">
        <div class="card-header" role="tab" id="headingOne">
            <h5 class="mb-0">
                <a data-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Add
                    City</a>
            </h5>
        </div>
        <div id="collapseOne" class="collapse" role="tabpanel" aria-labelledby="headingOne"
             data-parent="#accordion">
            <div class="card-body">
                <form>
                    <div class="form-group">
                        <label>Country code</label>
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Code">
                    </div>
                    <div>
                        <label>Country name</label>
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Name">
                    </div>
                    <div>
                        <label>Continent</label>
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Continent">
                    </div>
                    <div>
                        <label>Region</label>
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Region">
                    </div>
                    <div>
                        <label>Surface Area</label>
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="SurfaceArea">
                    </div>
                    <div>
                        <label>Indep Year</label>
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="IndepYear">
                    </div>
                    <div>
                        <label>Population</label>
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Population">
                    </div>
                    <div>
                        <label>Life Expectancy</label>
                        <input type="text" class="form-control" aria-describedby="emailHelp"
                               placeholder="LifeExpectancy">
                    </div>
                    <div>
                        <label>GNP</label>
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="GNP">
                    </div>
                    <div>
                        <label>GNPOld</label>
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="GNPOld">
                    </div>
                    <div>
                        <label>LocalName</label>
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="LocalName">
                    </div>
                    <div>
                        <label>Government Form</label>
                        <input type="text" class="form-control" aria-describedby="emailHelp"
                               placeholder="GovernmentForm">
                    </div>
                    <div>
                        <label>Head Of State</label>
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="HeadOfState">
                    </div>
                    <div>
                        <label>Capital</label>
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Capital">
                    </div>
                    <div>
                        <label>Code2</label>
                        <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Code2">
                    </div>
                    <div>
                        <button type="submit" class="btn btn-primary">Submit</button>
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