<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="course.aspx.cs" Inherits="OnlineCourse.course" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <%--<%-- <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-end justify-content-center">
				<div class="col-md-9 ftco-animate pb-5 text-center">
					<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="fa fa-chevron-right"></i></a></span> <span>Courses <i class="fa fa-chevron-right"></i></span></p>
					<h1 class="mb-0 bread">Courses</h1>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 sidebar">
					<div class="sidebar-box bg-white ftco-animate">
						<form action="#" class="search-form">
							<div class="form-group">
								<span class="icon fa fa-search"></span>
								<input type="text" class="form-control" placeholder="Search...">
							</div>
						</form>
					</div>

					<div class="sidebar-box bg-white p-4 ftco-animate">
						<h3 class="heading-sidebar">Course Category</h3>
						<form action="#" class="browse-form">
						<%--	<label for="option-category-1"><input type="checkbox" id="option-category-1" name="vehicle" value="" checked> Design &amp; Illustration</label><br>--%>
							<%--<label for="option-category-2"><input type="checkbox" id="option-category-2" name="vehicle" value=""> HTML and CSS</label><br>
							<label for="option-category-3"><input type="checkbox" id="option-category-3" name="vehicle" value="">  PythonProgramming</label><br>
							<%--<label for="option-category-4"><input type="checkbox" id="option-category-4" name="vehicle" value=""> Music &amp; Entertainment</label><br>--%>
							<%--<label for="option-category-5"><input type="checkbox" id="option-category-5" name="vehicle" value=""> Javascript</label><br>
							<%--<label for="option-category-6"><input type="checkbox" id="option-category-6" name="vehicle" value=""> Health &amp; Fitness</label><br>--%>
							<%--<label for="option-category-5"><input type="checkbox" id="option-category-5" name="vehicle" value=""> ASP.NET</label><br>
							<label for="option-category-5"><input type="checkbox" id="option-category-5" name="vehicle" value=""> Java Programming</label><br>
							<label for="option-category-5"><input type="checkbox" id="option-category-5" name="vehicle" value=""> Database Management</label><br>
						</form>
					</div>--%>--%>--%>

					<%--<div class="sidebar-box bg-white p-4 ftco-animate">
						<h3 class="heading-sidebar">Course Instructor</h3>
						<form action="#" class="browse-form">
							<label for="option-instructor-1"><input type="checkbox" id="option-instructor-1" name="vehicle" value="" checked> Ronald Jackson</label><br>
							<label for="option-instructor-2"><input type="checkbox" id="option-instructor-2" name="vehicle" value=""> John Dee</label><br>
							<label for="option-instructor-3"><input type="checkbox" id="option-instructor-3" name="vehicle" value=""> Nathan Messy</label><br>
							<label for="option-instructor-4"><input type="checkbox" id="option-instructor-4" name="vehicle" value=""> Tony Griffin</label><br>
							<label for="option-instructor-5"><input type="checkbox" id="option-instructor-5" name="vehicle" value=""> Ben Howard</label><br>
							<label for="option-instructor-6"><input type="checkbox" id="option-instructor-6" name="vehicle" value=""> Harry Potter</label><br>
						</form>
					</div>--%>

					<%--<div class="sidebar-box bg-white p-4 ftco-animate">
						<h3 class="heading-sidebar">Course Type</h3>
						<form action="#" class="browse-form">
							<label for="option-course-type-1"><input type="checkbox" id="option-course-type-1" name="vehicle" value="" checked> Basic</label><br>
							<label for="option-course-type-2"><input type="checkbox" id="option-course-type-2" name="vehicle" value=""> Intermediate</label><br>
							<label for="option-course-type-3"><input type="checkbox" id="option-course-type-3" name="vehicle" value=""> Advanced</label><br>
						</form>
					</div>--%>

					<%--<div class="sidebar-box bg-white p-4 ftco-animate">
						<h3 class="heading-sidebar">Software</h3>
						<form action="#" class="browse-form">
							<label for="option-software-1"><input type="checkbox" id="option-software-1" name="vehicle" value="" checked> Adobe Photoshop</label><br>
							<label for="option-software-2"><input type="checkbox" id="option-software-2" name="vehicle" value=""> Adobe Illustrator</label><br>
							<label for="option-software-3"><input type="checkbox" id="option-software-3" name="vehicle" value=""> Sketch</label><br>
							<label for="option-software-4"><input type="checkbox" id="option-software-4" name="vehicle" value=""> WordPress</label><br>
							<label for="option-software-5"><input type="checkbox" id="option-software-5" name="vehicle" value=""> HTML &amp; CSS</label><br>
						</form>
					</div>
				</div>

				<div class="col-lg-9">
					<div class="row">
						<div class="col-md-6 d-flex align-items-stretch ftco-animate">
							<div class="project-wrap">
								<a href="CourseDetails.aspx" class="img" style="background-image: url(images/work-1.jpg);">
									<span class="price">Software</span>
								</a>
								<div class="text p-4">
									<h3><a href="#">Javascript</a></h3>
									<p class="advisor">Advisor <span>Tony Garret</span></p>
									<ul class="d-flex justify-content-between">
										<li><span class="flaticon-shower"></span>2300</li>
										<li class="price">$199</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-6 d-flex align-items-stretch ftco-animate">
							<div class="project-wrap">
								<a href="CourseDetails.aspx" class="img" style="background-image: url(images/work-2.jpg);">
									<span class="price">Software</span>
								</a>
								<div class="text p-4">
									<h3><a href="#">HTML and CSS</a></h3>
									<p class="advisor">Advisor <span>Tony Garret</span></p>
									<ul class="d-flex justify-content-between">
										<li><span class="flaticon-shower"></span>2300</li>
										<li class="price">$199</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-6 d-flex align-items-stretch ftco-animate">
							<div class="project-wrap">
								<a href="CourseDetails.aspx" class="img" style="background-image: url(images/work-3.jpg);">
									<span class="price">Software</span>
								</a>
								<div class="text p-4">
									<h3><a href="#">Java Programming </a></h3>
									<p class="advisor">Advisor <span>Tony Garret</span></p>
									<ul class="d-flex justify-content-between">
										<li><span class="flaticon-shower"></span>2300</li>
										<li class="price">$199</li>
									</ul>
								</div>
							</div>
						</div>

						<div class="col-md-6 d-flex align-items-stretch ftco-animate">
							<div class="project-wrap">
								<a href="CourseDetails.aspx" class="img" style="background-image: url(images/work-4.jpg);">
									<span class="price">Software</span>
								</a>
								<div class="text p-4">
									<h3><a href="#">Python Programming</a></h3>
									<p class="advisor">Advisor <span>Tony Garret</span></p>
									<ul class="d-flex justify-content-between">
										<li><span class="flaticon-shower"></span>2300</li>
										<li class="price">$199</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-6 d-flex align-items-stretch ftco-animate">
							<div class="project-wrap">
								<a href="CourseDetails.aspx" class="img" style="background-image: url(images/work-5.jpg);">
									<span class="price">Software</span>
								</a>
								<div class="text p-4">
									<h3><a href="#">Database Management</a></h3>
									<p class="advisor">Advisor <span>Tony Garret</span></p>
									<ul class="d-flex justify-content-between">
										<li><span class="flaticon-shower"></span>2300</li>
										<li class="price">$199</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-6 d-flex align-items-stretch ftco-animate">
							<div class="project-wrap">
								<a href="CourseDetails.aspx" class="img" style="background-image: url(images/work-6.jpg);">
									<span class="price">Software</span>
								</a>
								<div class="text p-4">
									<h3><a href="#">ASP.NET </a></h3>
									<p class="advisor">Advisor <span>Tony Garret</span></p>
									<ul class="d-flex justify-content-between">
										<li><span class="flaticon-shower"></span>2300</li>
										<li class="price">$199</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="row mt-5">
						<div class="col">
							<div class="block-27">
								<ul>
									<li><a href="#">&lt;</a></li>
									<li class="active"><span>1</span></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">&gt;</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>--%>--%>--%>

	<section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
            <div class="col-md-9 ftco-animate pb-5 text-center">
                <p class="breadcrumbs">
                    <span class="mr-2">
                        <a href="index.aspx">Home <i class="fa fa-chevron-right"></i></a>
                    </span>
                    <span>Courses <i class="fa fa-chevron-right"></i></span>
                </p>

                <h1 class="mb-0 bread">Courses</h1>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section bg-light">
