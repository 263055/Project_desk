package com.YL.reggie.util;

import java.io.File;
import java.io.IOException;

import lombok.extern.log4j.Log4j2;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.mime.MultipartEntityBuilder;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

@Log4j2
public class getImage { // http://localhost:8080/getImg/
    public static String getPicture(String name) throws IOException {
        CloseableHttpClient httpClient = HttpClients.createDefault();
        HttpPost httpPost = new HttpPost("http://localhost:5000/predict");
        File file = new File("D:\\Temp\\test\\" + name);
        FileBody fileBody = new FileBody(file, ContentType.DEFAULT_BINARY);
        HttpEntity httpEntity = MultipartEntityBuilder.create()
                .addPart("image", fileBody)
                .build();
        httpPost.setEntity(httpEntity);
        CloseableHttpResponse response = httpClient.execute(httpPost);
        HttpEntity responseEntity = response.getEntity();
        log.info(responseEntity);
        String result = EntityUtils.toString(responseEntity);
        log.info(result);
        response.close();
        httpClient.close();
        return result;



//        HttpClient httpClient = HttpClientBuilder.create().build();
//        HttpPost httpPost = new HttpPost("http://localhost:5000/predict");
//        MultipartEntityBuilder builder = MultipartEntityBuilder.create();
//        builder.addBinaryBody("image", new File("D:\\Temp\\test"), ContentType.APPLICATION_OCTET_STREAM, name);
//        HttpEntity entity = builder.build();
//        httpPost.setEntity(entity);
//        HttpResponse response = httpClient.execute(httpPost);
//        int statusCode = response.getStatusLine().getStatusCode();
//        log.info("wzy " + response.toString());
//        return "";
////        if (statusCode == 200) {
////            return
////        } else {
////            // 请求失败
////        }
    }
}
