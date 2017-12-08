package br.com.ytb.repository.redis;

import br.com.ytb.model.Card;
import redis.clients.jedis.Jedis;


public class PersistenceRedis {

	private Jedis jedis;
	

	public PersistenceRedis() {
		this.jedis =  new ConnectRedis().getJedis();
	}

	public void criarIdTarefa(Card card) {		
		String key = card.getId() + ":Ids";
		this.jedis.set(key, "1");
	}

	public String getIdTarefa(Card card) {		
		String key = card.getId() + ":Ids";
		String id = this.jedis.get(key);
		
		this.jedis.incr(key);
		
		return id;
	}
	
	public void deleleteChave(Card card) {		
		String key = card.getId() + ":Ids";
		this.jedis.del(key);
	}

	public Jedis getJedis() {
		return jedis;
	}

	public void setJedis(Jedis jedis) {
		this.jedis = jedis;
	}
}
