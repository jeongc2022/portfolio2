package com.ezenshopping.controller;

import com.ezenshopping.controller.action.Action;
import com.ezenshopping.controller.action.Cart_Delete_Action;
import com.ezenshopping.controller.action.Email_Check_Form_Action;
import com.ezenshopping.controller.action.Join_Action;
import com.ezenshopping.controller.action.add_cartlist_Action;
import com.ezenshopping.controller.action.add_one_cartlist_Action;
import com.ezenshopping.controller.action.add_wishlist_Action;
import com.ezenshopping.controller.action.admin_Form_Action;
import com.ezenshopping.controller.action.admin_add_product_Action;
import com.ezenshopping.controller.action.admin_addproduct_form_Action;
import com.ezenshopping.controller.action.admin_delivery_Action;
import com.ezenshopping.controller.action.admin_delivery_ok_Action;
import com.ezenshopping.controller.action.admin_order_list_Action;
import com.ezenshopping.controller.action.admin_product_list_Action;
import com.ezenshopping.controller.action.admin_updatepro_form_Action;
import com.ezenshopping.controller.action.adminloginAction;
import com.ezenshopping.controller.action.adminmemberlist_Action;
import com.ezenshopping.controller.action.boardlist_Action;
import com.ezenshopping.controller.action.boardupdate_Action;
import com.ezenshopping.controller.action.boardupdateok_Action;
import com.ezenshopping.controller.action.cartlist_form_Action;
import com.ezenshopping.controller.action.cbot_Action;
import com.ezenshopping.controller.action.cbot_Action_Form;
import com.ezenshopping.controller.action.dashboard_Action;
import com.ezenshopping.controller.action.delete_wishlist_Action;
import com.ezenshopping.controller.action.deleteboard_Action;
import com.ezenshopping.controller.action.deletemember_Action;
import com.ezenshopping.controller.action.deletemember_form_Action;
import com.ezenshopping.controller.action.delivery_go_Action;
import com.ezenshopping.controller.action.emailsearch_form;
import com.ezenshopping.controller.action.excel;
import com.ezenshopping.controller.action.go_order_Action;
import com.ezenshopping.controller.action.go_result_Action;
import com.ezenshopping.controller.action.insertboard_Action;
import com.ezenshopping.controller.action.insertreply_Action;
import com.ezenshopping.controller.action.join_Action_Form;
import com.ezenshopping.controller.action.login_Action;
import com.ezenshopping.controller.action.login_Emailsearch_Action;
import com.ezenshopping.controller.action.login_form_action;
import com.ezenshopping.controller.action.login_pwdsearch_Action;
import com.ezenshopping.controller.action.logout_Action;
import com.ezenshopping.controller.action.main_Action;
import com.ezenshopping.controller.action.map_Action;
import com.ezenshopping.controller.action.mypage_Action_Form;
import com.ezenshopping.controller.action.no_qty_Action;
import com.ezenshopping.controller.action.productdetail_Action;
import com.ezenshopping.controller.action.productlist_Action;
import com.ezenshopping.controller.action.pwdsearch_form_Actoin;
import com.ezenshopping.controller.action.reset_Pass_Action;
import com.ezenshopping.controller.action.search_Action;
import com.ezenshopping.controller.action.updatemember1_Action;
import com.ezenshopping.controller.action.updatemember2_Action;
import com.ezenshopping.controller.action.updatemember3_Action;
import com.ezenshopping.controller.action.updatemember4_Action;
import com.ezenshopping.controller.action.updatemember5_Action;
import com.ezenshopping.controller.action.viewboard_Action;
import com.ezenshopping.controller.action.wishlist_form_Action;
import com.ezenshopping.controller.action.writeboardform_Action;

public class ActionFactory {
	private ActionFactory() {
	}

	private static ActionFactory af = new ActionFactory();

	public static ActionFactory getInstance() {
		return af;
	}

