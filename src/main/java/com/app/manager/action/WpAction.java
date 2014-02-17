package com.app.manager.action;

import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts2.ServletActionContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import com.app.common.base.action.BaseEaAction;
import com.app.common.spring.ssh.action.BaseBusinessAction;
import com.app.common.spring.ssh.model.BaseModel;
import com.app.ea.model.WorkPage;

@Component("wpAction")
@SuppressWarnings("rawtypes")
public class WpAction extends BaseEaAction {
	private static Logger log = LoggerFactory.getLogger(WpAction.class);
	private static String hsql_all = "from WorkPage";

	public String menu_wp() throws Exception {
		System.out.println();
		System.out.println("进入了");
		this.getPageData(hsql_all);
		rhs.put("info_type", "success");
		rhs.put("info", "");
		return "success";
	}
/**	
	//added by Jing 2014.1.21.13:45
	public String menu_wp2() throws Exception {
		System.out.println();
		System.out.println("进入了");
		this.getPageData(hsql_all);
		rhs.put("info_type", "success");
		rhs.put("info", "");
		return "success";
	}
*/
	public String create() throws Exception {
		WorkPage workpage = new WorkPage();
		workpage.setContent("");
		baseDao.create(workpage);
		getPageData(hsql_all);
		List countList = baseDao.find(hsql_all);
		int maxPage = countList.size() % pagination.getMaxSize() > 0 ? countList
				.size() / pagination.getMaxSize() + 1
				: countList.size() / pagination.getMaxSize();
		pagination.setCurrentPage(maxPage);
		List tpltb1List = baseDao.page("from WorkPage", pagination);
		rhs.put("dataList", tpltb1List);
		rhs.put("maxSize", pagination.getMaxSize());
		rhs.put("count", countList.size());
		rhs.put("maxPage", maxPage);
		rhs.put("currentPage", maxPage);
		rhs.put("info_type", "success");
		rhs.put("info", "create success!");
		return "success";
	}
	public String change_rank() throws Exception {
		common_change_rank(); 
		rhs.put("info_type", "success");
		rhs.put("info", "改变顺序成功!");
		getPageData(hsql_all);
		return "success";
	}
	public String delete() throws Exception {
		String id = getpara("id");
		WorkPage workpagedata = new WorkPage();
		workpagedata.setId(Long.parseLong(id));
		baseDao.delete(workpagedata);
		getPageData(hsql_all);
		rhs.put("info_type", "success");
		rhs.put("info", "delete success!");
		return "success";
	}
	

	public String update() throws Exception {
		common_update(hsql_all);
		return "success";
	}   
	
     //修改每页显示的个数
	public String change_page_number() throws Exception {
		putSessionValue("maxSize", getpara("maxSize"));
		getPageData(hsql_all);
		rhs.put("info_type", "success");
		rhs.put("info", "");
		return "success";
	}
     //翻页
	public String ajax_page_data() throws Exception {
		getPageData(hsql_all);
		rhs.put("info_type", "success");
		rhs.put("info", "success!");
		return "success";
	}

}
