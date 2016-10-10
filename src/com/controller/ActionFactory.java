package com.controller;

import com.controller.actions.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Lena on 30.04.2016.
 */
public class ActionFactory {
    private Map<String, Action> actions = new HashMap<>();
   // private Action action;

    public ActionFactory() {
        actions.put("doLogin",new DoLogin());


    }

    public synchronized Action getAction(HttpServletRequest request) {
        String path = /*request.getServletPath() + */request.getPathInfo();
        String actionKey = /*request.getMethod() +*/ request.getParameter("action");
        System.out.println(actionKey);
        Action action = actions.get(actionKey);
        if (action == null) {
            action = actions.get("doLogin");
        }
        return action;
    }
}
