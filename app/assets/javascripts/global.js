window.onload = init_nav;

function get_controller_name(){
  path = location.href;  //获取当前页面的路径，全路径
  path_array = path.split("//");  //分离协议
  new_path_array = path_array[1].split("/");
  current_controller = new_path_array[1].split(/[#$%^&*()?]/g);
  return current_controller[0];
}

function init_nav(){
  current_controller_name = get_controller_name();
  active_nav = document.getElementById("/" + current_controller_name);
  active_nav.setAttribute("class", "active");
}

function invalid_nav(){
  alert("本系统尚在开发中\n欢迎您继续浏览本站其他精彩内容！");
}
