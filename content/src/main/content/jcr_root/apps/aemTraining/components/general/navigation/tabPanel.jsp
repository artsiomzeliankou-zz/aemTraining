<%@include file="/libs/foundation/global.jsp"%>
<cq:includeClientLib categories="xtype" />
 
<% Node node = null;

if(resource.adaptTo(Node.class)!=null){
    node=resource.adaptTo(Node.class);
    PropertyIterator propIterator = null;
    if (node.getProperties()!=null){
        propIterator = node.getProperties();
        while (propIterator.hasNext()) {

            Property property = propIterator.nextProperty();

            String propName = property.getName();
            String tabSuffix = "rootpath";

            if (!(property.getDefinition().isMultiple()) &&	(propName.toLowerCase().endsWith(tabSuffix))){
				String propValue = property.getString();
                String tabName = propName.substring(0, propName.length() - tabSuffix.length());

                 %> <li class="list_item_first_level">
						<a href="<%= propValue %>">  <%= tabName %> </a>
						<div class="notarrow"></div>
					</li>
<%
            }         
         }
    }
} 

%>