<%@include file="/libs/foundation/global.jsp"%>
<cq:includeClientLib categories="xtype" />
<%@ page import="com.day.cq.wcm.api.Page" %>

<% Node node = null;

Page parentPage = currentPage.getParent();
String parentTitle = null;
if(null != parentPage){
	parentTitle = parentPage.getTitle();
}

if(resource.adaptTo(Node.class)!=null){
    node=resource.adaptTo(Node.class);
    PropertyIterator propIterator = null;
    if (node.getProperties()!=null){
        propIterator = node.getProperties();
        while (propIterator.hasNext()) {
            Property property = propIterator.nextProperty();
            String propName = property.getName();
            //String tabSuffix = parentTitle.concat("subtabs");
            String tabSuffix = ("newssubtabs");
            String value = null;
            String[] linkFields =null;	
            if (property.getDefinition().isMultiple() && (propName.toLowerCase().endsWith(tabSuffix))){
				 StringBuffer buf = new StringBuffer();
                  Value[] values = property.getValues();
                  for (int i = 0; i < values.length; i++) {
                       buf.append(values[i].getString()).append(",");
                  }
                  value = buf.toString();
                  String[] tokens = value.split(",");
                  for (int i=0;i<tokens.length;i++) {
                      String path = tokens[i];
                      String title =  path.substring(path.lastIndexOf("/") +1);
					%> <li> <a href="<%= path %>.html"> <%= title %> </a> </li> <%
                  }	
            }         
         }
    }
} 

%>
