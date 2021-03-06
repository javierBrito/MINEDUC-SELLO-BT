package ec.gob.educacion.service.sellobt;

import ec.gob.educacion.sellobt.dto.EncuestadoDTO;

/**
 * Interfaz para Encuestado
 * 
 * @author Belen Changoluisa
 *
 */
public interface EncuestadoService {
	
	/**
	 * Permite buscar un encuestado
	 * 
	 * @param cedula a buscar
	 * @return objeto de encuestado
	 * @author Belen Changoluisa
	 */
	EncuestadoDTO buscarEncuestadoPorCedula(String estCedula);
	
	/**
	 * Permite buscar un encuestado
	 * 
	 * @param codigo a buscar
	 * @return objeto de estudiante
	 * @author Jorge Quishpe
	 */
	EncuestadoDTO buscarEcuestadoPorCodigo(long estCodigo);
	


}
