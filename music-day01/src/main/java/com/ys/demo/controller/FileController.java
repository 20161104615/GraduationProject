package com.ys.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import java.io.*;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;

/*
 * @Author 20161104615
 * @Description //TODO 文件上传
 * @Date 10:45 2020/2/19
 * @Param
 * @return
 **/
@Controller
public class FileController {

    @GetMapping(value = "/file")
    public String file() {
        return "file";
    }

    @PostMapping(value = "/fileUpload")
    public String fileUpload(@RequestParam(value = "file") MultipartFile file, Model model, HttpServletRequest request) {
        if (file.isEmpty()) {
            System.out.println("文件为空空");
        }
        String fileName = file.getOriginalFilename();  // 文件名
        String suffixName = fileName.substring(fileName.lastIndexOf("."));  // 后缀名
        String filePath = "D:/PythonProgram/PythonProgram"; // 上传后的路径
        fileName = UUID.randomUUID() + suffixName; // 新文件名
        File dest = new File(filePath + fileName);
        //if判断保证文件夹存在
        if (!dest.getParentFile().exists()) {//exists()测试此抽象路径名表示的文件或目录是否存在.
            dest.getParentFile().mkdirs();//mkdirs()可以建立多级文件夹， mkdir()只会建立一级的文件夹
        }
        try {
            file.transferTo(dest);//复制文件
        } catch (IOException e) {
            e.printStackTrace();
        }
        String filename = "/temp-rainy/" + fileName;
        model.addAttribute("filename", filename);
        return "file";
    }
}
