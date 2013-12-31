	<aside class="sidebar">
		<!-- Search -->
		<nav class="widget-search">
			<form action="<?php echo base_url();?>wpilife/house/search" method="get">
				<button class="search-btn-widget"></button>
				<input class="search-field" name="keyword" id="keyword" type="text" onblur="if(this.value=='')this.value='Search';" onfocus="if(this.value=='Search')this.value='';" value="Search" />
			</form>
		</nav>
		<div class="clearfix"></div>

		<!-- Popular -->
		<div class="widget">
			<h4>Recent Products</h4>
			<?php 
			
				$list = $this->houselib->get_recent_list_by_count(3);
			
				if($list)
				{
					foreach($list as $item)
					{
			?>
			<div class="latest-house-items">
				<p><a href="<?php echo base_url();?>wpilife/house/<?php echo $item->house_id;?>"><?php echo $item->addr;?></a> 
				<br/>
				<span><?php echo $item->bedrooms_count;?> bedroom(s) - $<?php echo $item->month_rent;?></span></p>
			</div>
					
			<?php 
					}
				}

			?>
			

		</div>
			
	</aside>
