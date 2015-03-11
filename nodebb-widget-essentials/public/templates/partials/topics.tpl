<!-- BEGIN topics -->
<article class="timeline-entry">

    <div class="timeline-entry-inner">

        <div class="timeline-icon bg-success">
            <a href="<!-- IF topics.user.userslug -->{relative_path}/user/{topics.user.userslug}<!-- ELSE -->#<!-- ENDIF topics.user.userslug -->"><img title="{topics.user.username}" class="img-circle" src="{topics.user.picture}"/></a>
            <i class="entypo-feather"></i>
        </div>

        <div class="timeline-label">

                <div class="timeline-header row">
                    <div class="col-sm-12">
                    <h4 class="pull-left">
                        <a href="<!-- IF topics.user.userslug -->{relative_path}/user/{topics.user.userslug}<!-- ELSE -->#<!-- ENDIF topics.user.userslug -->">
                        {topics.user.username}
                        </a>
                    </h4>
                    <span class="timeago pull-right" title="{topics.relativeTime}"></span>
                    </div>
                    <div class="col-sm-12">
                        <div class="timeline-category pull-left">
                        <i class="mdi-action-book"></i> <a href="{topics.category.slug}">{topics.category.name}</a>
                        </div>
                        <div class="timeline-view-count pull-left">
                            <i class="mdi-action-visibility"></i> {topics.viewcount}
                        </div>
                        <div class="timeline-post-count pull-left">
                            <i class="mdi-communication-comment"></i> {topics.postcount}
                        </div>
                    </div>
                </div>


            <!--IF topics.thumb -->
            <div class="thumb"><img src="{topics.thumb}" class="img-responsive text-center"></div>
            <!-- ENDIF topics.thumb -->

            <h2><a href="{config.relative_path}/topic/{topics.slug}">{topics.title}</a></h2>
            <div class="timeline-content">
                {topics.content}
            </div>
        </div>
    </div>

</article>
<!-- END topics -->