<div id="main-wrapper">
	<div class="container main-content" style="margin-top: -3rem!important;">
		<div class="row pt-5">
			<div class="hero-text col-sm-12 col-md-8 col-lg-6">
				<h1>${param.siteName} Data Portal</h1>
                <p>Search for datasets from research conducted across the globe by ${param.siteName} scientists and scholars.</p>
				<form class="form-inline my-2 my-lg-0 d-inline" action="./simpleSearch" method="post" _lpchecked="1">
					<input class="form-control mr-sm-2" type="search" name="terms" id="navBarTerms" placeholder="Search The Portal" aria-label="Search">
					<button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
					<span class="navbar-text pl-3"><a href="advancedSearch.jsp">Advanced Search</a></span>
				</form>
			</div>
		</div>
	</div>
</div>

<div class="container main-content" style="min-height: 700px;">
    <div class="row p-5">
        <div class="col-xs-12 col-md-7" style="font-weight: 300; font-size: 18px;">
            <h1>About the ${param.siteName} Data Portal</h1>
            <p>As part of our funding commitments, National Science Foundation (NSF) funded projects, such as CAP LTER, are required to make as much research data as possible publicly available. The CAP LTER project adheres to the LTER data access policy and aims to publish all research data unless limited by either privacy or license restrictions.</p>
            <p>Our commitment to data access includes the provision of metadata to enable data users to assess the content and significance of the data they download.</p>
            <p>With the ${param.siteName} Data Portal you can:</p>
            <ul>
                <li>Quickly search for datasets based on keywords or author names</li>
                <li>Create more granular searches using the <a href="advancedSearch.jsp">advanced search</a> features</li>
                <li>Easily find abstracts, proper citations, geographical information, and more</li>
                <li>Download datasets and associated metadata</li>
                <li>Generate code to use datasets in Python, R, and other languages</li>
            </ul>

            <p>The ${param.siteName} Data Portal is a modified version of <a href="https://portal.edirepository.org/nis/home.jsp" target="_blank">the Environmental Data Initiative (EDI) Data Portal</a> - it is powered by the same technology, and searches the same EDI database, but is filtered to only include datasets published by ${param.siteName} scientists and scholars.
        </div>
        <div class="d-none d-sm-block col-sm-12 col-md-5">
            <img src="images/portal-graphic-01.png" alt="placeholder">
        </div>
    </div>
</div>