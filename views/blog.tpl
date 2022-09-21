<!-- One -->
				<section id="one" class="wrapper style1 blog">
					<div class="container">
						<div class="inner blog">
							<header class="major">
								<h2>{{this.title}}</h2>
							</header>
						</div>

					</div>
				</section>
{{ $show = 3 }}
{{ if {get_var.p} }}
	{{ $skip = {math(({get_var.p} - 1) * {$show})} }}
{{ else }}
	{{ $skip = 0 }}
{{ end-if }}
			<!-- Three -->
				<section id="three" class="wrapper style3">
					<div class="container">
						<div class="row">
							{{each articles as article sort by article.date DESC }}
							<div class="4u 12u(narrow)">
								<section class="image-feature">
									<a onClick= "ga('send', 'event', 'Testing', '{{article.title}} CLICKED');" href="{{article.getUrl()}}">
										<header>
											<h3>{{article.title}}</h3>
										</header>
										<span class="image fit"><img src="{{article.main_image.getImage(348,313,crop)}}" alt="" /></span>
										<footer>
											<p>{{article.subtitle)}}</p>
										</footer>
									</a>
								</section>
							</div>
								{{ $lastOne = {article.zuid} }}
							{{end-each}}
						</div>
					</div>
					<!-- Pagination -->
					<div style="display: flex;justify-content:center;width:600px;margin:auto;">
{{ if {$skip} != 0 }}
	<a class="button" style="margin-right:30px" href="{{thispage.getUrl()}}?p={{eval({get_var.p} - 1)}}">Previous {{$show}} Articles</a>
{{ end-if }}

{{each articles as article sort by date ASC limit 1 }}
	{{ $lastTwo = {article.zuid} }}
{{ end-each }}

{{ if {$lastOne} != {$lastTwo} }}
	<a class="button" href="{{ page.getUrl() }}?p={{math({get_var.p} + 1)}}">Next {{$show}} Articles</a>
{{ end-if }}
</div>
					<!-- End Pagination -->
				</section>
