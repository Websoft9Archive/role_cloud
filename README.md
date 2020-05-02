Ansible Role: Cloud
=========

在CentOS或者Ubuntu服务器处理云厂家异同,以及设置交换分区.

## Requirements

运行本 Role，请确认符合如下的必要条件：

| **Items**      | **Details** |
| ------------------| ------------------|
| Operating system | CentOS7.x Ubuntu18.04 |
| Python 版本 | Python2  |
| Python 组件 |    |
| Runtime | 阿里云, 华为云, Azure, AWS |


## Related roles

本 Role 不依赖其他 roles，只用来处理不同云平台的服务器差异。


## Variables

本 Role 主要变量以及使用方法如下：

| **Items**      | **Details** | **Format**  | **是否初始化** |
| ------------------| ------------------|-----|-----|
| redis_version | [ 2.8,3.0,3.2,4.0,5.0,stable ] | 字符串 | 否 |


## Example

```
- name: LAMP
  hosts: all
  become: yes
  become_method: sudo 
  vars_files:
    - vars/main.yml 

  roles:
    - { role: role_common }
    - { role: role_cloud } 
```

## FAQ
