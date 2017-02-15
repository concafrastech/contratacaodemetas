
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<style>
<!--
.ui-datepicker { font-size: 9pt !important; }
-->
</style>

      <div class="row">
	            <form:form method="post" action="save/${rodizioForm.id}" commandName="rodizioForm" class="form-horizontal">
	            	<form:hidden path="id" />
	            	<fmt:formatDate value="${rodizioForm.dataAprovacao}" var="dataRodizio" type="date" pattern="dd/MM/yyyy" />
                   	<fmt:formatDate value="${rodizioForm.inicio}" var="inicio" type="date" pattern="dd/MM/yyyy" />
                   	<fmt:formatDate value="${rodizioForm.termino}" var="termino" type="date" pattern="dd/MM/yyyy" />
                   	<fmt:formatDate value="${rodizioForm.inicioAjustes}" var="inicioAjustes" type="date" pattern="dd/MM/yyyy" />
                   	<fmt:formatDate value="${rodizioForm.terminoAjustes}" var="terminoAjustes" type="date" pattern="dd/MM/yyyy" />
					<div class="form-group">
		                <form:label class="col-sm-2 control-label" path="ciclo">Ano</form:label>
		                <div class="col-sm-2">
		                	<form:input path="ciclo" cssClass="form-control" />
		                </div>
		            </div>
		            <div class="form-group">
		                <form:label  class="col-sm-2 control-label" path="dataAprovacao">Data do Rod�zio</form:label>
		                <div class="col-sm-3">
		                	<form:input path="dataAprovacao" value="${dataRodizio}" cssClass="form-control datepicker" />
		                </div>
		            </div>
		            <div class="form-group">
		                <form:label   class="col-sm-2 control-label"  path="inicio">Data In�cio Vig�ncia</form:label>
		                <div class="col-sm-3">
							<form:input path="inicio"  value="${inicio}" cssClass="form-control datepicker" />
							
						</div>
					</div>
		            <div class="form-group">
		                <form:label   class="col-sm-2 control-label"  path="termino">Data T�rmino Vig�ncia</form:label>
		                <div class="col-sm-3">
							<form:input path="termino" value="${termino}" cssClass="form-control datepicker" />
							
						</div>
					</div>
		            <div class="form-group">
		                <form:label   class="col-sm-2 control-label"  path="inicioAjustes">Data In�cio Ajustes</form:label>
		                <div class="col-sm-3">
							<form:input path="inicioAjustes"  value="${inicioAjustes}" cssClass="form-control datepicker" />
							
						</div>
					</div>
		            <div class="form-group">
		                <form:label   class="col-sm-2 control-label"  path="terminoAjustes">Data T�rmino Ajustes</form:label>
		                <div class="col-sm-3">
							<form:input path="terminoAjustes" value="${terminoAjustes}" cssClass="form-control datepicker" />
							
						</div>
					</div>
		            <div class="form-group">
		                <form:label   class="col-sm-2 control-label"  path="ativo">Ciclo Atual</form:label>
		                <div class="col-sm-3">
							<form:select path="ativo"  cssClass="form-control">
								<form:option value="false">N�o</form:option>
								<form:option value="true">Sim</form:option>
							</form:select>
							
						</div>
					</div>
		            <div class="form-group">
		                <form:label   class="col-sm-2 control-label"  path="cicloAnterior.id">Ciclo Anterior</form:label>
		                <div class="col-sm-3">
							<form:select path="cicloAnterior.id" class="form-control">
							    <option value=""></option>
							    <form:options items="${rodizioList}" itemValue="id" itemLabel="ciclo"/>
							</form:select>
							
						</div>
					</div>
	                <div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10">
					      <input type="submit" value="Salvar Rod�zio" class="btn btn-primary"/>
					    </div>
					  </div>
	                
	            </form:form>
	        </div>
	   
	   <script type="text/javascript">
		$(function(){
			$('.datepicker').datepicker({
				format: "dd/mm/yyyy",
				autoclose: true,
				language: 'pt-BR'
			});
			
		});
	</script>