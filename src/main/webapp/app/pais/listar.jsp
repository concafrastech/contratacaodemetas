<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
      <div class="row">
				<c:if  test="${!empty paisList}">
                <div class="panel panel-primary">
	                <div class="panel-heading">
	                    Pa�ses Cadastrados
	                </div>
	                <!-- /.panel-heading -->
	                <div class="panel-body">
		                <div class="table-responsive">
			                <table class="table table-bordered table-striped table-hover" id="tabelaPais">
                    <thead>
                    <tr>
                        <th>C�d.</th>
                        <th>Pa�s</th>
                        <th>&nbsp;</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${paisList}" var="pais">
                        <tr>
                            <td>${pais.id}</td>
                            <td>${pais.nome}</td>
                            <td>
                            	<form action="edit/${pais.id}" method="post">
	                            	<input type="button" onclick="this.form.action = 'edit/${pais.id}';submit();" class="btn btn-success btn-xs" value="Editar"/>&nbsp
	                            	<input type="button" onclick="this.form.action = 'delete/${pais.id}';submit();" class="btn btn-danger btn-xs" value="Excluir"/>
                            	</form>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
           </div>
		        </div>
		        </div>
	            </c:if>
	            <c:if  test="${empty paisList}">
            	<div class="panel panel-primary">
	                <div class="panel-heading">
	                    Mensagem
	                </div>
	                <!-- /.panel-heading -->
	                <div class="panel-body">
		                N�o h� pa�ses cadastradas.
		            </div>
		        </div>
            </c:if>
            <form action="add" method="get"><input type="submit" class="btn btn-primary" value="Novo"/></form>
	    </div>
	    
	    
<!-- Page-Level Plugin Scripts - Tables -->
<script type="text/javascript" src="/js/plugins/dataTables/pdfmake-0.1.18/build/pdfmake.js"></script>
<script type="text/javascript" src="/js/plugins/dataTables/pdfmake-0.1.18/build/vfs_fonts.js"></script>
<script type="text/javascript" src="/js/plugins/dataTables/DataTables-1.10.13/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="/js/plugins/dataTables/DataTables-1.10.13/js/dataTables.bootstrap.js"></script>
<script type="text/javascript" src="/js/plugins/dataTables/Buttons-1.2.4/js/dataTables.buttons.js"></script>
<script type="text/javascript" src="/js/plugins/dataTables/Buttons-1.2.4/js/buttons.bootstrap.js"></script>
<script type="text/javascript" src="/js/plugins/dataTables/Buttons-1.2.4/js/buttons.colVis.js"></script>
<script type="text/javascript" src="/js/plugins/dataTables/Buttons-1.2.4/js/buttons.html5.js"></script>
<script type="text/javascript" src="/js/plugins/dataTables/Buttons-1.2.4/js/buttons.print.js"></script>
<script type="text/javascript" src="/js/plugins/dataTables/Responsive-2.1.1/js/dataTables.responsive.js"></script>
<script type="text/javascript" src="/js/plugins/dataTables/Select-1.2.0/js/dataTables.select.js"></script>
    
    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#tabelaPais').dataTable({
            "language": {
                "url": "/js/plugins/dataTables/dataTablesPortuguese.json"
            }
        });
    });
    </script>