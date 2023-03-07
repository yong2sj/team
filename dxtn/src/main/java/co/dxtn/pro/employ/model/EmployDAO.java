package co.dxtn.pro.employ.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface EmployDAO {

	List<EmployDTO> employList(EmployDTO article);

	int boardListCnt();
	
	void boardWrite(EmployDTO dto);

	EmployDTO getContent(EmployDTO dto);

	void boardDelete(EmployDTO dto);

	void boardUpdate(EmployDTO dto);


}