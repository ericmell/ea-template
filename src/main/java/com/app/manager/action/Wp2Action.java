package com.app.manager.action;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.app.common.base.action.BaseEaAction;
import com.app.ea.model.WorkPage2;

@Component("wp2Action")
@Scope("prototype")
public class Wp2Action extends BaseEaAction {
	
	private static Logger log = LoggerFactory.getLogger(Wp2Action.class);
	public WorkPage2 bfobject = new WorkPage2();

	public String get_list_sql() {
		return "from WorkPage2 where projectId='" + getCurrentProjectId() + "'";
	}

	public String list() throws Exception {
		String sql = getSearchSql(get_list_sql());
		getPageData(sql);
		return "list";
	}
	
	public String load() throws Exception {
		String id = getpara("id");
		if ("".equals(getpara("id"))) {
			rhs.put("wp2", null);
		} else {
			WorkPage2 wp2 = (WorkPage2) baseDao.loadById("WorkPage2", Long.parseLong(id));
			rhs.put("wp2", wp2);
		}
		return "success";
	}
	
	public String save() throws Exception {
		if (bfobject.getId() == null || bfobject.getId().toString().equals("")) { // create
			bfobject.setProjectId(getCurrentProjectId());
			baseDao.create(bfobject);
		} else { // edit
			baseDao.update(bfobject);
		}
		return list();
	}
	
	public String delete() throws Exception {
		String id = getpara("id");
		WorkPage2 bfdata = new WorkPage2();
		bfdata.setId(Long.parseLong(id));
		baseDao.delete(bfdata);
		return list();
	}
	
}
