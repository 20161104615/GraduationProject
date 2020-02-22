package com.ys.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.StringTokenizer;

/*
 * @Author 20161104615
 * @Description //TODO 文件上传
 * @Date 10:45 2020/2/19
 * @Param
 * @return
 **/
@Controller
@RequestMapping("/file")
public class FilesController {

    @GetMapping(value = "/fileUpload")
    public String file() {
        return "fileUpload";
    }

    @PostMapping(value = "/fileUpload")
    @ResponseBody
    public String fileUpload(@RequestParam(value = "newMusicUrl") MultipartFile newMusicUrl,
                             @RequestParam(value = "newMusicImgUrl") MultipartFile newMusicImgUrl,
                             @RequestParam(value = "newMusicName") String newMusicName,
                             @RequestParam(value = "newMusicSinger") String newMusicSinger,
                             HttpServletRequest request) throws IOException {
        if (newMusicUrl.isEmpty() || newMusicImgUrl.isEmpty()) {
            return "上传失败1";
        }
        List<MultipartFile> files = ((MultipartHttpServletRequest) request).getFiles("file");
        MultipartFile file = null;
        BufferedOutputStream stream = null;
        for (int i = 0; i < files.size(); ++i) {
            file = files.get(i);
            if (!file.isEmpty()) {
                try {
                    byte[] bytes = file.getBytes();
                    stream = new BufferedOutputStream(new FileOutputStream(
                            new File(file.getOriginalFilename())));
                    stream.write(bytes);
                    stream.close();
                } catch (Exception e) {
                    stream = null;
                    return "You failed to upload " + i + " => "
                            + e.getMessage();

                }
            } else {
                return "You failed to upload " + i
                        + " because the file was empty.";
            }

        }

        //文件上传
        String fileName_newMusicUrl = newMusicUrl.getOriginalFilename();//获取个图文件名称
        String fileName_newMusicImgUrl = newMusicImgUrl.getOriginalFilename();//获取图片文件名称
        //System.out.println(fileName_newMusicUrl);
        String filePath_newMusicUrl = "D:/PythonProgram/PythonProgram/";//歌曲存放的路径
        String filePath_newMusicImgUrl = "D:/PythonProgram/PythonProgram/img/";//图片存放的路径
        File file_music = new File(filePath_newMusicUrl + fileName_newMusicUrl);
        File file_music_img = new File(filePath_newMusicImgUrl + fileName_newMusicImgUrl);

        //数据库上传
        String fileName_newMusicUrl_database = newMusicUrl.getOriginalFilename();
        StringTokenizer stringTokenizer = new StringTokenizer(fileName_newMusicUrl_database, ".");
        System.out.println(stringTokenizer.nextToken());

        newMusicUrl.transferTo(file_music);//把内存中的数据写入到磁盘中
        newMusicUrl.transferTo(file_music_img);//把内存中的数据写入到磁盘中
        return "上传失败2";
    }
}
