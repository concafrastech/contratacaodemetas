<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
      <div class="row">
           <form:form method="POST" commandName="planoModeloForm" action="upload" enctype="multipart/form-data" class="form-vertical">
				<div class="form-group">
		            <label class="control-label" for="file">Arquivo para fazer upload</label>
                	<div>
                	    <form:hidden path="instituto.id" />
                		<input type="file" name="file" class="form-control" /> 
                	</div>
	            </div>
				<input type="submit" name="submit" value="Carregar" class="btn btn-primary"/>
			</form:form>
        </div>
