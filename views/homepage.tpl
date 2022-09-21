
<!-- Banner -->
<section id="banner" style="background-image: url('{{this.image.getImage()}}')">
	<div class="inner">
		<h2>{{this.title}}</h2>
		<h3>{{globals.footer_text}}</h3>
		<p>{{this.lead_in_sub_header}}</p>
	</div>
</section>

<!-- One -->
<section id="one" class="wrapper style1">
	<div class="container">
		<div class="inner">
		<h3>This is my new text: {{this.title}}</h3>
			<header class="major">
				<h2>{{this.section_2_header}}</h2>
			</header>
			<p>{{this.section_2_sub_header}}</p>
		</div><span class="device image fit"><img src="{{this.section_2_image.getImage()}}" alt="" /></span>
	</div>
</section>

<!-- Two -->
<section id="two" class="wrapper style2">
	<div class="container">
		<div class="row">
			{{each services as service }}
			<div class="6u 12u$(narrow)">
				<section class="feature">
					<i class="icon"><img style="max-width:60%;" src="{{service.service_icon.getImage(116,116,fit)}}"/></i>
					<h3>{{service.name}}</h3>
					<p>{{service.description}}</p>
				</section>
			</div>
			{{end-each}}
		</div>
	</div>
</section>

<!-- Blog goes here -->
<section id="three" class="wrapper style3">
	<div class="container">
		<div class="row">
			{{each articles as article sort by article.date ASC limit 3 }}
			<div class="4u 12u(narrow)">
				<section class="image-feature">
					<a onClick= "ga('send', 'event', 'Testing', '{{article.title}}_CLICKED_Home');" href="{{article.getUrl()}}" href="{{article.getUrl()}}">
						<header>
							<h3>{{article.title}}</h3>
						</header>
						<span class="image fit"><img src="{{article.main_image.getImage(348,313,crop)}}" alt="" /></span>
						<footer>
							<p>{{article.subtitle}}</p>
						</footer>
					</a>
				</section>
			</div>
			{{end-each}}
		</div>
	</div>
</section>