<div class="container">
<div class="row">

<!-- Sidebar Start -->

<div class="col-lg-3 sidebar">

<div class="sidebar-box bg-white ftco-animate">
<form action="#" class="search-form">
<div class="form-group">
<span class="icon fa fa-search"></span>
<input type="text" class="form-control" placeholder="Search Course">
</div>
	 <div class="text-center mt-3">
            <button type="button" class="btn btn-primary btn-block">
                <span class="fa fa-search"></span> Search
            </button>
        </div>
</form>
</div>

<div class="sidebar-box bg-white p-4 ftco-animate">
<h3 class="heading-sidebar">Course Category</h3>

<form class="browse-form">

<label><input type="checkbox" checked> Web Development</label><br>

<label><input type="checkbox"> Programming</label><br>

<label><input type="checkbox"> Database</label><br>

<label><input type="checkbox"> Cyber Security</label><br>

<label><input type="checkbox"> Artificial Intelligence</label><br>

<label><input type="checkbox"> Data Science</label>

</form>

</div>

<div class="sidebar-box bg-white p-4 ftco-animate">

<h3 class="heading-sidebar">Level</h3>

<form class="browse-form">

<label><input type="checkbox"> Beginner</label><br>

<label><input type="checkbox"> Intermediate</label><br>

<label><input type="checkbox"> Advanced</label>

