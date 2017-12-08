package br.com.ytb.repository.redis;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;


public class ConnectRedis {

	private Jedis jedis;
	private JedisPool pool;

	public ConnectRedis() {
		this.pool = new JedisPool(new JedisPoolConfig(), "localhost");
		this.jedis = pool.getResource();
	}

	public Jedis getJedis() {
		return jedis;
	}

}
