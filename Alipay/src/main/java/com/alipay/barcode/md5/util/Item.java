package com.alipay.barcode.md5.util;

import java.util.Map;

public class Item {
    private Long id;
    private String result;
    private Map<String,String> data;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public Map<String,String> getData() {
        return data;
    }

    public void setData(Map<String,String> data) {
        this.data = data;
    }
}