</form>

</div>

</div>

<!-- Sidebar End -->

<div class="col-lg-9">

<div class="row">

	<!-- Course 1 -->
<div class="col-md-6 d-flex align-items-stretch ftco-animate">
    <div class="project-wrap">
        <a href="CourseDetails.aspx?course=html" class="img" style="background-image: url(images/work-1.jpg);">
            <span class="price">Web Development</span>
        </a>

        <div class="text p-4">
            <h3><a href="CourseDetails.aspx?course=html">HTML &amp; CSS</a></h3>
            <p class="advisor">Instructor <span>Tony Garret</span></p>

            <ul class="d-flex justify-content-between">
                <li><span class="flaticon-shower"></span>2300 Students</li>
                <li class="price">₹199</li>
            </ul>
        </div>
    </div>
</div>

<!-- Course 2 -->
<div class="col-md-6 d-flex align-items-stretch ftco-animate">
    <div class="project-wrap">
        <a href="CourseDetails.aspx?course=aspnet" class="img" style="background-image: url(images/work-2.jpg);">
            <span class="price">Web Development</span>
        </a>

        <div class="text p-4">
            <h3><a href="CourseDetails.aspx?course=aspnet">ASP.NET Web Forms</a></h3>
            <p class="advisor">Instructor <span>Tony Garret</span></p>

            <ul class="d-flex justify-content-between">
                <li><span class="flaticon-shower"></span>1850 Students</li>
                <li class="price">₹299</li>
            </ul>
        </div>
    </div>
</div>

<!-- Course 3 -->
<div class="col-md-6 d-flex align-items-stretch ftco-animate">
    <div class="project-wrap">
        <a href="CourseDetails.aspx?course=python" class="img" style="background-image: url(images/work-3.jpg);">
            <span class="price">Programming</span>
        </a>

        <div class="text p-4">
            <h3><a href="CourseDetails.aspx?course=python">Python Programming</a></h3>
            <p class="advisor">Instructor <span>Tony Garret</span></p>

            <ul class="d-flex justify-content-between">
                <li><span class="flaticon-shower"></span>2000 Students</li>
                <li class="price">₹249</li>
            </ul>
        </div>
    </div>
</div>

<!-- Course 4 -->
<div class="col-md-6 d-flex align-items-stretch ftco-animate">
    <div class="project-wrap">
        <a href="CourseDetails.aspx?course=java" class="img" style="background-image: url(images/work-4.jpg);">
            <span class="price">Programming</span>
        </a>

        <div class="text p-4">
            <h3><a href="CourseDetails.aspx?course=java">Java Programming</a></h3>
            <p class="advisor">Instructor <span>Tony Garret</span></p>

            <ul class="d-flex justify-content-between">
                <li><span class="flaticon-shower"></span>2100 Students</li>
                <li class="price">₹249</li>
            </ul>
        </div>
    </div>
</div>

<!-- Course 5 -->
<div class="col-md-6 d-flex align-items-stretch ftco-animate">
    <div class="project-wrap">
        <a href="CourseDetails.aspx?course=javascript" class="img" style="background-image: url(images/work-5.jpg);">
            <span class="price">Programming</span>
        </a>

        <div class="text p-4">
            <h3><a href="CourseDetails.aspx?course=javascript">JavaScript</a></h3>
            <p class="advisor">Instructor <span>Tony Garret</span></p>

            <ul class="d-flex justify-content-between">
                <li><span class="flaticon-shower"></span>1900 Students</li>
                <li class="price">₹199</li>
            </ul>
        </div>
    </div>
</div>

<!-- Course 6 -->
<div class="col-md-6 d-flex align-items-stretch ftco-animate">
    <div class="project-wrap">
        <a href="CourseDetails.aspx?course=database" class="img" style="background-image: url(images/work-6.jpg);">
            <span class="price">Database</span>
        </a>

        <div class="text p-4">
            <h3><a href="CourseDetails.aspx?course=database">Database Management</a></h3>
            <p class="advisor">Instructor <span>Tony Garret</span></p>

            <ul class="d-flex justify-content-between">
                <li><span class="flaticon-shower"></span>1750 Students</li>
                <li class="price">₹199</li>
            </ul>
        </div>
    </div>
</div>

        <!-- Pagination -->
        <div class="row mt-5">
            <div class="col text-center">
                <div class="block-27">
                    <ul>
                        <li><a href="#">&lt;</a></li>
                        <li class="active"><span>1</span></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">&gt;</a></li>
                    </ul>
                </div>
            </div>
        </div>

    </div> <!-- End col-lg-9 -->

</div> <!-- End Row -->

</div> <!-- End Container -->

</section>



























</asp:Content>
