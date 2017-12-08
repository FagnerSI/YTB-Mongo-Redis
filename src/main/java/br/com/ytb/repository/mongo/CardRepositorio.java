package br.com.ytb.repository.mongo;


import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import br.com.ytb.model.Card;
import br.com.ytb.model.Usuario;

@Repository
public interface CardRepositorio extends MongoRepository<Card, Long> {	

    public List<Card> findByUser(Usuario user);    
    
    public Card findById(String id);
   
	
}
