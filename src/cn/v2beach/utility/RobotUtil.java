package cn.v2beach.utility;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.json.JSONException;
import org.json.JSONObject;

public class RobotUtil {
    //存储APIkey
    public static final String API_KEY = "d6353ccf1bbc417780a110648e36c687";
    //存储接口请求地址
    public static final String API_URL = "http://www.tuling123.com/openapi/api";

    /**
     * 拼接出我们的接口请求地址
     *
     * @Param msg 需要发送的消息
     * @return
     */
    private String setParameter(String msg) {
        //在接口请求中 中文要用URLEncoder encode成UTF-8
        try {
            return API_URL + "?key=" + API_KEY + "&info=" + URLEncoder.encode(msg, "utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 拿到消息回复的内容的方法
     * @Param json 请求接口得到的JSON
     * @return text的部分
     */
    private String getString(String json){
        try {
            JSONObject object = new JSONObject(json);
            String msg=object.getString("text");
            return msg;
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 提供对外公开的方法用于最终拿到机器人回复的消息
     * @Param msg 传入你需要发送的信息
     * @return 机器人对你的回复
     */
    public String getMessage(String msg){
        return getString(getHTML(setParameter(msg)));
    }


    private String getHTML(String url) {
        StringBuffer buffer = new StringBuffer();
        BufferedReader bufferedReader = null;
        try {
            //创建URL对象
            URL u = new URL(url);
            //打开连接
            HttpURLConnection connection = (HttpURLConnection) u.openConnection();
            //从连接中拿到InputStream并由BufferedReader进行读取
            bufferedReader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            String line = "";
            //循环每次加入一行HTML内容 直到最后一行
            while ((line = bufferedReader.readLine()) != null) {
                buffer.append(line);
            }
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            try {
                //结束时候关闭释放资源
                bufferedReader.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return buffer.toString();
    }
}
