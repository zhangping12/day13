package gz.itcast.a_exec;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;

public class GuessServlet extends HttpServlet {
    //产生一个幸运数字
    int answer;

    /**
     * 新游戏方法。产生一个新的幸运数字
     */
    public void newGame() {
        Random random = new Random();
        answer = random.nextInt(30);
    }

    public GuessServlet(){
        //第一次访问
        newGame();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        //1.接收输入的数字
        String lucyNoStr = request.getParameter("lucyNo");
        System.out.println("答案："+answer);
        Integer lucyNo = null;
        //2.判断幸运数字和用户的数字
        //2.1 把用户输入的数字转成整数
        if(lucyNoStr!=null||!"".equals(lucyNoStr)){
            lucyNo = Integer.parseInt(lucyNoStr);
        }

        //标记记录当前竞猜的次数
        Integer times = 1;//初始值

        //接收客户当前竞猜次数
        String timesStr = request.getParameter("times");
        if(timesStr!=null && !timesStr.equals("")){
            times = Integer.parseInt(timesStr)+1;
        }


        if(times<5){
            String msg = "";
            //比较
            if(lucyNo>answer){
                //大了
                msg = "可惜，大了点";
            }else if(lucyNo<answer){
                //小了
                msg = "可惜，小了点";
            }else if(lucyNo==answer){
                //等于,中奖
                msg = "恭喜你，中得1000000元现金大奖,请带身份证到xxx地方领奖！";
                times = null;
            }
            //把当前竞猜的次数放入域对象
            request.setAttribute("times", times);
            //把信息放入域对象中
            request.setAttribute("msg", msg);
        }else{
            //产生新的幸运数字
            newGame();
            //游戏结束
            response.getWriter().write("游戏结束。<a href='"+request.getContextPath()+"/05.guess.jsp'>再来一盘</a>");
            return;
        }
        //转发
        request.getRequestDispatcher("/05.guess.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
