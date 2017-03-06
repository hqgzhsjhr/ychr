package com.yc.biz;

import java.util.List;

import com.yc.bean.HumanFile;

public interface HumanFileBiz {
	public HumanFile humanFileRegister( HumanFile humanFile );
	public List<HumanFile> humanFileList(HumanFile humanFile);
}
