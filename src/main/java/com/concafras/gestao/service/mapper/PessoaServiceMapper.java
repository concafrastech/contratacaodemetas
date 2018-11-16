/*
 * Created on 14 nov 2015 ( Time 11:49:18 )
 * Generated by Telosys Tools Generator ( version 2.1.1 )
 */
package com.concafras.gestao.service.mapper;

import org.modelmapper.ModelMapper;
import org.modelmapper.convention.MatchingStrategies;
import org.springframework.stereotype.Component;

import com.concafras.gestao.model.Pessoa;
import com.concafras.gestao.rest.model.PessoaVO;

/**
 * Mapping between entity beans and display beans.
 */
@Component
public class PessoaServiceMapper extends AbstractServiceMapper {

	/**
	 * ModelMapper : bean to bean mapping library.
	 */
	private ModelMapper modelMapper;
	
	/**
	 * Constructor.
	 */
	public PessoaServiceMapper() {
		modelMapper = new ModelMapper();
		modelMapper.getConfiguration().setMatchingStrategy(MatchingStrategies.STRICT);
	}

	/**
	 * Mapping from 'PessoaOptionFormEntity' to 'PessoaOptionForm'
	 * @param pessoaEntity
	 */
	public PessoaVO mapPessoaEntityToPessoaVO(Pessoa pessoaEntity) {
		if(pessoaEntity == null) {
			return null;
		}

		//--- Generic mapping 
		PessoaVO pessoa = map(pessoaEntity, PessoaVO.class);

		return pessoa;
	}
	
	/**
	 * Mapping from 'PessoaOptionForm' to 'PessoaOptionFormEntity'
	 * @param pessoa
	 * @param pessoaEntity
	 */
	public void mapPessoaVOToPessoaEntity(PessoaVO pessoa, Pessoa pessoaEntity) {
		if(pessoa == null) {
			return;
		}

		//--- Generic mapping 
		map(pessoa, pessoaEntity);

	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	protected ModelMapper getModelMapper() {
		return modelMapper;
	}

	protected void setModelMapper(ModelMapper modelMapper) {
		this.modelMapper = modelMapper;
	}

}