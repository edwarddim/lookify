package com.edwardim.lookifydemo.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.edwardim.lookifydemo.models.Song;

@Repository
public interface SongRepository extends CrudRepository<Song, Long> {
	List<Song> findAll();
	List<Song> findByArtistIgnoreCaseContaining(String name);
	List<Song> findTop10ByOrderByRatingDesc();
	
}