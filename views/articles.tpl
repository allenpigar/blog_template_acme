<!-- Main-->
				<div class="wrapper style2">
					<section id="main" class="container">
						<header class="major">
							<h2>{{this.title}}</h2>
							{{this.createdAt.date(Y)}}
					        (**<p>{{this.subtitle}}</p>**)		
						</header>
						<div class="row 150%">
							<div class="8u 12u(narrow)">

								<!-- Content -->
									<section id="content">
										<div class="image fit"><img src="{{this.main_image.getImage()}}" alt="" /></div>
										{{this.content}}
									</section>
									<ul class="stats">
                                        <h3>Tags</h3>
                                        {{this.tags}}</br>
										{{each categories as cat where find_in_set(z.zuid,'{this.tags}') order by FIND_IN_SET(z.zuid,'{this.tags}') asc }}
										<li><a href="{{cat.getUrl()}}" class="icon fa-tag" title="">{{cat.name}}: {{cat.zuid}}</a></li>
										{{end-each}}
												</ul>
							</div>
							<div class="4u 12u(narrow)">

								<!-- Sidebar -->
									<section id="sidebar">
										<h3> Related Articles</h3>
										<p>{{articles.random().title}}</p>
										{{each categories as relatedcategory find_in_set(z.zuid,'{this.tags}') limit 2 }}
									(**	{{articles.filter( categories = '{relatedcategory.zuid}').title}}**)
										(**{{each articles as relatedarticle where find_in_set('{relatedcategory.zuid}', relatedarticle.categories) and z.zuid != '{this.zuid}' limit 1 }}
										<section>
											<a href="#" class="image fit"><img src="{{relatedarticle.main_image.getImage()}}" alt="" /></a>
											<h3>{{relatedarticle.title}}</h3>
											{{relatedarticle.content.subwords(20)}}...
											<footer>
												<ul class="actions">
													<li><a href="{{relatedarticle.getUrl()}}" class="button small alt">Read More</a></li>
												</ul>
											</footer>
										</section>
										<hr />
										{{end-each}} **)
										{{end-each}}
									</section>

							</div>
						</div>
					</section>
				</div>