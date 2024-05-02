<% if $Level(2) %>
	<div id="Breadcrumbs">
	   	$Breadcrumbs
	</div>
<% end_if %>
<section class="pageHeader">
	<% if HeaderImage %>
		<picture>
			<source srcset="$HeaderImage.Fill(1920,500).URL" media="(min-width: 768px)">
			$HeaderImage.Fill(768,600)
		</picture>
	<% else %>
		<picture>
			<source srcset="$SiteConfig.DefaultHeaderImage.Fill(1920,500).URL" media="(min-width: 768px)">
			$SiteConfig.DefaultHeaderImage.Fill(768,600)
		</picture>
	<% end_if %>
	<div class="pageHeaderPositioner">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12 text-center display-1 text-uppercase text-primary">
					$Title
				</div>
			</div>
		</div>
	</div>
</section>