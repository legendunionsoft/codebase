package com.lusoft.sdk.plugin.pagehelper.parser.impl;

import java.util.Map;

import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;

import com.lusoft.sdk.plugin.pagehelper.Page;

public class OracleParser extends AbstractParser {
    @Override
    public String getPageSql(String sql) {
        StringBuilder sqlBuilder = new StringBuilder(sql.length() + 120);
        sqlBuilder.append("select * from ( select tmp_page.*, rownum row_id from ( ");
        sqlBuilder.append(sql);
        sqlBuilder.append(" ) tmp_page where rownum <= ? ) where row_id > ?");
        return sqlBuilder.toString();
    }

    @Override
    public Map setPageParameter(MappedStatement ms, Object parameterObject, BoundSql boundSql, Page page) {
        Map paramMap = super.setPageParameter(ms, parameterObject, boundSql, page);
        paramMap.put(PAGEPARAMETER_FIRST, page.getEndRow());
        paramMap.put(PAGEPARAMETER_SECOND, page.getStartRow());
        return paramMap;
    }
}