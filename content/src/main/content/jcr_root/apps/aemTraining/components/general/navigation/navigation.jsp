<%@include file="/libs/foundation/global.jsp"%>
<%@page session="false"%>

<div id="header">
	<div class="navigation_wrapper">
		<div class="header_navigation topnavigation">
			<div class="first_level_wrapper">
				<ul class="first_level">
					<li class="list_item_first_level">
						<a class="logo_from_header" href="#">
                            <img title="EPAM Systems" src="/etc/designs/aemTraining/img/logo-white.png">
							<span style="font-size: 9px"></span>
						</a>
					</li>	
					<cq:include script="tabPanel.jsp"/>
				</ul>
			</div>
			<div class="clr"></div>
			<div class="second_level_wrapper">
				<ul class="ul_second_level">
					<cq:include script="subPanel.jsp"/>
                </ul>
			</div>
		</div>
	</div>
</div>



