
sakai-react NEXT
https://github.com/primefaces/sakai-react
https://sakai.primereact.org/

1.讲全部的文件复制到容器里
COPY --chown=node:node . .
2. docker pull node:18.2.0 拉取依赖包
3. docker build -f Dockerfile -t some-name .  打包
4. docker run -p 3000:3000 some-name    运行
5. http://localhost:3000/auth/login     访问


(一)
sakai-react:
https://github.com/primefaces/sakai-react
https://www.primefaces.org
https://primereact.org
https://github.com/kevin3274/react-native-odoo
本套代码sakai-react官网:
https://github.com/primefaces/sakai-react
https://sakai.primereact.org/

(二)
皮肤配置
layout/AppConfig.tsx
菜单配置
layout/AppMenu.tsx
系统CSS配置
layout/layout.tsx
公司LOGO
public/layout/images
(三)
登录界面:
http://localhost:3000/auth/login
# 1.后台启动：

# cd /Volumes/mycode/myNODE20240001/丰禾MyReact框架v6.3/mycrm_api_v6.2
# 安装模块 yarn install
# 编译 npm run build
# 运行 yarn start 
# 2.前端启动
# 编译 sudo npm run build
# 调试 yarn dev
# 账号和密码
# 账号:154363268@qq.com
# 密码:123456

