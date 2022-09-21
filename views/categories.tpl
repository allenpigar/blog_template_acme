<!-- One -->
				<section id="one" class="wrapper style1 blog">
					<div class="container">
						<div class="inner blog">
							<header class="major">
								<h2>{{this.name}}</h2>
							</header>
						</div>

					</div>
				</section>

			<!-- Three -->
				<section id="three" class="wrapper style3">
					<div class="container">
							<h1> Articles tagged {{this.name}}</h1>
						<div class="row">
							{{each articles as article where find_in_set('{this.zuid}', article.tags) sort by article.date ASC}}
							<div class="4u 12u(narrow)">
								<section class="image-feature">
									<a href="{{article.getUrl()}}">
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