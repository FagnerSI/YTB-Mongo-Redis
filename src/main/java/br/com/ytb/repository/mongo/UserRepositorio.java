package br.com.ytb.repository.mongo;



import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;
import org.springframework.stereotype.Repository;

import br.com.ytb.model.Usuario;


@Repository
public interface UserRepositorio extends MongoRepository<Usuario, Integer> {	
	 
	@Query("{ 'userName' : ?0, 'senha' : ?1 }")
    Usuario autenticar(String userName, String senha);
    
}