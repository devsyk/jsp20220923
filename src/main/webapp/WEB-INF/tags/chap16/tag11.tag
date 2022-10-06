<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name="menuItems" %>
<%@ attribute name="current" %>
<%@ tag dynamic-attributes="links" %>

<nav class="navbar navbar-expand-lg bg-light">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">Navbar</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<c:forEach items="${menuItems.split(',') }" var="menu">
					<li class="nav-item">
						<a class="nav-link ${menu eq current ? 'active' : '' }" 
							href="${links[menu] }">
							<%-- href="<c:forEach items="${links }" var="link"> ${link.key eq menu ? link.value : '' } </c:forEach>"> --%>
							${menu }
						</a>
					</li>
				</c:forEach>
				
			</ul>
		</div>
	</div>
</nav>

