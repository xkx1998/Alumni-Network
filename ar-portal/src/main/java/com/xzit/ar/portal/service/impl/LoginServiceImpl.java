/**
 * @Title: LoginServiceImpl.java <br>
 * @Package com.xzit.ar.manage.service.impl <br>
 * @Description: TODO <br>
 * @author Mr.Black <br>
 * @date 2016年1月2日 下午2:47:21 <br>
 * @version V1.0 <br>
 */
package com.xzit.ar.portal.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import com.xzit.ar.common.mapper.image.ImageMapper;
import com.xzit.ar.common.po.image.Image;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xzit.ar.common.exception.ServiceException;
import com.xzit.ar.common.mapper.user.UserMapper;
import com.xzit.ar.common.util.CommonUtil;

/**
 * @ClassName: LoginServiceImpl
 * @author xukexiang
 * @version V1.0
 */
@Service("loginService")
public class LoginServiceImpl implements com.xzit.ar.portal.service.LoginService {
    @Autowired
    private UserMapper userMapper;

    @Autowired
    private ImageMapper imageMapper;

    private final static Logger logger = LoggerFactory.getLogger(LoginServiceImpl.class);

    @Override
    public Map<String, Object> validateUser(String account, String password) throws ServiceException {
        Map<String, Object> user = null;
        try {
            // 关键参数校验
            if (CommonUtil.isNotEmpty(account) && CommonUtil.isNotEmpty(password)) {
                // 查找用户
                user = userMapper.selectByAccount(account);
                if (user != null) {
                    logger.info("进入校验。account = {}", account);
                    // 校验密码
                    if (password.equals(user.get("password"))) {
                        // 加载用户关联信息
                        Integer imageId = (Integer) (user.get("imageId"));
                        if (CommonUtil.isNotEmpty(imageId)) {
                            Image image = imageMapper.getById(imageId);
                            if (image != null) {
                                user.put("portrait", image.getImagePath());
                            }
                        }
                    } else {
                        user.put("userId", null);
                        user.put("password", null);
                    }
                }
            }
        } catch (Exception e) {
            throw new ServiceException("系统异常，登录失败");
        }
        return user;
    }

}
