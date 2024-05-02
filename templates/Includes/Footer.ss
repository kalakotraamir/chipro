<section class="footerSlider" style="background-image: url($SiteConfig.SliderBackgroundImage.FocusFill(1920,600).URL);">
	<div class="container py-3 py-lg-5">
		<div class="row justify-content-between py-3 py-lg-5">
			<div class="col-lg-3 d-none d-lg-block position-relative">
				<button class="carousel-control-prev" type="button" data-bs-target="#FooterSlider" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
			</div>
			<div class="col-12 col-lg-6">
				<div id="FooterSlider" class="carousel slide"  data-bs-ride="carousel">
					<div class="carousel-inner">
						<% loop getMyClass("FooterSlide") %>
							<div class="carousel-item text-center <% if isFirst %>active<% end_if %>">
								<div class="h1 pb-3">$Title</div>
								$Text
							</div>
						<% end_loop %>
					</div>
				</div>
			</div>
			<div class="col-lg-3 d-none d-lg-block position-relative">
				<button class="carousel-control-next" type="button" data-bs-target="#FooterSlider" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
		</div>
	</div>
</section>



<section class="container  py-3 py-lg-5">
	<div class="row justify-content-between py-3 py-lg-5">
		<div class="col-12 col-lg-6 py-3">
			$SiteConfig.BottomContent

			<% if $SiteConfig.BottomLinkTitle %>
				<a href="$SiteConfig.BottomLinkURL" class="btn btn-primary text-white">$SiteConfig.BottomLinkTitle</a>
			<% end_if %>
		</div>
		<div class="col-12 col-lg-4 py-3 text-start text-lg-end">
			$SiteConfig.BottomImage
		</div>
	</div>
</section>
<footer class="bg-dark text-white">
	<div class="container py-3 py-lg-5">
		<div class="row">
			<div class="col-12 col-lg-3 py-3">
				$SiteConfig.FooterContent
			</div>
			<div class="col-12 col-lg-9">
				<div class="row">
					<% loop $Menu(1) %>
						<% if Children %>
							<div class="col-12 col-md-auto col-lg-3- py-3">
								<div class="pb-3">
									<a href="$Link" class="h5">$MenuTitle</a>
								</div>
								<% loop Children %>
									<a href="$Link">$MenuTitle</a>
									<br />
								<% end_loop %>
							</div>
						<% end_if %>
					<% end_loop %>
					<div class="col-12 col-md-auto col-lg-3- py-3">
						<% loop $Menu(1) %>
							<% if Children %><% else %>
								<div class="pb-3">
									<a href="$Link" class="h5">$MenuTitle</a>
								</div>
							<% end_if %>
						<% end_loop %>
						<a href="imprint/">Imprint</a>
						<br />
						<a href="privacy-policy/">Privacy Policy</a>
						<br />
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
<section class="container">
	<div class="row align-items-center py-3 py-lg-5">
		<div class="col-12 col-lg-6 py-3">
			$SiteConfig.FooterAdditionalContent
		</div>
		<div class="col-12 col-lg-6 py-3 text-start text-lg-end">
			<% loop $SiteConfig.FooterLogos.sort("SortOrder") %>
				$ScaleHeight(90)
			<% end_loop %>
		</div>
	</div>
</section>