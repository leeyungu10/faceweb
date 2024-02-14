package edu.smu.face.controller;


import edu.smu.face.Service.FileService;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.IOException;
import java.util.*;

@Controller
@RequestMapping("/file/")
public class FileController {

    @Autowired
    private FileService fileService;

    @PostMapping("/upload")
    public String fileUpload(@RequestParam("imaged") MultipartFile file, RedirectAttributes redirectAttributes, Model model, HttpServletRequest request2) throws IOException {

        String realPath = request2.getServletContext().getRealPath("/static/img/");
        String path = fileService.fileUpload(realPath, file);
        System.out.println(realPath);
        String fileName = "/static/img/" + file.getOriginalFilename();
        System.out.println(fileName);

        redirectAttributes.addFlashAttribute("message", "You successfully uploaded " + fileName + "!");

        // Pass the file name to the view
        model.addAttribute("fileName", fileName);

        RestTemplate restTemplate = new RestTemplate();
        String url = "http://localhost:8000/file/upload/check";
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);
        MultiValueMap<String, Object> values = new LinkedMultiValueMap<>();

        values.add("fileName", realPath + file.getOriginalFilename());

        HttpEntity<MultiValueMap<String, Object>> request = new HttpEntity<>(values, headers);

        ResponseEntity<String> response = restTemplate.postForEntity(url, request, String.class);
        System.out.println(response.getBody());
        String response_num = response.getBody();
        model.addAttribute("response_num", response_num);

        String[] angry_list = {"71hZutqP_cM", "nNhm3Z5ylqw", "wlsm031RhO0", "v4P-gw5Fc6Q", "pgsathBaftg", "6atvmgoKKNQ", "q4-2kPQtMbI", "8yC_fnORfwU", "j68H7oTRZCY", "mEKAXv6gSgw"};
        List<String> angry_list2 = Arrays.asList(angry_list);
        Collections.shuffle(angry_list2);
        angry_list2.toArray(angry_list);
        String angry_out = angry_list[0];
        model.addAttribute("angry_list", angry_out);
//
        String[] fear_list = {"VcgvzAzijWk", "xbO1CY1PXkE", "gMKsrqm_s6U", "ZRx7y61DNGA", "BHDiEh2TClg"};
        List<String> fear_list2 = Arrays.asList(fear_list);
        Collections.shuffle(fear_list2);
        fear_list2.toArray(fear_list);
        String fear_out = fear_list[0];
        model.addAttribute("fear_list", fear_out);

        String[] happy_list = {"2sQoTAmUc78", "P8Ur1WlJ0aI", "vvq0lXPEf0w", "PYUPmD7eQz0", "D-tjKMirkmw", "zcYolrGQuwk", "hqTVhcudvzI", "S0M8qbF84lQ", "nFYmFLjewCo"} ;
        List<String> happy_list2 = Arrays.asList(happy_list);
        Collections.shuffle(happy_list2);
        happy_list2.toArray(happy_list);
        String happy_out = happy_list[0];
        System.out.println(happy_out);
        model.addAttribute("happy_list", happy_out);

        String[] sad_list = {"tkE9qmYRq68", "uGa2cN1N5-Y", "6wJepYuiznU", "HfAhUxPSubs", "ObY22aMUMxE", "QUyyi45dzGI", "cs5vXhSZ01k", "yE-J9T-Z71U", "iJyac4AXKKY", "uQ47sUutrRU"};
        List<String> sad_list2 = Arrays.asList(sad_list);
        Collections.shuffle(sad_list2);
        sad_list2.toArray(sad_list);
        String sad_out = sad_list[0];
        model.addAttribute("sad_list", sad_out);

        String[] suprise_list = {"bZ6sEvRz9y8", "gptmTCfYCRs", "BDY7VAxGb24", "34LsWHFJcwU", "x6evumQ2cgA", "4tgNSwOKY8s", "qMLivGF76tQ"};
        List<String> suprise_list2 = Arrays.asList(suprise_list);
        Collections.shuffle(suprise_list2);
        suprise_list2.toArray(suprise_list);
        String suprise_out = suprise_list[0];
        model.addAttribute("suprise_list", suprise_out);

        String[] neutral_list = {"7xv7Sl77ybw", "xvcFDtj_jqY", "8mT71qrOAME", "XvCNnB-Fuck", "5IJFpmTOFfs", "B3YNd6njjL8", "PTahKIGbawY", "ajb6CC0uQy8", "RHMwo_j4ews", "FKt2k6qTn0k"};
        List<String> neutral_list2 = Arrays.asList(neutral_list);
        Collections.shuffle(neutral_list2);
        neutral_list2.toArray(neutral_list);
        String neutral_out = neutral_list[0];
        model.addAttribute("neutral_list", neutral_out);


        return "display"+response_num;
    }

}