<div class="row home" itemscope itemtype="http://www.schema.org/ItemList">
    <div class="col-lg-7 col-sm-12">
        [[global:header.recent]]
        <div widget-area="main"></div>
    </div>
	<div class="col-lg-3" style="margin-left: 15px;" no-widget-class="col-lg-3" no-widget-target="sidebar">

			<!-- BEGIN categories -->
			<div class="<!-- IF categories.class -->{categories.class}<!-- ELSE -->categories<!-- ENDIF categories.class --> category-item" data-cid="{categories.cid}" data-numRecentReplies="{categories.numRecentReplies}">
				<meta itemprop="name" content="{categories.name}">

				<div class="category-icon">

					<!-- IF categories.link -->
					<a style="color: {categories.color};" href="{categories.link}" itemprop="url" target="_blank">
					<!-- ELSE -->
					<a style="color: {categories.color};" href="{relative_path}/category/{categories.slug}" itemprop="url">
					<!-- ENDIF categories.link -->
						<div
							id="category-{categories.cid}" class="category-header category-header-image-{categories.imageClass}"
							style="<!-- IF categories.backgroundImage -->background-image: url({categories.backgroundImage});<!-- ENDIF categories.backgroundImage -->
								<!-- IF categories.bgColor -->background-color: {categories.bgColor};<!-- ENDIF categories.bgColor -->
								color: {categories.color};
							"
						>
							<!-- IF !categories.link -->
							<span class="badge {categories.unread-class}"><i class="fa fa-book" data-toggle="tooltip" title="[[global:topics]]"></i> <span class="human-readable-number" title="{categories.topic_count}">{categories.topic_count}</span>&nbsp; <i class="fa fa-pencil" data-toggle="tooltip" title="[[global:posts]]"></i> <span class="human-readable-number" title="{categories.post_count}">{categories.post_count}</span></span>
							<!-- ENDIF !categories.link -->

							<!-- IF categories.icon -->
							<div class="pull-left categories-icon"><i class="fa {categories.icon} fa-2x"></i></div>
							<!-- ENDIF categories.icon -->
                            <div class="category-info">
                                <!-- IF categories.link -->
                                <a href="{categories.link}" itemprop="url" target="_blank">
                                    <!-- ELSE -->
                                    <a href="{relative_path}/category/{categories.slug}" itemprop="url">
                                        <!-- ENDIF categories.link-->
                                        <h4><!-- IF categories.icon --><i class="fa {categories.icon} visible-xs-inline"></i> <!-- ENDIF categories.icon -->{categories.name}</h4>
                                    </a>
                            </div>
						</div>
					</a>

					<div class="category-box">
                        <div class="list-group">
                        <!-- IF !categories.link -->
                        <!-- BEGIN posts -->

                            <div class="list-group-item">
                                <div class="row-picture">
                                    <img class="circle" src="http://lorempixel.com/56/56/people/1" alt="icon">
                                </div>
                                <div class="row-content">
                                    <h4 class="list-group-item-heading"><a href="{relative_path}/topic/{categories.posts.topic.slug}">{categories.posts.topic.title}</a>&bull; <span class="timeago" title="{categories.posts.relativeTime}"></span></h4>

                                </div>
                            </div>
                            <div class="list-group-separator"></div>
                            <!-- END posts -->
                            <!-- ENDIF !categories.link -->
                        </div>

					</div>
				</div>
			</div>
			<!-- END categories -->
	</div>
</div>
