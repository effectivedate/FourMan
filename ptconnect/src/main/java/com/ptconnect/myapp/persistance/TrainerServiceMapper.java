package com.ptconnect.myapp.persistance;

import java.util.ArrayList;

import com.ptconnect.myapp.domain.TrainerDTO;
import com.ptconnect.myapp.domain.TrainerInfoDTO;

public interface TrainerServiceMapper {
	
	public ArrayList<TrainerDTO> findTrainer();
	
	public int trainerInsert(TrainerInfoDTO tio);
	
	public int qualifyInsert(TrainerInfoDTO tio);
	
	public int lessonPriceInsert(TrainerInfoDTO tio);
	
}
