---
layout: post
title:   install_redis_on_macos
date:   2020-07-07 00:20:19 +0800
categories: other
---
install_`redis`_on_macos

{% highlight bash %}
# 安装
brew install redis
# 启动
redis-server /usr/local/etc/redis.conf
# 开机启动
ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents
# 停止开机启动
launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.redis.plist
# redis 配置文件的位置
# /usr/local/etc/redis.conf
{% endhighlight %}