	public Action getAction(String command) {
		Action ac = null;
		if (command.equals("index")) {
			ac = new main_Action();
		} else if (command.equals("mypage")) {
			ac = new mypage_Action_Form();
		} else if (command.equals("joinform")) {
			ac = new join_Action_Form();
		} else if (command.equals("cbot")) {
			ac = new cbot_Action_Form();
		} else if (command.equals("cbotaction")) {
			ac = new cbot_Action();
		} else if (command.equals("login_form")) {
			ac = new login_form_action();
		} else if (command.equals("join")) {
			ac = new Join_Action();
		} else if (command.equals("emailcheck_form")) {
			ac = new Email_Check_Form_Action();
		} else if (command.equals("loginaction")) {
			ac = new login_Action();
		} else if (command.equals("emailsearch")) {
			ac = new emailsearch_form();
		} else if (command.equals("productlist")) {
			ac = new productlist_Action();
		} else if (command.equals("login_Emailsearch_Action")) {
			ac = new login_Emailsearch_Action();
		} else if (command.equals("boardlist")) {
			ac = new boardlist_Action();
		} else if (command.equals("pwdsearch")) {
			ac = new pwdsearch_form_Actoin();
		} else if (command.equals("login_pwdsearch_Action")) {
			ac = new login_pwdsearch_Action();
		} else if (command.equals("reset_Pass_Action")) {
			ac = new reset_Pass_Action();
		} else if (command.equals("updatemember1")) {
			ac = new updatemember1_Action();
		} else if (command.equals("updatemember2")) {
			ac = new updatemember2_Action();
		} else if (command.equals("updatemember3")) {
			ac = new updatemember3_Action();
		} else if (command.equals("updatemember4")) {
			ac = new updatemember4_Action();
		} else if (command.equals("updatemember5")) {
			ac = new updatemember5_Action();
		} else if (command.equals("deletemember_form")) {
			ac = new deletemember_form_Action();
		} else if (command.equals("deletemember")) {
			ac = new deletemember_Action();
		} else if (command.equals("viewboard")) {
			ac = new viewboard_Action();
		} else if (command.equals("deleteboard")) {
			ac = new deleteboard_Action();
		} else if (command.equals("cartlist_form")) {
			ac = new cartlist_form_Action();
		} else if (command.equals("cart_delete")) {
			ac = new Cart_Delete_Action();
		} else if (command.equals("boardupdate")) {
			ac = new boardupdate_Action();
		} else if (command.equals("updateboardaction")) {
			ac = new boardupdateok_Action();
		} else if (command.equals("mapaction")) {
			ac = new map_Action();
		} else if (command.equals("writeboardform")) {
			ac = new writeboardform_Action();
		} else if (command.equals("insertboard")) {
			ac = new insertboard_Action();
		} else if (command.equals("insertreply")) {
			ac = new insertreply_Action();
		} else if (command.equals("adminmemberlist")) {
			ac = new adminmemberlist_Action();
		} else if (command.equals("searchaction")) {
			ac = new search_Action();
		} else if (command.equals("admin")) {
			ac = new admin_Form_Action();
		} else if (command.equals("productdetail")) {
			ac = new productdetail_Action();
		} else if (command.equals("add_cartlist")) {
			ac = new add_cartlist_Action();
		} else if (command.equals("add_wishlist")) {
			ac = new add_wishlist_Action();
		} else if (command.equals("wishlist_form")) {
			ac = new wishlist_form_Action();
		} else if (command.equals("delete_wishlist")) {
			ac = new delete_wishlist_Action();
		} else if (command.equals("add_one_cartlist")) {
			ac = new add_one_cartlist_Action();
		}else if (command.equals("adminloginAction")) {
			ac = new adminloginAction();
		}else if (command.equals("no_qty")) {
	         ac = new no_qty_Action();
	    }else if(command.equals("admin_product_list")) {
	    	ac = new admin_product_list_Action();
	    }else if(command.equals("excel")) {
	    	ac = new excel();
	    }else if(command.equals("orderaction")) {
	    	ac = new go_order_Action();
	    }else if(command.equals("admin_order_list")) {
	    	ac = new admin_order_list_Action();
	    }else if(command.equals("go_result")) {
	    	ac = new go_result_Action();
	    }else if(command.equals("dashboard")) {
	    	ac = new dashboard_Action();
	    }else if(command.equals("admin_delivery")) {
	    	ac = new admin_delivery_Action();
	    }else if(command.equals("delivery_go_Action")) {
	    	ac = new delivery_go_Action();
	    }else if(command.equals("admin_delivery_ok")) {
	    	ac = new admin_delivery_ok_Action();
	    }else if (command.equals("admin_addproduct_form")) {
	         ac = new admin_addproduct_form_Action();
	    } else if (command.equals("admin_add_product")) {
	         ac = new admin_add_product_Action();
	    } else if (command.equals("admin_updatepro_form")) {
	         ac = new admin_updatepro_form_Action();
	    } else if (command.equals("logout")) {
	         ac = new logout_Action();
	    }
		return ac;
	}
}
